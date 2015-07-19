NationalPark_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

LassScript_0x5c002:
	jumptextfaceplayer UnknownText_0x5c1d3

PokefanFScript_0x5c005:
	jumptextfaceplayer UnknownText_0x5c22e

TeacherScript_0x5c008:
	faceplayer
	loadfont
	checkevent EVENT_GOT_QUICK_CLAW
	iftrue UnknownScript_0x5c01d
	writetext UnknownText_0x5c265
	keeptextopen
	verbosegiveitem QUICK_CLAW, 1
	iffalse UnknownScript_0x5c021
	setevent EVENT_GOT_QUICK_CLAW
UnknownScript_0x5c01d:
	writetext UnknownText_0x5c30d
	closetext
UnknownScript_0x5c021:
	loadmovesprites
	end

YoungsterScript_0x5c023:
	jumptextfaceplayer UnknownText_0x5c35d

YoungsterScript_0x5c026:
	jumptextfaceplayer UnknownText_0x5c38f

TeacherScript_0x5c029:
	jumptextfaceplayer UnknownText_0x5c3bc

GrowlitheScript_0x5c02c:
	faceplayer
	loadfont
	writetext UnknownText_0x5c416
	cry PERSIAN
	closetext
	loadmovesprites
	end

GameboyKidScript_0x5c037:
	faceplayer
	loadfont
	writetext UnknownText_0x5c42a
	closetext
	loadmovesprites
	spriteface $e, DOWN
	end

TrainerSchoolboyJack1:
	trainer EVENT_BEAT_SCHOOLBOY_JACK, SCHOOLBOY, JACK1, SchoolboyJack1SeenText, SchoolboyJack1BeatenText, $0000, SchoolboyJack1Script

SchoolboyJack1Script:
	writecode VAR_CALLERID, PHONE_SCHOOLBOY_JACK
	talkaftercancel
	loadfont
	checkflag ENGINE_JACK
	iftrue UnknownScript_0x5c088
	checkcellnum PHONE_SCHOOLBOY_JACK
	iftrue UnknownScript_0x5c108
	checkevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	iftrue UnknownScript_0x5c071
	writetext UnknownText_0x5c4f3
	keeptextopen
	setevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	scall UnknownScript_0x5c0fc
	jump UnknownScript_0x5c074

UnknownScript_0x5c071:
	scall UnknownScript_0x5c100
UnknownScript_0x5c074:
	askforphonenumber PHONE_SCHOOLBOY_JACK
	if_equal $1, UnknownScript_0x5c110
	if_equal $2, UnknownScript_0x5c10c
	trainertotext SCHOOLBOY, JACK1, $0
	scall UnknownScript_0x5c104
	jump UnknownScript_0x5c108

UnknownScript_0x5c088:
	scall UnknownScript_0x5c114
	winlosstext SchoolboyJack1BeatenText, $0000
	copybytetovar wJackFightCount
	if_equal 4, .Fight4
	if_equal 3, .Fight3
	if_equal 2, .Fight2
	if_equal 1, .Fight1
	if_equal 0, .LoadFight0
.Fight4
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
.Fight3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
.Fight2
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
.Fight1
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
.LoadFight0
	loadtrainer SCHOOLBOY, JACK1
	startbattle
	returnafterbattle
	loadvar wJackFightCount, 1
	clearflag ENGINE_JACK
	end

.LoadFight1
	loadtrainer SCHOOLBOY, JACK2
	startbattle
	returnafterbattle
	loadvar wJackFightCount, 2
	clearflag ENGINE_JACK
	end

.LoadFight2
	loadtrainer SCHOOLBOY, JACK3
	startbattle
	returnafterbattle
	loadvar wJackFightCount, 3
	clearflag ENGINE_JACK
	end

.LoadFight3
	loadtrainer SCHOOLBOY, JACK4
	startbattle
	returnafterbattle
	loadvar wJackFightCount, 4
	clearflag ENGINE_JACK
	end

.LoadFight4
	loadtrainer SCHOOLBOY, JACK5
	startbattle
	returnafterbattle
	clearflag ENGINE_JACK
	end

UnknownScript_0x5c0fc:
	jumpstd asknumber1m
	end

UnknownScript_0x5c100:
	jumpstd asknumber2m
	end

UnknownScript_0x5c104:
	jumpstd registerednumberm
	end

UnknownScript_0x5c108:
	jumpstd numberacceptedm
	end

UnknownScript_0x5c10c:
	jumpstd numberdeclinedm
	end

UnknownScript_0x5c110:
	jumpstd phonefullm
	end

UnknownScript_0x5c114:
	jumpstd rematchm
	end

TrainerPokefanmWilliam:
	trainer EVENT_BEAT_POKEFANM_WILLIAM, POKEFANM, WILLIAM, PokefanmWilliamSeenText, PokefanmWilliamBeatenText, $0000, PokefanmWilliamScript

PokefanmWilliamScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x5c645
	closetext
	loadmovesprites
	end

TrainerPokefanfBeverly1:
	trainer EVENT_BEAT_POKEFANF_BEVERLY, POKEFANF, BEVERLY1, PokefanfBeverly1SeenText, PokefanfBeverly1BeatenText, $0000, PokefanfBeverly1Script

PokefanfBeverly1Script:
	writecode VAR_CALLERID, PHONE_POKEFAN_BEVERLY
	talkaftercancel
	loadfont
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftrue UnknownScript_0x5c177
	checkcellnum PHONE_POKEFAN_BEVERLY
	iftrue UnknownScript_0x5c19b
	checkpoke MARILL
	iffalse UnknownScript_0x5c189
	checkevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	iftrue UnknownScript_0x5c160
	writetext UnknownText_0x5c5bd
	keeptextopen
	setevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	scall UnknownScript_0x5c18f
	jump UnknownScript_0x5c163

UnknownScript_0x5c160:
	scall UnknownScript_0x5c193
UnknownScript_0x5c163:
	askforphonenumber PHONE_POKEFAN_BEVERLY
	if_equal $1, UnknownScript_0x5c1a3
	if_equal $2, UnknownScript_0x5c19f
	trainertotext POKEFANF, BEVERLY1, $0
	scall UnknownScript_0x5c197
	jump UnknownScript_0x5c19b

UnknownScript_0x5c177:
	scall UnknownScript_0x5c1a7
	verbosegiveitem NUGGET, 1
	iffalse UnknownScript_0x5c186
	clearflag ENGINE_BEVERLY_HAS_NUGGET
	jump UnknownScript_0x5c19b

UnknownScript_0x5c186:
	jump UnknownScript_0x5c1ab

UnknownScript_0x5c189:
	writetext UnknownText_0x5c68a
	closetext
	loadmovesprites
	end

UnknownScript_0x5c18f:
	jumpstd asknumber1f
	end

UnknownScript_0x5c193:
	jumpstd asknumber2f
	end

UnknownScript_0x5c197:
	jumpstd registerednumberf
	end

UnknownScript_0x5c19b:
	jumpstd numberacceptedf
	end

UnknownScript_0x5c19f:
	jumpstd numberdeclinedf
	end

UnknownScript_0x5c1a3:
	jumpstd phonefullf
	end

UnknownScript_0x5c1a7:
	jumpstd giftf
	end

UnknownScript_0x5c1ab:
	jumpstd packfullf
	end

TrainerLassKrise:
	trainer EVENT_BEAT_LASS_KRISE, LASS, KRISE, LassKriseSeenText, LassKriseBeatenText, $0000, LassKriseScript

LassKriseScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x5c71d
	closetext
	loadmovesprites
	end

MapNationalParkSignpost0Script:
	jumptext UnknownText_0x5c750

MapNationalParkSignpost1Script:
	jumptext UnknownText_0x5c771

MapNationalParkSignpost3Script:
	jumptext UnknownText_0x5c7c6

ItemFragment_0x5c1cc:
	db PARLYZ_HEAL, 1

ItemFragment_0x5c1ce:
	db TM_DIG, 1

MapNationalParkSignpostItem2:
	dwb EVENT_NATIONAL_PARK_HIDDEN_FULL_HEAL, FULL_HEAL
	

UnknownText_0x5c1d3:
	text "Look! Check out my"
	line "bag!"

	para "I printed out my"
	line "favorites from my"

	para "#DEX and stuck"
	line "them on my bag."
	done

UnknownText_0x5c22e:
	text "This is MAIL I got"
	line "from my daughter."
	cont "It cheers me up."
	done

UnknownText_0x5c265:
	text "Pay attention,"
	line "please!"

	para "…Oops, I have to"
	line "quit thinking like"

	para "a teacher all the"
	line "time."

	para "You must be a"
	line "#MON trainer."

	para "Since you're work-"
	line "ing so hard, I"

	para "want you to have"
	line "this."
	done

UnknownText_0x5c30d:
	text "Let a #MON hold"
	line "that QUICK CLAW."

	para "Sometimes it will"
	line "strike first"
	cont "during battle."
	done

UnknownText_0x5c35d:
	text "I'm playing with"
	line "stickers I printed"
	cont "from my #DEX."
	done

UnknownText_0x5c38f:
	text "I get the other"
	line "guy's #DEX"
	cont "sticker if I win."
	done

UnknownText_0x5c3bc:
	text "I take walks in"
	line "the PARK, but I"

	para "never go into the"
	line "grass."

	para "Trainers always"
	line "want to battle…"
	done

UnknownText_0x5c416:
	text "PERSIAN: Fufushaa!"
	done

UnknownText_0x5c42a:
	text "I'm printing out"
	line "my #DEX."

	para "You can also print"
	line "out stuff like"

	para "MAIL and your PC"
	line "BOXES."
	done

SchoolboyJack1SeenText:
	text "The world of"
	line "#MON is deep."

	para "There are still"
	line "lots of things we"
	cont "don't know."

	para "But I know more"
	line "than you do!"
	done

SchoolboyJack1BeatenText:
	text "Wha-wha-what?"
	done

UnknownText_0x5c4f3:
	text "There is a lot"
	line "to learn."

	para "For example…"

	para "There are 50 kinds"
	line "of TMs."

	para "Traded #MON"
	line "level up faster."
	done

PokefanfBeverly1SeenText:
	text "My #MON are"
	line "simply darling."

	para "Let me tell you"
	line "how proud my"
	cont "darlings make me."
	done

PokefanfBeverly1BeatenText:
	text "I can beat you in"
	line "pride, but…"
	done

UnknownText_0x5c5bd:
	text "I must say, your"
	line "#MON are quite"
	cont "cute, too."
	done

PokefanmWilliamSeenText:
	text "We adore our #-"
	line "MON, even if they"
	cont "dislike us."

	para "That's what being"
	line "a FAN is about."
	done

PokefanmWilliamBeatenText:
	text "M-my #MON!"
	done

UnknownText_0x5c645:
	text "I lost the battle,"
	line "but my #MON win"

	para "the prize for"
	line "being most lovely."
	done

UnknownText_0x5c68a:
	text "My friend keeps a"
	line "MARILL!"

	para "I find them very"
	line "endearing."

	para "Oh, I wish for a"
	line "MARILL of my own…"
	done

LassKriseSeenText:
	text "Hello? Why are you"
	line "staring at me?"

	para "Oh, a battle?"
	done

LassKriseBeatenText:
	text "…Hmmm…"
	done

UnknownText_0x5c71d:
	text "I thought you were"
	line "staring at me"
	cont "because I'm cute!"
	done

UnknownText_0x5c750:
	text "RELAXATION SQUARE"
	line "NATIONAL PARK"
	done

UnknownText_0x5c771:
	text "What is this"
	line "notice?"

	para "Please battle only"
	line "in the grass."

	para "NATIONAL PARK"
	line "WARDEN'S OFFICE"
	done

UnknownText_0x5c7c6:
	text "TRAINER TIPS"

	para "Print out MAIL by"
	line "opening it then"
	cont "pressing START."
	done

NationalPark_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $12, $21, 1, GROUP_ROUTE_36_NATIONAL_PARK_GATE, MAP_ROUTE_36_NATIONAL_PARK_GATE
	warp_def $13, $21, 2, GROUP_ROUTE_36_NATIONAL_PARK_GATE, MAP_ROUTE_36_NATIONAL_PARK_GATE
	warp_def $2f, $a, 1, GROUP_ROUTE_35_NATIONAL_PARK_GATE, MAP_ROUTE_35_NATIONAL_PARK_GATE
	warp_def $2f, $b, 2, GROUP_ROUTE_35_NATIONAL_PARK_GATE, MAP_ROUTE_35_NATIONAL_PARK_GATE

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 44, 14, SIGNPOST_READ, MapNationalParkSignpost0Script
	signpost 31, 27, SIGNPOST_READ, MapNationalParkSignpost1Script
	signpost 47, 6, SIGNPOST_ITEM, MapNationalParkSignpostItem2
	signpost 4, 12, SIGNPOST_READ, MapNationalParkSignpost3Script

	; people-events
	db 14
	person_event SPRITE_LASS, 28, 19, UP << 2 | $1, $1, -1, -1, (PAL_OW_GREEN << 4) | $80, 0, LassScript_0x5c002, -1
	person_event SPRITE_POKEFAN_F, 8, 18, UP << 2 | $2, $0, -1, -1, $0, 0, PokefanFScript_0x5c005, -1
	person_event SPRITE_TEACHER, 44, 31, UP << 2 | $2, $0, -1, -1, (PAL_OW_GREEN << 4) | $80, 0, TeacherScript_0x5c008, -1
	person_event SPRITE_YOUNGSTER, 45, 15, LEFT << 2 | $0, $0, -1, -1, $0, 0, YoungsterScript_0x5c023, -1
	person_event SPRITE_YOUNGSTER, 45, 14, UP << 2 | $2, $0, -1, -1, (PAL_OW_RED << 4) | $80, 0, YoungsterScript_0x5c026, -1
	person_event SPRITE_TEACHER, 45, 21, DOWN << 2 | $2, $21, -1, -1, $0, 0, TeacherScript_0x5c029, -1
	person_event SPRITE_GROWLITHE, 44, 30, UP << 2 | $12, $0, -1, -1, $0, 0, GrowlitheScript_0x5c02c, -1
	person_event SPRITE_YOUNGSTER, 27, 31, LEFT << 2 | $2, $0, -1, -1, (PAL_OW_BLUE << 4) | $82, 3, TrainerSchoolboyJack1, -1
	person_event SPRITE_POKEFAN_F, 33, 22, LEFT << 2 | $2, $0, -1, -1, (PAL_OW_RED << 4) | $82, 2, TrainerPokefanfBeverly1, -1
	person_event SPRITE_POKEFAN_M, 13, 20, LEFT << 2 | $2, $0, -1, -1, (PAL_OW_RED << 4) | $82, 2, TrainerPokefanmWilliam, -1
	person_event SPRITE_LASS, 18, 12, LEFT << 2 | $2, $0, -1, -1, (PAL_OW_BLUE << 4) | $82, 3, TrainerLassKrise, -1
	person_event SPRITE_POKE_BALL, 16, 39, DOWN << 2 | $1, $0, -1, -1, $1, 0, ItemFragment_0x5c1cc, EVENT_NATIONAL_PARK_PARLYZ_HEAL
	person_event SPRITE_GAMEBOY_KID, 10, 30, UP << 2 | $2, $0, -1, -1, $0, 0, GameboyKidScript_0x5c037, -1
	person_event SPRITE_POKE_BALL, 47, 5, DOWN << 2 | $1, $0, -1, -1, $1, 0, ItemFragment_0x5c1ce, EVENT_NATIONAL_PARK_TM_DIG
