SECTION "Donor Species", ROMX

; Every Pokemon has a donor (template) species: its Speed/Special DV byte,
; read as a Gen 2 Pokedex number. This works exactly like UltimateCrystal
; and UltimateGold, so traded Pokemon keep the same types and moves:
; - Attack DV 8-15: type 1 comes from the donor
; - odd Defense DV: type 2 comes from the donor
; - Speed/Special DV 0: pure ??? (CURSE_TYPE)
; - donor 1-151: that Gen 1 species, 152-251: Gen 2 data in this bank
; Gen 1 has no Steel or Dark: Steel donates Ghost, Dark donates Psychic.

ApplyDonorTypes_BattleMon:
	ld de, wBattleMonDVs
	ld hl, wBattleMonType1
	jr ApplyDonorTypes

ApplyDonorTypes_EnemyMon:
	ld de, wEnemyMonDVs
	ld hl, wEnemyMonType1
	jr ApplyDonorTypes

ApplyDonorTypes_MonHeader:
; for the status screen: the mon in wLoadedMon, types in its base stats header
	ld de, wLoadedMonDVs
	ld hl, wMonHType1
	; fallthrough

ApplyDonorTypes:
; de = DVs, hl = type 1 (type 2 follows)
	inc de
	ld a, [de] ; Speed/Special DV byte = donor species
	dec de
	and a
	jr z, .curse
	push hl
	ld l, a
	ld h, 0
	add hl, hl
	ld bc, DonorTypes
	add hl, bc
	ld a, [hli]
	ld b, a
	ld c, [hl]
	pop hl
	ld a, [de] ; Attack/Defense DV byte
	bit 7, a
	jr z, .keep_type_1
	ld [hl], b
.keep_type_1
	inc hl
	ld a, [de]
	bit 0, a
	ret z
	ld [hl], c
	ret

.curse
	ld a, CURSE_TYPE
	ld [hli], a
	ld [hl], a
	ret

GetGen2DonorLevelUpMove:
; d = Gen 2 donor (152-251), e = how many matches to skip
; returns the next move it learns at level [wCurEnemyLevel] in d,
; with carry if there is one
	ld a, d
	sub NUM_POKEMON + 1
	ld l, a
	ld h, 0
	add hl, hl
	ld bc, Gen2DonorLearnsetPointers
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wCurEnemyLevel]
	ld b, a
.loop
	ld a, [hli]
	and a
	ret z ; no carry
	cp b
	ld a, [hli]
	jr nz, .loop
	ld d, a
	ld a, e
	and a
	jr z, .found
	dec e
	jr .loop
.found
	scf
	ret

MixDonorStartingMoves:
; Wild mons, like UltimateCrystal's FillMoves: build the donor's moveset at
; [wCurEnemyLevel], then each slot of wEnemyMonMoves has a 50% chance to
; take the donor's move in the same slot.
	ld a, [wEnemyMonDVs + 1]
	and a
	ret z
	cp 252
	ret nc

	; the donor moveset goes in a 4-byte buffer on the stack
	add sp, -NUM_MOVES
	ld hl, sp + 0
	ld d, h
	ld e, l
	xor a
REPT NUM_MOVES
	ld [hli], a
ENDR
	ld a, [wEnemyMonDVs + 1]
	cp NUM_POKEMON + 1
	jr nc, .gen2Donor

; Gen 1 donor: its level 1 moves, then its learnset up to this level
	ld [wPokedexNum], a
	push de
	farcall PokedexToIndex
	pop de
	ld a, [wCurPartySpecies]
	push af
	ld a, [wPokedexNum]
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	call GetMonHeader
	push de
	ld hl, wMonHMoves
	ld bc, NUM_MOVES
	call CopyData
	pop de
	xor a
	ld [wLearningMovesFromDayCare], a
	push de
	predef WriteMonMoves
	pop de
	pop af
	ld [wCurPartySpecies], a
	; restore the real species' header
	ld a, [wEnemyMonSpecies2]
	ld [wCurSpecies], a
	call GetMonHeader
	jr .merge

.gen2Donor
	sub NUM_POKEMON + 1
	ld l, a
	ld h, 0
	add hl, hl
	ld bc, Gen2DonorLearnsetPointers
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
.gen2Loop
	ld a, [hli]
	and a
	jr z, .merge
	ld b, a
	ld a, [wCurEnemyLevel]
	cp b
	jr c, .merge ; learnsets are sorted by level
	ld a, [hli]
	call .AddMove
	jr .gen2Loop

.merge
; donor moves the mon already knows are skipped
	ld hl, wEnemyMonMoves
	ld c, NUM_MOVES
.mergeLoop
	ld a, [de]
	and a
	jr z, .mergeNext
	ld b, a
	call .KnowsMove
	jr z, .mergeNext
	call Random
	bit 0, a
	jr z, .mergeNext
	ld [hl], b
.mergeNext
	inc de
	inc hl
	dec c
	jr nz, .mergeLoop

; pack the moves so no move comes after an empty slot
	ld b, NUM_MOVES - 1
.packPass
	ld hl, wEnemyMonMoves
	ld c, NUM_MOVES - 1
.packStep
	ld a, [hli]
	and a
	jr nz, .packNext
	ld a, [hld]
	ld [hli], a
	xor a
	ld [hl], a
.packNext
	dec c
	jr nz, .packStep
	dec b
	jr nz, .packPass
	add sp, NUM_MOVES
	ret

.KnowsMove:
; z if wEnemyMonMoves already includes move b
	push hl
	push bc
	ld hl, wEnemyMonMoves
	ld c, NUM_MOVES
.knowsMoveLoop
	ld a, [hli]
	cp b
	jr z, .knowsMoveDone
	dec c
	jr nz, .knowsMoveLoop
	or 1 ; nz
.knowsMoveDone
	pop bc
	pop hl
	ret

.AddMove:
; add move a to the moveset at de, like FillMoves does
	push hl
	ld b, a
	ld h, d
	ld l, e
	ld c, NUM_MOVES
.checkKnown
	ld a, [hli]
	cp b
	jr z, .added
	dec c
	jr nz, .checkKnown
	ld h, d
	ld l, e
	ld c, NUM_MOVES
.findEmpty
	ld a, [hl]
	and a
	jr z, .put
	inc hl
	dec c
	jr nz, .findEmpty
	; no empty slot: shift the moves up, deleting move 1
	ld h, d
	ld l, e
REPT NUM_MOVES - 1
	inc hl
	ld a, [hld]
	ld [hli], a
ENDR
.put
	ld [hl], b
.added
	pop hl
	ret

INCLUDE "data/pokemon/donor_types.asm"
INCLUDE "data/pokemon/gen2_donor_learnsets.asm"
INCLUDE "data/pokemon/gen2_donor_tmhm.asm"
