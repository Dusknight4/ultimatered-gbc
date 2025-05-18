	db DEX_ARBOK ; pokedex id

	db  115,  112,  80,  75,  80
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 90 ; catch rate
	db 157 ; base exp

IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/arbok.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/arbok.pic", 0, 1 ; sprite dimensions
ENDC
	dw ArbokPicFront, ArbokPicBack

	db WRAP, LEER, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,     PAY_DAY
	; end

	db BANK(ArbokPicFront)
