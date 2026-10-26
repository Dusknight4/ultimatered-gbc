SECTION "Donor Species", ROMX

; Every Pokemon has a donor (template) species: its Speed/Special DV byte,
; read as a Gen 2 Pokedex number. This works exactly like UltimateCrystal
; and UltimateGold, so traded Pokemon keep the same types and moves:
; - Attack DV 1-15: type 1 comes from the donor
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
	and $f0
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

INCLUDE "data/pokemon/donor_types.asm"
INCLUDE "data/pokemon/gen2_donor_learnsets.asm"
INCLUDE "data/pokemon/gen2_donor_tmhm.asm"
