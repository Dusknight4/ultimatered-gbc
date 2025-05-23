	db DEX_OMASTAR ; pokedex id

	db  100, 75, 145, 65, 130
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 199 ; base exp

IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/omastar.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/omastar.pic", 0, 1 ; sprite dimensions
ENDC
	dw OmastarPicFront, OmastarPicBack

	db WATER_GUN, WITHDRAW, HORN_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     SUBMISSION,   SEISMIC_TOSS, RAGE,         MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     SURF,         PAY_DAY
	; end

	db BANK(OmastarPicFront)
