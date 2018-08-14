Font:
INCBIN "gfx/font/font.1bpp"

FontBattleExtra:
INCBIN "gfx/font/font_battle_extra.2bpp"

Frames: ; f8800
INCBIN "gfx/frames/1.1bpp"
INCBIN "gfx/frames/2.1bpp"
INCBIN "gfx/frames/3.1bpp"
INCBIN "gfx/frames/4.1bpp"
INCBIN "gfx/frames/5.1bpp"
INCBIN "gfx/frames/6.1bpp"
INCBIN "gfx/frames/7.1bpp"
INCBIN "gfx/frames/8.1bpp"
INCBIN "gfx/frames/9.1bpp"
; f89b0

; Various misc graphics here.

StatsScreenPageTilesGFX: ; f89b0
INCBIN "gfx/stats/stats_tiles.2bpp"
; f8ac0

EnemyHPBarBorderGFX: ; f8ac0
INCBIN "gfx/battle/enemy_hp_bar_border.1bpp"
; f8ae0

HPExpBarBorderGFX: ; f8ae0
INCBIN "gfx/battle/hp_exp_bar_border.1bpp"
; f8b10

ExpBarGFX: ; f8b10
INCBIN "gfx/battle/expbar.2bpp"
; f8ba0

TownMapGFX: ; f8ba0
INCBIN "gfx/pokegear/town_map.2bpp.lz"
; f8ea4

UnusedBoldFontGFX: ; unused bold letters + unown chars
INCBIN "gfx/font/unused_bold_font.1bpp"
; f9204

TextBoxSpaceGFX: ; f9204
INCBIN "gfx/frames/space.1bpp"
; f9214

UnusedUpArrowGFX: ; unused up arrow + whitespace
INCBIN "gfx/font/unused_up_arrow.1bpp"
; f9234

MobilePhoneTilesGFX: ; f9234
INCBIN "gfx/mobile/phone_tiles.2bpp"
; f9344

MapEntryFrameGFX: ; f9344
INCBIN "gfx/frames/map_entry_sign.2bpp"
; f9424

Footprints: ; f9434
INCLUDE "gfx/footprints.asm"
; fb434

InstantReloadPaletteHack:
; Hack to make the palette load instantly
	ld a, [rSVBK]
	push af
	push de
	ld a, $5 ; gfx
	ld [rSVBK], a
; copy & reorder bg pal buffer   (FDC: Questo è per le icone del fisico/speciale/status sicuramente, lavoraci)
;	ld hl, BGPals palette PAL_BATTLE_BG_STATUS ; to
;	ld de, wBGPals1 palette PAL_BATTLE_BG_STATUS ; from
; order
	ld a, [rBGP]
	ld b, a
; 1 pal
	ld c, 1
	call CopyPals
; request pal update
	ld a, 1
	ld [hCGBPalUpdate], a
	pop de
	pop af
	ld [rSVBK], a
	ret
