	db DEX_BEEDRILL ; pokedex id

	db  75,  95,  60,  115,  65
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp

IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/beedrill.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/beedrill.pic", 0, 1 ; sprite dimensions
ENDC
	dw BeedrillPicFront, BeedrillPicBack

	db FURY_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT,          HORN_DRILL,   FLY,          PAY_DAY
	; end

	db BANK(BeedrillPicFront)
