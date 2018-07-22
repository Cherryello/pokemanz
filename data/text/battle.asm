BattleText:: ; used only for BANK(BattleText)

BattleText_PlayerPickedUpPayDayMoney: ; 0x80730
	text "<PLAYER> trova"
	line "¥@"
	deciram wPayDayMoney, 3, 6
	text "!"
	prompt
; 0x80746

WildPokemonAppearedText: ; 0x80746
	text "Appare @"
	text_from_ram wEnemyMonNick
	text_start
	line "selvatico!"
	prompt
; 0x8075c

HookedPokemonAttackedText: ; 0x8075c
	text "@"
	text_from_ram wEnemyMonNick
	text_start
	cont "pescato"
	cont "attacca!"
	prompt
; 0x80778

PokemonFellFromTreeText: ; 0x80778
	text_from_ram wEnemyMonNick
	text " cade"
	line "dall'albero!"
	prompt
; 0x80793

WildCelebiAppearedText: ; 0x80793
	text "Appare @"
	text_from_ram wEnemyMonNick
	text_start
	line "!"
	prompt
; 0x807a9

WantsToBattleText:: ; 0x807a9
	text "Parte la sfida di"
	line "<ENEMY>!"
	prompt
; 0x807bd

BattleText_WildFled: ; 0x807bd
	text "@"
	text_from_ram wEnemyMonNick
	text_start
	line "selvatico fugge!"
	prompt
; 0x807cf

BattleText_EnemyFled: ; 0x807cf
	text "@"
	text_from_ram wEnemyMonNick
	text_start
	line "selvatico fugge!"
	prompt
; 0x807e2

HurtByPoisonText: ; 0x807e2
	text "<USER> soffre"
	line "per il veleno!"
	prompt
; 0x807f8

HurtByBurnText: ; 0x807f8
	text "<USER> soffre"
	line "per la scottatura!"
	prompt
; 0x8080e

LeechSeedSapsText: ; 0x8080e
	text "Parassiseme sot-"
	line "trae energia da"
	cont "<USER>!"
	prompt
; 0x80822

HasANightmareText: ; 0x80822
	text "<USER>"
	line "ha un incubo!"
	prompt
; 0x80836

HurtByCurseText: ; 0x80836
	text "<USER> è colpito"
	line "dalla maledizione!"
	prompt
; 0x8084d

SandstormHitsText: ; 0x8084d
	text "La tempesta di"
	line "sabbia infligge"
	cont "danni a"
	cont "<USER>!"
	prompt
; 0x80864

PerishCountText: ; 0x80864
	text "A <USER>"
	line "restano @"
	deciram wd265, 1, 1
	text " turni!"
	prompt
; 0x80880

BattleText_TargetRecoveredWithItem: ; 0x80880
	text "<TARGET>"
	line "recupera PS con"
	cont "@"
	text_from_ram wStringBuffer1
	text "."
	prompt
; 0x80899

BattleText_UserRecoveredPPUsing: ; 0x80899
	text "<USER>"
	line "recupera PP con"
	cont "@"
	text_from_ram wStringBuffer1
	text "."
	prompt
; 0x808b6

BattleText_TargetWasHitByFutureSight: ; 0x808b6
	text "<TARGET>"
	line "è stato colpito da"
	cont "Divinazione!"
	prompt
; 0x808d2

BattleText_SafeguardFaded: ; 0x808d2
	text "La Salvaguardia di"
	line "<USER> cede!"
	prompt
; 0x808e7

BattleText_MonsLightScreenFell: ; 0x808e7
	text_from_ram wStringBuffer1
	text " lo Schermoluce"
	line "del #mon cede!"
	prompt
; 0x80905

BattleText_MonsReflectFaded: ; 0x80905
	text_from_ram wStringBuffer1
	text " il Riflesso"
	line "del #mon cede!"
	prompt
; 0x8091f

BattleText_RainContinuesToFall: ; 0x8091f
	text "Continua a"
	line "piovere."
	prompt
; 0x80938

BattleText_TheSunlightIsStrong: ; 0x80938
	text "La luce solare"
	line "è intensa."
	prompt
; 0x80951

BattleText_TheSandstormRages: ; 0x80951
	text "La tempesta di"
	line "sabbia imperversa."
	prompt
; 0x80967

BattleText_TheRainStopped: ; 0x80967
	text "Smette di piovere."
	prompt
; 0x8097a

BattleText_TheSunlightFaded: ; 0x8097a
	text "La luce solare"
	line "torna normale."
	prompt
; 0x8098f

BattleText_TheSandstormSubsided: ; 0x8098f
	text "La tempesta di"
	line "sabbia cessa."
	prompt
; 0x809a8

BattleText_EnemyMonFainted: ; 0x809a8
	text "@"
	text_from_ram wEnemyMonNick
	text " nemico"
	line "è esausto!"
	prompt
; 0x809be

GotMoneyForWinningText:
	text "<PLAYER> vince"
	line "¥@"
	deciram wBattleReward, 3, 6
	text_start
	line "!"
	prompt

BattleText_EnemyWasDefeated: ; 0x809da
	text "Hai sconfitto"
	line "<ENEMY>!"
	prompt
; 0x809eb

TiedAgainstText: ; 0x809eb
	text "Hai pareggiato con"
	line "<ENEMY>!"
	prompt
; 0x809fc

SentSomeToMomText:
	text "<PLAYER> vince"
    line "¥@"
	deciram wBattleReward, 3, 6
	text_start
	line "!"
	cont "Ne mandi un po'"
	cont "alla mamma."
	prompt

SentHalfToMomText:
	text "Ne mandi metà alla"
	line "mamma."
	prompt

SentAllToMomText:
	text "Mandi tutto alla"
	line "mamma."
	prompt

BattleText_0x80a4f: ; 0x80a4f
	text "<RIVAL>: Eh?"
	line "Avrei dovuto sce-"
	cont "gliere il tuo"
	cont "#mon!"
	prompt
; 0x80a75

BattleText_MonFainted: ; 0x80a75
	text_from_ram wBattleMonNick
	text_start
	line "è esausto!"
	prompt
; 0x80a83

BattleText_UseNextMon: ; 0x80a83
	text "Vuoi usare un"
	line "altro #mon?"
	done
; 0x80a93

BattleText_0x80a93: ; 0x80a93
	text "<RIVAL>: Sì!"
	line "Credo di aver"
	cont "scelto un buon"
	cont "#mon!"
	prompt
; 0x80ab9

LostAgainstText: ; 0x80ab9
	text "Hai perso contro"
	line "<ENEMY>!"
	prompt
; 0x80aca

BattleText_EnemyIsAboutToUseWillPlayerChangeMon: ; 0x80aca
	text "<ENEMY>"
	line "vuole usare"
	cont "@"
	text_from_ram wEnemyMonNick
	text "."

	para "Vuoi cambiare"
	line "#mon?"
	done
; 0x80af8

BattleText_EnemySentOut: ; 0x80af8
	text "<ENEMY>"
	line "manda in campo"
	cont "@"
	text_from_ram wEnemyMonNick
	text "!"
	done
; 0x80b0b

BattleText_TheresNoWillToBattle: ; 0x80b0b
	text "È troppo stanco"
	line "per combattere!"
	prompt
; 0x80b26

BattleText_AnEGGCantBattle: ; 0x80b26
	text "Che vuoi fare? Un"
	line "uovo non combatte!"
	prompt
; 0x80b3b

BattleText_CantEscape2: ; 0x80b3b
	text "Non si scappa!"
	prompt
; 0x80b49

BattleText_TheresNoEscapeFromTrainerBattle: ; 0x80b49
	text "No! Non puoi"
	line "scappare da una"
	cont "lotta contro un"
	cont "allenatore!"
	prompt

BattleText_GotAwaySafely: ; 0x80b77
	text "Scampato pericolo!"
	prompt

BattleText_UserFledUsingAStringBuffer1: ; 0x80b89
	text "<USER>"
	line "scappa usando una"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80ba0

BattleText_CantEscape: ; 0x80ba0
	text "Non si scappa!"
	prompt
; 0x80bae

BattleText_UserHurtBySpikes: ; 0x80bae
	text "<USER> è"
	line "ferito dalle"
	cont "punte!"
	prompt
; 0x80bc2

RecoveredUsingText: ; 0x80bc2
	text "<TARGET>"
	line "recupera PS usando"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80bde

BattleText_UsersStringBuffer1Activated: ; 0x80bde
	text "@"
	text_from_ram wStringBuffer1
	text_start
    text "di <USER>"
	cont "si attiva!"
	prompt
; 0x80bf3

BattleText_ItemsCantBeUsedHere: ; 0x80bf3
	text "Non puoi usare"
	line "strumenti qui."
	prompt
; 0x80c0d

BattleText_MonIsAlreadyOut: ; 0x80c0d
	text_from_ram wBattleMonNick
	text_start
	line "è già in campo."
	prompt
; 0x80c22

BattleText_MonCantBeRecalled: ; 0x80c22
	text_from_ram wBattleMonNick
	text_start
	line "non può essere"
	cont "sostituito!"
	prompt
; 0x80c39

BattleText_TheresNoPPLeftForThisMove: ; 0x80c39
	text "Non hai più PP!"
	prompt
; 0x80c5b

BattleText_TheMoveIsDisabled: ; 0x80c5b
	text "La mossa è stata"
	line "bloccata!"
	prompt
; 0x80c72

BattleText_MonHasNoMovesLeft: ; 0x80c72
	text_from_ram wBattleMonNick
	text_start
	line "non può attaccare!"
	done
; 0x80c8a

BattleText_TargetsEncoreEnded: ; 0x80c8a
	text "L'effetto di"
	line "Ripeti finisce su"
	cont "<TARGET>!"
	prompt
; 0x80c9c

BattleText_StringBuffer1GrewToLevel: ; 0x80c9c
	text_from_ram wStringBuffer1
	text " sale al"
	line "livello @"
	deciram wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79
	db "@@"
; 0x80cb9

BattleText_WildMonIsEating: ; 0x80cba
	text "Wild @"
	text_from_ram wEnemyMonNick
	text_start
	line "is eating!"
	prompt
; 0x80cd1

BattleText_WildMonIsAngry: ; 0x80cd1
	text "Wild @"
	text_from_ram wEnemyMonNick
	text_start
	line "is angry!"
	prompt
; 0x80ce7

FastAsleepText: ; 0x80ce7
	text "<USER>"
	line "dorme."
	prompt
; 0x80cfa

WokeUpText: ; 0x80cfa
	text "<USER>"
	line "si sveglia!"
	prompt
; 0x80d06

FrozenSolidText: ; 0x80d06
	text "<USER>"
	line "è congelato!"
	prompt
; 0x80d1a

FlinchedText: ; 0x80d1a
	text "<USER>"
	line "tentenna!"
	prompt
; 0x80d27

MustRechargeText: ; 0x80d27
	text "<USER>"
	line "deve ricaricarsi!"
	prompt
; 0x80d39

DisabledNoMoreText: ; 0x80d39
	text "La mossa di"
	line "<USER> non è"
	line "più bloccata!"
	prompt
; 0x80d4f

IsConfusedText: ; 0x80d4f
	text "<USER>"
	line "è confuso!"
	prompt
; 0x80d5f

HurtItselfText: ; 0x80d5f
	text "È così confuso da"
	line "colpirsi da solo!"
	prompt
; 0x80d81

ConfusedNoMoreText: ; 0x80d81
	text "<USER> non è"
	line "più confuso!"
	prompt
; 0x80d97

BecameConfusedText: ; 0x80d97
	text "<TARGET>"
	line "è confuso!"
	prompt
; ItemHealedConfusion

BattleText_ItemHealedConfusion: ; ItemHealedConfusion
	text "@"
	text_from_ram wStringBuffer1
	text " libera"
	line "<TARGET>"
	cont "dalla confusione."
	prompt
; 0x80dcc

AlreadyConfusedText: ; 0x80dcc
	text "<TARGET>"
	line "è già confuso!"
	prompt
; 0x80de2

BattleText_UsersHurtByStringBuffer1: ; 0x80de2
	text "<USER> è"
	line "ferito da"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80df5

BattleText_UserWasReleasedFromStringBuffer1: ; 0x80df5
	text "<USER>"
	line "si è liberato da"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80e11

UsedBindText: ; 0x80e11
	text "<USER>"
	line "usa Legatutto su"
	cont "<TARGET>!"
	prompt
; 0x80e24

WhirlpoolTrapText: ; 0x80e24
	text "<TARGET>"
	line "è intrappolato!"
	prompt
; 0x80e34

FireSpinTrapText: ; 0x80e34
	text "<TARGET>"
	line "è intrappolato!"
	prompt
; 0x80e44

WrappedByText: ; 0x80e44
	text "<TARGET>"
	line "è stritolato da"
	cont "<USER>!"
	prompt
; 0x80e59

ClampedByText: ; 0x80e59
	text "<TARGET>"
	line "è stato preso da"
	cont "<USER>!"
	prompt
; 0x80e6e

StoringEnergyText: ; 0x80e6e
	text "<USER>"
	line "accumula energia!"
	prompt
; 0x80e84

UnleashedEnergyText: ; 0x80e84
	text "<USER>"
	line "libera l'energia!"
	prompt
; 0x80e99

HungOnText: ; 0x80e99
	text "<TARGET>"
	line "hung on with"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x80eb0

EnduredText: ; 0x80eb0
	text "<TARGET>"
	line "resiste al colpo!"
	prompt
; 0x80ec4

InLoveWithText: ; 0x80ec4
	text "<USER>"
	line "si innamora di"
	cont "<TARGET>!"
	prompt
; 0x80eda

InfatuationText: ; 0x80eda
	text "L'innamoramento"
	line "impedisce a"
	cont "<USER> di"
	cont "attaccare!"
	prompt
; 0x80f02

DisabledMoveText: ; 0x80f02
	text "@"
	text_from_ram wStringBuffer1
	text " di"
	line "<USER> è"
	cont "bloccata!"
	prompt
; 0x80f19

LoafingAroundText: ; 0x80f19
	text_from_ram wBattleMonNick
	text " sta"
	line "poltrendo."
	prompt
; 0x80f31

BeganToNapText: ; 0x80f31
	text_from_ram wBattleMonNick
	text " schiaccia"
	line "un pisolino."
	prompt
; 0x80f44

WontObeyText: ; 0x80f44
	text_from_ram wBattleMonNick
	text " non"
	line "obbedisce!"
	prompt
; 0x80f54

TurnedAwayText: ; 0x80f54
	text_from_ram wBattleMonNick
	text " si gira"
	line "di lato!"
	prompt
; 0x80f66

IgnoredOrdersText: ; 0x80f66
	text_from_ram wBattleMonNick
	text " ignora"
	line "gli ordini!"
	prompt
; 0x80f7b

IgnoredSleepingText: ; 0x80f7b
	text_from_ram wBattleMonNick
	text " ignora"
	line "gli ordini…"
	cont "e si addormenta!"
	prompt
; 0x80f99

NoPPLeftText: ; 0x80f99
	text "Non hai più PP!"
	prompt
; 0x80fba

HasNoPPLeftText: ; 0x80fba
	text "<USER>"
	line "non ha PP suffi-"
	cont "cienti per"
	cont "@"
	text_from_ram wStringBuffer2
	text "!"
	prompt
; 0x80fd7

WentToSleepText: ; 0x80fd7
	text "<USER> s'è"
	line "addormentato!"
	done
; 0x80fe9

RestedText: ; 0x80fe9
	text "<USER> si"
	line "mette a dormire"
	cont "e si riprende."
	done
; 0x8100c

RegainedHealthText: ; 0x8100c
	text "<USER>"
	line "si è ripreso!"
	prompt
; 0x81020

AttackMissedText: ; 0x81020
AttackMissed2Text: ; 0x81033
	text "<USER>"
	line "fallisce!"
	prompt
; 0x81033
; 0x81046

CrashedText: ; 0x81046
	text "<USER>"
	line "fallisce e si"
	cont "schianta al suolo!"
	prompt
; 0x81061

UnaffectedText: ; 0x81061
	text "<TARGET>"
	line "ne è immune!"
	prompt
; 0x81071

CriticalHitText: ; 0x81086
	text "Brutto colpo!"
	prompt
; 0x81097

OneHitKOText: ; 0x81097
	text "È KO in un colpo!"
	prompt
; 0x810aa

SuperEffectiveText: ; 0x810aa
	text "È superefficace!"
	prompt
; 0x810c1

NotVeryEffectiveText: ; 0x810c1
	text "Non è molto"
	line "efficace…"
	prompt
; 0x810da

TookDownWithItText: ; 0x810da
	text "<TARGET>"
	line "porta con sè"
	cont "<USER>!"
	prompt
; 0x810f3

RageBuildingText: ; 0x810f3
	text "L'ira di"
	line "<USER> cresce!"
	prompt
; 0x81109

GotAnEncoreText: ; 0x81109
	text "<TARGET>"
	line "è colpito da"
	cont "Ripeti!"
	prompt
; 0x8111b

SharedPainText: ; 0x8111b
	text "I #mon dividono"
	line "i propri PS in"
	cont "parti uguali!"
	prompt
; 0x81136

TookAimText: ; 0x81136
	text "<USER>"
	line "prende la mira!"
	prompt
; 0x81143

SketchedText: ; 0x81143
	text "<USER>"
	line "copia"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x81156

DestinyBondEffectText: ; 0x81156
	text "<USER> sta"
	line "provando a"
	cont "portare con sè"
	cont "il suo nemico!"
	prompt
; 0x8117f

SpiteEffectText: ; 0x8117f
	text "@"
	text_from_ram wStringBuffer1
	text " di"
	cont "<TARGET>"
	cont "scende di @"
	deciram wd265, 1, 1
	text "!"
	prompt
; 0x811a0

BellChimedText: ; 0x811a0
	text "Ha suonato una"
	line "campana!"
	cont ""
	prompt
; 0x811b1

FellAsleepText: ; 0x811b1
	text "<TARGET>"
	line "s'è addormentato!"
	prompt
; 0x811c1

AlreadyAsleepText: ; 0x811c1
	text "<TARGET>"
	line "sta già dormendo!"
	prompt
; 0x811d5

WasPoisonedText: ; 0x811d5
	text "<TARGET>"
	line "è stato"
	cont "avvelenato!"
	prompt
; 0x811e6

BadlyPoisonedText: ; 0x811e6
	text "<TARGET>"
	line "è stato"
	cont "intossicato!"
	prompt
; 0x811fa

AlreadyPoisonedText: ; 0x811fa
	text "<TARGET>"
	line "è già avvelenato!"
	prompt
; 0x81210

SuckedHealthText: ; 0x81210
	text "Assorbe salute da"
	line "<TARGET>!"
	prompt
; 0x81227

DreamEatenText: ; 0x81227
	text "Il sogno di"
	line "<TARGET>"
	line "è stato mangiato!"
	prompt
; 0x8123c

WasBurnedText: ; 0x8123c
	text "<TARGET>"
	line "è stato scottato!"
	prompt
; 0x8124b

DefrostedOpponentText: ; 0x8124b
	text "<TARGET>"
	line "si scongela!"
	prompt
; 0x8125d

WasFrozenText: ; 0x8125d
	text "<TARGET>"
	line "si congela!"
	prompt
; 0x81272

WontRiseAnymoreText: ; 0x81272
	text "@"
	text_from_ram wStringBuffer2
	text " di"
	line "<USER> non può"
	cont "più aumentare!"
	prompt
; 0x8128f

WontDropAnymoreText: ; 0x8128f
	text "@"
	text_from_ram wStringBuffer2
	text " di"
	line "<USER> non può"
	cont "più diminuire!"
	prompt
; 0x812ac

FledFromBattleText:: ; 0x812ac
	text "<USER>"
	line "scappa!"
	prompt
; 0x812c1

FledInFearText: ; 0x812c1
	text "<TARGET>"
	line "scappa per la"
	cont "paura!"
	prompt
; 0x812d2

BlownAwayText: ; 0x812d2
	text "<TARGET>"
	line "è stato tirato"
	cont "via!"
	prompt
; 0x812e5

PlayerHitTimesText: ; 0x812e5
	text "Attacca @"
	deciram wPlayerDamageTaken, 1, 1
	text " volte!"
	prompt
; 0x812f8

EnemyHitTimesText: ; 0x812f8
	text "Attacca @"
	deciram wEnemyDamageTaken, 1, 1
	text " volte!"
	prompt
; 0x8130b

MistText: ; 0x8130b
	text "<USER> è"
	line "avvolto nella"
	cont "nebbia!"
	prompt
; 0x81321

ProtectedByMistText: ; 0x81321
	text "<TARGET>"
	line "è protetto dalla"
	cont "nebbia."
	prompt
; 0x81338

GettingPumpedText: ; 0x81338
	interpret_data
	text "<USER> si"
	line "concentra!"
	prompt
; 0x8134d

RecoilText: ; 0x8134d
	text "<USER>"
	line "subisce il"
	cont "contraccolpo!"
	prompt
; 0x81362

MadeSubstituteText: ; 0x81362
	text "<USER>"
	line "crea un sostituto!"
	prompt
; 0x81378

HasSubstituteText: ; 0x81378
	text "<USER>"
	line "usa il sostituto!"
	prompt
; 0x8138d

TooWeakSubText: ; 0x8138d
	text "Troppa poca salute"
	line "per creare un"
	cont "sostituto!"
	prompt
; 0x813ad

SubTookDamageText: ; 0x813ad
	text "Il sostituto ha"
	line "preso i danni al"
	cont "posto di"
	cont "<TARGET>!"
	prompt
; 0x813d0

SubFadedText: ; 0x813d0
	text "Il sostituto di"
	line "<TARGET>"
	cont "svanisce!"
	prompt
; 0x813e6

LearnedMoveText: ; 0x813e6
	text "<USER>"
	line "impara"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x813f8

WasSeededText: ; 0x813f8
	text "<TARGET>"
	line "è pieno di semi!"
	prompt
; 0x81407

EvadedText: ; 0x81407
	text "<TARGET>"
	line "evita l'attacco!"
	prompt
; 0x8141d

WasDisabledText: ; 0x8141d
	text "@"
	text_from_ram wStringBuffer1
	text " di"
	line "<TARGET>"
	cont "viene bloccata!"
	prompt
; 0x81435

CoinsScatteredText: ; 0x81435
	text "Ci sono monete"
	line "sparse ovunque!"
	prompt
; 0x81452

TransformedTypeText: ; 0x81452
	text "<USER> si"
	line "trasforma nel"
	cont "tipo @"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x81476

EliminatedStatsText: ; 0x81476
	text "Tutti i cambiamen-"
	line "ti di statistica"
	cont "sono stati annul-"
	cont "lati!"
	prompt
; 0x81499

TransformedText: ; 0x81499
	text "<USER> si"
	line "trasforma in"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x814b4

LightScreenEffectText: ; 0x814b4
	text "La Dif. Sp. della"
	line "squadra aumenta!"
	prompt
; 0x814c7

ReflectEffectText: ; 0x814c7
	text "La Difesa della"
	line "squadra aumenta!"
	prompt
; 0x814d9

NothingHappenedText: ; 0x814d9
	text "Ma nulla accadde."
	prompt
; 0x814f0

ButItFailedText: ; 0x814f0
	text "Ma fallisce!"
	prompt
; 0x81500

ItFailedText: ; 0x81500
	text "Fallisce!"
	prompt
; 0x8150c

DidntAffect1Text: ; 0x8150c
DidntAffect2Text: ; 0x81520
DoesntAffectText: ; 0x81071
	text "Non ha effetto su"
	line "<TARGET>!"
	prompt
; 0x81520
; 0x81534
; 0x81086

HPIsFullText: ; 0x81534
	text "<USER>"
	line "recupera tutti"
	cont "i PS!"
	prompt
; 0x81544

DraggedOutText: ; 0x81544
	text "<USER> entra"
	line "in campo!"
	prompt
; 0x81558

ParalyzedText: ; 0x81558
	text "<TARGET>"
	line "è paralizzato!"
	cont "Potrebbe non"
	cont "riuscire ad"
	cont "attaccare!"
	prompt
; 0x8157d

FullyParalyzedText: ; 0x8157d
	text "<USER> non"
	line "può muoversi!"
	prompt
; 0x81592

AlreadyParalyzedText: ; 0x81592
	text "<TARGET>"
	line "è già paralizzato!"
	prompt
; 0x815a9

ProtectedByText: ; 0x815a9
	text "<TARGET>"
	line "è protetto da"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt
; 0x815c1

MirrorMoveFailedText: ; 0x815c1
	text "Ma Speculmossa"
	next "fallisce!"
	prompt
; 0x815da

StoleText: ; 0x815da
	text "<USER>"
	line "ruba @"
	text_from_ram wStringBuffer1
	text_start
	cont "all'avversario!"
	prompt
; 0x815f7

CantEscapeNowText: ; 0x815f7
	text "<TARGET>"
	line "non può scappare!"
	prompt
; 0x8160b

StartedNightmareText: ; 0x8160b
	text "<TARGET>"
	line "ha iniziato ad"
	cont "avere un incubo!"
	prompt
; 0x8162b

WasDefrostedText: ; 0x8162b
	text "<USER> si"
	line "scongela!"
	prompt
; 0x8163d

PutACurseText: ; 0x8163d
	text "<USER>"
	line "dimezza i propri"
	cont "PS e infligge una"

	para "maledizione su"
	line "<TARGET>!"
	prompt
; 0x81665

ProtectedItselfText: ; 0x81665
	text "<USER> si"
	line "protegge!"
	prompt
; 0x8167a

ProtectingItselfText: ; 0x8167a
	text "<TARGET>"
	line "si protegge!"
	done
; 0x81691

SpikesText: ; 0x81691
	text "<TARGET>"
	line "è pieno di punte!"
	prompt
; 0x816b1

IdentifiedText: ; 0x816b1
	text "<USER>"
	line "identifica"
	cont "<TARGET>!"
	prompt
; 0x816c2

StartPerishText: ; 0x816c2
	text "Entrambi i #mon"
	line "perderanno in 3"
	cont "turni!"
	prompt
; 0x816e4

SandstormBrewedText: ; 0x816e4
	text "Arriva una tempe-"
	line "sta di sabbia!"
	prompt
; 0x816f9

BracedItselfText: ; 0x816f9
	text "<USER>"
	line "si rinvigorisce!"
	prompt
; 0x8170b

FellInLoveText: ; 0x8170b
	text "<TARGET>"
	line "si innamora!"
	prompt
; 0x8171c

CoveredByVeilText: ; 0x8171c
	text "<USER> è"
	line "protetto da un"
	cont "velo!"
	prompt
; 0x81733

SafeguardProtectText: ; 0x81733
	text "<TARGET>"
	line "è protetto da"
	cont "Salvaguardia!"
	prompt
; 0x81751

MagnitudeText: ; 0x81751
	text "Magnitudo @"
	deciram wd265, 1, 1
	text "!"
	prompt
; 0x81764

ReleasedByText: ; 0x81764
	text "<USER>"
	line "si libera da"
	cont "<TARGET>!"
	prompt
; 0x8177a

ShedLeechSeedText: ; 0x8177a
	text "<USER>"
	line "si libera dai"
    cont "semi!"
	prompt
; 0x8178e

BlewSpikesText: ; 0x8178e
	text "<USER>"
	line "ha tolto via le"
	cont "punte dal campo!"
	prompt
; 0x817a3

DownpourText: ; 0x817a3
	text "Inizia a piovere!"
	prompt
; 0x817b8

SunGotBrightText: ; 0x817b8
	text "La luce solare"
	line "è fortissima!"
	prompt
; 0x817d2

BellyDrumText: ; 0x817d2
	text "<USER>"
	line "dimezza i propri"
	cont "PS per massimizza-"
	cont "re il proprio"
	cont "attacco!"
	prompt
; 0x817f6

CopiedStatsText: ; 0x817f6
	text "<USER>"
	line "ha copiato le"

	para "modifiche delle"
	line "statistiche di"
	cont "<TARGET>!"
	prompt
; 0x81817

ForesawAttackText: ; 0x81817
	text "<USER>"
	line "prevede un"
	cont "attacco!"
	prompt
; 0x8182d

BeatUpAttackText: ; 0x8182d
	text_from_ram wStringBuffer1
	text " attacca!"
	done
; 0x8183b

RefusedGiftText: ; 0x8183b
	text "<TARGET>"
	line "rifiuta lo"
	cont "strumento!"
	prompt
; 0x81850

IgnoredOrders2Text: ; 0x81850
	text "<USER>"
	line "ignora gli ordini!"
	prompt
; 0x81863

BattleText_LinkErrorBattleCanceled: ; 0x81863
	text "Errore di"
	line "collegamento…"

	para "La lotta è stata"
	line "annullata…"
	prompt
; 0x8188e

BattleText_0x8188e: ; 0x8188e
	text "È scaduto il tempo"
	line "per oggi!"
	done
; 0x818ac
