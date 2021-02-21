INCLUDE "macros/wram.asm"

SECTION "WRAM0_c81a",WRAM0[$c800]
    Struct_PlayerCharData wStoryChar; c800

SECTION "WRAM0_c",WRAM0[$c880]
	Struct_PlayerData wPlayer1 ; c880
	Struct_PlayerData wPlayer2 ; c8c0
