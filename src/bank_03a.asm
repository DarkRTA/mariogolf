; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

    db $06, $40

    db $eb                                        ; $4002: $eb
    ld d, h                                       ; $4003: $54
    cp h                                          ; $4004: $bc
    ld l, c                                       ; $4005: $69

    ld a, c                                       ; $4006: $79
    cp $0d                                        ; $4007: $fe $0d
    jr nc, jr_03a_4049                            ; $4009: $30 $3e

    ld a, [$d32a]                                 ; $400b: $fa $2a $d3
    cp $02                                        ; $400e: $fe $02
    jr z, jr_03a_4037                             ; $4010: $28 $25

    ld h, $00                                     ; $4012: $26 $00
    ld l, c                                       ; $4014: $69
    add hl, hl                                    ; $4015: $29
    ld bc, $404d                                  ; $4016: $01 $4d $40
    add hl, bc                                    ; $4019: $09
    ld a, [hl+]                                   ; $401a: $2a
    ld b, [hl]                                    ; $401b: $46
    ld c, a                                       ; $401c: $4f
    ld h, d                                       ; $401d: $62
    ld l, e                                       ; $401e: $6b
    res 0, l                                      ; $401f: $cb $85
    add hl, bc                                    ; $4021: $09
    bit 0, e                                      ; $4022: $cb $43
    jr nz, jr_03a_402a                            ; $4024: $20 $04

    ld a, [hl+]                                   ; $4026: $2a
    ld h, [hl]                                    ; $4027: $66
    ld l, a                                       ; $4028: $6f
    ret                                           ; $4029: $c9


jr_03a_402a:
    ld e, [hl]                                    ; $402a: $5e
    inc hl                                        ; $402b: $23
    ld d, [hl]                                    ; $402c: $56
    inc hl                                        ; $402d: $23
    ld a, [hl+]                                   ; $402e: $2a
    ld h, [hl]                                    ; $402f: $66
    ld l, a                                       ; $4030: $6f
    add hl, de                                    ; $4031: $19
    srl h                                         ; $4032: $cb $3c
    rr l                                          ; $4034: $cb $1d
    ret                                           ; $4036: $c9


jr_03a_4037:
    ld h, $00                                     ; $4037: $26 $00
    ld l, c                                       ; $4039: $69
    add hl, hl                                    ; $403a: $29
    ld bc, $51ab                                  ; $403b: $01 $ab $51
    add hl, bc                                    ; $403e: $09
    ld a, [hl+]                                   ; $403f: $2a
    ld h, [hl]                                    ; $4040: $66
    ld l, a                                       ; $4041: $6f
    res 0, e                                      ; $4042: $cb $83
    add hl, de                                    ; $4044: $19
    ld l, [hl]                                    ; $4045: $6e
    ld h, $00                                     ; $4046: $26 $00
    ret                                           ; $4048: $c9


jr_03a_4049:
    ld hl, $0040                                  ; $4049: $21 $40 $00
    ret                                           ; $404c: $c9


    ld h, a                                       ; $404d: $67
    ld b, b                                       ; $404e: $40

    db $61, $42

    add hl, sp                                    ; $4051: $39
    ld b, h                                       ; $4052: $44
    db $eb                                        ; $4053: $eb
    ld b, l                                       ; $4054: $45
    sbc c                                         ; $4055: $99
    ld b, a                                       ; $4056: $47
    ld hl, $8949                                  ; $4057: $21 $49 $89
    ld c, d                                       ; $405a: $4a
    rst $10                                       ; $405b: $d7
    ld c, e                                       ; $405c: $4b
    ld de, $354d                                  ; $405d: $11 $4d $35
    ld c, [hl]                                    ; $4060: $4e
    ld b, e                                       ; $4061: $43
    ld c, a                                       ; $4062: $4f
    inc sp                                        ; $4063: $33
    ld d, b                                       ; $4064: $50
    inc bc                                        ; $4065: $03
    ld d, c                                       ; $4066: $51
    inc b                                         ; $4067: $04
    nop                                           ; $4068: $00
    ld c, $00                                     ; $4069: $0e $00
    rra                                           ; $406b: $1f
    nop                                           ; $406c: $00
    dec h                                         ; $406d: $25
    nop                                           ; $406e: $00
    dec hl                                        ; $406f: $2b
    nop                                           ; $4070: $00
    jr nc, jr_03a_4073                            ; $4071: $30 $00

jr_03a_4073:
    inc [hl]                                      ; $4073: $34
    nop                                           ; $4074: $00
    jr c, jr_03a_4077                             ; $4075: $38 $00

jr_03a_4077:
    ld a, $00                                     ; $4077: $3e $00
    ld b, c                                       ; $4079: $41
    nop                                           ; $407a: $00
    ld b, l                                       ; $407b: $45
    nop                                           ; $407c: $00
    ld c, b                                       ; $407d: $48
    nop                                           ; $407e: $00
    ld c, e                                       ; $407f: $4b
    nop                                           ; $4080: $00
    ld c, [hl]                                    ; $4081: $4e
    nop                                           ; $4082: $00
    ld d, c                                       ; $4083: $51
    nop                                           ; $4084: $00
    ld d, h                                       ; $4085: $54
    nop                                           ; $4086: $00
    ld d, a                                       ; $4087: $57
    nop                                           ; $4088: $00
    ld e, c                                       ; $4089: $59
    nop                                           ; $408a: $00
    ld e, e                                       ; $408b: $5b
    nop                                           ; $408c: $00
    ld e, [hl]                                    ; $408d: $5e
    nop                                           ; $408e: $00
    ld h, b                                       ; $408f: $60
    nop                                           ; $4090: $00
    ld h, e                                       ; $4091: $63
    nop                                           ; $4092: $00
    ld h, l                                       ; $4093: $65
    nop                                           ; $4094: $00
    ld h, a                                       ; $4095: $67
    nop                                           ; $4096: $00
    ld l, d                                       ; $4097: $6a
    nop                                           ; $4098: $00
    ld l, e                                       ; $4099: $6b
    nop                                           ; $409a: $00
    ld l, [hl]                                    ; $409b: $6e
    nop                                           ; $409c: $00
    ld [hl], b                                    ; $409d: $70
    nop                                           ; $409e: $00
    ld [hl], d                                    ; $409f: $72
    nop                                           ; $40a0: $00
    ld [hl], h                                    ; $40a1: $74
    nop                                           ; $40a2: $00
    halt                                          ; $40a3: $76
    nop                                           ; $40a4: $00
    ld a, c                                       ; $40a5: $79
    nop                                           ; $40a6: $00
    ld a, d                                       ; $40a7: $7a
    nop                                           ; $40a8: $00
    ld a, h                                       ; $40a9: $7c
    nop                                           ; $40aa: $00
    ld a, a                                       ; $40ab: $7f
    nop                                           ; $40ac: $00
    add b                                         ; $40ad: $80
    nop                                           ; $40ae: $00
    add d                                         ; $40af: $82
    nop                                           ; $40b0: $00
    add h                                         ; $40b1: $84
    nop                                           ; $40b2: $00
    add [hl]                                      ; $40b3: $86
    nop                                           ; $40b4: $00
    adc b                                         ; $40b5: $88
    nop                                           ; $40b6: $00
    adc d                                         ; $40b7: $8a
    nop                                           ; $40b8: $00
    adc e                                         ; $40b9: $8b
    nop                                           ; $40ba: $00
    adc [hl]                                      ; $40bb: $8e
    nop                                           ; $40bc: $00
    adc a                                         ; $40bd: $8f
    nop                                           ; $40be: $00
    sub c                                         ; $40bf: $91
    nop                                           ; $40c0: $00
    sub e                                         ; $40c1: $93
    nop                                           ; $40c2: $00
    sub l                                         ; $40c3: $95
    nop                                           ; $40c4: $00
    sub a                                         ; $40c5: $97
    nop                                           ; $40c6: $00
    sbc b                                         ; $40c7: $98
    nop                                           ; $40c8: $00
    sbc d                                         ; $40c9: $9a
    nop                                           ; $40ca: $00
    sbc h                                         ; $40cb: $9c
    nop                                           ; $40cc: $00
    sbc l                                         ; $40cd: $9d
    nop                                           ; $40ce: $00
    sbc a                                         ; $40cf: $9f
    nop                                           ; $40d0: $00
    and c                                         ; $40d1: $a1
    nop                                           ; $40d2: $00
    and e                                         ; $40d3: $a3
    nop                                           ; $40d4: $00
    and l                                         ; $40d5: $a5
    nop                                           ; $40d6: $00
    and [hl]                                      ; $40d7: $a6
    nop                                           ; $40d8: $00
    xor b                                         ; $40d9: $a8
    nop                                           ; $40da: $00
    xor d                                         ; $40db: $aa
    nop                                           ; $40dc: $00
    xor h                                         ; $40dd: $ac
    nop                                           ; $40de: $00
    xor l                                         ; $40df: $ad
    nop                                           ; $40e0: $00
    xor a                                         ; $40e1: $af
    nop                                           ; $40e2: $00
    or b                                          ; $40e3: $b0
    nop                                           ; $40e4: $00
    or d                                          ; $40e5: $b2
    nop                                           ; $40e6: $00
    or h                                          ; $40e7: $b4
    nop                                           ; $40e8: $00
    or l                                          ; $40e9: $b5
    nop                                           ; $40ea: $00
    or a                                          ; $40eb: $b7
    nop                                           ; $40ec: $00
    cp c                                          ; $40ed: $b9
    nop                                           ; $40ee: $00
    cp e                                          ; $40ef: $bb
    nop                                           ; $40f0: $00
    cp h                                          ; $40f1: $bc
    nop                                           ; $40f2: $00
    cp [hl]                                       ; $40f3: $be
    nop                                           ; $40f4: $00
    ret nz                                        ; $40f5: $c0

    nop                                           ; $40f6: $00
    pop bc                                        ; $40f7: $c1
    nop                                           ; $40f8: $00
    jp nz, $c400                                  ; $40f9: $c2 $00 $c4

    nop                                           ; $40fc: $00
    add $00                                       ; $40fd: $c6 $00
    rst $00                                       ; $40ff: $c7
    nop                                           ; $4100: $00
    ret                                           ; $4101: $c9


    nop                                           ; $4102: $00
    jp z, $cc00                                   ; $4103: $ca $00 $cc

    nop                                           ; $4106: $00
    adc $00                                       ; $4107: $ce $00
    rst $08                                       ; $4109: $cf
    nop                                           ; $410a: $00
    pop de                                        ; $410b: $d1
    nop                                           ; $410c: $00
    db $d3                                        ; $410d: $d3
    nop                                           ; $410e: $00
    call nc, $d600                                ; $410f: $d4 $00 $d6
    nop                                           ; $4112: $00
    rst $10                                       ; $4113: $d7
    nop                                           ; $4114: $00
    ret c                                         ; $4115: $d8

    nop                                           ; $4116: $00
    db $db                                        ; $4117: $db
    nop                                           ; $4118: $00
    call c, $de00                                 ; $4119: $dc $00 $de
    nop                                           ; $411c: $00
    rst $18                                       ; $411d: $df
    nop                                           ; $411e: $00
    ldh [rP1], a                                  ; $411f: $e0 $00
    ld [c], a                                     ; $4121: $e2
    nop                                           ; $4122: $00
    db $e4                                        ; $4123: $e4
    nop                                           ; $4124: $00
    push hl                                       ; $4125: $e5
    nop                                           ; $4126: $00
    rst $20                                       ; $4127: $e7
    nop                                           ; $4128: $00
    add sp, $00                                   ; $4129: $e8 $00
    ld [$ec00], a                                 ; $412b: $ea $00 $ec
    nop                                           ; $412e: $00
    db $ed                                        ; $412f: $ed
    nop                                           ; $4130: $00
    xor $00                                       ; $4131: $ee $00
    ldh a, [rP1]                                  ; $4133: $f0 $00
    ld a, [c]                                     ; $4135: $f2
    nop                                           ; $4136: $00
    di                                            ; $4137: $f3
    nop                                           ; $4138: $00
    db $f4                                        ; $4139: $f4
    nop                                           ; $413a: $00
    or $00                                        ; $413b: $f6 $00
    ld hl, sp+$00                                 ; $413d: $f8 $00
    ld sp, hl                                     ; $413f: $f9
    nop                                           ; $4140: $00
    ld a, [$fc00]                                 ; $4141: $fa $00 $fc
    nop                                           ; $4144: $00
    cp $00                                        ; $4145: $fe $00
    rst $38                                       ; $4147: $ff
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    ld bc, $0102                                  ; $414a: $01 $02 $01
    inc b                                         ; $414d: $04
    ld bc, $0105                                  ; $414e: $01 $05 $01
    rlca                                          ; $4151: $07
    ld bc, $0108                                  ; $4152: $01 $08 $01
    ld a, [bc]                                    ; $4155: $0a
    ld bc, $010c                                  ; $4156: $01 $0c $01
    dec c                                         ; $4159: $0d
    ld bc, $010f                                  ; $415a: $01 $0f $01
    db $10                                        ; $415d: $10
    ld bc, $0111                                  ; $415e: $01 $11 $01
    inc de                                        ; $4161: $13
    ld bc, $0114                                  ; $4162: $01 $14 $01
    ld d, $01                                     ; $4165: $16 $01
    rla                                           ; $4167: $17
    ld bc, $0119                                  ; $4168: $01 $19 $01
    dec de                                        ; $416b: $1b
    ld bc, $011c                                  ; $416c: $01 $1c $01
    dec e                                         ; $416f: $1d
    ld bc, $011f                                  ; $4170: $01 $1f $01
    ld hl, $2201                                  ; $4173: $21 $01 $22
    ld bc, $0124                                  ; $4176: $01 $24 $01
    dec h                                         ; $4179: $25
    ld bc, $0127                                  ; $417a: $01 $27 $01
    jr z, jr_03a_4180                             ; $417d: $28 $01

    add hl, hl                                    ; $417f: $29

jr_03a_4180:
    ld bc, $012b                                  ; $4180: $01 $2b $01
    dec l                                         ; $4183: $2d
    ld bc, $012e                                  ; $4184: $01 $2e $01
    jr nc, jr_03a_418a                            ; $4187: $30 $01

    ld [hl-], a                                   ; $4189: $32

jr_03a_418a:
    ld bc, $0133                                  ; $418a: $01 $33 $01
    inc [hl]                                      ; $418d: $34
    ld bc, $0136                                  ; $418e: $01 $36 $01
    scf                                           ; $4191: $37
    ld bc, $0139                                  ; $4192: $01 $39 $01
    ld a, [hl-]                                   ; $4195: $3a
    ld bc, $013c                                  ; $4196: $01 $3c $01
    dec a                                         ; $4199: $3d
    ld bc, HeaderManufacturerCode                 ; $419a: $01 $3f $01
    ld b, b                                       ; $419d: $40
    ld bc, $0142                                  ; $419e: $01 $42 $01
    ld b, e                                       ; $41a1: $43
    ld bc, $0145                                  ; $41a2: $01 $45 $01
    ld b, [hl]                                    ; $41a5: $46
    ld bc, HeaderROMSize                          ; $41a6: $01 $48 $01
    ld c, c                                       ; $41a9: $49
    ld bc, HeaderOldLicenseeCode                  ; $41aa: $01 $4b $01
    ld c, h                                       ; $41ad: $4c
    ld bc, HeaderGlobalChecksum                   ; $41ae: $01 $4e $01
    ld c, a                                       ; $41b1: $4f
    ld bc, $0151                                  ; $41b2: $01 $51 $01
    ld d, d                                       ; $41b5: $52
    ld bc, $0154                                  ; $41b6: $01 $54 $01
    ld d, l                                       ; $41b9: $55
    ld bc, $0157                                  ; $41ba: $01 $57 $01
    ld e, c                                       ; $41bd: $59
    ld bc, $015a                                  ; $41be: $01 $5a $01
    ld e, e                                       ; $41c1: $5b
    ld bc, $015d                                  ; $41c2: $01 $5d $01
    ld e, [hl]                                    ; $41c5: $5e
    ld bc, $0160                                  ; $41c6: $01 $60 $01
    ld h, d                                       ; $41c9: $62
    ld bc, $0163                                  ; $41ca: $01 $63 $01
    ld h, h                                       ; $41cd: $64
    ld bc, $0166                                  ; $41ce: $01 $66 $01
    ld l, b                                       ; $41d1: $68
    ld bc, $0169                                  ; $41d2: $01 $69 $01
    ld l, e                                       ; $41d5: $6b
    ld bc, $016c                                  ; $41d6: $01 $6c $01
    ld l, l                                       ; $41d9: $6d
    ld bc, $016f                                  ; $41da: $01 $6f $01
    ld [hl], c                                    ; $41dd: $71
    ld bc, $0172                                  ; $41de: $01 $72 $01
    ld [hl], h                                    ; $41e1: $74
    ld bc, $0175                                  ; $41e2: $01 $75 $01
    halt                                          ; $41e5: $76
    ld bc, $0178                                  ; $41e6: $01 $78 $01
    ld a, d                                       ; $41e9: $7a
    ld bc, $017b                                  ; $41ea: $01 $7b $01
    ld a, l                                       ; $41ed: $7d
    ld bc, $017e                                  ; $41ee: $01 $7e $01
    add b                                         ; $41f1: $80
    ld bc, $0181                                  ; $41f2: $01 $81 $01
    add e                                         ; $41f5: $83
    ld bc, $0184                                  ; $41f6: $01 $84 $01
    add [hl]                                      ; $41f9: $86
    ld bc, $0187                                  ; $41fa: $01 $87 $01
    adc c                                         ; $41fd: $89
    ld bc, $018a                                  ; $41fe: $01 $8a $01
    adc h                                         ; $4201: $8c
    ld bc, $018d                                  ; $4202: $01 $8d $01
    adc a                                         ; $4205: $8f
    ld bc, $0190                                  ; $4206: $01 $90 $01
    sub d                                         ; $4209: $92
    ld bc, $0193                                  ; $420a: $01 $93 $01
    sub l                                         ; $420d: $95
    ld bc, $0196                                  ; $420e: $01 $96 $01
    sbc b                                         ; $4211: $98
    ld bc, $0199                                  ; $4212: $01 $99 $01
    sbc e                                         ; $4215: $9b
    ld bc, $019d                                  ; $4216: $01 $9d $01
    sbc [hl]                                      ; $4219: $9e
    ld bc, $01a0                                  ; $421a: $01 $a0 $01
    and c                                         ; $421d: $a1
    ld bc, $01a3                                  ; $421e: $01 $a3 $01
    and h                                         ; $4221: $a4
    ld bc, $01a5                                  ; $4222: $01 $a5 $01
    and a                                         ; $4225: $a7
    ld bc, $01a9                                  ; $4226: $01 $a9 $01
    xor d                                         ; $4229: $aa
    ld bc, $01ac                                  ; $422a: $01 $ac $01
    xor l                                         ; $422d: $ad
    ld bc, $01af                                  ; $422e: $01 $af $01
    or b                                          ; $4231: $b0
    ld bc, $01b1                                  ; $4232: $01 $b1 $01
    or h                                          ; $4235: $b4
    ld bc, $01b5                                  ; $4236: $01 $b5 $01
    or [hl]                                       ; $4239: $b6
    ld bc, $01b8                                  ; $423a: $01 $b8 $01
    cp c                                          ; $423d: $b9
    ld bc, $01bb                                  ; $423e: $01 $bb $01
    cp h                                          ; $4241: $bc
    ld bc, $01be                                  ; $4242: $01 $be $01
    ret nz                                        ; $4245: $c0

    ld bc, $01c1                                  ; $4246: $01 $c1 $01
    jp $c401                                      ; $4249: $c3 $01 $c4


    ld bc, $01c6                                  ; $424c: $01 $c6 $01
    rst $00                                       ; $424f: $c7
    ld bc, $01c9                                  ; $4250: $01 $c9 $01
    jp z, $cc01                                   ; $4253: $ca $01 $cc

    ld bc, $01cd                                  ; $4256: $01 $cd $01
    rst $08                                       ; $4259: $cf
    ld bc, $01d0                                  ; $425a: $01 $d0 $01
    jp nc, $d301                                  ; $425d: $d2 $01 $d3

    ld bc, $0004                                  ; $4260: $01 $04 $00
    rrca                                          ; $4263: $0f
    nop                                           ; $4264: $00
    inc hl                                        ; $4265: $23
    nop                                           ; $4266: $00
    add hl, hl                                    ; $4267: $29
    nop                                           ; $4268: $00
    cpl                                           ; $4269: $2f
    nop                                           ; $426a: $00
    dec [hl]                                      ; $426b: $35
    nop                                           ; $426c: $00
    ld a, [hl-]                                   ; $426d: $3a
    nop                                           ; $426e: $00
    ld a, $00                                     ; $426f: $3e $00
    ld b, d                                       ; $4271: $42
    nop                                           ; $4272: $00
    ld b, l                                       ; $4273: $45
    nop                                           ; $4274: $00
    ld c, b                                       ; $4275: $48
    nop                                           ; $4276: $00
    ld c, e                                       ; $4277: $4b
    nop                                           ; $4278: $00
    ld c, a                                       ; $4279: $4f
    nop                                           ; $427a: $00
    ld d, d                                       ; $427b: $52
    nop                                           ; $427c: $00
    ld d, l                                       ; $427d: $55
    nop                                           ; $427e: $00
    ld e, b                                       ; $427f: $58
    nop                                           ; $4280: $00
    ld e, e                                       ; $4281: $5b
    nop                                           ; $4282: $00
    ld e, l                                       ; $4283: $5d
    nop                                           ; $4284: $00
    ld h, b                                       ; $4285: $60
    nop                                           ; $4286: $00
    ld h, d                                       ; $4287: $62
    nop                                           ; $4288: $00
    ld h, l                                       ; $4289: $65
    nop                                           ; $428a: $00
    ld h, a                                       ; $428b: $67
    nop                                           ; $428c: $00
    ld l, c                                       ; $428d: $69
    nop                                           ; $428e: $00
    ld l, h                                       ; $428f: $6c
    nop                                           ; $4290: $00
    ld l, [hl]                                    ; $4291: $6e
    nop                                           ; $4292: $00
    ld [hl], b                                    ; $4293: $70
    nop                                           ; $4294: $00
    ld [hl], d                                    ; $4295: $72
    nop                                           ; $4296: $00
    ld [hl], h                                    ; $4297: $74
    nop                                           ; $4298: $00
    halt                                          ; $4299: $76
    nop                                           ; $429a: $00
    ld a, c                                       ; $429b: $79
    nop                                           ; $429c: $00
    ld a, e                                       ; $429d: $7b
    nop                                           ; $429e: $00
    ld a, l                                       ; $429f: $7d
    nop                                           ; $42a0: $00
    ld a, a                                       ; $42a1: $7f
    nop                                           ; $42a2: $00
    add c                                         ; $42a3: $81
    nop                                           ; $42a4: $00
    add e                                         ; $42a5: $83
    nop                                           ; $42a6: $00
    add l                                         ; $42a7: $85
    nop                                           ; $42a8: $00
    add a                                         ; $42a9: $87
    nop                                           ; $42aa: $00
    adc c                                         ; $42ab: $89
    nop                                           ; $42ac: $00
    adc e                                         ; $42ad: $8b
    nop                                           ; $42ae: $00
    adc l                                         ; $42af: $8d
    nop                                           ; $42b0: $00
    adc a                                         ; $42b1: $8f
    nop                                           ; $42b2: $00
    sub c                                         ; $42b3: $91
    nop                                           ; $42b4: $00
    sub e                                         ; $42b5: $93
    nop                                           ; $42b6: $00
    sub l                                         ; $42b7: $95
    nop                                           ; $42b8: $00
    sub a                                         ; $42b9: $97
    nop                                           ; $42ba: $00
    sbc c                                         ; $42bb: $99
    nop                                           ; $42bc: $00
    sbc d                                         ; $42bd: $9a
    nop                                           ; $42be: $00
    sbc h                                         ; $42bf: $9c
    nop                                           ; $42c0: $00
    sbc a                                         ; $42c1: $9f
    nop                                           ; $42c2: $00
    and b                                         ; $42c3: $a0
    nop                                           ; $42c4: $00
    and d                                         ; $42c5: $a2
    nop                                           ; $42c6: $00
    and h                                         ; $42c7: $a4
    nop                                           ; $42c8: $00
    and [hl]                                      ; $42c9: $a6
    nop                                           ; $42ca: $00
    and a                                         ; $42cb: $a7
    nop                                           ; $42cc: $00
    xor d                                         ; $42cd: $aa
    nop                                           ; $42ce: $00
    xor e                                         ; $42cf: $ab
    nop                                           ; $42d0: $00
    xor l                                         ; $42d1: $ad
    nop                                           ; $42d2: $00
    xor a                                         ; $42d3: $af
    nop                                           ; $42d4: $00
    or c                                          ; $42d5: $b1
    nop                                           ; $42d6: $00
    or d                                          ; $42d7: $b2
    nop                                           ; $42d8: $00
    or h                                          ; $42d9: $b4
    nop                                           ; $42da: $00
    or [hl]                                       ; $42db: $b6
    nop                                           ; $42dc: $00
    cp b                                          ; $42dd: $b8
    nop                                           ; $42de: $00
    cp c                                          ; $42df: $b9
    nop                                           ; $42e0: $00
    cp e                                          ; $42e1: $bb
    nop                                           ; $42e2: $00
    cp l                                          ; $42e3: $bd
    nop                                           ; $42e4: $00
    cp a                                          ; $42e5: $bf
    nop                                           ; $42e6: $00
    pop bc                                        ; $42e7: $c1
    nop                                           ; $42e8: $00
    jp $c500                                      ; $42e9: $c3 $00 $c5


    nop                                           ; $42ec: $00
    add $00                                       ; $42ed: $c6 $00
    ret z                                         ; $42ef: $c8

    nop                                           ; $42f0: $00
    ret                                           ; $42f1: $c9


    nop                                           ; $42f2: $00
    rlc b                                         ; $42f3: $cb $00
    call $cf00                                    ; $42f5: $cd $00 $cf
    nop                                           ; $42f8: $00
    ret nc                                        ; $42f9: $d0

    nop                                           ; $42fa: $00
    jp nc, $d400                                  ; $42fb: $d2 $00 $d4

    nop                                           ; $42fe: $00
    sub $00                                       ; $42ff: $d6 $00
    rst $10                                       ; $4301: $d7
    nop                                           ; $4302: $00
    reti                                          ; $4303: $d9


    nop                                           ; $4304: $00
    db $db                                        ; $4305: $db
    nop                                           ; $4306: $00
    call c, $de00                                 ; $4307: $dc $00 $de
    nop                                           ; $430a: $00
    ldh [rP1], a                                  ; $430b: $e0 $00
    pop hl                                        ; $430d: $e1
    nop                                           ; $430e: $00
    db $e3                                        ; $430f: $e3
    nop                                           ; $4310: $00
    push hl                                       ; $4311: $e5
    nop                                           ; $4312: $00
    and $00                                       ; $4313: $e6 $00
    add sp, $00                                   ; $4315: $e8 $00
    ld [$ec00], a                                 ; $4317: $ea $00 $ec
    nop                                           ; $431a: $00
    xor $00                                       ; $431b: $ee $00
    rst $28                                       ; $431d: $ef
    nop                                           ; $431e: $00
    pop af                                        ; $431f: $f1
    nop                                           ; $4320: $00
    ld a, [c]                                     ; $4321: $f2
    nop                                           ; $4322: $00
    db $f4                                        ; $4323: $f4
    nop                                           ; $4324: $00
    or $00                                        ; $4325: $f6 $00
    rst $30                                       ; $4327: $f7
    nop                                           ; $4328: $00
    ld sp, hl                                     ; $4329: $f9
    nop                                           ; $432a: $00
    ei                                            ; $432b: $fb
    nop                                           ; $432c: $00
    db $fd                                        ; $432d: $fd
    nop                                           ; $432e: $00
    rst $38                                       ; $432f: $ff
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    ld bc, $0102                                  ; $4332: $01 $02 $01
    inc b                                         ; $4335: $04
    ld bc, $0105                                  ; $4336: $01 $05 $01
    rlca                                          ; $4339: $07
    ld bc, $0109                                  ; $433a: $01 $09 $01
    ld a, [bc]                                    ; $433d: $0a
    ld bc, $010c                                  ; $433e: $01 $0c $01
    ld c, $01                                     ; $4341: $0e $01

    db $10, $01

    db $11                                        ; $4345: $11
    db $01                                        ; $4346: $01

    db $13, $01, $14, $01

    ld d, $01                                     ; $434b: $16 $01

    db $18, $01, $19, $01

    dec de                                        ; $4351: $1b
    ld bc, $011c                                  ; $4352: $01 $1c $01
    rra                                           ; $4355: $1f
    ld bc, $0120                                  ; $4356: $01 $20 $01
    ld [hl+], a                                   ; $4359: $22
    ld bc, $0124                                  ; $435a: $01 $24 $01

    db $25, $01

    daa                                           ; $435f: $27
    ld bc, $0128                                  ; $4360: $01 $28 $01
    dec hl                                        ; $4363: $2b
    ld bc, $012c                                  ; $4364: $01 $2c $01
    ld l, $01                                     ; $4367: $2e $01
    cpl                                           ; $4369: $2f
    ld bc, $0131                                  ; $436a: $01 $31 $01
    ld [hl-], a                                   ; $436d: $32
    ld bc, HeaderTitle                            ; $436e: $01 $34 $01
    ld [hl], $01                                  ; $4371: $36 $01
    jr c, jr_03a_4376                             ; $4373: $38 $01

    add hl, sp                                    ; $4375: $39

jr_03a_4376:
    ld bc, $013b                                  ; $4376: $01 $3b $01
    dec a                                         ; $4379: $3d
    ld bc, HeaderManufacturerCode                 ; $437a: $01 $3f $01
    ld b, b                                       ; $437d: $40
    ld bc, $0142                                  ; $437e: $01 $42 $01
    ld b, h                                       ; $4381: $44
    ld bc, HeaderSGBFlag                          ; $4382: $01 $46 $01
    ld b, a                                       ; $4385: $47
    ld bc, HeaderROMSize                          ; $4386: $01 $48 $01
    ld c, e                                       ; $4389: $4b
    ld bc, HeaderMaskROMVersion                   ; $438a: $01 $4c $01
    ld c, [hl]                                    ; $438d: $4e
    ld bc, $014f                                  ; $438e: $01 $4f $01
    ld d, c                                       ; $4391: $51
    ld bc, $0153                                  ; $4392: $01 $53 $01
    ld d, l                                       ; $4395: $55
    ld bc, $0156                                  ; $4396: $01 $56 $01
    ld e, b                                       ; $4399: $58
    ld bc, $015a                                  ; $439a: $01 $5a $01
    ld e, e                                       ; $439d: $5b
    ld bc, $015d                                  ; $439e: $01 $5d $01
    ld e, a                                       ; $43a1: $5f
    ld bc, $0161                                  ; $43a2: $01 $61 $01
    ld h, d                                       ; $43a5: $62
    ld bc, $0164                                  ; $43a6: $01 $64 $01
    ld h, [hl]                                    ; $43a9: $66
    ld bc, $0168                                  ; $43aa: $01 $68 $01
    ld l, c                                       ; $43ad: $69
    ld bc, $016a                                  ; $43ae: $01 $6a $01
    ld l, h                                       ; $43b1: $6c
    ld bc, $016e                                  ; $43b2: $01 $6e $01
    ld [hl], b                                    ; $43b5: $70
    ld bc, $0171                                  ; $43b6: $01 $71 $01
    ld [hl], e                                    ; $43b9: $73
    ld bc, $0175                                  ; $43ba: $01 $75 $01
    halt                                          ; $43bd: $76
    ld bc, $0178                                  ; $43be: $01 $78 $01
    ld a, d                                       ; $43c1: $7a
    ld bc, $017c                                  ; $43c2: $01 $7c $01
    ld a, l                                       ; $43c5: $7d
    ld bc, $017f                                  ; $43c6: $01 $7f $01
    add c                                         ; $43c9: $81
    ld bc, $0183                                  ; $43ca: $01 $83 $01
    add h                                         ; $43cd: $84
    ld bc, $0186                                  ; $43ce: $01 $86 $01
    adc b                                         ; $43d1: $88
    ld bc, $018a                                  ; $43d2: $01 $8a $01
    adc e                                         ; $43d5: $8b
    ld bc, $018d                                  ; $43d6: $01 $8d $01
    adc a                                         ; $43d9: $8f
    ld bc, $0190                                  ; $43da: $01 $90 $01
    sub d                                         ; $43dd: $92
    ld bc, $0194                                  ; $43de: $01 $94 $01
    sub l                                         ; $43e1: $95
    ld bc, $0197                                  ; $43e2: $01 $97 $01
    sbc c                                         ; $43e5: $99
    ld bc, $019a                                  ; $43e6: $01 $9a $01
    sbc h                                         ; $43e9: $9c
    ld bc, $019e                                  ; $43ea: $01 $9e $01
    and b                                         ; $43ed: $a0
    ld bc, $01a1                                  ; $43ee: $01 $a1 $01
    and e                                         ; $43f1: $a3
    ld bc, $01a5                                  ; $43f2: $01 $a5 $01
    and [hl]                                      ; $43f5: $a6
    ld bc, $01a8                                  ; $43f6: $01 $a8 $01
    xor d                                         ; $43f9: $aa
    ld bc, $01ac                                  ; $43fa: $01 $ac $01
    xor l                                         ; $43fd: $ad
    ld bc, $01af                                  ; $43fe: $01 $af $01
    or c                                          ; $4401: $b1
    ld bc, $01b3                                  ; $4402: $01 $b3 $01
    or h                                          ; $4405: $b4
    ld bc, $01b6                                  ; $4406: $01 $b6 $01
    cp b                                          ; $4409: $b8
    ld bc, $01ba                                  ; $440a: $01 $ba $01
    cp e                                          ; $440d: $bb
    ld bc, $01bd                                  ; $440e: $01 $bd $01
    cp a                                          ; $4411: $bf
    ld bc, $01c0                                  ; $4412: $01 $c0 $01
    jp nz, $c401                                  ; $4415: $c2 $01 $c4

    ld bc, $01c5                                  ; $4418: $01 $c5 $01
    rst $00                                       ; $441b: $c7
    ld bc, $01c9                                  ; $441c: $01 $c9 $01
    rlc c                                         ; $441f: $cb $01
    call $ce01                                    ; $4421: $cd $01 $ce
    ld bc, $01d0                                  ; $4424: $01 $d0 $01
    jp nc, $d301                                  ; $4427: $d2 $01 $d3

    ld bc, $01d5                                  ; $442a: $01 $d5 $01
    rst $10                                       ; $442d: $d7
    ld bc, $01d9                                  ; $442e: $01 $d9 $01
    jp c, $dc01                                   ; $4431: $da $01 $dc

    ld bc, $01de                                  ; $4434: $01 $de $01
    rst $18                                       ; $4437: $df
    ld bc, $0004                                  ; $4438: $01 $04 $00
    ld e, $00                                     ; $443b: $1e $00
    ld h, $00                                     ; $443d: $26 $00
    dec l                                         ; $443f: $2d
    nop                                           ; $4440: $00
    inc [hl]                                      ; $4441: $34
    nop                                           ; $4442: $00
    jr c, jr_03a_4445                             ; $4443: $38 $00

jr_03a_4445:
    dec a                                         ; $4445: $3d
    nop                                           ; $4446: $00
    ld b, c                                       ; $4447: $41
    nop                                           ; $4448: $00
    ld b, [hl]                                    ; $4449: $46
    nop                                           ; $444a: $00
    ld c, c                                       ; $444b: $49
    nop                                           ; $444c: $00
    ld c, h                                       ; $444d: $4c
    nop                                           ; $444e: $00
    ld c, a                                       ; $444f: $4f
    nop                                           ; $4450: $00
    ld d, e                                       ; $4451: $53
    nop                                           ; $4452: $00
    ld d, [hl]                                    ; $4453: $56
    nop                                           ; $4454: $00
    ld e, c                                       ; $4455: $59
    nop                                           ; $4456: $00
    ld e, e                                       ; $4457: $5b
    nop                                           ; $4458: $00
    ld e, [hl]                                    ; $4459: $5e
    nop                                           ; $445a: $00
    ld h, c                                       ; $445b: $61
    nop                                           ; $445c: $00
    ld h, h                                       ; $445d: $64
    nop                                           ; $445e: $00
    ld h, a                                       ; $445f: $67
    nop                                           ; $4460: $00
    ld l, c                                       ; $4461: $69
    nop                                           ; $4462: $00
    ld l, e                                       ; $4463: $6b
    nop                                           ; $4464: $00
    ld l, [hl]                                    ; $4465: $6e
    nop                                           ; $4466: $00
    ld [hl], b                                    ; $4467: $70
    nop                                           ; $4468: $00
    ld [hl], e                                    ; $4469: $73
    nop                                           ; $446a: $00
    ld [hl], l                                    ; $446b: $75
    nop                                           ; $446c: $00
    ld [hl], a                                    ; $446d: $77
    nop                                           ; $446e: $00
    ld a, d                                       ; $446f: $7a
    nop                                           ; $4470: $00
    ld a, h                                       ; $4471: $7c
    nop                                           ; $4472: $00
    ld a, [hl]                                    ; $4473: $7e
    nop                                           ; $4474: $00
    add c                                         ; $4475: $81
    nop                                           ; $4476: $00
    add e                                         ; $4477: $83
    nop                                           ; $4478: $00
    add l                                         ; $4479: $85
    nop                                           ; $447a: $00
    add a                                         ; $447b: $87
    nop                                           ; $447c: $00
    adc c                                         ; $447d: $89
    nop                                           ; $447e: $00
    adc e                                         ; $447f: $8b
    nop                                           ; $4480: $00
    adc l                                         ; $4481: $8d
    nop                                           ; $4482: $00
    adc a                                         ; $4483: $8f
    nop                                           ; $4484: $00
    sub c                                         ; $4485: $91
    nop                                           ; $4486: $00
    sub h                                         ; $4487: $94
    nop                                           ; $4488: $00
    sub l                                         ; $4489: $95
    nop                                           ; $448a: $00
    sbc b                                         ; $448b: $98
    nop                                           ; $448c: $00
    sbc c                                         ; $448d: $99
    nop                                           ; $448e: $00
    sbc h                                         ; $448f: $9c
    nop                                           ; $4490: $00
    sbc [hl]                                      ; $4491: $9e
    nop                                           ; $4492: $00
    and b                                         ; $4493: $a0
    nop                                           ; $4494: $00
    and c                                         ; $4495: $a1
    nop                                           ; $4496: $00
    and e                                         ; $4497: $a3
    nop                                           ; $4498: $00
    and l                                         ; $4499: $a5
    nop                                           ; $449a: $00
    xor b                                         ; $449b: $a8
    nop                                           ; $449c: $00
    xor d                                         ; $449d: $aa
    nop                                           ; $449e: $00
    xor h                                         ; $449f: $ac
    nop                                           ; $44a0: $00
    xor l                                         ; $44a1: $ad
    nop                                           ; $44a2: $00
    or b                                          ; $44a3: $b0
    nop                                           ; $44a4: $00
    or c                                          ; $44a5: $b1
    nop                                           ; $44a6: $00
    or e                                          ; $44a7: $b3
    nop                                           ; $44a8: $00
    or [hl]                                       ; $44a9: $b6
    nop                                           ; $44aa: $00
    or a                                          ; $44ab: $b7
    nop                                           ; $44ac: $00
    cp c                                          ; $44ad: $b9
    nop                                           ; $44ae: $00
    cp e                                          ; $44af: $bb
    nop                                           ; $44b0: $00
    cp l                                          ; $44b1: $bd
    nop                                           ; $44b2: $00
    cp a                                          ; $44b3: $bf
    nop                                           ; $44b4: $00
    pop bc                                        ; $44b5: $c1
    nop                                           ; $44b6: $00
    jp $c500                                      ; $44b7: $c3 $00 $c5


    nop                                           ; $44ba: $00
    add $00                                       ; $44bb: $c6 $00
    ret z                                         ; $44bd: $c8

    nop                                           ; $44be: $00
    jp z, $cc00                                   ; $44bf: $ca $00 $cc

    nop                                           ; $44c2: $00
    adc $00                                       ; $44c3: $ce $00
    rst $08                                       ; $44c5: $cf
    nop                                           ; $44c6: $00
    pop de                                        ; $44c7: $d1
    nop                                           ; $44c8: $00
    call nc, $d600                                ; $44c9: $d4 $00 $d6
    nop                                           ; $44cc: $00
    ret c                                         ; $44cd: $d8

    nop                                           ; $44ce: $00
    reti                                          ; $44cf: $d9


    nop                                           ; $44d0: $00
    db $db                                        ; $44d1: $db
    nop                                           ; $44d2: $00
    db $dd                                        ; $44d3: $dd
    nop                                           ; $44d4: $00
    rst $18                                       ; $44d5: $df
    nop                                           ; $44d6: $00
    pop hl                                        ; $44d7: $e1
    nop                                           ; $44d8: $00
    ld [c], a                                     ; $44d9: $e2
    nop                                           ; $44da: $00
    db $e4                                        ; $44db: $e4
    nop                                           ; $44dc: $00
    and $00                                       ; $44dd: $e6 $00
    add sp, $00                                   ; $44df: $e8 $00
    ld [$eb00], a                                 ; $44e1: $ea $00 $eb
    nop                                           ; $44e4: $00
    xor $00                                       ; $44e5: $ee $00
    rst $28                                       ; $44e7: $ef
    nop                                           ; $44e8: $00
    pop af                                        ; $44e9: $f1
    nop                                           ; $44ea: $00
    di                                            ; $44eb: $f3
    nop                                           ; $44ec: $00
    push af                                       ; $44ed: $f5
    nop                                           ; $44ee: $00
    rst $30                                       ; $44ef: $f7
    nop                                           ; $44f0: $00
    ld sp, hl                                     ; $44f1: $f9
    nop                                           ; $44f2: $00
    ld a, [$fc00]                                 ; $44f3: $fa $00 $fc
    nop                                           ; $44f6: $00
    cp $00                                        ; $44f7: $fe $00
    nop                                           ; $44f9: $00
    ld bc, $0102                                  ; $44fa: $01 $02 $01
    inc bc                                        ; $44fd: $03
    ld bc, $0105                                  ; $44fe: $01 $05 $01
    rlca                                          ; $4501: $07
    ld bc, $0109                                  ; $4502: $01 $09 $01
    dec bc                                        ; $4505: $0b
    ld bc, $010c                                  ; $4506: $01 $0c $01
    ld c, $01                                     ; $4509: $0e $01
    db $10                                        ; $450b: $10
    ld bc, $0112                                  ; $450c: $01 $12 $01
    inc d                                         ; $450f: $14
    ld bc, $0116                                  ; $4510: $01 $16 $01
    jr jr_03a_4516                                ; $4513: $18 $01

    add hl, de                                    ; $4515: $19

jr_03a_4516:
    ld bc, $011b                                  ; $4516: $01 $1b $01
    dec e                                         ; $4519: $1d
    ld bc, $011f                                  ; $451a: $01 $1f $01
    jr nz, jr_03a_4520                            ; $451d: $20 $01

    inc hl                                        ; $451f: $23

jr_03a_4520:
    ld bc, $0125                                  ; $4520: $01 $25 $01
    ld h, $01                                     ; $4523: $26 $01
    jr z, jr_03a_4528                             ; $4525: $28 $01

    ld a, [hl+]                                   ; $4527: $2a

jr_03a_4528:
    ld bc, $012c                                  ; $4528: $01 $2c $01
    ld l, $01                                     ; $452b: $2e $01
    cpl                                           ; $452d: $2f
    ld bc, $0131                                  ; $452e: $01 $31 $01
    inc sp                                        ; $4531: $33
    ld bc, $0135                                  ; $4532: $01 $35 $01
    scf                                           ; $4535: $37
    ld bc, $0138                                  ; $4536: $01 $38 $01
    ld a, [hl-]                                   ; $4539: $3a
    ld bc, $013c                                  ; $453a: $01 $3c $01
    ld a, $01                                     ; $453d: $3e $01
    ld b, b                                       ; $453f: $40
    ld bc, $0142                                  ; $4540: $01 $42 $01
    ld b, e                                       ; $4543: $43
    ld bc, HeaderSGBFlag                          ; $4544: $01 $46 $01
    ld b, a                                       ; $4547: $47
    ld bc, HeaderRAMSize                          ; $4548: $01 $49 $01
    ld c, e                                       ; $454b: $4b
    ld bc, HeaderComplementCheck                  ; $454c: $01 $4d $01
    ld c, a                                       ; $454f: $4f
    ld bc, $0150                                  ; $4550: $01 $50 $01
    ld d, d                                       ; $4553: $52
    ld bc, $0154                                  ; $4554: $01 $54 $01
    ld d, [hl]                                    ; $4557: $56
    ld bc, $0158                                  ; $4558: $01 $58 $01
    ld e, d                                       ; $455b: $5a
    ld bc, $015b                                  ; $455c: $01 $5b $01
    ld e, l                                       ; $455f: $5d
    ld bc, $015f                                  ; $4560: $01 $5f $01
    ld h, c                                       ; $4563: $61
    ld bc, $0163                                  ; $4564: $01 $63 $01
    ld h, l                                       ; $4567: $65
    ld bc, $0167                                  ; $4568: $01 $67 $01
    ld l, c                                       ; $456b: $69
    ld bc, $016b                                  ; $456c: $01 $6b $01
    ld l, h                                       ; $456f: $6c
    ld bc, $016e                                  ; $4570: $01 $6e $01
    ld [hl], b                                    ; $4573: $70
    ld bc, $0172                                  ; $4574: $01 $72 $01
    ld [hl], e                                    ; $4577: $73
    ld bc, $0175                                  ; $4578: $01 $75 $01
    ld [hl], a                                    ; $457b: $77
    ld bc, $0179                                  ; $457c: $01 $79 $01
    ld a, e                                       ; $457f: $7b
    ld bc, $017d                                  ; $4580: $01 $7d $01
    ld a, [hl]                                    ; $4583: $7e
    ld bc, $0180                                  ; $4584: $01 $80 $01
    add d                                         ; $4587: $82
    ld bc, $0184                                  ; $4588: $01 $84 $01
    add [hl]                                      ; $458b: $86
    ld bc, $0188                                  ; $458c: $01 $88 $01
    adc d                                         ; $458f: $8a
    ld bc, $018c                                  ; $4590: $01 $8c $01
    adc l                                         ; $4593: $8d
    ld bc, $018f                                  ; $4594: $01 $8f $01
    sub c                                         ; $4597: $91
    ld bc, $0193                                  ; $4598: $01 $93 $01
    sub l                                         ; $459b: $95
    ld bc, $0197                                  ; $459c: $01 $97 $01
    sbc c                                         ; $459f: $99
    ld bc, $019b                                  ; $45a0: $01 $9b $01
    sbc h                                         ; $45a3: $9c
    ld bc, $019e                                  ; $45a4: $01 $9e $01
    and b                                         ; $45a7: $a0
    ld bc, $01a2                                  ; $45a8: $01 $a2 $01
    and h                                         ; $45ab: $a4
    ld bc, $01a6                                  ; $45ac: $01 $a6 $01
    xor b                                         ; $45af: $a8
    ld bc, $01a9                                  ; $45b0: $01 $a9 $01
    xor e                                         ; $45b3: $ab
    ld bc, $01ad                                  ; $45b4: $01 $ad $01
    xor a                                         ; $45b7: $af
    ld bc, $01b1                                  ; $45b8: $01 $b1 $01
    or e                                          ; $45bb: $b3
    ld bc, $01b4                                  ; $45bc: $01 $b4 $01
    or [hl]                                       ; $45bf: $b6
    ld bc, $01b8                                  ; $45c0: $01 $b8 $01
    cp d                                          ; $45c3: $ba
    ld bc, $01bc                                  ; $45c4: $01 $bc $01
    cp [hl]                                       ; $45c7: $be
    ld bc, $01c0                                  ; $45c8: $01 $c0 $01
    jp nz, $c401                                  ; $45cb: $c2 $01 $c4

    ld bc, $01c5                                  ; $45ce: $01 $c5 $01
    rst $00                                       ; $45d1: $c7
    ld bc, $01c9                                  ; $45d2: $01 $c9 $01
    rlc c                                         ; $45d5: $cb $01
    call $cf01                                    ; $45d7: $cd $01 $cf
    ld bc, $01d1                                  ; $45da: $01 $d1 $01
    db $d3                                        ; $45dd: $d3
    ld bc, $01d5                                  ; $45de: $01 $d5 $01
    sub $01                                       ; $45e1: $d6 $01
    ret c                                         ; $45e3: $d8

    ld bc, $01da                                  ; $45e4: $01 $da $01
    call c, $de01                                 ; $45e7: $dc $01 $de
    ld bc, $0003                                  ; $45ea: $01 $03 $00
    rla                                           ; $45ed: $17
    nop                                           ; $45ee: $00
    rra                                           ; $45ef: $1f
    nop                                           ; $45f0: $00
    ld h, $00                                     ; $45f1: $26 $00
    inc l                                         ; $45f3: $2c
    nop                                           ; $45f4: $00
    ld [hl-], a                                   ; $45f5: $32
    nop                                           ; $45f6: $00
    jr c, jr_03a_45f9                             ; $45f7: $38 $00

jr_03a_45f9:
    dec a                                         ; $45f9: $3d
    nop                                           ; $45fa: $00
    ld b, c                                       ; $45fb: $41
    nop                                           ; $45fc: $00
    ld b, l                                       ; $45fd: $45
    nop                                           ; $45fe: $00
    ld c, c                                       ; $45ff: $49
    nop                                           ; $4600: $00
    ld c, l                                       ; $4601: $4d
    nop                                           ; $4602: $00
    ld d, c                                       ; $4603: $51
    nop                                           ; $4604: $00
    ld d, h                                       ; $4605: $54
    nop                                           ; $4606: $00
    ld d, a                                       ; $4607: $57
    nop                                           ; $4608: $00
    ld e, e                                       ; $4609: $5b
    nop                                           ; $460a: $00
    ld e, l                                       ; $460b: $5d
    nop                                           ; $460c: $00
    ld h, c                                       ; $460d: $61
    nop                                           ; $460e: $00
    ld h, e                                       ; $460f: $63
    nop                                           ; $4610: $00
    ld h, a                                       ; $4611: $67
    nop                                           ; $4612: $00
    ld l, c                                       ; $4613: $69
    nop                                           ; $4614: $00
    ld l, h                                       ; $4615: $6c
    nop                                           ; $4616: $00
    ld l, a                                       ; $4617: $6f
    nop                                           ; $4618: $00
    ld [hl], d                                    ; $4619: $72
    nop                                           ; $461a: $00
    ld [hl], l                                    ; $461b: $75
    nop                                           ; $461c: $00
    ld [hl], a                                    ; $461d: $77
    nop                                           ; $461e: $00
    ld a, d                                       ; $461f: $7a
    nop                                           ; $4620: $00
    ld a, l                                       ; $4621: $7d
    nop                                           ; $4622: $00
    ld a, a                                       ; $4623: $7f
    nop                                           ; $4624: $00
    add c                                         ; $4625: $81
    nop                                           ; $4626: $00
    add h                                         ; $4627: $84
    nop                                           ; $4628: $00
    add a                                         ; $4629: $87
    nop                                           ; $462a: $00
    adc c                                         ; $462b: $89
    nop                                           ; $462c: $00
    adc e                                         ; $462d: $8b
    nop                                           ; $462e: $00
    adc [hl]                                      ; $462f: $8e
    nop                                           ; $4630: $00
    sub b                                         ; $4631: $90
    nop                                           ; $4632: $00
    sub d                                         ; $4633: $92
    nop                                           ; $4634: $00
    sub l                                         ; $4635: $95
    nop                                           ; $4636: $00
    sub a                                         ; $4637: $97
    nop                                           ; $4638: $00
    sbc c                                         ; $4639: $99
    nop                                           ; $463a: $00
    sbc h                                         ; $463b: $9c
    nop                                           ; $463c: $00
    sbc [hl]                                      ; $463d: $9e
    nop                                           ; $463e: $00
    and b                                         ; $463f: $a0
    nop                                           ; $4640: $00
    and e                                         ; $4641: $a3
    nop                                           ; $4642: $00
    and h                                         ; $4643: $a4
    nop                                           ; $4644: $00
    and a                                         ; $4645: $a7
    nop                                           ; $4646: $00
    xor c                                         ; $4647: $a9
    nop                                           ; $4648: $00
    xor e                                         ; $4649: $ab
    nop                                           ; $464a: $00
    xor l                                         ; $464b: $ad
    nop                                           ; $464c: $00
    or b                                          ; $464d: $b0
    nop                                           ; $464e: $00
    or c                                          ; $464f: $b1
    nop                                           ; $4650: $00
    or h                                          ; $4651: $b4
    nop                                           ; $4652: $00
    or [hl]                                       ; $4653: $b6
    nop                                           ; $4654: $00
    cp b                                          ; $4655: $b8
    nop                                           ; $4656: $00
    cp d                                          ; $4657: $ba
    nop                                           ; $4658: $00
    cp h                                          ; $4659: $bc
    nop                                           ; $465a: $00
    cp [hl]                                       ; $465b: $be
    nop                                           ; $465c: $00
    pop bc                                        ; $465d: $c1
    nop                                           ; $465e: $00
    jp $c400                                      ; $465f: $c3 $00 $c4


    nop                                           ; $4662: $00
    add $00                                       ; $4663: $c6 $00
    ret z                                         ; $4665: $c8

    nop                                           ; $4666: $00
    jp z, $cd00                                   ; $4667: $ca $00 $cd

    nop                                           ; $466a: $00
    adc $00                                       ; $466b: $ce $00
    pop de                                        ; $466d: $d1
    nop                                           ; $466e: $00
    db $d3                                        ; $466f: $d3
    nop                                           ; $4670: $00
    call nc, $d700                                ; $4671: $d4 $00 $d7
    nop                                           ; $4674: $00
    ret c                                         ; $4675: $d8

    nop                                           ; $4676: $00
    db $db                                        ; $4677: $db
    nop                                           ; $4678: $00
    call c, $de00                                 ; $4679: $dc $00 $de
    nop                                           ; $467c: $00
    pop hl                                        ; $467d: $e1
    nop                                           ; $467e: $00
    db $e3                                        ; $467f: $e3
    nop                                           ; $4680: $00
    db $e4                                        ; $4681: $e4
    nop                                           ; $4682: $00
    and $00                                       ; $4683: $e6 $00
    add sp, $00                                   ; $4685: $e8 $00
    ld [$ec00], a                                 ; $4687: $ea $00 $ec
    nop                                           ; $468a: $00
    xor $00                                       ; $468b: $ee $00
    ldh a, [rP1]                                  ; $468d: $f0 $00
    pop af                                        ; $468f: $f1
    nop                                           ; $4690: $00
    di                                            ; $4691: $f3
    nop                                           ; $4692: $00
    push af                                       ; $4693: $f5
    nop                                           ; $4694: $00
    rst $30                                       ; $4695: $f7
    nop                                           ; $4696: $00
    ld a, [$fb00]                                 ; $4697: $fa $00 $fb
    nop                                           ; $469a: $00
    db $fd                                        ; $469b: $fd
    nop                                           ; $469c: $00
    rst $38                                       ; $469d: $ff
    nop                                           ; $469e: $00
    ld bc, $0301                                  ; $469f: $01 $01 $03
    ld bc, HeaderLogo                             ; $46a2: $01 $04 $01
    ld b, $01                                     ; $46a5: $06 $01
    ld [$0a01], sp                                ; $46a7: $08 $01 $0a
    ld bc, $010c                                  ; $46aa: $01 $0c $01
    ld c, $01                                     ; $46ad: $0e $01
    rrca                                          ; $46af: $0f
    ld bc, $0111                                  ; $46b0: $01 $11 $01
    inc de                                        ; $46b3: $13
    ld bc, $0115                                  ; $46b4: $01 $15 $01
    rla                                           ; $46b7: $17
    ld bc, $0119                                  ; $46b8: $01 $19 $01
    ld a, [de]                                    ; $46bb: $1a
    ld bc, $011c                                  ; $46bc: $01 $1c $01
    rra                                           ; $46bf: $1f
    ld bc, $0120                                  ; $46c0: $01 $20 $01
    ld [hl+], a                                   ; $46c3: $22
    ld bc, $0124                                  ; $46c4: $01 $24 $01
    ld h, $01                                     ; $46c7: $26 $01
    jr z, jr_03a_46cc                             ; $46c9: $28 $01

    add hl, hl                                    ; $46cb: $29

jr_03a_46cc:
    ld bc, $012b                                  ; $46cc: $01 $2b $01
    dec l                                         ; $46cf: $2d
    ld bc, $012f                                  ; $46d0: $01 $2f $01
    ld sp, $3201                                  ; $46d3: $31 $01 $32
    ld bc, HeaderTitle                            ; $46d6: $01 $34 $01
    ld [hl], $01                                  ; $46d9: $36 $01
    jr c, jr_03a_46de                             ; $46db: $38 $01

    ld a, [hl-]                                   ; $46dd: $3a

jr_03a_46de:
    ld bc, $013b                                  ; $46de: $01 $3b $01
    ld a, $01                                     ; $46e1: $3e $01
    ccf                                           ; $46e3: $3f
    ld bc, $0141                                  ; $46e4: $01 $41 $01
    ld b, e                                       ; $46e7: $43
    ld bc, HeaderNewLicenseeCode                  ; $46e8: $01 $44 $01
    ld b, [hl]                                    ; $46eb: $46
    ld bc, HeaderROMSize                          ; $46ec: $01 $48 $01
    ld c, d                                       ; $46ef: $4a
    ld bc, HeaderMaskROMVersion                   ; $46f0: $01 $4c $01
    ld c, l                                       ; $46f3: $4d
    ld bc, $0150                                  ; $46f4: $01 $50 $01
    ld d, c                                       ; $46f7: $51
    ld bc, $0153                                  ; $46f8: $01 $53 $01
    ld d, l                                       ; $46fb: $55
    ld bc, $0157                                  ; $46fc: $01 $57 $01
    ld e, b                                       ; $46ff: $58
    ld bc, $015a                                  ; $4700: $01 $5a $01
    ld e, h                                       ; $4703: $5c
    ld bc, $015d                                  ; $4704: $01 $5d $01
    ld e, a                                       ; $4707: $5f
    ld bc, $0161                                  ; $4708: $01 $61 $01
    ld h, e                                       ; $470b: $63
    ld bc, $0165                                  ; $470c: $01 $65 $01
    ld h, a                                       ; $470f: $67
    ld bc, $0168                                  ; $4710: $01 $68 $01
    ld l, e                                       ; $4713: $6b
    ld bc, $016c                                  ; $4714: $01 $6c $01
    ld l, [hl]                                    ; $4717: $6e
    ld bc, $0170                                  ; $4718: $01 $70 $01
    ld [hl], c                                    ; $471b: $71
    ld bc, $0173                                  ; $471c: $01 $73 $01
    ld [hl], l                                    ; $471f: $75
    ld bc, $0176                                  ; $4720: $01 $76 $01
    ld a, b                                       ; $4723: $78
    ld bc, $017a                                  ; $4724: $01 $7a $01
    ld a, h                                       ; $4727: $7c
    ld bc, $017e                                  ; $4728: $01 $7e $01
    add b                                         ; $472b: $80
    ld bc, $0181                                  ; $472c: $01 $81 $01
    add e                                         ; $472f: $83
    ld bc, $0185                                  ; $4730: $01 $85 $01
    add a                                         ; $4733: $87
    ld bc, $0189                                  ; $4734: $01 $89 $01
    adc d                                         ; $4737: $8a
    ld bc, $018c                                  ; $4738: $01 $8c $01
    adc [hl]                                      ; $473b: $8e
    ld bc, $0190                                  ; $473c: $01 $90 $01
    sub d                                         ; $473f: $92
    ld bc, $0193                                  ; $4740: $01 $93 $01
    sub l                                         ; $4743: $95
    ld bc, $0197                                  ; $4744: $01 $97 $01
    sbc b                                         ; $4747: $98
    ld bc, $019b                                  ; $4748: $01 $9b $01
    sbc h                                         ; $474b: $9c
    ld bc, $019e                                  ; $474c: $01 $9e $01
    and b                                         ; $474f: $a0
    ld bc, $01a2                                  ; $4750: $01 $a2 $01
    and e                                         ; $4753: $a3
    ld bc, $01a5                                  ; $4754: $01 $a5 $01
    and a                                         ; $4757: $a7
    ld bc, $01a8                                  ; $4758: $01 $a8 $01
    xor e                                         ; $475b: $ab
    ld bc, $01ac                                  ; $475c: $01 $ac $01
    xor [hl]                                      ; $475f: $ae
    ld bc, $01af                                  ; $4760: $01 $af $01
    or d                                          ; $4763: $b2
    ld bc, $01b3                                  ; $4764: $01 $b3 $01
    or l                                          ; $4767: $b5
    ld bc, $01b7                                  ; $4768: $01 $b7 $01
    cp c                                          ; $476b: $b9
    ld bc, $01ba                                  ; $476c: $01 $ba $01
    cp h                                          ; $476f: $bc
    ld bc, $01be                                  ; $4770: $01 $be $01
    ret nz                                        ; $4773: $c0

    ld bc, $01c1                                  ; $4774: $01 $c1 $01
    call nz, $c501                                ; $4777: $c4 $01 $c5
    ld bc, $01c7                                  ; $477a: $01 $c7 $01
    ret                                           ; $477d: $c9


    ld bc, $01ca                                  ; $477e: $01 $ca $01
    call z, $ce01                                 ; $4781: $cc $01 $ce
    ld bc, $01d0                                  ; $4784: $01 $d0 $01
    jp nc, $d301                                  ; $4787: $d2 $01 $d3

    ld bc, $01d5                                  ; $478a: $01 $d5 $01
    rst $10                                       ; $478d: $d7
    ld bc, $01d9                                  ; $478e: $01 $d9 $01
    db $db                                        ; $4791: $db
    ld bc, $01dc                                  ; $4792: $01 $dc $01
    sbc $01                                       ; $4795: $de $01
    rst $18                                       ; $4797: $df
    ld bc, $0003                                  ; $4798: $01 $03 $00
    dec de                                        ; $479b: $1b
    nop                                           ; $479c: $00
    inc h                                         ; $479d: $24
    nop                                           ; $479e: $00
    ld a, [hl+]                                   ; $479f: $2a
    nop                                           ; $47a0: $00
    jr nc, jr_03a_47a3                            ; $47a1: $30 $00

jr_03a_47a3:
    scf                                           ; $47a3: $37
    nop                                           ; $47a4: $00
    inc a                                         ; $47a5: $3c
    nop                                           ; $47a6: $00
    ld b, c                                       ; $47a7: $41
    nop                                           ; $47a8: $00
    ld b, [hl]                                    ; $47a9: $46
    nop                                           ; $47aa: $00
    ld c, c                                       ; $47ab: $49
    nop                                           ; $47ac: $00
    ld c, l                                       ; $47ad: $4d
    nop                                           ; $47ae: $00
    ld d, c                                       ; $47af: $51
    nop                                           ; $47b0: $00
    ld d, l                                       ; $47b1: $55
    nop                                           ; $47b2: $00
    ld e, b                                       ; $47b3: $58
    nop                                           ; $47b4: $00
    ld e, e                                       ; $47b5: $5b
    nop                                           ; $47b6: $00
    ld e, a                                       ; $47b7: $5f
    nop                                           ; $47b8: $00
    ld h, d                                       ; $47b9: $62
    nop                                           ; $47ba: $00
    ld h, l                                       ; $47bb: $65
    nop                                           ; $47bc: $00
    ld l, b                                       ; $47bd: $68
    nop                                           ; $47be: $00
    ld l, e                                       ; $47bf: $6b
    nop                                           ; $47c0: $00
    ld l, [hl]                                    ; $47c1: $6e
    nop                                           ; $47c2: $00
    ld [hl], c                                    ; $47c3: $71
    nop                                           ; $47c4: $00
    ld [hl], h                                    ; $47c5: $74
    nop                                           ; $47c6: $00
    ld [hl], a                                    ; $47c7: $77
    nop                                           ; $47c8: $00
    ld a, d                                       ; $47c9: $7a
    nop                                           ; $47ca: $00
    ld a, h                                       ; $47cb: $7c
    nop                                           ; $47cc: $00
    ld a, a                                       ; $47cd: $7f
    nop                                           ; $47ce: $00
    add c                                         ; $47cf: $81
    nop                                           ; $47d0: $00
    add h                                         ; $47d1: $84
    nop                                           ; $47d2: $00
    add a                                         ; $47d3: $87
    nop                                           ; $47d4: $00
    adc c                                         ; $47d5: $89
    nop                                           ; $47d6: $00
    adc h                                         ; $47d7: $8c
    nop                                           ; $47d8: $00
    adc [hl]                                      ; $47d9: $8e
    nop                                           ; $47da: $00
    sub c                                         ; $47db: $91
    nop                                           ; $47dc: $00
    sub e                                         ; $47dd: $93
    nop                                           ; $47de: $00
    sub l                                         ; $47df: $95
    nop                                           ; $47e0: $00
    sbc b                                         ; $47e1: $98
    nop                                           ; $47e2: $00
    sbc d                                         ; $47e3: $9a
    nop                                           ; $47e4: $00
    sbc h                                         ; $47e5: $9c
    nop                                           ; $47e6: $00
    sbc a                                         ; $47e7: $9f
    nop                                           ; $47e8: $00
    and c                                         ; $47e9: $a1
    nop                                           ; $47ea: $00
    and h                                         ; $47eb: $a4
    nop                                           ; $47ec: $00
    and [hl]                                      ; $47ed: $a6
    nop                                           ; $47ee: $00
    xor b                                         ; $47ef: $a8
    nop                                           ; $47f0: $00
    xor d                                         ; $47f1: $aa
    nop                                           ; $47f2: $00
    xor l                                         ; $47f3: $ad
    nop                                           ; $47f4: $00
    xor a                                         ; $47f5: $af
    nop                                           ; $47f6: $00
    or c                                          ; $47f7: $b1
    nop                                           ; $47f8: $00
    or h                                          ; $47f9: $b4
    nop                                           ; $47fa: $00
    or [hl]                                       ; $47fb: $b6
    nop                                           ; $47fc: $00
    cp b                                          ; $47fd: $b8
    nop                                           ; $47fe: $00
    cp d                                          ; $47ff: $ba
    nop                                           ; $4800: $00
    cp h                                          ; $4801: $bc
    nop                                           ; $4802: $00
    cp a                                          ; $4803: $bf
    nop                                           ; $4804: $00
    pop bc                                        ; $4805: $c1
    nop                                           ; $4806: $00
    jp $c600                                      ; $4807: $c3 $00 $c6


    nop                                           ; $480a: $00
    rst $00                                       ; $480b: $c7
    nop                                           ; $480c: $00
    jp z, $cc00                                   ; $480d: $ca $00 $cc

    nop                                           ; $4810: $00
    adc $00                                       ; $4811: $ce $00
    ret nc                                        ; $4813: $d0

    nop                                           ; $4814: $00
    db $d3                                        ; $4815: $d3
    nop                                           ; $4816: $00
    push de                                       ; $4817: $d5
    nop                                           ; $4818: $00
    sub $00                                       ; $4819: $d6 $00
    reti                                          ; $481b: $d9


    nop                                           ; $481c: $00
    db $db                                        ; $481d: $db
    nop                                           ; $481e: $00
    db $dd                                        ; $481f: $dd
    nop                                           ; $4820: $00
    rst $18                                       ; $4821: $df
    nop                                           ; $4822: $00
    pop hl                                        ; $4823: $e1
    nop                                           ; $4824: $00
    db $e3                                        ; $4825: $e3
    nop                                           ; $4826: $00
    push hl                                       ; $4827: $e5
    nop                                           ; $4828: $00
    rst $20                                       ; $4829: $e7
    nop                                           ; $482a: $00
    jp hl                                         ; $482b: $e9


    nop                                           ; $482c: $00
    db $ec                                        ; $482d: $ec
    nop                                           ; $482e: $00
    db $ed                                        ; $482f: $ed
    nop                                           ; $4830: $00
    rst $28                                       ; $4831: $ef
    nop                                           ; $4832: $00
    ld a, [c]                                     ; $4833: $f2
    nop                                           ; $4834: $00
    db $f4                                        ; $4835: $f4
    nop                                           ; $4836: $00
    or $00                                        ; $4837: $f6 $00
    ld hl, sp+$00                                 ; $4839: $f8 $00
    ld a, [$fc00]                                 ; $483b: $fa $00 $fc
    nop                                           ; $483e: $00
    cp $00                                        ; $483f: $fe $00
    nop                                           ; $4841: $00
    ld bc, $0102                                  ; $4842: $01 $02 $01
    inc b                                         ; $4845: $04
    ld bc, $0106                                  ; $4846: $01 $06 $01
    ld [$0a01], sp                                ; $4849: $08 $01 $0a
    ld bc, $010c                                  ; $484c: $01 $0c $01
    ld c, $01                                     ; $484f: $0e $01
    db $10                                        ; $4851: $10
    ld bc, $0112                                  ; $4852: $01 $12 $01
    inc d                                         ; $4855: $14
    ld bc, $0116                                  ; $4856: $01 $16 $01
    jr jr_03a_485c                                ; $4859: $18 $01

    ld a, [de]                                    ; $485b: $1a

jr_03a_485c:
    ld bc, $011c                                  ; $485c: $01 $1c $01
    ld e, $01                                     ; $485f: $1e $01
    jr nz, jr_03a_4864                            ; $4861: $20 $01

    ld [hl+], a                                   ; $4863: $22

jr_03a_4864:
    ld bc, $0124                                  ; $4864: $01 $24 $01
    ld h, $01                                     ; $4867: $26 $01
    jr z, jr_03a_486c                             ; $4869: $28 $01

    ld a, [hl+]                                   ; $486b: $2a

jr_03a_486c:
    ld bc, $012c                                  ; $486c: $01 $2c $01
    ld l, $01                                     ; $486f: $2e $01
    jr nc, jr_03a_4874                            ; $4871: $30 $01

    ld [hl-], a                                   ; $4873: $32

jr_03a_4874:
    ld bc, HeaderTitle                            ; $4874: $01 $34 $01
    ld [hl], $01                                  ; $4877: $36 $01
    jr c, jr_03a_487c                             ; $4879: $38 $01

    ld a, [hl-]                                   ; $487b: $3a

jr_03a_487c:
    ld bc, $013c                                  ; $487c: $01 $3c $01
    ld a, $01                                     ; $487f: $3e $01
    ld b, b                                       ; $4881: $40
    ld bc, $0142                                  ; $4882: $01 $42 $01
    ld b, h                                       ; $4885: $44
    ld bc, HeaderSGBFlag                          ; $4886: $01 $46 $01
    ld c, b                                       ; $4889: $48
    ld bc, HeaderDestinationCode                  ; $488a: $01 $4a $01
    ld c, h                                       ; $488d: $4c
    ld bc, HeaderGlobalChecksum                   ; $488e: $01 $4e $01
    ld d, b                                       ; $4891: $50
    ld bc, $0152                                  ; $4892: $01 $52 $01
    ld d, h                                       ; $4895: $54
    ld bc, $0156                                  ; $4896: $01 $56 $01
    ld e, b                                       ; $4899: $58
    ld bc, $015a                                  ; $489a: $01 $5a $01
    ld e, h                                       ; $489d: $5c
    ld bc, $015e                                  ; $489e: $01 $5e $01
    ld h, b                                       ; $48a1: $60
    ld bc, $0162                                  ; $48a2: $01 $62 $01
    ld h, h                                       ; $48a5: $64
    ld bc, $0166                                  ; $48a6: $01 $66 $01
    ld l, b                                       ; $48a9: $68
    ld bc, $016a                                  ; $48aa: $01 $6a $01
    ld l, h                                       ; $48ad: $6c
    ld bc, $016e                                  ; $48ae: $01 $6e $01
    ld [hl], b                                    ; $48b1: $70
    ld bc, $0172                                  ; $48b2: $01 $72 $01
    ld [hl], h                                    ; $48b5: $74
    ld bc, $0176                                  ; $48b6: $01 $76 $01
    ld a, b                                       ; $48b9: $78
    ld bc, $017a                                  ; $48ba: $01 $7a $01
    ld a, h                                       ; $48bd: $7c
    ld bc, $017e                                  ; $48be: $01 $7e $01
    add b                                         ; $48c1: $80
    ld bc, $0182                                  ; $48c2: $01 $82 $01
    add h                                         ; $48c5: $84
    ld bc, $0185                                  ; $48c6: $01 $85 $01
    adc b                                         ; $48c9: $88
    ld bc, $018a                                  ; $48ca: $01 $8a $01
    adc h                                         ; $48cd: $8c
    ld bc, $018e                                  ; $48ce: $01 $8e $01
    sub b                                         ; $48d1: $90
    ld bc, $0192                                  ; $48d2: $01 $92 $01
    sub h                                         ; $48d5: $94
    ld bc, $0196                                  ; $48d6: $01 $96 $01
    sub a                                         ; $48d9: $97
    ld bc, $0199                                  ; $48da: $01 $99 $01
    sbc e                                         ; $48dd: $9b
    ld bc, $019e                                  ; $48de: $01 $9e $01
    and b                                         ; $48e1: $a0
    ld bc, $01a2                                  ; $48e2: $01 $a2 $01
    and h                                         ; $48e5: $a4
    ld bc, $01a6                                  ; $48e6: $01 $a6 $01
    xor b                                         ; $48e9: $a8
    ld bc, $01aa                                  ; $48ea: $01 $aa $01
    xor h                                         ; $48ed: $ac
    ld bc, $01ad                                  ; $48ee: $01 $ad $01
    xor a                                         ; $48f1: $af
    ld bc, $01b2                                  ; $48f2: $01 $b2 $01
    or e                                          ; $48f5: $b3
    ld bc, $01b5                                  ; $48f6: $01 $b5 $01
    or a                                          ; $48f9: $b7
    ld bc, $01ba                                  ; $48fa: $01 $ba $01
    cp h                                          ; $48fd: $bc
    ld bc, $01bd                                  ; $48fe: $01 $bd $01
    cp a                                          ; $4901: $bf
    ld bc, $01c1                                  ; $4902: $01 $c1 $01
    jp $c601                                      ; $4905: $c3 $01 $c6


    ld bc, $01c8                                  ; $4908: $01 $c8 $01
    ret                                           ; $490b: $c9


    ld bc, $01cc                                  ; $490c: $01 $cc $01
    adc $01                                       ; $490f: $ce $01
    rst $08                                       ; $4911: $cf
    ld bc, $01d1                                  ; $4912: $01 $d1 $01
    db $d3                                        ; $4915: $d3
    ld bc, $01d5                                  ; $4916: $01 $d5 $01
    rst $10                                       ; $4919: $d7
    ld bc, $01d9                                  ; $491a: $01 $d9 $01
    call c, $de01                                 ; $491d: $dc $01 $de
    ld bc, $0003                                  ; $4920: $01 $03 $00
    rra                                           ; $4923: $1f
    nop                                           ; $4924: $00
    jr z, jr_03a_4927                             ; $4925: $28 $00

jr_03a_4927:
    cpl                                           ; $4927: $2f
    nop                                           ; $4928: $00
    dec [hl]                                      ; $4929: $35
    nop                                           ; $492a: $00
    inc a                                         ; $492b: $3c
    nop                                           ; $492c: $00
    ld b, c                                       ; $492d: $41
    nop                                           ; $492e: $00
    ld b, [hl]                                    ; $492f: $46
    nop                                           ; $4930: $00
    ld c, d                                       ; $4931: $4a
    nop                                           ; $4932: $00
    ld c, [hl]                                    ; $4933: $4e
    nop                                           ; $4934: $00
    ld d, d                                       ; $4935: $52
    nop                                           ; $4936: $00
    ld d, [hl]                                    ; $4937: $56
    nop                                           ; $4938: $00
    ld e, d                                       ; $4939: $5a
    nop                                           ; $493a: $00
    ld e, [hl]                                    ; $493b: $5e
    nop                                           ; $493c: $00
    ld h, c                                       ; $493d: $61
    nop                                           ; $493e: $00
    ld h, h                                       ; $493f: $64
    nop                                           ; $4940: $00
    ld h, a                                       ; $4941: $67
    nop                                           ; $4942: $00
    ld l, e                                       ; $4943: $6b
    nop                                           ; $4944: $00
    ld l, [hl]                                    ; $4945: $6e
    nop                                           ; $4946: $00
    ld [hl], c                                    ; $4947: $71
    nop                                           ; $4948: $00
    ld [hl], h                                    ; $4949: $74
    nop                                           ; $494a: $00
    ld [hl], a                                    ; $494b: $77
    nop                                           ; $494c: $00
    ld a, d                                       ; $494d: $7a
    nop                                           ; $494e: $00
    ld a, h                                       ; $494f: $7c
    nop                                           ; $4950: $00
    ld a, a                                       ; $4951: $7f
    nop                                           ; $4952: $00
    add d                                         ; $4953: $82
    nop                                           ; $4954: $00
    add h                                         ; $4955: $84
    nop                                           ; $4956: $00
    adc b                                         ; $4957: $88
    nop                                           ; $4958: $00
    adc d                                         ; $4959: $8a
    nop                                           ; $495a: $00
    adc l                                         ; $495b: $8d
    nop                                           ; $495c: $00
    adc a                                         ; $495d: $8f
    nop                                           ; $495e: $00
    sub d                                         ; $495f: $92
    nop                                           ; $4960: $00
    sub l                                         ; $4961: $95
    nop                                           ; $4962: $00
    sub a                                         ; $4963: $97
    nop                                           ; $4964: $00
    sbc d                                         ; $4965: $9a
    nop                                           ; $4966: $00
    sbc h                                         ; $4967: $9c
    nop                                           ; $4968: $00
    sbc a                                         ; $4969: $9f
    nop                                           ; $496a: $00
    and d                                         ; $496b: $a2
    nop                                           ; $496c: $00
    and h                                         ; $496d: $a4
    nop                                           ; $496e: $00
    and [hl]                                      ; $496f: $a6
    nop                                           ; $4970: $00
    xor b                                         ; $4971: $a8
    nop                                           ; $4972: $00
    xor e                                         ; $4973: $ab
    nop                                           ; $4974: $00
    xor [hl]                                      ; $4975: $ae
    nop                                           ; $4976: $00
    or b                                          ; $4977: $b0
    nop                                           ; $4978: $00
    or d                                          ; $4979: $b2
    nop                                           ; $497a: $00
    or l                                          ; $497b: $b5
    nop                                           ; $497c: $00
    or a                                          ; $497d: $b7
    nop                                           ; $497e: $00
    cp c                                          ; $497f: $b9
    nop                                           ; $4980: $00
    cp e                                          ; $4981: $bb
    nop                                           ; $4982: $00
    cp a                                          ; $4983: $bf
    nop                                           ; $4984: $00
    pop bc                                        ; $4985: $c1
    nop                                           ; $4986: $00
    jp $c600                                      ; $4987: $c3 $00 $c6


    nop                                           ; $498a: $00
    ret z                                         ; $498b: $c8

    nop                                           ; $498c: $00
    jp z, $cd00                                   ; $498d: $ca $00 $cd

    nop                                           ; $4990: $00
    rst $08                                       ; $4991: $cf
    nop                                           ; $4992: $00
    pop de                                        ; $4993: $d1
    nop                                           ; $4994: $00
    db $d3                                        ; $4995: $d3
    nop                                           ; $4996: $00
    push de                                       ; $4997: $d5
    nop                                           ; $4998: $00
    ret c                                         ; $4999: $d8

    nop                                           ; $499a: $00
    jp c, $dc00                                   ; $499b: $da $00 $dc

    nop                                           ; $499e: $00
    rst $18                                       ; $499f: $df
    nop                                           ; $49a0: $00
    pop hl                                        ; $49a1: $e1
    nop                                           ; $49a2: $00
    db $e3                                        ; $49a3: $e3
    nop                                           ; $49a4: $00
    push hl                                       ; $49a5: $e5
    nop                                           ; $49a6: $00
    add sp, $00                                   ; $49a7: $e8 $00
    ld [$ec00], a                                 ; $49a9: $ea $00 $ec
    nop                                           ; $49ac: $00
    xor $00                                       ; $49ad: $ee $00
    pop af                                        ; $49af: $f1
    nop                                           ; $49b0: $00
    di                                            ; $49b1: $f3
    nop                                           ; $49b2: $00
    push af                                       ; $49b3: $f5
    nop                                           ; $49b4: $00
    rst $30                                       ; $49b5: $f7
    nop                                           ; $49b6: $00
    ld sp, hl                                     ; $49b7: $f9
    nop                                           ; $49b8: $00
    ei                                            ; $49b9: $fb
    nop                                           ; $49ba: $00
    cp $00                                        ; $49bb: $fe $00
    nop                                           ; $49bd: $00
    ld bc, $0102                                  ; $49be: $01 $02 $01
    inc b                                         ; $49c1: $04
    ld bc, $0107                                  ; $49c2: $01 $07 $01
    add hl, bc                                    ; $49c5: $09
    ld bc, $010b                                  ; $49c6: $01 $0b $01
    dec c                                         ; $49c9: $0d
    ld bc, $010f                                  ; $49ca: $01 $0f $01
    ld de, $1401                                  ; $49cd: $11 $01 $14
    ld bc, $0116                                  ; $49d0: $01 $16 $01
    jr jr_03a_49d6                                ; $49d3: $18 $01

    ld a, [de]                                    ; $49d5: $1a

jr_03a_49d6:
    ld bc, $011c                                  ; $49d6: $01 $1c $01
    rra                                           ; $49d9: $1f
    ld bc, $0121                                  ; $49da: $01 $21 $01
    inc hl                                        ; $49dd: $23
    ld bc, $0125                                  ; $49de: $01 $25 $01
    jr z, jr_03a_49e4                             ; $49e1: $28 $01

    add hl, hl                                    ; $49e3: $29

jr_03a_49e4:
    ld bc, $012c                                  ; $49e4: $01 $2c $01
    ld l, $01                                     ; $49e7: $2e $01
    ld sp, $3301                                  ; $49e9: $31 $01 $33
    ld bc, $0135                                  ; $49ec: $01 $35 $01
    scf                                           ; $49ef: $37
    ld bc, $0139                                  ; $49f0: $01 $39 $01
    dec sp                                        ; $49f3: $3b
    ld bc, $013d                                  ; $49f4: $01 $3d $01
    ld b, b                                       ; $49f7: $40
    ld bc, $0142                                  ; $49f8: $01 $42 $01
    ld b, h                                       ; $49fb: $44
    ld bc, HeaderSGBFlag                          ; $49fc: $01 $46 $01
    ld c, c                                       ; $49ff: $49
    ld bc, HeaderDestinationCode                  ; $4a00: $01 $4a $01
    ld c, l                                       ; $4a03: $4d
    ld bc, $014f                                  ; $4a04: $01 $4f $01
    ld d, c                                       ; $4a07: $51
    ld bc, $0153                                  ; $4a08: $01 $53 $01
    ld d, l                                       ; $4a0b: $55
    ld bc, $0158                                  ; $4a0c: $01 $58 $01
    ld e, d                                       ; $4a0f: $5a
    ld bc, $015c                                  ; $4a10: $01 $5c $01
    ld e, [hl]                                    ; $4a13: $5e
    ld bc, $0160                                  ; $4a14: $01 $60 $01
    ld h, d                                       ; $4a17: $62
    ld bc, $0164                                  ; $4a18: $01 $64 $01
    ld h, [hl]                                    ; $4a1b: $66
    ld bc, $0169                                  ; $4a1c: $01 $69 $01
    ld l, e                                       ; $4a1f: $6b
    ld bc, $016d                                  ; $4a20: $01 $6d $01
    ld l, a                                       ; $4a23: $6f
    ld bc, $0172                                  ; $4a24: $01 $72 $01
    ld [hl], h                                    ; $4a27: $74
    ld bc, $0176                                  ; $4a28: $01 $76 $01
    ld a, b                                       ; $4a2b: $78
    ld bc, $017a                                  ; $4a2c: $01 $7a $01
    ld a, l                                       ; $4a2f: $7d
    ld bc, $017f                                  ; $4a30: $01 $7f $01
    add c                                         ; $4a33: $81
    ld bc, $0183                                  ; $4a34: $01 $83 $01
    add l                                         ; $4a37: $85
    ld bc, $0188                                  ; $4a38: $01 $88 $01
    adc d                                         ; $4a3b: $8a
    ld bc, $018c                                  ; $4a3c: $01 $8c $01
    adc a                                         ; $4a3f: $8f
    ld bc, $0190                                  ; $4a40: $01 $90 $01
    sub e                                         ; $4a43: $93
    ld bc, $0195                                  ; $4a44: $01 $95 $01
    sub a                                         ; $4a47: $97
    ld bc, $0199                                  ; $4a48: $01 $99 $01
    sbc e                                         ; $4a4b: $9b
    ld bc, $019d                                  ; $4a4c: $01 $9d $01
    and b                                         ; $4a4f: $a0
    ld bc, $01a2                                  ; $4a50: $01 $a2 $01
    and h                                         ; $4a53: $a4
    ld bc, $01a6                                  ; $4a54: $01 $a6 $01
    xor b                                         ; $4a57: $a8
    ld bc, $01ab                                  ; $4a58: $01 $ab $01
    xor l                                         ; $4a5b: $ad
    ld bc, $01af                                  ; $4a5c: $01 $af $01
    or d                                          ; $4a5f: $b2
    ld bc, $01b4                                  ; $4a60: $01 $b4 $01
    or [hl]                                       ; $4a63: $b6
    ld bc, $01b8                                  ; $4a64: $01 $b8 $01
    cp d                                          ; $4a67: $ba
    ld bc, $01bc                                  ; $4a68: $01 $bc $01
    cp a                                          ; $4a6b: $bf
    ld bc, $01c1                                  ; $4a6c: $01 $c1 $01
    jp $c501                                      ; $4a6f: $c3 $01 $c5


    ld bc, $01c7                                  ; $4a72: $01 $c7 $01
    jp z, $cc01                                   ; $4a75: $ca $01 $cc

    ld bc, $01ce                                  ; $4a78: $01 $ce $01
    ret nc                                        ; $4a7b: $d0

    ld bc, $01d2                                  ; $4a7c: $01 $d2 $01
    push de                                       ; $4a7f: $d5
    ld bc, $01d7                                  ; $4a80: $01 $d7 $01
    reti                                          ; $4a83: $d9


    ld bc, $01db                                  ; $4a84: $01 $db $01
    db $dd                                        ; $4a87: $dd
    ld bc, $0003                                  ; $4a88: $01 $03 $00
    ld [hl+], a                                   ; $4a8b: $22
    nop                                           ; $4a8c: $00
    dec hl                                        ; $4a8d: $2b
    nop                                           ; $4a8e: $00
    inc sp                                        ; $4a8f: $33
    nop                                           ; $4a90: $00
    ld a, [hl-]                                   ; $4a91: $3a
    nop                                           ; $4a92: $00
    ld b, b                                       ; $4a93: $40
    nop                                           ; $4a94: $00
    ld b, l                                       ; $4a95: $45
    nop                                           ; $4a96: $00
    ld c, d                                       ; $4a97: $4a
    nop                                           ; $4a98: $00
    ld c, [hl]                                    ; $4a99: $4e
    nop                                           ; $4a9a: $00
    ld d, d                                       ; $4a9b: $52
    nop                                           ; $4a9c: $00
    ld d, a                                       ; $4a9d: $57
    nop                                           ; $4a9e: $00
    ld e, d                                       ; $4a9f: $5a
    nop                                           ; $4aa0: $00
    ld e, [hl]                                    ; $4aa1: $5e
    nop                                           ; $4aa2: $00
    ld h, d                                       ; $4aa3: $62
    nop                                           ; $4aa4: $00
    ld h, [hl]                                    ; $4aa5: $66
    nop                                           ; $4aa6: $00
    ld l, c                                       ; $4aa7: $69
    nop                                           ; $4aa8: $00
    ld l, l                                       ; $4aa9: $6d
    nop                                           ; $4aaa: $00
    ld [hl], b                                    ; $4aab: $70
    nop                                           ; $4aac: $00
    ld [hl], e                                    ; $4aad: $73
    nop                                           ; $4aae: $00
    halt                                          ; $4aaf: $76
    nop                                           ; $4ab0: $00
    ld a, c                                       ; $4ab1: $79
    nop                                           ; $4ab2: $00
    ld a, h                                       ; $4ab3: $7c
    nop                                           ; $4ab4: $00
    ld a, a                                       ; $4ab5: $7f
    nop                                           ; $4ab6: $00
    add d                                         ; $4ab7: $82
    nop                                           ; $4ab8: $00
    add l                                         ; $4ab9: $85
    nop                                           ; $4aba: $00
    adc b                                         ; $4abb: $88
    nop                                           ; $4abc: $00
    adc e                                         ; $4abd: $8b
    nop                                           ; $4abe: $00
    adc [hl]                                      ; $4abf: $8e
    nop                                           ; $4ac0: $00
    sub c                                         ; $4ac1: $91
    nop                                           ; $4ac2: $00
    sub e                                         ; $4ac3: $93
    nop                                           ; $4ac4: $00
    sub [hl]                                      ; $4ac5: $96
    nop                                           ; $4ac6: $00
    sbc c                                         ; $4ac7: $99
    nop                                           ; $4ac8: $00
    sbc e                                         ; $4ac9: $9b
    nop                                           ; $4aca: $00
    sbc [hl]                                      ; $4acb: $9e
    nop                                           ; $4acc: $00
    and c                                         ; $4acd: $a1
    nop                                           ; $4ace: $00
    and h                                         ; $4acf: $a4
    nop                                           ; $4ad0: $00
    and a                                         ; $4ad1: $a7
    nop                                           ; $4ad2: $00
    xor c                                         ; $4ad3: $a9
    nop                                           ; $4ad4: $00
    xor e                                         ; $4ad5: $ab
    nop                                           ; $4ad6: $00
    xor [hl]                                      ; $4ad7: $ae
    nop                                           ; $4ad8: $00
    or c                                          ; $4ad9: $b1
    nop                                           ; $4ada: $00
    or h                                          ; $4adb: $b4
    nop                                           ; $4adc: $00
    or [hl]                                       ; $4add: $b6
    nop                                           ; $4ade: $00
    cp b                                          ; $4adf: $b8
    nop                                           ; $4ae0: $00
    cp e                                          ; $4ae1: $bb
    nop                                           ; $4ae2: $00
    cp [hl]                                       ; $4ae3: $be
    nop                                           ; $4ae4: $00
    ret nz                                        ; $4ae5: $c0

    nop                                           ; $4ae6: $00
    jp $c500                                      ; $4ae7: $c3 $00 $c5


    nop                                           ; $4aea: $00
    ret z                                         ; $4aeb: $c8

    nop                                           ; $4aec: $00
    rlc b                                         ; $4aed: $cb $00
    call $cf00                                    ; $4aef: $cd $00 $cf
    nop                                           ; $4af2: $00
    pop de                                        ; $4af3: $d1
    nop                                           ; $4af4: $00
    call nc, $d700                                ; $4af5: $d4 $00 $d7
    nop                                           ; $4af8: $00
    reti                                          ; $4af9: $d9


    nop                                           ; $4afa: $00
    db $db                                        ; $4afb: $db
    nop                                           ; $4afc: $00
    sbc $00                                       ; $4afd: $de $00
    ldh [rP1], a                                  ; $4aff: $e0 $00
    ld [c], a                                     ; $4b01: $e2
    nop                                           ; $4b02: $00
    push hl                                       ; $4b03: $e5
    nop                                           ; $4b04: $00
    rst $20                                       ; $4b05: $e7
    nop                                           ; $4b06: $00
    jp hl                                         ; $4b07: $e9


    nop                                           ; $4b08: $00
    db $ec                                        ; $4b09: $ec
    nop                                           ; $4b0a: $00
    xor $00                                       ; $4b0b: $ee $00
    pop af                                        ; $4b0d: $f1
    nop                                           ; $4b0e: $00
    di                                            ; $4b0f: $f3
    nop                                           ; $4b10: $00
    or $00                                        ; $4b11: $f6 $00
    ld hl, sp+$00                                 ; $4b13: $f8 $00
    ld a, [$fc00]                                 ; $4b15: $fa $00 $fc
    nop                                           ; $4b18: $00
    rst $38                                       ; $4b19: $ff
    nop                                           ; $4b1a: $00
    ld bc, $0401                                  ; $4b1b: $01 $01 $04
    ld bc, $0106                                  ; $4b1e: $01 $06 $01
    add hl, bc                                    ; $4b21: $09
    ld bc, $010b                                  ; $4b22: $01 $0b $01
    dec c                                         ; $4b25: $0d
    ld bc, $0110                                  ; $4b26: $01 $10 $01
    ld [de], a                                    ; $4b29: $12
    ld bc, $0114                                  ; $4b2a: $01 $14 $01
    rla                                           ; $4b2d: $17
    ld bc, $0119                                  ; $4b2e: $01 $19 $01
    inc e                                         ; $4b31: $1c
    ld bc, $011e                                  ; $4b32: $01 $1e $01
    jr nz, jr_03a_4b38                            ; $4b35: $20 $01

    inc hl                                        ; $4b37: $23

jr_03a_4b38:
    ld bc, $0125                                  ; $4b38: $01 $25 $01
    jr z, jr_03a_4b3e                             ; $4b3b: $28 $01

    add hl, hl                                    ; $4b3d: $29

jr_03a_4b3e:
    ld bc, $012c                                  ; $4b3e: $01 $2c $01
    cpl                                           ; $4b41: $2f
    ld bc, $0131                                  ; $4b42: $01 $31 $01
    inc sp                                        ; $4b45: $33
    ld bc, $0136                                  ; $4b46: $01 $36 $01
    jr c, jr_03a_4b4c                             ; $4b49: $38 $01

    ld a, [hl-]                                   ; $4b4b: $3a

jr_03a_4b4c:
    ld bc, $013c                                  ; $4b4c: $01 $3c $01
    ccf                                           ; $4b4f: $3f
    ld bc, $0141                                  ; $4b50: $01 $41 $01
    ld b, h                                       ; $4b53: $44
    ld bc, HeaderSGBFlag                          ; $4b54: $01 $46 $01
    ld c, c                                       ; $4b57: $49
    ld bc, HeaderOldLicenseeCode                  ; $4b58: $01 $4b $01
    ld c, l                                       ; $4b5b: $4d
    ld bc, $014f                                  ; $4b5c: $01 $4f $01
    ld d, d                                       ; $4b5f: $52
    ld bc, $0154                                  ; $4b60: $01 $54 $01
    ld d, [hl]                                    ; $4b63: $56
    ld bc, $0159                                  ; $4b64: $01 $59 $01
    ld e, e                                       ; $4b67: $5b
    ld bc, $015e                                  ; $4b68: $01 $5e $01
    ld h, b                                       ; $4b6b: $60
    ld bc, $0162                                  ; $4b6c: $01 $62 $01
    ld h, l                                       ; $4b6f: $65
    ld bc, $0167                                  ; $4b70: $01 $67 $01
    ld l, c                                       ; $4b73: $69
    ld bc, $016c                                  ; $4b74: $01 $6c $01
    ld l, [hl]                                    ; $4b77: $6e
    ld bc, $0171                                  ; $4b78: $01 $71 $01
    ld [hl], d                                    ; $4b7b: $72
    ld bc, $0175                                  ; $4b7c: $01 $75 $01
    ld a, b                                       ; $4b7f: $78
    ld bc, $017a                                  ; $4b80: $01 $7a $01
    ld a, h                                       ; $4b83: $7c
    ld bc, $017f                                  ; $4b84: $01 $7f $01
    add c                                         ; $4b87: $81
    ld bc, $0183                                  ; $4b88: $01 $83 $01
    add [hl]                                      ; $4b8b: $86
    ld bc, $0188                                  ; $4b8c: $01 $88 $01
    adc e                                         ; $4b8f: $8b
    ld bc, $018d                                  ; $4b90: $01 $8d $01
    adc a                                         ; $4b93: $8f
    ld bc, $0192                                  ; $4b94: $01 $92 $01
    sub h                                         ; $4b97: $94
    ld bc, $0196                                  ; $4b98: $01 $96 $01
    sbc c                                         ; $4b9b: $99
    ld bc, $019b                                  ; $4b9c: $01 $9b $01
    sbc l                                         ; $4b9f: $9d
    ld bc, $01a0                                  ; $4ba0: $01 $a0 $01
    and d                                         ; $4ba3: $a2
    ld bc, $01a4                                  ; $4ba4: $01 $a4 $01
    and a                                         ; $4ba7: $a7
    ld bc, $01a9                                  ; $4ba8: $01 $a9 $01
    xor h                                         ; $4bab: $ac
    ld bc, $01ae                                  ; $4bac: $01 $ae $01
    or b                                          ; $4baf: $b0
    ld bc, $01b3                                  ; $4bb0: $01 $b3 $01
    or l                                          ; $4bb3: $b5
    ld bc, $01b8                                  ; $4bb4: $01 $b8 $01
    cp d                                          ; $4bb7: $ba
    ld bc, $01bc                                  ; $4bb8: $01 $bc $01
    cp a                                          ; $4bbb: $bf
    ld bc, $01c1                                  ; $4bbc: $01 $c1 $01
    jp $c601                                      ; $4bbf: $c3 $01 $c6


    ld bc, $01c8                                  ; $4bc2: $01 $c8 $01
    rlc c                                         ; $4bc5: $cb $01
    call $cf01                                    ; $4bc7: $cd $01 $cf
    ld bc, $01d2                                  ; $4bca: $01 $d2 $01
    call nc, $d701                                ; $4bcd: $d4 $01 $d7
    ld bc, $01d9                                  ; $4bd0: $01 $d9 $01
    db $db                                        ; $4bd3: $db
    ld bc, $01de                                  ; $4bd4: $01 $de $01
    inc b                                         ; $4bd7: $04
    nop                                           ; $4bd8: $00
    dec h                                         ; $4bd9: $25
    nop                                           ; $4bda: $00
    ld l, $00                                     ; $4bdb: $2e $00
    dec [hl]                                      ; $4bdd: $35
    nop                                           ; $4bde: $00
    dec a                                         ; $4bdf: $3d
    nop                                           ; $4be0: $00
    ld b, e                                       ; $4be1: $43
    nop                                           ; $4be2: $00
    ld c, b                                       ; $4be3: $48
    nop                                           ; $4be4: $00
    ld c, l                                       ; $4be5: $4d
    nop                                           ; $4be6: $00
    ld d, d                                       ; $4be7: $52
    nop                                           ; $4be8: $00
    ld d, [hl]                                    ; $4be9: $56
    nop                                           ; $4bea: $00
    ld e, d                                       ; $4beb: $5a
    nop                                           ; $4bec: $00
    ld e, [hl]                                    ; $4bed: $5e
    nop                                           ; $4bee: $00
    ld h, d                                       ; $4bef: $62
    nop                                           ; $4bf0: $00
    ld h, [hl]                                    ; $4bf1: $66
    nop                                           ; $4bf2: $00
    ld l, d                                       ; $4bf3: $6a
    nop                                           ; $4bf4: $00
    ld l, l                                       ; $4bf5: $6d
    nop                                           ; $4bf6: $00
    ld [hl], b                                    ; $4bf7: $70
    nop                                           ; $4bf8: $00
    ld [hl], h                                    ; $4bf9: $74
    nop                                           ; $4bfa: $00
    ld [hl], a                                    ; $4bfb: $77
    nop                                           ; $4bfc: $00
    ld a, e                                       ; $4bfd: $7b
    nop                                           ; $4bfe: $00
    ld a, [hl]                                    ; $4bff: $7e
    nop                                           ; $4c00: $00
    add c                                         ; $4c01: $81
    nop                                           ; $4c02: $00
    add h                                         ; $4c03: $84
    nop                                           ; $4c04: $00
    add a                                         ; $4c05: $87
    nop                                           ; $4c06: $00
    adc d                                         ; $4c07: $8a
    nop                                           ; $4c08: $00
    adc l                                         ; $4c09: $8d
    nop                                           ; $4c0a: $00
    sub b                                         ; $4c0b: $90
    nop                                           ; $4c0c: $00
    sub e                                         ; $4c0d: $93
    nop                                           ; $4c0e: $00
    sub [hl]                                      ; $4c0f: $96
    nop                                           ; $4c10: $00
    sbc c                                         ; $4c11: $99
    nop                                           ; $4c12: $00
    sbc h                                         ; $4c13: $9c
    nop                                           ; $4c14: $00
    sbc a                                         ; $4c15: $9f
    nop                                           ; $4c16: $00
    and c                                         ; $4c17: $a1
    nop                                           ; $4c18: $00
    and l                                         ; $4c19: $a5
    nop                                           ; $4c1a: $00
    and a                                         ; $4c1b: $a7
    nop                                           ; $4c1c: $00
    xor d                                         ; $4c1d: $aa
    nop                                           ; $4c1e: $00
    xor l                                         ; $4c1f: $ad
    nop                                           ; $4c20: $00
    xor a                                         ; $4c21: $af
    nop                                           ; $4c22: $00
    or d                                          ; $4c23: $b2
    nop                                           ; $4c24: $00
    or l                                          ; $4c25: $b5
    nop                                           ; $4c26: $00
    cp b                                          ; $4c27: $b8
    nop                                           ; $4c28: $00
    cp d                                          ; $4c29: $ba
    nop                                           ; $4c2a: $00
    cp l                                          ; $4c2b: $bd
    nop                                           ; $4c2c: $00
    ret nz                                        ; $4c2d: $c0

    nop                                           ; $4c2e: $00
    jp $c500                                      ; $4c2f: $c3 $00 $c5


    nop                                           ; $4c32: $00
    ret z                                         ; $4c33: $c8

    nop                                           ; $4c34: $00
    jp z, $cd00                                   ; $4c35: $ca $00 $cd

    nop                                           ; $4c38: $00
    ret nc                                        ; $4c39: $d0

    nop                                           ; $4c3a: $00
    jp nc, $d500                                  ; $4c3b: $d2 $00 $d5

    nop                                           ; $4c3e: $00
    rst $10                                       ; $4c3f: $d7
    nop                                           ; $4c40: $00
    jp c, $dc00                                   ; $4c41: $da $00 $dc

    nop                                           ; $4c44: $00
    rst $18                                       ; $4c45: $df
    nop                                           ; $4c46: $00
    pop hl                                        ; $4c47: $e1
    nop                                           ; $4c48: $00
    db $e4                                        ; $4c49: $e4
    nop                                           ; $4c4a: $00
    rst $20                                       ; $4c4b: $e7
    nop                                           ; $4c4c: $00
    jp hl                                         ; $4c4d: $e9


    nop                                           ; $4c4e: $00
    db $ec                                        ; $4c4f: $ec
    nop                                           ; $4c50: $00
    xor $00                                       ; $4c51: $ee $00
    pop af                                        ; $4c53: $f1
    nop                                           ; $4c54: $00
    di                                            ; $4c55: $f3
    nop                                           ; $4c56: $00
    or $00                                        ; $4c57: $f6 $00
    ld sp, hl                                     ; $4c59: $f9
    nop                                           ; $4c5a: $00
    db $fc                                        ; $4c5b: $fc
    nop                                           ; $4c5c: $00
    cp $00                                        ; $4c5d: $fe $00
    nop                                           ; $4c5f: $00
    ld bc, $0103                                  ; $4c60: $01 $03 $01
    dec b                                         ; $4c63: $05
    ld bc, $0108                                  ; $4c64: $01 $08 $01
    dec bc                                        ; $4c67: $0b
    ld bc, $010d                                  ; $4c68: $01 $0d $01
    db $10                                        ; $4c6b: $10
    ld bc, $0112                                  ; $4c6c: $01 $12 $01
    inc d                                         ; $4c6f: $14
    ld bc, $0117                                  ; $4c70: $01 $17 $01
    add hl, de                                    ; $4c73: $19
    ld bc, $011c                                  ; $4c74: $01 $1c $01
    ld e, $01                                     ; $4c77: $1e $01
    ld hl, $2301                                  ; $4c79: $21 $01 $23
    ld bc, $0126                                  ; $4c7c: $01 $26 $01
    jr z, jr_03a_4c82                             ; $4c7f: $28 $01

    dec hl                                        ; $4c81: $2b

jr_03a_4c82:
    ld bc, $012e                                  ; $4c82: $01 $2e $01
    jr nc, jr_03a_4c88                            ; $4c85: $30 $01

    ld [hl-], a                                   ; $4c87: $32

jr_03a_4c88:
    ld bc, $0135                                  ; $4c88: $01 $35 $01
    jr c, jr_03a_4c8e                             ; $4c8b: $38 $01

    ld a, [hl-]                                   ; $4c8d: $3a

jr_03a_4c8e:
    ld bc, $013d                                  ; $4c8e: $01 $3d $01
    ccf                                           ; $4c91: $3f
    ld bc, $0142                                  ; $4c92: $01 $42 $01
    ld b, h                                       ; $4c95: $44
    ld bc, HeaderSGBFlag                          ; $4c96: $01 $46 $01
    ld c, c                                       ; $4c99: $49
    ld bc, HeaderOldLicenseeCode                  ; $4c9a: $01 $4b $01
    ld c, [hl]                                    ; $4c9d: $4e
    ld bc, $0150                                  ; $4c9e: $01 $50 $01
    ld d, e                                       ; $4ca1: $53
    ld bc, $0155                                  ; $4ca2: $01 $55 $01
    ld e, b                                       ; $4ca5: $58
    ld bc, $015b                                  ; $4ca6: $01 $5b $01
    ld e, l                                       ; $4ca9: $5d
    ld bc, $0160                                  ; $4caa: $01 $60 $01
    ld h, d                                       ; $4cad: $62
    ld bc, $0165                                  ; $4cae: $01 $65 $01
    ld h, a                                       ; $4cb1: $67
    ld bc, $016a                                  ; $4cb2: $01 $6a $01
    ld l, l                                       ; $4cb5: $6d
    ld bc, $016f                                  ; $4cb6: $01 $6f $01
    ld [hl], c                                    ; $4cb9: $71
    ld bc, $0174                                  ; $4cba: $01 $74 $01
    halt                                          ; $4cbd: $76
    ld bc, $0179                                  ; $4cbe: $01 $79 $01
    ld a, e                                       ; $4cc1: $7b
    ld bc, $017e                                  ; $4cc2: $01 $7e $01
    add b                                         ; $4cc5: $80
    ld bc, $0183                                  ; $4cc6: $01 $83 $01
    add l                                         ; $4cc9: $85
    ld bc, $0188                                  ; $4cca: $01 $88 $01
    adc d                                         ; $4ccd: $8a
    ld bc, $018d                                  ; $4cce: $01 $8d $01
    adc a                                         ; $4cd1: $8f
    ld bc, $0192                                  ; $4cd2: $01 $92 $01
    sub h                                         ; $4cd5: $94
    ld bc, $0197                                  ; $4cd6: $01 $97 $01
    sbc c                                         ; $4cd9: $99
    ld bc, $019c                                  ; $4cda: $01 $9c $01
    sbc a                                         ; $4cdd: $9f
    ld bc, $01a1                                  ; $4cde: $01 $a1 $01
    and h                                         ; $4ce1: $a4
    ld bc, $01a6                                  ; $4ce2: $01 $a6 $01
    xor c                                         ; $4ce5: $a9
    ld bc, $01ab                                  ; $4ce6: $01 $ab $01
    xor [hl]                                      ; $4ce9: $ae
    ld bc, $01b0                                  ; $4cea: $01 $b0 $01
    or e                                          ; $4ced: $b3
    ld bc, $01b5                                  ; $4cee: $01 $b5 $01
    cp b                                          ; $4cf1: $b8
    ld bc, $01bb                                  ; $4cf2: $01 $bb $01
    cp l                                          ; $4cf5: $bd
    ld bc, $01c0                                  ; $4cf6: $01 $c0 $01
    jp nz, $c401                                  ; $4cf9: $c2 $01 $c4

    ld bc, $01c7                                  ; $4cfc: $01 $c7 $01
    jp z, $cc01                                   ; $4cff: $ca $01 $cc

    ld bc, $01cf                                  ; $4d02: $01 $cf $01
    pop de                                        ; $4d05: $d1
    ld bc, $01d4                                  ; $4d06: $01 $d4 $01
    rst $10                                       ; $4d09: $d7
    ld bc, $01d9                                  ; $4d0a: $01 $d9 $01
    call c, $de01                                 ; $4d0d: $dc $01 $de
    ld bc, $0004                                  ; $4d10: $01 $04 $00
    jr z, jr_03a_4d15                             ; $4d13: $28 $00

jr_03a_4d15:
    cpl                                           ; $4d15: $2f
    nop                                           ; $4d16: $00
    ld a, [hl-]                                   ; $4d17: $3a
    nop                                           ; $4d18: $00
    ld b, b                                       ; $4d19: $40
    nop                                           ; $4d1a: $00
    ld b, a                                       ; $4d1b: $47
    nop                                           ; $4d1c: $00
    ld c, h                                       ; $4d1d: $4c
    nop                                           ; $4d1e: $00
    ld d, c                                       ; $4d1f: $51
    nop                                           ; $4d20: $00
    ld d, [hl]                                    ; $4d21: $56
    nop                                           ; $4d22: $00
    ld e, e                                       ; $4d23: $5b
    nop                                           ; $4d24: $00
    ld e, a                                       ; $4d25: $5f
    nop                                           ; $4d26: $00
    ld h, e                                       ; $4d27: $63
    nop                                           ; $4d28: $00
    ld h, a                                       ; $4d29: $67
    nop                                           ; $4d2a: $00
    ld l, e                                       ; $4d2b: $6b
    nop                                           ; $4d2c: $00
    ld l, a                                       ; $4d2d: $6f
    nop                                           ; $4d2e: $00
    ld [hl], e                                    ; $4d2f: $73
    nop                                           ; $4d30: $00
    halt                                          ; $4d31: $76
    nop                                           ; $4d32: $00
    ld a, c                                       ; $4d33: $79
    nop                                           ; $4d34: $00
    ld a, l                                       ; $4d35: $7d
    nop                                           ; $4d36: $00
    add c                                         ; $4d37: $81
    nop                                           ; $4d38: $00
    add h                                         ; $4d39: $84
    nop                                           ; $4d3a: $00
    add a                                         ; $4d3b: $87
    nop                                           ; $4d3c: $00
    adc d                                         ; $4d3d: $8a
    nop                                           ; $4d3e: $00
    adc [hl]                                      ; $4d3f: $8e
    nop                                           ; $4d40: $00
    sub c                                         ; $4d41: $91
    nop                                           ; $4d42: $00
    sub h                                         ; $4d43: $94
    nop                                           ; $4d44: $00
    sub a                                         ; $4d45: $97
    nop                                           ; $4d46: $00
    sbc d                                         ; $4d47: $9a
    nop                                           ; $4d48: $00
    sbc l                                         ; $4d49: $9d
    nop                                           ; $4d4a: $00
    and b                                         ; $4d4b: $a0
    nop                                           ; $4d4c: $00
    and e                                         ; $4d4d: $a3
    nop                                           ; $4d4e: $00
    and a                                         ; $4d4f: $a7
    nop                                           ; $4d50: $00
    xor c                                         ; $4d51: $a9
    nop                                           ; $4d52: $00
    xor h                                         ; $4d53: $ac
    nop                                           ; $4d54: $00
    xor a                                         ; $4d55: $af
    nop                                           ; $4d56: $00
    or e                                          ; $4d57: $b3
    nop                                           ; $4d58: $00
    or l                                          ; $4d59: $b5
    nop                                           ; $4d5a: $00
    cp b                                          ; $4d5b: $b8
    nop                                           ; $4d5c: $00
    cp e                                          ; $4d5d: $bb
    nop                                           ; $4d5e: $00
    cp [hl]                                       ; $4d5f: $be
    nop                                           ; $4d60: $00
    pop bc                                        ; $4d61: $c1
    nop                                           ; $4d62: $00
    call nz, $c600                                ; $4d63: $c4 $00 $c6
    nop                                           ; $4d66: $00
    ret                                           ; $4d67: $c9


    nop                                           ; $4d68: $00
    call z, $cf00                                 ; $4d69: $cc $00 $cf
    nop                                           ; $4d6c: $00
    jp nc, $d500                                  ; $4d6d: $d2 $00 $d5

    nop                                           ; $4d70: $00
    rst $10                                       ; $4d71: $d7
    nop                                           ; $4d72: $00
    jp c, $dd00                                   ; $4d73: $da $00 $dd

    nop                                           ; $4d76: $00
    rst $18                                       ; $4d77: $df
    nop                                           ; $4d78: $00
    ld [c], a                                     ; $4d79: $e2
    nop                                           ; $4d7a: $00
    push hl                                       ; $4d7b: $e5
    nop                                           ; $4d7c: $00
    add sp, $00                                   ; $4d7d: $e8 $00
    db $eb                                        ; $4d7f: $eb
    nop                                           ; $4d80: $00
    db $ed                                        ; $4d81: $ed
    nop                                           ; $4d82: $00
    ldh a, [rP1]                                  ; $4d83: $f0 $00
    di                                            ; $4d85: $f3
    nop                                           ; $4d86: $00
    push af                                       ; $4d87: $f5
    nop                                           ; $4d88: $00
    ld hl, sp+$00                                 ; $4d89: $f8 $00
    ei                                            ; $4d8b: $fb
    nop                                           ; $4d8c: $00
    cp $00                                        ; $4d8d: $fe $00
    ld bc, $0301                                  ; $4d8f: $01 $01 $03
    ld bc, $0106                                  ; $4d92: $01 $06 $01
    add hl, bc                                    ; $4d95: $09
    ld bc, $010b                                  ; $4d96: $01 $0b $01
    dec c                                         ; $4d99: $0d
    ld bc, $0110                                  ; $4d9a: $01 $10 $01
    inc de                                        ; $4d9d: $13
    ld bc, $0116                                  ; $4d9e: $01 $16 $01
    add hl, de                                    ; $4da1: $19
    ld bc, $011b                                  ; $4da2: $01 $1b $01
    ld e, $01                                     ; $4da5: $1e $01
    jr nz, jr_03a_4daa                            ; $4da7: $20 $01

    inc hl                                        ; $4da9: $23

jr_03a_4daa:
    ld bc, $0126                                  ; $4daa: $01 $26 $01
    add hl, hl                                    ; $4dad: $29
    ld bc, $012c                                  ; $4dae: $01 $2c $01
    ld l, $01                                     ; $4db1: $2e $01
    ld sp, $3401                                  ; $4db3: $31 $01 $34
    ld bc, $0136                                  ; $4db6: $01 $36 $01
    add hl, sp                                    ; $4db9: $39
    ld bc, $013c                                  ; $4dba: $01 $3c $01
    ld a, $01                                     ; $4dbd: $3e $01
    ld b, c                                       ; $4dbf: $41
    ld bc, HeaderNewLicenseeCode                  ; $4dc0: $01 $44 $01
    ld b, [hl]                                    ; $4dc3: $46
    ld bc, HeaderRAMSize                          ; $4dc4: $01 $49 $01
    ld c, e                                       ; $4dc7: $4b
    ld bc, $014f                                  ; $4dc8: $01 $4f $01
    ld d, c                                       ; $4dcb: $51
    ld bc, $0154                                  ; $4dcc: $01 $54 $01
    ld d, [hl]                                    ; $4dcf: $56
    ld bc, $0159                                  ; $4dd0: $01 $59 $01
    ld e, h                                       ; $4dd3: $5c
    ld bc, $015f                                  ; $4dd4: $01 $5f $01
    ld h, c                                       ; $4dd7: $61
    ld bc, $0164                                  ; $4dd8: $01 $64 $01
    ld h, a                                       ; $4ddb: $67
    ld bc, $016a                                  ; $4ddc: $01 $6a $01
    ld l, h                                       ; $4ddf: $6c
    ld bc, $016f                                  ; $4de0: $01 $6f $01
    ld [hl], c                                    ; $4de3: $71
    ld bc, $0174                                  ; $4de4: $01 $74 $01
    ld [hl], a                                    ; $4de7: $77
    ld bc, $0179                                  ; $4de8: $01 $79 $01
    ld a, h                                       ; $4deb: $7c
    ld bc, $017f                                  ; $4dec: $01 $7f $01
    add d                                         ; $4def: $82
    ld bc, $0184                                  ; $4df0: $01 $84 $01
    add a                                         ; $4df3: $87
    ld bc, $018a                                  ; $4df4: $01 $8a $01
    adc l                                         ; $4df7: $8d
    ld bc, $018f                                  ; $4df8: $01 $8f $01
    sub d                                         ; $4dfb: $92
    ld bc, $0195                                  ; $4dfc: $01 $95 $01
    sbc b                                         ; $4dff: $98
    ld bc, $019a                                  ; $4e00: $01 $9a $01
    sbc l                                         ; $4e03: $9d
    ld bc, $01a0                                  ; $4e04: $01 $a0 $01
    and d                                         ; $4e07: $a2
    ld bc, $01a5                                  ; $4e08: $01 $a5 $01
    and a                                         ; $4e0b: $a7
    ld bc, $01aa                                  ; $4e0c: $01 $aa $01
    xor l                                         ; $4e0f: $ad
    ld bc, $01b0                                  ; $4e10: $01 $b0 $01
    or e                                          ; $4e13: $b3
    ld bc, $01b5                                  ; $4e14: $01 $b5 $01
    cp b                                          ; $4e17: $b8
    ld bc, $01bb                                  ; $4e18: $01 $bb $01
    cp [hl]                                       ; $4e1b: $be
    ld bc, $01c1                                  ; $4e1c: $01 $c1 $01
    jp $c601                                      ; $4e1f: $c3 $01 $c6


    ld bc, $01c9                                  ; $4e22: $01 $c9 $01
    rlc c                                         ; $4e25: $cb $01
    adc $01                                       ; $4e27: $ce $01
    pop de                                        ; $4e29: $d1
    ld bc, $01d4                                  ; $4e2a: $01 $d4 $01
    sub $01                                       ; $4e2d: $d6 $01
    reti                                          ; $4e2f: $d9


    ld bc, $01dc                                  ; $4e30: $01 $dc $01
    rst $18                                       ; $4e33: $df
    ld bc, $0004                                  ; $4e34: $01 $04 $00
    inc l                                         ; $4e37: $2c
    nop                                           ; $4e38: $00
    inc [hl]                                      ; $4e39: $34
    nop                                           ; $4e3a: $00
    ld a, [hl-]                                   ; $4e3b: $3a
    nop                                           ; $4e3c: $00
    ld b, l                                       ; $4e3d: $45
    nop                                           ; $4e3e: $00
    ld c, d                                       ; $4e3f: $4a
    nop                                           ; $4e40: $00
    ld d, c                                       ; $4e41: $51
    nop                                           ; $4e42: $00
    ld d, [hl]                                    ; $4e43: $56
    nop                                           ; $4e44: $00
    ld e, e                                       ; $4e45: $5b
    nop                                           ; $4e46: $00
    ld h, b                                       ; $4e47: $60
    nop                                           ; $4e48: $00
    ld h, h                                       ; $4e49: $64
    nop                                           ; $4e4a: $00
    ld l, b                                       ; $4e4b: $68
    nop                                           ; $4e4c: $00
    ld l, l                                       ; $4e4d: $6d
    nop                                           ; $4e4e: $00
    ld [hl], c                                    ; $4e4f: $71
    nop                                           ; $4e50: $00
    ld [hl], l                                    ; $4e51: $75
    nop                                           ; $4e52: $00
    ld a, c                                       ; $4e53: $79
    nop                                           ; $4e54: $00
    ld a, h                                       ; $4e55: $7c
    nop                                           ; $4e56: $00
    add b                                         ; $4e57: $80
    nop                                           ; $4e58: $00
    add h                                         ; $4e59: $84
    nop                                           ; $4e5a: $00
    adc b                                         ; $4e5b: $88
    nop                                           ; $4e5c: $00
    adc e                                         ; $4e5d: $8b
    nop                                           ; $4e5e: $00
    adc [hl]                                      ; $4e5f: $8e
    nop                                           ; $4e60: $00
    sub d                                         ; $4e61: $92
    nop                                           ; $4e62: $00
    sub l                                         ; $4e63: $95
    nop                                           ; $4e64: $00
    sbc b                                         ; $4e65: $98
    nop                                           ; $4e66: $00
    sbc h                                         ; $4e67: $9c
    nop                                           ; $4e68: $00
    sbc a                                         ; $4e69: $9f
    nop                                           ; $4e6a: $00
    and e                                         ; $4e6b: $a3
    nop                                           ; $4e6c: $00
    and [hl]                                      ; $4e6d: $a6
    nop                                           ; $4e6e: $00
    xor d                                         ; $4e6f: $aa
    nop                                           ; $4e70: $00
    xor h                                         ; $4e71: $ac
    nop                                           ; $4e72: $00
    xor a                                         ; $4e73: $af
    nop                                           ; $4e74: $00
    or e                                          ; $4e75: $b3
    nop                                           ; $4e76: $00
    or l                                          ; $4e77: $b5
    nop                                           ; $4e78: $00
    cp c                                          ; $4e79: $b9
    nop                                           ; $4e7a: $00
    cp h                                          ; $4e7b: $bc
    nop                                           ; $4e7c: $00
    cp a                                          ; $4e7d: $bf
    nop                                           ; $4e7e: $00
    jp nz, $c500                                  ; $4e7f: $c2 $00 $c5

    nop                                           ; $4e82: $00
    ret z                                         ; $4e83: $c8

    nop                                           ; $4e84: $00
    call z, $ce00                                 ; $4e85: $cc $00 $ce
    nop                                           ; $4e88: $00
    pop de                                        ; $4e89: $d1
    nop                                           ; $4e8a: $00
    call nc, $d700                                ; $4e8b: $d4 $00 $d7
    nop                                           ; $4e8e: $00
    jp c, $dd00                                   ; $4e8f: $da $00 $dd

    nop                                           ; $4e92: $00
    ldh [rP1], a                                  ; $4e93: $e0 $00
    db $e4                                        ; $4e95: $e4
    nop                                           ; $4e96: $00
    and $00                                       ; $4e97: $e6 $00
    jp hl                                         ; $4e99: $e9


    nop                                           ; $4e9a: $00
    db $ec                                        ; $4e9b: $ec
    nop                                           ; $4e9c: $00
    rst $28                                       ; $4e9d: $ef
    nop                                           ; $4e9e: $00
    ld a, [c]                                     ; $4e9f: $f2
    nop                                           ; $4ea0: $00
    push af                                       ; $4ea1: $f5
    nop                                           ; $4ea2: $00
    ld hl, sp+$00                                 ; $4ea3: $f8 $00
    ei                                            ; $4ea5: $fb
    nop                                           ; $4ea6: $00
    db $fd                                        ; $4ea7: $fd
    nop                                           ; $4ea8: $00
    nop                                           ; $4ea9: $00
    ld bc, $0103                                  ; $4eaa: $01 $03 $01
    rlca                                          ; $4ead: $07
    ld bc, $010a                                  ; $4eae: $01 $0a $01
    inc c                                         ; $4eb1: $0c
    ld bc, $010f                                  ; $4eb2: $01 $0f $01
    ld [de], a                                    ; $4eb5: $12
    ld bc, $0115                                  ; $4eb6: $01 $15 $01
    jr jr_03a_4ebc                                ; $4eb9: $18 $01

    dec de                                        ; $4ebb: $1b

jr_03a_4ebc:
    ld bc, $011e                                  ; $4ebc: $01 $1e $01
    ld hl, $2301                                  ; $4ebf: $21 $01 $23
    ld bc, $0126                                  ; $4ec2: $01 $26 $01
    add hl, hl                                    ; $4ec5: $29
    ld bc, $012c                                  ; $4ec6: $01 $2c $01
    jr nc, jr_03a_4ecc                            ; $4ec9: $30 $01

    ld [hl-], a                                   ; $4ecb: $32

jr_03a_4ecc:
    ld bc, $0135                                  ; $4ecc: $01 $35 $01
    jr c, jr_03a_4ed2                             ; $4ecf: $38 $01

    dec sp                                        ; $4ed1: $3b

jr_03a_4ed2:
    ld bc, $013d                                  ; $4ed2: $01 $3d $01
    ld b, c                                       ; $4ed5: $41
    ld bc, HeaderNewLicenseeCode                  ; $4ed6: $01 $44 $01
    ld b, a                                       ; $4ed9: $47
    ld bc, HeaderRAMSize                          ; $4eda: $01 $49 $01
    ld c, l                                       ; $4edd: $4d
    ld bc, $014f                                  ; $4ede: $01 $4f $01
    ld d, d                                       ; $4ee1: $52
    ld bc, $0155                                  ; $4ee2: $01 $55 $01
    ld e, b                                       ; $4ee5: $58
    ld bc, $015b                                  ; $4ee6: $01 $5b $01
    ld e, [hl]                                    ; $4ee9: $5e
    ld bc, $0161                                  ; $4eea: $01 $61 $01
    ld h, h                                       ; $4eed: $64
    ld bc, $0166                                  ; $4eee: $01 $66 $01
    ld l, c                                       ; $4ef1: $69
    ld bc, $016c                                  ; $4ef2: $01 $6c $01
    ld l, a                                       ; $4ef5: $6f
    ld bc, $0172                                  ; $4ef6: $01 $72 $01
    ld [hl], l                                    ; $4ef9: $75
    ld bc, $0178                                  ; $4efa: $01 $78 $01
    ld a, e                                       ; $4efd: $7b
    ld bc, $017e                                  ; $4efe: $01 $7e $01
    add c                                         ; $4f01: $81
    ld bc, $0184                                  ; $4f02: $01 $84 $01
    add a                                         ; $4f05: $87
    ld bc, $0189                                  ; $4f06: $01 $89 $01
    adc h                                         ; $4f09: $8c
    ld bc, $0190                                  ; $4f0a: $01 $90 $01
    sub d                                         ; $4f0d: $92
    ld bc, $0195                                  ; $4f0e: $01 $95 $01
    sbc b                                         ; $4f11: $98
    ld bc, $019b                                  ; $4f12: $01 $9b $01
    sbc [hl]                                      ; $4f15: $9e
    ld bc, $01a1                                  ; $4f16: $01 $a1 $01
    and h                                         ; $4f19: $a4
    ld bc, $01a7                                  ; $4f1a: $01 $a7 $01
    xor d                                         ; $4f1d: $aa
    ld bc, $01ad                                  ; $4f1e: $01 $ad $01
    xor a                                         ; $4f21: $af
    ld bc, $01b3                                  ; $4f22: $01 $b3 $01
    or [hl]                                       ; $4f25: $b6
    ld bc, $01b9                                  ; $4f26: $01 $b9 $01
    cp e                                          ; $4f29: $bb
    ld bc, $01be                                  ; $4f2a: $01 $be $01
    pop bc                                        ; $4f2d: $c1
    ld bc, $01c4                                  ; $4f2e: $01 $c4 $01
    rst $00                                       ; $4f31: $c7
    ld bc, $01ca                                  ; $4f32: $01 $ca $01
    call $d001                                    ; $4f35: $cd $01 $d0
    ld bc, $01d3                                  ; $4f38: $01 $d3 $01
    sub $01                                       ; $4f3b: $d6 $01
    reti                                          ; $4f3d: $d9


    ld bc, $01dc                                  ; $4f3e: $01 $dc $01
    rst $18                                       ; $4f41: $df
    ld bc, $0003                                  ; $4f42: $01 $03 $00
    inc l                                         ; $4f45: $2c
    nop                                           ; $4f46: $00
    inc sp                                        ; $4f47: $33
    nop                                           ; $4f48: $00
    inc a                                         ; $4f49: $3c
    nop                                           ; $4f4a: $00
    ld b, e                                       ; $4f4b: $43
    nop                                           ; $4f4c: $00
    ld c, l                                       ; $4f4d: $4d
    nop                                           ; $4f4e: $00
    ld d, d                                       ; $4f4f: $52
    nop                                           ; $4f50: $00
    ld e, b                                       ; $4f51: $58
    nop                                           ; $4f52: $00
    ld e, l                                       ; $4f53: $5d
    nop                                           ; $4f54: $00
    ld h, e                                       ; $4f55: $63
    nop                                           ; $4f56: $00
    ld h, a                                       ; $4f57: $67
    nop                                           ; $4f58: $00
    ld l, h                                       ; $4f59: $6c
    nop                                           ; $4f5a: $00
    ld [hl], b                                    ; $4f5b: $70
    nop                                           ; $4f5c: $00
    ld [hl], h                                    ; $4f5d: $74
    nop                                           ; $4f5e: $00
    ld a, c                                       ; $4f5f: $79
    nop                                           ; $4f60: $00
    ld a, l                                       ; $4f61: $7d
    nop                                           ; $4f62: $00
    add c                                         ; $4f63: $81
    nop                                           ; $4f64: $00
    add l                                         ; $4f65: $85
    nop                                           ; $4f66: $00
    adc c                                         ; $4f67: $89
    nop                                           ; $4f68: $00
    adc l                                         ; $4f69: $8d
    nop                                           ; $4f6a: $00
    sub c                                         ; $4f6b: $91
    nop                                           ; $4f6c: $00
    sub h                                         ; $4f6d: $94
    nop                                           ; $4f6e: $00
    sbc b                                         ; $4f6f: $98
    nop                                           ; $4f70: $00
    sbc h                                         ; $4f71: $9c
    nop                                           ; $4f72: $00
    and b                                         ; $4f73: $a0
    nop                                           ; $4f74: $00
    and e                                         ; $4f75: $a3
    nop                                           ; $4f76: $00
    and a                                         ; $4f77: $a7
    nop                                           ; $4f78: $00
    xor d                                         ; $4f79: $aa
    nop                                           ; $4f7a: $00
    xor [hl]                                      ; $4f7b: $ae
    nop                                           ; $4f7c: $00
    or c                                          ; $4f7d: $b1
    nop                                           ; $4f7e: $00
    or l                                          ; $4f7f: $b5
    nop                                           ; $4f80: $00
    cp b                                          ; $4f81: $b8
    nop                                           ; $4f82: $00
    cp h                                          ; $4f83: $bc
    nop                                           ; $4f84: $00
    cp a                                          ; $4f85: $bf
    nop                                           ; $4f86: $00
    jp $c600                                      ; $4f87: $c3 $00 $c6


    nop                                           ; $4f8a: $00
    jp z, $cd00                                   ; $4f8b: $ca $00 $cd

    nop                                           ; $4f8e: $00
    pop de                                        ; $4f8f: $d1
    nop                                           ; $4f90: $00
    call nc, $d700                                ; $4f91: $d4 $00 $d7
    nop                                           ; $4f94: $00
    db $db                                        ; $4f95: $db
    nop                                           ; $4f96: $00
    sbc $00                                       ; $4f97: $de $00
    pop hl                                        ; $4f99: $e1
    nop                                           ; $4f9a: $00
    push hl                                       ; $4f9b: $e5
    nop                                           ; $4f9c: $00
    add sp, $00                                   ; $4f9d: $e8 $00
    db $eb                                        ; $4f9f: $eb
    nop                                           ; $4fa0: $00
    rst $28                                       ; $4fa1: $ef
    nop                                           ; $4fa2: $00
    ld a, [c]                                     ; $4fa3: $f2
    nop                                           ; $4fa4: $00
    push af                                       ; $4fa5: $f5
    nop                                           ; $4fa6: $00
    ld sp, hl                                     ; $4fa7: $f9
    nop                                           ; $4fa8: $00
    db $fc                                        ; $4fa9: $fc
    nop                                           ; $4faa: $00
    rst $38                                       ; $4fab: $ff
    nop                                           ; $4fac: $00
    ld [bc], a                                    ; $4fad: $02
    ld bc, $0106                                  ; $4fae: $01 $06 $01
    add hl, bc                                    ; $4fb1: $09
    ld bc, $010d                                  ; $4fb2: $01 $0d $01
    db $10                                        ; $4fb5: $10
    ld bc, $0113                                  ; $4fb6: $01 $13 $01
    ld d, $01                                     ; $4fb9: $16 $01
    add hl, de                                    ; $4fbb: $19
    ld bc, $011d                                  ; $4fbc: $01 $1d $01
    jr nz, jr_03a_4fc2                            ; $4fbf: $20 $01

    inc hl                                        ; $4fc1: $23

jr_03a_4fc2:
    ld bc, $0127                                  ; $4fc2: $01 $27 $01
    ld a, [hl+]                                   ; $4fc5: $2a
    ld bc, $012d                                  ; $4fc6: $01 $2d $01
    ld sp, $3401                                  ; $4fc9: $31 $01 $34
    ld bc, $0137                                  ; $4fcc: $01 $37 $01
    ld a, [hl-]                                   ; $4fcf: $3a
    ld bc, $013e                                  ; $4fd0: $01 $3e $01
    ld b, c                                       ; $4fd3: $41
    ld bc, HeaderNewLicenseeCode                  ; $4fd4: $01 $44 $01
    ld b, a                                       ; $4fd7: $47
    ld bc, HeaderOldLicenseeCode                  ; $4fd8: $01 $4b $01
    ld c, [hl]                                    ; $4fdb: $4e
    ld bc, $0151                                  ; $4fdc: $01 $51 $01
    ld d, l                                       ; $4fdf: $55
    ld bc, $0158                                  ; $4fe0: $01 $58 $01
    ld e, e                                       ; $4fe3: $5b
    ld bc, $015f                                  ; $4fe4: $01 $5f $01
    ld h, d                                       ; $4fe7: $62
    ld bc, $0165                                  ; $4fe8: $01 $65 $01
    ld l, b                                       ; $4feb: $68
    ld bc, $016c                                  ; $4fec: $01 $6c $01
    ld l, a                                       ; $4fef: $6f
    ld bc, $0172                                  ; $4ff0: $01 $72 $01
    halt                                          ; $4ff3: $76
    ld bc, $0179                                  ; $4ff4: $01 $79 $01
    ld a, h                                       ; $4ff7: $7c
    ld bc, $017f                                  ; $4ff8: $01 $7f $01
    add e                                         ; $4ffb: $83
    ld bc, $0186                                  ; $4ffc: $01 $86 $01
    adc c                                         ; $4fff: $89
    ld bc, $018d                                  ; $5000: $01 $8d $01
    sub b                                         ; $5003: $90
    ld bc, $0193                                  ; $5004: $01 $93 $01
    sub [hl]                                      ; $5007: $96
    ld bc, $019a                                  ; $5008: $01 $9a $01
    sbc l                                         ; $500b: $9d
    ld bc, $01a1                                  ; $500c: $01 $a1 $01
    and h                                         ; $500f: $a4
    ld bc, $01a7                                  ; $5010: $01 $a7 $01
    xor e                                         ; $5013: $ab
    ld bc, $01ae                                  ; $5014: $01 $ae $01
    or c                                          ; $5017: $b1
    ld bc, $01b4                                  ; $5018: $01 $b4 $01
    cp b                                          ; $501b: $b8
    ld bc, $01bb                                  ; $501c: $01 $bb $01
    cp a                                          ; $501f: $bf
    ld bc, $01c2                                  ; $5020: $01 $c2 $01
    add $01                                       ; $5023: $c6 $01
    ret                                           ; $5025: $c9


    ld bc, $01cc                                  ; $5026: $01 $cc $01
    ret nc                                        ; $5029: $d0

    ld bc, $01d3                                  ; $502a: $01 $d3 $01
    sub $01                                       ; $502d: $d6 $01
    jp c, $dd01                                   ; $502f: $da $01 $dd

    ld bc, $0003                                  ; $5032: $01 $03 $00
    ld l, $00                                     ; $5035: $2e $00
    add hl, sp                                    ; $5037: $39
    nop                                           ; $5038: $00
    ld b, d                                       ; $5039: $42
    nop                                           ; $503a: $00
    ld c, d                                       ; $503b: $4a
    nop                                           ; $503c: $00
    ld d, c                                       ; $503d: $51
    nop                                           ; $503e: $00
    ld e, e                                       ; $503f: $5b
    nop                                           ; $5040: $00
    ld h, b                                       ; $5041: $60
    nop                                           ; $5042: $00
    ld h, [hl]                                    ; $5043: $66
    nop                                           ; $5044: $00
    ld l, h                                       ; $5045: $6c
    nop                                           ; $5046: $00
    ld [hl], c                                    ; $5047: $71
    nop                                           ; $5048: $00
    halt                                          ; $5049: $76
    nop                                           ; $504a: $00
    ld a, e                                       ; $504b: $7b
    nop                                           ; $504c: $00
    add b                                         ; $504d: $80
    nop                                           ; $504e: $00
    add h                                         ; $504f: $84
    nop                                           ; $5050: $00
    adc c                                         ; $5051: $89
    nop                                           ; $5052: $00
    adc l                                         ; $5053: $8d
    nop                                           ; $5054: $00
    sub d                                         ; $5055: $92
    nop                                           ; $5056: $00
    sub [hl]                                      ; $5057: $96
    nop                                           ; $5058: $00
    sbc e                                         ; $5059: $9b
    nop                                           ; $505a: $00
    sbc a                                         ; $505b: $9f
    nop                                           ; $505c: $00
    and h                                         ; $505d: $a4
    nop                                           ; $505e: $00
    and a                                         ; $505f: $a7
    nop                                           ; $5060: $00
    xor e                                         ; $5061: $ab
    nop                                           ; $5062: $00
    or b                                          ; $5063: $b0
    nop                                           ; $5064: $00
    or h                                          ; $5065: $b4
    nop                                           ; $5066: $00
    cp b                                          ; $5067: $b8
    nop                                           ; $5068: $00
    cp h                                          ; $5069: $bc
    nop                                           ; $506a: $00
    ret nz                                        ; $506b: $c0

    nop                                           ; $506c: $00
    call nz, $c800                                ; $506d: $c4 $00 $c8
    nop                                           ; $5070: $00
    call z, $d000                                 ; $5071: $cc $00 $d0
    nop                                           ; $5074: $00
    call nc, $d800                                ; $5075: $d4 $00 $d8
    nop                                           ; $5078: $00
    call c, $df00                                 ; $5079: $dc $00 $df
    nop                                           ; $507c: $00
    db $e3                                        ; $507d: $e3
    nop                                           ; $507e: $00
    rst $20                                       ; $507f: $e7
    nop                                           ; $5080: $00
    db $eb                                        ; $5081: $eb
    nop                                           ; $5082: $00
    rst $28                                       ; $5083: $ef
    nop                                           ; $5084: $00
    ld a, [c]                                     ; $5085: $f2
    nop                                           ; $5086: $00
    or $00                                        ; $5087: $f6 $00
    ld a, [$fe00]                                 ; $5089: $fa $00 $fe
    nop                                           ; $508c: $00
    ld [bc], a                                    ; $508d: $02
    ld bc, $0105                                  ; $508e: $01 $05 $01
    add hl, bc                                    ; $5091: $09
    ld bc, $010d                                  ; $5092: $01 $0d $01
    ld de, $1501                                  ; $5095: $11 $01 $15
    ld bc, $0119                                  ; $5098: $01 $19 $01
    inc e                                         ; $509b: $1c
    ld bc, $0120                                  ; $509c: $01 $20 $01
    inc h                                         ; $509f: $24
    ld bc, $0128                                  ; $50a0: $01 $28 $01
    dec hl                                        ; $50a3: $2b
    ld bc, $012f                                  ; $50a4: $01 $2f $01
    inc sp                                        ; $50a7: $33
    ld bc, $0137                                  ; $50a8: $01 $37 $01
    ld a, [hl-]                                   ; $50ab: $3a
    ld bc, $013e                                  ; $50ac: $01 $3e $01
    ld b, d                                       ; $50af: $42
    ld bc, HeaderSGBFlag                          ; $50b0: $01 $46 $01
    ld c, d                                       ; $50b3: $4a
    ld bc, HeaderGlobalChecksum                   ; $50b4: $01 $4e $01
    ld d, c                                       ; $50b7: $51
    ld bc, $0155                                  ; $50b8: $01 $55 $01
    ld e, c                                       ; $50bb: $59
    ld bc, $015d                                  ; $50bc: $01 $5d $01
    ld h, c                                       ; $50bf: $61
    ld bc, $0164                                  ; $50c0: $01 $64 $01
    ld l, b                                       ; $50c3: $68
    ld bc, $016b                                  ; $50c4: $01 $6b $01
    ld l, a                                       ; $50c7: $6f
    ld bc, $0173                                  ; $50c8: $01 $73 $01
    ld [hl], a                                    ; $50cb: $77
    ld bc, $017b                                  ; $50cc: $01 $7b $01
    ld a, a                                       ; $50cf: $7f
    ld bc, $0183                                  ; $50d0: $01 $83 $01
    add [hl]                                      ; $50d3: $86
    ld bc, $018a                                  ; $50d4: $01 $8a $01
    adc [hl]                                      ; $50d7: $8e
    ld bc, $0192                                  ; $50d8: $01 $92 $01
    sub l                                         ; $50db: $95
    ld bc, $019a                                  ; $50dc: $01 $9a $01
    sbc [hl]                                      ; $50df: $9e
    ld bc, $01a2                                  ; $50e0: $01 $a2 $01
    and l                                         ; $50e3: $a5
    ld bc, $01a9                                  ; $50e4: $01 $a9 $01
    xor l                                         ; $50e7: $ad
    ld bc, $01b1                                  ; $50e8: $01 $b1 $01
    or h                                          ; $50eb: $b4
    ld bc, $01b9                                  ; $50ec: $01 $b9 $01
    cp h                                          ; $50ef: $bc
    ld bc, $01c0                                  ; $50f0: $01 $c0 $01
    call nz, $c701                                ; $50f3: $c4 $01 $c7
    ld bc, $01cc                                  ; $50f6: $01 $cc $01
    rst $08                                       ; $50f9: $cf
    ld bc, $01d3                                  ; $50fa: $01 $d3 $01
    rst $10                                       ; $50fd: $d7
    ld bc, $01db                                  ; $50fe: $01 $db $01
    rst $18                                       ; $5101: $df
    ld bc, $0003                                  ; $5102: $01 $03 $00
    dec [hl]                                      ; $5105: $35
    nop                                           ; $5106: $00
    ld b, d                                       ; $5107: $42
    nop                                           ; $5108: $00
    ld c, h                                       ; $5109: $4c
    nop                                           ; $510a: $00
    ld d, [hl]                                    ; $510b: $56
    nop                                           ; $510c: $00
    ld e, [hl]                                    ; $510d: $5e
    nop                                           ; $510e: $00
    ld h, l                                       ; $510f: $65
    nop                                           ; $5110: $00
    ld l, a                                       ; $5111: $6f
    nop                                           ; $5112: $00
    ld [hl], l                                    ; $5113: $75
    nop                                           ; $5114: $00
    ld a, h                                       ; $5115: $7c
    nop                                           ; $5116: $00
    add d                                         ; $5117: $82
    nop                                           ; $5118: $00
    adc b                                         ; $5119: $88
    nop                                           ; $511a: $00
    adc [hl]                                      ; $511b: $8e
    nop                                           ; $511c: $00
    sub e                                         ; $511d: $93
    nop                                           ; $511e: $00
    sbc c                                         ; $511f: $99
    nop                                           ; $5120: $00
    sbc [hl]                                      ; $5121: $9e
    nop                                           ; $5122: $00
    and h                                         ; $5123: $a4
    nop                                           ; $5124: $00
    xor c                                         ; $5125: $a9
    nop                                           ; $5126: $00
    xor [hl]                                      ; $5127: $ae
    nop                                           ; $5128: $00
    or e                                          ; $5129: $b3
    nop                                           ; $512a: $00
    cp b                                          ; $512b: $b8
    nop                                           ; $512c: $00
    cp l                                          ; $512d: $bd
    nop                                           ; $512e: $00
    jp nz, $c700                                  ; $512f: $c2 $00 $c7

    nop                                           ; $5132: $00
    call z, $d100                                 ; $5133: $cc $00 $d1
    nop                                           ; $5136: $00
    sub $00                                       ; $5137: $d6 $00
    db $db                                        ; $5139: $db
    nop                                           ; $513a: $00
    ldh [rP1], a                                  ; $513b: $e0 $00
    db $e4                                        ; $513d: $e4
    nop                                           ; $513e: $00
    jp hl                                         ; $513f: $e9


    nop                                           ; $5140: $00
    xor $00                                       ; $5141: $ee $00
    ld a, [c]                                     ; $5143: $f2
    nop                                           ; $5144: $00
    rst $30                                       ; $5145: $f7
    nop                                           ; $5146: $00
    ei                                            ; $5147: $fb
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    ld bc, $0105                                  ; $514a: $01 $05 $01
    add hl, bc                                    ; $514d: $09
    ld bc, $010e                                  ; $514e: $01 $0e $01
    inc de                                        ; $5151: $13
    ld bc, $0118                                  ; $5152: $01 $18 $01
    inc e                                         ; $5155: $1c
    ld bc, $0120                                  ; $5156: $01 $20 $01
    dec h                                         ; $5159: $25
    ld bc, $012a                                  ; $515a: $01 $2a $01
    ld l, $01                                     ; $515d: $2e $01
    inc sp                                        ; $515f: $33
    ld bc, $0138                                  ; $5160: $01 $38 $01
    inc a                                         ; $5163: $3c
    ld bc, $0141                                  ; $5164: $01 $41 $01
    ld b, l                                       ; $5167: $45
    ld bc, HeaderDestinationCode                  ; $5168: $01 $4a $01
    ld c, [hl]                                    ; $516b: $4e
    ld bc, $0153                                  ; $516c: $01 $53 $01
    ld e, b                                       ; $516f: $58
    ld bc, $015c                                  ; $5170: $01 $5c $01
    ld h, c                                       ; $5173: $61
    ld bc, $0165                                  ; $5174: $01 $65 $01
    ld l, d                                       ; $5177: $6a
    ld bc, $016e                                  ; $5178: $01 $6e $01
    ld [hl], e                                    ; $517b: $73
    ld bc, $0178                                  ; $517c: $01 $78 $01
    ld a, h                                       ; $517f: $7c
    ld bc, $0181                                  ; $5180: $01 $81 $01
    add l                                         ; $5183: $85
    ld bc, $018a                                  ; $5184: $01 $8a $01
    adc a                                         ; $5187: $8f
    ld bc, $0193                                  ; $5188: $01 $93 $01
    sbc b                                         ; $518b: $98
    ld bc, $019c                                  ; $518c: $01 $9c $01
    and c                                         ; $518f: $a1
    ld bc, $01a6                                  ; $5190: $01 $a6 $01
    xor d                                         ; $5193: $aa
    ld bc, $01af                                  ; $5194: $01 $af $01
    or e                                          ; $5197: $b3
    ld bc, $01b8                                  ; $5198: $01 $b8 $01
    cp h                                          ; $519b: $bc
    ld bc, $01c1                                  ; $519c: $01 $c1 $01
    add $01                                       ; $519f: $c6 $01
    rlc c                                         ; $51a1: $cb $01
    rst $08                                       ; $51a3: $cf
    ld bc, $01d4                                  ; $51a4: $01 $d4 $01
    ret c                                         ; $51a7: $d8

    ld bc, $01dd                                  ; $51a8: $01 $dd $01
    push bc                                       ; $51ab: $c5
    ld d, c                                       ; $51ac: $51
    inc bc                                        ; $51ad: $03
    ld d, d                                       ; $51ae: $52
    ld b, c                                       ; $51af: $41
    ld d, d                                       ; $51b0: $52
    ld a, a                                       ; $51b1: $7f
    ld d, d                                       ; $51b2: $52
    cp l                                          ; $51b3: $bd
    ld d, d                                       ; $51b4: $52
    ei                                            ; $51b5: $fb
    ld d, d                                       ; $51b6: $52
    add hl, sp                                    ; $51b7: $39
    ld d, e                                       ; $51b8: $53
    ld [hl], a                                    ; $51b9: $77
    ld d, e                                       ; $51ba: $53
    or l                                          ; $51bb: $b5
    ld d, e                                       ; $51bc: $53
    di                                            ; $51bd: $f3
    ld d, e                                       ; $51be: $53
    ld sp, $6f54                                  ; $51bf: $31 $54 $6f
    ld d, h                                       ; $51c2: $54
    xor l                                         ; $51c3: $ad
    ld d, h                                       ; $51c4: $54
    ld bc, $0e00                                  ; $51c5: $01 $00 $0e
    nop                                           ; $51c8: $00
    dec de                                        ; $51c9: $1b
    nop                                           ; $51ca: $00
    inc hl                                        ; $51cb: $23
    nop                                           ; $51cc: $00
    ld a, [hl+]                                   ; $51cd: $2a
    nop                                           ; $51ce: $00
    cpl                                           ; $51cf: $2f
    nop                                           ; $51d0: $00
    ld [hl], $00                                  ; $51d1: $36 $00
    ld a, [hl-]                                   ; $51d3: $3a
    nop                                           ; $51d4: $00
    ld b, c                                       ; $51d5: $41
    nop                                           ; $51d6: $00
    ld b, l                                       ; $51d7: $45
    nop                                           ; $51d8: $00
    ld c, c                                       ; $51d9: $49
    nop                                           ; $51da: $00
    ld c, l                                       ; $51db: $4d
    nop                                           ; $51dc: $00
    ld d, b                                       ; $51dd: $50
    nop                                           ; $51de: $00
    ld d, e                                       ; $51df: $53
    nop                                           ; $51e0: $00
    ld d, [hl]                                    ; $51e1: $56
    nop                                           ; $51e2: $00
    ld e, d                                       ; $51e3: $5a
    nop                                           ; $51e4: $00
    ld e, h                                       ; $51e5: $5c
    nop                                           ; $51e6: $00
    ld e, a                                       ; $51e7: $5f
    nop                                           ; $51e8: $00
    ld h, d                                       ; $51e9: $62
    nop                                           ; $51ea: $00
    ld h, h                                       ; $51eb: $64
    nop                                           ; $51ec: $00
    ld h, l                                       ; $51ed: $65
    nop                                           ; $51ee: $00
    ld l, b                                       ; $51ef: $68
    nop                                           ; $51f0: $00
    ld l, c                                       ; $51f1: $69
    nop                                           ; $51f2: $00
    ld l, h                                       ; $51f3: $6c
    nop                                           ; $51f4: $00
    ld l, l                                       ; $51f5: $6d
    nop                                           ; $51f6: $00
    ld l, a                                       ; $51f7: $6f
    nop                                           ; $51f8: $00
    ld [hl], c                                    ; $51f9: $71
    nop                                           ; $51fa: $00
    ld [hl], d                                    ; $51fb: $72
    nop                                           ; $51fc: $00
    ld [hl], e                                    ; $51fd: $73
    nop                                           ; $51fe: $00
    ld [hl], l                                    ; $51ff: $75
    nop                                           ; $5200: $00
    halt                                          ; $5201: $76
    nop                                           ; $5202: $00
    ld bc, $0f00                                  ; $5203: $01 $00 $0f
    nop                                           ; $5206: $00
    dec e                                         ; $5207: $1d
    nop                                           ; $5208: $00
    ld h, $00                                     ; $5209: $26 $00
    ld l, $00                                     ; $520b: $2e $00
    inc [hl]                                      ; $520d: $34
    nop                                           ; $520e: $00
    dec sp                                        ; $520f: $3b
    nop                                           ; $5210: $00
    ld b, c                                       ; $5211: $41
    nop                                           ; $5212: $00
    ld b, [hl]                                    ; $5213: $46
    nop                                           ; $5214: $00
    ld c, e                                       ; $5215: $4b
    nop                                           ; $5216: $00
    ld c, [hl]                                    ; $5217: $4e
    nop                                           ; $5218: $00
    ld d, d                                       ; $5219: $52
    nop                                           ; $521a: $00
    ld d, [hl]                                    ; $521b: $56
    nop                                           ; $521c: $00
    ld e, d                                       ; $521d: $5a
    nop                                           ; $521e: $00
    ld e, h                                       ; $521f: $5c
    nop                                           ; $5220: $00
    ld e, a                                       ; $5221: $5f
    nop                                           ; $5222: $00
    ld h, d                                       ; $5223: $62
    nop                                           ; $5224: $00
    ld h, l                                       ; $5225: $65
    nop                                           ; $5226: $00
    ld h, a                                       ; $5227: $67
    nop                                           ; $5228: $00
    ld l, c                                       ; $5229: $69
    nop                                           ; $522a: $00
    ld l, e                                       ; $522b: $6b
    nop                                           ; $522c: $00
    ld l, l                                       ; $522d: $6d
    nop                                           ; $522e: $00
    ld l, a                                       ; $522f: $6f
    nop                                           ; $5230: $00
    ld [hl], c                                    ; $5231: $71
    nop                                           ; $5232: $00
    ld [hl], e                                    ; $5233: $73
    nop                                           ; $5234: $00
    ld [hl], h                                    ; $5235: $74
    nop                                           ; $5236: $00
    halt                                          ; $5237: $76
    nop                                           ; $5238: $00
    ld [hl], a                                    ; $5239: $77
    nop                                           ; $523a: $00
    ld a, b                                       ; $523b: $78
    nop                                           ; $523c: $00
    ld a, d                                       ; $523d: $7a
    nop                                           ; $523e: $00
    ld a, e                                       ; $523f: $7b
    nop                                           ; $5240: $00
    ld bc, $1300                                  ; $5241: $01 $00 $13
    nop                                           ; $5244: $00
    rra                                           ; $5245: $1f
    nop                                           ; $5246: $00
    jr z, jr_03a_5249                             ; $5247: $28 $00

jr_03a_5249:
    jr nc, jr_03a_524b                            ; $5249: $30 $00

jr_03a_524b:
    jr c, jr_03a_524d                             ; $524b: $38 $00

jr_03a_524d:
    ld a, $00                                     ; $524d: $3e $00
    ld b, [hl]                                    ; $524f: $46
    nop                                           ; $5250: $00
    ld c, e                                       ; $5251: $4b
    nop                                           ; $5252: $00
    ld c, a                                       ; $5253: $4f
    nop                                           ; $5254: $00
    ld d, h                                       ; $5255: $54
    nop                                           ; $5256: $00
    ld d, a                                       ; $5257: $57
    nop                                           ; $5258: $00
    ld e, e                                       ; $5259: $5b
    nop                                           ; $525a: $00
    ld e, a                                       ; $525b: $5f
    nop                                           ; $525c: $00
    ld h, d                                       ; $525d: $62
    nop                                           ; $525e: $00
    ld h, l                                       ; $525f: $65
    nop                                           ; $5260: $00
    ld h, a                                       ; $5261: $67
    nop                                           ; $5262: $00
    ld l, d                                       ; $5263: $6a
    nop                                           ; $5264: $00
    ld l, l                                       ; $5265: $6d
    nop                                           ; $5266: $00
    ld l, a                                       ; $5267: $6f
    nop                                           ; $5268: $00
    ld [hl], b                                    ; $5269: $70
    nop                                           ; $526a: $00
    ld [hl], e                                    ; $526b: $73
    nop                                           ; $526c: $00
    ld [hl], h                                    ; $526d: $74
    nop                                           ; $526e: $00
    halt                                          ; $526f: $76
    nop                                           ; $5270: $00
    ld a, b                                       ; $5271: $78
    nop                                           ; $5272: $00
    ld a, d                                       ; $5273: $7a
    nop                                           ; $5274: $00
    ld a, e                                       ; $5275: $7b
    nop                                           ; $5276: $00
    ld a, l                                       ; $5277: $7d
    nop                                           ; $5278: $00
    ld a, [hl]                                    ; $5279: $7e
    nop                                           ; $527a: $00
    ld a, a                                       ; $527b: $7f
    nop                                           ; $527c: $00
    add c                                         ; $527d: $81
    nop                                           ; $527e: $00
    ld bc, $1100                                  ; $527f: $01 $00 $11
    nop                                           ; $5282: $00
    inc e                                         ; $5283: $1c
    nop                                           ; $5284: $00
    inc h                                         ; $5285: $24
    nop                                           ; $5286: $00
    dec hl                                        ; $5287: $2b
    nop                                           ; $5288: $00
    ld sp, $3900                                  ; $5289: $31 $00 $39
    nop                                           ; $528c: $00
    dec a                                         ; $528d: $3d
    nop                                           ; $528e: $00
    ld b, d                                       ; $528f: $42
    nop                                           ; $5290: $00
    ld b, a                                       ; $5291: $47
    nop                                           ; $5292: $00
    ld c, e                                       ; $5293: $4b
    nop                                           ; $5294: $00
    ld d, b                                       ; $5295: $50
    nop                                           ; $5296: $00
    ld d, e                                       ; $5297: $53
    nop                                           ; $5298: $00
    ld d, a                                       ; $5299: $57
    nop                                           ; $529a: $00
    ld e, d                                       ; $529b: $5a
    nop                                           ; $529c: $00
    ld e, [hl]                                    ; $529d: $5e
    nop                                           ; $529e: $00
    ld h, c                                       ; $529f: $61
    nop                                           ; $52a0: $00
    ld h, h                                       ; $52a1: $64
    nop                                           ; $52a2: $00
    ld h, a                                       ; $52a3: $67
    nop                                           ; $52a4: $00
    ld l, d                                       ; $52a5: $6a
    nop                                           ; $52a6: $00
    ld l, l                                       ; $52a7: $6d
    nop                                           ; $52a8: $00
    ld l, a                                       ; $52a9: $6f
    nop                                           ; $52aa: $00
    ld [hl], c                                    ; $52ab: $71
    nop                                           ; $52ac: $00
    ld [hl], l                                    ; $52ad: $75
    nop                                           ; $52ae: $00
    ld [hl], a                                    ; $52af: $77
    nop                                           ; $52b0: $00
    ld a, c                                       ; $52b1: $79
    nop                                           ; $52b2: $00
    ld a, e                                       ; $52b3: $7b
    nop                                           ; $52b4: $00
    ld a, [hl]                                    ; $52b5: $7e
    nop                                           ; $52b6: $00
    add b                                         ; $52b7: $80
    nop                                           ; $52b8: $00
    add c                                         ; $52b9: $81
    nop                                           ; $52ba: $00
    add h                                         ; $52bb: $84
    nop                                           ; $52bc: $00
    ld bc, $1300                                  ; $52bd: $01 $00 $13
    nop                                           ; $52c0: $00
    ld e, $00                                     ; $52c1: $1e $00
    daa                                           ; $52c3: $27
    nop                                           ; $52c4: $00
    cpl                                           ; $52c5: $2f
    nop                                           ; $52c6: $00
    scf                                           ; $52c7: $37
    nop                                           ; $52c8: $00
    inc a                                         ; $52c9: $3c
    nop                                           ; $52ca: $00
    ld b, e                                       ; $52cb: $43
    nop                                           ; $52cc: $00
    ld b, a                                       ; $52cd: $47
    nop                                           ; $52ce: $00
    ld c, h                                       ; $52cf: $4c
    nop                                           ; $52d0: $00
    ld d, c                                       ; $52d1: $51
    nop                                           ; $52d2: $00
    ld d, l                                       ; $52d3: $55
    nop                                           ; $52d4: $00
    ld e, c                                       ; $52d5: $59
    nop                                           ; $52d6: $00
    ld e, l                                       ; $52d7: $5d
    nop                                           ; $52d8: $00
    ld h, c                                       ; $52d9: $61
    nop                                           ; $52da: $00
    ld h, h                                       ; $52db: $64
    nop                                           ; $52dc: $00
    ld h, a                                       ; $52dd: $67
    nop                                           ; $52de: $00
    ld l, d                                       ; $52df: $6a
    nop                                           ; $52e0: $00
    ld l, l                                       ; $52e1: $6d
    nop                                           ; $52e2: $00
    ld [hl], b                                    ; $52e3: $70
    nop                                           ; $52e4: $00
    ld [hl], e                                    ; $52e5: $73
    nop                                           ; $52e6: $00
    ld [hl], l                                    ; $52e7: $75
    nop                                           ; $52e8: $00
    ld a, b                                       ; $52e9: $78
    nop                                           ; $52ea: $00
    ld a, d                                       ; $52eb: $7a
    nop                                           ; $52ec: $00
    ld a, l                                       ; $52ed: $7d
    nop                                           ; $52ee: $00
    ld a, a                                       ; $52ef: $7f
    nop                                           ; $52f0: $00
    add c                                         ; $52f1: $81
    nop                                           ; $52f2: $00
    add e                                         ; $52f3: $83
    nop                                           ; $52f4: $00
    add l                                         ; $52f5: $85
    nop                                           ; $52f6: $00
    add a                                         ; $52f7: $87
    nop                                           ; $52f8: $00
    adc c                                         ; $52f9: $89
    nop                                           ; $52fa: $00
    ld bc, $1500                                  ; $52fb: $01 $00 $15
    nop                                           ; $52fe: $00
    ld hl, $2b00                                  ; $52ff: $21 $00 $2b
    nop                                           ; $5302: $00
    inc sp                                        ; $5303: $33
    nop                                           ; $5304: $00
    dec sp                                        ; $5305: $3b
    nop                                           ; $5306: $00
    ld b, d                                       ; $5307: $42
    nop                                           ; $5308: $00
    ld c, b                                       ; $5309: $48
    nop                                           ; $530a: $00
    ld c, l                                       ; $530b: $4d
    nop                                           ; $530c: $00
    ld d, e                                       ; $530d: $53
    nop                                           ; $530e: $00
    ld d, a                                       ; $530f: $57
    nop                                           ; $5310: $00
    ld e, h                                       ; $5311: $5c
    nop                                           ; $5312: $00
    ld h, b                                       ; $5313: $60
    nop                                           ; $5314: $00
    ld h, h                                       ; $5315: $64
    nop                                           ; $5316: $00
    ld h, a                                       ; $5317: $67
    nop                                           ; $5318: $00
    ld l, e                                       ; $5319: $6b
    nop                                           ; $531a: $00
    ld l, [hl]                                    ; $531b: $6e
    nop                                           ; $531c: $00
    ld [hl], c                                    ; $531d: $71
    nop                                           ; $531e: $00
    ld [hl], h                                    ; $531f: $74
    nop                                           ; $5320: $00
    ld [hl], a                                    ; $5321: $77
    nop                                           ; $5322: $00
    ld a, d                                       ; $5323: $7a
    nop                                           ; $5324: $00
    ld a, h                                       ; $5325: $7c
    nop                                           ; $5326: $00
    ld a, a                                       ; $5327: $7f
    nop                                           ; $5328: $00
    add c                                         ; $5329: $81
    nop                                           ; $532a: $00
    add h                                         ; $532b: $84
    nop                                           ; $532c: $00
    add [hl]                                      ; $532d: $86
    nop                                           ; $532e: $00
    add a                                         ; $532f: $87
    nop                                           ; $5330: $00
    adc d                                         ; $5331: $8a
    nop                                           ; $5332: $00
    adc e                                         ; $5333: $8b
    nop                                           ; $5334: $00
    adc [hl]                                      ; $5335: $8e
    nop                                           ; $5336: $00
    adc a                                         ; $5337: $8f
    nop                                           ; $5338: $00
    ld bc, $1700                                  ; $5339: $01 $00 $17
    nop                                           ; $533c: $00
    inc hl                                        ; $533d: $23
    nop                                           ; $533e: $00
    ld l, $00                                     ; $533f: $2e $00
    ld [hl], $00                                  ; $5341: $36 $00
    ccf                                           ; $5343: $3f
    nop                                           ; $5344: $00
    ld b, [hl]                                    ; $5345: $46
    nop                                           ; $5346: $00
    ld c, l                                       ; $5347: $4d
    nop                                           ; $5348: $00
    ld d, e                                       ; $5349: $53
    nop                                           ; $534a: $00
    ld d, a                                       ; $534b: $57
    nop                                           ; $534c: $00
    ld e, l                                       ; $534d: $5d
    nop                                           ; $534e: $00
    ld h, b                                       ; $534f: $60
    nop                                           ; $5350: $00
    ld h, l                                       ; $5351: $65
    nop                                           ; $5352: $00
    ld l, d                                       ; $5353: $6a
    nop                                           ; $5354: $00
    ld l, l                                       ; $5355: $6d
    nop                                           ; $5356: $00
    ld [hl], c                                    ; $5357: $71
    nop                                           ; $5358: $00
    ld [hl], h                                    ; $5359: $74
    nop                                           ; $535a: $00
    ld a, b                                       ; $535b: $78
    nop                                           ; $535c: $00
    ld a, d                                       ; $535d: $7a
    nop                                           ; $535e: $00
    ld a, l                                       ; $535f: $7d
    nop                                           ; $5360: $00
    add b                                         ; $5361: $80
    nop                                           ; $5362: $00
    add e                                         ; $5363: $83
    nop                                           ; $5364: $00
    add l                                         ; $5365: $85
    nop                                           ; $5366: $00
    adc b                                         ; $5367: $88
    nop                                           ; $5368: $00
    adc d                                         ; $5369: $8a
    nop                                           ; $536a: $00
    adc l                                         ; $536b: $8d
    nop                                           ; $536c: $00
    adc [hl]                                      ; $536d: $8e
    nop                                           ; $536e: $00
    sub b                                         ; $536f: $90
    nop                                           ; $5370: $00
    sub d                                         ; $5371: $92
    nop                                           ; $5372: $00
    sub l                                         ; $5373: $95
    nop                                           ; $5374: $00
    sub [hl]                                      ; $5375: $96
    nop                                           ; $5376: $00
    ld bc, $1700                                  ; $5377: $01 $00 $17
    nop                                           ; $537a: $00
    ld h, $00                                     ; $537b: $26 $00
    ld sp, $3b00                                  ; $537d: $31 $00 $3b
    nop                                           ; $5380: $00
    ld b, e                                       ; $5381: $43
    nop                                           ; $5382: $00
    ld c, c                                       ; $5383: $49
    nop                                           ; $5384: $00
    ld d, b                                       ; $5385: $50
    nop                                           ; $5386: $00
    ld d, [hl]                                    ; $5387: $56
    nop                                           ; $5388: $00
    ld e, h                                       ; $5389: $5c
    nop                                           ; $538a: $00
    ld h, b                                       ; $538b: $60
    nop                                           ; $538c: $00
    ld h, l                                       ; $538d: $65
    nop                                           ; $538e: $00
    ld l, d                                       ; $538f: $6a
    nop                                           ; $5390: $00
    ld l, [hl]                                    ; $5391: $6e
    nop                                           ; $5392: $00
    ld [hl], d                                    ; $5393: $72
    nop                                           ; $5394: $00
    ld [hl], l                                    ; $5395: $75
    nop                                           ; $5396: $00
    ld a, c                                       ; $5397: $79
    nop                                           ; $5398: $00
    ld a, l                                       ; $5399: $7d
    nop                                           ; $539a: $00
    add b                                         ; $539b: $80
    nop                                           ; $539c: $00
    add e                                         ; $539d: $83
    nop                                           ; $539e: $00
    add l                                         ; $539f: $85
    nop                                           ; $53a0: $00
    adc b                                         ; $53a1: $88
    nop                                           ; $53a2: $00
    adc e                                         ; $53a3: $8b
    nop                                           ; $53a4: $00
    adc l                                         ; $53a5: $8d
    nop                                           ; $53a6: $00
    adc a                                         ; $53a7: $8f
    nop                                           ; $53a8: $00
    sub c                                         ; $53a9: $91
    nop                                           ; $53aa: $00
    sub h                                         ; $53ab: $94
    nop                                           ; $53ac: $00
    sub [hl]                                      ; $53ad: $96
    nop                                           ; $53ae: $00
    sbc b                                         ; $53af: $98
    nop                                           ; $53b0: $00
    sbc d                                         ; $53b1: $9a
    nop                                           ; $53b2: $00
    sbc h                                         ; $53b3: $9c
    nop                                           ; $53b4: $00
    ld bc, $1900                                  ; $53b5: $01 $00 $19
    nop                                           ; $53b8: $00
    jr z, jr_03a_53bb                             ; $53b9: $28 $00

jr_03a_53bb:
    inc sp                                        ; $53bb: $33
    nop                                           ; $53bc: $00
    ld a, $00                                     ; $53bd: $3e $00
    ld b, a                                       ; $53bf: $47
    nop                                           ; $53c0: $00
    ld c, a                                       ; $53c1: $4f
    nop                                           ; $53c2: $00
    ld d, l                                       ; $53c3: $55
    nop                                           ; $53c4: $00
    ld e, e                                       ; $53c5: $5b
    nop                                           ; $53c6: $00
    ld h, c                                       ; $53c7: $61
    nop                                           ; $53c8: $00
    ld h, [hl]                                    ; $53c9: $66
    nop                                           ; $53ca: $00
    ld l, e                                       ; $53cb: $6b
    nop                                           ; $53cc: $00
    ld l, a                                       ; $53cd: $6f
    nop                                           ; $53ce: $00
    ld [hl], h                                    ; $53cf: $74
    nop                                           ; $53d0: $00
    ld a, b                                       ; $53d1: $78
    nop                                           ; $53d2: $00
    ld a, e                                       ; $53d3: $7b
    nop                                           ; $53d4: $00
    add b                                         ; $53d5: $80
    nop                                           ; $53d6: $00
    add e                                         ; $53d7: $83
    nop                                           ; $53d8: $00
    add [hl]                                      ; $53d9: $86
    nop                                           ; $53da: $00
    adc c                                         ; $53db: $89
    nop                                           ; $53dc: $00
    adc h                                         ; $53dd: $8c
    nop                                           ; $53de: $00
    adc a                                         ; $53df: $8f
    nop                                           ; $53e0: $00
    sub d                                         ; $53e1: $92
    nop                                           ; $53e2: $00
    sub h                                         ; $53e3: $94
    nop                                           ; $53e4: $00
    sub [hl]                                      ; $53e5: $96
    nop                                           ; $53e6: $00
    sbc c                                         ; $53e7: $99
    nop                                           ; $53e8: $00
    sbc e                                         ; $53e9: $9b
    nop                                           ; $53ea: $00
    sbc l                                         ; $53eb: $9d
    nop                                           ; $53ec: $00
    sbc a                                         ; $53ed: $9f
    nop                                           ; $53ee: $00
    and d                                         ; $53ef: $a2
    nop                                           ; $53f0: $00
    and e                                         ; $53f1: $a3
    nop                                           ; $53f2: $00
    ld bc, $1b00                                  ; $53f3: $01 $00 $1b
    nop                                           ; $53f6: $00
    ld a, [hl+]                                   ; $53f7: $2a
    nop                                           ; $53f8: $00
    jr c, jr_03a_53fb                             ; $53f9: $38 $00

jr_03a_53fb:
    ld b, d                                       ; $53fb: $42
    nop                                           ; $53fc: $00
    ld c, h                                       ; $53fd: $4c
    nop                                           ; $53fe: $00
    ld d, e                                       ; $53ff: $53
    nop                                           ; $5400: $00
    ld e, d                                       ; $5401: $5a
    nop                                           ; $5402: $00
    ld h, b                                       ; $5403: $60
    nop                                           ; $5404: $00
    ld h, a                                       ; $5405: $67
    nop                                           ; $5406: $00
    ld l, l                                       ; $5407: $6d
    nop                                           ; $5408: $00
    ld [hl], c                                    ; $5409: $71
    nop                                           ; $540a: $00
    halt                                          ; $540b: $76
    nop                                           ; $540c: $00
    ld a, e                                       ; $540d: $7b
    nop                                           ; $540e: $00
    ld a, a                                       ; $540f: $7f
    nop                                           ; $5410: $00
    add e                                         ; $5411: $83
    nop                                           ; $5412: $00
    add a                                         ; $5413: $87
    nop                                           ; $5414: $00
    adc d                                         ; $5415: $8a
    nop                                           ; $5416: $00
    adc [hl]                                      ; $5417: $8e
    nop                                           ; $5418: $00
    sub c                                         ; $5419: $91
    nop                                           ; $541a: $00
    sub h                                         ; $541b: $94
    nop                                           ; $541c: $00
    sub a                                         ; $541d: $97
    nop                                           ; $541e: $00
    sbc d                                         ; $541f: $9a
    nop                                           ; $5420: $00
    sbc h                                         ; $5421: $9c
    nop                                           ; $5422: $00
    sbc [hl]                                      ; $5423: $9e
    nop                                           ; $5424: $00
    and c                                         ; $5425: $a1
    nop                                           ; $5426: $00
    and h                                         ; $5427: $a4
    nop                                           ; $5428: $00
    and [hl]                                      ; $5429: $a6
    nop                                           ; $542a: $00
    xor b                                         ; $542b: $a8
    nop                                           ; $542c: $00
    xor d                                         ; $542d: $aa
    nop                                           ; $542e: $00
    xor h                                         ; $542f: $ac
    nop                                           ; $5430: $00
    ld bc, $1c00                                  ; $5431: $01 $00 $1c
    nop                                           ; $5434: $00
    dec hl                                        ; $5435: $2b
    nop                                           ; $5436: $00
    add hl, sp                                    ; $5437: $39
    nop                                           ; $5438: $00
    ld b, h                                       ; $5439: $44
    nop                                           ; $543a: $00
    ld c, l                                       ; $543b: $4d
    nop                                           ; $543c: $00
    ld d, h                                       ; $543d: $54
    nop                                           ; $543e: $00
    ld e, h                                       ; $543f: $5c
    nop                                           ; $5440: $00
    ld h, e                                       ; $5441: $63
    nop                                           ; $5442: $00
    ld l, c                                       ; $5443: $69
    nop                                           ; $5444: $00
    ld l, a                                       ; $5445: $6f
    nop                                           ; $5446: $00
    ld [hl], h                                    ; $5447: $74
    nop                                           ; $5448: $00
    ld a, b                                       ; $5449: $78
    nop                                           ; $544a: $00
    ld a, [hl]                                    ; $544b: $7e
    nop                                           ; $544c: $00
    add d                                         ; $544d: $82
    nop                                           ; $544e: $00
    add a                                         ; $544f: $87
    nop                                           ; $5450: $00
    adc e                                         ; $5451: $8b
    nop                                           ; $5452: $00
    adc a                                         ; $5453: $8f
    nop                                           ; $5454: $00
    sub d                                         ; $5455: $92
    nop                                           ; $5456: $00
    sub [hl]                                      ; $5457: $96
    nop                                           ; $5458: $00
    sbc c                                         ; $5459: $99
    nop                                           ; $545a: $00
    sbc h                                         ; $545b: $9c
    nop                                           ; $545c: $00
    sbc a                                         ; $545d: $9f
    nop                                           ; $545e: $00
    and e                                         ; $545f: $a3
    nop                                           ; $5460: $00
    and l                                         ; $5461: $a5
    nop                                           ; $5462: $00
    xor b                                         ; $5463: $a8
    nop                                           ; $5464: $00
    xor d                                         ; $5465: $aa
    nop                                           ; $5466: $00
    xor [hl]                                      ; $5467: $ae
    nop                                           ; $5468: $00
    or b                                          ; $5469: $b0
    nop                                           ; $546a: $00
    or e                                          ; $546b: $b3
    nop                                           ; $546c: $00
    or l                                          ; $546d: $b5
    nop                                           ; $546e: $00
    ld bc, $1f00                                  ; $546f: $01 $00 $1f
    nop                                           ; $5472: $00
    jr nc, jr_03a_5475                            ; $5473: $30 $00

jr_03a_5475:
    ccf                                           ; $5475: $3f
    nop                                           ; $5476: $00
    ld c, d                                       ; $5477: $4a
    nop                                           ; $5478: $00
    ld d, e                                       ; $5479: $53
    nop                                           ; $547a: $00
    ld e, e                                       ; $547b: $5b
    nop                                           ; $547c: $00
    ld h, e                                       ; $547d: $63
    nop                                           ; $547e: $00
    ld l, e                                       ; $547f: $6b
    nop                                           ; $5480: $00
    ld [hl], d                                    ; $5481: $72
    nop                                           ; $5482: $00
    ld a, b                                       ; $5483: $78
    nop                                           ; $5484: $00
    ld a, [hl]                                    ; $5485: $7e
    nop                                           ; $5486: $00
    add h                                         ; $5487: $84
    nop                                           ; $5488: $00
    adc c                                         ; $5489: $89
    nop                                           ; $548a: $00
    adc [hl]                                      ; $548b: $8e
    nop                                           ; $548c: $00
    sub e                                         ; $548d: $93
    nop                                           ; $548e: $00
    sub a                                         ; $548f: $97
    nop                                           ; $5490: $00
    sbc e                                         ; $5491: $9b
    nop                                           ; $5492: $00
    and b                                         ; $5493: $a0
    nop                                           ; $5494: $00
    and h                                         ; $5495: $a4
    nop                                           ; $5496: $00
    and a                                         ; $5497: $a7
    nop                                           ; $5498: $00
    xor e                                         ; $5499: $ab
    nop                                           ; $549a: $00
    xor a                                         ; $549b: $af
    nop                                           ; $549c: $00
    or d                                          ; $549d: $b2
    nop                                           ; $549e: $00
    or [hl]                                       ; $549f: $b6
    nop                                           ; $54a0: $00
    cp b                                          ; $54a1: $b8
    nop                                           ; $54a2: $00
    cp h                                          ; $54a3: $bc
    nop                                           ; $54a4: $00
    cp a                                          ; $54a5: $bf
    nop                                           ; $54a6: $00
    jp nz, $c500                                  ; $54a7: $c2 $00 $c5

    nop                                           ; $54aa: $00
    ret z                                         ; $54ab: $c8

    nop                                           ; $54ac: $00
    ld bc, $2400                                  ; $54ad: $01 $00 $24
    nop                                           ; $54b0: $00
    scf                                           ; $54b1: $37
    nop                                           ; $54b2: $00
    ld b, a                                       ; $54b3: $47
    nop                                           ; $54b4: $00
    ld d, h                                       ; $54b5: $54
    nop                                           ; $54b6: $00
    ld e, [hl]                                    ; $54b7: $5e
    nop                                           ; $54b8: $00
    ld l, c                                       ; $54b9: $69
    nop                                           ; $54ba: $00
    ld [hl], e                                    ; $54bb: $73
    nop                                           ; $54bc: $00
    ld a, e                                       ; $54bd: $7b
    nop                                           ; $54be: $00
    add e                                         ; $54bf: $83
    nop                                           ; $54c0: $00
    adc d                                         ; $54c1: $8a
    nop                                           ; $54c2: $00
    sub c                                         ; $54c3: $91
    nop                                           ; $54c4: $00
    sbc b                                         ; $54c5: $98
    nop                                           ; $54c6: $00
    sbc [hl]                                      ; $54c7: $9e
    nop                                           ; $54c8: $00
    and h                                         ; $54c9: $a4
    nop                                           ; $54ca: $00
    xor c                                         ; $54cb: $a9
    nop                                           ; $54cc: $00
    xor [hl]                                      ; $54cd: $ae
    nop                                           ; $54ce: $00
    or h                                          ; $54cf: $b4
    nop                                           ; $54d0: $00
    cp c                                          ; $54d1: $b9
    nop                                           ; $54d2: $00
    cp l                                          ; $54d3: $bd
    nop                                           ; $54d4: $00
    jp nz, $c600                                  ; $54d5: $c2 $00 $c6

    nop                                           ; $54d8: $00
    jp z, $cf00                                   ; $54d9: $ca $00 $cf

    nop                                           ; $54dc: $00
    db $d3                                        ; $54dd: $d3
    nop                                           ; $54de: $00
    rst $10                                       ; $54df: $d7
    nop                                           ; $54e0: $00
    jp c, $df00                                   ; $54e1: $da $00 $df

    nop                                           ; $54e4: $00
    ld [c], a                                     ; $54e5: $e2
    nop                                           ; $54e6: $00
    and $00                                       ; $54e7: $e6 $00
    jp hl                                         ; $54e9: $e9


    nop                                           ; $54ea: $00
    ld a, c                                       ; $54eb: $79
    cp $0d                                        ; $54ec: $fe $0d
    jr nc, jr_03a_552e                            ; $54ee: $30 $3e

    ld a, [$d32a]                                 ; $54f0: $fa $2a $d3
    cp $02                                        ; $54f3: $fe $02
    jr z, jr_03a_551c                             ; $54f5: $28 $25

    ld h, $00                                     ; $54f7: $26 $00
    ld l, c                                       ; $54f9: $69
    add hl, hl                                    ; $54fa: $29
    ld bc, $5532                                  ; $54fb: $01 $32 $55
    add hl, bc                                    ; $54fe: $09
    ld a, [hl+]                                   ; $54ff: $2a
    ld b, [hl]                                    ; $5500: $46
    ld c, a                                       ; $5501: $4f
    ld h, d                                       ; $5502: $62
    ld l, e                                       ; $5503: $6b
    res 0, l                                      ; $5504: $cb $85
    add hl, bc                                    ; $5506: $09
    bit 0, e                                      ; $5507: $cb $43
    jr nz, jr_03a_550f                            ; $5509: $20 $04

    ld a, [hl+]                                   ; $550b: $2a
    ld h, [hl]                                    ; $550c: $66
    ld l, a                                       ; $550d: $6f
    ret                                           ; $550e: $c9


jr_03a_550f:
    ld e, [hl]                                    ; $550f: $5e
    inc hl                                        ; $5510: $23
    ld d, [hl]                                    ; $5511: $56
    inc hl                                        ; $5512: $23
    ld a, [hl+]                                   ; $5513: $2a
    ld h, [hl]                                    ; $5514: $66
    ld l, a                                       ; $5515: $6f
    add hl, de                                    ; $5516: $19
    srl h                                         ; $5517: $cb $3c
    rr l                                          ; $5519: $cb $1d
    ret                                           ; $551b: $c9


jr_03a_551c:
    ld h, $00                                     ; $551c: $26 $00
    ld l, c                                       ; $551e: $69
    add hl, hl                                    ; $551f: $29
    ld bc, $667c                                  ; $5520: $01 $7c $66
    add hl, bc                                    ; $5523: $09
    ld a, [hl+]                                   ; $5524: $2a
    ld h, [hl]                                    ; $5525: $66
    ld l, a                                       ; $5526: $6f
    res 0, e                                      ; $5527: $cb $83
    add hl, de                                    ; $5529: $19
    ld l, [hl]                                    ; $552a: $6e
    ld h, $00                                     ; $552b: $26 $00
    ret                                           ; $552d: $c9


jr_03a_552e:
    ld hl, $0040                                  ; $552e: $21 $40 $00
    ret                                           ; $5531: $c9


    ld c, h                                       ; $5532: $4c
    ld d, l                                       ; $5533: $55
    ld b, [hl]                                    ; $5534: $46
    ld d, a                                       ; $5535: $57
    inc e                                         ; $5536: $1c
    ld e, c                                       ; $5537: $59
    adc $5a                                       ; $5538: $ce $5a
    ld a, d                                       ; $553a: $7a
    ld e, h                                       ; $553b: $5c
    ld [bc], a                                    ; $553c: $02
    ld e, [hl]                                    ; $553d: $5e
    ld l, d                                       ; $553e: $6a
    ld e, a                                       ; $553f: $5f
    or [hl]                                       ; $5540: $b6
    ld h, b                                       ; $5541: $60
    xor $61                                       ; $5542: $ee $61
    db $10                                        ; $5544: $10
    ld h, e                                       ; $5545: $63
    inc e                                         ; $5546: $1c
    ld h, h                                       ; $5547: $64
    ld a, [bc]                                    ; $5548: $0a
    ld h, l                                       ; $5549: $65
    sub $65                                       ; $554a: $d6 $65
    inc b                                         ; $554c: $04
    nop                                           ; $554d: $00
    jr jr_03a_5550                                ; $554e: $18 $00

jr_03a_5550:
    rra                                           ; $5550: $1f
    nop                                           ; $5551: $00
    dec h                                         ; $5552: $25
    nop                                           ; $5553: $00
    ld a, [hl+]                                   ; $5554: $2a
    nop                                           ; $5555: $00
    cpl                                           ; $5556: $2f
    nop                                           ; $5557: $00
    inc [hl]                                      ; $5558: $34
    nop                                           ; $5559: $00
    add hl, sp                                    ; $555a: $39
    nop                                           ; $555b: $00
    dec a                                         ; $555c: $3d
    nop                                           ; $555d: $00
    ld b, b                                       ; $555e: $40
    nop                                           ; $555f: $00
    ld b, e                                       ; $5560: $43
    nop                                           ; $5561: $00
    ld b, a                                       ; $5562: $47
    nop                                           ; $5563: $00
    ld c, c                                       ; $5564: $49
    nop                                           ; $5565: $00
    ld c, l                                       ; $5566: $4d
    nop                                           ; $5567: $00
    ld d, b                                       ; $5568: $50
    nop                                           ; $5569: $00
    ld d, e                                       ; $556a: $53
    nop                                           ; $556b: $00
    ld d, l                                       ; $556c: $55
    nop                                           ; $556d: $00
    ld d, a                                       ; $556e: $57
    nop                                           ; $556f: $00
    ld e, d                                       ; $5570: $5a
    nop                                           ; $5571: $00
    ld e, h                                       ; $5572: $5c
    nop                                           ; $5573: $00
    ld e, a                                       ; $5574: $5f
    nop                                           ; $5575: $00
    ld h, d                                       ; $5576: $62
    nop                                           ; $5577: $00
    ld h, h                                       ; $5578: $64
    nop                                           ; $5579: $00
    ld h, [hl]                                    ; $557a: $66
    nop                                           ; $557b: $00
    ld l, b                                       ; $557c: $68
    nop                                           ; $557d: $00
    ld l, d                                       ; $557e: $6a
    nop                                           ; $557f: $00
    ld l, h                                       ; $5580: $6c
    nop                                           ; $5581: $00
    ld l, a                                       ; $5582: $6f
    nop                                           ; $5583: $00
    ld [hl], c                                    ; $5584: $71
    nop                                           ; $5585: $00
    ld [hl], e                                    ; $5586: $73
    nop                                           ; $5587: $00
    ld [hl], l                                    ; $5588: $75
    nop                                           ; $5589: $00
    ld [hl], a                                    ; $558a: $77
    nop                                           ; $558b: $00
    ld a, c                                       ; $558c: $79
    nop                                           ; $558d: $00
    ld a, d                                       ; $558e: $7a
    nop                                           ; $558f: $00
    ld a, l                                       ; $5590: $7d
    nop                                           ; $5591: $00
    ld a, a                                       ; $5592: $7f
    nop                                           ; $5593: $00
    add c                                         ; $5594: $81
    nop                                           ; $5595: $00
    add e                                         ; $5596: $83
    nop                                           ; $5597: $00
    add l                                         ; $5598: $85
    nop                                           ; $5599: $00
    add a                                         ; $559a: $87
    nop                                           ; $559b: $00
    adc b                                         ; $559c: $88
    nop                                           ; $559d: $00
    adc d                                         ; $559e: $8a
    nop                                           ; $559f: $00
    adc e                                         ; $55a0: $8b
    nop                                           ; $55a1: $00
    adc [hl]                                      ; $55a2: $8e
    nop                                           ; $55a3: $00
    adc a                                         ; $55a4: $8f
    nop                                           ; $55a5: $00
    sub c                                         ; $55a6: $91
    nop                                           ; $55a7: $00
    sub e                                         ; $55a8: $93
    nop                                           ; $55a9: $00
    sub l                                         ; $55aa: $95
    nop                                           ; $55ab: $00
    sub a                                         ; $55ac: $97
    nop                                           ; $55ad: $00
    sbc b                                         ; $55ae: $98
    nop                                           ; $55af: $00
    sbc d                                         ; $55b0: $9a
    nop                                           ; $55b1: $00
    sbc h                                         ; $55b2: $9c
    nop                                           ; $55b3: $00
    sbc [hl]                                      ; $55b4: $9e
    nop                                           ; $55b5: $00
    sbc a                                         ; $55b6: $9f
    nop                                           ; $55b7: $00
    and d                                         ; $55b8: $a2
    nop                                           ; $55b9: $00
    and e                                         ; $55ba: $a3
    nop                                           ; $55bb: $00
    and l                                         ; $55bc: $a5
    nop                                           ; $55bd: $00
    and [hl]                                      ; $55be: $a6
    nop                                           ; $55bf: $00
    xor b                                         ; $55c0: $a8
    nop                                           ; $55c1: $00
    xor d                                         ; $55c2: $aa
    nop                                           ; $55c3: $00
    xor e                                         ; $55c4: $ab
    nop                                           ; $55c5: $00
    xor l                                         ; $55c6: $ad
    nop                                           ; $55c7: $00
    xor a                                         ; $55c8: $af
    nop                                           ; $55c9: $00
    or c                                          ; $55ca: $b1
    nop                                           ; $55cb: $00
    or d                                          ; $55cc: $b2
    nop                                           ; $55cd: $00
    or h                                          ; $55ce: $b4
    nop                                           ; $55cf: $00
    or l                                          ; $55d0: $b5
    nop                                           ; $55d1: $00
    or a                                          ; $55d2: $b7
    nop                                           ; $55d3: $00
    cp b                                          ; $55d4: $b8
    nop                                           ; $55d5: $00
    cp d                                          ; $55d6: $ba
    nop                                           ; $55d7: $00
    cp h                                          ; $55d8: $bc
    nop                                           ; $55d9: $00
    cp l                                          ; $55da: $bd
    nop                                           ; $55db: $00
    ret nz                                        ; $55dc: $c0

    nop                                           ; $55dd: $00
    pop bc                                        ; $55de: $c1
    nop                                           ; $55df: $00
    jp nz, $c400                                  ; $55e0: $c2 $00 $c4

    nop                                           ; $55e3: $00
    add $00                                       ; $55e4: $c6 $00
    ret z                                         ; $55e6: $c8

    nop                                           ; $55e7: $00
    ret                                           ; $55e8: $c9


    nop                                           ; $55e9: $00
    rlc b                                         ; $55ea: $cb $00
    call z, $ce00                                 ; $55ec: $cc $00 $ce
    nop                                           ; $55ef: $00
    rst $08                                       ; $55f0: $cf
    nop                                           ; $55f1: $00
    pop de                                        ; $55f2: $d1
    nop                                           ; $55f3: $00
    jp nc, $d400                                  ; $55f4: $d2 $00 $d4

    nop                                           ; $55f7: $00
    push de                                       ; $55f8: $d5
    nop                                           ; $55f9: $00
    rst $10                                       ; $55fa: $d7
    nop                                           ; $55fb: $00
    ret c                                         ; $55fc: $d8

    nop                                           ; $55fd: $00
    jp c, $db00                                   ; $55fe: $da $00 $db

    nop                                           ; $5601: $00
    db $dd                                        ; $5602: $dd
    nop                                           ; $5603: $00
    rst $18                                       ; $5604: $df
    nop                                           ; $5605: $00
    pop hl                                        ; $5606: $e1
    nop                                           ; $5607: $00
    ld [c], a                                     ; $5608: $e2
    nop                                           ; $5609: $00
    db $e4                                        ; $560a: $e4
    nop                                           ; $560b: $00
    push hl                                       ; $560c: $e5
    nop                                           ; $560d: $00
    rst $20                                       ; $560e: $e7
    nop                                           ; $560f: $00
    add sp, $00                                   ; $5610: $e8 $00
    ld [$eb00], a                                 ; $5612: $ea $00 $eb
    nop                                           ; $5615: $00
    db $ed                                        ; $5616: $ed
    nop                                           ; $5617: $00
    xor $00                                       ; $5618: $ee $00
    ldh a, [rP1]                                  ; $561a: $f0 $00
    pop af                                        ; $561c: $f1
    nop                                           ; $561d: $00
    di                                            ; $561e: $f3
    nop                                           ; $561f: $00
    push af                                       ; $5620: $f5
    nop                                           ; $5621: $00
    or $00                                        ; $5622: $f6 $00
    ld hl, sp+$00                                 ; $5624: $f8 $00
    ld sp, hl                                     ; $5626: $f9
    nop                                           ; $5627: $00
    ld a, [$fc00]                                 ; $5628: $fa $00 $fc
    nop                                           ; $562b: $00
    cp $00                                        ; $562c: $fe $00
    rst $38                                       ; $562e: $ff
    nop                                           ; $562f: $00
    ld bc, $0201                                  ; $5630: $01 $01 $02
    ld bc, HeaderLogo                             ; $5633: $01 $04 $01
    dec b                                         ; $5636: $05
    ld bc, $0107                                  ; $5637: $01 $07 $01
    add hl, bc                                    ; $563a: $09
    ld bc, $010a                                  ; $563b: $01 $0a $01
    inc c                                         ; $563e: $0c
    ld bc, $010d                                  ; $563f: $01 $0d $01
    rrca                                          ; $5642: $0f
    ld bc, $0110                                  ; $5643: $01 $10 $01
    ld de, $1301                                  ; $5646: $11 $01 $13
    ld bc, $0114                                  ; $5649: $01 $14 $01
    ld d, $01                                     ; $564c: $16 $01
    jr jr_03a_5651                                ; $564e: $18 $01

    add hl, de                                    ; $5650: $19

jr_03a_5651:
    ld bc, $011b                                  ; $5651: $01 $1b $01
    inc e                                         ; $5654: $1c
    ld bc, $011e                                  ; $5655: $01 $1e $01
    rra                                           ; $5658: $1f
    ld bc, $0121                                  ; $5659: $01 $21 $01
    ld [hl+], a                                   ; $565c: $22
    ld bc, $0124                                  ; $565d: $01 $24 $01
    dec h                                         ; $5660: $25
    ld bc, $0127                                  ; $5661: $01 $27 $01
    add hl, hl                                    ; $5664: $29
    ld bc, $012a                                  ; $5665: $01 $2a $01
    inc l                                         ; $5668: $2c
    ld bc, $012d                                  ; $5669: $01 $2d $01
    ld l, $01                                     ; $566c: $2e $01
    jr nc, @+$03                                  ; $566e: $30 $01

    ld sp, $3301                                  ; $5670: $31 $01 $33
    ld bc, $0135                                  ; $5673: $01 $35 $01
    ld [hl], $01                                  ; $5676: $36 $01
    jr c, jr_03a_567b                             ; $5678: $38 $01

    add hl, sp                                    ; $567a: $39

jr_03a_567b:
    ld bc, $013a                                  ; $567b: $01 $3a $01
    inc a                                         ; $567e: $3c
    ld bc, $013e                                  ; $567f: $01 $3e $01
    ld b, b                                       ; $5682: $40
    ld bc, $0141                                  ; $5683: $01 $41 $01
    ld b, d                                       ; $5686: $42
    ld bc, HeaderNewLicenseeCode                  ; $5687: $01 $44 $01
    ld b, l                                       ; $568a: $45
    ld bc, HeaderCartridgeType                    ; $568b: $01 $47 $01
    ld c, b                                       ; $568e: $48
    ld bc, HeaderDestinationCode                  ; $568f: $01 $4a $01
    ld c, e                                       ; $5692: $4b
    ld bc, HeaderComplementCheck                  ; $5693: $01 $4d $01
    ld c, [hl]                                    ; $5696: $4e
    ld bc, $0150                                  ; $5697: $01 $50 $01
    ld d, d                                       ; $569a: $52
    ld bc, $0153                                  ; $569b: $01 $53 $01
    ld d, h                                       ; $569e: $54
    ld bc, $0156                                  ; $569f: $01 $56 $01
    ld d, a                                       ; $56a2: $57
    ld bc, $0159                                  ; $56a3: $01 $59 $01
    ld e, d                                       ; $56a6: $5a
    ld bc, $015c                                  ; $56a7: $01 $5c $01
    ld e, [hl]                                    ; $56aa: $5e
    ld bc, $015f                                  ; $56ab: $01 $5f $01
    ld h, c                                       ; $56ae: $61
    ld bc, $0162                                  ; $56af: $01 $62 $01
    ld h, e                                       ; $56b2: $63
    ld bc, $0165                                  ; $56b3: $01 $65 $01
    ld h, a                                       ; $56b6: $67
    ld bc, $0168                                  ; $56b7: $01 $68 $01
    ld l, d                                       ; $56ba: $6a
    ld bc, $016b                                  ; $56bb: $01 $6b $01
    ld l, l                                       ; $56be: $6d
    ld bc, $016e                                  ; $56bf: $01 $6e $01
    ld [hl], b                                    ; $56c2: $70
    ld bc, $0171                                  ; $56c3: $01 $71 $01
    ld [hl], e                                    ; $56c6: $73
    ld bc, $0174                                  ; $56c7: $01 $74 $01
    halt                                          ; $56ca: $76
    ld bc, $0177                                  ; $56cb: $01 $77 $01
    ld a, c                                       ; $56ce: $79
    ld bc, $017a                                  ; $56cf: $01 $7a $01
    ld a, h                                       ; $56d2: $7c
    ld bc, $017d                                  ; $56d3: $01 $7d $01
    ld a, a                                       ; $56d6: $7f
    ld bc, $0180                                  ; $56d7: $01 $80 $01
    add d                                         ; $56da: $82
    ld bc, $0183                                  ; $56db: $01 $83 $01
    add l                                         ; $56de: $85
    ld bc, $0186                                  ; $56df: $01 $86 $01
    adc b                                         ; $56e2: $88
    ld bc, $0189                                  ; $56e3: $01 $89 $01
    adc e                                         ; $56e6: $8b
    ld bc, $018d                                  ; $56e7: $01 $8d $01
    adc [hl]                                      ; $56ea: $8e
    ld bc, $018f                                  ; $56eb: $01 $8f $01
    sub c                                         ; $56ee: $91
    ld bc, $0193                                  ; $56ef: $01 $93 $01
    sub h                                         ; $56f2: $94
    ld bc, $0196                                  ; $56f3: $01 $96 $01
    sub a                                         ; $56f6: $97
    ld bc, $0199                                  ; $56f7: $01 $99 $01
    sbc d                                         ; $56fa: $9a
    ld bc, $019c                                  ; $56fb: $01 $9c $01
    sbc l                                         ; $56fe: $9d
    ld bc, $019f                                  ; $56ff: $01 $9f $01
    and c                                         ; $5702: $a1
    ld bc, $01a2                                  ; $5703: $01 $a2 $01
    and h                                         ; $5706: $a4
    ld bc, $01a5                                  ; $5707: $01 $a5 $01
    and a                                         ; $570a: $a7
    ld bc, $01a8                                  ; $570b: $01 $a8 $01
    xor d                                         ; $570e: $aa
    ld bc, $01ab                                  ; $570f: $01 $ab $01
    xor l                                         ; $5712: $ad
    ld bc, $01ae                                  ; $5713: $01 $ae $01
    or b                                          ; $5716: $b0
    ld bc, $01b1                                  ; $5717: $01 $b1 $01
    or e                                          ; $571a: $b3
    ld bc, $01b4                                  ; $571b: $01 $b4 $01
    or [hl]                                       ; $571e: $b6
    ld bc, $01b8                                  ; $571f: $01 $b8 $01
    cp c                                          ; $5722: $b9
    ld bc, $01bb                                  ; $5723: $01 $bb $01
    cp h                                          ; $5726: $bc
    ld bc, $01bd                                  ; $5727: $01 $bd $01
    cp a                                          ; $572a: $bf
    ld bc, $01c1                                  ; $572b: $01 $c1 $01
    jp nz, $c401                                  ; $572e: $c2 $01 $c4

    ld bc, $01c5                                  ; $5731: $01 $c5 $01
    rst $00                                       ; $5734: $c7
    ld bc, $01c8                                  ; $5735: $01 $c8 $01
    jp z, $cb01                                   ; $5738: $ca $01 $cb

    ld bc, $01cd                                  ; $573b: $01 $cd $01
    rst $08                                       ; $573e: $cf
    ld bc, $01d0                                  ; $573f: $01 $d0 $01
    pop de                                        ; $5742: $d1
    ld bc, $01d3                                  ; $5743: $01 $d3 $01
    inc b                                         ; $5746: $04
    nop                                           ; $5747: $00
    dec de                                        ; $5748: $1b
    nop                                           ; $5749: $00
    inc hl                                        ; $574a: $23
    nop                                           ; $574b: $00
    add hl, hl                                    ; $574c: $29
    nop                                           ; $574d: $00
    ld l, $00                                     ; $574e: $2e $00
    dec [hl]                                      ; $5750: $35
    nop                                           ; $5751: $00
    add hl, sp                                    ; $5752: $39
    nop                                           ; $5753: $00
    dec a                                         ; $5754: $3d
    nop                                           ; $5755: $00
    ld b, b                                       ; $5756: $40
    nop                                           ; $5757: $00
    ld b, h                                       ; $5758: $44
    nop                                           ; $5759: $00
    ld b, a                                       ; $575a: $47
    nop                                           ; $575b: $00
    ld c, e                                       ; $575c: $4b
    nop                                           ; $575d: $00
    ld c, [hl]                                    ; $575e: $4e
    nop                                           ; $575f: $00
    ld d, c                                       ; $5760: $51
    nop                                           ; $5761: $00
    ld d, h                                       ; $5762: $54
    nop                                           ; $5763: $00
    ld d, a                                       ; $5764: $57
    nop                                           ; $5765: $00
    ld e, c                                       ; $5766: $59
    nop                                           ; $5767: $00
    ld e, h                                       ; $5768: $5c
    nop                                           ; $5769: $00
    ld e, [hl]                                    ; $576a: $5e
    nop                                           ; $576b: $00
    ld h, c                                       ; $576c: $61
    nop                                           ; $576d: $00
    ld h, e                                       ; $576e: $63
    nop                                           ; $576f: $00
    ld h, [hl]                                    ; $5770: $66
    nop                                           ; $5771: $00
    ld l, b                                       ; $5772: $68
    nop                                           ; $5773: $00
    ld l, d                                       ; $5774: $6a
    nop                                           ; $5775: $00
    ld l, l                                       ; $5776: $6d
    nop                                           ; $5777: $00
    ld l, a                                       ; $5778: $6f
    nop                                           ; $5779: $00
    ld [hl], c                                    ; $577a: $71
    nop                                           ; $577b: $00
    ld [hl], e                                    ; $577c: $73
    nop                                           ; $577d: $00
    ld [hl], l                                    ; $577e: $75
    nop                                           ; $577f: $00
    ld [hl], a                                    ; $5780: $77
    nop                                           ; $5781: $00
    ld a, d                                       ; $5782: $7a
    nop                                           ; $5783: $00
    ld a, h                                       ; $5784: $7c
    nop                                           ; $5785: $00
    ld a, [hl]                                    ; $5786: $7e
    nop                                           ; $5787: $00
    add b                                         ; $5788: $80
    nop                                           ; $5789: $00
    add d                                         ; $578a: $82
    nop                                           ; $578b: $00
    add h                                         ; $578c: $84
    nop                                           ; $578d: $00
    add [hl]                                      ; $578e: $86
    nop                                           ; $578f: $00
    adc b                                         ; $5790: $88
    nop                                           ; $5791: $00
    adc d                                         ; $5792: $8a
    nop                                           ; $5793: $00
    adc h                                         ; $5794: $8c
    nop                                           ; $5795: $00
    adc [hl]                                      ; $5796: $8e
    nop                                           ; $5797: $00
    sub b                                         ; $5798: $90
    nop                                           ; $5799: $00
    sub c                                         ; $579a: $91
    nop                                           ; $579b: $00
    sub e                                         ; $579c: $93
    nop                                           ; $579d: $00
    sub l                                         ; $579e: $95
    nop                                           ; $579f: $00
    sbc b                                         ; $57a0: $98
    nop                                           ; $57a1: $00
    sbc c                                         ; $57a2: $99
    nop                                           ; $57a3: $00
    sbc e                                         ; $57a4: $9b
    nop                                           ; $57a5: $00
    sbc l                                         ; $57a6: $9d
    nop                                           ; $57a7: $00
    sbc a                                         ; $57a8: $9f
    nop                                           ; $57a9: $00
    and c                                         ; $57aa: $a1
    nop                                           ; $57ab: $00
    and e                                         ; $57ac: $a3
    nop                                           ; $57ad: $00
    and l                                         ; $57ae: $a5
    nop                                           ; $57af: $00
    and a                                         ; $57b0: $a7
    nop                                           ; $57b1: $00
    xor b                                         ; $57b2: $a8
    nop                                           ; $57b3: $00
    xor d                                         ; $57b4: $aa
    nop                                           ; $57b5: $00
    xor h                                         ; $57b6: $ac
    nop                                           ; $57b7: $00
    xor [hl]                                      ; $57b8: $ae
    nop                                           ; $57b9: $00
    or b                                          ; $57ba: $b0
    nop                                           ; $57bb: $00
    or c                                          ; $57bc: $b1
    nop                                           ; $57bd: $00
    or e                                          ; $57be: $b3
    nop                                           ; $57bf: $00
    or l                                          ; $57c0: $b5
    nop                                           ; $57c1: $00
    or a                                          ; $57c2: $b7
    nop                                           ; $57c3: $00
    cp b                                          ; $57c4: $b8
    nop                                           ; $57c5: $00
    cp d                                          ; $57c6: $ba
    nop                                           ; $57c7: $00
    cp h                                          ; $57c8: $bc
    nop                                           ; $57c9: $00
    cp [hl]                                       ; $57ca: $be
    nop                                           ; $57cb: $00
    ret nz                                        ; $57cc: $c0

    nop                                           ; $57cd: $00
    pop bc                                        ; $57ce: $c1
    nop                                           ; $57cf: $00
    jp $c500                                      ; $57d0: $c3 $00 $c5


    nop                                           ; $57d3: $00
    rst $00                                       ; $57d4: $c7
    nop                                           ; $57d5: $00
    ret                                           ; $57d6: $c9


    nop                                           ; $57d7: $00
    jp z, $cc00                                   ; $57d8: $ca $00 $cc

    nop                                           ; $57db: $00
    adc $00                                       ; $57dc: $ce $00
    rst $08                                       ; $57de: $cf
    nop                                           ; $57df: $00
    pop de                                        ; $57e0: $d1
    nop                                           ; $57e1: $00
    db $d3                                        ; $57e2: $d3
    nop                                           ; $57e3: $00
    push de                                       ; $57e4: $d5
    nop                                           ; $57e5: $00
    sub $00                                       ; $57e6: $d6 $00
    ret c                                         ; $57e8: $d8

    nop                                           ; $57e9: $00
    reti                                          ; $57ea: $d9


    nop                                           ; $57eb: $00
    db $db                                        ; $57ec: $db
    nop                                           ; $57ed: $00
    db $dd                                        ; $57ee: $dd
    nop                                           ; $57ef: $00
    rst $18                                       ; $57f0: $df
    nop                                           ; $57f1: $00
    pop hl                                        ; $57f2: $e1
    nop                                           ; $57f3: $00
    ld [c], a                                     ; $57f4: $e2
    nop                                           ; $57f5: $00
    db $e4                                        ; $57f6: $e4
    nop                                           ; $57f7: $00
    and $00                                       ; $57f8: $e6 $00
    rst $20                                       ; $57fa: $e7
    nop                                           ; $57fb: $00
    jp hl                                         ; $57fc: $e9


    nop                                           ; $57fd: $00
    db $eb                                        ; $57fe: $eb
    nop                                           ; $57ff: $00
    db $ec                                        ; $5800: $ec
    nop                                           ; $5801: $00
    xor $00                                       ; $5802: $ee $00
    ldh a, [rP1]                                  ; $5804: $f0 $00
    ld a, [c]                                     ; $5806: $f2
    nop                                           ; $5807: $00
    db $f4                                        ; $5808: $f4
    nop                                           ; $5809: $00
    push af                                       ; $580a: $f5
    nop                                           ; $580b: $00
    rst $30                                       ; $580c: $f7
    nop                                           ; $580d: $00
    ld sp, hl                                     ; $580e: $f9
    nop                                           ; $580f: $00
    ld a, [$fc00]                                 ; $5810: $fa $00 $fc
    nop                                           ; $5813: $00
    cp $00                                        ; $5814: $fe $00
    rst $38                                       ; $5816: $ff
    nop                                           ; $5817: $00
    ld bc, $0301                                  ; $5818: $01 $01 $03
    ld bc, HeaderLogo                             ; $581b: $01 $04 $01
    ld b, $01                                     ; $581e: $06 $01
    ld [$0901], sp                                ; $5820: $08 $01 $09
    ld bc, $010b                                  ; $5823: $01 $0b $01
    dec c                                         ; $5826: $0d
    ld bc, $010f                                  ; $5827: $01 $0f $01
    db $10                                        ; $582a: $10
    ld bc, $0112                                  ; $582b: $01 $12 $01
    inc d                                         ; $582e: $14
    ld bc, $0115                                  ; $582f: $01 $15 $01
    rla                                           ; $5832: $17
    ld bc, $0119                                  ; $5833: $01 $19 $01
    ld a, [de]                                    ; $5836: $1a
    ld bc, $011c                                  ; $5837: $01 $1c $01
    ld e, $01                                     ; $583a: $1e $01
    jr nz, @+$03                                  ; $583c: $20 $01

    ld hl, $2301                                  ; $583e: $21 $01 $23
    ld bc, $0125                                  ; $5841: $01 $25 $01
    ld h, $01                                     ; $5844: $26 $01
    jr z, jr_03a_5849                             ; $5846: $28 $01

    ld a, [hl+]                                   ; $5848: $2a

jr_03a_5849:
    ld bc, $012c                                  ; $5849: $01 $2c $01
    dec l                                         ; $584c: $2d
    ld bc, $012f                                  ; $584d: $01 $2f $01
    jr nc, jr_03a_5853                            ; $5850: $30 $01

    inc sp                                        ; $5852: $33

jr_03a_5853:
    ld bc, HeaderTitle                            ; $5853: $01 $34 $01
    dec [hl]                                      ; $5856: $35
    ld bc, $0137                                  ; $5857: $01 $37 $01
    add hl, sp                                    ; $585a: $39
    ld bc, $013b                                  ; $585b: $01 $3b $01
    dec a                                         ; $585e: $3d
    ld bc, $013e                                  ; $585f: $01 $3e $01
    ld b, b                                       ; $5862: $40
    ld bc, $0142                                  ; $5863: $01 $42 $01
    ld b, e                                       ; $5866: $43
    ld bc, $0145                                  ; $5867: $01 $45 $01
    ld b, a                                       ; $586a: $47
    ld bc, HeaderROMSize                          ; $586b: $01 $48 $01
    ld c, d                                       ; $586e: $4a
    ld bc, HeaderMaskROMVersion                   ; $586f: $01 $4c $01
    ld c, [hl]                                    ; $5872: $4e
    ld bc, $014f                                  ; $5873: $01 $4f $01
    ld d, c                                       ; $5876: $51
    ld bc, $0153                                  ; $5877: $01 $53 $01
    ld d, h                                       ; $587a: $54
    ld bc, $0156                                  ; $587b: $01 $56 $01
    ld e, b                                       ; $587e: $58
    ld bc, $015a                                  ; $587f: $01 $5a $01
    ld e, e                                       ; $5882: $5b
    ld bc, $015d                                  ; $5883: $01 $5d $01
    ld e, a                                       ; $5886: $5f
    ld bc, $0160                                  ; $5887: $01 $60 $01
    ld h, d                                       ; $588a: $62
    ld bc, $0164                                  ; $588b: $01 $64 $01
    ld h, l                                       ; $588e: $65
    ld bc, $0167                                  ; $588f: $01 $67 $01
    ld l, c                                       ; $5892: $69
    ld bc, $016b                                  ; $5893: $01 $6b $01
    ld l, h                                       ; $5896: $6c
    ld bc, $016e                                  ; $5897: $01 $6e $01
    ld [hl], b                                    ; $589a: $70
    ld bc, $0171                                  ; $589b: $01 $71 $01
    ld [hl], e                                    ; $589e: $73
    ld bc, $0175                                  ; $589f: $01 $75 $01
    ld [hl], a                                    ; $58a2: $77
    ld bc, $0178                                  ; $58a3: $01 $78 $01
    ld a, d                                       ; $58a6: $7a
    ld bc, $017b                                  ; $58a7: $01 $7b $01
    ld a, l                                       ; $58aa: $7d
    ld bc, $017f                                  ; $58ab: $01 $7f $01
    add c                                         ; $58ae: $81
    ld bc, $0183                                  ; $58af: $01 $83 $01
    add h                                         ; $58b2: $84
    ld bc, $0186                                  ; $58b3: $01 $86 $01
    adc b                                         ; $58b6: $88
    ld bc, $0189                                  ; $58b7: $01 $89 $01
    adc e                                         ; $58ba: $8b
    ld bc, $018d                                  ; $58bb: $01 $8d $01
    adc a                                         ; $58be: $8f
    ld bc, $0190                                  ; $58bf: $01 $90 $01
    sub d                                         ; $58c2: $92
    ld bc, $0194                                  ; $58c3: $01 $94 $01
    sub [hl]                                      ; $58c6: $96
    ld bc, $0197                                  ; $58c7: $01 $97 $01
    sbc c                                         ; $58ca: $99
    ld bc, $019b                                  ; $58cb: $01 $9b $01
    sbc h                                         ; $58ce: $9c
    ld bc, $019e                                  ; $58cf: $01 $9e $01
    and b                                         ; $58d2: $a0
    ld bc, $01a2                                  ; $58d3: $01 $a2 $01
    and e                                         ; $58d6: $a3
    ld bc, $01a5                                  ; $58d7: $01 $a5 $01
    and a                                         ; $58da: $a7
    ld bc, $01a9                                  ; $58db: $01 $a9 $01
    xor d                                         ; $58de: $aa
    ld bc, $01ac                                  ; $58df: $01 $ac $01
    xor [hl]                                      ; $58e2: $ae
    ld bc, $01b0                                  ; $58e3: $01 $b0 $01
    or c                                          ; $58e6: $b1
    ld bc, $01b3                                  ; $58e7: $01 $b3 $01
    or l                                          ; $58ea: $b5
    ld bc, $01b6                                  ; $58eb: $01 $b6 $01
    cp b                                          ; $58ee: $b8
    ld bc, $01ba                                  ; $58ef: $01 $ba $01
    cp e                                          ; $58f2: $bb
    ld bc, $01bd                                  ; $58f3: $01 $bd $01
    cp a                                          ; $58f6: $bf
    ld bc, $01c1                                  ; $58f7: $01 $c1 $01
    jp $c401                                      ; $58fa: $c3 $01 $c4


    ld bc, $01c6                                  ; $58fd: $01 $c6 $01
    ret z                                         ; $5900: $c8

    ld bc, $01ca                                  ; $5901: $01 $ca $01
    rlc c                                         ; $5904: $cb $01
    call $cf01                                    ; $5906: $cd $01 $cf
    ld bc, $01d0                                  ; $5909: $01 $d0 $01
    jp nc, $d401                                  ; $590c: $d2 $01 $d4

    ld bc, $01d6                                  ; $590f: $01 $d6 $01
    rst $10                                       ; $5912: $d7
    ld bc, $01d9                                  ; $5913: $01 $d9 $01
    db $db                                        ; $5916: $db
    ld bc, $01dd                                  ; $5917: $01 $dd $01
    sbc $01                                       ; $591a: $de $01
    inc b                                         ; $591c: $04
    nop                                           ; $591d: $00
    ld e, $00                                     ; $591e: $1e $00
    ld h, $00                                     ; $5920: $26 $00
    inc l                                         ; $5922: $2c
    nop                                           ; $5923: $00
    ld [hl-], a                                   ; $5924: $32
    nop                                           ; $5925: $00
    jr c, jr_03a_5928                             ; $5926: $38 $00

jr_03a_5928:
    dec a                                         ; $5928: $3d
    nop                                           ; $5929: $00
    ld b, b                                       ; $592a: $40
    nop                                           ; $592b: $00
    ld b, h                                       ; $592c: $44
    nop                                           ; $592d: $00
    ld c, b                                       ; $592e: $48
    nop                                           ; $592f: $00
    ld c, e                                       ; $5930: $4b
    nop                                           ; $5931: $00
    ld c, a                                       ; $5932: $4f
    nop                                           ; $5933: $00
    ld d, d                                       ; $5934: $52
    nop                                           ; $5935: $00
    ld d, l                                       ; $5936: $55
    nop                                           ; $5937: $00
    ld e, b                                       ; $5938: $58
    nop                                           ; $5939: $00
    ld e, d                                       ; $593a: $5a
    nop                                           ; $593b: $00
    ld e, l                                       ; $593c: $5d
    nop                                           ; $593d: $00
    ld h, b                                       ; $593e: $60
    nop                                           ; $593f: $00
    ld h, e                                       ; $5940: $63
    nop                                           ; $5941: $00
    ld h, [hl]                                    ; $5942: $66
    nop                                           ; $5943: $00
    ld l, b                                       ; $5944: $68
    nop                                           ; $5945: $00
    ld l, d                                       ; $5946: $6a
    nop                                           ; $5947: $00
    ld l, l                                       ; $5948: $6d
    nop                                           ; $5949: $00
    ld l, a                                       ; $594a: $6f
    nop                                           ; $594b: $00
    ld [hl], c                                    ; $594c: $71
    nop                                           ; $594d: $00
    ld [hl], h                                    ; $594e: $74
    nop                                           ; $594f: $00
    halt                                          ; $5950: $76
    nop                                           ; $5951: $00
    ld a, c                                       ; $5952: $79
    nop                                           ; $5953: $00
    ld a, e                                       ; $5954: $7b
    nop                                           ; $5955: $00
    ld a, l                                       ; $5956: $7d
    nop                                           ; $5957: $00
    ld a, a                                       ; $5958: $7f
    nop                                           ; $5959: $00
    add d                                         ; $595a: $82
    nop                                           ; $595b: $00
    add h                                         ; $595c: $84
    nop                                           ; $595d: $00
    add [hl]                                      ; $595e: $86
    nop                                           ; $595f: $00
    adc b                                         ; $5960: $88
    nop                                           ; $5961: $00
    adc d                                         ; $5962: $8a
    nop                                           ; $5963: $00
    adc h                                         ; $5964: $8c
    nop                                           ; $5965: $00
    adc [hl]                                      ; $5966: $8e
    nop                                           ; $5967: $00
    sub b                                         ; $5968: $90
    nop                                           ; $5969: $00
    sub e                                         ; $596a: $93
    nop                                           ; $596b: $00
    sub l                                         ; $596c: $95
    nop                                           ; $596d: $00
    sub a                                         ; $596e: $97
    nop                                           ; $596f: $00
    sbc b                                         ; $5970: $98
    nop                                           ; $5971: $00
    sbc e                                         ; $5972: $9b
    nop                                           ; $5973: $00
    sbc l                                         ; $5974: $9d
    nop                                           ; $5975: $00
    sbc a                                         ; $5976: $9f
    nop                                           ; $5977: $00
    and c                                         ; $5978: $a1
    nop                                           ; $5979: $00
    and e                                         ; $597a: $a3
    nop                                           ; $597b: $00
    and l                                         ; $597c: $a5
    nop                                           ; $597d: $00
    and [hl]                                      ; $597e: $a6
    nop                                           ; $597f: $00
    xor c                                         ; $5980: $a9
    nop                                           ; $5981: $00
    xor d                                         ; $5982: $aa
    nop                                           ; $5983: $00
    xor l                                         ; $5984: $ad
    nop                                           ; $5985: $00
    xor a                                         ; $5986: $af
    nop                                           ; $5987: $00
    or b                                          ; $5988: $b0
    nop                                           ; $5989: $00
    or e                                          ; $598a: $b3
    nop                                           ; $598b: $00
    or l                                          ; $598c: $b5
    nop                                           ; $598d: $00
    or [hl]                                       ; $598e: $b6
    nop                                           ; $598f: $00
    cp b                                          ; $5990: $b8
    nop                                           ; $5991: $00
    cp d                                          ; $5992: $ba
    nop                                           ; $5993: $00
    cp h                                          ; $5994: $bc
    nop                                           ; $5995: $00
    cp [hl]                                       ; $5996: $be
    nop                                           ; $5997: $00
    ret nz                                        ; $5998: $c0

    nop                                           ; $5999: $00
    jp nz, $c400                                  ; $599a: $c2 $00 $c4

    nop                                           ; $599d: $00
    add $00                                       ; $599e: $c6 $00
    rst $00                                       ; $59a0: $c7
    nop                                           ; $59a1: $00
    ret                                           ; $59a2: $c9


    nop                                           ; $59a3: $00
    rlc b                                         ; $59a4: $cb $00
    call $cf00                                    ; $59a6: $cd $00 $cf
    nop                                           ; $59a9: $00
    pop de                                        ; $59aa: $d1
    nop                                           ; $59ab: $00
    db $d3                                        ; $59ac: $d3
    nop                                           ; $59ad: $00
    push de                                       ; $59ae: $d5
    nop                                           ; $59af: $00
    rst $10                                       ; $59b0: $d7
    nop                                           ; $59b1: $00
    ret c                                         ; $59b2: $d8

    nop                                           ; $59b3: $00
    jp c, $dc00                                   ; $59b4: $da $00 $dc

    nop                                           ; $59b7: $00
    sbc $00                                       ; $59b8: $de $00
    ldh [rP1], a                                  ; $59ba: $e0 $00
    ld [c], a                                     ; $59bc: $e2
    nop                                           ; $59bd: $00
    db $e4                                        ; $59be: $e4
    nop                                           ; $59bf: $00
    and $00                                       ; $59c0: $e6 $00
    add sp, $00                                   ; $59c2: $e8 $00
    jp hl                                         ; $59c4: $e9


    nop                                           ; $59c5: $00
    db $eb                                        ; $59c6: $eb
    nop                                           ; $59c7: $00
    db $ed                                        ; $59c8: $ed
    nop                                           ; $59c9: $00
    rst $28                                       ; $59ca: $ef
    nop                                           ; $59cb: $00
    ldh a, [rP1]                                  ; $59cc: $f0 $00
    ld a, [c]                                     ; $59ce: $f2
    nop                                           ; $59cf: $00
    db $f4                                        ; $59d0: $f4
    nop                                           ; $59d1: $00
    or $00                                        ; $59d2: $f6 $00
    ld hl, sp+$00                                 ; $59d4: $f8 $00
    ld a, [$fc00]                                 ; $59d6: $fa $00 $fc
    nop                                           ; $59d9: $00
    cp $00                                        ; $59da: $fe $00
    rst $38                                       ; $59dc: $ff
    nop                                           ; $59dd: $00
    ld bc, $0301                                  ; $59de: $01 $01 $03
    ld bc, $0105                                  ; $59e1: $01 $05 $01
    rlca                                          ; $59e4: $07
    ld bc, $0109                                  ; $59e5: $01 $09 $01
    ld a, [bc]                                    ; $59e8: $0a
    ld bc, $010c                                  ; $59e9: $01 $0c $01
    ld c, $01                                     ; $59ec: $0e $01
    db $10                                        ; $59ee: $10
    ld bc, $0112                                  ; $59ef: $01 $12 $01
    inc d                                         ; $59f2: $14
    ld bc, $0116                                  ; $59f3: $01 $16 $01
    rla                                           ; $59f6: $17
    ld bc, $0119                                  ; $59f7: $01 $19 $01
    dec de                                        ; $59fa: $1b
    ld bc, $011d                                  ; $59fb: $01 $1d $01
    rra                                           ; $59fe: $1f
    ld bc, $0121                                  ; $59ff: $01 $21 $01
    ld [hl+], a                                   ; $5a02: $22
    ld bc, $0124                                  ; $5a03: $01 $24 $01
    ld h, $01                                     ; $5a06: $26 $01
    jr z, jr_03a_5a0b                             ; $5a08: $28 $01

    ld a, [hl+]                                   ; $5a0a: $2a

jr_03a_5a0b:
    ld bc, $012b                                  ; $5a0b: $01 $2b $01
    dec l                                         ; $5a0e: $2d
    ld bc, $012f                                  ; $5a0f: $01 $2f $01
    ld sp, $3301                                  ; $5a12: $31 $01 $33
    ld bc, $0135                                  ; $5a15: $01 $35 $01
    ld [hl], $01                                  ; $5a18: $36 $01
    jr c, jr_03a_5a1d                             ; $5a1a: $38 $01

    ld a, [hl-]                                   ; $5a1c: $3a

jr_03a_5a1d:
    ld bc, $013c                                  ; $5a1d: $01 $3c $01
    ld a, $01                                     ; $5a20: $3e $01
    ld b, b                                       ; $5a22: $40
    ld bc, $0141                                  ; $5a23: $01 $41 $01
    ld b, e                                       ; $5a26: $43
    ld bc, $0145                                  ; $5a27: $01 $45 $01
    ld b, a                                       ; $5a2a: $47
    ld bc, HeaderRAMSize                          ; $5a2b: $01 $49 $01
    ld c, e                                       ; $5a2e: $4b
    ld bc, HeaderComplementCheck                  ; $5a2f: $01 $4d $01
    ld c, a                                       ; $5a32: $4f
    ld bc, $0150                                  ; $5a33: $01 $50 $01
    ld d, d                                       ; $5a36: $52
    ld bc, $0154                                  ; $5a37: $01 $54 $01
    ld d, [hl]                                    ; $5a3a: $56
    ld bc, $0158                                  ; $5a3b: $01 $58 $01
    ld e, c                                       ; $5a3e: $59
    ld bc, $015b                                  ; $5a3f: $01 $5b $01
    ld e, l                                       ; $5a42: $5d
    ld bc, $015f                                  ; $5a43: $01 $5f $01
    ld h, c                                       ; $5a46: $61
    ld bc, $0163                                  ; $5a47: $01 $63 $01
    ld h, l                                       ; $5a4a: $65
    ld bc, $0167                                  ; $5a4b: $01 $67 $01
    ld l, c                                       ; $5a4e: $69
    ld bc, $016a                                  ; $5a4f: $01 $6a $01
    ld l, h                                       ; $5a52: $6c
    ld bc, $016e                                  ; $5a53: $01 $6e $01
    ld [hl], b                                    ; $5a56: $70
    ld bc, $0172                                  ; $5a57: $01 $72 $01
    ld [hl], h                                    ; $5a5a: $74
    ld bc, $0176                                  ; $5a5b: $01 $76 $01
    ld [hl], a                                    ; $5a5e: $77
    ld bc, $0179                                  ; $5a5f: $01 $79 $01
    ld a, e                                       ; $5a62: $7b
    ld bc, $017d                                  ; $5a63: $01 $7d $01
    ld a, a                                       ; $5a66: $7f
    ld bc, $0181                                  ; $5a67: $01 $81 $01
    add e                                         ; $5a6a: $83
    ld bc, $0185                                  ; $5a6b: $01 $85 $01
    add [hl]                                      ; $5a6e: $86
    ld bc, $0188                                  ; $5a6f: $01 $88 $01
    adc d                                         ; $5a72: $8a
    ld bc, $018c                                  ; $5a73: $01 $8c $01
    adc [hl]                                      ; $5a76: $8e
    ld bc, $0190                                  ; $5a77: $01 $90 $01
    sub d                                         ; $5a7a: $92
    ld bc, $0194                                  ; $5a7b: $01 $94 $01
    sub l                                         ; $5a7e: $95
    ld bc, $0197                                  ; $5a7f: $01 $97 $01
    sbc c                                         ; $5a82: $99
    ld bc, $019b                                  ; $5a83: $01 $9b $01
    sbc l                                         ; $5a86: $9d
    ld bc, $019f                                  ; $5a87: $01 $9f $01
    and c                                         ; $5a8a: $a1
    ld bc, $01a2                                  ; $5a8b: $01 $a2 $01
    and h                                         ; $5a8e: $a4
    ld bc, $01a6                                  ; $5a8f: $01 $a6 $01
    xor b                                         ; $5a92: $a8
    ld bc, $01aa                                  ; $5a93: $01 $aa $01
    xor h                                         ; $5a96: $ac
    ld bc, $01ae                                  ; $5a97: $01 $ae $01
    or b                                          ; $5a9a: $b0
    ld bc, $01b2                                  ; $5a9b: $01 $b2 $01
    or h                                          ; $5a9e: $b4
    ld bc, $01b5                                  ; $5a9f: $01 $b5 $01
    or a                                          ; $5aa2: $b7
    ld bc, $01b9                                  ; $5aa3: $01 $b9 $01
    cp e                                          ; $5aa6: $bb
    ld bc, $01bd                                  ; $5aa7: $01 $bd $01
    cp a                                          ; $5aaa: $bf
    ld bc, $01c1                                  ; $5aab: $01 $c1 $01
    jp nz, $c401                                  ; $5aae: $c2 $01 $c4

    ld bc, $01c6                                  ; $5ab1: $01 $c6 $01
    ret z                                         ; $5ab4: $c8

    ld bc, $01ca                                  ; $5ab5: $01 $ca $01
    call z, $ce01                                 ; $5ab8: $cc $01 $ce
    ld bc, $01d0                                  ; $5abb: $01 $d0 $01
    jp nc, $d301                                  ; $5abe: $d2 $01 $d3

    ld bc, $01d6                                  ; $5ac1: $01 $d6 $01
    rst $10                                       ; $5ac4: $d7
    ld bc, $01d9                                  ; $5ac5: $01 $d9 $01
    db $db                                        ; $5ac8: $db
    ld bc, $01dd                                  ; $5ac9: $01 $dd $01
    rst $18                                       ; $5acc: $df
    ld bc, $0003                                  ; $5acd: $01 $03 $00
    rla                                           ; $5ad0: $17
    nop                                           ; $5ad1: $00
    rra                                           ; $5ad2: $1f
    nop                                           ; $5ad3: $00
    ld h, $00                                     ; $5ad4: $26 $00
    dec l                                         ; $5ad6: $2d
    nop                                           ; $5ad7: $00
    inc sp                                        ; $5ad8: $33
    nop                                           ; $5ad9: $00
    scf                                           ; $5ada: $37
    nop                                           ; $5adb: $00
    inc a                                         ; $5adc: $3c
    nop                                           ; $5add: $00
    ld b, b                                       ; $5ade: $40
    nop                                           ; $5adf: $00
    ld b, h                                       ; $5ae0: $44
    nop                                           ; $5ae1: $00
    ld c, b                                       ; $5ae2: $48
    nop                                           ; $5ae3: $00
    ld c, h                                       ; $5ae4: $4c
    nop                                           ; $5ae5: $00
    ld c, a                                       ; $5ae6: $4f
    nop                                           ; $5ae7: $00
    ld d, e                                       ; $5ae8: $53
    nop                                           ; $5ae9: $00
    ld d, [hl]                                    ; $5aea: $56
    nop                                           ; $5aeb: $00
    ld e, d                                       ; $5aec: $5a
    nop                                           ; $5aed: $00
    ld e, h                                       ; $5aee: $5c
    nop                                           ; $5aef: $00
    ld e, a                                       ; $5af0: $5f
    nop                                           ; $5af1: $00
    ld h, d                                       ; $5af2: $62
    nop                                           ; $5af3: $00
    ld h, l                                       ; $5af4: $65
    nop                                           ; $5af5: $00
    ld l, c                                       ; $5af6: $69
    nop                                           ; $5af7: $00
    ld l, e                                       ; $5af8: $6b
    nop                                           ; $5af9: $00
    ld l, [hl]                                    ; $5afa: $6e
    nop                                           ; $5afb: $00
    ld [hl], b                                    ; $5afc: $70
    nop                                           ; $5afd: $00
    ld [hl], e                                    ; $5afe: $73
    nop                                           ; $5aff: $00
    halt                                          ; $5b00: $76
    nop                                           ; $5b01: $00
    ld a, c                                       ; $5b02: $79
    nop                                           ; $5b03: $00
    ld a, e                                       ; $5b04: $7b
    nop                                           ; $5b05: $00
    ld a, l                                       ; $5b06: $7d
    nop                                           ; $5b07: $00
    add b                                         ; $5b08: $80
    nop                                           ; $5b09: $00
    add e                                         ; $5b0a: $83
    nop                                           ; $5b0b: $00
    add l                                         ; $5b0c: $85
    nop                                           ; $5b0d: $00
    add a                                         ; $5b0e: $87
    nop                                           ; $5b0f: $00
    adc d                                         ; $5b10: $8a
    nop                                           ; $5b11: $00
    adc h                                         ; $5b12: $8c
    nop                                           ; $5b13: $00
    adc a                                         ; $5b14: $8f
    nop                                           ; $5b15: $00
    sub c                                         ; $5b16: $91
    nop                                           ; $5b17: $00
    sub e                                         ; $5b18: $93
    nop                                           ; $5b19: $00
    sub l                                         ; $5b1a: $95
    nop                                           ; $5b1b: $00
    sbc b                                         ; $5b1c: $98
    nop                                           ; $5b1d: $00
    sbc d                                         ; $5b1e: $9a
    nop                                           ; $5b1f: $00
    sbc l                                         ; $5b20: $9d
    nop                                           ; $5b21: $00
    sbc a                                         ; $5b22: $9f
    nop                                           ; $5b23: $00
    and c                                         ; $5b24: $a1
    nop                                           ; $5b25: $00
    and e                                         ; $5b26: $a3
    nop                                           ; $5b27: $00
    and l                                         ; $5b28: $a5
    nop                                           ; $5b29: $00
    and a                                         ; $5b2a: $a7
    nop                                           ; $5b2b: $00
    xor d                                         ; $5b2c: $aa
    nop                                           ; $5b2d: $00
    xor l                                         ; $5b2e: $ad
    nop                                           ; $5b2f: $00
    xor l                                         ; $5b30: $ad
    nop                                           ; $5b31: $00
    or b                                          ; $5b32: $b0
    nop                                           ; $5b33: $00
    or d                                          ; $5b34: $b2
    nop                                           ; $5b35: $00
    or l                                          ; $5b36: $b5
    nop                                           ; $5b37: $00
    or [hl]                                       ; $5b38: $b6
    nop                                           ; $5b39: $00
    cp c                                          ; $5b3a: $b9
    nop                                           ; $5b3b: $00
    cp e                                          ; $5b3c: $bb
    nop                                           ; $5b3d: $00
    cp l                                          ; $5b3e: $bd
    nop                                           ; $5b3f: $00
    cp [hl]                                       ; $5b40: $be
    nop                                           ; $5b41: $00
    ret nz                                        ; $5b42: $c0

    nop                                           ; $5b43: $00
    jp $c500                                      ; $5b44: $c3 $00 $c5


    nop                                           ; $5b47: $00
    rst $00                                       ; $5b48: $c7
    nop                                           ; $5b49: $00
    ret                                           ; $5b4a: $c9


    nop                                           ; $5b4b: $00
    rlc b                                         ; $5b4c: $cb $00
    call $cf00                                    ; $5b4e: $cd $00 $cf
    nop                                           ; $5b51: $00
    pop de                                        ; $5b52: $d1
    nop                                           ; $5b53: $00
    db $d3                                        ; $5b54: $d3
    nop                                           ; $5b55: $00
    push de                                       ; $5b56: $d5
    nop                                           ; $5b57: $00
    rst $10                                       ; $5b58: $d7
    nop                                           ; $5b59: $00
    reti                                          ; $5b5a: $d9


    nop                                           ; $5b5b: $00
    db $db                                        ; $5b5c: $db
    nop                                           ; $5b5d: $00
    call c, $df00                                 ; $5b5e: $dc $00 $df
    nop                                           ; $5b61: $00
    pop hl                                        ; $5b62: $e1
    nop                                           ; $5b63: $00
    db $e3                                        ; $5b64: $e3
    nop                                           ; $5b65: $00
    db $e4                                        ; $5b66: $e4
    nop                                           ; $5b67: $00
    rst $20                                       ; $5b68: $e7
    nop                                           ; $5b69: $00
    add sp, $00                                   ; $5b6a: $e8 $00
    ld [$ec00], a                                 ; $5b6c: $ea $00 $ec
    nop                                           ; $5b6f: $00
    rst $28                                       ; $5b70: $ef
    nop                                           ; $5b71: $00
    ldh a, [rP1]                                  ; $5b72: $f0 $00
    di                                            ; $5b74: $f3
    nop                                           ; $5b75: $00
    db $f4                                        ; $5b76: $f4
    nop                                           ; $5b77: $00
    or $00                                        ; $5b78: $f6 $00
    ld hl, sp+$00                                 ; $5b7a: $f8 $00
    ld sp, hl                                     ; $5b7c: $f9
    nop                                           ; $5b7d: $00
    db $fc                                        ; $5b7e: $fc
    nop                                           ; $5b7f: $00
    db $fd                                        ; $5b80: $fd
    nop                                           ; $5b81: $00
    rst $38                                       ; $5b82: $ff
    nop                                           ; $5b83: $00
    ld bc, $0301                                  ; $5b84: $01 $01 $03
    ld bc, $0105                                  ; $5b87: $01 $05 $01
    ld b, $01                                     ; $5b8a: $06 $01
    add hl, bc                                    ; $5b8c: $09
    ld bc, $010a                                  ; $5b8d: $01 $0a $01
    inc c                                         ; $5b90: $0c
    ld bc, $010e                                  ; $5b91: $01 $0e $01
    db $10                                        ; $5b94: $10
    ld bc, $0112                                  ; $5b95: $01 $12 $01
    inc d                                         ; $5b98: $14
    ld bc, $0116                                  ; $5b99: $01 $16 $01
    jr jr_03a_5b9f                                ; $5b9c: $18 $01

    add hl, de                                    ; $5b9e: $19

jr_03a_5b9f:
    ld bc, $011b                                  ; $5b9f: $01 $1b $01
    dec e                                         ; $5ba2: $1d
    ld bc, $011f                                  ; $5ba3: $01 $1f $01
    ld hl, $2301                                  ; $5ba6: $21 $01 $23
    ld bc, $0124                                  ; $5ba9: $01 $24 $01
    ld h, $01                                     ; $5bac: $26 $01
    jr z, jr_03a_5bb1                             ; $5bae: $28 $01

    ld a, [hl+]                                   ; $5bb0: $2a

jr_03a_5bb1:
    ld bc, $012c                                  ; $5bb1: $01 $2c $01
    dec l                                         ; $5bb4: $2d
    ld bc, $012f                                  ; $5bb5: $01 $2f $01
    ld sp, $3301                                  ; $5bb8: $31 $01 $33
    ld bc, $0135                                  ; $5bbb: $01 $35 $01
    scf                                           ; $5bbe: $37
    ld bc, $0139                                  ; $5bbf: $01 $39 $01
    ld a, [hl-]                                   ; $5bc2: $3a
    ld bc, $013c                                  ; $5bc3: $01 $3c $01
    ld a, $01                                     ; $5bc6: $3e $01
    ld b, b                                       ; $5bc8: $40
    ld bc, $0142                                  ; $5bc9: $01 $42 $01
    ld b, e                                       ; $5bcc: $43
    ld bc, $0145                                  ; $5bcd: $01 $45 $01
    ld b, a                                       ; $5bd0: $47
    ld bc, HeaderRAMSize                          ; $5bd1: $01 $49 $01
    ld c, e                                       ; $5bd4: $4b
    ld bc, HeaderMaskROMVersion                   ; $5bd5: $01 $4c $01
    ld c, [hl]                                    ; $5bd8: $4e
    ld bc, $0150                                  ; $5bd9: $01 $50 $01
    ld d, d                                       ; $5bdc: $52
    ld bc, $0154                                  ; $5bdd: $01 $54 $01
    ld d, [hl]                                    ; $5be0: $56
    ld bc, $0157                                  ; $5be1: $01 $57 $01
    ld e, c                                       ; $5be4: $59
    ld bc, $015b                                  ; $5be5: $01 $5b $01
    ld e, l                                       ; $5be8: $5d
    ld bc, $015e                                  ; $5be9: $01 $5e $01
    ld h, b                                       ; $5bec: $60
    ld bc, $0162                                  ; $5bed: $01 $62 $01
    ld h, h                                       ; $5bf0: $64
    ld bc, $0166                                  ; $5bf1: $01 $66 $01
    ld h, a                                       ; $5bf4: $67
    ld bc, $016a                                  ; $5bf5: $01 $6a $01
    ld l, e                                       ; $5bf8: $6b
    ld bc, $016d                                  ; $5bf9: $01 $6d $01
    ld l, a                                       ; $5bfc: $6f
    ld bc, $0171                                  ; $5bfd: $01 $71 $01
    ld [hl], d                                    ; $5c00: $72
    ld bc, $0174                                  ; $5c01: $01 $74 $01
    halt                                          ; $5c04: $76
    ld bc, $0178                                  ; $5c05: $01 $78 $01
    ld a, d                                       ; $5c08: $7a
    ld bc, $017b                                  ; $5c09: $01 $7b $01
    ld a, l                                       ; $5c0c: $7d
    ld bc, $017f                                  ; $5c0d: $01 $7f $01
    add c                                         ; $5c10: $81
    ld bc, $0182                                  ; $5c11: $01 $82 $01
    add h                                         ; $5c14: $84
    ld bc, $0186                                  ; $5c15: $01 $86 $01
    adc b                                         ; $5c18: $88
    ld bc, $018a                                  ; $5c19: $01 $8a $01
    adc e                                         ; $5c1c: $8b
    ld bc, $018d                                  ; $5c1d: $01 $8d $01
    adc a                                         ; $5c20: $8f
    ld bc, $0191                                  ; $5c21: $01 $91 $01
    sub e                                         ; $5c24: $93
    ld bc, $0195                                  ; $5c25: $01 $95 $01
    sub [hl]                                      ; $5c28: $96
    ld bc, $0198                                  ; $5c29: $01 $98 $01
    sbc d                                         ; $5c2c: $9a
    ld bc, $019c                                  ; $5c2d: $01 $9c $01
    sbc [hl]                                      ; $5c30: $9e
    ld bc, $019f                                  ; $5c31: $01 $9f $01
    and c                                         ; $5c34: $a1
    ld bc, $01a2                                  ; $5c35: $01 $a2 $01
    and l                                         ; $5c38: $a5
    ld bc, $01a6                                  ; $5c39: $01 $a6 $01
    xor b                                         ; $5c3c: $a8
    ld bc, $01aa                                  ; $5c3d: $01 $aa $01
    xor h                                         ; $5c40: $ac
    ld bc, $01ae                                  ; $5c41: $01 $ae $01
    xor a                                         ; $5c44: $af
    ld bc, $01b1                                  ; $5c45: $01 $b1 $01
    or e                                          ; $5c48: $b3
    ld bc, $01b4                                  ; $5c49: $01 $b4 $01
    or a                                          ; $5c4c: $b7
    ld bc, $01b8                                  ; $5c4d: $01 $b8 $01
    cp d                                          ; $5c50: $ba
    ld bc, $01bc                                  ; $5c51: $01 $bc $01
    cp [hl]                                       ; $5c54: $be
    ld bc, $01bf                                  ; $5c55: $01 $bf $01
    pop bc                                        ; $5c58: $c1
    ld bc, $01c3                                  ; $5c59: $01 $c3 $01
    push bc                                       ; $5c5c: $c5
    ld bc, $01c7                                  ; $5c5d: $01 $c7 $01
    ret                                           ; $5c60: $c9


    ld bc, $01ca                                  ; $5c61: $01 $ca $01
    call z, $ce01                                 ; $5c64: $cc $01 $ce
    ld bc, $01cf                                  ; $5c67: $01 $cf $01
    pop de                                        ; $5c6a: $d1
    ld bc, $01d3                                  ; $5c6b: $01 $d3 $01
    push de                                       ; $5c6e: $d5
    ld bc, $01d7                                  ; $5c6f: $01 $d7 $01
    ret c                                         ; $5c72: $d8

    ld bc, $01da                                  ; $5c73: $01 $da $01
    call c, $de01                                 ; $5c76: $dc $01 $de
    ld bc, $0003                                  ; $5c79: $01 $03 $00
    dec de                                        ; $5c7c: $1b
    nop                                           ; $5c7d: $00
    inc hl                                        ; $5c7e: $23
    nop                                           ; $5c7f: $00
    dec hl                                        ; $5c80: $2b
    nop                                           ; $5c81: $00
    ld sp, $3700                                  ; $5c82: $31 $00 $37
    nop                                           ; $5c85: $00
    inc a                                         ; $5c86: $3c
    nop                                           ; $5c87: $00
    ld b, b                                       ; $5c88: $40
    nop                                           ; $5c89: $00
    ld b, h                                       ; $5c8a: $44
    nop                                           ; $5c8b: $00
    ld c, c                                       ; $5c8c: $49
    nop                                           ; $5c8d: $00
    ld c, h                                       ; $5c8e: $4c
    nop                                           ; $5c8f: $00
    ld d, b                                       ; $5c90: $50
    nop                                           ; $5c91: $00
    ld d, h                                       ; $5c92: $54
    nop                                           ; $5c93: $00
    ld d, a                                       ; $5c94: $57
    nop                                           ; $5c95: $00
    ld e, d                                       ; $5c96: $5a
    nop                                           ; $5c97: $00
    ld e, [hl]                                    ; $5c98: $5e
    nop                                           ; $5c99: $00
    ld h, c                                       ; $5c9a: $61
    nop                                           ; $5c9b: $00
    ld h, h                                       ; $5c9c: $64
    nop                                           ; $5c9d: $00
    ld h, a                                       ; $5c9e: $67
    nop                                           ; $5c9f: $00
    ld l, d                                       ; $5ca0: $6a
    nop                                           ; $5ca1: $00
    ld l, l                                       ; $5ca2: $6d
    nop                                           ; $5ca3: $00
    ld [hl], b                                    ; $5ca4: $70
    nop                                           ; $5ca5: $00
    ld [hl], e                                    ; $5ca6: $73
    nop                                           ; $5ca7: $00
    halt                                          ; $5ca8: $76
    nop                                           ; $5ca9: $00
    ld a, b                                       ; $5caa: $78
    nop                                           ; $5cab: $00
    ld a, e                                       ; $5cac: $7b
    nop                                           ; $5cad: $00
    ld a, [hl]                                    ; $5cae: $7e
    nop                                           ; $5caf: $00
    add b                                         ; $5cb0: $80
    nop                                           ; $5cb1: $00
    add e                                         ; $5cb2: $83
    nop                                           ; $5cb3: $00
    add [hl]                                      ; $5cb4: $86
    nop                                           ; $5cb5: $00
    adc b                                         ; $5cb6: $88
    nop                                           ; $5cb7: $00
    adc e                                         ; $5cb8: $8b
    nop                                           ; $5cb9: $00
    adc l                                         ; $5cba: $8d
    nop                                           ; $5cbb: $00
    sub b                                         ; $5cbc: $90
    nop                                           ; $5cbd: $00
    sub d                                         ; $5cbe: $92
    nop                                           ; $5cbf: $00
    sub l                                         ; $5cc0: $95
    nop                                           ; $5cc1: $00
    sub a                                         ; $5cc2: $97
    nop                                           ; $5cc3: $00
    sbc c                                         ; $5cc4: $99
    nop                                           ; $5cc5: $00
    sbc h                                         ; $5cc6: $9c
    nop                                           ; $5cc7: $00
    sbc a                                         ; $5cc8: $9f
    nop                                           ; $5cc9: $00
    and c                                         ; $5cca: $a1
    nop                                           ; $5ccb: $00
    and e                                         ; $5ccc: $a3
    nop                                           ; $5ccd: $00
    and l                                         ; $5cce: $a5
    nop                                           ; $5ccf: $00
    and a                                         ; $5cd0: $a7
    nop                                           ; $5cd1: $00
    xor d                                         ; $5cd2: $aa
    nop                                           ; $5cd3: $00
    xor h                                         ; $5cd4: $ac
    nop                                           ; $5cd5: $00
    xor [hl]                                      ; $5cd6: $ae
    nop                                           ; $5cd7: $00
    or c                                          ; $5cd8: $b1
    nop                                           ; $5cd9: $00
    or e                                          ; $5cda: $b3
    nop                                           ; $5cdb: $00
    or l                                          ; $5cdc: $b5
    nop                                           ; $5cdd: $00
    or a                                          ; $5cde: $b7
    nop                                           ; $5cdf: $00
    cp c                                          ; $5ce0: $b9
    nop                                           ; $5ce1: $00
    cp h                                          ; $5ce2: $bc
    nop                                           ; $5ce3: $00
    cp a                                          ; $5ce4: $bf
    nop                                           ; $5ce5: $00
    ret nz                                        ; $5ce6: $c0

    nop                                           ; $5ce7: $00
    jp $c500                                      ; $5ce8: $c3 $00 $c5


    nop                                           ; $5ceb: $00
    rst $00                                       ; $5cec: $c7
    nop                                           ; $5ced: $00
    ret                                           ; $5cee: $c9


    nop                                           ; $5cef: $00
    rlc b                                         ; $5cf0: $cb $00
    adc $00                                       ; $5cf2: $ce $00
    rst $08                                       ; $5cf4: $cf
    nop                                           ; $5cf5: $00
    jp nc, $d400                                  ; $5cf6: $d2 $00 $d4

    nop                                           ; $5cf9: $00
    sub $00                                       ; $5cfa: $d6 $00
    ret c                                         ; $5cfc: $d8

    nop                                           ; $5cfd: $00
    jp c, $dc00                                   ; $5cfe: $da $00 $dc

    nop                                           ; $5d01: $00
    sbc $00                                       ; $5d02: $de $00
    ldh [rP1], a                                  ; $5d04: $e0 $00
    db $e3                                        ; $5d06: $e3
    nop                                           ; $5d07: $00
    db $e4                                        ; $5d08: $e4
    nop                                           ; $5d09: $00
    rst $20                                       ; $5d0a: $e7
    nop                                           ; $5d0b: $00
    jp hl                                         ; $5d0c: $e9


    nop                                           ; $5d0d: $00
    db $eb                                        ; $5d0e: $eb
    nop                                           ; $5d0f: $00
    db $ed                                        ; $5d10: $ed
    nop                                           ; $5d11: $00
    rst $28                                       ; $5d12: $ef
    nop                                           ; $5d13: $00
    pop af                                        ; $5d14: $f1
    nop                                           ; $5d15: $00
    di                                            ; $5d16: $f3
    nop                                           ; $5d17: $00
    push af                                       ; $5d18: $f5
    nop                                           ; $5d19: $00
    rst $30                                       ; $5d1a: $f7
    nop                                           ; $5d1b: $00
    ld sp, hl                                     ; $5d1c: $f9
    nop                                           ; $5d1d: $00
    ei                                            ; $5d1e: $fb
    nop                                           ; $5d1f: $00
    db $fd                                        ; $5d20: $fd
    nop                                           ; $5d21: $00
    rst $38                                       ; $5d22: $ff
    nop                                           ; $5d23: $00
    ld [bc], a                                    ; $5d24: $02
    ld bc, $0103                                  ; $5d25: $01 $03 $01
    dec b                                         ; $5d28: $05
    ld bc, $0107                                  ; $5d29: $01 $07 $01
    ld a, [bc]                                    ; $5d2c: $0a
    ld bc, $010c                                  ; $5d2d: $01 $0c $01
    ld c, $01                                     ; $5d30: $0e $01
    db $10                                        ; $5d32: $10
    ld bc, $0111                                  ; $5d33: $01 $11 $01
    inc d                                         ; $5d36: $14
    ld bc, $0116                                  ; $5d37: $01 $16 $01
    jr jr_03a_5d3d                                ; $5d3a: $18 $01

    ld a, [de]                                    ; $5d3c: $1a

jr_03a_5d3d:
    ld bc, $011c                                  ; $5d3d: $01 $1c $01
    ld e, $01                                     ; $5d40: $1e $01
    jr nz, jr_03a_5d45                            ; $5d42: $20 $01

    ld [hl+], a                                   ; $5d44: $22

jr_03a_5d45:
    ld bc, $0124                                  ; $5d45: $01 $24 $01
    ld h, $01                                     ; $5d48: $26 $01
    jr z, jr_03a_5d4d                             ; $5d4a: $28 $01

    ld a, [hl+]                                   ; $5d4c: $2a

jr_03a_5d4d:
    ld bc, $012c                                  ; $5d4d: $01 $2c $01
    ld l, $01                                     ; $5d50: $2e $01
    jr nc, jr_03a_5d55                            ; $5d52: $30 $01

    ld [hl-], a                                   ; $5d54: $32

jr_03a_5d55:
    ld bc, HeaderTitle                            ; $5d55: $01 $34 $01
    ld [hl], $01                                  ; $5d58: $36 $01
    jr c, jr_03a_5d5d                             ; $5d5a: $38 $01

    ld a, [hl-]                                   ; $5d5c: $3a

jr_03a_5d5d:
    ld bc, $013c                                  ; $5d5d: $01 $3c $01
    ld a, $01                                     ; $5d60: $3e $01
    ld b, b                                       ; $5d62: $40
    ld bc, $0142                                  ; $5d63: $01 $42 $01
    ld b, h                                       ; $5d66: $44
    ld bc, HeaderSGBFlag                          ; $5d67: $01 $46 $01
    ld c, b                                       ; $5d6a: $48
    ld bc, HeaderDestinationCode                  ; $5d6b: $01 $4a $01
    ld c, h                                       ; $5d6e: $4c
    ld bc, HeaderGlobalChecksum                   ; $5d6f: $01 $4e $01
    ld d, b                                       ; $5d72: $50
    ld bc, $0152                                  ; $5d73: $01 $52 $01
    ld d, h                                       ; $5d76: $54
    ld bc, $0156                                  ; $5d77: $01 $56 $01
    ld e, b                                       ; $5d7a: $58
    ld bc, $015a                                  ; $5d7b: $01 $5a $01
    ld e, h                                       ; $5d7e: $5c
    ld bc, $015e                                  ; $5d7f: $01 $5e $01
    ld h, b                                       ; $5d82: $60
    ld bc, $0162                                  ; $5d83: $01 $62 $01
    ld h, h                                       ; $5d86: $64
    ld bc, $0166                                  ; $5d87: $01 $66 $01
    ld l, b                                       ; $5d8a: $68
    ld bc, $016a                                  ; $5d8b: $01 $6a $01
    ld l, h                                       ; $5d8e: $6c
    ld bc, $016e                                  ; $5d8f: $01 $6e $01
    ld [hl], b                                    ; $5d92: $70
    ld bc, $0172                                  ; $5d93: $01 $72 $01
    ld [hl], h                                    ; $5d96: $74
    ld bc, $0176                                  ; $5d97: $01 $76 $01
    ld a, b                                       ; $5d9a: $78
    ld bc, $017a                                  ; $5d9b: $01 $7a $01
    ld a, h                                       ; $5d9e: $7c
    ld bc, $017e                                  ; $5d9f: $01 $7e $01
    add b                                         ; $5da2: $80
    ld bc, $0182                                  ; $5da3: $01 $82 $01
    add h                                         ; $5da6: $84
    ld bc, $0186                                  ; $5da7: $01 $86 $01
    adc b                                         ; $5daa: $88
    ld bc, $018a                                  ; $5dab: $01 $8a $01
    adc h                                         ; $5dae: $8c
    ld bc, $018e                                  ; $5daf: $01 $8e $01
    sub b                                         ; $5db2: $90
    ld bc, $0192                                  ; $5db3: $01 $92 $01
    sub h                                         ; $5db6: $94
    ld bc, $0196                                  ; $5db7: $01 $96 $01
    sbc b                                         ; $5dba: $98
    ld bc, $019a                                  ; $5dbb: $01 $9a $01
    sbc h                                         ; $5dbe: $9c
    ld bc, $019e                                  ; $5dbf: $01 $9e $01
    and b                                         ; $5dc2: $a0
    ld bc, $01a2                                  ; $5dc3: $01 $a2 $01
    and h                                         ; $5dc6: $a4
    ld bc, $01a6                                  ; $5dc7: $01 $a6 $01
    xor b                                         ; $5dca: $a8
    ld bc, $01aa                                  ; $5dcb: $01 $aa $01
    xor h                                         ; $5dce: $ac
    ld bc, $01ae                                  ; $5dcf: $01 $ae $01
    or b                                          ; $5dd2: $b0
    ld bc, $01b2                                  ; $5dd3: $01 $b2 $01
    or h                                          ; $5dd6: $b4
    ld bc, $01b6                                  ; $5dd7: $01 $b6 $01
    cp b                                          ; $5dda: $b8
    ld bc, $01ba                                  ; $5ddb: $01 $ba $01
    cp h                                          ; $5dde: $bc
    ld bc, $01be                                  ; $5ddf: $01 $be $01
    ret nz                                        ; $5de2: $c0

    ld bc, $01c2                                  ; $5de3: $01 $c2 $01
    call nz, $c601                                ; $5de6: $c4 $01 $c6
    ld bc, $01c8                                  ; $5de9: $01 $c8 $01
    jp z, $cc01                                   ; $5dec: $ca $01 $cc

    ld bc, $01ce                                  ; $5def: $01 $ce $01
    ret nc                                        ; $5df2: $d0

    ld bc, $01d2                                  ; $5df3: $01 $d2 $01
    call nc, $d701                                ; $5df6: $d4 $01 $d7
    ld bc, $01d9                                  ; $5df9: $01 $d9 $01
    jp c, $dd01                                   ; $5dfc: $da $01 $dd

    ld bc, $01de                                  ; $5dff: $01 $de $01
    inc bc                                        ; $5e02: $03
    nop                                           ; $5e03: $00
    rra                                           ; $5e04: $1f
    nop                                           ; $5e05: $00
    jr z, jr_03a_5e08                             ; $5e06: $28 $00

jr_03a_5e08:
    ld l, $00                                     ; $5e08: $2e $00
    ld [hl], $00                                  ; $5e0a: $36 $00
    inc a                                         ; $5e0c: $3c
    nop                                           ; $5e0d: $00
    ld b, c                                       ; $5e0e: $41
    nop                                           ; $5e0f: $00
    ld b, l                                       ; $5e10: $45
    nop                                           ; $5e11: $00
    ld c, c                                       ; $5e12: $49
    nop                                           ; $5e13: $00
    ld c, [hl]                                    ; $5e14: $4e
    nop                                           ; $5e15: $00
    ld d, d                                       ; $5e16: $52
    nop                                           ; $5e17: $00
    ld d, l                                       ; $5e18: $55
    nop                                           ; $5e19: $00
    ld e, c                                       ; $5e1a: $59
    nop                                           ; $5e1b: $00
    ld e, l                                       ; $5e1c: $5d
    nop                                           ; $5e1d: $00
    ld h, b                                       ; $5e1e: $60
    nop                                           ; $5e1f: $00
    ld h, h                                       ; $5e20: $64
    nop                                           ; $5e21: $00
    ld h, [hl]                                    ; $5e22: $66
    nop                                           ; $5e23: $00
    ld l, d                                       ; $5e24: $6a
    nop                                           ; $5e25: $00
    ld l, l                                       ; $5e26: $6d
    nop                                           ; $5e27: $00
    ld [hl], b                                    ; $5e28: $70
    nop                                           ; $5e29: $00
    ld [hl], e                                    ; $5e2a: $73
    nop                                           ; $5e2b: $00
    halt                                          ; $5e2c: $76
    nop                                           ; $5e2d: $00
    ld a, c                                       ; $5e2e: $79
    nop                                           ; $5e2f: $00
    ld a, h                                       ; $5e30: $7c
    nop                                           ; $5e31: $00
    ld a, a                                       ; $5e32: $7f
    nop                                           ; $5e33: $00
    add c                                         ; $5e34: $81
    nop                                           ; $5e35: $00
    add h                                         ; $5e36: $84
    nop                                           ; $5e37: $00
    add a                                         ; $5e38: $87
    nop                                           ; $5e39: $00
    adc c                                         ; $5e3a: $89
    nop                                           ; $5e3b: $00
    adc h                                         ; $5e3c: $8c
    nop                                           ; $5e3d: $00
    adc a                                         ; $5e3e: $8f
    nop                                           ; $5e3f: $00
    sub c                                         ; $5e40: $91
    nop                                           ; $5e41: $00
    sub h                                         ; $5e42: $94
    nop                                           ; $5e43: $00
    sub a                                         ; $5e44: $97
    nop                                           ; $5e45: $00
    sbc c                                         ; $5e46: $99
    nop                                           ; $5e47: $00
    sbc e                                         ; $5e48: $9b
    nop                                           ; $5e49: $00
    sbc [hl]                                      ; $5e4a: $9e
    nop                                           ; $5e4b: $00
    and c                                         ; $5e4c: $a1
    nop                                           ; $5e4d: $00
    and e                                         ; $5e4e: $a3
    nop                                           ; $5e4f: $00
    and l                                         ; $5e50: $a5
    nop                                           ; $5e51: $00
    xor b                                         ; $5e52: $a8
    nop                                           ; $5e53: $00
    xor e                                         ; $5e54: $ab
    nop                                           ; $5e55: $00
    xor l                                         ; $5e56: $ad
    nop                                           ; $5e57: $00
    or b                                          ; $5e58: $b0
    nop                                           ; $5e59: $00
    or d                                          ; $5e5a: $b2
    nop                                           ; $5e5b: $00
    or h                                          ; $5e5c: $b4
    nop                                           ; $5e5d: $00
    or a                                          ; $5e5e: $b7
    nop                                           ; $5e5f: $00
    cp c                                          ; $5e60: $b9
    nop                                           ; $5e61: $00
    cp h                                          ; $5e62: $bc
    nop                                           ; $5e63: $00
    cp [hl]                                       ; $5e64: $be
    nop                                           ; $5e65: $00
    pop bc                                        ; $5e66: $c1
    nop                                           ; $5e67: $00
    jp $c500                                      ; $5e68: $c3 $00 $c5


    nop                                           ; $5e6b: $00
    rst $00                                       ; $5e6c: $c7
    nop                                           ; $5e6d: $00
    jp z, $cc00                                   ; $5e6e: $ca $00 $cc

    nop                                           ; $5e71: $00
    rst $08                                       ; $5e72: $cf
    nop                                           ; $5e73: $00
    pop de                                        ; $5e74: $d1
    nop                                           ; $5e75: $00
    db $d3                                        ; $5e76: $d3
    nop                                           ; $5e77: $00
    push de                                       ; $5e78: $d5
    nop                                           ; $5e79: $00
    rst $10                                       ; $5e7a: $d7
    nop                                           ; $5e7b: $00
    jp c, $dc00                                   ; $5e7c: $da $00 $dc

    nop                                           ; $5e7f: $00
    sbc $00                                       ; $5e80: $de $00
    ldh [rP1], a                                  ; $5e82: $e0 $00
    db $e3                                        ; $5e84: $e3
    nop                                           ; $5e85: $00
    push hl                                       ; $5e86: $e5
    nop                                           ; $5e87: $00
    rst $20                                       ; $5e88: $e7
    nop                                           ; $5e89: $00
    jp hl                                         ; $5e8a: $e9


    nop                                           ; $5e8b: $00
    db $ec                                        ; $5e8c: $ec
    nop                                           ; $5e8d: $00
    xor $00                                       ; $5e8e: $ee $00
    ldh a, [rP1]                                  ; $5e90: $f0 $00
    di                                            ; $5e92: $f3
    nop                                           ; $5e93: $00
    push af                                       ; $5e94: $f5
    nop                                           ; $5e95: $00
    rst $30                                       ; $5e96: $f7
    nop                                           ; $5e97: $00
    ld a, [$fc00]                                 ; $5e98: $fa $00 $fc
    nop                                           ; $5e9b: $00
    cp $00                                        ; $5e9c: $fe $00
    nop                                           ; $5e9e: $00
    ld bc, $0102                                  ; $5e9f: $01 $02 $01
    inc b                                         ; $5ea2: $04
    ld bc, $0107                                  ; $5ea3: $01 $07 $01
    add hl, bc                                    ; $5ea6: $09
    ld bc, $010b                                  ; $5ea7: $01 $0b $01
    dec c                                         ; $5eaa: $0d
    ld bc, $0110                                  ; $5eab: $01 $10 $01
    ld [de], a                                    ; $5eae: $12
    ld bc, $0114                                  ; $5eaf: $01 $14 $01
    ld d, $01                                     ; $5eb2: $16 $01
    add hl, de                                    ; $5eb4: $19
    ld bc, $011a                                  ; $5eb5: $01 $1a $01
    dec e                                         ; $5eb8: $1d
    ld bc, $011f                                  ; $5eb9: $01 $1f $01
    ld hl, $2401                                  ; $5ebc: $21 $01 $24
    ld bc, $0125                                  ; $5ebf: $01 $25 $01
    jr z, jr_03a_5ec5                             ; $5ec2: $28 $01

    ld a, [hl+]                                   ; $5ec4: $2a

jr_03a_5ec5:
    ld bc, $012c                                  ; $5ec5: $01 $2c $01
    ld l, $01                                     ; $5ec8: $2e $01
    jr nc, jr_03a_5ecd                            ; $5eca: $30 $01

    inc sp                                        ; $5ecc: $33

jr_03a_5ecd:
    ld bc, $0135                                  ; $5ecd: $01 $35 $01
    scf                                           ; $5ed0: $37
    ld bc, $0139                                  ; $5ed1: $01 $39 $01
    inc a                                         ; $5ed4: $3c
    ld bc, $013d                                  ; $5ed5: $01 $3d $01
    ld b, b                                       ; $5ed8: $40
    ld bc, $0142                                  ; $5ed9: $01 $42 $01
    ld b, h                                       ; $5edc: $44
    ld bc, HeaderSGBFlag                          ; $5edd: $01 $46 $01
    ld c, c                                       ; $5ee0: $49
    ld bc, HeaderOldLicenseeCode                  ; $5ee1: $01 $4b $01
    ld c, l                                       ; $5ee4: $4d
    ld bc, $014f                                  ; $5ee5: $01 $4f $01
    ld d, c                                       ; $5ee8: $51
    ld bc, $0154                                  ; $5ee9: $01 $54 $01
    ld d, [hl]                                    ; $5eec: $56
    ld bc, $0158                                  ; $5eed: $01 $58 $01
    ld e, d                                       ; $5ef0: $5a
    ld bc, $015c                                  ; $5ef1: $01 $5c $01
    ld e, a                                       ; $5ef4: $5f
    ld bc, $0161                                  ; $5ef5: $01 $61 $01
    ld h, e                                       ; $5ef8: $63
    ld bc, $0165                                  ; $5ef9: $01 $65 $01
    ld h, a                                       ; $5efc: $67
    ld bc, $016a                                  ; $5efd: $01 $6a $01
    ld l, h                                       ; $5f00: $6c
    ld bc, $016e                                  ; $5f01: $01 $6e $01
    ld [hl], b                                    ; $5f04: $70
    ld bc, $0173                                  ; $5f05: $01 $73 $01
    ld [hl], l                                    ; $5f08: $75
    ld bc, $0177                                  ; $5f09: $01 $77 $01
    ld a, c                                       ; $5f0c: $79
    ld bc, $017b                                  ; $5f0d: $01 $7b $01
    ld a, [hl]                                    ; $5f10: $7e
    ld bc, $0180                                  ; $5f11: $01 $80 $01
    add d                                         ; $5f14: $82
    ld bc, $0184                                  ; $5f15: $01 $84 $01
    add a                                         ; $5f18: $87
    ld bc, $0189                                  ; $5f19: $01 $89 $01
    adc e                                         ; $5f1c: $8b
    ld bc, $018d                                  ; $5f1d: $01 $8d $01
    adc a                                         ; $5f20: $8f
    ld bc, $0191                                  ; $5f21: $01 $91 $01
    sub h                                         ; $5f24: $94
    ld bc, $0196                                  ; $5f25: $01 $96 $01
    sbc b                                         ; $5f28: $98
    ld bc, $019a                                  ; $5f29: $01 $9a $01
    sbc l                                         ; $5f2c: $9d
    ld bc, $019f                                  ; $5f2d: $01 $9f $01
    and c                                         ; $5f30: $a1
    ld bc, $01a3                                  ; $5f31: $01 $a3 $01
    and l                                         ; $5f34: $a5
    ld bc, $01a8                                  ; $5f35: $01 $a8 $01
    xor d                                         ; $5f38: $aa
    ld bc, $01ac                                  ; $5f39: $01 $ac $01
    xor a                                         ; $5f3c: $af
    ld bc, $01b1                                  ; $5f3d: $01 $b1 $01
    or e                                          ; $5f40: $b3
    ld bc, $01b5                                  ; $5f41: $01 $b5 $01
    or a                                          ; $5f44: $b7
    ld bc, $01ba                                  ; $5f45: $01 $ba $01
    cp h                                          ; $5f48: $bc
    ld bc, $01be                                  ; $5f49: $01 $be $01
    ret nz                                        ; $5f4c: $c0

    ld bc, $01c2                                  ; $5f4d: $01 $c2 $01
    push bc                                       ; $5f50: $c5
    ld bc, $01c7                                  ; $5f51: $01 $c7 $01
    ret                                           ; $5f54: $c9


    ld bc, $01cb                                  ; $5f55: $01 $cb $01
    adc $01                                       ; $5f58: $ce $01
    ret nc                                        ; $5f5a: $d0

    ld bc, $01d2                                  ; $5f5b: $01 $d2 $01
    call nc, $d601                                ; $5f5e: $d4 $01 $d6
    ld bc, $01d9                                  ; $5f61: $01 $d9 $01
    db $db                                        ; $5f64: $db
    ld bc, $01dd                                  ; $5f65: $01 $dd $01
    rst $18                                       ; $5f68: $df
    ld bc, $0003                                  ; $5f69: $01 $03 $00
    ld [hl+], a                                   ; $5f6c: $22
    nop                                           ; $5f6d: $00
    dec hl                                        ; $5f6e: $2b
    nop                                           ; $5f6f: $00
    ld [hl-], a                                   ; $5f70: $32
    nop                                           ; $5f71: $00
    ld a, [hl-]                                   ; $5f72: $3a
    nop                                           ; $5f73: $00
    ccf                                           ; $5f74: $3f
    nop                                           ; $5f75: $00
    ld b, l                                       ; $5f76: $45
    nop                                           ; $5f77: $00
    ld c, c                                       ; $5f78: $49
    nop                                           ; $5f79: $00
    ld c, [hl]                                    ; $5f7a: $4e
    nop                                           ; $5f7b: $00
    ld d, d                                       ; $5f7c: $52
    nop                                           ; $5f7d: $00
    ld d, [hl]                                    ; $5f7e: $56
    nop                                           ; $5f7f: $00
    ld e, d                                       ; $5f80: $5a
    nop                                           ; $5f81: $00
    ld e, l                                       ; $5f82: $5d
    nop                                           ; $5f83: $00
    ld h, c                                       ; $5f84: $61
    nop                                           ; $5f85: $00
    ld h, l                                       ; $5f86: $65
    nop                                           ; $5f87: $00
    ld l, b                                       ; $5f88: $68
    nop                                           ; $5f89: $00
    ld l, h                                       ; $5f8a: $6c
    nop                                           ; $5f8b: $00
    ld l, a                                       ; $5f8c: $6f
    nop                                           ; $5f8d: $00
    ld [hl], d                                    ; $5f8e: $72
    nop                                           ; $5f8f: $00
    ld [hl], l                                    ; $5f90: $75
    nop                                           ; $5f91: $00
    ld a, c                                       ; $5f92: $79
    nop                                           ; $5f93: $00
    ld a, h                                       ; $5f94: $7c
    nop                                           ; $5f95: $00
    ld a, a                                       ; $5f96: $7f
    nop                                           ; $5f97: $00
    add c                                         ; $5f98: $81
    nop                                           ; $5f99: $00
    add l                                         ; $5f9a: $85
    nop                                           ; $5f9b: $00
    add a                                         ; $5f9c: $87
    nop                                           ; $5f9d: $00
    adc d                                         ; $5f9e: $8a
    nop                                           ; $5f9f: $00
    adc l                                         ; $5fa0: $8d
    nop                                           ; $5fa1: $00
    sub b                                         ; $5fa2: $90
    nop                                           ; $5fa3: $00
    sub e                                         ; $5fa4: $93
    nop                                           ; $5fa5: $00
    sub [hl]                                      ; $5fa6: $96
    nop                                           ; $5fa7: $00
    sbc b                                         ; $5fa8: $98
    nop                                           ; $5fa9: $00
    sbc e                                         ; $5faa: $9b
    nop                                           ; $5fab: $00
    sbc [hl]                                      ; $5fac: $9e
    nop                                           ; $5fad: $00
    and c                                         ; $5fae: $a1
    nop                                           ; $5faf: $00
    and e                                         ; $5fb0: $a3
    nop                                           ; $5fb1: $00
    and [hl]                                      ; $5fb2: $a6
    nop                                           ; $5fb3: $00
    xor c                                         ; $5fb4: $a9
    nop                                           ; $5fb5: $00
    xor h                                         ; $5fb6: $ac
    nop                                           ; $5fb7: $00
    xor [hl]                                      ; $5fb8: $ae
    nop                                           ; $5fb9: $00
    or c                                          ; $5fba: $b1
    nop                                           ; $5fbb: $00
    or e                                          ; $5fbc: $b3
    nop                                           ; $5fbd: $00
    or l                                          ; $5fbe: $b5
    nop                                           ; $5fbf: $00
    cp b                                          ; $5fc0: $b8
    nop                                           ; $5fc1: $00
    cp e                                          ; $5fc2: $bb
    nop                                           ; $5fc3: $00
    cp l                                          ; $5fc4: $bd
    nop                                           ; $5fc5: $00
    ret nz                                        ; $5fc6: $c0

    nop                                           ; $5fc7: $00
    jp nz, $c500                                  ; $5fc8: $c2 $00 $c5

    nop                                           ; $5fcb: $00
    ret z                                         ; $5fcc: $c8

    nop                                           ; $5fcd: $00
    jp z, $cc00                                   ; $5fce: $ca $00 $cc

    nop                                           ; $5fd1: $00
    rst $08                                       ; $5fd2: $cf
    nop                                           ; $5fd3: $00
    pop de                                        ; $5fd4: $d1
    nop                                           ; $5fd5: $00
    call nc, $d600                                ; $5fd6: $d4 $00 $d6
    nop                                           ; $5fd9: $00
    reti                                          ; $5fda: $d9


    nop                                           ; $5fdb: $00
    db $db                                        ; $5fdc: $db
    nop                                           ; $5fdd: $00
    sbc $00                                       ; $5fde: $de $00
    ldh [rP1], a                                  ; $5fe0: $e0 $00
    ld [c], a                                     ; $5fe2: $e2
    nop                                           ; $5fe3: $00
    db $e4                                        ; $5fe4: $e4
    nop                                           ; $5fe5: $00
    rst $20                                       ; $5fe6: $e7
    nop                                           ; $5fe7: $00
    ld [$ec00], a                                 ; $5fe8: $ea $00 $ec
    nop                                           ; $5feb: $00
    xor $00                                       ; $5fec: $ee $00
    pop af                                        ; $5fee: $f1
    nop                                           ; $5fef: $00
    di                                            ; $5ff0: $f3
    nop                                           ; $5ff1: $00
    or $00                                        ; $5ff2: $f6 $00
    ld hl, sp+$00                                 ; $5ff4: $f8 $00
    ei                                            ; $5ff6: $fb
    nop                                           ; $5ff7: $00
    db $fd                                        ; $5ff8: $fd
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    ld bc, $0102                                  ; $5ffb: $01 $02 $01
    inc b                                         ; $5ffe: $04
    ld bc, $0106                                  ; $5fff: $01 $06 $01
    add hl, bc                                    ; $6002: $09
    ld bc, $010b                                  ; $6003: $01 $0b $01
    dec c                                         ; $6006: $0d
    ld bc, $0110                                  ; $6007: $01 $10 $01
    ld [de], a                                    ; $600a: $12
    ld bc, $0115                                  ; $600b: $01 $15 $01
    rla                                           ; $600e: $17
    ld bc, $011a                                  ; $600f: $01 $1a $01
    inc e                                         ; $6012: $1c
    ld bc, $011e                                  ; $6013: $01 $1e $01
    ld hl, $2301                                  ; $6016: $21 $01 $23
    ld bc, $0125                                  ; $6019: $01 $25 $01
    jr z, jr_03a_601f                             ; $601c: $28 $01

    ld a, [hl+]                                   ; $601e: $2a

jr_03a_601f:
    ld bc, $012d                                  ; $601f: $01 $2d $01
    cpl                                           ; $6022: $2f
    ld bc, $0131                                  ; $6023: $01 $31 $01
    inc [hl]                                      ; $6026: $34
    ld bc, $0136                                  ; $6027: $01 $36 $01
    jr c, jr_03a_602d                             ; $602a: $38 $01

    dec sp                                        ; $602c: $3b

jr_03a_602d:
    ld bc, $013d                                  ; $602d: $01 $3d $01
    ld b, b                                       ; $6030: $40
    ld bc, $0142                                  ; $6031: $01 $42 $01
    ld b, h                                       ; $6034: $44
    ld bc, HeaderCartridgeType                    ; $6035: $01 $47 $01
    ld c, c                                       ; $6038: $49
    ld bc, HeaderOldLicenseeCode                  ; $6039: $01 $4b $01
    ld c, [hl]                                    ; $603c: $4e
    ld bc, $0150                                  ; $603d: $01 $50 $01
    ld d, d                                       ; $6040: $52
    ld bc, $0155                                  ; $6041: $01 $55 $01
    ld d, a                                       ; $6044: $57
    ld bc, $015a                                  ; $6045: $01 $5a $01
    ld e, h                                       ; $6048: $5c
    ld bc, $015e                                  ; $6049: $01 $5e $01
    ld h, c                                       ; $604c: $61
    ld bc, $0163                                  ; $604d: $01 $63 $01
    ld h, [hl]                                    ; $6050: $66
    ld bc, $0168                                  ; $6051: $01 $68 $01
    ld l, d                                       ; $6054: $6a
    ld bc, $016d                                  ; $6055: $01 $6d $01
    ld l, a                                       ; $6058: $6f
    ld bc, $0171                                  ; $6059: $01 $71 $01
    ld [hl], h                                    ; $605c: $74
    ld bc, $0176                                  ; $605d: $01 $76 $01
    ld a, c                                       ; $6060: $79
    ld bc, $017b                                  ; $6061: $01 $7b $01
    ld a, l                                       ; $6064: $7d
    ld bc, $0180                                  ; $6065: $01 $80 $01
    add d                                         ; $6068: $82
    ld bc, $0185                                  ; $6069: $01 $85 $01
    add a                                         ; $606c: $87
    ld bc, $0189                                  ; $606d: $01 $89 $01
    adc h                                         ; $6070: $8c
    ld bc, $018e                                  ; $6071: $01 $8e $01
    sub b                                         ; $6074: $90
    ld bc, $0193                                  ; $6075: $01 $93 $01
    sub l                                         ; $6078: $95
    ld bc, $0197                                  ; $6079: $01 $97 $01
    sbc d                                         ; $607c: $9a
    ld bc, $019c                                  ; $607d: $01 $9c $01
    sbc a                                         ; $6080: $9f
    ld bc, $01a1                                  ; $6081: $01 $a1 $01
    and h                                         ; $6084: $a4
    ld bc, $01a6                                  ; $6085: $01 $a6 $01
    xor b                                         ; $6088: $a8
    ld bc, $01ab                                  ; $6089: $01 $ab $01
    xor l                                         ; $608c: $ad
    ld bc, $01b0                                  ; $608d: $01 $b0 $01
    or d                                          ; $6090: $b2
    ld bc, $01b4                                  ; $6091: $01 $b4 $01
    or a                                          ; $6094: $b7
    ld bc, $01b9                                  ; $6095: $01 $b9 $01
    cp e                                          ; $6098: $bb
    ld bc, $01be                                  ; $6099: $01 $be $01
    ret nz                                        ; $609c: $c0

    ld bc, $01c3                                  ; $609d: $01 $c3 $01
    push bc                                       ; $60a0: $c5
    ld bc, $01c8                                  ; $60a1: $01 $c8 $01
    jp z, $cc01                                   ; $60a4: $ca $01 $cc

    ld bc, $01ce                                  ; $60a7: $01 $ce $01
    pop de                                        ; $60aa: $d1
    ld bc, $01d4                                  ; $60ab: $01 $d4 $01
    sub $01                                       ; $60ae: $d6 $01
    ret c                                         ; $60b0: $d8

    ld bc, $01db                                  ; $60b1: $01 $db $01
    db $dd                                        ; $60b4: $dd
    ld bc, $0003                                  ; $60b5: $01 $03 $00
    dec h                                         ; $60b8: $25
    nop                                           ; $60b9: $00
    dec l                                         ; $60ba: $2d
    nop                                           ; $60bb: $00
    ld [hl], $00                                  ; $60bc: $36 $00
    dec a                                         ; $60be: $3d
    nop                                           ; $60bf: $00
    ld b, d                                       ; $60c0: $42
    nop                                           ; $60c1: $00
    ld c, b                                       ; $60c2: $48
    nop                                           ; $60c3: $00
    ld c, l                                       ; $60c4: $4d
    nop                                           ; $60c5: $00
    ld d, c                                       ; $60c6: $51
    nop                                           ; $60c7: $00
    ld d, [hl]                                    ; $60c8: $56
    nop                                           ; $60c9: $00
    ld e, d                                       ; $60ca: $5a
    nop                                           ; $60cb: $00
    ld e, [hl]                                    ; $60cc: $5e
    nop                                           ; $60cd: $00
    ld h, c                                       ; $60ce: $61
    nop                                           ; $60cf: $00
    ld h, l                                       ; $60d0: $65
    nop                                           ; $60d1: $00
    ld l, c                                       ; $60d2: $69
    nop                                           ; $60d3: $00
    ld l, h                                       ; $60d4: $6c
    nop                                           ; $60d5: $00
    ld [hl], b                                    ; $60d6: $70
    nop                                           ; $60d7: $00
    ld [hl], h                                    ; $60d8: $74
    nop                                           ; $60d9: $00
    ld [hl], a                                    ; $60da: $77
    nop                                           ; $60db: $00
    ld a, d                                       ; $60dc: $7a
    nop                                           ; $60dd: $00
    ld a, l                                       ; $60de: $7d
    nop                                           ; $60df: $00
    add b                                         ; $60e0: $80
    nop                                           ; $60e1: $00
    add h                                         ; $60e2: $84
    nop                                           ; $60e3: $00
    add a                                         ; $60e4: $87
    nop                                           ; $60e5: $00
    adc d                                         ; $60e6: $8a
    nop                                           ; $60e7: $00
    adc l                                         ; $60e8: $8d
    nop                                           ; $60e9: $00
    adc a                                         ; $60ea: $8f
    nop                                           ; $60eb: $00
    sub e                                         ; $60ec: $93
    nop                                           ; $60ed: $00
    sub [hl]                                      ; $60ee: $96
    nop                                           ; $60ef: $00
    sbc b                                         ; $60f0: $98
    nop                                           ; $60f1: $00
    sbc e                                         ; $60f2: $9b
    nop                                           ; $60f3: $00
    sbc [hl]                                      ; $60f4: $9e
    nop                                           ; $60f5: $00
    and d                                         ; $60f6: $a2
    nop                                           ; $60f7: $00
    and h                                         ; $60f8: $a4
    nop                                           ; $60f9: $00
    and a                                         ; $60fa: $a7
    nop                                           ; $60fb: $00
    xor d                                         ; $60fc: $aa
    nop                                           ; $60fd: $00
    xor h                                         ; $60fe: $ac
    nop                                           ; $60ff: $00
    xor a                                         ; $6100: $af
    nop                                           ; $6101: $00
    or d                                          ; $6102: $b2
    nop                                           ; $6103: $00
    or l                                          ; $6104: $b5
    nop                                           ; $6105: $00
    cp b                                          ; $6106: $b8
    nop                                           ; $6107: $00
    cp d                                          ; $6108: $ba
    nop                                           ; $6109: $00
    cp l                                          ; $610a: $bd
    nop                                           ; $610b: $00
    cp a                                          ; $610c: $bf
    nop                                           ; $610d: $00
    jp nz, $c500                                  ; $610e: $c2 $00 $c5

    nop                                           ; $6111: $00
    ret z                                         ; $6112: $c8

    nop                                           ; $6113: $00
    jp z, $cd00                                   ; $6114: $ca $00 $cd

    nop                                           ; $6117: $00
    rst $08                                       ; $6118: $cf
    nop                                           ; $6119: $00
    jp nc, $d500                                  ; $611a: $d2 $00 $d5

    nop                                           ; $611d: $00
    ret c                                         ; $611e: $d8

    nop                                           ; $611f: $00
    jp c, $dd00                                   ; $6120: $da $00 $dd

    nop                                           ; $6123: $00
    ldh [rP1], a                                  ; $6124: $e0 $00
    ld [c], a                                     ; $6126: $e2
    nop                                           ; $6127: $00
    db $e4                                        ; $6128: $e4
    nop                                           ; $6129: $00
    rst $20                                       ; $612a: $e7
    nop                                           ; $612b: $00
    jp hl                                         ; $612c: $e9


    nop                                           ; $612d: $00
    db $ec                                        ; $612e: $ec
    nop                                           ; $612f: $00
    rst $28                                       ; $6130: $ef
    nop                                           ; $6131: $00
    pop af                                        ; $6132: $f1
    nop                                           ; $6133: $00
    db $f4                                        ; $6134: $f4
    nop                                           ; $6135: $00
    or $00                                        ; $6136: $f6 $00
    ld sp, hl                                     ; $6138: $f9
    nop                                           ; $6139: $00
    ei                                            ; $613a: $fb
    nop                                           ; $613b: $00
    cp $00                                        ; $613c: $fe $00
    nop                                           ; $613e: $00
    ld bc, $0103                                  ; $613f: $01 $03 $01
    ld b, $01                                     ; $6142: $06 $01
    ld [$0b01], sp                                ; $6144: $08 $01 $0b
    ld bc, $010d                                  ; $6147: $01 $0d $01
    db $10                                        ; $614a: $10
    ld bc, $0113                                  ; $614b: $01 $13 $01
    dec d                                         ; $614e: $15
    ld bc, $0117                                  ; $614f: $01 $17 $01
    ld a, [de]                                    ; $6152: $1a
    ld bc, $011d                                  ; $6153: $01 $1d $01
    rra                                           ; $6156: $1f
    ld bc, $0122                                  ; $6157: $01 $22 $01
    inc h                                         ; $615a: $24
    ld bc, $0126                                  ; $615b: $01 $26 $01
    add hl, hl                                    ; $615e: $29
    ld bc, $012c                                  ; $615f: $01 $2c $01
    ld l, $01                                     ; $6162: $2e $01
    ld sp, $3301                                  ; $6164: $31 $01 $33
    ld bc, $0136                                  ; $6167: $01 $36 $01
    jr c, jr_03a_616d                             ; $616a: $38 $01

    dec sp                                        ; $616c: $3b

jr_03a_616d:
    ld bc, $013d                                  ; $616d: $01 $3d $01
    ld b, b                                       ; $6170: $40
    ld bc, $0142                                  ; $6171: $01 $42 $01
    ld b, l                                       ; $6174: $45
    ld bc, HeaderROMSize                          ; $6175: $01 $48 $01
    ld c, d                                       ; $6178: $4a
    ld bc, HeaderMaskROMVersion                   ; $6179: $01 $4c $01
    ld c, a                                       ; $617c: $4f
    ld bc, $0151                                  ; $617d: $01 $51 $01
    ld d, h                                       ; $6180: $54
    ld bc, $0157                                  ; $6181: $01 $57 $01
    ld e, c                                       ; $6184: $59
    ld bc, $015c                                  ; $6185: $01 $5c $01
    ld e, [hl]                                    ; $6188: $5e
    ld bc, $0161                                  ; $6189: $01 $61 $01
    ld h, e                                       ; $618c: $63
    ld bc, $0166                                  ; $618d: $01 $66 $01
    ld l, c                                       ; $6190: $69
    ld bc, $016b                                  ; $6191: $01 $6b $01
    ld l, l                                       ; $6194: $6d
    ld bc, $0170                                  ; $6195: $01 $70 $01
    ld [hl], d                                    ; $6198: $72
    ld bc, $0175                                  ; $6199: $01 $75 $01
    ld [hl], a                                    ; $619c: $77
    ld bc, $017a                                  ; $619d: $01 $7a $01
    ld a, l                                       ; $61a0: $7d
    ld bc, $017f                                  ; $61a1: $01 $7f $01
    add d                                         ; $61a4: $82
    ld bc, $0184                                  ; $61a5: $01 $84 $01
    add a                                         ; $61a8: $87
    ld bc, $0189                                  ; $61a9: $01 $89 $01
    adc h                                         ; $61ac: $8c
    ld bc, $018f                                  ; $61ad: $01 $8f $01
    sub c                                         ; $61b0: $91
    ld bc, $0194                                  ; $61b1: $01 $94 $01
    sub [hl]                                      ; $61b4: $96
    ld bc, $0199                                  ; $61b5: $01 $99 $01
    sbc e                                         ; $61b8: $9b
    ld bc, $019e                                  ; $61b9: $01 $9e $01
    and b                                         ; $61bc: $a0
    ld bc, $01a3                                  ; $61bd: $01 $a3 $01
    and l                                         ; $61c0: $a5
    ld bc, $01a8                                  ; $61c1: $01 $a8 $01
    xor d                                         ; $61c4: $aa
    ld bc, $01ad                                  ; $61c5: $01 $ad $01
    or b                                          ; $61c8: $b0
    ld bc, $01b2                                  ; $61c9: $01 $b2 $01
    or l                                          ; $61cc: $b5
    ld bc, $01b7                                  ; $61cd: $01 $b7 $01
    cp d                                          ; $61d0: $ba
    ld bc, $01bc                                  ; $61d1: $01 $bc $01
    cp a                                          ; $61d4: $bf
    ld bc, $01c2                                  ; $61d5: $01 $c2 $01
    call nz, $c701                                ; $61d8: $c4 $01 $c7
    ld bc, $01c9                                  ; $61db: $01 $c9 $01
    call z, $ce01                                 ; $61de: $cc $01 $ce
    ld bc, $01d1                                  ; $61e1: $01 $d1 $01
    db $d3                                        ; $61e4: $d3
    ld bc, $01d6                                  ; $61e5: $01 $d6 $01
    reti                                          ; $61e8: $d9


    ld bc, $01dc                                  ; $61e9: $01 $dc $01
    sbc $01                                       ; $61ec: $de $01
    inc b                                         ; $61ee: $04
    nop                                           ; $61ef: $00
    jr z, jr_03a_61f2                             ; $61f0: $28 $00

jr_03a_61f2:
    jr nc, jr_03a_61f4                            ; $61f2: $30 $00

jr_03a_61f4:
    add hl, sp                                    ; $61f4: $39
    nop                                           ; $61f5: $00
    ld b, b                                       ; $61f6: $40
    nop                                           ; $61f7: $00
    ld b, [hl]                                    ; $61f8: $46
    nop                                           ; $61f9: $00
    ld c, h                                       ; $61fa: $4c
    nop                                           ; $61fb: $00
    ld d, b                                       ; $61fc: $50
    nop                                           ; $61fd: $00
    ld d, [hl]                                    ; $61fe: $56
    nop                                           ; $61ff: $00
    ld e, d                                       ; $6200: $5a
    nop                                           ; $6201: $00
    ld e, [hl]                                    ; $6202: $5e
    nop                                           ; $6203: $00
    ld h, d                                       ; $6204: $62
    nop                                           ; $6205: $00
    ld h, a                                       ; $6206: $67
    nop                                           ; $6207: $00
    ld l, d                                       ; $6208: $6a
    nop                                           ; $6209: $00
    ld l, [hl]                                    ; $620a: $6e
    nop                                           ; $620b: $00
    ld [hl], d                                    ; $620c: $72
    nop                                           ; $620d: $00
    halt                                          ; $620e: $76
    nop                                           ; $620f: $00
    ld a, c                                       ; $6210: $79
    nop                                           ; $6211: $00
    ld a, l                                       ; $6212: $7d
    nop                                           ; $6213: $00
    add b                                         ; $6214: $80
    nop                                           ; $6215: $00
    add h                                         ; $6216: $84
    nop                                           ; $6217: $00
    add a                                         ; $6218: $87
    nop                                           ; $6219: $00
    adc d                                         ; $621a: $8a
    nop                                           ; $621b: $00
    adc l                                         ; $621c: $8d
    nop                                           ; $621d: $00
    sub b                                         ; $621e: $90
    nop                                           ; $621f: $00
    sub h                                         ; $6220: $94
    nop                                           ; $6221: $00
    sub a                                         ; $6222: $97
    nop                                           ; $6223: $00
    sbc d                                         ; $6224: $9a
    nop                                           ; $6225: $00
    sbc l                                         ; $6226: $9d
    nop                                           ; $6227: $00
    and b                                         ; $6228: $a0
    nop                                           ; $6229: $00
    and e                                         ; $622a: $a3
    nop                                           ; $622b: $00
    and a                                         ; $622c: $a7
    nop                                           ; $622d: $00
    xor c                                         ; $622e: $a9
    nop                                           ; $622f: $00
    xor h                                         ; $6230: $ac
    nop                                           ; $6231: $00
    xor a                                         ; $6232: $af
    nop                                           ; $6233: $00
    or d                                          ; $6234: $b2
    nop                                           ; $6235: $00
    or l                                          ; $6236: $b5
    nop                                           ; $6237: $00
    cp b                                          ; $6238: $b8
    nop                                           ; $6239: $00
    cp e                                          ; $623a: $bb
    nop                                           ; $623b: $00
    cp [hl]                                       ; $623c: $be
    nop                                           ; $623d: $00
    pop bc                                        ; $623e: $c1
    nop                                           ; $623f: $00
    jp $c700                                      ; $6240: $c3 $00 $c7


    nop                                           ; $6243: $00
    jp z, $cc00                                   ; $6244: $ca $00 $cc

    nop                                           ; $6247: $00
    rst $08                                       ; $6248: $cf
    nop                                           ; $6249: $00
    jp nc, $d400                                  ; $624a: $d2 $00 $d4

    nop                                           ; $624d: $00
    rst $10                                       ; $624e: $d7
    nop                                           ; $624f: $00
    jp c, $dd00                                   ; $6250: $da $00 $dd

    nop                                           ; $6253: $00
    ldh [rP1], a                                  ; $6254: $e0 $00
    db $e3                                        ; $6256: $e3
    nop                                           ; $6257: $00
    push hl                                       ; $6258: $e5
    nop                                           ; $6259: $00
    add sp, $00                                   ; $625a: $e8 $00
    db $eb                                        ; $625c: $eb
    nop                                           ; $625d: $00
    xor $00                                       ; $625e: $ee $00
    ldh a, [rP1]                                  ; $6260: $f0 $00
    di                                            ; $6262: $f3
    nop                                           ; $6263: $00
    or $00                                        ; $6264: $f6 $00
    ld sp, hl                                     ; $6266: $f9
    nop                                           ; $6267: $00
    ei                                            ; $6268: $fb
    nop                                           ; $6269: $00
    cp $00                                        ; $626a: $fe $00
    ld bc, $0401                                  ; $626c: $01 $01 $04
    ld bc, $0106                                  ; $626f: $01 $06 $01
    add hl, bc                                    ; $6272: $09
    ld bc, $010c                                  ; $6273: $01 $0c $01
    rrca                                          ; $6276: $0f
    ld bc, $0111                                  ; $6277: $01 $11 $01
    inc d                                         ; $627a: $14
    ld bc, $0117                                  ; $627b: $01 $17 $01
    add hl, de                                    ; $627e: $19
    ld bc, $011c                                  ; $627f: $01 $1c $01
    rra                                           ; $6282: $1f
    ld bc, $0122                                  ; $6283: $01 $22 $01
    inc h                                         ; $6286: $24
    ld bc, $0127                                  ; $6287: $01 $27 $01
    add hl, hl                                    ; $628a: $29
    ld bc, $012c                                  ; $628b: $01 $2c $01
    cpl                                           ; $628e: $2f
    ld bc, $0132                                  ; $628f: $01 $32 $01
    inc [hl]                                      ; $6292: $34
    ld bc, $0137                                  ; $6293: $01 $37 $01
    ld a, [hl-]                                   ; $6296: $3a
    ld bc, $013d                                  ; $6297: $01 $3d $01
    ccf                                           ; $629a: $3f
    ld bc, $0142                                  ; $629b: $01 $42 $01
    ld b, l                                       ; $629e: $45
    ld bc, HeaderROMSize                          ; $629f: $01 $48 $01
    ld c, d                                       ; $62a2: $4a
    ld bc, HeaderComplementCheck                  ; $62a3: $01 $4d $01
    ld d, b                                       ; $62a6: $50
    ld bc, $0152                                  ; $62a7: $01 $52 $01
    ld d, l                                       ; $62aa: $55
    ld bc, $0158                                  ; $62ab: $01 $58 $01
    ld e, e                                       ; $62ae: $5b
    ld bc, $015d                                  ; $62af: $01 $5d $01
    ld h, b                                       ; $62b2: $60
    ld bc, $0163                                  ; $62b3: $01 $63 $01
    ld h, [hl]                                    ; $62b6: $66
    ld bc, $0168                                  ; $62b7: $01 $68 $01
    ld l, e                                       ; $62ba: $6b
    ld bc, $016e                                  ; $62bb: $01 $6e $01
    ld [hl], c                                    ; $62be: $71
    ld bc, $0173                                  ; $62bf: $01 $73 $01
    halt                                          ; $62c2: $76
    ld bc, $0178                                  ; $62c3: $01 $78 $01
    ld a, e                                       ; $62c6: $7b
    ld bc, $017e                                  ; $62c7: $01 $7e $01
    add c                                         ; $62ca: $81
    ld bc, $0183                                  ; $62cb: $01 $83 $01
    add [hl]                                      ; $62ce: $86
    ld bc, $0189                                  ; $62cf: $01 $89 $01
    adc h                                         ; $62d2: $8c
    ld bc, $018e                                  ; $62d3: $01 $8e $01
    sub c                                         ; $62d6: $91
    ld bc, $0194                                  ; $62d7: $01 $94 $01
    sub a                                         ; $62da: $97
    ld bc, $0199                                  ; $62db: $01 $99 $01
    sbc h                                         ; $62de: $9c
    ld bc, $019f                                  ; $62df: $01 $9f $01
    and d                                         ; $62e2: $a2
    ld bc, $01a4                                  ; $62e3: $01 $a4 $01
    and a                                         ; $62e6: $a7
    ld bc, $01aa                                  ; $62e7: $01 $aa $01
    xor l                                         ; $62ea: $ad
    ld bc, $01b0                                  ; $62eb: $01 $b0 $01
    or d                                          ; $62ee: $b2
    ld bc, $01b5                                  ; $62ef: $01 $b5 $01
    cp b                                          ; $62f2: $b8
    ld bc, $01ba                                  ; $62f3: $01 $ba $01
    cp l                                          ; $62f6: $bd
    ld bc, $01c0                                  ; $62f7: $01 $c0 $01
    jp $c601                                      ; $62fa: $c3 $01 $c6


    ld bc, $01c9                                  ; $62fd: $01 $c9 $01
    rlc c                                         ; $6300: $cb $01
    adc $01                                       ; $6302: $ce $01
    pop de                                        ; $6304: $d1
    ld bc, $01d3                                  ; $6305: $01 $d3 $01
    sub $01                                       ; $6308: $d6 $01
    reti                                          ; $630a: $d9


    ld bc, $01dc                                  ; $630b: $01 $dc $01
    rst $18                                       ; $630e: $df
    ld bc, $0004                                  ; $630f: $01 $04 $00
    inc l                                         ; $6312: $2c
    nop                                           ; $6313: $00
    ld [hl-], a                                   ; $6314: $32
    nop                                           ; $6315: $00
    ld a, [hl-]                                   ; $6316: $3a
    nop                                           ; $6317: $00
    ld b, l                                       ; $6318: $45
    nop                                           ; $6319: $00
    ld c, d                                       ; $631a: $4a
    nop                                           ; $631b: $00
    ld d, b                                       ; $631c: $50
    nop                                           ; $631d: $00
    ld d, [hl]                                    ; $631e: $56
    nop                                           ; $631f: $00
    ld e, e                                       ; $6320: $5b
    nop                                           ; $6321: $00
    ld e, a                                       ; $6322: $5f
    nop                                           ; $6323: $00
    ld h, e                                       ; $6324: $63
    nop                                           ; $6325: $00
    ld l, b                                       ; $6326: $68
    nop                                           ; $6327: $00
    ld l, l                                       ; $6328: $6d
    nop                                           ; $6329: $00
    ld [hl], c                                    ; $632a: $71
    nop                                           ; $632b: $00
    ld [hl], h                                    ; $632c: $74
    nop                                           ; $632d: $00
    ld a, b                                       ; $632e: $78
    nop                                           ; $632f: $00
    ld a, h                                       ; $6330: $7c
    nop                                           ; $6331: $00
    add b                                         ; $6332: $80
    nop                                           ; $6333: $00
    add e                                         ; $6334: $83
    nop                                           ; $6335: $00
    add a                                         ; $6336: $87
    nop                                           ; $6337: $00
    adc e                                         ; $6338: $8b
    nop                                           ; $6339: $00
    adc [hl]                                      ; $633a: $8e
    nop                                           ; $633b: $00
    sub c                                         ; $633c: $91
    nop                                           ; $633d: $00
    sub l                                         ; $633e: $95
    nop                                           ; $633f: $00
    sbc b                                         ; $6340: $98
    nop                                           ; $6341: $00
    sbc h                                         ; $6342: $9c
    nop                                           ; $6343: $00
    sbc a                                         ; $6344: $9f
    nop                                           ; $6345: $00
    and e                                         ; $6346: $a3
    nop                                           ; $6347: $00
    and [hl]                                      ; $6348: $a6
    nop                                           ; $6349: $00
    xor c                                         ; $634a: $a9
    nop                                           ; $634b: $00
    xor h                                         ; $634c: $ac
    nop                                           ; $634d: $00
    xor a                                         ; $634e: $af
    nop                                           ; $634f: $00
    or e                                          ; $6350: $b3
    nop                                           ; $6351: $00
    or [hl]                                       ; $6352: $b6
    nop                                           ; $6353: $00
    cp c                                          ; $6354: $b9
    nop                                           ; $6355: $00
    cp h                                          ; $6356: $bc
    nop                                           ; $6357: $00
    cp a                                          ; $6358: $bf
    nop                                           ; $6359: $00
    jp nz, $c600                                  ; $635a: $c2 $00 $c6

    nop                                           ; $635d: $00
    ret z                                         ; $635e: $c8

    nop                                           ; $635f: $00
    rlc b                                         ; $6360: $cb $00
    rst $08                                       ; $6362: $cf
    nop                                           ; $6363: $00
    jp nc, $d400                                  ; $6364: $d2 $00 $d4

    nop                                           ; $6367: $00
    ret c                                         ; $6368: $d8

    nop                                           ; $6369: $00
    db $db                                        ; $636a: $db
    nop                                           ; $636b: $00
    db $dd                                        ; $636c: $dd
    nop                                           ; $636d: $00
    pop hl                                        ; $636e: $e1
    nop                                           ; $636f: $00
    db $e4                                        ; $6370: $e4
    nop                                           ; $6371: $00
    rst $20                                       ; $6372: $e7
    nop                                           ; $6373: $00
    ld [$ed00], a                                 ; $6374: $ea $00 $ed
    nop                                           ; $6377: $00
    ldh a, [rP1]                                  ; $6378: $f0 $00
    di                                            ; $637a: $f3
    nop                                           ; $637b: $00
    or $00                                        ; $637c: $f6 $00
    ld sp, hl                                     ; $637e: $f9
    nop                                           ; $637f: $00
    ei                                            ; $6380: $fb
    nop                                           ; $6381: $00
    cp $00                                        ; $6382: $fe $00
    ld bc, $0401                                  ; $6384: $01 $01 $04
    ld bc, $0107                                  ; $6387: $01 $07 $01
    ld a, [bc]                                    ; $638a: $0a
    ld bc, $010d                                  ; $638b: $01 $0d $01
    db $10                                        ; $638e: $10
    ld bc, $0113                                  ; $638f: $01 $13 $01
    ld d, $01                                     ; $6392: $16 $01
    add hl, de                                    ; $6394: $19
    ld bc, $011c                                  ; $6395: $01 $1c $01
    rra                                           ; $6398: $1f
    ld bc, $0122                                  ; $6399: $01 $22 $01
    dec h                                         ; $639c: $25
    ld bc, $0128                                  ; $639d: $01 $28 $01
    ld a, [hl+]                                   ; $63a0: $2a
    ld bc, $012e                                  ; $63a1: $01 $2e $01
    jr nc, jr_03a_63a7                            ; $63a4: $30 $01

    inc sp                                        ; $63a6: $33

jr_03a_63a7:
    ld bc, $0136                                  ; $63a7: $01 $36 $01
    add hl, sp                                    ; $63aa: $39
    ld bc, $013c                                  ; $63ab: $01 $3c $01
    ccf                                           ; $63ae: $3f
    ld bc, $0142                                  ; $63af: $01 $42 $01
    ld b, l                                       ; $63b2: $45
    ld bc, HeaderROMSize                          ; $63b3: $01 $48 $01
    ld c, e                                       ; $63b6: $4b
    ld bc, HeaderComplementCheck                  ; $63b7: $01 $4d $01
    ld d, c                                       ; $63ba: $51
    ld bc, $0153                                  ; $63bb: $01 $53 $01
    ld d, [hl]                                    ; $63be: $56
    ld bc, $0159                                  ; $63bf: $01 $59 $01
    ld e, h                                       ; $63c2: $5c
    ld bc, $015f                                  ; $63c3: $01 $5f $01
    ld h, e                                       ; $63c6: $63
    ld bc, $0165                                  ; $63c7: $01 $65 $01
    ld l, b                                       ; $63ca: $68
    ld bc, $016b                                  ; $63cb: $01 $6b $01
    ld l, [hl]                                    ; $63ce: $6e
    ld bc, $0171                                  ; $63cf: $01 $71 $01
    ld [hl], h                                    ; $63d2: $74
    ld bc, $0177                                  ; $63d3: $01 $77 $01
    ld a, d                                       ; $63d6: $7a
    ld bc, $017d                                  ; $63d7: $01 $7d $01
    ld a, a                                       ; $63da: $7f
    ld bc, $0182                                  ; $63db: $01 $82 $01
    add l                                         ; $63de: $85
    ld bc, $0188                                  ; $63df: $01 $88 $01
    adc h                                         ; $63e2: $8c
    ld bc, $018e                                  ; $63e3: $01 $8e $01
    sub c                                         ; $63e6: $91
    ld bc, $0194                                  ; $63e7: $01 $94 $01
    sub a                                         ; $63ea: $97
    ld bc, $019a                                  ; $63eb: $01 $9a $01
    sbc l                                         ; $63ee: $9d
    ld bc, $01a0                                  ; $63ef: $01 $a0 $01
    and e                                         ; $63f2: $a3
    ld bc, $01a6                                  ; $63f3: $01 $a6 $01
    xor c                                         ; $63f6: $a9
    ld bc, $01ac                                  ; $63f7: $01 $ac $01
    xor a                                         ; $63fa: $af
    ld bc, $01b2                                  ; $63fb: $01 $b2 $01
    or l                                          ; $63fe: $b5
    ld bc, $01b8                                  ; $63ff: $01 $b8 $01
    cp e                                          ; $6402: $bb
    ld bc, $01be                                  ; $6403: $01 $be $01
    pop bc                                        ; $6406: $c1
    ld bc, $01c4                                  ; $6407: $01 $c4 $01
    rst $00                                       ; $640a: $c7
    ld bc, $01ca                                  ; $640b: $01 $ca $01
    call $d001                                    ; $640e: $cd $01 $d0
    ld bc, $01d3                                  ; $6411: $01 $d3 $01
    sub $01                                       ; $6414: $d6 $01
    ret c                                         ; $6416: $d8

    ld bc, $01db                                  ; $6417: $01 $db $01
    sbc $01                                       ; $641a: $de $01
    inc bc                                        ; $641c: $03
    nop                                           ; $641d: $00
    inc l                                         ; $641e: $2c
    nop                                           ; $641f: $00
    inc sp                                        ; $6420: $33
    nop                                           ; $6421: $00
    inc a                                         ; $6422: $3c
    nop                                           ; $6423: $00
    ld b, e                                       ; $6424: $43
    nop                                           ; $6425: $00
    ld c, l                                       ; $6426: $4d
    nop                                           ; $6427: $00
    ld d, e                                       ; $6428: $53
    nop                                           ; $6429: $00
    ld e, b                                       ; $642a: $58
    nop                                           ; $642b: $00
    ld e, l                                       ; $642c: $5d
    nop                                           ; $642d: $00
    ld h, d                                       ; $642e: $62
    nop                                           ; $642f: $00
    ld h, a                                       ; $6430: $67
    nop                                           ; $6431: $00
    ld l, h                                       ; $6432: $6c
    nop                                           ; $6433: $00
    ld [hl], b                                    ; $6434: $70
    nop                                           ; $6435: $00
    ld [hl], l                                    ; $6436: $75
    nop                                           ; $6437: $00
    ld a, c                                       ; $6438: $79
    nop                                           ; $6439: $00
    ld a, l                                       ; $643a: $7d
    nop                                           ; $643b: $00
    add c                                         ; $643c: $81
    nop                                           ; $643d: $00
    add l                                         ; $643e: $85
    nop                                           ; $643f: $00
    adc c                                         ; $6440: $89
    nop                                           ; $6441: $00
    adc l                                         ; $6442: $8d
    nop                                           ; $6443: $00
    sub c                                         ; $6444: $91
    nop                                           ; $6445: $00
    sub l                                         ; $6446: $95
    nop                                           ; $6447: $00
    sbc b                                         ; $6448: $98
    nop                                           ; $6449: $00
    sbc l                                         ; $644a: $9d
    nop                                           ; $644b: $00
    and b                                         ; $644c: $a0
    nop                                           ; $644d: $00
    and h                                         ; $644e: $a4
    nop                                           ; $644f: $00
    and a                                         ; $6450: $a7
    nop                                           ; $6451: $00
    xor e                                         ; $6452: $ab
    nop                                           ; $6453: $00
    xor [hl]                                      ; $6454: $ae
    nop                                           ; $6455: $00
    or d                                          ; $6456: $b2
    nop                                           ; $6457: $00
    or [hl]                                       ; $6458: $b6
    nop                                           ; $6459: $00
    cp c                                          ; $645a: $b9
    nop                                           ; $645b: $00
    cp l                                          ; $645c: $bd
    nop                                           ; $645d: $00
    ret nz                                        ; $645e: $c0

    nop                                           ; $645f: $00
    call nz, $c700                                ; $6460: $c4 $00 $c7
    nop                                           ; $6463: $00
    rlc b                                         ; $6464: $cb $00
    adc $00                                       ; $6466: $ce $00
    jp nc, $d500                                  ; $6468: $d2 $00 $d5

    nop                                           ; $646b: $00
    reti                                          ; $646c: $d9


    nop                                           ; $646d: $00
    call c, $df00                                 ; $646e: $dc $00 $df
    nop                                           ; $6471: $00
    db $e3                                        ; $6472: $e3
    nop                                           ; $6473: $00
    and $00                                       ; $6474: $e6 $00
    jp hl                                         ; $6476: $e9


    nop                                           ; $6477: $00
    db $ed                                        ; $6478: $ed
    nop                                           ; $6479: $00
    ldh a, [rP1]                                  ; $647a: $f0 $00
    db $f4                                        ; $647c: $f4
    nop                                           ; $647d: $00
    rst $30                                       ; $647e: $f7
    nop                                           ; $647f: $00
    ld a, [$fd00]                                 ; $6480: $fa $00 $fd
    nop                                           ; $6483: $00
    ld bc, $0401                                  ; $6484: $01 $01 $04
    ld bc, $0107                                  ; $6487: $01 $07 $01
    dec bc                                        ; $648a: $0b
    ld bc, $010e                                  ; $648b: $01 $0e $01
    ld de, $1501                                  ; $648e: $11 $01 $15
    ld bc, $0118                                  ; $6491: $01 $18 $01
    inc e                                         ; $6494: $1c
    ld bc, $011f                                  ; $6495: $01 $1f $01
    ld [hl+], a                                   ; $6498: $22
    ld bc, $0126                                  ; $6499: $01 $26 $01
    add hl, hl                                    ; $649c: $29
    ld bc, $012c                                  ; $649d: $01 $2c $01
    jr nc, jr_03a_64a3                            ; $64a0: $30 $01

    inc sp                                        ; $64a2: $33

jr_03a_64a3:
    ld bc, $0136                                  ; $64a3: $01 $36 $01
    add hl, sp                                    ; $64a6: $39
    ld bc, $013c                                  ; $64a7: $01 $3c $01
    ld b, b                                       ; $64aa: $40
    ld bc, HeaderNewLicenseeCode                  ; $64ab: $01 $44 $01
    ld b, a                                       ; $64ae: $47
    ld bc, HeaderDestinationCode                  ; $64af: $01 $4a $01
    ld c, l                                       ; $64b2: $4d
    ld bc, $0150                                  ; $64b3: $01 $50 $01
    ld d, h                                       ; $64b6: $54
    ld bc, $0158                                  ; $64b7: $01 $58 $01
    ld e, e                                       ; $64ba: $5b
    ld bc, $015e                                  ; $64bb: $01 $5e $01
    ld h, c                                       ; $64be: $61
    ld bc, $0165                                  ; $64bf: $01 $65 $01
    ld l, b                                       ; $64c2: $68
    ld bc, $016b                                  ; $64c3: $01 $6b $01
    ld l, [hl]                                    ; $64c6: $6e
    ld bc, $0172                                  ; $64c7: $01 $72 $01
    ld [hl], l                                    ; $64ca: $75
    ld bc, $0179                                  ; $64cb: $01 $79 $01
    ld a, h                                       ; $64ce: $7c
    ld bc, $017f                                  ; $64cf: $01 $7f $01
    add e                                         ; $64d2: $83
    ld bc, $0186                                  ; $64d3: $01 $86 $01
    adc c                                         ; $64d6: $89
    ld bc, $018d                                  ; $64d7: $01 $8d $01
    sub b                                         ; $64da: $90
    ld bc, $0194                                  ; $64db: $01 $94 $01
    sub a                                         ; $64de: $97
    ld bc, $019a                                  ; $64df: $01 $9a $01
    sbc l                                         ; $64e2: $9d
    ld bc, $01a1                                  ; $64e3: $01 $a1 $01
    and h                                         ; $64e6: $a4
    ld bc, $01a8                                  ; $64e7: $01 $a8 $01
    xor e                                         ; $64ea: $ab
    ld bc, $01ae                                  ; $64eb: $01 $ae $01
    or d                                          ; $64ee: $b2
    ld bc, $01b5                                  ; $64ef: $01 $b5 $01
    cp c                                          ; $64f2: $b9
    ld bc, $01bc                                  ; $64f3: $01 $bc $01
    ret nz                                        ; $64f6: $c0

    ld bc, $01c3                                  ; $64f7: $01 $c3 $01
    add $01                                       ; $64fa: $c6 $01
    jp z, $cd01                                   ; $64fc: $ca $01 $cd

    ld bc, $01d1                                  ; $64ff: $01 $d1 $01
    call nc, $d701                                ; $6502: $d4 $01 $d7
    ld bc, $01db                                  ; $6505: $01 $db $01
    sbc $01                                       ; $6508: $de $01
    inc bc                                        ; $650a: $03
    nop                                           ; $650b: $00
    dec l                                         ; $650c: $2d
    nop                                           ; $650d: $00
    add hl, sp                                    ; $650e: $39
    nop                                           ; $650f: $00
    ld b, d                                       ; $6510: $42
    nop                                           ; $6511: $00
    ld c, d                                       ; $6512: $4a
    nop                                           ; $6513: $00
    ld d, c                                       ; $6514: $51
    nop                                           ; $6515: $00
    ld e, e                                       ; $6516: $5b
    nop                                           ; $6517: $00
    ld h, b                                       ; $6518: $60
    nop                                           ; $6519: $00
    ld h, [hl]                                    ; $651a: $66
    nop                                           ; $651b: $00
    ld l, h                                       ; $651c: $6c
    nop                                           ; $651d: $00
    ld [hl], c                                    ; $651e: $71
    nop                                           ; $651f: $00
    halt                                          ; $6520: $76
    nop                                           ; $6521: $00
    ld a, e                                       ; $6522: $7b
    nop                                           ; $6523: $00
    add b                                         ; $6524: $80
    nop                                           ; $6525: $00
    add l                                         ; $6526: $85
    nop                                           ; $6527: $00
    adc c                                         ; $6528: $89
    nop                                           ; $6529: $00
    adc [hl]                                      ; $652a: $8e
    nop                                           ; $652b: $00
    sub d                                         ; $652c: $92
    nop                                           ; $652d: $00
    sub a                                         ; $652e: $97
    nop                                           ; $652f: $00
    sbc h                                         ; $6530: $9c
    nop                                           ; $6531: $00
    and b                                         ; $6532: $a0
    nop                                           ; $6533: $00
    and h                                         ; $6534: $a4
    nop                                           ; $6535: $00
    xor b                                         ; $6536: $a8
    nop                                           ; $6537: $00
    xor h                                         ; $6538: $ac
    nop                                           ; $6539: $00
    or c                                          ; $653a: $b1
    nop                                           ; $653b: $00
    or l                                          ; $653c: $b5
    nop                                           ; $653d: $00
    cp c                                          ; $653e: $b9
    nop                                           ; $653f: $00
    cp l                                          ; $6540: $bd
    nop                                           ; $6541: $00
    pop bc                                        ; $6542: $c1
    nop                                           ; $6543: $00
    add $00                                       ; $6544: $c6 $00
    jp z, $cd00                                   ; $6546: $ca $00 $cd

    nop                                           ; $6549: $00
    pop de                                        ; $654a: $d1
    nop                                           ; $654b: $00
    push de                                       ; $654c: $d5
    nop                                           ; $654d: $00
    reti                                          ; $654e: $d9


    nop                                           ; $654f: $00
    db $dd                                        ; $6550: $dd
    nop                                           ; $6551: $00
    pop hl                                        ; $6552: $e1
    nop                                           ; $6553: $00
    push hl                                       ; $6554: $e5
    nop                                           ; $6555: $00
    jp hl                                         ; $6556: $e9


    nop                                           ; $6557: $00
    db $ed                                        ; $6558: $ed
    nop                                           ; $6559: $00
    ldh a, [rP1]                                  ; $655a: $f0 $00
    push af                                       ; $655c: $f5
    nop                                           ; $655d: $00
    ld hl, sp+$00                                 ; $655e: $f8 $00
    db $fc                                        ; $6560: $fc
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    ld bc, $0103                                  ; $6563: $01 $03 $01
    ld [$0b01], sp                                ; $6566: $08 $01 $0b
    ld bc, $010f                                  ; $6569: $01 $0f $01
    inc de                                        ; $656c: $13
    ld bc, $0117                                  ; $656d: $01 $17 $01
    dec de                                        ; $6570: $1b
    ld bc, $011f                                  ; $6571: $01 $1f $01
    ld [hl+], a                                   ; $6574: $22
    ld bc, $0126                                  ; $6575: $01 $26 $01
    ld a, [hl+]                                   ; $6578: $2a
    ld bc, $012e                                  ; $6579: $01 $2e $01
    ld [hl-], a                                   ; $657c: $32
    ld bc, $0136                                  ; $657d: $01 $36 $01
    add hl, sp                                    ; $6580: $39
    ld bc, $013d                                  ; $6581: $01 $3d $01
    ld b, c                                       ; $6584: $41
    ld bc, $0145                                  ; $6585: $01 $45 $01
    ld c, c                                       ; $6588: $49
    ld bc, HeaderMaskROMVersion                   ; $6589: $01 $4c $01
    ld d, b                                       ; $658c: $50
    ld bc, $0154                                  ; $658d: $01 $54 $01
    ld e, b                                       ; $6590: $58
    ld bc, $015c                                  ; $6591: $01 $5c $01
    ld h, b                                       ; $6594: $60
    ld bc, $0163                                  ; $6595: $01 $63 $01
    ld h, a                                       ; $6598: $67
    ld bc, $016b                                  ; $6599: $01 $6b $01
    ld l, a                                       ; $659c: $6f
    ld bc, $0173                                  ; $659d: $01 $73 $01
    ld [hl], a                                    ; $65a0: $77
    ld bc, $017b                                  ; $65a1: $01 $7b $01
    ld a, a                                       ; $65a4: $7f
    ld bc, $0182                                  ; $65a5: $01 $82 $01
    add [hl]                                      ; $65a8: $86
    ld bc, $018a                                  ; $65a9: $01 $8a $01
    adc [hl]                                      ; $65ac: $8e
    ld bc, $0192                                  ; $65ad: $01 $92 $01
    sub [hl]                                      ; $65b0: $96
    ld bc, $019a                                  ; $65b1: $01 $9a $01
    sbc [hl]                                      ; $65b4: $9e
    ld bc, $01a2                                  ; $65b5: $01 $a2 $01
    and l                                         ; $65b8: $a5
    ld bc, $01a9                                  ; $65b9: $01 $a9 $01
    xor l                                         ; $65bc: $ad
    ld bc, $01b1                                  ; $65bd: $01 $b1 $01
    or l                                          ; $65c0: $b5
    ld bc, $01b9                                  ; $65c1: $01 $b9 $01
    cp l                                          ; $65c4: $bd
    ld bc, $01c1                                  ; $65c5: $01 $c1 $01
    call nz, $c801                                ; $65c8: $c4 $01 $c8
    ld bc, $01cc                                  ; $65cb: $01 $cc $01
    ret nc                                        ; $65ce: $d0

    ld bc, $01d4                                  ; $65cf: $01 $d4 $01
    ret c                                         ; $65d2: $d8

    ld bc, $01dc                                  ; $65d3: $01 $dc $01
    inc bc                                        ; $65d6: $03
    nop                                           ; $65d7: $00
    scf                                           ; $65d8: $37
    nop                                           ; $65d9: $00
    ld b, d                                       ; $65da: $42
    nop                                           ; $65db: $00
    ld c, h                                       ; $65dc: $4c
    nop                                           ; $65dd: $00
    ld d, [hl]                                    ; $65de: $56
    nop                                           ; $65df: $00
    ld e, [hl]                                    ; $65e0: $5e
    nop                                           ; $65e1: $00
    ld h, [hl]                                    ; $65e2: $66
    nop                                           ; $65e3: $00
    ld [hl], b                                    ; $65e4: $70
    nop                                           ; $65e5: $00
    halt                                          ; $65e6: $76
    nop                                           ; $65e7: $00
    ld a, h                                       ; $65e8: $7c
    nop                                           ; $65e9: $00
    add e                                         ; $65ea: $83
    nop                                           ; $65eb: $00
    adc c                                         ; $65ec: $89
    nop                                           ; $65ed: $00
    adc a                                         ; $65ee: $8f
    nop                                           ; $65ef: $00
    sub h                                         ; $65f0: $94
    nop                                           ; $65f1: $00
    sbc d                                         ; $65f2: $9a
    nop                                           ; $65f3: $00
    sbc a                                         ; $65f4: $9f
    nop                                           ; $65f5: $00
    and l                                         ; $65f6: $a5
    nop                                           ; $65f7: $00
    xor d                                         ; $65f8: $aa
    nop                                           ; $65f9: $00
    or b                                          ; $65fa: $b0
    nop                                           ; $65fb: $00
    or h                                          ; $65fc: $b4
    nop                                           ; $65fd: $00
    cp c                                          ; $65fe: $b9
    nop                                           ; $65ff: $00
    cp [hl]                                       ; $6600: $be
    nop                                           ; $6601: $00
    call nz, $c900                                ; $6602: $c4 $00 $c9
    nop                                           ; $6605: $00
    adc $00                                       ; $6606: $ce $00
    db $d3                                        ; $6608: $d3
    nop                                           ; $6609: $00
    ret c                                         ; $660a: $d8

    nop                                           ; $660b: $00
    db $dd                                        ; $660c: $dd
    nop                                           ; $660d: $00
    ld [c], a                                     ; $660e: $e2
    nop                                           ; $660f: $00
    and $00                                       ; $6610: $e6 $00
    db $eb                                        ; $6612: $eb
    nop                                           ; $6613: $00
    ldh a, [rP1]                                  ; $6614: $f0 $00
    push af                                       ; $6616: $f5
    nop                                           ; $6617: $00
    ld sp, hl                                     ; $6618: $f9
    nop                                           ; $6619: $00
    cp $00                                        ; $661a: $fe $00
    inc bc                                        ; $661c: $03
    ld bc, $0108                                  ; $661d: $01 $08 $01
    inc c                                         ; $6620: $0c
    ld bc, $0111                                  ; $6621: $01 $11 $01
    dec d                                         ; $6624: $15
    ld bc, $011a                                  ; $6625: $01 $1a $01
    rra                                           ; $6628: $1f
    ld bc, $0123                                  ; $6629: $01 $23 $01
    jr z, jr_03a_662f                             ; $662c: $28 $01

    dec l                                         ; $662e: $2d

jr_03a_662f:
    ld bc, $0131                                  ; $662f: $01 $31 $01
    ld [hl], $01                                  ; $6632: $36 $01
    dec sp                                        ; $6634: $3b
    ld bc, HeaderManufacturerCode                 ; $6635: $01 $3f $01
    ld b, h                                       ; $6638: $44
    ld bc, HeaderRAMSize                          ; $6639: $01 $49 $01
    ld c, l                                       ; $663c: $4d
    ld bc, $0152                                  ; $663d: $01 $52 $01
    ld d, a                                       ; $6640: $57
    ld bc, $015b                                  ; $6641: $01 $5b $01
    ld h, b                                       ; $6644: $60
    ld bc, $0165                                  ; $6645: $01 $65 $01
    ld l, c                                       ; $6648: $69
    ld bc, $016e                                  ; $6649: $01 $6e $01
    ld [hl], e                                    ; $664c: $73
    ld bc, $0178                                  ; $664d: $01 $78 $01
    ld a, h                                       ; $6650: $7c
    ld bc, $0181                                  ; $6651: $01 $81 $01
    add l                                         ; $6654: $85
    ld bc, $018a                                  ; $6655: $01 $8a $01
    adc a                                         ; $6658: $8f
    ld bc, $0193                                  ; $6659: $01 $93 $01
    sbc b                                         ; $665c: $98
    ld bc, $019d                                  ; $665d: $01 $9d $01
    and d                                         ; $6660: $a2
    ld bc, $01a6                                  ; $6661: $01 $a6 $01
    xor e                                         ; $6664: $ab
    ld bc, $01af                                  ; $6665: $01 $af $01
    or h                                          ; $6668: $b4
    ld bc, $01b9                                  ; $6669: $01 $b9 $01
    cp [hl]                                       ; $666c: $be
    ld bc, $01c2                                  ; $666d: $01 $c2 $01
    rst $00                                       ; $6670: $c7
    ld bc, $01cb                                  ; $6671: $01 $cb $01
    ret nc                                        ; $6674: $d0

    ld bc, $01d5                                  ; $6675: $01 $d5 $01
    jp c, $de01                                   ; $6678: $da $01 $de

    ld bc, $6696                                  ; $667b: $01 $96 $66
    call nc, $1266                                ; $667e: $d4 $66 $12
    ld h, a                                       ; $6681: $67
    ld d, b                                       ; $6682: $50
    ld h, a                                       ; $6683: $67
    adc [hl]                                      ; $6684: $8e
    ld h, a                                       ; $6685: $67
    call z, $0a67                                 ; $6686: $cc $67 $0a
    ld l, b                                       ; $6689: $68
    ld c, b                                       ; $668a: $48
    ld l, b                                       ; $668b: $68
    add [hl]                                      ; $668c: $86
    ld l, b                                       ; $668d: $68
    call nz, $0268                                ; $668e: $c4 $68 $02
    ld l, c                                       ; $6691: $69
    ld b, b                                       ; $6692: $40
    ld l, c                                       ; $6693: $69
    ld a, [hl]                                    ; $6694: $7e
    ld l, c                                       ; $6695: $69
    ld bc, $0e00                                  ; $6696: $01 $00 $0e
    nop                                           ; $6699: $00
    ld a, [de]                                    ; $669a: $1a
    nop                                           ; $669b: $00
    ld [hl+], a                                   ; $669c: $22
    nop                                           ; $669d: $00
    add hl, hl                                    ; $669e: $29
    nop                                           ; $669f: $00
    jr nc, jr_03a_66a2                            ; $66a0: $30 $00

jr_03a_66a2:
    ld [hl], $00                                  ; $66a2: $36 $00
    dec sp                                        ; $66a4: $3b
    nop                                           ; $66a5: $00
    ld b, b                                       ; $66a6: $40
    nop                                           ; $66a7: $00
    ld b, h                                       ; $66a8: $44
    nop                                           ; $66a9: $00
    ld b, a                                       ; $66aa: $47
    nop                                           ; $66ab: $00
    ld c, e                                       ; $66ac: $4b
    nop                                           ; $66ad: $00
    ld c, a                                       ; $66ae: $4f
    nop                                           ; $66af: $00
    ld d, d                                       ; $66b0: $52
    nop                                           ; $66b1: $00
    ld d, l                                       ; $66b2: $55
    nop                                           ; $66b3: $00
    ld e, b                                       ; $66b4: $58
    nop                                           ; $66b5: $00
    ld e, d                                       ; $66b6: $5a
    nop                                           ; $66b7: $00
    ld e, l                                       ; $66b8: $5d
    nop                                           ; $66b9: $00
    ld h, b                                       ; $66ba: $60
    nop                                           ; $66bb: $00
    ld h, c                                       ; $66bc: $61
    nop                                           ; $66bd: $00
    ld h, h                                       ; $66be: $64
    nop                                           ; $66bf: $00
    ld h, [hl]                                    ; $66c0: $66
    nop                                           ; $66c1: $00
    ld l, b                                       ; $66c2: $68
    nop                                           ; $66c3: $00
    ld l, d                                       ; $66c4: $6a
    nop                                           ; $66c5: $00
    ld l, e                                       ; $66c6: $6b
    nop                                           ; $66c7: $00
    ld l, l                                       ; $66c8: $6d
    nop                                           ; $66c9: $00
    ld l, a                                       ; $66ca: $6f
    nop                                           ; $66cb: $00
    ld [hl], c                                    ; $66cc: $71
    nop                                           ; $66cd: $00
    ld [hl], d                                    ; $66ce: $72
    nop                                           ; $66cf: $00
    ld [hl], e                                    ; $66d0: $73
    nop                                           ; $66d1: $00
    ld [hl], l                                    ; $66d2: $75
    nop                                           ; $66d3: $00
    ld bc, $1200                                  ; $66d4: $01 $00 $12
    nop                                           ; $66d7: $00
    dec e                                         ; $66d8: $1d
    nop                                           ; $66d9: $00
    dec h                                         ; $66da: $25
    nop                                           ; $66db: $00
    dec l                                         ; $66dc: $2d
    nop                                           ; $66dd: $00
    inc [hl]                                      ; $66de: $34
    nop                                           ; $66df: $00
    dec sp                                        ; $66e0: $3b
    nop                                           ; $66e1: $00
    ld b, b                                       ; $66e2: $40
    nop                                           ; $66e3: $00
    ld b, h                                       ; $66e4: $44
    nop                                           ; $66e5: $00
    ld c, c                                       ; $66e6: $49
    nop                                           ; $66e7: $00
    ld c, l                                       ; $66e8: $4d
    nop                                           ; $66e9: $00
    ld d, c                                       ; $66ea: $51
    nop                                           ; $66eb: $00
    ld d, l                                       ; $66ec: $55
    nop                                           ; $66ed: $00
    ld e, b                                       ; $66ee: $58
    nop                                           ; $66ef: $00
    ld e, e                                       ; $66f0: $5b
    nop                                           ; $66f1: $00
    ld e, [hl]                                    ; $66f2: $5e
    nop                                           ; $66f3: $00
    ld h, b                                       ; $66f4: $60
    nop                                           ; $66f5: $00
    ld h, e                                       ; $66f6: $63
    nop                                           ; $66f7: $00
    ld h, l                                       ; $66f8: $65
    nop                                           ; $66f9: $00
    ld h, a                                       ; $66fa: $67
    nop                                           ; $66fb: $00
    ld l, c                                       ; $66fc: $69
    nop                                           ; $66fd: $00
    ld l, h                                       ; $66fe: $6c
    nop                                           ; $66ff: $00
    ld l, [hl]                                    ; $6700: $6e
    nop                                           ; $6701: $00
    ld l, a                                       ; $6702: $6f
    nop                                           ; $6703: $00
    ld [hl], c                                    ; $6704: $71
    nop                                           ; $6705: $00
    ld [hl], e                                    ; $6706: $73
    nop                                           ; $6707: $00
    ld [hl], h                                    ; $6708: $74
    nop                                           ; $6709: $00
    halt                                          ; $670a: $76
    nop                                           ; $670b: $00
    ld [hl], a                                    ; $670c: $77
    nop                                           ; $670d: $00
    ld a, b                                       ; $670e: $78
    nop                                           ; $670f: $00
    ld a, d                                       ; $6710: $7a
    nop                                           ; $6711: $00
    ld bc, $1300                                  ; $6712: $01 $00 $13
    nop                                           ; $6715: $00
    rra                                           ; $6716: $1f
    nop                                           ; $6717: $00
    jr z, jr_03a_671a                             ; $6718: $28 $00

jr_03a_671a:
    jr nc, jr_03a_671c                            ; $671a: $30 $00

jr_03a_671c:
    scf                                           ; $671c: $37
    nop                                           ; $671d: $00
    ccf                                           ; $671e: $3f
    nop                                           ; $671f: $00
    ld b, h                                       ; $6720: $44
    nop                                           ; $6721: $00
    ld c, c                                       ; $6722: $49
    nop                                           ; $6723: $00
    ld c, l                                       ; $6724: $4d
    nop                                           ; $6725: $00
    ld d, d                                       ; $6726: $52
    nop                                           ; $6727: $00
    ld d, [hl]                                    ; $6728: $56
    nop                                           ; $6729: $00
    ld e, d                                       ; $672a: $5a
    nop                                           ; $672b: $00
    ld e, l                                       ; $672c: $5d
    nop                                           ; $672d: $00
    ld h, b                                       ; $672e: $60
    nop                                           ; $672f: $00
    ld h, e                                       ; $6730: $63
    nop                                           ; $6731: $00
    ld h, [hl]                                    ; $6732: $66
    nop                                           ; $6733: $00
    ld l, c                                       ; $6734: $69
    nop                                           ; $6735: $00
    ld l, e                                       ; $6736: $6b
    nop                                           ; $6737: $00
    ld l, l                                       ; $6738: $6d
    nop                                           ; $6739: $00
    ld l, a                                       ; $673a: $6f
    nop                                           ; $673b: $00
    ld [hl], c                                    ; $673c: $71
    nop                                           ; $673d: $00
    ld [hl], e                                    ; $673e: $73
    nop                                           ; $673f: $00
    ld [hl], l                                    ; $6740: $75
    nop                                           ; $6741: $00
    ld [hl], a                                    ; $6742: $77
    nop                                           ; $6743: $00
    ld a, b                                       ; $6744: $78
    nop                                           ; $6745: $00
    ld a, d                                       ; $6746: $7a
    nop                                           ; $6747: $00
    ld a, e                                       ; $6748: $7b
    nop                                           ; $6749: $00
    ld a, l                                       ; $674a: $7d
    nop                                           ; $674b: $00
    ld a, [hl]                                    ; $674c: $7e
    nop                                           ; $674d: $00
    ld a, a                                       ; $674e: $7f
    nop                                           ; $674f: $00
    ld bc, $1100                                  ; $6750: $01 $00 $11
    nop                                           ; $6753: $00
    dec de                                        ; $6754: $1b
    nop                                           ; $6755: $00
    inc hl                                        ; $6756: $23
    nop                                           ; $6757: $00
    dec hl                                        ; $6758: $2b
    nop                                           ; $6759: $00
    ld [hl-], a                                   ; $675a: $32
    nop                                           ; $675b: $00
    jr c, jr_03a_675e                             ; $675c: $38 $00

jr_03a_675e:
    dec a                                         ; $675e: $3d
    nop                                           ; $675f: $00
    ld b, c                                       ; $6760: $41
    nop                                           ; $6761: $00
    ld b, [hl]                                    ; $6762: $46
    nop                                           ; $6763: $00
    ld c, d                                       ; $6764: $4a
    nop                                           ; $6765: $00
    ld c, [hl]                                    ; $6766: $4e
    nop                                           ; $6767: $00
    ld d, d                                       ; $6768: $52
    nop                                           ; $6769: $00
    ld d, [hl]                                    ; $676a: $56
    nop                                           ; $676b: $00
    ld e, c                                       ; $676c: $59
    nop                                           ; $676d: $00
    ld e, l                                       ; $676e: $5d
    nop                                           ; $676f: $00
    ld h, b                                       ; $6770: $60
    nop                                           ; $6771: $00
    ld h, e                                       ; $6772: $63
    nop                                           ; $6773: $00
    ld h, l                                       ; $6774: $65
    nop                                           ; $6775: $00
    ld l, c                                       ; $6776: $69
    nop                                           ; $6777: $00
    ld l, e                                       ; $6778: $6b
    nop                                           ; $6779: $00
    ld l, [hl]                                    ; $677a: $6e
    nop                                           ; $677b: $00
    ld [hl], c                                    ; $677c: $71
    nop                                           ; $677d: $00
    ld [hl], e                                    ; $677e: $73
    nop                                           ; $677f: $00
    ld [hl], l                                    ; $6780: $75
    nop                                           ; $6781: $00
    ld a, b                                       ; $6782: $78
    nop                                           ; $6783: $00
    ld a, d                                       ; $6784: $7a
    nop                                           ; $6785: $00
    ld a, h                                       ; $6786: $7c
    nop                                           ; $6787: $00
    ld a, a                                       ; $6788: $7f
    nop                                           ; $6789: $00
    add b                                         ; $678a: $80
    nop                                           ; $678b: $00
    add e                                         ; $678c: $83
    nop                                           ; $678d: $00
    ld bc, $1300                                  ; $678e: $01 $00 $13
    nop                                           ; $6791: $00
    ld e, $00                                     ; $6792: $1e $00
    daa                                           ; $6794: $27
    nop                                           ; $6795: $00
    cpl                                           ; $6796: $2f
    nop                                           ; $6797: $00
    ld [hl], $00                                  ; $6798: $36 $00
    inc a                                         ; $679a: $3c
    nop                                           ; $679b: $00
    ld b, d                                       ; $679c: $42
    nop                                           ; $679d: $00
    ld b, [hl]                                    ; $679e: $46
    nop                                           ; $679f: $00
    ld c, h                                       ; $67a0: $4c
    nop                                           ; $67a1: $00
    ld d, b                                       ; $67a2: $50
    nop                                           ; $67a3: $00
    ld d, h                                       ; $67a4: $54
    nop                                           ; $67a5: $00
    ld e, b                                       ; $67a6: $58
    nop                                           ; $67a7: $00
    ld e, h                                       ; $67a8: $5c
    nop                                           ; $67a9: $00
    ld h, b                                       ; $67aa: $60
    nop                                           ; $67ab: $00
    ld h, d                                       ; $67ac: $62
    nop                                           ; $67ad: $00
    ld h, [hl]                                    ; $67ae: $66
    nop                                           ; $67af: $00
    ld l, c                                       ; $67b0: $69
    nop                                           ; $67b1: $00
    ld l, h                                       ; $67b2: $6c
    nop                                           ; $67b3: $00
    ld l, a                                       ; $67b4: $6f
    nop                                           ; $67b5: $00
    ld [hl], c                                    ; $67b6: $71
    nop                                           ; $67b7: $00
    ld [hl], h                                    ; $67b8: $74
    nop                                           ; $67b9: $00
    ld [hl], a                                    ; $67ba: $77
    nop                                           ; $67bb: $00
    ld a, c                                       ; $67bc: $79
    nop                                           ; $67bd: $00
    ld a, e                                       ; $67be: $7b
    nop                                           ; $67bf: $00
    ld a, [hl]                                    ; $67c0: $7e
    nop                                           ; $67c1: $00
    add b                                         ; $67c2: $80
    nop                                           ; $67c3: $00
    add d                                         ; $67c4: $82
    nop                                           ; $67c5: $00
    add h                                         ; $67c6: $84
    nop                                           ; $67c7: $00
    add [hl]                                      ; $67c8: $86
    nop                                           ; $67c9: $00
    adc b                                         ; $67ca: $88
    nop                                           ; $67cb: $00
    ld bc, $1500                                  ; $67cc: $01 $00 $15
    nop                                           ; $67cf: $00
    ld hl, $2a00                                  ; $67d0: $21 $00 $2a
    nop                                           ; $67d3: $00
    inc [hl]                                      ; $67d4: $34
    nop                                           ; $67d5: $00
    dec sp                                        ; $67d6: $3b
    nop                                           ; $67d7: $00
    ld b, c                                       ; $67d8: $41
    nop                                           ; $67d9: $00
    ld b, a                                       ; $67da: $47
    nop                                           ; $67db: $00
    ld c, l                                       ; $67dc: $4d
    nop                                           ; $67dd: $00
    ld d, c                                       ; $67de: $51
    nop                                           ; $67df: $00
    ld d, [hl]                                    ; $67e0: $56
    nop                                           ; $67e1: $00
    ld e, d                                       ; $67e2: $5a
    nop                                           ; $67e3: $00
    ld e, a                                       ; $67e4: $5f
    nop                                           ; $67e5: $00
    ld h, d                                       ; $67e6: $62
    nop                                           ; $67e7: $00
    ld h, [hl]                                    ; $67e8: $66
    nop                                           ; $67e9: $00
    ld l, d                                       ; $67ea: $6a
    nop                                           ; $67eb: $00
    ld l, l                                       ; $67ec: $6d
    nop                                           ; $67ed: $00
    ld [hl], b                                    ; $67ee: $70
    nop                                           ; $67ef: $00
    ld [hl], e                                    ; $67f0: $73
    nop                                           ; $67f1: $00
    halt                                          ; $67f2: $76
    nop                                           ; $67f3: $00
    ld a, c                                       ; $67f4: $79
    nop                                           ; $67f5: $00
    ld a, h                                       ; $67f6: $7c
    nop                                           ; $67f7: $00
    ld a, [hl]                                    ; $67f8: $7e
    nop                                           ; $67f9: $00
    add b                                         ; $67fa: $80
    nop                                           ; $67fb: $00
    add e                                         ; $67fc: $83
    nop                                           ; $67fd: $00
    add h                                         ; $67fe: $84
    nop                                           ; $67ff: $00
    add a                                         ; $6800: $87
    nop                                           ; $6801: $00
    adc c                                         ; $6802: $89
    nop                                           ; $6803: $00
    adc e                                         ; $6804: $8b
    nop                                           ; $6805: $00
    adc l                                         ; $6806: $8d
    nop                                           ; $6807: $00
    adc a                                         ; $6808: $8f
    nop                                           ; $6809: $00
    ld bc, $1600                                  ; $680a: $01 $00 $16
    nop                                           ; $680d: $00
    inc hl                                        ; $680e: $23
    nop                                           ; $680f: $00
    dec l                                         ; $6810: $2d
    nop                                           ; $6811: $00
    ld [hl], $00                                  ; $6812: $36 $00
    ccf                                           ; $6814: $3f
    nop                                           ; $6815: $00
    ld b, l                                       ; $6816: $45
    nop                                           ; $6817: $00
    ld c, h                                       ; $6818: $4c
    nop                                           ; $6819: $00
    ld d, c                                       ; $681a: $51
    nop                                           ; $681b: $00
    ld d, a                                       ; $681c: $57
    nop                                           ; $681d: $00
    ld e, e                                       ; $681e: $5b
    nop                                           ; $681f: $00
    ld h, b                                       ; $6820: $60
    nop                                           ; $6821: $00
    ld h, l                                       ; $6822: $65
    nop                                           ; $6823: $00
    ld l, b                                       ; $6824: $68
    nop                                           ; $6825: $00
    ld l, l                                       ; $6826: $6d
    nop                                           ; $6827: $00
    ld [hl], b                                    ; $6828: $70
    nop                                           ; $6829: $00
    ld [hl], e                                    ; $682a: $73
    nop                                           ; $682b: $00
    ld [hl], a                                    ; $682c: $77
    nop                                           ; $682d: $00
    ld a, d                                       ; $682e: $7a
    nop                                           ; $682f: $00
    ld a, h                                       ; $6830: $7c
    nop                                           ; $6831: $00
    ld a, a                                       ; $6832: $7f
    nop                                           ; $6833: $00
    add d                                         ; $6834: $82
    nop                                           ; $6835: $00
    add h                                         ; $6836: $84
    nop                                           ; $6837: $00
    add a                                         ; $6838: $87
    nop                                           ; $6839: $00
    adc c                                         ; $683a: $89
    nop                                           ; $683b: $00
    adc h                                         ; $683c: $8c
    nop                                           ; $683d: $00
    adc l                                         ; $683e: $8d
    nop                                           ; $683f: $00
    sub b                                         ; $6840: $90
    nop                                           ; $6841: $00
    sub d                                         ; $6842: $92
    nop                                           ; $6843: $00
    sub h                                         ; $6844: $94
    nop                                           ; $6845: $00
    sub [hl]                                      ; $6846: $96
    nop                                           ; $6847: $00
    ld bc, $1700                                  ; $6848: $01 $00 $17
    nop                                           ; $684b: $00
    dec h                                         ; $684c: $25
    nop                                           ; $684d: $00
    ld sp, $3a00                                  ; $684e: $31 $00 $3a
    nop                                           ; $6851: $00
    ld b, d                                       ; $6852: $42
    nop                                           ; $6853: $00
    ld c, c                                       ; $6854: $49
    nop                                           ; $6855: $00
    ld c, a                                       ; $6856: $4f
    nop                                           ; $6857: $00
    ld d, [hl]                                    ; $6858: $56
    nop                                           ; $6859: $00
    ld e, e                                       ; $685a: $5b
    nop                                           ; $685b: $00
    ld e, a                                       ; $685c: $5f
    nop                                           ; $685d: $00
    ld h, l                                       ; $685e: $65
    nop                                           ; $685f: $00
    ld l, c                                       ; $6860: $69
    nop                                           ; $6861: $00
    ld l, l                                       ; $6862: $6d
    nop                                           ; $6863: $00
    ld [hl], c                                    ; $6864: $71
    nop                                           ; $6865: $00
    ld [hl], l                                    ; $6866: $75
    nop                                           ; $6867: $00
    ld a, b                                       ; $6868: $78
    nop                                           ; $6869: $00
    ld a, h                                       ; $686a: $7c
    nop                                           ; $686b: $00
    ld a, a                                       ; $686c: $7f
    nop                                           ; $686d: $00
    add d                                         ; $686e: $82
    nop                                           ; $686f: $00
    add l                                         ; $6870: $85
    nop                                           ; $6871: $00
    add a                                         ; $6872: $87
    nop                                           ; $6873: $00
    adc d                                         ; $6874: $8a
    nop                                           ; $6875: $00
    adc l                                         ; $6876: $8d
    nop                                           ; $6877: $00
    adc [hl]                                      ; $6878: $8e
    nop                                           ; $6879: $00
    sub c                                         ; $687a: $91
    nop                                           ; $687b: $00
    sub e                                         ; $687c: $93
    nop                                           ; $687d: $00
    sub [hl]                                      ; $687e: $96
    nop                                           ; $687f: $00
    sub a                                         ; $6880: $97
    nop                                           ; $6881: $00
    sbc d                                         ; $6882: $9a
    nop                                           ; $6883: $00
    sbc e                                         ; $6884: $9b
    nop                                           ; $6885: $00
    ld bc, $1900                                  ; $6886: $01 $00 $19
    nop                                           ; $6889: $00
    daa                                           ; $688a: $27
    nop                                           ; $688b: $00
    inc [hl]                                      ; $688c: $34
    nop                                           ; $688d: $00
    dec a                                         ; $688e: $3d
    nop                                           ; $688f: $00
    ld b, [hl]                                    ; $6890: $46
    nop                                           ; $6891: $00
    ld c, [hl]                                    ; $6892: $4e
    nop                                           ; $6893: $00
    ld d, h                                       ; $6894: $54
    nop                                           ; $6895: $00
    ld e, d                                       ; $6896: $5a
    nop                                           ; $6897: $00
    ld h, b                                       ; $6898: $60
    nop                                           ; $6899: $00
    ld h, l                                       ; $689a: $65
    nop                                           ; $689b: $00
    ld l, d                                       ; $689c: $6a
    nop                                           ; $689d: $00
    ld l, [hl]                                    ; $689e: $6e
    nop                                           ; $689f: $00
    ld [hl], e                                    ; $68a0: $73
    nop                                           ; $68a1: $00
    ld [hl], a                                    ; $68a2: $77
    nop                                           ; $68a3: $00
    ld a, e                                       ; $68a4: $7b
    nop                                           ; $68a5: $00
    ld a, a                                       ; $68a6: $7f
    nop                                           ; $68a7: $00
    add d                                         ; $68a8: $82
    nop                                           ; $68a9: $00
    add l                                         ; $68aa: $85
    nop                                           ; $68ab: $00
    adc c                                         ; $68ac: $89
    nop                                           ; $68ad: $00
    adc e                                         ; $68ae: $8b
    nop                                           ; $68af: $00
    adc a                                         ; $68b0: $8f
    nop                                           ; $68b1: $00
    sub c                                         ; $68b2: $91
    nop                                           ; $68b3: $00
    sub h                                         ; $68b4: $94
    nop                                           ; $68b5: $00
    sub [hl]                                      ; $68b6: $96
    nop                                           ; $68b7: $00
    sbc b                                         ; $68b8: $98
    nop                                           ; $68b9: $00
    sbc e                                         ; $68ba: $9b
    nop                                           ; $68bb: $00
    sbc l                                         ; $68bc: $9d
    nop                                           ; $68bd: $00
    sbc a                                         ; $68be: $9f
    nop                                           ; $68bf: $00
    and c                                         ; $68c0: $a1
    nop                                           ; $68c1: $00
    and e                                         ; $68c2: $a3
    nop                                           ; $68c3: $00
    ld bc, $1b00                                  ; $68c4: $01 $00 $1b
    nop                                           ; $68c7: $00
    ld a, [hl+]                                   ; $68c8: $2a
    nop                                           ; $68c9: $00
    ld [hl], $00                                  ; $68ca: $36 $00
    ld b, d                                       ; $68cc: $42
    nop                                           ; $68cd: $00
    ld c, e                                       ; $68ce: $4b
    nop                                           ; $68cf: $00
    ld d, d                                       ; $68d0: $52
    nop                                           ; $68d1: $00
    ld e, c                                       ; $68d2: $59
    nop                                           ; $68d3: $00
    ld h, c                                       ; $68d4: $61
    nop                                           ; $68d5: $00
    ld h, [hl]                                    ; $68d6: $66
    nop                                           ; $68d7: $00
    ld l, h                                       ; $68d8: $6c
    nop                                           ; $68d9: $00
    ld [hl], c                                    ; $68da: $71
    nop                                           ; $68db: $00
    halt                                          ; $68dc: $76
    nop                                           ; $68dd: $00
    ld a, d                                       ; $68de: $7a
    nop                                           ; $68df: $00
    ld a, a                                       ; $68e0: $7f
    nop                                           ; $68e1: $00
    add d                                         ; $68e2: $82
    nop                                           ; $68e3: $00
    add [hl]                                      ; $68e4: $86
    nop                                           ; $68e5: $00
    adc d                                         ; $68e6: $8a
    nop                                           ; $68e7: $00
    adc l                                         ; $68e8: $8d
    nop                                           ; $68e9: $00
    sub c                                         ; $68ea: $91
    nop                                           ; $68eb: $00
    sub h                                         ; $68ec: $94
    nop                                           ; $68ed: $00
    sub a                                         ; $68ee: $97
    nop                                           ; $68ef: $00
    sbc c                                         ; $68f0: $99
    nop                                           ; $68f1: $00
    sbc h                                         ; $68f2: $9c
    nop                                           ; $68f3: $00
    sbc a                                         ; $68f4: $9f
    nop                                           ; $68f5: $00
    and c                                         ; $68f6: $a1
    nop                                           ; $68f7: $00
    and e                                         ; $68f8: $a3
    nop                                           ; $68f9: $00
    and [hl]                                      ; $68fa: $a6
    nop                                           ; $68fb: $00
    and a                                         ; $68fc: $a7
    nop                                           ; $68fd: $00
    xor d                                         ; $68fe: $aa
    nop                                           ; $68ff: $00
    xor h                                         ; $6900: $ac
    nop                                           ; $6901: $00
    ld bc, $1c00                                  ; $6902: $01 $00 $1c
    nop                                           ; $6905: $00
    inc l                                         ; $6906: $2c
    nop                                           ; $6907: $00
    add hl, sp                                    ; $6908: $39
    nop                                           ; $6909: $00
    ld b, e                                       ; $690a: $43
    nop                                           ; $690b: $00
    ld c, h                                       ; $690c: $4c
    nop                                           ; $690d: $00
    ld d, h                                       ; $690e: $54
    nop                                           ; $690f: $00
    ld e, e                                       ; $6910: $5b
    nop                                           ; $6911: $00
    ld h, d                                       ; $6912: $62
    nop                                           ; $6913: $00
    ld l, b                                       ; $6914: $68
    nop                                           ; $6915: $00
    ld l, [hl]                                    ; $6916: $6e
    nop                                           ; $6917: $00
    ld [hl], e                                    ; $6918: $73
    nop                                           ; $6919: $00
    ld a, b                                       ; $691a: $78
    nop                                           ; $691b: $00
    ld a, l                                       ; $691c: $7d
    nop                                           ; $691d: $00
    add d                                         ; $691e: $82
    nop                                           ; $691f: $00
    add a                                         ; $6920: $87
    nop                                           ; $6921: $00
    adc e                                         ; $6922: $8b
    nop                                           ; $6923: $00
    adc [hl]                                      ; $6924: $8e
    nop                                           ; $6925: $00
    sub d                                         ; $6926: $92
    nop                                           ; $6927: $00
    sub l                                         ; $6928: $95
    nop                                           ; $6929: $00
    sbc c                                         ; $692a: $99
    nop                                           ; $692b: $00
    sbc l                                         ; $692c: $9d
    nop                                           ; $692d: $00
    and b                                         ; $692e: $a0
    nop                                           ; $692f: $00
    and d                                         ; $6930: $a2
    nop                                           ; $6931: $00
    and [hl]                                      ; $6932: $a6
    nop                                           ; $6933: $00
    xor c                                         ; $6934: $a9
    nop                                           ; $6935: $00
    xor e                                         ; $6936: $ab
    nop                                           ; $6937: $00
    xor [hl]                                      ; $6938: $ae
    nop                                           ; $6939: $00
    or b                                          ; $693a: $b0
    nop                                           ; $693b: $00
    or h                                          ; $693c: $b4
    nop                                           ; $693d: $00
    or [hl]                                       ; $693e: $b6
    nop                                           ; $693f: $00
    ld bc, $1f00                                  ; $6940: $01 $00 $1f
    nop                                           ; $6943: $00
    jr nc, jr_03a_6946                            ; $6944: $30 $00

jr_03a_6946:
    ld a, $00                                     ; $6946: $3e $00
    ld c, c                                       ; $6948: $49
    nop                                           ; $6949: $00
    ld d, e                                       ; $694a: $53
    nop                                           ; $694b: $00
    ld e, h                                       ; $694c: $5c
    nop                                           ; $694d: $00
    ld h, h                                       ; $694e: $64
    nop                                           ; $694f: $00
    ld l, e                                       ; $6950: $6b
    nop                                           ; $6951: $00
    ld [hl], d                                    ; $6952: $72
    nop                                           ; $6953: $00
    ld a, c                                       ; $6954: $79
    nop                                           ; $6955: $00
    ld a, [hl]                                    ; $6956: $7e
    nop                                           ; $6957: $00
    add h                                         ; $6958: $84
    nop                                           ; $6959: $00
    adc c                                         ; $695a: $89
    nop                                           ; $695b: $00
    adc a                                         ; $695c: $8f
    nop                                           ; $695d: $00
    sub e                                         ; $695e: $93
    nop                                           ; $695f: $00
    sbc b                                         ; $6960: $98
    nop                                           ; $6961: $00
    sbc h                                         ; $6962: $9c
    nop                                           ; $6963: $00
    and b                                         ; $6964: $a0
    nop                                           ; $6965: $00
    and h                                         ; $6966: $a4
    nop                                           ; $6967: $00
    xor b                                         ; $6968: $a8
    nop                                           ; $6969: $00
    xor h                                         ; $696a: $ac
    nop                                           ; $696b: $00
    xor a                                         ; $696c: $af
    nop                                           ; $696d: $00
    or e                                          ; $696e: $b3
    nop                                           ; $696f: $00
    or [hl]                                       ; $6970: $b6
    nop                                           ; $6971: $00
    cp d                                          ; $6972: $ba
    nop                                           ; $6973: $00
    cp l                                          ; $6974: $bd
    nop                                           ; $6975: $00
    pop bc                                        ; $6976: $c1
    nop                                           ; $6977: $00
    jp $c700                                      ; $6978: $c3 $00 $c7


    nop                                           ; $697b: $00
    jp z, Boot                                    ; $697c: $ca $00 $01

    nop                                           ; $697f: $00
    inc h                                         ; $6980: $24
    nop                                           ; $6981: $00
    jr c, jr_03a_6984                             ; $6982: $38 $00

jr_03a_6984:
    ld b, a                                       ; $6984: $47
    nop                                           ; $6985: $00
    ld d, h                                       ; $6986: $54
    nop                                           ; $6987: $00
    ld h, b                                       ; $6988: $60
    nop                                           ; $6989: $00
    ld l, c                                       ; $698a: $69
    nop                                           ; $698b: $00
    ld [hl], d                                    ; $698c: $72
    nop                                           ; $698d: $00
    ld a, h                                       ; $698e: $7c
    nop                                           ; $698f: $00
    add h                                         ; $6990: $84
    nop                                           ; $6991: $00
    adc e                                         ; $6992: $8b
    nop                                           ; $6993: $00
    sub d                                         ; $6994: $92
    nop                                           ; $6995: $00
    sbc b                                         ; $6996: $98
    nop                                           ; $6997: $00
    sbc a                                         ; $6998: $9f
    nop                                           ; $6999: $00
    and l                                         ; $699a: $a5
    nop                                           ; $699b: $00
    xor d                                         ; $699c: $aa
    nop                                           ; $699d: $00
    or b                                          ; $699e: $b0
    nop                                           ; $699f: $00
    or l                                          ; $69a0: $b5
    nop                                           ; $69a1: $00
    cp c                                          ; $69a2: $b9
    nop                                           ; $69a3: $00
    cp [hl]                                       ; $69a4: $be
    nop                                           ; $69a5: $00
    call nz, $c800                                ; $69a6: $c4 $00 $c8
    nop                                           ; $69a9: $00
    call z, $d000                                 ; $69aa: $cc $00 $d0
    nop                                           ; $69ad: $00
    push de                                       ; $69ae: $d5
    nop                                           ; $69af: $00
    reti                                          ; $69b0: $d9


    nop                                           ; $69b1: $00
    call c, $e000                                 ; $69b2: $dc $00 $e0
    nop                                           ; $69b5: $00
    db $e4                                        ; $69b6: $e4
    nop                                           ; $69b7: $00
    add sp, $00                                   ; $69b8: $e8 $00
    db $eb                                        ; $69ba: $eb
    nop                                           ; $69bb: $00
    ld a, c                                       ; $69bc: $79
    cp $0d                                        ; $69bd: $fe $0d
    jr nc, jr_03a_69ff                            ; $69bf: $30 $3e

    ld a, [$d32a]                                 ; $69c1: $fa $2a $d3
    cp $02                                        ; $69c4: $fe $02
    jr z, jr_03a_69ed                             ; $69c6: $28 $25

    ld h, $00                                     ; $69c8: $26 $00
    ld l, c                                       ; $69ca: $69
    add hl, hl                                    ; $69cb: $29
    ld bc, $6a03                                  ; $69cc: $01 $03 $6a
    add hl, bc                                    ; $69cf: $09
    ld a, [hl+]                                   ; $69d0: $2a
    ld b, [hl]                                    ; $69d1: $46
    ld c, a                                       ; $69d2: $4f
    ld h, d                                       ; $69d3: $62
    ld l, e                                       ; $69d4: $6b
    res 0, l                                      ; $69d5: $cb $85
    add hl, bc                                    ; $69d7: $09
    bit 0, e                                      ; $69d8: $cb $43
    jr nz, jr_03a_69e0                            ; $69da: $20 $04

    ld a, [hl+]                                   ; $69dc: $2a
    ld h, [hl]                                    ; $69dd: $66
    ld l, a                                       ; $69de: $6f
    ret                                           ; $69df: $c9


jr_03a_69e0:
    ld e, [hl]                                    ; $69e0: $5e
    inc hl                                        ; $69e1: $23
    ld d, [hl]                                    ; $69e2: $56
    inc hl                                        ; $69e3: $23
    ld a, [hl+]                                   ; $69e4: $2a
    ld h, [hl]                                    ; $69e5: $66
    ld l, a                                       ; $69e6: $6f
    add hl, de                                    ; $69e7: $19
    srl h                                         ; $69e8: $cb $3c
    rr l                                          ; $69ea: $cb $1d
    ret                                           ; $69ec: $c9


jr_03a_69ed:
    ld h, $00                                     ; $69ed: $26 $00
    ld l, c                                       ; $69ef: $69
    add hl, hl                                    ; $69f0: $29
    ld bc, $7b39                                  ; $69f1: $01 $39 $7b
    add hl, bc                                    ; $69f4: $09
    ld a, [hl+]                                   ; $69f5: $2a
    ld h, [hl]                                    ; $69f6: $66
    ld l, a                                       ; $69f7: $6f
    res 0, e                                      ; $69f8: $cb $83
    add hl, de                                    ; $69fa: $19
    ld l, [hl]                                    ; $69fb: $6e
    ld h, $00                                     ; $69fc: $26 $00
    ret                                           ; $69fe: $c9


jr_03a_69ff:
    ld hl, $0040                                  ; $69ff: $21 $40 $00
    ret                                           ; $6a02: $c9


    dec e                                         ; $6a03: $1d
    ld l, d                                       ; $6a04: $6a
    rla                                           ; $6a05: $17
    ld l, h                                       ; $6a06: $6c
    db $ed                                        ; $6a07: $ed
    ld l, l                                       ; $6a08: $6d
    sbc l                                         ; $6a09: $9d
    ld l, a                                       ; $6a0a: $6f
    ld c, c                                       ; $6a0b: $49
    ld [hl], c                                    ; $6a0c: $71
    rst $08                                       ; $6a0d: $cf
    ld [hl], d                                    ; $6a0e: $72
    dec [hl]                                      ; $6a0f: $35
    ld [hl], h                                    ; $6a10: $74
    ld a, a                                       ; $6a11: $7f
    ld [hl], l                                    ; $6a12: $75
    or l                                          ; $6a13: $b5
    halt                                          ; $6a14: $76
    push de                                       ; $6a15: $d5
    ld [hl], a                                    ; $6a16: $77
    rst $18                                       ; $6a17: $df
    ld a, b                                       ; $6a18: $78
    bit 7, c                                      ; $6a19: $cb $79
    sub l                                         ; $6a1b: $95
    ld a, d                                       ; $6a1c: $7a
    inc bc                                        ; $6a1d: $03
    nop                                           ; $6a1e: $00
    dec c                                         ; $6a1f: $0d
    nop                                           ; $6a20: $00
    ld e, $00                                     ; $6a21: $1e $00
    inc h                                         ; $6a23: $24
    nop                                           ; $6a24: $00
    ld a, [hl+]                                   ; $6a25: $2a
    nop                                           ; $6a26: $00
    cpl                                           ; $6a27: $2f
    nop                                           ; $6a28: $00
    inc [hl]                                      ; $6a29: $34
    nop                                           ; $6a2a: $00
    jr c, jr_03a_6a2d                             ; $6a2b: $38 $00

jr_03a_6a2d:
    dec sp                                        ; $6a2d: $3b
    nop                                           ; $6a2e: $00
    ccf                                           ; $6a2f: $3f
    nop                                           ; $6a30: $00
    ld b, d                                       ; $6a31: $42
    nop                                           ; $6a32: $00
    ld b, [hl]                                    ; $6a33: $46
    nop                                           ; $6a34: $00
    ld c, b                                       ; $6a35: $48
    nop                                           ; $6a36: $00
    ld c, h                                       ; $6a37: $4c
    nop                                           ; $6a38: $00
    ld c, a                                       ; $6a39: $4f
    nop                                           ; $6a3a: $00
    ld d, c                                       ; $6a3b: $51
    nop                                           ; $6a3c: $00
    ld d, h                                       ; $6a3d: $54
    nop                                           ; $6a3e: $00
    ld d, [hl]                                    ; $6a3f: $56
    nop                                           ; $6a40: $00
    ld e, c                                       ; $6a41: $59
    nop                                           ; $6a42: $00
    ld e, e                                       ; $6a43: $5b
    nop                                           ; $6a44: $00
    ld e, [hl]                                    ; $6a45: $5e
    nop                                           ; $6a46: $00
    ld h, b                                       ; $6a47: $60
    nop                                           ; $6a48: $00
    ld h, d                                       ; $6a49: $62
    nop                                           ; $6a4a: $00
    ld h, h                                       ; $6a4b: $64
    nop                                           ; $6a4c: $00
    ld h, a                                       ; $6a4d: $67
    nop                                           ; $6a4e: $00
    ld l, c                                       ; $6a4f: $69
    nop                                           ; $6a50: $00
    ld l, e                                       ; $6a51: $6b
    nop                                           ; $6a52: $00
    ld l, l                                       ; $6a53: $6d
    nop                                           ; $6a54: $00
    ld l, a                                       ; $6a55: $6f
    nop                                           ; $6a56: $00
    ld [hl], c                                    ; $6a57: $71
    nop                                           ; $6a58: $00
    ld [hl], e                                    ; $6a59: $73
    nop                                           ; $6a5a: $00
    ld [hl], l                                    ; $6a5b: $75
    nop                                           ; $6a5c: $00
    ld [hl], a                                    ; $6a5d: $77
    nop                                           ; $6a5e: $00
    ld a, c                                       ; $6a5f: $79
    nop                                           ; $6a60: $00
    ld a, e                                       ; $6a61: $7b
    nop                                           ; $6a62: $00
    ld a, l                                       ; $6a63: $7d
    nop                                           ; $6a64: $00
    ld a, a                                       ; $6a65: $7f
    nop                                           ; $6a66: $00
    add c                                         ; $6a67: $81
    nop                                           ; $6a68: $00
    add e                                         ; $6a69: $83
    nop                                           ; $6a6a: $00
    add l                                         ; $6a6b: $85
    nop                                           ; $6a6c: $00
    add a                                         ; $6a6d: $87
    nop                                           ; $6a6e: $00
    adc b                                         ; $6a6f: $88
    nop                                           ; $6a70: $00
    adc d                                         ; $6a71: $8a
    nop                                           ; $6a72: $00
    adc h                                         ; $6a73: $8c
    nop                                           ; $6a74: $00
    adc [hl]                                      ; $6a75: $8e
    nop                                           ; $6a76: $00
    adc a                                         ; $6a77: $8f
    nop                                           ; $6a78: $00
    sub d                                         ; $6a79: $92
    nop                                           ; $6a7a: $00
    sub e                                         ; $6a7b: $93
    nop                                           ; $6a7c: $00
    sub l                                         ; $6a7d: $95
    nop                                           ; $6a7e: $00
    sub a                                         ; $6a7f: $97
    nop                                           ; $6a80: $00
    sbc c                                         ; $6a81: $99
    nop                                           ; $6a82: $00
    sbc d                                         ; $6a83: $9a
    nop                                           ; $6a84: $00
    sbc h                                         ; $6a85: $9c
    nop                                           ; $6a86: $00
    sbc [hl]                                      ; $6a87: $9e
    nop                                           ; $6a88: $00
    sbc a                                         ; $6a89: $9f
    nop                                           ; $6a8a: $00
    and c                                         ; $6a8b: $a1
    nop                                           ; $6a8c: $00
    and e                                         ; $6a8d: $a3
    nop                                           ; $6a8e: $00
    and l                                         ; $6a8f: $a5
    nop                                           ; $6a90: $00
    and [hl]                                      ; $6a91: $a6
    nop                                           ; $6a92: $00
    xor b                                         ; $6a93: $a8
    nop                                           ; $6a94: $00
    xor d                                         ; $6a95: $aa
    nop                                           ; $6a96: $00
    xor h                                         ; $6a97: $ac
    nop                                           ; $6a98: $00
    xor l                                         ; $6a99: $ad
    nop                                           ; $6a9a: $00
    xor a                                         ; $6a9b: $af
    nop                                           ; $6a9c: $00
    or c                                          ; $6a9d: $b1
    nop                                           ; $6a9e: $00
    or d                                          ; $6a9f: $b2
    nop                                           ; $6aa0: $00
    or h                                          ; $6aa1: $b4
    nop                                           ; $6aa2: $00
    or [hl]                                       ; $6aa3: $b6
    nop                                           ; $6aa4: $00
    cp b                                          ; $6aa5: $b8
    nop                                           ; $6aa6: $00
    cp c                                          ; $6aa7: $b9
    nop                                           ; $6aa8: $00
    cp d                                          ; $6aa9: $ba
    nop                                           ; $6aaa: $00
    cp h                                          ; $6aab: $bc
    nop                                           ; $6aac: $00
    cp [hl]                                       ; $6aad: $be
    nop                                           ; $6aae: $00
    ret nz                                        ; $6aaf: $c0

    nop                                           ; $6ab0: $00
    pop bc                                        ; $6ab1: $c1
    nop                                           ; $6ab2: $00
    jp $c400                                      ; $6ab3: $c3 $00 $c4


    nop                                           ; $6ab6: $00
    add $00                                       ; $6ab7: $c6 $00
    rst $00                                       ; $6ab9: $c7
    nop                                           ; $6aba: $00
    ret                                           ; $6abb: $c9


    nop                                           ; $6abc: $00
    rlc b                                         ; $6abd: $cb $00
    call z, $ce00                                 ; $6abf: $cc $00 $ce
    nop                                           ; $6ac2: $00
    rst $08                                       ; $6ac3: $cf
    nop                                           ; $6ac4: $00
    pop de                                        ; $6ac5: $d1
    nop                                           ; $6ac6: $00
    jp nc, $d400                                  ; $6ac7: $d2 $00 $d4

    nop                                           ; $6aca: $00
    push de                                       ; $6acb: $d5
    nop                                           ; $6acc: $00
    rst $10                                       ; $6acd: $d7
    nop                                           ; $6ace: $00
    reti                                          ; $6acf: $d9


    nop                                           ; $6ad0: $00
    jp c, $dc00                                   ; $6ad1: $da $00 $dc

    nop                                           ; $6ad4: $00
    sbc $00                                       ; $6ad5: $de $00
    rst $18                                       ; $6ad7: $df
    nop                                           ; $6ad8: $00
    pop hl                                        ; $6ad9: $e1
    nop                                           ; $6ada: $00
    ld [c], a                                     ; $6adb: $e2
    nop                                           ; $6adc: $00
    db $e4                                        ; $6add: $e4
    nop                                           ; $6ade: $00
    push hl                                       ; $6adf: $e5
    nop                                           ; $6ae0: $00
    rst $20                                       ; $6ae1: $e7
    nop                                           ; $6ae2: $00
    jp hl                                         ; $6ae3: $e9


    nop                                           ; $6ae4: $00
    ld [$ec00], a                                 ; $6ae5: $ea $00 $ec
    nop                                           ; $6ae8: $00
    db $ed                                        ; $6ae9: $ed
    nop                                           ; $6aea: $00
    rst $28                                       ; $6aeb: $ef
    nop                                           ; $6aec: $00
    ldh a, [rP1]                                  ; $6aed: $f0 $00
    ld a, [c]                                     ; $6aef: $f2
    nop                                           ; $6af0: $00
    di                                            ; $6af1: $f3
    nop                                           ; $6af2: $00
    push af                                       ; $6af3: $f5
    nop                                           ; $6af4: $00
    or $00                                        ; $6af5: $f6 $00
    ld hl, sp+$00                                 ; $6af7: $f8 $00
    ld a, [$fb00]                                 ; $6af9: $fa $00 $fb
    nop                                           ; $6afc: $00
    db $fc                                        ; $6afd: $fc
    nop                                           ; $6afe: $00
    cp $00                                        ; $6aff: $fe $00
    nop                                           ; $6b01: $00
    ld bc, $0101                                  ; $6b02: $01 $01 $01
    inc bc                                        ; $6b05: $03
    ld bc, HeaderLogo                             ; $6b06: $01 $04 $01
    ld b, $01                                     ; $6b09: $06 $01
    ld [$0901], sp                                ; $6b0b: $08 $01 $09
    ld bc, $010a                                  ; $6b0e: $01 $0a $01
    inc c                                         ; $6b11: $0c
    ld bc, $010e                                  ; $6b12: $01 $0e $01
    rrca                                          ; $6b15: $0f
    ld bc, $0110                                  ; $6b16: $01 $10 $01
    ld [de], a                                    ; $6b19: $12
    ld bc, $0114                                  ; $6b1a: $01 $14 $01
    dec d                                         ; $6b1d: $15
    ld bc, $0117                                  ; $6b1e: $01 $17 $01
    jr jr_03a_6b24                                ; $6b21: $18 $01

    ld a, [de]                                    ; $6b23: $1a

jr_03a_6b24:
    ld bc, $011b                                  ; $6b24: $01 $1b $01
    dec e                                         ; $6b27: $1d
    ld bc, $011e                                  ; $6b28: $01 $1e $01
    jr nz, @+$03                                  ; $6b2b: $20 $01

    ld hl, $2301                                  ; $6b2d: $21 $01 $23
    ld bc, $0124                                  ; $6b30: $01 $24 $01
    ld h, $01                                     ; $6b33: $26 $01
    daa                                           ; $6b35: $27
    ld bc, $0129                                  ; $6b36: $01 $29 $01
    dec hl                                        ; $6b39: $2b
    ld bc, $012c                                  ; $6b3a: $01 $2c $01
    ld l, $01                                     ; $6b3d: $2e $01
    cpl                                           ; $6b3f: $2f
    ld bc, $0130                                  ; $6b40: $01 $30 $01
    ld [hl-], a                                   ; $6b43: $32
    ld bc, HeaderTitle                            ; $6b44: $01 $34 $01
    dec [hl]                                      ; $6b47: $35
    ld bc, $0137                                  ; $6b48: $01 $37 $01
    jr c, jr_03a_6b4e                             ; $6b4b: $38 $01

    ld a, [hl-]                                   ; $6b4d: $3a

jr_03a_6b4e:
    ld bc, $013b                                  ; $6b4e: $01 $3b $01
    dec a                                         ; $6b51: $3d
    ld bc, $013e                                  ; $6b52: $01 $3e $01
    ld b, b                                       ; $6b55: $40
    ld bc, $0142                                  ; $6b56: $01 $42 $01
    ld b, e                                       ; $6b59: $43
    ld bc, HeaderNewLicenseeCode                  ; $6b5a: $01 $44 $01
    ld b, [hl]                                    ; $6b5d: $46
    ld bc, HeaderCartridgeType                    ; $6b5e: $01 $47 $01
    ld c, c                                       ; $6b61: $49
    ld bc, HeaderDestinationCode                  ; $6b62: $01 $4a $01
    ld c, h                                       ; $6b65: $4c
    ld bc, HeaderComplementCheck                  ; $6b66: $01 $4d $01
    ld c, a                                       ; $6b69: $4f
    ld bc, $0150                                  ; $6b6a: $01 $50 $01
    ld d, d                                       ; $6b6d: $52
    ld bc, $0154                                  ; $6b6e: $01 $54 $01
    ld d, l                                       ; $6b71: $55
    ld bc, $0157                                  ; $6b72: $01 $57 $01
    ld e, b                                       ; $6b75: $58
    ld bc, $0159                                  ; $6b76: $01 $59 $01
    ld e, e                                       ; $6b79: $5b
    ld bc, $015d                                  ; $6b7a: $01 $5d $01
    ld e, [hl]                                    ; $6b7d: $5e
    ld bc, $0160                                  ; $6b7e: $01 $60 $01
    ld h, c                                       ; $6b81: $61
    ld bc, $0163                                  ; $6b82: $01 $63 $01
    ld h, h                                       ; $6b85: $64
    ld bc, $0166                                  ; $6b86: $01 $66 $01
    ld l, b                                       ; $6b89: $68
    ld bc, $0169                                  ; $6b8a: $01 $69 $01
    ld l, d                                       ; $6b8d: $6a
    ld bc, $016c                                  ; $6b8e: $01 $6c $01
    ld l, l                                       ; $6b91: $6d
    ld bc, $016f                                  ; $6b92: $01 $6f $01
    ld [hl], c                                    ; $6b95: $71
    ld bc, $0172                                  ; $6b96: $01 $72 $01
    ld [hl], h                                    ; $6b99: $74
    ld bc, $0175                                  ; $6b9a: $01 $75 $01
    ld [hl], a                                    ; $6b9d: $77
    ld bc, $0178                                  ; $6b9e: $01 $78 $01
    ld a, d                                       ; $6ba1: $7a
    ld bc, $017b                                  ; $6ba2: $01 $7b $01
    ld a, l                                       ; $6ba5: $7d
    ld bc, $017e                                  ; $6ba6: $01 $7e $01
    add b                                         ; $6ba9: $80
    ld bc, $0181                                  ; $6baa: $01 $81 $01
    add e                                         ; $6bad: $83
    ld bc, $0185                                  ; $6bae: $01 $85 $01
    add [hl]                                      ; $6bb1: $86
    ld bc, $0188                                  ; $6bb2: $01 $88 $01
    adc c                                         ; $6bb5: $89
    ld bc, $018a                                  ; $6bb6: $01 $8a $01
    adc h                                         ; $6bb9: $8c
    ld bc, $018e                                  ; $6bba: $01 $8e $01
    adc a                                         ; $6bbd: $8f
    ld bc, $0191                                  ; $6bbe: $01 $91 $01
    sub d                                         ; $6bc1: $92
    ld bc, $0194                                  ; $6bc2: $01 $94 $01
    sub l                                         ; $6bc5: $95
    ld bc, $0197                                  ; $6bc6: $01 $97 $01
    sbc c                                         ; $6bc9: $99
    ld bc, $019a                                  ; $6bca: $01 $9a $01
    sbc h                                         ; $6bcd: $9c
    ld bc, $019d                                  ; $6bce: $01 $9d $01
    sbc a                                         ; $6bd1: $9f
    ld bc, $01a0                                  ; $6bd2: $01 $a0 $01
    and d                                         ; $6bd5: $a2
    ld bc, $01a3                                  ; $6bd6: $01 $a3 $01
    and l                                         ; $6bd9: $a5
    ld bc, $01a6                                  ; $6bda: $01 $a6 $01
    xor b                                         ; $6bdd: $a8
    ld bc, $01aa                                  ; $6bde: $01 $aa $01
    xor e                                         ; $6be1: $ab
    ld bc, $01ad                                  ; $6be2: $01 $ad $01
    xor [hl]                                      ; $6be5: $ae
    ld bc, $01b0                                  ; $6be6: $01 $b0 $01
    or c                                          ; $6be9: $b1
    ld bc, $01b2                                  ; $6bea: $01 $b2 $01
    or h                                          ; $6bed: $b4
    ld bc, $01b5                                  ; $6bee: $01 $b5 $01
    or a                                          ; $6bf1: $b7
    ld bc, $01b9                                  ; $6bf2: $01 $b9 $01
    cp d                                          ; $6bf5: $ba
    ld bc, $01bc                                  ; $6bf6: $01 $bc $01
    cp l                                          ; $6bf9: $bd
    ld bc, $01bf                                  ; $6bfa: $01 $bf $01
    ret nz                                        ; $6bfd: $c0

    ld bc, $01c2                                  ; $6bfe: $01 $c2 $01
    jp $c501                                      ; $6c01: $c3 $01 $c5


    ld bc, $01c7                                  ; $6c04: $01 $c7 $01
    ret z                                         ; $6c07: $c8

    ld bc, $01ca                                  ; $6c08: $01 $ca $01
    rlc c                                         ; $6c0b: $cb $01
    call $ce01                                    ; $6c0d: $cd $01 $ce
    ld bc, $01d0                                  ; $6c10: $01 $d0 $01
    jp nc, $d301                                  ; $6c13: $d2 $01 $d3

    ld bc, $0003                                  ; $6c16: $01 $03 $00
    dec de                                        ; $6c19: $1b
    nop                                           ; $6c1a: $00
    ld [hl+], a                                   ; $6c1b: $22
    nop                                           ; $6c1c: $00
    jr z, jr_03a_6c1f                             ; $6c1d: $28 $00

jr_03a_6c1f:
    ld l, $00                                     ; $6c1f: $2e $00
    inc [hl]                                      ; $6c21: $34
    nop                                           ; $6c22: $00
    jr c, jr_03a_6c25                             ; $6c23: $38 $00

jr_03a_6c25:
    inc a                                         ; $6c25: $3c
    nop                                           ; $6c26: $00
    ld b, b                                       ; $6c27: $40
    nop                                           ; $6c28: $00
    ld b, e                                       ; $6c29: $43
    nop                                           ; $6c2a: $00
    ld b, a                                       ; $6c2b: $47
    nop                                           ; $6c2c: $00
    ld c, d                                       ; $6c2d: $4a
    nop                                           ; $6c2e: $00
    ld c, l                                       ; $6c2f: $4d
    nop                                           ; $6c30: $00
    ld d, b                                       ; $6c31: $50
    nop                                           ; $6c32: $00
    ld d, e                                       ; $6c33: $53
    nop                                           ; $6c34: $00
    ld d, [hl]                                    ; $6c35: $56
    nop                                           ; $6c36: $00
    ld e, b                                       ; $6c37: $58
    nop                                           ; $6c38: $00
    ld e, d                                       ; $6c39: $5a
    nop                                           ; $6c3a: $00
    ld e, l                                       ; $6c3b: $5d
    nop                                           ; $6c3c: $00
    ld h, b                                       ; $6c3d: $60
    nop                                           ; $6c3e: $00
    ld h, d                                       ; $6c3f: $62
    nop                                           ; $6c40: $00
    ld h, l                                       ; $6c41: $65
    nop                                           ; $6c42: $00
    ld h, a                                       ; $6c43: $67
    nop                                           ; $6c44: $00
    ld l, c                                       ; $6c45: $69
    nop                                           ; $6c46: $00
    ld l, e                                       ; $6c47: $6b
    nop                                           ; $6c48: $00
    ld l, [hl]                                    ; $6c49: $6e
    nop                                           ; $6c4a: $00
    ld [hl], b                                    ; $6c4b: $70
    nop                                           ; $6c4c: $00
    ld [hl], d                                    ; $6c4d: $72
    nop                                           ; $6c4e: $00
    ld [hl], l                                    ; $6c4f: $75
    nop                                           ; $6c50: $00
    halt                                          ; $6c51: $76
    nop                                           ; $6c52: $00
    ld a, b                                       ; $6c53: $78
    nop                                           ; $6c54: $00
    ld a, d                                       ; $6c55: $7a
    nop                                           ; $6c56: $00
    ld a, l                                       ; $6c57: $7d
    nop                                           ; $6c58: $00
    ld a, a                                       ; $6c59: $7f
    nop                                           ; $6c5a: $00
    add c                                         ; $6c5b: $81
    nop                                           ; $6c5c: $00
    add e                                         ; $6c5d: $83
    nop                                           ; $6c5e: $00
    add l                                         ; $6c5f: $85
    nop                                           ; $6c60: $00
    add a                                         ; $6c61: $87
    nop                                           ; $6c62: $00
    adc c                                         ; $6c63: $89
    nop                                           ; $6c64: $00
    adc e                                         ; $6c65: $8b
    nop                                           ; $6c66: $00
    adc l                                         ; $6c67: $8d
    nop                                           ; $6c68: $00
    adc a                                         ; $6c69: $8f
    nop                                           ; $6c6a: $00
    sub c                                         ; $6c6b: $91
    nop                                           ; $6c6c: $00
    sub e                                         ; $6c6d: $93
    nop                                           ; $6c6e: $00
    sub l                                         ; $6c6f: $95
    nop                                           ; $6c70: $00
    sub [hl]                                      ; $6c71: $96
    nop                                           ; $6c72: $00
    sbc b                                         ; $6c73: $98
    nop                                           ; $6c74: $00
    sbc d                                         ; $6c75: $9a
    nop                                           ; $6c76: $00
    sbc h                                         ; $6c77: $9c
    nop                                           ; $6c78: $00
    sbc a                                         ; $6c79: $9f
    nop                                           ; $6c7a: $00
    and b                                         ; $6c7b: $a0
    nop                                           ; $6c7c: $00
    and c                                         ; $6c7d: $a1
    nop                                           ; $6c7e: $00
    and e                                         ; $6c7f: $a3
    nop                                           ; $6c80: $00
    and [hl]                                      ; $6c81: $a6
    nop                                           ; $6c82: $00
    and a                                         ; $6c83: $a7
    nop                                           ; $6c84: $00
    xor c                                         ; $6c85: $a9
    nop                                           ; $6c86: $00
    xor e                                         ; $6c87: $ab
    nop                                           ; $6c88: $00
    xor l                                         ; $6c89: $ad
    nop                                           ; $6c8a: $00
    xor [hl]                                      ; $6c8b: $ae
    nop                                           ; $6c8c: $00
    or c                                          ; $6c8d: $b1
    nop                                           ; $6c8e: $00
    or d                                          ; $6c8f: $b2
    nop                                           ; $6c90: $00
    or h                                          ; $6c91: $b4
    nop                                           ; $6c92: $00
    or [hl]                                       ; $6c93: $b6
    nop                                           ; $6c94: $00
    cp b                                          ; $6c95: $b8
    nop                                           ; $6c96: $00
    cp c                                          ; $6c97: $b9
    nop                                           ; $6c98: $00
    cp e                                          ; $6c99: $bb
    nop                                           ; $6c9a: $00
    cp l                                          ; $6c9b: $bd
    nop                                           ; $6c9c: $00
    cp a                                          ; $6c9d: $bf
    nop                                           ; $6c9e: $00
    ret nz                                        ; $6c9f: $c0

    nop                                           ; $6ca0: $00
    jp nz, $c400                                  ; $6ca1: $c2 $00 $c4

    nop                                           ; $6ca4: $00
    add $00                                       ; $6ca5: $c6 $00
    ret z                                         ; $6ca7: $c8

    nop                                           ; $6ca8: $00
    ret                                           ; $6ca9: $c9


    nop                                           ; $6caa: $00
    rlc b                                         ; $6cab: $cb $00
    call $ce00                                    ; $6cad: $cd $00 $ce
    nop                                           ; $6cb0: $00
    ret nc                                        ; $6cb1: $d0

    nop                                           ; $6cb2: $00
    jp nc, $d400                                  ; $6cb3: $d2 $00 $d4

    nop                                           ; $6cb6: $00
    sub $00                                       ; $6cb7: $d6 $00
    rst $10                                       ; $6cb9: $d7
    nop                                           ; $6cba: $00
    reti                                          ; $6cbb: $d9


    nop                                           ; $6cbc: $00
    db $db                                        ; $6cbd: $db
    nop                                           ; $6cbe: $00
    db $dd                                        ; $6cbf: $dd
    nop                                           ; $6cc0: $00
    sbc $00                                       ; $6cc1: $de $00
    ldh [rP1], a                                  ; $6cc3: $e0 $00
    pop hl                                        ; $6cc5: $e1
    nop                                           ; $6cc6: $00
    db $e3                                        ; $6cc7: $e3
    nop                                           ; $6cc8: $00
    push hl                                       ; $6cc9: $e5
    nop                                           ; $6cca: $00
    rst $20                                       ; $6ccb: $e7
    nop                                           ; $6ccc: $00
    add sp, $00                                   ; $6ccd: $e8 $00
    ld [$ec00], a                                 ; $6ccf: $ea $00 $ec
    nop                                           ; $6cd2: $00
    xor $00                                       ; $6cd3: $ee $00
    ldh a, [rP1]                                  ; $6cd5: $f0 $00
    pop af                                        ; $6cd7: $f1
    nop                                           ; $6cd8: $00
    di                                            ; $6cd9: $f3
    nop                                           ; $6cda: $00
    db $f4                                        ; $6cdb: $f4
    nop                                           ; $6cdc: $00
    or $00                                        ; $6cdd: $f6 $00
    ld hl, sp+$00                                 ; $6cdf: $f8 $00
    ld a, [$fb00]                                 ; $6ce1: $fa $00 $fb
    nop                                           ; $6ce4: $00
    db $fd                                        ; $6ce5: $fd
    nop                                           ; $6ce6: $00
    rst $38                                       ; $6ce7: $ff
    nop                                           ; $6ce8: $00
    ld bc, $0201                                  ; $6ce9: $01 $01 $02
    ld bc, HeaderLogo                             ; $6cec: $01 $04 $01
    ld b, $01                                     ; $6cef: $06 $01
    rlca                                          ; $6cf1: $07
    ld bc, $0109                                  ; $6cf2: $01 $09 $01
    dec bc                                        ; $6cf5: $0b
    ld bc, $010c                                  ; $6cf6: $01 $0c $01
    ld c, $01                                     ; $6cf9: $0e $01
    db $10                                        ; $6cfb: $10
    ld bc, $0112                                  ; $6cfc: $01 $12 $01
    inc de                                        ; $6cff: $13
    ld bc, $0115                                  ; $6d00: $01 $15 $01
    rla                                           ; $6d03: $17
    ld bc, $0118                                  ; $6d04: $01 $18 $01
    ld a, [de]                                    ; $6d07: $1a
    ld bc, $011c                                  ; $6d08: $01 $1c $01
    dec e                                         ; $6d0b: $1d
    ld bc, $011f                                  ; $6d0c: $01 $1f $01
    ld hl, $2301                                  ; $6d0f: $21 $01 $23
    ld bc, $0124                                  ; $6d12: $01 $24 $01
    ld h, $01                                     ; $6d15: $26 $01
    jr z, jr_03a_6d1a                             ; $6d17: $28 $01

    add hl, hl                                    ; $6d19: $29

jr_03a_6d1a:
    ld bc, $012b                                  ; $6d1a: $01 $2b $01
    dec l                                         ; $6d1d: $2d
    ld bc, $012e                                  ; $6d1e: $01 $2e $01
    jr nc, jr_03a_6d24                            ; $6d21: $30 $01

    ld [hl-], a                                   ; $6d23: $32

jr_03a_6d24:
    ld bc, HeaderTitle                            ; $6d24: $01 $34 $01
    ld [hl], $01                                  ; $6d27: $36 $01
    scf                                           ; $6d29: $37
    ld bc, $0139                                  ; $6d2a: $01 $39 $01
    ld a, [hl-]                                   ; $6d2d: $3a
    ld bc, $013c                                  ; $6d2e: $01 $3c $01
    ld a, $01                                     ; $6d31: $3e $01
    ld b, b                                       ; $6d33: $40
    ld bc, $0142                                  ; $6d34: $01 $42 $01
    ld b, e                                       ; $6d37: $43
    ld bc, $0145                                  ; $6d38: $01 $45 $01
    ld b, a                                       ; $6d3b: $47
    ld bc, HeaderRAMSize                          ; $6d3c: $01 $49 $01
    ld c, d                                       ; $6d3f: $4a
    ld bc, HeaderMaskROMVersion                   ; $6d40: $01 $4c $01
    ld c, l                                       ; $6d43: $4d
    ld bc, $014f                                  ; $6d44: $01 $4f $01
    ld d, c                                       ; $6d47: $51
    ld bc, $0153                                  ; $6d48: $01 $53 $01
    ld d, h                                       ; $6d4b: $54
    ld bc, $0156                                  ; $6d4c: $01 $56 $01
    ld e, b                                       ; $6d4f: $58
    ld bc, $0159                                  ; $6d50: $01 $59 $01
    ld e, e                                       ; $6d53: $5b
    ld bc, $015d                                  ; $6d54: $01 $5d $01
    ld e, a                                       ; $6d57: $5f
    ld bc, $0160                                  ; $6d58: $01 $60 $01
    ld h, d                                       ; $6d5b: $62
    ld bc, $0164                                  ; $6d5c: $01 $64 $01
    ld h, [hl]                                    ; $6d5f: $66
    ld bc, $0167                                  ; $6d60: $01 $67 $01
    ld l, c                                       ; $6d63: $69
    ld bc, $016b                                  ; $6d64: $01 $6b $01
    ld l, h                                       ; $6d67: $6c
    ld bc, $016e                                  ; $6d68: $01 $6e $01
    ld [hl], b                                    ; $6d6b: $70
    ld bc, $0172                                  ; $6d6c: $01 $72 $01
    ld [hl], e                                    ; $6d6f: $73
    ld bc, $0175                                  ; $6d70: $01 $75 $01
    ld [hl], a                                    ; $6d73: $77
    ld bc, $0178                                  ; $6d74: $01 $78 $01
    ld a, d                                       ; $6d77: $7a
    ld bc, $017c                                  ; $6d78: $01 $7c $01
    ld a, [hl]                                    ; $6d7b: $7e
    ld bc, $017f                                  ; $6d7c: $01 $7f $01
    add c                                         ; $6d7f: $81
    ld bc, $0183                                  ; $6d80: $01 $83 $01
    add l                                         ; $6d83: $85
    ld bc, $0186                                  ; $6d84: $01 $86 $01
    adc b                                         ; $6d87: $88
    ld bc, $018a                                  ; $6d88: $01 $8a $01
    adc h                                         ; $6d8b: $8c
    ld bc, $018d                                  ; $6d8c: $01 $8d $01
    adc a                                         ; $6d8f: $8f
    ld bc, $0191                                  ; $6d90: $01 $91 $01
    sub d                                         ; $6d93: $92
    ld bc, $0194                                  ; $6d94: $01 $94 $01
    sub [hl]                                      ; $6d97: $96
    ld bc, $0198                                  ; $6d98: $01 $98 $01
    sbc d                                         ; $6d9b: $9a
    ld bc, $019b                                  ; $6d9c: $01 $9b $01
    sbc l                                         ; $6d9f: $9d
    ld bc, $019e                                  ; $6da0: $01 $9e $01
    and b                                         ; $6da3: $a0
    ld bc, $01a2                                  ; $6da4: $01 $a2 $01
    and h                                         ; $6da7: $a4
    ld bc, $01a6                                  ; $6da8: $01 $a6 $01
    and a                                         ; $6dab: $a7
    ld bc, $01a9                                  ; $6dac: $01 $a9 $01
    xor e                                         ; $6daf: $ab
    ld bc, $01ac                                  ; $6db0: $01 $ac $01
    xor [hl]                                      ; $6db3: $ae
    ld bc, $01b0                                  ; $6db4: $01 $b0 $01
    or d                                          ; $6db7: $b2
    ld bc, $01b3                                  ; $6db8: $01 $b3 $01
    or l                                          ; $6dbb: $b5
    ld bc, $01b7                                  ; $6dbc: $01 $b7 $01
    cp c                                          ; $6dbf: $b9
    ld bc, $01ba                                  ; $6dc0: $01 $ba $01
    cp h                                          ; $6dc3: $bc
    ld bc, $01be                                  ; $6dc4: $01 $be $01
    ret nz                                        ; $6dc7: $c0

    ld bc, $01c2                                  ; $6dc8: $01 $c2 $01
    jp $c501                                      ; $6dcb: $c3 $01 $c5


    ld bc, $01c7                                  ; $6dce: $01 $c7 $01
    ret                                           ; $6dd1: $c9


    ld bc, $01ca                                  ; $6dd2: $01 $ca $01
    call z, $ce01                                 ; $6dd5: $cc $01 $ce
    ld bc, $01d0                                  ; $6dd8: $01 $d0 $01
    pop de                                        ; $6ddb: $d1
    ld bc, $01d3                                  ; $6ddc: $01 $d3 $01
    push de                                       ; $6ddf: $d5
    ld bc, $01d7                                  ; $6de0: $01 $d7 $01
    reti                                          ; $6de3: $d9


    ld bc, $01da                                  ; $6de4: $01 $da $01
    call c, $dd01                                 ; $6de7: $dc $01 $dd
    ld bc, $01df                                  ; $6dea: $01 $df $01
    inc b                                         ; $6ded: $04
    nop                                           ; $6dee: $00
    dec e                                         ; $6def: $1d
    nop                                           ; $6df0: $00
    dec h                                         ; $6df1: $25
    nop                                           ; $6df2: $00
    dec hl                                        ; $6df3: $2b
    nop                                           ; $6df4: $00
    ld [hl-], a                                   ; $6df5: $32
    nop                                           ; $6df6: $00
    scf                                           ; $6df7: $37
    nop                                           ; $6df8: $00
    inc a                                         ; $6df9: $3c
    nop                                           ; $6dfa: $00
    ccf                                           ; $6dfb: $3f
    nop                                           ; $6dfc: $00
    ld b, h                                       ; $6dfd: $44
    nop                                           ; $6dfe: $00
    ld b, a                                       ; $6dff: $47
    nop                                           ; $6e00: $00
    ld c, d                                       ; $6e01: $4a
    nop                                           ; $6e02: $00
    ld c, [hl]                                    ; $6e03: $4e
    nop                                           ; $6e04: $00
    ld d, c                                       ; $6e05: $51
    nop                                           ; $6e06: $00
    ld d, h                                       ; $6e07: $54
    nop                                           ; $6e08: $00
    ld d, a                                       ; $6e09: $57
    nop                                           ; $6e0a: $00
    ld e, d                                       ; $6e0b: $5a
    nop                                           ; $6e0c: $00
    ld e, l                                       ; $6e0d: $5d
    nop                                           ; $6e0e: $00
    ld e, a                                       ; $6e0f: $5f
    nop                                           ; $6e10: $00
    ld h, d                                       ; $6e11: $62
    nop                                           ; $6e12: $00
    ld h, h                                       ; $6e13: $64
    nop                                           ; $6e14: $00
    ld h, a                                       ; $6e15: $67
    nop                                           ; $6e16: $00
    ld l, c                                       ; $6e17: $69
    nop                                           ; $6e18: $00
    ld l, h                                       ; $6e19: $6c
    nop                                           ; $6e1a: $00
    ld l, [hl]                                    ; $6e1b: $6e
    nop                                           ; $6e1c: $00
    ld [hl], c                                    ; $6e1d: $71
    nop                                           ; $6e1e: $00
    ld [hl], e                                    ; $6e1f: $73
    nop                                           ; $6e20: $00
    ld [hl], l                                    ; $6e21: $75
    nop                                           ; $6e22: $00
    ld a, b                                       ; $6e23: $78
    nop                                           ; $6e24: $00
    ld a, d                                       ; $6e25: $7a
    nop                                           ; $6e26: $00
    ld a, h                                       ; $6e27: $7c
    nop                                           ; $6e28: $00
    ld a, [hl]                                    ; $6e29: $7e
    nop                                           ; $6e2a: $00
    add c                                         ; $6e2b: $81
    nop                                           ; $6e2c: $00
    add e                                         ; $6e2d: $83
    nop                                           ; $6e2e: $00
    add l                                         ; $6e2f: $85
    nop                                           ; $6e30: $00
    add a                                         ; $6e31: $87
    nop                                           ; $6e32: $00
    adc c                                         ; $6e33: $89
    nop                                           ; $6e34: $00
    adc e                                         ; $6e35: $8b
    nop                                           ; $6e36: $00
    adc [hl]                                      ; $6e37: $8e
    nop                                           ; $6e38: $00
    sub b                                         ; $6e39: $90
    nop                                           ; $6e3a: $00
    sub c                                         ; $6e3b: $91
    nop                                           ; $6e3c: $00
    sub h                                         ; $6e3d: $94
    nop                                           ; $6e3e: $00
    sub [hl]                                      ; $6e3f: $96
    nop                                           ; $6e40: $00
    sbc b                                         ; $6e41: $98
    nop                                           ; $6e42: $00
    sbc d                                         ; $6e43: $9a
    nop                                           ; $6e44: $00
    sbc h                                         ; $6e45: $9c
    nop                                           ; $6e46: $00
    sbc [hl]                                      ; $6e47: $9e
    nop                                           ; $6e48: $00
    and b                                         ; $6e49: $a0
    nop                                           ; $6e4a: $00
    and d                                         ; $6e4b: $a2
    nop                                           ; $6e4c: $00
    and h                                         ; $6e4d: $a4
    nop                                           ; $6e4e: $00
    and l                                         ; $6e4f: $a5
    nop                                           ; $6e50: $00
    xor b                                         ; $6e51: $a8
    nop                                           ; $6e52: $00
    xor c                                         ; $6e53: $a9
    nop                                           ; $6e54: $00
    xor h                                         ; $6e55: $ac
    nop                                           ; $6e56: $00
    xor [hl]                                      ; $6e57: $ae
    nop                                           ; $6e58: $00
    or b                                          ; $6e59: $b0
    nop                                           ; $6e5a: $00
    or d                                          ; $6e5b: $b2
    nop                                           ; $6e5c: $00
    or h                                          ; $6e5d: $b4
    nop                                           ; $6e5e: $00
    or [hl]                                       ; $6e5f: $b6
    nop                                           ; $6e60: $00
    or a                                          ; $6e61: $b7
    nop                                           ; $6e62: $00
    cp d                                          ; $6e63: $ba
    nop                                           ; $6e64: $00
    cp e                                          ; $6e65: $bb
    nop                                           ; $6e66: $00
    cp l                                          ; $6e67: $bd
    nop                                           ; $6e68: $00
    cp a                                          ; $6e69: $bf
    nop                                           ; $6e6a: $00
    pop bc                                        ; $6e6b: $c1
    nop                                           ; $6e6c: $00
    jp $c500                                      ; $6e6d: $c3 $00 $c5


    nop                                           ; $6e70: $00
    rst $00                                       ; $6e71: $c7
    nop                                           ; $6e72: $00
    ret                                           ; $6e73: $c9


    nop                                           ; $6e74: $00
    rlc b                                         ; $6e75: $cb $00
    call $ce00                                    ; $6e77: $cd $00 $ce
    nop                                           ; $6e7a: $00
    ret nc                                        ; $6e7b: $d0

    nop                                           ; $6e7c: $00
    jp nc, $d400                                  ; $6e7d: $d2 $00 $d4

    nop                                           ; $6e80: $00
    sub $00                                       ; $6e81: $d6 $00
    ret c                                         ; $6e83: $d8

    nop                                           ; $6e84: $00
    jp c, $dc00                                   ; $6e85: $da $00 $dc

    nop                                           ; $6e88: $00
    sbc $00                                       ; $6e89: $de $00
    rst $18                                       ; $6e8b: $df
    nop                                           ; $6e8c: $00
    pop hl                                        ; $6e8d: $e1
    nop                                           ; $6e8e: $00
    db $e3                                        ; $6e8f: $e3
    nop                                           ; $6e90: $00
    push hl                                       ; $6e91: $e5
    nop                                           ; $6e92: $00
    rst $20                                       ; $6e93: $e7
    nop                                           ; $6e94: $00
    jp hl                                         ; $6e95: $e9


    nop                                           ; $6e96: $00
    ld [$ec00], a                                 ; $6e97: $ea $00 $ec
    nop                                           ; $6e9a: $00
    xor $00                                       ; $6e9b: $ee $00
    ldh a, [rP1]                                  ; $6e9d: $f0 $00
    ld a, [c]                                     ; $6e9f: $f2
    nop                                           ; $6ea0: $00
    db $f4                                        ; $6ea1: $f4
    nop                                           ; $6ea2: $00
    or $00                                        ; $6ea3: $f6 $00
    ld hl, sp+$00                                 ; $6ea5: $f8 $00
    ld sp, hl                                     ; $6ea7: $f9
    nop                                           ; $6ea8: $00
    ei                                            ; $6ea9: $fb
    nop                                           ; $6eaa: $00
    db $fd                                        ; $6eab: $fd
    nop                                           ; $6eac: $00
    rst $38                                       ; $6ead: $ff
    nop                                           ; $6eae: $00
    ld bc, $0301                                  ; $6eaf: $01 $01 $03
    ld bc, $0105                                  ; $6eb2: $01 $05 $01
    ld b, $01                                     ; $6eb5: $06 $01
    ld [$0a01], sp                                ; $6eb7: $08 $01 $0a
    ld bc, $010c                                  ; $6eba: $01 $0c $01
    ld c, $01                                     ; $6ebd: $0e $01
    db $10                                        ; $6ebf: $10
    ld bc, $0111                                  ; $6ec0: $01 $11 $01
    inc de                                        ; $6ec3: $13
    ld bc, $0115                                  ; $6ec4: $01 $15 $01
    rla                                           ; $6ec7: $17
    ld bc, $0119                                  ; $6ec8: $01 $19 $01
    dec de                                        ; $6ecb: $1b
    ld bc, $011c                                  ; $6ecc: $01 $1c $01
    ld e, $01                                     ; $6ecf: $1e $01
    jr nz, jr_03a_6ed4                            ; $6ed1: $20 $01

    ld [hl+], a                                   ; $6ed3: $22

jr_03a_6ed4:
    ld bc, $0124                                  ; $6ed4: $01 $24 $01
    ld h, $01                                     ; $6ed7: $26 $01
    jr z, jr_03a_6edc                             ; $6ed9: $28 $01

    add hl, hl                                    ; $6edb: $29

jr_03a_6edc:
    ld bc, $012c                                  ; $6edc: $01 $2c $01
    dec l                                         ; $6edf: $2d
    ld bc, $012f                                  ; $6ee0: $01 $2f $01
    ld sp, $3301                                  ; $6ee3: $31 $01 $33
    ld bc, $0135                                  ; $6ee6: $01 $35 $01
    scf                                           ; $6ee9: $37
    ld bc, $0139                                  ; $6eea: $01 $39 $01
    ld a, [hl-]                                   ; $6eed: $3a
    ld bc, $013c                                  ; $6eee: $01 $3c $01
    ld a, $01                                     ; $6ef1: $3e $01
    ld b, b                                       ; $6ef3: $40
    ld bc, $0142                                  ; $6ef4: $01 $42 $01
    ld b, h                                       ; $6ef7: $44
    ld bc, $0145                                  ; $6ef8: $01 $45 $01
    ld c, b                                       ; $6efb: $48
    ld bc, HeaderRAMSize                          ; $6efc: $01 $49 $01
    ld c, e                                       ; $6eff: $4b
    ld bc, HeaderComplementCheck                  ; $6f00: $01 $4d $01
    ld c, a                                       ; $6f03: $4f
    ld bc, $0151                                  ; $6f04: $01 $51 $01
    ld d, e                                       ; $6f07: $53
    ld bc, $0155                                  ; $6f08: $01 $55 $01
    ld d, [hl]                                    ; $6f0b: $56
    ld bc, $0158                                  ; $6f0c: $01 $58 $01
    ld e, d                                       ; $6f0f: $5a
    ld bc, $015c                                  ; $6f10: $01 $5c $01
    ld e, l                                       ; $6f13: $5d
    ld bc, $0160                                  ; $6f14: $01 $60 $01
    ld h, c                                       ; $6f17: $61
    ld bc, $0163                                  ; $6f18: $01 $63 $01
    ld h, l                                       ; $6f1b: $65
    ld bc, $0167                                  ; $6f1c: $01 $67 $01
    ld l, c                                       ; $6f1f: $69
    ld bc, $016b                                  ; $6f20: $01 $6b $01
    ld l, l                                       ; $6f23: $6d
    ld bc, $016e                                  ; $6f24: $01 $6e $01
    ld [hl], c                                    ; $6f27: $71
    ld bc, $0172                                  ; $6f28: $01 $72 $01
    ld [hl], h                                    ; $6f2b: $74
    ld bc, $0176                                  ; $6f2c: $01 $76 $01
    ld a, b                                       ; $6f2f: $78
    ld bc, $017a                                  ; $6f30: $01 $7a $01
    ld a, h                                       ; $6f33: $7c
    ld bc, $017d                                  ; $6f34: $01 $7d $01
    ld a, a                                       ; $6f37: $7f
    ld bc, $0181                                  ; $6f38: $01 $81 $01
    add e                                         ; $6f3b: $83
    ld bc, $0185                                  ; $6f3c: $01 $85 $01
    add a                                         ; $6f3f: $87
    ld bc, $0189                                  ; $6f40: $01 $89 $01
    adc e                                         ; $6f43: $8b
    ld bc, $018d                                  ; $6f44: $01 $8d $01
    adc [hl]                                      ; $6f47: $8e
    ld bc, $0190                                  ; $6f48: $01 $90 $01
    sub d                                         ; $6f4b: $92
    ld bc, $0194                                  ; $6f4c: $01 $94 $01
    sub [hl]                                      ; $6f4f: $96
    ld bc, $0198                                  ; $6f50: $01 $98 $01
    sbc d                                         ; $6f53: $9a
    ld bc, $019c                                  ; $6f54: $01 $9c $01
    sbc [hl]                                      ; $6f57: $9e
    ld bc, $01a0                                  ; $6f58: $01 $a0 $01
    and c                                         ; $6f5b: $a1
    ld bc, $01a3                                  ; $6f5c: $01 $a3 $01
    and l                                         ; $6f5f: $a5
    ld bc, $01a7                                  ; $6f60: $01 $a7 $01
    xor c                                         ; $6f63: $a9
    ld bc, $01ab                                  ; $6f64: $01 $ab $01
    xor l                                         ; $6f67: $ad
    ld bc, $01af                                  ; $6f68: $01 $af $01
    or c                                          ; $6f6b: $b1
    ld bc, $01b3                                  ; $6f6c: $01 $b3 $01
    or h                                          ; $6f6f: $b4
    ld bc, $01b6                                  ; $6f70: $01 $b6 $01
    cp b                                          ; $6f73: $b8
    ld bc, $01ba                                  ; $6f74: $01 $ba $01
    cp h                                          ; $6f77: $bc
    ld bc, $01be                                  ; $6f78: $01 $be $01
    ret nz                                        ; $6f7b: $c0

    ld bc, $01c2                                  ; $6f7c: $01 $c2 $01
    call nz, $c601                                ; $6f7f: $c4 $01 $c6
    ld bc, $01c8                                  ; $6f82: $01 $c8 $01
    ret                                           ; $6f85: $c9


    ld bc, $01cb                                  ; $6f86: $01 $cb $01
    call $cf01                                    ; $6f89: $cd $01 $cf
    ld bc, $01d1                                  ; $6f8c: $01 $d1 $01
    db $d3                                        ; $6f8f: $d3
    ld bc, $01d5                                  ; $6f90: $01 $d5 $01
    rst $10                                       ; $6f93: $d7
    ld bc, $01d9                                  ; $6f94: $01 $d9 $01
    db $db                                        ; $6f97: $db
    ld bc, $01dc                                  ; $6f98: $01 $dc $01
    sbc $01                                       ; $6f9b: $de $01
    inc bc                                        ; $6f9d: $03
    nop                                           ; $6f9e: $00
    ld d, $00                                     ; $6f9f: $16 $00
    rra                                           ; $6fa1: $1f
    nop                                           ; $6fa2: $00
    dec h                                         ; $6fa3: $25
    nop                                           ; $6fa4: $00
    dec hl                                        ; $6fa5: $2b
    nop                                           ; $6fa6: $00
    ld [hl-], a                                   ; $6fa7: $32
    nop                                           ; $6fa8: $00
    scf                                           ; $6fa9: $37
    nop                                           ; $6faa: $00
    dec sp                                        ; $6fab: $3b
    nop                                           ; $6fac: $00
    ld b, b                                       ; $6fad: $40
    nop                                           ; $6fae: $00
    ld b, e                                       ; $6faf: $43
    nop                                           ; $6fb0: $00
    ld c, b                                       ; $6fb1: $48
    nop                                           ; $6fb2: $00
    ld c, e                                       ; $6fb3: $4b
    nop                                           ; $6fb4: $00
    ld c, [hl]                                    ; $6fb5: $4e
    nop                                           ; $6fb6: $00
    ld d, d                                       ; $6fb7: $52
    nop                                           ; $6fb8: $00
    ld d, l                                       ; $6fb9: $55
    nop                                           ; $6fba: $00
    ld e, b                                       ; $6fbb: $58
    nop                                           ; $6fbc: $00
    ld e, e                                       ; $6fbd: $5b
    nop                                           ; $6fbe: $00
    ld e, a                                       ; $6fbf: $5f
    nop                                           ; $6fc0: $00
    ld h, c                                       ; $6fc1: $61
    nop                                           ; $6fc2: $00
    ld h, h                                       ; $6fc3: $64
    nop                                           ; $6fc4: $00
    ld h, a                                       ; $6fc5: $67
    nop                                           ; $6fc6: $00
    ld l, d                                       ; $6fc7: $6a
    nop                                           ; $6fc8: $00
    ld l, h                                       ; $6fc9: $6c
    nop                                           ; $6fca: $00
    ld [hl], b                                    ; $6fcb: $70
    nop                                           ; $6fcc: $00
    ld [hl], d                                    ; $6fcd: $72
    nop                                           ; $6fce: $00
    ld [hl], l                                    ; $6fcf: $75
    nop                                           ; $6fd0: $00
    ld a, b                                       ; $6fd1: $78
    nop                                           ; $6fd2: $00
    ld a, d                                       ; $6fd3: $7a
    nop                                           ; $6fd4: $00
    ld a, h                                       ; $6fd5: $7c
    nop                                           ; $6fd6: $00
    ld a, a                                       ; $6fd7: $7f
    nop                                           ; $6fd8: $00
    add c                                         ; $6fd9: $81
    nop                                           ; $6fda: $00
    add h                                         ; $6fdb: $84
    nop                                           ; $6fdc: $00
    add [hl]                                      ; $6fdd: $86
    nop                                           ; $6fde: $00
    adc c                                         ; $6fdf: $89
    nop                                           ; $6fe0: $00
    adc e                                         ; $6fe1: $8b
    nop                                           ; $6fe2: $00
    adc l                                         ; $6fe3: $8d
    nop                                           ; $6fe4: $00
    sub b                                         ; $6fe5: $90
    nop                                           ; $6fe6: $00
    sub d                                         ; $6fe7: $92
    nop                                           ; $6fe8: $00
    sub h                                         ; $6fe9: $94
    nop                                           ; $6fea: $00
    sub a                                         ; $6feb: $97
    nop                                           ; $6fec: $00
    sbc c                                         ; $6fed: $99
    nop                                           ; $6fee: $00
    sbc e                                         ; $6fef: $9b
    nop                                           ; $6ff0: $00
    sbc l                                         ; $6ff1: $9d
    nop                                           ; $6ff2: $00
    and b                                         ; $6ff3: $a0
    nop                                           ; $6ff4: $00
    and d                                         ; $6ff5: $a2
    nop                                           ; $6ff6: $00
    and l                                         ; $6ff7: $a5
    nop                                           ; $6ff8: $00
    and [hl]                                      ; $6ff9: $a6
    nop                                           ; $6ffa: $00
    xor b                                         ; $6ffb: $a8
    nop                                           ; $6ffc: $00
    xor d                                         ; $6ffd: $aa
    nop                                           ; $6ffe: $00
    xor l                                         ; $6fff: $ad
    nop                                           ; $7000: $00
    xor a                                         ; $7001: $af
    nop                                           ; $7002: $00
    or c                                          ; $7003: $b1
    nop                                           ; $7004: $00
    or e                                          ; $7005: $b3
    nop                                           ; $7006: $00
    or l                                          ; $7007: $b5
    nop                                           ; $7008: $00
    or a                                          ; $7009: $b7
    nop                                           ; $700a: $00
    cp d                                          ; $700b: $ba
    nop                                           ; $700c: $00
    cp e                                          ; $700d: $bb
    nop                                           ; $700e: $00
    cp [hl]                                       ; $700f: $be
    nop                                           ; $7010: $00
    cp a                                          ; $7011: $bf
    nop                                           ; $7012: $00
    jp nz, $c400                                  ; $7013: $c2 $00 $c4

    nop                                           ; $7016: $00
    add $00                                       ; $7017: $c6 $00
    ret z                                         ; $7019: $c8

    nop                                           ; $701a: $00
    jp z, $cc00                                   ; $701b: $ca $00 $cc

    nop                                           ; $701e: $00
    adc $00                                       ; $701f: $ce $00
    ret nc                                        ; $7021: $d0

    nop                                           ; $7022: $00
    jp nc, $d300                                  ; $7023: $d2 $00 $d3

    nop                                           ; $7026: $00
    push de                                       ; $7027: $d5
    nop                                           ; $7028: $00
    ret c                                         ; $7029: $d8

    nop                                           ; $702a: $00
    reti                                          ; $702b: $d9


    nop                                           ; $702c: $00
    db $db                                        ; $702d: $db
    nop                                           ; $702e: $00
    sbc $00                                       ; $702f: $de $00
    ldh [rP1], a                                  ; $7031: $e0 $00
    ld [c], a                                     ; $7033: $e2
    nop                                           ; $7034: $00
    db $e3                                        ; $7035: $e3
    nop                                           ; $7036: $00
    push hl                                       ; $7037: $e5
    nop                                           ; $7038: $00
    rst $20                                       ; $7039: $e7
    nop                                           ; $703a: $00
    jp hl                                         ; $703b: $e9


    nop                                           ; $703c: $00
    db $eb                                        ; $703d: $eb
    nop                                           ; $703e: $00
    db $ed                                        ; $703f: $ed
    nop                                           ; $7040: $00
    rst $28                                       ; $7041: $ef
    nop                                           ; $7042: $00
    pop af                                        ; $7043: $f1
    nop                                           ; $7044: $00
    di                                            ; $7045: $f3
    nop                                           ; $7046: $00
    db $f4                                        ; $7047: $f4
    nop                                           ; $7048: $00
    or $00                                        ; $7049: $f6 $00
    ld hl, sp+$00                                 ; $704b: $f8 $00
    ld a, [$fc00]                                 ; $704d: $fa $00 $fc
    nop                                           ; $7050: $00
    cp $00                                        ; $7051: $fe $00
    nop                                           ; $7053: $00
    ld bc, $0102                                  ; $7054: $01 $02 $01
    inc b                                         ; $7057: $04
    ld bc, $0106                                  ; $7058: $01 $06 $01
    ld [$0901], sp                                ; $705b: $08 $01 $09
    ld bc, $010b                                  ; $705e: $01 $0b $01
    dec c                                         ; $7061: $0d
    ld bc, $010f                                  ; $7062: $01 $0f $01
    ld de, $1301                                  ; $7065: $11 $01 $13
    ld bc, $0114                                  ; $7068: $01 $14 $01
    ld d, $01                                     ; $706b: $16 $01
    jr jr_03a_7070                                ; $706d: $18 $01

    ld a, [de]                                    ; $706f: $1a

jr_03a_7070:
    ld bc, $011c                                  ; $7070: $01 $1c $01
    ld e, $01                                     ; $7073: $1e $01
    jr nz, @+$03                                  ; $7075: $20 $01

    ld hl, $2401                                  ; $7077: $21 $01 $24
    ld bc, $0125                                  ; $707a: $01 $25 $01
    daa                                           ; $707d: $27
    ld bc, $0129                                  ; $707e: $01 $29 $01
    dec hl                                        ; $7081: $2b
    ld bc, $012c                                  ; $7082: $01 $2c $01
    ld l, $01                                     ; $7085: $2e $01
    jr nc, jr_03a_708a                            ; $7087: $30 $01

    ld [hl-], a                                   ; $7089: $32

jr_03a_708a:
    ld bc, HeaderTitle                            ; $708a: $01 $34 $01
    dec [hl]                                      ; $708d: $35
    ld bc, $0137                                  ; $708e: $01 $37 $01
    add hl, sp                                    ; $7091: $39
    ld bc, $013b                                  ; $7092: $01 $3b $01
    dec a                                         ; $7095: $3d
    ld bc, HeaderManufacturerCode                 ; $7096: $01 $3f $01
    ld b, c                                       ; $7099: $41
    ld bc, $0142                                  ; $709a: $01 $42 $01
    ld b, h                                       ; $709d: $44
    ld bc, HeaderSGBFlag                          ; $709e: $01 $46 $01
    ld c, b                                       ; $70a1: $48
    ld bc, HeaderDestinationCode                  ; $70a2: $01 $4a $01
    ld c, h                                       ; $70a5: $4c
    ld bc, HeaderGlobalChecksum                   ; $70a6: $01 $4e $01
    ld c, a                                       ; $70a9: $4f
    ld bc, $0151                                  ; $70aa: $01 $51 $01
    ld d, e                                       ; $70ad: $53
    ld bc, $0155                                  ; $70ae: $01 $55 $01
    ld d, a                                       ; $70b1: $57
    ld bc, $0158                                  ; $70b2: $01 $58 $01
    ld e, d                                       ; $70b5: $5a
    ld bc, $015c                                  ; $70b6: $01 $5c $01
    ld e, [hl]                                    ; $70b9: $5e
    ld bc, $0160                                  ; $70ba: $01 $60 $01
    ld h, c                                       ; $70bd: $61
    ld bc, $0163                                  ; $70be: $01 $63 $01
    ld h, l                                       ; $70c1: $65
    ld bc, $0167                                  ; $70c2: $01 $67 $01
    ld l, c                                       ; $70c5: $69
    ld bc, $016b                                  ; $70c6: $01 $6b $01
    ld l, h                                       ; $70c9: $6c
    ld bc, $016e                                  ; $70ca: $01 $6e $01
    ld [hl], b                                    ; $70cd: $70
    ld bc, $0172                                  ; $70ce: $01 $72 $01
    ld [hl], e                                    ; $70d1: $73
    ld bc, $0175                                  ; $70d2: $01 $75 $01
    ld [hl], a                                    ; $70d5: $77
    ld bc, $0179                                  ; $70d6: $01 $79 $01
    ld a, e                                       ; $70d9: $7b
    ld bc, $017d                                  ; $70da: $01 $7d $01
    ld a, a                                       ; $70dd: $7f
    ld bc, $0180                                  ; $70de: $01 $80 $01
    add d                                         ; $70e1: $82
    ld bc, $0184                                  ; $70e2: $01 $84 $01
    add [hl]                                      ; $70e5: $86
    ld bc, $0187                                  ; $70e6: $01 $87 $01
    adc c                                         ; $70e9: $89
    ld bc, $018b                                  ; $70ea: $01 $8b $01
    adc l                                         ; $70ed: $8d
    ld bc, $018f                                  ; $70ee: $01 $8f $01
    sub b                                         ; $70f1: $90
    ld bc, $0192                                  ; $70f2: $01 $92 $01
    sub h                                         ; $70f5: $94
    ld bc, $0195                                  ; $70f6: $01 $95 $01
    sbc b                                         ; $70f9: $98
    ld bc, $0199                                  ; $70fa: $01 $99 $01
    sbc e                                         ; $70fd: $9b
    ld bc, $019d                                  ; $70fe: $01 $9d $01
    sbc a                                         ; $7101: $9f
    ld bc, $01a1                                  ; $7102: $01 $a1 $01
    and d                                         ; $7105: $a2
    ld bc, $01a4                                  ; $7106: $01 $a4 $01
    and [hl]                                      ; $7109: $a6
    ld bc, $01a8                                  ; $710a: $01 $a8 $01
    xor d                                         ; $710d: $aa
    ld bc, $01ab                                  ; $710e: $01 $ab $01
    xor l                                         ; $7111: $ad
    ld bc, $01af                                  ; $7112: $01 $af $01
    or c                                          ; $7115: $b1
    ld bc, $01b3                                  ; $7116: $01 $b3 $01
    or l                                          ; $7119: $b5
    ld bc, $01b6                                  ; $711a: $01 $b6 $01
    cp b                                          ; $711d: $b8
    ld bc, $01ba                                  ; $711e: $01 $ba $01
    cp h                                          ; $7121: $bc
    ld bc, $01be                                  ; $7122: $01 $be $01
    cp a                                          ; $7125: $bf
    ld bc, $01c1                                  ; $7126: $01 $c1 $01
    jp $c401                                      ; $7129: $c3 $01 $c4


    ld bc, $01c7                                  ; $712c: $01 $c7 $01
    ret z                                         ; $712f: $c8

    ld bc, $01ca                                  ; $7130: $01 $ca $01
    call z, $ce01                                 ; $7133: $cc $01 $ce
    ld bc, $01d0                                  ; $7136: $01 $d0 $01
    jp nc, $d301                                  ; $7139: $d2 $01 $d3

    ld bc, $01d5                                  ; $713c: $01 $d5 $01
    rst $10                                       ; $713f: $d7
    ld bc, $01d8                                  ; $7140: $01 $d8 $01
    jp c, $dc01                                   ; $7143: $da $01 $dc

    ld bc, $01de                                  ; $7146: $01 $de $01
    inc bc                                        ; $7149: $03
    nop                                           ; $714a: $00
    dec de                                        ; $714b: $1b
    nop                                           ; $714c: $00
    inc hl                                        ; $714d: $23
    nop                                           ; $714e: $00
    ld a, [hl+]                                   ; $714f: $2a
    nop                                           ; $7150: $00
    ld sp, $3600                                  ; $7151: $31 $00 $36
    nop                                           ; $7154: $00
    dec sp                                        ; $7155: $3b
    nop                                           ; $7156: $00
    ld b, b                                       ; $7157: $40
    nop                                           ; $7158: $00
    ld b, h                                       ; $7159: $44
    nop                                           ; $715a: $00
    ld c, b                                       ; $715b: $48
    nop                                           ; $715c: $00
    ld c, h                                       ; $715d: $4c
    nop                                           ; $715e: $00
    ld c, a                                       ; $715f: $4f
    nop                                           ; $7160: $00
    ld d, e                                       ; $7161: $53
    nop                                           ; $7162: $00
    ld d, [hl]                                    ; $7163: $56
    nop                                           ; $7164: $00
    ld e, d                                       ; $7165: $5a
    nop                                           ; $7166: $00
    ld e, l                                       ; $7167: $5d
    nop                                           ; $7168: $00
    ld h, b                                       ; $7169: $60
    nop                                           ; $716a: $00
    ld h, h                                       ; $716b: $64
    nop                                           ; $716c: $00
    ld h, a                                       ; $716d: $67
    nop                                           ; $716e: $00
    ld l, c                                       ; $716f: $69
    nop                                           ; $7170: $00
    ld l, h                                       ; $7171: $6c
    nop                                           ; $7172: $00
    ld l, a                                       ; $7173: $6f
    nop                                           ; $7174: $00
    ld [hl], d                                    ; $7175: $72
    nop                                           ; $7176: $00
    ld [hl], l                                    ; $7177: $75
    nop                                           ; $7178: $00
    ld a, b                                       ; $7179: $78
    nop                                           ; $717a: $00
    ld a, d                                       ; $717b: $7a
    nop                                           ; $717c: $00
    ld a, l                                       ; $717d: $7d
    nop                                           ; $717e: $00
    add b                                         ; $717f: $80
    nop                                           ; $7180: $00
    add d                                         ; $7181: $82
    nop                                           ; $7182: $00
    add l                                         ; $7183: $85
    nop                                           ; $7184: $00
    add a                                         ; $7185: $87
    nop                                           ; $7186: $00
    adc d                                         ; $7187: $8a
    nop                                           ; $7188: $00
    adc h                                         ; $7189: $8c
    nop                                           ; $718a: $00
    adc a                                         ; $718b: $8f
    nop                                           ; $718c: $00
    sub c                                         ; $718d: $91
    nop                                           ; $718e: $00
    sub h                                         ; $718f: $94
    nop                                           ; $7190: $00
    sub a                                         ; $7191: $97
    nop                                           ; $7192: $00
    sbc c                                         ; $7193: $99
    nop                                           ; $7194: $00
    sbc e                                         ; $7195: $9b
    nop                                           ; $7196: $00
    sbc l                                         ; $7197: $9d
    nop                                           ; $7198: $00
    and b                                         ; $7199: $a0
    nop                                           ; $719a: $00
    and d                                         ; $719b: $a2
    nop                                           ; $719c: $00
    and l                                         ; $719d: $a5
    nop                                           ; $719e: $00
    and a                                         ; $719f: $a7
    nop                                           ; $71a0: $00
    xor c                                         ; $71a1: $a9
    nop                                           ; $71a2: $00
    xor e                                         ; $71a3: $ab
    nop                                           ; $71a4: $00
    xor [hl]                                      ; $71a5: $ae
    nop                                           ; $71a6: $00
    or b                                          ; $71a7: $b0
    nop                                           ; $71a8: $00
    or d                                          ; $71a9: $b2
    nop                                           ; $71aa: $00
    or h                                          ; $71ab: $b4
    nop                                           ; $71ac: $00
    or a                                          ; $71ad: $b7
    nop                                           ; $71ae: $00
    cp c                                          ; $71af: $b9
    nop                                           ; $71b0: $00
    cp e                                          ; $71b1: $bb
    nop                                           ; $71b2: $00
    cp [hl]                                       ; $71b3: $be
    nop                                           ; $71b4: $00
    ret nz                                        ; $71b5: $c0

    nop                                           ; $71b6: $00
    jp nz, $c400                                  ; $71b7: $c2 $00 $c4

    nop                                           ; $71ba: $00
    add $00                                       ; $71bb: $c6 $00
    ret z                                         ; $71bd: $c8

    nop                                           ; $71be: $00
    rlc b                                         ; $71bf: $cb $00
    call z, $cf00                                 ; $71c1: $cc $00 $cf
    nop                                           ; $71c4: $00
    pop de                                        ; $71c5: $d1
    nop                                           ; $71c6: $00
    db $d3                                        ; $71c7: $d3
    nop                                           ; $71c8: $00
    push de                                       ; $71c9: $d5
    nop                                           ; $71ca: $00
    ret c                                         ; $71cb: $d8

    nop                                           ; $71cc: $00
    jp c, $dc00                                   ; $71cd: $da $00 $dc

    nop                                           ; $71d0: $00
    sbc $00                                       ; $71d1: $de $00
    ldh [rP1], a                                  ; $71d3: $e0 $00
    ld [c], a                                     ; $71d5: $e2
    nop                                           ; $71d6: $00
    db $e4                                        ; $71d7: $e4
    nop                                           ; $71d8: $00
    and $00                                       ; $71d9: $e6 $00
    add sp, $00                                   ; $71db: $e8 $00
    db $eb                                        ; $71dd: $eb
    nop                                           ; $71de: $00
    db $ec                                        ; $71df: $ec
    nop                                           ; $71e0: $00
    xor $00                                       ; $71e1: $ee $00
    ldh a, [rP1]                                  ; $71e3: $f0 $00
    di                                            ; $71e5: $f3
    nop                                           ; $71e6: $00
    push af                                       ; $71e7: $f5
    nop                                           ; $71e8: $00
    rst $30                                       ; $71e9: $f7
    nop                                           ; $71ea: $00
    ld sp, hl                                     ; $71eb: $f9
    nop                                           ; $71ec: $00
    ei                                            ; $71ed: $fb
    nop                                           ; $71ee: $00
    db $fd                                        ; $71ef: $fd
    nop                                           ; $71f0: $00
    rst $38                                       ; $71f1: $ff
    nop                                           ; $71f2: $00
    ld bc, $0301                                  ; $71f3: $01 $01 $03
    ld bc, $0105                                  ; $71f6: $01 $05 $01
    rlca                                          ; $71f9: $07
    ld bc, $0109                                  ; $71fa: $01 $09 $01
    dec bc                                        ; $71fd: $0b
    ld bc, $010d                                  ; $71fe: $01 $0d $01
    db $10                                        ; $7201: $10
    ld bc, $0112                                  ; $7202: $01 $12 $01
    inc d                                         ; $7205: $14
    ld bc, $0116                                  ; $7206: $01 $16 $01
    rla                                           ; $7209: $17
    ld bc, $011a                                  ; $720a: $01 $1a $01
    inc e                                         ; $720d: $1c
    ld bc, $011d                                  ; $720e: $01 $1d $01
    rra                                           ; $7211: $1f
    ld bc, $0122                                  ; $7212: $01 $22 $01
    inc h                                         ; $7215: $24
    ld bc, $0126                                  ; $7216: $01 $26 $01
    jr z, jr_03a_721c                             ; $7219: $28 $01

    ld a, [hl+]                                   ; $721b: $2a

jr_03a_721c:
    ld bc, $012c                                  ; $721c: $01 $2c $01
    ld l, $01                                     ; $721f: $2e $01
    jr nc, jr_03a_7224                            ; $7221: $30 $01

    ld [hl-], a                                   ; $7223: $32

jr_03a_7224:
    ld bc, HeaderTitle                            ; $7224: $01 $34 $01
    ld [hl], $01                                  ; $7227: $36 $01
    jr c, jr_03a_722c                             ; $7229: $38 $01

    ld a, [hl-]                                   ; $722b: $3a

jr_03a_722c:
    ld bc, $013c                                  ; $722c: $01 $3c $01
    ld a, $01                                     ; $722f: $3e $01
    ld b, b                                       ; $7231: $40
    ld bc, $0142                                  ; $7232: $01 $42 $01
    ld b, h                                       ; $7235: $44
    ld bc, HeaderSGBFlag                          ; $7236: $01 $46 $01
    ld c, b                                       ; $7239: $48
    ld bc, HeaderDestinationCode                  ; $723a: $01 $4a $01
    ld c, h                                       ; $723d: $4c
    ld bc, HeaderGlobalChecksum                   ; $723e: $01 $4e $01
    ld d, b                                       ; $7241: $50
    ld bc, $0152                                  ; $7242: $01 $52 $01
    ld d, h                                       ; $7245: $54
    ld bc, $0156                                  ; $7246: $01 $56 $01
    ld e, c                                       ; $7249: $59
    ld bc, $015a                                  ; $724a: $01 $5a $01
    ld e, h                                       ; $724d: $5c
    ld bc, $015e                                  ; $724e: $01 $5e $01
    ld h, c                                       ; $7251: $61
    ld bc, $0163                                  ; $7252: $01 $63 $01
    ld h, h                                       ; $7255: $64
    ld bc, $0166                                  ; $7256: $01 $66 $01
    ld l, c                                       ; $7259: $69
    ld bc, $016b                                  ; $725a: $01 $6b $01
    ld l, l                                       ; $725d: $6d
    ld bc, $016f                                  ; $725e: $01 $6f $01
    ld [hl], c                                    ; $7261: $71
    ld bc, $0173                                  ; $7262: $01 $73 $01
    ld [hl], l                                    ; $7265: $75
    ld bc, $0177                                  ; $7266: $01 $77 $01
    ld a, c                                       ; $7269: $79
    ld bc, $017a                                  ; $726a: $01 $7a $01
    ld a, l                                       ; $726d: $7d
    ld bc, $017f                                  ; $726e: $01 $7f $01
    add b                                         ; $7271: $80
    ld bc, $0183                                  ; $7272: $01 $83 $01
    add l                                         ; $7275: $85
    ld bc, $0187                                  ; $7276: $01 $87 $01
    adc c                                         ; $7279: $89
    ld bc, $018b                                  ; $727a: $01 $8b $01
    adc l                                         ; $727d: $8d
    ld bc, $018f                                  ; $727e: $01 $8f $01
    sub c                                         ; $7281: $91
    ld bc, $0193                                  ; $7282: $01 $93 $01
    sub l                                         ; $7285: $95
    ld bc, $0197                                  ; $7286: $01 $97 $01
    sbc c                                         ; $7289: $99
    ld bc, $019b                                  ; $728a: $01 $9b $01
    sbc l                                         ; $728d: $9d
    ld bc, $019f                                  ; $728e: $01 $9f $01
    and c                                         ; $7291: $a1
    ld bc, $01a3                                  ; $7292: $01 $a3 $01
    and l                                         ; $7295: $a5
    ld bc, $01a7                                  ; $7296: $01 $a7 $01
    xor c                                         ; $7299: $a9
    ld bc, $01ab                                  ; $729a: $01 $ab $01
    xor l                                         ; $729d: $ad
    ld bc, $01af                                  ; $729e: $01 $af $01
    or c                                          ; $72a1: $b1
    ld bc, $01b3                                  ; $72a2: $01 $b3 $01
    or l                                          ; $72a5: $b5
    ld bc, $01b7                                  ; $72a6: $01 $b7 $01
    cp c                                          ; $72a9: $b9
    ld bc, $01bb                                  ; $72aa: $01 $bb $01
    cp l                                          ; $72ad: $bd
    ld bc, $01c0                                  ; $72ae: $01 $c0 $01
    jp nz, $c401                                  ; $72b1: $c2 $01 $c4

    ld bc, $01c5                                  ; $72b4: $01 $c5 $01
    rst $00                                       ; $72b7: $c7
    ld bc, $01c9                                  ; $72b8: $01 $c9 $01
    rlc c                                         ; $72bb: $cb $01
    adc $01                                       ; $72bd: $ce $01
    ret nc                                        ; $72bf: $d0

    ld bc, $01d2                                  ; $72c0: $01 $d2 $01
    call nc, $d601                                ; $72c3: $d4 $01 $d6
    ld bc, $01d8                                  ; $72c6: $01 $d8 $01
    jp c, $dc01                                   ; $72c9: $da $01 $dc

    ld bc, $01de                                  ; $72cc: $01 $de $01
    inc bc                                        ; $72cf: $03
    nop                                           ; $72d0: $00
    ld e, $00                                     ; $72d1: $1e $00
    daa                                           ; $72d3: $27
    nop                                           ; $72d4: $00
    ld l, $00                                     ; $72d5: $2e $00
    dec [hl]                                      ; $72d7: $35
    nop                                           ; $72d8: $00
    dec sp                                        ; $72d9: $3b
    nop                                           ; $72da: $00
    ld b, b                                       ; $72db: $40
    nop                                           ; $72dc: $00
    ld b, h                                       ; $72dd: $44
    nop                                           ; $72de: $00
    ld c, c                                       ; $72df: $49
    nop                                           ; $72e0: $00
    ld c, l                                       ; $72e1: $4d
    nop                                           ; $72e2: $00
    ld d, c                                       ; $72e3: $51
    nop                                           ; $72e4: $00
    ld d, l                                       ; $72e5: $55
    nop                                           ; $72e6: $00
    ld e, c                                       ; $72e7: $59
    nop                                           ; $72e8: $00
    ld e, h                                       ; $72e9: $5c
    nop                                           ; $72ea: $00
    ld e, a                                       ; $72eb: $5f
    nop                                           ; $72ec: $00
    ld h, e                                       ; $72ed: $63
    nop                                           ; $72ee: $00
    ld h, [hl]                                    ; $72ef: $66
    nop                                           ; $72f0: $00
    ld l, c                                       ; $72f1: $69
    nop                                           ; $72f2: $00
    ld l, h                                       ; $72f3: $6c
    nop                                           ; $72f4: $00
    ld l, a                                       ; $72f5: $6f
    nop                                           ; $72f6: $00
    ld [hl], d                                    ; $72f7: $72
    nop                                           ; $72f8: $00
    ld [hl], l                                    ; $72f9: $75
    nop                                           ; $72fa: $00
    ld a, b                                       ; $72fb: $78
    nop                                           ; $72fc: $00
    ld a, e                                       ; $72fd: $7b
    nop                                           ; $72fe: $00
    ld a, [hl]                                    ; $72ff: $7e
    nop                                           ; $7300: $00
    add c                                         ; $7301: $81
    nop                                           ; $7302: $00
    add e                                         ; $7303: $83
    nop                                           ; $7304: $00
    add [hl]                                      ; $7305: $86
    nop                                           ; $7306: $00
    adc c                                         ; $7307: $89
    nop                                           ; $7308: $00
    adc e                                         ; $7309: $8b
    nop                                           ; $730a: $00
    adc [hl]                                      ; $730b: $8e
    nop                                           ; $730c: $00
    sub c                                         ; $730d: $91
    nop                                           ; $730e: $00
    sub e                                         ; $730f: $93
    nop                                           ; $7310: $00
    sub [hl]                                      ; $7311: $96
    nop                                           ; $7312: $00
    sbc c                                         ; $7313: $99
    nop                                           ; $7314: $00
    sbc e                                         ; $7315: $9b
    nop                                           ; $7316: $00
    sbc [hl]                                      ; $7317: $9e
    nop                                           ; $7318: $00
    and b                                         ; $7319: $a0
    nop                                           ; $731a: $00
    and e                                         ; $731b: $a3
    nop                                           ; $731c: $00
    and [hl]                                      ; $731d: $a6
    nop                                           ; $731e: $00
    xor b                                         ; $731f: $a8
    nop                                           ; $7320: $00
    xor d                                         ; $7321: $aa
    nop                                           ; $7322: $00
    xor h                                         ; $7323: $ac
    nop                                           ; $7324: $00
    xor a                                         ; $7325: $af
    nop                                           ; $7326: $00
    or d                                          ; $7327: $b2
    nop                                           ; $7328: $00
    or h                                          ; $7329: $b4
    nop                                           ; $732a: $00
    or [hl]                                       ; $732b: $b6
    nop                                           ; $732c: $00
    cp c                                          ; $732d: $b9
    nop                                           ; $732e: $00
    cp e                                          ; $732f: $bb
    nop                                           ; $7330: $00
    cp [hl]                                       ; $7331: $be
    nop                                           ; $7332: $00
    ret nz                                        ; $7333: $c0

    nop                                           ; $7334: $00
    jp nz, $c400                                  ; $7335: $c2 $00 $c4

    nop                                           ; $7338: $00
    rst $00                                       ; $7339: $c7
    nop                                           ; $733a: $00
    ret                                           ; $733b: $c9


    nop                                           ; $733c: $00
    call z, $ce00                                 ; $733d: $cc $00 $ce
    nop                                           ; $7340: $00
    ret nc                                        ; $7341: $d0

    nop                                           ; $7342: $00
    db $d3                                        ; $7343: $d3
    nop                                           ; $7344: $00
    push de                                       ; $7345: $d5
    nop                                           ; $7346: $00
    ret c                                         ; $7347: $d8

    nop                                           ; $7348: $00
    jp c, $dc00                                   ; $7349: $da $00 $dc

    nop                                           ; $734c: $00
    sbc $00                                       ; $734d: $de $00
    ldh [rP1], a                                  ; $734f: $e0 $00
    db $e3                                        ; $7351: $e3
    nop                                           ; $7352: $00
    push hl                                       ; $7353: $e5
    nop                                           ; $7354: $00
    rst $20                                       ; $7355: $e7
    nop                                           ; $7356: $00
    jp hl                                         ; $7357: $e9


    nop                                           ; $7358: $00
    db $ec                                        ; $7359: $ec
    nop                                           ; $735a: $00
    xor $00                                       ; $735b: $ee $00
    ldh a, [rP1]                                  ; $735d: $f0 $00
    ld a, [c]                                     ; $735f: $f2
    nop                                           ; $7360: $00
    push af                                       ; $7361: $f5
    nop                                           ; $7362: $00
    rst $30                                       ; $7363: $f7
    nop                                           ; $7364: $00
    ld sp, hl                                     ; $7365: $f9
    nop                                           ; $7366: $00
    ei                                            ; $7367: $fb
    nop                                           ; $7368: $00
    cp $00                                        ; $7369: $fe $00
    nop                                           ; $736b: $00
    ld bc, $0102                                  ; $736c: $01 $02 $01
    inc b                                         ; $736f: $04
    ld bc, $0107                                  ; $7370: $01 $07 $01
    add hl, bc                                    ; $7373: $09
    ld bc, $010b                                  ; $7374: $01 $0b $01
    dec c                                         ; $7377: $0d
    ld bc, $010f                                  ; $7378: $01 $0f $01
    ld [de], a                                    ; $737b: $12
    ld bc, $0114                                  ; $737c: $01 $14 $01
    ld d, $01                                     ; $737f: $16 $01
    jr jr_03a_7384                                ; $7381: $18 $01

    dec de                                        ; $7383: $1b

jr_03a_7384:
    ld bc, $011d                                  ; $7384: $01 $1d $01
    jr nz, @+$03                                  ; $7387: $20 $01

    ld hl, $2301                                  ; $7389: $21 $01 $23
    ld bc, $0126                                  ; $738c: $01 $26 $01
    jr z, jr_03a_7392                             ; $738f: $28 $01

    ld a, [hl+]                                   ; $7391: $2a

jr_03a_7392:
    ld bc, $012c                                  ; $7392: $01 $2c $01
    cpl                                           ; $7395: $2f
    ld bc, $0131                                  ; $7396: $01 $31 $01
    inc sp                                        ; $7399: $33
    ld bc, $0136                                  ; $739a: $01 $36 $01
    jr c, jr_03a_73a0                             ; $739d: $38 $01

    ld a, [hl-]                                   ; $739f: $3a

jr_03a_73a0:
    ld bc, $013c                                  ; $73a0: $01 $3c $01
    ld a, $01                                     ; $73a3: $3e $01
    ld b, c                                       ; $73a5: $41
    ld bc, HeaderCGBFlag                          ; $73a6: $01 $43 $01
    ld b, l                                       ; $73a9: $45
    ld bc, HeaderCartridgeType                    ; $73aa: $01 $47 $01
    ld c, c                                       ; $73ad: $49
    ld bc, HeaderMaskROMVersion                   ; $73ae: $01 $4c $01
    ld c, [hl]                                    ; $73b1: $4e
    ld bc, $0150                                  ; $73b2: $01 $50 $01
    ld d, d                                       ; $73b5: $52
    ld bc, $0155                                  ; $73b6: $01 $55 $01
    ld d, a                                       ; $73b9: $57
    ld bc, $0159                                  ; $73ba: $01 $59 $01
    ld e, e                                       ; $73bd: $5b
    ld bc, $015e                                  ; $73be: $01 $5e $01
    ld e, a                                       ; $73c1: $5f
    ld bc, $0162                                  ; $73c2: $01 $62 $01
    ld h, h                                       ; $73c5: $64
    ld bc, $0166                                  ; $73c6: $01 $66 $01
    ld l, b                                       ; $73c9: $68
    ld bc, $016b                                  ; $73ca: $01 $6b $01
    ld l, l                                       ; $73cd: $6d
    ld bc, $016f                                  ; $73ce: $01 $6f $01
    ld [hl], d                                    ; $73d1: $72
    ld bc, $0173                                  ; $73d2: $01 $73 $01
    halt                                          ; $73d5: $76
    ld bc, $0178                                  ; $73d6: $01 $78 $01
    ld a, e                                       ; $73d9: $7b
    ld bc, $017d                                  ; $73da: $01 $7d $01
    ld a, a                                       ; $73dd: $7f
    ld bc, $0181                                  ; $73de: $01 $81 $01
    add e                                         ; $73e1: $83
    ld bc, $0185                                  ; $73e2: $01 $85 $01
    add a                                         ; $73e5: $87
    ld bc, $018a                                  ; $73e6: $01 $8a $01
    adc h                                         ; $73e9: $8c
    ld bc, $018e                                  ; $73ea: $01 $8e $01
    sub b                                         ; $73ed: $90
    ld bc, $0193                                  ; $73ee: $01 $93 $01
    sub l                                         ; $73f1: $95
    ld bc, $0197                                  ; $73f2: $01 $97 $01
    sbc c                                         ; $73f5: $99
    ld bc, $019c                                  ; $73f6: $01 $9c $01
    sbc [hl]                                      ; $73f9: $9e
    ld bc, $01a0                                  ; $73fa: $01 $a0 $01
    and d                                         ; $73fd: $a2
    ld bc, $01a5                                  ; $73fe: $01 $a5 $01
    and a                                         ; $7401: $a7
    ld bc, $01a9                                  ; $7402: $01 $a9 $01
    xor e                                         ; $7405: $ab
    ld bc, $01ae                                  ; $7406: $01 $ae $01
    or b                                          ; $7409: $b0
    ld bc, $01b2                                  ; $740a: $01 $b2 $01
    or h                                          ; $740d: $b4
    ld bc, $01b6                                  ; $740e: $01 $b6 $01
    cp c                                          ; $7411: $b9
    ld bc, $01bb                                  ; $7412: $01 $bb $01
    cp l                                          ; $7415: $bd
    ld bc, $01c0                                  ; $7416: $01 $c0 $01
    jp nz, $c401                                  ; $7419: $c2 $01 $c4

    ld bc, $01c6                                  ; $741c: $01 $c6 $01
    ret z                                         ; $741f: $c8

    ld bc, $01cb                                  ; $7420: $01 $cb $01
    call $cf01                                    ; $7423: $cd $01 $cf
    ld bc, $01d2                                  ; $7426: $01 $d2 $01
    call nc, $d601                                ; $7429: $d4 $01 $d6
    ld bc, $01d8                                  ; $742c: $01 $d8 $01
    jp c, $dd01                                   ; $742f: $da $01 $dd

    ld bc, $01df                                  ; $7432: $01 $df $01
    inc bc                                        ; $7435: $03
    nop                                           ; $7436: $00
    ld [hl+], a                                   ; $7437: $22
    nop                                           ; $7438: $00
    dec hl                                        ; $7439: $2b
    nop                                           ; $743a: $00
    ld [hl-], a                                   ; $743b: $32
    nop                                           ; $743c: $00
    add hl, sp                                    ; $743d: $39
    nop                                           ; $743e: $00
    ccf                                           ; $743f: $3f
    nop                                           ; $7440: $00
    ld b, h                                       ; $7441: $44
    nop                                           ; $7442: $00
    ld c, c                                       ; $7443: $49
    nop                                           ; $7444: $00
    ld c, l                                       ; $7445: $4d
    nop                                           ; $7446: $00
    ld d, c                                       ; $7447: $51
    nop                                           ; $7448: $00
    ld d, l                                       ; $7449: $55
    nop                                           ; $744a: $00
    ld e, c                                       ; $744b: $59
    nop                                           ; $744c: $00
    ld e, l                                       ; $744d: $5d
    nop                                           ; $744e: $00
    ld h, c                                       ; $744f: $61
    nop                                           ; $7450: $00
    ld h, h                                       ; $7451: $64
    nop                                           ; $7452: $00
    ld l, b                                       ; $7453: $68
    nop                                           ; $7454: $00
    ld l, e                                       ; $7455: $6b
    nop                                           ; $7456: $00
    ld l, a                                       ; $7457: $6f
    nop                                           ; $7458: $00
    ld [hl], d                                    ; $7459: $72
    nop                                           ; $745a: $00
    ld [hl], l                                    ; $745b: $75
    nop                                           ; $745c: $00
    ld a, b                                       ; $745d: $78
    nop                                           ; $745e: $00
    ld a, e                                       ; $745f: $7b
    nop                                           ; $7460: $00
    ld a, [hl]                                    ; $7461: $7e
    nop                                           ; $7462: $00
    add c                                         ; $7463: $81
    nop                                           ; $7464: $00
    add h                                         ; $7465: $84
    nop                                           ; $7466: $00
    add a                                         ; $7467: $87
    nop                                           ; $7468: $00
    adc d                                         ; $7469: $8a
    nop                                           ; $746a: $00
    adc l                                         ; $746b: $8d
    nop                                           ; $746c: $00
    sub b                                         ; $746d: $90
    nop                                           ; $746e: $00
    sub e                                         ; $746f: $93
    nop                                           ; $7470: $00
    sub l                                         ; $7471: $95
    nop                                           ; $7472: $00
    sbc b                                         ; $7473: $98
    nop                                           ; $7474: $00
    sbc e                                         ; $7475: $9b
    nop                                           ; $7476: $00
    sbc [hl]                                      ; $7477: $9e
    nop                                           ; $7478: $00
    and c                                         ; $7479: $a1
    nop                                           ; $747a: $00
    and e                                         ; $747b: $a3
    nop                                           ; $747c: $00
    and [hl]                                      ; $747d: $a6
    nop                                           ; $747e: $00
    xor b                                         ; $747f: $a8
    nop                                           ; $7480: $00
    xor e                                         ; $7481: $ab
    nop                                           ; $7482: $00
    xor [hl]                                      ; $7483: $ae
    nop                                           ; $7484: $00
    or b                                          ; $7485: $b0
    nop                                           ; $7486: $00
    or e                                          ; $7487: $b3
    nop                                           ; $7488: $00
    or [hl]                                       ; $7489: $b6
    nop                                           ; $748a: $00
    cp b                                          ; $748b: $b8
    nop                                           ; $748c: $00
    cp e                                          ; $748d: $bb
    nop                                           ; $748e: $00
    cp l                                          ; $748f: $bd
    nop                                           ; $7490: $00
    ret nz                                        ; $7491: $c0

    nop                                           ; $7492: $00
    jp nz, $c500                                  ; $7493: $c2 $00 $c5

    nop                                           ; $7496: $00
    rst $00                                       ; $7497: $c7
    nop                                           ; $7498: $00
    jp z, $cc00                                   ; $7499: $ca $00 $cc

    nop                                           ; $749c: $00
    rst $08                                       ; $749d: $cf
    nop                                           ; $749e: $00
    pop de                                        ; $749f: $d1
    nop                                           ; $74a0: $00
    call nc, $d600                                ; $74a1: $d4 $00 $d6
    nop                                           ; $74a4: $00
    ret c                                         ; $74a5: $d8

    nop                                           ; $74a6: $00
    db $db                                        ; $74a7: $db
    nop                                           ; $74a8: $00
    db $dd                                        ; $74a9: $dd
    nop                                           ; $74aa: $00
    ldh [rP1], a                                  ; $74ab: $e0 $00
    ld [c], a                                     ; $74ad: $e2
    nop                                           ; $74ae: $00
    push hl                                       ; $74af: $e5
    nop                                           ; $74b0: $00
    rst $20                                       ; $74b1: $e7
    nop                                           ; $74b2: $00
    ld [$ed00], a                                 ; $74b3: $ea $00 $ed
    nop                                           ; $74b6: $00
    rst $28                                       ; $74b7: $ef
    nop                                           ; $74b8: $00
    pop af                                        ; $74b9: $f1
    nop                                           ; $74ba: $00
    db $f4                                        ; $74bb: $f4
    nop                                           ; $74bc: $00
    or $00                                        ; $74bd: $f6 $00
    ld sp, hl                                     ; $74bf: $f9
    nop                                           ; $74c0: $00
    ei                                            ; $74c1: $fb
    nop                                           ; $74c2: $00
    db $fd                                        ; $74c3: $fd
    nop                                           ; $74c4: $00
    nop                                           ; $74c5: $00
    ld bc, $0102                                  ; $74c6: $01 $02 $01
    inc b                                         ; $74c9: $04
    ld bc, $0107                                  ; $74ca: $01 $07 $01
    add hl, bc                                    ; $74cd: $09
    ld bc, $010c                                  ; $74ce: $01 $0c $01
    ld c, $01                                     ; $74d1: $0e $01
    db $10                                        ; $74d3: $10
    ld bc, $0113                                  ; $74d4: $01 $13 $01
    dec d                                         ; $74d7: $15
    ld bc, $0118                                  ; $74d8: $01 $18 $01
    ld a, [de]                                    ; $74db: $1a
    ld bc, $011c                                  ; $74dc: $01 $1c $01
    rra                                           ; $74df: $1f
    ld bc, $0122                                  ; $74e0: $01 $22 $01
    inc h                                         ; $74e3: $24
    ld bc, $0126                                  ; $74e4: $01 $26 $01
    jr z, jr_03a_74ea                             ; $74e7: $28 $01

    dec hl                                        ; $74e9: $2b

jr_03a_74ea:
    ld bc, $012d                                  ; $74ea: $01 $2d $01
    jr nc, jr_03a_74f0                            ; $74ed: $30 $01

    ld [hl-], a                                   ; $74ef: $32

jr_03a_74f0:
    ld bc, $0135                                  ; $74f0: $01 $35 $01
    scf                                           ; $74f3: $37
    ld bc, $0139                                  ; $74f4: $01 $39 $01
    inc a                                         ; $74f7: $3c
    ld bc, $013e                                  ; $74f8: $01 $3e $01
    ld b, b                                       ; $74fb: $40
    ld bc, HeaderCGBFlag                          ; $74fc: $01 $43 $01
    ld b, l                                       ; $74ff: $45
    ld bc, HeaderROMSize                          ; $7500: $01 $48 $01
    ld c, d                                       ; $7503: $4a
    ld bc, HeaderMaskROMVersion                   ; $7504: $01 $4c $01
    ld c, a                                       ; $7507: $4f
    ld bc, $0151                                  ; $7508: $01 $51 $01
    ld d, h                                       ; $750b: $54
    ld bc, $0156                                  ; $750c: $01 $56 $01
    ld e, b                                       ; $750f: $58
    ld bc, $015b                                  ; $7510: $01 $5b $01
    ld e, l                                       ; $7513: $5d
    ld bc, $0160                                  ; $7514: $01 $60 $01
    ld h, d                                       ; $7517: $62
    ld bc, $0164                                  ; $7518: $01 $64 $01
    ld h, a                                       ; $751b: $67
    ld bc, $0169                                  ; $751c: $01 $69 $01
    ld l, e                                       ; $751f: $6b
    ld bc, $016e                                  ; $7520: $01 $6e $01
    ld [hl], b                                    ; $7523: $70
    ld bc, $0173                                  ; $7524: $01 $73 $01
    ld [hl], l                                    ; $7527: $75
    ld bc, $0178                                  ; $7528: $01 $78 $01
    ld a, d                                       ; $752b: $7a
    ld bc, $017c                                  ; $752c: $01 $7c $01
    ld a, a                                       ; $752f: $7f
    ld bc, $0181                                  ; $7530: $01 $81 $01
    add h                                         ; $7533: $84
    ld bc, $0186                                  ; $7534: $01 $86 $01
    adc b                                         ; $7537: $88
    ld bc, $018b                                  ; $7538: $01 $8b $01
    adc l                                         ; $753b: $8d
    ld bc, $0190                                  ; $753c: $01 $90 $01
    sub d                                         ; $753f: $92
    ld bc, $0194                                  ; $7540: $01 $94 $01
    sub a                                         ; $7543: $97
    ld bc, $0199                                  ; $7544: $01 $99 $01
    sbc h                                         ; $7547: $9c
    ld bc, $019e                                  ; $7548: $01 $9e $01
    and b                                         ; $754b: $a0
    ld bc, $01a3                                  ; $754c: $01 $a3 $01
    and l                                         ; $754f: $a5
    ld bc, $01a8                                  ; $7550: $01 $a8 $01
    xor d                                         ; $7553: $aa
    ld bc, $01ac                                  ; $7554: $01 $ac $01
    xor a                                         ; $7557: $af
    ld bc, $01b1                                  ; $7558: $01 $b1 $01
    or h                                          ; $755b: $b4
    ld bc, $01b6                                  ; $755c: $01 $b6 $01
    cp b                                          ; $755f: $b8
    ld bc, $01bb                                  ; $7560: $01 $bb $01
    cp l                                          ; $7563: $bd
    ld bc, $01c0                                  ; $7564: $01 $c0 $01
    jp nz, $c401                                  ; $7567: $c2 $01 $c4

    ld bc, $01c7                                  ; $756a: $01 $c7 $01
    jp z, $cc01                                   ; $756d: $ca $01 $cc

    ld bc, $01ce                                  ; $7570: $01 $ce $01
    pop de                                        ; $7573: $d1
    ld bc, $01d3                                  ; $7574: $01 $d3 $01
    sub $01                                       ; $7577: $d6 $01
    ret c                                         ; $7579: $d8

    ld bc, $01db                                  ; $757a: $01 $db $01
    db $dd                                        ; $757d: $dd
    ld bc, $0003                                  ; $757e: $01 $03 $00
    inc h                                         ; $7581: $24
    nop                                           ; $7582: $00
    dec l                                         ; $7583: $2d
    nop                                           ; $7584: $00
    ld [hl], $00                                  ; $7585: $36 $00
    inc a                                         ; $7587: $3c
    nop                                           ; $7588: $00
    ld b, d                                       ; $7589: $42
    nop                                           ; $758a: $00
    ld b, a                                       ; $758b: $47
    nop                                           ; $758c: $00
    ld c, h                                       ; $758d: $4c
    nop                                           ; $758e: $00
    ld d, b                                       ; $758f: $50
    nop                                           ; $7590: $00
    ld d, l                                       ; $7591: $55
    nop                                           ; $7592: $00
    ld e, c                                       ; $7593: $59
    nop                                           ; $7594: $00
    ld e, l                                       ; $7595: $5d
    nop                                           ; $7596: $00
    ld h, c                                       ; $7597: $61
    nop                                           ; $7598: $00
    ld h, l                                       ; $7599: $65
    nop                                           ; $759a: $00
    ld l, b                                       ; $759b: $68
    nop                                           ; $759c: $00
    ld l, h                                       ; $759d: $6c
    nop                                           ; $759e: $00
    ld l, a                                       ; $759f: $6f
    nop                                           ; $75a0: $00
    ld [hl], e                                    ; $75a1: $73
    nop                                           ; $75a2: $00
    halt                                          ; $75a3: $76
    nop                                           ; $75a4: $00
    ld a, d                                       ; $75a5: $7a
    nop                                           ; $75a6: $00
    ld a, l                                       ; $75a7: $7d
    nop                                           ; $75a8: $00
    add b                                         ; $75a9: $80
    nop                                           ; $75aa: $00
    add e                                         ; $75ab: $83
    nop                                           ; $75ac: $00
    add [hl]                                      ; $75ad: $86
    nop                                           ; $75ae: $00
    adc d                                         ; $75af: $8a
    nop                                           ; $75b0: $00
    adc h                                         ; $75b1: $8c
    nop                                           ; $75b2: $00
    sub b                                         ; $75b3: $90
    nop                                           ; $75b4: $00
    sub d                                         ; $75b5: $92
    nop                                           ; $75b6: $00
    sub l                                         ; $75b7: $95
    nop                                           ; $75b8: $00
    sbc b                                         ; $75b9: $98
    nop                                           ; $75ba: $00
    sbc e                                         ; $75bb: $9b
    nop                                           ; $75bc: $00
    sbc [hl]                                      ; $75bd: $9e
    nop                                           ; $75be: $00
    and c                                         ; $75bf: $a1
    nop                                           ; $75c0: $00
    and h                                         ; $75c1: $a4
    nop                                           ; $75c2: $00
    and a                                         ; $75c3: $a7
    nop                                           ; $75c4: $00
    xor d                                         ; $75c5: $aa
    nop                                           ; $75c6: $00
    xor l                                         ; $75c7: $ad
    nop                                           ; $75c8: $00
    xor a                                         ; $75c9: $af
    nop                                           ; $75ca: $00
    or d                                          ; $75cb: $b2
    nop                                           ; $75cc: $00
    or l                                          ; $75cd: $b5
    nop                                           ; $75ce: $00
    cp b                                          ; $75cf: $b8
    nop                                           ; $75d0: $00
    cp d                                          ; $75d1: $ba
    nop                                           ; $75d2: $00
    cp l                                          ; $75d3: $bd
    nop                                           ; $75d4: $00
    ret nz                                        ; $75d5: $c0

    nop                                           ; $75d6: $00
    jp nz, $c500                                  ; $75d7: $c2 $00 $c5

    nop                                           ; $75da: $00
    ret z                                         ; $75db: $c8

    nop                                           ; $75dc: $00
    jp z, $cd00                                   ; $75dd: $ca $00 $cd

    nop                                           ; $75e0: $00
    ret nc                                        ; $75e1: $d0

    nop                                           ; $75e2: $00
    db $d3                                        ; $75e3: $d3
    nop                                           ; $75e4: $00
    push de                                       ; $75e5: $d5
    nop                                           ; $75e6: $00
    rst $10                                       ; $75e7: $d7
    nop                                           ; $75e8: $00
    jp c, $dd00                                   ; $75e9: $da $00 $dd

    nop                                           ; $75ec: $00
    rst $18                                       ; $75ed: $df
    nop                                           ; $75ee: $00
    ld [c], a                                     ; $75ef: $e2
    nop                                           ; $75f0: $00
    push hl                                       ; $75f1: $e5
    nop                                           ; $75f2: $00
    add sp, $00                                   ; $75f3: $e8 $00
    ld [$ed00], a                                 ; $75f5: $ea $00 $ed
    nop                                           ; $75f8: $00
    rst $28                                       ; $75f9: $ef
    nop                                           ; $75fa: $00
    ld a, [c]                                     ; $75fb: $f2
    nop                                           ; $75fc: $00
    db $f4                                        ; $75fd: $f4
    nop                                           ; $75fe: $00
    rst $30                                       ; $75ff: $f7
    nop                                           ; $7600: $00
    ld sp, hl                                     ; $7601: $f9
    nop                                           ; $7602: $00
    db $fc                                        ; $7603: $fc
    nop                                           ; $7604: $00
    rst $38                                       ; $7605: $ff
    nop                                           ; $7606: $00
    ld bc, $0301                                  ; $7607: $01 $01 $03
    ld bc, $0106                                  ; $760a: $01 $06 $01
    add hl, bc                                    ; $760d: $09
    ld bc, $010b                                  ; $760e: $01 $0b $01
    dec c                                         ; $7611: $0d
    ld bc, $0110                                  ; $7612: $01 $10 $01
    inc de                                        ; $7615: $13
    ld bc, $0116                                  ; $7616: $01 $16 $01
    jr jr_03a_761c                                ; $7619: $18 $01

    dec de                                        ; $761b: $1b

jr_03a_761c:
    ld bc, $011d                                  ; $761c: $01 $1d $01
    rra                                           ; $761f: $1f
    ld bc, $0122                                  ; $7620: $01 $22 $01
    dec h                                         ; $7623: $25
    ld bc, $0127                                  ; $7624: $01 $27 $01
    ld a, [hl+]                                   ; $7627: $2a
    ld bc, $012c                                  ; $7628: $01 $2c $01
    cpl                                           ; $762b: $2f
    ld bc, $0132                                  ; $762c: $01 $32 $01
    inc [hl]                                      ; $762f: $34
    ld bc, $0137                                  ; $7630: $01 $37 $01
    add hl, sp                                    ; $7633: $39
    ld bc, $013c                                  ; $7634: $01 $3c $01
    ld a, $01                                     ; $7637: $3e $01
    ld b, c                                       ; $7639: $41
    ld bc, HeaderCGBFlag                          ; $763a: $01 $43 $01
    ld b, [hl]                                    ; $763d: $46
    ld bc, HeaderROMSize                          ; $763e: $01 $48 $01
    ld c, e                                       ; $7641: $4b
    ld bc, HeaderGlobalChecksum                   ; $7642: $01 $4e $01
    ld d, b                                       ; $7645: $50
    ld bc, $0152                                  ; $7646: $01 $52 $01
    ld d, l                                       ; $7649: $55
    ld bc, $0158                                  ; $764a: $01 $58 $01
    ld e, d                                       ; $764d: $5a
    ld bc, $015d                                  ; $764e: $01 $5d $01
    ld e, a                                       ; $7651: $5f
    ld bc, $0162                                  ; $7652: $01 $62 $01
    ld h, l                                       ; $7655: $65
    ld bc, $0167                                  ; $7656: $01 $67 $01
    ld l, d                                       ; $7659: $6a
    ld bc, $016c                                  ; $765a: $01 $6c $01
    ld l, a                                       ; $765d: $6f
    ld bc, $0172                                  ; $765e: $01 $72 $01
    ld [hl], h                                    ; $7661: $74
    ld bc, $0176                                  ; $7662: $01 $76 $01
    ld a, c                                       ; $7665: $79
    ld bc, $017c                                  ; $7666: $01 $7c $01
    ld a, [hl]                                    ; $7669: $7e
    ld bc, $0181                                  ; $766a: $01 $81 $01
    add e                                         ; $766d: $83
    ld bc, $0186                                  ; $766e: $01 $86 $01
    adc c                                         ; $7671: $89
    ld bc, $018b                                  ; $7672: $01 $8b $01
    adc [hl]                                      ; $7675: $8e
    ld bc, $0190                                  ; $7676: $01 $90 $01
    sub e                                         ; $7679: $93
    ld bc, $0195                                  ; $767a: $01 $95 $01
    sbc b                                         ; $767d: $98
    ld bc, $019b                                  ; $767e: $01 $9b $01
    sbc l                                         ; $7681: $9d
    ld bc, $01a0                                  ; $7682: $01 $a0 $01
    and d                                         ; $7685: $a2
    ld bc, $01a5                                  ; $7686: $01 $a5 $01
    and a                                         ; $7689: $a7
    ld bc, $01aa                                  ; $768a: $01 $aa $01
    xor l                                         ; $768d: $ad
    ld bc, $01af                                  ; $768e: $01 $af $01
    or d                                          ; $7691: $b2
    ld bc, $01b4                                  ; $7692: $01 $b4 $01
    or a                                          ; $7695: $b7
    ld bc, $01ba                                  ; $7696: $01 $ba $01
    cp l                                          ; $7699: $bd
    ld bc, $01bf                                  ; $769a: $01 $bf $01
    pop bc                                        ; $769d: $c1
    ld bc, $01c4                                  ; $769e: $01 $c4 $01
    add $01                                       ; $76a1: $c6 $01
    ret                                           ; $76a3: $c9


    ld bc, $01cc                                  ; $76a4: $01 $cc $01
    adc $01                                       ; $76a7: $ce $01
    pop de                                        ; $76a9: $d1
    ld bc, $01d3                                  ; $76aa: $01 $d3 $01
    sub $01                                       ; $76ad: $d6 $01
    reti                                          ; $76af: $d9


    ld bc, $01db                                  ; $76b0: $01 $db $01
    sbc $01                                       ; $76b3: $de $01
    inc bc                                        ; $76b5: $03
    nop                                           ; $76b6: $00
    jr z, jr_03a_76b9                             ; $76b7: $28 $00

jr_03a_76b9:
    jr nc, jr_03a_76bb                            ; $76b9: $30 $00

jr_03a_76bb:
    ld [hl], $00                                  ; $76bb: $36 $00
    ld b, b                                       ; $76bd: $40
    nop                                           ; $76be: $00
    ld b, [hl]                                    ; $76bf: $46
    nop                                           ; $76c0: $00
    ld c, e                                       ; $76c1: $4b
    nop                                           ; $76c2: $00
    ld d, b                                       ; $76c3: $50
    nop                                           ; $76c4: $00
    ld d, l                                       ; $76c5: $55
    nop                                           ; $76c6: $00
    ld e, d                                       ; $76c7: $5a
    nop                                           ; $76c8: $00
    ld e, [hl]                                    ; $76c9: $5e
    nop                                           ; $76ca: $00
    ld h, d                                       ; $76cb: $62
    nop                                           ; $76cc: $00
    ld h, [hl]                                    ; $76cd: $66
    nop                                           ; $76ce: $00
    ld l, d                                       ; $76cf: $6a
    nop                                           ; $76d0: $00
    ld l, [hl]                                    ; $76d1: $6e
    nop                                           ; $76d2: $00
    ld [hl], d                                    ; $76d3: $72
    nop                                           ; $76d4: $00
    ld [hl], l                                    ; $76d5: $75
    nop                                           ; $76d6: $00
    ld a, c                                       ; $76d7: $79
    nop                                           ; $76d8: $00
    ld a, h                                       ; $76d9: $7c
    nop                                           ; $76da: $00
    add b                                         ; $76db: $80
    nop                                           ; $76dc: $00
    add e                                         ; $76dd: $83
    nop                                           ; $76de: $00
    add [hl]                                      ; $76df: $86
    nop                                           ; $76e0: $00
    adc d                                         ; $76e1: $8a
    nop                                           ; $76e2: $00
    adc l                                         ; $76e3: $8d
    nop                                           ; $76e4: $00
    sub b                                         ; $76e5: $90
    nop                                           ; $76e6: $00
    sub e                                         ; $76e7: $93
    nop                                           ; $76e8: $00
    sub a                                         ; $76e9: $97
    nop                                           ; $76ea: $00
    sbc d                                         ; $76eb: $9a
    nop                                           ; $76ec: $00
    sbc l                                         ; $76ed: $9d
    nop                                           ; $76ee: $00
    and b                                         ; $76ef: $a0
    nop                                           ; $76f0: $00
    and h                                         ; $76f1: $a4
    nop                                           ; $76f2: $00
    and [hl]                                      ; $76f3: $a6
    nop                                           ; $76f4: $00
    xor c                                         ; $76f5: $a9
    nop                                           ; $76f6: $00
    xor h                                         ; $76f7: $ac
    nop                                           ; $76f8: $00
    xor a                                         ; $76f9: $af
    nop                                           ; $76fa: $00
    or d                                          ; $76fb: $b2
    nop                                           ; $76fc: $00
    or l                                          ; $76fd: $b5
    nop                                           ; $76fe: $00
    cp b                                          ; $76ff: $b8
    nop                                           ; $7700: $00
    cp e                                          ; $7701: $bb
    nop                                           ; $7702: $00
    cp [hl]                                       ; $7703: $be
    nop                                           ; $7704: $00
    pop bc                                        ; $7705: $c1
    nop                                           ; $7706: $00
    call nz, $c700                                ; $7707: $c4 $00 $c7
    nop                                           ; $770a: $00
    jp z, $cc00                                   ; $770b: $ca $00 $cc

    nop                                           ; $770e: $00
    rst $08                                       ; $770f: $cf
    nop                                           ; $7710: $00
    jp nc, $d500                                  ; $7711: $d2 $00 $d5

    nop                                           ; $7714: $00
    ret c                                         ; $7715: $d8

    nop                                           ; $7716: $00
    jp c, $dd00                                   ; $7717: $da $00 $dd

    nop                                           ; $771a: $00
    ldh [rP1], a                                  ; $771b: $e0 $00
    db $e3                                        ; $771d: $e3
    nop                                           ; $771e: $00
    and $00                                       ; $771f: $e6 $00
    jp hl                                         ; $7721: $e9


    nop                                           ; $7722: $00
    db $eb                                        ; $7723: $eb
    nop                                           ; $7724: $00
    xor $00                                       ; $7725: $ee $00
    pop af                                        ; $7727: $f1
    nop                                           ; $7728: $00
    db $f4                                        ; $7729: $f4
    nop                                           ; $772a: $00
    or $00                                        ; $772b: $f6 $00
    ld sp, hl                                     ; $772d: $f9
    nop                                           ; $772e: $00
    db $fc                                        ; $772f: $fc
    nop                                           ; $7730: $00
    rst $38                                       ; $7731: $ff
    nop                                           ; $7732: $00
    ld bc, $0401                                  ; $7733: $01 $01 $04
    ld bc, $0107                                  ; $7736: $01 $07 $01
    ld a, [bc]                                    ; $7739: $0a
    ld bc, $010d                                  ; $773a: $01 $0d $01
    rrca                                          ; $773d: $0f
    ld bc, $0112                                  ; $773e: $01 $12 $01
    dec d                                         ; $7741: $15
    ld bc, $0118                                  ; $7742: $01 $18 $01
    ld a, [de]                                    ; $7745: $1a
    ld bc, $011d                                  ; $7746: $01 $1d $01
    jr nz, jr_03a_774c                            ; $7749: $20 $01

    ld [hl+], a                                   ; $774b: $22

jr_03a_774c:
    ld bc, $0125                                  ; $774c: $01 $25 $01
    jr z, jr_03a_7752                             ; $774f: $28 $01

    ld a, [hl+]                                   ; $7751: $2a

jr_03a_7752:
    ld bc, $012e                                  ; $7752: $01 $2e $01
    jr nc, jr_03a_7758                            ; $7755: $30 $01

    inc sp                                        ; $7757: $33

jr_03a_7758:
    ld bc, $0135                                  ; $7758: $01 $35 $01
    jr c, jr_03a_775e                             ; $775b: $38 $01

    dec sp                                        ; $775d: $3b

jr_03a_775e:
    ld bc, $013e                                  ; $775e: $01 $3e $01
    ld b, c                                       ; $7761: $41
    ld bc, HeaderCGBFlag                          ; $7762: $01 $43 $01
    ld b, [hl]                                    ; $7765: $46
    ld bc, HeaderRAMSize                          ; $7766: $01 $49 $01
    ld c, h                                       ; $7769: $4c
    ld bc, HeaderGlobalChecksum                   ; $776a: $01 $4e $01
    ld d, c                                       ; $776d: $51
    ld bc, $0154                                  ; $776e: $01 $54 $01
    ld d, a                                       ; $7771: $57
    ld bc, $0159                                  ; $7772: $01 $59 $01
    ld e, h                                       ; $7775: $5c
    ld bc, $015f                                  ; $7776: $01 $5f $01
    ld h, d                                       ; $7779: $62
    ld bc, $0165                                  ; $777a: $01 $65 $01
    ld h, a                                       ; $777d: $67
    ld bc, $016a                                  ; $777e: $01 $6a $01
    ld l, h                                       ; $7781: $6c
    ld bc, $016f                                  ; $7782: $01 $6f $01
    ld [hl], d                                    ; $7785: $72
    ld bc, $0175                                  ; $7786: $01 $75 $01
    ld a, b                                       ; $7789: $78
    ld bc, $017a                                  ; $778a: $01 $7a $01
    ld a, l                                       ; $778d: $7d
    ld bc, $0180                                  ; $778e: $01 $80 $01
    add d                                         ; $7791: $82
    ld bc, $0185                                  ; $7792: $01 $85 $01
    adc b                                         ; $7795: $88
    ld bc, $018b                                  ; $7796: $01 $8b $01
    adc [hl]                                      ; $7799: $8e
    ld bc, $0190                                  ; $779a: $01 $90 $01
    sub e                                         ; $779d: $93
    ld bc, $0196                                  ; $779e: $01 $96 $01
    sbc c                                         ; $77a1: $99
    ld bc, $019c                                  ; $77a2: $01 $9c $01
    sbc [hl]                                      ; $77a5: $9e
    ld bc, $01a1                                  ; $77a6: $01 $a1 $01
    and h                                         ; $77a9: $a4
    ld bc, $01a7                                  ; $77aa: $01 $a7 $01
    xor c                                         ; $77ad: $a9
    ld bc, $01ac                                  ; $77ae: $01 $ac $01
    xor a                                         ; $77b1: $af
    ld bc, $01b2                                  ; $77b2: $01 $b2 $01
    or l                                          ; $77b5: $b5
    ld bc, $01b7                                  ; $77b6: $01 $b7 $01
    cp d                                          ; $77b9: $ba
    ld bc, $01bd                                  ; $77ba: $01 $bd $01
    ret nz                                        ; $77bd: $c0

    ld bc, $01c3                                  ; $77be: $01 $c3 $01
    push bc                                       ; $77c1: $c5
    ld bc, $01c8                                  ; $77c2: $01 $c8 $01
    rlc c                                         ; $77c5: $cb $01
    call $d001                                    ; $77c7: $cd $01 $d0
    ld bc, $01d3                                  ; $77ca: $01 $d3 $01
    sub $01                                       ; $77cd: $d6 $01
    reti                                          ; $77cf: $d9


    ld bc, $01db                                  ; $77d0: $01 $db $01
    sbc $01                                       ; $77d3: $de $01
    inc b                                         ; $77d5: $04
    nop                                           ; $77d6: $00
    inc l                                         ; $77d7: $2c
    nop                                           ; $77d8: $00
    ld [hl-], a                                   ; $77d9: $32
    nop                                           ; $77da: $00
    ld a, [hl-]                                   ; $77db: $3a
    nop                                           ; $77dc: $00
    ld b, h                                       ; $77dd: $44
    nop                                           ; $77de: $00
    ld c, d                                       ; $77df: $4a
    nop                                           ; $77e0: $00
    ld d, b                                       ; $77e1: $50
    nop                                           ; $77e2: $00
    ld d, l                                       ; $77e3: $55
    nop                                           ; $77e4: $00
    ld e, d                                       ; $77e5: $5a
    nop                                           ; $77e6: $00
    ld e, a                                       ; $77e7: $5f
    nop                                           ; $77e8: $00
    ld h, h                                       ; $77e9: $64
    nop                                           ; $77ea: $00
    ld l, b                                       ; $77eb: $68
    nop                                           ; $77ec: $00
    ld l, h                                       ; $77ed: $6c
    nop                                           ; $77ee: $00
    ld [hl], b                                    ; $77ef: $70
    nop                                           ; $77f0: $00
    ld [hl], h                                    ; $77f1: $74
    nop                                           ; $77f2: $00
    ld a, b                                       ; $77f3: $78
    nop                                           ; $77f4: $00
    ld a, h                                       ; $77f5: $7c
    nop                                           ; $77f6: $00
    add b                                         ; $77f7: $80
    nop                                           ; $77f8: $00
    add e                                         ; $77f9: $83
    nop                                           ; $77fa: $00
    add a                                         ; $77fb: $87
    nop                                           ; $77fc: $00
    adc e                                         ; $77fd: $8b
    nop                                           ; $77fe: $00
    adc [hl]                                      ; $77ff: $8e
    nop                                           ; $7800: $00
    sub c                                         ; $7801: $91
    nop                                           ; $7802: $00
    sub l                                         ; $7803: $95
    nop                                           ; $7804: $00
    sbc c                                         ; $7805: $99
    nop                                           ; $7806: $00
    sbc h                                         ; $7807: $9c
    nop                                           ; $7808: $00
    sbc a                                         ; $7809: $9f
    nop                                           ; $780a: $00
    and d                                         ; $780b: $a2
    nop                                           ; $780c: $00
    and [hl]                                      ; $780d: $a6
    nop                                           ; $780e: $00
    xor c                                         ; $780f: $a9
    nop                                           ; $7810: $00
    xor h                                         ; $7811: $ac
    nop                                           ; $7812: $00
    xor a                                         ; $7813: $af
    nop                                           ; $7814: $00
    or e                                          ; $7815: $b3
    nop                                           ; $7816: $00
    or [hl]                                       ; $7817: $b6
    nop                                           ; $7818: $00
    cp c                                          ; $7819: $b9
    nop                                           ; $781a: $00
    cp h                                          ; $781b: $bc
    nop                                           ; $781c: $00
    ret nz                                        ; $781d: $c0

    nop                                           ; $781e: $00
    jp nz, $c600                                  ; $781f: $c2 $00 $c6

    nop                                           ; $7822: $00
    ret                                           ; $7823: $c9


    nop                                           ; $7824: $00
    call z, $cf00                                 ; $7825: $cc $00 $cf
    nop                                           ; $7828: $00
    jp nc, $d500                                  ; $7829: $d2 $00 $d5

    nop                                           ; $782c: $00
    ret c                                         ; $782d: $d8

    nop                                           ; $782e: $00
    db $db                                        ; $782f: $db
    nop                                           ; $7830: $00
    sbc $00                                       ; $7831: $de $00
    pop hl                                        ; $7833: $e1
    nop                                           ; $7834: $00
    db $e4                                        ; $7835: $e4
    nop                                           ; $7836: $00
    rst $20                                       ; $7837: $e7
    nop                                           ; $7838: $00
    ld [$ed00], a                                 ; $7839: $ea $00 $ed
    nop                                           ; $783c: $00
    ldh a, [rP1]                                  ; $783d: $f0 $00
    di                                            ; $783f: $f3
    nop                                           ; $7840: $00
    or $00                                        ; $7841: $f6 $00
    ld sp, hl                                     ; $7843: $f9
    nop                                           ; $7844: $00
    db $fc                                        ; $7845: $fc
    nop                                           ; $7846: $00
    rst $38                                       ; $7847: $ff
    nop                                           ; $7848: $00
    ld [bc], a                                    ; $7849: $02
    ld bc, $0105                                  ; $784a: $01 $05 $01
    ld [$0b01], sp                                ; $784d: $08 $01 $0b
    ld bc, $010e                                  ; $7850: $01 $0e $01
    ld de, $1401                                  ; $7853: $11 $01 $14
    ld bc, $0117                                  ; $7856: $01 $17 $01
    ld a, [de]                                    ; $7859: $1a
    ld bc, $011d                                  ; $785a: $01 $1d $01
    jr nz, jr_03a_7860                            ; $785d: $20 $01

    inc hl                                        ; $785f: $23

jr_03a_7860:
    ld bc, $0126                                  ; $7860: $01 $26 $01
    add hl, hl                                    ; $7863: $29
    ld bc, $012b                                  ; $7864: $01 $2b $01
    ld l, $01                                     ; $7867: $2e $01
    ld [hl-], a                                   ; $7869: $32
    ld bc, $0135                                  ; $786a: $01 $35 $01
    scf                                           ; $786d: $37
    ld bc, $013b                                  ; $786e: $01 $3b $01
    dec a                                         ; $7871: $3d
    ld bc, $0140                                  ; $7872: $01 $40 $01
    ld b, e                                       ; $7875: $43
    ld bc, HeaderSGBFlag                          ; $7876: $01 $46 $01
    ld c, c                                       ; $7879: $49
    ld bc, HeaderComplementCheck                  ; $787a: $01 $4d $01
    ld c, a                                       ; $787d: $4f
    ld bc, $0152                                  ; $787e: $01 $52 $01
    ld d, l                                       ; $7881: $55
    ld bc, $0158                                  ; $7882: $01 $58 $01
    ld e, e                                       ; $7885: $5b
    ld bc, $015e                                  ; $7886: $01 $5e $01
    ld h, c                                       ; $7889: $61
    ld bc, $0164                                  ; $788a: $01 $64 $01
    ld h, a                                       ; $788d: $67
    ld bc, $016a                                  ; $788e: $01 $6a $01
    ld l, l                                       ; $7891: $6d
    ld bc, $016f                                  ; $7892: $01 $6f $01
    ld [hl], e                                    ; $7895: $73
    ld bc, $0176                                  ; $7896: $01 $76 $01
    ld a, c                                       ; $7899: $79
    ld bc, $017b                                  ; $789a: $01 $7b $01
    ld a, a                                       ; $789d: $7f
    ld bc, $0181                                  ; $789e: $01 $81 $01
    add l                                         ; $78a1: $85
    ld bc, $0188                                  ; $78a2: $01 $88 $01
    adc d                                         ; $78a5: $8a
    ld bc, $018d                                  ; $78a6: $01 $8d $01
    sub b                                         ; $78a9: $90
    ld bc, $0194                                  ; $78aa: $01 $94 $01
    sub [hl]                                      ; $78ad: $96
    ld bc, $0199                                  ; $78ae: $01 $99 $01
    sbc l                                         ; $78b1: $9d
    ld bc, $019f                                  ; $78b2: $01 $9f $01
    and d                                         ; $78b5: $a2
    ld bc, $01a6                                  ; $78b6: $01 $a6 $01
    xor b                                         ; $78b9: $a8
    ld bc, $01ab                                  ; $78ba: $01 $ab $01
    xor [hl]                                      ; $78bd: $ae
    ld bc, $01b1                                  ; $78be: $01 $b1 $01
    or h                                          ; $78c1: $b4
    ld bc, $01b7                                  ; $78c2: $01 $b7 $01
    cp d                                          ; $78c5: $ba
    ld bc, $01bd                                  ; $78c6: $01 $bd $01
    pop bc                                        ; $78c9: $c1
    ld bc, $01c3                                  ; $78ca: $01 $c3 $01
    add $01                                       ; $78cd: $c6 $01
    ret                                           ; $78cf: $c9


    ld bc, $01cd                                  ; $78d0: $01 $cd $01
    rst $08                                       ; $78d3: $cf
    ld bc, $01d2                                  ; $78d4: $01 $d2 $01
    push de                                       ; $78d7: $d5
    ld bc, $01d8                                  ; $78d8: $01 $d8 $01
    db $db                                        ; $78db: $db
    ld bc, $01de                                  ; $78dc: $01 $de $01
    inc bc                                        ; $78df: $03
    nop                                           ; $78e0: $00
    dec hl                                        ; $78e1: $2b
    nop                                           ; $78e2: $00
    inc [hl]                                      ; $78e3: $34
    nop                                           ; $78e4: $00
    inc a                                         ; $78e5: $3c
    nop                                           ; $78e6: $00
    ld b, e                                       ; $78e7: $43
    nop                                           ; $78e8: $00
    ld c, l                                       ; $78e9: $4d
    nop                                           ; $78ea: $00
    ld d, e                                       ; $78eb: $53
    nop                                           ; $78ec: $00
    ld e, b                                       ; $78ed: $58
    nop                                           ; $78ee: $00
    ld e, l                                       ; $78ef: $5d
    nop                                           ; $78f0: $00
    ld h, e                                       ; $78f1: $63
    nop                                           ; $78f2: $00
    ld h, a                                       ; $78f3: $67
    nop                                           ; $78f4: $00
    ld l, h                                       ; $78f5: $6c
    nop                                           ; $78f6: $00
    ld [hl], c                                    ; $78f7: $71
    nop                                           ; $78f8: $00
    ld [hl], l                                    ; $78f9: $75
    nop                                           ; $78fa: $00
    ld a, c                                       ; $78fb: $79
    nop                                           ; $78fc: $00
    ld a, l                                       ; $78fd: $7d
    nop                                           ; $78fe: $00
    add c                                         ; $78ff: $81
    nop                                           ; $7900: $00
    add [hl]                                      ; $7901: $86
    nop                                           ; $7902: $00
    adc c                                         ; $7903: $89
    nop                                           ; $7904: $00
    adc [hl]                                      ; $7905: $8e
    nop                                           ; $7906: $00
    sub c                                         ; $7907: $91
    nop                                           ; $7908: $00
    sub l                                         ; $7909: $95
    nop                                           ; $790a: $00
    sbc c                                         ; $790b: $99
    nop                                           ; $790c: $00
    sbc l                                         ; $790d: $9d
    nop                                           ; $790e: $00
    and b                                         ; $790f: $a0
    nop                                           ; $7910: $00
    and l                                         ; $7911: $a5
    nop                                           ; $7912: $00
    xor b                                         ; $7913: $a8
    nop                                           ; $7914: $00
    xor h                                         ; $7915: $ac
    nop                                           ; $7916: $00
    or b                                          ; $7917: $b0
    nop                                           ; $7918: $00
    or e                                          ; $7919: $b3
    nop                                           ; $791a: $00
    or a                                          ; $791b: $b7
    nop                                           ; $791c: $00
    cp d                                          ; $791d: $ba
    nop                                           ; $791e: $00
    cp l                                          ; $791f: $bd
    nop                                           ; $7920: $00
    pop bc                                        ; $7921: $c1
    nop                                           ; $7922: $00
    push bc                                       ; $7923: $c5
    nop                                           ; $7924: $00
    ret z                                         ; $7925: $c8

    nop                                           ; $7926: $00
    call z, $cf00                                 ; $7927: $cc $00 $cf
    nop                                           ; $792a: $00
    jp nc, $d600                                  ; $792b: $d2 $00 $d6

    nop                                           ; $792e: $00
    jp c, $dd00                                   ; $792f: $da $00 $dd

    nop                                           ; $7932: $00
    pop hl                                        ; $7933: $e1
    nop                                           ; $7934: $00
    db $e4                                        ; $7935: $e4
    nop                                           ; $7936: $00
    rst $20                                       ; $7937: $e7
    nop                                           ; $7938: $00
    ld [$ee00], a                                 ; $7939: $ea $00 $ee
    nop                                           ; $793c: $00
    pop af                                        ; $793d: $f1
    nop                                           ; $793e: $00
    push af                                       ; $793f: $f5
    nop                                           ; $7940: $00
    ld hl, sp+$00                                 ; $7941: $f8 $00
    db $fc                                        ; $7943: $fc
    nop                                           ; $7944: $00
    rst $38                                       ; $7945: $ff
    nop                                           ; $7946: $00
    inc bc                                        ; $7947: $03
    ld bc, $0106                                  ; $7948: $01 $06 $01
    add hl, bc                                    ; $794b: $09
    ld bc, $010c                                  ; $794c: $01 $0c $01
    db $10                                        ; $794f: $10
    ld bc, $0113                                  ; $7950: $01 $13 $01
    rla                                           ; $7953: $17
    ld bc, $011a                                  ; $7954: $01 $1a $01
    dec e                                         ; $7957: $1d
    ld bc, $0121                                  ; $7958: $01 $21 $01
    inc h                                         ; $795b: $24
    ld bc, $0127                                  ; $795c: $01 $27 $01
    dec hl                                        ; $795f: $2b
    ld bc, $012e                                  ; $7960: $01 $2e $01
    ld sp, $3501                                  ; $7963: $31 $01 $35
    ld bc, $0138                                  ; $7966: $01 $38 $01
    dec sp                                        ; $7969: $3b
    ld bc, HeaderManufacturerCode                 ; $796a: $01 $3f $01
    ld b, d                                       ; $796d: $42
    ld bc, $0145                                  ; $796e: $01 $45 $01
    ld c, c                                       ; $7971: $49
    ld bc, HeaderMaskROMVersion                   ; $7972: $01 $4c $01
    ld d, b                                       ; $7975: $50
    ld bc, $0153                                  ; $7976: $01 $53 $01
    ld d, [hl]                                    ; $7979: $56
    ld bc, $015a                                  ; $797a: $01 $5a $01
    ld e, l                                       ; $797d: $5d
    ld bc, $0161                                  ; $797e: $01 $61 $01
    ld h, h                                       ; $7981: $64
    ld bc, $0167                                  ; $7982: $01 $67 $01
    ld l, e                                       ; $7985: $6b
    ld bc, $016e                                  ; $7986: $01 $6e $01
    ld [hl], c                                    ; $7989: $71
    ld bc, $0175                                  ; $798a: $01 $75 $01
    ld a, b                                       ; $798d: $78
    ld bc, $017c                                  ; $798e: $01 $7c $01
    ld a, a                                       ; $7991: $7f
    ld bc, $0183                                  ; $7992: $01 $83 $01
    add [hl]                                      ; $7995: $86
    ld bc, $0189                                  ; $7996: $01 $89 $01
    adc h                                         ; $7999: $8c
    ld bc, $0190                                  ; $799a: $01 $90 $01
    sub h                                         ; $799d: $94
    ld bc, $0197                                  ; $799e: $01 $97 $01
    sbc d                                         ; $79a1: $9a
    ld bc, $019e                                  ; $79a2: $01 $9e $01
    and c                                         ; $79a5: $a1
    ld bc, $01a5                                  ; $79a6: $01 $a5 $01
    xor b                                         ; $79a9: $a8
    ld bc, $01ac                                  ; $79aa: $01 $ac $01
    xor a                                         ; $79ad: $af
    ld bc, $01b2                                  ; $79ae: $01 $b2 $01
    or [hl]                                       ; $79b1: $b6
    ld bc, $01b9                                  ; $79b2: $01 $b9 $01
    cp l                                          ; $79b5: $bd
    ld bc, $01c0                                  ; $79b6: $01 $c0 $01
    call nz, $c701                                ; $79b9: $c4 $01 $c7
    ld bc, $01cb                                  ; $79bc: $01 $cb $01
    adc $01                                       ; $79bf: $ce $01
    pop de                                        ; $79c1: $d1
    ld bc, $01d5                                  ; $79c2: $01 $d5 $01
    ret c                                         ; $79c5: $d8

    ld bc, $01dc                                  ; $79c6: $01 $dc $01
    rst $18                                       ; $79c9: $df
    ld bc, $0003                                  ; $79ca: $01 $03 $00
    jr nc, jr_03a_79cf                            ; $79cd: $30 $00

jr_03a_79cf:
    add hl, sp                                    ; $79cf: $39
    nop                                           ; $79d0: $00
    ld b, d                                       ; $79d1: $42
    nop                                           ; $79d2: $00
    ld c, e                                       ; $79d3: $4b
    nop                                           ; $79d4: $00
    ld d, d                                       ; $79d5: $52
    nop                                           ; $79d6: $00
    ld e, e                                       ; $79d7: $5b
    nop                                           ; $79d8: $00
    ld h, c                                       ; $79d9: $61
    nop                                           ; $79da: $00
    ld h, [hl]                                    ; $79db: $66
    nop                                           ; $79dc: $00
    ld l, h                                       ; $79dd: $6c
    nop                                           ; $79de: $00
    ld [hl], d                                    ; $79df: $72
    nop                                           ; $79e0: $00
    ld [hl], a                                    ; $79e1: $77
    nop                                           ; $79e2: $00
    ld a, h                                       ; $79e3: $7c
    nop                                           ; $79e4: $00
    add c                                         ; $79e5: $81
    nop                                           ; $79e6: $00
    add l                                         ; $79e7: $85
    nop                                           ; $79e8: $00
    adc d                                         ; $79e9: $8a
    nop                                           ; $79ea: $00
    adc a                                         ; $79eb: $8f
    nop                                           ; $79ec: $00
    sub e                                         ; $79ed: $93
    nop                                           ; $79ee: $00
    sbc b                                         ; $79ef: $98
    nop                                           ; $79f0: $00
    sbc h                                         ; $79f1: $9c
    nop                                           ; $79f2: $00
    and c                                         ; $79f3: $a1
    nop                                           ; $79f4: $00
    and l                                         ; $79f5: $a5
    nop                                           ; $79f6: $00
    xor c                                         ; $79f7: $a9
    nop                                           ; $79f8: $00
    xor l                                         ; $79f9: $ad
    nop                                           ; $79fa: $00
    or d                                          ; $79fb: $b2
    nop                                           ; $79fc: $00
    or [hl]                                       ; $79fd: $b6
    nop                                           ; $79fe: $00
    cp d                                          ; $79ff: $ba
    nop                                           ; $7a00: $00
    cp [hl]                                       ; $7a01: $be
    nop                                           ; $7a02: $00
    jp nz, $c600                                  ; $7a03: $c2 $00 $c6

    nop                                           ; $7a06: $00
    jp z, $cf00                                   ; $7a07: $ca $00 $cf

    nop                                           ; $7a0a: $00
    db $d3                                        ; $7a0b: $d3
    nop                                           ; $7a0c: $00
    rst $10                                       ; $7a0d: $d7
    nop                                           ; $7a0e: $00
    jp c, $df00                                   ; $7a0f: $da $00 $df

    nop                                           ; $7a12: $00
    ld [c], a                                     ; $7a13: $e2
    nop                                           ; $7a14: $00
    and $00                                       ; $7a15: $e6 $00
    ld [$ee00], a                                 ; $7a17: $ea $00 $ee
    nop                                           ; $7a1a: $00
    ld a, [c]                                     ; $7a1b: $f2
    nop                                           ; $7a1c: $00
    or $00                                        ; $7a1d: $f6 $00
    ld a, [$fe00]                                 ; $7a1f: $fa $00 $fe
    nop                                           ; $7a22: $00
    ld [bc], a                                    ; $7a23: $02
    ld bc, $0106                                  ; $7a24: $01 $06 $01
    ld a, [bc]                                    ; $7a27: $0a
    ld bc, $010e                                  ; $7a28: $01 $0e $01
    ld de, $1501                                  ; $7a2b: $11 $01 $15
    ld bc, $011a                                  ; $7a2e: $01 $1a $01
    dec e                                         ; $7a31: $1d
    ld bc, $0121                                  ; $7a32: $01 $21 $01
    dec h                                         ; $7a35: $25
    ld bc, $0129                                  ; $7a36: $01 $29 $01
    dec l                                         ; $7a39: $2d
    ld bc, $0131                                  ; $7a3a: $01 $31 $01
    dec [hl]                                      ; $7a3d: $35
    ld bc, $0139                                  ; $7a3e: $01 $39 $01
    inc a                                         ; $7a41: $3c
    ld bc, $0140                                  ; $7a42: $01 $40 $01
    ld b, h                                       ; $7a45: $44
    ld bc, HeaderROMSize                          ; $7a46: $01 $48 $01
    ld c, h                                       ; $7a49: $4c
    ld bc, $014f                                  ; $7a4a: $01 $4f $01
    ld d, h                                       ; $7a4d: $54
    ld bc, $0158                                  ; $7a4e: $01 $58 $01
    ld e, h                                       ; $7a51: $5c
    ld bc, $015f                                  ; $7a52: $01 $5f $01
    ld h, e                                       ; $7a55: $63
    ld bc, $0168                                  ; $7a56: $01 $68 $01
    ld l, e                                       ; $7a59: $6b
    ld bc, $0170                                  ; $7a5a: $01 $70 $01
    ld [hl], e                                    ; $7a5d: $73
    ld bc, $0177                                  ; $7a5e: $01 $77 $01
    ld a, e                                       ; $7a61: $7b
    ld bc, $017f                                  ; $7a62: $01 $7f $01
    add e                                         ; $7a65: $83
    ld bc, $0187                                  ; $7a66: $01 $87 $01
    adc e                                         ; $7a69: $8b
    ld bc, $018f                                  ; $7a6a: $01 $8f $01
    sub e                                         ; $7a6d: $93
    ld bc, $0197                                  ; $7a6e: $01 $97 $01
    sbc d                                         ; $7a71: $9a
    ld bc, $019e                                  ; $7a72: $01 $9e $01
    and d                                         ; $7a75: $a2
    ld bc, $01a6                                  ; $7a76: $01 $a6 $01
    xor d                                         ; $7a79: $aa
    ld bc, $01ae                                  ; $7a7a: $01 $ae $01
    or d                                          ; $7a7d: $b2
    ld bc, $01b6                                  ; $7a7e: $01 $b6 $01
    cp d                                          ; $7a81: $ba
    ld bc, $01be                                  ; $7a82: $01 $be $01
    jp nz, $c601                                  ; $7a85: $c2 $01 $c6

    ld bc, $01ca                                  ; $7a88: $01 $ca $01
    call $d101                                    ; $7a8b: $cd $01 $d1
    ld bc, $01d6                                  ; $7a8e: $01 $d6 $01
    jp c, $de01                                   ; $7a91: $da $01 $de

    ld bc, $0003                                  ; $7a94: $01 $03 $00
    ld [hl], $00                                  ; $7a97: $36 $00
    ld b, d                                       ; $7a99: $42
    nop                                           ; $7a9a: $00
    ld c, l                                       ; $7a9b: $4d
    nop                                           ; $7a9c: $00
    ld d, [hl]                                    ; $7a9d: $56
    nop                                           ; $7a9e: $00
    ld e, a                                       ; $7a9f: $5f
    nop                                           ; $7aa0: $00
    ld h, [hl]                                    ; $7aa1: $66
    nop                                           ; $7aa2: $00
    ld [hl], b                                    ; $7aa3: $70
    nop                                           ; $7aa4: $00
    ld [hl], a                                    ; $7aa5: $77
    nop                                           ; $7aa6: $00
    ld a, l                                       ; $7aa7: $7d
    nop                                           ; $7aa8: $00
    add h                                         ; $7aa9: $84
    nop                                           ; $7aaa: $00
    adc c                                         ; $7aab: $89
    nop                                           ; $7aac: $00
    sub b                                         ; $7aad: $90
    nop                                           ; $7aae: $00
    sub l                                         ; $7aaf: $95
    nop                                           ; $7ab0: $00
    sbc e                                         ; $7ab1: $9b
    nop                                           ; $7ab2: $00
    and b                                         ; $7ab3: $a0
    nop                                           ; $7ab4: $00
    and [hl]                                      ; $7ab5: $a6
    nop                                           ; $7ab6: $00
    xor e                                         ; $7ab7: $ab
    nop                                           ; $7ab8: $00
    or c                                          ; $7ab9: $b1
    nop                                           ; $7aba: $00
    or l                                          ; $7abb: $b5
    nop                                           ; $7abc: $00
    cp e                                          ; $7abd: $bb
    nop                                           ; $7abe: $00
    ret nz                                        ; $7abf: $c0

    nop                                           ; $7ac0: $00
    push bc                                       ; $7ac1: $c5
    nop                                           ; $7ac2: $00
    jp z, $cf00                                   ; $7ac3: $ca $00 $cf

    nop                                           ; $7ac6: $00
    call nc, $da00                                ; $7ac7: $d4 $00 $da
    nop                                           ; $7aca: $00
    sbc $00                                       ; $7acb: $de $00
    db $e3                                        ; $7acd: $e3
    nop                                           ; $7ace: $00
    add sp, $00                                   ; $7acf: $e8 $00
    db $ed                                        ; $7ad1: $ed
    nop                                           ; $7ad2: $00
    ld a, [c]                                     ; $7ad3: $f2
    nop                                           ; $7ad4: $00
    rst $30                                       ; $7ad5: $f7
    nop                                           ; $7ad6: $00
    db $fc                                        ; $7ad7: $fc
    nop                                           ; $7ad8: $00
    nop                                           ; $7ad9: $00
    ld bc, $0105                                  ; $7ada: $01 $05 $01
    ld a, [bc]                                    ; $7add: $0a
    ld bc, $010f                                  ; $7ade: $01 $0f $01
    inc d                                         ; $7ae1: $14
    ld bc, $0118                                  ; $7ae2: $01 $18 $01
    dec e                                         ; $7ae5: $1d
    ld bc, $0122                                  ; $7ae6: $01 $22 $01
    daa                                           ; $7ae9: $27
    ld bc, $012b                                  ; $7aea: $01 $2b $01
    jr nc, jr_03a_7af0                            ; $7aed: $30 $01

    dec [hl]                                      ; $7aef: $35

jr_03a_7af0:
    ld bc, $013a                                  ; $7af0: $01 $3a $01
    ld a, $01                                     ; $7af3: $3e $01
    ld b, e                                       ; $7af5: $43
    ld bc, HeaderCartridgeType                    ; $7af6: $01 $47 $01
    ld c, l                                       ; $7af9: $4d
    ld bc, $0151                                  ; $7afa: $01 $51 $01
    ld d, [hl]                                    ; $7afd: $56
    ld bc, $015b                                  ; $7afe: $01 $5b $01
    ld e, a                                       ; $7b01: $5f
    ld bc, $0164                                  ; $7b02: $01 $64 $01
    ld l, c                                       ; $7b05: $69
    ld bc, $016d                                  ; $7b06: $01 $6d $01
    ld [hl], d                                    ; $7b09: $72
    ld bc, $0177                                  ; $7b0a: $01 $77 $01
    ld a, h                                       ; $7b0d: $7c
    ld bc, $0180                                  ; $7b0e: $01 $80 $01
    add l                                         ; $7b11: $85
    ld bc, $018a                                  ; $7b12: $01 $8a $01
    adc [hl]                                      ; $7b15: $8e
    ld bc, $0193                                  ; $7b16: $01 $93 $01
    sbc b                                         ; $7b19: $98
    ld bc, $019d                                  ; $7b1a: $01 $9d $01
    and c                                         ; $7b1d: $a1
    ld bc, $01a6                                  ; $7b1e: $01 $a6 $01
    xor e                                         ; $7b21: $ab
    ld bc, $01b0                                  ; $7b22: $01 $b0 $01
    or h                                          ; $7b25: $b4
    ld bc, $01b9                                  ; $7b26: $01 $b9 $01
    cp [hl]                                       ; $7b29: $be
    ld bc, $01c3                                  ; $7b2a: $01 $c3 $01
    rst $00                                       ; $7b2d: $c7
    ld bc, $01cc                                  ; $7b2e: $01 $cc $01
    pop de                                        ; $7b31: $d1
    ld bc, $01d6                                  ; $7b32: $01 $d6 $01
    jp c, $df01                                   ; $7b35: $da $01 $df

    ld bc, $7b53                                  ; $7b38: $01 $53 $7b
    sub c                                         ; $7b3b: $91
    ld a, e                                       ; $7b3c: $7b
    rst $08                                       ; $7b3d: $cf
    ld a, e                                       ; $7b3e: $7b
    dec c                                         ; $7b3f: $0d
    ld a, h                                       ; $7b40: $7c
    ld c, e                                       ; $7b41: $4b
    ld a, h                                       ; $7b42: $7c
    adc c                                         ; $7b43: $89
    ld a, h                                       ; $7b44: $7c
    rst $00                                       ; $7b45: $c7
    ld a, h                                       ; $7b46: $7c
    dec b                                         ; $7b47: $05
    ld a, l                                       ; $7b48: $7d
    ld b, e                                       ; $7b49: $43
    ld a, l                                       ; $7b4a: $7d
    add c                                         ; $7b4b: $81
    ld a, l                                       ; $7b4c: $7d
    cp a                                          ; $7b4d: $bf
    ld a, l                                       ; $7b4e: $7d
    db $fd                                        ; $7b4f: $fd
    ld a, l                                       ; $7b50: $7d
    dec sp                                        ; $7b51: $3b
    ld a, [hl]                                    ; $7b52: $7e
    ld bc, $1000                                  ; $7b53: $01 $00 $10
    nop                                           ; $7b56: $00
    add hl, de                                    ; $7b57: $19
    nop                                           ; $7b58: $00
    ld [hl+], a                                   ; $7b59: $22
    nop                                           ; $7b5a: $00
    jr z, jr_03a_7b5d                             ; $7b5b: $28 $00

jr_03a_7b5d:
    ld l, $00                                     ; $7b5d: $2e $00
    inc [hl]                                      ; $7b5f: $34
    nop                                           ; $7b60: $00
    ld a, [hl-]                                   ; $7b61: $3a
    nop                                           ; $7b62: $00
    ld a, $00                                     ; $7b63: $3e $00
    ld b, d                                       ; $7b65: $42
    nop                                           ; $7b66: $00
    ld b, [hl]                                    ; $7b67: $46
    nop                                           ; $7b68: $00
    ld c, c                                       ; $7b69: $49
    nop                                           ; $7b6a: $00
    ld c, l                                       ; $7b6b: $4d
    nop                                           ; $7b6c: $00
    ld d, b                                       ; $7b6d: $50
    nop                                           ; $7b6e: $00
    ld d, h                                       ; $7b6f: $54
    nop                                           ; $7b70: $00
    ld d, [hl]                                    ; $7b71: $56
    nop                                           ; $7b72: $00
    ld e, c                                       ; $7b73: $59
    nop                                           ; $7b74: $00
    ld e, e                                       ; $7b75: $5b
    nop                                           ; $7b76: $00
    ld e, [hl]                                    ; $7b77: $5e
    nop                                           ; $7b78: $00
    ld h, b                                       ; $7b79: $60
    nop                                           ; $7b7a: $00
    ld h, d                                       ; $7b7b: $62
    nop                                           ; $7b7c: $00
    ld h, h                                       ; $7b7d: $64
    nop                                           ; $7b7e: $00
    ld h, a                                       ; $7b7f: $67
    nop                                           ; $7b80: $00
    ld l, b                                       ; $7b81: $68
    nop                                           ; $7b82: $00
    ld l, d                                       ; $7b83: $6a
    nop                                           ; $7b84: $00
    ld l, h                                       ; $7b85: $6c
    nop                                           ; $7b86: $00
    ld l, l                                       ; $7b87: $6d
    nop                                           ; $7b88: $00
    ld l, a                                       ; $7b89: $6f
    nop                                           ; $7b8a: $00
    ld [hl], b                                    ; $7b8b: $70
    nop                                           ; $7b8c: $00
    ld [hl], d                                    ; $7b8d: $72
    nop                                           ; $7b8e: $00
    ld [hl], e                                    ; $7b8f: $73
    nop                                           ; $7b90: $00
    ld bc, $1200                                  ; $7b91: $01 $00 $12
    nop                                           ; $7b94: $00
    inc e                                         ; $7b95: $1c
    nop                                           ; $7b96: $00
    dec h                                         ; $7b97: $25
    nop                                           ; $7b98: $00
    inc l                                         ; $7b99: $2c
    nop                                           ; $7b9a: $00
    inc sp                                        ; $7b9b: $33
    nop                                           ; $7b9c: $00
    ld a, [hl-]                                   ; $7b9d: $3a
    nop                                           ; $7b9e: $00
    ccf                                           ; $7b9f: $3f
    nop                                           ; $7ba0: $00
    ld b, h                                       ; $7ba1: $44
    nop                                           ; $7ba2: $00
    ld c, b                                       ; $7ba3: $48
    nop                                           ; $7ba4: $00
    ld c, h                                       ; $7ba5: $4c
    nop                                           ; $7ba6: $00
    ld d, b                                       ; $7ba7: $50
    nop                                           ; $7ba8: $00
    ld d, h                                       ; $7ba9: $54
    nop                                           ; $7baa: $00
    ld d, a                                       ; $7bab: $57
    nop                                           ; $7bac: $00
    ld e, c                                       ; $7bad: $59
    nop                                           ; $7bae: $00
    ld e, h                                       ; $7baf: $5c
    nop                                           ; $7bb0: $00
    ld e, a                                       ; $7bb1: $5f
    nop                                           ; $7bb2: $00
    ld h, d                                       ; $7bb3: $62
    nop                                           ; $7bb4: $00
    ld h, h                                       ; $7bb5: $64
    nop                                           ; $7bb6: $00
    ld h, [hl]                                    ; $7bb7: $66
    nop                                           ; $7bb8: $00
    ld l, b                                       ; $7bb9: $68
    nop                                           ; $7bba: $00
    ld l, d                                       ; $7bbb: $6a
    nop                                           ; $7bbc: $00
    ld l, h                                       ; $7bbd: $6c
    nop                                           ; $7bbe: $00
    ld l, [hl]                                    ; $7bbf: $6e
    nop                                           ; $7bc0: $00
    ld [hl], b                                    ; $7bc1: $70
    nop                                           ; $7bc2: $00
    ld [hl], d                                    ; $7bc3: $72
    nop                                           ; $7bc4: $00
    ld [hl], e                                    ; $7bc5: $73
    nop                                           ; $7bc6: $00
    ld [hl], l                                    ; $7bc7: $75
    nop                                           ; $7bc8: $00
    halt                                          ; $7bc9: $76
    nop                                           ; $7bca: $00
    ld [hl], a                                    ; $7bcb: $77
    nop                                           ; $7bcc: $00
    ld a, b                                       ; $7bcd: $78
    nop                                           ; $7bce: $00
    ld bc, $1300                                  ; $7bcf: $01 $00 $13
    nop                                           ; $7bd2: $00
    ld e, $00                                     ; $7bd3: $1e $00
    daa                                           ; $7bd5: $27
    nop                                           ; $7bd6: $00
    cpl                                           ; $7bd7: $2f
    nop                                           ; $7bd8: $00
    scf                                           ; $7bd9: $37
    nop                                           ; $7bda: $00
    dec a                                         ; $7bdb: $3d
    nop                                           ; $7bdc: $00
    ld b, e                                       ; $7bdd: $43
    nop                                           ; $7bde: $00
    ld c, b                                       ; $7bdf: $48
    nop                                           ; $7be0: $00
    ld c, h                                       ; $7be1: $4c
    nop                                           ; $7be2: $00
    ld d, b                                       ; $7be3: $50
    nop                                           ; $7be4: $00
    ld d, l                                       ; $7be5: $55
    nop                                           ; $7be6: $00
    ld e, b                                       ; $7be7: $58
    nop                                           ; $7be8: $00
    ld e, e                                       ; $7be9: $5b
    nop                                           ; $7bea: $00
    ld e, [hl]                                    ; $7beb: $5e
    nop                                           ; $7bec: $00
    ld h, c                                       ; $7bed: $61
    nop                                           ; $7bee: $00
    ld h, l                                       ; $7bef: $65
    nop                                           ; $7bf0: $00
    ld h, a                                       ; $7bf1: $67
    nop                                           ; $7bf2: $00
    ld l, c                                       ; $7bf3: $69
    nop                                           ; $7bf4: $00
    ld l, h                                       ; $7bf5: $6c
    nop                                           ; $7bf6: $00
    ld l, [hl]                                    ; $7bf7: $6e
    nop                                           ; $7bf8: $00
    ld [hl], b                                    ; $7bf9: $70
    nop                                           ; $7bfa: $00
    ld [hl], d                                    ; $7bfb: $72
    nop                                           ; $7bfc: $00
    ld [hl], h                                    ; $7bfd: $74
    nop                                           ; $7bfe: $00
    halt                                          ; $7bff: $76
    nop                                           ; $7c00: $00
    ld [hl], a                                    ; $7c01: $77
    nop                                           ; $7c02: $00
    ld a, c                                       ; $7c03: $79
    nop                                           ; $7c04: $00
    ld a, d                                       ; $7c05: $7a
    nop                                           ; $7c06: $00
    ld a, h                                       ; $7c07: $7c
    nop                                           ; $7c08: $00
    ld a, l                                       ; $7c09: $7d
    nop                                           ; $7c0a: $00
    ld a, [hl]                                    ; $7c0b: $7e
    nop                                           ; $7c0c: $00
    ld bc, $1100                                  ; $7c0d: $01 $00 $11
    nop                                           ; $7c10: $00
    dec de                                        ; $7c11: $1b
    nop                                           ; $7c12: $00
    inc hl                                        ; $7c13: $23
    nop                                           ; $7c14: $00
    ld a, [hl+]                                   ; $7c15: $2a
    nop                                           ; $7c16: $00
    ld sp, $3700                                  ; $7c17: $31 $00 $37
    nop                                           ; $7c1a: $00
    inc a                                         ; $7c1b: $3c
    nop                                           ; $7c1c: $00
    ld b, b                                       ; $7c1d: $40
    nop                                           ; $7c1e: $00
    ld b, l                                       ; $7c1f: $45
    nop                                           ; $7c20: $00
    ld c, d                                       ; $7c21: $4a
    nop                                           ; $7c22: $00
    ld c, l                                       ; $7c23: $4d
    nop                                           ; $7c24: $00
    ld d, c                                       ; $7c25: $51
    nop                                           ; $7c26: $00
    ld d, l                                       ; $7c27: $55
    nop                                           ; $7c28: $00
    ld e, b                                       ; $7c29: $58
    nop                                           ; $7c2a: $00
    ld e, e                                       ; $7c2b: $5b
    nop                                           ; $7c2c: $00
    ld e, a                                       ; $7c2d: $5f
    nop                                           ; $7c2e: $00
    ld h, c                                       ; $7c2f: $61
    nop                                           ; $7c30: $00
    ld h, h                                       ; $7c31: $64
    nop                                           ; $7c32: $00
    ld h, a                                       ; $7c33: $67
    nop                                           ; $7c34: $00
    ld l, d                                       ; $7c35: $6a
    nop                                           ; $7c36: $00
    ld l, h                                       ; $7c37: $6c
    nop                                           ; $7c38: $00
    ld l, a                                       ; $7c39: $6f
    nop                                           ; $7c3a: $00
    ld [hl], d                                    ; $7c3b: $72
    nop                                           ; $7c3c: $00
    ld [hl], h                                    ; $7c3d: $74
    nop                                           ; $7c3e: $00
    ld [hl], a                                    ; $7c3f: $77
    nop                                           ; $7c40: $00
    ld a, c                                       ; $7c41: $79
    nop                                           ; $7c42: $00
    ld a, e                                       ; $7c43: $7b
    nop                                           ; $7c44: $00
    ld a, l                                       ; $7c45: $7d
    nop                                           ; $7c46: $00
    ld a, a                                       ; $7c47: $7f
    nop                                           ; $7c48: $00
    add c                                         ; $7c49: $81
    nop                                           ; $7c4a: $00
    ld bc, $1300                                  ; $7c4b: $01 $00 $13
    nop                                           ; $7c4e: $00
    ld e, $00                                     ; $7c4f: $1e $00
    ld h, $00                                     ; $7c51: $26 $00
    ld l, $00                                     ; $7c53: $2e $00
    ld [hl], $00                                  ; $7c55: $36 $00
    inc a                                         ; $7c57: $3c
    nop                                           ; $7c58: $00
    ld b, c                                       ; $7c59: $41
    nop                                           ; $7c5a: $00
    ld b, [hl]                                    ; $7c5b: $46
    nop                                           ; $7c5c: $00
    ld c, d                                       ; $7c5d: $4a
    nop                                           ; $7c5e: $00
    ld c, a                                       ; $7c5f: $4f
    nop                                           ; $7c60: $00
    ld d, e                                       ; $7c61: $53
    nop                                           ; $7c62: $00
    ld d, a                                       ; $7c63: $57
    nop                                           ; $7c64: $00
    ld e, e                                       ; $7c65: $5b
    nop                                           ; $7c66: $00
    ld e, [hl]                                    ; $7c67: $5e
    nop                                           ; $7c68: $00
    ld h, d                                       ; $7c69: $62
    nop                                           ; $7c6a: $00
    ld h, l                                       ; $7c6b: $65
    nop                                           ; $7c6c: $00
    ld l, b                                       ; $7c6d: $68
    nop                                           ; $7c6e: $00
    ld l, e                                       ; $7c6f: $6b
    nop                                           ; $7c70: $00
    ld l, [hl]                                    ; $7c71: $6e
    nop                                           ; $7c72: $00
    ld [hl], c                                    ; $7c73: $71
    nop                                           ; $7c74: $00
    ld [hl], e                                    ; $7c75: $73
    nop                                           ; $7c76: $00
    halt                                          ; $7c77: $76
    nop                                           ; $7c78: $00
    ld a, b                                       ; $7c79: $78
    nop                                           ; $7c7a: $00
    ld a, d                                       ; $7c7b: $7a
    nop                                           ; $7c7c: $00
    ld a, l                                       ; $7c7d: $7d
    nop                                           ; $7c7e: $00
    ld a, a                                       ; $7c7f: $7f
    nop                                           ; $7c80: $00
    add c                                         ; $7c81: $81
    nop                                           ; $7c82: $00
    add e                                         ; $7c83: $83
    nop                                           ; $7c84: $00
    add l                                         ; $7c85: $85
    nop                                           ; $7c86: $00
    add a                                         ; $7c87: $87
    nop                                           ; $7c88: $00
    ld bc, $1500                                  ; $7c89: $01 $00 $15
    nop                                           ; $7c8c: $00
    ld hl, $2a00                                  ; $7c8d: $21 $00 $2a
    nop                                           ; $7c90: $00
    ld [hl-], a                                   ; $7c91: $32
    nop                                           ; $7c92: $00
    dec sp                                        ; $7c93: $3b
    nop                                           ; $7c94: $00
    ld b, c                                       ; $7c95: $41
    nop                                           ; $7c96: $00
    ld b, a                                       ; $7c97: $47
    nop                                           ; $7c98: $00
    ld c, h                                       ; $7c99: $4c
    nop                                           ; $7c9a: $00
    ld d, c                                       ; $7c9b: $51
    nop                                           ; $7c9c: $00
    ld d, [hl]                                    ; $7c9d: $56
    nop                                           ; $7c9e: $00
    ld e, d                                       ; $7c9f: $5a
    nop                                           ; $7ca0: $00
    ld e, [hl]                                    ; $7ca1: $5e
    nop                                           ; $7ca2: $00
    ld h, d                                       ; $7ca3: $62
    nop                                           ; $7ca4: $00
    ld h, l                                       ; $7ca5: $65
    nop                                           ; $7ca6: $00
    ld l, c                                       ; $7ca7: $69
    nop                                           ; $7ca8: $00
    ld l, h                                       ; $7ca9: $6c
    nop                                           ; $7caa: $00
    ld [hl], b                                    ; $7cab: $70
    nop                                           ; $7cac: $00
    ld [hl], d                                    ; $7cad: $72
    nop                                           ; $7cae: $00
    halt                                          ; $7caf: $76
    nop                                           ; $7cb0: $00
    ld a, b                                       ; $7cb1: $78
    nop                                           ; $7cb2: $00
    ld a, e                                       ; $7cb3: $7b
    nop                                           ; $7cb4: $00
    ld a, l                                       ; $7cb5: $7d
    nop                                           ; $7cb6: $00
    ld a, a                                       ; $7cb7: $7f
    nop                                           ; $7cb8: $00
    add d                                         ; $7cb9: $82
    nop                                           ; $7cba: $00
    add h                                         ; $7cbb: $84
    nop                                           ; $7cbc: $00
    add [hl]                                      ; $7cbd: $86
    nop                                           ; $7cbe: $00
    adc b                                         ; $7cbf: $88
    nop                                           ; $7cc0: $00
    adc d                                         ; $7cc1: $8a
    nop                                           ; $7cc2: $00
    adc h                                         ; $7cc3: $8c
    nop                                           ; $7cc4: $00
    adc [hl]                                      ; $7cc5: $8e
    nop                                           ; $7cc6: $00
    ld bc, $1600                                  ; $7cc7: $01 $00 $16
    nop                                           ; $7cca: $00
    inc hl                                        ; $7ccb: $23
    nop                                           ; $7ccc: $00
    inc l                                         ; $7ccd: $2c
    nop                                           ; $7cce: $00
    ld [hl], $00                                  ; $7ccf: $36 $00
    ld a, $00                                     ; $7cd1: $3e $00
    ld b, l                                       ; $7cd3: $45
    nop                                           ; $7cd4: $00
    ld c, e                                       ; $7cd5: $4b
    nop                                           ; $7cd6: $00
    ld d, b                                       ; $7cd7: $50
    nop                                           ; $7cd8: $00
    ld d, [hl]                                    ; $7cd9: $56
    nop                                           ; $7cda: $00
    ld e, e                                       ; $7cdb: $5b
    nop                                           ; $7cdc: $00
    ld e, a                                       ; $7cdd: $5f
    nop                                           ; $7cde: $00
    ld h, h                                       ; $7cdf: $64
    nop                                           ; $7ce0: $00
    ld l, b                                       ; $7ce1: $68
    nop                                           ; $7ce2: $00
    ld l, h                                       ; $7ce3: $6c
    nop                                           ; $7ce4: $00
    ld l, a                                       ; $7ce5: $6f
    nop                                           ; $7ce6: $00
    ld [hl], d                                    ; $7ce7: $72
    nop                                           ; $7ce8: $00
    halt                                          ; $7ce9: $76
    nop                                           ; $7cea: $00
    ld a, c                                       ; $7ceb: $79
    nop                                           ; $7cec: $00
    ld a, h                                       ; $7ced: $7c
    nop                                           ; $7cee: $00
    ld a, [hl]                                    ; $7cef: $7e
    nop                                           ; $7cf0: $00
    add c                                         ; $7cf1: $81
    nop                                           ; $7cf2: $00
    add h                                         ; $7cf3: $84
    nop                                           ; $7cf4: $00
    add [hl]                                      ; $7cf5: $86
    nop                                           ; $7cf6: $00
    adc c                                         ; $7cf7: $89
    nop                                           ; $7cf8: $00
    adc e                                         ; $7cf9: $8b
    nop                                           ; $7cfa: $00
    adc l                                         ; $7cfb: $8d
    nop                                           ; $7cfc: $00
    adc a                                         ; $7cfd: $8f
    nop                                           ; $7cfe: $00
    sub c                                         ; $7cff: $91
    nop                                           ; $7d00: $00
    sub e                                         ; $7d01: $93
    nop                                           ; $7d02: $00
    sub l                                         ; $7d03: $95
    nop                                           ; $7d04: $00
    ld bc, $1700                                  ; $7d05: $01 $00 $17
    nop                                           ; $7d08: $00
    inc h                                         ; $7d09: $24
    nop                                           ; $7d0a: $00
    cpl                                           ; $7d0b: $2f
    nop                                           ; $7d0c: $00
    ld a, [hl-]                                   ; $7d0d: $3a
    nop                                           ; $7d0e: $00
    ld b, c                                       ; $7d0f: $41
    nop                                           ; $7d10: $00
    ld c, c                                       ; $7d11: $49
    nop                                           ; $7d12: $00
    ld c, a                                       ; $7d13: $4f
    nop                                           ; $7d14: $00
    ld d, l                                       ; $7d15: $55
    nop                                           ; $7d16: $00
    ld e, d                                       ; $7d17: $5a
    nop                                           ; $7d18: $00
    ld e, a                                       ; $7d19: $5f
    nop                                           ; $7d1a: $00
    ld h, h                                       ; $7d1b: $64
    nop                                           ; $7d1c: $00
    ld l, b                                       ; $7d1d: $68
    nop                                           ; $7d1e: $00
    ld l, h                                       ; $7d1f: $6c
    nop                                           ; $7d20: $00
    ld [hl], b                                    ; $7d21: $70
    nop                                           ; $7d22: $00
    ld [hl], h                                    ; $7d23: $74
    nop                                           ; $7d24: $00
    ld [hl], a                                    ; $7d25: $77
    nop                                           ; $7d26: $00
    ld a, e                                       ; $7d27: $7b
    nop                                           ; $7d28: $00
    ld a, [hl]                                    ; $7d29: $7e
    nop                                           ; $7d2a: $00
    add c                                         ; $7d2b: $81
    nop                                           ; $7d2c: $00
    add h                                         ; $7d2d: $84
    nop                                           ; $7d2e: $00
    add a                                         ; $7d2f: $87
    nop                                           ; $7d30: $00
    adc c                                         ; $7d31: $89
    nop                                           ; $7d32: $00
    adc h                                         ; $7d33: $8c
    nop                                           ; $7d34: $00
    adc [hl]                                      ; $7d35: $8e
    nop                                           ; $7d36: $00
    sub b                                         ; $7d37: $90
    nop                                           ; $7d38: $00
    sub e                                         ; $7d39: $93
    nop                                           ; $7d3a: $00
    sub l                                         ; $7d3b: $95
    nop                                           ; $7d3c: $00
    sub a                                         ; $7d3d: $97
    nop                                           ; $7d3e: $00
    sbc c                                         ; $7d3f: $99
    nop                                           ; $7d40: $00
    sbc e                                         ; $7d41: $9b
    nop                                           ; $7d42: $00
    ld bc, $1900                                  ; $7d43: $01 $00 $19
    nop                                           ; $7d46: $00
    daa                                           ; $7d47: $27
    nop                                           ; $7d48: $00
    ld [hl-], a                                   ; $7d49: $32
    nop                                           ; $7d4a: $00
    dec a                                         ; $7d4b: $3d
    nop                                           ; $7d4c: $00
    ld b, [hl]                                    ; $7d4d: $46
    nop                                           ; $7d4e: $00
    ld c, l                                       ; $7d4f: $4d
    nop                                           ; $7d50: $00
    ld d, h                                       ; $7d51: $54
    nop                                           ; $7d52: $00
    ld e, d                                       ; $7d53: $5a
    nop                                           ; $7d54: $00
    ld h, b                                       ; $7d55: $60
    nop                                           ; $7d56: $00
    ld h, l                                       ; $7d57: $65
    nop                                           ; $7d58: $00
    ld l, d                                       ; $7d59: $6a
    nop                                           ; $7d5a: $00
    ld l, [hl]                                    ; $7d5b: $6e
    nop                                           ; $7d5c: $00
    ld [hl], d                                    ; $7d5d: $72
    nop                                           ; $7d5e: $00
    halt                                          ; $7d5f: $76
    nop                                           ; $7d60: $00
    ld a, e                                       ; $7d61: $7b
    nop                                           ; $7d62: $00
    ld a, [hl]                                    ; $7d63: $7e
    nop                                           ; $7d64: $00
    add c                                         ; $7d65: $81
    nop                                           ; $7d66: $00
    add l                                         ; $7d67: $85
    nop                                           ; $7d68: $00
    adc b                                         ; $7d69: $88
    nop                                           ; $7d6a: $00
    adc e                                         ; $7d6b: $8b
    nop                                           ; $7d6c: $00
    adc [hl]                                      ; $7d6d: $8e
    nop                                           ; $7d6e: $00
    sub c                                         ; $7d6f: $91
    nop                                           ; $7d70: $00
    sub e                                         ; $7d71: $93
    nop                                           ; $7d72: $00
    sub [hl]                                      ; $7d73: $96
    nop                                           ; $7d74: $00
    sbc b                                         ; $7d75: $98
    nop                                           ; $7d76: $00
    sbc d                                         ; $7d77: $9a
    nop                                           ; $7d78: $00
    sbc l                                         ; $7d79: $9d
    nop                                           ; $7d7a: $00
    sbc a                                         ; $7d7b: $9f
    nop                                           ; $7d7c: $00
    and c                                         ; $7d7d: $a1
    nop                                           ; $7d7e: $00
    and h                                         ; $7d7f: $a4
    nop                                           ; $7d80: $00
    ld bc, $1a00                                  ; $7d81: $01 $00 $1a
    nop                                           ; $7d84: $00
    add hl, hl                                    ; $7d85: $29
    nop                                           ; $7d86: $00
    ld [hl], $00                                  ; $7d87: $36 $00
    ld b, c                                       ; $7d89: $41
    nop                                           ; $7d8a: $00
    ld c, d                                       ; $7d8b: $4a
    nop                                           ; $7d8c: $00
    ld d, d                                       ; $7d8d: $52
    nop                                           ; $7d8e: $00
    ld e, c                                       ; $7d8f: $59
    nop                                           ; $7d90: $00
    ld h, b                                       ; $7d91: $60
    nop                                           ; $7d92: $00
    ld h, [hl]                                    ; $7d93: $66
    nop                                           ; $7d94: $00
    ld l, h                                       ; $7d95: $6c
    nop                                           ; $7d96: $00
    ld [hl], b                                    ; $7d97: $70
    nop                                           ; $7d98: $00
    ld [hl], l                                    ; $7d99: $75
    nop                                           ; $7d9a: $00
    ld a, d                                       ; $7d9b: $7a
    nop                                           ; $7d9c: $00
    ld a, [hl]                                    ; $7d9d: $7e
    nop                                           ; $7d9e: $00
    add d                                         ; $7d9f: $82
    nop                                           ; $7da0: $00
    add [hl]                                      ; $7da1: $86
    nop                                           ; $7da2: $00
    adc c                                         ; $7da3: $89
    nop                                           ; $7da4: $00
    adc l                                         ; $7da5: $8d
    nop                                           ; $7da6: $00
    sub b                                         ; $7da7: $90
    nop                                           ; $7da8: $00
    sub e                                         ; $7da9: $93
    nop                                           ; $7daa: $00
    sub [hl]                                      ; $7dab: $96
    nop                                           ; $7dac: $00
    sbc c                                         ; $7dad: $99
    nop                                           ; $7dae: $00
    sbc e                                         ; $7daf: $9b
    nop                                           ; $7db0: $00
    sbc [hl]                                      ; $7db1: $9e
    nop                                           ; $7db2: $00
    and b                                         ; $7db3: $a0
    nop                                           ; $7db4: $00
    and e                                         ; $7db5: $a3
    nop                                           ; $7db6: $00
    and l                                         ; $7db7: $a5
    nop                                           ; $7db8: $00
    xor b                                         ; $7db9: $a8
    nop                                           ; $7dba: $00
    xor e                                         ; $7dbb: $ab
    nop                                           ; $7dbc: $00
    xor h                                         ; $7dbd: $ac
    nop                                           ; $7dbe: $00
    ld bc, $1c00                                  ; $7dbf: $01 $00 $1c
    nop                                           ; $7dc2: $00
    dec hl                                        ; $7dc3: $2b
    nop                                           ; $7dc4: $00
    add hl, sp                                    ; $7dc5: $39
    nop                                           ; $7dc6: $00
    ld b, e                                       ; $7dc7: $43
    nop                                           ; $7dc8: $00
    ld c, h                                       ; $7dc9: $4c
    nop                                           ; $7dca: $00
    ld d, h                                       ; $7dcb: $54
    nop                                           ; $7dcc: $00
    ld e, e                                       ; $7dcd: $5b
    nop                                           ; $7dce: $00
    ld h, d                                       ; $7dcf: $62
    nop                                           ; $7dd0: $00
    ld l, b                                       ; $7dd1: $68
    nop                                           ; $7dd2: $00
    ld l, [hl]                                    ; $7dd3: $6e
    nop                                           ; $7dd4: $00
    ld [hl], e                                    ; $7dd5: $73
    nop                                           ; $7dd6: $00
    ld a, b                                       ; $7dd7: $78
    nop                                           ; $7dd8: $00
    ld a, l                                       ; $7dd9: $7d
    nop                                           ; $7dda: $00
    add d                                         ; $7ddb: $82
    nop                                           ; $7ddc: $00
    add [hl]                                      ; $7ddd: $86
    nop                                           ; $7dde: $00
    adc e                                         ; $7ddf: $8b
    nop                                           ; $7de0: $00
    adc a                                         ; $7de1: $8f
    nop                                           ; $7de2: $00
    sub d                                         ; $7de3: $92
    nop                                           ; $7de4: $00
    sub [hl]                                      ; $7de5: $96
    nop                                           ; $7de6: $00
    sbc c                                         ; $7de7: $99
    nop                                           ; $7de8: $00
    sbc h                                         ; $7de9: $9c
    nop                                           ; $7dea: $00
    and b                                         ; $7deb: $a0
    nop                                           ; $7dec: $00
    and e                                         ; $7ded: $a3
    nop                                           ; $7dee: $00
    and l                                         ; $7def: $a5
    nop                                           ; $7df0: $00
    xor c                                         ; $7df1: $a9
    nop                                           ; $7df2: $00
    xor h                                         ; $7df3: $ac
    nop                                           ; $7df4: $00
    xor a                                         ; $7df5: $af
    nop                                           ; $7df6: $00
    or c                                          ; $7df7: $b1
    nop                                           ; $7df8: $00
    or h                                          ; $7df9: $b4
    nop                                           ; $7dfa: $00
    or a                                          ; $7dfb: $b7
    nop                                           ; $7dfc: $00
    ld bc, $1f00                                  ; $7dfd: $01 $00 $1f
    nop                                           ; $7e00: $00
    ld sp, $3f00                                  ; $7e01: $31 $00 $3f
    nop                                           ; $7e04: $00
    ld c, d                                       ; $7e05: $4a
    nop                                           ; $7e06: $00
    ld d, h                                       ; $7e07: $54
    nop                                           ; $7e08: $00
    ld e, h                                       ; $7e09: $5c
    nop                                           ; $7e0a: $00
    ld h, e                                       ; $7e0b: $63
    nop                                           ; $7e0c: $00
    ld l, e                                       ; $7e0d: $6b
    nop                                           ; $7e0e: $00
    ld [hl], d                                    ; $7e0f: $72
    nop                                           ; $7e10: $00
    ld a, c                                       ; $7e11: $79
    nop                                           ; $7e12: $00
    ld a, [hl]                                    ; $7e13: $7e
    nop                                           ; $7e14: $00
    add h                                         ; $7e15: $84
    nop                                           ; $7e16: $00
    adc d                                         ; $7e17: $8a
    nop                                           ; $7e18: $00
    adc a                                         ; $7e19: $8f
    nop                                           ; $7e1a: $00
    sub e                                         ; $7e1b: $93
    nop                                           ; $7e1c: $00
    sbc b                                         ; $7e1d: $98
    nop                                           ; $7e1e: $00
    sbc l                                         ; $7e1f: $9d
    nop                                           ; $7e20: $00
    and c                                         ; $7e21: $a1
    nop                                           ; $7e22: $00
    and [hl]                                      ; $7e23: $a6
    nop                                           ; $7e24: $00
    xor c                                         ; $7e25: $a9
    nop                                           ; $7e26: $00
    xor l                                         ; $7e27: $ad
    nop                                           ; $7e28: $00
    or b                                          ; $7e29: $b0
    nop                                           ; $7e2a: $00
    or h                                          ; $7e2b: $b4
    nop                                           ; $7e2c: $00
    cp b                                          ; $7e2d: $b8
    nop                                           ; $7e2e: $00
    cp e                                          ; $7e2f: $bb
    nop                                           ; $7e30: $00
    cp [hl]                                       ; $7e31: $be
    nop                                           ; $7e32: $00
    jp nz, $c400                                  ; $7e33: $c2 $00 $c4

    nop                                           ; $7e36: $00
    rst $00                                       ; $7e37: $c7
    nop                                           ; $7e38: $00
    jp z, Boot                                    ; $7e39: $ca $00 $01

    nop                                           ; $7e3c: $00
    inc h                                         ; $7e3d: $24
    nop                                           ; $7e3e: $00
    add hl, sp                                    ; $7e3f: $39
    nop                                           ; $7e40: $00
    ld b, a                                       ; $7e41: $47
    nop                                           ; $7e42: $00
    ld d, h                                       ; $7e43: $54
    nop                                           ; $7e44: $00
    ld e, a                                       ; $7e45: $5f
    nop                                           ; $7e46: $00
    ld l, c                                       ; $7e47: $69
    nop                                           ; $7e48: $00
    ld [hl], h                                    ; $7e49: $74
    nop                                           ; $7e4a: $00
    ld a, e                                       ; $7e4b: $7b
    nop                                           ; $7e4c: $00
    add e                                         ; $7e4d: $83
    nop                                           ; $7e4e: $00
    adc e                                         ; $7e4f: $8b
    nop                                           ; $7e50: $00
    sub e                                         ; $7e51: $93
    nop                                           ; $7e52: $00
    sbc c                                         ; $7e53: $99
    nop                                           ; $7e54: $00
    sbc a                                         ; $7e55: $9f
    nop                                           ; $7e56: $00
    and l                                         ; $7e57: $a5
    nop                                           ; $7e58: $00
    xor e                                         ; $7e59: $ab
    nop                                           ; $7e5a: $00
    or c                                          ; $7e5b: $b1
    nop                                           ; $7e5c: $00
    or [hl]                                       ; $7e5d: $b6
    nop                                           ; $7e5e: $00
    cp e                                          ; $7e5f: $bb
    nop                                           ; $7e60: $00
    ret nz                                        ; $7e61: $c0

    nop                                           ; $7e62: $00
    push bc                                       ; $7e63: $c5
    nop                                           ; $7e64: $00
    jp z, $cd00                                   ; $7e65: $ca $00 $cd

    nop                                           ; $7e68: $00
    jp nc, $d600                                  ; $7e69: $d2 $00 $d6

    nop                                           ; $7e6c: $00
    jp c, $de00                                   ; $7e6d: $da $00 $de

    nop                                           ; $7e70: $00
    ld [c], a                                     ; $7e71: $e2
    nop                                           ; $7e72: $00
    and $00                                       ; $7e73: $e6 $00
    ld [$ed00], a                                 ; $7e75: $ea $00 $ed
    nop                                           ; $7e78: $00
    rst $38                                       ; $7e79: $ff
    rst $38                                       ; $7e7a: $ff
    rst $38                                       ; $7e7b: $ff
    rst $38                                       ; $7e7c: $ff
    rst $38                                       ; $7e7d: $ff
    rst $38                                       ; $7e7e: $ff
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    rst $38                                       ; $7e81: $ff
    rst $38                                       ; $7e82: $ff
    rst $38                                       ; $7e83: $ff
    rst $38                                       ; $7e84: $ff
    rst $38                                       ; $7e85: $ff
    rst $38                                       ; $7e86: $ff
    rst $38                                       ; $7e87: $ff
    rst $38                                       ; $7e88: $ff
    rst $38                                       ; $7e89: $ff
    rst $38                                       ; $7e8a: $ff
    rst $38                                       ; $7e8b: $ff
    rst $38                                       ; $7e8c: $ff
    rst $38                                       ; $7e8d: $ff
    rst $38                                       ; $7e8e: $ff
    rst $38                                       ; $7e8f: $ff
    rst $38                                       ; $7e90: $ff
    rst $38                                       ; $7e91: $ff
    rst $38                                       ; $7e92: $ff
    rst $38                                       ; $7e93: $ff
    rst $38                                       ; $7e94: $ff
    rst $38                                       ; $7e95: $ff
    rst $38                                       ; $7e96: $ff
    rst $38                                       ; $7e97: $ff
    rst $38                                       ; $7e98: $ff
    rst $38                                       ; $7e99: $ff
    rst $38                                       ; $7e9a: $ff
    rst $38                                       ; $7e9b: $ff
    rst $38                                       ; $7e9c: $ff
    rst $38                                       ; $7e9d: $ff
    rst $38                                       ; $7e9e: $ff
    rst $38                                       ; $7e9f: $ff
    rst $38                                       ; $7ea0: $ff
    rst $38                                       ; $7ea1: $ff
    rst $38                                       ; $7ea2: $ff
    rst $38                                       ; $7ea3: $ff
    rst $38                                       ; $7ea4: $ff
    rst $38                                       ; $7ea5: $ff
    rst $38                                       ; $7ea6: $ff
    rst $38                                       ; $7ea7: $ff
    rst $38                                       ; $7ea8: $ff
    rst $38                                       ; $7ea9: $ff
    rst $38                                       ; $7eaa: $ff
    rst $38                                       ; $7eab: $ff
    rst $38                                       ; $7eac: $ff
    rst $38                                       ; $7ead: $ff
    rst $38                                       ; $7eae: $ff
    rst $38                                       ; $7eaf: $ff
    rst $38                                       ; $7eb0: $ff
    rst $38                                       ; $7eb1: $ff
    rst $38                                       ; $7eb2: $ff
    rst $38                                       ; $7eb3: $ff
    rst $38                                       ; $7eb4: $ff
    rst $38                                       ; $7eb5: $ff
    rst $38                                       ; $7eb6: $ff
    rst $38                                       ; $7eb7: $ff
    rst $38                                       ; $7eb8: $ff
    rst $38                                       ; $7eb9: $ff
    rst $38                                       ; $7eba: $ff
    rst $38                                       ; $7ebb: $ff
    rst $38                                       ; $7ebc: $ff
    rst $38                                       ; $7ebd: $ff
    rst $38                                       ; $7ebe: $ff
    rst $38                                       ; $7ebf: $ff
    rst $38                                       ; $7ec0: $ff
    rst $38                                       ; $7ec1: $ff
    rst $38                                       ; $7ec2: $ff
    rst $38                                       ; $7ec3: $ff
    rst $38                                       ; $7ec4: $ff
    rst $38                                       ; $7ec5: $ff
    rst $38                                       ; $7ec6: $ff
    rst $38                                       ; $7ec7: $ff
    rst $38                                       ; $7ec8: $ff
    rst $38                                       ; $7ec9: $ff
    rst $38                                       ; $7eca: $ff
    rst $38                                       ; $7ecb: $ff
    rst $38                                       ; $7ecc: $ff
    rst $38                                       ; $7ecd: $ff
    rst $38                                       ; $7ece: $ff
    rst $38                                       ; $7ecf: $ff
    rst $38                                       ; $7ed0: $ff
    rst $38                                       ; $7ed1: $ff
    rst $38                                       ; $7ed2: $ff
    rst $38                                       ; $7ed3: $ff
    rst $38                                       ; $7ed4: $ff
    rst $38                                       ; $7ed5: $ff
    rst $38                                       ; $7ed6: $ff
    rst $38                                       ; $7ed7: $ff
    rst $38                                       ; $7ed8: $ff
    rst $38                                       ; $7ed9: $ff
    rst $38                                       ; $7eda: $ff
    rst $38                                       ; $7edb: $ff
    rst $38                                       ; $7edc: $ff
    rst $38                                       ; $7edd: $ff
    rst $38                                       ; $7ede: $ff
    rst $38                                       ; $7edf: $ff
    rst $38                                       ; $7ee0: $ff
    rst $38                                       ; $7ee1: $ff
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff
    rst $38                                       ; $7eeb: $ff
    rst $38                                       ; $7eec: $ff
    rst $38                                       ; $7eed: $ff
    rst $38                                       ; $7eee: $ff
    rst $38                                       ; $7eef: $ff
    rst $38                                       ; $7ef0: $ff
    rst $38                                       ; $7ef1: $ff
    rst $38                                       ; $7ef2: $ff
    rst $38                                       ; $7ef3: $ff
    rst $38                                       ; $7ef4: $ff
    rst $38                                       ; $7ef5: $ff
    rst $38                                       ; $7ef6: $ff
    rst $38                                       ; $7ef7: $ff
    rst $38                                       ; $7ef8: $ff
    rst $38                                       ; $7ef9: $ff
    rst $38                                       ; $7efa: $ff
    rst $38                                       ; $7efb: $ff
    rst $38                                       ; $7efc: $ff
    rst $38                                       ; $7efd: $ff
    rst $38                                       ; $7efe: $ff
    rst $38                                       ; $7eff: $ff
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    rst $38                                       ; $7f04: $ff
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff
    rst $38                                       ; $7f07: $ff
    rst $38                                       ; $7f08: $ff
    rst $38                                       ; $7f09: $ff
    rst $38                                       ; $7f0a: $ff
    rst $38                                       ; $7f0b: $ff
    rst $38                                       ; $7f0c: $ff
    rst $38                                       ; $7f0d: $ff
    rst $38                                       ; $7f0e: $ff
    rst $38                                       ; $7f0f: $ff
    rst $38                                       ; $7f10: $ff
    rst $38                                       ; $7f11: $ff
    rst $38                                       ; $7f12: $ff
    rst $38                                       ; $7f13: $ff
    rst $38                                       ; $7f14: $ff
    rst $38                                       ; $7f15: $ff
    rst $38                                       ; $7f16: $ff
    rst $38                                       ; $7f17: $ff
    rst $38                                       ; $7f18: $ff
    rst $38                                       ; $7f19: $ff
    rst $38                                       ; $7f1a: $ff
    rst $38                                       ; $7f1b: $ff
    rst $38                                       ; $7f1c: $ff
    rst $38                                       ; $7f1d: $ff
    rst $38                                       ; $7f1e: $ff
    rst $38                                       ; $7f1f: $ff
    rst $38                                       ; $7f20: $ff
    rst $38                                       ; $7f21: $ff
    rst $38                                       ; $7f22: $ff
    rst $38                                       ; $7f23: $ff
    rst $38                                       ; $7f24: $ff
    rst $38                                       ; $7f25: $ff
    rst $38                                       ; $7f26: $ff
    rst $38                                       ; $7f27: $ff
    rst $38                                       ; $7f28: $ff
    rst $38                                       ; $7f29: $ff
    rst $38                                       ; $7f2a: $ff
    rst $38                                       ; $7f2b: $ff
    rst $38                                       ; $7f2c: $ff
    rst $38                                       ; $7f2d: $ff
    rst $38                                       ; $7f2e: $ff
    rst $38                                       ; $7f2f: $ff
    rst $38                                       ; $7f30: $ff
    rst $38                                       ; $7f31: $ff
    rst $38                                       ; $7f32: $ff
    rst $38                                       ; $7f33: $ff
    rst $38                                       ; $7f34: $ff
    rst $38                                       ; $7f35: $ff
    rst $38                                       ; $7f36: $ff
    rst $38                                       ; $7f37: $ff
    rst $38                                       ; $7f38: $ff
    rst $38                                       ; $7f39: $ff
    rst $38                                       ; $7f3a: $ff
    rst $38                                       ; $7f3b: $ff
    rst $38                                       ; $7f3c: $ff
    rst $38                                       ; $7f3d: $ff
    rst $38                                       ; $7f3e: $ff
    rst $38                                       ; $7f3f: $ff
    rst $38                                       ; $7f40: $ff
    rst $38                                       ; $7f41: $ff
    rst $38                                       ; $7f42: $ff
    rst $38                                       ; $7f43: $ff
    rst $38                                       ; $7f44: $ff
    rst $38                                       ; $7f45: $ff
    rst $38                                       ; $7f46: $ff
    rst $38                                       ; $7f47: $ff
    rst $38                                       ; $7f48: $ff
    rst $38                                       ; $7f49: $ff
    rst $38                                       ; $7f4a: $ff
    rst $38                                       ; $7f4b: $ff
    rst $38                                       ; $7f4c: $ff
    rst $38                                       ; $7f4d: $ff
    rst $38                                       ; $7f4e: $ff
    rst $38                                       ; $7f4f: $ff
    rst $38                                       ; $7f50: $ff
    rst $38                                       ; $7f51: $ff
    rst $38                                       ; $7f52: $ff
    rst $38                                       ; $7f53: $ff
    rst $38                                       ; $7f54: $ff
    rst $38                                       ; $7f55: $ff
    rst $38                                       ; $7f56: $ff
    rst $38                                       ; $7f57: $ff
    rst $38                                       ; $7f58: $ff
    rst $38                                       ; $7f59: $ff
    rst $38                                       ; $7f5a: $ff
    rst $38                                       ; $7f5b: $ff
    rst $38                                       ; $7f5c: $ff
    rst $38                                       ; $7f5d: $ff
    rst $38                                       ; $7f5e: $ff
    rst $38                                       ; $7f5f: $ff
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    rst $38                                       ; $7f64: $ff
    rst $38                                       ; $7f65: $ff
    rst $38                                       ; $7f66: $ff
    rst $38                                       ; $7f67: $ff
    rst $38                                       ; $7f68: $ff
    rst $38                                       ; $7f69: $ff
    rst $38                                       ; $7f6a: $ff
    rst $38                                       ; $7f6b: $ff
    rst $38                                       ; $7f6c: $ff
    rst $38                                       ; $7f6d: $ff
    rst $38                                       ; $7f6e: $ff
    rst $38                                       ; $7f6f: $ff
    rst $38                                       ; $7f70: $ff
    rst $38                                       ; $7f71: $ff
    rst $38                                       ; $7f72: $ff
    rst $38                                       ; $7f73: $ff
    rst $38                                       ; $7f74: $ff
    rst $38                                       ; $7f75: $ff
    rst $38                                       ; $7f76: $ff
    rst $38                                       ; $7f77: $ff
    rst $38                                       ; $7f78: $ff
    rst $38                                       ; $7f79: $ff
    rst $38                                       ; $7f7a: $ff
    rst $38                                       ; $7f7b: $ff
    rst $38                                       ; $7f7c: $ff
    rst $38                                       ; $7f7d: $ff
    rst $38                                       ; $7f7e: $ff
    rst $38                                       ; $7f7f: $ff
    rst $38                                       ; $7f80: $ff
    rst $38                                       ; $7f81: $ff
    rst $38                                       ; $7f82: $ff
    rst $38                                       ; $7f83: $ff
    rst $38                                       ; $7f84: $ff
    rst $38                                       ; $7f85: $ff
    rst $38                                       ; $7f86: $ff
    rst $38                                       ; $7f87: $ff
    rst $38                                       ; $7f88: $ff
    rst $38                                       ; $7f89: $ff
    rst $38                                       ; $7f8a: $ff
    rst $38                                       ; $7f8b: $ff
    rst $38                                       ; $7f8c: $ff
    rst $38                                       ; $7f8d: $ff
    rst $38                                       ; $7f8e: $ff
    rst $38                                       ; $7f8f: $ff
    rst $38                                       ; $7f90: $ff
    rst $38                                       ; $7f91: $ff
    rst $38                                       ; $7f92: $ff
    rst $38                                       ; $7f93: $ff
    rst $38                                       ; $7f94: $ff
    rst $38                                       ; $7f95: $ff
    rst $38                                       ; $7f96: $ff
    rst $38                                       ; $7f97: $ff
    rst $38                                       ; $7f98: $ff
    rst $38                                       ; $7f99: $ff
    rst $38                                       ; $7f9a: $ff
    rst $38                                       ; $7f9b: $ff
    rst $38                                       ; $7f9c: $ff
    rst $38                                       ; $7f9d: $ff
    rst $38                                       ; $7f9e: $ff
    rst $38                                       ; $7f9f: $ff
    rst $38                                       ; $7fa0: $ff
    rst $38                                       ; $7fa1: $ff
    rst $38                                       ; $7fa2: $ff
    rst $38                                       ; $7fa3: $ff
    rst $38                                       ; $7fa4: $ff
    rst $38                                       ; $7fa5: $ff
    rst $38                                       ; $7fa6: $ff
    rst $38                                       ; $7fa7: $ff
    rst $38                                       ; $7fa8: $ff
    rst $38                                       ; $7fa9: $ff
    rst $38                                       ; $7faa: $ff
    rst $38                                       ; $7fab: $ff
    rst $38                                       ; $7fac: $ff
    rst $38                                       ; $7fad: $ff
    rst $38                                       ; $7fae: $ff
    rst $38                                       ; $7faf: $ff
    rst $38                                       ; $7fb0: $ff
    rst $38                                       ; $7fb1: $ff
    rst $38                                       ; $7fb2: $ff
    rst $38                                       ; $7fb3: $ff
    rst $38                                       ; $7fb4: $ff
    rst $38                                       ; $7fb5: $ff
    rst $38                                       ; $7fb6: $ff
    rst $38                                       ; $7fb7: $ff
    rst $38                                       ; $7fb8: $ff
    rst $38                                       ; $7fb9: $ff
    rst $38                                       ; $7fba: $ff
    rst $38                                       ; $7fbb: $ff
    rst $38                                       ; $7fbc: $ff
    rst $38                                       ; $7fbd: $ff
    rst $38                                       ; $7fbe: $ff
    rst $38                                       ; $7fbf: $ff
    rst $38                                       ; $7fc0: $ff
    rst $38                                       ; $7fc1: $ff
    rst $38                                       ; $7fc2: $ff
    rst $38                                       ; $7fc3: $ff
    rst $38                                       ; $7fc4: $ff
    rst $38                                       ; $7fc5: $ff
    rst $38                                       ; $7fc6: $ff
    rst $38                                       ; $7fc7: $ff
    rst $38                                       ; $7fc8: $ff
    rst $38                                       ; $7fc9: $ff
    rst $38                                       ; $7fca: $ff
    rst $38                                       ; $7fcb: $ff
    rst $38                                       ; $7fcc: $ff
    rst $38                                       ; $7fcd: $ff
    rst $38                                       ; $7fce: $ff
    rst $38                                       ; $7fcf: $ff
    rst $38                                       ; $7fd0: $ff
    rst $38                                       ; $7fd1: $ff
    rst $38                                       ; $7fd2: $ff
    rst $38                                       ; $7fd3: $ff
    rst $38                                       ; $7fd4: $ff
    rst $38                                       ; $7fd5: $ff
    rst $38                                       ; $7fd6: $ff
    rst $38                                       ; $7fd7: $ff
    rst $38                                       ; $7fd8: $ff
    rst $38                                       ; $7fd9: $ff
    rst $38                                       ; $7fda: $ff
    rst $38                                       ; $7fdb: $ff
    rst $38                                       ; $7fdc: $ff
    rst $38                                       ; $7fdd: $ff
    rst $38                                       ; $7fde: $ff
    rst $38                                       ; $7fdf: $ff
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    rst $38                                       ; $7fe2: $ff
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff
    rst $38                                       ; $7fe5: $ff
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
    rst $38                                       ; $7fec: $ff
    rst $38                                       ; $7fed: $ff
    rst $38                                       ; $7fee: $ff
    rst $38                                       ; $7fef: $ff
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
