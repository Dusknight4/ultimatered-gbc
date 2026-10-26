; Level-up learnsets of Gen 2 donor species (dex 152-251), synced from
; UltimateCrystal. Gen 2 moves are left out.

Gen2DonorLearnsetPointers:
	table_width 2, Gen2DonorLearnsetPointers
	dw ChikoritaDonorLearnset
	dw BayleefDonorLearnset
	dw MeganiumDonorLearnset
	dw CyndaquilDonorLearnset
	dw QuilavaDonorLearnset
	dw TyphlosionDonorLearnset
	dw TotodileDonorLearnset
	dw CroconawDonorLearnset
	dw FeraligatrDonorLearnset
	dw SentretDonorLearnset
	dw FurretDonorLearnset
	dw HoothootDonorLearnset
	dw NoctowlDonorLearnset
	dw LedybaDonorLearnset
	dw LedianDonorLearnset
	dw SpinarakDonorLearnset
	dw AriadosDonorLearnset
	dw CrobatDonorLearnset
	dw ChinchouDonorLearnset
	dw LanturnDonorLearnset
	dw PichuDonorLearnset
	dw CleffaDonorLearnset
	dw IgglybuffDonorLearnset
	dw TogepiDonorLearnset
	dw TogeticDonorLearnset
	dw NatuDonorLearnset
	dw XatuDonorLearnset
	dw MareepDonorLearnset
	dw FlaaffyDonorLearnset
	dw AmpharosDonorLearnset
	dw BellossomDonorLearnset
	dw MarillDonorLearnset
	dw AzumarillDonorLearnset
	dw SudowoodoDonorLearnset
	dw PolitoedDonorLearnset
	dw HoppipDonorLearnset
	dw SkiploomDonorLearnset
	dw JumpluffDonorLearnset
	dw AipomDonorLearnset
	dw SunkernDonorLearnset
	dw SunfloraDonorLearnset
	dw YanmaDonorLearnset
	dw WooperDonorLearnset
	dw QuagsireDonorLearnset
	dw EspeonDonorLearnset
	dw UmbreonDonorLearnset
	dw MurkrowDonorLearnset
	dw SlowkingDonorLearnset
	dw MisdreavusDonorLearnset
	dw UnownDonorLearnset
	dw WobbuffetDonorLearnset
	dw GirafarigDonorLearnset
	dw PinecoDonorLearnset
	dw ForretressDonorLearnset
	dw DunsparceDonorLearnset
	dw GligarDonorLearnset
	dw SteelixDonorLearnset
	dw SnubbullDonorLearnset
	dw GranbullDonorLearnset
	dw QwilfishDonorLearnset
	dw ScizorDonorLearnset
	dw ShuckleDonorLearnset
	dw HeracrossDonorLearnset
	dw SneaselDonorLearnset
	dw TeddiursaDonorLearnset
	dw UrsaringDonorLearnset
	dw SlugmaDonorLearnset
	dw MagcargoDonorLearnset
	dw SwinubDonorLearnset
	dw PiloswineDonorLearnset
	dw CorsolaDonorLearnset
	dw RemoraidDonorLearnset
	dw OctilleryDonorLearnset
	dw DelibirdDonorLearnset
	dw MantineDonorLearnset
	dw SkarmoryDonorLearnset
	dw HoundourDonorLearnset
	dw HoundoomDonorLearnset
	dw KingdraDonorLearnset
	dw PhanpyDonorLearnset
	dw DonphanDonorLearnset
	dw Porygon2DonorLearnset
	dw StantlerDonorLearnset
	dw SmeargleDonorLearnset
	dw TyrogueDonorLearnset
	dw HitmontopDonorLearnset
	dw SmoochumDonorLearnset
	dw ElekidDonorLearnset
	dw MagbyDonorLearnset
	dw MiltankDonorLearnset
	dw BlisseyDonorLearnset
	dw RaikouDonorLearnset
	dw EnteiDonorLearnset
	dw SuicuneDonorLearnset
	dw LarvitarDonorLearnset
	dw PupitarDonorLearnset
	dw TyranitarDonorLearnset
	dw LugiaDonorLearnset
	dw HoOhDonorLearnset
	dw CelebiDonorLearnset
	assert_table_length 251 - 151

ChikoritaDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db  8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 29, BODY_SLAM
	db 36, LIGHT_SCREEN
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

BayleefDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db  1, RAZOR_LEAF
	db  1, REFLECT
	db  8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 31, BODY_SLAM
	db 39, LIGHT_SCREEN
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db  1, RAZOR_LEAF
	db  1, REFLECT
	db  8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 31, BODY_SLAM
	db 41, LIGHT_SCREEN
	db 61, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilDonorLearnset:
	db  1, TACKLE
	db  1, LEER
	db  6, SMOKESCREEN
	db 12, EMBER
	db 19, QUICK_ATTACK
	db 36, SWIFT
	db 46, FLAMETHROWER
	db 0 ; no more level-up moves

QuilavaDonorLearnset:
	db  1, TACKLE
	db  1, LEER
	db  1, SMOKESCREEN
	db  6, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 42, SWIFT
	db 54, FLAMETHROWER
	db 0 ; no more level-up moves

TyphlosionDonorLearnset:
	db  1, TACKLE
	db  1, LEER
	db  1, SMOKESCREEN
	db  1, EMBER
	db  6, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 45, SWIFT
	db 60, FLAMETHROWER
	db 0 ; no more level-up moves

TotodileDonorLearnset:
	db  1, SCRATCH
	db  1, LEER
	db  7, RAGE
	db 13, WATER_GUN
	db 20, BITE
	db 35, SLASH
	db 43, SCREECH
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawDonorLearnset:
	db  1, SCRATCH
	db  1, LEER
	db  1, RAGE
	db  7, RAGE
	db 13, WATER_GUN
	db 21, BITE
	db 37, SLASH
	db 45, SCREECH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrDonorLearnset:
	db  1, SCRATCH
	db  1, LEER
	db  1, RAGE
	db  1, WATER_GUN
	db  7, RAGE
	db 13, WATER_GUN
	db 21, BITE
	db 38, SLASH
	db 47, SCREECH
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretDonorLearnset:
	db  1, TACKLE
	db  5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 17, FURY_SWIPES
	db 25, SLAM
	db 33, REST
	db 41, AMNESIA
	db 0 ; no more level-up moves

FurretDonorLearnset:
	db  1, SCRATCH
	db  1, DEFENSE_CURL
	db  1, QUICK_ATTACK
	db  5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 18, FURY_SWIPES
	db 28, SLAM
	db 38, REST
	db 48, AMNESIA
	db 0 ; no more level-up moves

HoothootDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db 11, PECK
	db 16, HYPNOSIS
	db 22, REFLECT
	db 28, TAKE_DOWN
	db 34, CONFUSION
	db 48, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db  1, PECK
	db 11, PECK
	db 16, HYPNOSIS
	db 25, REFLECT
	db 33, TAKE_DOWN
	db 41, CONFUSION
	db 57, DREAM_EATER
	db 0 ; no more level-up moves

LedybaDonorLearnset:
	db  1, TACKLE
	db  1, LEECH_LIFE
	db  8, SUPERSONIC
	db 15, COMET_PUNCH
	db 18, CONFUSION
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 30, COMET_PUNCH
	db 36, SWIFT
	db 43, AGILITY
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianDonorLearnset:
	db  1, TACKLE
	db  1, LEECH_LIFE
	db  1, SUPERSONIC
	db  8, SUPERSONIC
	db 15, COMET_PUNCH
	db 18, CONFUSION
	db 24, LIGHT_SCREEN
	db 24, REFLECT
	db 30, LEECH_LIFE
	db 35, COMET_PUNCH
	db 42, SWIFT
	db 51, AGILITY
	db 60, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakDonorLearnset:
	db  1, POISON_STING
	db  1, STRING_SHOT
	db  1, LEECH_LIFE
	db 11, CONSTRICT
	db 15, SPIKE_CANNON
	db 17, NIGHT_SHADE
	db 20, BITE
	db 23, LEECH_LIFE
	db 25, SPIKE_CANNON
	db 30, FURY_SWIPES
	db 31, TWINEEDLE
	db 45, SCREECH
	db 53, PSYCHIC_M
	db 0 ; no more level-up moves

AriadosDonorLearnset:
	db  1, POISON_STING
	db  1, STRING_SHOT
	db  1, LEECH_LIFE
	db 10, BITE
	db 11, CONSTRICT
	db 17, NIGHT_SHADE
	db 21, BITE
	db 25, LEECH_LIFE
	db 30, SPIKE_CANNON
	db 34, FURY_SWIPES
	db 35, TWINEEDLE
	db 53, SCREECH
	db 63, PSYCHIC_M
	db 0 ; no more level-up moves

CrobatDonorLearnset:
	db  1, SCREECH
	db  1, LEECH_LIFE
	db  1, SUPERSONIC
	db  6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 55, HAZE
	db 0 ; no more level-up moves

ChinchouDonorLearnset:
	db  1, BUBBLE
	db  1, THUNDER_WAVE
	db  5, SUPERSONIC
	db 17, WATER_GUN
	db 29, CONFUSE_RAY
	db 37, TAKE_DOWN
	db 41, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnDonorLearnset:
	db  1, BUBBLE
	db  1, THUNDER_WAVE
	db  1, SUPERSONIC
	db  5, SUPERSONIC
	db 17, WATER_GUN
	db 33, CONFUSE_RAY
	db 45, TAKE_DOWN
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuDonorLearnset:
	db  1, THUNDERSHOCK
	db  6, TAIL_WHIP
	db  8, THUNDER_WAVE
	db 0 ; no more level-up moves

CleffaDonorLearnset:
	db  1, POUND
	db  8, SING
	db 0 ; no more level-up moves

IgglybuffDonorLearnset:
	db  1, SING
	db  4, DEFENSE_CURL
	db  9, POUND
	db 0 ; no more level-up moves

TogepiDonorLearnset:
	db  1, GROWL
	db  7, METRONOME
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticDonorLearnset:
	db  1, GROWL
	db  7, METRONOME
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

NatuDonorLearnset:
	db  1, PECK
	db  1, LEER
	db 10, NIGHT_SHADE
	db 20, TELEPORT
	db 40, CONFUSE_RAY
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

XatuDonorLearnset:
	db  1, PECK
	db  1, LEER
	db  1, NIGHT_SHADE
	db 10, NIGHT_SHADE
	db 20, TELEPORT
	db 50, CONFUSE_RAY
	db 65, PSYCHIC_M
	db 0 ; no more level-up moves

MareepDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db  9, THUNDERSHOCK
	db 16, THUNDER_WAVE
	db 30, LIGHT_SCREEN
	db 37, THUNDER
	db 0 ; no more level-up moves

FlaaffyDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db  1, THUNDERSHOCK
	db  9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 36, LIGHT_SCREEN
	db 45, THUNDER
	db 0 ; no more level-up moves

AmpharosDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db  1, THUNDERSHOCK
	db  1, THUNDER_WAVE
	db  9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 30, THUNDERPUNCH
	db 42, LIGHT_SCREEN
	db 57, THUNDER
	db 0 ; no more level-up moves

BellossomDonorLearnset:
	db  1, ABSORB
	db  1, STUN_SPORE
	db  1, PETAL_DANCE
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MarillDonorLearnset:
	db  1, TACKLE
	db  3, DEFENSE_CURL
	db  6, TAIL_WHIP
	db 10, WATER_GUN
	db 21, BUBBLEBEAM
	db 28, DOUBLE_EDGE
	db 0 ; no more level-up moves

AzumarillDonorLearnset:
	db  1, TACKLE
	db  1, DEFENSE_CURL
	db  1, TAIL_WHIP
	db  1, WATER_GUN
	db  3, DEFENSE_CURL
	db  6, TAIL_WHIP
	db 10, WATER_GUN
	db 25, BUBBLEBEAM
	db 36, DOUBLE_EDGE
	db 0 ; no more level-up moves

SudowoodoDonorLearnset:
	db  1, ROCK_THROW
	db  1, MIMIC
	db 19, LOW_KICK
	db 28, ROCK_SLIDE
	db 46, SLAM
	db 0 ; no more level-up moves

PolitoedDonorLearnset:
	db  1, WATER_GUN
	db  1, HYPNOSIS
	db  1, DOUBLESLAP
	db 0 ; no more level-up moves

HoppipDonorLearnset:
	db  1, SPLASH
	db  5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 20, LEECH_SEED
	db 30, MEGA_DRAIN
	db 0 ; no more level-up moves

SkiploomDonorLearnset:
	db  1, SPLASH
	db  1, TAIL_WHIP
	db  1, TACKLE
	db  5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 36, MEGA_DRAIN
	db 0 ; no more level-up moves

JumpluffDonorLearnset:
	db  1, SPLASH
	db  1, TAIL_WHIP
	db  1, TACKLE
	db  5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 44, MEGA_DRAIN
	db 0 ; no more level-up moves

AipomDonorLearnset:
	db  1, SCRATCH
	db  1, TAIL_WHIP
	db  6, SAND_ATTACK
	db 19, FURY_SWIPES
	db 27, SWIFT
	db 36, SCREECH
	db 46, AGILITY
	db 0 ; no more level-up moves

SunkernDonorLearnset:
	db  1, ABSORB
	db  4, GROWTH
	db 10, MEGA_DRAIN
	db 0 ; no more level-up moves

SunfloraDonorLearnset:
	db  1, ABSORB
	db  1, POUND
	db  4, GROWTH
	db 10, RAZOR_LEAF
	db 31, PETAL_DANCE
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

YanmaDonorLearnset:
	db  1, TACKLE
	db  1, LEECH_LIFE
	db  7, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 15, GUST
	db 18, PSYBEAM
	db 19, SONICBOOM
	db 20, LEECH_LIFE
	db 30, WING_ATTACK
	db 31, SUPERSONIC
	db 37, SWIFT
	db 43, SCREECH
	db 0 ; no more level-up moves

WooperDonorLearnset:
	db  1, WATER_GUN
	db  1, TAIL_WHIP
	db 11, SLAM
	db 21, AMNESIA
	db 31, EARTHQUAKE
	db 51, MIST
	db 51, HAZE
	db 0 ; no more level-up moves

QuagsireDonorLearnset:
	db  1, WATER_GUN
	db  1, TAIL_WHIP
	db 11, SLAM
	db 23, AMNESIA
	db 35, EARTHQUAKE
	db 59, MIST
	db 59, HAZE
	db 0 ; no more level-up moves

EspeonDonorLearnset:
	db  1, TACKLE
	db  1, TAIL_WHIP
	db  8, SAND_ATTACK
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 30, SWIFT
	db 36, PSYBEAM
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

UmbreonDonorLearnset:
	db  1, TACKLE
	db  1, TAIL_WHIP
	db  8, SAND_ATTACK
	db 23, QUICK_ATTACK
	db 30, CONFUSE_RAY
	db 47, SCREECH
	db 0 ; no more level-up moves

MurkrowDonorLearnset:
	db  1, PECK
	db 16, HAZE
	db 26, NIGHT_SHADE
	db 0 ; no more level-up moves

SlowkingDonorLearnset:
	db  1, TACKLE
	db  6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

MisdreavusDonorLearnset:
	db  1, GROWL
	db  1, PSYWAVE
	db 12, CONFUSE_RAY
	db 27, PSYBEAM
	db 40, PSYCHIC_M
	db 0 ; no more level-up moves

UnownDonorLearnset:
	db 0 ; no more level-up moves

WobbuffetDonorLearnset:
	db  1, COUNTER
	db 0 ; no more level-up moves

GirafarigDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db  1, CONFUSION
	db  1, STOMP
	db  7, CONFUSION
	db 13, STOMP
	db 20, AGILITY
	db 41, PSYBEAM
	db 0 ; no more level-up moves

PinecoDonorLearnset:
	db  1, TACKLE
	db  8, SELFDESTRUCT
	db 15, TAKE_DOWN
	db 29, BIDE
	db 36, EXPLOSION
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressDonorLearnset:
	db  1, TACKLE
	db  1, SELFDESTRUCT
	db  8, SELFDESTRUCT
	db 15, TAKE_DOWN
	db 29, BIDE
	db 39, EXPLOSION
	db 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

DunsparceDonorLearnset:
	db  1, RAGE
	db  1, LEECH_LIFE
	db  5, DEFENSE_CURL
	db 13, GLARE
	db 20, LEECH_LIFE
	db 30, SCREECH
	db 38, TAKE_DOWN
	db 0 ; no more level-up moves

GligarDonorLearnset:
	db  1, POISON_STING
	db  1, LEECH_LIFE
	db  6, SAND_ATTACK
	db 13, HARDEN
	db 20, QUICK_ATTACK
	db 25, LEECH_LIFE
	db 30, VICEGRIP
	db 36, SLASH
	db 44, SCREECH
	db 52, GUILLOTINE
	db 0 ; no more level-up moves

SteelixDonorLearnset:
	db  1, TACKLE
	db  1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 39, ROCK_SLIDE
	db 40, SLAM
	db 0 ; no more level-up moves

SnubbullDonorLearnset:
	db  1, TACKLE
	db  4, TAIL_WHIP
	db 13, BITE
	db 19, LICK
	db 26, ROAR
	db 34, RAGE
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullDonorLearnset:
	db  1, TACKLE
	db  4, TAIL_WHIP
	db 13, BITE
	db 19, LICK
	db 28, ROAR
	db 38, RAGE
	db 51, TAKE_DOWN
	db 0 ; no more level-up moves

QwilfishDonorLearnset:
	db  1, TACKLE
	db  1, POISON_STING
	db 10, HARDEN
	db 10, MINIMIZE
	db 19, WATER_GUN
	db 28, PIN_MISSILE
	db 37, TAKE_DOWN
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorDonorLearnset:
	db  1, QUICK_ATTACK
	db  1, LEER
	db  1, LEECH_LIFE
	db  6, FOCUS_ENERGY
	db 24, AGILITY
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleDonorLearnset:
	db  1, CONSTRICT
	db  1, WITHDRAW
	db  9, WRAP
	db 28, BIDE
	db 37, REST
	db 0 ; no more level-up moves

HeracrossDonorLearnset:
	db  1, TACKLE
	db  1, LEER
	db  6, HORN_ATTACK
	db 19, FURY_ATTACK
	db 27, COUNTER
	db 35, TAKE_DOWN
	db 0 ; no more level-up moves

SneaselDonorLearnset:
	db  1, SCRATCH
	db  1, LEER
	db  9, QUICK_ATTACK
	db 17, SCREECH
	db 33, FURY_SWIPES
	db 41, AGILITY
	db 49, SLASH
	db 0 ; no more level-up moves

TeddiursaDonorLearnset:
	db  1, SCRATCH
	db  1, LEER
	db  8, LICK
	db 15, FURY_SWIPES
	db 29, REST
	db 36, SLASH
	db 50, THRASH
	db 0 ; no more level-up moves

UrsaringDonorLearnset:
	db  1, SCRATCH
	db  1, LEER
	db  1, LICK
	db  1, FURY_SWIPES
	db  8, LICK
	db 15, FURY_SWIPES
	db 29, REST
	db 39, SLASH
	db 59, THRASH
	db 0 ; no more level-up moves

SlugmaDonorLearnset:
	db  1, SMOG
	db  8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 43, ROCK_SLIDE
	db 50, BODY_SLAM
	db 0 ; no more level-up moves

MagcargoDonorLearnset:
	db  1, SMOG
	db  1, EMBER
	db  1, ROCK_THROW
	db  8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 48, ROCK_SLIDE
	db 60, BODY_SLAM
	db 0 ; no more level-up moves

SwinubDonorLearnset:
	db  1, TACKLE
	db 28, TAKE_DOWN
	db 37, MIST
	db 46, BLIZZARD
	db 0 ; no more level-up moves

PiloswineDonorLearnset:
	db  1, HORN_ATTACK
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 42, MIST
	db 56, BLIZZARD
	db 0 ; no more level-up moves

CorsolaDonorLearnset:
	db  1, TACKLE
	db  7, HARDEN
	db 13, BUBBLE
	db 19, RECOVER
	db 25, BUBBLEBEAM
	db 31, SPIKE_CANNON
	db 0 ; no more level-up moves

RemoraidDonorLearnset:
	db  1, WATER_GUN
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 33, FOCUS_ENERGY
	db 44, ICE_BEAM
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryDonorLearnset:
	db  1, WATER_GUN
	db 11, CONSTRICT
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 38, FOCUS_ENERGY
	db 54, ICE_BEAM
	db 70, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdDonorLearnset:
	db 0 ; no more level-up moves

MantineDonorLearnset:
	db  1, TACKLE
	db  1, BUBBLE
	db 10, SUPERSONIC
	db 18, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 32, AGILITY
	db 40, WING_ATTACK
	db 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SkarmoryDonorLearnset:
	db  1, LEER
	db  1, PECK
	db 13, SAND_ATTACK
	db 19, SWIFT
	db 25, AGILITY
	db 37, FURY_ATTACK
	db 0 ; no more level-up moves

HoundourDonorLearnset:
	db  1, LEER
	db  1, EMBER
	db  7, ROAR
	db 13, SMOG
	db 20, BITE
	db 35, FLAMETHROWER
	db 0 ; no more level-up moves

HoundoomDonorLearnset:
	db  1, LEER
	db  1, EMBER
	db  7, ROAR
	db 13, SMOG
	db 20, BITE
	db 41, FLAMETHROWER
	db 0 ; no more level-up moves

KingdraDonorLearnset:
	db  1, BUBBLE
	db  1, SMOKESCREEN
	db  1, LEER
	db  1, WATER_GUN
	db  8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyDonorLearnset:
	db  1, TACKLE
	db  1, GROWL
	db  9, DEFENSE_CURL
	db 25, TAKE_DOWN
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanDonorLearnset:
	db  1, HORN_ATTACK
	db  1, GROWL
	db  9, DEFENSE_CURL
	db 25, FURY_ATTACK
	db 49, EARTHQUAKE
	db 0 ; no more level-up moves

Porygon2DonorLearnset:
	db  1, TACKLE
	db  1, CONVERSION
	db  9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 36, TRI_ATTACK
	db 0 ; no more level-up moves

StantlerDonorLearnset:
	db  1, TACKLE
	db  8, LEER
	db 15, HYPNOSIS
	db 23, STOMP
	db 31, SAND_ATTACK
	db 40, TAKE_DOWN
	db 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SmeargleDonorLearnset:
	db 0 ; no more level-up moves

TyrogueDonorLearnset:
	db  1, TACKLE
	db 0 ; no more level-up moves

HitmontopDonorLearnset:
	db  1, ROLLING_KICK
	db  7, FOCUS_ENERGY
	db 19, QUICK_ATTACK
	db 31, COUNTER
	db 37, AGILITY
	db 0 ; no more level-up moves

SmoochumDonorLearnset:
	db  1, POUND
	db  1, LICK
	db 21, CONFUSION
	db 25, SING
	db 37, PSYCHIC_M
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidDonorLearnset:
	db  1, QUICK_ATTACK
	db  1, LEER
	db  9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 41, THUNDERBOLT
	db 49, THUNDER
	db 0 ; no more level-up moves

MagbyDonorLearnset:
	db  1, EMBER
	db  7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankDonorLearnset:
	db  1, TACKLE
	db  4, GROWL
	db  8, DEFENSE_CURL
	db 13, STOMP
	db 26, BIDE
	db 43, BODY_SLAM
	db 0 ; no more level-up moves

BlisseyDonorLearnset:
	db  1, POUND
	db  4, GROWL
	db  7, TAIL_WHIP
	db 10, SOFTBOILED
	db 13, DOUBLESLAP
	db 18, MINIMIZE
	db 23, SING
	db 28, EGG_BOMB
	db 33, DEFENSE_CURL
	db 40, LIGHT_SCREEN
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouDonorLearnset:
	db  1, BITE
	db  1, LEER
	db 11, THUNDERSHOCK
	db 21, ROAR
	db 31, QUICK_ATTACK
	db 51, REFLECT
	db 71, THUNDER
	db 0 ; no more level-up moves

EnteiDonorLearnset:
	db  1, BITE
	db  1, LEER
	db 11, EMBER
	db 21, ROAR
	db 31, FIRE_SPIN
	db 41, STOMP
	db 51, FLAMETHROWER
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneDonorLearnset:
	db  1, BITE
	db  1, LEER
	db 11, WATER_GUN
	db 21, ROAR
	db 31, GUST
	db 41, BUBBLEBEAM
	db 51, MIST
	db 71, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarDonorLearnset:
	db  1, BITE
	db  1, LEER
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 50, EARTHQUAKE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarDonorLearnset:
	db  1, BITE
	db  1, LEER
	db  1, SCREECH
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 56, EARTHQUAKE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarDonorLearnset:
	db  1, BITE
	db  1, LEER
	db  1, SCREECH
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 61, EARTHQUAKE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaDonorLearnset:
	db 22, GUST
	db 33, RECOVER
	db 44, HYDRO_PUMP
	db 66, SWIFT
	db 77, WHIRLWIND
	db 0 ; no more level-up moves

HoOhDonorLearnset:
	db 22, GUST
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 66, SWIFT
	db 77, WHIRLWIND
	db 0 ; no more level-up moves

CelebiDonorLearnset:
	db  1, LEECH_SEED
	db  1, CONFUSION
	db  1, RECOVER
	db 0 ; no more level-up moves

