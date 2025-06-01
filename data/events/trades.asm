TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
	db NIDORINO,   MACHOKE,   TRADE_DIALOGSET_CASUAL,    "TERRY@@@@@@"
	db ABRA,       MR_MIME,   TRADE_DIALOGSET_CASUAL,    "MARCEL@@@@@"
	db BUTTERFREE, KADABRA,   TRADE_DIALOGSET_HAPPY,     "CHIKUCHIKU@" ; unused
	db PONYTA,     GRAVELER,  TRADE_DIALOGSET_CASUAL,    "ROCKY@@@@@@"
	db SPEAROW,    FARFETCHD, TRADE_DIALOGSET_HAPPY,     "DUX@@@@@@@@"
	db SLOWBRO,    LICKITUNG, TRADE_DIALOGSET_CASUAL,    "MARC@@@@@@@"
	db POLIWHIRL,  HAUNTER,   TRADE_DIALOGSET_EVOLUTION, "SHADY@@@@@@"
	db RAICHU,     ELECTRODE, TRADE_DIALOGSET_EVOLUTION, "DORIS@@@@@@"
	db VENONAT,    TANGELA,   TRADE_DIALOGSET_HAPPY,     "CRINKLES@@@"
	db NIDORAN_M,  JYNX,      TRADE_DIALOGSET_HAPPY,     "LOLA@@@@@@@"
	assert_table_length NUM_NPC_TRADES
