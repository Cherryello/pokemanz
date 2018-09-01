UnknownText_0x1c0000::
	text "Oh, no picture?"
	line "Come again, OK?"
	done

UnknownText_0x1c0021::
	text "An EGG? My talent"
	line "is worth more…"
	done

UnknownText_0x1c0043::
	text "Hello, hello! I'm"
	line "the NAME RATER."

	para "I rate the names"
	line "of #MON."

	para "Would you like me"
	line "to rate names?"
	done

UnknownText_0x1c00a0::
	text "Which #MON's"
	line "nickname should I"
	cont "rate for you?"
	prompt

UnknownText_0x1c00cd::
	text "Hm… @"
	text_from_ram wStringBuffer1
	text "…"
	line "That's a fairly"
	cont "decent name."

	para "But, how about a"
	line "slightly better"
	cont "nickname?"

	para "Want me to give it"
	line "a better name?"
	done

UnknownText_0x1c0142::
	text "All right. What"
	line "name should we"
	cont "give it, then?"
	prompt

UnknownText_0x1c0171::
	text "That's a better"
	line "name than before!"

	para "Well done!"
	done

UnknownText_0x1c019e::
	text "OK, then. Come"
	line "again sometime."
	done

UnknownText_0x1c01be::
	text "Hm… @"
	text_from_ram wStringBuffer1
	text "?"
	line "What a great name!"
	cont "It's perfect."

	para "Treat @"
	text_from_ram wStringBuffer1
	text_start
	line "with loving care."
	done

UnknownText_0x1c0208::
	text "Whoa… That's just"
	line "an EGG."
	done

UnknownText_0x1c0222::
	text "It might look the"
	line "same as before,"

	para "but this new name"
	line "is much better!"

	para "Well done!"
	done

UnknownText_0x1c0272::
	text "All right. This"
	line "#MON is now"
	cont "named @"
	text_from_ram wStringBuffer1
	text "."
	prompt

Text_Gained::
	text_from_ram wStringBuffer1
	text " riceve@@"

Text_ABoostedStringBuffer2ExpPoints::
	text_start
	line "la bellezza di"
	cont "@"
	deciram wStringBuffer2, 2, 5
	text " Punti ESP.!"
	prompt

Text_StringBuffer2ExpPoints::
	text_start
	line "@"
	deciram wStringBuffer2, 2, 5
	text " Punti ESP.!"
	prompt

Text_GoMon::
	text "Vai! @@"

Text_DoItMon::
	text "Ce la puoi fare!"
    line "@@"

Text_GoForItMon::
	text "Fagli vedere come"
	line "si fa, @@"

Text_YourFoesWeakGetmMon::
	text "Avanti, stendilo!"
	line "@@"

Text_BattleMonNick01::
	text_from_ram wBattleMonNick
	text "!"
	done

Text_BattleMonNickComma::
	text_from_ram wBattleMonNick
	text ",@@"

Text_ThatsEnoughComeBack::
	text " basta,"
	line "va bene così!@@"

Text_OKComeBack::
	text " ok!"
	line "Torna!@@"

Text_GoodComeBack::
	text " bene!"
	line "Torna!@@"

Text_ComeBack::
	text " torna!"
	done

UnknownText_0x1c0373::
	text "Estratta un'MT."
	prompt

UnknownText_0x1c0384::
	text "Estratta un'MN."
	prompt

UnknownText_0x1c0396::
	text "Contiene"
	line "@"
	text_from_ram wStringBuffer2
	text "."

	para "Vuoi insegnare" 
	line "@"
	text_from_ram wStringBuffer2
	text " ad un"
	cont "#mon?"
	done

UnknownText_0x1c03c2::
	text_from_ram wStringBuffer2
	text " non"
	line "è compatibile con"
	cont "@"
	text_from_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c03fa::
	text "Non c'è spazio per"
	line "altri @"
	text_from_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c0421::
	text "Hai ricevuto"
	line "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

UnknownText_0x1c0436::
	text "Collegamento"
	line "annullato."
	prompt

UnknownText_0x1c0454::
	text "Errore di"
	line "comunicazione."
	prompt

UnknownText_0x1c046a::
	text "Must retrieve GIFT"
	line "at #MON CENTER."
	prompt

UnknownText_0x1c048e::
	text "Your friend isn't"
	line "ready."
	prompt

UnknownText_0x1c04a7::
	text "Sorry--only five"
	line "GIFTS a day."
	prompt

UnknownText_0x1c04c6::
	text "Sorry. One GIFT"
	line "a day per person."
	prompt

UnknownText_0x1c04e9::
	text_from_ram wMysteryGiftPartnerName
	text " invia"
	line "@"
	text_from_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c04fa::
	text_from_ram wMysteryGiftPartnerName
	text " invia"
	line "@"
	text_from_ram wStringBuffer1
	text_start
	cont "a casa di"
	cont "@"
	text_from_ram wMysteryGiftPlayerName
	text "."
	prompt
	
_BadgeRequiredText::
	text "Ti serve la"
	line "medaglia adatta."
	prompt

UnknownText_0x1c05c8::
	text "Non puoi usarlo"
	line "qui."
	prompt

UnknownText_0x1c05dd::
	text_from_ram wStringBuffer2
	text " usa"
	line "Taglio!"
	prompt

UnknownText_0x1c05ec::
	text "Non c'è nulla da"
	line "tagliare qui."
	prompt

UnknownText_0x1c0609::
	text "Un forte bagliore"
	line "illumina l'area!@"
	text_waitbutton
	db "@@"

_UsedSurfText::
	text_from_ram wStringBuffer2
	text " usa"
	line "Surf!"
	done

_CantSurfText::
	text "Non puoi usare"
	line "Surf qui."
	prompt

_AlreadySurfingText::
	text "Stai già usando"
	line "Surf."
	prompt

_AskSurfText::
	text "L'acqua è calma."
	line "Vuoi usare Surf?"
	done

UnknownText_0x1c068e::
	text_from_ram wStringBuffer2
	text " usa"
	line "Cascata!"
	done

UnknownText_0x1c06a3::
	text "Wow, è una cascata"
	line "enorme."
	done

UnknownText_0x1c06bf::
	text "Vuoi usare"
	line "Cascata?"
	done

UnknownText_0x1c06de::
	text_from_ram wStringBuffer2
	text " usa"
	line "Fossa!"
	done

UnknownText_0x1c06ed::
	text "<PLAYER> usa una"
	line "Fune di fuga."
	done

UnknownText_0x1c0705::
	text "Non puoi usarlo"
	line "qui."
	done

UnknownText_0x1c071a::
	text "Ritorna all'ultimo"
	line "Centro #mon."
	done

UnknownText_0x1c073b::
	text "Non puoi usarlo"
	line "qui."

	para ""
	done

UnknownText_0x1c0751::
	text "Un #mon sta già"
	line "usando Forza."
	prompt

UnknownText_0x1c0774::
	text_from_ram wStringBuffer2
	text " usa"
	line "Forza!"
	done

UnknownText_0x1c0788::
	text_from_ram wStringBuffer1
	text " può ora"
	line "spostare i massi."
	prompt

UnknownText_0x1c07a0::
	text "Un #mon può"
	line "spostarlo."

	para "Vuoi usare Forza?"
	done

UnknownText_0x1c07d8::
	text "Ora puoi spostare"
	line "i massi!"
	done

UnknownText_0x1c07f4::
	text "Un #mon può"
	line "spostarlo."
	done

UnknownText_0x1c0816::
	text_from_ram wStringBuffer2
	text " usa"
	line "Mulinello!"
	prompt

UnknownText_0x1c082b::
	text "È un pericoloso"
	line "mulinello!"

	para "Un #mon può"
	line "oltrepassarlo."
	done

UnknownText_0x1c0864::
	text "Di fronte a te c'è"
	line "un mulinello."

	para "Vuoi usare"
	line "Mulinello?"
	done

UnknownText_0x1c0897::
	text_from_ram wStringBuffer2
	text " usa"
	line "Bottintesta!"
	prompt

UnknownText_0x1c08ac::
	text "Niente…"
	done

UnknownText_0x1c08bc::
	text "Potrebbe esserci"
	line "un #mon"
	cont "nell'albero."

	para "Vuoi usare"
	line "Bottintesta?"
	done

UnknownText_0x1c08f0::
	text_from_ram wStringBuffer2
	text " usa"
	line "Spaccaroccia!"
	prompt

UnknownText_0x1c0906::
	text "Un #mon può"
	line "frantumarla."
	done

UnknownText_0x1c0924::
	text "Questa roccia è"
	line "incrinata."

	para "Vuoi usare"
	line "Spaccaroccia?"
	done

UnknownText_0x1c0958::
	text "Oh!"
	line "Abbocca!"
	prompt

UnknownText_0x1c0965::
	text "Nemmeno uno"
	line "scarpone!"
	prompt

UnknownText_0x1c099a::
	text "Non puoi scendere"
	line "adesso!"
	done

UnknownText_0x1c09b2::
	text "<PLAYER> sale"
	line "sul @"
	text_from_ram wStringBuffer2
	text "."
	done

UnknownText_0x1c09c7::
	text "<PLAYER> scende"
	line "dal @"
	text_from_ram wStringBuffer2
	text "."
	done

UnknownText_0x1c09dd::
	text "Questo albero può"
	line "essere tagliato."

	para "Vuoi usare Taglio?"
	done

UnknownText_0x1c0a05::
	text "Questo albero può"
	line "essere tagliato."
	done

UnknownText_0x1c0a1c::
	text "<PLAYER> trova"
	line "@"
	text_from_ram wStringBuffer3
	text "!"
	done

UnknownText_0x1c0a2c::
	text "Ma <PLAYER> non ha"
	line "spazio con sè."
	done

UnknownText_0x1c0a4e::
	text "<PLAYER> non ha"
	line "più #mon!"

	para "<PLAYER> ha"
	line "perso!"
	done

UnknownText_0x1c0a77::
	text "Sì! Il detector"
	line "dice che c'è qual-"
	cont "cosa nei paraggi."
	prompt

UnknownText_0x1c0aa9::
	text "No! Il detector"
	line "non reagisce."
	prompt

UnknownText_0x1c0acc::
	text_from_ram wStringBuffer3
	text_start
	line "è esausto!"
	prompt

UnknownText_0x1c0b03::
	text_from_ram wStringBuffer3
	text " usa"
	line "Profumino!"
	done

UnknownText_0x1c0b1a::
	text "Pare non ci sia"
	line "nulla qui…"
	done

UnknownText_0x1c0b3b::
	text "<PLAYER> innaffia"
	line "il terreno."

	para "Ma non succede"
	line "nulla…"
	done

UnknownText_0x1c0b65::
	text "<PLAYER>'s #MON"
	line "were all healed!"
	done

Text_AnEGGCantHoldAnItem::
	text "Un uovo non può"
	line "tenere uno"
	cont "strumento."
	prompt

UnknownText_0x1c0ba5::
	text "Quanti ne vuoi"
	line "buttare?"
	done

UnknownText_0x1c0bbb::
	text "Buttare @"
	deciram wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_from_ram wStringBuffer2
	text "?"
	done

UnknownText_0x1c0bd8::
	text "Butti via"
	line "@"
	text_from_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c0bee::
	text "Oak: <PLAYER>!"
	line "Strunz!"
	prompt

Text_YouDontHaveAMon::
	text "Non hai alcun"
	line "#mon!"
	prompt

UnknownText_0x1c0c2e::
	text "Hai assegnato"
	line "@"
	text_from_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c0c45::
	text "Non puoi "
	line "assegnarlo."
	prompt

UnknownText_0x1c0c63::
	text "Dove vuoi"
	line "spostarlo?"
	done

UnknownText_0x1c0c83::
	text_start
	done

Text_AreYouABoyOrAreYouAGirl::
	text "Sei un ragazzo?"
	line "O una ragazza?"
	done

UnknownText_0x1c0cc6::
	text "@"
	text_from_ram wStringBuffer2
	text " di"
	line "<USER>@@"

UnknownText_0x1c0cd0::
	interpret_data
	text "<SCROLL>sale di molto!"
	prompt

UnknownText_0x1c0ce0::
	text ""
	line "sale!"
	prompt

UnknownText_0x1c0ceb::
	text "@"
	text_from_ram wStringBuffer2
	text " di"
	line "<TARGET>@@"

UnknownText_0x1c0cf5::
	interpret_data
	text "<SCROLL>cala di molto!"
	prompt

UnknownText_0x1c0d06::
	text " cala!"
	prompt

UnknownText_0x1c0d0e::
	text "<USER>@@"

UnknownText_0x1c0d12::
	text_start
	line "crea un mulinello!"
	prompt

UnknownText_0x1c0d26::
	text_start
	line "assorbe la luce!"
	prompt

UnknownText_0x1c0d3a::
	text_start
	line "abbassa la testa!"
	prompt

UnknownText_0x1c0d4e::
	text_start
	line "sta brillando!"
	prompt

UnknownText_0x1c0d5c::
	text_start
	line "vola in alto!"
	prompt

UnknownText_0x1c0d6c::
	text_start
	line "scava una fossa!"
	prompt

_ActorNameText::
	text "<USER>@@"

_UsedMoveText::
	text_start
	line "usa @@"

_UsedInsteadText::
	text "invece,"
	cont "@@"

_MoveNameText::
	text_from_ram wStringBuffer2
	text "!"
	done

UnknownText_0x1c0db0::
	text "Oh?"

	para "@@"

UnknownText_0x1c0db8::
	text_start
	done

UnknownText_0x1c0dba::
	text_from_ram wStringBuffer1
	text " è nato"
	line "dall'uovo!@"
	sound_caught_mon
	text_waitbutton
	db "@@"

UnknownText_0x1c0dd8::
	text "Dare un soprannome"
	line "a @"
	text_from_ram wStringBuffer1
	text "?"
	done

UnknownText_0x1c0df3::
	text "È @"
	text_from_ram wBreedMon2Nick
	text_start
	line "che hai lasciato"
	cont "alla signora."
	done

UnknownText_0x1c0e24::
	text "È @"
	text_from_ram wBreedMon1
	text_start
	line "che hai lasciato"
	cont "al signore."
	done

UnknownText_0x1c0e54::
	text "It's brimming with"
	line "energy."
	prompt

UnknownText_0x1c0e6f::
	text "Non è interessato"
	line "da @"
	text_from_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c0e8d::
	text "Pare gli importi"
	line "di @"
	text_from_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c0eac::
	text "È amichevole con"
	line "@"
	text_from_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c0ec6::
	text "Pare interessato"
	line "da @"
	text_from_ram wStringBuffer1
	text "."
	prompt

_EmptyMailboxText::
	text "There's no MAIL"
	line "here."
	prompt

ClearedMailPutAwayText::
	text "The cleared MAIL"
	line "was put away."
	prompt

MailPackFullText::
	text "La borsa è piena."
	prompt

MailMessageLostText::
	text "The MAIL's message"
	line "will be lost. OK?"
	done

MailAlreadyHoldingItemText::
	text "It's already hold-"
	line "ing an item."
	prompt

MailEggText::
	text "An EGG can't hold"
	line "any MAIL."
	prompt

MailMovedFromBoxText::
	text "The MAIL was moved"
	line "from the MAILBOX."
	prompt

Text_WasSentToBillsPC::
	text_from_ram wStringBuffer1
	text " inviato"
	line "al PC di Bill."
	prompt

UnknownText_0x1c1006::
	text "You gotta have"
	line "#MON to call!"
	prompt

UnknownText_0x1c1024::
	text "Cosa fai?"
	done

UnknownText_0x1c102b::
	text "There is a #MON"
	line "holding MAIL."

	para "Please remove the"
	line "MAIL."
	prompt

UnknownText_0x1c10c0::
	text "Preso! @"
	text_from_ram wStringBuffer1
	text "è stato catturato!"
	prompt

UnknownText_0x1c10cf::
	text "Cambi #mon?"
	done

UnknownText_0x1c10dd::
	text "Hai già catturato"
	line "un @"
	text_from_ram wStringBuffer1
	text "."
	prompt

ContestJudging_FirstPlaceText::
	text "This Bug-Catching"
	line "Contest winner is@"
	interpret_data
	text "…"

	para "@"
	text_from_ram wBugContestWinnerName
	text ","
	line "who caught a"
	cont "@"
	text_from_ram wStringBuffer1
	text "!@@"

ContestJudging_FirstPlaceScoreText::
	text_start

	para "The winning score"
	line "was @"
	deciram wBugContestFirstPlaceScore, 2, 3
	text " points!"
	prompt

ContestJudging_SecondPlaceText::
	text "Placing second was"
	line "@"
	text_from_ram wBugContestWinnerName
	text ","

	para "who caught a"
	line "@"
	text_from_ram wStringBuffer1
	text "!@@"

ContestJudging_SecondPlaceScoreText::
	text_start

	para "The score was"
	line "@"
	deciram wBugContestSecondPlaceScore, 2, 3
	text " points!"
	prompt

ContestJudging_ThirdPlaceText::
	text "Placing third was"
	line "@"
	text_from_ram wBugContestWinnerName
	text ","

	para "who caught a"
	line "@"
	text_from_ram wStringBuffer1
	text "!@@"

ContestJudging_ThirdPlaceScoreText::
	text_start

	para "The score was"
	line "@"
	deciram wBugContestThirdPlaceScore, 2, 3
	text " points!"
	prompt

UnknownText_0x1c1203::
	text "Let me measure"
	line "that MAGIKARP."

	para "…Hm, it measures"
	line "@"
	text_from_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c123a::
	text "CURRENT RECORD"

	para "@"
	text_from_ram wStringBuffer1
	text " caught by"
	line "@"
	text_from_ram wMagikarpRecordHoldersName
	text_waitbutton
	db "@@"

UnknownText_0x1c1261::
	text "Congratulations!"

	para "We have a match"
	line "with the ID number"

	para "of @"
	text_from_ram wStringBuffer1
	text " in"
	line "your party."
	prompt

UnknownText_0x1c12ae::
	text "Congratulations!"

	para "We have a match"
	line "with the ID number"

	para "of @"
	text_from_ram wStringBuffer1
	text " in"
	line "your PC BOX."
	prompt

UnknownText_0x1c12fc::
	text "Give a nickname to"
	line "the @"
	text_from_ram wStringBuffer1
	text " you"
	cont "received?"
	done

UnknownText_0x1c1328::
	text "Bzzzzt! You must"
	line "have a #MON to"
	cont "use this!"
	prompt

UnknownText_0x1c1353::
	text "<PLAYER> avvia"
	line "il PC."
	prompt

UnknownText_0x1c1368::
	text "Cosa vuoi fare?"
	done

_PlayersPCHowManyWithdrawText::
	text "Quanti ne vuoi"
	line "ritirare?"
	done

_PlayersPCWithdrewItemsText::
	text "Ritiri @"
	deciram wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_from_ram wStringBuffer2
	text "."
	prompt

_PlayersPCNoRoomWithdrawText::
	text "There's no room"
	line "for more items."
	prompt

UnknownText_0x1c13df::
	text "No items here!"
	prompt

_PlayersPCHowManyDepositText::
	text "How many do you"
	line "want to deposit?"
	done

_PlayersPCDepositItemsText::
	text "Depositi @"
	deciram wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_from_ram wStringBuffer2
	text "(S)."
	prompt

_PlayersPCNoRoomDepositText::
	text "There's no room to"
	line "store items."
	prompt

UnknownText_0x1c144d::
	text "<PLAYER> avvia"
	line "il PC."
	prompt

UnknownText_0x1c1462::
	text "A quale PC"
	line "vuoi accedere?"
	done

UnknownText_0x1c1474::
	text "Accesso al"
	line "PC di Bill."

	para "Aperto il Sistema"
	line "Memoria #mon."
	prompt

UnknownText_0x1c14a4::
	text "Accesso al tuo PC."

	para "Aperto il Sistema"
	line "Memoria Strumenti."
	prompt

UnknownText_0x1c14d2::
	text "PROF.OAK's PC"
	line "accessed."

	para "#DEX Rating"
	line "System opened."
	prompt

UnknownText_0x1c1505::
	text "…"
	line "Link closed…"
	done

_OakPCText1::
	text "Want to get your"
	line "#DEX rated?"
	done

_OakPCText2::
	text "Current #DEX"
	line "completion level:"
	prompt

_OakPCText3::
	text_from_ram wStringBuffer3
	text " #MON seen"
	line "@"
	text_from_ram wStringBuffer4
	text " #MON owned"

	para "PROF.OAK's"
	line "Rating:"
	done

_OakRating01::
	text "Look for #MON"
	line "in grassy areas!"
	done

_OakRating02::
	text "Good. I see you"
	line "understand how to"
	cont "use # BALLS."
	done

_OakRating03::
	text "You're getting"
	line "good at this."

	para "But you have a"
	line "long way to go."
	done

_OakRating04::
	text "You need to fill"
	line "up the #DEX."

	para "Catch different"
	line "kinds of #MON!"
	done

_OakRating05::
	text "You're trying--I"
	line "can see that."

	para "Your #DEX is"
	line "coming together."
	done

_OakRating06::
	text "To evolve, some"
	line "#MON grow,"

	para "others use the"
	line "effects of STONES."
	done

_OakRating07::
	text "Have you gotten a"
	line "fishing ROD? You"

	para "can catch #MON"
	line "by fishing."
	done

_OakRating08::
	text "Excellent! You"
	line "seem to like col-"
	cont "lecting things!"
	done

_OakRating09::
	text "Some #MON only"
	line "appear during"

	para "certain times of"
	line "the day."
	done

_OakRating10::
	text "Your #DEX is"
	line "filling up. Keep"
	cont "up the good work!"
	done

_OakRating11::
	text "I'm impressed."
	line "You're evolving"

	para "#MON, not just"
	line "catching them."
	done

_OakRating12::
	text "Have you met KURT?"
	line "His custom BALLS"
	cont "should help."
	done

_OakRating13::
	text "Wow. You've found"
	line "more #MON than"

	para "the last #DEX"
	line "research project."
	done

_OakRating14::
	text "Are you trading"
	line "your #MON?"

	para "It's tough to do"
	line "this alone!"
	done

_OakRating15::
	text "Wow! You've hit"
	line "200! Your #DEX"
	cont "is looking great!"
	done

_OakRating16::
	text "You've found so"
	line "many #MON!"

	para "You've really"
	line "helped my studies!"
	done

_OakRating17::
	text "Magnificent! You"
	line "could become a"

	para "#MON professor"
	line "right now!"
	done

_OakRating18::
	text "Your #DEX is"
	line "amazing! You're"

	para "ready to turn"
	line "professional!"
	done

_OakRating19::
	text "Whoa! A perfect"
	line "#DEX! I've"

	para "dreamt about this!"
	line "Congratulations!"
	done

_OakPCText4::
	text "The link to PROF."
	line "OAK's PC closed."
	done

UnknownText_0x1c1a6c::
	text "Would you like to"
	line "end the Contest?"
	done

UnknownText_0x1c1a90::
	text "Toss out how many"
	line "@"
	text_from_ram wStringBuffer2
	text "(S)?"
	done

UnknownText_0x1c1aad::
	text "Throw away @"
	deciram wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_from_ram wStringBuffer2
	text "(S)?"
	done

UnknownText_0x1c1aca::
	text "Discarded"
	line "@"
	text_from_ram wStringBuffer1
	text "(S)."
	prompt

UnknownText_0x1c1adf::
	text "That's too impor-"
	line "tant to toss out!"
	prompt

UnknownText_0x1c1b03::
	text "Oak: <PLAYER>!"
	line "C'è tempo e luogo"
	cont "per ogni cosa, ma"
	cont "non ora!"
	done

UnknownText_0x1c1b2c::
	text "Prendi"
	line "@"
	text_from_ram wStringBuffer1
	text_start
	cont "da @"
	text_from_ram wMonOrItemNameBuffer
	text " e"

	para "gli dai"
	line "@"
	text_from_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c1b57::
	text "@"
	text_from_ram wMonOrItemNameBuffer
	text " tiene"
	line "@"
	text_from_ram wStringBuffer2
	text " ora."
	prompt

UnknownText_0x1c1b6f::
	text "Please remove the"
	line "MAIL first."
	prompt

UnknownText_0x1c1b8e::
	text_from_ram wMonOrItemNameBuffer
	text " isn't"
	line "holding anything."
	prompt

UnknownText_0x1c1baa::
	text "Item storage space"
	line "full."
	prompt

UnknownText_0x1c1bc4::
	text "Togli @"
	text_from_ram wStringBuffer1
	text_start
	line "a @"
	text_from_ram wMonOrItemNameBuffer
	text "."
	prompt

UnknownText_0x1c1bdc::
	text_from_ram wMonOrItemNameBuffer
	text " sta"
	line "già tenendo"

	para "@"
	text_from_ram wStringBuffer1
	text "."
	line "Vuoi sostituire?"
	done

UnknownText_0x1c1c09::
	text "This item can't be"
	line "held."
	prompt

UnknownText_0x1c1c22::
	text "The MAIL will lose"
	line "its message. OK?"
	done

UnknownText_0x1c1c47::
	text "MAIL detached from"
	line "@"
	text_from_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c1c62::
	text "There's no space"
	line "for removing MAIL."
	prompt

UnknownText_0x1c1c86::
	text "Send the removed"
	line "MAIL to your PC?"
	done

UnknownText_0x1c1ca9::
	text "Your PC's MAILBOX"
	line "is full."
	prompt

UnknownText_0x1c1cc4::
	text "The MAIL was sent"
	line "to your PC."
	prompt

UnknownText_0x1c1ce3::
	text "PS insufficienti!"
	prompt

UnknownText_0x1c1cf3::
	text "Puoi assegnare uno"
	line "strumento base al"
	cont "tasto Select."
	done

_OakText1::
	text "Hello! Sorry to"
	line "keep you waiting!"

	para "Welcome to the"
	line "world of #MON!"

	para "My name is OAK."

	para "People call me the"
	line "#MON PROF."
	prompt

_OakText2::
	text "This world is in-"
	line "habited by crea-"
	cont "tures that we call"
	cont "#MON.@@"

_OakText3::
	text_waitbutton
	db "@@"

_OakText4::
	text "People and #MON"
	line "live together by"

	para "supporting each"
	line "other."

	para "Some people play"
	line "with #MON, some"
	cont "battle with them."
	prompt

_OakText5::
	text "But we don't know"
	line "everything about"
	cont "#MON yet."

	para "There are still"
	line "many mysteries to"
	cont "solve."

	para "That's why I study"
	line "#MON every day."
	prompt
