	db DEX_SCYTHER ; pokedex id

	db  80, 120,  80, 150,  65
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 187 ; base exp

IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/scyther.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/scyther.pic", 0, 1 ; sprite dimensions
ENDC
	dw ScytherPicFront, ScytherPicBack

	db QUICK_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   CUT,          FLY,          \
	     PAY_DAY
	; end

	db BANK(ScytherPicFront)
