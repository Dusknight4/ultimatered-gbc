; tests if mon [wCurPartySpecies] can learn move [wMoveNum]
; If it can't, its donor species (Speed/Special DV byte of party mon
; [wWhichPokemon]) is checked too, like in UltimateCrystal:
; donor 0 or 252-255 can learn every TM/HM.
CanLearnTM:
	ld a, [wCurPartySpecies]
	call .CheckSpecies
	ld a, c
	and a
	ret nz

	ld a, [wPokedexNum]
	push af
	ld a, [wWhichPokemon]
	ld hl, wPartyMon1DVs + 1
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld a, [hl]
	and a
	jr z, .allTMs
	cp 252
	jr nc, .allTMs
	cp NUM_POKEMON + 1
	jr nc, .gen2Donor
	ld [wPokedexNum], a
	farcall PokedexToIndex
	ld a, [wPokedexNum]
	call .CheckSpecies
	jr .done

.gen2Donor
	sub NUM_POKEMON + 1
	ld hl, Gen2DonorTMHM
	ld bc, (NUM_TM_HM + 7) / 8
	call AddNTimes
	ld de, wMonHLearnset
	ld bc, (NUM_TM_HM + 7) / 8
	ld a, BANK(Gen2DonorTMHM)
	call FarCopyData
	call .CheckLearnset
	jr .done

.allTMs
	ld c, 1
.done
	pop af
	ld [wPokedexNum], a
	; restore the real species' header
	push bc
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetMonHeader
	pop bc
	ret

.CheckSpecies:
	ld [wCurSpecies], a
	call GetMonHeader
.CheckLearnset:
	ld hl, wMonHLearnset
	push hl
	ld a, [wMoveNum]
	ld b, a
	ld c, $0
	ld hl, TechnicalMachines
.findTMloop
	ld a, [hli]
	cp b
	jr z, .TMfoundLoop
	inc c
	jr .findTMloop
.TMfoundLoop
	pop hl
	ld b, FLAG_TEST
	predef_jump FlagActionPredef

; converts TM/HM number in [wTempTMHM] into move number
; HMs start at 51
TMToMove:
	ld a, [wTempTMHM]
	dec a
	ld hl, TechnicalMachines
	ld b, $0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wTempTMHM], a
	ret

INCLUDE "data/moves/tmhm_moves.asm"
