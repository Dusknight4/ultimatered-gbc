	db DEX_BUTTERFREE ; pokedex id

	db  80,  65,  60,  90,  95
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp

IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/butterfree.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/butterfree.pic", 0, 1 ; sprite dimensions
ENDC
	dw ButterfreePicFront, ButterfreePicBack

	db CONFUSION, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    \
	     TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        REST,         PSYWAVE,      SUBSTITUTE,   FLY,          \
	     PAY_DAY
	; end

	db BANK(ButterfreePicFront)
