AddPhoneNumber::
	call _CheckCellNum
	jr c, .cant_add
	call Phone_FindOpenSlot
	jr nc, .cant_add
	ld [hl], c
	xor a
	ret

.cant_add
	scf
	ret

CheckCellNum::
	jp _CheckCellNum ; wtf

_CheckCellNum:
	ld hl, wPhoneList
	ld b, CONTACT_LIST_SIZE
.loop
	ld a, [hli]
	cp c
	jr z, .got_it
	dec b
	jr nz, .loop
	xor a
	ret

.got_it
	dec hl
	scf
	ret

Phone_FindOpenSlot:
	call GetRemainingSpaceInPhoneList
	ld b, a
	ld hl, wPhoneList
.loop
	ld a, [hli]
	and a
	jr z, .FoundOpenSpace
	dec b
	jr nz, .loop
	xor a
	ret

.FoundOpenSpace:
	dec hl
	scf
	ret

GetRemainingSpaceInPhoneList:
	xor a
	ld [wBuffer1], a
	ld hl, PermanentNumbers
.loop
	ld a, [hli]
	cp -1
	jr z, .done
	cp c
	jr z, .continue

	push bc
	push hl
	ld c, a
	call _CheckCellNum
	jr c, .permanent
	ld hl, wBuffer1
	inc [hl]
.permanent
	pop hl
	pop bc

.continue
	jr .loop

.done
	ld a, CONTACT_LIST_SIZE
	ld hl, wBuffer1
	sub [hl]
	ret

INCLUDE "data/phone/permanent_numbers.asm"

CheckPhoneCall::
; Check if the phone is ringing in the overworld.

	call CheckStandingOnEntrance
	jr z, .no_call

	call .timecheck
	nop
	jr nc, .no_call

	call Random
	ld b, a
	and 50 percent
	cp b
	jr nz, .no_call

	call GetMapPhoneService
	and a
	jr nz, .no_call

	call GetAvailableCallers
	call ChooseRandomCaller
	jr nc, .no_call

	ld e, a
	call LoadCallerScript
	ld a, BANK(Script_ReceivePhoneCall)
	ld hl, Script_ReceivePhoneCall
	call CallScript
	scf
	ret

.no_call
	xor a
	ret

.timecheck
	farcall CheckReceiveCallTimer
	ret

CheckPhoneContactTimeOfDay:
	push hl
	push bc
	push de
	push af

	farcall CheckTime
	pop af
	and ANYTIME
	and c

	pop de
	pop bc
	pop hl
	ret

ChooseRandomCaller:
; If no one is available to call, don't return anything.
	ld a, [wEngineBuffer3]
	and a
	jr z, .NothingToSample

; Sample a random number between 0 and 31.
	ld c, a
	call Random
	ld a, [hRandomAdd]
	swap a
	and $1f
; Compute that number modulo the number of available callers.
	call SimpleDivide
; Return the caller ID you just sampled.
	ld c, a
	ld b, 0
	ld hl, wEngineBuffer4
	add hl, bc
	ld a, [hl]
	scf
	ret

.NothingToSample:
	xor a
	ret

GetAvailableCallers:
	farcall CheckTime
	ld a, c
	ld [wEngineBuffer1], a
	ld hl, wEngineBuffer3
	ld bc, 11
	xor a
	call ByteFill
	ld de, wPhoneList
	ld a, CONTACT_LIST_SIZE

.loop
	ld [wEngineBuffer2], a
	ld a, [de]
	and a
	jr z, .not_good_for_call
	ld hl, PhoneContacts + PHONE_CONTACT_SCRIPT2_TIME
	ld bc, PHONE_TABLE_WIDTH
	call AddNTimes
	ld a, [wEngineBuffer1]
	and [hl]
	jr z, .not_good_for_call
	ld bc, PHONE_CONTACT_MAP_GROUP - PHONE_CONTACT_SCRIPT2_TIME
	add hl, bc
	ld a, [wMapGroup]
	cp [hl]
	jr nz, .different_map
	inc hl
	ld a, [wMapNumber]
	cp [hl]
	jr z, .not_good_for_call
.different_map
	ld a, [wEngineBuffer3]
	ld c, a
	ld b, $0
	inc a
	ld [wEngineBuffer3], a
	ld hl, wEngineBuffer4
	add hl, bc
	ld a, [de]
	ld [hl], a
.not_good_for_call
	inc de
	ld a, [wEngineBuffer2]
	dec a
	jr nz, .loop
	ret

CheckSpecialPhoneCall::
	ld a, [wSpecialPhoneCallID]
	and a
	jr z, .NoPhoneCall

	dec a
	ld c, a
	ld b, 0
	ld hl, SpecialPhoneCallList
	ld a, 6
	call AddNTimes
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call _hl_
	jr nc, .NoPhoneCall

	call .DoSpecialPhoneCall
	inc hl
	inc hl
	ld a, [hli]
	ld e, a
	push hl
	call LoadCallerScript
	pop hl
	ld de, wPhoneScriptPointer
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld a, BANK(.script)
	ld hl, .script
	call CallScript
	scf
	ret
.NoPhoneCall:
	xor a
	ret

.script
	pause 30
	jump Script_ReceivePhoneCall

.DoSpecialPhoneCall:
	ld a, [wSpecialPhoneCallID]
	dec a
	ld c, a
	ld b, 0
	ld hl, SpecialPhoneCallList
	ld a, 6
	call AddNTimes
	ret

SpecialCallOnlyWhenOutside:
	ld a, [wEnvironment]
	cp TOWN
	jr z, .outside
	cp ROUTE
	jr z, .outside
	xor a
	ret

.outside
	scf
	ret

SpecialCallWhereverYouAre:
	scf
	ret

Function90199:
	; Don't do the call if you're in a link communication
	ld a, [wLinkMode]
	and a
	jr nz, .OutOfArea
	; If you're in an area without phone service, don't do the call
	call GetMapPhoneService
	and a
	jr nz, .OutOfArea
	; If the person can't take a call at that time, don't do the call
	ld a, b
	ld [wCurrentCaller], a
	ld hl, PhoneContacts
	ld bc, PHONE_TABLE_WIDTH
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, PHONE_CONTACT_SCRIPT1_TIME
	add hl, de
	ld a, [hl]
	call CheckPhoneContactTimeOfDay
	jr z, .OutOfArea
	; If we're in the same map as the person we're calling,
	; use the "Just talk to that person" script.
	ld hl, PHONE_CONTACT_MAP_GROUP
	add hl, de
	ld a, [wMapGroup]
	cp [hl]
	jr nz, .GetPhoneScript
	ld hl, PHONE_CONTACT_MAP_NUMBER
	add hl, de
	ld a, [wMapNumber]
	cp [hl]
	jr nz, .GetPhoneScript
	ld b, BANK(PhoneScript_JustTalkToThem)
	ld hl, PhoneScript_JustTalkToThem
	jr .DoPhoneCall

.GetPhoneScript:
	ld hl, PHONE_CONTACT_SCRIPT1_BANK
	add hl, de
	ld b, [hl]
	ld hl, PHONE_CONTACT_SCRIPT1_ADDR_LO
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jr .DoPhoneCall

.OutOfArea:
	ld b, BANK(UnknownScript_0x90209)
	ld de, UnknownScript_0x90209
	call ExecuteCallbackScript
	ret

.DoPhoneCall:
	ld a, b
	ld [wPhoneScriptBank], a
	ld a, l
	ld [wPhoneCaller], a
	ld a, h
	ld [wPhoneCaller + 1], a
	ld b, BANK(UnknownScript_0x90205)
	ld de, UnknownScript_0x90205
	call ExecuteCallbackScript
	ret

UnknownScript_0x90205:
	ptcall wd002
	return

UnknownScript_0x90209:
	scall UnknownScript_0x90657
	return

LoadCallerScript:
	nop
	nop
	ld a, e
	ld [wCurrentCaller], a
	and a
	jr nz, .actualcaller
	ld a, BANK(WrongNumber)
	ld hl, WrongNumber
	jr .proceed

.actualcaller
	ld hl, PhoneContacts
	ld bc, 12
	ld a, e
	call AddNTimes
	ld a, BANK(PhoneContacts)
.proceed
	ld de, wEngineBuffer2
	ld bc, 12
	call FarCopyBytes
	ret

WrongNumber:
	db TRAINER_NONE, PHONE_00
	dba .script
.script
	writetext .text
	end
.text
	; Huh? Sorry, wrong number!
	text_jump UnknownText_0x1c5565
	db "@"

Script_ReceivePhoneCall:
	refreshscreen
	callasm RingTwice_StartCall
	ptcall wPhoneScriptPointer
	waitbutton
	callasm HangUp
	closetext
	callasm InitCallReceiveDelay
	end

Script_SpecialBillCall::
	callasm .LoadBillScript
	jump Script_ReceivePhoneCall

.LoadBillScript:
	ld e, PHONE_BILL
	jp LoadCallerScript

RingTwice_StartCall:
	call .Ring
	call .Ring
	ret

.Ring:
	call Phone_StartRinging
	call Phone_Wait20Frames
	call Phone_CallerTextboxWithName
	call Phone_Wait20Frames
	call Phone_CallerTextbox
	call Phone_Wait20Frames
	call Phone_CallerTextboxWithName
	ret

Phone_CallerTextboxWithName:
	ld a, [wCurrentCaller]
	ld b, a
	call Function90363
	ret

Phone_NoSignal:
	ld de, SFX_NO_SIGNAL
	call PlaySFX
	jr Phone_CallEnd

HangUp::
	call HangUp_Beep
	call HangUp_Wait20Frames
Phone_CallEnd:
	call HangUp_BoopOn
	call HangUp_Wait20Frames
	call HangUp_BoopOff
	call HangUp_Wait20Frames
	call HangUp_BoopOn
	call HangUp_Wait20Frames
	call HangUp_BoopOff
	call HangUp_Wait20Frames
	call HangUp_BoopOn
	call HangUp_Wait20Frames
	call HangUp_BoopOff
	call HangUp_Wait20Frames
	ret

HangUp_Beep:
	ld hl, UnknownText_0x9032a
	call PrintText
	ld de, SFX_HANG_UP
	call PlaySFX
	ret

UnknownText_0x9032a:
	text_jump UnknownText_0x1c5580
	db "@"

HangUp_BoopOn:
	ld hl, UnknownText_0x90336
	call PrintText
	ret

UnknownText_0x90336:
	text_jump UnknownText_0x1c5588
	db "@"

HangUp_BoopOff:
	call SpeechTextBox
	ret

Phone_StartRinging:
	call WaitSFX
	ld de, SFX_CALL
	call PlaySFX
	call Phone_CallerTextbox
	call UpdateSprites
	farcall PhoneRing_CopyTilemapAtOnce
	ret

HangUp_Wait20Frames:
	jr Phone_Wait20Frames

Phone_Wait20Frames:
	ld c, 20
	call DelayFrames
	farcall PhoneRing_CopyTilemapAtOnce
	ret

Function90363:
	push bc
	call Phone_CallerTextbox
	hlcoord 1, 1
	ld [hl], "☎"
	inc hl
	inc hl
	ld d, h
	ld e, l
	pop bc
	call Function90380
	ret

Phone_CallerTextbox:
	hlcoord 0, 0
	ld b, 2
	ld c, SCREEN_WIDTH - 2
	call TextBox
	ret

Function90380:
	ld h, d
	ld l, e
	ld a, b
	call GetCallerTrainerClass
	call GetCallerName
	ret

CheckCanDeletePhoneNumber:
	ld a, c
	call GetCallerTrainerClass
	ld a, c
	; and a
	ret nz
	ld a, b
	cp PHONECONTACT_MOM
	ret z
	cp PHONECONTACT_ELM
	ret z
	ld c, $1
	ret

GetCallerTrainerClass:
	push hl
	ld hl, PhoneContacts + PHONE_CONTACT_TRAINER_CLASS
	ld bc, PHONE_TABLE_WIDTH
	call AddNTimes
	ld a, [hli]
	ld b, [hl]
	ld c, a
	pop hl
	ret

GetCallerName:
	ld a, c
	and a
	jr z, .NotTrainer

	call Phone_GetTrainerName
	push hl
	push bc
	call PlaceString
	ld a, ":"
	ld [bc], a
	pop bc
	pop hl
	ld de, SCREEN_WIDTH + 3
	add hl, de
	call Phone_GetTrainerClassName
	call PlaceString
	ret

.NotTrainer:
	push hl
	ld c, b
	ld b, 0
	ld hl, NonTrainerCallerNames
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	call PlaceString
	ret

INCLUDE "data/phone/non_trainer_names.asm"

Phone_GetTrainerName:
	push hl
	push bc
	farcall GetTrainerName
	pop bc
	pop hl
	ret

Phone_GetTrainerClassName:
	push hl
	push bc
	farcall GetTrainerClassName
	pop bc
	pop hl
	ret

GetCallerLocation:
	ld a, [wCurrentCaller]
	call GetCallerTrainerClass
	ld d, c
	ld e, b
	push de
	ld a, [wCurrentCaller]
	ld hl, PhoneContacts + PHONE_CONTACT_MAP_GROUP
	ld bc, PHONE_TABLE_WIDTH
	call AddNTimes
	ld b, [hl]
	inc hl
	ld c, [hl]
	push bc
	call GetWorldMapLocation
	ld e, a
	farcall GetLandmarkName
	pop bc
	pop de
	ret

INCLUDE "data/phone/phone_contacts.asm"

INCLUDE "data/phone/special_calls.asm"

UnknownScript_0x90657:
	writetext UnknownText_0x9065b
	end

UnknownText_0x9065b:
	; That number is out of the area.
	text_jump UnknownText_0x1c558b
	db "@"

PhoneScript_JustTalkToThem:
	writetext UnknownText_0x90664
	end

UnknownText_0x90664:
	; Just go talk to that person!
	text_jump UnknownText_0x1c55ac
	db "@"
