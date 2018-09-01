LoadBattleMenu:
	ld hl, BattleMenuHeader
	call LoadMenuHeader
	ld a, [wBattleMenuCursorBuffer]
	ld [wMenuCursorBuffer], a
	call InterpretBattleMenu
	ld a, [wMenuCursorBuffer]
	ld [wBattleMenuCursorBuffer], a
	call ExitMenu
	ret

ContestBattleMenu:
	ld hl, MenuHeader_0x24f89
	call LoadMenuHeader

Function24f19:
	ld a, [wBattleMenuCursorBuffer]
	ld [wMenuCursorBuffer], a
	call _2DMenu
	ld a, [wMenuCursorBuffer]
	ld [wBattleMenuCursorBuffer], a
	call ExitMenu
	ret

BattleMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw MenuData_0x24f34
	db 1 ; default option

MenuData_0x24f34:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 2, 2 ; rows, columns
	db 6 ; spacing
	dba Strings24f3d
	dbw BANK(MenuData_0x24f34), 0

Strings24f3d:
	db "Lotta@"
	db "<PKMN>@"
	db "Borsa@"
	db "Fuga@"

MenuHeader_0x24f89:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw MenuData_0x24f91
	db 1 ; default option

MenuData_0x24f91:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 2, 2 ; rows, columns
	db 12 ; spacing
	dba Strings24f9a
	dba Function24fb2

Strings24f9a:
	db "Lotta@"
	db "<PKMN>", "@"
	db "ParkBall×  @"
	db "Fuga@"

Function24fb2:
	hlcoord 13, 16
	ld de, wParkBallsRemaining
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ret
