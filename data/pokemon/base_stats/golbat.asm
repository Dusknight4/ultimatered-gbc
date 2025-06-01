	db DEX_GOLBAT ; pokedex id

	db  85,  99,  70,  125,  89
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 201 ; base exp

IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/golbat.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/golbat.pic", 0, 1 ; sprite dimensions
ENDC
	dw GolbatPicFront, GolbatPicBack

	db LEECH_LIFE, SCREECH, BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SWIFT,        REST,         SUBSTITUTE
	; end

	db BANK(GolbatPicFront)
