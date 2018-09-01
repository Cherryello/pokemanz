BattleText:: ; used only for BANK(BattleText)

BattleText_PlayerPickedUpPayDayMoney:
	text "<PLAYER> prende"
	line "¥@"
	deciram wPayDayMoney, 3, 6
	text "!"
	prompt

WildCelebiAppearedText:
WildPokemonAppearedText:
	text "Appare @"
	text_from_ram wEnemyMonNick
	text_start
	line "selvatico!"
	prompt

HookedPokemonAttackedText:
	text "@"
	text_from_ram wEnemyMonNick
	text_start
	cont "pescato"
	cont "attacca!"
	prompt

PokemonFellFromTreeText:
	text_from_ram wEnemyMonNick
	text " cade"
	line "dall'albero!"
	prompt

WantsToBattleText::
	text "Parte la sfida di"
	line "<ENEMY>!"
	prompt

BattleText_WildFled:
	text "@"
	text_from_ram wEnemyMonNick
	text_start
	line "selvatico fugge!"
	prompt

BattleText_EnemyFled:
	text "@"
	text_from_ram wEnemyMonNick
	text_start
	line "nemico fugge!"
	prompt

HurtByPoisonText:
	text "<USER> soffre"
	line "per il veleno!"
	prompt

HurtByBurnText:
	text "<USER> soffre"
	line "per la scottatura!"
	prompt

LeechSeedSapsText:
	text "Parassiseme sot-"
	line "trae energia da"
	cont "<USER>!"
	prompt

HasANightmareText:
	text "<USER>"
	line "ha un incubo!"
	prompt

HurtByCurseText:
	text "<USER> è colpito"
	line "dalla maledizione!"
	prompt

SandstormHitsText:
	text "La tempesta di"
	line "sabbia infligge"
	cont "danni a"
	cont "<USER>!"
	prompt

PerishCountText:
	text "A <USER>"
	line "restano @"
	deciram wd265, 1, 1
	text " turni!"
	prompt

BattleText_TargetRecoveredWithItem:
	text "<TARGET>"
	line "recupera PS con"
	cont "@"
	text_from_ram wStringBuffer1
	text "."
	prompt

BattleText_UserRecoveredPPUsing:
	text "<USER>"
	line "recupera PP con"
	cont "@"
	text_from_ram wStringBuffer1
	text "."
	prompt

BattleText_TargetWasHitByFutureSight:
	text "<TARGET>"
	line "è stato colpito da"
	cont "Divinazione!"
	prompt

BattleText_SafeguardFaded:
	text "La Salvaguardia di"
	line "<USER> cede!"
	prompt

BattleText_MonsLightScreenFell:
	text_from_ram wStringBuffer1
	text " lo Schermoluce"
	line "del #mon cede!"
	prompt

BattleText_MonsReflectFaded:
	text_from_ram wStringBuffer1
	text " il Riflesso"
	line "del #mon cede!"
	prompt

BattleText_RainContinuesToFall:
	text "Continua a"
	line "piovere."
	prompt

BattleText_TheSunlightIsStrong:
	text "La luce solare"
	line "è intensa."
	prompt

BattleText_TheSandstormRages:
	text "La tempesta di"
	line "sabbia imperversa."
	prompt

BattleText_TheRainStopped:
	text "Smette di piovere."
	prompt

BattleText_TheSunlightFaded:
	text "La luce solare"
	line "torna normale."
	prompt

BattleText_TheSandstormSubsided:
	text "La tempesta di"
	line "sabbia cessa."
	prompt

BattleText_EnemyMonFainted:
	text "@"
	text_from_ram wEnemyMonNick
	text " nemico"
	line "è esausto!"
	prompt

GotMoneyForWinningText:
	text "<PLAYER> vince"
	line "¥@"
	deciram wBattleReward, 3, 6
	text_start
	line "!"
	prompt

BattleText_EnemyWasDefeated:
	text "Hai sconfitto"
	line "<ENEMY>!"
	prompt

TiedAgainstText:
	text "Hai pareggiato con"
	line "<ENEMY>!"
	prompt

SentSomeToMomText:
	text "<PLAYER> vince"
    line "¥@"
	deciram wBattleReward, 3, 6
	text_start
	line "!"
	cont "Ne manda un po'"
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

BattleText_MonFainted:
	text_from_ram wBattleMonNick
	text_start
	line "è esausto!"
	prompt

BattleText_UseNextMon:
	text "Vuoi usare un"
	line "altro #mon?"
	done

LostAgainstText:
	text "Hai perso contro"
	line "<ENEMY>!"
	prompt

BattleText_EnemyIsAboutToUseWillPlayerChangeMon:
	text "<ENEMY>"
	line "vuole usare"
	cont "@"
	text_from_ram wEnemyMonNick
	text "."

	para "Vuoi cambiare"
	line "#mon?"
	done

BattleText_PluralEnemyAreAboutToUseWillPlayerChangeMon:
	text "<ENEMY>"
	line "vogliono usare"
	cont "@"
	text_from_ram wEnemyMonNick
	text "."

	para "Vuoi cambiare"
	line "#mon?"
	done
	
BattleText_EnemySentOut:
	text "<ENEMY>"
	line "manda in campo"
	cont "@"
	text_from_ram wEnemyMonNick
	text "!"
	done

BattleText_PluralEnemySentOut:
	text "<ENEMY>"
	line "mandano in campo"
	cont "@"
	text_from_ram wEnemyMonNick
	text "!"
	done
	
BattleText_TheresNoWillToBattle:
	text "È troppo stanco"
	line "per combattere!"
	prompt

BattleText_AnEGGCantBattle:
	text "Che vuoi fare? Un"
	line "uovo non combatte!"
	prompt

BattleText_CantEscape2:
	text "Non si scappa!"
	prompt

BattleText_TheresNoEscapeFromTrainerBattle:
	text "No! Non puoi"
	line "scappare da una"
	cont "lotta contro un"
	cont "allenatore!"
	prompt

BattleText_GotAwaySafely:
	text "Scampato pericolo!"
	prompt

BattleText_UserFledUsingAStringBuffer1:
	text "<USER>"
	line "scappa usando una"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

BattleText_CantEscape:
	text "Non si scappa!"
	prompt

BattleText_UserHurtBySpikes:
	text "<USER> è"
	line "ferito dalle"
	cont "punte!"
	prompt

RecoveredUsingText:
	text "<TARGET>"
	line "recupera PS usando"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

BattleText_UsersStringBuffer1Activated:
	text "@"
	text_from_ram wStringBuffer1
	text_start
    text "di <USER>"
	cont "si attiva!"
	prompt

BattleText_ItemsCantBeUsedHere:
	text "Non puoi usare"
	line "strumenti qui."
	prompt

BattleText_MonIsAlreadyOut:
	text_from_ram wBattleMonNick
	text_start
	line "è già in campo."
	prompt

BattleText_MonCantBeRecalled:
	text_from_ram wBattleMonNick
	text_start
	line "non può essere"
	cont "sostituito!"
	prompt

NoPPLeftText:
BattleText_TheresNoPPLeftForThisMove:
	text "Non hai più PP!"
	prompt

BattleText_TheMoveIsDisabled:
	text "La mossa è stata"
	line "bloccata!"
	prompt

BattleText_MonHasNoMovesLeft:
	text_from_ram wBattleMonNick
	text_start
	line "non può attaccare!"
	done

BattleText_TargetsEncoreEnded:
	text "L'effetto di"
	line "Ripeti finisce su"
	cont "<TARGET>!"
	prompt

BattleText_StringBuffer1GrewToLevel:
	text_from_ram wStringBuffer1
	text " sale al"
	line "livello @"
	deciram wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79
	db "@@"

FastAsleepText:
	text "<USER>"
	line "dorme."
	prompt

WokeUpText:
	text "<USER>"
	line "si sveglia!"
	prompt

FrozenSolidText:
	text "<USER>"
	line "è congelato!"
	prompt

FlinchedText:
	text "<USER>"
	line "tentenna!"
	prompt

MustRechargeText:
	text "<USER>"
	line "deve ricaricarsi!"
	prompt

DisabledNoMoreText:
	text "La mossa di"
	line "<USER> non è"
	line "più bloccata!"
	prompt

IsConfusedText:
	text "<USER>"
	line "è confuso!"
	prompt

HurtItselfText:
	text "È così confuso da"
	line "colpirsi da solo!"
	prompt

ConfusedNoMoreText:
	text "<USER> non è"
	line "più confuso!"
	prompt

BecameConfusedText:
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

AlreadyConfusedText:
	text "<TARGET>"
	line "è già confuso!"
	prompt

BattleText_UsersHurtByStringBuffer1:
	text "<USER> è"
	line "ferito da"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

BattleText_UserWasReleasedFromStringBuffer1:
	text "<USER>"
	line "si è liberato da"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

UsedBindText:
	text "<USER>"
	line "usa Legatutto su"
	cont "<TARGET>!"
	prompt

FireSpinTrapText:
WhirlpoolTrapText:
	text "<TARGET>"
	line "è intrappolato!"
	prompt

WrappedByText:
	text "<TARGET>"
	line "è stritolato da"
	cont "<USER>!"
	prompt

ClampedByText:
	text "<TARGET>"
	line "è stato preso da"
	cont "<USER>!"
	prompt

StoringEnergyText:
	text "<USER>"
	line "accumula energia!"
	prompt

UnleashedEnergyText:
	text "<USER>"
	line "libera energia!"
	prompt

HungOnText:
	text "<TARGET>"
	line "resiste usando"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

EnduredText:
	text "<TARGET>"
	line "resiste al colpo!"
	prompt

InLoveWithText:
	text "<USER>"
	line "si innamora di"
	cont "<TARGET>!"
	prompt

InfatuationText:
	text "L'innamoramento"
	line "impedisce a"
	cont "<USER> di"
	cont "attaccare!"
	prompt

DisabledMoveText:
	text "@"
	text_from_ram wStringBuffer1
	text " di"
	line "<USER> è"
	cont "bloccata!"
	prompt

LoafingAroundText:
	text_from_ram wBattleMonNick
	text " sta"
	line "poltrendo."
	prompt

BeganToNapText:
	text_from_ram wBattleMonNick
	text " schiaccia"
	line "un pisolino!"
	prompt

WontObeyText:
	text_from_ram wBattleMonNick
	text " non"
	line "vuole obbedire!"
	prompt

TurnedAwayText:
	text_from_ram wBattleMonNick
	text " si gira"
	line "di lato!"
	prompt

IgnoredOrdersText:
	text_from_ram wBattleMonNick
	text " ignora"
	line "gli ordini!"
	prompt

IgnoredSleepingText:
	text_from_ram wBattleMonNick
	text " ignora"
	line "gli ordini…"
	cont "e si addormenta!"
	prompt

HasNoPPLeftText:
	text "<USER>"
	line "non ha PP suffi-"
	cont "cienti per"
	cont "@"
	text_from_ram wStringBuffer2
	text "!"
	prompt

WentToSleepText:
	text "<USER> s'è"
	line "addormentato!"
	done

RestedText:
	text "<USER> si"
	line "mette a dormire"
	cont "e si riprende."
	done

RegainedHealthText:
	text "<USER>"
	line "si è ripreso!"
	prompt

AttackMissedText:
AttackMissed2Text:
	text "<USER>"
	line "fallisce!"
	prompt

CrashedText:
	text "<USER>"
	line "fallisce e si"
	cont "schianta al suolo!"
	prompt

UnaffectedText:
	text "<TARGET>"
	line "ne è immune!"
	prompt

CriticalHitText:
	text "Brutto colpo!"
	prompt

OneHitKOText:
	text "È KO in un colpo!"
	prompt

SuperEffectiveText:
	text "È superefficace!"
	prompt

NotVeryEffectiveText:
	text "Non è molto"
	line "efficace…"
	prompt

TookDownWithItText:
	text "<TARGET>"
	line "porta via con sè"
	cont "<USER>!"
	prompt

RageBuildingText:
	text "L'ira di"
	line "<USER> cresce!"
	prompt

GotAnEncoreText:
	text "<TARGET>"
	line "è colpito da"
	cont "Ripeti!"
	prompt

SharedPainText:
	text "I #mon dividono"
	line "i propri PS in"
	cont "parti uguali!"
	prompt

TookAimText:
	text "<USER>"
	line "prende la mira!"
	prompt

SketchedText:
	text "<USER>"
	line "copia"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

DestinyBondEffectText:
	text "<USER> sta"
	line "provando a"
	cont "portare con sè"
	cont "il suo nemico!"
	prompt

SpiteEffectText:
	text "@"
	text_from_ram wStringBuffer1
	text " di"
	cont "<TARGET>"
	cont "scende di @"
	deciram wDeciramBuffer, 1, 1
	text "!"
	prompt

BellChimedText:
	text "Ha suonato una"
	line "campana!"
	cont ""
	prompt

FellAsleepText:
	text "<TARGET>"
	line "s'è addormentato!"
	prompt

AlreadyAsleepText:
	text "<TARGET>"
	line "sta già dormendo!"
	prompt

WasPoisonedText:
	text "<TARGET>"
	line "è stato"
	cont "avvelenato!"
	prompt

BadlyPoisonedText:
	text "<TARGET>"
	line "è stato"
	cont "iperavvelenato!"
	prompt

AlreadyPoisonedText:
	text "<TARGET>"
	line "è già avvelenato!"
	prompt

SuckedHealthText:
	text "Assorbe salute da"
	line "<TARGET>!"
	prompt

DreamEatenText:
	text "Il sogno di"
	line "<TARGET>"
	cont "è stato mangiato!"
	prompt

WasBurnedText:
	text "<TARGET>"
	line "è stato scottato!"
	prompt

DefrostedOpponentText:
	text "<TARGET>"
	line "si scongela!"
	prompt

WasFrozenText:
	text "<TARGET>"
	line "si congela!"
	prompt

WontRiseAnymoreText:
	text "@"
	text_from_ram wStringBuffer2
	text " di"
	line "<USER> non può"
	cont "più aumentare!"
	prompt

WontDropAnymoreText:
	text "@"
	text_from_ram wStringBuffer2
	text " di"
	line "<USER> non può"
	cont "più diminuire!"
	prompt

FledFromBattleText::
	text "<USER>"
	line "scappa!"
	prompt

FledInFearText:
	text "<TARGET>"
	line "scappa per la"
	cont "paura!"
	prompt

BlownAwayText:
	text "<TARGET>"
	line "è stato tirato"
	cont "via!"
	prompt

PlayerHitTimesText:
	text "Attacca @"
	deciram wPlayerDamageTaken, 1, 1
	text " volte!"
	prompt

EnemyHitTimesText:
	text "Attacca @"
	deciram wEnemyDamageTaken, 1, 1
	text " volte!"
	prompt

MistText:
	text "<USER> è"
	line "avvolto nella"
	cont "nebbia!"
	prompt

ProtectedByMistText:
	text "<TARGET>"
	line "è protetto dalla"
	cont "nebbia."
	prompt

GettingPumpedText:
	interpret_data
	text "<USER> si"
	line "concentra!"
	prompt

RecoilText:
	text "<USER>"
	line "subisce il"
	cont "contraccolpo!"
	prompt

MadeSubstituteText:
	text "<USER>"
	line "crea un sostituto!"
	prompt

HasSubstituteText:
	text "<USER>"
	line "ha un sostituto!"
	prompt

TooWeakSubText:
	text "Troppa poca salute"
	line "per creare un"
	cont "sostituto!"
	prompt

SubTookDamageText:
	text "Il sostituto ha"
	line "preso i danni al"
	cont "posto di"
	cont "<TARGET>!"
	prompt

SubFadedText:
	text "Il sostituto di"
	line "<TARGET>"
	cont "svanisce!"
	prompt

LearnedMoveText:
	text "<USER>"
	line "impara"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

WasSeededText:
	text "<TARGET>"
	line "è pieno di semi!"
	prompt

EvadedText:
	text "<TARGET>"
	line "evita l'attacco!"
	prompt

WasDisabledText:
	text "@"
	text_from_ram wStringBuffer1
	text " di"
	line "<TARGET>"
	cont "viene bloccata!"
	prompt

CoinsScatteredText:
	text "Ci sono monete"
	line "sparse ovunque!"
	prompt

TransformedTypeText:
	text "<USER> si"
	line "trasforma nel"
	cont "tipo @"
	text_from_ram wStringBuffer1
	text "!"
	prompt

EliminatedStatsText:
	text "Tutti i cambi alle"
	line "statistiche sono"
	cont "stati annullati!"
	prompt

TransformedText:
	text "<USER> si"
	line "trasforma in"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

LightScreenEffectText:
	text "La Dif. Sp. di"
	line "<USER> sale!"
	prompt

ReflectEffectText:
	text "La Difesa di"
	line "<USER> sale!"
	prompt

NothingHappenedText:
	text "Ma nulla accadde."
	prompt

ButItFailedText:
	text "Ma fallisce!"
	prompt

ItFailedText:
	text "Fallisce!"
	prompt

DidntAffect1Text:
DidntAffect2Text:
DoesntAffectText:
	text "Non ha effetto su"
	line "<TARGET>…"
	prompt

HPIsFullText:
	text "<USER>"
	line "recupera tutti"
	cont "i PS!"
	prompt

DraggedOutText:
	text "<USER> entra"
	line "in campo!"
	prompt

ParalyzedText:
	text "<TARGET>"
	line "è paralizzato!"
	cont "Potrebbe non"
	cont "attaccare!"
	prompt

FullyParalyzedText:
	text "<USER> non"
	line "può muoversi!"
	prompt

AlreadyParalyzedText:
	text "<TARGET>"
	line "è già paralizzato!"
	prompt

ProtectedByText:
	text "<TARGET>"
	line "è protetto da"
	cont "@"
	text_from_ram wStringBuffer1
	text "!"
	prompt

MirrorMoveFailedText:
	text "Ma Speculmossa"
	next "fallisce!"
	prompt

StoleText:
	text "<USER>"
	line "ruba @"
	text_from_ram wStringBuffer1
	text_start
	cont "all'avversario!"
	prompt

CantEscapeNowText:
	text "<TARGET>"
	line "non può scappare!"
	prompt

StartedNightmareText:
	text "<TARGET>"
	line "ha iniziato ad"
	cont "avere un incubo!"
	prompt

WasDefrostedText:
	text "<USER> si"
	line "scongela!"
	prompt

PutACurseText:
	text "<USER>"
	line "dimezza i propri"
	cont "PS e infligge una"

	para "maledizione a"
	line "<TARGET>!"
	prompt

ProtectedItselfText:
	text "<USER>"
	line "si protegge!"
	prompt

ProtectingItselfText:
	text "<TARGET>"
	line "si protegge!"
	done

SpikesText:
	text "<TARGET>"
	line "è pieno di punte!"
	prompt

IdentifiedText:
	text "<USER>"
	line "identifica"
	cont "<TARGET>!"
	prompt

StartPerishText:
	text "Entrambi i #mon"
	line "perderanno in 3"
	cont "turni!"
	prompt

SandstormBrewedText:
	text "Arriva una tempe-"
	line "sta di sabbia!"
	prompt

BracedItselfText:
	text "<USER>"
	line "si rinvigorisce!"
	prompt

FellInLoveText:
	text "<TARGET>"
	line "si innamora!"
	prompt

CoveredByVeilText:
	text "<USER> è"
	line "protetto da un"
	cont "velo!"
	prompt

SafeguardProtectText:
	text "<TARGET>"
	line "è protetto da"
	cont "Salvaguardia!"
	prompt

MagnitudeText:
	text "Magnitudo @"
	deciram wDeciramBuffer, 1, 1
	text "!"
	prompt

ReleasedByText:
	text "<USER>"
	line "si libera da"
	cont "<TARGET>!"
	prompt

ShedLeechSeedText:
	text "<USER>"
	line "si libera dai"
    cont "semi!"
	prompt

BlewSpikesText:
	text "<USER>"
	line "ha tolto via le"
	cont "punte dal campo!"
	prompt

DownpourText:
	text "Inizia a piovere!"
	prompt

SunGotBrightText:
	text "La luce solare"
	line "è fortissima!"
	prompt

BellyDrumText:
	text "<USER>"
	line "dimezza i propri"
	cont "PS per massimizza-"
	cont "re il proprio"
	cont "attacco!"
	prompt

CopiedStatsText:
	text "<USER>"
	line "ha copiato le"

	para "modifiche delle"
	line "statistiche di"
	cont "<TARGET>!"
	prompt

ForesawAttackText:
	text "<USER>"
	line "prevede un"
	cont "attacco!"
	prompt

BeatUpAttackText:
	text_from_ram wStringBuffer1
	text " attacca!"
	done

RefusedGiftText:
	text "<TARGET>"
	line "rifiuta il"
	cont "regalino!"
	prompt

IgnoredOrders2Text:
	text "<USER> ignora"
	line "gli ordini!"
	prompt
