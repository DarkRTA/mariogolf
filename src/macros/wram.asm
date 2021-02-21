Struct_PlayerData: MACRO
	Struct_PlayerCharData \1
	Struct_PlayerRoundData \1
ENDM

Struct_PlayerCharData: MACRO
\1_name:: ds 8
\1_unk8:: ds 1
\1_unk9:: ds 1
\1_unka:: ds 1
\1_unkb:: ds 1
\1_unkc:: ds 1
\1_unkd:: ds 1
\1_unke:: ds 1
\1_unkf:: ds 1
\1_unk10_sprite:: ds 1
\1_unk11:: ds 1
\1_unk12:: ds 1
\1_is_ai:: ds 1
\1_unk14:: ds 1
\1_unk15:: ds 1
\1_unk16:: ds 1
\1_unk17:: ds 1
\1_unk18:: ds 1
\1_unk19_color:: ds 1
\1_drive_distance:: ds 2
\1_height:: ds 1
\1_shot:: ds 1
\1_meet_area:: ds 1
\1_meet_control:: ds 1
ENDM

Struct_PlayerRoundData: MACRO
\1_round_strokes:: ds 1
\1_round_unk1:: ds 1
\1_round_unk2:: ds 1
\1_round_unk3:: ds 1
\1_round_unk4:: ds 1
\1_round_unk5:: ds 1
\1_round_unk6:: ds 1
\1_round_unk7:: ds 1
\1_round_unk8:: ds 1
\1_round_power_shots:: ds 1
\1_round_unka:: ds 1
\1_round_unkb:: ds 1
\1_round_unkc:: ds 1
\1_round_unkd:: ds 1
\1_round_unke:: ds 1
\1_round_unkf:: ds 1
\1_round_unk10:: ds 1
\1_round_unk11:: ds 1
\1_round_unk12:: ds 1
\1_round_unk13:: ds 1
\1_round_unk14:: ds 1
\1_round_unk15:: ds 1
\1_round_unk16:: ds 1
\1_round_unk17:: ds 1
\1_round_unk18:: ds 1
\1_round_unk19:: ds 1
\1_round_unk1a:: ds 1
\1_round_unk1b:: ds 1
\1_round_unk1c:: ds 1
\1_round_unk1d:: ds 1
\1_round_unk1e:: ds 1
\1_round_unk1f:: ds 1
ENDM

