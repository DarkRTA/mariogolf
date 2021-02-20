; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    db $f5, $7c

    db $fd                                        ; $4002: $fd
    ld a, h                                       ; $4003: $7c
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    inc de                                        ; $4006: $13
    nop                                           ; $4007: $00
    rra                                           ; $4008: $1f
    nop                                           ; $4009: $00
    ld a, [hl+]                                   ; $400a: $2a
    nop                                           ; $400b: $00
    inc a                                         ; $400c: $3c
    nop                                           ; $400d: $00
    ld c, e                                       ; $400e: $4b
    nop                                           ; $400f: $00
    ld d, [hl]                                    ; $4010: $56
    nop                                           ; $4011: $00
    ld h, l                                       ; $4012: $65
    nop                                           ; $4013: $00
    ld [hl], h                                    ; $4014: $74
    nop                                           ; $4015: $00
    ld a, a                                       ; $4016: $7f
    nop                                           ; $4017: $00
    adc h                                         ; $4018: $8c
    nop                                           ; $4019: $00
    sbc b                                         ; $401a: $98
    nop                                           ; $401b: $00
    and d                                         ; $401c: $a2
    nop                                           ; $401d: $00
    xor h                                         ; $401e: $ac
    nop                                           ; $401f: $00
    or a                                          ; $4020: $b7
    nop                                           ; $4021: $00
    add $00                                       ; $4022: $c6 $00
    ret c                                         ; $4024: $d8

    nop                                           ; $4025: $00
    db $dd                                        ; $4026: $dd
    nop                                           ; $4027: $00
    push hl                                       ; $4028: $e5
    nop                                           ; $4029: $00
    db $eb                                        ; $402a: $eb
    nop                                           ; $402b: $00
    or $00                                        ; $402c: $f6 $00
    db $fc                                        ; $402e: $fc
    nop                                           ; $402f: $00
    ld [bc], a                                    ; $4030: $02
    ld bc, $0108                                  ; $4031: $01 $08 $01
    ld c, $01                                     ; $4034: $0e $01
    inc d                                         ; $4036: $14
    ld bc, $011a                                  ; $4037: $01 $1a $01
    jr nz, jr_01d_403d                            ; $403a: $20 $01

    inc hl                                        ; $403c: $23

jr_01d_403d:
    ld bc, $012a                                  ; $403d: $01 $2a $01
    ld [hl], $01                                  ; $4040: $36 $01
    ld a, [hl-]                                   ; $4042: $3a
    ld bc, $0141                                  ; $4043: $01 $41 $01
    ld c, b                                       ; $4046: $48
    ld bc, HeaderMaskROMVersion                   ; $4047: $01 $4c $01
    ld d, e                                       ; $404a: $53
    ld bc, $0158                                  ; $404b: $01 $58 $01
    ld h, h                                       ; $404e: $64
    ld bc, $016e                                  ; $404f: $01 $6e $01
    ld a, b                                       ; $4052: $78
    ld bc, $0183                                  ; $4053: $01 $83 $01
    sub d                                         ; $4056: $92
    ld bc, $019f                                  ; $4057: $01 $9f $01
    xor b                                         ; $405a: $a8
    ld bc, $01af                                  ; $405b: $01 $af $01
    cp d                                          ; $405e: $ba
    ld bc, $01c2                                  ; $405f: $01 $c2 $01
    call $d801                                    ; $4062: $cd $01 $d8
    ld bc, $01e6                                  ; $4065: $01 $e6 $01
    pop af                                        ; $4068: $f1
    ld bc, $01fb                                  ; $4069: $01 $fb $01
    inc bc                                        ; $406c: $03
    ld [bc], a                                    ; $406d: $02
    ld c, $02                                     ; $406e: $0e $02
    inc e                                         ; $4070: $1c
    ld [bc], a                                    ; $4071: $02
    ld [hl+], a                                   ; $4072: $22
    ld [bc], a                                    ; $4073: $02
    daa                                           ; $4074: $27
    ld [bc], a                                    ; $4075: $02
    jr nc, jr_01d_407a                            ; $4076: $30 $02

    scf                                           ; $4078: $37
    ld [bc], a                                    ; $4079: $02

jr_01d_407a:
    dec a                                         ; $407a: $3d
    ld [bc], a                                    ; $407b: $02
    ld b, a                                       ; $407c: $47
    ld [bc], a                                    ; $407d: $02
    ld d, e                                       ; $407e: $53
    ld [bc], a                                    ; $407f: $02
    ld e, c                                       ; $4080: $59
    ld [bc], a                                    ; $4081: $02
    ld h, e                                       ; $4082: $63
    ld [bc], a                                    ; $4083: $02
    ld l, [hl]                                    ; $4084: $6e
    ld [bc], a                                    ; $4085: $02
    ld [hl], l                                    ; $4086: $75
    ld [bc], a                                    ; $4087: $02
    ld a, [hl]                                    ; $4088: $7e
    ld [bc], a                                    ; $4089: $02
    and e                                         ; $408a: $a3
    ld [bc], a                                    ; $408b: $02
    ld a, [$2502]                                 ; $408c: $fa $02 $25
    inc bc                                        ; $408f: $03
    ld e, [hl]                                    ; $4090: $5e
    inc bc                                        ; $4091: $03
    sbc c                                         ; $4092: $99
    inc bc                                        ; $4093: $03
    push bc                                       ; $4094: $c5
    inc bc                                        ; $4095: $03
    db $d3                                        ; $4096: $d3
    inc bc                                        ; $4097: $03
    push hl                                       ; $4098: $e5
    inc bc                                        ; $4099: $03
    or $03                                        ; $409a: $f6 $03
    ld de, $3c04                                  ; $409c: $11 $04 $3c
    inc b                                         ; $409f: $04
    ld e, e                                       ; $40a0: $5b
    inc b                                         ; $40a1: $04
    ld a, l                                       ; $40a2: $7d
    inc b                                         ; $40a3: $04
    sbc e                                         ; $40a4: $9b
    inc b                                         ; $40a5: $04
    or h                                          ; $40a6: $b4
    inc b                                         ; $40a7: $04
    ret nc                                        ; $40a8: $d0

    inc b                                         ; $40a9: $04
    ld hl, sp+$04                                 ; $40aa: $f8 $04
    ld hl, $3a05                                  ; $40ac: $21 $05 $3a
    dec b                                         ; $40af: $05
    ld l, h                                       ; $40b0: $6c
    dec b                                         ; $40b1: $05
    add a                                         ; $40b2: $87
    dec b                                         ; $40b3: $05
    xor l                                         ; $40b4: $ad
    dec b                                         ; $40b5: $05
    xor $05                                       ; $40b6: $ee $05
    or $05                                        ; $40b8: $f6 $05
    ld [bc], a                                    ; $40ba: $02
    ld b, $0a                                     ; $40bb: $06 $0a
    ld b, $19                                     ; $40bd: $06 $19
    ld b, $28                                     ; $40bf: $06 $28
    ld b, $54                                     ; $40c1: $06 $54
    ld b, $85                                     ; $40c3: $06 $85
    ld b, $c4                                     ; $40c5: $06 $c4
    ld b, $f2                                     ; $40c7: $06 $f2
    ld b, $29                                     ; $40c9: $06 $29
    rlca                                          ; $40cb: $07
    ld e, c                                       ; $40cc: $59
    rlca                                          ; $40cd: $07
    sub a                                         ; $40ce: $97
    rlca                                          ; $40cf: $07
    ret nz                                        ; $40d0: $c0

    rlca                                          ; $40d1: $07
    pop af                                        ; $40d2: $f1
    rlca                                          ; $40d3: $07
    ld d, [hl]                                    ; $40d4: $56
    ld [$0886], sp                                ; $40d5: $08 $86 $08
    cp c                                          ; $40d8: $b9
    ld [$08d9], sp                                ; $40d9: $08 $d9 $08
    db $ec                                        ; $40dc: $ec
    ld [$0921], sp                                ; $40dd: $08 $21 $09
    ld d, d                                       ; $40e0: $52
    add hl, bc                                    ; $40e1: $09
    ld [hl], c                                    ; $40e2: $71
    add hl, bc                                    ; $40e3: $09
    sub d                                         ; $40e4: $92
    add hl, bc                                    ; $40e5: $09
    cp a                                          ; $40e6: $bf
    add hl, bc                                    ; $40e7: $09
    push af                                       ; $40e8: $f5
    add hl, bc                                    ; $40e9: $09
    ld c, a                                       ; $40ea: $4f
    ld a, [bc]                                    ; $40eb: $0a
    add l                                         ; $40ec: $85
    ld a, [bc]                                    ; $40ed: $0a
    xor e                                         ; $40ee: $ab
    ld a, [bc]                                    ; $40ef: $0a
    call nc, $0a0a                                ; $40f0: $d4 $0a $0a
    dec bc                                        ; $40f3: $0b
    jr nc, jr_01d_4101                            ; $40f4: $30 $0b

    ld [hl], c                                    ; $40f6: $71
    dec bc                                        ; $40f7: $0b
    xor l                                         ; $40f8: $ad
    dec bc                                        ; $40f9: $0b
    di                                            ; $40fa: $f3
    dec bc                                        ; $40fb: $0b
    ld [$360c], sp                                ; $40fc: $08 $0c $36
    inc c                                         ; $40ff: $0c
    ld d, l                                       ; $4100: $55

jr_01d_4101:
    inc c                                         ; $4101: $0c
    ld [hl], l                                    ; $4102: $75
    inc c                                         ; $4103: $0c
    xor h                                         ; $4104: $ac
    inc c                                         ; $4105: $0c
    call c, $170c                                 ; $4106: $dc $0c $17
    dec c                                         ; $4109: $0d

    db $55, $0d

    adc h                                         ; $410c: $8c
    dec c                                         ; $410d: $0d

    db $dc, $0d

    dec c                                         ; $4110: $0d
    ld c, $24                                     ; $4111: $0e $24
    db $0e                                        ; $4113: $0e

    db $41, $0e

    ld e, h                                       ; $4116: $5c
    ld c, $8b                                     ; $4117: $0e $8b
    ld c, $a3                                     ; $4119: $0e $a3
    db $0e                                        ; $411b: $0e

    db $ba, $0e

    pop de                                        ; $411e: $d1
    ld c, $ec                                     ; $411f: $0e $ec
    ld c, $03                                     ; $4121: $0e $03
    rrca                                          ; $4123: $0f
    rra                                           ; $4124: $1f
    rrca                                          ; $4125: $0f
    dec [hl]                                      ; $4126: $35
    rrca                                          ; $4127: $0f
    ld e, e                                       ; $4128: $5b
    rrca                                          ; $4129: $0f
    ld h, e                                       ; $412a: $63
    rrca                                          ; $412b: $0f
    ld l, d                                       ; $412c: $6a
    rrca                                          ; $412d: $0f
    ld [hl], d                                    ; $412e: $72
    rrca                                          ; $412f: $0f
    ld [hl], a                                    ; $4130: $77
    rrca                                          ; $4131: $0f
    ld a, h                                       ; $4132: $7c
    rrca                                          ; $4133: $0f
    sbc b                                         ; $4134: $98
    rrca                                          ; $4135: $0f
    sbc a                                         ; $4136: $9f
    rrca                                          ; $4137: $0f
    or l                                          ; $4138: $b5
    rrca                                          ; $4139: $0f
    rrc a                                         ; $413a: $cb $0f
    call $d50f                                    ; $413c: $cd $0f $d5
    rrca                                          ; $413f: $0f
    db $e4                                        ; $4140: $e4
    rrca                                          ; $4141: $0f
    db $ed                                        ; $4142: $ed
    rrca                                          ; $4143: $0f
    db $f4                                        ; $4144: $f4
    rrca                                          ; $4145: $0f
    ei                                            ; $4146: $fb
    rrca                                          ; $4147: $0f
    ld bc, $1b10                                  ; $4148: $01 $10 $1b
    db $10                                        ; $414b: $10
    dec [hl]                                      ; $414c: $35
    db $10                                        ; $414d: $10
    inc a                                         ; $414e: $3c
    db $10                                        ; $414f: $10
    ld d, [hl]                                    ; $4150: $56
    db $10                                        ; $4151: $10
    ld l, b                                       ; $4152: $68
    db $10                                        ; $4153: $10
    halt                                          ; $4154: $76
    db $10                                        ; $4155: $10
    add c                                         ; $4156: $81
    db $10                                        ; $4157: $10
    adc h                                         ; $4158: $8c
    db $10                                        ; $4159: $10
    sub e                                         ; $415a: $93
    db $10                                        ; $415b: $10
    sbc h                                         ; $415c: $9c
    db $10                                        ; $415d: $10
    and [hl]                                      ; $415e: $a6
    db $10                                        ; $415f: $10
    xor a                                         ; $4160: $af
    db $10                                        ; $4161: $10
    call nz, $d710                                ; $4162: $c4 $10 $d7
    db $10                                        ; $4165: $10
    rst $20                                       ; $4166: $e7
    db $10                                        ; $4167: $10
    ld a, [$0410]                                 ; $4168: $fa $10 $04
    ld de, $111a                                  ; $416b: $11 $1a $11
    ld [hl-], a                                   ; $416e: $32
    ld de, $1141                                  ; $416f: $11 $41 $11
    ld d, h                                       ; $4172: $54
    ld de, $1169                                  ; $4173: $11 $69 $11
    ld a, [hl]                                    ; $4176: $7e
    ld de, $118a                                  ; $4177: $11 $8a $11
    sub d                                         ; $417a: $92
    ld de, $119e                                  ; $417b: $11 $9e $11
    xor h                                         ; $417e: $ac
    ld de, $11b8                                  ; $417f: $11 $b8 $11
    cp d                                          ; $4182: $ba
    ld de, $11bc                                  ; $4183: $11 $bc $11
    push bc                                       ; $4186: $c5
    ld de, $11d4                                  ; $4187: $11 $d4 $11
    add sp, $11                                   ; $418a: $e8 $11
    db $fc                                        ; $418c: $fc
    ld de, $1230                                  ; $418d: $11 $30 $12
    ld e, d                                       ; $4190: $5a
    ld [de], a                                    ; $4191: $12
    add a                                         ; $4192: $87
    ld [de], a                                    ; $4193: $12

jr_01d_4194:
    cp l                                          ; $4194: $bd
    ld [de], a                                    ; $4195: $12
    ei                                            ; $4196: $fb
    ld [de], a                                    ; $4197: $12
    ld a, [hl+]                                   ; $4198: $2a
    inc de                                        ; $4199: $13
    dec a                                         ; $419a: $3d
    inc de                                        ; $419b: $13
    ld l, h                                       ; $419c: $6c
    inc de                                        ; $419d: $13
    adc a                                         ; $419e: $8f
    inc de                                        ; $419f: $13
    xor [hl]                                      ; $41a0: $ae
    inc de                                        ; $41a1: $13
    db $dd                                        ; $41a2: $dd
    inc de                                        ; $41a3: $13
    ld [$6a14], sp                                ; $41a4: $08 $14 $6a
    inc d                                         ; $41a7: $14
    sbc e                                         ; $41a8: $9b
    inc d                                         ; $41a9: $14
    or b                                          ; $41aa: $b0
    inc d                                         ; $41ab: $14
    pop bc                                        ; $41ac: $c1
    inc d                                         ; $41ad: $14
    ld hl, sp+$14                                 ; $41ae: $f8 $14
    ld e, [hl]                                    ; $41b0: $5e
    dec d                                         ; $41b1: $15
    ld h, c                                       ; $41b2: $61
    dec d                                         ; $41b3: $15
    adc a                                         ; $41b4: $8f
    dec d                                         ; $41b5: $15
    sub a                                         ; $41b6: $97
    dec d                                         ; $41b7: $15
    xor a                                         ; $41b8: $af
    dec d                                         ; $41b9: $15

jr_01d_41ba:
    ret nc                                        ; $41ba: $d0

    dec d                                         ; $41bb: $15
    nop                                           ; $41bc: $00
    ld d, $32                                     ; $41bd: $16 $32
    ld d, $67                                     ; $41bf: $16 $67
    ld d, $88                                     ; $41c1: $16 $88
    ld d, $b8                                     ; $41c3: $16 $b8
    ld d, $ea                                     ; $41c5: $16 $ea
    ld d, $1f                                     ; $41c7: $16 $1f
    rla                                           ; $41c9: $17
    ld c, h                                       ; $41ca: $4c
    rla                                           ; $41cb: $17
    add c                                         ; $41cc: $81
    rla                                           ; $41cd: $17
    or h                                          ; $41ce: $b4
    rla                                           ; $41cf: $17
    jp hl                                         ; $41d0: $e9


    rla                                           ; $41d1: $17
    inc e                                         ; $41d2: $1c
    jr jr_01d_4229                                ; $41d3: $18 $54

    jr jr_01d_4194                                ; $41d5: $18 $bd

    jr jr_01d_41ba                                ; $41d7: $18 $e1

    jr jr_01d_41e0                                ; $41d9: $18 $05

    add hl, de                                    ; $41db: $19
    jr nc, jr_01d_41f7                            ; $41dc: $30 $19

    ld b, a                                       ; $41de: $47
    add hl, de                                    ; $41df: $19

jr_01d_41e0:
    ld a, [hl]                                    ; $41e0: $7e
    add hl, de                                    ; $41e1: $19
    sub $19                                       ; $41e2: $d6 $19
    rlca                                          ; $41e4: $07
    ld a, [de]                                    ; $41e5: $1a
    add hl, de                                    ; $41e6: $19
    ld a, [de]                                    ; $41e7: $1a
    ld b, l                                       ; $41e8: $45
    ld a, [de]                                    ; $41e9: $1a
    ld e, c                                       ; $41ea: $59
    ld a, [de]                                    ; $41eb: $1a
    add c                                         ; $41ec: $81
    ld a, [de]                                    ; $41ed: $1a
    cp h                                          ; $41ee: $bc
    ld a, [de]                                    ; $41ef: $1a
    db $db                                        ; $41f0: $db
    ld a, [de]                                    ; $41f1: $1a
    ld c, $1b                                     ; $41f2: $0e $1b
    ld l, e                                       ; $41f4: $6b
    dec de                                        ; $41f5: $1b
    sbc a                                         ; $41f6: $9f

jr_01d_41f7:
    dec de                                        ; $41f7: $1b
    or b                                          ; $41f8: $b0
    dec de                                        ; $41f9: $1b
    call nz, $f81b                                ; $41fa: $c4 $1b $f8
    dec de                                        ; $41fd: $1b
    ld a, [hl+]                                   ; $41fe: $2a
    inc e                                         ; $41ff: $1c
    jr c, @+$1e                                   ; $4200: $38 $1c

    ld e, h                                       ; $4202: $5c
    inc e                                         ; $4203: $1c
    sub d                                         ; $4204: $92
    inc e                                         ; $4205: $1c
    or l                                          ; $4206: $b5
    inc e                                         ; $4207: $1c
    ret c                                         ; $4208: $d8

    inc e                                         ; $4209: $1c
    db $ec                                        ; $420a: $ec
    inc e                                         ; $420b: $1c
    inc c                                         ; $420c: $0c
    dec e                                         ; $420d: $1d
    inc a                                         ; $420e: $3c
    dec e                                         ; $420f: $1d
    halt                                          ; $4210: $76
    dec e                                         ; $4211: $1d
    and a                                         ; $4212: $a7
    dec e                                         ; $4213: $1d
    ld a, [de]                                    ; $4214: $1a
    ld e, $2b                                     ; $4215: $1e $2b
    ld e, $4d                                     ; $4217: $1e $4d
    ld e, $69                                     ; $4219: $1e $69
    ld e, $81                                     ; $421b: $1e $81
    ld e, $8e                                     ; $421d: $1e $8e
    ld e, $9e                                     ; $421f: $1e $9e
    ld e, $ad                                     ; $4221: $1e $ad
    ld e, $ca                                     ; $4223: $1e $ca
    ld e, $da                                     ; $4225: $1e $da
    ld e, $e9                                     ; $4227: $1e $e9

jr_01d_4229:
    ld e, $07                                     ; $4229: $1e $07
    rra                                           ; $422b: $1f
    dec l                                         ; $422c: $2d
    rra                                           ; $422d: $1f
    scf                                           ; $422e: $37
    rra                                           ; $422f: $1f
    ld d, e                                       ; $4230: $53
    rra                                           ; $4231: $1f
    ld e, a                                       ; $4232: $5f
    rra                                           ; $4233: $1f
    ld l, h                                       ; $4234: $6c
    rra                                           ; $4235: $1f
    ld [hl], a                                    ; $4236: $77
    rra                                           ; $4237: $1f
    sub a                                         ; $4238: $97
    rra                                           ; $4239: $1f
    add $1f                                       ; $423a: $c6 $1f
    db $eb                                        ; $423c: $eb
    rra                                           ; $423d: $1f
    add hl, bc                                    ; $423e: $09
    jr nz, jr_01d_425a                            ; $423f: $20 $19

    jr nz, jr_01d_4275                            ; $4241: $20 $32

    jr nz, @+$54                                  ; $4243: $20 $52

    jr nz, jr_01d_42bf                            ; $4245: $20 $78

    jr nz, jr_01d_4229                            ; $4247: $20 $e0

    jr nz, @+$19                                  ; $4249: $20 $17

    ld hl, $2127                                  ; $424b: $21 $27 $21
    dec sp                                        ; $424e: $3b
    ld hl, $214d                                  ; $424f: $21 $4d $21
    ld [hl], c                                    ; $4252: $71
    ld hl, $218d                                  ; $4253: $21 $8d $21
    or b                                          ; $4256: $b0
    ld hl, $21d8                                  ; $4257: $21 $d8 $21

jr_01d_425a:
    ld bc, $3622                                  ; $425a: $01 $22 $36
    ld [hl+], a                                   ; $425d: $22
    ld l, b                                       ; $425e: $68
    ld [hl+], a                                   ; $425f: $22
    call $fa22                                    ; $4260: $cd $22 $fa
    ld [hl+], a                                   ; $4263: $22
    rla                                           ; $4264: $17
    inc hl                                        ; $4265: $23
    add hl, hl                                    ; $4266: $29
    inc hl                                        ; $4267: $23
    ld b, a                                       ; $4268: $47
    inc hl                                        ; $4269: $23
    ld a, e                                       ; $426a: $7b
    inc hl                                        ; $426b: $23
    xor d                                         ; $426c: $aa
    inc hl                                        ; $426d: $23
    call c, Call_000_0a23                         ; $426e: $dc $23 $0a
    inc h                                         ; $4271: $24
    dec e                                         ; $4272: $1d
    inc h                                         ; $4273: $24
    ld b, d                                       ; $4274: $42

jr_01d_4275:
    inc h                                         ; $4275: $24
    ld d, a                                       ; $4276: $57
    inc h                                         ; $4277: $24
    add d                                         ; $4278: $82
    inc h                                         ; $4279: $24
    sub l                                         ; $427a: $95
    inc h                                         ; $427b: $24
    xor b                                         ; $427c: $a8
    inc h                                         ; $427d: $24
    or h                                          ; $427e: $b4
    inc h                                         ; $427f: $24
    push bc                                       ; $4280: $c5
    inc h                                         ; $4281: $24
    and $24                                       ; $4282: $e6 $24
    add hl, bc                                    ; $4284: $09

jr_01d_4285:
    dec h                                         ; $4285: $25
    jr jr_01d_42ad                                ; $4286: $18 $25

    daa                                           ; $4288: $27
    dec h                                         ; $4289: $25
    jr c, jr_01d_42b1                             ; $428a: $38 $25

    ld e, c                                       ; $428c: $59
    dec h                                         ; $428d: $25
    ld a, h                                       ; $428e: $7c
    dec h                                         ; $428f: $25
    adc e                                         ; $4290: $8b
    dec h                                         ; $4291: $25
    sub h                                         ; $4292: $94
    dec h                                         ; $4293: $25
    xor d                                         ; $4294: $aa
    dec h                                         ; $4295: $25
    sla l                                         ; $4296: $cb $25

jr_01d_4298:
    db $ed                                        ; $4298: $ed
    dec h                                         ; $4299: $25
    dec de                                        ; $429a: $1b
    ld h, $66                                     ; $429b: $26 $66
    ld h, $88                                     ; $429d: $26 $88
    ld h, $b8                                     ; $429f: $26 $b8
    ld h, $cd                                     ; $42a1: $26 $cd
    ld h, $fd                                     ; $42a3: $26 $fd
    ld h, $37                                     ; $42a5: $26 $37
    daa                                           ; $42a7: $27
    ld l, c                                       ; $42a8: $69
    daa                                           ; $42a9: $27
    sub l                                         ; $42aa: $95
    daa                                           ; $42ab: $27
    xor [hl]                                      ; $42ac: $ae

jr_01d_42ad:
    daa                                           ; $42ad: $27
    db $d3                                        ; $42ae: $d3
    daa                                           ; $42af: $27
    rst $30                                       ; $42b0: $f7

jr_01d_42b1:
    daa                                           ; $42b1: $27
    dec h                                         ; $42b2: $25
    jr z, jr_01d_430d                             ; $42b3: $28 $58

    jr z, jr_01d_432d                             ; $42b5: $28 $76

    jr z, jr_01d_425a                             ; $42b7: $28 $a1

    jr z, jr_01d_4285                             ; $42b9: $28 $ca

    jr z, jr_01d_4298                             ; $42bb: $28 $db

    jr z, @+$01                                   ; $42bd: $28 $ff

jr_01d_42bf:
    jr z, @+$36                                   ; $42bf: $28 $34

    add hl, hl                                    ; $42c1: $29
    ld b, a                                       ; $42c2: $47
    add hl, hl                                    ; $42c3: $29
    ld l, c                                       ; $42c4: $69
    add hl, hl                                    ; $42c5: $29
    and c                                         ; $42c6: $a1
    add hl, hl                                    ; $42c7: $29
    push de                                       ; $42c8: $d5
    add hl, hl                                    ; $42c9: $29
    jr nc, @+$2c                                  ; $42ca: $30 $2a

    adc e                                         ; $42cc: $8b
    ld a, [hl+]                                   ; $42cd: $2a
    and [hl]                                      ; $42ce: $a6
    ld a, [hl+]                                   ; $42cf: $2a
    ret z                                         ; $42d0: $c8

    ld a, [hl+]                                   ; $42d1: $2a
    db $d3                                        ; $42d2: $d3
    ld a, [hl+]                                   ; $42d3: $2a
    call c, $e32a                                 ; $42d4: $dc $2a $e3
    ld a, [hl+]                                   ; $42d7: $2a
    db $eb                                        ; $42d8: $eb
    ld a, [hl+]                                   ; $42d9: $2a
    rst $30                                       ; $42da: $f7
    ld a, [hl+]                                   ; $42db: $2a
    ld [bc], a                                    ; $42dc: $02
    dec hl                                        ; $42dd: $2b
    ld [de], a                                    ; $42de: $12
    dec hl                                        ; $42df: $2b
    ld [hl+], a                                   ; $42e0: $22
    dec hl                                        ; $42e1: $2b
    inc sp                                        ; $42e2: $33
    dec hl                                        ; $42e3: $2b
    ld b, c                                       ; $42e4: $41
    dec hl                                        ; $42e5: $2b
    ld d, h                                       ; $42e6: $54
    dec hl                                        ; $42e7: $2b
    ld h, a                                       ; $42e8: $67
    dec hl                                        ; $42e9: $2b
    ld a, b                                       ; $42ea: $78
    dec hl                                        ; $42eb: $2b
    adc e                                         ; $42ec: $8b
    dec hl                                        ; $42ed: $2b
    sub a                                         ; $42ee: $97
    dec hl                                        ; $42ef: $2b
    xor c                                         ; $42f0: $a9
    dec hl                                        ; $42f1: $2b
    cp d                                          ; $42f2: $ba
    dec hl                                        ; $42f3: $2b
    call z, $d82b                                 ; $42f4: $cc $2b $d8
    dec hl                                        ; $42f7: $2b
    db $eb                                        ; $42f8: $eb
    dec hl                                        ; $42f9: $2b
    db $fc                                        ; $42fa: $fc
    dec hl                                        ; $42fb: $2b
    inc c                                         ; $42fc: $0c
    inc l                                         ; $42fd: $2c

jr_01d_42fe:
    jr nz, jr_01d_432c                            ; $42fe: $20 $2c

    ld [hl-], a                                   ; $4300: $32
    inc l                                         ; $4301: $2c
    ld b, [hl]                                    ; $4302: $46
    inc l                                         ; $4303: $2c
    ld e, e                                       ; $4304: $5b
    inc l                                         ; $4305: $2c
    ld l, a                                       ; $4306: $6f
    inc l                                         ; $4307: $2c
    add c                                         ; $4308: $81
    inc l                                         ; $4309: $2c
    sub l                                         ; $430a: $95
    inc l                                         ; $430b: $2c
    and l                                         ; $430c: $a5

jr_01d_430d:
    inc l                                         ; $430d: $2c
    or h                                          ; $430e: $b4
    inc l                                         ; $430f: $2c
    push bc                                       ; $4310: $c5
    inc l                                         ; $4311: $2c
    sub $2c                                       ; $4312: $d6 $2c
    rst $20                                       ; $4314: $e7
    inc l                                         ; $4315: $2c
    ld sp, hl                                     ; $4316: $f9
    inc l                                         ; $4317: $2c
    add hl, bc                                    ; $4318: $09
    dec l                                         ; $4319: $2d
    add hl, de                                    ; $431a: $19
    dec l                                         ; $431b: $2d
    add hl, hl                                    ; $431c: $29
    dec l                                         ; $431d: $2d
    ld a, [hl-]                                   ; $431e: $3a
    dec l                                         ; $431f: $2d
    ld c, h                                       ; $4320: $4c
    dec l                                         ; $4321: $2d
    ld e, a                                       ; $4322: $5f
    dec l                                         ; $4323: $2d
    ld l, [hl]                                    ; $4324: $6e
    dec l                                         ; $4325: $2d
    ld a, [hl]                                    ; $4326: $7e
    dec l                                         ; $4327: $2d
    sub c                                         ; $4328: $91
    dec l                                         ; $4329: $2d
    sbc a                                         ; $432a: $9f
    dec l                                         ; $432b: $2d

jr_01d_432c:
    or c                                          ; $432c: $b1

jr_01d_432d:
    dec l                                         ; $432d: $2d
    jp nz, $d32d                                  ; $432e: $c2 $2d $d3

    dec l                                         ; $4331: $2d
    push hl                                       ; $4332: $e5
    dec l                                         ; $4333: $2d
    or $2d                                        ; $4334: $f6 $2d
    add hl, bc                                    ; $4336: $09
    ld l, $1b                                     ; $4337: $2e $1b
    ld l, $2d                                     ; $4339: $2e $2d
    ld l, $3f                                     ; $433b: $2e $3f
    ld l, $53                                     ; $433d: $2e $53
    ld l, $65                                     ; $433f: $2e $65
    ld l, $77                                     ; $4341: $2e $77
    ld l, $89                                     ; $4343: $2e $89
    ld l, $98                                     ; $4345: $2e $98
    ld l, $a7                                     ; $4347: $2e $a7
    ld l, $b9                                     ; $4349: $2e $b9
    ld l, $cb                                     ; $434b: $2e $cb
    ld l, $db                                     ; $434d: $2e $db
    ld l, $ee                                     ; $434f: $2e $ee
    ld l, $fc                                     ; $4351: $2e $fc
    ld l, $0f                                     ; $4353: $2e $0f
    cpl                                           ; $4355: $2f
    ld e, $2f                                     ; $4356: $1e $2f

jr_01d_4358:
    ld sp, $442f                                  ; $4358: $31 $2f $44
    cpl                                           ; $435b: $2f
    ld d, l                                       ; $435c: $55
    cpl                                           ; $435d: $2f
    ld h, [hl]                                    ; $435e: $66
    cpl                                           ; $435f: $2f
    ld [hl], a                                    ; $4360: $77
    cpl                                           ; $4361: $2f
    add a                                         ; $4362: $87
    cpl                                           ; $4363: $2f
    sbc d                                         ; $4364: $9a
    cpl                                           ; $4365: $2f
    xor h                                         ; $4366: $ac
    cpl                                           ; $4367: $2f
    cp a                                          ; $4368: $bf
    cpl                                           ; $4369: $2f
    pop de                                        ; $436a: $d1
    cpl                                           ; $436b: $2f
    ld [c], a                                     ; $436c: $e2
    cpl                                           ; $436d: $2f
    db $f4                                        ; $436e: $f4
    cpl                                           ; $436f: $2f
    ld [$1c30], sp                                ; $4370: $08 $30 $1c
    jr nc, jr_01d_43a1                            ; $4373: $30 $2c

    jr nc, jr_01d_43b4                            ; $4375: $30 $3d

    jr nc, jr_01d_43c5                            ; $4377: $30 $4c

    jr nc, @+$67                                  ; $4379: $30 $65

    jr nc, jr_01d_42fe                            ; $437b: $30 $81

    jr nc, jr_01d_4358                            ; $437d: $30 $d9

    jr nc, @+$41                                  ; $437f: $30 $3f

    ld sp, $3196                                  ; $4381: $31 $96 $31
    reti                                          ; $4384: $d9


    ld sp, $31f2                                  ; $4385: $31 $f2 $31
    ld b, c                                       ; $4388: $41
    ld [hl-], a                                   ; $4389: $32
    add e                                         ; $438a: $83
    ld [hl-], a                                   ; $438b: $32
    call z, Call_000_0d32                         ; $438c: $cc $32 $0d
    inc sp                                        ; $438f: $33
    ld [hl-], a                                   ; $4390: $32
    inc sp                                        ; $4391: $33

jr_01d_4392:
    ld b, e                                       ; $4392: $43
    inc sp                                        ; $4393: $33
    ld c, b                                       ; $4394: $48
    inc sp                                        ; $4395: $33
    ld l, a                                       ; $4396: $6f
    inc sp                                        ; $4397: $33
    add d                                         ; $4398: $82
    inc sp                                        ; $4399: $33
    sbc l                                         ; $439a: $9d
    inc sp                                        ; $439b: $33
    cp e                                          ; $439c: $bb
    inc sp                                        ; $439d: $33
    rst $18                                       ; $439e: $df
    inc sp                                        ; $439f: $33
    dec bc                                        ; $43a0: $0b

jr_01d_43a1:
    inc [hl]                                      ; $43a1: $34
    ld [hl], $34                                  ; $43a2: $36 $34
    ld h, d                                       ; $43a4: $62
    inc [hl]                                      ; $43a5: $34
    ld [hl], c                                    ; $43a6: $71
    inc [hl]                                      ; $43a7: $34
    add l                                         ; $43a8: $85
    inc [hl]                                      ; $43a9: $34
    cp c                                          ; $43aa: $b9
    inc [hl]                                      ; $43ab: $34
    db $db                                        ; $43ac: $db
    inc [hl]                                      ; $43ad: $34
    ld de, $3e35                                  ; $43ae: $11 $35 $3e
    dec [hl]                                      ; $43b1: $35
    ld h, d                                       ; $43b2: $62
    dec [hl]                                      ; $43b3: $35

jr_01d_43b4:
    ld a, l                                       ; $43b4: $7d
    dec [hl]                                      ; $43b5: $35
    or a                                          ; $43b6: $b7
    dec [hl]                                      ; $43b7: $35
    ret z                                         ; $43b8: $c8

    dec [hl]                                      ; $43b9: $35
    call $f735                                    ; $43ba: $cd $35 $f7

jr_01d_43bd:
    dec [hl]                                      ; $43bd: $35
    ld a, [bc]                                    ; $43be: $0a
    ld [hl], $25                                  ; $43bf: $36 $25
    ld [hl], $43                                  ; $43c1: $36 $43
    ld [hl], $67                                  ; $43c3: $36 $67

jr_01d_43c5:
    ld [hl], $93                                  ; $43c5: $36 $93
    ld [hl], $be                                  ; $43c7: $36 $be
    ld [hl], $ea                                  ; $43c9: $36 $ea
    ld [hl], $f9                                  ; $43cb: $36 $f9
    ld [hl], $0d                                  ; $43cd: $36 $0d
    scf                                           ; $43cf: $37
    ld b, c                                       ; $43d0: $41
    scf                                           ; $43d1: $37
    ld h, e                                       ; $43d2: $63
    scf                                           ; $43d3: $37
    sub [hl]                                      ; $43d4: $96
    scf                                           ; $43d5: $37
    cp c                                          ; $43d6: $b9
    scf                                           ; $43d7: $37
    db $e4                                        ; $43d8: $e4
    scf                                           ; $43d9: $37
    rla                                           ; $43da: $17
    jr c, jr_01d_441e                             ; $43db: $38 $41

    jr c, jr_01d_4435                             ; $43dd: $38 $56

    jr c, jr_01d_4459                             ; $43df: $38 $78

    jr c, jr_01d_4392                             ; $43e1: $38 $af

    jr c, jr_01d_43bd                             ; $43e3: $38 $d8

    jr c, @+$5b                                   ; $43e5: $38 $59

    ld l, a                                       ; $43e7: $6f
    ld [hl], e                                    ; $43e8: $73
    ld l, b                                       ; $43e9: $68
    ld l, c                                       ; $43ea: $69
    jr nz, jr_01d_4430                            ; $43eb: $20 $43

    ld l, b                                       ; $43ed: $68
    ld h, c                                       ; $43ee: $61
    ld l, l                                       ; $43ef: $6d
    ld [hl], b                                    ; $43f0: $70
    ld l, c                                       ; $43f1: $69
    ld l, a                                       ; $43f2: $6f
    ld l, [hl]                                    ; $43f3: $6e
    ld [hl], e                                    ; $43f4: $73
    ld l, b                                       ; $43f5: $68
    ld l, c                                       ; $43f6: $69
    ld [hl], b                                    ; $43f7: $70
    nop                                           ; $43f8: $00
    ld b, d                                       ; $43f9: $42
    ld l, a                                       ; $43fa: $6f
    ld l, a                                       ; $43fb: $6f
    jr nz, jr_01d_4441                            ; $43fc: $20 $43

    ld l, h                                       ; $43fe: $6c
    ld h, c                                       ; $43ff: $61
    ld [hl], e                                    ; $4400: $73
    ld [hl], e                                    ; $4401: $73
    ld l, c                                       ; $4402: $69
    ld h, e                                       ; $4403: $63
    nop                                           ; $4404: $00
    ld c, l                                       ; $4405: $4d
    ld h, c                                       ; $4406: $61
    ld [hl], d                                    ; $4407: $72
    ld l, c                                       ; $4408: $69
    ld l, a                                       ; $4409: $6f
    jr nz, jr_01d_445b                            ; $440a: $20 $4f

    ld [hl], b                                    ; $440c: $70
    ld h, l                                       ; $440d: $65
    ld l, [hl]                                    ; $440e: $6e
    nop                                           ; $440f: $00
    ld d, h                                       ; $4410: $54
    ld l, a                                       ; $4411: $6f
    ld [hl], l                                    ; $4412: $75
    ld [hl], d                                    ; $4413: $72
    ld l, [hl]                                    ; $4414: $6e
    ld h, c                                       ; $4415: $61
    ld l, l                                       ; $4416: $6d
    ld h, l                                       ; $4417: $65
    ld l, [hl]                                    ; $4418: $6e
    ld [hl], h                                    ; $4419: $74
    jr nz, jr_01d_4470                            ; $441a: $20 $54

    ld l, a                                       ; $441c: $6f
    ld [hl], h                                    ; $441d: $74

jr_01d_441e:
    ld h, c                                       ; $441e: $61
    ld l, h                                       ; $441f: $6c
    ld [hl], e                                    ; $4420: $73
    nop                                           ; $4421: $00
    ld d, h                                       ; $4422: $54
    ld l, a                                       ; $4423: $6f
    ld h, c                                       ; $4424: $61
    ld h, h                                       ; $4425: $64
    jr nz, jr_01d_4470                            ; $4426: $20 $48

    ld l, c                                       ; $4428: $69
    ld h, a                                       ; $4429: $67
    ld l, b                                       ; $442a: $68
    ld l, h                                       ; $442b: $6c
    ld h, c                                       ; $442c: $61
    ld l, [hl]                                    ; $442d: $6e
    ld h, h                                       ; $442e: $64
    ld [hl], e                                    ; $442f: $73

jr_01d_4430:
    nop                                           ; $4430: $00
    ld c, e                                       ; $4431: $4b
    ld l, a                                       ; $4432: $6f
    ld l, a                                       ; $4433: $6f
    ld [hl], b                                    ; $4434: $70

jr_01d_4435:
    ld h, c                                       ; $4435: $61
    jr nz, jr_01d_4488                            ; $4436: $20 $50

    ld h, c                                       ; $4438: $61
    ld [hl], d                                    ; $4439: $72
    ld l, e                                       ; $443a: $6b
    nop                                           ; $443b: $00
    ld d, e                                       ; $443c: $53
    ld l, b                                       ; $443d: $68
    ld a, c                                       ; $443e: $79
    jr nz, jr_01d_4488                            ; $443f: $20 $47

jr_01d_4441:
    ld [hl], l                                    ; $4441: $75
    ld a, c                                       ; $4442: $79
    jr nz, jr_01d_4489                            ; $4443: $20 $44

    ld h, l                                       ; $4445: $65
    ld [hl], e                                    ; $4446: $73
    ld h, l                                       ; $4447: $65
    ld [hl], d                                    ; $4448: $72
    ld [hl], h                                    ; $4449: $74
    nop                                           ; $444a: $00
    ld e, c                                       ; $444b: $59
    ld l, a                                       ; $444c: $6f
    ld [hl], e                                    ; $444d: $73
    ld l, b                                       ; $444e: $68
    ld l, c                                       ; $444f: $69
    daa                                           ; $4450: $27
    ld [hl], e                                    ; $4451: $73
    jr nz, jr_01d_449d                            ; $4452: $20 $49

    ld [hl], e                                    ; $4454: $73
    ld l, h                                       ; $4455: $6c
    ld h, c                                       ; $4456: $61
    ld l, [hl]                                    ; $4457: $6e
    ld h, h                                       ; $4458: $64

jr_01d_4459:
    nop                                           ; $4459: $00
    ld b, d                                       ; $445a: $42

jr_01d_445b:
    ld l, a                                       ; $445b: $6f
    ld l, a                                       ; $445c: $6f
    jr nz, jr_01d_44b5                            ; $445d: $20 $56

    ld h, c                                       ; $445f: $61
    ld l, h                                       ; $4460: $6c
    ld l, h                                       ; $4461: $6c
    ld h, l                                       ; $4462: $65
    ld a, c                                       ; $4463: $79
    nop                                           ; $4464: $00
    ld c, l                                       ; $4465: $4d
    ld h, c                                       ; $4466: $61
    ld [hl], d                                    ; $4467: $72
    ld l, c                                       ; $4468: $69
    ld l, a                                       ; $4469: $6f
    daa                                           ; $446a: $27
    ld [hl], e                                    ; $446b: $73
    jr nz, jr_01d_44c1                            ; $446c: $20 $53

    ld [hl], h                                    ; $446e: $74
    ld h, c                                       ; $446f: $61

jr_01d_4470:
    ld [hl], d                                    ; $4470: $72
    nop                                           ; $4471: $00
    ld c, l                                       ; $4472: $4d
    ld h, c                                       ; $4473: $61
    ld [hl], d                                    ; $4474: $72
    ld l, c                                       ; $4475: $69
    ld l, a                                       ; $4476: $6f
    ld l, [hl]                                    ; $4477: $6e
    jr nz, jr_01d_44bd                            ; $4478: $20 $43

    ld l, h                                       ; $447a: $6c
    ld [hl], l                                    ; $447b: $75
    ld h, d                                       ; $447c: $62
    nop                                           ; $447d: $00
    ld d, b                                       ; $447e: $50
    ld h, c                                       ; $447f: $61
    ld l, h                                       ; $4480: $6c
    ld l, l                                       ; $4481: $6d
    jr nz, jr_01d_44c7                            ; $4482: $20 $43

    ld l, h                                       ; $4484: $6c
    ld [hl], l                                    ; $4485: $75
    ld h, d                                       ; $4486: $62
    nop                                           ; $4487: $00

jr_01d_4488:
    ld b, h                                       ; $4488: $44

jr_01d_4489:
    ld [hl], l                                    ; $4489: $75
    ld l, [hl]                                    ; $448a: $6e
    ld h, l                                       ; $448b: $65
    jr nz, jr_01d_44d1                            ; $448c: $20 $43

    ld l, h                                       ; $448e: $6c
    ld [hl], l                                    ; $448f: $75
    ld h, d                                       ; $4490: $62
    nop                                           ; $4491: $00
    ld c, h                                       ; $4492: $4c
    ld l, c                                       ; $4493: $69
    ld l, [hl]                                    ; $4494: $6e
    ld l, e                                       ; $4495: $6b
    ld [hl], e                                    ; $4496: $73
    jr nz, jr_01d_44dc                            ; $4497: $20 $43

    ld l, h                                       ; $4499: $6c
    ld [hl], l                                    ; $449a: $75
    ld h, d                                       ; $449b: $62
    nop                                           ; $449c: $00

jr_01d_449d:
    ld d, b                                       ; $449d: $50
    ld h, l                                       ; $449e: $65
    ld h, c                                       ; $449f: $61
    ld h, e                                       ; $44a0: $63
    ld l, b                                       ; $44a1: $68
    daa                                           ; $44a2: $27
    ld [hl], e                                    ; $44a3: $73
    jr nz, jr_01d_44e9                            ; $44a4: $20 $43

    ld h, c                                       ; $44a6: $61
    ld [hl], e                                    ; $44a7: $73
    ld [hl], h                                    ; $44a8: $74
    ld l, h                                       ; $44a9: $6c
    ld h, l                                       ; $44aa: $65
    nop                                           ; $44ab: $00
    ld d, h                                       ; $44ac: $54
    ld l, a                                       ; $44ad: $6f
    ld [hl], l                                    ; $44ae: $75
    ld [hl], d                                    ; $44af: $72
    ld l, [hl]                                    ; $44b0: $6e
    ld h, c                                       ; $44b1: $61
    ld l, l                                       ; $44b2: $6d
    ld h, l                                       ; $44b3: $65
    ld l, [hl]                                    ; $44b4: $6e

jr_01d_44b5:
    ld [hl], h                                    ; $44b5: $74
    jr nz, jr_01d_450c                            ; $44b6: $20 $54

    ld l, a                                       ; $44b8: $6f
    ld [hl], h                                    ; $44b9: $74
    ld h, c                                       ; $44ba: $61
    ld l, h                                       ; $44bb: $6c
    ld [hl], e                                    ; $44bc: $73

jr_01d_44bd:
    nop                                           ; $44bd: $00
    ld d, b                                       ; $44be: $50
    ld l, h                                       ; $44bf: $6c
    ld [hl], l                                    ; $44c0: $75

jr_01d_44c1:
    ld l, l                                       ; $44c1: $6d
    nop                                           ; $44c2: $00
    ld b, e                                       ; $44c3: $43
    ld l, b                                       ; $44c4: $68
    ld h, c                                       ; $44c5: $61
    ld [hl], d                                    ; $44c6: $72

jr_01d_44c7:
    ld l, h                                       ; $44c7: $6c
    ld l, c                                       ; $44c8: $69
    ld h, l                                       ; $44c9: $65
    nop                                           ; $44ca: $00
    ld d, b                                       ; $44cb: $50
    ld h, l                                       ; $44cc: $65
    ld h, c                                       ; $44cd: $61
    ld h, e                                       ; $44ce: $63
    ld l, b                                       ; $44cf: $68
    nop                                           ; $44d0: $00

jr_01d_44d1:
    ld b, d                                       ; $44d1: $42
    ld h, c                                       ; $44d2: $61
    ld h, d                                       ; $44d3: $62
    ld a, c                                       ; $44d4: $79
    jr nz, jr_01d_4524                            ; $44d5: $20 $4d

    ld h, c                                       ; $44d7: $61
    ld [hl], d                                    ; $44d8: $72
    ld l, c                                       ; $44d9: $69
    ld l, a                                       ; $44da: $6f
    nop                                           ; $44db: $00

jr_01d_44dc:
    ld c, h                                       ; $44dc: $4c
    ld [hl], l                                    ; $44dd: $75
    ld l, c                                       ; $44de: $69
    ld h, a                                       ; $44df: $67
    ld l, c                                       ; $44e0: $69
    nop                                           ; $44e1: $00
    ld e, c                                       ; $44e2: $59
    ld l, a                                       ; $44e3: $6f
    ld [hl], e                                    ; $44e4: $73
    ld l, b                                       ; $44e5: $68
    ld l, c                                       ; $44e6: $69
    nop                                           ; $44e7: $00
    ld d, e                                       ; $44e8: $53

jr_01d_44e9:
    ld l, a                                       ; $44e9: $6f
    ld l, [hl]                                    ; $44ea: $6e
    ld l, [hl]                                    ; $44eb: $6e
    ld a, c                                       ; $44ec: $79
    nop                                           ; $44ed: $00
    ld d, a                                       ; $44ee: $57
    ld h, c                                       ; $44ef: $61
    ld [hl], d                                    ; $44f0: $72
    ld l, c                                       ; $44f1: $69
    ld l, a                                       ; $44f2: $6f
    nop                                           ; $44f3: $00
    ld c, b                                       ; $44f4: $48
    ld h, c                                       ; $44f5: $61
    ld [hl], d                                    ; $44f6: $72
    ld [hl], d                                    ; $44f7: $72
    ld a, c                                       ; $44f8: $79
    nop                                           ; $44f9: $00
    ld c, l                                       ; $44fa: $4d
    ld h, c                                       ; $44fb: $61
    ld [hl], d                                    ; $44fc: $72
    ld l, c                                       ; $44fd: $69
    ld l, a                                       ; $44fe: $6f
    nop                                           ; $44ff: $00
    ld c, l                                       ; $4500: $4d
    ld h, c                                       ; $4501: $61
    ld [hl], b                                    ; $4502: $70
    ld l, h                                       ; $4503: $6c
    ld h, l                                       ; $4504: $65
    nop                                           ; $4505: $00
    ld b, h                                       ; $4506: $44
    ld c, e                                       ; $4507: $4b
    nop                                           ; $4508: $00
    ld b, d                                       ; $4509: $42
    ld l, a                                       ; $450a: $6f
    ld [hl], a                                    ; $450b: $77

jr_01d_450c:
    ld [hl], e                                    ; $450c: $73
    ld h, l                                       ; $450d: $65
    ld [hl], d                                    ; $450e: $72
    nop                                           ; $450f: $00
    ld c, l                                       ; $4510: $4d
    ld h, l                                       ; $4511: $65
    ld [hl], h                                    ; $4512: $74
    ld h, c                                       ; $4513: $61
    ld l, h                                       ; $4514: $6c
    jr nz, @+$4f                                  ; $4515: $20 $4d

    ld h, c                                       ; $4517: $61
    ld [hl], d                                    ; $4518: $72
    ld l, c                                       ; $4519: $69
    ld l, a                                       ; $451a: $6f
    nop                                           ; $451b: $00
    ld c, e                                       ; $451c: $4b
    ld l, c                                       ; $451d: $69
    ld h, h                                       ; $451e: $64
    nop                                           ; $451f: $00
    ld d, e                                       ; $4520: $53
    ld l, b                                       ; $4521: $68
    ld h, l                                       ; $4522: $65
    ld [hl], d                                    ; $4523: $72

jr_01d_4524:
    ld [hl], d                                    ; $4524: $72
    ld a, c                                       ; $4525: $79
    nop                                           ; $4526: $00
    ld b, c                                       ; $4527: $41
    ld a, d                                       ; $4528: $7a
    ld h, c                                       ; $4529: $61
    ld l, h                                       ; $452a: $6c
    ld h, l                                       ; $452b: $65
    ld h, c                                       ; $452c: $61
    nop                                           ; $452d: $00
    ld c, d                                       ; $452e: $4a
    ld l, a                                       ; $452f: $6f
    ld h, l                                       ; $4530: $65
    nop                                           ; $4531: $00
    ld b, e                                       ; $4532: $43
    ld l, a                                       ; $4533: $6f
    ld [hl], l                                    ; $4534: $75
    ld [hl], d                                    ; $4535: $72
    ld [hl], e                                    ; $4536: $73
    ld h, l                                       ; $4537: $65
    nop                                           ; $4538: $00
    ld c, b                                       ; $4539: $48
    ld l, a                                       ; $453a: $6f
    ld l, h                                       ; $453b: $6c
    ld h, l                                       ; $453c: $65
    nop                                           ; $453d: $00
    ld c, l                                       ; $453e: $4d
    ld h, c                                       ; $453f: $61
    ld [hl], d                                    ; $4540: $72
    ld l, c                                       ; $4541: $69
    ld l, a                                       ; $4542: $6f
    ld l, [hl]                                    ; $4543: $6e
    jr nz, jr_01d_4589                            ; $4544: $20 $43

    ld l, h                                       ; $4546: $6c
    ld [hl], l                                    ; $4547: $75
    ld h, d                                       ; $4548: $62
    nop                                           ; $4549: $00
    ld d, b                                       ; $454a: $50
    ld h, c                                       ; $454b: $61
    ld l, h                                       ; $454c: $6c
    ld l, l                                       ; $454d: $6d
    jr nz, jr_01d_4593                            ; $454e: $20 $43

    ld l, h                                       ; $4550: $6c
    ld [hl], l                                    ; $4551: $75
    ld h, d                                       ; $4552: $62
    nop                                           ; $4553: $00
    ld b, h                                       ; $4554: $44
    ld [hl], l                                    ; $4555: $75
    ld l, [hl]                                    ; $4556: $6e
    ld h, l                                       ; $4557: $65
    jr nz, jr_01d_459d                            ; $4558: $20 $43

    ld l, h                                       ; $455a: $6c
    ld [hl], l                                    ; $455b: $75
    ld h, d                                       ; $455c: $62
    nop                                           ; $455d: $00
    ld c, h                                       ; $455e: $4c
    ld l, c                                       ; $455f: $69
    ld l, [hl]                                    ; $4560: $6e
    ld l, e                                       ; $4561: $6b
    ld [hl], e                                    ; $4562: $73
    jr nz, jr_01d_45a8                            ; $4563: $20 $43

    ld l, h                                       ; $4565: $6c
    ld [hl], l                                    ; $4566: $75
    ld h, d                                       ; $4567: $62
    nop                                           ; $4568: $00
    ld d, b                                       ; $4569: $50
    ld h, l                                       ; $456a: $65
    ld h, c                                       ; $456b: $61
    ld h, e                                       ; $456c: $63
    ld l, b                                       ; $456d: $68
    daa                                           ; $456e: $27
    ld [hl], e                                    ; $456f: $73
    jr nz, jr_01d_45b5                            ; $4570: $20 $43

    ld h, c                                       ; $4572: $61
    ld [hl], e                                    ; $4573: $73
    ld [hl], h                                    ; $4574: $74
    ld l, h                                       ; $4575: $6c
    ld h, l                                       ; $4576: $65
    nop                                           ; $4577: $00
    ld d, b                                       ; $4578: $50
    ld l, c                                       ; $4579: $69
    ld [hl], h                                    ; $457a: $74
    ld h, e                                       ; $457b: $63
    ld l, b                                       ; $457c: $68
    jr nz, jr_01d_45a5                            ; $457d: $20 $26

    jr nz, jr_01d_45d1                            ; $457f: $20 $50

    ld [hl], l                                    ; $4581: $75
    ld [hl], h                                    ; $4582: $74
    ld [hl], h                                    ; $4583: $74
    nop                                           ; $4584: $00
    jr z, jr_01d_45da                             ; $4585: $28 $53

    ld [hl], h                                    ; $4587: $74
    ld h, c                                       ; $4588: $61

jr_01d_4589:
    ld [hl], h                                    ; $4589: $74
    ld [hl], l                                    ; $458a: $75
    ld [hl], e                                    ; $458b: $73
    add hl, hl                                    ; $458c: $29
    nop                                           ; $458d: $00
    ld d, d                                       ; $458e: $52
    ld l, a                                       ; $458f: $6f
    ld [hl], l                                    ; $4590: $75
    ld l, [hl]                                    ; $4591: $6e
    ld h, h                                       ; $4592: $64

jr_01d_4593:
    ld [hl], e                                    ; $4593: $73
    nop                                           ; $4594: $00
    ld b, d                                       ; $4595: $42
    ld h, l                                       ; $4596: $65
    ld [hl], e                                    ; $4597: $73
    ld [hl], h                                    ; $4598: $74
    jr nz, @+$55                                  ; $4599: $20 $53

    ld h, e                                       ; $459b: $63
    ld l, a                                       ; $459c: $6f

jr_01d_459d:
    ld [hl], d                                    ; $459d: $72
    ld h, l                                       ; $459e: $65
    nop                                           ; $459f: $00
    ld b, c                                       ; $45a0: $41
    halt                                          ; $45a1: $76
    ld h, l                                       ; $45a2: $65
    ld [hl], d                                    ; $45a3: $72
    ld h, c                                       ; $45a4: $61

jr_01d_45a5:
    ld h, a                                       ; $45a5: $67
    ld h, l                                       ; $45a6: $65
    nop                                           ; $45a7: $00

jr_01d_45a8:
    ld b, d                                       ; $45a8: $42
    ld h, l                                       ; $45a9: $65
    ld [hl], e                                    ; $45aa: $73
    ld [hl], h                                    ; $45ab: $74
    jr nz, jr_01d_45f2                            ; $45ac: $20 $44

    ld [hl], d                                    ; $45ae: $72
    ld l, c                                       ; $45af: $69
    halt                                          ; $45b0: $76
    ld h, l                                       ; $45b1: $65
    nop                                           ; $45b2: $00
    ld b, c                                       ; $45b3: $41
    halt                                          ; $45b4: $76

jr_01d_45b5:
    ld h, a                                       ; $45b5: $67
    ld l, $20                                     ; $45b6: $2e $20
    ld b, h                                       ; $45b8: $44
    ld [hl], d                                    ; $45b9: $72
    ld l, c                                       ; $45ba: $69
    halt                                          ; $45bb: $76
    ld h, l                                       ; $45bc: $65
    nop                                           ; $45bd: $00
    ld b, [hl]                                    ; $45be: $46
    ld h, c                                       ; $45bf: $61
    ld l, c                                       ; $45c0: $69
    ld [hl], d                                    ; $45c1: $72
    ld [hl], a                                    ; $45c2: $77
    ld h, c                                       ; $45c3: $61
    ld a, c                                       ; $45c4: $79
    jr nz, jr_01d_4612                            ; $45c5: $20 $4b

    ld h, l                                       ; $45c7: $65
    ld h, l                                       ; $45c8: $65
    ld [hl], b                                    ; $45c9: $70
    ld [hl], e                                    ; $45ca: $73
    nop                                           ; $45cb: $00
    ld b, c                                       ; $45cc: $41
    halt                                          ; $45cd: $76
    ld h, a                                       ; $45ce: $67
    ld l, $20                                     ; $45cf: $2e $20

jr_01d_45d1:
    ld d, b                                       ; $45d1: $50
    ld [hl], l                                    ; $45d2: $75
    ld [hl], h                                    ; $45d3: $74
    ld [hl], h                                    ; $45d4: $74
    ld [hl], e                                    ; $45d5: $73
    nop                                           ; $45d6: $00
    ld d, b                                       ; $45d7: $50
    ld h, c                                       ; $45d8: $61
    ld [hl], d                                    ; $45d9: $72

jr_01d_45da:
    jr nz, jr_01d_462f                            ; $45da: $20 $53

    ld h, c                                       ; $45dc: $61
    halt                                          ; $45dd: $76
    ld h, l                                       ; $45de: $65
    ld [hl], e                                    ; $45df: $73
    nop                                           ; $45e0: $00
    ld d, b                                       ; $45e1: $50
    ld h, c                                       ; $45e2: $61
    ld [hl], d                                    ; $45e3: $72
    jr nz, jr_01d_4635                            ; $45e4: $20 $4f

    ld l, [hl]                                    ; $45e6: $6e
    ld [hl], e                                    ; $45e7: $73
    nop                                           ; $45e8: $00
    ld d, e                                       ; $45e9: $53
    ld h, c                                       ; $45ea: $61
    ld l, [hl]                                    ; $45eb: $6e
    ld h, h                                       ; $45ec: $64
    jr nz, jr_01d_4642                            ; $45ed: $20 $53

    ld h, c                                       ; $45ef: $61
    halt                                          ; $45f0: $76
    ld h, l                                       ; $45f1: $65

jr_01d_45f2:
    ld [hl], e                                    ; $45f2: $73
    nop                                           ; $45f3: $00
    ld b, d                                       ; $45f4: $42
    ld l, c                                       ; $45f5: $69
    ld [hl], d                                    ; $45f6: $72
    ld h, h                                       ; $45f7: $64
    ld l, c                                       ; $45f8: $69
    ld h, l                                       ; $45f9: $65
    jr nz, jr_01d_463e                            ; $45fa: $20 $42

    ld h, c                                       ; $45fc: $61
    ld h, h                                       ; $45fd: $64
    ld h, a                                       ; $45fe: $67
    ld h, l                                       ; $45ff: $65
    ld [hl], e                                    ; $4600: $73
    nop                                           ; $4601: $00
    ld b, [hl]                                    ; $4602: $46
    ld [hl], d                                    ; $4603: $72
    ld l, a                                       ; $4604: $6f
    ld l, [hl]                                    ; $4605: $6e
    ld [hl], h                                    ; $4606: $74
    nop                                           ; $4607: $00
    ld b, d                                       ; $4608: $42
    ld h, c                                       ; $4609: $61
    ld h, e                                       ; $460a: $63
    ld l, e                                       ; $460b: $6b
    nop                                           ; $460c: $00
    ld d, h                                       ; $460d: $54
    ld [hl], d                                    ; $460e: $72
    ld l, a                                       ; $460f: $6f
    ld [hl], b                                    ; $4610: $70
    ld l, b                                       ; $4611: $68

jr_01d_4612:
    ld l, c                                       ; $4612: $69
    ld h, l                                       ; $4613: $65
    ld [hl], e                                    ; $4614: $73
    nop                                           ; $4615: $00
    ld b, d                                       ; $4616: $42
    ld l, c                                       ; $4617: $69
    ld [hl], d                                    ; $4618: $72
    ld h, h                                       ; $4619: $64
    ld l, c                                       ; $461a: $69
    ld h, l                                       ; $461b: $65
    nop                                           ; $461c: $00
    ld b, l                                       ; $461d: $45
    ld h, c                                       ; $461e: $61
    ld h, a                                       ; $461f: $67
    ld l, h                                       ; $4620: $6c
    ld h, l                                       ; $4621: $65
    nop                                           ; $4622: $00
    ld b, c                                       ; $4623: $41
    ld l, h                                       ; $4624: $6c
    ld h, d                                       ; $4625: $62
    ld h, c                                       ; $4626: $61
    ld [hl], h                                    ; $4627: $74
    ld [hl], d                                    ; $4628: $72
    ld l, a                                       ; $4629: $6f
    ld [hl], e                                    ; $462a: $73
    ld [hl], e                                    ; $462b: $73
    nop                                           ; $462c: $00
    ld c, b                                       ; $462d: $48
    ld l, a                                       ; $462e: $6f

jr_01d_462f:
    ld l, h                                       ; $462f: $6c
    ld h, l                                       ; $4630: $65
    dec l                                         ; $4631: $2d
    ld l, c                                       ; $4632: $69
    ld l, [hl]                                    ; $4633: $6e
    dec l                                         ; $4634: $2d

jr_01d_4635:
    ld c, a                                       ; $4635: $4f
    ld l, [hl]                                    ; $4636: $6e
    ld h, l                                       ; $4637: $65
    nop                                           ; $4638: $00
    ld d, e                                       ; $4639: $53
    ld [hl], h                                    ; $463a: $74
    ld h, c                                       ; $463b: $61
    ld [hl], d                                    ; $463c: $72
    ld [hl], e                                    ; $463d: $73

jr_01d_463e:
    nop                                           ; $463e: $00
    ld d, d                                       ; $463f: $52
    ld h, l                                       ; $4640: $65
    ld l, l                                       ; $4641: $6d

jr_01d_4642:
    ld h, c                                       ; $4642: $61
    ld l, c                                       ; $4643: $69
    ld l, [hl]                                    ; $4644: $6e
    ld l, c                                       ; $4645: $69
    ld l, [hl]                                    ; $4646: $6e
    ld h, a                                       ; $4647: $67
    nop                                           ; $4648: $00
    ld d, [hl]                                    ; $4649: $56
    ld d, e                                       ; $464a: $53
    jr nz, jr_01d_469f                            ; $464b: $20 $52

    ld h, l                                       ; $464d: $65
    ld h, e                                       ; $464e: $63
    ld l, a                                       ; $464f: $6f
    ld [hl], d                                    ; $4650: $72
    ld h, h                                       ; $4651: $64
    ld [hl], e                                    ; $4652: $73
    nop                                           ; $4653: $00
    ld d, a                                       ; $4654: $57
    ld l, c                                       ; $4655: $69
    ld l, [hl]                                    ; $4656: $6e
    ld l, [hl]                                    ; $4657: $6e
    ld h, l                                       ; $4658: $65
    ld [hl], d                                    ; $4659: $72
    nop                                           ; $465a: $00
    ld c, [hl]                                    ; $465b: $4e
    ld l, a                                       ; $465c: $6f
    jr nz, jr_01d_46ac                            ; $465d: $20 $4d

    ld h, c                                       ; $465f: $61
    ld [hl], h                                    ; $4660: $74
    ld h, e                                       ; $4661: $63
    ld l, b                                       ; $4662: $68
    nop                                           ; $4663: $00
    ld b, c                                       ; $4664: $41
    jr nz, jr_01d_46d3                            ; $4665: $20 $6c

    ld h, l                                       ; $4667: $65
    ld [hl], h                                    ; $4668: $74
    ld [hl], h                                    ; $4669: $74
    ld h, l                                       ; $466a: $65
    ld [hl], d                                    ; $466b: $72
    jr nz, jr_01d_46d7                            ; $466c: $20 $69

    ld [hl], e                                    ; $466e: $73
    jr nz, jr_01d_46d7                            ; $466f: $20 $66

    ld h, c                                       ; $4671: $61
    ld l, h                                       ; $4672: $6c
    ld l, h                                       ; $4673: $6c
    dec l                                         ; $4674: $2d
    ld bc, $6e69                                  ; $4675: $01 $69 $6e
    ld h, a                                       ; $4678: $67
    jr nz, jr_01d_46e1                            ; $4679: $20 $66

    ld [hl], d                                    ; $467b: $72
    ld l, a                                       ; $467c: $6f
    ld l, l                                       ; $467d: $6d
    jr nz, jr_01d_46f4                            ; $467e: $20 $74

    ld l, b                                       ; $4680: $68
    ld h, l                                       ; $4681: $65
    jr nz, jr_01d_46f7                            ; $4682: $20 $73

    ld l, e                                       ; $4684: $6b
    ld a, c                                       ; $4685: $79
    ld l, $03                                     ; $4686: $2e $03
    nop                                           ; $4688: $00
    ld b, e                                       ; $4689: $43
    ld l, a                                       ; $468a: $6f
    ld l, [hl]                                    ; $468b: $6e
    ld h, a                                       ; $468c: $67
    ld [hl], d                                    ; $468d: $72
    ld h, c                                       ; $468e: $61
    ld [hl], h                                    ; $468f: $74
    ld [hl], l                                    ; $4690: $75
    ld l, h                                       ; $4691: $6c
    ld h, c                                       ; $4692: $61
    ld [hl], h                                    ; $4693: $74
    ld l, c                                       ; $4694: $69
    ld l, a                                       ; $4695: $6f
    ld l, [hl]                                    ; $4696: $6e
    ld [hl], e                                    ; $4697: $73
    inc l                                         ; $4698: $2c
    ld bc, $7247                                  ; $4699: $01 $47 $72
    ld h, c                                       ; $469c: $61
    ld l, [hl]                                    ; $469d: $6e
    ld h, h                                       ; $469e: $64

jr_01d_469f:
    jr nz, jr_01d_46e4                            ; $469f: $20 $43

    ld l, b                                       ; $46a1: $68
    ld h, c                                       ; $46a2: $61
    ld l, l                                       ; $46a3: $6d
    ld [hl], b                                    ; $46a4: $70
    ld l, c                                       ; $46a5: $69
    ld l, a                                       ; $46a6: $6f
    ld l, [hl]                                    ; $46a7: $6e
    ld bc, $2107                                  ; $46a8: $01 $07 $21
    ld [bc], a                                    ; $46ab: $02

jr_01d_46ac:
    ld b, c                                       ; $46ac: $41
    ld [hl], e                                    ; $46ad: $73
    jr nz, @+$76                                  ; $46ae: $20 $74

    ld l, b                                       ; $46b0: $68
    ld h, l                                       ; $46b1: $65
    jr nz, jr_01d_4728                            ; $46b2: $20 $74

    ld l, a                                       ; $46b4: $6f
    ld [hl], b                                    ; $46b5: $70
    jr nz, jr_01d_4728                            ; $46b6: $20 $70

    ld l, h                                       ; $46b8: $6c
    ld h, c                                       ; $46b9: $61
    ld a, c                                       ; $46ba: $79
    ld h, l                                       ; $46bb: $65
    ld [hl], d                                    ; $46bc: $72
    inc l                                         ; $46bd: $2c
    ld bc, $2049                                  ; $46be: $01 $49 $20
    ld l, c                                       ; $46c1: $69
    ld l, [hl]                                    ; $46c2: $6e
    halt                                          ; $46c3: $76
    ld l, c                                       ; $46c4: $69
    ld [hl], h                                    ; $46c5: $74
    ld h, l                                       ; $46c6: $65
    jr nz, @+$7b                                  ; $46c7: $20 $79

    ld l, a                                       ; $46c9: $6f
    ld [hl], l                                    ; $46ca: $75
    ld l, $2e                                     ; $46cb: $2e $2e
    ld l, $01                                     ; $46cd: $2e $01
    jr nz, jr_01d_46f1                            ; $46cf: $20 $20

    jr nz, jr_01d_46f3                            ; $46d1: $20 $20

jr_01d_46d3:
    jr nz, jr_01d_46f5                            ; $46d3: $20 $20

    jr nz, jr_01d_46f7                            ; $46d5: $20 $20

jr_01d_46d7:
    jr nz, jr_01d_46f9                            ; $46d7: $20 $20

    ld d, b                                       ; $46d9: $50
    ld h, l                                       ; $46da: $65
    ld h, c                                       ; $46db: $61
    ld h, e                                       ; $46dc: $63
    ld l, b                                       ; $46dd: $68
    inc bc                                        ; $46de: $03
    nop                                           ; $46df: $00
    ld b, a                                       ; $46e0: $47

jr_01d_46e1:
    ld [hl], d                                    ; $46e1: $72
    ld h, c                                       ; $46e2: $61
    ld l, [hl]                                    ; $46e3: $6e

jr_01d_46e4:
    ld h, h                                       ; $46e4: $64
    jr nz, @+$45                                  ; $46e5: $20 $43

    ld l, b                                       ; $46e7: $68
    ld h, c                                       ; $46e8: $61
    ld l, l                                       ; $46e9: $6d
    ld [hl], b                                    ; $46ea: $70
    ld l, c                                       ; $46eb: $69
    ld l, a                                       ; $46ec: $6f
    ld l, [hl]                                    ; $46ed: $6e
    ld bc, $2c07                                  ; $46ee: $01 $07 $2c

jr_01d_46f1:
    jr nz, @+$79                                  ; $46f1: $20 $77

jr_01d_46f3:
    ld h, l                                       ; $46f3: $65

jr_01d_46f4:
    ld l, h                                       ; $46f4: $6c

jr_01d_46f5:
    ld h, e                                       ; $46f5: $63
    ld l, a                                       ; $46f6: $6f

jr_01d_46f7:
    ld l, l                                       ; $46f7: $6d
    ld h, l                                       ; $46f8: $65

jr_01d_46f9:
    ld bc, $6f74                                  ; $46f9: $01 $74 $6f
    jr nz, jr_01d_474b                            ; $46fc: $20 $4d

    ld h, c                                       ; $46fe: $61
    ld [hl], d                                    ; $46ff: $72
    ld l, c                                       ; $4700: $69
    ld l, a                                       ; $4701: $6f
    jr nz, jr_01d_475b                            ; $4702: $20 $57

    ld l, a                                       ; $4704: $6f
    ld [hl], d                                    ; $4705: $72
    ld l, h                                       ; $4706: $6c
    ld h, h                                       ; $4707: $64
    ld hl, $0003                                  ; $4708: $21 $03 $00
    ld d, h                                       ; $470b: $54
    ld h, c                                       ; $470c: $61
    ld l, h                                       ; $470d: $6c
    ld l, e                                       ; $470e: $6b
    jr nz, jr_01d_4785                            ; $470f: $20 $74

    ld l, a                                       ; $4711: $6f
    jr nz, jr_01d_4788                            ; $4712: $20 $74

    ld l, b                                       ; $4714: $68
    ld h, l                                       ; $4715: $65
    jr nz, @+$44                                  ; $4716: $20 $42

    ld l, a                                       ; $4718: $6f
    ld h, d                                       ; $4719: $62
    dec l                                         ; $471a: $2d
    ld l, a                                       ; $471b: $6f
    ld l, l                                       ; $471c: $6d
    ld h, d                                       ; $471d: $62
    ld bc, $766f                                  ; $471e: $01 $6f $76
    ld h, l                                       ; $4721: $65
    ld [hl], d                                    ; $4722: $72
    jr nz, jr_01d_4799                            ; $4723: $20 $74

    ld l, b                                       ; $4725: $68
    ld h, l                                       ; $4726: $65
    ld [hl], d                                    ; $4727: $72

jr_01d_4728:
    ld h, l                                       ; $4728: $65
    jr nz, jr_01d_479f                            ; $4729: $20 $74

    ld l, a                                       ; $472b: $6f
    jr nz, jr_01d_4795                            ; $472c: $20 $67

    ld l, a                                       ; $472e: $6f
    ld bc, $6f74                                  ; $472f: $01 $74 $6f
    jr nz, @+$52                                  ; $4732: $20 $50

    ld h, l                                       ; $4734: $65
    ld h, c                                       ; $4735: $61
    ld h, e                                       ; $4736: $63
    ld l, b                                       ; $4737: $68
    daa                                           ; $4738: $27
    ld [hl], e                                    ; $4739: $73
    jr nz, jr_01d_477f                            ; $473a: $20 $43

    ld h, c                                       ; $473c: $61
    ld [hl], e                                    ; $473d: $73
    ld [hl], h                                    ; $473e: $74
    ld l, h                                       ; $473f: $6c
    ld h, l                                       ; $4740: $65
    ld l, $03                                     ; $4741: $2e $03
    nop                                           ; $4743: $00
    ld e, c                                       ; $4744: $59
    ld l, a                                       ; $4745: $6f
    ld [hl], l                                    ; $4746: $75
    daa                                           ; $4747: $27
    ld h, h                                       ; $4748: $64
    jr nz, jr_01d_47ad                            ; $4749: $20 $62

jr_01d_474b:
    ld h, l                                       ; $474b: $65
    ld [hl], h                                    ; $474c: $74
    ld [hl], h                                    ; $474d: $74
    ld h, l                                       ; $474e: $65
    ld [hl], d                                    ; $474f: $72
    jr nz, jr_01d_47ba                            ; $4750: $20 $68

    ld [hl], l                                    ; $4752: $75
    ld [hl], d                                    ; $4753: $72
    ld [hl], d                                    ; $4754: $72
    ld a, c                                       ; $4755: $79
    ld bc, $6669                                  ; $4756: $01 $69 $66
    jr nz, @+$7b                                  ; $4759: $20 $79

jr_01d_475b:
    ld l, a                                       ; $475b: $6f
    ld [hl], l                                    ; $475c: $75
    daa                                           ; $475d: $27
    ld [hl], d                                    ; $475e: $72
    ld h, l                                       ; $475f: $65
    jr nz, jr_01d_47c7                            ; $4760: $20 $65

    ld l, [hl]                                    ; $4762: $6e
    ld [hl], h                                    ; $4763: $74
    ld h, l                                       ; $4764: $65
    ld [hl], d                                    ; $4765: $72
    ld l, c                                       ; $4766: $69
    ld l, [hl]                                    ; $4767: $6e
    ld h, a                                       ; $4768: $67
    ld bc, $6550                                  ; $4769: $01 $50 $65
    ld h, c                                       ; $476c: $61
    ld h, e                                       ; $476d: $63
    ld l, b                                       ; $476e: $68
    daa                                           ; $476f: $27
    ld [hl], e                                    ; $4770: $73
    jr nz, jr_01d_47c7                            ; $4771: $20 $54

    ld l, a                                       ; $4773: $6f
    ld [hl], l                                    ; $4774: $75
    ld [hl], d                                    ; $4775: $72
    ld l, [hl]                                    ; $4776: $6e
    ld h, c                                       ; $4777: $61
    ld l, l                                       ; $4778: $6d
    ld h, l                                       ; $4779: $65
    ld l, [hl]                                    ; $477a: $6e
    ld [hl], h                                    ; $477b: $74
    ld hl, $0003                                  ; $477c: $21 $03 $00

jr_01d_477f:
    ld d, h                                       ; $477f: $54
    ld l, b                                       ; $4780: $68
    ld h, c                                       ; $4781: $61
    ld [hl], h                                    ; $4782: $74
    jr nz, jr_01d_47ed                            ; $4783: $20 $68

jr_01d_4785:
    ld l, a                                       ; $4785: $6f
    ld l, h                                       ; $4786: $6c
    ld h, l                                       ; $4787: $65

jr_01d_4788:
    jr nz, jr_01d_4801                            ; $4788: $20 $77

    ld l, c                                       ; $478a: $69
    ld l, h                                       ; $478b: $6c
    ld l, h                                       ; $478c: $6c
    ld bc, $6174                                  ; $478d: $01 $74 $61
    ld l, e                                       ; $4790: $6b
    ld h, l                                       ; $4791: $65
    jr nz, jr_01d_480d                            ; $4792: $20 $79

    ld l, a                                       ; $4794: $6f

jr_01d_4795:
    ld [hl], l                                    ; $4795: $75
    jr nz, jr_01d_480c                            ; $4796: $20 $74

    ld l, a                                       ; $4798: $6f

jr_01d_4799:
    ld bc, $6550                                  ; $4799: $01 $50 $65
    ld h, c                                       ; $479c: $61
    ld h, e                                       ; $479d: $63
    ld l, b                                       ; $479e: $68

jr_01d_479f:
    daa                                           ; $479f: $27
    ld [hl], e                                    ; $47a0: $73
    jr nz, jr_01d_47e6                            ; $47a1: $20 $43

    ld h, c                                       ; $47a3: $61
    ld [hl], e                                    ; $47a4: $73
    ld [hl], h                                    ; $47a5: $74
    ld l, h                                       ; $47a6: $6c
    ld h, l                                       ; $47a7: $65
    ld l, $03                                     ; $47a8: $2e $03
    nop                                           ; $47aa: $00
    ld b, a                                       ; $47ab: $47
    ld l, a                                       ; $47ac: $6f

jr_01d_47ad:
    jr nz, jr_01d_4822                            ; $47ad: $20 $73

    ld h, l                                       ; $47af: $65
    ld h, l                                       ; $47b0: $65
    jr nz, jr_01d_4803                            ; $47b1: $20 $50

    ld h, l                                       ; $47b3: $65
    ld h, c                                       ; $47b4: $61
    ld h, e                                       ; $47b5: $63
    ld l, b                                       ; $47b6: $68
    ccf                                           ; $47b7: $3f
    nop                                           ; $47b8: $00
    ld c, h                                       ; $47b9: $4c

jr_01d_47ba:
    ld h, l                                       ; $47ba: $65
    ld h, c                                       ; $47bb: $61
    halt                                          ; $47bc: $76
    ld h, l                                       ; $47bd: $65
    jr nz, jr_01d_4834                            ; $47be: $20 $74

    ld l, b                                       ; $47c0: $68
    ld h, l                                       ; $47c1: $65
    jr nz, jr_01d_4807                            ; $47c2: $20 $43

    ld h, c                                       ; $47c4: $61
    ld [hl], e                                    ; $47c5: $73
    ld [hl], h                                    ; $47c6: $74

jr_01d_47c7:
    ld l, h                                       ; $47c7: $6c
    ld h, l                                       ; $47c8: $65
    ccf                                           ; $47c9: $3f
    nop                                           ; $47ca: $00
    ld d, b                                       ; $47cb: $50
    ld [hl], d                                    ; $47cc: $72
    ld l, c                                       ; $47cd: $69
    ld l, [hl]                                    ; $47ce: $6e
    ld h, e                                       ; $47cf: $63
    ld h, l                                       ; $47d0: $65
    ld [hl], e                                    ; $47d1: $73
    ld [hl], e                                    ; $47d2: $73
    jr nz, @+$52                                  ; $47d3: $20 $50

    ld h, l                                       ; $47d5: $65
    ld h, c                                       ; $47d6: $61
    ld h, e                                       ; $47d7: $63
    ld l, b                                       ; $47d8: $68
    ld hl, $0003                                  ; $47d9: $21 $03 $00
    ld b, a                                       ; $47dc: $47
    ld [hl], d                                    ; $47dd: $72
    ld h, c                                       ; $47de: $61
    ld l, [hl]                                    ; $47df: $6e
    ld h, h                                       ; $47e0: $64
    jr nz, jr_01d_4826                            ; $47e1: $20 $43

    ld l, b                                       ; $47e3: $68
    ld h, c                                       ; $47e4: $61
    ld l, l                                       ; $47e5: $6d

jr_01d_47e6:
    ld [hl], b                                    ; $47e6: $70
    ld l, c                                       ; $47e7: $69
    ld l, a                                       ; $47e8: $6f
    ld l, [hl]                                    ; $47e9: $6e
    ld bc, $2007                                  ; $47ea: $01 $07 $20

jr_01d_47ed:
    ld l, c                                       ; $47ed: $69
    ld [hl], e                                    ; $47ee: $73
    jr nz, jr_01d_4859                            ; $47ef: $20 $68

    ld h, l                                       ; $47f1: $65
    ld [hl], d                                    ; $47f2: $72
    ld h, l                                       ; $47f3: $65
    ld hl, $0003                                  ; $47f4: $21 $03 $00
    ld d, a                                       ; $47f7: $57
    ld h, l                                       ; $47f8: $65
    ld l, h                                       ; $47f9: $6c
    ld h, e                                       ; $47fa: $63
    ld l, a                                       ; $47fb: $6f
    ld l, l                                       ; $47fc: $6d
    ld h, l                                       ; $47fd: $65
    jr nz, @+$76                                  ; $47fe: $20 $74

    ld l, a                                       ; $4800: $6f

jr_01d_4801:
    jr nz, @+$4f                                  ; $4801: $20 $4d

jr_01d_4803:
    ld h, c                                       ; $4803: $61
    ld [hl], d                                    ; $4804: $72
    ld l, c                                       ; $4805: $69
    ld l, a                                       ; $4806: $6f

jr_01d_4807:
    ld bc, $6f57                                  ; $4807: $01 $57 $6f
    ld [hl], d                                    ; $480a: $72
    ld l, h                                       ; $480b: $6c

jr_01d_480c:
    ld h, h                                       ; $480c: $64

jr_01d_480d:
    inc l                                         ; $480d: $2c
    jr nz, jr_01d_4857                            ; $480e: $20 $47

    ld [hl], d                                    ; $4810: $72
    ld h, c                                       ; $4811: $61
    ld l, [hl]                                    ; $4812: $6e
    ld h, h                                       ; $4813: $64
    ld bc, $6843                                  ; $4814: $01 $43 $68
    ld h, c                                       ; $4817: $61
    ld l, l                                       ; $4818: $6d
    ld [hl], b                                    ; $4819: $70
    ld l, c                                       ; $481a: $69
    ld l, a                                       ; $481b: $6f
    ld l, [hl]                                    ; $481c: $6e
    jr nz, jr_01d_4826                            ; $481d: $20 $07

    ld l, $03                                     ; $481f: $2e $03
    nop                                           ; $4821: $00

jr_01d_4822:
    ld d, a                                       ; $4822: $57
    ld h, l                                       ; $4823: $65
    jr nz, jr_01d_489d                            ; $4824: $20 $77

jr_01d_4826:
    ld l, a                                       ; $4826: $6f
    ld [hl], l                                    ; $4827: $75
    ld l, h                                       ; $4828: $6c
    ld h, h                                       ; $4829: $64
    jr nz, @+$6e                                  ; $482a: $20 $6c

    ld l, c                                       ; $482c: $69
    ld l, e                                       ; $482d: $6b
    ld h, l                                       ; $482e: $65
    ld bc, $6f74                                  ; $482f: $01 $74 $6f
    jr nz, jr_01d_48ab                            ; $4832: $20 $77

jr_01d_4834:
    ld h, l                                       ; $4834: $65
    ld l, h                                       ; $4835: $6c
    ld h, e                                       ; $4836: $63
    ld l, a                                       ; $4837: $6f
    ld l, l                                       ; $4838: $6d
    ld h, l                                       ; $4839: $65
    jr nz, @+$7b                                  ; $483a: $20 $79

    ld l, a                                       ; $483c: $6f
    ld [hl], l                                    ; $483d: $75
    ld l, $03                                     ; $483e: $2e $03
    nop                                           ; $4840: $00
    ld d, h                                       ; $4841: $54
    ld l, b                                       ; $4842: $68
    ld h, c                                       ; $4843: $61
    ld l, [hl]                                    ; $4844: $6e
    ld l, e                                       ; $4845: $6b
    jr nz, jr_01d_48c1                            ; $4846: $20 $79

    ld l, a                                       ; $4848: $6f
    ld [hl], l                                    ; $4849: $75
    jr nz, jr_01d_48b2                            ; $484a: $20 $66

    ld l, a                                       ; $484c: $6f
    ld [hl], d                                    ; $484d: $72
    ld bc, $6177                                  ; $484e: $01 $77 $61
    ld l, c                                       ; $4851: $69
    ld [hl], h                                    ; $4852: $74
    ld l, c                                       ; $4853: $69
    ld l, [hl]                                    ; $4854: $6e
    ld h, a                                       ; $4855: $67
    inc l                                         ; $4856: $2c

jr_01d_4857:
    jr nz, @+$67                                  ; $4857: $20 $65

jr_01d_4859:
    halt                                          ; $4859: $76
    ld h, l                                       ; $485a: $65
    ld [hl], d                                    ; $485b: $72
    ld a, c                                       ; $485c: $79
    ld l, a                                       ; $485d: $6f
    ld l, [hl]                                    ; $485e: $6e
    ld h, l                                       ; $485f: $65
    ld l, $03                                     ; $4860: $2e $03
    nop                                           ; $4862: $00
    ld c, h                                       ; $4863: $4c
    ld h, l                                       ; $4864: $65
    ld [hl], h                                    ; $4865: $74
    jr nz, @+$77                                  ; $4866: $20 $75

    ld [hl], e                                    ; $4868: $73
    jr nz, @+$64                                  ; $4869: $20 $62

    ld h, l                                       ; $486b: $65
    ld h, a                                       ; $486c: $67
    ld l, c                                       ; $486d: $69
    ld l, [hl]                                    ; $486e: $6e
    ld bc, $6874                                  ; $486f: $01 $74 $68
    ld h, l                                       ; $4872: $65
    jr nz, jr_01d_48e9                            ; $4873: $20 $74

    ld l, a                                       ; $4875: $6f
    ld [hl], l                                    ; $4876: $75
    ld [hl], d                                    ; $4877: $72
    ld l, [hl]                                    ; $4878: $6e
    ld h, c                                       ; $4879: $61
    ld l, l                                       ; $487a: $6d
    ld h, l                                       ; $487b: $65
    ld l, [hl]                                    ; $487c: $6e
    ld [hl], h                                    ; $487d: $74
    ld l, $03                                     ; $487e: $2e $03
    nop                                           ; $4880: $00
    rlca                                          ; $4881: $07
    ld hl, $5920                                  ; $4882: $21 $20 $59
    ld l, a                                       ; $4885: $6f
    ld [hl], l                                    ; $4886: $75
    jr nz, jr_01d_48f4                            ; $4887: $20 $6b

    ld h, l                                       ; $4889: $65
    ld [hl], b                                    ; $488a: $70
    ld [hl], h                                    ; $488b: $74
    ld bc, $656d                                  ; $488c: $01 $6d $65
    jr nz, jr_01d_4908                            ; $488f: $20 $77

    ld h, c                                       ; $4891: $61
    ld l, c                                       ; $4892: $69
    ld [hl], h                                    ; $4893: $74
    ld l, c                                       ; $4894: $69
    ld l, [hl]                                    ; $4895: $6e
    ld h, a                                       ; $4896: $67
    ld hl, $0003                                  ; $4897: $21 $03 $00
    ld c, c                                       ; $489a: $49
    jr nz, jr_01d_4900                            ; $489b: $20 $63

jr_01d_489d:
    ld h, c                                       ; $489d: $61
    ld l, l                                       ; $489e: $6d
    ld h, l                                       ; $489f: $65
    jr nz, jr_01d_490a                            ; $48a0: $20 $68

    ld h, l                                       ; $48a2: $65
    ld [hl], d                                    ; $48a3: $72
    ld h, l                                       ; $48a4: $65
    jr nz, jr_01d_491b                            ; $48a5: $20 $74

    ld l, a                                       ; $48a7: $6f
    ld bc, $6562                                  ; $48a8: $01 $62 $65

jr_01d_48ab:
    ld h, c                                       ; $48ab: $61
    ld [hl], h                                    ; $48ac: $74
    jr nz, jr_01d_48fc                            ; $48ad: $20 $4d

    ld h, c                                       ; $48af: $61
    ld [hl], d                                    ; $48b0: $72
    ld l, c                                       ; $48b1: $69

jr_01d_48b2:
    ld l, a                                       ; $48b2: $6f
    ld hl, $0003                                  ; $48b3: $21 $03 $00
    ld c, c                                       ; $48b6: $49
    jr nz, jr_01d_491d                            ; $48b7: $20 $64

    ld l, a                                       ; $48b9: $6f
    ld l, [hl]                                    ; $48ba: $6e
    daa                                           ; $48bb: $27
    ld [hl], h                                    ; $48bc: $74
    jr nz, jr_01d_4922                            ; $48bd: $20 $63

    ld h, c                                       ; $48bf: $61
    ld [hl], d                                    ; $48c0: $72

jr_01d_48c1:
    ld h, l                                       ; $48c1: $65
    jr nz, @+$63                                  ; $48c2: $20 $61

    ld h, d                                       ; $48c4: $62
    ld l, a                                       ; $48c5: $6f
    ld [hl], l                                    ; $48c6: $75
    ld [hl], h                                    ; $48c7: $74
    ld bc, $6e61                                  ; $48c8: $01 $61 $6e
    ld a, c                                       ; $48cb: $79
    jr nz, jr_01d_4915                            ; $48cc: $20 $47

    ld [hl], d                                    ; $48ce: $72
    ld h, c                                       ; $48cf: $61
    ld l, [hl]                                    ; $48d0: $6e
    ld h, h                                       ; $48d1: $64
    jr nz, jr_01d_4917                            ; $48d2: $20 $43

    ld l, b                                       ; $48d4: $68
    ld h, c                                       ; $48d5: $61
    ld l, l                                       ; $48d6: $6d
    ld [hl], b                                    ; $48d7: $70
    ld l, c                                       ; $48d8: $69
    ld l, a                                       ; $48d9: $6f
    ld l, [hl]                                    ; $48da: $6e
    ld hl, $0003                                  ; $48db: $21 $03 $00
    ld e, c                                       ; $48de: $59
    ld l, a                                       ; $48df: $6f
    ld [hl], e                                    ; $48e0: $73
    ld l, b                                       ; $48e1: $68
    ld l, c                                       ; $48e2: $69
    daa                                           ; $48e3: $27
    ld [hl], e                                    ; $48e4: $73
    dec l                                         ; $48e5: $2d
    ld h, c                                       ; $48e6: $61
    jr nz, jr_01d_495b                            ; $48e7: $20 $72

jr_01d_48e9:
    ld l, c                                       ; $48e9: $69
    ld h, a                                       ; $48ea: $67
    ld l, b                                       ; $48eb: $68
    ld [hl], h                                    ; $48ec: $74
    ld hl, $5401                                  ; $48ed: $21 $01 $54
    ld l, b                                       ; $48f0: $68
    ld h, c                                       ; $48f1: $61
    ld [hl], h                                    ; $48f2: $74
    daa                                           ; $48f3: $27

jr_01d_48f4:
    ld [hl], e                                    ; $48f4: $73
    dec l                                         ; $48f5: $2d
    ld h, c                                       ; $48f6: $61
    jr nz, @+$6f                                  ; $48f7: $20 $6d

    ld h, l                                       ; $48f9: $65
    ld h, c                                       ; $48fa: $61
    ld l, [hl]                                    ; $48fb: $6e

jr_01d_48fc:
    inc l                                         ; $48fc: $2c
    ld bc, $6f42                                  ; $48fd: $01 $42 $6f

jr_01d_4900:
    ld [hl], a                                    ; $4900: $77
    ld [hl], e                                    ; $4901: $73
    ld h, l                                       ; $4902: $65
    ld [hl], d                                    ; $4903: $72
    ld hl, $0003                                  ; $4904: $21 $03 $00
    ld b, h                                       ; $4907: $44

jr_01d_4908:
    ld l, a                                       ; $4908: $6f
    ld l, [hl]                                    ; $4909: $6e

jr_01d_490a:
    daa                                           ; $490a: $27
    ld [hl], h                                    ; $490b: $74
    jr nz, jr_01d_4981                            ; $490c: $20 $73

    ld h, c                                       ; $490e: $61
    ld a, c                                       ; $490f: $79
    jr nz, jr_01d_4985                            ; $4910: $20 $73

    ld [hl], l                                    ; $4912: $75
    ld h, e                                       ; $4913: $63
    ld l, b                                       ; $4914: $68

jr_01d_4915:
    dec l                                         ; $4915: $2d
    ld h, c                                       ; $4916: $61

jr_01d_4917:
    ld bc, $6874                                  ; $4917: $01 $74 $68
    ld l, c                                       ; $491a: $69

jr_01d_491b:
    ld l, [hl]                                    ; $491b: $6e
    ld h, a                                       ; $491c: $67

jr_01d_491d:
    ld hl, $0003                                  ; $491d: $21 $03 $00
    ld d, a                                       ; $4920: $57
    ld h, l                                       ; $4921: $65

jr_01d_4922:
    ld l, h                                       ; $4922: $6c
    ld l, h                                       ; $4923: $6c
    jr nz, jr_01d_499a                            ; $4924: $20 $74

    ld l, b                                       ; $4926: $68
    ld l, c                                       ; $4927: $69
    ld [hl], e                                    ; $4928: $73
    jr nz, jr_01d_494d                            ; $4929: $20 $22

    ld b, e                                       ; $492b: $43
    ld l, b                                       ; $492c: $68
    ld h, c                                       ; $492d: $61
    ld l, l                                       ; $492e: $6d
    ld [hl], b                                    ; $492f: $70
    ld [hl+], a                                   ; $4930: $22
    ld bc, $6562                                  ; $4931: $01 $62 $65
    ld [hl], h                                    ; $4934: $74
    ld [hl], h                                    ; $4935: $74
    ld h, l                                       ; $4936: $65
    ld [hl], d                                    ; $4937: $72
    jr nz, jr_01d_49a8                            ; $4938: $20 $6e

    ld l, a                                       ; $493a: $6f
    ld [hl], h                                    ; $493b: $74
    jr nz, jr_01d_49a0                            ; $493c: $20 $62

    ld h, l                                       ; $493e: $65
    ld bc, $6177                                  ; $493f: $01 $77 $61
    ld [hl], e                                    ; $4942: $73
    ld [hl], h                                    ; $4943: $74
    ld l, c                                       ; $4944: $69
    ld l, [hl]                                    ; $4945: $6e
    ld h, a                                       ; $4946: $67
    jr nz, jr_01d_49b6                            ; $4947: $20 $6d

    ld a, c                                       ; $4949: $79
    jr nz, @+$76                                  ; $494a: $20 $74

    ld l, c                                       ; $494c: $69

jr_01d_494d:
    ld l, l                                       ; $494d: $6d
    ld h, l                                       ; $494e: $65
    ld hl, $0003                                  ; $494f: $21 $03 $00
    rlca                                          ; $4952: $07
    jr nz, @+$79                                  ; $4953: $20 $77

    ld l, c                                       ; $4955: $69
    ld l, h                                       ; $4956: $6c
    ld l, h                                       ; $4957: $6c
    ld bc, $6567                                  ; $4958: $01 $67 $65

jr_01d_495b:
    ld [hl], h                                    ; $495b: $74
    jr nz, jr_01d_49bf                            ; $495c: $20 $61

    jr nz, jr_01d_49c7                            ; $495e: $20 $67

    ld [hl], d                                    ; $4960: $72
    ld h, l                                       ; $4961: $65
    ld h, c                                       ; $4962: $61
    ld [hl], h                                    ; $4963: $74
    ld bc, $6373                                  ; $4964: $01 $73 $63
    ld l, a                                       ; $4967: $6f
    ld [hl], d                                    ; $4968: $72
    ld h, l                                       ; $4969: $65
    ld hl, $0003                                  ; $496a: $21 $03 $00
    ld c, a                                       ; $496d: $4f
    ld c, e                                       ; $496e: $4b
    inc l                                         ; $496f: $2c
    jr nz, jr_01d_4979                            ; $4970: $20 $07

    ld l, $01                                     ; $4972: $2e $01
    ld d, e                                       ; $4974: $53
    ld l, b                                       ; $4975: $68
    ld h, c                                       ; $4976: $61
    ld l, h                                       ; $4977: $6c
    ld l, h                                       ; $4978: $6c

jr_01d_4979:
    jr nz, jr_01d_49f2                            ; $4979: $20 $77

    ld h, l                                       ; $497b: $65
    jr nz, jr_01d_49f1                            ; $497c: $20 $73

    ld [hl], h                                    ; $497e: $74
    ld h, c                                       ; $497f: $61
    ld [hl], d                                    ; $4980: $72

jr_01d_4981:
    ld [hl], h                                    ; $4981: $74
    ld bc, $6874                                  ; $4982: $01 $74 $68

jr_01d_4985:
    ld h, l                                       ; $4985: $65
    jr nz, jr_01d_49fc                            ; $4986: $20 $74

    ld l, a                                       ; $4988: $6f
    ld [hl], l                                    ; $4989: $75
    ld [hl], d                                    ; $498a: $72
    ld l, [hl]                                    ; $498b: $6e
    ld h, c                                       ; $498c: $61
    ld l, l                                       ; $498d: $6d
    ld h, l                                       ; $498e: $65
    ld l, [hl]                                    ; $498f: $6e
    ld [hl], h                                    ; $4990: $74
    ccf                                           ; $4991: $3f
    nop                                           ; $4992: $00
    ld c, a                                       ; $4993: $4f
    ld l, b                                       ; $4994: $68
    inc l                                         ; $4995: $2c
    jr nz, jr_01d_4a11                            ; $4996: $20 $79

    ld l, a                                       ; $4998: $6f
    ld [hl], l                                    ; $4999: $75

jr_01d_499a:
    daa                                           ; $499a: $27
    ld [hl], d                                    ; $499b: $72
    ld h, l                                       ; $499c: $65
    jr nz, @+$70                                  ; $499d: $20 $6e

    ld l, a                                       ; $499f: $6f

jr_01d_49a0:
    ld [hl], h                                    ; $49a0: $74
    ld bc, $656d                                  ; $49a1: $01 $6d $65
    ld l, [hl]                                    ; $49a4: $6e
    ld [hl], h                                    ; $49a5: $74
    ld h, c                                       ; $49a6: $61
    ld l, h                                       ; $49a7: $6c

jr_01d_49a8:
    ld l, h                                       ; $49a8: $6c
    ld a, c                                       ; $49a9: $79
    jr nz, jr_01d_4a1c                            ; $49aa: $20 $70

    ld [hl], d                                    ; $49ac: $72
    ld h, l                                       ; $49ad: $65
    ld [hl], b                                    ; $49ae: $70
    ld h, c                                       ; $49af: $61
    ld [hl], d                                    ; $49b0: $72
    ld h, l                                       ; $49b1: $65
    ld h, h                                       ; $49b2: $64
    ccf                                           ; $49b3: $3f
    ld [bc], a                                    ; $49b4: $02
    ld b, h                                       ; $49b5: $44

jr_01d_49b6:
    ld l, a                                       ; $49b6: $6f
    jr nz, jr_01d_4a2d                            ; $49b7: $20 $74

    ld h, l                                       ; $49b9: $65
    ld l, h                                       ; $49ba: $6c
    ld l, h                                       ; $49bb: $6c
    jr nz, @+$77                                  ; $49bc: $20 $75

    ld [hl], e                                    ; $49be: $73

jr_01d_49bf:
    jr nz, @+$79                                  ; $49bf: $20 $77

    ld l, b                                       ; $49c1: $68
    ld h, l                                       ; $49c2: $65
    ld l, [hl]                                    ; $49c3: $6e
    ld bc, $6f79                                  ; $49c4: $01 $79 $6f

jr_01d_49c7:
    ld [hl], l                                    ; $49c7: $75
    daa                                           ; $49c8: $27
    ld [hl], d                                    ; $49c9: $72
    ld h, l                                       ; $49ca: $65
    jr nz, jr_01d_4a3f                            ; $49cb: $20 $72

    ld h, l                                       ; $49cd: $65
    ld h, c                                       ; $49ce: $61
    ld h, h                                       ; $49cf: $64
    ld a, c                                       ; $49d0: $79
    ld l, $03                                     ; $49d1: $2e $03
    nop                                           ; $49d3: $00
    ld e, c                                       ; $49d4: $59
    ld l, a                                       ; $49d5: $6f
    ld [hl], e                                    ; $49d6: $73
    ld l, b                                       ; $49d7: $68
    ld l, c                                       ; $49d8: $69
    ld hl, $0003                                  ; $49d9: $21 $03 $00
    ld c, l                                       ; $49dc: $4d
    ld h, c                                       ; $49dd: $61
    ld l, l                                       ; $49de: $6d
    ld l, l                                       ; $49df: $6d
    ld h, c                                       ; $49e0: $61
    jr nz, jr_01d_4a30                            ; $49e1: $20 $4d

    ld l, c                                       ; $49e3: $69
    ld h, c                                       ; $49e4: $61
    ld hl, $0003                                  ; $49e5: $21 $03 $00
    ld c, a                                       ; $49e8: $4f
    ld l, b                                       ; $49e9: $68
    jr nz, jr_01d_4a59                            ; $49ea: $20 $6d

    ld a, c                                       ; $49ec: $79
    ld hl, $0003                                  ; $49ed: $21 $03 $00
    ld h, a                                       ; $49f0: $67

jr_01d_49f1:
    ld l, a                                       ; $49f1: $6f

jr_01d_49f2:
    ld l, a                                       ; $49f2: $6f
    dec l                                         ; $49f3: $2d
    ld h, a                                       ; $49f4: $67
    ld l, a                                       ; $49f5: $6f
    ld l, a                                       ; $49f6: $6f
    jr nz, jr_01d_4a60                            ; $49f7: $20 $67

    ld h, c                                       ; $49f9: $61
    dec l                                         ; $49fa: $2d
    ld h, a                                       ; $49fb: $67

jr_01d_49fc:
    ld h, c                                       ; $49fc: $61
    inc bc                                        ; $49fd: $03
    nop                                           ; $49fe: $00
    ld c, a                                       ; $49ff: $4f
    ld l, a                                       ; $4a00: $6f
    ld l, b                                       ; $4a01: $68
    dec l                                         ; $4a02: $2d
    ld l, a                                       ; $4a03: $6f
    ld l, a                                       ; $4a04: $6f
    ld l, b                                       ; $4a05: $68
    inc l                                         ; $4a06: $2c
    jr nz, jr_01d_4a78                            ; $4a07: $20 $6f

    ld l, a                                       ; $4a09: $6f
    ld l, b                                       ; $4a0a: $68
    ld hl, $0003                                  ; $4a0b: $21 $03 $00
    ld c, b                                       ; $4a0e: $48
    ld l, c                                       ; $4a0f: $69
    inc l                                         ; $4a10: $2c

jr_01d_4a11:
    jr nz, jr_01d_4a1a                            ; $4a11: $20 $07

    ld hl, $4901                                  ; $4a13: $21 $01 $49
    jr nz, jr_01d_4a7b                            ; $4a16: $20 $63

    ld h, c                                       ; $4a18: $61
    ld l, [hl]                                    ; $4a19: $6e

jr_01d_4a1a:
    daa                                           ; $4a1a: $27
    ld [hl], h                                    ; $4a1b: $74

jr_01d_4a1c:
    dec l                                         ; $4a1c: $2d
    ld h, c                                       ; $4a1d: $61
    jr nz, jr_01d_4a97                            ; $4a1e: $20 $77

    ld h, c                                       ; $4a20: $61
    ld l, c                                       ; $4a21: $69
    ld [hl], h                                    ; $4a22: $74
    jr nz, jr_01d_4a99                            ; $4a23: $20 $74

    ld l, a                                       ; $4a25: $6f
    ld bc, $6177                                  ; $4a26: $01 $77 $61
    ld [hl], h                                    ; $4a29: $74
    ld h, e                                       ; $4a2a: $63
    ld l, b                                       ; $4a2b: $68
    dec l                                         ; $4a2c: $2d

jr_01d_4a2d:
    ld h, c                                       ; $4a2d: $61
    jr nz, jr_01d_4aa9                            ; $4a2e: $20 $79

jr_01d_4a30:
    ld l, a                                       ; $4a30: $6f
    ld [hl], l                                    ; $4a31: $75
    jr nz, jr_01d_4aa4                            ; $4a32: $20 $70

    ld l, h                                       ; $4a34: $6c
    ld h, c                                       ; $4a35: $61
    ld a, c                                       ; $4a36: $79
    ld hl, $0003                                  ; $4a37: $21 $03 $00
    ld c, [hl]                                    ; $4a3a: $4e
    ld l, c                                       ; $4a3b: $69
    ld h, e                                       ; $4a3c: $63
    ld h, l                                       ; $4a3d: $65
    dec l                                         ; $4a3e: $2d

jr_01d_4a3f:
    ld h, c                                       ; $4a3f: $61
    jr nz, jr_01d_4aac                            ; $4a40: $20 $6a

    ld l, a                                       ; $4a42: $6f
    ld h, d                                       ; $4a43: $62
    ld hl, $5920                                  ; $4a44: $21 $20 $59
    ld l, a                                       ; $4a47: $6f
    ld [hl], l                                    ; $4a48: $75
    ld bc, $6c70                                  ; $4a49: $01 $70 $6c
    ld h, c                                       ; $4a4c: $61
    ld h, e                                       ; $4a4d: $63
    ld h, l                                       ; $4a4e: $65
    ld h, h                                       ; $4a4f: $64
    ld hl, $5420                                  ; $4a50: $21 $20 $54
    ld l, b                                       ; $4a53: $68
    ld h, l                                       ; $4a54: $65
    jr nz, jr_01d_4ac5                            ; $4a55: $20 $6e

    ld h, l                                       ; $4a57: $65
    ld [hl], a                                    ; $4a58: $77

jr_01d_4a59:
    ld bc, $6843                                  ; $4a59: $01 $43 $68
    ld h, c                                       ; $4a5c: $61
    ld l, l                                       ; $4a5d: $6d
    ld [hl], b                                    ; $4a5e: $70
    daa                                           ; $4a5f: $27

jr_01d_4a60:
    ld [hl], e                                    ; $4a60: $73
    dec l                                         ; $4a61: $2d
    ld h, c                                       ; $4a62: $61
    jr nz, jr_01d_4acc                            ; $4a63: $20 $67

    ld l, a                                       ; $4a65: $6f
    ld l, a                                       ; $4a66: $6f
    ld h, h                                       ; $4a67: $64
    ld hl, $0003                                  ; $4a68: $21 $03 $00
    ld c, c                                       ; $4a6b: $49
    jr nz, jr_01d_4ad5                            ; $4a6c: $20 $67

    ld [hl], l                                    ; $4a6e: $75
    ld h, l                                       ; $4a6f: $65
    ld [hl], e                                    ; $4a70: $73
    ld [hl], e                                    ; $4a71: $73
    jr nz, jr_01d_4abd                            ; $4a72: $20 $49

    daa                                           ; $4a74: $27
    ld l, h                                       ; $4a75: $6c
    ld l, h                                       ; $4a76: $6c
    dec l                                         ; $4a77: $2d

jr_01d_4a78:
    ld h, c                                       ; $4a78: $61
    jr nz, jr_01d_4ae3                            ; $4a79: $20 $68

jr_01d_4a7b:
    ld h, c                                       ; $4a7b: $61
    halt                                          ; $4a7c: $76
    ld h, l                                       ; $4a7d: $65
    ld bc, $6f74                                  ; $4a7e: $01 $74 $6f
    jr nz, jr_01d_4af3                            ; $4a81: $20 $70

    ld [hl], d                                    ; $4a83: $72
    ld h, c                                       ; $4a84: $61
    ld h, e                                       ; $4a85: $63
    ld [hl], h                                    ; $4a86: $74
    ld l, c                                       ; $4a87: $69
    ld h, e                                       ; $4a88: $63
    ld h, l                                       ; $4a89: $65
    jr nz, jr_01d_4af9                            ; $4a8a: $20 $6d

    ld l, a                                       ; $4a8c: $6f
    ld [hl], d                                    ; $4a8d: $72
    ld h, l                                       ; $4a8e: $65
    jr nz, @+$6b                                  ; $4a8f: $20 $69

    ld h, [hl]                                    ; $4a91: $66
    dec l                                         ; $4a92: $2d
    ld h, c                                       ; $4a93: $61
    ld bc, $2049                                  ; $4a94: $01 $49 $20

jr_01d_4a97:
    ld [hl], a                                    ; $4a97: $77
    ld h, c                                       ; $4a98: $61

jr_01d_4a99:
    ld l, [hl]                                    ; $4a99: $6e
    ld l, [hl]                                    ; $4a9a: $6e
    ld h, c                                       ; $4a9b: $61
    jr nz, jr_01d_4b00                            ; $4a9c: $20 $62

    ld h, l                                       ; $4a9e: $65
    ld h, c                                       ; $4a9f: $61
    ld [hl], h                                    ; $4aa0: $74
    jr nz, @+$4f                                  ; $4aa1: $20 $4d

    ld h, c                                       ; $4aa3: $61

jr_01d_4aa4:
    ld [hl], d                                    ; $4aa4: $72
    ld l, c                                       ; $4aa5: $69
    ld l, a                                       ; $4aa6: $6f
    ld l, $03                                     ; $4aa7: $2e $03

jr_01d_4aa9:
    nop                                           ; $4aa9: $00
    ld d, h                                       ; $4aaa: $54
    ld l, a                                       ; $4aab: $6f

jr_01d_4aac:
    ld h, h                                       ; $4aac: $64
    ld h, c                                       ; $4aad: $61
    ld a, c                                       ; $4aae: $79
    daa                                           ; $4aaf: $27
    ld [hl], e                                    ; $4ab0: $73
    jr nz, jr_01d_4b27                            ; $4ab1: $20 $74

    ld l, b                                       ; $4ab3: $68
    ld h, l                                       ; $4ab4: $65
    jr nz, jr_01d_4b1b                            ; $4ab5: $20 $64

    ld h, c                                       ; $4ab7: $61
    ld a, c                                       ; $4ab8: $79
    ld bc, $2049                                  ; $4ab9: $01 $49 $20
    ld h, d                                       ; $4abc: $62

jr_01d_4abd:
    ld h, l                                       ; $4abd: $65
    ld h, c                                       ; $4abe: $61
    ld [hl], h                                    ; $4abf: $74
    jr nz, jr_01d_4b0f                            ; $4ac0: $20 $4d

    ld h, c                                       ; $4ac2: $61
    ld [hl], d                                    ; $4ac3: $72
    ld l, c                                       ; $4ac4: $69

jr_01d_4ac5:
    ld l, a                                       ; $4ac5: $6f
    ld hl, $5701                                  ; $4ac6: $21 $01 $57
    ld h, c                                       ; $4ac9: $61
    ld l, b                                       ; $4aca: $68
    inc l                                         ; $4acb: $2c

jr_01d_4acc:
    jr nz, jr_01d_4b36                            ; $4acc: $20 $68

    ld h, c                                       ; $4ace: $61
    ld l, b                                       ; $4acf: $68
    inc l                                         ; $4ad0: $2c
    jr nz, jr_01d_4b1b                            ; $4ad1: $20 $48

    ld b, c                                       ; $4ad3: $41
    ld c, b                                       ; $4ad4: $48

jr_01d_4ad5:
    ld hl, $0003                                  ; $4ad5: $21 $03 $00
    ld e, c                                       ; $4ad8: $59
    ld l, a                                       ; $4ad9: $6f
    ld [hl], l                                    ; $4ada: $75
    daa                                           ; $4adb: $27
    ld l, h                                       ; $4adc: $6c
    ld l, h                                       ; $4add: $6c
    jr nz, jr_01d_4b53                            ; $4ade: $20 $73

    ld h, l                                       ; $4ae0: $65
    ld h, l                                       ; $4ae1: $65
    inc l                                         ; $4ae2: $2c

jr_01d_4ae3:
    jr nz, @+$4f                                  ; $4ae3: $20 $4d

    ld h, c                                       ; $4ae5: $61
    ld [hl], d                                    ; $4ae6: $72
    ld l, c                                       ; $4ae7: $69
    ld l, a                                       ; $4ae8: $6f
    ld hl, $4e01                                  ; $4ae9: $21 $01 $4e
    ld h, l                                       ; $4aec: $65
    ld a, b                                       ; $4aed: $78
    ld [hl], h                                    ; $4aee: $74
    jr nz, @+$76                                  ; $4aef: $20 $74

    ld l, c                                       ; $4af1: $69
    ld l, l                                       ; $4af2: $6d

jr_01d_4af3:
    ld h, l                                       ; $4af3: $65
    jr nz, jr_01d_4b3f                            ; $4af4: $20 $49

    daa                                           ; $4af6: $27
    ld l, h                                       ; $4af7: $6c
    ld l, h                                       ; $4af8: $6c

jr_01d_4af9:
    jr nz, @+$79                                  ; $4af9: $20 $77

    ld l, c                                       ; $4afb: $69
    ld l, [hl]                                    ; $4afc: $6e
    ld hl, $5701                                  ; $4afd: $21 $01 $57

jr_01d_4b00:
    ld h, c                                       ; $4b00: $61
    ld l, b                                       ; $4b01: $68
    inc l                                         ; $4b02: $2c
    jr nz, @+$6a                                  ; $4b03: $20 $68

    ld h, c                                       ; $4b05: $61
    ld l, b                                       ; $4b06: $68
    inc l                                         ; $4b07: $2c
    jr nz, @+$4a                                  ; $4b08: $20 $48

    ld b, c                                       ; $4b0a: $41
    ld c, b                                       ; $4b0b: $48
    ld hl, $0003                                  ; $4b0c: $21 $03 $00

jr_01d_4b0f:
    ld c, c                                       ; $4b0f: $49
    jr nz, jr_01d_4b85                            ; $4b10: $20 $73

    ld l, b                                       ; $4b12: $68
    ld h, c                                       ; $4b13: $61
    ld l, h                                       ; $4b14: $6c
    ld l, h                                       ; $4b15: $6c
    jr nz, jr_01d_4b7a                            ; $4b16: $20 $62

    ld h, l                                       ; $4b18: $65
    jr nz, jr_01d_4b8f                            ; $4b19: $20 $74

jr_01d_4b1b:
    ld l, b                                       ; $4b1b: $68
    ld h, l                                       ; $4b1c: $65
    jr nz, jr_01d_4b8e                            ; $4b1d: $20 $6f

    ld l, [hl]                                    ; $4b1f: $6e
    ld h, l                                       ; $4b20: $65
    ld bc, $6f74                                  ; $4b21: $01 $74 $6f
    jr nz, jr_01d_4b9d                            ; $4b24: $20 $77

    ld l, c                                       ; $4b26: $69

jr_01d_4b27:
    ld l, [hl]                                    ; $4b27: $6e
    jr nz, @+$76                                  ; $4b28: $20 $74

    ld l, b                                       ; $4b2a: $68
    ld h, l                                       ; $4b2b: $65
    jr nz, jr_01d_4b9c                            ; $4b2c: $20 $6e

    ld h, l                                       ; $4b2e: $65
    ld a, b                                       ; $4b2f: $78
    ld [hl], h                                    ; $4b30: $74
    ld bc, $6f74                                  ; $4b31: $01 $74 $6f
    ld [hl], l                                    ; $4b34: $75
    ld [hl], d                                    ; $4b35: $72

jr_01d_4b36:
    ld l, [hl]                                    ; $4b36: $6e
    ld h, c                                       ; $4b37: $61
    ld l, l                                       ; $4b38: $6d
    ld h, l                                       ; $4b39: $65
    ld l, [hl]                                    ; $4b3a: $6e
    ld [hl], h                                    ; $4b3b: $74
    ld hl, $0003                                  ; $4b3c: $21 $03 $00

jr_01d_4b3f:
    ld b, l                                       ; $4b3f: $45
    halt                                          ; $4b40: $76
    ld h, l                                       ; $4b41: $65
    ld [hl], d                                    ; $4b42: $72
    ld a, c                                       ; $4b43: $79
    ld l, a                                       ; $4b44: $6f
    ld l, [hl]                                    ; $4b45: $6e
    ld h, l                                       ; $4b46: $65
    jr nz, jr_01d_4bb2                            ; $4b47: $20 $69

    ld l, [hl]                                    ; $4b49: $6e
    jr nz, jr_01d_4b99                            ; $4b4a: $20 $4d

    ld h, c                                       ; $4b4c: $61
    ld [hl], d                                    ; $4b4d: $72
    ld l, c                                       ; $4b4e: $69
    ld l, a                                       ; $4b4f: $6f
    ld bc, $6f57                                  ; $4b50: $01 $57 $6f

jr_01d_4b53:
    ld [hl], d                                    ; $4b53: $72
    ld l, h                                       ; $4b54: $6c
    ld h, h                                       ; $4b55: $64
    jr nz, jr_01d_4bc4                            ; $4b56: $20 $6c

    ld l, a                                       ; $4b58: $6f
    halt                                          ; $4b59: $76
    ld h, l                                       ; $4b5a: $65
    ld [hl], e                                    ; $4b5b: $73
    jr nz, jr_01d_4bc5                            ; $4b5c: $20 $67

    ld l, a                                       ; $4b5e: $6f
    ld l, h                                       ; $4b5f: $6c
    ld h, [hl]                                    ; $4b60: $66
    ld l, $02                                     ; $4b61: $2e $02
    ld c, c                                       ; $4b63: $49
    jr nz, @+$79                                  ; $4b64: $20 $77

    ld h, c                                       ; $4b66: $61
    ld l, [hl]                                    ; $4b67: $6e
    ld [hl], h                                    ; $4b68: $74
    jr nz, jr_01d_4bdf                            ; $4b69: $20 $74

    ld l, a                                       ; $4b6b: $6f
    jr nz, jr_01d_4bde                            ; $4b6c: $20 $70

    ld l, h                                       ; $4b6e: $6c
    ld h, c                                       ; $4b6f: $61
    ld a, c                                       ; $4b70: $79
    ld bc, $6f73                                  ; $4b71: $01 $73 $6f
    jr nz, jr_01d_4bd8                            ; $4b74: $20 $62

    ld h, c                                       ; $4b76: $61
    ld h, h                                       ; $4b77: $64
    ld l, h                                       ; $4b78: $6c
    ld a, c                                       ; $4b79: $79

jr_01d_4b7a:
    ld hl, $0003                                  ; $4b7a: $21 $03 $00
    ld c, l                                       ; $4b7d: $4d
    ld h, c                                       ; $4b7e: $61
    ld [hl], d                                    ; $4b7f: $72
    ld l, c                                       ; $4b80: $69
    ld l, a                                       ; $4b81: $6f
    jr nz, @+$66                                  ; $4b82: $20 $64

    ld l, a                                       ; $4b84: $6f

jr_01d_4b85:
    ld h, l                                       ; $4b85: $65
    ld [hl], e                                    ; $4b86: $73
    ld l, [hl]                                    ; $4b87: $6e
    daa                                           ; $4b88: $27
    ld [hl], h                                    ; $4b89: $74
    jr nz, jr_01d_4bef                            ; $4b8a: $20 $63

    ld h, c                                       ; $4b8c: $61
    ld [hl], d                                    ; $4b8d: $72

jr_01d_4b8e:
    ld h, l                                       ; $4b8e: $65

jr_01d_4b8f:
    ld bc, $6669                                  ; $4b8f: $01 $69 $66
    jr nz, jr_01d_4bfc                            ; $4b92: $20 $68

    ld h, l                                       ; $4b94: $65
    jr nz, jr_01d_4c0e                            ; $4b95: $20 $77

    ld l, c                                       ; $4b97: $69
    ld l, [hl]                                    ; $4b98: $6e

jr_01d_4b99:
    ld [hl], e                                    ; $4b99: $73
    jr nz, jr_01d_4c0b                            ; $4b9a: $20 $6f

jr_01d_4b9c:
    ld [hl], d                                    ; $4b9c: $72

jr_01d_4b9d:
    jr nz, jr_01d_4c0b                            ; $4b9d: $20 $6c

    ld l, a                                       ; $4b9f: $6f
    ld [hl], e                                    ; $4ba0: $73
    ld h, l                                       ; $4ba1: $65
    ld [hl], e                                    ; $4ba2: $73
    ld l, $03                                     ; $4ba3: $2e $03
    nop                                           ; $4ba5: $00
    ld c, [hl]                                    ; $4ba6: $4e
    ld l, a                                       ; $4ba7: $6f
    jr nz, jr_01d_4bf1                            ; $4ba8: $20 $47

    ld [hl], d                                    ; $4baa: $72
    ld h, c                                       ; $4bab: $61
    ld l, [hl]                                    ; $4bac: $6e
    ld h, h                                       ; $4bad: $64
    jr nz, jr_01d_4bf3                            ; $4bae: $20 $43

    ld l, b                                       ; $4bb0: $68
    ld h, c                                       ; $4bb1: $61

jr_01d_4bb2:
    ld l, l                                       ; $4bb2: $6d
    ld [hl], b                                    ; $4bb3: $70
    jr nz, jr_01d_4c1e                            ; $4bb4: $20 $68

    ld h, c                                       ; $4bb6: $61
    ld [hl], e                                    ; $4bb7: $73
    ld bc, $7665                                  ; $4bb8: $01 $65 $76
    ld h, l                                       ; $4bbb: $65
    ld [hl], d                                    ; $4bbc: $72
    jr nz, jr_01d_4c36                            ; $4bbd: $20 $77

    ld l, a                                       ; $4bbf: $6f
    ld l, [hl]                                    ; $4bc0: $6e
    jr nz, @+$52                                  ; $4bc1: $20 $50

    ld h, l                                       ; $4bc3: $65

jr_01d_4bc4:
    ld h, c                                       ; $4bc4: $61

jr_01d_4bc5:
    ld h, e                                       ; $4bc5: $63
    ld l, b                                       ; $4bc6: $68
    daa                                           ; $4bc7: $27
    ld [hl], e                                    ; $4bc8: $73
    ld bc, $6f54                                  ; $4bc9: $01 $54 $6f
    ld [hl], l                                    ; $4bcc: $75
    ld [hl], d                                    ; $4bcd: $72
    ld l, [hl]                                    ; $4bce: $6e
    ld h, c                                       ; $4bcf: $61
    ld l, l                                       ; $4bd0: $6d
    ld h, l                                       ; $4bd1: $65
    ld l, [hl]                                    ; $4bd2: $6e
    ld [hl], h                                    ; $4bd3: $74
    ld l, $03                                     ; $4bd4: $2e $03
    nop                                           ; $4bd6: $00
    ld b, h                                       ; $4bd7: $44

jr_01d_4bd8:
    ld l, a                                       ; $4bd8: $6f
    ld l, [hl]                                    ; $4bd9: $6e
    daa                                           ; $4bda: $27
    ld [hl], h                                    ; $4bdb: $74
    jr nz, jr_01d_4c52                            ; $4bdc: $20 $74

jr_01d_4bde:
    ld l, b                                       ; $4bde: $68

jr_01d_4bdf:
    ld h, l                                       ; $4bdf: $65
    ld a, c                                       ; $4be0: $79
    jr nz, jr_01d_4c4e                            ; $4be1: $20 $6b

    ld l, [hl]                                    ; $4be3: $6e
    ld l, a                                       ; $4be4: $6f
    ld [hl], a                                    ; $4be5: $77
    ld bc, $6f64                                  ; $4be6: $01 $64 $6f
    ld [hl], a                                    ; $4be9: $77
    ld l, [hl]                                    ; $4bea: $6e
    jr nz, jr_01d_4c61                            ; $4beb: $20 $74

    ld l, b                                       ; $4bed: $68
    ld h, l                                       ; $4bee: $65

jr_01d_4bef:
    ld [hl], d                                    ; $4bef: $72
    ld h, l                                       ; $4bf0: $65

jr_01d_4bf1:
    jr nz, jr_01d_4c67                            ; $4bf1: $20 $74

jr_01d_4bf3:
    ld l, b                                       ; $4bf3: $68
    ld h, c                                       ; $4bf4: $61
    ld [hl], h                                    ; $4bf5: $74
    ld bc, $6f79                                  ; $4bf6: $01 $79 $6f
    ld [hl], l                                    ; $4bf9: $75
    jr nz, @+$79                                  ; $4bfa: $20 $77

jr_01d_4bfc:
    ld l, a                                       ; $4bfc: $6f
    ld l, [hl]                                    ; $4bfd: $6e
    jr nz, jr_01d_4c50                            ; $4bfe: $20 $50

    ld h, l                                       ; $4c00: $65
    ld h, c                                       ; $4c01: $61
    ld h, e                                       ; $4c02: $63
    ld l, b                                       ; $4c03: $68
    daa                                           ; $4c04: $27
    ld [hl], e                                    ; $4c05: $73
    ld [bc], a                                    ; $4c06: $02
    ld d, h                                       ; $4c07: $54
    ld l, a                                       ; $4c08: $6f
    ld [hl], l                                    ; $4c09: $75
    ld [hl], d                                    ; $4c0a: $72

jr_01d_4c0b:
    ld l, [hl]                                    ; $4c0b: $6e
    ld h, c                                       ; $4c0c: $61
    ld l, l                                       ; $4c0d: $6d

jr_01d_4c0e:
    ld h, l                                       ; $4c0e: $65
    ld l, [hl]                                    ; $4c0f: $6e
    ld [hl], h                                    ; $4c10: $74
    ccf                                           ; $4c11: $3f
    jr nz, jr_01d_4c6d                            ; $4c12: $20 $59

    ld l, a                                       ; $4c14: $6f
    ld [hl], l                                    ; $4c15: $75
    ld [hl], d                                    ; $4c16: $72
    ld bc, $7274                                  ; $4c17: $01 $74 $72
    ld l, a                                       ; $4c1a: $6f
    ld [hl], b                                    ; $4c1b: $70
    ld l, b                                       ; $4c1c: $68
    ld a, c                                       ; $4c1d: $79

jr_01d_4c1e:
    daa                                           ; $4c1e: $27
    ld [hl], e                                    ; $4c1f: $73
    jr nz, @+$64                                  ; $4c20: $20 $62

    ld h, l                                       ; $4c22: $65
    ld h, l                                       ; $4c23: $65
    ld l, [hl]                                    ; $4c24: $6e
    jr nz, jr_01d_4c9a                            ; $4c25: $20 $73

    ld h, l                                       ; $4c27: $65
    ld l, [hl]                                    ; $4c28: $6e
    ld [hl], h                                    ; $4c29: $74
    ld bc, $6f74                                  ; $4c2a: $01 $74 $6f
    jr nz, jr_01d_4c7c                            ; $4c2d: $20 $4d

    ld h, c                                       ; $4c2f: $61
    ld [hl], d                                    ; $4c30: $72
    ld l, c                                       ; $4c31: $69
    ld l, a                                       ; $4c32: $6f
    ld l, [hl]                                    ; $4c33: $6e
    jr nz, jr_01d_4c79                            ; $4c34: $20 $43

jr_01d_4c36:
    ld l, h                                       ; $4c36: $6c
    ld [hl], l                                    ; $4c37: $75
    ld h, d                                       ; $4c38: $62
    ld l, $03                                     ; $4c39: $2e $03
    nop                                           ; $4c3b: $00
    ld c, c                                       ; $4c3c: $49
    jr nz, jr_01d_4ca7                            ; $4c3d: $20 $68

    ld h, l                                       ; $4c3f: $65
    ld h, c                                       ; $4c40: $61
    ld [hl], d                                    ; $4c41: $72
    ld h, h                                       ; $4c42: $64
    jr nz, @+$52                                  ; $4c43: $20 $50

    ld h, l                                       ; $4c45: $65
    ld h, c                                       ; $4c46: $61
    ld h, e                                       ; $4c47: $63
    ld l, b                                       ; $4c48: $68
    ld bc, $6977                                  ; $4c49: $01 $77 $69
    ld l, h                                       ; $4c4c: $6c
    ld l, h                                       ; $4c4d: $6c

jr_01d_4c4e:
    jr nz, jr_01d_4cb5                            ; $4c4e: $20 $65

jr_01d_4c50:
    ld l, [hl]                                    ; $4c50: $6e
    ld [hl], h                                    ; $4c51: $74

jr_01d_4c52:
    ld h, l                                       ; $4c52: $65
    ld [hl], d                                    ; $4c53: $72
    jr nz, @+$76                                  ; $4c54: $20 $74

    ld l, b                                       ; $4c56: $68
    ld h, l                                       ; $4c57: $65
    ld bc, $6f74                                  ; $4c58: $01 $74 $6f
    ld [hl], l                                    ; $4c5b: $75
    ld [hl], d                                    ; $4c5c: $72
    ld l, [hl]                                    ; $4c5d: $6e
    ld h, c                                       ; $4c5e: $61
    ld l, l                                       ; $4c5f: $6d
    ld h, l                                       ; $4c60: $65

jr_01d_4c61:
    ld l, [hl]                                    ; $4c61: $6e
    ld [hl], h                                    ; $4c62: $74
    jr nz, @+$76                                  ; $4c63: $20 $74

    ld l, a                                       ; $4c65: $6f
    ld h, h                                       ; $4c66: $64

jr_01d_4c67:
    ld h, c                                       ; $4c67: $61
    ld a, c                                       ; $4c68: $79
    ld l, $03                                     ; $4c69: $2e $03
    nop                                           ; $4c6b: $00
    ld c, c                                       ; $4c6c: $49

jr_01d_4c6d:
    ld h, [hl]                                    ; $4c6d: $66
    jr nz, jr_01d_4ce9                            ; $4c6e: $20 $79

    ld l, a                                       ; $4c70: $6f
    ld [hl], l                                    ; $4c71: $75
    jr nz, jr_01d_4ce0                            ; $4c72: $20 $6c

    ld l, c                                       ; $4c74: $69
    ld l, e                                       ; $4c75: $6b
    ld h, l                                       ; $4c76: $65
    jr nz, jr_01d_4ced                            ; $4c77: $20 $74

jr_01d_4c79:
    ld l, b                                       ; $4c79: $68
    ld l, c                                       ; $4c7a: $69
    ld [hl], e                                    ; $4c7b: $73

jr_01d_4c7c:
    ld bc, $6c70                                  ; $4c7c: $01 $70 $6c
    ld h, c                                       ; $4c7f: $61
    ld h, e                                       ; $4c80: $63
    ld h, l                                       ; $4c81: $65
    inc l                                         ; $4c82: $2c
    jr nz, jr_01d_4cfe                            ; $4c83: $20 $79

    ld l, a                                       ; $4c85: $6f
    ld [hl], l                                    ; $4c86: $75
    jr nz, jr_01d_4cec                            ; $4c87: $20 $63

    ld h, c                                       ; $4c89: $61
    ld l, [hl]                                    ; $4c8a: $6e
    jr nz, jr_01d_4d03                            ; $4c8b: $20 $76

    ld l, c                                       ; $4c8d: $69
    ld [hl], e                                    ; $4c8e: $73
    ld l, c                                       ; $4c8f: $69
    ld [hl], h                                    ; $4c90: $74
    ld bc, $7375                                  ; $4c91: $01 $75 $73
    jr nz, @+$63                                  ; $4c94: $20 $61

    ld l, [hl]                                    ; $4c96: $6e
    ld a, c                                       ; $4c97: $79
    ld [hl], h                                    ; $4c98: $74
    ld l, c                                       ; $4c99: $69

jr_01d_4c9a:
    ld l, l                                       ; $4c9a: $6d
    ld h, l                                       ; $4c9b: $65
    ld l, $03                                     ; $4c9c: $2e $03
    nop                                           ; $4c9e: $00
    ld d, a                                       ; $4c9f: $57
    ld l, c                                       ; $4ca0: $69
    ld l, h                                       ; $4ca1: $6c
    ld l, h                                       ; $4ca2: $6c
    jr nz, jr_01d_4d1e                            ; $4ca3: $20 $79

    ld l, a                                       ; $4ca5: $6f
    ld [hl], l                                    ; $4ca6: $75

jr_01d_4ca7:
    jr nz, @+$72                                  ; $4ca7: $20 $70

    ld l, h                                       ; $4ca9: $6c
    ld h, c                                       ; $4caa: $61
    ld a, c                                       ; $4cab: $79
    jr nz, jr_01d_4d0f                            ; $4cac: $20 $61

    ld bc, $7270                                  ; $4cae: $01 $70 $72
    ld h, c                                       ; $4cb1: $61
    ld h, e                                       ; $4cb2: $63
    ld [hl], h                                    ; $4cb3: $74
    ld l, c                                       ; $4cb4: $69

jr_01d_4cb5:
    ld h, e                                       ; $4cb5: $63
    ld h, l                                       ; $4cb6: $65
    jr nz, jr_01d_4d2b                            ; $4cb7: $20 $72

    ld l, a                                       ; $4cb9: $6f
    ld [hl], l                                    ; $4cba: $75
    ld l, [hl]                                    ; $4cbb: $6e
    ld h, h                                       ; $4cbc: $64
    ccf                                           ; $4cbd: $3f
    nop                                           ; $4cbe: $00
    ld d, b                                       ; $4cbf: $50
    ld l, h                                       ; $4cc0: $6c
    ld h, l                                       ; $4cc1: $65
    ld h, c                                       ; $4cc2: $61
    ld [hl], e                                    ; $4cc3: $73
    ld h, l                                       ; $4cc4: $65
    inc l                                         ; $4cc5: $2c
    jr nz, jr_01d_4d2f                            ; $4cc6: $20 $67

    ld l, a                                       ; $4cc8: $6f
    jr nz, @+$63                                  ; $4cc9: $20 $61

    ld l, b                                       ; $4ccb: $68
    ld h, l                                       ; $4ccc: $65
    ld h, c                                       ; $4ccd: $61
    ld h, h                                       ; $4cce: $64
    ld l, $03                                     ; $4ccf: $2e $03
    nop                                           ; $4cd1: $00
    ld c, c                                       ; $4cd2: $49
    jr nz, jr_01d_4d4c                            ; $4cd3: $20 $77

    ld h, c                                       ; $4cd5: $61
    ld l, [hl]                                    ; $4cd6: $6e
    ld [hl], h                                    ; $4cd7: $74
    jr nz, @+$76                                  ; $4cd8: $20 $74

    ld l, a                                       ; $4cda: $6f
    jr nz, jr_01d_4d46                            ; $4cdb: $20 $69

    ld l, l                                       ; $4cdd: $6d
    ld [hl], b                                    ; $4cde: $70
    ld [hl], d                                    ; $4cdf: $72

jr_01d_4ce0:
    ld l, a                                       ; $4ce0: $6f
    halt                                          ; $4ce1: $76
    ld h, l                                       ; $4ce2: $65
    ld bc, $6e61                                  ; $4ce3: $01 $61 $6e
    ld h, h                                       ; $4ce6: $64
    jr nz, jr_01d_4d5c                            ; $4ce7: $20 $73

jr_01d_4ce9:
    ld l, a                                       ; $4ce9: $6f
    ld l, l                                       ; $4cea: $6d
    ld h, l                                       ; $4ceb: $65

jr_01d_4cec:
    ld h, h                                       ; $4cec: $64

jr_01d_4ced:
    ld h, c                                       ; $4ced: $61
    ld a, c                                       ; $4cee: $79
    jr nz, jr_01d_4d56                            ; $4cef: $20 $65

    ld l, [hl]                                    ; $4cf1: $6e
    ld [hl], h                                    ; $4cf2: $74
    ld h, l                                       ; $4cf3: $65
    ld [hl], d                                    ; $4cf4: $72
    ld bc, $6874                                  ; $4cf5: $01 $74 $68
    ld h, l                                       ; $4cf8: $65
    jr nz, jr_01d_4d6f                            ; $4cf9: $20 $74

    ld l, a                                       ; $4cfb: $6f
    ld [hl], l                                    ; $4cfc: $75
    ld [hl], d                                    ; $4cfd: $72

jr_01d_4cfe:
    ld l, [hl]                                    ; $4cfe: $6e
    ld h, c                                       ; $4cff: $61
    ld l, l                                       ; $4d00: $6d
    ld h, l                                       ; $4d01: $65
    ld l, [hl]                                    ; $4d02: $6e

jr_01d_4d03:
    ld [hl], h                                    ; $4d03: $74
    ld l, $03                                     ; $4d04: $2e $03
    nop                                           ; $4d06: $00
    ld c, c                                       ; $4d07: $49
    ld h, [hl]                                    ; $4d08: $66
    jr nz, @+$7b                                  ; $4d09: $20 $79

    ld l, a                                       ; $4d0b: $6f
    ld [hl], l                                    ; $4d0c: $75
    daa                                           ; $4d0d: $27
    ld h, h                                       ; $4d0e: $64

jr_01d_4d0f:
    jr nz, jr_01d_4d7d                            ; $4d0f: $20 $6c

    ld l, c                                       ; $4d11: $69
    ld l, e                                       ; $4d12: $6b
    ld h, l                                       ; $4d13: $65
    jr nz, @+$76                                  ; $4d14: $20 $74

    ld l, a                                       ; $4d16: $6f
    ld bc, $6f67                                  ; $4d17: $01 $67 $6f
    jr nz, jr_01d_4d7e                            ; $4d1a: $20 $62

    ld h, c                                       ; $4d1c: $61
    ld h, e                                       ; $4d1d: $63

jr_01d_4d1e:
    ld l, e                                       ; $4d1e: $6b
    jr nz, jr_01d_4d85                            ; $4d1f: $20 $64

    ld l, a                                       ; $4d21: $6f
    ld [hl], a                                    ; $4d22: $77
    ld l, [hl]                                    ; $4d23: $6e
    inc l                                         ; $4d24: $2c
    ld bc, $6e65                                  ; $4d25: $01 $65 $6e
    ld [hl], h                                    ; $4d28: $74
    ld h, l                                       ; $4d29: $65
    ld [hl], d                                    ; $4d2a: $72

jr_01d_4d2b:
    jr nz, jr_01d_4da1                            ; $4d2b: $20 $74

    ld l, b                                       ; $4d2d: $68
    ld h, c                                       ; $4d2e: $61

jr_01d_4d2f:
    ld [hl], h                                    ; $4d2f: $74
    jr nz, @+$6a                                  ; $4d30: $20 $68

    ld l, a                                       ; $4d32: $6f
    ld l, h                                       ; $4d33: $6c
    ld h, l                                       ; $4d34: $65
    ld l, $03                                     ; $4d35: $2e $03
    nop                                           ; $4d37: $00
    ld d, h                                       ; $4d38: $54
    ld l, b                                       ; $4d39: $68
    ld h, c                                       ; $4d3a: $61
    ld [hl], h                                    ; $4d3b: $74
    daa                                           ; $4d3c: $27
    ld [hl], e                                    ; $4d3d: $73
    jr nz, jr_01d_4db4                            ; $4d3e: $20 $74

    ld l, b                                       ; $4d40: $68
    ld h, l                                       ; $4d41: $65
    jr nz, jr_01d_4dbb                            ; $4d42: $20 $77

    ld h, c                                       ; $4d44: $61
    ld a, c                                       ; $4d45: $79

jr_01d_4d46:
    ld bc, $6f74                                  ; $4d46: $01 $74 $6f
    jr nz, jr_01d_4dbf                            ; $4d49: $20 $74

    ld l, b                                       ; $4d4b: $68

jr_01d_4d4c:
    ld h, l                                       ; $4d4c: $65
    jr nz, @+$65                                  ; $4d4d: $20 $63

    ld l, a                                       ; $4d4f: $6f
    ld [hl], l                                    ; $4d50: $75
    ld [hl], d                                    ; $4d51: $72
    ld [hl], e                                    ; $4d52: $73
    ld h, l                                       ; $4d53: $65
    ld l, $03                                     ; $4d54: $2e $03

jr_01d_4d56:
    nop                                           ; $4d56: $00
    ld d, a                                       ; $4d57: $57
    ld h, l                                       ; $4d58: $65
    ld l, h                                       ; $4d59: $6c
    ld l, h                                       ; $4d5a: $6c
    inc l                                         ; $4d5b: $2c

jr_01d_4d5c:
    jr nz, jr_01d_4dca                            ; $4d5c: $20 $6c

    ld h, l                                       ; $4d5e: $65
    ld [hl], h                                    ; $4d5f: $74
    jr nz, jr_01d_4dd6                            ; $4d60: $20 $74

    ld l, b                                       ; $4d62: $68
    ld h, l                                       ; $4d63: $65
    ld bc, $6f74                                  ; $4d64: $01 $74 $6f
    ld [hl], l                                    ; $4d67: $75
    ld [hl], d                                    ; $4d68: $72
    ld l, [hl]                                    ; $4d69: $6e
    ld h, c                                       ; $4d6a: $61
    ld l, l                                       ; $4d6b: $6d
    ld h, l                                       ; $4d6c: $65
    ld l, [hl]                                    ; $4d6d: $6e
    ld [hl], h                                    ; $4d6e: $74

jr_01d_4d6f:
    jr nz, @+$64                                  ; $4d6f: $20 $62

    ld h, l                                       ; $4d71: $65
    ld h, a                                       ; $4d72: $67
    ld l, c                                       ; $4d73: $69
    ld l, [hl]                                    ; $4d74: $6e
    ld l, $03                                     ; $4d75: $2e $03
    nop                                           ; $4d77: $00
    ld b, d                                       ; $4d78: $42
    ld h, l                                       ; $4d79: $65
    ld [hl], h                                    ; $4d7a: $74
    ld [hl], h                                    ; $4d7b: $74
    ld h, l                                       ; $4d7c: $65

jr_01d_4d7d:
    ld [hl], d                                    ; $4d7d: $72

jr_01d_4d7e:
    jr nz, @+$6e                                  ; $4d7e: $20 $6c

    ld [hl], l                                    ; $4d80: $75
    ld h, e                                       ; $4d81: $63
    ld l, e                                       ; $4d82: $6b
    jr nz, @+$70                                  ; $4d83: $20 $6e

jr_01d_4d85:
    ld h, l                                       ; $4d85: $65
    ld a, b                                       ; $4d86: $78
    ld [hl], h                                    ; $4d87: $74
    ld bc, $6974                                  ; $4d88: $01 $74 $69
    ld l, l                                       ; $4d8b: $6d
    ld h, l                                       ; $4d8c: $65
    inc l                                         ; $4d8d: $2c
    jr nz, @+$09                                  ; $4d8e: $20 $07

    ld l, $01                                     ; $4d90: $2e $01
    ld d, a                                       ; $4d92: $57
    ld h, c                                       ; $4d93: $61
    ld l, [hl]                                    ; $4d94: $6e
    ld [hl], h                                    ; $4d95: $74
    jr nz, jr_01d_4e0c                            ; $4d96: $20 $74

    ld l, a                                       ; $4d98: $6f
    jr nz, @+$76                                  ; $4d99: $20 $74

    ld [hl], d                                    ; $4d9b: $72
    ld a, c                                       ; $4d9c: $79
    jr nz, jr_01d_4e00                            ; $4d9d: $20 $61

    ld h, a                                       ; $4d9f: $67
    ld h, c                                       ; $4da0: $61

jr_01d_4da1:
    ld l, c                                       ; $4da1: $69
    ld l, [hl]                                    ; $4da2: $6e
    ccf                                           ; $4da3: $3f
    nop                                           ; $4da4: $00
    ld d, h                                       ; $4da5: $54
    ld h, c                                       ; $4da6: $61
    ld l, h                                       ; $4da7: $6c
    ld l, e                                       ; $4da8: $6b
    jr nz, jr_01d_4e1f                            ; $4da9: $20 $74

    ld l, a                                       ; $4dab: $6f
    jr nz, jr_01d_4e02                            ; $4dac: $20 $54

    ld l, a                                       ; $4dae: $6f
    ld h, c                                       ; $4daf: $61
    ld h, h                                       ; $4db0: $64
    jr nz, jr_01d_4e14                            ; $4db1: $20 $61

    ld [hl], h                                    ; $4db3: $74

jr_01d_4db4:
    ld bc, $6874                                  ; $4db4: $01 $74 $68
    ld h, l                                       ; $4db7: $65
    jr nz, jr_01d_4e1f                            ; $4db8: $20 $65

    ld l, [hl]                                    ; $4dba: $6e

jr_01d_4dbb:
    ld [hl], h                                    ; $4dbb: $74
    ld [hl], d                                    ; $4dbc: $72
    ld h, c                                       ; $4dbd: $61
    ld l, [hl]                                    ; $4dbe: $6e

jr_01d_4dbf:
    ld h, e                                       ; $4dbf: $63
    ld h, l                                       ; $4dc0: $65
    jr nz, jr_01d_4e24                            ; $4dc1: $20 $61

    ld h, d                                       ; $4dc3: $62
    ld l, a                                       ; $4dc4: $6f
    ld [hl], l                                    ; $4dc5: $75
    ld [hl], h                                    ; $4dc6: $74
    ld bc, $2061                                  ; $4dc7: $01 $61 $20

jr_01d_4dca:
    ld [hl], b                                    ; $4dca: $70
    ld [hl], d                                    ; $4dcb: $72
    ld h, c                                       ; $4dcc: $61
    ld h, e                                       ; $4dcd: $63
    ld [hl], h                                    ; $4dce: $74
    ld l, c                                       ; $4dcf: $69
    ld h, e                                       ; $4dd0: $63
    ld h, l                                       ; $4dd1: $65
    jr nz, @+$74                                  ; $4dd2: $20 $72

    ld l, a                                       ; $4dd4: $6f
    ld [hl], l                                    ; $4dd5: $75

jr_01d_4dd6:
    ld l, [hl]                                    ; $4dd6: $6e
    ld h, h                                       ; $4dd7: $64
    ld l, $03                                     ; $4dd8: $2e $03
    nop                                           ; $4dda: $00
    ld b, e                                       ; $4ddb: $43
    ld l, a                                       ; $4ddc: $6f
    ld l, [hl]                                    ; $4ddd: $6e
    ld h, a                                       ; $4dde: $67
    ld [hl], d                                    ; $4ddf: $72
    ld h, c                                       ; $4de0: $61
    ld [hl], h                                    ; $4de1: $74
    ld [hl], l                                    ; $4de2: $75
    ld l, h                                       ; $4de3: $6c
    ld h, c                                       ; $4de4: $61
    ld [hl], h                                    ; $4de5: $74
    ld l, c                                       ; $4de6: $69
    ld l, a                                       ; $4de7: $6f
    ld l, [hl]                                    ; $4de8: $6e
    ld [hl], e                                    ; $4de9: $73
    inc l                                         ; $4dea: $2c
    ld bc, $2e07                                  ; $4deb: $01 $07 $2e
    jr nz, @+$5b                                  ; $4dee: $20 $59

    ld l, a                                       ; $4df0: $6f
    ld [hl], l                                    ; $4df1: $75
    ld bc, $6c70                                  ; $4df2: $01 $70 $6c
    ld h, c                                       ; $4df5: $61
    ld h, e                                       ; $4df6: $63
    ld h, l                                       ; $4df7: $65
    ld h, h                                       ; $4df8: $64
    ld l, $20                                     ; $4df9: $2e $20
    ld b, c                                       ; $4dfb: $41
    ld l, l                                       ; $4dfc: $6d
    ld h, c                                       ; $4dfd: $61
    ld a, d                                       ; $4dfe: $7a
    ld l, c                                       ; $4dff: $69

jr_01d_4e00:
    ld l, [hl]                                    ; $4e00: $6e
    ld h, a                                       ; $4e01: $67

jr_01d_4e02:
    ld hl, $2002                                  ; $4e02: $21 $02 $20
    ld b, a                                       ; $4e05: $47
    ld l, a                                       ; $4e06: $6f
    ld l, a                                       ; $4e07: $6f
    ld h, h                                       ; $4e08: $64
    jr nz, jr_01d_4e77                            ; $4e09: $20 $6c

    ld [hl], l                                    ; $4e0b: $75

jr_01d_4e0c:
    ld h, e                                       ; $4e0c: $63
    ld l, e                                       ; $4e0d: $6b
    jr nz, jr_01d_4e87                            ; $4e0e: $20 $77

    ld l, c                                       ; $4e10: $69
    ld l, [hl]                                    ; $4e11: $6e
    ld l, [hl]                                    ; $4e12: $6e
    ld l, c                                       ; $4e13: $69

jr_01d_4e14:
    ld l, [hl]                                    ; $4e14: $6e
    ld h, a                                       ; $4e15: $67
    ld bc, $656e                                  ; $4e16: $01 $6e $65
    ld a, b                                       ; $4e19: $78
    ld [hl], h                                    ; $4e1a: $74
    jr nz, jr_01d_4e91                            ; $4e1b: $20 $74

    ld l, c                                       ; $4e1d: $69
    ld l, l                                       ; $4e1e: $6d

jr_01d_4e1f:
    ld h, l                                       ; $4e1f: $65
    ld l, $01                                     ; $4e20: $2e $01
    ld d, a                                       ; $4e22: $57
    ld h, c                                       ; $4e23: $61

jr_01d_4e24:
    ld l, [hl]                                    ; $4e24: $6e
    ld [hl], h                                    ; $4e25: $74
    jr nz, jr_01d_4e9c                            ; $4e26: $20 $74

    ld l, a                                       ; $4e28: $6f
    jr nz, @+$76                                  ; $4e29: $20 $74

    ld [hl], d                                    ; $4e2b: $72
    ld a, c                                       ; $4e2c: $79
    jr nz, jr_01d_4e90                            ; $4e2d: $20 $61

    ld h, a                                       ; $4e2f: $67
    ld h, c                                       ; $4e30: $61
    ld l, c                                       ; $4e31: $69
    ld l, [hl]                                    ; $4e32: $6e
    ccf                                           ; $4e33: $3f
    nop                                           ; $4e34: $00
    ld d, h                                       ; $4e35: $54
    ld h, c                                       ; $4e36: $61
    ld l, h                                       ; $4e37: $6c
    ld l, e                                       ; $4e38: $6b
    jr nz, jr_01d_4eaf                            ; $4e39: $20 $74

    ld l, a                                       ; $4e3b: $6f
    jr nz, jr_01d_4e92                            ; $4e3c: $20 $54

    ld l, a                                       ; $4e3e: $6f
    ld h, c                                       ; $4e3f: $61
    ld h, h                                       ; $4e40: $64
    jr nz, jr_01d_4ea4                            ; $4e41: $20 $61

    ld [hl], h                                    ; $4e43: $74
    ld bc, $6874                                  ; $4e44: $01 $74 $68
    ld h, l                                       ; $4e47: $65
    jr nz, jr_01d_4eaf                            ; $4e48: $20 $65

    ld l, [hl]                                    ; $4e4a: $6e
    ld [hl], h                                    ; $4e4b: $74
    ld [hl], d                                    ; $4e4c: $72
    ld h, c                                       ; $4e4d: $61
    ld l, [hl]                                    ; $4e4e: $6e
    ld h, e                                       ; $4e4f: $63
    ld h, l                                       ; $4e50: $65
    jr nz, jr_01d_4eb4                            ; $4e51: $20 $61

    ld h, d                                       ; $4e53: $62
    ld l, a                                       ; $4e54: $6f
    ld [hl], l                                    ; $4e55: $75
    ld [hl], h                                    ; $4e56: $74
    ld bc, $2061                                  ; $4e57: $01 $61 $20
    ld [hl], b                                    ; $4e5a: $70
    ld [hl], d                                    ; $4e5b: $72
    ld h, c                                       ; $4e5c: $61
    ld h, e                                       ; $4e5d: $63
    ld [hl], h                                    ; $4e5e: $74
    ld l, c                                       ; $4e5f: $69
    ld h, e                                       ; $4e60: $63
    ld h, l                                       ; $4e61: $65
    jr nz, jr_01d_4ed6                            ; $4e62: $20 $72

    ld l, a                                       ; $4e64: $6f
    ld [hl], l                                    ; $4e65: $75
    ld l, [hl]                                    ; $4e66: $6e
    ld h, h                                       ; $4e67: $64
    ld l, $03                                     ; $4e68: $2e $03
    nop                                           ; $4e6a: $00
    ld e, c                                       ; $4e6b: $59
    ld l, a                                       ; $4e6c: $6f
    ld [hl], l                                    ; $4e6d: $75
    jr nz, jr_01d_4ed1                            ; $4e6e: $20 $61

    ld [hl], d                                    ; $4e70: $72
    ld h, l                                       ; $4e71: $65
    jr nz, jr_01d_4eeb                            ; $4e72: $20 $77

    ld h, l                                       ; $4e74: $65
    ld l, h                                       ; $4e75: $6c
    ld h, e                                       ; $4e76: $63

jr_01d_4e77:
    ld l, a                                       ; $4e77: $6f
    ld l, l                                       ; $4e78: $6d
    ld h, l                                       ; $4e79: $65
    jr nz, jr_01d_4ef0                            ; $4e7a: $20 $74

    ld l, a                                       ; $4e7c: $6f
    ld bc, $6f6a                                  ; $4e7d: $01 $6a $6f
    ld l, c                                       ; $4e80: $69
    ld l, [hl]                                    ; $4e81: $6e
    jr nz, jr_01d_4ef9                            ; $4e82: $20 $75

    ld [hl], e                                    ; $4e84: $73
    jr nz, @+$63                                  ; $4e85: $20 $61

jr_01d_4e87:
    ld l, [hl]                                    ; $4e87: $6e
    ld a, c                                       ; $4e88: $79
    jr nz, jr_01d_4eff                            ; $4e89: $20 $74

    ld l, c                                       ; $4e8b: $69
    ld l, l                                       ; $4e8c: $6d
    ld h, l                                       ; $4e8d: $65
    ld l, $03                                     ; $4e8e: $2e $03

jr_01d_4e90:
    nop                                           ; $4e90: $00

jr_01d_4e91:
    ld d, a                                       ; $4e91: $57

jr_01d_4e92:
    ld l, c                                       ; $4e92: $69
    ld l, h                                       ; $4e93: $6c
    ld l, h                                       ; $4e94: $6c
    jr nz, jr_01d_4f10                            ; $4e95: $20 $79

    ld l, a                                       ; $4e97: $6f
    ld [hl], l                                    ; $4e98: $75
    jr nz, jr_01d_4f05                            ; $4e99: $20 $6a

    ld l, a                                       ; $4e9b: $6f

jr_01d_4e9c:
    ld l, c                                       ; $4e9c: $69
    ld l, [hl]                                    ; $4e9d: $6e
    jr nz, jr_01d_4f15                            ; $4e9e: $20 $75

    ld [hl], e                                    ; $4ea0: $73
    jr nz, jr_01d_4f09                            ; $4ea1: $20 $66

    ld l, a                                       ; $4ea3: $6f

jr_01d_4ea4:
    ld [hl], d                                    ; $4ea4: $72
    ld bc, $6e61                                  ; $4ea5: $01 $61 $6e
    ld l, a                                       ; $4ea8: $6f
    ld [hl], h                                    ; $4ea9: $74
    ld l, b                                       ; $4eaa: $68
    ld h, l                                       ; $4eab: $65
    ld [hl], d                                    ; $4eac: $72
    jr nz, jr_01d_4f23                            ; $4ead: $20 $74

jr_01d_4eaf:
    ld l, a                                       ; $4eaf: $6f
    ld [hl], l                                    ; $4eb0: $75
    ld [hl], d                                    ; $4eb1: $72
    ld l, [hl]                                    ; $4eb2: $6e
    ld h, c                                       ; $4eb3: $61

jr_01d_4eb4:
    ld l, l                                       ; $4eb4: $6d
    ld h, l                                       ; $4eb5: $65
    ld l, [hl]                                    ; $4eb6: $6e
    ld [hl], h                                    ; $4eb7: $74
    ccf                                           ; $4eb8: $3f
    nop                                           ; $4eb9: $00
    ld d, h                                       ; $4eba: $54
    ld h, c                                       ; $4ebb: $61
    ld l, h                                       ; $4ebc: $6c
    ld l, e                                       ; $4ebd: $6b
    jr nz, jr_01d_4f34                            ; $4ebe: $20 $74

    ld l, a                                       ; $4ec0: $6f
    jr nz, jr_01d_4f17                            ; $4ec1: $20 $54

    ld l, a                                       ; $4ec3: $6f
    ld h, c                                       ; $4ec4: $61
    ld h, h                                       ; $4ec5: $64
    jr nz, jr_01d_4f29                            ; $4ec6: $20 $61

    ld [hl], h                                    ; $4ec8: $74
    ld bc, $6874                                  ; $4ec9: $01 $74 $68
    ld h, l                                       ; $4ecc: $65
    jr nz, jr_01d_4f34                            ; $4ecd: $20 $65

    ld l, [hl]                                    ; $4ecf: $6e
    ld [hl], h                                    ; $4ed0: $74

jr_01d_4ed1:
    ld [hl], d                                    ; $4ed1: $72
    ld h, c                                       ; $4ed2: $61
    ld l, [hl]                                    ; $4ed3: $6e
    ld h, e                                       ; $4ed4: $63
    ld h, l                                       ; $4ed5: $65

jr_01d_4ed6:
    jr nz, jr_01d_4f39                            ; $4ed6: $20 $61

    ld h, d                                       ; $4ed8: $62
    ld l, a                                       ; $4ed9: $6f
    ld [hl], l                                    ; $4eda: $75
    ld [hl], h                                    ; $4edb: $74
    ld bc, $2061                                  ; $4edc: $01 $61 $20
    ld [hl], b                                    ; $4edf: $70
    ld [hl], d                                    ; $4ee0: $72
    ld h, c                                       ; $4ee1: $61
    ld h, e                                       ; $4ee2: $63
    ld [hl], h                                    ; $4ee3: $74
    ld l, c                                       ; $4ee4: $69
    ld h, e                                       ; $4ee5: $63
    ld h, l                                       ; $4ee6: $65
    jr nz, jr_01d_4f5b                            ; $4ee7: $20 $72

    ld l, a                                       ; $4ee9: $6f
    ld [hl], l                                    ; $4eea: $75

jr_01d_4eeb:
    ld l, [hl]                                    ; $4eeb: $6e
    ld h, h                                       ; $4eec: $64
    ld l, $03                                     ; $4eed: $2e $03
    nop                                           ; $4eef: $00

jr_01d_4ef0:
    ld d, a                                       ; $4ef0: $57
    ld h, l                                       ; $4ef1: $65
    ld l, h                                       ; $4ef2: $6c
    ld l, h                                       ; $4ef3: $6c
    inc l                                         ; $4ef4: $2c
    jr nz, jr_01d_4efe                            ; $4ef5: $20 $07

    ld l, $01                                     ; $4ef7: $2e $01

jr_01d_4ef9:
    ld c, l                                       ; $4ef9: $4d
    ld h, c                                       ; $4efa: $61
    ld a, c                                       ; $4efb: $79
    jr nz, jr_01d_4f75                            ; $4efc: $20 $77

jr_01d_4efe:
    ld h, l                                       ; $4efe: $65

jr_01d_4eff:
    jr nz, jr_01d_4f63                            ; $4eff: $20 $62

    ld h, l                                       ; $4f01: $65
    ld h, a                                       ; $4f02: $67
    ld l, c                                       ; $4f03: $69
    ld l, [hl]                                    ; $4f04: $6e

jr_01d_4f05:
    ld bc, $6874                                  ; $4f05: $01 $74 $68
    ld h, l                                       ; $4f08: $65

jr_01d_4f09:
    jr nz, jr_01d_4f7f                            ; $4f09: $20 $74

    ld l, a                                       ; $4f0b: $6f
    ld [hl], l                                    ; $4f0c: $75
    ld [hl], d                                    ; $4f0d: $72
    ld l, [hl]                                    ; $4f0e: $6e
    ld h, c                                       ; $4f0f: $61

jr_01d_4f10:
    ld l, l                                       ; $4f10: $6d
    ld h, l                                       ; $4f11: $65
    ld l, [hl]                                    ; $4f12: $6e
    ld [hl], h                                    ; $4f13: $74
    ccf                                           ; $4f14: $3f

jr_01d_4f15:
    nop                                           ; $4f15: $00
    ld c, a                                       ; $4f16: $4f

jr_01d_4f17:
    ld l, b                                       ; $4f17: $68
    inc l                                         ; $4f18: $2c
    jr nz, jr_01d_4f94                            ; $4f19: $20 $79

    ld l, a                                       ; $4f1b: $6f
    ld [hl], l                                    ; $4f1c: $75
    daa                                           ; $4f1d: $27
    ld [hl], d                                    ; $4f1e: $72
    ld h, l                                       ; $4f1f: $65
    jr nz, jr_01d_4f90                            ; $4f20: $20 $6e

    ld l, a                                       ; $4f22: $6f

jr_01d_4f23:
    ld [hl], h                                    ; $4f23: $74
    ld bc, $656d                                  ; $4f24: $01 $6d $65
    ld l, [hl]                                    ; $4f27: $6e
    ld [hl], h                                    ; $4f28: $74

jr_01d_4f29:
    ld h, c                                       ; $4f29: $61
    ld l, h                                       ; $4f2a: $6c
    ld l, h                                       ; $4f2b: $6c
    ld a, c                                       ; $4f2c: $79
    jr nz, jr_01d_4f9f                            ; $4f2d: $20 $70

    ld [hl], d                                    ; $4f2f: $72
    ld h, l                                       ; $4f30: $65
    ld [hl], b                                    ; $4f31: $70
    ld h, c                                       ; $4f32: $61
    ld [hl], d                                    ; $4f33: $72

jr_01d_4f34:
    ld h, l                                       ; $4f34: $65
    ld h, h                                       ; $4f35: $64
    ccf                                           ; $4f36: $3f
    ld [bc], a                                    ; $4f37: $02
    ld b, h                                       ; $4f38: $44

jr_01d_4f39:
    ld l, a                                       ; $4f39: $6f
    jr nz, jr_01d_4fb0                            ; $4f3a: $20 $74

    ld h, l                                       ; $4f3c: $65
    ld l, h                                       ; $4f3d: $6c
    ld l, h                                       ; $4f3e: $6c
    jr nz, jr_01d_4fb6                            ; $4f3f: $20 $75

    ld [hl], e                                    ; $4f41: $73
    jr nz, @+$79                                  ; $4f42: $20 $77

    ld l, b                                       ; $4f44: $68
    ld h, l                                       ; $4f45: $65
    ld l, [hl]                                    ; $4f46: $6e
    ld bc, $6f79                                  ; $4f47: $01 $79 $6f
    ld [hl], l                                    ; $4f4a: $75
    daa                                           ; $4f4b: $27
    ld [hl], d                                    ; $4f4c: $72
    ld h, l                                       ; $4f4d: $65
    jr nz, @+$74                                  ; $4f4e: $20 $72

    ld h, l                                       ; $4f50: $65
    ld h, c                                       ; $4f51: $61
    ld h, h                                       ; $4f52: $64
    ld a, c                                       ; $4f53: $79
    ld l, $03                                     ; $4f54: $2e $03
    nop                                           ; $4f56: $00
    ld c, c                                       ; $4f57: $49
    jr nz, jr_01d_4fca                            ; $4f58: $20 $70

    ld [hl], d                                    ; $4f5a: $72

jr_01d_4f5b:
    ld h, l                                       ; $4f5b: $65
    ld [hl], e                                    ; $4f5c: $73
    ld h, l                                       ; $4f5d: $65
    ld l, [hl]                                    ; $4f5e: $6e
    ld [hl], h                                    ; $4f5f: $74
    jr nz, jr_01d_4fd6                            ; $4f60: $20 $74

    ld l, b                                       ; $4f62: $68

jr_01d_4f63:
    ld l, c                                       ; $4f63: $69
    ld [hl], e                                    ; $4f64: $73
    ld bc, $7274                                  ; $4f65: $01 $74 $72
    ld l, a                                       ; $4f68: $6f
    ld [hl], b                                    ; $4f69: $70
    ld l, b                                       ; $4f6a: $68
    ld a, c                                       ; $4f6b: $79
    jr nz, jr_01d_4fe2                            ; $4f6c: $20 $74

    ld l, a                                       ; $4f6e: $6f
    ld bc, $2007                                  ; $4f6f: $01 $07 $20
    ld h, [hl]                                    ; $4f72: $66
    ld l, a                                       ; $4f73: $6f
    ld [hl], d                                    ; $4f74: $72

jr_01d_4f75:
    ld [bc], a                                    ; $4f75: $02
    ld [hl], a                                    ; $4f76: $77
    ld l, c                                       ; $4f77: $69
    ld l, [hl]                                    ; $4f78: $6e
    ld l, [hl]                                    ; $4f79: $6e
    ld l, c                                       ; $4f7a: $69
    ld l, [hl]                                    ; $4f7b: $6e
    ld h, a                                       ; $4f7c: $67
    jr nz, jr_01d_4fcf                            ; $4f7d: $20 $50

jr_01d_4f7f:
    ld h, l                                       ; $4f7f: $65
    ld h, c                                       ; $4f80: $61
    ld h, e                                       ; $4f81: $63
    ld l, b                                       ; $4f82: $68
    daa                                           ; $4f83: $27
    ld [hl], e                                    ; $4f84: $73
    ld bc, $6f54                                  ; $4f85: $01 $54 $6f
    ld [hl], l                                    ; $4f88: $75
    ld [hl], d                                    ; $4f89: $72
    ld l, [hl]                                    ; $4f8a: $6e
    ld h, c                                       ; $4f8b: $61
    ld l, l                                       ; $4f8c: $6d
    ld h, l                                       ; $4f8d: $65
    ld l, [hl]                                    ; $4f8e: $6e
    ld [hl], h                                    ; $4f8f: $74

jr_01d_4f90:
    ld l, $03                                     ; $4f90: $2e $03
    nop                                           ; $4f92: $00
    ld c, c                                       ; $4f93: $49

jr_01d_4f94:
    jr nz, jr_01d_5006                            ; $4f94: $20 $70

    ld [hl], d                                    ; $4f96: $72
    ld h, l                                       ; $4f97: $65
    ld [hl], e                                    ; $4f98: $73
    ld h, l                                       ; $4f99: $65
    ld l, [hl]                                    ; $4f9a: $6e
    ld [hl], h                                    ; $4f9b: $74
    jr nz, @+$76                                  ; $4f9c: $20 $74

    ld l, b                                       ; $4f9e: $68

jr_01d_4f9f:
    ld l, c                                       ; $4f9f: $69
    ld [hl], e                                    ; $4fa0: $73
    ld bc, $7274                                  ; $4fa1: $01 $74 $72
    ld l, a                                       ; $4fa4: $6f
    ld [hl], b                                    ; $4fa5: $70
    ld l, b                                       ; $4fa6: $68
    ld a, c                                       ; $4fa7: $79
    jr nz, jr_01d_501e                            ; $4fa8: $20 $74

    ld l, a                                       ; $4faa: $6f
    ld bc, $2007                                  ; $4fab: $01 $07 $20
    ld h, [hl]                                    ; $4fae: $66
    ld l, a                                       ; $4faf: $6f

jr_01d_4fb0:
    ld [hl], d                                    ; $4fb0: $72
    ld [bc], a                                    ; $4fb1: $02
    ld [hl], h                                    ; $4fb2: $74
    ld h, c                                       ; $4fb3: $61
    ld l, e                                       ; $4fb4: $6b
    ld l, c                                       ; $4fb5: $69

jr_01d_4fb6:
    ld l, [hl]                                    ; $4fb6: $6e
    ld h, a                                       ; $4fb7: $67
    jr nz, jr_01d_4fc9                            ; $4fb8: $20 $0f

    jr nz, jr_01d_502c                            ; $4fba: $20 $70

    ld l, h                                       ; $4fbc: $6c
    ld h, c                                       ; $4fbd: $61
    ld h, e                                       ; $4fbe: $63
    ld h, l                                       ; $4fbf: $65
    ld bc, $6e69                                  ; $4fc0: $01 $69 $6e
    jr nz, jr_01d_5015                            ; $4fc3: $20 $50

    ld h, l                                       ; $4fc5: $65
    ld h, c                                       ; $4fc6: $61
    ld h, e                                       ; $4fc7: $63
    ld l, b                                       ; $4fc8: $68

jr_01d_4fc9:
    daa                                           ; $4fc9: $27

jr_01d_4fca:
    ld [hl], e                                    ; $4fca: $73
    ld bc, $6f54                                  ; $4fcb: $01 $54 $6f
    ld [hl], l                                    ; $4fce: $75

jr_01d_4fcf:
    ld [hl], d                                    ; $4fcf: $72
    ld l, [hl]                                    ; $4fd0: $6e
    ld h, c                                       ; $4fd1: $61
    ld l, l                                       ; $4fd2: $6d
    ld h, l                                       ; $4fd3: $65
    ld l, [hl]                                    ; $4fd4: $6e
    ld [hl], h                                    ; $4fd5: $74

jr_01d_4fd6:
    ld l, $03                                     ; $4fd6: $2e $03
    nop                                           ; $4fd8: $00
    ld b, e                                       ; $4fd9: $43
    ld l, a                                       ; $4fda: $6f
    ld l, [hl]                                    ; $4fdb: $6e
    ld h, a                                       ; $4fdc: $67
    ld [hl], d                                    ; $4fdd: $72
    ld h, c                                       ; $4fde: $61
    ld [hl], h                                    ; $4fdf: $74
    ld [hl], l                                    ; $4fe0: $75
    ld l, h                                       ; $4fe1: $6c

jr_01d_4fe2:
    ld h, c                                       ; $4fe2: $61
    ld [hl], h                                    ; $4fe3: $74
    ld l, c                                       ; $4fe4: $69
    ld l, a                                       ; $4fe5: $6f
    ld l, [hl]                                    ; $4fe6: $6e
    ld [hl], e                                    ; $4fe7: $73
    inc l                                         ; $4fe8: $2c
    ld bc, $2107                                  ; $4fe9: $01 $07 $21
    inc bc                                        ; $4fec: $03
    nop                                           ; $4fed: $00
    ld d, h                                       ; $4fee: $54
    ld l, b                                       ; $4fef: $68
    ld h, l                                       ; $4ff0: $65
    jr nz, jr_01d_5066                            ; $4ff1: $20 $73

    ld l, c                                       ; $4ff3: $69
    ld h, a                                       ; $4ff4: $67
    ld l, [hl]                                    ; $4ff5: $6e
    jr nz, jr_01d_506a                            ; $4ff6: $20 $72

    ld h, l                                       ; $4ff8: $65
    ld h, c                                       ; $4ff9: $61
    ld h, h                                       ; $4ffa: $64
    ld [hl], e                                    ; $4ffb: $73
    ld a, [hl-]                                   ; $4ffc: $3a
    ld bc, $5422                                  ; $4ffd: $01 $22 $54
    ld l, a                                       ; $5000: $6f
    jr nz, @+$52                                  ; $5001: $20 $50

    ld h, l                                       ; $5003: $65
    ld h, c                                       ; $5004: $61
    ld h, e                                       ; $5005: $63

jr_01d_5006:
    ld l, b                                       ; $5006: $68
    daa                                           ; $5007: $27
    ld [hl], e                                    ; $5008: $73
    ld bc, $6143                                  ; $5009: $01 $43 $61
    ld [hl], e                                    ; $500c: $73
    ld [hl], h                                    ; $500d: $74
    ld l, h                                       ; $500e: $6c
    ld h, l                                       ; $500f: $65
    inc l                                         ; $5010: $2c
    jr nz, jr_01d_505b                            ; $5011: $20 $48

    ld l, a                                       ; $5013: $6f
    ld l, h                                       ; $5014: $6c

jr_01d_5015:
    ld h, l                                       ; $5015: $65
    jr nz, jr_01d_5049                            ; $5016: $20 $31

    ld l, $22                                     ; $5018: $2e $22
    inc bc                                        ; $501a: $03
    nop                                           ; $501b: $00
    ld d, b                                       ; $501c: $50
    ld [hl], l                                    ; $501d: $75

jr_01d_501e:
    ld [hl], e                                    ; $501e: $73
    ld l, b                                       ; $501f: $68
    jr nz, jr_01d_5091                            ; $5020: $20 $6f

    ld [hl], d                                    ; $5022: $72
    jr nz, jr_01d_5095                            ; $5023: $20 $70

    ld [hl], l                                    ; $5025: $75
    ld l, h                                       ; $5026: $6c
    ld l, h                                       ; $5027: $6c
    inc l                                         ; $5028: $2c
    ld bc, $7469                                  ; $5029: $01 $69 $74

jr_01d_502c:
    jr nz, jr_01d_50a5                            ; $502c: $20 $77

    ld l, a                                       ; $502e: $6f
    ld l, [hl]                                    ; $502f: $6e
    daa                                           ; $5030: $27
    ld [hl], h                                    ; $5031: $74
    jr nz, jr_01d_5096                            ; $5032: $20 $62

    ld [hl], l                                    ; $5034: $75
    ld h, h                                       ; $5035: $64
    ld h, a                                       ; $5036: $67
    ld h, l                                       ; $5037: $65
    ld l, $03                                     ; $5038: $2e $03
    nop                                           ; $503a: $00
    ld d, h                                       ; $503b: $54
    ld l, b                                       ; $503c: $68
    ld h, l                                       ; $503d: $65
    jr nz, @+$65                                  ; $503e: $20 $63

    ld h, c                                       ; $5040: $61
    ld [hl], e                                    ; $5041: $73
    ld [hl], h                                    ; $5042: $74
    ld l, h                                       ; $5043: $6c
    ld h, l                                       ; $5044: $65
    jr nz, @+$66                                  ; $5045: $20 $64

    ld l, a                                       ; $5047: $6f
    ld l, a                                       ; $5048: $6f

jr_01d_5049:
    ld [hl], d                                    ; $5049: $72
    ld bc, $7369                                  ; $504a: $01 $69 $73
    jr nz, jr_01d_50c2                            ; $504d: $20 $73

    ld l, b                                       ; $504f: $68
    ld [hl], l                                    ; $5050: $75
    ld [hl], h                                    ; $5051: $74
    jr nz, jr_01d_50c8                            ; $5052: $20 $74

    ld l, c                                       ; $5054: $69
    ld h, a                                       ; $5055: $67
    ld l, b                                       ; $5056: $68
    ld [hl], h                                    ; $5057: $74
    ld l, $03                                     ; $5058: $2e $03
    nop                                           ; $505a: $00

jr_01d_505b:
    ld b, e                                       ; $505b: $43
    ld h, c                                       ; $505c: $61
    ld l, l                                       ; $505d: $6d
    ld h, l                                       ; $505e: $65
    ld [hl], d                                    ; $505f: $72
    ld h, c                                       ; $5060: $61
    jr nz, jr_01d_50b0                            ; $5061: $20 $4d

    ld l, a                                       ; $5063: $6f
    ld h, h                                       ; $5064: $64
    ld h, l                                       ; $5065: $65

jr_01d_5066:
    ld bc, $6f43                                  ; $5066: $01 $43 $6f
    ld [hl], l                                    ; $5069: $75

jr_01d_506a:
    ld [hl], d                                    ; $506a: $72
    ld [hl], e                                    ; $506b: $73
    ld h, l                                       ; $506c: $65
    jr nz, jr_01d_50bc                            ; $506d: $20 $4d

    ld h, c                                       ; $506f: $61
    ld [hl], b                                    ; $5070: $70
    ld bc, $6353                                  ; $5071: $01 $53 $63
    ld l, a                                       ; $5074: $6f
    ld [hl], d                                    ; $5075: $72
    ld h, l                                       ; $5076: $65
    ld h, e                                       ; $5077: $63
    ld h, c                                       ; $5078: $61
    ld [hl], d                                    ; $5079: $72
    ld h, h                                       ; $507a: $64
    ld bc, $6553                                  ; $507b: $01 $53 $65
    ld [hl], h                                    ; $507e: $74
    ld [hl], h                                    ; $507f: $74
    ld l, c                                       ; $5080: $69
    ld l, [hl]                                    ; $5081: $6e
    ld h, a                                       ; $5082: $67
    ld [hl], e                                    ; $5083: $73
    ld bc, $6947                                  ; $5084: $01 $47 $69
    halt                                          ; $5087: $76
    ld h, l                                       ; $5088: $65
    jr nz, jr_01d_50e0                            ; $5089: $20 $55

    ld [hl], b                                    ; $508b: $70
    ld bc, $7551                                  ; $508c: $01 $51 $75
    ld l, c                                       ; $508f: $69
    ld [hl], h                                    ; $5090: $74

jr_01d_5091:
    nop                                           ; $5091: $00
    ld b, e                                       ; $5092: $43
    ld l, b                                       ; $5093: $68
    ld h, c                                       ; $5094: $61

jr_01d_5095:
    ld [hl], d                                    ; $5095: $72

jr_01d_5096:
    ld l, $20                                     ; $5096: $2e $20
    ld b, h                                       ; $5098: $44
    ld h, c                                       ; $5099: $61
    ld [hl], h                                    ; $509a: $74
    ld h, c                                       ; $509b: $61
    ld bc, $7453                                  ; $509c: $01 $53 $74
    ld h, c                                       ; $509f: $61
    ld [hl], d                                    ; $50a0: $72
    ld [hl], e                                    ; $50a1: $73
    ld bc, $654d                                  ; $50a2: $01 $4d $65

jr_01d_50a5:
    ld [hl], e                                    ; $50a5: $73
    ld [hl], e                                    ; $50a6: $73
    ld h, c                                       ; $50a7: $61
    ld h, a                                       ; $50a8: $67
    ld h, l                                       ; $50a9: $65
    jr nz, jr_01d_50cc                            ; $50aa: $20 $20

    jr nz, @+$22                                  ; $50ac: $20 $20

    jr nz, jr_01d_50d0                            ; $50ae: $20 $20

jr_01d_50b0:
    jr nz, @+$22                                  ; $50b0: $20 $20

    jr nz, jr_01d_50d4                            ; $50b2: $20 $20

    jr nz, jr_01d_50b7                            ; $50b4: $20 $01

    ld d, e                                       ; $50b6: $53

jr_01d_50b7:
    ld h, c                                       ; $50b7: $61
    halt                                          ; $50b8: $76
    ld h, l                                       ; $50b9: $65
    jr nz, jr_01d_50e2                            ; $50ba: $20 $26

jr_01d_50bc:
    jr nz, jr_01d_510f                            ; $50bc: $20 $51

    ld [hl], l                                    ; $50be: $75
    ld l, c                                       ; $50bf: $69
    ld [hl], h                                    ; $50c0: $74
    nop                                           ; $50c1: $00

jr_01d_50c2:
    ld c, [hl]                                    ; $50c2: $4e
    ld h, c                                       ; $50c3: $61
    halt                                          ; $50c4: $76
    ld l, c                                       ; $50c5: $69
    ld h, a                                       ; $50c6: $67
    ld h, c                                       ; $50c7: $61

jr_01d_50c8:
    ld [hl], h                                    ; $50c8: $74
    ld l, c                                       ; $50c9: $69
    ld l, a                                       ; $50ca: $6f
    ld l, [hl]                                    ; $50cb: $6e

jr_01d_50cc:
    ld bc, $6843                                  ; $50cc: $01 $43 $68
    ld h, c                                       ; $50cf: $61

jr_01d_50d0:
    ld [hl], d                                    ; $50d0: $72
    ld l, $20                                     ; $50d1: $2e $20
    ld b, h                                       ; $50d3: $44

jr_01d_50d4:
    ld h, c                                       ; $50d4: $61
    ld [hl], h                                    ; $50d5: $74
    ld h, c                                       ; $50d6: $61
    ld bc, $7453                                  ; $50d7: $01 $53 $74
    ld h, c                                       ; $50da: $61
    ld [hl], d                                    ; $50db: $72
    ld [hl], e                                    ; $50dc: $73
    ld bc, $654d                                  ; $50dd: $01 $4d $65

jr_01d_50e0:
    ld [hl], e                                    ; $50e0: $73
    ld [hl], e                                    ; $50e1: $73

jr_01d_50e2:
    ld h, c                                       ; $50e2: $61
    ld h, a                                       ; $50e3: $67
    ld h, l                                       ; $50e4: $65
    jr nz, jr_01d_5107                            ; $50e5: $20 $20

    jr nz, @+$22                                  ; $50e7: $20 $20

    jr nz, jr_01d_510b                            ; $50e9: $20 $20

    jr nz, jr_01d_510d                            ; $50eb: $20 $20

    jr nz, jr_01d_510f                            ; $50ed: $20 $20

    jr nz, jr_01d_50f2                            ; $50ef: $20 $01

    ld d, e                                       ; $50f1: $53

jr_01d_50f2:
    ld h, c                                       ; $50f2: $61
    halt                                          ; $50f3: $76
    ld h, l                                       ; $50f4: $65
    jr nz, jr_01d_511d                            ; $50f5: $20 $26

    jr nz, @+$53                                  ; $50f7: $20 $51

    ld [hl], l                                    ; $50f9: $75
    ld l, c                                       ; $50fa: $69
    ld [hl], h                                    ; $50fb: $74
    nop                                           ; $50fc: $00
    ld b, e                                       ; $50fd: $43
    ld h, c                                       ; $50fe: $61
    ld l, l                                       ; $50ff: $6d
    ld h, l                                       ; $5100: $65
    ld [hl], d                                    ; $5101: $72
    ld h, c                                       ; $5102: $61
    jr nz, @+$4f                                  ; $5103: $20 $4d

    ld l, a                                       ; $5105: $6f
    ld h, h                                       ; $5106: $64

jr_01d_5107:
    ld h, l                                       ; $5107: $65
    ld bc, $6f43                                  ; $5108: $01 $43 $6f

jr_01d_510b:
    ld [hl], l                                    ; $510b: $75
    ld [hl], d                                    ; $510c: $72

jr_01d_510d:
    ld [hl], e                                    ; $510d: $73
    ld h, l                                       ; $510e: $65

jr_01d_510f:
    jr nz, @+$4f                                  ; $510f: $20 $4d

    ld h, c                                       ; $5111: $61
    ld [hl], b                                    ; $5112: $70
    ld bc, $6353                                  ; $5113: $01 $53 $63
    ld l, a                                       ; $5116: $6f
    ld [hl], d                                    ; $5117: $72
    ld h, l                                       ; $5118: $65
    ld h, e                                       ; $5119: $63
    ld h, c                                       ; $511a: $61
    ld [hl], d                                    ; $511b: $72
    ld h, h                                       ; $511c: $64

jr_01d_511d:
    ld bc, $6553                                  ; $511d: $01 $53 $65
    ld [hl], h                                    ; $5120: $74
    ld [hl], h                                    ; $5121: $74
    ld l, c                                       ; $5122: $69
    ld l, [hl]                                    ; $5123: $6e
    ld h, a                                       ; $5124: $67
    ld [hl], e                                    ; $5125: $73
    ld bc, $6947                                  ; $5126: $01 $47 $69
    halt                                          ; $5129: $76
    ld h, l                                       ; $512a: $65
    jr nz, @+$57                                  ; $512b: $20 $55

    ld [hl], b                                    ; $512d: $70
    ld bc, $6153                                  ; $512e: $01 $53 $61
    halt                                          ; $5131: $76
    ld h, l                                       ; $5132: $65
    jr nz, @+$28                                  ; $5133: $20 $26

    jr nz, @+$53                                  ; $5135: $20 $51

    ld [hl], l                                    ; $5137: $75
    ld l, c                                       ; $5138: $69
    ld [hl], h                                    ; $5139: $74
    nop                                           ; $513a: $00

    db $43, $61, $6d, $65, $72, $61, $20, $4d, $6f, $64, $65, $01, $43, $6f, $75, $72
    db $73, $65, $20, $4d, $61, $70, $01, $53, $63, $6f, $72, $65, $63, $61, $72, $64
    db $01, $53, $65, $74, $74, $69, $6e, $67, $73, $01, $47, $69, $76, $65, $20, $55
    db $70, $01, $51, $75, $69, $74, $00, $43, $61, $6d, $65, $72, $61, $20, $4d, $6f
    db $64, $65, $01, $43, $6f, $75, $72, $73, $65, $20, $4d, $61, $70, $01, $48, $6f
    db $6c, $65, $20, $4f, $75, $74, $01, $57, $69, $6e, $64, $20, $44, $69, $72, $65
    db $63, $74, $69, $6f, $6e, $01, $57, $69, $6e, $64, $20, $53, $70, $65, $65, $64
    db $01, $53, $65, $74, $74, $69, $6e, $67, $73, $01, $42, $61, $63, $6b, $20, $74
    db $6f, $20, $4d, $65, $6e, $75, $00, $51, $75, $69, $74, $20, $50, $72, $61, $63
    db $74, $69, $63, $65, $01, $57, $69, $6e, $64, $20, $44, $69, $72, $65, $63, $74
    db $69, $6f, $6e, $01, $57, $69, $6e, $64, $20, $53, $70, $65, $65, $64, $01, $53
    db $65, $74, $74, $69, $6e, $67, $73, $00, $51, $75, $69, $74, $20, $50, $72, $61
    db $63, $74, $69, $63, $65, $01, $53, $65, $74, $74, $69, $6e, $67, $73, $00, $4d
    db $75, $73, $69, $63, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $01, $33, $2d, $44, $20, $53, $63, $72, $65, $65, $6e, $00, $43, $6f, $6e, $74
    db $69, $6e, $75, $65, $01, $4d, $75, $6c, $6c, $69, $67, $61, $6e, $01, $48, $6f
    db $6c, $65, $20, $4f, $75, $74, $00, $43, $6f, $6e, $74, $69, $6e, $75, $65, $01
    db $4d, $75, $6c, $6c, $69, $67, $61, $6e, $01, $53, $74, $61, $72, $74, $20, $4f
    db $76, $65, $72, $01, $42, $61, $63, $6b, $20, $74, $6f, $20, $4d, $61, $69, $6e
    db $20, $4d, $65, $6e, $75, $00, $51, $75, $69, $74, $20, $4d, $69, $6e, $69, $2d
    db $47, $61, $6d, $65, $01, $53, $65, $74, $74, $69, $6e, $67, $73, $00, $53, $61
    db $76, $65, $20, $63, $75, $72, $72, $65, $6e, $74, $20, $70, $72, $6f, $67, $72
    db $65, $73, $73, $3f, $00, $4f, $4b, $20, $74, $6f, $20, $71, $75, $69, $74, $01
    db $74, $68, $69, $73, $20, $72, $6f, $75, $6e, $64, $3f, $00, $4f, $4b, $20, $74
    db $6f, $20, $72, $65, $74, $75, $72, $6e, $01, $74, $6f, $20, $4d, $61, $69, $6e
    db $20, $4d, $65, $6e, $75, $3f, $00, $4f, $4b, $20, $74, $6f, $20, $71, $75, $69
    db $74, $01, $74, $68, $69, $73, $20, $72, $6f, $75, $6e, $64, $3f, $00, $4f, $4b
    db $20, $74, $6f, $20, $71, $75, $69, $74, $20, $74, $68, $69, $73, $01, $4d, $61
    db $74, $63, $68, $20, $47, $61, $6d, $65, $3f, $00, $47, $69, $76, $65, $20, $75
    db $70, $20, $6f, $6e, $01, $74, $68, $69, $73, $20, $68, $6f, $6c, $65, $3f, $00
    db $59, $6f, $75, $20, $63, $61, $6e, $27, $74, $20, $67, $69, $76, $65, $20, $75
    db $70, $01, $6f, $6e, $20, $74, $68, $65, $20, $31, $73, $74, $20, $73, $74, $72
    db $6f, $6b, $65, $2e, $03, $00, $53, $6c, $6f, $77, $20, $20, $20, $00, $4e, $6f
    db $72, $6d, $61, $6c, $00, $46, $61, $73, $74, $20, $20, $20, $00, $4f, $4e, $20
    db $20, $00, $4f, $46, $46, $20, $00, $49, $73, $20, $69, $74, $20, $4f, $4b, $20
    db $74, $6f, $01, $65, $72, $61, $73, $65, $20, $61, $6c, $6c, $20, $64, $61, $74
    db $61, $3f, $00, $59, $45, $53, $01, $4e, $4f, $00, $45, $72, $61, $73, $65, $20
    db $74, $68, $69, $73, $20, $63, $68, $61, $72, $61, $63, $74, $65, $72, $3f, $00
    db $45, $72, $61, $73, $65, $20, $74, $68, $69, $73, $20, $63, $68, $61, $72, $61
    db $63, $74, $65, $72, $3f, $00, $07, $00, $4c, $65, $76, $65, $6c, $20, $09, $00
    db $44, $72, $69, $76, $65, $3a, $20, $09, $20, $59, $61, $72, $64, $73, $00, $4e
    db $6f, $74, $20, $79, $65, $74, $21, $00, $43, $6f, $75, $72, $73, $65, $00, $48
    db $6f, $6c, $65, $20, $09, $00, $53, $63, $6f, $72, $65, $00, $41, $6c, $6c, $20
    db $64, $61, $74, $61, $20, $68, $61, $73, $01, $62, $65, $65, $6e, $20, $65, $72
    db $61, $73, $65, $64, $2e, $00, $07, $27, $73, $20, $64, $61, $74, $61, $01, $68
    db $61, $73, $20, $62, $65, $65, $6e, $20, $65, $72, $61, $73, $65, $64, $2e, $00
    db $45, $72, $61, $73, $65

    ld h, h                                       ; $5420: $64
    nop                                           ; $5421: $00
    rlca                                          ; $5422: $07
    daa                                           ; $5423: $27
    ld [hl], e                                    ; $5424: $73
    jr nz, jr_01d_548b                            ; $5425: $20 $64

    ld h, c                                       ; $5427: $61
    ld [hl], h                                    ; $5428: $74
    ld h, c                                       ; $5429: $61
    ld bc, $6168                                  ; $542a: $01 $68 $61
    ld [hl], e                                    ; $542d: $73
    jr nz, jr_01d_5492                            ; $542e: $20 $62

    ld h, l                                       ; $5430: $65
    ld h, l                                       ; $5431: $65
    ld l, [hl]                                    ; $5432: $6e
    jr nz, jr_01d_5498                            ; $5433: $20 $63

    ld l, a                                       ; $5435: $6f
    ld [hl], b                                    ; $5436: $70
    ld l, c                                       ; $5437: $69
    ld h, l                                       ; $5438: $65
    ld h, h                                       ; $5439: $64
    ld l, $00                                     ; $543a: $2e $00
    ld d, h                                       ; $543c: $54
    ld l, b                                       ; $543d: $68
    ld h, l                                       ; $543e: $65
    ld [hl], d                                    ; $543f: $72
    ld h, l                                       ; $5440: $65
    jr nz, jr_01d_54ac                            ; $5441: $20 $69

    ld [hl], e                                    ; $5443: $73
    jr nz, @+$70                                  ; $5444: $20 $6e

    ld l, a                                       ; $5446: $6f
    jr nz, jr_01d_54ad                            ; $5447: $20 $64

    ld h, c                                       ; $5449: $61
    ld [hl], h                                    ; $544a: $74
    ld h, c                                       ; $544b: $61
    ld l, $00                                     ; $544c: $2e $00
    ld b, h                                       ; $544e: $44
    ld h, c                                       ; $544f: $61
    ld [hl], h                                    ; $5450: $74
    ld h, c                                       ; $5451: $61
    jr nz, jr_01d_54bd                            ; $5452: $20 $69

    ld [hl], e                                    ; $5454: $73
    jr nz, jr_01d_54bd                            ; $5455: $20 $66

    ld [hl], l                                    ; $5457: $75
    ld l, h                                       ; $5458: $6c
    ld l, h                                       ; $5459: $6c
    ld l, $00                                     ; $545a: $2e $00
    ld d, h                                       ; $545c: $54
    ld l, a                                       ; $545d: $6f
    ld [hl], l                                    ; $545e: $75
    ld [hl], d                                    ; $545f: $72
    ld l, [hl]                                    ; $5460: $6e
    ld h, c                                       ; $5461: $61
    ld l, l                                       ; $5462: $6d
    ld h, l                                       ; $5463: $65
    ld l, [hl]                                    ; $5464: $6e
    ld [hl], h                                    ; $5465: $74
    nop                                           ; $5466: $00
    ld c, l                                       ; $5467: $4d
    ld h, c                                       ; $5468: $61
    ld [hl], h                                    ; $5469: $74
    ld h, e                                       ; $546a: $63
    ld l, b                                       ; $546b: $68
    jr nz, jr_01d_54b5                            ; $546c: $20 $47

    ld h, c                                       ; $546e: $61
    ld l, l                                       ; $546f: $6d
    ld h, l                                       ; $5470: $65
    nop                                           ; $5471: $00
    ld d, e                                       ; $5472: $53
    ld [hl], h                                    ; $5473: $74
    ld [hl], d                                    ; $5474: $72
    ld l, a                                       ; $5475: $6f
    ld l, e                                       ; $5476: $6b
    ld h, l                                       ; $5477: $65
    nop                                           ; $5478: $00
    ld d, h                                       ; $5479: $54
    ld [hl], d                                    ; $547a: $72
    ld h, c                                       ; $547b: $61
    ld l, c                                       ; $547c: $69
    ld l, [hl]                                    ; $547d: $6e
    ld l, c                                       ; $547e: $69
    ld l, [hl]                                    ; $547f: $6e
    ld h, a                                       ; $5480: $67
    nop                                           ; $5481: $00
    ld c, l                                       ; $5482: $4d
    ld l, c                                       ; $5483: $69
    ld l, [hl]                                    ; $5484: $6e
    ld l, c                                       ; $5485: $69
    dec l                                         ; $5486: $2d
    ld b, a                                       ; $5487: $47
    ld h, c                                       ; $5488: $61
    ld l, l                                       ; $5489: $6d
    ld h, l                                       ; $548a: $65

jr_01d_548b:
    nop                                           ; $548b: $00
    ld d, b                                       ; $548c: $50
    ld [hl], d                                    ; $548d: $72
    ld h, c                                       ; $548e: $61
    ld h, e                                       ; $548f: $63
    ld [hl], h                                    ; $5490: $74
    ld l, c                                       ; $5491: $69

jr_01d_5492:
    ld h, e                                       ; $5492: $63
    ld h, l                                       ; $5493: $65
    nop                                           ; $5494: $00
    ld b, e                                       ; $5495: $43
    ld h, c                                       ; $5496: $61
    ld l, h                                       ; $5497: $6c

jr_01d_5498:
    ld h, e                                       ; $5498: $63
    ld [hl], l                                    ; $5499: $75
    ld l, h                                       ; $549a: $6c
    ld h, c                                       ; $549b: $61
    ld [hl], h                                    ; $549c: $74
    ld l, c                                       ; $549d: $69
    ld l, [hl]                                    ; $549e: $6e
    ld h, a                                       ; $549f: $67
    jr nz, jr_01d_54e7                            ; $54a0: $20 $45

    ld e, b                                       ; $54a2: $58
    ld d, b                                       ; $54a3: $50
    jr nz, jr_01d_54f6                            ; $54a4: $20 $50

    ld [hl], h                                    ; $54a6: $74
    ld [hl], e                                    ; $54a7: $73
    ld l, $00                                     ; $54a8: $2e $00
    ld b, d                                       ; $54aa: $42
    ld [hl], d                                    ; $54ab: $72

jr_01d_54ac:
    ld l, c                                       ; $54ac: $69

jr_01d_54ad:
    ld l, [hl]                                    ; $54ad: $6e
    ld h, a                                       ; $54ae: $67
    jr nz, jr_01d_54f6                            ; $54af: $20 $45

    ld e, b                                       ; $54b1: $58
    ld d, b                                       ; $54b2: $50
    jr nz, @+$52                                  ; $54b3: $20 $50

jr_01d_54b5:
    ld [hl], h                                    ; $54b5: $74
    ld [hl], e                                    ; $54b6: $73
    jr nz, @+$68                                  ; $54b7: $20 $66

    ld [hl], d                                    ; $54b9: $72
    ld l, a                                       ; $54ba: $6f
    ld l, l                                       ; $54bb: $6d
    nop                                           ; $54bc: $00

jr_01d_54bd:
    ld c, [hl]                                    ; $54bd: $4e
    ld [hl], $34                                  ; $54be: $36 $34
    jr nz, jr_01d_550f                            ; $54c0: $20 $4d

    ld h, c                                       ; $54c2: $61
    ld [hl], d                                    ; $54c3: $72
    ld l, c                                       ; $54c4: $69
    ld l, a                                       ; $54c5: $6f
    jr nz, jr_01d_550f                            ; $54c6: $20 $47

    ld l, a                                       ; $54c8: $6f
    ld l, h                                       ; $54c9: $6c
    ld h, [hl]                                    ; $54ca: $66
    ld l, $00                                     ; $54cb: $2e $00
    ld d, b                                       ; $54cd: $50
    ld [hl], h                                    ; $54ce: $74
    ld [hl], e                                    ; $54cf: $73
    jr nz, jr_01d_5546                            ; $54d0: $20 $74

    ld l, a                                       ; $54d2: $6f
    jr nz, jr_01d_5543                            ; $54d3: $20 $6e

    ld h, l                                       ; $54d5: $65
    ld a, b                                       ; $54d6: $78
    ld [hl], h                                    ; $54d7: $74
    jr nz, jr_01d_5546                            ; $54d8: $20 $6c

    ld h, l                                       ; $54da: $65
    halt                                          ; $54db: $76
    ld h, l                                       ; $54dc: $65
    ld l, h                                       ; $54dd: $6c
    ld a, [hl-]                                   ; $54de: $3a
    nop                                           ; $54df: $00
    ld c, h                                       ; $54e0: $4c
    ld h, l                                       ; $54e1: $65
    halt                                          ; $54e2: $76
    ld h, l                                       ; $54e3: $65
    ld l, h                                       ; $54e4: $6c
    jr nz, @+$77                                  ; $54e5: $20 $75

jr_01d_54e7:
    ld [hl], b                                    ; $54e7: $70
    ld hl, $5900                                  ; $54e8: $21 $00 $59
    ld l, a                                       ; $54eb: $6f
    ld [hl], l                                    ; $54ec: $75
    ld [hl], d                                    ; $54ed: $72
    jr nz, @+$6e                                  ; $54ee: $20 $6c

    ld h, l                                       ; $54f0: $65
    halt                                          ; $54f1: $76
    ld h, l                                       ; $54f2: $65
    ld l, h                                       ; $54f3: $6c
    jr nz, jr_01d_555f                            ; $54f4: $20 $69

jr_01d_54f6:
    ld l, [hl]                                    ; $54f6: $6e
    ld h, e                                       ; $54f7: $63
    ld [hl], d                                    ; $54f8: $72
    ld h, l                                       ; $54f9: $65
    ld h, c                                       ; $54fa: $61
    ld [hl], e                                    ; $54fb: $73
    ld h, l                                       ; $54fc: $65
    ld h, h                                       ; $54fd: $64
    ld l, $00                                     ; $54fe: $2e $00
    ld c, c                                       ; $5500: $49
    ld [hl], h                                    ; $5501: $74
    daa                                           ; $5502: $27
    ld [hl], e                                    ; $5503: $73
    jr nz, jr_01d_557a                            ; $5504: $20 $74

    ld l, b                                       ; $5506: $68
    ld h, l                                       ; $5507: $65
    jr nz, jr_01d_5572                            ; $5508: $20 $68

    ld l, c                                       ; $550a: $69
    ld h, a                                       ; $550b: $67
    ld l, b                                       ; $550c: $68
    ld h, l                                       ; $550d: $65
    ld [hl], e                                    ; $550e: $73

jr_01d_550f:
    ld [hl], h                                    ; $550f: $74
    jr nz, jr_01d_557e                            ; $5510: $20 $6c

    ld h, l                                       ; $5512: $65
    halt                                          ; $5513: $76
    ld h, l                                       ; $5514: $65
    ld l, h                                       ; $5515: $6c
    ld hl, $4100                                  ; $5516: $21 $00 $41
    ld h, h                                       ; $5519: $64
    ld h, h                                       ; $551a: $64
    ld l, c                                       ; $551b: $69
    ld l, [hl]                                    ; $551c: $6e
    ld h, a                                       ; $551d: $67
    jr nz, jr_01d_5565                            ; $551e: $20 $45

    ld e, b                                       ; $5520: $58
    ld d, b                                       ; $5521: $50
    jr nz, jr_01d_5574                            ; $5522: $20 $50

    ld [hl], h                                    ; $5524: $74
    ld [hl], e                                    ; $5525: $73
    nop                                           ; $5526: $00
    ld h, [hl]                                    ; $5527: $66
    ld l, a                                       ; $5528: $6f
    ld [hl], d                                    ; $5529: $72
    jr nz, @+$63                                  ; $552a: $20 $61

    jr nz, jr_01d_5575                            ; $552c: $20 $47

    ld l, a                                       ; $552e: $6f
    ld l, h                                       ; $552f: $6c
    ld h, h                                       ; $5530: $64
    jr nz, jr_01d_5587                            ; $5531: $20 $54

    ld [hl], d                                    ; $5533: $72
    ld l, a                                       ; $5534: $6f
    ld [hl], b                                    ; $5535: $70
    ld l, b                                       ; $5536: $68
    ld a, c                                       ; $5537: $79
    ld l, $00                                     ; $5538: $2e $00
    ld h, [hl]                                    ; $553a: $66
    ld l, a                                       ; $553b: $6f
    ld [hl], d                                    ; $553c: $72
    jr nz, jr_01d_55a0                            ; $553d: $20 $61

    jr nz, jr_01d_5594                            ; $553f: $20 $53

    ld l, c                                       ; $5541: $69
    ld l, h                                       ; $5542: $6c

jr_01d_5543:
    halt                                          ; $5543: $76
    ld h, l                                       ; $5544: $65
    ld [hl], d                                    ; $5545: $72

jr_01d_5546:
    jr nz, jr_01d_559c                            ; $5546: $20 $54

    ld [hl], d                                    ; $5548: $72
    ld l, a                                       ; $5549: $6f
    ld [hl], b                                    ; $554a: $70
    ld l, b                                       ; $554b: $68
    ld a, c                                       ; $554c: $79
    ld l, $00                                     ; $554d: $2e $00
    ld h, [hl]                                    ; $554f: $66
    ld l, a                                       ; $5550: $6f
    ld [hl], d                                    ; $5551: $72
    jr nz, jr_01d_55b5                            ; $5552: $20 $61

    jr nz, jr_01d_5598                            ; $5554: $20 $42

    ld [hl], d                                    ; $5556: $72
    ld l, a                                       ; $5557: $6f
    ld l, [hl]                                    ; $5558: $6e
    ld a, d                                       ; $5559: $7a
    ld h, l                                       ; $555a: $65
    jr nz, jr_01d_55b1                            ; $555b: $20 $54

    ld [hl], d                                    ; $555d: $72
    ld l, a                                       ; $555e: $6f

jr_01d_555f:
    ld [hl], b                                    ; $555f: $70
    ld l, b                                       ; $5560: $68
    ld a, c                                       ; $5561: $79
    ld l, $00                                     ; $5562: $2e $00
    ld h, [hl]                                    ; $5564: $66

jr_01d_5565:
    ld l, a                                       ; $5565: $6f
    ld [hl], d                                    ; $5566: $72
    jr nz, jr_01d_55cb                            ; $5567: $20 $62

    ld h, l                                       ; $5569: $65
    ld h, c                                       ; $556a: $61
    ld [hl], h                                    ; $556b: $74
    ld l, c                                       ; $556c: $69
    ld l, [hl]                                    ; $556d: $6e
    ld h, a                                       ; $556e: $67
    nop                                           ; $556f: $00
    ld h, d                                       ; $5570: $62
    ld h, l                                       ; $5571: $65

jr_01d_5572:
    ld h, c                                       ; $5572: $61
    ld [hl], h                                    ; $5573: $74

jr_01d_5574:
    ld l, c                                       ; $5574: $69

jr_01d_5575:
    ld l, [hl]                                    ; $5575: $6e
    ld h, a                                       ; $5576: $67
    nop                                           ; $5577: $00
    ld d, e                                       ; $5578: $53
    ld h, e                                       ; $5579: $63

jr_01d_557a:
    ld l, a                                       ; $557a: $6f
    ld [hl], d                                    ; $557b: $72
    ld h, l                                       ; $557c: $65
    ld a, [hl-]                                   ; $557d: $3a

jr_01d_557e:
    jr nz, jr_01d_5589                            ; $557e: $20 $09

    jr nz, jr_01d_55d7                            ; $5580: $20 $55

    ld [hl], b                                    ; $5582: $70
    nop                                           ; $5583: $00
    ld d, e                                       ; $5584: $53
    ld h, e                                       ; $5585: $63
    ld l, a                                       ; $5586: $6f

jr_01d_5587:
    ld [hl], d                                    ; $5587: $72
    ld h, l                                       ; $5588: $65

jr_01d_5589:
    ld a, [hl-]                                   ; $5589: $3a
    jr nz, jr_01d_5595                            ; $558a: $20 $09

    jr nz, jr_01d_55d2                            ; $558c: $20 $44

    ld l, a                                       ; $558e: $6f
    ld [hl], a                                    ; $558f: $77
    ld l, [hl]                                    ; $5590: $6e
    nop                                           ; $5591: $00
    ld d, e                                       ; $5592: $53
    ld h, e                                       ; $5593: $63

jr_01d_5594:
    ld l, a                                       ; $5594: $6f

jr_01d_5595:
    ld [hl], d                                    ; $5595: $72
    ld h, l                                       ; $5596: $65
    ld a, [hl-]                                   ; $5597: $3a

jr_01d_5598:
    jr nz, jr_01d_55df                            ; $5598: $20 $45

    halt                                          ; $559a: $76
    ld h, l                                       ; $559b: $65

jr_01d_559c:
    ld l, [hl]                                    ; $559c: $6e
    nop                                           ; $559d: $00
    add hl, bc                                    ; $559e: $09
    nop                                           ; $559f: $00

jr_01d_55a0:
    inc b                                         ; $55a0: $04
    nop                                           ; $55a1: $00
    ld b, e                                       ; $55a2: $43
    ld l, a                                       ; $55a3: $6f
    ld l, [hl]                                    ; $55a4: $6e
    ld [hl], h                                    ; $55a5: $74
    ld l, c                                       ; $55a6: $69
    ld l, [hl]                                    ; $55a7: $6e
    ld [hl], l                                    ; $55a8: $75
    ld h, l                                       ; $55a9: $65
    nop                                           ; $55aa: $00
    ld [hl], b                                    ; $55ab: $70
    ld [hl], d                                    ; $55ac: $72
    ld h, l                                       ; $55ad: $65
    halt                                          ; $55ae: $76
    ld l, c                                       ; $55af: $69
    ld l, a                                       ; $55b0: $6f

jr_01d_55b1:
    ld [hl], l                                    ; $55b1: $75
    ld [hl], e                                    ; $55b2: $73
    jr nz, jr_01d_561c                            ; $55b3: $20 $67

jr_01d_55b5:
    ld h, c                                       ; $55b5: $61
    ld l, l                                       ; $55b6: $6d
    ld h, l                                       ; $55b7: $65
    ccf                                           ; $55b8: $3f
    nop                                           ; $55b9: $00
    ld d, e                                       ; $55ba: $53
    ld h, c                                       ; $55bb: $61
    halt                                          ; $55bc: $76
    ld h, l                                       ; $55bd: $65
    ld h, h                                       ; $55be: $64
    jr nz, jr_01d_5625                            ; $55bf: $20 $64

    ld h, c                                       ; $55c1: $61
    ld [hl], h                                    ; $55c2: $74
    ld h, c                                       ; $55c3: $61
    jr nz, jr_01d_563d                            ; $55c4: $20 $77

    ld l, c                                       ; $55c6: $69
    ld l, h                                       ; $55c7: $6c
    ld l, h                                       ; $55c8: $6c
    jr nz, jr_01d_562d                            ; $55c9: $20 $62

jr_01d_55cb:
    ld h, l                                       ; $55cb: $65
    jr nz, jr_01d_55ce                            ; $55cc: $20 $00

jr_01d_55ce:
    ld h, l                                       ; $55ce: $65
    ld [hl], d                                    ; $55cf: $72
    ld h, c                                       ; $55d0: $61
    ld [hl], e                                    ; $55d1: $73

jr_01d_55d2:
    ld h, l                                       ; $55d2: $65
    ld h, h                                       ; $55d3: $64
    ld l, $20                                     ; $55d4: $2e $20
    ld c, c                                       ; $55d6: $49

jr_01d_55d7:
    ld [hl], e                                    ; $55d7: $73
    jr nz, jr_01d_564e                            ; $55d8: $20 $74

    ld l, b                                       ; $55da: $68
    ld l, c                                       ; $55db: $69
    ld [hl], e                                    ; $55dc: $73
    jr nz, jr_01d_562e                            ; $55dd: $20 $4f

jr_01d_55df:
    ld c, e                                       ; $55df: $4b
    ccf                                           ; $55e0: $3f
    nop                                           ; $55e1: $00
    ld d, h                                       ; $55e2: $54
    ld l, b                                       ; $55e3: $68
    ld h, l                                       ; $55e4: $65
    ld a, c                                       ; $55e5: $79
    jr nz, jr_01d_565b                            ; $55e6: $20 $73

    ld h, c                                       ; $55e8: $61
    ld a, c                                       ; $55e9: $79
    jr nz, jr_01d_565b                            ; $55ea: $20 $6f

    ld l, [hl]                                    ; $55ec: $6e
    ld h, e                                       ; $55ed: $63
    ld h, l                                       ; $55ee: $65
    jr nz, jr_01d_566a                            ; $55ef: $20 $79

    ld l, a                                       ; $55f1: $6f
    ld [hl], l                                    ; $55f2: $75
    ld bc, $6970                                  ; $55f3: $01 $70 $69
    ld h, e                                       ; $55f6: $63
    ld l, e                                       ; $55f7: $6b
    jr nz, jr_01d_566f                            ; $55f8: $20 $75

    ld [hl], b                                    ; $55fa: $70
    jr nz, jr_01d_5664                            ; $55fb: $20 $67

    ld l, a                                       ; $55fd: $6f
    ld l, h                                       ; $55fe: $6c
    ld h, [hl]                                    ; $55ff: $66
    inc l                                         ; $5600: $2c
    ld bc, $6f79                                  ; $5601: $01 $79 $6f
    ld [hl], l                                    ; $5604: $75
    daa                                           ; $5605: $27
    ld l, h                                       ; $5606: $6c
    ld l, h                                       ; $5607: $6c
    jr nz, @+$70                                  ; $5608: $20 $6e

    ld h, l                                       ; $560a: $65
    halt                                          ; $560b: $76
    ld h, l                                       ; $560c: $65
    ld [hl], d                                    ; $560d: $72
    jr nz, jr_01d_5681                            ; $560e: $20 $71

    ld [hl], l                                    ; $5610: $75
    ld l, c                                       ; $5611: $69
    ld [hl], h                                    ; $5612: $74
    ld l, $03                                     ; $5613: $2e $03
    nop                                           ; $5615: $00
    ld b, l                                       ; $5616: $45
    halt                                          ; $5617: $76
    ld h, l                                       ; $5618: $65
    ld l, [hl]                                    ; $5619: $6e
    jr nz, @+$6a                                  ; $561a: $20 $68

jr_01d_561c:
    ld h, l                                       ; $561c: $65
    ld [hl], d                                    ; $561d: $72
    ld h, l                                       ; $561e: $65
    jr nz, jr_01d_5695                            ; $561f: $20 $74

    ld l, b                                       ; $5621: $68
    ld h, l                                       ; $5622: $65
    ld [hl], d                                    ; $5623: $72
    ld h, l                                       ; $5624: $65

jr_01d_5625:
    ld bc, $7261                                  ; $5625: $01 $61 $72
    ld h, l                                       ; $5628: $65
    jr nz, jr_01d_569f                            ; $5629: $20 $74

    ld l, a                                       ; $562b: $6f
    ld [hl], h                                    ; $562c: $74

jr_01d_562d:
    ld h, c                                       ; $562d: $61

jr_01d_562e:
    ld l, h                                       ; $562e: $6c
    jr nz, @+$69                                  ; $562f: $20 $67

    ld l, a                                       ; $5631: $6f
    ld l, h                                       ; $5632: $6c
    ld h, [hl]                                    ; $5633: $66
    ld bc, $6166                                  ; $5634: $01 $66 $61
    ld l, [hl]                                    ; $5637: $6e
    ld h, c                                       ; $5638: $61
    ld [hl], h                                    ; $5639: $74
    ld l, c                                       ; $563a: $69
    ld h, e                                       ; $563b: $63
    ld [hl], e                                    ; $563c: $73

jr_01d_563d:
    ld hl, $0003                                  ; $563d: $21 $03 $00
    ld b, c                                       ; $5640: $41
    ld l, [hl]                                    ; $5641: $6e
    ld h, h                                       ; $5642: $64
    jr nz, @+$76                                  ; $5643: $20 $74

    ld l, b                                       ; $5645: $68
    ld h, l                                       ; $5646: $65
    ld a, c                                       ; $5647: $79
    daa                                           ; $5648: $27
    halt                                          ; $5649: $76
    ld h, l                                       ; $564a: $65
    jr nz, jr_01d_56af                            ; $564b: $20 $62

    ld h, l                                       ; $564d: $65

jr_01d_564e:
    ld h, a                                       ; $564e: $67
    ld [hl], l                                    ; $564f: $75
    ld l, [hl]                                    ; $5650: $6e
    ld bc, $6961                                  ; $5651: $01 $61 $69
    ld l, l                                       ; $5654: $6d
    ld l, c                                       ; $5655: $69
    ld l, [hl]                                    ; $5656: $6e
    ld h, a                                       ; $5657: $67
    jr nz, jr_01d_56c0                            ; $5658: $20 $66

    ld l, a                                       ; $565a: $6f

jr_01d_565b:
    ld [hl], d                                    ; $565b: $72
    jr nz, jr_01d_56d2                            ; $565c: $20 $74

    ld l, b                                       ; $565e: $68
    ld h, l                                       ; $565f: $65
    ld bc, $7473                                  ; $5660: $01 $73 $74
    ld [hl], d                                    ; $5663: $72

jr_01d_5664:
    ld l, a                                       ; $5664: $6f
    ld l, [hl]                                    ; $5665: $6e
    ld h, a                                       ; $5666: $67
    ld h, l                                       ; $5667: $65
    ld [hl], e                                    ; $5668: $73
    ld [hl], h                                    ; $5669: $74

jr_01d_566a:
    ld hl, $0003                                  ; $566a: $21 $03 $00
    ld b, c                                       ; $566d: $41
    ld l, c                                       ; $566e: $69

jr_01d_566f:
    ld l, l                                       ; $566f: $6d
    ld l, c                                       ; $5670: $69
    ld l, [hl]                                    ; $5671: $6e
    ld h, a                                       ; $5672: $67
    jr nz, jr_01d_56db                            ; $5673: $20 $66

    ld l, a                                       ; $5675: $6f
    ld [hl], d                                    ; $5676: $72
    jr nz, jr_01d_56ed                            ; $5677: $20 $74

    ld l, b                                       ; $5679: $68
    ld h, c                                       ; $567a: $61
    ld [hl], h                                    ; $567b: $74
    ld bc, $6174                                  ; $567c: $01 $74 $61
    ld [hl], d                                    ; $567f: $72
    ld h, a                                       ; $5680: $67

jr_01d_5681:
    ld h, l                                       ; $5681: $65
    ld [hl], h                                    ; $5682: $74
    jr nz, jr_01d_56eb                            ; $5683: $20 $66

    ld [hl], d                                    ; $5685: $72
    ld l, a                                       ; $5686: $6f
    ld l, l                                       ; $5687: $6d
    jr nz, jr_01d_56fe                            ; $5688: $20 $74

    ld l, b                                       ; $568a: $68
    ld h, c                                       ; $568b: $61
    ld [hl], h                                    ; $568c: $74
    ld bc, $6574                                  ; $568d: $01 $74 $65
    ld h, l                                       ; $5690: $65
    jr nz, @+$6b                                  ; $5691: $20 $69

    ld [hl], e                                    ; $5693: $73
    ld l, [hl]                                    ; $5694: $6e

jr_01d_5695:
    daa                                           ; $5695: $27
    ld [hl], h                                    ; $5696: $74
    jr nz, @+$72                                  ; $5697: $20 $70

    ld [hl], d                                    ; $5699: $72
    ld h, c                                       ; $569a: $61
    ld h, e                                       ; $569b: $63
    ld [hl], h                                    ; $569c: $74
    ld l, c                                       ; $569d: $69
    ld h, e                                       ; $569e: $63

jr_01d_569f:
    ld h, l                                       ; $569f: $65
    ld hl, $0003                                  ; $56a0: $21 $03 $00
    ld c, c                                       ; $56a3: $49
    daa                                           ; $56a4: $27
    ld l, h                                       ; $56a5: $6c
    ld l, h                                       ; $56a6: $6c
    jr nz, jr_01d_570a                            ; $56a7: $20 $61

    ld h, e                                       ; $56a9: $63
    ld l, e                                       ; $56aa: $6b
    ld l, [hl]                                    ; $56ab: $6e
    ld l, a                                       ; $56ac: $6f
    ld [hl], a                                    ; $56ad: $77
    ld l, h                                       ; $56ae: $6c

jr_01d_56af:
    ld h, l                                       ; $56af: $65
    ld h, h                                       ; $56b0: $64
    ld h, a                                       ; $56b1: $67
    ld h, l                                       ; $56b2: $65
    jr nz, jr_01d_572e                            ; $56b3: $20 $79

    ld l, a                                       ; $56b5: $6f
    ld [hl], l                                    ; $56b6: $75
    ld [hl], d                                    ; $56b7: $72
    ld bc, $6b73                                  ; $56b8: $01 $73 $6b
    ld l, c                                       ; $56bb: $69
    ld l, h                                       ; $56bc: $6c
    ld l, h                                       ; $56bd: $6c
    jr nz, jr_01d_5729                            ; $56be: $20 $69

jr_01d_56c0:
    ld h, [hl]                                    ; $56c0: $66
    jr nz, jr_01d_573c                            ; $56c1: $20 $79

    ld l, a                                       ; $56c3: $6f
    ld [hl], l                                    ; $56c4: $75
    jr nz, @+$6a                                  ; $56c5: $20 $68

    ld l, c                                       ; $56c7: $69
    ld [hl], h                                    ; $56c8: $74
    jr nz, jr_01d_573f                            ; $56c9: $20 $74

    ld l, b                                       ; $56cb: $68
    ld h, l                                       ; $56cc: $65
    ld bc, $6174                                  ; $56cd: $01 $74 $61
    ld [hl], d                                    ; $56d0: $72
    ld h, a                                       ; $56d1: $67

jr_01d_56d2:
    ld h, l                                       ; $56d2: $65
    ld [hl], h                                    ; $56d3: $74
    jr nz, jr_01d_573c                            ; $56d4: $20 $66

    ld [hl], d                                    ; $56d6: $72
    ld l, a                                       ; $56d7: $6f
    ld l, l                                       ; $56d8: $6d
    jr nz, jr_01d_5743                            ; $56d9: $20 $68

jr_01d_56db:
    ld h, l                                       ; $56db: $65
    ld [hl], d                                    ; $56dc: $72
    ld h, l                                       ; $56dd: $65
    ld l, $03                                     ; $56de: $2e $03
    nop                                           ; $56e0: $00
    ld c, b                                       ; $56e1: $48
    ld l, l                                       ; $56e2: $6d
    ld [hl], b                                    ; $56e3: $70
    ld l, b                                       ; $56e4: $68
    ld hl, $5420                                  ; $56e5: $21 $20 $54
    ld l, a                                       ; $56e8: $6f
    ld h, h                                       ; $56e9: $64
    ld h, c                                       ; $56ea: $61

jr_01d_56eb:
    ld a, c                                       ; $56eb: $79
    daa                                           ; $56ec: $27

jr_01d_56ed:
    ld [hl], e                                    ; $56ed: $73
    ld bc, $6f67                                  ; $56ee: $01 $67 $6f
    ld l, h                                       ; $56f1: $6c
    ld h, [hl]                                    ; $56f2: $66
    ld h, l                                       ; $56f3: $65
    ld [hl], d                                    ; $56f4: $72
    ld [hl], e                                    ; $56f5: $73
    jr nz, @+$6a                                  ; $56f6: $20 $68

    ld h, c                                       ; $56f8: $61
    halt                                          ; $56f9: $76
    ld h, l                                       ; $56fa: $65
    jr nz, @+$70                                  ; $56fb: $20 $6e

    ld l, a                                       ; $56fd: $6f

jr_01d_56fe:
    ld bc, $6574                                  ; $56fe: $01 $74 $65
    ld l, [hl]                                    ; $5701: $6e
    ld h, c                                       ; $5702: $61
    ld h, e                                       ; $5703: $63
    ld l, c                                       ; $5704: $69
    ld [hl], h                                    ; $5705: $74
    ld a, c                                       ; $5706: $79
    ld hl, $5020                                  ; $5707: $21 $20 $50

jr_01d_570a:
    ld l, c                                       ; $570a: $69
    ld [hl], h                                    ; $570b: $74
    ld a, c                                       ; $570c: $79
    ld hl, $0003                                  ; $570d: $21 $03 $00
    ld e, c                                       ; $5710: $59
    ld l, a                                       ; $5711: $6f
    ld [hl], l                                    ; $5712: $75
    daa                                           ; $5713: $27
    ld [hl], d                                    ; $5714: $72
    ld h, l                                       ; $5715: $65
    jr nz, jr_01d_5779                            ; $5716: $20 $61

    ld l, h                                       ; $5718: $6c
    ld l, h                                       ; $5719: $6c
    jr nz, @+$79                                  ; $571a: $20 $77

    ld [hl], d                                    ; $571c: $72
    ld l, a                                       ; $571d: $6f
    ld l, [hl]                                    ; $571e: $6e
    ld h, a                                       ; $571f: $67
    ld hl, $0003                                  ; $5720: $21 $03 $00
    ld c, c                                       ; $5723: $49
    daa                                           ; $5724: $27
    ld l, l                                       ; $5725: $6d
    jr nz, jr_01d_579c                            ; $5726: $20 $74

    ld h, l                                       ; $5728: $65

jr_01d_5729:
    ld l, h                                       ; $5729: $6c
    ld l, h                                       ; $572a: $6c
    ld l, c                                       ; $572b: $69
    ld l, [hl]                                    ; $572c: $6e
    ld h, a                                       ; $572d: $67

jr_01d_572e:
    jr nz, jr_01d_57a9                            ; $572e: $20 $79

    ld l, a                                       ; $5730: $6f
    ld [hl], l                                    ; $5731: $75
    inc l                                         ; $5732: $2c
    ld bc, $6f79                                  ; $5733: $01 $79 $6f
    ld [hl], l                                    ; $5736: $75
    jr nz, jr_01d_57a1                            ; $5737: $20 $68

    ld h, c                                       ; $5739: $61
    halt                                          ; $573a: $76
    ld h, l                                       ; $573b: $65

jr_01d_573c:
    jr nz, jr_01d_57b2                            ; $573c: $20 $74

    ld l, a                                       ; $573e: $6f

jr_01d_573f:
    jr nz, jr_01d_57b4                            ; $573f: $20 $73

    ld l, b                                       ; $5741: $68
    ld l, a                                       ; $5742: $6f

jr_01d_5743:
    ld l, a                                       ; $5743: $6f
    ld [hl], h                                    ; $5744: $74
    ld bc, $7266                                  ; $5745: $01 $66 $72
    ld l, a                                       ; $5748: $6f
    ld l, l                                       ; $5749: $6d
    jr nz, jr_01d_57b4                            ; $574a: $20 $68

    ld h, l                                       ; $574c: $65
    ld [hl], d                                    ; $574d: $72
    ld h, l                                       ; $574e: $65
    ld hl, $0003                                  ; $574f: $21 $03 $00
    ld d, h                                       ; $5752: $54
    ld h, e                                       ; $5753: $63
    ld l, b                                       ; $5754: $68
    ld hl, $5420                                  ; $5755: $21 $20 $54
    ld l, a                                       ; $5758: $6f
    ld h, h                                       ; $5759: $64
    ld h, c                                       ; $575a: $61
    ld a, c                                       ; $575b: $79
    daa                                           ; $575c: $27
    ld [hl], e                                    ; $575d: $73
    ld bc, $6f67                                  ; $575e: $01 $67 $6f
    ld l, h                                       ; $5761: $6c
    ld h, [hl]                                    ; $5762: $66
    ld h, l                                       ; $5763: $65
    ld [hl], d                                    ; $5764: $72
    ld [hl], e                                    ; $5765: $73
    jr nz, jr_01d_57c9                            ; $5766: $20 $61

    ld [hl], d                                    ; $5768: $72
    ld h, l                                       ; $5769: $65
    ld bc, $6970                                  ; $576a: $01 $70 $69
    ld [hl], h                                    ; $576d: $74
    ld l, c                                       ; $576e: $69
    ld h, [hl]                                    ; $576f: $66
    ld [hl], l                                    ; $5770: $75
    ld l, h                                       ; $5771: $6c
    ld hl, $0003                                  ; $5772: $21 $03 $00
    ld e, c                                       ; $5775: $59
    ld l, a                                       ; $5776: $6f
    ld [hl], l                                    ; $5777: $75
    daa                                           ; $5778: $27

jr_01d_5779:
    ld [hl], d                                    ; $5779: $72
    ld h, l                                       ; $577a: $65
    jr nz, jr_01d_57e4                            ; $577b: $20 $67

    ld l, a                                       ; $577d: $6f
    ld l, a                                       ; $577e: $6f
    ld h, h                                       ; $577f: $64
    jr nz, jr_01d_57e8                            ; $5780: $20 $66

    ld l, a                                       ; $5782: $6f
    ld [hl], d                                    ; $5783: $72
    ld bc, $6e6f                                  ; $5784: $01 $6f $6e
    ld h, l                                       ; $5787: $65
    jr nz, jr_01d_57fd                            ; $5788: $20 $73

    ld l, a                                       ; $578a: $6f
    jr nz, jr_01d_5806                            ; $578b: $20 $79

    ld l, a                                       ; $578d: $6f
    ld [hl], l                                    ; $578e: $75
    ld l, [hl]                                    ; $578f: $6e
    ld h, a                                       ; $5790: $67
    ld hl, $0003                                  ; $5791: $21 $03 $00
    ld c, c                                       ; $5794: $49
    daa                                           ; $5795: $27
    ld l, l                                       ; $5796: $6d
    jr nz, jr_01d_580d                            ; $5797: $20 $74

    ld l, b                                       ; $5799: $68
    ld l, a                                       ; $579a: $6f
    ld [hl], d                                    ; $579b: $72

jr_01d_579c:
    ld l, a                                       ; $579c: $6f
    ld [hl], l                                    ; $579d: $75
    ld h, a                                       ; $579e: $67
    ld l, b                                       ; $579f: $68
    ld l, h                                       ; $57a0: $6c

jr_01d_57a1:
    ld a, c                                       ; $57a1: $79
    ld bc, $6d69                                  ; $57a2: $01 $69 $6d
    ld [hl], b                                    ; $57a5: $70
    ld [hl], d                                    ; $57a6: $72
    ld h, l                                       ; $57a7: $65
    ld [hl], e                                    ; $57a8: $73

jr_01d_57a9:
    ld [hl], e                                    ; $57a9: $73
    ld h, l                                       ; $57aa: $65
    ld h, h                                       ; $57ab: $64
    jr nz, @+$64                                  ; $57ac: $20 $62

    ld a, c                                       ; $57ae: $79
    ld bc, $6f79                                  ; $57af: $01 $79 $6f

jr_01d_57b2:
    ld [hl], l                                    ; $57b2: $75
    ld [hl], d                                    ; $57b3: $72

jr_01d_57b4:
    jr nz, jr_01d_581d                            ; $57b4: $20 $67

    ld l, a                                       ; $57b6: $6f
    ld l, h                                       ; $57b7: $6c
    ld h, [hl]                                    ; $57b8: $66
    jr nz, @+$75                                  ; $57b9: $20 $73

    ld l, e                                       ; $57bb: $6b
    ld l, c                                       ; $57bc: $69
    ld l, h                                       ; $57bd: $6c
    ld l, h                                       ; $57be: $6c
    ld [hl], e                                    ; $57bf: $73
    ld hl, $0003                                  ; $57c0: $21 $03 $00
    ld c, e                                       ; $57c3: $4b
    ld h, l                                       ; $57c4: $65
    ld h, l                                       ; $57c5: $65
    ld [hl], b                                    ; $57c6: $70
    jr nz, jr_01d_583e                            ; $57c7: $20 $75

jr_01d_57c9:
    ld [hl], b                                    ; $57c9: $70
    jr nz, @+$76                                  ; $57ca: $20 $74

    ld l, b                                       ; $57cc: $68
    ld h, c                                       ; $57cd: $61
    ld [hl], h                                    ; $57ce: $74
    jr nz, jr_01d_5841                            ; $57cf: $20 $70

    ld h, c                                       ; $57d1: $61
    ld h, e                                       ; $57d2: $63
    ld h, l                                       ; $57d3: $65
    ld bc, $6e61                                  ; $57d4: $01 $61 $6e
    ld h, h                                       ; $57d7: $64
    jr nz, jr_01d_584a                            ; $57d8: $20 $70

    ld h, l                                       ; $57da: $65
    ld [hl], d                                    ; $57db: $72
    ld h, [hl]                                    ; $57dc: $66
    ld h, l                                       ; $57dd: $65
    ld h, e                                       ; $57de: $63
    ld [hl], h                                    ; $57df: $74
    jr nz, jr_01d_585b                            ; $57e0: $20 $79

    ld l, a                                       ; $57e2: $6f
    ld [hl], l                                    ; $57e3: $75

jr_01d_57e4:
    ld [hl], d                                    ; $57e4: $72
    ld bc, $7773                                  ; $57e5: $01 $73 $77

jr_01d_57e8:
    ld l, c                                       ; $57e8: $69
    ld l, [hl]                                    ; $57e9: $6e
    ld h, a                                       ; $57ea: $67
    ld hl, $0003                                  ; $57eb: $21 $03 $00
    ld b, a                                       ; $57ee: $47
    ld l, a                                       ; $57ef: $6f
    ld l, h                                       ; $57f0: $6c
    ld h, [hl]                                    ; $57f1: $66
    jr nz, @+$6b                                  ; $57f2: $20 $69

    ld [hl], e                                    ; $57f4: $73
    jr nz, jr_01d_5860                            ; $57f5: $20 $69

    ld l, [hl]                                    ; $57f7: $6e
    jr nz, jr_01d_5873                            ; $57f8: $20 $79

    ld l, a                                       ; $57fa: $6f
    ld [hl], l                                    ; $57fb: $75
    ld [hl], d                                    ; $57fc: $72

jr_01d_57fd:
    ld bc, $6c62                                  ; $57fd: $01 $62 $6c
    ld l, a                                       ; $5800: $6f
    ld l, a                                       ; $5801: $6f
    ld h, h                                       ; $5802: $64
    ld hl, $5920                                  ; $5803: $21 $20 $59

jr_01d_5806:
    ld l, a                                       ; $5806: $6f
    ld [hl], l                                    ; $5807: $75
    jr nz, jr_01d_587d                            ; $5808: $20 $73

    ld l, b                                       ; $580a: $68
    ld h, c                                       ; $580b: $61
    ld l, h                                       ; $580c: $6c

jr_01d_580d:
    ld l, h                                       ; $580d: $6c
    ld bc, $6562                                  ; $580e: $01 $62 $65
    jr nz, @+$63                                  ; $5811: $20 $61

    jr nz, jr_01d_5882                            ; $5813: $20 $6d

    ld h, c                                       ; $5815: $61
    ld [hl], e                                    ; $5816: $73
    ld [hl], h                                    ; $5817: $74
    ld h, l                                       ; $5818: $65
    ld [hl], d                                    ; $5819: $72
    ld hl, $4302                                  ; $581a: $21 $02 $43

jr_01d_581d:
    ld l, a                                       ; $581d: $6f
    ld l, l                                       ; $581e: $6d
    ld h, l                                       ; $581f: $65
    jr nz, jr_01d_5895                            ; $5820: $20 $73

    ld h, l                                       ; $5822: $65
    ld h, l                                       ; $5823: $65
    jr nz, jr_01d_5893                            ; $5824: $20 $6d

    ld h, l                                       ; $5826: $65
    jr nz, jr_01d_58a0                            ; $5827: $20 $77

    ld l, b                                       ; $5829: $68
    ld h, l                                       ; $582a: $65
    ld l, [hl]                                    ; $582b: $6e
    ld bc, $6f79                                  ; $582c: $01 $79 $6f
    ld [hl], l                                    ; $582f: $75
    jr nz, jr_01d_5893                            ; $5830: $20 $61

    ld [hl], d                                    ; $5832: $72
    ld h, l                                       ; $5833: $65
    jr nz, jr_01d_5899                            ; $5834: $20 $63

    ld l, a                                       ; $5836: $6f
    ld l, [hl]                                    ; $5837: $6e
    ld h, [hl]                                    ; $5838: $66
    ld l, c                                       ; $5839: $69
    ld h, h                                       ; $583a: $64
    ld h, l                                       ; $583b: $65
    ld l, [hl]                                    ; $583c: $6e
    ld [hl], h                                    ; $583d: $74

jr_01d_583e:
    ld bc, $6e69                                  ; $583e: $01 $69 $6e

jr_01d_5841:
    jr nz, jr_01d_58bc                            ; $5841: $20 $79

    ld l, a                                       ; $5843: $6f
    ld [hl], l                                    ; $5844: $75
    ld [hl], d                                    ; $5845: $72
    jr nz, jr_01d_58b8                            ; $5846: $20 $70

    ld l, a                                       ; $5848: $6f
    ld [hl], a                                    ; $5849: $77

jr_01d_584a:
    ld h, l                                       ; $584a: $65
    ld [hl], d                                    ; $584b: $72
    ld [hl], e                                    ; $584c: $73
    ld l, $03                                     ; $584d: $2e $03
    nop                                           ; $584f: $00
    ld e, c                                       ; $5850: $59
    ld l, a                                       ; $5851: $6f
    ld [hl], l                                    ; $5852: $75
    ld [hl], d                                    ; $5853: $72
    jr nz, jr_01d_58c9                            ; $5854: $20 $73

    ld [hl], h                                    ; $5856: $74
    ld [hl], l                                    ; $5857: $75
    ld h, h                                       ; $5858: $64
    ld l, c                                       ; $5859: $69
    ld h, l                                       ; $585a: $65

jr_01d_585b:
    ld [hl], e                                    ; $585b: $73
    jr nz, jr_01d_58bf                            ; $585c: $20 $61

    ld [hl], d                                    ; $585e: $72
    ld h, l                                       ; $585f: $65

jr_01d_5860:
    ld bc, $616c                                  ; $5860: $01 $6c $61
    ld h, e                                       ; $5863: $63
    ld l, e                                       ; $5864: $6b
    ld l, c                                       ; $5865: $69
    ld l, [hl]                                    ; $5866: $6e
    ld h, a                                       ; $5867: $67
    ld l, $20                                     ; $5868: $2e $20
    ld b, l                                       ; $586a: $45
    ld h, c                                       ; $586b: $61
    ld [hl], d                                    ; $586c: $72
    ld l, [hl]                                    ; $586d: $6e
    jr nz, jr_01d_58dd                            ; $586e: $20 $6d

    ld l, a                                       ; $5870: $6f
    ld [hl], d                                    ; $5871: $72
    ld h, l                                       ; $5872: $65

jr_01d_5873:
    ld bc, $7865                                  ; $5873: $01 $65 $78
    ld [hl], b                                    ; $5876: $70
    ld h, l                                       ; $5877: $65
    ld [hl], d                                    ; $5878: $72
    ld l, c                                       ; $5879: $69
    ld h, l                                       ; $587a: $65
    ld l, [hl]                                    ; $587b: $6e
    ld h, e                                       ; $587c: $63

jr_01d_587d:
    ld h, l                                       ; $587d: $65
    ld hl, $0003                                  ; $587e: $21 $03 $00
    ld d, h                                       ; $5881: $54

jr_01d_5882:
    ld l, b                                       ; $5882: $68
    ld h, l                                       ; $5883: $65
    jr nz, @+$66                                  ; $5884: $20 $64

    ld l, a                                       ; $5886: $6f
    ld l, a                                       ; $5887: $6f
    ld [hl], d                                    ; $5888: $72
    jr nz, jr_01d_58f4                            ; $5889: $20 $69

    ld [hl], e                                    ; $588b: $73
    jr nz, jr_01d_58fa                            ; $588c: $20 $6c

    ld l, a                                       ; $588e: $6f
    ld h, e                                       ; $588f: $63
    ld l, e                                       ; $5890: $6b
    ld h, l                                       ; $5891: $65
    ld h, h                                       ; $5892: $64

jr_01d_5893:
    ld l, $03                                     ; $5893: $2e $03

jr_01d_5895:
    nop                                           ; $5895: $00
    ld d, e                                       ; $5896: $53
    ld l, b                                       ; $5897: $68
    ld l, a                                       ; $5898: $6f

jr_01d_5899:
    ld l, a                                       ; $5899: $6f
    ld [hl], h                                    ; $589a: $74
    jr nz, jr_01d_5903                            ; $589b: $20 $66

    ld [hl], d                                    ; $589d: $72
    ld l, a                                       ; $589e: $6f
    ld l, l                                       ; $589f: $6d

jr_01d_58a0:
    jr nz, jr_01d_590a                            ; $58a0: $20 $68

    ld h, l                                       ; $58a2: $65
    ld [hl], d                                    ; $58a3: $72
    ld h, l                                       ; $58a4: $65
    ccf                                           ; $58a5: $3f
    nop                                           ; $58a6: $00
    ld c, b                                       ; $58a7: $48
    ld l, l                                       ; $58a8: $6d
    ld l, l                                       ; $58a9: $6d
    inc l                                         ; $58aa: $2c
    jr nz, jr_01d_5926                            ; $58ab: $20 $79

    ld l, a                                       ; $58ad: $6f
    ld [hl], l                                    ; $58ae: $75
    jr nz, @+$6b                                  ; $58af: $20 $69

    ld l, l                                       ; $58b1: $6d
    ld [hl], b                                    ; $58b2: $70
    ld [hl], d                                    ; $58b3: $72
    ld l, a                                       ; $58b4: $6f
    halt                                          ; $58b5: $76
    ld h, l                                       ; $58b6: $65
    ld h, h                                       ; $58b7: $64

jr_01d_58b8:
    ld hl, $4101                                  ; $58b8: $21 $01 $41
    ld [hl], d                                    ; $58bb: $72

jr_01d_58bc:
    ld h, l                                       ; $58bc: $65
    jr nz, jr_01d_5938                            ; $58bd: $20 $79

jr_01d_58bf:
    ld l, a                                       ; $58bf: $6f
    ld [hl], l                                    ; $58c0: $75
    jr nz, jr_01d_592a                            ; $58c1: $20 $67

    ld l, a                                       ; $58c3: $6f
    ld l, c                                       ; $58c4: $69
    ld l, [hl]                                    ; $58c5: $6e
    ld h, a                                       ; $58c6: $67
    jr nz, jr_01d_593d                            ; $58c7: $20 $74

jr_01d_58c9:
    ld l, a                                       ; $58c9: $6f
    ld bc, $6873                                  ; $58ca: $01 $73 $68
    ld l, a                                       ; $58cd: $6f
    ld [hl], a                                    ; $58ce: $77
    jr nz, jr_01d_593e                            ; $58cf: $20 $6d

    ld h, l                                       ; $58d1: $65
    jr nz, jr_01d_593c                            ; $58d2: $20 $68

    ld l, a                                       ; $58d4: $6f
    ld [hl], a                                    ; $58d5: $77
    jr nz, @+$6f                                  ; $58d6: $20 $6d

    ld [hl], l                                    ; $58d8: $75
    ld h, e                                       ; $58d9: $63
    ld l, b                                       ; $58da: $68
    ccf                                           ; $58db: $3f
    inc bc                                        ; $58dc: $03

jr_01d_58dd:
    nop                                           ; $58dd: $00
    ld d, h                                       ; $58de: $54
    ld l, b                                       ; $58df: $68
    ld l, c                                       ; $58e0: $69
    ld [hl], e                                    ; $58e1: $73
    jr nz, jr_01d_5958                            ; $58e2: $20 $74

    ld h, c                                       ; $58e4: $61
    ld [hl], d                                    ; $58e5: $72
    ld h, a                                       ; $58e6: $67
    ld h, l                                       ; $58e7: $65
    ld [hl], h                                    ; $58e8: $74
    jr nz, jr_01d_5954                            ; $58e9: $20 $69

    ld [hl], e                                    ; $58eb: $73
    ld bc, $6c73                                  ; $58ec: $01 $73 $6c
    ld l, c                                       ; $58ef: $69
    ld h, a                                       ; $58f0: $67
    ld l, b                                       ; $58f1: $68
    ld [hl], h                                    ; $58f2: $74
    ld l, h                                       ; $58f3: $6c

jr_01d_58f4:
    ld a, c                                       ; $58f4: $79
    jr nz, jr_01d_595b                            ; $58f5: $20 $64

    ld l, c                                       ; $58f7: $69
    ld h, [hl]                                    ; $58f8: $66
    ld h, [hl]                                    ; $58f9: $66

jr_01d_58fa:
    ld h, l                                       ; $58fa: $65
    ld [hl], d                                    ; $58fb: $72
    ld h, l                                       ; $58fc: $65
    ld l, [hl]                                    ; $58fd: $6e
    ld [hl], h                                    ; $58fe: $74
    ld bc, $7266                                  ; $58ff: $01 $66 $72
    ld l, a                                       ; $5902: $6f

jr_01d_5903:
    ld l, l                                       ; $5903: $6d
    jr nz, @+$76                                  ; $5904: $20 $74

    ld l, b                                       ; $5906: $68
    ld h, l                                       ; $5907: $65
    jr nz, jr_01d_5976                            ; $5908: $20 $6c

jr_01d_590a:
    ld h, c                                       ; $590a: $61
    ld [hl], e                                    ; $590b: $73
    ld [hl], h                                    ; $590c: $74
    ld l, $02                                     ; $590d: $2e $02
    ld d, e                                       ; $590f: $53
    ld l, b                                       ; $5910: $68
    ld l, a                                       ; $5911: $6f
    ld l, a                                       ; $5912: $6f
    ld [hl], h                                    ; $5913: $74
    jr nz, jr_01d_597c                            ; $5914: $20 $66

    ld [hl], d                                    ; $5916: $72
    ld l, a                                       ; $5917: $6f
    ld l, l                                       ; $5918: $6d
    jr nz, jr_01d_5983                            ; $5919: $20 $68

    ld h, l                                       ; $591b: $65
    ld [hl], d                                    ; $591c: $72
    ld h, l                                       ; $591d: $65
    ld l, $01                                     ; $591e: $2e $01
    ld c, c                                       ; $5920: $49
    ld [hl], h                                    ; $5921: $74
    jr nz, @+$76                                  ; $5922: $20 $74

    ld h, c                                       ; $5924: $61
    ld l, e                                       ; $5925: $6b

jr_01d_5926:
    ld h, l                                       ; $5926: $65
    ld [hl], e                                    ; $5927: $73
    jr nz, jr_01d_598b                            ; $5928: $20 $61

jr_01d_592a:
    jr nz, jr_01d_5992                            ; $592a: $20 $66

    ld l, c                                       ; $592c: $69
    ld l, [hl]                                    ; $592d: $6e
    ld h, l                                       ; $592e: $65
    ld bc, $6f67                                  ; $592f: $01 $67 $6f
    ld l, h                                       ; $5932: $6c
    ld h, [hl]                                    ; $5933: $66
    ld h, l                                       ; $5934: $65
    ld [hl], d                                    ; $5935: $72
    jr nz, jr_01d_59ac                            ; $5936: $20 $74

jr_01d_5938:
    ld l, a                                       ; $5938: $6f
    jr nz, @+$75                                  ; $5939: $20 $73

    ld l, c                                       ; $593b: $69

jr_01d_593c:
    ld l, [hl]                                    ; $593c: $6e

jr_01d_593d:
    ld l, e                                       ; $593d: $6b

jr_01d_593e:
    jr nz, @+$6b                                  ; $593e: $20 $69

    ld [hl], h                                    ; $5940: $74
    ld l, $03                                     ; $5941: $2e $03
    nop                                           ; $5943: $00
    jr nz, jr_01d_5966                            ; $5944: $20 $20

    nop                                           ; $5946: $00
    ld b, h                                       ; $5947: $44
    ld l, a                                       ; $5948: $6f
    ld l, [hl]                                    ; $5949: $6e
    daa                                           ; $594a: $27
    ld [hl], h                                    ; $594b: $74
    jr nz, jr_01d_59c7                            ; $594c: $20 $79

    ld l, a                                       ; $594e: $6f
    ld [hl], l                                    ; $594f: $75
    jr nz, jr_01d_59b9                            ; $5950: $20 $67

    ld h, l                                       ; $5952: $65
    ld [hl], h                                    ; $5953: $74

jr_01d_5954:
    jr nz, jr_01d_59bf                            ; $5954: $20 $69

    ld [hl], h                                    ; $5956: $74
    ccf                                           ; $5957: $3f

jr_01d_5958:
    ld bc, $2749                                  ; $5958: $01 $49 $27

jr_01d_595b:
    ld l, l                                       ; $595b: $6d
    jr nz, jr_01d_59d2                            ; $595c: $20 $74

    ld h, l                                       ; $595e: $65
    ld l, h                                       ; $595f: $6c
    ld l, h                                       ; $5960: $6c
    ld l, c                                       ; $5961: $69
    ld l, [hl]                                    ; $5962: $6e
    ld h, a                                       ; $5963: $67
    jr nz, @+$7b                                  ; $5964: $20 $79

jr_01d_5966:
    ld l, a                                       ; $5966: $6f
    ld [hl], l                                    ; $5967: $75
    ld bc, $7469                                  ; $5968: $01 $69 $74
    daa                                           ; $596b: $27
    ld [hl], e                                    ; $596c: $73
    jr nz, jr_01d_59d7                            ; $596d: $20 $68

    ld h, l                                       ; $596f: $65
    ld [hl], d                                    ; $5970: $72
    ld h, l                                       ; $5971: $65
    ld hl, $0003                                  ; $5972: $21 $03 $00
    ld c, b                                       ; $5975: $48

jr_01d_5976:
    ld l, l                                       ; $5976: $6d
    ld [hl], b                                    ; $5977: $70
    ld l, b                                       ; $5978: $68
    ld hl, $0320                                  ; $5979: $21 $20 $03

jr_01d_597c:
    nop                                           ; $597c: $00
    ld e, c                                       ; $597d: $59
    ld l, a                                       ; $597e: $6f
    ld [hl], l                                    ; $597f: $75
    daa                                           ; $5980: $27
    ld [hl], d                                    ; $5981: $72
    ld h, l                                       ; $5982: $65

jr_01d_5983:
    jr nz, @+$75                                  ; $5983: $20 $73

    ld l, a                                       ; $5985: $6f
    ld l, l                                       ; $5986: $6d
    ld h, l                                       ; $5987: $65
    ld [hl], h                                    ; $5988: $74
    ld l, b                                       ; $5989: $68
    ld l, c                                       ; $598a: $69

jr_01d_598b:
    ld l, [hl]                                    ; $598b: $6e
    ld h, a                                       ; $598c: $67
    jr nz, jr_01d_59f4                            ; $598d: $20 $65

    ld l, h                                       ; $598f: $6c
    ld [hl], e                                    ; $5990: $73
    ld h, l                                       ; $5991: $65

jr_01d_5992:
    ld hl, $0003                                  ; $5992: $21 $03 $00
    ld b, d                                       ; $5995: $42
    ld a, c                                       ; $5996: $79
    jr nz, jr_01d_5a0d                            ; $5997: $20 $74

    ld l, b                                       ; $5999: $68
    ld h, l                                       ; $599a: $65
    jr nz, jr_01d_5a14                            ; $599b: $20 $77

    ld h, c                                       ; $599d: $61
    ld a, c                                       ; $599e: $79
    inc l                                         ; $599f: $2c
    jr nz, jr_01d_5a0b                            ; $59a0: $20 $69

    ld [hl], e                                    ; $59a2: $73
    ld bc, $6f79                                  ; $59a3: $01 $79 $6f
    ld [hl], l                                    ; $59a6: $75
    ld [hl], d                                    ; $59a7: $72
    jr nz, jr_01d_5a1d                            ; $59a8: $20 $73

    ld l, b                                       ; $59aa: $68
    ld l, a                                       ; $59ab: $6f

jr_01d_59ac:
    ld [hl], h                                    ; $59ac: $74
    jr nz, @+$63                                  ; $59ad: $20 $61

    jr nz, @+$68                                  ; $59af: $20 $66

    ld h, c                                       ; $59b1: $61
    ld h, h                                       ; $59b2: $64
    ld h, l                                       ; $59b3: $65
    ccf                                           ; $59b4: $3f
    nop                                           ; $59b5: $00
    ld c, l                                       ; $59b6: $4d
    ld l, l                                       ; $59b7: $6d
    ld l, l                                       ; $59b8: $6d

jr_01d_59b9:
    ld l, $2e                                     ; $59b9: $2e $2e
    ld l, $49                                     ; $59bb: $2e $49
    jr nz, jr_01d_5a22                            ; $59bd: $20 $63

jr_01d_59bf:
    ld l, a                                       ; $59bf: $6f
    ld [hl], l                                    ; $59c0: $75
    ld l, h                                       ; $59c1: $6c
    ld h, h                                       ; $59c2: $64
    jr nz, @+$76                                  ; $59c3: $20 $74

    ld h, l                                       ; $59c5: $65
    ld l, h                                       ; $59c6: $6c

jr_01d_59c7:
    ld l, h                                       ; $59c7: $6c
    ld bc, $756a                                  ; $59c8: $01 $6a $75
    ld [hl], e                                    ; $59cb: $73
    ld [hl], h                                    ; $59cc: $74
    jr nz, jr_01d_5a31                            ; $59cd: $20 $62

    ld a, c                                       ; $59cf: $79
    jr nz, jr_01d_5a49                            ; $59d0: $20 $77

jr_01d_59d2:
    ld h, c                                       ; $59d2: $61
    ld [hl], h                                    ; $59d3: $74
    ld h, e                                       ; $59d4: $63
    ld l, b                                       ; $59d5: $68
    ld l, c                                       ; $59d6: $69

jr_01d_59d7:
    ld l, [hl]                                    ; $59d7: $6e
    ld h, a                                       ; $59d8: $67
    ld bc, $6f79                                  ; $59d9: $01 $79 $6f
    ld [hl], l                                    ; $59dc: $75
    ld [hl], d                                    ; $59dd: $72
    jr nz, jr_01d_5a46                            ; $59de: $20 $66

    ld l, a                                       ; $59e0: $6f
    ld [hl], d                                    ; $59e1: $72
    ld l, l                                       ; $59e2: $6d
    ld l, $03                                     ; $59e3: $2e $03
    nop                                           ; $59e5: $00
    ld c, c                                       ; $59e6: $49
    ld h, [hl]                                    ; $59e7: $66
    jr nz, jr_01d_5a63                            ; $59e8: $20 $79

    ld l, a                                       ; $59ea: $6f
    ld [hl], l                                    ; $59eb: $75
    jr nz, jr_01d_5a5a                            ; $59ec: $20 $6c

    ld l, c                                       ; $59ee: $69
    ld l, e                                       ; $59ef: $6b
    ld h, l                                       ; $59f0: $65
    inc l                                         ; $59f1: $2c
    jr nz, jr_01d_5a3d                            ; $59f2: $20 $49

jr_01d_59f4:
    daa                                           ; $59f4: $27
    ld l, h                                       ; $59f5: $6c
    ld l, h                                       ; $59f6: $6c
    ld bc, $6863                                  ; $59f7: $01 $63 $68
    ld h, c                                       ; $59fa: $61
    ld l, [hl]                                    ; $59fb: $6e
    ld h, a                                       ; $59fc: $67
    ld h, l                                       ; $59fd: $65
    jr nz, jr_01d_5a79                            ; $59fe: $20 $79

    ld l, a                                       ; $5a00: $6f
    ld [hl], l                                    ; $5a01: $75
    ld [hl], d                                    ; $5a02: $72
    jr nz, jr_01d_5a6b                            ; $5a03: $20 $66

    ld h, c                                       ; $5a05: $61
    ld h, h                                       ; $5a06: $64
    ld h, l                                       ; $5a07: $65
    ld bc, $6e69                                  ; $5a08: $01 $69 $6e

jr_01d_5a0b:
    ld [hl], h                                    ; $5a0b: $74
    ld l, a                                       ; $5a0c: $6f

jr_01d_5a0d:
    jr nz, jr_01d_5a70                            ; $5a0d: $20 $61

    jr nz, jr_01d_5a75                            ; $5a0f: $20 $64

    ld [hl], d                                    ; $5a11: $72
    ld h, c                                       ; $5a12: $61
    ld [hl], a                                    ; $5a13: $77

jr_01d_5a14:
    ld l, $2e                                     ; $5a14: $2e $2e
    ld l, $00                                     ; $5a16: $2e $00
    ld e, c                                       ; $5a18: $59
    ld l, a                                       ; $5a19: $6f
    ld [hl], l                                    ; $5a1a: $75
    jr nz, jr_01d_5a8c                            ; $5a1b: $20 $6f

jr_01d_5a1d:
    ld l, [hl]                                    ; $5a1d: $6e
    ld l, h                                       ; $5a1e: $6c
    ld a, c                                       ; $5a1f: $79
    jr nz, @+$69                                  ; $5a20: $20 $67

jr_01d_5a22:
    ld h, l                                       ; $5a22: $65
    ld [hl], h                                    ; $5a23: $74
    jr nz, jr_01d_5a95                            ; $5a24: $20 $6f

    ld l, [hl]                                    ; $5a26: $6e
    ld h, l                                       ; $5a27: $65
    ld bc, $6863                                  ; $5a28: $01 $63 $68
    ld h, c                                       ; $5a2b: $61
    ld l, [hl]                                    ; $5a2c: $6e
    ld h, e                                       ; $5a2d: $63
    ld h, l                                       ; $5a2e: $65
    ld l, $2e                                     ; $5a2f: $2e $2e

jr_01d_5a31:
    ld l, $20                                     ; $5a31: $2e $20
    ld d, e                                       ; $5a33: $53
    ld l, b                                       ; $5a34: $68
    ld h, c                                       ; $5a35: $61
    ld l, h                                       ; $5a36: $6c
    ld l, h                                       ; $5a37: $6c
    jr nz, jr_01d_5a83                            ; $5a38: $20 $49

    ld bc, $6863                                  ; $5a3a: $01 $63 $68

jr_01d_5a3d:
    ld h, c                                       ; $5a3d: $61
    ld l, [hl]                                    ; $5a3e: $6e
    ld h, a                                       ; $5a3f: $67
    ld h, l                                       ; $5a40: $65
    jr nz, @+$7b                                  ; $5a41: $20 $79

    ld l, a                                       ; $5a43: $6f
    ld [hl], l                                    ; $5a44: $75
    ld [hl], d                                    ; $5a45: $72

jr_01d_5a46:
    jr nz, jr_01d_5abb                            ; $5a46: $20 $73

    ld l, b                                       ; $5a48: $68

jr_01d_5a49:
    ld l, a                                       ; $5a49: $6f
    ld [hl], h                                    ; $5a4a: $74
    ccf                                           ; $5a4b: $3f
    nop                                           ; $5a4c: $00
    ld b, d                                       ; $5a4d: $42
    ld a, c                                       ; $5a4e: $79
    jr nz, jr_01d_5ac5                            ; $5a4f: $20 $74

    ld l, b                                       ; $5a51: $68
    ld h, l                                       ; $5a52: $65
    jr nz, jr_01d_5acc                            ; $5a53: $20 $77

    ld h, c                                       ; $5a55: $61
    ld a, c                                       ; $5a56: $79
    inc l                                         ; $5a57: $2c
    jr nz, jr_01d_5ac3                            ; $5a58: $20 $69

jr_01d_5a5a:
    ld [hl], e                                    ; $5a5a: $73
    ld bc, $6f79                                  ; $5a5b: $01 $79 $6f
    ld [hl], l                                    ; $5a5e: $75
    ld [hl], d                                    ; $5a5f: $72
    jr nz, jr_01d_5ad5                            ; $5a60: $20 $73

    ld l, b                                       ; $5a62: $68

jr_01d_5a63:
    ld l, a                                       ; $5a63: $6f
    ld [hl], h                                    ; $5a64: $74
    jr nz, @+$63                                  ; $5a65: $20 $61

    jr nz, @+$66                                  ; $5a67: $20 $64

    ld [hl], d                                    ; $5a69: $72
    ld h, c                                       ; $5a6a: $61

jr_01d_5a6b:
    ld [hl], a                                    ; $5a6b: $77
    ccf                                           ; $5a6c: $3f
    nop                                           ; $5a6d: $00
    ld c, l                                       ; $5a6e: $4d
    ld l, l                                       ; $5a6f: $6d

jr_01d_5a70:
    ld l, l                                       ; $5a70: $6d
    ld l, $2e                                     ; $5a71: $2e $2e
    ld l, $49                                     ; $5a73: $2e $49

jr_01d_5a75:
    jr nz, jr_01d_5ada                            ; $5a75: $20 $63

    ld l, a                                       ; $5a77: $6f
    ld [hl], l                                    ; $5a78: $75

jr_01d_5a79:
    ld l, h                                       ; $5a79: $6c
    ld h, h                                       ; $5a7a: $64
    jr nz, @+$76                                  ; $5a7b: $20 $74

    ld h, l                                       ; $5a7d: $65
    ld l, h                                       ; $5a7e: $6c
    ld l, h                                       ; $5a7f: $6c
    ld bc, $756a                                  ; $5a80: $01 $6a $75

jr_01d_5a83:
    ld [hl], e                                    ; $5a83: $73
    ld [hl], h                                    ; $5a84: $74
    jr nz, jr_01d_5ae9                            ; $5a85: $20 $62

    ld a, c                                       ; $5a87: $79
    jr nz, jr_01d_5b01                            ; $5a88: $20 $77

    ld h, c                                       ; $5a8a: $61
    ld [hl], h                                    ; $5a8b: $74

jr_01d_5a8c:
    ld h, e                                       ; $5a8c: $63
    ld l, b                                       ; $5a8d: $68
    ld l, c                                       ; $5a8e: $69
    ld l, [hl]                                    ; $5a8f: $6e
    ld h, a                                       ; $5a90: $67
    ld bc, $6f79                                  ; $5a91: $01 $79 $6f
    ld [hl], l                                    ; $5a94: $75

jr_01d_5a95:
    ld [hl], d                                    ; $5a95: $72
    jr nz, jr_01d_5afe                            ; $5a96: $20 $66

    ld l, a                                       ; $5a98: $6f
    ld [hl], d                                    ; $5a99: $72
    ld l, l                                       ; $5a9a: $6d
    ld l, $03                                     ; $5a9b: $2e $03
    nop                                           ; $5a9d: $00
    ld c, c                                       ; $5a9e: $49
    ld h, [hl]                                    ; $5a9f: $66
    jr nz, jr_01d_5b1b                            ; $5aa0: $20 $79

    ld l, a                                       ; $5aa2: $6f
    ld [hl], l                                    ; $5aa3: $75
    jr nz, @+$6e                                  ; $5aa4: $20 $6c

    ld l, c                                       ; $5aa6: $69
    ld l, e                                       ; $5aa7: $6b
    ld h, l                                       ; $5aa8: $65
    inc l                                         ; $5aa9: $2c
    jr nz, jr_01d_5af5                            ; $5aaa: $20 $49

    daa                                           ; $5aac: $27
    ld l, h                                       ; $5aad: $6c
    ld l, h                                       ; $5aae: $6c
    ld bc, $6863                                  ; $5aaf: $01 $63 $68
    ld h, c                                       ; $5ab2: $61
    ld l, [hl]                                    ; $5ab3: $6e
    ld h, a                                       ; $5ab4: $67
    ld h, l                                       ; $5ab5: $65
    jr nz, jr_01d_5b31                            ; $5ab6: $20 $79

    ld l, a                                       ; $5ab8: $6f
    ld [hl], l                                    ; $5ab9: $75
    ld [hl], d                                    ; $5aba: $72

jr_01d_5abb:
    jr nz, jr_01d_5b21                            ; $5abb: $20 $64

    ld [hl], d                                    ; $5abd: $72
    ld h, c                                       ; $5abe: $61
    ld [hl], a                                    ; $5abf: $77
    ld bc, $6e69                                  ; $5ac0: $01 $69 $6e

jr_01d_5ac3:
    ld [hl], h                                    ; $5ac3: $74
    ld l, a                                       ; $5ac4: $6f

jr_01d_5ac5:
    jr nz, @+$63                                  ; $5ac5: $20 $61

    jr nz, jr_01d_5b2f                            ; $5ac7: $20 $66

    ld h, c                                       ; $5ac9: $61
    ld h, h                                       ; $5aca: $64
    ld h, l                                       ; $5acb: $65

jr_01d_5acc:
    ld l, $2e                                     ; $5acc: $2e $2e
    ld l, $00                                     ; $5ace: $2e $00
    ld e, c                                       ; $5ad0: $59
    ld l, a                                       ; $5ad1: $6f
    ld [hl], l                                    ; $5ad2: $75
    jr nz, jr_01d_5b44                            ; $5ad3: $20 $6f

jr_01d_5ad5:
    ld l, [hl]                                    ; $5ad5: $6e
    ld l, h                                       ; $5ad6: $6c
    ld a, c                                       ; $5ad7: $79
    jr nz, jr_01d_5b41                            ; $5ad8: $20 $67

jr_01d_5ada:
    ld h, l                                       ; $5ada: $65
    ld [hl], h                                    ; $5adb: $74
    jr nz, jr_01d_5b4d                            ; $5adc: $20 $6f

    ld l, [hl]                                    ; $5ade: $6e
    ld h, l                                       ; $5adf: $65
    ld bc, $6863                                  ; $5ae0: $01 $63 $68
    ld h, c                                       ; $5ae3: $61
    ld l, [hl]                                    ; $5ae4: $6e
    ld h, e                                       ; $5ae5: $63
    ld h, l                                       ; $5ae6: $65
    ld l, $2e                                     ; $5ae7: $2e $2e

jr_01d_5ae9:
    ld l, $20                                     ; $5ae9: $2e $20
    ld d, e                                       ; $5aeb: $53
    ld l, b                                       ; $5aec: $68
    ld h, c                                       ; $5aed: $61
    ld l, h                                       ; $5aee: $6c
    ld l, h                                       ; $5aef: $6c
    jr nz, jr_01d_5b3b                            ; $5af0: $20 $49

    ld bc, $6863                                  ; $5af2: $01 $63 $68

jr_01d_5af5:
    ld h, c                                       ; $5af5: $61
    ld l, [hl]                                    ; $5af6: $6e
    ld h, a                                       ; $5af7: $67
    ld h, l                                       ; $5af8: $65
    jr nz, jr_01d_5b74                            ; $5af9: $20 $79

    ld l, a                                       ; $5afb: $6f
    ld [hl], l                                    ; $5afc: $75
    ld [hl], d                                    ; $5afd: $72

jr_01d_5afe:
    jr nz, jr_01d_5b73                            ; $5afe: $20 $73

    ld l, b                                       ; $5b00: $68

jr_01d_5b01:
    ld l, a                                       ; $5b01: $6f
    ld [hl], h                                    ; $5b02: $74
    ccf                                           ; $5b03: $3f
    nop                                           ; $5b04: $00
    ld b, e                                       ; $5b05: $43
    ld l, b                                       ; $5b06: $68
    ld h, c                                       ; $5b07: $61
    ld l, [hl]                                    ; $5b08: $6e
    ld h, a                                       ; $5b09: $67
    ld h, l                                       ; $5b0a: $65
    ld h, h                                       ; $5b0b: $64
    jr nz, @+$7b                                  ; $5b0c: $20 $79

    ld l, a                                       ; $5b0e: $6f
    ld [hl], l                                    ; $5b0f: $75
    ld [hl], d                                    ; $5b10: $72
    jr nz, jr_01d_5b80                            ; $5b11: $20 $6d

    ld l, c                                       ; $5b13: $69
    ld l, [hl]                                    ; $5b14: $6e
    ld h, h                                       ; $5b15: $64
    ccf                                           ; $5b16: $3f
    ld bc, $6143                                  ; $5b17: $01 $43 $61
    ld l, l                                       ; $5b1a: $6d

jr_01d_5b1b:
    ld h, l                                       ; $5b1b: $65
    jr nz, jr_01d_5b92                            ; $5b1c: $20 $74

    ld l, a                                       ; $5b1e: $6f
    jr nz, jr_01d_5b84                            ; $5b1f: $20 $63

jr_01d_5b21:
    ld l, b                                       ; $5b21: $68
    ld h, c                                       ; $5b22: $61
    ld l, [hl]                                    ; $5b23: $6e
    ld h, a                                       ; $5b24: $67
    ld h, l                                       ; $5b25: $65
    ld bc, $6f79                                  ; $5b26: $01 $79 $6f
    ld [hl], l                                    ; $5b29: $75
    ld [hl], d                                    ; $5b2a: $72
    jr nz, jr_01d_5ba0                            ; $5b2b: $20 $73

    ld l, b                                       ; $5b2d: $68
    ld l, a                                       ; $5b2e: $6f

jr_01d_5b2f:
    ld [hl], h                                    ; $5b2f: $74
    ccf                                           ; $5b30: $3f

jr_01d_5b31:
    nop                                           ; $5b31: $00
    ld c, c                                       ; $5b32: $49
    daa                                           ; $5b33: $27
    ld l, h                                       ; $5b34: $6c
    ld l, h                                       ; $5b35: $6c
    jr nz, @+$71                                  ; $5b36: $20 $6f

    ld l, [hl]                                    ; $5b38: $6e
    ld l, h                                       ; $5b39: $6c
    ld a, c                                       ; $5b3a: $79

jr_01d_5b3b:
    jr nz, jr_01d_5ba1                            ; $5b3b: $20 $64

    ld l, a                                       ; $5b3d: $6f
    jr nz, jr_01d_5ba9                            ; $5b3e: $20 $69

    ld [hl], h                                    ; $5b40: $74

jr_01d_5b41:
    ld bc, $6e6f                                  ; $5b41: $01 $6f $6e

jr_01d_5b44:
    ld h, e                                       ; $5b44: $63
    ld h, l                                       ; $5b45: $65
    ld l, $20                                     ; $5b46: $2e $20
    ld d, e                                       ; $5b48: $53
    ld l, b                                       ; $5b49: $68
    ld h, c                                       ; $5b4a: $61
    ld l, h                                       ; $5b4b: $6c
    ld l, h                                       ; $5b4c: $6c

jr_01d_5b4d:
    jr nz, @+$4b                                  ; $5b4d: $20 $49

    jr nz, @+$6f                                  ; $5b4f: $20 $6d

    ld h, c                                       ; $5b51: $61
    ld l, e                                       ; $5b52: $6b
    ld h, l                                       ; $5b53: $65
    ld bc, $6f79                                  ; $5b54: $01 $79 $6f
    ld [hl], l                                    ; $5b57: $75
    ld [hl], d                                    ; $5b58: $72
    jr nz, jr_01d_5bc1                            ; $5b59: $20 $66

    ld h, c                                       ; $5b5b: $61
    ld h, h                                       ; $5b5c: $64
    ld h, l                                       ; $5b5d: $65
    jr nz, jr_01d_5bc1                            ; $5b5e: $20 $61

    jr nz, jr_01d_5bc6                            ; $5b60: $20 $64

    ld [hl], d                                    ; $5b62: $72
    ld h, c                                       ; $5b63: $61
    ld [hl], a                                    ; $5b64: $77
    ccf                                           ; $5b65: $3f
    nop                                           ; $5b66: $00
    ld e, c                                       ; $5b67: $59
    ld l, a                                       ; $5b68: $6f
    ld [hl], l                                    ; $5b69: $75
    ld [hl], d                                    ; $5b6a: $72
    jr nz, jr_01d_5be0                            ; $5b6b: $20 $73

    ld l, b                                       ; $5b6d: $68
    ld l, a                                       ; $5b6e: $6f
    ld [hl], h                                    ; $5b6f: $74
    jr nz, jr_01d_5bda                            ; $5b70: $20 $68

    ld h, c                                       ; $5b72: $61

jr_01d_5b73:
    ld [hl], e                                    ; $5b73: $73

jr_01d_5b74:
    ld bc, $6562                                  ; $5b74: $01 $62 $65
    ld h, l                                       ; $5b77: $65
    ld l, [hl]                                    ; $5b78: $6e
    jr nz, @+$65                                  ; $5b79: $20 $63

    ld l, b                                       ; $5b7b: $68
    ld h, c                                       ; $5b7c: $61
    ld l, [hl]                                    ; $5b7d: $6e
    ld h, a                                       ; $5b7e: $67
    ld h, l                                       ; $5b7f: $65

jr_01d_5b80:
    ld h, h                                       ; $5b80: $64
    jr nz, jr_01d_5be9                            ; $5b81: $20 $66

    ld [hl], d                                    ; $5b83: $72

jr_01d_5b84:
    ld l, a                                       ; $5b84: $6f
    ld l, l                                       ; $5b85: $6d
    ld bc, $2061                                  ; $5b86: $01 $61 $20
    ld h, [hl]                                    ; $5b89: $66
    ld h, c                                       ; $5b8a: $61
    ld h, h                                       ; $5b8b: $64
    ld h, l                                       ; $5b8c: $65
    jr nz, jr_01d_5c03                            ; $5b8d: $20 $74

    ld l, a                                       ; $5b8f: $6f
    jr nz, jr_01d_5bf3                            ; $5b90: $20 $61

jr_01d_5b92:
    jr nz, jr_01d_5bf8                            ; $5b92: $20 $64

    ld [hl], d                                    ; $5b94: $72
    ld h, c                                       ; $5b95: $61
    ld [hl], a                                    ; $5b96: $77
    ld hl, $0003                                  ; $5b97: $21 $03 $00
    ld c, c                                       ; $5b9a: $49
    daa                                           ; $5b9b: $27
    ld l, h                                       ; $5b9c: $6c
    ld l, h                                       ; $5b9d: $6c
    jr nz, jr_01d_5c0f                            ; $5b9e: $20 $6f

jr_01d_5ba0:
    ld l, [hl]                                    ; $5ba0: $6e

jr_01d_5ba1:
    ld l, h                                       ; $5ba1: $6c
    ld a, c                                       ; $5ba2: $79
    jr nz, @+$66                                  ; $5ba3: $20 $64

    ld l, a                                       ; $5ba5: $6f
    jr nz, jr_01d_5c11                            ; $5ba6: $20 $69

    ld [hl], h                                    ; $5ba8: $74

jr_01d_5ba9:
    ld bc, $6e6f                                  ; $5ba9: $01 $6f $6e
    ld h, e                                       ; $5bac: $63
    ld h, l                                       ; $5bad: $65
    ld l, $20                                     ; $5bae: $2e $20
    ld d, e                                       ; $5bb0: $53
    ld l, b                                       ; $5bb1: $68
    ld h, c                                       ; $5bb2: $61
    ld l, h                                       ; $5bb3: $6c
    ld l, h                                       ; $5bb4: $6c
    jr nz, @+$4b                                  ; $5bb5: $20 $49

    jr nz, jr_01d_5c26                            ; $5bb7: $20 $6d

    ld h, c                                       ; $5bb9: $61
    ld l, e                                       ; $5bba: $6b
    ld h, l                                       ; $5bbb: $65
    ld bc, $6f79                                  ; $5bbc: $01 $79 $6f
    ld [hl], l                                    ; $5bbf: $75
    ld [hl], d                                    ; $5bc0: $72

jr_01d_5bc1:
    jr nz, @+$66                                  ; $5bc1: $20 $64

    ld [hl], d                                    ; $5bc3: $72
    ld h, c                                       ; $5bc4: $61
    ld [hl], a                                    ; $5bc5: $77

jr_01d_5bc6:
    jr nz, jr_01d_5c29                            ; $5bc6: $20 $61

    jr nz, jr_01d_5c30                            ; $5bc8: $20 $66

    ld h, c                                       ; $5bca: $61
    ld h, h                                       ; $5bcb: $64
    ld h, l                                       ; $5bcc: $65
    ccf                                           ; $5bcd: $3f
    nop                                           ; $5bce: $00
    ld e, c                                       ; $5bcf: $59
    ld l, a                                       ; $5bd0: $6f
    ld [hl], l                                    ; $5bd1: $75
    ld [hl], d                                    ; $5bd2: $72
    jr nz, jr_01d_5c48                            ; $5bd3: $20 $73

    ld l, b                                       ; $5bd5: $68
    ld l, a                                       ; $5bd6: $6f
    ld [hl], h                                    ; $5bd7: $74
    jr nz, @+$6a                                  ; $5bd8: $20 $68

jr_01d_5bda:
    ld h, c                                       ; $5bda: $61
    ld [hl], e                                    ; $5bdb: $73
    ld bc, $6562                                  ; $5bdc: $01 $62 $65
    ld h, l                                       ; $5bdf: $65

jr_01d_5be0:
    ld l, [hl]                                    ; $5be0: $6e
    jr nz, jr_01d_5c46                            ; $5be1: $20 $63

    ld l, b                                       ; $5be3: $68
    ld h, c                                       ; $5be4: $61
    ld l, [hl]                                    ; $5be5: $6e
    ld h, a                                       ; $5be6: $67
    ld h, l                                       ; $5be7: $65
    ld h, h                                       ; $5be8: $64

jr_01d_5be9:
    jr nz, jr_01d_5c51                            ; $5be9: $20 $66

    ld [hl], d                                    ; $5beb: $72
    ld l, a                                       ; $5bec: $6f
    ld l, l                                       ; $5bed: $6d
    ld bc, $2061                                  ; $5bee: $01 $61 $20
    ld h, h                                       ; $5bf1: $64
    ld [hl], d                                    ; $5bf2: $72

jr_01d_5bf3:
    ld h, c                                       ; $5bf3: $61
    ld [hl], a                                    ; $5bf4: $77
    jr nz, @+$76                                  ; $5bf5: $20 $74

    ld l, a                                       ; $5bf7: $6f

jr_01d_5bf8:
    jr nz, jr_01d_5c5b                            ; $5bf8: $20 $61

    jr nz, jr_01d_5c62                            ; $5bfa: $20 $66

    ld h, c                                       ; $5bfc: $61
    ld h, h                                       ; $5bfd: $64
    ld h, l                                       ; $5bfe: $65
    ld hl, $0003                                  ; $5bff: $21 $03 $00
    ld c, c                                       ; $5c02: $49

jr_01d_5c03:
    ld h, [hl]                                    ; $5c03: $66
    jr nz, jr_01d_5c7f                            ; $5c04: $20 $79

    ld l, a                                       ; $5c06: $6f
    ld [hl], l                                    ; $5c07: $75
    jr nz, jr_01d_5c6d                            ; $5c08: $20 $63

    ld l, b                                       ; $5c0a: $68
    ld h, c                                       ; $5c0b: $61
    ld l, [hl]                                    ; $5c0c: $6e
    ld h, a                                       ; $5c0d: $67
    ld h, l                                       ; $5c0e: $65

jr_01d_5c0f:
    jr nz, jr_01d_5c8a                            ; $5c0f: $20 $79

jr_01d_5c11:
    ld l, a                                       ; $5c11: $6f
    ld [hl], l                                    ; $5c12: $75
    ld [hl], d                                    ; $5c13: $72
    ld bc, $696d                                  ; $5c14: $01 $6d $69
    ld l, [hl]                                    ; $5c17: $6e
    ld h, h                                       ; $5c18: $64
    inc l                                         ; $5c19: $2c
    jr nz, jr_01d_5c88                            ; $5c1a: $20 $6c

    ld h, l                                       ; $5c1c: $65
    ld [hl], h                                    ; $5c1d: $74
    jr nz, jr_01d_5c8d                            ; $5c1e: $20 $6d

    ld h, l                                       ; $5c20: $65
    jr nz, jr_01d_5c8e                            ; $5c21: $20 $6b

    ld l, [hl]                                    ; $5c23: $6e
    ld l, a                                       ; $5c24: $6f
    ld [hl], a                                    ; $5c25: $77

jr_01d_5c26:
    ld l, $01                                     ; $5c26: $2e $01
    ld c, c                                       ; $5c28: $49

jr_01d_5c29:
    daa                                           ; $5c29: $27
    ld l, l                                       ; $5c2a: $6d
    jr nz, jr_01d_5c8e                            ; $5c2b: $20 $61

    ld l, h                                       ; $5c2d: $6c
    ld [hl], a                                    ; $5c2e: $77
    ld h, c                                       ; $5c2f: $61

jr_01d_5c30:
    ld a, c                                       ; $5c30: $79
    ld [hl], e                                    ; $5c31: $73
    jr nz, jr_01d_5c9c                            ; $5c32: $20 $68

    ld h, l                                       ; $5c34: $65
    ld [hl], d                                    ; $5c35: $72
    ld h, l                                       ; $5c36: $65
    ld l, $03                                     ; $5c37: $2e $03
    nop                                           ; $5c39: $00
    ld c, l                                       ; $5c3a: $4d
    ld h, c                                       ; $5c3b: $61
    ld [hl], d                                    ; $5c3c: $72
    ld l, c                                       ; $5c3d: $69
    ld l, a                                       ; $5c3e: $6f
    daa                                           ; $5c3f: $27
    ld [hl], e                                    ; $5c40: $73
    jr nz, jr_01d_5ca8                            ; $5c41: $20 $65

    ld [hl], c                                    ; $5c43: $71
    ld [hl], l                                    ; $5c44: $75
    ld h, c                                       ; $5c45: $61

jr_01d_5c46:
    ld l, h                                       ; $5c46: $6c
    inc l                                         ; $5c47: $2c

jr_01d_5c48:
    jr nz, jr_01d_5caf                            ; $5c48: $20 $65

    ld l, b                                       ; $5c4a: $68
    ccf                                           ; $5c4b: $3f
    ld bc, $6857                                  ; $5c4c: $01 $57 $68
    ld h, l                                       ; $5c4f: $65
    ld l, [hl]                                    ; $5c50: $6e

jr_01d_5c51:
    jr nz, jr_01d_5ccc                            ; $5c51: $20 $79

    ld l, a                                       ; $5c53: $6f
    ld [hl], l                                    ; $5c54: $75
    daa                                           ; $5c55: $27
    ld [hl], d                                    ; $5c56: $72
    ld h, l                                       ; $5c57: $65
    jr nz, jr_01d_5cbc                            ; $5c58: $20 $62

    ld h, l                                       ; $5c5a: $65

jr_01d_5c5b:
    ld [hl], h                                    ; $5c5b: $74
    ld [hl], h                                    ; $5c5c: $74
    ld h, l                                       ; $5c5d: $65
    ld [hl], d                                    ; $5c5e: $72
    ld bc, $6874                                  ; $5c5f: $01 $74 $68

jr_01d_5c62:
    ld h, c                                       ; $5c62: $61
    ld l, [hl]                                    ; $5c63: $6e
    jr nz, jr_01d_5cda                            ; $5c64: $20 $74

    ld l, b                                       ; $5c66: $68
    ld h, c                                       ; $5c67: $61
    ld [hl], h                                    ; $5c68: $74
    inc l                                         ; $5c69: $2c
    jr nz, jr_01d_5cb5                            ; $5c6a: $20 $49

    daa                                           ; $5c6c: $27

jr_01d_5c6d:
    ld l, h                                       ; $5c6d: $6c
    ld l, h                                       ; $5c6e: $6c
    jr nz, jr_01d_5cd3                            ; $5c6f: $20 $62

    ld h, l                                       ; $5c71: $65
    ld [bc], a                                    ; $5c72: $02
    ld [hl], a                                    ; $5c73: $77
    ld h, c                                       ; $5c74: $61
    ld [hl], h                                    ; $5c75: $74
    ld h, e                                       ; $5c76: $63
    ld l, b                                       ; $5c77: $68
    ld l, c                                       ; $5c78: $69
    ld l, [hl]                                    ; $5c79: $6e
    ld h, a                                       ; $5c7a: $67
    jr nz, jr_01d_5cf6                            ; $5c7b: $20 $79

    ld l, a                                       ; $5c7d: $6f
    ld [hl], l                                    ; $5c7e: $75

jr_01d_5c7f:
    ld l, $01                                     ; $5c7f: $2e $01
    ld c, e                                       ; $5c81: $4b
    ld h, l                                       ; $5c82: $65
    ld h, l                                       ; $5c83: $65
    ld [hl], b                                    ; $5c84: $70
    jr nz, jr_01d_5cfb                            ; $5c85: $20 $74

    ld [hl], d                                    ; $5c87: $72

jr_01d_5c88:
    ld h, c                                       ; $5c88: $61
    ld l, c                                       ; $5c89: $69

jr_01d_5c8a:
    ld l, [hl]                                    ; $5c8a: $6e
    ld l, c                                       ; $5c8b: $69
    ld l, [hl]                                    ; $5c8c: $6e

jr_01d_5c8d:
    ld h, a                                       ; $5c8d: $67

jr_01d_5c8e:
    jr nz, @+$63                                  ; $5c8e: $20 $61

    ld l, [hl]                                    ; $5c90: $6e
    ld h, h                                       ; $5c91: $64
    ld bc, $6f64                                  ; $5c92: $01 $64 $6f
    ld l, [hl]                                    ; $5c95: $6e
    daa                                           ; $5c96: $27
    ld [hl], h                                    ; $5c97: $74
    jr nz, jr_01d_5d0c                            ; $5c98: $20 $72

    ld h, l                                       ; $5c9a: $65
    ld h, a                                       ; $5c9b: $67

jr_01d_5c9c:
    ld [hl], d                                    ; $5c9c: $72
    ld h, l                                       ; $5c9d: $65
    ld [hl], e                                    ; $5c9e: $73
    ld [hl], e                                    ; $5c9f: $73
    ld hl, $0003                                  ; $5ca0: $21 $03 $00
    ld b, a                                       ; $5ca3: $47
    ld [hl], d                                    ; $5ca4: $72
    ld h, l                                       ; $5ca5: $65
    ld h, c                                       ; $5ca6: $61
    ld [hl], h                                    ; $5ca7: $74

jr_01d_5ca8:
    ld hl, $4e20                                  ; $5ca8: $21 $20 $4e
    ld l, a                                       ; $5cab: $6f
    ld [hl], a                                    ; $5cac: $77
    jr nz, jr_01d_5d15                            ; $5cad: $20 $66

jr_01d_5caf:
    ld l, a                                       ; $5caf: $6f
    ld [hl], d                                    ; $5cb0: $72
    jr nz, jr_01d_5d27                            ; $5cb1: $20 $74

    ld l, b                                       ; $5cb3: $68
    ld h, l                                       ; $5cb4: $65

jr_01d_5cb5:
    ld bc, $656e                                  ; $5cb5: $01 $6e $65
    ld a, b                                       ; $5cb8: $78
    ld [hl], h                                    ; $5cb9: $74
    jr nz, jr_01d_5d1f                            ; $5cba: $20 $63

jr_01d_5cbc:
    ld l, b                                       ; $5cbc: $68
    ld h, c                                       ; $5cbd: $61
    ld l, h                                       ; $5cbe: $6c
    ld l, h                                       ; $5cbf: $6c
    ld h, l                                       ; $5cc0: $65
    ld l, [hl]                                    ; $5cc1: $6e
    ld h, a                                       ; $5cc2: $67
    ld h, l                                       ; $5cc3: $65
    ld hl, $0003                                  ; $5cc4: $21 $03 $00
    ld d, h                                       ; $5cc7: $54
    ld l, b                                       ; $5cc8: $68
    ld l, a                                       ; $5cc9: $6f
    ld [hl], e                                    ; $5cca: $73
    ld h, l                                       ; $5ccb: $65

jr_01d_5ccc:
    jr nz, jr_01d_5d32                            ; $5ccc: $20 $64

    ld h, c                                       ; $5cce: $61
    ld [hl], d                                    ; $5ccf: $72
    ld l, [hl]                                    ; $5cd0: $6e
    jr nz, jr_01d_5d3e                            ; $5cd1: $20 $6b

jr_01d_5cd3:
    ld l, c                                       ; $5cd3: $69
    ld h, h                                       ; $5cd4: $64
    ld [hl], e                                    ; $5cd5: $73
    ld hl, $4201                                  ; $5cd6: $21 $01 $42
    ld h, c                                       ; $5cd9: $61

jr_01d_5cda:
    ld l, h                                       ; $5cda: $6c
    ld l, h                                       ; $5cdb: $6c
    ld [hl], e                                    ; $5cdc: $73
    jr nz, jr_01d_5d44                            ; $5cdd: $20 $65

    halt                                          ; $5cdf: $76
    ld h, l                                       ; $5ce0: $65
    ld [hl], d                                    ; $5ce1: $72
    ld a, c                                       ; $5ce2: $79
    ld [hl], a                                    ; $5ce3: $77
    ld l, b                                       ; $5ce4: $68
    ld h, l                                       ; $5ce5: $65
    ld [hl], d                                    ; $5ce6: $72
    ld h, l                                       ; $5ce7: $65
    ld hl, $0003                                  ; $5ce8: $21 $03 $00
    ld d, a                                       ; $5ceb: $57
    ld l, a                                       ; $5cec: $6f
    ld l, [hl]                                    ; $5ced: $6e
    daa                                           ; $5cee: $27
    ld [hl], h                                    ; $5cef: $74
    jr nz, @+$63                                  ; $5cf0: $20 $61

    ld l, [hl]                                    ; $5cf2: $6e
    ld a, c                                       ; $5cf3: $79
    ld l, a                                       ; $5cf4: $6f
    ld l, [hl]                                    ; $5cf5: $6e

jr_01d_5cf6:
    ld h, l                                       ; $5cf6: $65
    jr nz, jr_01d_5d61                            ; $5cf7: $20 $68

    ld h, l                                       ; $5cf9: $65
    ld l, h                                       ; $5cfa: $6c

jr_01d_5cfb:
    ld [hl], b                                    ; $5cfb: $70
    ld bc, $656d                                  ; $5cfc: $01 $6d $65
    jr nz, jr_01d_5d71                            ; $5cff: $20 $70

    ld l, c                                       ; $5d01: $69
    ld h, e                                       ; $5d02: $63
    ld l, e                                       ; $5d03: $6b
    jr nz, jr_01d_5d7b                            ; $5d04: $20 $75

    ld [hl], b                                    ; $5d06: $70
    jr nz, jr_01d_5d7d                            ; $5d07: $20 $74

    ld l, b                                       ; $5d09: $68
    ld h, l                                       ; $5d0a: $65
    ld [hl], e                                    ; $5d0b: $73

jr_01d_5d0c:
    ld h, l                                       ; $5d0c: $65
    ld bc, $6162                                  ; $5d0d: $01 $62 $61
    ld l, h                                       ; $5d10: $6c
    ld l, h                                       ; $5d11: $6c
    ld [hl], e                                    ; $5d12: $73
    ccf                                           ; $5d13: $3f
    inc bc                                        ; $5d14: $03

jr_01d_5d15:
    nop                                           ; $5d15: $00
    ld b, e                                       ; $5d16: $43
    ld h, c                                       ; $5d17: $61
    ld l, [hl]                                    ; $5d18: $6e
    jr nz, jr_01d_5d94                            ; $5d19: $20 $79

    ld l, a                                       ; $5d1b: $6f
    ld [hl], l                                    ; $5d1c: $75
    jr nz, jr_01d_5d83                            ; $5d1d: $20 $64

jr_01d_5d1f:
    ld l, a                                       ; $5d1f: $6f
    jr nz, jr_01d_5d8f                            ; $5d20: $20 $6d

    ld h, l                                       ; $5d22: $65
    ld bc, $2061                                  ; $5d23: $01 $61 $20
    ld h, [hl]                                    ; $5d26: $66

jr_01d_5d27:
    ld h, c                                       ; $5d27: $61
    halt                                          ; $5d28: $76
    ld l, a                                       ; $5d29: $6f
    ld [hl], d                                    ; $5d2a: $72
    ccf                                           ; $5d2b: $3f
    nop                                           ; $5d2c: $00
    ld e, c                                       ; $5d2d: $59
    ld h, l                                       ; $5d2e: $65
    ld h, c                                       ; $5d2f: $61
    ld l, b                                       ; $5d30: $68
    inc l                                         ; $5d31: $2c

jr_01d_5d32:
    jr nz, jr_01d_5dab                            ; $5d32: $20 $77

    ld l, b                                       ; $5d34: $68
    ld l, a                                       ; $5d35: $6f
    ld h, l                                       ; $5d36: $65
    halt                                          ; $5d37: $76
    ld h, l                                       ; $5d38: $65
    ld [hl], d                                    ; $5d39: $72
    jr nz, @+$6a                                  ; $5d3a: $20 $68

    ld l, c                                       ; $5d3c: $69
    ld [hl], h                                    ; $5d3d: $74

jr_01d_5d3e:
    ld bc, $6874                                  ; $5d3e: $01 $74 $68
    ld h, l                                       ; $5d41: $65
    jr nz, jr_01d_5da6                            ; $5d42: $20 $62

jr_01d_5d44:
    ld h, c                                       ; $5d44: $61
    ld l, h                                       ; $5d45: $6c
    ld l, h                                       ; $5d46: $6c
    ld [hl], e                                    ; $5d47: $73
    jr nz, jr_01d_5dab                            ; $5d48: $20 $61

    ld l, h                                       ; $5d4a: $6c
    ld l, h                                       ; $5d4b: $6c
    jr nz, jr_01d_5dbd                            ; $5d4c: $20 $6f

    halt                                          ; $5d4e: $76
    ld h, l                                       ; $5d4f: $65
    ld [hl], d                                    ; $5d50: $72
    ld bc, $6873                                  ; $5d51: $01 $73 $68
    ld l, a                                       ; $5d54: $6f
    ld [hl], l                                    ; $5d55: $75
    ld l, h                                       ; $5d56: $6c
    ld h, h                                       ; $5d57: $64
    jr nz, jr_01d_5dbd                            ; $5d58: $20 $63

    ld l, h                                       ; $5d5a: $6c
    ld h, l                                       ; $5d5b: $65
    ld h, c                                       ; $5d5c: $61
    ld l, [hl]                                    ; $5d5d: $6e
    jr nz, jr_01d_5dd5                            ; $5d5e: $20 $75

    ld [hl], b                                    ; $5d60: $70

jr_01d_5d61:
    ld l, $03                                     ; $5d61: $2e $03
    nop                                           ; $5d63: $00
    ld c, c                                       ; $5d64: $49
    jr nz, jr_01d_5dde                            ; $5d65: $20 $77

    ld h, c                                       ; $5d67: $61
    ld l, [hl]                                    ; $5d68: $6e
    ld [hl], h                                    ; $5d69: $74
    jr nz, jr_01d_5de5                            ; $5d6a: $20 $79

    ld l, a                                       ; $5d6c: $6f
    ld [hl], l                                    ; $5d6d: $75
    jr nz, jr_01d_5de4                            ; $5d6e: $20 $74

    ld l, a                                       ; $5d70: $6f

jr_01d_5d71:
    jr nz, @+$6a                                  ; $5d71: $20 $68

    ld l, c                                       ; $5d73: $69
    ld [hl], h                                    ; $5d74: $74
    ld bc, $6874                                  ; $5d75: $01 $74 $68
    ld h, l                                       ; $5d78: $65
    ld [hl], e                                    ; $5d79: $73
    ld h, l                                       ; $5d7a: $65

jr_01d_5d7b:
    jr nz, jr_01d_5ddf                            ; $5d7b: $20 $62

jr_01d_5d7d:
    ld h, c                                       ; $5d7d: $61
    ld l, h                                       ; $5d7e: $6c
    ld l, h                                       ; $5d7f: $6c
    ld [hl], e                                    ; $5d80: $73
    jr nz, jr_01d_5dec                            ; $5d81: $20 $69

jr_01d_5d83:
    ld l, [hl]                                    ; $5d83: $6e
    ld [hl], h                                    ; $5d84: $74
    ld l, a                                       ; $5d85: $6f
    ld bc, $6874                                  ; $5d86: $01 $74 $68
    ld h, c                                       ; $5d89: $61
    ld [hl], h                                    ; $5d8a: $74
    jr nz, jr_01d_5df0                            ; $5d8b: $20 $63

    ld l, c                                       ; $5d8d: $69
    ld [hl], d                                    ; $5d8e: $72

jr_01d_5d8f:
    ld h, e                                       ; $5d8f: $63
    ld l, h                                       ; $5d90: $6c
    ld h, l                                       ; $5d91: $65
    ld l, $02                                     ; $5d92: $2e $02

jr_01d_5d94:
    ld d, e                                       ; $5d94: $53
    ld h, l                                       ; $5d95: $65
    ld h, l                                       ; $5d96: $65
    ccf                                           ; $5d97: $3f
    jr nz, @+$49                                  ; $5d98: $20 $47

    ld h, l                                       ; $5d9a: $65
    ld [hl], h                                    ; $5d9b: $74
    jr nz, jr_01d_5dc5                            ; $5d9c: $20 $27

    ld h, l                                       ; $5d9e: $65
    ld l, l                                       ; $5d9f: $6d
    jr nz, jr_01d_5e0b                            ; $5da0: $20 $69

    ld l, [hl]                                    ; $5da2: $6e
    jr nz, jr_01d_5e19                            ; $5da3: $20 $74

    ld l, b                                       ; $5da5: $68

jr_01d_5da6:
    ld h, l                                       ; $5da6: $65
    ld bc, $6963                                  ; $5da7: $01 $63 $69
    ld [hl], d                                    ; $5daa: $72

jr_01d_5dab:
    ld h, e                                       ; $5dab: $63
    ld l, h                                       ; $5dac: $6c
    ld h, l                                       ; $5dad: $65
    inc l                                         ; $5dae: $2c
    jr nz, jr_01d_5e1d                            ; $5daf: $20 $6c

    ld l, c                                       ; $5db1: $69
    ld l, e                                       ; $5db2: $6b
    ld h, l                                       ; $5db3: $65
    jr nz, @+$76                                  ; $5db4: $20 $74

    ld l, b                                       ; $5db6: $68
    ld l, c                                       ; $5db7: $69
    ld [hl], e                                    ; $5db8: $73
    ld hl, $0003                                  ; $5db9: $21 $03 $00
    ld b, d                                       ; $5dbc: $42

jr_01d_5dbd:
    ld [hl], l                                    ; $5dbd: $75
    ld [hl], h                                    ; $5dbe: $74
    jr nz, jr_01d_5e25                            ; $5dbf: $20 $64

    ld l, a                                       ; $5dc1: $6f
    ld l, [hl]                                    ; $5dc2: $6e
    daa                                           ; $5dc3: $27
    ld [hl], h                                    ; $5dc4: $74

jr_01d_5dc5:
    jr nz, jr_01d_5e3b                            ; $5dc5: $20 $74

    ld h, c                                       ; $5dc7: $61
    ld l, e                                       ; $5dc8: $6b
    ld h, l                                       ; $5dc9: $65
    ld bc, $6f74                                  ; $5dca: $01 $74 $6f
    ld l, a                                       ; $5dcd: $6f
    jr nz, @+$6e                                  ; $5dce: $20 $6c

    ld l, a                                       ; $5dd0: $6f
    ld l, [hl]                                    ; $5dd1: $6e
    ld h, a                                       ; $5dd2: $67
    ld l, $2e                                     ; $5dd3: $2e $2e

jr_01d_5dd5:
    ld l, $49                                     ; $5dd5: $2e $49
    daa                                           ; $5dd7: $27
    ld l, l                                       ; $5dd8: $6d
    ld bc, $7270                                  ; $5dd9: $01 $70 $72
    ld h, l                                       ; $5ddc: $65
    ld [hl], h                                    ; $5ddd: $74

jr_01d_5dde:
    ld [hl], h                                    ; $5dde: $74

jr_01d_5ddf:
    ld a, c                                       ; $5ddf: $79
    jr nz, jr_01d_5e4b                            ; $5de0: $20 $69

    ld l, l                                       ; $5de2: $6d
    ld [hl], b                                    ; $5de3: $70

jr_01d_5de4:
    ld h, c                                       ; $5de4: $61

jr_01d_5de5:
    ld [hl], h                                    ; $5de5: $74
    ld l, c                                       ; $5de6: $69
    ld h, l                                       ; $5de7: $65
    ld l, [hl]                                    ; $5de8: $6e
    ld [hl], h                                    ; $5de9: $74
    ld l, $03                                     ; $5dea: $2e $03

jr_01d_5dec:
    nop                                           ; $5dec: $00
    ld e, c                                       ; $5ded: $59
    ld l, a                                       ; $5dee: $6f
    ld [hl], l                                    ; $5def: $75

jr_01d_5df0:
    daa                                           ; $5df0: $27
    ld [hl], d                                    ; $5df1: $72
    ld h, l                                       ; $5df2: $65
    jr nz, jr_01d_5e69                            ; $5df3: $20 $74

    ld l, a                                       ; $5df5: $6f
    ld l, a                                       ; $5df6: $6f
    jr nz, jr_01d_5e6c                            ; $5df7: $20 $73

    ld l, h                                       ; $5df9: $6c
    ld l, a                                       ; $5dfa: $6f
    ld [hl], a                                    ; $5dfb: $77
    ld l, $03                                     ; $5dfc: $2e $03
    nop                                           ; $5dfe: $00
    ld d, h                                       ; $5dff: $54
    ld h, e                                       ; $5e00: $63
    ld l, b                                       ; $5e01: $68
    ld l, $20                                     ; $5e02: $2e $20
    ld c, c                                       ; $5e04: $49
    daa                                           ; $5e05: $27
    ld l, h                                       ; $5e06: $6c
    ld l, h                                       ; $5e07: $6c
    jr nz, jr_01d_5e6e                            ; $5e08: $20 $64

    ld l, a                                       ; $5e0a: $6f

jr_01d_5e0b:
    jr nz, @+$76                                  ; $5e0b: $20 $74

    ld l, b                                       ; $5e0d: $68
    ld h, l                                       ; $5e0e: $65
    ld [hl], e                                    ; $5e0f: $73
    ld h, l                                       ; $5e10: $65
    ld l, $01                                     ; $5e11: $2e $01
    ld e, c                                       ; $5e13: $59
    ld l, a                                       ; $5e14: $6f
    ld [hl], l                                    ; $5e15: $75
    jr nz, @+$66                                  ; $5e16: $20 $64

    ld l, a                                       ; $5e18: $6f

jr_01d_5e19:
    jr nz, jr_01d_5e8f                            ; $5e19: $20 $74

    ld l, b                                       ; $5e1b: $68
    ld h, l                                       ; $5e1c: $65

jr_01d_5e1d:
    jr nz, @+$70                                  ; $5e1d: $20 $6e

    ld h, l                                       ; $5e1f: $65
    ld a, b                                       ; $5e20: $78
    ld [hl], h                                    ; $5e21: $74
    ld bc, $7562                                  ; $5e22: $01 $62 $75

jr_01d_5e25:
    ld l, [hl]                                    ; $5e25: $6e
    ld h, e                                       ; $5e26: $63
    ld l, b                                       ; $5e27: $68
    ld hl, $0003                                  ; $5e28: $21 $03 $00
    ld c, [hl]                                    ; $5e2b: $4e
    ld l, a                                       ; $5e2c: $6f
    jr nz, jr_01d_5e97                            ; $5e2d: $20 $68

    ld h, l                                       ; $5e2f: $65
    ld l, h                                       ; $5e30: $6c
    ld [hl], b                                    ; $5e31: $70
    jr nz, jr_01d_5e95                            ; $5e32: $20 $61

    ld [hl], h                                    ; $5e34: $74
    jr nz, @+$63                                  ; $5e35: $20 $61

    ld l, h                                       ; $5e37: $6c
    ld l, h                                       ; $5e38: $6c
    ld l, $2e                                     ; $5e39: $2e $2e

jr_01d_5e3b:
    ld l, $21                                     ; $5e3b: $2e $21
    inc bc                                        ; $5e3d: $03
    nop                                           ; $5e3e: $00
    ld c, l                                       ; $5e3f: $4d
    ld l, l                                       ; $5e40: $6d
    ld l, l                                       ; $5e41: $6d
    inc l                                         ; $5e42: $2c
    jr nz, jr_01d_5eb9                            ; $5e43: $20 $74

    ld l, b                                       ; $5e45: $68
    ld l, a                                       ; $5e46: $6f
    ld [hl], e                                    ; $5e47: $73
    ld h, l                                       ; $5e48: $65
    jr nz, @+$63                                  ; $5e49: $20 $61

jr_01d_5e4b:
    ld [hl], d                                    ; $5e4b: $72
    ld h, l                                       ; $5e4c: $65
    jr nz, jr_01d_5eb5                            ; $5e4d: $20 $66

    ld l, c                                       ; $5e4f: $69
    ld l, [hl]                                    ; $5e50: $6e
    ld h, l                                       ; $5e51: $65
    ld l, $01                                     ; $5e52: $2e $01
    ld c, c                                       ; $5e54: $49
    daa                                           ; $5e55: $27
    ld l, h                                       ; $5e56: $6c
    ld l, h                                       ; $5e57: $6c
    jr nz, jr_01d_5ebe                            ; $5e58: $20 $64

    ld l, a                                       ; $5e5a: $6f
    jr nz, jr_01d_5ed1                            ; $5e5b: $20 $74

    ld l, b                                       ; $5e5d: $68
    ld h, l                                       ; $5e5e: $65
    jr nz, jr_01d_5ed3                            ; $5e5f: $20 $72

    ld h, l                                       ; $5e61: $65
    ld [hl], e                                    ; $5e62: $73
    ld [hl], h                                    ; $5e63: $74
    ld l, $03                                     ; $5e64: $2e $03
    nop                                           ; $5e66: $00
    ld d, a                                       ; $5e67: $57
    ld h, l                                       ; $5e68: $65

jr_01d_5e69:
    jr nz, jr_01d_5ed1                            ; $5e69: $20 $66

    ld l, c                                       ; $5e6b: $69

jr_01d_5e6c:
    ld l, [hl]                                    ; $5e6c: $6e
    ld h, c                                       ; $5e6d: $61

jr_01d_5e6e:
    ld l, h                                       ; $5e6e: $6c
    ld l, h                                       ; $5e6f: $6c
    ld a, c                                       ; $5e70: $79
    jr nz, jr_01d_5ed9                            ; $5e71: $20 $66

    ld l, c                                       ; $5e73: $69
    ld l, [hl]                                    ; $5e74: $6e
    ld l, c                                       ; $5e75: $69
    ld [hl], e                                    ; $5e76: $73
    ld l, b                                       ; $5e77: $68
    ld h, l                                       ; $5e78: $65
    ld h, h                                       ; $5e79: $64
    ld hl, $4301                                  ; $5e7a: $21 $01 $43
    ld l, a                                       ; $5e7d: $6f
    ld l, l                                       ; $5e7e: $6d
    ld h, l                                       ; $5e7f: $65
    jr nz, jr_01d_5ee3                            ; $5e80: $20 $61

    ld l, [hl]                                    ; $5e82: $6e
    ld h, h                                       ; $5e83: $64
    jr nz, jr_01d_5eee                            ; $5e84: $20 $68

    ld h, l                                       ; $5e86: $65
    ld l, h                                       ; $5e87: $6c
    ld [hl], b                                    ; $5e88: $70
    jr nz, jr_01d_5ef8                            ; $5e89: $20 $6d

    ld h, l                                       ; $5e8b: $65
    ld bc, $656e                                  ; $5e8c: $01 $6e $65

jr_01d_5e8f:
    ld a, b                                       ; $5e8f: $78
    ld [hl], h                                    ; $5e90: $74
    jr nz, @+$76                                  ; $5e91: $20 $74

    ld l, c                                       ; $5e93: $69
    ld l, l                                       ; $5e94: $6d

jr_01d_5e95:
    ld h, l                                       ; $5e95: $65
    inc l                                         ; $5e96: $2c

jr_01d_5e97:
    jr nz, jr_01d_5f0d                            ; $5e97: $20 $74

    ld l, a                                       ; $5e99: $6f
    ld l, a                                       ; $5e9a: $6f
    ld l, $20                                     ; $5e9b: $2e $20
    ld c, a                                       ; $5e9d: $4f
    ld c, e                                       ; $5e9e: $4b
    ccf                                           ; $5e9f: $3f
    inc bc                                        ; $5ea0: $03
    nop                                           ; $5ea1: $00
    ld d, a                                       ; $5ea2: $57
    ld h, l                                       ; $5ea3: $65
    jr nz, @+$66                                  ; $5ea4: $20 $64

    ld l, c                                       ; $5ea6: $69
    ld h, h                                       ; $5ea7: $64
    jr nz, jr_01d_5f13                            ; $5ea8: $20 $69

    ld [hl], h                                    ; $5eaa: $74
    ld hl, $5420                                  ; $5eab: $21 $20 $54
    ld l, b                                       ; $5eae: $68
    ld h, c                                       ; $5eaf: $61
    ld l, [hl]                                    ; $5eb0: $6e
    ld l, e                                       ; $5eb1: $6b
    jr nz, @+$7b                                  ; $5eb2: $20 $79

    ld l, a                                       ; $5eb4: $6f

jr_01d_5eb5:
    ld [hl], l                                    ; $5eb5: $75
    ld bc, $6f73                                  ; $5eb6: $01 $73 $6f

jr_01d_5eb9:
    jr nz, jr_01d_5f28                            ; $5eb9: $20 $6d

    ld [hl], l                                    ; $5ebb: $75
    ld h, e                                       ; $5ebc: $63
    ld l, b                                       ; $5ebd: $68

jr_01d_5ebe:
    ld hl, $0003                                  ; $5ebe: $21 $03 $00
    ld b, c                                       ; $5ec1: $41
    ld l, l                                       ; $5ec2: $6d
    ld h, c                                       ; $5ec3: $61
    ld a, d                                       ; $5ec4: $7a
    ld l, c                                       ; $5ec5: $69
    ld l, [hl]                                    ; $5ec6: $6e
    ld h, a                                       ; $5ec7: $67
    ld hl, $5920                                  ; $5ec8: $21 $20 $59
    ld l, a                                       ; $5ecb: $6f
    ld [hl], l                                    ; $5ecc: $75
    jr nz, jr_01d_5f32                            ; $5ecd: $20 $63

    ld l, a                                       ; $5ecf: $6f
    ld [hl], l                                    ; $5ed0: $75

jr_01d_5ed1:
    ld l, h                                       ; $5ed1: $6c
    ld h, h                                       ; $5ed2: $64

jr_01d_5ed3:
    ld bc, $616d                                  ; $5ed3: $01 $6d $61
    ld l, [hl]                                    ; $5ed6: $6e
    ld h, c                                       ; $5ed7: $61
    ld h, a                                       ; $5ed8: $67

jr_01d_5ed9:
    ld h, l                                       ; $5ed9: $65
    jr nz, @+$76                                  ; $5eda: $20 $74

    ld l, b                                       ; $5edc: $68
    ld l, c                                       ; $5edd: $69
    ld [hl], e                                    ; $5ede: $73
    jr nz, jr_01d_5f51                            ; $5edf: $20 $70

    ld l, h                                       ; $5ee1: $6c
    ld h, c                                       ; $5ee2: $61

jr_01d_5ee3:
    ld h, e                                       ; $5ee3: $63
    ld h, l                                       ; $5ee4: $65
    ld hl, $5701                                  ; $5ee5: $21 $01 $57
    ld h, c                                       ; $5ee8: $61
    ld l, [hl]                                    ; $5ee9: $6e
    ld [hl], h                                    ; $5eea: $74
    jr nz, jr_01d_5f61                            ; $5eeb: $20 $74

    ld l, a                                       ; $5eed: $6f

jr_01d_5eee:
    jr nz, @+$76                                  ; $5eee: $20 $74

    ld [hl], d                                    ; $5ef0: $72
    ld a, c                                       ; $5ef1: $79
    ccf                                           ; $5ef2: $3f
    nop                                           ; $5ef3: $00
    ld c, c                                       ; $5ef4: $49
    jr nz, jr_01d_5f6b                            ; $5ef5: $20 $74

    ld l, b                                       ; $5ef7: $68

jr_01d_5ef8:
    ld l, a                                       ; $5ef8: $6f
    ld [hl], l                                    ; $5ef9: $75
    ld h, a                                       ; $5efa: $67
    ld l, b                                       ; $5efb: $68
    ld [hl], h                                    ; $5efc: $74
    jr nz, @+$75                                  ; $5efd: $20 $73

    ld l, a                                       ; $5eff: $6f
    ld l, $20                                     ; $5f00: $2e $20
    ld d, h                                       ; $5f02: $54
    ld l, a                                       ; $5f03: $6f
    ld l, a                                       ; $5f04: $6f
    ld bc, $6162                                  ; $5f05: $01 $62 $61
    ld h, h                                       ; $5f08: $64
    ld l, $20                                     ; $5f09: $2e $20
    ld e, c                                       ; $5f0b: $59
    ld l, a                                       ; $5f0c: $6f

jr_01d_5f0d:
    ld [hl], l                                    ; $5f0d: $75
    daa                                           ; $5f0e: $27
    halt                                          ; $5f0f: $76
    ld h, l                                       ; $5f10: $65
    jr nz, jr_01d_5f7a                            ; $5f11: $20 $67

jr_01d_5f13:
    ld l, a                                       ; $5f13: $6f
    ld [hl], h                                    ; $5f14: $74
    ld bc, $6877                                  ; $5f15: $01 $77 $68
    ld h, c                                       ; $5f18: $61
    ld [hl], h                                    ; $5f19: $74
    jr nz, jr_01d_5f85                            ; $5f1a: $20 $69

    ld [hl], h                                    ; $5f1c: $74
    jr nz, jr_01d_5f93                            ; $5f1d: $20 $74

    ld h, c                                       ; $5f1f: $61
    ld l, e                                       ; $5f20: $6b
    ld h, l                                       ; $5f21: $65
    ld [hl], e                                    ; $5f22: $73
    ld hl, $4202                                  ; $5f23: $21 $02 $42
    ld [hl], l                                    ; $5f26: $75
    ld [hl], h                                    ; $5f27: $74

jr_01d_5f28:
    jr nz, jr_01d_5fa3                            ; $5f28: $20 $79

    ld l, a                                       ; $5f2a: $6f
    ld [hl], l                                    ; $5f2b: $75
    jr nz, @+$74                                  ; $5f2c: $20 $72

    ld h, l                                       ; $5f2e: $65
    ld h, c                                       ; $5f2f: $61
    ld l, h                                       ; $5f30: $6c
    ld l, h                                       ; $5f31: $6c

jr_01d_5f32:
    ld a, c                                       ; $5f32: $79
    jr nz, jr_01d_5f99                            ; $5f33: $20 $64

    ld l, c                                       ; $5f35: $69
    ld h, h                                       ; $5f36: $64
    ld bc, $6568                                  ; $5f37: $01 $68 $65
    ld l, h                                       ; $5f3a: $6c
    ld [hl], b                                    ; $5f3b: $70
    jr nz, jr_01d_5fab                            ; $5f3c: $20 $6d

    ld h, l                                       ; $5f3e: $65
    jr nz, jr_01d_5fb0                            ; $5f3f: $20 $6f

    ld [hl], l                                    ; $5f41: $75
    ld [hl], h                                    ; $5f42: $74
    ld hl, $5401                                  ; $5f43: $21 $01 $54
    ld l, b                                       ; $5f46: $68
    ld h, c                                       ; $5f47: $61
    ld l, [hl]                                    ; $5f48: $6e
    ld l, e                                       ; $5f49: $6b
    jr nz, jr_01d_5fc5                            ; $5f4a: $20 $79

    ld l, a                                       ; $5f4c: $6f
    ld [hl], l                                    ; $5f4d: $75
    ld hl, $0003                                  ; $5f4e: $21 $03 $00

jr_01d_5f51:
    ld e, c                                       ; $5f51: $59
    ld h, l                                       ; $5f52: $65
    ld [hl], e                                    ; $5f53: $73
    ld hl, $4920                                  ; $5f54: $21 $20 $49
    daa                                           ; $5f57: $27
    ld l, l                                       ; $5f58: $6d
    jr nz, @+$75                                  ; $5f59: $20 $73

    ld l, a                                       ; $5f5b: $6f
    jr nz, jr_01d_5fc6                            ; $5f5c: $20 $68

    ld h, c                                       ; $5f5e: $61
    ld [hl], b                                    ; $5f5f: $70
    ld [hl], b                                    ; $5f60: $70

jr_01d_5f61:
    ld a, c                                       ; $5f61: $79
    ld hl, $4e01                                  ; $5f62: $21 $01 $4e
    ld l, a                                       ; $5f65: $6f
    ld [hl], a                                    ; $5f66: $77
    jr nz, jr_01d_5fe2                            ; $5f67: $20 $79

    ld l, a                                       ; $5f69: $6f
    ld [hl], l                                    ; $5f6a: $75

jr_01d_5f6b:
    jr nz, jr_01d_5fd0                            ; $5f6b: $20 $63

    ld l, h                                       ; $5f6d: $6c
    ld h, l                                       ; $5f6e: $65
    ld h, c                                       ; $5f6f: $61
    ld l, [hl]                                    ; $5f70: $6e
    jr nz, jr_01d_5fe8                            ; $5f71: $20 $75

    ld [hl], b                                    ; $5f73: $70
    ld bc, $6e69                                  ; $5f74: $01 $69 $6e
    ld [hl], e                                    ; $5f77: $73
    ld [hl], h                                    ; $5f78: $74
    ld h, l                                       ; $5f79: $65

jr_01d_5f7a:
    ld h, c                                       ; $5f7a: $61
    ld h, h                                       ; $5f7b: $64
    jr nz, jr_01d_5fed                            ; $5f7c: $20 $6f

    ld h, [hl]                                    ; $5f7e: $66
    jr nz, jr_01d_5fee                            ; $5f7f: $20 $6d

    ld h, l                                       ; $5f81: $65
    ld hl, $0003                                  ; $5f82: $21 $03 $00

jr_01d_5f85:
    ld d, e                                       ; $5f85: $53
    ld h, l                                       ; $5f86: $65
    ld h, l                                       ; $5f87: $65
    jr nz, jr_01d_6003                            ; $5f88: $20 $79

    ld l, a                                       ; $5f8a: $6f
    ld [hl], l                                    ; $5f8b: $75
    jr nz, jr_01d_5fef                            ; $5f8c: $20 $61

    ld [hl], d                                    ; $5f8e: $72
    ld l, a                                       ; $5f8f: $6f
    ld [hl], l                                    ; $5f90: $75
    ld l, [hl]                                    ; $5f91: $6e
    ld h, h                                       ; $5f92: $64

jr_01d_5f93:
    ld l, $03                                     ; $5f93: $2e $03
    nop                                           ; $5f95: $00
    ld c, b                                       ; $5f96: $48
    ld b, c                                       ; $5f97: $41
    ld c, b                                       ; $5f98: $48

jr_01d_5f99:
    ld hl, $4a20                                  ; $5f99: $21 $20 $4a
    ld [hl], l                                    ; $5f9c: $75
    ld [hl], e                                    ; $5f9d: $73
    ld [hl], h                                    ; $5f9e: $74
    jr nz, jr_01d_600c                            ; $5f9f: $20 $6b

    ld l, c                                       ; $5fa1: $69
    ld h, h                                       ; $5fa2: $64

jr_01d_5fa3:
    ld h, h                                       ; $5fa3: $64
    ld l, c                                       ; $5fa4: $69
    ld l, [hl]                                    ; $5fa5: $6e
    ld h, a                                       ; $5fa6: $67
    ld hl, $0003                                  ; $5fa7: $21 $03 $00
    ld b, h                                       ; $5faa: $44

jr_01d_5fab:
    ld l, c                                       ; $5fab: $69
    ld h, h                                       ; $5fac: $64
    ld l, [hl]                                    ; $5fad: $6e
    daa                                           ; $5fae: $27
    ld [hl], h                                    ; $5faf: $74

jr_01d_5fb0:
    jr nz, jr_01d_601f                            ; $5fb0: $20 $6d

    ld h, l                                       ; $5fb2: $65
    ld h, c                                       ; $5fb3: $61
    ld l, [hl]                                    ; $5fb4: $6e
    jr nz, jr_01d_602b                            ; $5fb5: $20 $74

    ld l, a                                       ; $5fb7: $6f
    ld bc, $6373                                  ; $5fb8: $01 $73 $63
    ld h, c                                       ; $5fbb: $61
    ld [hl], d                                    ; $5fbc: $72
    ld h, l                                       ; $5fbd: $65
    jr nz, @+$7b                                  ; $5fbe: $20 $79

    ld l, a                                       ; $5fc0: $6f
    ld [hl], l                                    ; $5fc1: $75
    ld l, $20                                     ; $5fc2: $2e $20
    ld d, h                                       ; $5fc4: $54

jr_01d_5fc5:
    ld l, b                                       ; $5fc5: $68

jr_01d_5fc6:
    ld h, c                                       ; $5fc6: $61
    ld l, [hl]                                    ; $5fc7: $6e
    ld l, e                                       ; $5fc8: $6b
    ld bc, $6f79                                  ; $5fc9: $01 $79 $6f
    ld [hl], l                                    ; $5fcc: $75
    jr nz, @+$68                                  ; $5fcd: $20 $66

    ld l, a                                       ; $5fcf: $6f

jr_01d_5fd0:
    ld [hl], d                                    ; $5fd0: $72
    jr nz, jr_01d_604c                            ; $5fd1: $20 $79

    ld l, a                                       ; $5fd3: $6f
    ld [hl], l                                    ; $5fd4: $75
    ld [hl], d                                    ; $5fd5: $72
    jr nz, @+$6a                                  ; $5fd6: $20 $68

    ld h, l                                       ; $5fd8: $65
    ld l, h                                       ; $5fd9: $6c
    ld [hl], b                                    ; $5fda: $70
    ld hl, $0003                                  ; $5fdb: $21 $03 $00
    ld c, c                                       ; $5fde: $49
    jr nz, jr_01d_6044                            ; $5fdf: $20 $63

    ld l, h                                       ; $5fe1: $6c

jr_01d_5fe2:
    ld h, l                                       ; $5fe2: $65
    ld h, c                                       ; $5fe3: $61
    ld l, [hl]                                    ; $5fe4: $6e
    inc l                                         ; $5fe5: $2c
    jr nz, jr_01d_605c                            ; $5fe6: $20 $74

jr_01d_5fe8:
    ld l, b                                       ; $5fe8: $68
    ld h, l                                       ; $5fe9: $65
    ld l, [hl]                                    ; $5fea: $6e
    jr nz, jr_01d_6061                            ; $5feb: $20 $74

jr_01d_5fed:
    ld l, b                                       ; $5fed: $68

jr_01d_5fee:
    ld h, l                                       ; $5fee: $65

jr_01d_5fef:
    ld a, c                                       ; $5fef: $79
    ld bc, $656d                                  ; $5ff0: $01 $6d $65
    ld [hl], e                                    ; $5ff3: $73
    ld [hl], e                                    ; $5ff4: $73
    jr nz, jr_01d_6060                            ; $5ff5: $20 $69

    ld [hl], h                                    ; $5ff7: $74
    jr nz, jr_01d_606f                            ; $5ff8: $20 $75

    ld [hl], b                                    ; $5ffa: $70
    ld hl, $4901                                  ; $5ffb: $21 $01 $49
    ld [hl], h                                    ; $5ffe: $74
    jr nz, jr_01d_606e                            ; $5fff: $20 $6d

    ld h, c                                       ; $6001: $61
    ld l, e                                       ; $6002: $6b

jr_01d_6003:
    ld h, l                                       ; $6003: $65
    ld [hl], e                                    ; $6004: $73
    jr nz, jr_01d_6074                            ; $6005: $20 $6d

    ld h, l                                       ; $6007: $65
    jr nz, jr_01d_607d                            ; $6008: $20 $73

    ld l, c                                       ; $600a: $69
    ld h, e                                       ; $600b: $63

jr_01d_600c:
    ld l, e                                       ; $600c: $6b
    ld hl, $0003                                  ; $600d: $21 $03 $00
    ld d, a                                       ; $6010: $57
    ld h, c                                       ; $6011: $61
    ld l, [hl]                                    ; $6012: $6e
    ld [hl], h                                    ; $6013: $74
    jr nz, @+$76                                  ; $6014: $20 $74

    ld l, a                                       ; $6016: $6f
    jr nz, @+$72                                  ; $6017: $20 $70

    ld l, h                                       ; $6019: $6c
    ld h, c                                       ; $601a: $61
    ld a, c                                       ; $601b: $79
    ccf                                           ; $601c: $3f
    nop                                           ; $601d: $00
    ld c, d                                       ; $601e: $4a

jr_01d_601f:
    ld [hl], l                                    ; $601f: $75
    ld [hl], e                                    ; $6020: $73
    ld [hl], h                                    ; $6021: $74
    jr nz, @+$6e                                  ; $6022: $20 $6c

    ld l, c                                       ; $6024: $69
    ld l, e                                       ; $6025: $6b
    ld h, l                                       ; $6026: $65
    jr nz, jr_01d_6072                            ; $6027: $20 $49

    jr nz, jr_01d_609e                            ; $6029: $20 $73

jr_01d_602b:
    ld h, c                                       ; $602b: $61
    ld l, c                                       ; $602c: $69
    ld h, h                                       ; $602d: $64
    inc l                                         ; $602e: $2c
    ld bc, $7469                                  ; $602f: $01 $69 $74
    daa                                           ; $6032: $27
    ld [hl], e                                    ; $6033: $73
    jr nz, jr_01d_6097                            ; $6034: $20 $61

    ld l, h                                       ; $6036: $6c
    ld l, h                                       ; $6037: $6c
    jr nz, @+$74                                  ; $6038: $20 $72

    ld l, b                                       ; $603a: $68
    ld a, c                                       ; $603b: $79
    ld [hl], h                                    ; $603c: $74
    ld l, b                                       ; $603d: $68
    ld l, l                                       ; $603e: $6d
    ld hl, $0003                                  ; $603f: $21 $03 $00
    ld b, c                                       ; $6042: $41
    ld l, b                                       ; $6043: $68

jr_01d_6044:
    inc l                                         ; $6044: $2c
    jr nz, jr_01d_60b5                            ; $6045: $20 $6e

    ld l, a                                       ; $6047: $6f
    jr nz, jr_01d_60b1                            ; $6048: $20 $67

    ld l, a                                       ; $604a: $6f
    ld l, a                                       ; $604b: $6f

jr_01d_604c:
    ld h, h                                       ; $604c: $64
    ld l, $20                                     ; $604d: $2e $20
    ld b, d                                       ; $604f: $42
    ld [hl], l                                    ; $6050: $75
    ld [hl], h                                    ; $6051: $74
    ld bc, $6e75                                  ; $6052: $01 $75 $6e
    ld [hl], b                                    ; $6055: $70
    ld l, h                                       ; $6056: $6c
    ld h, c                                       ; $6057: $61
    ld a, c                                       ; $6058: $79
    ld h, c                                       ; $6059: $61
    ld h, d                                       ; $605a: $62
    ld l, h                                       ; $605b: $6c

jr_01d_605c:
    ld h, l                                       ; $605c: $65
    ld [hl], e                                    ; $605d: $73
    jr nz, jr_01d_60c1                            ; $605e: $20 $61

jr_01d_6060:
    ld [hl], d                                    ; $6060: $72

jr_01d_6061:
    ld h, l                                       ; $6061: $65
    ld bc, $6874                                  ; $6062: $01 $74 $68
    ld h, l                                       ; $6065: $65
    jr nz, @+$63                                  ; $6066: $20 $61

    ld h, d                                       ; $6068: $62
    ld [hl], e                                    ; $6069: $73
    ld l, a                                       ; $606a: $6f
    ld l, h                                       ; $606b: $6c
    ld [hl], l                                    ; $606c: $75
    ld [hl], h                                    ; $606d: $74

jr_01d_606e:
    ld h, l                                       ; $606e: $65

jr_01d_606f:
    jr nz, jr_01d_60e8                            ; $606f: $20 $77

    ld l, a                                       ; $6071: $6f

jr_01d_6072:
    ld [hl], d                                    ; $6072: $72
    ld [hl], e                                    ; $6073: $73

jr_01d_6074:
    ld [hl], h                                    ; $6074: $74
    ld hl, $0003                                  ; $6075: $21 $03 $00
    ld c, c                                       ; $6078: $49
    daa                                           ; $6079: $27
    ld l, l                                       ; $607a: $6d
    jr nz, @+$64                                  ; $607b: $20 $62

jr_01d_607d:
    ld h, l                                       ; $607d: $65
    ld h, a                                       ; $607e: $67
    ld h, a                                       ; $607f: $67
    ld l, c                                       ; $6080: $69
    ld l, [hl]                                    ; $6081: $6e
    ld h, a                                       ; $6082: $67
    jr nz, jr_01d_60fe                            ; $6083: $20 $79

    ld l, a                                       ; $6085: $6f
    ld [hl], l                                    ; $6086: $75
    inc l                                         ; $6087: $2c
    ld bc, $6c70                                  ; $6088: $01 $70 $6c
    ld h, l                                       ; $608b: $65
    ld h, c                                       ; $608c: $61
    ld [hl], e                                    ; $608d: $73
    ld h, l                                       ; $608e: $65
    ld l, $20                                     ; $608f: $2e $20
    ld b, a                                       ; $6091: $47
    ld l, c                                       ; $6092: $69
    halt                                          ; $6093: $76
    ld h, l                                       ; $6094: $65
    jr nz, jr_01d_610c                            ; $6095: $20 $75

jr_01d_6097:
    ld [hl], b                                    ; $6097: $70
    ld l, $03                                     ; $6098: $2e $03
    nop                                           ; $609a: $00
    ld b, d                                       ; $609b: $42
    ld [hl], l                                    ; $609c: $75
    ld [hl], h                                    ; $609d: $74

jr_01d_609e:
    jr nz, jr_01d_60e9                            ; $609e: $20 $49

    jr nz, @+$65                                  ; $60a0: $20 $63

    ld h, c                                       ; $60a2: $61
    ld l, [hl]                                    ; $60a3: $6e
    jr nz, @+$69                                  ; $60a4: $20 $67

    ld h, l                                       ; $60a6: $65
    ld [hl], h                                    ; $60a7: $74
    jr nz, jr_01d_6119                            ; $60a8: $20 $6f

    ld l, [hl]                                    ; $60aa: $6e
    ld bc, $7267                                  ; $60ab: $01 $67 $72
    ld h, l                                       ; $60ae: $65
    ld h, l                                       ; $60af: $65
    ld l, [hl]                                    ; $60b0: $6e

jr_01d_60b1:
    jr nz, jr_01d_6119                            ; $60b1: $20 $66

    ld [hl], d                                    ; $60b3: $72
    ld l, a                                       ; $60b4: $6f

jr_01d_60b5:
    ld l, l                                       ; $60b5: $6d
    jr nz, @+$6a                                  ; $60b6: $20 $68

    ld h, l                                       ; $60b8: $65
    ld [hl], d                                    ; $60b9: $72
    ld h, l                                       ; $60ba: $65
    ld hl, $0003                                  ; $60bb: $21 $03 $00
    ld [hl+], a                                   ; $60be: $22
    ld d, a                                       ; $60bf: $57
    ld l, b                                       ; $60c0: $68

jr_01d_60c1:
    ld h, c                                       ; $60c1: $61
    ld [hl], h                                    ; $60c2: $74
    jr nz, jr_01d_6126                            ; $60c3: $20 $61

    ld l, l                                       ; $60c5: $6d
    jr nz, jr_01d_6111                            ; $60c6: $20 $49

    jr nz, jr_01d_612e                            ; $60c8: $20 $64

    ld l, a                                       ; $60ca: $6f
    ld l, c                                       ; $60cb: $69
    ld l, [hl]                                    ; $60cc: $6e
    ld h, a                                       ; $60cd: $67
    ccf                                           ; $60ce: $3f
    ld [hl+], a                                   ; $60cf: $22
    inc bc                                        ; $60d0: $03
    nop                                           ; $60d1: $00
    ld c, b                                       ; $60d2: $48
    ld l, c                                       ; $60d3: $69
    ld [hl], e                                    ; $60d4: $73
    jr nz, @+$76                                  ; $60d5: $20 $74

    ld h, l                                       ; $60d7: $65
    ld h, l                                       ; $60d8: $65
    jr nz, jr_01d_614e                            ; $60d9: $20 $73

    ld l, b                                       ; $60db: $68
    ld l, a                                       ; $60dc: $6f
    ld [hl], h                                    ; $60dd: $74
    ld bc, $616c                                  ; $60de: $01 $6c $61
    ld l, [hl]                                    ; $60e1: $6e
    ld h, h                                       ; $60e2: $64
    ld h, l                                       ; $60e3: $65
    ld h, h                                       ; $60e4: $64
    jr nz, jr_01d_6156                            ; $60e5: $20 $6f

    halt                                          ; $60e7: $76

jr_01d_60e8:
    ld h, l                                       ; $60e8: $65

jr_01d_60e9:
    ld [hl], d                                    ; $60e9: $72
    jr nz, @+$6a                                  ; $60ea: $20 $68

    ld h, l                                       ; $60ec: $65
    ld [hl], d                                    ; $60ed: $72
    ld h, l                                       ; $60ee: $65
    ld l, $03                                     ; $60ef: $2e $03
    nop                                           ; $60f1: $00
    ld b, l                                       ; $60f2: $45
    halt                                          ; $60f3: $76
    ld h, l                                       ; $60f4: $65
    ld [hl], d                                    ; $60f5: $72
    ld a, c                                       ; $60f6: $79
    jr nz, jr_01d_616d                            ; $60f7: $20 $74

    ld l, c                                       ; $60f9: $69
    ld l, l                                       ; $60fa: $6d
    ld h, l                                       ; $60fb: $65
    jr nz, jr_01d_6147                            ; $60fc: $20 $49

jr_01d_60fe:
    jr nz, jr_01d_6173                            ; $60fe: $20 $73

    ld l, b                                       ; $6100: $68
    ld l, a                                       ; $6101: $6f
    ld l, a                                       ; $6102: $6f
    ld [hl], h                                    ; $6103: $74
    ld bc, $6f66                                  ; $6104: $01 $66 $6f
    ld [hl], d                                    ; $6107: $72
    jr nz, jr_01d_617e                            ; $6108: $20 $74

    ld l, b                                       ; $610a: $68
    ld h, l                                       ; $610b: $65

jr_01d_610c:
    jr nz, jr_01d_6175                            ; $610c: $20 $67

    ld [hl], d                                    ; $610e: $72
    ld h, l                                       ; $610f: $65
    ld h, l                                       ; $6110: $65

jr_01d_6111:
    ld l, [hl]                                    ; $6111: $6e
    inc l                                         ; $6112: $2c
    ld bc, $2049                                  ; $6113: $01 $49 $20
    ld h, h                                       ; $6116: $64
    ld [hl], l                                    ; $6117: $75
    ld l, [hl]                                    ; $6118: $6e

jr_01d_6119:
    ld l, e                                       ; $6119: $6b
    jr nz, jr_01d_6185                            ; $611a: $20 $69

    ld [hl], h                                    ; $611c: $74
    ld l, $2e                                     ; $611d: $2e $2e
    ld l, $03                                     ; $611f: $2e $03
    nop                                           ; $6121: $00
    ld d, e                                       ; $6122: $53
    ld l, a                                       ; $6123: $6f
    jr nz, jr_01d_6189                            ; $6124: $20 $63

jr_01d_6126:
    ld h, c                                       ; $6126: $61
    ld l, h                                       ; $6127: $6c
    ld l, h                                       ; $6128: $6c
    jr nz, jr_01d_6194                            ; $6129: $20 $69

    ld [hl], h                                    ; $612b: $74
    jr nz, jr_01d_61a3                            ; $612c: $20 $75

jr_01d_612e:
    ld l, [hl]                                    ; $612e: $6e
    ld [hl], b                                    ; $612f: $70
    ld l, h                                       ; $6130: $6c
    ld h, c                                       ; $6131: $61
    ld a, c                                       ; $6132: $79
    dec l                                         ; $6133: $2d
    ld bc, $6261                                  ; $6134: $01 $61 $62
    ld l, h                                       ; $6137: $6c
    ld h, l                                       ; $6138: $65
    jr nz, @+$63                                  ; $6139: $20 $61

    ld l, [hl]                                    ; $613b: $6e
    ld h, h                                       ; $613c: $64
    jr nz, jr_01d_61ac                            ; $613d: $20 $6d

    ld [hl], l                                    ; $613f: $75
    ld l, h                                       ; $6140: $6c
    ld l, h                                       ; $6141: $6c
    ld l, c                                       ; $6142: $69
    ld h, a                                       ; $6143: $67
    ld h, c                                       ; $6144: $61
    ld l, [hl]                                    ; $6145: $6e
    inc l                                         ; $6146: $2c

jr_01d_6147:
    ld bc, $726f                                  ; $6147: $01 $6f $72
    jr nz, jr_01d_61b3                            ; $614a: $20 $67

    ld l, c                                       ; $614c: $69
    halt                                          ; $614d: $76

jr_01d_614e:
    ld h, l                                       ; $614e: $65
    jr nz, jr_01d_61c6                            ; $614f: $20 $75

    ld [hl], b                                    ; $6151: $70
    inc l                                         ; $6152: $2c
    jr nz, jr_01d_61c7                            ; $6153: $20 $72

    ld l, c                                       ; $6155: $69

jr_01d_6156:
    ld h, a                                       ; $6156: $67
    ld l, b                                       ; $6157: $68
    ld [hl], h                                    ; $6158: $74
    ccf                                           ; $6159: $3f
    inc bc                                        ; $615a: $03
    nop                                           ; $615b: $00
    ld c, [hl]                                    ; $615c: $4e
    ld l, a                                       ; $615d: $6f
    ld hl, $4e20                                  ; $615e: $21 $20 $4e
    ld l, a                                       ; $6161: $6f
    ld hl, $4e20                                  ; $6162: $21 $20 $4e
    ld c, a                                       ; $6165: $4f
    ld hl, $5420                                  ; $6166: $21 $20 $54
    ld l, b                                       ; $6169: $68
    ld h, l                                       ; $616a: $65
    ld [hl], d                                    ; $616b: $72
    ld h, l                                       ; $616c: $65

jr_01d_616d:
    daa                                           ; $616d: $27
    ld [hl], e                                    ; $616e: $73
    ld bc, $6f67                                  ; $616f: $01 $67 $6f
    ld [hl], h                                    ; $6172: $74

jr_01d_6173:
    jr nz, jr_01d_61e9                            ; $6173: $20 $74

jr_01d_6175:
    ld l, a                                       ; $6175: $6f
    jr nz, @+$64                                  ; $6176: $20 $62

    ld h, l                                       ; $6178: $65
    jr nz, jr_01d_61dc                            ; $6179: $20 $61

    jr nz, jr_01d_61f4                            ; $617b: $20 $77

    ld h, c                                       ; $617d: $61

jr_01d_617e:
    ld a, c                                       ; $617e: $79
    ld bc, $6f74                                  ; $617f: $01 $74 $6f
    jr nz, @+$66                                  ; $6182: $20 $64

    ld l, a                                       ; $6184: $6f

jr_01d_6185:
    jr nz, jr_01d_61fb                            ; $6185: $20 $74

    ld l, b                                       ; $6187: $68
    ld l, c                                       ; $6188: $69

jr_01d_6189:
    ld [hl], e                                    ; $6189: $73
    ld hl, $0003                                  ; $618a: $21 $03 $00
    ld b, d                                       ; $618d: $42
    ld [hl], l                                    ; $618e: $75
    ld [hl], h                                    ; $618f: $74
    inc l                                         ; $6190: $2c
    jr nz, jr_01d_620c                            ; $6191: $20 $79

    ld l, a                                       ; $6193: $6f

jr_01d_6194:
    ld [hl], l                                    ; $6194: $75
    daa                                           ; $6195: $27
    ld [hl], d                                    ; $6196: $72
    ld h, l                                       ; $6197: $65
    jr nz, jr_01d_6203                            ; $6198: $20 $69

    ld l, [hl]                                    ; $619a: $6e
    jr nz, jr_01d_6211                            ; $619b: $20 $74

    ld l, b                                       ; $619d: $68
    ld h, l                                       ; $619e: $65
    ld bc, $6f72                                  ; $619f: $01 $72 $6f
    ld [hl], l                                    ; $61a2: $75

jr_01d_61a3:
    ld h, a                                       ; $61a3: $67
    ld l, b                                       ; $61a4: $68
    inc l                                         ; $61a5: $2c
    jr nz, @+$75                                  ; $61a6: $20 $73

    ld l, a                                       ; $61a8: $6f
    jr nz, @+$7b                                  ; $61a9: $20 $79

    ld l, a                                       ; $61ab: $6f

jr_01d_61ac:
    ld [hl], l                                    ; $61ac: $75
    ld [hl], d                                    ; $61ad: $72
    jr nz, jr_01d_6227                            ; $61ae: $20 $77

    ld l, a                                       ; $61b0: $6f
    ld l, a                                       ; $61b1: $6f
    ld h, h                                       ; $61b2: $64

jr_01d_61b3:
    ld bc, $6f77                                  ; $61b3: $01 $77 $6f
    ld l, [hl]                                    ; $61b6: $6e
    daa                                           ; $61b7: $27
    ld [hl], h                                    ; $61b8: $74
    jr nz, jr_01d_622d                            ; $61b9: $20 $72

    ld h, l                                       ; $61bb: $65
    ld h, c                                       ; $61bc: $61
    ld h, e                                       ; $61bd: $63
    ld l, b                                       ; $61be: $68
    inc l                                         ; $61bf: $2c
    jr nz, jr_01d_6234                            ; $61c0: $20 $72

    ld l, c                                       ; $61c2: $69
    ld h, a                                       ; $61c3: $67
    ld l, b                                       ; $61c4: $68
    ld [hl], h                                    ; $61c5: $74

jr_01d_61c6:
    ccf                                           ; $61c6: $3f

jr_01d_61c7:
    ld [bc], a                                    ; $61c7: $02
    ld b, c                                       ; $61c8: $41
    jr nz, jr_01d_623b                            ; $61c9: $20 $70

    ld l, a                                       ; $61cb: $6f
    ld [hl], a                                    ; $61cc: $77
    ld h, l                                       ; $61cd: $65
    ld [hl], d                                    ; $61ce: $72
    jr nz, jr_01d_6239                            ; $61cf: $20 $68

    ld l, c                                       ; $61d1: $69
    ld [hl], h                                    ; $61d2: $74
    ld [hl], h                                    ; $61d3: $74
    ld h, l                                       ; $61d4: $65
    ld [hl], d                                    ; $61d5: $72
    daa                                           ; $61d6: $27
    ld [hl], e                                    ; $61d7: $73
    ld bc, $6e6f                                  ; $61d8: $01 $6f $6e
    ld h, l                                       ; $61db: $65

jr_01d_61dc:
    jr nz, jr_01d_6252                            ; $61dc: $20 $74

    ld l, b                                       ; $61de: $68
    ld l, c                                       ; $61df: $69
    ld l, [hl]                                    ; $61e0: $6e
    ld h, a                                       ; $61e1: $67
    inc l                                         ; $61e2: $2c
    jr nz, jr_01d_6247                            ; $61e3: $20 $62

    ld [hl], l                                    ; $61e5: $75
    ld [hl], h                                    ; $61e6: $74
    jr nz, jr_01d_6262                            ; $61e7: $20 $79

jr_01d_61e9:
    ld l, a                                       ; $61e9: $6f
    ld [hl], l                                    ; $61ea: $75
    ld bc, $6163                                  ; $61eb: $01 $63 $61
    ld l, [hl]                                    ; $61ee: $6e
    jr nz, jr_01d_6260                            ; $61ef: $20 $6f

    ld l, [hl]                                    ; $61f1: $6e
    ld l, h                                       ; $61f2: $6c
    ld a, c                                       ; $61f3: $79

jr_01d_61f4:
    jr nz, jr_01d_625e                            ; $61f4: $20 $68

    ld l, c                                       ; $61f6: $69
    ld [hl], h                                    ; $61f7: $74
    jr nz, jr_01d_622b                            ; $61f8: $20 $31

    inc sp                                        ; $61fa: $33

jr_01d_61fb:
    jr nc, jr_01d_6256                            ; $61fb: $30 $59

    ld l, $03                                     ; $61fd: $2e $03
    nop                                           ; $61ff: $00
    ld b, h                                       ; $6200: $44
    ld l, a                                       ; $6201: $6f
    ld l, [hl]                                    ; $6202: $6e

jr_01d_6203:
    daa                                           ; $6203: $27
    ld [hl], h                                    ; $6204: $74
    jr nz, jr_01d_6280                            ; $6205: $20 $79

    ld l, a                                       ; $6207: $6f
    ld [hl], l                                    ; $6208: $75
    jr nz, @+$76                                  ; $6209: $20 $74

    ld l, b                                       ; $620b: $68

jr_01d_620c:
    ld l, c                                       ; $620c: $69
    ld l, [hl]                                    ; $620d: $6e
    ld l, e                                       ; $620e: $6b
    ccf                                           ; $620f: $3f
    nop                                           ; $6210: $00

jr_01d_6211:
    ld e, c                                       ; $6211: $59
    ld l, a                                       ; $6212: $6f
    ld [hl], l                                    ; $6213: $75
    jr nz, jr_01d_628a                            ; $6214: $20 $74

    ld l, b                                       ; $6216: $68
    ld l, c                                       ; $6217: $69
    ld l, [hl]                                    ; $6218: $6e
    ld l, e                                       ; $6219: $6b
    jr nz, jr_01d_628f                            ; $621a: $20 $73

    ld l, a                                       ; $621c: $6f
    inc l                                         ; $621d: $2c
    jr nz, jr_01d_6294                            ; $621e: $20 $74

    ld l, a                                       ; $6220: $6f
    ld l, a                                       ; $6221: $6f
    ccf                                           ; $6222: $3f
    ld bc, $6553                                  ; $6223: $01 $53 $65
    ld h, l                                       ; $6226: $65

jr_01d_6227:
    ld hl, $4720                                  ; $6227: $21 $20 $47
    ld l, c                                       ; $622a: $69

jr_01d_622b:
    halt                                          ; $622b: $76
    ld h, l                                       ; $622c: $65

jr_01d_622d:
    jr nz, jr_01d_62a4                            ; $622d: $20 $75

    ld [hl], b                                    ; $622f: $70
    ld hl, $0003                                  ; $6230: $21 $03 $00
    ld d, h                                       ; $6233: $54

jr_01d_6234:
    ld l, b                                       ; $6234: $68
    ld h, l                                       ; $6235: $65
    ld l, [hl]                                    ; $6236: $6e
    jr nz, jr_01d_62a5                            ; $6237: $20 $6c

jr_01d_6239:
    ld h, l                                       ; $6239: $65
    ld [hl], h                                    ; $623a: $74

jr_01d_623b:
    daa                                           ; $623b: $27
    ld [hl], e                                    ; $623c: $73
    jr nz, @+$75                                  ; $623d: $20 $73

    ld h, l                                       ; $623f: $65
    ld h, l                                       ; $6240: $65
    ld bc, $6f79                                  ; $6241: $01 $79 $6f
    ld [hl], l                                    ; $6244: $75
    jr nz, jr_01d_62bb                            ; $6245: $20 $74

jr_01d_6247:
    ld [hl], d                                    ; $6247: $72
    ld a, c                                       ; $6248: $79
    jr nz, jr_01d_62b4                            ; $6249: $20 $69

    ld [hl], h                                    ; $624b: $74
    ld hl, $0003                                  ; $624c: $21 $03 $00
    ld c, l                                       ; $624f: $4d
    ld h, c                                       ; $6250: $61
    ld a, c                                       ; $6251: $79

jr_01d_6252:
    ld h, d                                       ; $6252: $62
    ld h, l                                       ; $6253: $65
    jr nz, jr_01d_62bf                            ; $6254: $20 $69

jr_01d_6256:
    ld [hl], h                                    ; $6256: $74
    daa                                           ; $6257: $27
    ld [hl], e                                    ; $6258: $73
    ld bc, $6d69                                  ; $6259: $01 $69 $6d
    ld [hl], b                                    ; $625c: $70
    ld l, a                                       ; $625d: $6f

jr_01d_625e:
    ld [hl], e                                    ; $625e: $73
    ld [hl], e                                    ; $625f: $73

jr_01d_6260:
    ld l, c                                       ; $6260: $69
    ld h, d                                       ; $6261: $62

jr_01d_6262:
    ld l, h                                       ; $6262: $6c
    ld h, l                                       ; $6263: $65
    ccf                                           ; $6264: $3f
    inc bc                                        ; $6265: $03
    nop                                           ; $6266: $00
    ld c, e                                       ; $6267: $4b
    ld h, l                                       ; $6268: $65
    ld h, l                                       ; $6269: $65
    ld [hl], b                                    ; $626a: $70
    jr nz, jr_01d_62e1                            ; $626b: $20 $74

    ld [hl], d                                    ; $626d: $72
    ld a, c                                       ; $626e: $79
    ld l, c                                       ; $626f: $69
    ld l, [hl]                                    ; $6270: $6e
    ld h, a                                       ; $6271: $67
    ccf                                           ; $6272: $3f
    nop                                           ; $6273: $00
    ld d, h                                       ; $6274: $54
    ld l, b                                       ; $6275: $68
    ld h, l                                       ; $6276: $65
    ld l, [hl]                                    ; $6277: $6e
    jr nz, jr_01d_62e1                            ; $6278: $20 $67

    ld l, a                                       ; $627a: $6f
    jr nz, @+$76                                  ; $627b: $20 $74

    ld l, a                                       ; $627d: $6f
    jr nz, @+$6b                                  ; $627e: $20 $69

jr_01d_6280:
    ld [hl], h                                    ; $6280: $74
    ld hl, $0003                                  ; $6281: $21 $03 $00
    ld e, c                                       ; $6284: $59
    ld [hl], l                                    ; $6285: $75
    ld [hl], b                                    ; $6286: $70
    ld l, $20                                     ; $6287: $2e $20
    ld b, a                                       ; $6289: $47

jr_01d_628a:
    ld l, c                                       ; $628a: $69
    halt                                          ; $628b: $76
    ld h, l                                       ; $628c: $65
    jr nz, jr_01d_6304                            ; $628d: $20 $75

jr_01d_628f:
    ld [hl], b                                    ; $628f: $70
    ld hl, $0003                                  ; $6290: $21 $03 $00
    ld c, b                                       ; $6293: $48

jr_01d_6294:
    ld b, c                                       ; $6294: $41
    ld c, b                                       ; $6295: $48
    ld hl, $5320                                  ; $6296: $21 $20 $53
    ld h, l                                       ; $6299: $65
    ld h, l                                       ; $629a: $65
    ld hl, $4901                                  ; $629b: $21 $01 $49
    ld [hl], h                                    ; $629e: $74
    jr nz, jr_01d_6304                            ; $629f: $20 $63

    ld h, c                                       ; $62a1: $61
    ld l, [hl]                                    ; $62a2: $6e
    daa                                           ; $62a3: $27

jr_01d_62a4:
    ld [hl], h                                    ; $62a4: $74

jr_01d_62a5:
    jr nz, jr_01d_6309                            ; $62a5: $20 $62

    ld h, l                                       ; $62a7: $65
    jr nz, jr_01d_630e                            ; $62a8: $20 $64

    ld l, a                                       ; $62aa: $6f
    ld l, [hl]                                    ; $62ab: $6e
    ld h, l                                       ; $62ac: $65
    ld hl, $0003                                  ; $62ad: $21 $03 $00
    ld c, c                                       ; $62b0: $49
    jr nz, jr_01d_631a                            ; $62b1: $20 $67

    ld [hl], l                                    ; $62b3: $75

jr_01d_62b4:
    ld h, l                                       ; $62b4: $65
    ld [hl], e                                    ; $62b5: $73
    ld [hl], e                                    ; $62b6: $73
    jr nz, jr_01d_6327                            ; $62b7: $20 $6e

    ld l, a                                       ; $62b9: $6f
    ld [hl], h                                    ; $62ba: $74

jr_01d_62bb:
    ld l, $2e                                     ; $62bb: $2e $2e
    ld l, $03                                     ; $62bd: $2e $03

jr_01d_62bf:
    nop                                           ; $62bf: $00
    ld b, c                                       ; $62c0: $41
    ld [hl], a                                    ; $62c1: $77
    ld h, l                                       ; $62c2: $65
    ld [hl], e                                    ; $62c3: $73
    ld l, a                                       ; $62c4: $6f
    ld l, l                                       ; $62c5: $6d
    ld h, l                                       ; $62c6: $65
    jr nz, jr_01d_633c                            ; $62c7: $20 $73

    ld l, b                                       ; $62c9: $68
    ld l, a                                       ; $62ca: $6f
    ld [hl], h                                    ; $62cb: $74
    ld hl, $0003                                  ; $62cc: $21 $03 $00
    ld e, c                                       ; $62cf: $59
    ld l, a                                       ; $62d0: $6f
    ld [hl], l                                    ; $62d1: $75
    jr nz, jr_01d_6337                            ; $62d2: $20 $63

    ld h, c                                       ; $62d4: $61
    ld l, [hl]                                    ; $62d5: $6e
    jr nz, jr_01d_6345                            ; $62d6: $20 $6d

    ld h, c                                       ; $62d8: $61
    ld l, e                                       ; $62d9: $6b
    ld h, l                                       ; $62da: $65
    jr nz, jr_01d_6346                            ; $62db: $20 $69

    ld [hl], h                                    ; $62dd: $74
    ld bc, $7266                                  ; $62de: $01 $66 $72

jr_01d_62e1:
    ld l, a                                       ; $62e1: $6f
    ld l, l                                       ; $62e2: $6d
    jr nz, @+$6a                                  ; $62e3: $20 $68

    ld h, l                                       ; $62e5: $65
    ld [hl], d                                    ; $62e6: $72
    ld h, l                                       ; $62e7: $65
    ld hl, $213f                                  ; $62e8: $21 $3f $21
    inc bc                                        ; $62eb: $03
    nop                                           ; $62ec: $00
    ld b, d                                       ; $62ed: $42
    ld [hl], l                                    ; $62ee: $75
    ld [hl], h                                    ; $62ef: $74
    jr nz, jr_01d_633b                            ; $62f0: $20 $49

    jr nz, @+$66                                  ; $62f2: $20 $64

    ld l, a                                       ; $62f4: $6f
    ld l, [hl]                                    ; $62f5: $6e
    daa                                           ; $62f6: $27
    ld [hl], h                                    ; $62f7: $74
    jr nz, jr_01d_636e                            ; $62f8: $20 $74

    ld l, b                                       ; $62fa: $68
    ld l, c                                       ; $62fb: $69
    ld l, [hl]                                    ; $62fc: $6e
    ld l, e                                       ; $62fd: $6b
    ld bc, $2049                                  ; $62fe: $01 $49 $20
    ld h, e                                       ; $6301: $63
    ld l, a                                       ; $6302: $6f
    ld [hl], l                                    ; $6303: $75

jr_01d_6304:
    ld l, h                                       ; $6304: $6c
    ld h, h                                       ; $6305: $64
    jr nz, jr_01d_6375                            ; $6306: $20 $6d

    ld h, c                                       ; $6308: $61

jr_01d_6309:
    ld l, e                                       ; $6309: $6b
    ld h, l                                       ; $630a: $65
    jr nz, jr_01d_6381                            ; $630b: $20 $74

    ld l, b                                       ; $630d: $68

jr_01d_630e:
    ld h, c                                       ; $630e: $61
    ld [hl], h                                    ; $630f: $74
    ld l, $03                                     ; $6310: $2e $03
    nop                                           ; $6312: $00
    ld c, [hl]                                    ; $6313: $4e
    ld c, c                                       ; $6314: $49
    ld b, e                                       ; $6315: $43
    ld b, l                                       ; $6316: $45
    jr nz, jr_01d_6368                            ; $6317: $20 $4f

    ld c, [hl]                                    ; $6319: $4e

jr_01d_631a:
    ld hl, $0003                                  ; $631a: $21 $03 $00
    ld e, c                                       ; $631d: $59
    ld l, a                                       ; $631e: $6f
    ld [hl], l                                    ; $631f: $75
    jr nz, jr_01d_6385                            ; $6320: $20 $63

    ld h, c                                       ; $6322: $61
    ld l, [hl]                                    ; $6323: $6e
    jr nz, jr_01d_638a                            ; $6324: $20 $64

    ld l, a                                       ; $6326: $6f

jr_01d_6327:
    jr nz, @+$6b                                  ; $6327: $20 $69

    ld [hl], h                                    ; $6329: $74
    ld bc, $696c                                  ; $632a: $01 $6c $69
    ld l, e                                       ; $632d: $6b
    ld h, l                                       ; $632e: $65
    jr nz, jr_01d_63a5                            ; $632f: $20 $74

    ld l, b                                       ; $6331: $68
    ld h, c                                       ; $6332: $61
    ld [hl], h                                    ; $6333: $74
    ld hl, $213f                                  ; $6334: $21 $3f $21

jr_01d_6337:
    inc bc                                        ; $6337: $03
    nop                                           ; $6338: $00
    ld c, b                                       ; $6339: $48
    ld h, l                                       ; $633a: $65

jr_01d_633b:
    ld [hl], d                                    ; $633b: $72

jr_01d_633c:
    ld h, l                                       ; $633c: $65
    jr nz, jr_01d_6388                            ; $633d: $20 $49

    jr nz, jr_01d_63a8                            ; $633f: $20 $67

    ld l, a                                       ; $6341: $6f
    ld hl, $0003                                  ; $6342: $21 $03 $00

jr_01d_6345:
    ld e, c                                       ; $6345: $59

jr_01d_6346:
    ld l, a                                       ; $6346: $6f
    ld [hl], l                                    ; $6347: $75
    jr nz, jr_01d_63ae                            ; $6348: $20 $64

    ld l, c                                       ; $634a: $69
    ld h, h                                       ; $634b: $64
    jr nz, @+$6b                                  ; $634c: $20 $69

    ld [hl], h                                    ; $634e: $74
    ld hl, $0003                                  ; $634f: $21 $03 $00
    ld c, c                                       ; $6352: $49
    jr nz, jr_01d_63b9                            ; $6353: $20 $64

    ld l, c                                       ; $6355: $69
    ld h, h                                       ; $6356: $64
    jr nz, jr_01d_63c2                            ; $6357: $20 $69

    ld [hl], h                                    ; $6359: $74
    ld hl, $0003                                  ; $635a: $21 $03 $00
    ld d, h                                       ; $635d: $54
    ld l, b                                       ; $635e: $68
    ld h, c                                       ; $635f: $61
    ld l, [hl]                                    ; $6360: $6e
    ld l, e                                       ; $6361: $6b
    ld [hl], e                                    ; $6362: $73
    ld hl, $5920                                  ; $6363: $21 $20 $59
    ld l, a                                       ; $6366: $6f
    ld [hl], l                                    ; $6367: $75

jr_01d_6368:
    jr nz, jr_01d_63dd                            ; $6368: $20 $73

    ld l, b                                       ; $636a: $68
    ld l, a                                       ; $636b: $6f
    ld [hl], a                                    ; $636c: $77
    ld h, l                                       ; $636d: $65

jr_01d_636e:
    ld h, h                                       ; $636e: $64
    ld bc, $656d                                  ; $636f: $01 $6d $65
    jr nz, @+$76                                  ; $6372: $20 $74

    ld l, b                                       ; $6374: $68

jr_01d_6375:
    ld h, l                                       ; $6375: $65
    jr nz, jr_01d_63ef                            ; $6376: $20 $77

    ld h, c                                       ; $6378: $61
    ld a, c                                       ; $6379: $79
    ld hl, $0003                                  ; $637a: $21 $03 $00
    ld d, a                                       ; $637d: $57
    ld h, l                                       ; $637e: $65
    ld l, h                                       ; $637f: $6c
    ld l, h                                       ; $6380: $6c

jr_01d_6381:
    inc l                                         ; $6381: $2c
    jr nz, jr_01d_63f0                            ; $6382: $20 $6c

    ld h, l                                       ; $6384: $65

jr_01d_6385:
    ld [hl], h                                    ; $6385: $74
    daa                                           ; $6386: $27
    ld [hl], e                                    ; $6387: $73

jr_01d_6388:
    jr nz, @+$6a                                  ; $6388: $20 $68

jr_01d_638a:
    ld l, a                                       ; $638a: $6f
    ld l, h                                       ; $638b: $6c
    ld h, l                                       ; $638c: $65
    ld bc, $756f                                  ; $638d: $01 $6f $75
    ld [hl], h                                    ; $6390: $74
    jr nz, jr_01d_63f5                            ; $6391: $20 $62

    ld h, l                                       ; $6393: $65
    ld h, [hl]                                    ; $6394: $66
    ld l, a                                       ; $6395: $6f
    ld [hl], d                                    ; $6396: $72
    ld h, l                                       ; $6397: $65
    jr nz, @+$79                                  ; $6398: $20 $77

    ld h, l                                       ; $639a: $65
    ld bc, $6f6c                                  ; $639b: $01 $6c $6f
    ld [hl], e                                    ; $639e: $73
    ld h, l                                       ; $639f: $65
    jr nz, jr_01d_6406                            ; $63a0: $20 $64

    ld h, c                                       ; $63a2: $61
    ld a, c                                       ; $63a3: $79
    ld l, h                                       ; $63a4: $6c

jr_01d_63a5:
    ld l, c                                       ; $63a5: $69
    ld h, a                                       ; $63a6: $67
    ld l, b                                       ; $63a7: $68

jr_01d_63a8:
    ld [hl], h                                    ; $63a8: $74
    ld hl, $0003                                  ; $63a9: $21 $03 $00
    ld b, a                                       ; $63ac: $47
    ld l, c                                       ; $63ad: $69

jr_01d_63ae:
    ld l, l                                       ; $63ae: $6d
    ld l, l                                       ; $63af: $6d
    ld h, l                                       ; $63b0: $65
    jr nz, jr_01d_6415                            ; $63b1: $20 $62

    ld h, c                                       ; $63b3: $61
    ld h, e                                       ; $63b4: $63
    ld l, e                                       ; $63b5: $6b
    jr nz, jr_01d_6425                            ; $63b6: $20 $6d

    ld a, c                                       ; $63b8: $79

jr_01d_63b9:
    jr nz, jr_01d_6423                            ; $63b9: $20 $68

    ld h, c                                       ; $63bb: $61
    ld [hl], h                                    ; $63bc: $74
    inc l                                         ; $63bd: $2c
    ld bc, $6f79                                  ; $63be: $01 $79 $6f
    ld [hl], l                                    ; $63c1: $75

jr_01d_63c2:
    jr nz, @+$75                                  ; $63c2: $20 $73

    ld [hl], h                                    ; $63c4: $74
    ld [hl], l                                    ; $63c5: $75
    ld [hl], b                                    ; $63c6: $70
    ld l, c                                       ; $63c7: $69
    ld h, h                                       ; $63c8: $64
    jr nz, jr_01d_642e                            ; $63c9: $20 $63

    ld [hl], d                                    ; $63cb: $72
    ld l, a                                       ; $63cc: $6f
    ld [hl], a                                    ; $63cd: $77
    ld hl, $0003                                  ; $63ce: $21 $03 $00
    ld c, c                                       ; $63d1: $49
    daa                                           ; $63d2: $27
    ld l, l                                       ; $63d3: $6d
    jr nz, jr_01d_643d                            ; $63d4: $20 $67

    ld l, a                                       ; $63d6: $6f
    ld l, [hl]                                    ; $63d7: $6e
    ld l, [hl]                                    ; $63d8: $6e
    ld h, c                                       ; $63d9: $61
    jr nz, jr_01d_6443                            ; $63da: $20 $67

    ld h, l                                       ; $63dc: $65

jr_01d_63dd:
    ld [hl], h                                    ; $63dd: $74
    ld bc, $6874                                  ; $63de: $01 $74 $68
    ld h, c                                       ; $63e1: $61
    ld [hl], h                                    ; $63e2: $74
    jr nz, jr_01d_644d                            ; $63e3: $20 $68

    ld h, c                                       ; $63e5: $61
    ld [hl], h                                    ; $63e6: $74
    jr nz, @+$64                                  ; $63e7: $20 $62

    ld h, c                                       ; $63e9: $61
    ld h, e                                       ; $63ea: $63
    ld l, e                                       ; $63eb: $6b
    ld hl, $0003                                  ; $63ec: $21 $03 $00

jr_01d_63ef:
    ld c, a                                       ; $63ef: $4f

jr_01d_63f0:
    ld c, b                                       ; $63f0: $48
    ld hl, $5920                                  ; $63f1: $21 $20 $59
    ld l, a                                       ; $63f4: $6f

jr_01d_63f5:
    ld [hl], l                                    ; $63f5: $75
    jr nz, @+$6b                                  ; $63f6: $20 $69

    ld h, h                                       ; $63f8: $64
    ld l, c                                       ; $63f9: $69
    ld l, a                                       ; $63fa: $6f
    ld [hl], h                                    ; $63fb: $74
    ld hl, $0003                                  ; $63fc: $21 $03 $00
    ld d, h                                       ; $63ff: $54
    ld l, b                                       ; $6400: $68
    ld h, l                                       ; $6401: $65
    jr nz, jr_01d_6467                            ; $6402: $20 $63

    ld [hl], d                                    ; $6404: $72
    ld l, a                                       ; $6405: $6f

jr_01d_6406:
    ld [hl], a                                    ; $6406: $77
    daa                                           ; $6407: $27
    ld [hl], e                                    ; $6408: $73
    ld bc, $6c66                                  ; $6409: $01 $66 $6c
    ld a, c                                       ; $640c: $79
    ld l, c                                       ; $640d: $69
    ld l, [hl]                                    ; $640e: $6e
    ld h, a                                       ; $640f: $67
    jr nz, @+$63                                  ; $6410: $20 $61

    ld [hl], a                                    ; $6412: $77
    ld h, c                                       ; $6413: $61
    ld a, c                                       ; $6414: $79

jr_01d_6415:
    ld hl, $0003                                  ; $6415: $21 $03 $00
    ld b, c                                       ; $6418: $41
    ld c, b                                       ; $6419: $48
    ld hl, $4920                                  ; $641a: $21 $20 $49
    ld [hl], h                                    ; $641d: $74
    jr nz, jr_01d_6497                            ; $641e: $20 $77

    ld h, l                                       ; $6420: $65
    ld l, [hl]                                    ; $6421: $6e
    ld [hl], h                                    ; $6422: $74

jr_01d_6423:
    jr nz, jr_01d_6494                            ; $6423: $20 $6f

jr_01d_6425:
    ld h, [hl]                                    ; $6425: $66
    ld h, [hl]                                    ; $6426: $66
    ld bc, $6f74                                  ; $6427: $01 $74 $6f
    jr nz, @+$67                                  ; $642a: $20 $65

    ld h, c                                       ; $642c: $61
    ld [hl], h                                    ; $642d: $74

jr_01d_642e:
    jr nz, @+$6f                                  ; $642e: $20 $6d

    ld a, c                                       ; $6430: $79
    jr nz, jr_01d_649b                            ; $6431: $20 $68

    ld h, c                                       ; $6433: $61
    ld [hl], h                                    ; $6434: $74
    ld hl, $0003                                  ; $6435: $21 $03 $00
    ld c, a                                       ; $6438: $4f
    ld l, b                                       ; $6439: $68
    ld hl, $5420                                  ; $643a: $21 $20 $54

jr_01d_643d:
    ld l, b                                       ; $643d: $68
    ld h, c                                       ; $643e: $61
    ld [hl], h                                    ; $643f: $74
    jr nz, @+$66                                  ; $6440: $20 $64

    ld h, c                                       ; $6442: $61

jr_01d_6443:
    ld l, [hl]                                    ; $6443: $6e
    ld h, a                                       ; $6444: $67
    jr nz, jr_01d_64aa                            ; $6445: $20 $63

    ld [hl], d                                    ; $6447: $72
    ld l, a                                       ; $6448: $6f
    ld [hl], a                                    ; $6449: $77
    ld hl, $4901                                  ; $644a: $21 $01 $49

jr_01d_644d:
    ld [hl], h                                    ; $644d: $74
    daa                                           ; $644e: $27
    ld [hl], e                                    ; $644f: $73
    jr nz, @+$69                                  ; $6450: $20 $67

    ld l, a                                       ; $6452: $6f
    ld l, [hl]                                    ; $6453: $6e
    ld h, l                                       ; $6454: $65
    jr nz, @+$63                                  ; $6455: $20 $61

    ld h, a                                       ; $6457: $67
    ld h, c                                       ; $6458: $61
    ld l, c                                       ; $6459: $69
    ld l, [hl]                                    ; $645a: $6e
    ld hl, $0003                                  ; $645b: $21 $03 $00
    ld c, c                                       ; $645e: $49
    ld h, [hl]                                    ; $645f: $66
    jr nz, jr_01d_64d6                            ; $6460: $20 $74

    ld l, b                                       ; $6462: $68
    ld h, l                                       ; $6463: $65
    jr nz, jr_01d_64c8                            ; $6464: $20 $62

    ld h, c                                       ; $6466: $61

jr_01d_6467:
    ld l, h                                       ; $6467: $6c
    ld l, h                                       ; $6468: $6c
    jr nz, jr_01d_64d3                            ; $6469: $20 $68

    ld l, c                                       ; $646b: $69
    ld [hl], h                                    ; $646c: $74
    ld [hl], e                                    ; $646d: $73
    ld bc, $6874                                  ; $646e: $01 $74 $68
    ld h, l                                       ; $6471: $65
    jr nz, jr_01d_64e4                            ; $6472: $20 $70

    ld l, c                                       ; $6474: $69
    ld l, [hl]                                    ; $6475: $6e
    inc l                                         ; $6476: $2c
    jr nz, jr_01d_64e2                            ; $6477: $20 $69

    ld [hl], h                                    ; $6479: $74
    jr nz, jr_01d_64ef                            ; $647a: $20 $73

    ld l, b                                       ; $647c: $68
    ld l, a                                       ; $647d: $6f
    ld [hl], l                                    ; $647e: $75
    ld l, h                                       ; $647f: $6c
    ld h, h                                       ; $6480: $64
    ld bc, $6373                                  ; $6481: $01 $73 $63
    ld h, c                                       ; $6484: $61
    ld [hl], d                                    ; $6485: $72
    ld h, l                                       ; $6486: $65
    jr nz, jr_01d_64fd                            ; $6487: $20 $74

    ld l, b                                       ; $6489: $68
    ld h, l                                       ; $648a: $65
    jr nz, jr_01d_64f0                            ; $648b: $20 $63

    ld [hl], d                                    ; $648d: $72
    ld l, a                                       ; $648e: $6f
    ld [hl], a                                    ; $648f: $77
    jr nz, jr_01d_64f3                            ; $6490: $20 $61

    ld l, [hl]                                    ; $6492: $6e
    ld h, h                                       ; $6493: $64

jr_01d_6494:
    ld [bc], a                                    ; $6494: $02
    ld l, l                                       ; $6495: $6d
    ld h, c                                       ; $6496: $61

jr_01d_6497:
    ld l, e                                       ; $6497: $6b
    ld h, l                                       ; $6498: $65
    jr nz, jr_01d_6504                            ; $6499: $20 $69

jr_01d_649b:
    ld [hl], h                                    ; $649b: $74
    jr nz, @+$66                                  ; $649c: $20 $64

    ld [hl], d                                    ; $649e: $72
    ld l, a                                       ; $649f: $6f
    ld [hl], b                                    ; $64a0: $70
    jr nz, @+$6f                                  ; $64a1: $20 $6d

    ld a, c                                       ; $64a3: $79
    ld bc, $6168                                  ; $64a4: $01 $68 $61
    ld [hl], h                                    ; $64a7: $74
    ld l, $20                                     ; $64a8: $2e $20

jr_01d_64aa:
    ld b, e                                       ; $64aa: $43
    ld h, c                                       ; $64ab: $61
    ld l, [hl]                                    ; $64ac: $6e
    daa                                           ; $64ad: $27
    ld [hl], h                                    ; $64ae: $74
    jr nz, jr_01d_652a                            ; $64af: $20 $79

    ld l, a                                       ; $64b1: $6f
    ld [hl], l                                    ; $64b2: $75
    jr nz, jr_01d_651c                            ; $64b3: $20 $67

    ld h, l                                       ; $64b5: $65
    ld [hl], h                                    ; $64b6: $74
    ld bc, $796d                                  ; $64b7: $01 $6d $79
    jr nz, jr_01d_6524                            ; $64ba: $20 $68

    ld h, c                                       ; $64bc: $61
    ld [hl], h                                    ; $64bd: $74
    jr nz, jr_01d_6522                            ; $64be: $20 $62

    ld h, c                                       ; $64c0: $61
    ld h, e                                       ; $64c1: $63
    ld l, e                                       ; $64c2: $6b
    ccf                                           ; $64c3: $3f
    inc bc                                        ; $64c4: $03
    nop                                           ; $64c5: $00
    ld c, b                                       ; $64c6: $48
    ld h, l                                       ; $64c7: $65

jr_01d_64c8:
    ld a, c                                       ; $64c8: $79
    ld hl, $5420                                  ; $64c9: $21 $20 $54
    ld l, b                                       ; $64cc: $68
    ld h, l                                       ; $64cd: $65
    jr nz, jr_01d_6533                            ; $64ce: $20 $63

    ld [hl], d                                    ; $64d0: $72
    ld l, a                                       ; $64d1: $6f
    ld [hl], a                                    ; $64d2: $77

jr_01d_64d3:
    jr nz, jr_01d_6538                            ; $64d3: $20 $63

    ld h, c                                       ; $64d5: $61

jr_01d_64d6:
    ld l, l                                       ; $64d6: $6d
    ld h, l                                       ; $64d7: $65
    ld bc, $6162                                  ; $64d8: $01 $62 $61
    ld h, e                                       ; $64db: $63
    ld l, e                                       ; $64dc: $6b
    ld hl, $4e20                                  ; $64dd: $21 $20 $4e
    ld l, a                                       ; $64e0: $6f
    ld [hl], a                                    ; $64e1: $77

jr_01d_64e2:
    daa                                           ; $64e2: $27
    ld [hl], e                                    ; $64e3: $73

jr_01d_64e4:
    jr nz, jr_01d_655f                            ; $64e4: $20 $79

    ld l, a                                       ; $64e6: $6f
    ld [hl], l                                    ; $64e7: $75
    ld [hl], d                                    ; $64e8: $72
    ld bc, $6863                                  ; $64e9: $01 $63 $68
    ld h, c                                       ; $64ec: $61
    ld l, [hl]                                    ; $64ed: $6e
    ld h, e                                       ; $64ee: $63

jr_01d_64ef:
    ld h, l                                       ; $64ef: $65

jr_01d_64f0:
    jr nz, jr_01d_6566                            ; $64f0: $20 $74

    ld l, a                                       ; $64f2: $6f

jr_01d_64f3:
    jr nz, jr_01d_655c                            ; $64f3: $20 $67

    ld h, l                                       ; $64f5: $65
    ld [hl], h                                    ; $64f6: $74
    jr nz, jr_01d_6562                            ; $64f7: $20 $69

    ld [hl], h                                    ; $64f9: $74
    ld hl, $0003                                  ; $64fa: $21 $03 $00

jr_01d_64fd:
    ld d, b                                       ; $64fd: $50
    ld l, h                                       ; $64fe: $6c
    ld h, c                                       ; $64ff: $61
    ld a, c                                       ; $6500: $79
    jr nz, @+$68                                  ; $6501: $20 $66

    ld [hl], d                                    ; $6503: $72

jr_01d_6504:
    ld l, a                                       ; $6504: $6f
    ld l, l                                       ; $6505: $6d
    jr nz, jr_01d_6570                            ; $6506: $20 $68

    ld h, l                                       ; $6508: $65
    ld [hl], d                                    ; $6509: $72
    ld h, l                                       ; $650a: $65
    ccf                                           ; $650b: $3f
    nop                                           ; $650c: $00
    ld c, c                                       ; $650d: $49
    ld [hl], h                                    ; $650e: $74
    jr nz, jr_01d_6575                            ; $650f: $20 $64

    ld [hl], d                                    ; $6511: $72
    ld l, a                                       ; $6512: $6f
    ld [hl], b                                    ; $6513: $70
    ld [hl], b                                    ; $6514: $70
    ld h, l                                       ; $6515: $65
    ld h, h                                       ; $6516: $64
    jr nz, jr_01d_6586                            ; $6517: $20 $6d

    ld a, c                                       ; $6519: $79
    jr nz, @+$6a                                  ; $651a: $20 $68

jr_01d_651c:
    ld h, c                                       ; $651c: $61
    ld [hl], h                                    ; $651d: $74
    ld l, $03                                     ; $651e: $2e $03
    nop                                           ; $6520: $00
    ld e, c                                       ; $6521: $59

jr_01d_6522:
    ld l, a                                       ; $6522: $6f
    ld [hl], l                                    ; $6523: $75

jr_01d_6524:
    jr nz, jr_01d_658a                            ; $6524: $20 $64

    ld l, c                                       ; $6526: $69
    ld h, h                                       ; $6527: $64
    jr nz, jr_01d_6593                            ; $6528: $20 $69

jr_01d_652a:
    ld [hl], h                                    ; $652a: $74
    ld hl, $5920                                  ; $652b: $21 $20 $59
    ld b, l                                       ; $652e: $45
    ld d, e                                       ; $652f: $53
    ld hl, $0003                                  ; $6530: $21 $03 $00

jr_01d_6533:
    ld e, c                                       ; $6533: $59
    ld l, a                                       ; $6534: $6f
    ld [hl], l                                    ; $6535: $75
    jr nz, jr_01d_659f                            ; $6536: $20 $67

jr_01d_6538:
    ld l, a                                       ; $6538: $6f
    ld [hl], h                                    ; $6539: $74
    jr nz, jr_01d_65a9                            ; $653a: $20 $6d

    ld a, c                                       ; $653c: $79
    jr nz, jr_01d_65a7                            ; $653d: $20 $68

    ld h, c                                       ; $653f: $61
    ld [hl], h                                    ; $6540: $74
    ld bc, $6162                                  ; $6541: $01 $62 $61
    ld h, e                                       ; $6544: $63
    ld l, e                                       ; $6545: $6b
    jr nz, jr_01d_65ae                            ; $6546: $20 $66

    ld [hl], d                                    ; $6548: $72
    ld l, a                                       ; $6549: $6f
    ld l, l                                       ; $654a: $6d
    jr nz, @+$76                                  ; $654b: $20 $74

    ld l, b                                       ; $654d: $68
    ld h, l                                       ; $654e: $65
    ld bc, $7263                                  ; $654f: $01 $63 $72
    ld l, a                                       ; $6552: $6f
    ld [hl], a                                    ; $6553: $77
    ld hl, $0003                                  ; $6554: $21 $03 $00
    ld c, [hl]                                    ; $6557: $4e
    ld l, a                                       ; $6558: $6f
    ld [hl], a                                    ; $6559: $77
    jr nz, jr_01d_65a5                            ; $655a: $20 $49

jr_01d_655c:
    jr nz, @+$65                                  ; $655c: $20 $63

    ld h, c                                       ; $655e: $61

jr_01d_655f:
    ld l, [hl]                                    ; $655f: $6e
    jr nz, jr_01d_65c8                            ; $6560: $20 $66

jr_01d_6562:
    ld l, c                                       ; $6562: $69
    ld l, [hl]                                    ; $6563: $6e
    ld h, c                                       ; $6564: $61
    ld l, h                                       ; $6565: $6c

jr_01d_6566:
    ld l, h                                       ; $6566: $6c
    ld a, c                                       ; $6567: $79
    ld bc, $6f67                                  ; $6568: $01 $67 $6f
    jr nz, jr_01d_65d5                            ; $656b: $20 $68

    ld l, a                                       ; $656d: $6f
    ld l, l                                       ; $656e: $6d
    ld h, l                                       ; $656f: $65

jr_01d_6570:
    ld hl, $0003                                  ; $6570: $21 $03 $00
    ld d, h                                       ; $6573: $54
    ld l, b                                       ; $6574: $68

jr_01d_6575:
    ld h, c                                       ; $6575: $61
    ld l, [hl]                                    ; $6576: $6e
    ld l, e                                       ; $6577: $6b
    jr nz, jr_01d_65f3                            ; $6578: $20 $79

    ld l, a                                       ; $657a: $6f
    ld [hl], l                                    ; $657b: $75
    ld hl, $4920                                  ; $657c: $21 $20 $49
    daa                                           ; $657f: $27
    ld l, h                                       ; $6580: $6c
    ld l, h                                       ; $6581: $6c
    ld bc, $656e                                  ; $6582: $01 $6e $65
    halt                                          ; $6585: $76

jr_01d_6586:
    ld h, l                                       ; $6586: $65
    ld [hl], d                                    ; $6587: $72
    jr nz, jr_01d_65f0                            ; $6588: $20 $66

jr_01d_658a:
    ld l, a                                       ; $658a: $6f
    ld [hl], d                                    ; $658b: $72
    ld h, a                                       ; $658c: $67
    ld h, l                                       ; $658d: $65
    ld [hl], h                                    ; $658e: $74
    jr nz, @+$7b                                  ; $658f: $20 $79

    ld l, a                                       ; $6591: $6f
    ld [hl], l                                    ; $6592: $75

jr_01d_6593:
    ld hl, $0003                                  ; $6593: $21 $03 $00
    ld d, a                                       ; $6596: $57
    ld l, c                                       ; $6597: $69
    ld l, h                                       ; $6598: $6c
    ld l, h                                       ; $6599: $6c
    jr nz, jr_01d_660f                            ; $659a: $20 $73

    ld l, a                                       ; $659c: $6f
    ld l, l                                       ; $659d: $6d
    ld h, l                                       ; $659e: $65

jr_01d_659f:
    ld l, a                                       ; $659f: $6f
    ld l, [hl]                                    ; $65a0: $6e
    ld h, l                                       ; $65a1: $65
    ld bc, $6c70                                  ; $65a2: $01 $70 $6c

jr_01d_65a5:
    ld h, l                                       ; $65a5: $65
    ld h, c                                       ; $65a6: $61

jr_01d_65a7:
    ld [hl], e                                    ; $65a7: $73
    ld h, l                                       ; $65a8: $65

jr_01d_65a9:
    jr nz, jr_01d_660e                            ; $65a9: $20 $63

    ld l, a                                       ; $65ab: $6f
    ld l, l                                       ; $65ac: $6d
    ld h, l                                       ; $65ad: $65

jr_01d_65ae:
    jr nz, jr_01d_6620                            ; $65ae: $20 $70

    ld l, h                                       ; $65b0: $6c
    ld h, c                                       ; $65b1: $61
    ld a, c                                       ; $65b2: $79
    ld bc, $6977                                  ; $65b3: $01 $77 $69
    ld [hl], h                                    ; $65b6: $74
    ld l, b                                       ; $65b7: $68
    jr nz, jr_01d_662f                            ; $65b8: $20 $75

    ld [hl], e                                    ; $65ba: $73
    ccf                                           ; $65bb: $3f
    inc bc                                        ; $65bc: $03
    nop                                           ; $65bd: $00
    ld d, a                                       ; $65be: $57
    ld h, l                                       ; $65bf: $65
    jr nz, jr_01d_6639                            ; $65c0: $20 $77

    ld h, c                                       ; $65c2: $61
    ld l, [hl]                                    ; $65c3: $6e
    ld [hl], h                                    ; $65c4: $74
    jr nz, @+$76                                  ; $65c5: $20 $74

    ld l, a                                       ; $65c7: $6f

jr_01d_65c8:
    jr nz, jr_01d_663a                            ; $65c8: $20 $70

    ld l, h                                       ; $65ca: $6c
    ld h, c                                       ; $65cb: $61
    ld a, c                                       ; $65cc: $79
    ld bc, $6874                                  ; $65cd: $01 $74 $68
    ld h, l                                       ; $65d0: $65
    jr nz, jr_01d_6617                            ; $65d1: $20 $44

    ld [hl], l                                    ; $65d3: $75
    ld l, [hl]                                    ; $65d4: $6e

jr_01d_65d5:
    ld h, l                                       ; $65d5: $65
    jr nz, jr_01d_661b                            ; $65d6: $20 $43

    ld l, h                                       ; $65d8: $6c
    ld [hl], l                                    ; $65d9: $75
    ld h, d                                       ; $65da: $62
    ld bc, $6f63                                  ; $65db: $01 $63 $6f
    ld [hl], l                                    ; $65de: $75
    ld [hl], d                                    ; $65df: $72
    ld [hl], e                                    ; $65e0: $73
    ld h, l                                       ; $65e1: $65
    ld l, $2e                                     ; $65e2: $2e $2e
    ld l, $03                                     ; $65e4: $2e $03
    nop                                           ; $65e6: $00
    ld d, a                                       ; $65e7: $57
    ld h, l                                       ; $65e8: $65
    jr nz, jr_01d_6659                            ; $65e9: $20 $6e

    ld h, l                                       ; $65eb: $65
    ld h, l                                       ; $65ec: $65
    ld h, h                                       ; $65ed: $64
    jr nz, jr_01d_6651                            ; $65ee: $20 $61

jr_01d_65f0:
    ld l, [hl]                                    ; $65f0: $6e
    ld l, a                                       ; $65f1: $6f
    ld [hl], h                                    ; $65f2: $74

jr_01d_65f3:
    ld l, b                                       ; $65f3: $68
    ld h, l                                       ; $65f4: $65
    ld [hl], d                                    ; $65f5: $72
    ld bc, $656d                                  ; $65f6: $01 $6d $65
    ld l, l                                       ; $65f9: $6d
    ld h, d                                       ; $65fa: $62
    ld h, l                                       ; $65fb: $65
    ld [hl], d                                    ; $65fc: $72
    jr nz, jr_01d_6673                            ; $65fd: $20 $74

    ld l, a                                       ; $65ff: $6f
    jr nz, @+$72                                  ; $6600: $20 $70

    ld l, h                                       ; $6602: $6c
    ld h, c                                       ; $6603: $61
    ld a, c                                       ; $6604: $79
    jr nz, jr_01d_6668                            ; $6605: $20 $61

    ld l, [hl]                                    ; $6607: $6e
    ld bc, $6c61                                  ; $6608: $01 $61 $6c
    ld [hl], h                                    ; $660b: $74
    ld h, l                                       ; $660c: $65
    ld [hl], d                                    ; $660d: $72

jr_01d_660e:
    ld l, [hl]                                    ; $660e: $6e

jr_01d_660f:
    ld h, c                                       ; $660f: $61
    ld [hl], h                                    ; $6610: $74
    ld h, l                                       ; $6611: $65
    jr nz, jr_01d_667b                            ; $6612: $20 $67

    ld h, c                                       ; $6614: $61
    ld l, l                                       ; $6615: $6d
    ld h, l                                       ; $6616: $65

jr_01d_6617:
    ld l, $2e                                     ; $6617: $2e $2e
    ld l, $03                                     ; $6619: $2e $03

jr_01d_661b:
    nop                                           ; $661b: $00
    ld c, b                                       ; $661c: $48
    ld h, l                                       ; $661d: $65
    ld a, c                                       ; $661e: $79
    inc l                                         ; $661f: $2c

jr_01d_6620:
    jr nz, jr_01d_669b                            ; $6620: $20 $79

    ld l, a                                       ; $6622: $6f
    ld [hl], l                                    ; $6623: $75
    jr nz, jr_01d_668b                            ; $6624: $20 $65

    ld l, [hl]                                    ; $6626: $6e
    ld [hl], h                                    ; $6627: $74
    ld h, l                                       ; $6628: $65
    ld [hl], d                                    ; $6629: $72
    ld h, l                                       ; $662a: $65
    ld h, h                                       ; $662b: $64
    ld bc, $6874                                  ; $662c: $01 $74 $68

jr_01d_662f:
    ld h, l                                       ; $662f: $65
    jr nz, @+$46                                  ; $6630: $20 $44

    ld [hl], l                                    ; $6632: $75
    ld l, [hl]                                    ; $6633: $6e
    ld h, l                                       ; $6634: $65
    jr nz, jr_01d_667a                            ; $6635: $20 $43

    ld l, h                                       ; $6637: $6c
    ld [hl], l                                    ; $6638: $75

jr_01d_6639:
    ld h, d                                       ; $6639: $62

jr_01d_663a:
    ld bc, $6f54                                  ; $663a: $01 $54 $6f
    ld [hl], l                                    ; $663d: $75
    ld [hl], d                                    ; $663e: $72
    ld l, [hl]                                    ; $663f: $6e
    ld h, c                                       ; $6640: $61
    ld l, l                                       ; $6641: $6d
    ld h, l                                       ; $6642: $65
    ld l, [hl]                                    ; $6643: $6e
    ld [hl], h                                    ; $6644: $74
    inc l                                         ; $6645: $2c
    jr nz, jr_01d_66ba                            ; $6646: $20 $72

    ld l, c                                       ; $6648: $69
    ld h, a                                       ; $6649: $67
    ld l, b                                       ; $664a: $68
    ld [hl], h                                    ; $664b: $74
    ccf                                           ; $664c: $3f
    nop                                           ; $664d: $00
    ld c, c                                       ; $664e: $49
    daa                                           ; $664f: $27
    ld l, l                                       ; $6650: $6d

jr_01d_6651:
    jr nz, @+$76                                  ; $6651: $20 $74

    ld h, l                                       ; $6653: $65
    ld [hl], d                                    ; $6654: $72
    ld [hl], d                                    ; $6655: $72
    ld l, c                                       ; $6656: $69
    ld h, d                                       ; $6657: $62
    ld l, h                                       ; $6658: $6c

jr_01d_6659:
    ld h, l                                       ; $6659: $65
    inc l                                         ; $665a: $2c
    jr nz, jr_01d_66d0                            ; $665b: $20 $73

    ld l, a                                       ; $665d: $6f
    jr nz, @+$4b                                  ; $665e: $20 $49

    ld bc, $6163                                  ; $6660: $01 $63 $61
    ld l, [hl]                                    ; $6663: $6e
    jr nz, jr_01d_66d5                            ; $6664: $20 $6f

    ld l, [hl]                                    ; $6666: $6e
    ld l, h                                       ; $6667: $6c

jr_01d_6668:
    ld a, c                                       ; $6668: $79
    jr nz, jr_01d_66db                            ; $6669: $20 $70

    ld l, h                                       ; $666b: $6c
    ld h, c                                       ; $666c: $61
    ld a, c                                       ; $666d: $79
    jr nz, @+$6b                                  ; $666e: $20 $69

    ld h, [hl]                                    ; $6670: $66
    jr nz, @+$6f                                  ; $6671: $20 $6d

jr_01d_6673:
    ld a, c                                       ; $6673: $79
    ld bc, $6170                                  ; $6674: $01 $70 $61
    ld [hl], d                                    ; $6677: $72
    ld [hl], h                                    ; $6678: $74
    ld l, [hl]                                    ; $6679: $6e

jr_01d_667a:
    ld h, l                                       ; $667a: $65

jr_01d_667b:
    ld [hl], d                                    ; $667b: $72
    daa                                           ; $667c: $27
    ld [hl], e                                    ; $667d: $73
    jr nz, jr_01d_66e7                            ; $667e: $20 $67

    ld l, a                                       ; $6680: $6f
    ld l, a                                       ; $6681: $6f
    ld h, h                                       ; $6682: $64
    ld l, $02                                     ; $6683: $2e $02
    ld d, h                                       ; $6685: $54
    ld l, b                                       ; $6686: $68
    ld h, l                                       ; $6687: $65
    ld a, c                                       ; $6688: $79
    daa                                           ; $6689: $27
    ld h, h                                       ; $668a: $64

jr_01d_668b:
    jr nz, jr_01d_66f9                            ; $668b: $20 $6c

    ld h, l                                       ; $668d: $65
    ld [hl], h                                    ; $668e: $74
    jr nz, jr_01d_66fe                            ; $668f: $20 $6d

    ld h, l                                       ; $6691: $65
    jr nz, jr_01d_6704                            ; $6692: $20 $70

    ld l, h                                       ; $6694: $6c
    ld h, c                                       ; $6695: $61
    ld a, c                                       ; $6696: $79
    ld bc, $6977                                  ; $6697: $01 $77 $69
    ld [hl], h                                    ; $669a: $74

jr_01d_669b:
    ld l, b                                       ; $669b: $68
    jr nz, jr_01d_6711                            ; $669c: $20 $73

    ld l, a                                       ; $669e: $6f
    ld l, l                                       ; $669f: $6d
    ld h, l                                       ; $66a0: $65
    ld l, a                                       ; $66a1: $6f
    ld l, [hl]                                    ; $66a2: $6e
    ld h, l                                       ; $66a3: $65
    jr nz, jr_01d_671d                            ; $66a4: $20 $77

    ld l, b                                       ; $66a6: $68
    ld l, a                                       ; $66a7: $6f
    jr nz, jr_01d_66ab                            ; $66a8: $20 $01

    ld [hl], b                                    ; $66aa: $70

jr_01d_66ab:
    ld l, h                                       ; $66ab: $6c
    ld h, c                                       ; $66ac: $61
    ld h, e                                       ; $66ad: $63
    ld h, l                                       ; $66ae: $65
    ld h, h                                       ; $66af: $64
    ld l, $03                                     ; $66b0: $2e $03
    nop                                           ; $66b2: $00
    ld c, c                                       ; $66b3: $49
    jr nz, jr_01d_672a                            ; $66b4: $20 $74

    ld l, b                                       ; $66b6: $68
    ld l, a                                       ; $66b7: $6f
    ld [hl], l                                    ; $66b8: $75
    ld h, a                                       ; $66b9: $67

jr_01d_66ba:
    ld l, b                                       ; $66ba: $68
    ld [hl], h                                    ; $66bb: $74
    jr nz, jr_01d_6731                            ; $66bc: $20 $73

    ld l, a                                       ; $66be: $6f
    ld hl, $5720                                  ; $66bf: $21 $20 $57
    ld l, c                                       ; $66c2: $69
    ld l, h                                       ; $66c3: $6c
    ld l, h                                       ; $66c4: $6c
    ld bc, $6f79                                  ; $66c5: $01 $79 $6f
    ld [hl], l                                    ; $66c8: $75
    jr nz, jr_01d_673b                            ; $66c9: $20 $70

    ld l, h                                       ; $66cb: $6c
    ld h, c                                       ; $66cc: $61
    ld a, c                                       ; $66cd: $79
    jr nz, jr_01d_6747                            ; $66ce: $20 $77

jr_01d_66d0:
    ld l, c                                       ; $66d0: $69
    ld [hl], h                                    ; $66d1: $74
    ld l, b                                       ; $66d2: $68
    jr nz, jr_01d_6742                            ; $66d3: $20 $6d

jr_01d_66d5:
    ld h, l                                       ; $66d5: $65
    ccf                                           ; $66d6: $3f
    ld bc, $6c50                                  ; $66d7: $01 $50 $6c
    ld h, l                                       ; $66da: $65

jr_01d_66db:
    ld h, c                                       ; $66db: $61
    ld [hl], e                                    ; $66dc: $73
    ld h, l                                       ; $66dd: $65
    ld hl, $5900                                  ; $66de: $21 $00 $59
    ld h, l                                       ; $66e1: $65
    ld h, c                                       ; $66e2: $61
    ld l, b                                       ; $66e3: $68
    inc l                                         ; $66e4: $2c
    jr nz, jr_01d_6730                            ; $66e5: $20 $49

jr_01d_66e7:
    daa                                           ; $66e7: $27
    ld l, l                                       ; $66e8: $6d
    jr nz, jr_01d_6755                            ; $66e9: $20 $6a

    ld [hl], l                                    ; $66eb: $75
    ld [hl], e                                    ; $66ec: $73
    ld [hl], h                                    ; $66ed: $74
    ld bc, $2061                                  ; $66ee: $01 $61 $20
    ld l, h                                       ; $66f1: $6c
    ld l, c                                       ; $66f2: $69
    ld h, c                                       ; $66f3: $61
    ld h, d                                       ; $66f4: $62
    ld l, c                                       ; $66f5: $69
    ld l, h                                       ; $66f6: $6c
    ld l, c                                       ; $66f7: $69
    ld [hl], h                                    ; $66f8: $74

jr_01d_66f9:
    ld a, c                                       ; $66f9: $79
    ld l, $03                                     ; $66fa: $2e $03
    nop                                           ; $66fc: $00
    ld d, d                                       ; $66fd: $52

jr_01d_66fe:
    ld h, l                                       ; $66fe: $65
    ld h, c                                       ; $66ff: $61
    ld l, h                                       ; $6700: $6c
    ld l, h                                       ; $6701: $6c
    ld a, c                                       ; $6702: $79
    ccf                                           ; $6703: $3f

jr_01d_6704:
    jr nz, jr_01d_6747                            ; $6704: $20 $41

    ld [hl], a                                    ; $6706: $77
    ld [hl], d                                    ; $6707: $72
    ld l, c                                       ; $6708: $69
    ld h, a                                       ; $6709: $67
    ld l, b                                       ; $670a: $68
    ld [hl], h                                    ; $670b: $74
    ld hl, $0003                                  ; $670c: $21 $03 $00
    ld d, a                                       ; $670f: $57
    ld h, l                                       ; $6710: $65

jr_01d_6711:
    jr nz, jr_01d_6776                            ; $6711: $20 $63

    ld h, c                                       ; $6713: $61
    ld l, [hl]                                    ; $6714: $6e
    jr nz, jr_01d_6787                            ; $6715: $20 $70

    ld l, h                                       ; $6717: $6c
    ld h, c                                       ; $6718: $61
    ld a, c                                       ; $6719: $79
    ld bc, $6c61                                  ; $671a: $01 $61 $6c

jr_01d_671d:
    ld [hl], h                                    ; $671d: $74
    ld h, l                                       ; $671e: $65
    ld [hl], d                                    ; $671f: $72
    ld l, [hl]                                    ; $6720: $6e
    ld h, c                                       ; $6721: $61
    ld [hl], h                                    ; $6722: $74
    ld h, l                                       ; $6723: $65
    jr nz, jr_01d_6798                            ; $6724: $20 $72

    ld [hl], l                                    ; $6726: $75
    ld l, h                                       ; $6727: $6c
    ld h, l                                       ; $6728: $65
    ld [hl], e                                    ; $6729: $73

jr_01d_672a:
    ld hl, $0003                                  ; $672a: $21 $03 $00
    ld b, c                                       ; $672d: $41
    jr nz, @+$76                                  ; $672e: $20 $74

jr_01d_6730:
    ld h, l                                       ; $6730: $65

jr_01d_6731:
    ld h, c                                       ; $6731: $61
    ld l, l                                       ; $6732: $6d
    jr nz, @+$71                                  ; $6733: $20 $6f

    ld h, [hl]                                    ; $6735: $66
    jr nz, jr_01d_676a                            ; $6736: $20 $32

    jr nz, jr_01d_67ae                            ; $6738: $20 $74

    ld h, c                                       ; $673a: $61

jr_01d_673b:
    ld l, e                                       ; $673b: $6b
    ld h, l                                       ; $673c: $65
    ld [hl], e                                    ; $673d: $73
    ld bc, $7574                                  ; $673e: $01 $74 $75
    ld [hl], d                                    ; $6741: $72

jr_01d_6742:
    ld l, [hl]                                    ; $6742: $6e
    ld [hl], e                                    ; $6743: $73
    jr nz, jr_01d_67ae                            ; $6744: $20 $68

    ld l, c                                       ; $6746: $69

jr_01d_6747:
    ld [hl], h                                    ; $6747: $74
    ld [hl], h                                    ; $6748: $74
    ld l, c                                       ; $6749: $69
    ld l, [hl]                                    ; $674a: $6e
    ld h, a                                       ; $674b: $67
    jr nz, jr_01d_67c2                            ; $674c: $20 $74

    ld l, b                                       ; $674e: $68
    ld h, l                                       ; $674f: $65
    ld bc, $6173                                  ; $6750: $01 $73 $61
    ld l, l                                       ; $6753: $6d
    ld h, l                                       ; $6754: $65

jr_01d_6755:
    jr nz, jr_01d_67b9                            ; $6755: $20 $62

    ld h, c                                       ; $6757: $61
    ld l, h                                       ; $6758: $6c
    ld l, h                                       ; $6759: $6c
    inc l                                         ; $675a: $2c
    jr nz, jr_01d_67ac                            ; $675b: $20 $4f

    ld c, e                                       ; $675d: $4b
    ccf                                           ; $675e: $3f
    inc bc                                        ; $675f: $03
    nop                                           ; $6760: $00
    ld d, h                                       ; $6761: $54
    ld l, b                                       ; $6762: $68
    ld l, c                                       ; $6763: $69
    ld [hl], e                                    ; $6764: $73
    jr nz, jr_01d_67d3                            ; $6765: $20 $6c

    ld l, a                                       ; $6767: $6f
    ld [hl], a                                    ; $6768: $77
    dec l                                         ; $6769: $2d

jr_01d_676a:
    ld l, h                                       ; $676a: $6c
    ld h, l                                       ; $676b: $65
    halt                                          ; $676c: $76
    ld h, l                                       ; $676d: $65
    ld l, h                                       ; $676e: $6c
    ld bc, $6c70                                  ; $676f: $01 $70 $6c
    ld h, c                                       ; $6772: $61
    ld a, c                                       ; $6773: $79
    ld h, l                                       ; $6774: $65
    ld [hl], d                                    ; $6775: $72

jr_01d_6776:
    jr nz, jr_01d_67e1                            ; $6776: $20 $69

    ld [hl], e                                    ; $6778: $73
    jr nz, @+$6a                                  ; $6779: $20 $68

    ld l, a                                       ; $677b: $6f
    ld [hl], b                                    ; $677c: $70
    ld l, c                                       ; $677d: $69
    ld l, [hl]                                    ; $677e: $6e
    ld h, a                                       ; $677f: $67
    ld bc, $6f66                                  ; $6780: $01 $66 $6f
    ld [hl], d                                    ; $6783: $72
    jr nz, jr_01d_67e7                            ; $6784: $20 $61

    ld l, [hl]                                    ; $6786: $6e

jr_01d_6787:
    jr nz, jr_01d_67fe                            ; $6787: $20 $75

    ld [hl], b                                    ; $6789: $70
    ld [hl], e                                    ; $678a: $73
    ld h, l                                       ; $678b: $65
    ld [hl], h                                    ; $678c: $74
    ld l, $03                                     ; $678d: $2e $03
    nop                                           ; $678f: $00
    ld d, a                                       ; $6790: $57
    ld l, b                                       ; $6791: $68
    ld h, l                                       ; $6792: $65
    ld l, [hl]                                    ; $6793: $6e
    jr nz, @+$7b                                  ; $6794: $20 $79

    ld l, a                                       ; $6796: $6f
    ld [hl], l                                    ; $6797: $75

jr_01d_6798:
    daa                                           ; $6798: $27
    ld [hl], d                                    ; $6799: $72
    ld h, l                                       ; $679a: $65
    jr nz, jr_01d_67fe                            ; $679b: $20 $61

    ld [hl], e                                    ; $679d: $73
    jr nz, jr_01d_6807                            ; $679e: $20 $67

    ld l, a                                       ; $67a0: $6f
    ld l, a                                       ; $67a1: $6f
    ld h, h                                       ; $67a2: $64
    ld bc, $7361                                  ; $67a3: $01 $61 $73
    jr nz, jr_01d_67af                            ; $67a6: $20 $07

    inc l                                         ; $67a8: $2c
    jr nz, jr_01d_681f                            ; $67a9: $20 $74

    ld l, b                                       ; $67ab: $68

jr_01d_67ac:
    ld h, l                                       ; $67ac: $65
    ld [hl], d                                    ; $67ad: $72

jr_01d_67ae:
    ld h, l                                       ; $67ae: $65

jr_01d_67af:
    daa                                           ; $67af: $27
    ld [hl], e                                    ; $67b0: $73
    ld bc, $6f6e                                  ; $67b1: $01 $6e $6f
    jr nz, @+$66                                  ; $67b4: $20 $64

    ld h, l                                       ; $67b6: $65
    ld l, [hl]                                    ; $67b7: $6e
    ld a, c                                       ; $67b8: $79

jr_01d_67b9:
    ld l, c                                       ; $67b9: $69
    ld l, [hl]                                    ; $67ba: $6e
    ld h, a                                       ; $67bb: $67
    jr nz, jr_01d_6827                            ; $67bc: $20 $69

    ld [hl], h                                    ; $67be: $74
    ld hl, $0003                                  ; $67bf: $21 $03 $00

jr_01d_67c2:
    ld d, a                                       ; $67c2: $57
    ld l, c                                       ; $67c3: $69
    ld [hl], h                                    ; $67c4: $74
    ld l, b                                       ; $67c5: $68
    jr nz, jr_01d_6829                            ; $67c6: $20 $61

    jr nz, jr_01d_682d                            ; $67c8: $20 $63

    ld l, b                                       ; $67ca: $68
    ld h, c                                       ; $67cb: $61
    ld l, l                                       ; $67cc: $6d
    ld [hl], b                                    ; $67cd: $70
    jr nz, @+$6e                                  ; $67ce: $20 $6c

    ld l, c                                       ; $67d0: $69
    ld l, e                                       ; $67d1: $6b
    ld h, l                                       ; $67d2: $65

jr_01d_67d3:
    ld bc, $2c07                                  ; $67d3: $01 $07 $2c
    jr nz, jr_01d_684c                            ; $67d6: $20 $74

    ld l, b                                       ; $67d8: $68
    ld h, l                                       ; $67d9: $65
    ld [hl], d                                    ; $67da: $72
    ld h, l                                       ; $67db: $65
    ld bc, $7369                                  ; $67dc: $01 $69 $73
    jr nz, @+$70                                  ; $67df: $20 $6e

jr_01d_67e1:
    ld l, a                                       ; $67e1: $6f
    jr nz, @+$66                                  ; $67e2: $20 $64

    ld h, l                                       ; $67e4: $65
    ld l, [hl]                                    ; $67e5: $6e
    ld a, c                                       ; $67e6: $79

jr_01d_67e7:
    ld l, c                                       ; $67e7: $69
    ld l, [hl]                                    ; $67e8: $6e
    ld h, a                                       ; $67e9: $67
    jr nz, @+$6b                                  ; $67ea: $20 $69

    ld [hl], h                                    ; $67ec: $74
    ld hl, $0003                                  ; $67ed: $21 $03 $00
    ld d, b                                       ; $67f0: $50
    ld l, h                                       ; $67f1: $6c
    ld h, l                                       ; $67f2: $65
    ld h, c                                       ; $67f3: $61
    ld [hl], e                                    ; $67f4: $73
    ld h, l                                       ; $67f5: $65
    jr nz, jr_01d_686b                            ; $67f6: $20 $73

    ld [hl], h                                    ; $67f8: $74
    ld h, c                                       ; $67f9: $61
    ld [hl], d                                    ; $67fa: $72
    ld [hl], h                                    ; $67fb: $74
    jr nz, jr_01d_686c                            ; $67fc: $20 $6e

jr_01d_67fe:
    ld l, a                                       ; $67fe: $6f
    ld [hl], a                                    ; $67ff: $77
    ld l, $03                                     ; $6800: $2e $03
    nop                                           ; $6802: $00
    ld d, a                                       ; $6803: $57
    ld h, l                                       ; $6804: $65
    jr nz, jr_01d_686a                            ; $6805: $20 $63

jr_01d_6807:
    ld h, c                                       ; $6807: $61
    ld l, [hl]                                    ; $6808: $6e
    jr nz, jr_01d_687b                            ; $6809: $20 $70

    ld l, h                                       ; $680b: $6c
    ld h, c                                       ; $680c: $61
    ld a, c                                       ; $680d: $79
    jr nz, jr_01d_6854                            ; $680e: $20 $44

    ld [hl], l                                    ; $6810: $75
    ld l, [hl]                                    ; $6811: $6e
    ld h, l                                       ; $6812: $65
    ld bc, $6c43                                  ; $6813: $01 $43 $6c
    ld [hl], l                                    ; $6816: $75
    ld h, d                                       ; $6817: $62
    inc l                                         ; $6818: $2c
    jr nz, jr_01d_688f                            ; $6819: $20 $74

    ld l, b                                       ; $681b: $68
    ld h, c                                       ; $681c: $61
    ld l, [hl]                                    ; $681d: $6e
    ld l, e                                       ; $681e: $6b

jr_01d_681f:
    ld [hl], e                                    ; $681f: $73
    jr nz, @+$76                                  ; $6820: $20 $74

    ld l, a                                       ; $6822: $6f
    ld bc, $2e07                                  ; $6823: $01 $07 $2e
    inc bc                                        ; $6826: $03

jr_01d_6827:
    nop                                           ; $6827: $00
    ld e, c                                       ; $6828: $59

jr_01d_6829:
    ld h, l                                       ; $6829: $65
    ld h, c                                       ; $682a: $61
    ld l, b                                       ; $682b: $68
    inc l                                         ; $682c: $2c

jr_01d_682d:
    jr nz, jr_01d_68a3                            ; $682d: $20 $74

    ld l, b                                       ; $682f: $68
    ld h, c                                       ; $6830: $61
    ld l, [hl]                                    ; $6831: $6e
    ld l, e                                       ; $6832: $6b
    ld [hl], e                                    ; $6833: $73
    jr nz, jr_01d_6897                            ; $6834: $20 $61

    jr nz, jr_01d_68a4                            ; $6836: $20 $6c

    ld l, a                                       ; $6838: $6f
    ld [hl], h                                    ; $6839: $74
    ld hl, $0003                                  ; $683a: $21 $03 $00
    ld b, e                                       ; $683d: $43
    ld l, a                                       ; $683e: $6f
    ld l, l                                       ; $683f: $6d
    ld [hl], b                                    ; $6840: $70
    ld h, l                                       ; $6841: $65
    ld [hl], h                                    ; $6842: $74
    ld h, l                                       ; $6843: $65
    jr nz, jr_01d_68a8                            ; $6844: $20 $62

    ld a, c                                       ; $6846: $79
    jr nz, jr_01d_68bd                            ; $6847: $20 $74

    ld h, c                                       ; $6849: $61
    ld l, e                                       ; $684a: $6b
    ld l, c                                       ; $684b: $69

jr_01d_684c:
    ld l, [hl]                                    ; $684c: $6e
    ld h, a                                       ; $684d: $67
    ld bc, $7574                                  ; $684e: $01 $74 $75
    ld [hl], d                                    ; $6851: $72
    ld l, [hl]                                    ; $6852: $6e
    ld [hl], e                                    ; $6853: $73

jr_01d_6854:
    jr nz, jr_01d_68be                            ; $6854: $20 $68

    ld l, c                                       ; $6856: $69
    ld [hl], h                                    ; $6857: $74
    ld [hl], h                                    ; $6858: $74
    ld l, c                                       ; $6859: $69
    ld l, [hl]                                    ; $685a: $6e
    ld h, a                                       ; $685b: $67
    jr nz, jr_01d_68cd                            ; $685c: $20 $6f

    ld l, [hl]                                    ; $685e: $6e
    ld h, l                                       ; $685f: $65
    ld bc, $6162                                  ; $6860: $01 $62 $61
    ld l, h                                       ; $6863: $6c
    ld l, h                                       ; $6864: $6c
    ld l, $03                                     ; $6865: $2e $03
    nop                                           ; $6867: $00
    ld d, a                                       ; $6868: $57
    ld l, c                                       ; $6869: $69

jr_01d_686a:
    ld l, h                                       ; $686a: $6c

jr_01d_686b:
    ld l, h                                       ; $686b: $6c

jr_01d_686c:
    jr nz, @+$7b                                  ; $686c: $20 $79

    ld l, a                                       ; $686e: $6f
    ld [hl], l                                    ; $686f: $75
    jr nz, jr_01d_68e5                            ; $6870: $20 $73

    ld [hl], h                                    ; $6872: $74
    ld h, c                                       ; $6873: $61
    ld [hl], d                                    ; $6874: $72
    ld [hl], h                                    ; $6875: $74
    inc l                                         ; $6876: $2c
    ld bc, $3f07                                  ; $6877: $01 $07 $3f
    nop                                           ; $687a: $00

jr_01d_687b:
    ld c, a                                       ; $687b: $4f
    ld c, e                                       ; $687c: $4b
    jr nz, @+$76                                  ; $687d: $20 $74

    ld l, b                                       ; $687f: $68
    ld h, l                                       ; $6880: $65
    ld l, [hl]                                    ; $6881: $6e
    inc l                                         ; $6882: $2c
    jr nz, jr_01d_68f2                            ; $6883: $20 $6d

    ld h, l                                       ; $6885: $65
    jr nz, @+$68                                  ; $6886: $20 $66

    ld l, c                                       ; $6888: $69
    ld [hl], d                                    ; $6889: $72
    ld [hl], e                                    ; $688a: $73
    ld [hl], h                                    ; $688b: $74
    ccf                                           ; $688c: $3f
    nop                                           ; $688d: $00
    ld d, a                                       ; $688e: $57

jr_01d_688f:
    ld h, l                                       ; $688f: $65
    jr nz, jr_01d_68fe                            ; $6890: $20 $6c

    ld l, a                                       ; $6892: $6f
    ld [hl], e                                    ; $6893: $73
    ld [hl], h                                    ; $6894: $74
    ld l, $2e                                     ; $6895: $2e $2e

jr_01d_6897:
    ld l, $03                                     ; $6897: $2e $03
    nop                                           ; $6899: $00
    ld b, d                                       ; $689a: $42
    ld [hl], l                                    ; $689b: $75
    ld [hl], h                                    ; $689c: $74
    jr nz, jr_01d_6908                            ; $689d: $20 $69

    ld [hl], h                                    ; $689f: $74
    jr nz, jr_01d_6919                            ; $68a0: $20 $77

    ld h, c                                       ; $68a2: $61

jr_01d_68a3:
    ld [hl], e                                    ; $68a3: $73

jr_01d_68a4:
    jr nz, jr_01d_690c                            ; $68a4: $20 $66

    ld [hl], l                                    ; $68a6: $75
    ld l, [hl]                                    ; $68a7: $6e

jr_01d_68a8:
    ld hl, $0003                                  ; $68a8: $21 $03 $00
    ld d, b                                       ; $68ab: $50
    ld l, h                                       ; $68ac: $6c
    ld [hl], l                                    ; $68ad: $75
    ld [hl], e                                    ; $68ae: $73
    inc l                                         ; $68af: $2c
    jr nz, jr_01d_6929                            ; $68b0: $20 $77

    ld h, l                                       ; $68b2: $65
    jr nz, @+$69                                  ; $68b3: $20 $67

    ld l, a                                       ; $68b5: $6f
    ld [hl], h                                    ; $68b6: $74
    jr nz, jr_01d_692d                            ; $68b7: $20 $74

    ld l, a                                       ; $68b9: $6f
    ld bc, $6c70                                  ; $68ba: $01 $70 $6c

jr_01d_68bd:
    ld h, c                                       ; $68bd: $61

jr_01d_68be:
    ld a, c                                       ; $68be: $79
    jr nz, @+$46                                  ; $68bf: $20 $44

    ld [hl], l                                    ; $68c1: $75
    ld l, [hl]                                    ; $68c2: $6e
    ld h, l                                       ; $68c3: $65
    jr nz, @+$45                                  ; $68c4: $20 $43

    ld l, h                                       ; $68c6: $6c
    ld [hl], l                                    ; $68c7: $75
    ld h, d                                       ; $68c8: $62
    ld hl, $0003                                  ; $68c9: $21 $03 $00
    ld c, h                                       ; $68cc: $4c

jr_01d_68cd:
    ld h, l                                       ; $68cd: $65
    ld [hl], h                                    ; $68ce: $74
    daa                                           ; $68cf: $27
    ld [hl], e                                    ; $68d0: $73
    jr nz, jr_01d_6943                            ; $68d1: $20 $70

    ld l, h                                       ; $68d3: $6c
    ld h, c                                       ; $68d4: $61
    ld a, c                                       ; $68d5: $79
    ld bc, $6c61                                  ; $68d6: $01 $61 $6c
    ld [hl], h                                    ; $68d9: $74
    ld h, l                                       ; $68da: $65
    ld [hl], d                                    ; $68db: $72
    ld l, [hl]                                    ; $68dc: $6e
    ld h, c                                       ; $68dd: $61
    ld [hl], h                                    ; $68de: $74
    ld h, l                                       ; $68df: $65
    jr nz, @+$74                                  ; $68e0: $20 $72

    ld [hl], l                                    ; $68e2: $75
    ld l, h                                       ; $68e3: $6c
    ld h, l                                       ; $68e4: $65

jr_01d_68e5:
    ld [hl], e                                    ; $68e5: $73
    ld bc, $6761                                  ; $68e6: $01 $61 $67
    ld h, c                                       ; $68e9: $61
    ld l, c                                       ; $68ea: $69
    ld l, [hl]                                    ; $68eb: $6e
    ld hl, $0003                                  ; $68ec: $21 $03 $00
    ld c, a                                       ; $68ef: $4f
    ld c, e                                       ; $68f0: $4b
    inc l                                         ; $68f1: $2c

jr_01d_68f2:
    jr nz, @+$6e                                  ; $68f2: $20 $6c

    ld h, l                                       ; $68f4: $65
    ld [hl], h                                    ; $68f5: $74
    daa                                           ; $68f6: $27
    ld [hl], e                                    ; $68f7: $73
    jr nz, @+$69                                  ; $68f8: $20 $67

    ld l, a                                       ; $68fa: $6f
    ld l, $03                                     ; $68fb: $2e $03
    nop                                           ; $68fd: $00

jr_01d_68fe:
    ld c, c                                       ; $68fe: $49
    ld [hl], h                                    ; $68ff: $74
    daa                                           ; $6900: $27
    ld [hl], e                                    ; $6901: $73
    jr nz, jr_01d_6965                            ; $6902: $20 $61

    jr nz, jr_01d_697a                            ; $6904: $20 $74

    ld l, c                                       ; $6906: $69
    ld h, l                                       ; $6907: $65

jr_01d_6908:
    ld l, $2e                                     ; $6908: $2e $2e
    ld l, $03                                     ; $690a: $2e $03

jr_01d_690c:
    nop                                           ; $690c: $00
    ld b, d                                       ; $690d: $42
    ld [hl], l                                    ; $690e: $75
    ld [hl], h                                    ; $690f: $74
    jr nz, jr_01d_697b                            ; $6910: $20 $69

    ld [hl], h                                    ; $6912: $74
    jr nz, @+$79                                  ; $6913: $20 $77

    ld h, c                                       ; $6915: $61
    ld [hl], e                                    ; $6916: $73
    jr nz, jr_01d_697f                            ; $6917: $20 $66

jr_01d_6919:
    ld [hl], l                                    ; $6919: $75
    ld l, [hl]                                    ; $691a: $6e
    ld hl, $0003                                  ; $691b: $21 $03 $00
    ld d, b                                       ; $691e: $50
    ld l, h                                       ; $691f: $6c
    ld [hl], l                                    ; $6920: $75
    ld [hl], e                                    ; $6921: $73
    inc l                                         ; $6922: $2c
    jr nz, jr_01d_699c                            ; $6923: $20 $77

    ld h, l                                       ; $6925: $65
    jr nz, @+$69                                  ; $6926: $20 $67

    ld l, a                                       ; $6928: $6f

jr_01d_6929:
    ld [hl], h                                    ; $6929: $74
    jr nz, jr_01d_69a0                            ; $692a: $20 $74

    ld l, a                                       ; $692c: $6f

jr_01d_692d:
    ld bc, $6c70                                  ; $692d: $01 $70 $6c
    ld h, c                                       ; $6930: $61
    ld a, c                                       ; $6931: $79
    jr nz, @+$46                                  ; $6932: $20 $44

    ld [hl], l                                    ; $6934: $75
    ld l, [hl]                                    ; $6935: $6e
    ld h, l                                       ; $6936: $65
    jr nz, jr_01d_697c                            ; $6937: $20 $43

    ld l, h                                       ; $6939: $6c
    ld [hl], l                                    ; $693a: $75
    ld h, d                                       ; $693b: $62
    ld hl, $0003                                  ; $693c: $21 $03 $00
    ld c, h                                       ; $693f: $4c
    ld h, l                                       ; $6940: $65
    ld [hl], h                                    ; $6941: $74
    daa                                           ; $6942: $27

jr_01d_6943:
    ld [hl], e                                    ; $6943: $73
    jr nz, jr_01d_69b6                            ; $6944: $20 $70

    ld l, h                                       ; $6946: $6c
    ld h, c                                       ; $6947: $61
    ld a, c                                       ; $6948: $79
    ld bc, $6c61                                  ; $6949: $01 $61 $6c
    ld [hl], h                                    ; $694c: $74
    ld h, l                                       ; $694d: $65
    ld [hl], d                                    ; $694e: $72
    ld l, [hl]                                    ; $694f: $6e
    ld h, c                                       ; $6950: $61
    ld [hl], h                                    ; $6951: $74
    ld h, l                                       ; $6952: $65
    jr nz, jr_01d_69c7                            ; $6953: $20 $72

    ld [hl], l                                    ; $6955: $75
    ld l, h                                       ; $6956: $6c
    ld h, l                                       ; $6957: $65
    ld [hl], e                                    ; $6958: $73
    ld bc, $6761                                  ; $6959: $01 $61 $67
    ld h, c                                       ; $695c: $61
    ld l, c                                       ; $695d: $69
    ld l, [hl]                                    ; $695e: $6e
    ld hl, $0003                                  ; $695f: $21 $03 $00
    ld c, a                                       ; $6962: $4f
    ld c, e                                       ; $6963: $4b
    inc l                                         ; $6964: $2c

jr_01d_6965:
    jr nz, jr_01d_69d3                            ; $6965: $20 $6c

    ld h, l                                       ; $6967: $65
    ld [hl], h                                    ; $6968: $74
    daa                                           ; $6969: $27
    ld [hl], e                                    ; $696a: $73
    jr nz, jr_01d_69d4                            ; $696b: $20 $67

    ld l, a                                       ; $696d: $6f
    ld l, $03                                     ; $696e: $2e $03
    nop                                           ; $6970: $00
    ld d, a                                       ; $6971: $57
    ld h, l                                       ; $6972: $65
    jr nz, jr_01d_69ec                            ; $6973: $20 $77

    ld l, a                                       ; $6975: $6f
    ld l, [hl]                                    ; $6976: $6e
    ld hl, $0003                                  ; $6977: $21 $03 $00

jr_01d_697a:
    ld d, a                                       ; $697a: $57

jr_01d_697b:
    ld h, l                                       ; $697b: $65

jr_01d_697c:
    jr nz, jr_01d_69f5                            ; $697c: $20 $77

    ld l, a                                       ; $697e: $6f

jr_01d_697f:
    ld l, [hl]                                    ; $697f: $6e
    inc l                                         ; $6980: $2c
    jr nz, @+$76                                  ; $6981: $20 $74

    ld l, b                                       ; $6983: $68
    ld h, c                                       ; $6984: $61
    ld l, [hl]                                    ; $6985: $6e
    ld l, e                                       ; $6986: $6b
    ld [hl], e                                    ; $6987: $73
    ld bc, $6f74                                  ; $6988: $01 $74 $6f
    jr nz, jr_01d_6994                            ; $698b: $20 $07

    ld hl, $0003                                  ; $698d: $21 $03 $00
    ld c, c                                       ; $6990: $49
    ld [hl], h                                    ; $6991: $74
    daa                                           ; $6992: $27
    ld [hl], e                                    ; $6993: $73

jr_01d_6994:
    jr nz, @+$63                                  ; $6994: $20 $61

    ld l, h                                       ; $6996: $6c
    ld l, h                                       ; $6997: $6c
    jr nz, jr_01d_6a13                            ; $6998: $20 $79

    ld l, a                                       ; $699a: $6f
    ld [hl], l                                    ; $699b: $75

jr_01d_699c:
    ld [hl], d                                    ; $699c: $72
    ld bc, $6f64                                  ; $699d: $01 $64 $6f

jr_01d_69a0:
    ld l, c                                       ; $69a0: $69
    ld l, [hl]                                    ; $69a1: $6e
    ld h, a                                       ; $69a2: $67
    ld hl, $5420                                  ; $69a3: $21 $20 $54
    ld l, b                                       ; $69a6: $68
    ld h, c                                       ; $69a7: $61
    ld l, [hl]                                    ; $69a8: $6e
    ld l, e                                       ; $69a9: $6b
    ld [hl], e                                    ; $69aa: $73
    inc l                                         ; $69ab: $2c
    ld bc, $2107                                  ; $69ac: $01 $07 $21
    inc bc                                        ; $69af: $03
    nop                                           ; $69b0: $00
    ld c, c                                       ; $69b1: $49
    jr nz, jr_01d_6a17                            ; $69b2: $20 $63

    ld h, c                                       ; $69b4: $61
    ld l, [hl]                                    ; $69b5: $6e

jr_01d_69b6:
    daa                                           ; $69b6: $27
    ld [hl], h                                    ; $69b7: $74
    jr nz, jr_01d_6a1c                            ; $69b8: $20 $62

    ld h, l                                       ; $69ba: $65
    ld l, h                                       ; $69bb: $6c
    ld l, c                                       ; $69bc: $69
    ld h, l                                       ; $69bd: $65
    halt                                          ; $69be: $76
    ld h, l                                       ; $69bf: $65
    ld bc, $7469                                  ; $69c0: $01 $69 $74
    ld hl, $4e20                                  ; $69c3: $21 $20 $4e
    ld l, c                                       ; $69c6: $69

jr_01d_69c7:
    ld h, e                                       ; $69c7: $63
    ld h, l                                       ; $69c8: $65
    jr nz, jr_01d_6a42                            ; $69c9: $20 $77

    ld l, c                                       ; $69cb: $69
    ld l, [hl]                                    ; $69cc: $6e
    inc l                                         ; $69cd: $2c
    jr nz, jr_01d_69d7                            ; $69ce: $20 $07

    ld l, $03                                     ; $69d0: $2e $03
    nop                                           ; $69d2: $00

jr_01d_69d3:
    ld c, h                                       ; $69d3: $4c

jr_01d_69d4:
    ld h, l                                       ; $69d4: $65
    ld [hl], h                                    ; $69d5: $74
    daa                                           ; $69d6: $27

jr_01d_69d7:
    ld [hl], e                                    ; $69d7: $73
    jr nz, jr_01d_6a4a                            ; $69d8: $20 $70

    ld [hl], d                                    ; $69da: $72
    ld h, c                                       ; $69db: $61
    ld h, e                                       ; $69dc: $63
    ld [hl], h                                    ; $69dd: $74
    ld l, c                                       ; $69de: $69
    ld h, e                                       ; $69df: $63
    ld h, l                                       ; $69e0: $65
    inc l                                         ; $69e1: $2c
    jr nz, jr_01d_6a57                            ; $69e2: $20 $73

    ld l, a                                       ; $69e4: $6f
    ld bc, $6577                                  ; $69e5: $01 $77 $65
    jr nz, jr_01d_6a4e                            ; $69e8: $20 $64

    ld l, a                                       ; $69ea: $6f
    ld l, [hl]                                    ; $69eb: $6e

jr_01d_69ec:
    daa                                           ; $69ec: $27
    ld [hl], h                                    ; $69ed: $74
    jr nz, jr_01d_6a5c                            ; $69ee: $20 $6c

    ld l, a                                       ; $69f0: $6f
    ld [hl], e                                    ; $69f1: $73
    ld h, l                                       ; $69f2: $65
    jr nz, jr_01d_6a69                            ; $69f3: $20 $74

jr_01d_69f5:
    ld l, a                                       ; $69f5: $6f
    ld bc, $2007                                  ; $69f6: $01 $07 $20
    ld h, c                                       ; $69f9: $61
    ld h, a                                       ; $69fa: $67
    ld h, c                                       ; $69fb: $61
    ld l, c                                       ; $69fc: $69
    ld l, [hl]                                    ; $69fd: $6e
    ld l, $03                                     ; $69fe: $2e $03
    nop                                           ; $6a00: $00
    ld c, b                                       ; $6a01: $48
    ld h, l                                       ; $6a02: $65
    ld a, c                                       ; $6a03: $79
    inc l                                         ; $6a04: $2c
    jr nz, jr_01d_6a0e                            ; $6a05: $20 $07

    ld hl, $5401                                  ; $6a07: $21 $01 $54
    ld l, b                                       ; $6a0a: $68
    ld h, c                                       ; $6a0b: $61
    ld l, [hl]                                    ; $6a0c: $6e
    ld l, e                                       ; $6a0d: $6b

jr_01d_6a0e:
    ld [hl], e                                    ; $6a0e: $73
    jr nz, jr_01d_6a77                            ; $6a0f: $20 $66

    ld l, a                                       ; $6a11: $6f
    ld [hl], d                                    ; $6a12: $72

jr_01d_6a13:
    jr nz, jr_01d_6a89                            ; $6a13: $20 $74

    ld l, b                                       ; $6a15: $68
    ld h, l                                       ; $6a16: $65

jr_01d_6a17:
    ld bc, $746f                                  ; $6a17: $01 $6f $74
    ld l, b                                       ; $6a1a: $68
    ld h, l                                       ; $6a1b: $65

jr_01d_6a1c:
    ld [hl], d                                    ; $6a1c: $72
    jr nz, jr_01d_6a83                            ; $6a1d: $20 $64

    ld h, c                                       ; $6a1f: $61
    ld a, c                                       ; $6a20: $79
    ld l, $20                                     ; $6a21: $2e $20
    ld d, h                                       ; $6a23: $54
    ld l, b                                       ; $6a24: $68
    ld h, c                                       ; $6a25: $61
    ld [hl], h                                    ; $6a26: $74
    ld [bc], a                                    ; $6a27: $02
    ld [hl], a                                    ; $6a28: $77
    ld h, c                                       ; $6a29: $61
    ld [hl], e                                    ; $6a2a: $73
    jr nz, @+$74                                  ; $6a2b: $20 $72

    ld h, l                                       ; $6a2d: $65
    ld h, c                                       ; $6a2e: $61
    ld l, h                                       ; $6a2f: $6c
    ld l, h                                       ; $6a30: $6c
    ld a, c                                       ; $6a31: $79
    jr nz, jr_01d_6a9a                            ; $6a32: $20 $66

    ld [hl], l                                    ; $6a34: $75
    ld l, [hl]                                    ; $6a35: $6e
    ld hl, $5701                                  ; $6a36: $21 $01 $57
    ld h, c                                       ; $6a39: $61
    ld l, [hl]                                    ; $6a3a: $6e
    ld [hl], h                                    ; $6a3b: $74
    jr nz, jr_01d_6ab2                            ; $6a3c: $20 $74

    ld l, a                                       ; $6a3e: $6f
    jr nz, @+$72                                  ; $6a3f: $20 $70

    ld l, h                                       ; $6a41: $6c

jr_01d_6a42:
    ld h, c                                       ; $6a42: $61
    ld a, c                                       ; $6a43: $79
    jr nz, @+$63                                  ; $6a44: $20 $61

    ld h, a                                       ; $6a46: $67
    ld h, c                                       ; $6a47: $61
    ld l, c                                       ; $6a48: $69
    ld l, [hl]                                    ; $6a49: $6e

jr_01d_6a4a:
    ccf                                           ; $6a4a: $3f
    nop                                           ; $6a4b: $00
    ld l, $2e                                     ; $6a4c: $2e $2e

jr_01d_6a4e:
    ld l, $41                                     ; $6a4e: $2e $41
    ld [hl], a                                    ; $6a50: $77
    inc l                                         ; $6a51: $2c
    jr nz, jr_01d_6ab5                            ; $6a52: $20 $61

    ld l, h                                       ; $6a54: $6c
    ld [hl], d                                    ; $6a55: $72
    ld l, c                                       ; $6a56: $69

jr_01d_6a57:
    ld h, a                                       ; $6a57: $67
    ld l, b                                       ; $6a58: $68
    ld [hl], h                                    ; $6a59: $74
    ld l, $01                                     ; $6a5a: $2e $01

jr_01d_6a5c:
    ld c, l                                       ; $6a5c: $4d
    ld h, c                                       ; $6a5d: $61
    ld a, c                                       ; $6a5e: $79
    ld h, d                                       ; $6a5f: $62
    ld h, l                                       ; $6a60: $65
    jr nz, jr_01d_6ad1                            ; $6a61: $20 $6e

    ld h, l                                       ; $6a63: $65
    ld a, b                                       ; $6a64: $78
    ld [hl], h                                    ; $6a65: $74
    jr nz, jr_01d_6adc                            ; $6a66: $20 $74

    ld l, c                                       ; $6a68: $69

jr_01d_6a69:
    ld l, l                                       ; $6a69: $6d
    ld h, l                                       ; $6a6a: $65
    ld l, $03                                     ; $6a6b: $2e $03
    nop                                           ; $6a6d: $00
    ld e, c                                       ; $6a6e: $59
    ld h, l                                       ; $6a6f: $65
    ld h, c                                       ; $6a70: $61
    ld l, b                                       ; $6a71: $68
    ccf                                           ; $6a72: $3f
    jr nz, jr_01d_6ab6                            ; $6a73: $20 $41

    ld l, h                                       ; $6a75: $6c
    ld l, h                                       ; $6a76: $6c

jr_01d_6a77:
    jr nz, jr_01d_6aeb                            ; $6a77: $20 $72

    ld l, c                                       ; $6a79: $69
    ld h, a                                       ; $6a7a: $67
    ld l, b                                       ; $6a7b: $68
    ld [hl], h                                    ; $6a7c: $74
    ld hl, $5702                                  ; $6a7d: $21 $02 $57
    ld l, b                                       ; $6a80: $68
    ld l, c                                       ; $6a81: $69
    ld h, e                                       ; $6a82: $63

jr_01d_6a83:
    ld l, b                                       ; $6a83: $68
    jr nz, jr_01d_6af8                            ; $6a84: $20 $72

    ld [hl], l                                    ; $6a86: $75
    ld l, h                                       ; $6a87: $6c
    ld h, l                                       ; $6a88: $65

jr_01d_6a89:
    ld [hl], e                                    ; $6a89: $73
    inc l                                         ; $6a8a: $2c
    ld bc, $7473                                  ; $6a8b: $01 $73 $74
    ld [hl], d                                    ; $6a8e: $72
    ld l, a                                       ; $6a8f: $6f
    ld l, e                                       ; $6a90: $6b
    ld h, l                                       ; $6a91: $65
    jr nz, jr_01d_6b03                            ; $6a92: $20 $6f

    ld [hl], d                                    ; $6a94: $72
    jr nz, jr_01d_6b04                            ; $6a95: $20 $6d

    ld h, c                                       ; $6a97: $61
    ld [hl], h                                    ; $6a98: $74
    ld h, e                                       ; $6a99: $63

jr_01d_6a9a:
    ld l, b                                       ; $6a9a: $68
    ccf                                           ; $6a9b: $3f
    inc bc                                        ; $6a9c: $03
    nop                                           ; $6a9d: $00
    ld l, $2e                                     ; $6a9e: $2e $2e
    ld l, $6d                                     ; $6aa0: $2e $6d
    ld h, c                                       ; $6aa2: $61
    ld a, c                                       ; $6aa3: $79
    ld h, d                                       ; $6aa4: $62
    ld h, l                                       ; $6aa5: $65
    jr nz, @+$70                                  ; $6aa6: $20 $6e

    ld h, l                                       ; $6aa8: $65
    ld a, b                                       ; $6aa9: $78
    ld [hl], h                                    ; $6aaa: $74
    jr nz, jr_01d_6b21                            ; $6aab: $20 $74

    ld l, c                                       ; $6aad: $69
    ld l, l                                       ; $6aae: $6d
    ld h, l                                       ; $6aaf: $65
    ld l, $03                                     ; $6ab0: $2e $03

jr_01d_6ab2:
    nop                                           ; $6ab2: $00
    ld d, a                                       ; $6ab3: $57
    ld l, c                                       ; $6ab4: $69

jr_01d_6ab5:
    ld l, h                                       ; $6ab5: $6c

jr_01d_6ab6:
    ld l, h                                       ; $6ab6: $6c
    jr nz, jr_01d_6b32                            ; $6ab7: $20 $79

    ld l, a                                       ; $6ab9: $6f
    ld [hl], l                                    ; $6aba: $75
    jr nz, jr_01d_6b31                            ; $6abb: $20 $74

    ld h, l                                       ; $6abd: $65
    ld [hl], e                                    ; $6abe: $73
    ld [hl], h                                    ; $6abf: $74
    jr nz, jr_01d_6b3b                            ; $6ac0: $20 $79

    ld l, a                                       ; $6ac2: $6f
    ld [hl], l                                    ; $6ac3: $75
    ld [hl], d                                    ; $6ac4: $72
    ld bc, $6b73                                  ; $6ac5: $01 $73 $6b
    ld l, c                                       ; $6ac8: $69
    ld l, h                                       ; $6ac9: $6c
    ld l, h                                       ; $6aca: $6c
    ld [hl], e                                    ; $6acb: $73
    jr nz, @+$71                                  ; $6acc: $20 $6f

    ld l, [hl]                                    ; $6ace: $6e
    jr nz, jr_01d_6b45                            ; $6acf: $20 $74

jr_01d_6ad1:
    ld l, b                                       ; $6ad1: $68
    ld l, c                                       ; $6ad2: $69
    ld [hl], e                                    ; $6ad3: $73
    ld bc, $6873                                  ; $6ad4: $01 $73 $68
    ld l, a                                       ; $6ad7: $6f
    ld [hl], d                                    ; $6ad8: $72
    ld [hl], h                                    ; $6ad9: $74
    jr nz, jr_01d_6b3f                            ; $6ada: $20 $63

jr_01d_6adc:
    ld l, a                                       ; $6adc: $6f
    ld [hl], l                                    ; $6add: $75
    ld [hl], d                                    ; $6ade: $72
    ld [hl], e                                    ; $6adf: $73
    ld h, l                                       ; $6ae0: $65
    ccf                                           ; $6ae1: $3f
    nop                                           ; $6ae2: $00
    ld b, a                                       ; $6ae3: $47
    ld h, l                                       ; $6ae4: $65
    ld [hl], h                                    ; $6ae5: $74
    jr nz, jr_01d_6b57                            ; $6ae6: $20 $6f

    ld l, [hl]                                    ; $6ae8: $6e
    jr nz, jr_01d_6b54                            ; $6ae9: $20 $69

jr_01d_6aeb:
    ld l, [hl]                                    ; $6aeb: $6e
    jr nz, jr_01d_6b1f                            ; $6aec: $20 $31

    jr nz, jr_01d_6b63                            ; $6aee: $20 $73

    ld [hl], h                                    ; $6af0: $74
    ld [hl], d                                    ; $6af1: $72
    ld l, a                                       ; $6af2: $6f
    ld l, e                                       ; $6af3: $6b
    ld h, l                                       ; $6af4: $65
    jr nz, jr_01d_6b58                            ; $6af5: $20 $61

    ld l, [hl]                                    ; $6af7: $6e

jr_01d_6af8:
    ld h, h                                       ; $6af8: $64
    ld bc, $6973                                  ; $6af9: $01 $73 $69
    ld l, [hl]                                    ; $6afc: $6e
    ld l, e                                       ; $6afd: $6b
    jr nz, jr_01d_6b69                            ; $6afe: $20 $69

    ld [hl], h                                    ; $6b00: $74
    jr nz, jr_01d_6b7a                            ; $6b01: $20 $77

jr_01d_6b03:
    ld l, c                                       ; $6b03: $69

jr_01d_6b04:
    ld [hl], h                                    ; $6b04: $74
    ld l, b                                       ; $6b05: $68
    jr nz, @+$33                                  ; $6b06: $20 $31

    jr nz, jr_01d_6b7a                            ; $6b08: $20 $70

    ld [hl], l                                    ; $6b0a: $75
    ld [hl], h                                    ; $6b0b: $74
    ld [hl], h                                    ; $6b0c: $74
    ld bc, $6e6f                                  ; $6b0d: $01 $6f $6e
    jr nz, jr_01d_6b77                            ; $6b10: $20 $65

    ld h, c                                       ; $6b12: $61
    ld h, e                                       ; $6b13: $63
    ld l, b                                       ; $6b14: $68
    jr nz, @+$6a                                  ; $6b15: $20 $68

    ld l, a                                       ; $6b17: $6f
    ld l, h                                       ; $6b18: $6c
    ld h, l                                       ; $6b19: $65
    ld hl, $0003                                  ; $6b1a: $21 $03 $00
    ld c, a                                       ; $6b1d: $4f
    ld l, [hl]                                    ; $6b1e: $6e

jr_01d_6b1f:
    ld l, h                                       ; $6b1f: $6c
    ld a, c                                       ; $6b20: $79

jr_01d_6b21:
    jr nz, jr_01d_6b70                            ; $6b21: $20 $4d

    ld h, c                                       ; $6b23: $61
    ld [hl], d                                    ; $6b24: $72
    ld l, c                                       ; $6b25: $69
    ld l, a                                       ; $6b26: $6f
    daa                                           ; $6b27: $27
    ld [hl], e                                    ; $6b28: $73
    jr nz, jr_01d_6b92                            ; $6b29: $20 $67

    ld l, a                                       ; $6b2b: $6f
    ld [hl], h                                    ; $6b2c: $74
    dec l                                         ; $6b2d: $2d
    ld bc, $6574                                  ; $6b2e: $01 $74 $65

jr_01d_6b31:
    ld l, [hl]                                    ; $6b31: $6e

jr_01d_6b32:
    jr nz, jr_01d_6ba3                            ; $6b32: $20 $6f

    ld l, [hl]                                    ; $6b34: $6e
    jr nz, @+$6b                                  ; $6b35: $20 $69

    ld l, [hl]                                    ; $6b37: $6e
    jr nz, jr_01d_6ba9                            ; $6b38: $20 $6f

    ld l, [hl]                                    ; $6b3a: $6e

jr_01d_6b3b:
    ld h, l                                       ; $6b3b: $65
    ld bc, $6e6f                                  ; $6b3c: $01 $6f $6e

jr_01d_6b3f:
    jr nz, @+$67                                  ; $6b3f: $20 $65

    halt                                          ; $6b41: $76
    ld h, l                                       ; $6b42: $65
    ld [hl], d                                    ; $6b43: $72
    ld a, c                                       ; $6b44: $79

jr_01d_6b45:
    jr nz, @+$6a                                  ; $6b45: $20 $68

    ld l, a                                       ; $6b47: $6f
    ld l, h                                       ; $6b48: $6c
    ld h, l                                       ; $6b49: $65
    ld l, $2e                                     ; $6b4a: $2e $2e
    ld l, $03                                     ; $6b4c: $2e $03
    nop                                           ; $6b4e: $00
    ld d, a                                       ; $6b4f: $57
    ld h, c                                       ; $6b50: $61
    ld l, [hl]                                    ; $6b51: $6e
    ld l, [hl]                                    ; $6b52: $6e
    ld h, c                                       ; $6b53: $61

jr_01d_6b54:
    jr nz, @+$76                                  ; $6b54: $20 $74

    ld [hl], d                                    ; $6b56: $72

jr_01d_6b57:
    ld a, c                                       ; $6b57: $79

jr_01d_6b58:
    jr nz, jr_01d_6bcd                            ; $6b58: $20 $73

    ld [hl], h                                    ; $6b5a: $74
    ld [hl], d                                    ; $6b5b: $72
    ld l, a                                       ; $6b5c: $6f
    ld l, e                                       ; $6b5d: $6b
    ld h, l                                       ; $6b5e: $65
    ld bc, $6c70                                  ; $6b5f: $01 $70 $6c
    ld h, c                                       ; $6b62: $61

jr_01d_6b63:
    ld a, c                                       ; $6b63: $79
    jr nz, @+$71                                  ; $6b64: $20 $6f

    ld l, [hl]                                    ; $6b66: $6e
    jr nz, jr_01d_6bdd                            ; $6b67: $20 $74

jr_01d_6b69:
    ld l, b                                       ; $6b69: $68
    ld l, c                                       ; $6b6a: $69
    ld [hl], e                                    ; $6b6b: $73
    ld bc, $6873                                  ; $6b6c: $01 $73 $68
    ld l, a                                       ; $6b6f: $6f

jr_01d_6b70:
    ld [hl], d                                    ; $6b70: $72
    ld [hl], h                                    ; $6b71: $74
    jr nz, jr_01d_6bd7                            ; $6b72: $20 $63

    ld l, a                                       ; $6b74: $6f
    ld [hl], l                                    ; $6b75: $75
    ld [hl], d                                    ; $6b76: $72

jr_01d_6b77:
    ld [hl], e                                    ; $6b77: $73
    ld h, l                                       ; $6b78: $65
    ccf                                           ; $6b79: $3f

jr_01d_6b7a:
    nop                                           ; $6b7a: $00
    ld d, e                                       ; $6b7b: $53
    ld l, a                                       ; $6b7c: $6f
    inc l                                         ; $6b7d: $2c
    jr nz, @+$79                                  ; $6b7e: $20 $77

    ld l, b                                       ; $6b80: $68
    ld h, c                                       ; $6b81: $61
    ld [hl], h                                    ; $6b82: $74
    jr nz, @+$66                                  ; $6b83: $20 $64

    ld l, c                                       ; $6b85: $69
    ld h, h                                       ; $6b86: $64
    ld bc, $6f79                                  ; $6b87: $01 $79 $6f
    ld [hl], l                                    ; $6b8a: $75
    jr nz, jr_01d_6c00                            ; $6b8b: $20 $73

    ld l, b                                       ; $6b8d: $68
    ld l, a                                       ; $6b8e: $6f
    ld l, a                                       ; $6b8f: $6f
    ld [hl], h                                    ; $6b90: $74
    ccf                                           ; $6b91: $3f

jr_01d_6b92:
    inc bc                                        ; $6b92: $03
    nop                                           ; $6b93: $00
    ld c, b                                       ; $6b94: $48
    ld l, l                                       ; $6b95: $6d
    ld l, l                                       ; $6b96: $6d
    ld l, $2e                                     ; $6b97: $2e $2e
    ld l, $4c                                     ; $6b99: $2e $4c
    ld l, a                                       ; $6b9b: $6f
    ld l, a                                       ; $6b9c: $6f
    ld l, e                                       ; $6b9d: $6b
    ld [hl], e                                    ; $6b9e: $73
    jr nz, jr_01d_6c0d                            ; $6b9f: $20 $6c

    ld l, c                                       ; $6ba1: $69
    ld l, e                                       ; $6ba2: $6b

jr_01d_6ba3:
    ld h, l                                       ; $6ba3: $65
    ld bc, $7469                                  ; $6ba4: $01 $69 $74
    jr nz, jr_01d_6c0d                            ; $6ba7: $20 $64

jr_01d_6ba9:
    ld l, c                                       ; $6ba9: $69
    ld h, h                                       ; $6baa: $64
    ld l, [hl]                                    ; $6bab: $6e
    daa                                           ; $6bac: $27
    ld [hl], h                                    ; $6bad: $74
    jr nz, jr_01d_6c17                            ; $6bae: $20 $67

    ld l, a                                       ; $6bb0: $6f
    jr nz, @+$79                                  ; $6bb1: $20 $77

    ld h, l                                       ; $6bb3: $65
    ld l, h                                       ; $6bb4: $6c
    ld l, h                                       ; $6bb5: $6c
    ld l, $03                                     ; $6bb6: $2e $03
    nop                                           ; $6bb8: $00
    ld d, h                                       ; $6bb9: $54
    ld l, a                                       ; $6bba: $6f
    ld h, h                                       ; $6bbb: $64
    ld h, c                                       ; $6bbc: $61
    ld a, c                                       ; $6bbd: $79
    daa                                           ; $6bbe: $27
    ld [hl], e                                    ; $6bbf: $73
    jr nz, jr_01d_6c29                            ; $6bc0: $20 $67

    ld l, a                                       ; $6bc2: $6f
    ld l, h                                       ; $6bc3: $6c
    ld h, [hl]                                    ; $6bc4: $66
    ld h, l                                       ; $6bc5: $65
    ld [hl], d                                    ; $6bc6: $72
    ld [hl], e                                    ; $6bc7: $73
    ld bc, $6168                                  ; $6bc8: $01 $68 $61
    halt                                          ; $6bcb: $76
    ld h, l                                       ; $6bcc: $65

jr_01d_6bcd:
    jr nz, @+$63                                  ; $6bcd: $20 $61

    jr nz, jr_01d_6c48                            ; $6bcf: $20 $77

    ld h, c                                       ; $6bd1: $61
    ld a, c                                       ; $6bd2: $79
    ld [hl], e                                    ; $6bd3: $73
    jr nz, jr_01d_6c4a                            ; $6bd4: $20 $74

    ld l, a                                       ; $6bd6: $6f

jr_01d_6bd7:
    jr nz, jr_01d_6c40                            ; $6bd7: $20 $67

    ld l, a                                       ; $6bd9: $6f
    ld l, $03                                     ; $6bda: $2e $03
    nop                                           ; $6bdc: $00

jr_01d_6bdd:
    ld c, a                                       ; $6bdd: $4f
    ld l, b                                       ; $6bde: $68
    dec l                                         ; $6bdf: $2d
    ld l, b                                       ; $6be0: $68
    ld l, a                                       ; $6be1: $6f
    ld l, b                                       ; $6be2: $68
    ld hl, $5920                                  ; $6be3: $21 $20 $59
    ld l, a                                       ; $6be6: $6f
    ld [hl], l                                    ; $6be7: $75
    jr nz, jr_01d_6c57                            ; $6be8: $20 $6d

    ld h, c                                       ; $6bea: $61
    ld h, h                                       ; $6beb: $64
    ld h, l                                       ; $6bec: $65
    ld bc, $7469                                  ; $6bed: $01 $69 $74
    jr nz, jr_01d_6c61                            ; $6bf0: $20 $6f

    ld l, [hl]                                    ; $6bf2: $6e
    jr nz, jr_01d_6c5e                            ; $6bf3: $20 $69

    ld l, [hl]                                    ; $6bf5: $6e
    jr nz, jr_01d_6c67                            ; $6bf6: $20 $6f

    ld l, [hl]                                    ; $6bf8: $6e
    ld h, l                                       ; $6bf9: $65
    ld bc, $6e6f                                  ; $6bfa: $01 $6f $6e
    jr nz, @+$67                                  ; $6bfd: $20 $65

    halt                                          ; $6bff: $76

jr_01d_6c00:
    ld h, l                                       ; $6c00: $65
    ld [hl], d                                    ; $6c01: $72
    ld a, c                                       ; $6c02: $79
    jr nz, @+$6a                                  ; $6c03: $20 $68

    ld l, a                                       ; $6c05: $6f
    ld l, h                                       ; $6c06: $6c
    ld h, l                                       ; $6c07: $65
    ld hl, $0003                                  ; $6c08: $21 $03 $00
    ld b, d                                       ; $6c0b: $42
    ld [hl], l                                    ; $6c0c: $75

jr_01d_6c0d:
    ld [hl], h                                    ; $6c0d: $74
    jr nz, @+$70                                  ; $6c0e: $20 $6e

    ld l, a                                       ; $6c10: $6f
    ld [hl], h                                    ; $6c11: $74
    jr nz, @+$64                                  ; $6c12: $20 $62

    ld h, l                                       ; $6c14: $65
    ld l, c                                       ; $6c15: $69
    ld l, [hl]                                    ; $6c16: $6e

jr_01d_6c17:
    ld h, a                                       ; $6c17: $67
    jr nz, jr_01d_6c7b                            ; $6c18: $20 $61

    ld h, d                                       ; $6c1a: $62
    ld l, h                                       ; $6c1b: $6c
    ld h, l                                       ; $6c1c: $65
    ld bc, $6f74                                  ; $6c1d: $01 $74 $6f
    jr nz, jr_01d_6c8a                            ; $6c20: $20 $68

    ld l, a                                       ; $6c22: $6f
    ld l, h                                       ; $6c23: $6c
    ld h, l                                       ; $6c24: $65
    jr nz, jr_01d_6c96                            ; $6c25: $20 $6f

    ld [hl], l                                    ; $6c27: $75
    ld [hl], h                                    ; $6c28: $74

jr_01d_6c29:
    jr nz, @+$79                                  ; $6c29: $20 $77

    ld l, c                                       ; $6c2b: $69
    ld [hl], h                                    ; $6c2c: $74
    ld l, b                                       ; $6c2d: $68
    ld bc, $2031                                  ; $6c2e: $01 $31 $20
    ld [hl], b                                    ; $6c31: $70
    ld [hl], l                                    ; $6c32: $75
    ld [hl], h                                    ; $6c33: $74
    ld [hl], h                                    ; $6c34: $74
    jr nz, jr_01d_6c9f                            ; $6c35: $20 $68

    ld [hl], l                                    ; $6c37: $75
    ld [hl], d                                    ; $6c38: $72
    ld [hl], h                                    ; $6c39: $74
    ld [hl], e                                    ; $6c3a: $73
    ld l, $03                                     ; $6c3b: $2e $03
    nop                                           ; $6c3d: $00
    ld c, a                                       ; $6c3e: $4f
    ld l, b                                       ; $6c3f: $68

jr_01d_6c40:
    dec l                                         ; $6c40: $2d
    ld l, b                                       ; $6c41: $68
    ld l, a                                       ; $6c42: $6f
    ld l, b                                       ; $6c43: $68
    ld hl, $5320                                  ; $6c44: $21 $20 $53
    ld l, b                                       ; $6c47: $68

jr_01d_6c48:
    ld l, a                                       ; $6c48: $6f
    ld l, a                                       ; $6c49: $6f

jr_01d_6c4a:
    ld [hl], h                                    ; $6c4a: $74
    ld l, c                                       ; $6c4b: $69
    ld l, [hl]                                    ; $6c4c: $6e
    ld h, a                                       ; $6c4d: $67
    ld bc, $2009                                  ; $6c4e: $01 $09 $20
    ld l, c                                       ; $6c51: $69
    ld [hl], e                                    ; $6c52: $73
    jr nz, jr_01d_6cbc                            ; $6c53: $20 $67

    ld [hl], d                                    ; $6c55: $72
    ld h, l                                       ; $6c56: $65

jr_01d_6c57:
    ld h, c                                       ; $6c57: $61
    ld [hl], h                                    ; $6c58: $74
    ld hl, $0003                                  ; $6c59: $21 $03 $00
    ld b, d                                       ; $6c5c: $42
    ld [hl], l                                    ; $6c5d: $75

jr_01d_6c5e:
    ld [hl], h                                    ; $6c5e: $74
    jr nz, jr_01d_6ccf                            ; $6c5f: $20 $6e

jr_01d_6c61:
    ld l, a                                       ; $6c61: $6f
    ld [hl], h                                    ; $6c62: $74
    jr nz, jr_01d_6ccc                            ; $6c63: $20 $67

    ld h, l                                       ; $6c65: $65
    ld [hl], h                                    ; $6c66: $74

jr_01d_6c67:
    ld [hl], h                                    ; $6c67: $74
    ld l, c                                       ; $6c68: $69
    ld l, [hl]                                    ; $6c69: $6e
    ld h, a                                       ; $6c6a: $67
    ld bc, $6e6f                                  ; $6c6b: $01 $6f $6e
    jr nz, @+$6b                                  ; $6c6e: $20 $69

    ld l, [hl]                                    ; $6c70: $6e
    jr nz, jr_01d_6ce2                            ; $6c71: $20 $6f

    ld l, [hl]                                    ; $6c73: $6e
    ld h, l                                       ; $6c74: $65
    ld bc, $6f64                                  ; $6c75: $01 $64 $6f
    ld h, l                                       ; $6c78: $65
    ld [hl], e                                    ; $6c79: $73
    ld l, [hl]                                    ; $6c7a: $6e

jr_01d_6c7b:
    daa                                           ; $6c7b: $27
    ld [hl], h                                    ; $6c7c: $74
    jr nz, jr_01d_6ce2                            ; $6c7d: $20 $63

    ld [hl], l                                    ; $6c7f: $75
    ld [hl], h                                    ; $6c80: $74
    jr nz, @+$6b                                  ; $6c81: $20 $69

    ld [hl], h                                    ; $6c83: $74
    ld l, $03                                     ; $6c84: $2e $03
    nop                                           ; $6c86: $00
    ld d, a                                       ; $6c87: $57
    ld l, b                                       ; $6c88: $68
    ld a, c                                       ; $6c89: $79

jr_01d_6c8a:
    inc l                                         ; $6c8a: $2c
    jr nz, jr_01d_6c94                            ; $6c8b: $20 $07

    ld hl, $5901                                  ; $6c8d: $21 $01 $59
    ld l, a                                       ; $6c90: $6f
    ld [hl], l                                    ; $6c91: $75
    jr nz, @+$69                                  ; $6c92: $20 $67

jr_01d_6c94:
    ld l, a                                       ; $6c94: $6f
    ld [hl], h                                    ; $6c95: $74

jr_01d_6c96:
    jr nz, jr_01d_6d07                            ; $6c96: $20 $6f

    ld l, [hl]                                    ; $6c98: $6e
    jr nz, jr_01d_6d04                            ; $6c99: $20 $69

    ld l, [hl]                                    ; $6c9b: $6e
    jr nz, jr_01d_6d0d                            ; $6c9c: $20 $6f

    ld l, [hl]                                    ; $6c9e: $6e

jr_01d_6c9f:
    ld h, l                                       ; $6c9f: $65
    ld bc, $6e61                                  ; $6ca0: $01 $61 $6e
    ld h, h                                       ; $6ca3: $64
    jr nz, @+$75                                  ; $6ca4: $20 $73

    ld l, b                                       ; $6ca6: $68
    ld l, a                                       ; $6ca7: $6f
    ld [hl], h                                    ; $6ca8: $74
    jr nz, @+$63                                  ; $6ca9: $20 $61

    jr nz, jr_01d_6cb6                            ; $6cab: $20 $09

    ld hl, $0003                                  ; $6cad: $21 $03 $00
    ld d, h                                       ; $6cb0: $54
    ld l, b                                       ; $6cb1: $68
    ld h, c                                       ; $6cb2: $61
    ld [hl], h                                    ; $6cb3: $74
    daa                                           ; $6cb4: $27
    ld [hl], e                                    ; $6cb5: $73

jr_01d_6cb6:
    jr nz, @+$63                                  ; $6cb6: $20 $61

    ld l, l                                       ; $6cb8: $6d
    ld h, c                                       ; $6cb9: $61
    ld a, d                                       ; $6cba: $7a
    ld l, c                                       ; $6cbb: $69

jr_01d_6cbc:
    ld l, [hl]                                    ; $6cbc: $6e
    ld h, a                                       ; $6cbd: $67
    ld hl, $0003                                  ; $6cbe: $21 $03 $00
    ld d, h                                       ; $6cc1: $54
    ld l, a                                       ; $6cc2: $6f
    ld h, h                                       ; $6cc3: $64
    ld h, c                                       ; $6cc4: $61
    ld a, c                                       ; $6cc5: $79
    daa                                           ; $6cc6: $27
    ld [hl], e                                    ; $6cc7: $73
    jr nz, @+$69                                  ; $6cc8: $20 $67

    ld l, a                                       ; $6cca: $6f
    ld l, h                                       ; $6ccb: $6c

jr_01d_6ccc:
    ld h, [hl]                                    ; $6ccc: $66
    ld h, l                                       ; $6ccd: $65
    ld [hl], d                                    ; $6cce: $72

jr_01d_6ccf:
    ld [hl], e                                    ; $6ccf: $73
    ld bc, $6967                                  ; $6cd0: $01 $67 $69
    halt                                          ; $6cd3: $76
    ld h, l                                       ; $6cd4: $65
    jr nz, jr_01d_6d40                            ; $6cd5: $20 $69

    ld [hl], h                                    ; $6cd7: $74
    jr nz, @+$76                                  ; $6cd8: $20 $74

    ld l, b                                       ; $6cda: $68
    ld h, l                                       ; $6cdb: $65
    ld l, c                                       ; $6cdc: $69
    ld [hl], d                                    ; $6cdd: $72
    jr nz, jr_01d_6d41                            ; $6cde: $20 $61

    ld l, h                                       ; $6ce0: $6c
    ld l, h                                       ; $6ce1: $6c

jr_01d_6ce2:
    ld hl, $0003                                  ; $6ce2: $21 $03 $00
    ld e, c                                       ; $6ce5: $59
    ld l, a                                       ; $6ce6: $6f
    ld [hl], l                                    ; $6ce7: $75
    daa                                           ; $6ce8: $27
    halt                                          ; $6ce9: $76
    ld h, l                                       ; $6cea: $65
    jr nz, jr_01d_6d52                            ; $6ceb: $20 $65

    ld [hl], c                                    ; $6ced: $71
    ld [hl], l                                    ; $6cee: $75
    ld h, c                                       ; $6cef: $61
    ld l, h                                       ; $6cf0: $6c
    ld h, l                                       ; $6cf1: $65
    ld h, h                                       ; $6cf2: $64
    jr nz, @+$4f                                  ; $6cf3: $20 $4d

    ld h, c                                       ; $6cf5: $61
    ld [hl], d                                    ; $6cf6: $72
    ld l, c                                       ; $6cf7: $69
    ld l, a                                       ; $6cf8: $6f
    inc l                                         ; $6cf9: $2c
    ld bc, $2107                                  ; $6cfa: $01 $07 $21
    jr nz, jr_01d_6d58                            ; $6cfd: $20 $59

    ld l, a                                       ; $6cff: $6f
    ld [hl], l                                    ; $6d00: $75
    jr nz, jr_01d_6d66                            ; $6d01: $20 $63

    ld h, c                                       ; $6d03: $61

jr_01d_6d04:
    ld l, [hl]                                    ; $6d04: $6e
    jr nz, jr_01d_6d77                            ; $6d05: $20 $70

jr_01d_6d07:
    ld l, h                                       ; $6d07: $6c
    ld h, c                                       ; $6d08: $61
    ld a, c                                       ; $6d09: $79
    ld bc, $6568                                  ; $6d0a: $01 $68 $65

jr_01d_6d0d:
    ld [hl], d                                    ; $6d0d: $72
    ld h, l                                       ; $6d0e: $65
    jr nz, @+$63                                  ; $6d0f: $20 $61

    ld l, [hl]                                    ; $6d11: $6e
    ld a, c                                       ; $6d12: $79
    ld [hl], h                                    ; $6d13: $74
    ld l, c                                       ; $6d14: $69
    ld l, l                                       ; $6d15: $6d
    ld h, l                                       ; $6d16: $65
    ld hl, $0003                                  ; $6d17: $21 $03 $00
    ld d, e                                       ; $6d1a: $53
    ld l, a                                       ; $6d1b: $6f
    inc l                                         ; $6d1c: $2c
    jr nz, @+$79                                  ; $6d1d: $20 $77

    ld l, c                                       ; $6d1f: $69
    ld l, h                                       ; $6d20: $6c
    ld l, h                                       ; $6d21: $6c
    jr nz, jr_01d_6d9d                            ; $6d22: $20 $79

    ld l, a                                       ; $6d24: $6f
    ld [hl], l                                    ; $6d25: $75
    jr nz, jr_01d_6d98                            ; $6d26: $20 $70

    ld l, h                                       ; $6d28: $6c
    ld h, c                                       ; $6d29: $61
    ld a, c                                       ; $6d2a: $79
    ccf                                           ; $6d2b: $3f
    nop                                           ; $6d2c: $00
    ld d, h                                       ; $6d2d: $54
    ld l, b                                       ; $6d2e: $68
    ld h, l                                       ; $6d2f: $65
    jr nz, jr_01d_6d95                            ; $6d30: $20 $63

    ld l, a                                       ; $6d32: $6f
    ld h, c                                       ; $6d33: $61
    ld h, e                                       ; $6d34: $63
    ld l, b                                       ; $6d35: $68
    ld h, l                                       ; $6d36: $65
    ld [hl], e                                    ; $6d37: $73
    jr nz, jr_01d_6da2                            ; $6d38: $20 $68

    ld h, l                                       ; $6d3a: $65
    ld [hl], d                                    ; $6d3b: $72
    ld h, l                                       ; $6d3c: $65
    ld bc, $7261                                  ; $6d3d: $01 $61 $72

jr_01d_6d40:
    ld h, l                                       ; $6d40: $65

jr_01d_6d41:
    jr nz, jr_01d_6da9                            ; $6d41: $20 $66

    ld l, c                                       ; $6d43: $69
    ld [hl], d                                    ; $6d44: $72
    ld [hl], e                                    ; $6d45: $73
    ld [hl], h                                    ; $6d46: $74
    jr nz, jr_01d_6dbb                            ; $6d47: $20 $72

    ld h, c                                       ; $6d49: $61
    ld [hl], h                                    ; $6d4a: $74
    ld h, l                                       ; $6d4b: $65
    ld hl, $0003                                  ; $6d4c: $21 $03 $00
    ld b, e                                       ; $6d4f: $43
    ld l, a                                       ; $6d50: $6f
    ld h, c                                       ; $6d51: $61

jr_01d_6d52:
    ld h, e                                       ; $6d52: $63
    ld l, b                                       ; $6d53: $68
    daa                                           ; $6d54: $27
    ld [hl], e                                    ; $6d55: $73
    jr nz, jr_01d_6dbd                            ; $6d56: $20 $65

jr_01d_6d58:
    ld a, c                                       ; $6d58: $79
    ld h, l                                       ; $6d59: $65
    jr nz, jr_01d_6dd0                            ; $6d5a: $20 $74

    ld [hl], l                                    ; $6d5c: $75
    ld [hl], d                                    ; $6d5d: $72
    ld l, [hl]                                    ; $6d5e: $6e
    ld h, l                                       ; $6d5f: $65
    ld h, h                                       ; $6d60: $64
    ld bc, $796d                                  ; $6d61: $01 $6d $79
    jr nz, jr_01d_6dd9                            ; $6d64: $20 $73

jr_01d_6d66:
    ld l, h                                       ; $6d66: $6c
    ld l, c                                       ; $6d67: $69
    ld h, e                                       ; $6d68: $63
    ld h, l                                       ; $6d69: $65
    jr nz, jr_01d_6dd5                            ; $6d6a: $20 $69

    ld l, [hl]                                    ; $6d6c: $6e
    ld [hl], h                                    ; $6d6d: $74
    ld l, a                                       ; $6d6e: $6f
    jr nz, jr_01d_6dd2                            ; $6d6f: $20 $61

    ld bc, $6f6c                                  ; $6d71: $01 $6c $6f
    ld l, [hl]                                    ; $6d74: $6e
    ld h, a                                       ; $6d75: $67
    dec l                                         ; $6d76: $2d

jr_01d_6d77:
    ld h, h                                       ; $6d77: $64
    ld l, c                                       ; $6d78: $69
    ld [hl], e                                    ; $6d79: $73
    ld [hl], h                                    ; $6d7a: $74
    ld h, c                                       ; $6d7b: $61
    ld l, [hl]                                    ; $6d7c: $6e
    ld h, e                                       ; $6d7d: $63
    ld h, l                                       ; $6d7e: $65
    jr nz, jr_01d_6de9                            ; $6d7f: $20 $68

    ld l, a                                       ; $6d81: $6f
    ld l, a                                       ; $6d82: $6f
    ld l, e                                       ; $6d83: $6b
    ld hl, $0003                                  ; $6d84: $21 $03 $00
    ld c, c                                       ; $6d87: $49
    ld h, [hl]                                    ; $6d88: $66
    jr nz, jr_01d_6e04                            ; $6d89: $20 $79

    ld l, a                                       ; $6d8b: $6f
    ld [hl], l                                    ; $6d8c: $75
    jr nz, jr_01d_6e06                            ; $6d8d: $20 $77

    ld h, c                                       ; $6d8f: $61
    ld l, [hl]                                    ; $6d90: $6e
    ld [hl], h                                    ; $6d91: $74
    jr nz, jr_01d_6e08                            ; $6d92: $20 $74

    ld l, a                                       ; $6d94: $6f

jr_01d_6d95:
    ld bc, $6d69                                  ; $6d95: $01 $69 $6d

jr_01d_6d98:
    ld [hl], b                                    ; $6d98: $70
    ld [hl], d                                    ; $6d99: $72
    ld l, a                                       ; $6d9a: $6f
    halt                                          ; $6d9b: $76
    ld h, l                                       ; $6d9c: $65

jr_01d_6d9d:
    inc l                                         ; $6d9d: $2c
    jr nz, jr_01d_6e07                            ; $6d9e: $20 $67

    ld h, l                                       ; $6da0: $65
    ld [hl], h                                    ; $6da1: $74

jr_01d_6da2:
    jr nz, jr_01d_6e18                            ; $6da2: $20 $74

    ld l, b                                       ; $6da4: $68
    ld h, l                                       ; $6da5: $65
    ld bc, $6f63                                  ; $6da6: $01 $63 $6f

jr_01d_6da9:
    ld h, c                                       ; $6da9: $61
    ld h, e                                       ; $6daa: $63
    ld l, b                                       ; $6dab: $68
    ld h, l                                       ; $6dac: $65
    ld [hl], e                                    ; $6dad: $73
    daa                                           ; $6dae: $27
    jr nz, jr_01d_6e20                            ; $6daf: $20 $6f

    ld [hl], b                                    ; $6db1: $70
    ld l, c                                       ; $6db2: $69
    ld l, [hl]                                    ; $6db3: $6e
    ld l, c                                       ; $6db4: $69
    ld l, a                                       ; $6db5: $6f
    ld l, [hl]                                    ; $6db6: $6e
    ld [hl], e                                    ; $6db7: $73
    ld l, $03                                     ; $6db8: $2e $03
    nop                                           ; $6dba: $00

jr_01d_6dbb:
    ld e, c                                       ; $6dbb: $59
    ld l, a                                       ; $6dbc: $6f

jr_01d_6dbd:
    ld [hl], l                                    ; $6dbd: $75
    daa                                           ; $6dbe: $27
    halt                                          ; $6dbf: $76
    ld h, l                                       ; $6dc0: $65
    jr nz, jr_01d_6e2a                            ; $6dc1: $20 $67

    ld l, a                                       ; $6dc3: $6f
    ld [hl], h                                    ; $6dc4: $74
    jr nz, @+$69                                  ; $6dc5: $20 $67

    ld l, a                                       ; $6dc7: $6f
    ld l, a                                       ; $6dc8: $6f
    ld h, h                                       ; $6dc9: $64
    ld bc, $6964                                  ; $6dca: $01 $64 $69
    ld [hl], e                                    ; $6dcd: $73
    ld [hl], h                                    ; $6dce: $74
    ld h, c                                       ; $6dcf: $61

jr_01d_6dd0:
    ld l, [hl]                                    ; $6dd0: $6e
    ld h, e                                       ; $6dd1: $63

jr_01d_6dd2:
    ld h, l                                       ; $6dd2: $65
    jr nz, jr_01d_6e3b                            ; $6dd3: $20 $66

jr_01d_6dd5:
    ld l, a                                       ; $6dd5: $6f
    ld [hl], d                                    ; $6dd6: $72
    jr nz, jr_01d_6e3a                            ; $6dd7: $20 $61

jr_01d_6dd9:
    ld l, [hl]                                    ; $6dd9: $6e
    ld bc, $6d61                                  ; $6dda: $01 $61 $6d
    ld h, c                                       ; $6ddd: $61
    ld [hl], h                                    ; $6dde: $74
    ld h, l                                       ; $6ddf: $65
    ld [hl], l                                    ; $6de0: $75
    ld [hl], d                                    ; $6de1: $72
    ld l, $02                                     ; $6de2: $2e $02
    ld e, c                                       ; $6de4: $59
    ld l, a                                       ; $6de5: $6f
    ld [hl], l                                    ; $6de6: $75
    daa                                           ; $6de7: $27
    halt                                          ; $6de8: $76

jr_01d_6de9:
    ld h, l                                       ; $6de9: $65
    jr nz, jr_01d_6e53                            ; $6dea: $20 $67

    ld l, a                                       ; $6dec: $6f
    ld [hl], h                                    ; $6ded: $74
    jr nz, jr_01d_6e51                            ; $6dee: $20 $61

    ld bc, $7473                                  ; $6df0: $01 $73 $74
    ld [hl], d                                    ; $6df3: $72
    ld l, a                                       ; $6df4: $6f
    ld l, [hl]                                    ; $6df5: $6e
    ld h, a                                       ; $6df6: $67
    jr nz, jr_01d_6e61                            ; $6df7: $20 $68

    ld l, a                                       ; $6df9: $6f
    ld l, a                                       ; $6dfa: $6f
    ld l, e                                       ; $6dfb: $6b
    jr nz, @+$79                                  ; $6dfc: $20 $77

    ld l, c                                       ; $6dfe: $69
    ld [hl], h                                    ; $6dff: $74
    ld l, b                                       ; $6e00: $68
    ld bc, $2061                                  ; $6e01: $01 $61 $20

jr_01d_6e04:
    ld l, b                                       ; $6e04: $68
    ld l, c                                       ; $6e05: $69

jr_01d_6e06:
    ld h, a                                       ; $6e06: $67

jr_01d_6e07:
    ld l, b                                       ; $6e07: $68

jr_01d_6e08:
    jr nz, jr_01d_6e7e                            ; $6e08: $20 $74

    ld [hl], d                                    ; $6e0a: $72
    ld h, c                                       ; $6e0b: $61
    ld l, d                                       ; $6e0c: $6a
    ld h, l                                       ; $6e0d: $65
    ld h, e                                       ; $6e0e: $63
    ld [hl], h                                    ; $6e0f: $74
    ld l, a                                       ; $6e10: $6f
    ld [hl], d                                    ; $6e11: $72
    ld a, c                                       ; $6e12: $79
    ld l, $03                                     ; $6e13: $2e $03
    nop                                           ; $6e15: $00
    ld c, c                                       ; $6e16: $49
    ld h, [hl]                                    ; $6e17: $66

jr_01d_6e18:
    jr nz, jr_01d_6e93                            ; $6e18: $20 $79

    ld l, a                                       ; $6e1a: $6f
    ld [hl], l                                    ; $6e1b: $75
    jr nz, @+$79                                  ; $6e1c: $20 $77

    ld h, c                                       ; $6e1e: $61
    ld l, [hl]                                    ; $6e1f: $6e

jr_01d_6e20:
    ld [hl], h                                    ; $6e20: $74
    jr nz, jr_01d_6e97                            ; $6e21: $20 $74

    ld l, a                                       ; $6e23: $6f
    ld bc, $6f63                                  ; $6e24: $01 $63 $6f
    ld l, l                                       ; $6e27: $6d
    ld [hl], b                                    ; $6e28: $70
    ld h, l                                       ; $6e29: $65

jr_01d_6e2a:
    ld [hl], h                                    ; $6e2a: $74
    ld h, l                                       ; $6e2b: $65
    inc l                                         ; $6e2c: $2c
    jr nz, jr_01d_6ea8                            ; $6e2d: $20 $79

    ld l, a                                       ; $6e2f: $6f
    ld [hl], l                                    ; $6e30: $75
    jr nz, @+$70                                  ; $6e31: $20 $6e

    ld h, l                                       ; $6e33: $65
    ld h, l                                       ; $6e34: $65
    ld h, h                                       ; $6e35: $64
    ld bc, $6f6d                                  ; $6e36: $01 $6d $6f
    ld [hl], d                                    ; $6e39: $72

jr_01d_6e3a:
    ld h, l                                       ; $6e3a: $65

jr_01d_6e3b:
    jr nz, @+$66                                  ; $6e3b: $20 $64

    ld l, c                                       ; $6e3d: $69
    ld [hl], e                                    ; $6e3e: $73
    ld [hl], h                                    ; $6e3f: $74
    ld h, c                                       ; $6e40: $61
    ld l, [hl]                                    ; $6e41: $6e
    ld h, e                                       ; $6e42: $63
    ld h, l                                       ; $6e43: $65
    ld l, $02                                     ; $6e44: $2e $02
    ld b, [hl]                                    ; $6e46: $46
    ld l, c                                       ; $6e47: $69
    ld a, b                                       ; $6e48: $78
    jr nz, jr_01d_6ebf                            ; $6e49: $20 $74

    ld l, b                                       ; $6e4b: $68
    ld h, c                                       ; $6e4c: $61
    ld [hl], h                                    ; $6e4d: $74
    jr nz, jr_01d_6eb8                            ; $6e4e: $20 $68

    ld l, a                                       ; $6e50: $6f

jr_01d_6e51:
    ld l, a                                       ; $6e51: $6f
    ld l, e                                       ; $6e52: $6b

jr_01d_6e53:
    inc l                                         ; $6e53: $2c
    ld bc, $6e61                                  ; $6e54: $01 $61 $6e
    ld h, h                                       ; $6e57: $64
    jr nz, jr_01d_6ec6                            ; $6e58: $20 $6c

    ld l, a                                       ; $6e5a: $6f
    ld [hl], a                                    ; $6e5b: $77
    ld h, l                                       ; $6e5c: $65
    ld [hl], d                                    ; $6e5d: $72
    jr nz, jr_01d_6ed9                            ; $6e5e: $20 $79

    ld l, a                                       ; $6e60: $6f

jr_01d_6e61:
    ld [hl], l                                    ; $6e61: $75
    ld [hl], d                                    ; $6e62: $72
    ld bc, $7274                                  ; $6e63: $01 $74 $72
    ld h, c                                       ; $6e66: $61
    ld l, d                                       ; $6e67: $6a
    ld h, l                                       ; $6e68: $65
    ld h, e                                       ; $6e69: $63
    ld [hl], h                                    ; $6e6a: $74
    ld l, a                                       ; $6e6b: $6f
    ld [hl], d                                    ; $6e6c: $72
    ld a, c                                       ; $6e6d: $79
    ld l, $03                                     ; $6e6e: $2e $03
    nop                                           ; $6e70: $00
    ld e, c                                       ; $6e71: $59
    ld l, a                                       ; $6e72: $6f
    ld [hl], l                                    ; $6e73: $75
    jr nz, jr_01d_6eed                            ; $6e74: $20 $77

    ld h, c                                       ; $6e76: $61
    ld l, [hl]                                    ; $6e77: $6e
    ld [hl], h                                    ; $6e78: $74
    jr nz, @+$7b                                  ; $6e79: $20 $79

    ld l, a                                       ; $6e7b: $6f
    ld [hl], l                                    ; $6e7c: $75
    ld [hl], d                                    ; $6e7d: $72

jr_01d_6e7e:
    ld bc, $6873                                  ; $6e7e: $01 $73 $68
    ld l, a                                       ; $6e81: $6f
    ld [hl], h                                    ; $6e82: $74
    jr nz, jr_01d_6eef                            ; $6e83: $20 $6a

    ld [hl], l                                    ; $6e85: $75
    ld h, h                                       ; $6e86: $64
    ld h, a                                       ; $6e87: $67
    ld h, l                                       ; $6e88: $65
    ld h, h                                       ; $6e89: $64
    ccf                                           ; $6e8a: $3f
    nop                                           ; $6e8b: $00
    ld c, c                                       ; $6e8c: $49
    daa                                           ; $6e8d: $27
    ld l, l                                       ; $6e8e: $6d
    jr nz, jr_01d_6ef9                            ; $6e8f: $20 $68

    ld h, l                                       ; $6e91: $65
    ld [hl], d                                    ; $6e92: $72

jr_01d_6e93:
    ld h, l                                       ; $6e93: $65
    jr nz, jr_01d_6eff                            ; $6e94: $20 $69

    ld h, [hl]                                    ; $6e96: $66

jr_01d_6e97:
    jr nz, jr_01d_6f12                            ; $6e97: $20 $79

    ld l, a                                       ; $6e99: $6f
    ld [hl], l                                    ; $6e9a: $75
    ld bc, $656e                                  ; $6e9b: $01 $6e $65
    ld h, l                                       ; $6e9e: $65
    ld h, h                                       ; $6e9f: $64
    jr nz, jr_01d_6f05                            ; $6ea0: $20 $63

    ld l, a                                       ; $6ea2: $6f
    ld [hl], l                                    ; $6ea3: $75
    ld l, [hl]                                    ; $6ea4: $6e
    ld [hl], e                                    ; $6ea5: $73
    ld h, l                                       ; $6ea6: $65
    ld l, h                                       ; $6ea7: $6c

jr_01d_6ea8:
    ld l, c                                       ; $6ea8: $69
    ld l, [hl]                                    ; $6ea9: $6e
    ld h, a                                       ; $6eaa: $67
    ld l, $03                                     ; $6eab: $2e $03
    nop                                           ; $6ead: $00
    ld h, c                                       ; $6eae: $61
    ld l, [hl]                                    ; $6eaf: $6e
    jr nz, jr_01d_6f13                            ; $6eb0: $20 $61

    halt                                          ; $6eb2: $76
    ld h, l                                       ; $6eb3: $65
    ld [hl], d                                    ; $6eb4: $72
    ld h, c                                       ; $6eb5: $61
    ld h, a                                       ; $6eb6: $67
    ld h, l                                       ; $6eb7: $65

jr_01d_6eb8:
    nop                                           ; $6eb8: $00
    ld h, c                                       ; $6eb9: $61
    jr nz, jr_01d_6f20                            ; $6eba: $20 $64

    ld h, l                                       ; $6ebc: $65
    ld h, e                                       ; $6ebd: $63
    ld h, l                                       ; $6ebe: $65

jr_01d_6ebf:
    ld l, [hl]                                    ; $6ebf: $6e
    ld [hl], h                                    ; $6ec0: $74
    nop                                           ; $6ec1: $00
    ld h, c                                       ; $6ec2: $61
    jr nz, jr_01d_6f2c                            ; $6ec3: $20 $67

    ld l, a                                       ; $6ec5: $6f

jr_01d_6ec6:
    ld l, a                                       ; $6ec6: $6f
    ld h, h                                       ; $6ec7: $64
    nop                                           ; $6ec8: $00
    ld h, c                                       ; $6ec9: $61
    jr nz, jr_01d_6f3c                            ; $6eca: $20 $70

    ld [hl], d                                    ; $6ecc: $72
    ld l, a                                       ; $6ecd: $6f
    daa                                           ; $6ece: $27
    ld [hl], e                                    ; $6ecf: $73
    nop                                           ; $6ed0: $00
    ld h, c                                       ; $6ed1: $61
    jr nz, jr_01d_6f48                            ; $6ed2: $20 $74

    ld l, a                                       ; $6ed4: $6f
    ld [hl], b                                    ; $6ed5: $70
    jr nz, jr_01d_6f48                            ; $6ed6: $20 $70

    ld [hl], d                                    ; $6ed8: $72

jr_01d_6ed9:
    ld l, a                                       ; $6ed9: $6f
    daa                                           ; $6eda: $27
    ld [hl], e                                    ; $6edb: $73
    nop                                           ; $6edc: $00
    ld h, c                                       ; $6edd: $61
    jr nz, jr_01d_6f4d                            ; $6ede: $20 $6d

    ld h, c                                       ; $6ee0: $61
    ld [hl], e                                    ; $6ee1: $73
    ld [hl], h                                    ; $6ee2: $74
    ld h, l                                       ; $6ee3: $65
    ld [hl], d                                    ; $6ee4: $72
    daa                                           ; $6ee5: $27
    ld [hl], e                                    ; $6ee6: $73
    nop                                           ; $6ee7: $00
    ld l, [hl]                                    ; $6ee8: $6e
    ld h, l                                       ; $6ee9: $65
    ld h, l                                       ; $6eea: $65
    ld h, h                                       ; $6eeb: $64
    ld [hl], e                                    ; $6eec: $73

jr_01d_6eed:
    jr nz, @+$65                                  ; $6eed: $20 $63

jr_01d_6eef:
    ld h, c                                       ; $6eef: $61
    ld [hl], d                                    ; $6ef0: $72
    ld [hl], d                                    ; $6ef1: $72
    ld a, c                                       ; $6ef2: $79
    jr nz, jr_01d_6f56                            ; $6ef3: $20 $61

    ld l, [hl]                                    ; $6ef5: $6e
    ld h, h                                       ; $6ef6: $64
    nop                                           ; $6ef7: $00
    ld l, h                                       ; $6ef8: $6c

jr_01d_6ef9:
    ld h, c                                       ; $6ef9: $61
    ld h, e                                       ; $6efa: $63
    ld l, e                                       ; $6efb: $6b
    ld [hl], e                                    ; $6efc: $73
    jr nz, jr_01d_6f62                            ; $6efd: $20 $63

jr_01d_6eff:
    ld h, c                                       ; $6eff: $61
    ld [hl], d                                    ; $6f00: $72
    ld [hl], d                                    ; $6f01: $72
    ld a, c                                       ; $6f02: $79
    jr nz, jr_01d_6f66                            ; $6f03: $20 $61

jr_01d_6f05:
    ld l, [hl]                                    ; $6f05: $6e
    ld h, h                                       ; $6f06: $64
    nop                                           ; $6f07: $00
    ld l, b                                       ; $6f08: $68
    ld h, c                                       ; $6f09: $61
    ld [hl], e                                    ; $6f0a: $73
    jr nz, jr_01d_6f5c                            ; $6f0b: $20 $4f

    ld c, e                                       ; $6f0d: $4b
    jr nz, jr_01d_6f73                            ; $6f0e: $20 $63

    ld h, c                                       ; $6f10: $61
    ld [hl], d                                    ; $6f11: $72

jr_01d_6f12:
    ld [hl], d                                    ; $6f12: $72

jr_01d_6f13:
    ld a, c                                       ; $6f13: $79
    jr nz, jr_01d_6f77                            ; $6f14: $20 $61

    ld l, [hl]                                    ; $6f16: $6e
    ld h, h                                       ; $6f17: $64
    nop                                           ; $6f18: $00
    ld l, b                                       ; $6f19: $68
    ld h, c                                       ; $6f1a: $61
    ld [hl], e                                    ; $6f1b: $73
    jr nz, jr_01d_6f81                            ; $6f1c: $20 $63

    ld h, c                                       ; $6f1e: $61
    ld [hl], d                                    ; $6f1f: $72

jr_01d_6f20:
    ld [hl], d                                    ; $6f20: $72
    ld a, c                                       ; $6f21: $79
    jr nz, jr_01d_6f85                            ; $6f22: $20 $61

    ld l, [hl]                                    ; $6f24: $6e
    ld h, h                                       ; $6f25: $64
    nop                                           ; $6f26: $00
    ld l, b                                       ; $6f27: $68
    ld h, c                                       ; $6f28: $61
    ld [hl], e                                    ; $6f29: $73
    jr nz, jr_01d_6f9a                            ; $6f2a: $20 $6e

jr_01d_6f2c:
    ld l, c                                       ; $6f2c: $69
    ld h, e                                       ; $6f2d: $63
    ld h, l                                       ; $6f2e: $65
    jr nz, jr_01d_6f94                            ; $6f2f: $20 $63

    ld h, c                                       ; $6f31: $61
    ld [hl], d                                    ; $6f32: $72
    ld [hl], d                                    ; $6f33: $72
    ld a, c                                       ; $6f34: $79
    jr nz, jr_01d_6f98                            ; $6f35: $20 $61

    ld l, [hl]                                    ; $6f37: $6e
    ld h, h                                       ; $6f38: $64
    nop                                           ; $6f39: $00
    ld l, b                                       ; $6f3a: $68
    ld h, c                                       ; $6f3b: $61

jr_01d_6f3c:
    ld [hl], e                                    ; $6f3c: $73
    jr nz, jr_01d_6fa7                            ; $6f3d: $20 $68

    ld [hl], l                                    ; $6f3f: $75
    ld h, a                                       ; $6f40: $67
    ld h, l                                       ; $6f41: $65
    jr nz, jr_01d_6fa7                            ; $6f42: $20 $63

    ld h, c                                       ; $6f44: $61
    ld [hl], d                                    ; $6f45: $72
    ld [hl], d                                    ; $6f46: $72
    ld a, c                                       ; $6f47: $79

jr_01d_6f48:
    jr nz, @+$63                                  ; $6f48: $20 $61

    ld l, [hl]                                    ; $6f4a: $6e
    ld h, h                                       ; $6f4b: $64
    nop                                           ; $6f4c: $00

jr_01d_6f4d:
    ld [hl], a                                    ; $6f4d: $77
    ld l, c                                       ; $6f4e: $69
    ld [hl], h                                    ; $6f4f: $74
    ld l, b                                       ; $6f50: $68
    jr nz, jr_01d_6fb4                            ; $6f51: $20 $61

    jr nz, @+$64                                  ; $6f53: $20 $62

    ld h, c                                       ; $6f55: $61

jr_01d_6f56:
    ld h, h                                       ; $6f56: $64
    jr nz, jr_01d_6fbf                            ; $6f57: $20 $66

    ld h, c                                       ; $6f59: $61
    ld h, h                                       ; $6f5a: $64
    ld h, l                                       ; $6f5b: $65

jr_01d_6f5c:
    ld hl, $7700                                  ; $6f5c: $21 $00 $77
    ld l, c                                       ; $6f5f: $69
    ld [hl], h                                    ; $6f60: $74
    ld l, b                                       ; $6f61: $68

jr_01d_6f62:
    jr nz, @+$63                                  ; $6f62: $20 $61

    jr nz, jr_01d_6fd9                            ; $6f64: $20 $73

jr_01d_6f66:
    ld l, b                                       ; $6f66: $68
    ld h, c                                       ; $6f67: $61
    ld [hl], d                                    ; $6f68: $72
    ld [hl], b                                    ; $6f69: $70
    jr nz, jr_01d_6fd2                            ; $6f6a: $20 $66

    ld h, c                                       ; $6f6c: $61
    ld h, h                                       ; $6f6d: $64
    ld h, l                                       ; $6f6e: $65
    ld l, $00                                     ; $6f6f: $2e $00
    ld [hl], h                                    ; $6f71: $74
    ld l, b                                       ; $6f72: $68

jr_01d_6f73:
    ld h, c                                       ; $6f73: $61
    ld [hl], h                                    ; $6f74: $74
    jr nz, jr_01d_6fdd                            ; $6f75: $20 $66

jr_01d_6f77:
    ld h, c                                       ; $6f77: $61
    ld h, h                                       ; $6f78: $64
    ld h, l                                       ; $6f79: $65
    ld [hl], e                                    ; $6f7a: $73
    ld l, $00                                     ; $6f7b: $2e $00
    ld [hl], h                                    ; $6f7d: $74
    ld l, b                                       ; $6f7e: $68
    ld h, c                                       ; $6f7f: $61
    ld [hl], h                                    ; $6f80: $74

jr_01d_6f81:
    jr nz, @+$68                                  ; $6f81: $20 $66

    ld h, c                                       ; $6f83: $61
    ld h, h                                       ; $6f84: $64

jr_01d_6f85:
    ld h, l                                       ; $6f85: $65
    ld [hl], e                                    ; $6f86: $73
    jr nz, jr_01d_6fea                            ; $6f87: $20 $61

    jr nz, jr_01d_6fed                            ; $6f89: $20 $62

    ld l, c                                       ; $6f8b: $69
    ld [hl], h                                    ; $6f8c: $74
    ld l, $00                                     ; $6f8d: $2e $00
    ld [hl], h                                    ; $6f8f: $74
    ld l, b                                       ; $6f90: $68
    ld h, c                                       ; $6f91: $61
    ld [hl], h                                    ; $6f92: $74
    daa                                           ; $6f93: $27

jr_01d_6f94:
    ld [hl], e                                    ; $6f94: $73
    jr nz, @+$75                                  ; $6f95: $20 $73

    ld [hl], h                                    ; $6f97: $74

jr_01d_6f98:
    ld [hl], d                                    ; $6f98: $72
    ld h, c                                       ; $6f99: $61

jr_01d_6f9a:
    ld l, c                                       ; $6f9a: $69
    ld h, a                                       ; $6f9b: $67
    ld l, b                                       ; $6f9c: $68
    ld [hl], h                                    ; $6f9d: $74
    ld l, $00                                     ; $6f9e: $2e $00
    ld [hl], h                                    ; $6fa0: $74
    ld l, b                                       ; $6fa1: $68
    ld h, c                                       ; $6fa2: $61
    ld [hl], h                                    ; $6fa3: $74
    jr nz, @+$66                                  ; $6fa4: $20 $64

    ld [hl], d                                    ; $6fa6: $72

jr_01d_6fa7:
    ld h, c                                       ; $6fa7: $61
    ld [hl], a                                    ; $6fa8: $77
    ld [hl], e                                    ; $6fa9: $73
    jr nz, jr_01d_700d                            ; $6faa: $20 $61

    jr nz, jr_01d_7010                            ; $6fac: $20 $62

    ld l, c                                       ; $6fae: $69
    ld [hl], h                                    ; $6faf: $74
    ld l, $00                                     ; $6fb0: $2e $00
    ld [hl], h                                    ; $6fb2: $74
    ld l, b                                       ; $6fb3: $68

jr_01d_6fb4:
    ld h, c                                       ; $6fb4: $61
    ld [hl], h                                    ; $6fb5: $74
    jr nz, jr_01d_701c                            ; $6fb6: $20 $64

    ld [hl], d                                    ; $6fb8: $72
    ld h, c                                       ; $6fb9: $61
    ld [hl], a                                    ; $6fba: $77
    ld [hl], e                                    ; $6fbb: $73
    ld l, $00                                     ; $6fbc: $2e $00
    ld [hl], a                                    ; $6fbe: $77

jr_01d_6fbf:
    ld l, c                                       ; $6fbf: $69
    ld [hl], h                                    ; $6fc0: $74
    ld l, b                                       ; $6fc1: $68
    jr nz, jr_01d_7025                            ; $6fc2: $20 $61

    jr nz, jr_01d_7039                            ; $6fc4: $20 $73

    ld l, b                                       ; $6fc6: $68
    ld h, c                                       ; $6fc7: $61
    ld [hl], d                                    ; $6fc8: $72
    ld [hl], b                                    ; $6fc9: $70
    jr nz, @+$66                                  ; $6fca: $20 $64

    ld [hl], d                                    ; $6fcc: $72
    ld h, c                                       ; $6fcd: $61
    ld [hl], a                                    ; $6fce: $77
    ld l, $00                                     ; $6fcf: $2e $00
    ld [hl], a                                    ; $6fd1: $77

jr_01d_6fd2:
    ld l, c                                       ; $6fd2: $69
    ld [hl], h                                    ; $6fd3: $74
    ld l, b                                       ; $6fd4: $68
    jr nz, @+$63                                  ; $6fd5: $20 $61

    jr nz, jr_01d_703b                            ; $6fd7: $20 $62

jr_01d_6fd9:
    ld h, c                                       ; $6fd9: $61
    ld h, h                                       ; $6fda: $64
    jr nz, jr_01d_7041                            ; $6fdb: $20 $64

jr_01d_6fdd:
    ld [hl], d                                    ; $6fdd: $72
    ld h, c                                       ; $6fde: $61
    ld [hl], a                                    ; $6fdf: $77
    ld hl, $6800                                  ; $6fe0: $21 $00 $68
    ld h, c                                       ; $6fe3: $61
    ld [hl], e                                    ; $6fe4: $73
    jr nz, jr_01d_7055                            ; $6fe5: $20 $6e

    ld l, a                                       ; $6fe7: $6f
    jr nz, jr_01d_704d                            ; $6fe8: $20 $63

jr_01d_6fea:
    ld l, a                                       ; $6fea: $6f
    ld l, [hl]                                    ; $6feb: $6e
    ld [hl], h                                    ; $6fec: $74

jr_01d_6fed:
    ld [hl], d                                    ; $6fed: $72
    ld l, a                                       ; $6fee: $6f
    ld l, h                                       ; $6fef: $6c
    ld l, $00                                     ; $6ff0: $2e $00
    ld l, c                                       ; $6ff2: $69
    ld [hl], e                                    ; $6ff3: $73
    jr nz, @+$6a                                  ; $6ff4: $20 $68

    ld h, c                                       ; $6ff6: $61
    ld [hl], d                                    ; $6ff7: $72
    ld h, h                                       ; $6ff8: $64
    jr nz, @+$76                                  ; $6ff9: $20 $74

    ld l, a                                       ; $6ffb: $6f
    jr nz, jr_01d_7061                            ; $6ffc: $20 $63

    ld l, a                                       ; $6ffe: $6f
    ld l, [hl]                                    ; $6fff: $6e
    ld [hl], h                                    ; $7000: $74
    ld [hl], d                                    ; $7001: $72
    ld l, a                                       ; $7002: $6f
    ld l, h                                       ; $7003: $6c
    ld l, $00                                     ; $7004: $2e $00
    ld l, b                                       ; $7006: $68
    ld h, c                                       ; $7007: $61
    ld [hl], e                                    ; $7008: $73
    jr nz, @+$69                                  ; $7009: $20 $67

    ld l, a                                       ; $700b: $6f
    ld l, a                                       ; $700c: $6f

jr_01d_700d:
    ld h, h                                       ; $700d: $64
    jr nz, jr_01d_7073                            ; $700e: $20 $63

jr_01d_7010:
    ld l, a                                       ; $7010: $6f
    ld l, [hl]                                    ; $7011: $6e
    ld [hl], h                                    ; $7012: $74
    ld [hl], d                                    ; $7013: $72
    ld l, a                                       ; $7014: $6f
    ld l, h                                       ; $7015: $6c
    ld l, $00                                     ; $7016: $2e $00
    ld l, c                                       ; $7018: $69
    ld [hl], e                                    ; $7019: $73
    jr nz, jr_01d_7081                            ; $701a: $20 $65

jr_01d_701c:
    ld h, c                                       ; $701c: $61
    ld [hl], e                                    ; $701d: $73
    ld a, c                                       ; $701e: $79
    jr nz, jr_01d_7095                            ; $701f: $20 $74

    ld l, a                                       ; $7021: $6f
    jr nz, jr_01d_7087                            ; $7022: $20 $63

    ld l, a                                       ; $7024: $6f

jr_01d_7025:
    ld l, [hl]                                    ; $7025: $6e
    ld [hl], h                                    ; $7026: $74
    ld [hl], d                                    ; $7027: $72
    ld l, a                                       ; $7028: $6f
    ld l, h                                       ; $7029: $6c
    ld l, $00                                     ; $702a: $2e $00
    ld l, b                                       ; $702c: $68
    ld h, c                                       ; $702d: $61
    ld [hl], e                                    ; $702e: $73
    jr nz, @+$65                                  ; $702f: $20 $63

    ld l, h                                       ; $7031: $6c
    ld h, c                                       ; $7032: $61
    ld [hl], e                                    ; $7033: $73
    ld [hl], e                                    ; $7034: $73
    ld l, c                                       ; $7035: $69
    ld h, e                                       ; $7036: $63
    jr nz, jr_01d_709c                            ; $7037: $20 $63

jr_01d_7039:
    ld l, a                                       ; $7039: $6f
    ld l, [hl]                                    ; $703a: $6e

jr_01d_703b:
    ld [hl], h                                    ; $703b: $74
    ld [hl], d                                    ; $703c: $72
    ld l, a                                       ; $703d: $6f
    ld l, h                                       ; $703e: $6c
    ld l, $00                                     ; $703f: $2e $00

jr_01d_7041:
    ld l, c                                       ; $7041: $69
    ld [hl], e                                    ; $7042: $73
    jr nz, jr_01d_70aa                            ; $7043: $20 $65

    ld h, c                                       ; $7045: $61
    ld [hl], e                                    ; $7046: $73
    ld a, c                                       ; $7047: $79
    jr nz, jr_01d_70be                            ; $7048: $20 $74

    ld l, a                                       ; $704a: $6f
    jr nz, @+$65                                  ; $704b: $20 $63

jr_01d_704d:
    ld l, a                                       ; $704d: $6f
    ld l, [hl]                                    ; $704e: $6e
    ld [hl], h                                    ; $704f: $74
    ld [hl], d                                    ; $7050: $72
    ld l, a                                       ; $7051: $6f
    ld l, h                                       ; $7052: $6c
    ld l, $00                                     ; $7053: $2e $00

jr_01d_7055:
    ld l, b                                       ; $7055: $68
    ld h, c                                       ; $7056: $61
    ld [hl], e                                    ; $7057: $73
    jr nz, @+$69                                  ; $7058: $20 $67

    ld l, a                                       ; $705a: $6f
    ld l, a                                       ; $705b: $6f
    ld h, h                                       ; $705c: $64
    jr nz, jr_01d_70c2                            ; $705d: $20 $63

    ld l, a                                       ; $705f: $6f
    ld l, [hl]                                    ; $7060: $6e

jr_01d_7061:
    ld [hl], h                                    ; $7061: $74
    ld [hl], d                                    ; $7062: $72
    ld l, a                                       ; $7063: $6f
    ld l, h                                       ; $7064: $6c
    ld l, $00                                     ; $7065: $2e $00
    ld l, c                                       ; $7067: $69
    ld [hl], e                                    ; $7068: $73
    jr nz, jr_01d_70d3                            ; $7069: $20 $68

    ld h, c                                       ; $706b: $61
    ld [hl], d                                    ; $706c: $72
    ld h, h                                       ; $706d: $64
    jr nz, @+$76                                  ; $706e: $20 $74

    ld l, a                                       ; $7070: $6f
    jr nz, @+$65                                  ; $7071: $20 $63

jr_01d_7073:
    ld l, a                                       ; $7073: $6f
    ld l, [hl]                                    ; $7074: $6e
    ld [hl], h                                    ; $7075: $74
    ld [hl], d                                    ; $7076: $72
    ld l, a                                       ; $7077: $6f
    ld l, h                                       ; $7078: $6c
    ld l, $00                                     ; $7079: $2e $00
    ld l, b                                       ; $707b: $68
    ld h, c                                       ; $707c: $61
    ld [hl], e                                    ; $707d: $73
    jr nz, jr_01d_70ee                            ; $707e: $20 $6e

    ld l, a                                       ; $7080: $6f

jr_01d_7081:
    jr nz, @+$65                                  ; $7081: $20 $63

    ld l, a                                       ; $7083: $6f
    ld l, [hl]                                    ; $7084: $6e
    ld [hl], h                                    ; $7085: $74
    ld [hl], d                                    ; $7086: $72

jr_01d_7087:
    ld l, a                                       ; $7087: $6f
    ld l, h                                       ; $7088: $6c
    ld l, $00                                     ; $7089: $2e $00
    ld c, c                                       ; $708b: $49
    ld [hl], h                                    ; $708c: $74
    daa                                           ; $708d: $27
    ld [hl], e                                    ; $708e: $73
    jr nz, @+$75                                  ; $708f: $20 $73

    ld l, e                                       ; $7091: $6b
    ld a, c                                       ; $7092: $79
    jr nz, jr_01d_70fd                            ; $7093: $20 $68

jr_01d_7095:
    ld l, c                                       ; $7095: $69
    ld h, a                                       ; $7096: $67
    ld l, b                                       ; $7097: $68
    inc l                                         ; $7098: $2c
    nop                                           ; $7099: $00
    ld c, c                                       ; $709a: $49
    ld [hl], h                                    ; $709b: $74

jr_01d_709c:
    daa                                           ; $709c: $27
    ld [hl], e                                    ; $709d: $73
    jr nz, jr_01d_7111                            ; $709e: $20 $71

    ld [hl], l                                    ; $70a0: $75
    ld l, c                                       ; $70a1: $69
    ld [hl], h                                    ; $70a2: $74
    ld h, l                                       ; $70a3: $65
    jr nz, jr_01d_710e                            ; $70a4: $20 $68

    ld l, c                                       ; $70a6: $69
    ld h, a                                       ; $70a7: $67
    ld l, b                                       ; $70a8: $68
    inc l                                         ; $70a9: $2c

jr_01d_70aa:
    nop                                           ; $70aa: $00
    ld c, c                                       ; $70ab: $49
    ld [hl], h                                    ; $70ac: $74
    daa                                           ; $70ad: $27
    ld [hl], e                                    ; $70ae: $73
    jr nz, jr_01d_711c                            ; $70af: $20 $6b

    ld l, c                                       ; $70b1: $69
    ld l, [hl]                                    ; $70b2: $6e
    ld h, h                                       ; $70b3: $64
    ld h, c                                       ; $70b4: $61
    jr nz, jr_01d_711f                            ; $70b5: $20 $68

    ld l, c                                       ; $70b7: $69
    ld h, a                                       ; $70b8: $67
    ld l, b                                       ; $70b9: $68
    inc l                                         ; $70ba: $2c
    nop                                           ; $70bb: $00
    ld c, c                                       ; $70bc: $49
    ld [hl], h                                    ; $70bd: $74

jr_01d_70be:
    daa                                           ; $70be: $27
    ld [hl], e                                    ; $70bf: $73
    jr nz, @+$63                                  ; $70c0: $20 $61

jr_01d_70c2:
    jr nz, jr_01d_7138                            ; $70c2: $20 $74

    ld h, c                                       ; $70c4: $61
    ld h, h                                       ; $70c5: $64
    jr nz, jr_01d_7130                            ; $70c6: $20 $68

    ld l, c                                       ; $70c8: $69
    ld h, a                                       ; $70c9: $67
    ld l, b                                       ; $70ca: $68
    inc l                                         ; $70cb: $2c
    nop                                           ; $70cc: $00
    ld c, b                                       ; $70cd: $48
    ld h, l                                       ; $70ce: $65
    ld l, c                                       ; $70cf: $69
    ld h, a                                       ; $70d0: $67
    ld l, b                                       ; $70d1: $68
    ld [hl], h                                    ; $70d2: $74

jr_01d_70d3:
    daa                                           ; $70d3: $27
    ld [hl], e                                    ; $70d4: $73
    jr nz, jr_01d_7138                            ; $70d5: $20 $61

    halt                                          ; $70d7: $76
    ld h, l                                       ; $70d8: $65
    ld [hl], d                                    ; $70d9: $72
    ld h, c                                       ; $70da: $61
    ld h, a                                       ; $70db: $67
    ld h, l                                       ; $70dc: $65
    inc l                                         ; $70dd: $2c
    nop                                           ; $70de: $00
    ld c, c                                       ; $70df: $49
    ld [hl], h                                    ; $70e0: $74
    daa                                           ; $70e1: $27
    ld [hl], e                                    ; $70e2: $73
    jr nz, jr_01d_7146                            ; $70e3: $20 $61

    jr nz, jr_01d_715b                            ; $70e5: $20 $74

    ld h, c                                       ; $70e7: $61
    ld h, h                                       ; $70e8: $64
    jr nz, jr_01d_7157                            ; $70e9: $20 $6c

    ld l, a                                       ; $70eb: $6f
    ld [hl], a                                    ; $70ec: $77
    inc l                                         ; $70ed: $2c

jr_01d_70ee:
    nop                                           ; $70ee: $00
    ld c, c                                       ; $70ef: $49
    ld [hl], h                                    ; $70f0: $74
    daa                                           ; $70f1: $27
    ld [hl], e                                    ; $70f2: $73
    jr nz, @+$6d                                  ; $70f3: $20 $6b

    ld l, c                                       ; $70f5: $69
    ld l, [hl]                                    ; $70f6: $6e
    ld h, h                                       ; $70f7: $64
    ld h, c                                       ; $70f8: $61
    jr nz, jr_01d_7167                            ; $70f9: $20 $6c

    ld l, a                                       ; $70fb: $6f
    ld [hl], a                                    ; $70fc: $77

jr_01d_70fd:
    inc l                                         ; $70fd: $2c
    nop                                           ; $70fe: $00
    ld c, c                                       ; $70ff: $49
    ld [hl], h                                    ; $7100: $74
    daa                                           ; $7101: $27
    ld [hl], e                                    ; $7102: $73
    jr nz, jr_01d_7176                            ; $7103: $20 $71

    ld [hl], l                                    ; $7105: $75
    ld l, c                                       ; $7106: $69
    ld [hl], h                                    ; $7107: $74
    ld h, l                                       ; $7108: $65
    jr nz, jr_01d_7177                            ; $7109: $20 $6c

    ld l, a                                       ; $710b: $6f
    ld [hl], a                                    ; $710c: $77
    inc l                                         ; $710d: $2c

jr_01d_710e:
    nop                                           ; $710e: $00
    ld c, c                                       ; $710f: $49
    ld [hl], h                                    ; $7110: $74

jr_01d_7111:
    daa                                           ; $7111: $27
    ld [hl], e                                    ; $7112: $73
    jr nz, jr_01d_7187                            ; $7113: $20 $72

    ld h, l                                       ; $7115: $65
    ld h, c                                       ; $7116: $61
    ld l, h                                       ; $7117: $6c
    ld l, h                                       ; $7118: $6c
    ld a, c                                       ; $7119: $79
    jr nz, @+$6e                                  ; $711a: $20 $6c

jr_01d_711c:
    ld l, a                                       ; $711c: $6f
    ld [hl], a                                    ; $711d: $77
    inc l                                         ; $711e: $2c

jr_01d_711f:
    nop                                           ; $711f: $00
    ld c, c                                       ; $7120: $49
    ld [hl], h                                    ; $7121: $74
    jr nz, jr_01d_718a                            ; $7122: $20 $66

    ld l, a                                       ; $7124: $6f
    ld l, h                                       ; $7125: $6c
    ld l, h                                       ; $7126: $6c
    ld l, a                                       ; $7127: $6f
    ld [hl], a                                    ; $7128: $77
    ld [hl], e                                    ; $7129: $73
    jr nz, jr_01d_71a3                            ; $712a: $20 $77

    ld l, c                                       ; $712c: $69
    ld l, [hl]                                    ; $712d: $6e
    ld h, h                                       ; $712e: $64
    inc l                                         ; $712f: $2c

jr_01d_7130:
    jr nz, jr_01d_7132                            ; $7130: $20 $00

jr_01d_7132:
    ld c, c                                       ; $7132: $49
    ld [hl], h                                    ; $7133: $74
    jr nz, jr_01d_71a9                            ; $7134: $20 $73

    ld [hl], h                                    ; $7136: $74
    ld l, c                                       ; $7137: $69

jr_01d_7138:
    ld h, e                                       ; $7138: $63
    ld l, e                                       ; $7139: $6b
    ld [hl], e                                    ; $713a: $73
    jr nz, jr_01d_71b1                            ; $713b: $20 $74

    ld l, a                                       ; $713d: $6f
    jr nz, jr_01d_71b7                            ; $713e: $20 $77

    ld l, c                                       ; $7140: $69
    ld l, [hl]                                    ; $7141: $6e
    ld h, h                                       ; $7142: $64
    inc l                                         ; $7143: $2c
    nop                                           ; $7144: $00
    ld d, a                                       ; $7145: $57

jr_01d_7146:
    ld l, c                                       ; $7146: $69
    ld l, [hl]                                    ; $7147: $6e
    ld h, h                                       ; $7148: $64
    jr nz, jr_01d_71ad                            ; $7149: $20 $62

    ld l, h                                       ; $714b: $6c
    ld l, a                                       ; $714c: $6f
    ld [hl], a                                    ; $714d: $77
    ld [hl], e                                    ; $714e: $73
    jr nz, jr_01d_71ba                            ; $714f: $20 $69

    ld [hl], h                                    ; $7151: $74
    inc l                                         ; $7152: $2c
    nop                                           ; $7153: $00
    ld d, a                                       ; $7154: $57
    ld l, c                                       ; $7155: $69
    ld l, [hl]                                    ; $7156: $6e

jr_01d_7157:
    ld h, h                                       ; $7157: $64
    jr nz, jr_01d_71ca                            ; $7158: $20 $70

    ld [hl], l                                    ; $715a: $75

jr_01d_715b:
    ld [hl], e                                    ; $715b: $73
    ld l, b                                       ; $715c: $68
    ld h, l                                       ; $715d: $65
    ld [hl], e                                    ; $715e: $73
    jr nz, jr_01d_71ca                            ; $715f: $20 $69

    ld [hl], h                                    ; $7161: $74
    inc l                                         ; $7162: $2c
    nop                                           ; $7163: $00
    ld b, c                                       ; $7164: $41
    ld h, [hl]                                    ; $7165: $66
    ld h, [hl]                                    ; $7166: $66

jr_01d_7167:
    ld h, l                                       ; $7167: $65
    ld h, e                                       ; $7168: $63
    ld [hl], h                                    ; $7169: $74
    jr nz, jr_01d_71d5                            ; $716a: $20 $69

    ld [hl], e                                    ; $716c: $73
    jr nz, @+$63                                  ; $716d: $20 $61

    halt                                          ; $716f: $76
    ld h, l                                       ; $7170: $65
    ld [hl], d                                    ; $7171: $72
    ld h, c                                       ; $7172: $61
    ld h, a                                       ; $7173: $67
    ld h, l                                       ; $7174: $65
    inc l                                         ; $7175: $2c

jr_01d_7176:
    nop                                           ; $7176: $00

jr_01d_7177:
    ld c, c                                       ; $7177: $49
    ld [hl], h                                    ; $7178: $74
    jr nz, @+$68                                  ; $7179: $20 $66

    ld h, l                                       ; $717b: $65
    ld h, l                                       ; $717c: $65
    ld l, h                                       ; $717d: $6c
    ld [hl], e                                    ; $717e: $73
    jr nz, jr_01d_71ed                            ; $717f: $20 $6c

    ld l, c                                       ; $7181: $69
    ld h, l                                       ; $7182: $65
    inc l                                         ; $7183: $2c
    nop                                           ; $7184: $00
    ld c, c                                       ; $7185: $49
    ld [hl], h                                    ; $7186: $74

jr_01d_7187:
    jr nz, jr_01d_71ef                            ; $7187: $20 $66

    ld h, l                                       ; $7189: $65

jr_01d_718a:
    ld h, l                                       ; $718a: $65
    ld l, h                                       ; $718b: $6c
    ld [hl], e                                    ; $718c: $73
    jr nz, jr_01d_71f8                            ; $718d: $20 $69

    ld [hl], h                                    ; $718f: $74
    ld [hl], e                                    ; $7190: $73
    jr nz, jr_01d_71ff                            ; $7191: $20 $6c

    ld l, c                                       ; $7193: $69
    ld h, l                                       ; $7194: $65
    inc l                                         ; $7195: $2c
    nop                                           ; $7196: $00
    ld c, h                                       ; $7197: $4c
    ld l, c                                       ; $7198: $69
    ld h, l                                       ; $7199: $65
    jr nz, jr_01d_71ff                            ; $719a: $20 $63

    ld h, c                                       ; $719c: $61
    ld l, [hl]                                    ; $719d: $6e
    jr nz, jr_01d_7208                            ; $719e: $20 $68

    ld l, a                                       ; $71a0: $6f
    ld l, h                                       ; $71a1: $6c
    ld h, h                                       ; $71a2: $64

jr_01d_71a3:
    jr nz, jr_01d_720e                            ; $71a3: $20 $69

    ld [hl], h                                    ; $71a5: $74
    inc l                                         ; $71a6: $2c
    nop                                           ; $71a7: $00
    ld c, h                                       ; $71a8: $4c

jr_01d_71a9:
    ld l, c                                       ; $71a9: $69
    ld h, l                                       ; $71aa: $65
    jr nz, jr_01d_7210                            ; $71ab: $20 $63

jr_01d_71ad:
    ld h, c                                       ; $71ad: $61
    ld l, [hl]                                    ; $71ae: $6e
    jr nz, jr_01d_7213                            ; $71af: $20 $62

jr_01d_71b1:
    ld [hl], l                                    ; $71b1: $75
    ld [hl], d                                    ; $71b2: $72
    ld a, c                                       ; $71b3: $79
    jr nz, @+$6b                                  ; $71b4: $20 $69

    ld [hl], h                                    ; $71b6: $74

jr_01d_71b7:
    inc l                                         ; $71b7: $2c
    nop                                           ; $71b8: $00
    ld l, l                                       ; $71b9: $6d

jr_01d_71ba:
    ld h, l                                       ; $71ba: $65
    ld h, l                                       ; $71bb: $65
    ld [hl], h                                    ; $71bc: $74
    jr nz, jr_01d_7220                            ; $71bd: $20 $61

    ld [hl], d                                    ; $71bf: $72
    ld h, l                                       ; $71c0: $65
    ld h, c                                       ; $71c1: $61
    daa                                           ; $71c2: $27
    ld [hl], e                                    ; $71c3: $73
    jr nz, jr_01d_722e                            ; $71c4: $20 $68

    ld [hl], l                                    ; $71c6: $75
    ld h, a                                       ; $71c7: $67
    ld h, l                                       ; $71c8: $65
    inc l                                         ; $71c9: $2c

jr_01d_71ca:
    nop                                           ; $71ca: $00
    ld l, l                                       ; $71cb: $6d
    ld h, l                                       ; $71cc: $65
    ld h, l                                       ; $71cd: $65
    ld [hl], h                                    ; $71ce: $74
    jr nz, jr_01d_7232                            ; $71cf: $20 $61

    ld [hl], d                                    ; $71d1: $72
    ld h, l                                       ; $71d2: $65
    ld h, c                                       ; $71d3: $61
    daa                                           ; $71d4: $27

jr_01d_71d5:
    ld [hl], e                                    ; $71d5: $73
    jr nz, jr_01d_723a                            ; $71d6: $20 $62

    ld l, c                                       ; $71d8: $69
    ld h, a                                       ; $71d9: $67
    inc l                                         ; $71da: $2c
    nop                                           ; $71db: $00
    ld l, l                                       ; $71dc: $6d
    ld h, l                                       ; $71dd: $65
    ld h, l                                       ; $71de: $65
    ld [hl], h                                    ; $71df: $74
    jr nz, jr_01d_7243                            ; $71e0: $20 $61

    ld [hl], d                                    ; $71e2: $72
    ld h, l                                       ; $71e3: $65
    ld h, c                                       ; $71e4: $61
    daa                                           ; $71e5: $27
    ld [hl], e                                    ; $71e6: $73
    jr nz, jr_01d_7255                            ; $71e7: $20 $6c

    ld h, c                                       ; $71e9: $61
    ld [hl], d                                    ; $71ea: $72
    ld h, a                                       ; $71eb: $67
    ld h, l                                       ; $71ec: $65

jr_01d_71ed:
    inc l                                         ; $71ed: $2c
    nop                                           ; $71ee: $00

jr_01d_71ef:
    ld l, l                                       ; $71ef: $6d
    ld h, l                                       ; $71f0: $65
    ld h, l                                       ; $71f1: $65
    ld [hl], h                                    ; $71f2: $74
    jr nz, jr_01d_7256                            ; $71f3: $20 $61

    ld [hl], d                                    ; $71f5: $72
    ld h, l                                       ; $71f6: $65
    ld h, c                                       ; $71f7: $61

jr_01d_71f8:
    daa                                           ; $71f8: $27
    ld [hl], e                                    ; $71f9: $73
    jr nz, jr_01d_7273                            ; $71fa: $20 $77

    ld l, c                                       ; $71fc: $69
    ld h, h                                       ; $71fd: $64
    ld h, l                                       ; $71fe: $65

jr_01d_71ff:
    inc l                                         ; $71ff: $2c
    nop                                           ; $7200: $00
    ld l, l                                       ; $7201: $6d
    ld h, l                                       ; $7202: $65
    ld h, l                                       ; $7203: $65
    ld [hl], h                                    ; $7204: $74
    jr nz, @+$63                                  ; $7205: $20 $61

    ld [hl], d                                    ; $7207: $72

jr_01d_7208:
    ld h, l                                       ; $7208: $65
    ld h, c                                       ; $7209: $61
    daa                                           ; $720a: $27
    ld [hl], e                                    ; $720b: $73
    jr nz, jr_01d_726f                            ; $720c: $20 $61

jr_01d_720e:
    halt                                          ; $720e: $76
    ld h, a                                       ; $720f: $67

jr_01d_7210:
    ld l, $2c                                     ; $7210: $2e $2c
    nop                                           ; $7212: $00

jr_01d_7213:
    ld l, l                                       ; $7213: $6d
    ld h, l                                       ; $7214: $65
    ld h, l                                       ; $7215: $65
    ld [hl], h                                    ; $7216: $74
    jr nz, jr_01d_727a                            ; $7217: $20 $61

    ld [hl], d                                    ; $7219: $72
    ld h, l                                       ; $721a: $65
    ld h, c                                       ; $721b: $61
    daa                                           ; $721c: $27
    ld [hl], e                                    ; $721d: $73
    jr nz, jr_01d_7293                            ; $721e: $20 $73

jr_01d_7220:
    ld l, h                                       ; $7220: $6c
    ld l, c                                       ; $7221: $69
    ld l, l                                       ; $7222: $6d
    inc l                                         ; $7223: $2c
    nop                                           ; $7224: $00
    ld l, l                                       ; $7225: $6d
    ld h, l                                       ; $7226: $65
    ld h, l                                       ; $7227: $65
    ld [hl], h                                    ; $7228: $74
    jr nz, jr_01d_728c                            ; $7229: $20 $61

    ld [hl], d                                    ; $722b: $72
    ld h, l                                       ; $722c: $65
    ld h, c                                       ; $722d: $61

jr_01d_722e:
    daa                                           ; $722e: $27
    ld [hl], e                                    ; $722f: $73
    jr nz, jr_01d_72a0                            ; $7230: $20 $6e

jr_01d_7232:
    ld h, c                                       ; $7232: $61
    ld [hl], d                                    ; $7233: $72
    ld [hl], d                                    ; $7234: $72
    ld l, a                                       ; $7235: $6f
    ld [hl], a                                    ; $7236: $77
    inc l                                         ; $7237: $2c
    nop                                           ; $7238: $00
    ld l, l                                       ; $7239: $6d

jr_01d_723a:
    ld h, l                                       ; $723a: $65
    ld h, l                                       ; $723b: $65
    ld [hl], h                                    ; $723c: $74
    jr nz, jr_01d_72a0                            ; $723d: $20 $61

    ld [hl], d                                    ; $723f: $72
    ld h, l                                       ; $7240: $65
    ld h, c                                       ; $7241: $61
    daa                                           ; $7242: $27

jr_01d_7243:
    ld [hl], e                                    ; $7243: $73
    jr nz, @+$76                                  ; $7244: $20 $74

    ld l, c                                       ; $7246: $69
    ld l, [hl]                                    ; $7247: $6e
    ld a, c                                       ; $7248: $79
    inc l                                         ; $7249: $2c
    nop                                           ; $724a: $00
    ld l, l                                       ; $724b: $6d
    ld h, l                                       ; $724c: $65
    ld h, l                                       ; $724d: $65
    ld [hl], h                                    ; $724e: $74
    jr nz, jr_01d_72b2                            ; $724f: $20 $61

    ld [hl], d                                    ; $7251: $72
    ld h, l                                       ; $7252: $65
    ld h, c                                       ; $7253: $61
    daa                                           ; $7254: $27

jr_01d_7255:
    ld [hl], e                                    ; $7255: $73

jr_01d_7256:
    jr nz, jr_01d_72bf                            ; $7256: $20 $67

    ld l, a                                       ; $7258: $6f
    ld l, [hl]                                    ; $7259: $6e
    ld h, l                                       ; $725a: $65
    inc l                                         ; $725b: $2c
    nop                                           ; $725c: $00
    ld [hl], h                                    ; $725d: $74
    ld l, c                                       ; $725e: $69
    ld l, l                                       ; $725f: $6d
    ld l, c                                       ; $7260: $69
    ld l, [hl]                                    ; $7261: $6e
    ld h, a                                       ; $7262: $67
    daa                                           ; $7263: $27
    ld [hl], e                                    ; $7264: $73
    jr nz, @+$63                                  ; $7265: $20 $61

    jr nz, jr_01d_72cc                            ; $7267: $20 $63

    ld l, c                                       ; $7269: $69
    ld l, [hl]                                    ; $726a: $6e
    ld h, e                                       ; $726b: $63
    ld l, b                                       ; $726c: $68
    inc l                                         ; $726d: $2c
    nop                                           ; $726e: $00

jr_01d_726f:
    ld [hl], h                                    ; $726f: $74
    ld l, c                                       ; $7270: $69
    ld l, l                                       ; $7271: $6d
    ld l, c                                       ; $7272: $69

jr_01d_7273:
    ld l, [hl]                                    ; $7273: $6e
    ld h, a                                       ; $7274: $67
    daa                                           ; $7275: $27
    ld [hl], e                                    ; $7276: $73
    jr nz, jr_01d_72e0                            ; $7277: $20 $67

    ld l, a                                       ; $7279: $6f

jr_01d_727a:
    ld l, a                                       ; $727a: $6f
    ld h, h                                       ; $727b: $64
    inc l                                         ; $727c: $2c
    nop                                           ; $727d: $00
    ld [hl], h                                    ; $727e: $74
    ld l, c                                       ; $727f: $69
    ld l, l                                       ; $7280: $6d
    ld l, c                                       ; $7281: $69
    ld l, [hl]                                    ; $7282: $6e
    ld h, a                                       ; $7283: $67
    daa                                           ; $7284: $27
    ld [hl], e                                    ; $7285: $73
    jr nz, jr_01d_72ed                            ; $7286: $20 $65

    ld h, c                                       ; $7288: $61
    ld [hl], e                                    ; $7289: $73
    ld a, c                                       ; $728a: $79
    inc l                                         ; $728b: $2c

jr_01d_728c:
    nop                                           ; $728c: $00
    ld [hl], h                                    ; $728d: $74
    ld l, c                                       ; $728e: $69
    ld l, l                                       ; $728f: $6d
    ld l, c                                       ; $7290: $69
    ld l, [hl]                                    ; $7291: $6e
    ld h, a                                       ; $7292: $67

jr_01d_7293:
    daa                                           ; $7293: $27
    ld [hl], e                                    ; $7294: $73
    jr nz, jr_01d_7305                            ; $7295: $20 $6e

    ld l, a                                       ; $7297: $6f
    ld [hl], h                                    ; $7298: $74
    jr nz, @+$64                                  ; $7299: $20 $62

    ld h, c                                       ; $729b: $61
    ld h, h                                       ; $729c: $64
    inc l                                         ; $729d: $2c
    nop                                           ; $729e: $00
    ld [hl], h                                    ; $729f: $74

jr_01d_72a0:
    ld l, c                                       ; $72a0: $69
    ld l, l                                       ; $72a1: $6d
    ld l, c                                       ; $72a2: $69
    ld l, [hl]                                    ; $72a3: $6e
    ld h, a                                       ; $72a4: $67
    daa                                           ; $72a5: $27
    ld [hl], e                                    ; $72a6: $73
    jr nz, jr_01d_730a                            ; $72a7: $20 $61

    halt                                          ; $72a9: $76
    ld h, l                                       ; $72aa: $65
    ld [hl], d                                    ; $72ab: $72
    ld h, c                                       ; $72ac: $61
    ld h, a                                       ; $72ad: $67
    ld h, l                                       ; $72ae: $65
    inc l                                         ; $72af: $2c
    nop                                           ; $72b0: $00
    ld [hl], h                                    ; $72b1: $74

jr_01d_72b2:
    ld l, c                                       ; $72b2: $69
    ld l, l                                       ; $72b3: $6d
    ld l, c                                       ; $72b4: $69
    ld l, [hl]                                    ; $72b5: $6e
    ld h, a                                       ; $72b6: $67
    daa                                           ; $72b7: $27
    ld [hl], e                                    ; $72b8: $73
    jr nz, jr_01d_732e                            ; $72b9: $20 $73

    ld l, a                                       ; $72bb: $6f
    dec l                                         ; $72bc: $2d
    ld [hl], e                                    ; $72bd: $73
    ld l, a                                       ; $72be: $6f

jr_01d_72bf:
    inc l                                         ; $72bf: $2c
    nop                                           ; $72c0: $00
    ld [hl], h                                    ; $72c1: $74
    ld l, c                                       ; $72c2: $69
    ld l, l                                       ; $72c3: $6d
    ld l, c                                       ; $72c4: $69
    ld l, [hl]                                    ; $72c5: $6e
    ld h, a                                       ; $72c6: $67
    jr nz, jr_01d_7337                            ; $72c7: $20 $6e

    ld h, l                                       ; $72c9: $65
    ld h, l                                       ; $72ca: $65
    ld h, h                                       ; $72cb: $64

jr_01d_72cc:
    ld [hl], e                                    ; $72cc: $73
    jr nz, jr_01d_7346                            ; $72cd: $20 $77

    ld l, a                                       ; $72cf: $6f
    ld [hl], d                                    ; $72d0: $72
    ld l, e                                       ; $72d1: $6b
    inc l                                         ; $72d2: $2c
    nop                                           ; $72d3: $00
    ld [hl], h                                    ; $72d4: $74
    ld l, c                                       ; $72d5: $69
    ld l, l                                       ; $72d6: $6d
    ld l, c                                       ; $72d7: $69
    ld l, [hl]                                    ; $72d8: $6e
    ld h, a                                       ; $72d9: $67
    daa                                           ; $72da: $27
    ld [hl], e                                    ; $72db: $73
    jr nz, jr_01d_734d                            ; $72dc: $20 $6f

    ld h, [hl]                                    ; $72de: $66
    ld h, [hl]                                    ; $72df: $66

jr_01d_72e0:
    inc l                                         ; $72e0: $2c
    nop                                           ; $72e1: $00
    ld [hl], h                                    ; $72e2: $74
    ld l, c                                       ; $72e3: $69
    ld l, l                                       ; $72e4: $6d
    ld l, c                                       ; $72e5: $69
    ld l, [hl]                                    ; $72e6: $6e
    ld h, a                                       ; $72e7: $67
    daa                                           ; $72e8: $27
    ld [hl], e                                    ; $72e9: $73
    jr nz, jr_01d_7354                            ; $72ea: $20 $68

    ld l, a                                       ; $72ec: $6f

jr_01d_72ed:
    ld [hl], d                                    ; $72ed: $72
    ld [hl], d                                    ; $72ee: $72
    ld l, c                                       ; $72ef: $69
    ld h, d                                       ; $72f0: $62
    ld l, h                                       ; $72f1: $6c
    ld h, l                                       ; $72f2: $65
    inc l                                         ; $72f3: $2c
    nop                                           ; $72f4: $00
    ld [hl], a                                    ; $72f5: $77
    ld l, c                                       ; $72f6: $69
    ld [hl], h                                    ; $72f7: $74
    ld l, b                                       ; $72f8: $68
    jr nz, jr_01d_7369                            ; $72f9: $20 $6e

    ld l, a                                       ; $72fb: $6f
    jr nz, jr_01d_7375                            ; $72fc: $20 $77

    ld h, c                                       ; $72fe: $61
    halt                                          ; $72ff: $76
    ld h, l                                       ; $7300: $65
    ld [hl], d                                    ; $7301: $72
    ld l, $00                                     ; $7302: $2e $00
    ld [hl], a                                    ; $7304: $77

jr_01d_7305:
    ld l, c                                       ; $7305: $69
    ld [hl], h                                    ; $7306: $74
    ld l, b                                       ; $7307: $68
    jr nz, jr_01d_7376                            ; $7308: $20 $6c

jr_01d_730a:
    ld l, c                                       ; $730a: $69
    ld [hl], h                                    ; $730b: $74
    ld [hl], h                                    ; $730c: $74
    ld l, h                                       ; $730d: $6c
    ld h, l                                       ; $730e: $65
    jr nz, jr_01d_7388                            ; $730f: $20 $77

    ld h, c                                       ; $7311: $61
    halt                                          ; $7312: $76
    ld h, l                                       ; $7313: $65
    ld [hl], d                                    ; $7314: $72
    ld l, $00                                     ; $7315: $2e $00
    ld [hl], a                                    ; $7317: $77
    ld l, c                                       ; $7318: $69
    ld [hl], h                                    ; $7319: $74
    ld l, b                                       ; $731a: $68
    jr nz, jr_01d_7390                            ; $731b: $20 $73

    ld l, h                                       ; $731d: $6c
    ld l, c                                       ; $731e: $69
    ld h, a                                       ; $731f: $67
    ld l, b                                       ; $7320: $68
    ld [hl], h                                    ; $7321: $74
    jr nz, jr_01d_739b                            ; $7322: $20 $77

    ld h, c                                       ; $7324: $61
    halt                                          ; $7325: $76
    ld h, l                                       ; $7326: $65
    ld [hl], d                                    ; $7327: $72
    ld l, $00                                     ; $7328: $2e $00
    ld [hl], a                                    ; $732a: $77
    ld l, c                                       ; $732b: $69
    ld [hl], h                                    ; $732c: $74
    ld l, b                                       ; $732d: $68

jr_01d_732e:
    jr nz, @+$6e                                  ; $732e: $20 $6c

    ld h, l                                       ; $7330: $65
    ld [hl], e                                    ; $7331: $73
    ld [hl], e                                    ; $7332: $73
    jr nz, jr_01d_73ac                            ; $7333: $20 $77

    ld h, c                                       ; $7335: $61
    halt                                          ; $7336: $76

jr_01d_7337:
    ld h, l                                       ; $7337: $65
    ld [hl], d                                    ; $7338: $72
    ld l, $00                                     ; $7339: $2e $00
    ld [hl], a                                    ; $733b: $77
    ld l, c                                       ; $733c: $69
    ld [hl], h                                    ; $733d: $74
    ld l, b                                       ; $733e: $68
    jr nz, jr_01d_73a2                            ; $733f: $20 $61

    halt                                          ; $7341: $76
    ld h, a                                       ; $7342: $67
    ld l, $20                                     ; $7343: $2e $20
    ld [hl], a                                    ; $7345: $77

jr_01d_7346:
    ld h, c                                       ; $7346: $61
    halt                                          ; $7347: $76
    ld h, l                                       ; $7348: $65
    ld [hl], d                                    ; $7349: $72
    ld l, $00                                     ; $734a: $2e $00
    ld [hl], a                                    ; $734c: $77

jr_01d_734d:
    ld l, c                                       ; $734d: $69
    ld [hl], h                                    ; $734e: $74
    ld l, b                                       ; $734f: $68
    jr nz, @+$6f                                  ; $7350: $20 $6d

    ld l, a                                       ; $7352: $6f
    ld [hl], d                                    ; $7353: $72

jr_01d_7354:
    ld h, l                                       ; $7354: $65
    jr nz, jr_01d_73ce                            ; $7355: $20 $77

    ld h, c                                       ; $7357: $61
    halt                                          ; $7358: $76
    ld h, l                                       ; $7359: $65
    ld [hl], d                                    ; $735a: $72
    ld l, $00                                     ; $735b: $2e $00
    ld [hl], a                                    ; $735d: $77
    ld l, c                                       ; $735e: $69
    ld [hl], h                                    ; $735f: $74
    ld l, b                                       ; $7360: $68
    jr nz, jr_01d_73c5                            ; $7361: $20 $62

    ld l, c                                       ; $7363: $69
    ld h, a                                       ; $7364: $67
    jr nz, @+$79                                  ; $7365: $20 $77

    ld h, c                                       ; $7367: $61
    halt                                          ; $7368: $76

jr_01d_7369:
    ld h, l                                       ; $7369: $65
    ld [hl], d                                    ; $736a: $72
    ld l, $00                                     ; $736b: $2e $00
    ld [hl], a                                    ; $736d: $77
    ld l, c                                       ; $736e: $69
    ld [hl], h                                    ; $736f: $74
    ld l, b                                       ; $7370: $68
    jr nz, jr_01d_73df                            ; $7371: $20 $6c

    ld l, a                                       ; $7373: $6f
    ld [hl], h                                    ; $7374: $74

jr_01d_7375:
    ld [hl], e                                    ; $7375: $73

jr_01d_7376:
    ld h, c                                       ; $7376: $61
    jr nz, jr_01d_73f0                            ; $7377: $20 $77

    ld h, c                                       ; $7379: $61
    halt                                          ; $737a: $76
    ld h, l                                       ; $737b: $65
    ld [hl], d                                    ; $737c: $72
    ld l, $20                                     ; $737d: $2e $20
    nop                                           ; $737f: $00
    ld [hl], a                                    ; $7380: $77
    ld l, c                                       ; $7381: $69
    ld [hl], h                                    ; $7382: $74
    ld l, b                                       ; $7383: $68
    jr nz, jr_01d_73f3                            ; $7384: $20 $6d

    ld h, c                                       ; $7386: $61
    ld l, d                                       ; $7387: $6a

jr_01d_7388:
    ld l, a                                       ; $7388: $6f
    ld [hl], d                                    ; $7389: $72
    jr nz, jr_01d_7403                            ; $738a: $20 $77

    ld h, c                                       ; $738c: $61
    halt                                          ; $738d: $76
    ld h, l                                       ; $738e: $65
    ld [hl], d                                    ; $738f: $72

jr_01d_7390:
    ld l, $00                                     ; $7390: $2e $00
    ld h, c                                       ; $7392: $61
    ld l, [hl]                                    ; $7393: $6e
    ld h, h                                       ; $7394: $64
    jr nz, @+$63                                  ; $7395: $20 $61

    ld l, c                                       ; $7397: $69
    ld l, l                                       ; $7398: $6d
    daa                                           ; $7399: $27
    ld [hl], e                                    ; $739a: $73

jr_01d_739b:
    jr nz, @+$72                                  ; $739b: $20 $70

    ld h, l                                       ; $739d: $65
    ld [hl], d                                    ; $739e: $72
    ld h, [hl]                                    ; $739f: $66
    ld h, l                                       ; $73a0: $65
    ld h, e                                       ; $73a1: $63

jr_01d_73a2:
    ld [hl], h                                    ; $73a2: $74
    ld hl, $6100                                  ; $73a3: $21 $00 $61
    ld l, [hl]                                    ; $73a6: $6e
    ld h, h                                       ; $73a7: $64
    jr nz, jr_01d_740b                            ; $73a8: $20 $61

    ld l, c                                       ; $73aa: $69
    ld l, l                                       ; $73ab: $6d

jr_01d_73ac:
    jr nz, jr_01d_7417                            ; $73ac: $20 $69

    ld [hl], e                                    ; $73ae: $73
    jr nz, jr_01d_7418                            ; $73af: $20 $67

    ld [hl], d                                    ; $73b1: $72
    ld h, l                                       ; $73b2: $65
    ld h, c                                       ; $73b3: $61
    ld [hl], h                                    ; $73b4: $74
    ld hl, $6100                                  ; $73b5: $21 $00 $61
    ld l, [hl]                                    ; $73b8: $6e
    ld h, h                                       ; $73b9: $64
    jr nz, jr_01d_741d                            ; $73ba: $20 $61

    ld l, c                                       ; $73bc: $69
    ld l, l                                       ; $73bd: $6d
    jr nz, jr_01d_7429                            ; $73be: $20 $69

    ld [hl], e                                    ; $73c0: $73
    jr nz, jr_01d_742a                            ; $73c1: $20 $67

    ld l, a                                       ; $73c3: $6f
    ld l, a                                       ; $73c4: $6f

jr_01d_73c5:
    ld h, h                                       ; $73c5: $64
    ld hl, $6100                                  ; $73c6: $21 $00 $61
    ld l, [hl]                                    ; $73c9: $6e
    ld h, h                                       ; $73ca: $64
    jr nz, jr_01d_742e                            ; $73cb: $20 $61

    ld l, c                                       ; $73cd: $69

jr_01d_73ce:
    ld l, l                                       ; $73ce: $6d
    daa                                           ; $73cf: $27
    ld [hl], e                                    ; $73d0: $73
    jr nz, jr_01d_7437                            ; $73d1: $20 $64

    ld h, l                                       ; $73d3: $65
    ld h, e                                       ; $73d4: $63
    ld h, l                                       ; $73d5: $65
    ld l, [hl]                                    ; $73d6: $6e
    ld [hl], h                                    ; $73d7: $74
    ld l, $00                                     ; $73d8: $2e $00
    ld h, c                                       ; $73da: $61
    ld l, [hl]                                    ; $73db: $6e
    ld h, h                                       ; $73dc: $64
    jr nz, jr_01d_7440                            ; $73dd: $20 $61

jr_01d_73df:
    ld l, c                                       ; $73df: $69
    ld l, l                                       ; $73e0: $6d
    jr nz, jr_01d_744c                            ; $73e1: $20 $69

    ld [hl], e                                    ; $73e3: $73
    jr nz, @+$63                                  ; $73e4: $20 $61

    halt                                          ; $73e6: $76
    ld h, l                                       ; $73e7: $65
    ld [hl], d                                    ; $73e8: $72
    ld h, c                                       ; $73e9: $61
    ld h, a                                       ; $73ea: $67
    ld h, l                                       ; $73eb: $65
    ld l, $00                                     ; $73ec: $2e $00
    ld h, c                                       ; $73ee: $61
    ld l, [hl]                                    ; $73ef: $6e

jr_01d_73f0:
    ld h, h                                       ; $73f0: $64
    jr nz, jr_01d_7454                            ; $73f1: $20 $61

jr_01d_73f3:
    ld l, c                                       ; $73f3: $69
    ld l, l                                       ; $73f4: $6d
    daa                                           ; $73f5: $27
    ld [hl], e                                    ; $73f6: $73
    jr nz, jr_01d_746e                            ; $73f7: $20 $75

    ld l, [hl]                                    ; $73f9: $6e
    ld [hl], e                                    ; $73fa: $73
    ld [hl], h                                    ; $73fb: $74
    ld h, l                                       ; $73fc: $65
    ld h, c                                       ; $73fd: $61
    ld h, h                                       ; $73fe: $64
    ld a, c                                       ; $73ff: $79
    ld l, $00                                     ; $7400: $2e $00
    ld h, c                                       ; $7402: $61

jr_01d_7403:
    ld l, [hl]                                    ; $7403: $6e
    ld h, h                                       ; $7404: $64
    jr nz, jr_01d_7468                            ; $7405: $20 $61

    ld l, c                                       ; $7407: $69
    ld l, l                                       ; $7408: $6d
    jr nz, jr_01d_7474                            ; $7409: $20 $69

jr_01d_740b:
    ld [hl], e                                    ; $740b: $73
    jr nz, jr_01d_7470                            ; $740c: $20 $62

    ld h, c                                       ; $740e: $61
    ld h, h                                       ; $740f: $64
    ld hl, $6100                                  ; $7410: $21 $00 $61
    ld l, [hl]                                    ; $7413: $6e
    ld h, h                                       ; $7414: $64
    jr nz, @+$63                                  ; $7415: $20 $61

jr_01d_7417:
    ld l, c                                       ; $7417: $69

jr_01d_7418:
    ld l, l                                       ; $7418: $6d
    daa                                           ; $7419: $27
    ld [hl], e                                    ; $741a: $73
    jr nz, jr_01d_747e                            ; $741b: $20 $61

jr_01d_741d:
    ld [hl], a                                    ; $741d: $77
    ld h, [hl]                                    ; $741e: $66
    ld [hl], l                                    ; $741f: $75
    ld l, h                                       ; $7420: $6c
    ld hl, $6100                                  ; $7421: $21 $00 $61
    ld l, [hl]                                    ; $7424: $6e
    ld h, h                                       ; $7425: $64
    jr nz, @+$63                                  ; $7426: $20 $61

    ld l, c                                       ; $7428: $69

jr_01d_7429:
    ld l, l                                       ; $7429: $6d

jr_01d_742a:
    ld l, $2e                                     ; $742a: $2e $2e
    ld l, $55                                     ; $742c: $2e $55

jr_01d_742e:
    ld b, a                                       ; $742e: $47
    ld c, b                                       ; $742f: $48
    ld hl, $5900                                  ; $7430: $21 $00 $59
    ld l, a                                       ; $7433: $6f
    ld [hl], l                                    ; $7434: $75
    jr nz, jr_01d_749f                            ; $7435: $20 $68

jr_01d_7437:
    ld h, c                                       ; $7437: $61
    halt                                          ; $7438: $76
    ld h, l                                       ; $7439: $65
    ld bc, $2004                                  ; $743a: $01 $04 $20
    ld [hl], e                                    ; $743d: $73
    ld l, b                                       ; $743e: $68
    ld l, a                                       ; $743f: $6f

jr_01d_7440:
    ld [hl], h                                    ; $7440: $74
    ld bc, $0204                                  ; $7441: $01 $04 $02
    inc b                                         ; $7444: $04
    ld bc, HeaderLogo                             ; $7445: $01 $04 $01
    inc b                                         ; $7448: $04
    inc bc                                        ; $7449: $03
    nop                                           ; $744a: $00
    ld c, c                                       ; $744b: $49

jr_01d_744c:
    ld [hl], h                                    ; $744c: $74
    daa                                           ; $744d: $27
    ld [hl], e                                    ; $744e: $73
    jr nz, @+$63                                  ; $744f: $20 $61

    jr nz, jr_01d_74b5                            ; $7451: $20 $62

    ld h, c                                       ; $7453: $61

jr_01d_7454:
    ld l, h                                       ; $7454: $6c
    ld l, h                                       ; $7455: $6c
    jr nz, @+$76                                  ; $7456: $20 $74

    ld l, b                                       ; $7458: $68
    ld h, c                                       ; $7459: $61
    ld [hl], h                                    ; $745a: $74
    ld bc, HeaderLogo                             ; $745b: $01 $04 $01
    inc b                                         ; $745e: $04
    ld [bc], a                                    ; $745f: $02
    inc b                                         ; $7460: $04
    ld bc, HeaderLogo                             ; $7461: $01 $04 $01
    inc b                                         ; $7464: $04
    inc bc                                        ; $7465: $03
    nop                                           ; $7466: $00
    ld e, c                                       ; $7467: $59

jr_01d_7468:
    ld l, a                                       ; $7468: $6f
    ld [hl], l                                    ; $7469: $75
    jr nz, jr_01d_74cf                            ; $746a: $20 $63

    ld h, c                                       ; $746c: $61
    ld l, [hl]                                    ; $746d: $6e

jr_01d_746e:
    daa                                           ; $746e: $27
    ld [hl], h                                    ; $746f: $74

jr_01d_7470:
    jr nz, @+$69                                  ; $7470: $20 $67

    ld h, l                                       ; $7472: $65
    ld [hl], h                                    ; $7473: $74

jr_01d_7474:
    jr nz, jr_01d_74d7                            ; $7474: $20 $61

    ld bc, $6974                                  ; $7476: $01 $74 $69
    ld h, a                                       ; $7479: $67
    ld l, b                                       ; $747a: $68
    ld [hl], h                                    ; $747b: $74
    jr nz, @+$75                                  ; $747c: $20 $73

jr_01d_747e:
    ld l, b                                       ; $747e: $68
    ld l, a                                       ; $747f: $6f
    ld [hl], h                                    ; $7480: $74
    jr nz, jr_01d_74ec                            ; $7481: $20 $69

    ld h, [hl]                                    ; $7483: $66
    jr nz, jr_01d_74ff                            ; $7484: $20 $79

    ld l, a                                       ; $7486: $6f
    ld [hl], l                                    ; $7487: $75
    ld bc, $6177                                  ; $7488: $01 $77 $61
    halt                                          ; $748b: $76
    ld h, l                                       ; $748c: $65
    ld [hl], d                                    ; $748d: $72
    jr nz, jr_01d_74ff                            ; $748e: $20 $6f

    ld l, [hl]                                    ; $7490: $6e
    jr nz, @+$6b                                  ; $7491: $20 $69

    ld l, l                                       ; $7493: $6d
    ld [hl], b                                    ; $7494: $70
    ld h, c                                       ; $7495: $61
    ld h, e                                       ; $7496: $63
    ld [hl], h                                    ; $7497: $74
    ld l, $02                                     ; $7498: $2e $02
    ld b, c                                       ; $749a: $41
    halt                                          ; $749b: $76
    ld l, a                                       ; $749c: $6f
    ld l, c                                       ; $749d: $69
    ld h, h                                       ; $749e: $64

jr_01d_749f:
    jr nz, jr_01d_7514                            ; $749f: $20 $73

    ld l, b                                       ; $74a1: $68
    ld l, a                                       ; $74a2: $6f
    ld [hl], h                                    ; $74a3: $74
    ld [hl], e                                    ; $74a4: $73
    jr nz, jr_01d_751e                            ; $74a5: $20 $77

    ld l, c                                       ; $74a7: $69
    ld [hl], h                                    ; $74a8: $74
    ld l, b                                       ; $74a9: $68
    ld bc, $616e                                  ; $74aa: $01 $6e $61
    ld [hl], d                                    ; $74ad: $72
    ld [hl], d                                    ; $74ae: $72
    ld l, a                                       ; $74af: $6f
    ld [hl], a                                    ; $74b0: $77
    jr nz, jr_01d_7520                            ; $74b1: $20 $6d

    ld h, l                                       ; $74b3: $65
    ld h, l                                       ; $74b4: $65

jr_01d_74b5:
    ld [hl], h                                    ; $74b5: $74
    jr nz, jr_01d_7519                            ; $74b6: $20 $61

    ld [hl], d                                    ; $74b8: $72
    ld h, l                                       ; $74b9: $65
    ld h, c                                       ; $74ba: $61
    ld [hl], e                                    ; $74bb: $73
    ld hl, $0003                                  ; $74bc: $21 $03 $00
    ld c, c                                       ; $74bf: $49
    ld [hl], h                                    ; $74c0: $74
    daa                                           ; $74c1: $27
    ld [hl], e                                    ; $74c2: $73
    jr nz, jr_01d_752d                            ; $74c3: $20 $68

    ld h, c                                       ; $74c5: $61
    ld [hl], d                                    ; $74c6: $72
    ld h, h                                       ; $74c7: $64
    jr nz, jr_01d_753e                            ; $74c8: $20 $74

    ld l, a                                       ; $74ca: $6f
    jr nz, @+$6c                                  ; $74cb: $20 $6a

    ld [hl], l                                    ; $74cd: $75
    ld h, h                                       ; $74ce: $64

jr_01d_74cf:
    ld h, a                                       ; $74cf: $67
    ld h, l                                       ; $74d0: $65
    ld bc, $2061                                  ; $74d1: $01 $61 $20
    ld [hl], e                                    ; $74d4: $73
    ld l, b                                       ; $74d5: $68
    ld l, a                                       ; $74d6: $6f

jr_01d_74d7:
    ld [hl], h                                    ; $74d7: $74
    jr nz, jr_01d_753b                            ; $74d8: $20 $61

    ld [hl], h                                    ; $74da: $74
    jr nz, @+$6e                                  ; $74db: $20 $6c

    ld h, l                                       ; $74dd: $65
    ld [hl], e                                    ; $74de: $73
    ld [hl], e                                    ; $74df: $73
    ld bc, $6874                                  ; $74e0: $01 $74 $68
    ld h, c                                       ; $74e3: $61
    ld l, [hl]                                    ; $74e4: $6e
    jr nz, jr_01d_7554                            ; $74e5: $20 $6d

    ld h, c                                       ; $74e7: $61
    ld a, b                                       ; $74e8: $78
    ld l, $20                                     ; $74e9: $2e $20
    ld [hl], b                                    ; $74eb: $70

jr_01d_74ec:
    ld l, a                                       ; $74ec: $6f
    ld [hl], a                                    ; $74ed: $77
    ld h, l                                       ; $74ee: $65
    ld [hl], d                                    ; $74ef: $72
    ld l, $02                                     ; $74f0: $2e $02
    ld c, c                                       ; $74f2: $49
    ld h, [hl]                                    ; $74f3: $66
    jr nz, jr_01d_756a                            ; $74f4: $20 $74

    ld l, b                                       ; $74f6: $68
    ld h, c                                       ; $74f7: $61
    ld [hl], h                                    ; $74f8: $74
    daa                                           ; $74f9: $27
    ld [hl], e                                    ; $74fa: $73
    jr nz, jr_01d_7576                            ; $74fb: $20 $79

    ld l, a                                       ; $74fd: $6f
    ld [hl], l                                    ; $74fe: $75

jr_01d_74ff:
    ld [hl], d                                    ; $74ff: $72
    ld bc, $6562                                  ; $7500: $01 $62 $65
    ld [hl], e                                    ; $7503: $73
    ld [hl], h                                    ; $7504: $74
    jr nz, @+$75                                  ; $7505: $20 $73

    ld l, b                                       ; $7507: $68
    ld l, a                                       ; $7508: $6f
    ld [hl], h                                    ; $7509: $74
    inc l                                         ; $750a: $2c
    jr nz, jr_01d_7575                            ; $750b: $20 $68

    ld l, c                                       ; $750d: $69
    ld [hl], h                                    ; $750e: $74
    ld bc, $6977                                  ; $750f: $01 $77 $69
    ld [hl], h                                    ; $7512: $74
    ld l, b                                       ; $7513: $68

jr_01d_7514:
    jr nz, jr_01d_757e                            ; $7514: $20 $68

    ld h, l                                       ; $7516: $65
    ld h, c                                       ; $7517: $61
    halt                                          ; $7518: $76

jr_01d_7519:
    ld l, c                                       ; $7519: $69
    ld h, l                                       ; $751a: $65
    ld [hl], d                                    ; $751b: $72
    jr nz, @+$65                                  ; $751c: $20 $63

jr_01d_751e:
    ld l, h                                       ; $751e: $6c
    ld [hl], l                                    ; $751f: $75

jr_01d_7520:
    ld h, d                                       ; $7520: $62
    ld [hl], e                                    ; $7521: $73
    ld l, $03                                     ; $7522: $2e $03
    nop                                           ; $7524: $00
    ld e, c                                       ; $7525: $59
    ld l, a                                       ; $7526: $6f
    ld [hl], l                                    ; $7527: $75
    jr nz, jr_01d_759d                            ; $7528: $20 $73

    ld h, l                                       ; $752a: $65
    ld h, l                                       ; $752b: $65
    ld l, l                                       ; $752c: $6d

jr_01d_752d:
    jr nz, jr_01d_75a3                            ; $752d: $20 $74

    ld l, a                                       ; $752f: $6f
    jr nz, jr_01d_75a9                            ; $7530: $20 $77

    ld h, c                                       ; $7532: $61
    halt                                          ; $7533: $76
    ld h, l                                       ; $7534: $65
    ld [hl], d                                    ; $7535: $72
    ld bc, $6e6f                                  ; $7536: $01 $6f $6e
    jr nz, jr_01d_759d                            ; $7539: $20 $62

jr_01d_753b:
    ld l, a                                       ; $753b: $6f
    ld [hl], h                                    ; $753c: $74
    ld l, b                                       ; $753d: $68

jr_01d_753e:
    jr nz, @+$72                                  ; $753e: $20 $70

    ld l, a                                       ; $7540: $6f
    ld [hl], a                                    ; $7541: $77
    ld h, l                                       ; $7542: $65
    ld [hl], d                                    ; $7543: $72
    jr nz, jr_01d_75a7                            ; $7544: $20 $61

    ld l, [hl]                                    ; $7546: $6e
    ld h, h                                       ; $7547: $64
    ld bc, $6d69                                  ; $7548: $01 $69 $6d
    ld [hl], b                                    ; $754b: $70
    ld h, c                                       ; $754c: $61
    ld h, e                                       ; $754d: $63
    ld [hl], h                                    ; $754e: $74
    ld l, $02                                     ; $754f: $2e $02
    ld c, h                                       ; $7551: $4c
    ld h, l                                       ; $7552: $65
    ld h, c                                       ; $7553: $61

jr_01d_7554:
    ld [hl], d                                    ; $7554: $72
    ld l, [hl]                                    ; $7555: $6e
    jr nz, jr_01d_75ca                            ; $7556: $20 $72

    ld l, b                                       ; $7558: $68
    ld a, c                                       ; $7559: $79
    ld [hl], h                                    ; $755a: $74
    ld l, b                                       ; $755b: $68
    ld l, l                                       ; $755c: $6d
    jr nz, jr_01d_75c0                            ; $755d: $20 $61

    ld l, [hl]                                    ; $755f: $6e
    ld h, h                                       ; $7560: $64
    ld bc, $6974                                  ; $7561: $01 $74 $69
    ld l, l                                       ; $7564: $6d
    ld l, c                                       ; $7565: $69
    ld l, [hl]                                    ; $7566: $6e
    ld h, a                                       ; $7567: $67
    jr nz, jr_01d_75de                            ; $7568: $20 $74

jr_01d_756a:
    ld l, b                                       ; $756a: $68
    ld [hl], d                                    ; $756b: $72
    ld l, a                                       ; $756c: $6f
    ld [hl], l                                    ; $756d: $75
    ld h, a                                       ; $756e: $67
    ld l, b                                       ; $756f: $68
    jr nz, jr_01d_75e2                            ; $7570: $20 $70

    ld [hl], d                                    ; $7572: $72
    ld h, c                                       ; $7573: $61
    ld h, e                                       ; $7574: $63

jr_01d_7575:
    ld [hl], h                                    ; $7575: $74

jr_01d_7576:
    ld l, c                                       ; $7576: $69
    ld h, e                                       ; $7577: $63
    ld h, l                                       ; $7578: $65
    ld l, $03                                     ; $7579: $2e $03
    nop                                           ; $757b: $00
    ld d, h                                       ; $757c: $54
    ld l, b                                       ; $757d: $68

jr_01d_757e:
    ld h, c                                       ; $757e: $61
    ld [hl], h                                    ; $757f: $74
    jr nz, jr_01d_75c5                            ; $7580: $20 $43

    ld b, c                                       ; $7582: $41
    ld c, [hl]                                    ; $7583: $4e
    daa                                           ; $7584: $27
    ld d, h                                       ; $7585: $54
    jr nz, @+$64                                  ; $7586: $20 $62

    ld h, l                                       ; $7588: $65
    jr nz, @+$63                                  ; $7589: $20 $61

    ld bc, $6573                                  ; $758b: $01 $73 $65
    ld [hl], d                                    ; $758e: $72
    ld l, c                                       ; $758f: $69
    ld l, a                                       ; $7590: $6f
    ld [hl], l                                    ; $7591: $75
    ld [hl], e                                    ; $7592: $73
    jr nz, jr_01d_7608                            ; $7593: $20 $73

    ld l, b                                       ; $7595: $68
    ld l, a                                       ; $7596: $6f
    ld [hl], h                                    ; $7597: $74
    ld hl, $213f                                  ; $7598: $21 $3f $21
    ld [bc], a                                    ; $759b: $02
    ld c, c                                       ; $759c: $49

jr_01d_759d:
    ld h, [hl]                                    ; $759d: $66
    jr nz, jr_01d_7609                            ; $759e: $20 $69

    ld [hl], h                                    ; $75a0: $74
    jr nz, @+$6b                                  ; $75a1: $20 $69

jr_01d_75a3:
    ld [hl], e                                    ; $75a3: $73
    inc l                                         ; $75a4: $2c
    jr nz, jr_01d_7620                            ; $75a5: $20 $79

jr_01d_75a7:
    ld l, a                                       ; $75a7: $6f
    ld [hl], l                                    ; $75a8: $75

jr_01d_75a9:
    jr nz, jr_01d_7619                            ; $75a9: $20 $6e

    ld h, l                                       ; $75ab: $65
    ld h, l                                       ; $75ac: $65
    ld h, h                                       ; $75ad: $64
    ld bc, $6f74                                  ; $75ae: $01 $74 $6f
    jr nz, jr_01d_7623                            ; $75b1: $20 $70

    ld h, l                                       ; $75b3: $65
    ld [hl], d                                    ; $75b4: $72
    ld h, [hl]                                    ; $75b5: $66
    ld h, l                                       ; $75b6: $65
    ld h, e                                       ; $75b7: $63
    ld [hl], h                                    ; $75b8: $74
    jr nz, jr_01d_7624                            ; $75b9: $20 $69

    ld [hl], h                                    ; $75bb: $74
    ld hl, $0003                                  ; $75bc: $21 $03 $00
    ld c, c                                       ; $75bf: $49

jr_01d_75c0:
    jr nz, jr_01d_7626                            ; $75c0: $20 $64

    ld l, a                                       ; $75c2: $6f
    ld l, [hl]                                    ; $75c3: $6e
    daa                                           ; $75c4: $27

jr_01d_75c5:
    ld [hl], h                                    ; $75c5: $74
    jr nz, jr_01d_7632                            ; $75c6: $20 $6a

    ld [hl], l                                    ; $75c8: $75
    ld h, h                                       ; $75c9: $64

jr_01d_75ca:
    ld h, a                                       ; $75ca: $67
    ld h, l                                       ; $75cb: $65
    ld bc, $696d                                  ; $75cc: $01 $6d $69
    ld [hl], e                                    ; $75cf: $73
    dec l                                         ; $75d0: $2d
    ld l, b                                       ; $75d1: $68
    ld l, c                                       ; $75d2: $69
    ld [hl], h                                    ; $75d3: $74
    ld [hl], e                                    ; $75d4: $73
    ld l, $03                                     ; $75d5: $2e $03
    nop                                           ; $75d7: $00
    ld e, c                                       ; $75d8: $59
    ld l, a                                       ; $75d9: $6f
    ld [hl], l                                    ; $75da: $75
    jr nz, jr_01d_7650                            ; $75db: $20 $73

    ld l, b                                       ; $75dd: $68

jr_01d_75de:
    ld l, a                                       ; $75de: $6f
    ld [hl], h                                    ; $75df: $74
    jr nz, jr_01d_7643                            ; $75e0: $20 $61

jr_01d_75e2:
    jr nz, jr_01d_764c                            ; $75e2: $20 $68

    ld l, a                                       ; $75e4: $6f
    ld l, a                                       ; $75e5: $6f
    ld l, e                                       ; $75e6: $6b
    inc l                                         ; $75e7: $2c
    ld bc, $6f73                                  ; $75e8: $01 $73 $6f
    jr nz, jr_01d_7666                            ; $75eb: $20 $79

    ld l, a                                       ; $75ed: $6f
    ld [hl], l                                    ; $75ee: $75
    jr nz, jr_01d_765e                            ; $75ef: $20 $6d

    ld [hl], l                                    ; $75f1: $75
    ld [hl], e                                    ; $75f2: $73
    ld [hl], h                                    ; $75f3: $74
    jr nz, jr_01d_765e                            ; $75f4: $20 $68

    ld h, c                                       ; $75f6: $61
    halt                                          ; $75f7: $76
    ld h, l                                       ; $75f8: $65
    ld bc, $6f73                                  ; $75f9: $01 $73 $6f
    ld l, l                                       ; $75fc: $6d
    ld h, l                                       ; $75fd: $65
    jr nz, jr_01d_7673                            ; $75fe: $20 $73

    ld l, e                                       ; $7600: $6b
    ld l, c                                       ; $7601: $69
    ld l, h                                       ; $7602: $6c
    ld l, h                                       ; $7603: $6c
    ld l, $02                                     ; $7604: $2e $02
    ld b, d                                       ; $7606: $42
    ld [hl], l                                    ; $7607: $75

jr_01d_7608:
    ld [hl], h                                    ; $7608: $74

jr_01d_7609:
    jr nz, @+$4b                                  ; $7609: $20 $49

    jr nz, jr_01d_767c                            ; $760b: $20 $6f

    ld l, [hl]                                    ; $760d: $6e
    ld l, h                                       ; $760e: $6c
    ld a, c                                       ; $760f: $79
    jr nz, jr_01d_767c                            ; $7610: $20 $6a

    ld [hl], l                                    ; $7612: $75
    ld h, h                                       ; $7613: $64
    ld h, a                                       ; $7614: $67
    ld h, l                                       ; $7615: $65
    ld bc, $616e                                  ; $7616: $01 $6e $61

jr_01d_7619:
    ld [hl], h                                    ; $7619: $74
    ld [hl], l                                    ; $761a: $75
    ld [hl], d                                    ; $761b: $72
    ld h, c                                       ; $761c: $61
    ld l, h                                       ; $761d: $6c
    jr nz, @+$75                                  ; $761e: $20 $73

jr_01d_7620:
    ld l, b                                       ; $7620: $68
    ld l, a                                       ; $7621: $6f
    ld [hl], h                                    ; $7622: $74

jr_01d_7623:
    ld [hl], e                                    ; $7623: $73

jr_01d_7624:
    ld l, $03                                     ; $7624: $2e $03

jr_01d_7626:
    nop                                           ; $7626: $00
    ld e, c                                       ; $7627: $59
    ld l, a                                       ; $7628: $6f
    ld [hl], l                                    ; $7629: $75
    jr nz, jr_01d_76a0                            ; $762a: $20 $74

    ld l, b                                       ; $762c: $68
    ld l, c                                       ; $762d: $69
    ld l, [hl]                                    ; $762e: $6e
    ld l, e                                       ; $762f: $6b
    jr nz, jr_01d_767b                            ; $7630: $20 $49

jr_01d_7632:
    jr nz, jr_01d_7698                            ; $7632: $20 $64

    ld l, a                                       ; $7634: $6f
    ld l, [hl]                                    ; $7635: $6e
    daa                                           ; $7636: $27
    ld [hl], h                                    ; $7637: $74
    ld bc, $6e6b                                  ; $7638: $01 $6b $6e
    ld l, a                                       ; $763b: $6f
    ld [hl], a                                    ; $763c: $77
    jr nz, jr_01d_76a0                            ; $763d: $20 $61

    jr nz, jr_01d_76b4                            ; $763f: $20 $73

    ld l, h                                       ; $7641: $6c
    ld l, c                                       ; $7642: $69

jr_01d_7643:
    ld h, e                                       ; $7643: $63
    ld h, l                                       ; $7644: $65
    ccf                                           ; $7645: $3f
    ld [bc], a                                    ; $7646: $02
    ld c, b                                       ; $7647: $48
    ld l, c                                       ; $7648: $69
    ld [hl], h                                    ; $7649: $74
    jr nz, jr_01d_76bf                            ; $764a: $20 $73

jr_01d_764c:
    ld [hl], h                                    ; $764c: $74
    ld [hl], d                                    ; $764d: $72
    ld h, c                                       ; $764e: $61
    ld l, c                                       ; $764f: $69

jr_01d_7650:
    ld h, a                                       ; $7650: $67
    ld l, b                                       ; $7651: $68
    ld [hl], h                                    ; $7652: $74
    jr nz, jr_01d_76be                            ; $7653: $20 $69

    ld h, [hl]                                    ; $7655: $66
    ld bc, $6f79                                  ; $7656: $01 $79 $6f
    ld [hl], l                                    ; $7659: $75
    jr nz, jr_01d_76d3                            ; $765a: $20 $77

    ld h, c                                       ; $765c: $61
    ld l, [hl]                                    ; $765d: $6e

jr_01d_765e:
    ld [hl], h                                    ; $765e: $74
    jr nz, jr_01d_76c2                            ; $765f: $20 $61

    ld h, h                                       ; $7661: $64
    halt                                          ; $7662: $76
    ld l, c                                       ; $7663: $69
    ld h, e                                       ; $7664: $63
    ld h, l                                       ; $7665: $65

jr_01d_7666:
    ld l, $03                                     ; $7666: $2e $03
    nop                                           ; $7668: $00
    ld b, c                                       ; $7669: $41
    jr nz, jr_01d_76ce                            ; $766a: $20 $62

    ld h, c                                       ; $766c: $61
    ld l, h                                       ; $766d: $6c
    ld l, h                                       ; $766e: $6c
    jr nz, @+$79                                  ; $766f: $20 $77

    ld l, c                                       ; $7671: $69
    ld [hl], h                                    ; $7672: $74

jr_01d_7673:
    ld l, b                                       ; $7673: $68
    jr nz, jr_01d_76ea                            ; $7674: $20 $74

    ld l, a                                       ; $7676: $6f
    ld [hl], b                                    ; $7677: $70
    ld [hl], e                                    ; $7678: $73
    ld [hl], b                                    ; $7679: $70
    ld l, c                                       ; $767a: $69

jr_01d_767b:
    ld l, [hl]                                    ; $767b: $6e

jr_01d_767c:
    ld hl, $5301                                  ; $767c: $21 $01 $53
    ld l, b                                       ; $767f: $68
    ld l, a                                       ; $7680: $6f
    ld [hl], a                                    ; $7681: $77
    jr nz, jr_01d_76f3                            ; $7682: $20 $6f

    ld h, [hl]                                    ; $7684: $66
    ld h, [hl]                                    ; $7685: $66
    ld hl, $4902                                  ; $7686: $21 $02 $49
    jr nz, jr_01d_76fe                            ; $7689: $20 $73

    ld h, l                                       ; $768b: $65
    ld h, l                                       ; $768c: $65
    jr nz, jr_01d_7708                            ; $768d: $20 $79

    ld l, a                                       ; $768f: $6f
    ld [hl], l                                    ; $7690: $75
    ld [hl], d                                    ; $7691: $72
    jr nz, jr_01d_7707                            ; $7692: $20 $73

    ld l, e                                       ; $7694: $6b
    ld l, c                                       ; $7695: $69
    ld l, h                                       ; $7696: $6c
    ld l, h                                       ; $7697: $6c

jr_01d_7698:
    inc l                                         ; $7698: $2c
    ld bc, $6f6e                                  ; $7699: $01 $6e $6f
    ld [hl], a                                    ; $769c: $77
    jr nz, jr_01d_7712                            ; $769d: $20 $73

    ld l, b                                       ; $769f: $68

jr_01d_76a0:
    ld l, a                                       ; $76a0: $6f
    ld [hl], a                                    ; $76a1: $77
    jr nz, jr_01d_7711                            ; $76a2: $20 $6d

    ld h, l                                       ; $76a4: $65
    jr nz, jr_01d_7720                            ; $76a5: $20 $79

    ld l, a                                       ; $76a7: $6f
    ld [hl], l                                    ; $76a8: $75
    ld [hl], d                                    ; $76a9: $72
    ld bc, $6873                                  ; $76aa: $01 $73 $68
    ld l, a                                       ; $76ad: $6f
    ld [hl], h                                    ; $76ae: $74
    ld hl, $0003                                  ; $76af: $21 $03 $00
    ld e, c                                       ; $76b2: $59
    ld l, a                                       ; $76b3: $6f

jr_01d_76b4:
    ld [hl], l                                    ; $76b4: $75
    jr nz, jr_01d_7727                            ; $76b5: $20 $70

    ld [hl], l                                    ; $76b7: $75
    ld [hl], h                                    ; $76b8: $74
    jr nz, jr_01d_771d                            ; $76b9: $20 $62

    ld h, c                                       ; $76bb: $61
    ld h, e                                       ; $76bc: $63
    ld l, e                                       ; $76bd: $6b

jr_01d_76be:
    ld [hl], e                                    ; $76be: $73

jr_01d_76bf:
    ld [hl], b                                    ; $76bf: $70
    ld l, c                                       ; $76c0: $69
    ld l, [hl]                                    ; $76c1: $6e

jr_01d_76c2:
    ld bc, $6e6f                                  ; $76c2: $01 $6f $6e
    jr nz, jr_01d_773b                            ; $76c5: $20 $74

    ld l, b                                       ; $76c7: $68
    ld h, l                                       ; $76c8: $65
    jr nz, jr_01d_772d                            ; $76c9: $20 $62

    ld h, c                                       ; $76cb: $61
    ld l, h                                       ; $76cc: $6c
    ld l, h                                       ; $76cd: $6c

jr_01d_76ce:
    ld hl, $4902                                  ; $76ce: $21 $02 $49
    jr nz, jr_01d_7736                            ; $76d1: $20 $63

jr_01d_76d3:
    ld h, c                                       ; $76d3: $61
    ld l, [hl]                                    ; $76d4: $6e
    daa                                           ; $76d5: $27
    ld [hl], h                                    ; $76d6: $74
    jr nz, jr_01d_7743                            ; $76d7: $20 $6a

    ld [hl], l                                    ; $76d9: $75
    ld h, h                                       ; $76da: $64
    ld h, a                                       ; $76db: $67
    ld h, l                                       ; $76dc: $65
    jr nz, jr_01d_7758                            ; $76dd: $20 $79

    ld l, a                                       ; $76df: $6f
    ld [hl], l                                    ; $76e0: $75
    ld [hl], d                                    ; $76e1: $72
    ld bc, $6873                                  ; $76e2: $01 $73 $68
    ld l, a                                       ; $76e5: $6f
    ld [hl], h                                    ; $76e6: $74
    jr nz, @+$76                                  ; $76e7: $20 $74

    ld l, b                                       ; $76e9: $68

jr_01d_76ea:
    ld h, c                                       ; $76ea: $61
    ld [hl], h                                    ; $76eb: $74
    jr nz, jr_01d_7765                            ; $76ec: $20 $77

    ld h, c                                       ; $76ee: $61
    ld a, c                                       ; $76ef: $79
    ld l, $03                                     ; $76f0: $2e $03
    nop                                           ; $76f2: $00

jr_01d_76f3:
    ld c, c                                       ; $76f3: $49
    jr nz, jr_01d_775a                            ; $76f4: $20 $64

    ld l, a                                       ; $76f6: $6f
    ld l, [hl]                                    ; $76f7: $6e
    daa                                           ; $76f8: $27
    ld [hl], h                                    ; $76f9: $74
    jr nz, jr_01d_7761                            ; $76fa: $20 $65

    halt                                          ; $76fc: $76
    ld h, c                                       ; $76fd: $61

jr_01d_76fe:
    ld l, h                                       ; $76fe: $6c
    ld [hl], l                                    ; $76ff: $75
    ld h, c                                       ; $7700: $61
    ld [hl], h                                    ; $7701: $74
    ld h, l                                       ; $7702: $65
    ld bc, $6e69                                  ; $7703: $01 $69 $6e
    ld [hl], h                                    ; $7706: $74

jr_01d_7707:
    ld h, l                                       ; $7707: $65

jr_01d_7708:
    ld l, [hl]                                    ; $7708: $6e
    ld [hl], h                                    ; $7709: $74
    ld l, c                                       ; $770a: $69
    ld l, a                                       ; $770b: $6f
    ld l, [hl]                                    ; $770c: $6e
    ld h, c                                       ; $770d: $61
    ld l, h                                       ; $770e: $6c
    jr nz, jr_01d_7784                            ; $770f: $20 $73

jr_01d_7711:
    ld l, b                                       ; $7711: $68

jr_01d_7712:
    ld l, a                                       ; $7712: $6f
    ld [hl], h                                    ; $7713: $74
    ld [hl], e                                    ; $7714: $73
    ld l, $03                                     ; $7715: $2e $03
    nop                                           ; $7717: $00
    ld c, c                                       ; $7718: $49
    jr nz, jr_01d_7783                            ; $7719: $20 $68

    ld h, c                                       ; $771b: $61
    halt                                          ; $771c: $76

jr_01d_771d:
    ld h, l                                       ; $771d: $65
    jr nz, jr_01d_778c                            ; $771e: $20 $6c

jr_01d_7720:
    ld l, a                                       ; $7720: $6f
    ld [hl], e                                    ; $7721: $73
    ld [hl], h                                    ; $7722: $74
    inc l                                         ; $7723: $2c
    ld bc, $2e07                                  ; $7724: $01 $07 $2e

jr_01d_7727:
    inc bc                                        ; $7727: $03
    nop                                           ; $7728: $00
    ld l, $2e                                     ; $7729: $2e $2e
    ld l, $03                                     ; $772b: $2e $03

jr_01d_772d:
    nop                                           ; $772d: $00
    ld c, c                                       ; $772e: $49
    daa                                           ; $772f: $27
    ld l, h                                       ; $7730: $6c
    ld l, h                                       ; $7731: $6c
    jr nz, jr_01d_7795                            ; $7732: $20 $61

    ld h, h                                       ; $7734: $64
    ld l, l                                       ; $7735: $6d

jr_01d_7736:
    ld l, c                                       ; $7736: $69
    ld [hl], h                                    ; $7737: $74
    jr nz, @+$7b                                  ; $7738: $20 $79

    ld l, a                                       ; $773a: $6f

jr_01d_773b:
    ld [hl], l                                    ; $773b: $75
    ld [hl], d                                    ; $773c: $72
    ld bc, $614d                                  ; $773d: $01 $4d $61
    ld [hl], h                                    ; $7740: $74
    ld h, e                                       ; $7741: $63
    ld l, b                                       ; $7742: $68

jr_01d_7743:
    jr nz, jr_01d_778c                            ; $7743: $20 $47

    ld h, c                                       ; $7745: $61
    ld l, l                                       ; $7746: $6d
    ld h, l                                       ; $7747: $65
    jr nz, @+$6b                                  ; $7748: $20 $69

    ld [hl], e                                    ; $774a: $73
    jr nz, @+$64                                  ; $774b: $20 $62

    ld h, l                                       ; $774d: $65
    ld [hl], h                                    ; $774e: $74
    ld [hl], h                                    ; $774f: $74
    ld h, l                                       ; $7750: $65
    ld [hl], d                                    ; $7751: $72
    ld l, $03                                     ; $7752: $2e $03
    nop                                           ; $7754: $00
    ld b, h                                       ; $7755: $44
    ld l, c                                       ; $7756: $69
    ld h, h                                       ; $7757: $64

jr_01d_7758:
    jr nz, jr_01d_77d3                            ; $7758: $20 $79

jr_01d_775a:
    ld l, a                                       ; $775a: $6f
    ld [hl], l                                    ; $775b: $75
    jr nz, jr_01d_77ca                            ; $775c: $20 $6c

    ld l, a                                       ; $775e: $6f
    ld [hl], e                                    ; $775f: $73
    ld h, l                                       ; $7760: $65

jr_01d_7761:
    inc l                                         ; $7761: $2c
    ld bc, $070e                                  ; $7762: $01 $0e $07

jr_01d_7765:
    ccf                                           ; $7765: $3f
    inc bc                                        ; $7766: $03
    nop                                           ; $7767: $00
    ld c, c                                       ; $7768: $49
    jr nz, jr_01d_77ce                            ; $7769: $20 $63

    ld h, c                                       ; $776b: $61
    ld l, [hl]                                    ; $776c: $6e
    daa                                           ; $776d: $27
    ld [hl], h                                    ; $776e: $74
    jr nz, jr_01d_77d3                            ; $776f: $20 $62

    ld h, l                                       ; $7771: $65
    ld l, h                                       ; $7772: $6c
    ld l, c                                       ; $7773: $69
    ld h, l                                       ; $7774: $65
    halt                                          ; $7775: $76
    ld h, l                                       ; $7776: $65
    ld bc, $6f79                                  ; $7777: $01 $79 $6f
    ld [hl], l                                    ; $777a: $75
    jr nz, jr_01d_77e9                            ; $777b: $20 $6c

    ld l, a                                       ; $777d: $6f
    ld [hl], e                                    ; $777e: $73
    ld [hl], h                                    ; $777f: $74
    ld l, $03                                     ; $7780: $2e $03
    nop                                           ; $7782: $00

jr_01d_7783:
    ld c, c                                       ; $7783: $49

jr_01d_7784:
    daa                                           ; $7784: $27
    ld l, l                                       ; $7785: $6d
    jr nz, jr_01d_77e9                            ; $7786: $20 $61

    ld h, [hl]                                    ; $7788: $66
    ld [hl], d                                    ; $7789: $72
    ld h, c                                       ; $778a: $61
    ld l, c                                       ; $778b: $69

jr_01d_778c:
    ld h, h                                       ; $778c: $64
    jr nz, @+$6b                                  ; $778d: $20 $69

    ld [hl], h                                    ; $778f: $74
    ld bc, $7369                                  ; $7790: $01 $69 $73
    jr nz, jr_01d_7809                            ; $7793: $20 $74

jr_01d_7795:
    ld [hl], d                                    ; $7795: $72
    ld [hl], l                                    ; $7796: $75
    ld h, l                                       ; $7797: $65
    inc l                                         ; $7798: $2c
    jr nz, jr_01d_77a9                            ; $7799: $20 $0e

    dec b                                         ; $779b: $05
    ld l, $2e                                     ; $779c: $2e $2e
    ld l, $03                                     ; $779e: $2e $03
    nop                                           ; $77a0: $00
    ld c, c                                       ; $77a1: $49
    jr nz, jr_01d_7818                            ; $77a2: $20 $74

    ld l, b                                       ; $77a4: $68
    ld l, a                                       ; $77a5: $6f
    ld [hl], l                                    ; $77a6: $75
    ld h, a                                       ; $77a7: $67
    ld l, b                                       ; $77a8: $68

jr_01d_77a9:
    ld [hl], h                                    ; $77a9: $74
    jr nz, jr_01d_77f5                            ; $77aa: $20 $49

    daa                                           ; $77ac: $27
    ld h, h                                       ; $77ad: $64
    jr nz, jr_01d_7812                            ; $77ae: $20 $62

    ld h, l                                       ; $77b0: $65
    ld bc, $6874                                  ; $77b1: $01 $74 $68
    ld h, l                                       ; $77b4: $65
    jr nz, jr_01d_7826                            ; $77b5: $20 $6f

    ld l, [hl]                                    ; $77b7: $6e
    ld h, l                                       ; $77b8: $65
    jr nz, @+$76                                  ; $77b9: $20 $74

    ld l, a                                       ; $77bb: $6f
    jr nz, jr_01d_7822                            ; $77bc: $20 $64

    ld l, a                                       ; $77be: $6f
    jr nz, jr_01d_782a                            ; $77bf: $20 $69

    ld [hl], h                                    ; $77c1: $74
    ld hl, $0003                                  ; $77c2: $21 $03 $00
    ld d, b                                       ; $77c5: $50
    ld l, a                                       ; $77c6: $6f
    ld [hl], a                                    ; $77c7: $77
    ld h, l                                       ; $77c8: $65
    ld [hl], d                                    ; $77c9: $72

jr_01d_77ca:
    jr nz, jr_01d_782d                            ; $77ca: $20 $61

    ld l, h                                       ; $77cc: $6c
    ld l, a                                       ; $77cd: $6f

jr_01d_77ce:
    ld l, [hl]                                    ; $77ce: $6e
    ld h, l                                       ; $77cf: $65
    jr nz, jr_01d_7835                            ; $77d0: $20 $63

    ld h, c                                       ; $77d2: $61

jr_01d_77d3:
    ld l, [hl]                                    ; $77d3: $6e
    ld l, [hl]                                    ; $77d4: $6e
    ld l, a                                       ; $77d5: $6f
    ld [hl], h                                    ; $77d6: $74
    ld bc, $6564                                  ; $77d7: $01 $64 $65
    ld h, [hl]                                    ; $77da: $66
    ld h, l                                       ; $77db: $65
    ld h, c                                       ; $77dc: $61
    ld [hl], h                                    ; $77dd: $74
    jr nz, jr_01d_784d                            ; $77de: $20 $6d

    ld h, l                                       ; $77e0: $65
    inc l                                         ; $77e1: $2c
    ld bc, $6f63                                  ; $77e2: $01 $63 $6f
    ld [hl], d                                    ; $77e5: $72
    ld [hl], d                                    ; $77e6: $72
    ld h, l                                       ; $77e7: $65
    ld h, e                                       ; $77e8: $63

jr_01d_77e9:
    ld [hl], h                                    ; $77e9: $74
    inc l                                         ; $77ea: $2c
    jr nz, jr_01d_77fb                            ; $77eb: $20 $0e

    ld b, $3f                                     ; $77ed: $06 $3f
    inc bc                                        ; $77ef: $03
    nop                                           ; $77f0: $00
    ld d, e                                       ; $77f1: $53
    ld l, a                                       ; $77f2: $6f
    jr nz, jr_01d_77fc                            ; $77f3: $20 $07

jr_01d_77f5:
    daa                                           ; $77f5: $27
    ld [hl], e                                    ; $77f6: $73
    ld bc, $6574                                  ; $77f7: $01 $74 $65
    ld h, e                                       ; $77fa: $63

jr_01d_77fb:
    ld l, b                                       ; $77fb: $68

jr_01d_77fc:
    ld l, [hl]                                    ; $77fc: $6e
    ld l, c                                       ; $77fd: $69
    ld [hl], c                                    ; $77fe: $71
    ld [hl], l                                    ; $77ff: $75
    ld h, l                                       ; $7800: $65
    daa                                           ; $7801: $27
    ld [hl], e                                    ; $7802: $73
    jr nz, jr_01d_7867                            ; $7803: $20 $62

    ld h, l                                       ; $7805: $65
    ld [hl], h                                    ; $7806: $74
    ld [hl], h                                    ; $7807: $74
    ld h, l                                       ; $7808: $65

jr_01d_7809:
    ld [hl], d                                    ; $7809: $72
    ld bc, $6874                                  ; $780a: $01 $74 $68
    ld h, c                                       ; $780d: $61
    ld l, [hl]                                    ; $780e: $6e
    jr nz, jr_01d_788a                            ; $780f: $20 $79

    ld l, a                                       ; $7811: $6f

jr_01d_7812:
    ld [hl], l                                    ; $7812: $75
    ld [hl], d                                    ; $7813: $72
    ld [hl], e                                    ; $7814: $73
    inc l                                         ; $7815: $2c
    jr nz, jr_01d_7826                            ; $7816: $20 $0e

jr_01d_7818:
    rlca                                          ; $7818: $07
    ccf                                           ; $7819: $3f
    inc bc                                        ; $781a: $03
    nop                                           ; $781b: $00
    ld c, c                                       ; $781c: $49
    ld [hl], h                                    ; $781d: $74
    jr nz, jr_01d_7890                            ; $781e: $20 $70

    ld h, c                                       ; $7820: $61
    ld l, c                                       ; $7821: $69

jr_01d_7822:
    ld l, [hl]                                    ; $7822: $6e
    ld [hl], e                                    ; $7823: $73
    jr nz, @+$6f                                  ; $7824: $20 $6d

jr_01d_7826:
    ld h, l                                       ; $7826: $65
    jr nz, @+$76                                  ; $7827: $20 $74

    ld l, a                                       ; $7829: $6f

jr_01d_782a:
    jr nz, jr_01d_789f                            ; $782a: $20 $73

    ld h, c                                       ; $782c: $61

jr_01d_782d:
    ld a, c                                       ; $782d: $79
    ld bc, $6f73                                  ; $782e: $01 $73 $6f
    inc l                                         ; $7831: $2c
    jr nz, jr_01d_7896                            ; $7832: $20 $62

    ld [hl], l                                    ; $7834: $75

jr_01d_7835:
    ld [hl], h                                    ; $7835: $74
    jr nz, jr_01d_783f                            ; $7836: $20 $07

    ld bc, $7369                                  ; $7838: $01 $69 $73
    jr nz, jr_01d_789f                            ; $783b: $20 $62

    ld [hl], d                                    ; $783d: $72
    ld l, c                                       ; $783e: $69

jr_01d_783f:
    ld l, h                                       ; $783f: $6c
    ld l, h                                       ; $7840: $6c
    ld l, c                                       ; $7841: $69
    ld h, c                                       ; $7842: $61
    ld l, [hl]                                    ; $7843: $6e
    ld [hl], h                                    ; $7844: $74
    ld l, $03                                     ; $7845: $2e $03
    nop                                           ; $7847: $00
    ld d, a                                       ; $7848: $57
    ld l, b                                       ; $7849: $68
    ld h, l                                       ; $784a: $65
    ld [hl], d                                    ; $784b: $72
    ld h, l                                       ; $784c: $65

jr_01d_784d:
    jr nz, jr_01d_78c3                            ; $784d: $20 $74

    ld l, a                                       ; $784f: $6f
    inc l                                         ; $7850: $2c
    jr nz, @+$10                                  ; $7851: $20 $0e

    rlca                                          ; $7853: $07
    ccf                                           ; $7854: $3f
    inc bc                                        ; $7855: $03
    nop                                           ; $7856: $00
    ld c, c                                       ; $7857: $49
    daa                                           ; $7858: $27
    ld l, l                                       ; $7859: $6d
    jr nz, jr_01d_78c3                            ; $785a: $20 $67

    ld l, a                                       ; $785c: $6f
    ld l, c                                       ; $785d: $69
    ld l, [hl]                                    ; $785e: $6e
    ld h, a                                       ; $785f: $67
    jr nz, jr_01d_78d0                            ; $7860: $20 $6e

    ld l, a                                       ; $7862: $6f
    ld [hl], a                                    ; $7863: $77
    ld l, b                                       ; $7864: $68
    ld h, l                                       ; $7865: $65
    ld [hl], d                                    ; $7866: $72

jr_01d_7867:
    ld h, l                                       ; $7867: $65
    ld l, $03                                     ; $7868: $2e $03
    nop                                           ; $786a: $00
    ld c, c                                       ; $786b: $49
    jr nz, jr_01d_78db                            ; $786c: $20 $6d

    ld h, l                                       ; $786e: $65
    ld [hl], d                                    ; $786f: $72
    ld h, l                                       ; $7870: $65
    ld l, h                                       ; $7871: $6c
    ld a, c                                       ; $7872: $79
    jr nz, jr_01d_78ec                            ; $7873: $20 $77

    ld l, c                                       ; $7875: $69
    ld [hl], e                                    ; $7876: $73
    ld l, b                                       ; $7877: $68
    jr nz, jr_01d_78ee                            ; $7878: $20 $74

    ld l, a                                       ; $787a: $6f
    ld bc, $6562                                  ; $787b: $01 $62 $65
    jr nz, @+$63                                  ; $787e: $20 $61

    ld l, h                                       ; $7880: $6c
    ld l, a                                       ; $7881: $6f
    ld l, [hl]                                    ; $7882: $6e
    ld h, l                                       ; $7883: $65
    inc l                                         ; $7884: $2c
    jr nz, jr_01d_78fb                            ; $7885: $20 $74

    ld l, a                                       ; $7887: $6f
    jr nz, jr_01d_78ee                            ; $7888: $20 $64

jr_01d_788a:
    ld h, l                                       ; $788a: $65
    ld h, c                                       ; $788b: $61
    ld l, h                                       ; $788c: $6c
    ld bc, $6977                                  ; $788d: $01 $77 $69

jr_01d_7890:
    ld [hl], h                                    ; $7890: $74
    ld l, b                                       ; $7891: $68
    jr nz, jr_01d_7908                            ; $7892: $20 $74

    ld l, b                                       ; $7894: $68
    ld h, l                                       ; $7895: $65

jr_01d_7896:
    jr nz, @+$75                                  ; $7896: $20 $73

    ld l, b                                       ; $7898: $68
    ld l, a                                       ; $7899: $6f
    ld h, e                                       ; $789a: $63
    ld l, e                                       ; $789b: $6b
    ld l, $03                                     ; $789c: $2e $03
    nop                                           ; $789e: $00

jr_01d_789f:
    ld b, d                                       ; $789f: $42
    ld [hl], l                                    ; $78a0: $75
    ld [hl], h                                    ; $78a1: $74
    jr nz, jr_01d_78b2                            ; $78a2: $20 $0e

    rlca                                          ; $78a4: $07
    inc l                                         ; $78a5: $2c
    ld l, $2e                                     ; $78a6: $2e $2e
    ld l, $79                                     ; $78a8: $2e $79
    ld l, a                                       ; $78aa: $6f
    ld [hl], l                                    ; $78ab: $75
    daa                                           ; $78ac: $27
    ld [hl], d                                    ; $78ad: $72
    ld h, l                                       ; $78ae: $65
    ld bc, $756a                                  ; $78af: $01 $6a $75

jr_01d_78b2:
    ld [hl], e                                    ; $78b2: $73
    ld [hl], h                                    ; $78b3: $74
    jr nz, jr_01d_791d                            ; $78b4: $20 $67

    ld l, c                                       ; $78b6: $69
    halt                                          ; $78b7: $76
    ld l, c                                       ; $78b8: $69
    ld l, [hl]                                    ; $78b9: $6e
    ld h, a                                       ; $78ba: $67
    jr nz, jr_01d_7932                            ; $78bb: $20 $75

    ld [hl], b                                    ; $78bd: $70
    ccf                                           ; $78be: $3f
    inc bc                                        ; $78bf: $03
    nop                                           ; $78c0: $00
    ld b, [hl]                                    ; $78c1: $46
    ld l, a                                       ; $78c2: $6f

jr_01d_78c3:
    ld l, a                                       ; $78c3: $6f
    ld l, h                                       ; $78c4: $6c
    ld l, $2e                                     ; $78c5: $2e $2e
    ld l, $49                                     ; $78c7: $2e $49
    jr nz, jr_01d_7938                            ; $78c9: $20 $6d

    ld h, c                                       ; $78cb: $61
    ld a, c                                       ; $78cc: $79
    jr nz, @+$6a                                  ; $78cd: $20 $68

    ld h, c                                       ; $78cf: $61

jr_01d_78d0:
    halt                                          ; $78d0: $76
    ld h, l                                       ; $78d1: $65
    ld bc, $6f6c                                  ; $78d2: $01 $6c $6f
    ld [hl], e                                    ; $78d5: $73
    ld [hl], h                                    ; $78d6: $74
    jr nz, jr_01d_793a                            ; $78d7: $20 $61

    jr nz, jr_01d_7948                            ; $78d9: $20 $6d

jr_01d_78db:
    ld h, c                                       ; $78db: $61
    ld [hl], h                                    ; $78dc: $74
    ld h, e                                       ; $78dd: $63
    ld l, b                                       ; $78de: $68
    inc l                                         ; $78df: $2c
    ld bc, $7562                                  ; $78e0: $01 $62 $75
    ld [hl], h                                    ; $78e3: $74
    jr nz, jr_01d_792f                            ; $78e4: $20 $49

    daa                                           ; $78e6: $27
    ld l, l                                       ; $78e7: $6d
    jr nz, jr_01d_795d                            ; $78e8: $20 $73

    ld [hl], h                                    ; $78ea: $74
    ld l, c                                       ; $78eb: $69

jr_01d_78ec:
    ld l, h                                       ; $78ec: $6c
    ld l, h                                       ; $78ed: $6c

jr_01d_78ee:
    jr nz, @+$45                                  ; $78ee: $20 $43

    ld l, b                                       ; $78f0: $68
    ld h, c                                       ; $78f1: $61
    ld l, l                                       ; $78f2: $6d
    ld [hl], b                                    ; $78f3: $70
    ld hl, $0003                                  ; $78f4: $21 $03 $00
    ld b, c                                       ; $78f7: $41
    ld [hl], h                                    ; $78f8: $74
    jr nz, @+$76                                  ; $78f9: $20 $74

jr_01d_78fb:
    ld l, b                                       ; $78fb: $68
    ld h, l                                       ; $78fc: $65
    jr nz, jr_01d_7975                            ; $78fd: $20 $76

    ld h, l                                       ; $78ff: $65
    ld [hl], d                                    ; $7900: $72
    ld a, c                                       ; $7901: $79
    jr nz, jr_01d_7970                            ; $7902: $20 $6c

    ld h, l                                       ; $7904: $65
    ld h, c                                       ; $7905: $61
    ld [hl], e                                    ; $7906: $73
    ld [hl], h                                    ; $7907: $74

jr_01d_7908:
    inc l                                         ; $7908: $2c
    ld bc, $2049                                  ; $7909: $01 $49 $20
    ld [hl], e                                    ; $790c: $73
    ld l, b                                       ; $790d: $68
    ld h, c                                       ; $790e: $61
    ld l, h                                       ; $790f: $6c
    ld l, h                                       ; $7910: $6c
    jr nz, @+$66                                  ; $7911: $20 $64

    ld h, l                                       ; $7913: $65
    ld h, [hl]                                    ; $7914: $66
    ld h, l                                       ; $7915: $65
    ld l, [hl]                                    ; $7916: $6e
    ld h, h                                       ; $7917: $64
    ld bc, $796d                                  ; $7918: $01 $6d $79
    jr nz, jr_01d_7991                            ; $791b: $20 $74

jr_01d_791d:
    ld l, c                                       ; $791d: $69
    ld [hl], h                                    ; $791e: $74
    ld l, h                                       ; $791f: $6c
    ld h, l                                       ; $7920: $65
    ld l, $03                                     ; $7921: $2e $03
    nop                                           ; $7923: $00
    ld c, $07                                     ; $7924: $0e $07
    daa                                           ; $7926: $27
    ld [hl], e                                    ; $7927: $73
    jr nz, jr_01d_798e                            ; $7928: $20 $64

    ld h, l                                       ; $792a: $65
    ld [hl], e                                    ; $792b: $73
    ld [hl], b                                    ; $792c: $70
    ld h, l                                       ; $792d: $65
    ld [hl], d                                    ; $792e: $72

jr_01d_792f:
    ld h, c                                       ; $792f: $61
    ld [hl], h                                    ; $7930: $74
    ld h, l                                       ; $7931: $65

jr_01d_7932:
    ld bc, $6f6e                                  ; $7932: $01 $6e $6f
    ld [hl], a                                    ; $7935: $77
    jr nz, jr_01d_79ac                            ; $7936: $20 $74

jr_01d_7938:
    ld l, b                                       ; $7938: $68
    ld h, c                                       ; $7939: $61

jr_01d_793a:
    ld [hl], h                                    ; $793a: $74
    jr nz, jr_01d_79a5                            ; $793b: $20 $68

    ld h, l                                       ; $793d: $65
    daa                                           ; $793e: $27
    ld [hl], e                                    ; $793f: $73
    jr nz, jr_01d_79ae                            ; $7940: $20 $6c

    ld l, a                                       ; $7942: $6f
    ld [hl], e                                    ; $7943: $73
    ld [hl], h                                    ; $7944: $74
    ld l, $03                                     ; $7945: $2e $03
    nop                                           ; $7947: $00

jr_01d_7948:
    ld c, h                                       ; $7948: $4c
    ld l, a                                       ; $7949: $6f
    ld [hl], e                                    ; $794a: $73
    ld l, c                                       ; $794b: $69
    ld l, [hl]                                    ; $794c: $6e
    ld h, a                                       ; $794d: $67
    jr nz, jr_01d_79c7                            ; $794e: $20 $77

    ld l, a                                       ; $7950: $6f
    ld [hl], l                                    ; $7951: $75
    ld l, [hl]                                    ; $7952: $6e
    ld h, h                                       ; $7953: $64
    ld h, l                                       ; $7954: $65
    ld h, h                                       ; $7955: $64
    ld bc, $6968                                  ; $7956: $01 $68 $69
    ld [hl], e                                    ; $7959: $73
    jr nz, jr_01d_79cc                            ; $795a: $20 $70

    ld [hl], d                                    ; $795c: $72

jr_01d_795d:
    ld l, c                                       ; $795d: $69
    ld h, h                                       ; $795e: $64
    ld h, l                                       ; $795f: $65
    ld l, $03                                     ; $7960: $2e $03
    nop                                           ; $7962: $00
    ld c, c                                       ; $7963: $49
    daa                                           ; $7964: $27
    ld h, h                                       ; $7965: $64
    jr nz, jr_01d_79d4                            ; $7966: $20 $6c

    ld l, c                                       ; $7968: $69
    ld l, e                                       ; $7969: $6b
    ld h, l                                       ; $796a: $65
    jr nz, @+$76                                  ; $796b: $20 $74

    ld l, a                                       ; $796d: $6f
    jr nz, jr_01d_79e3                            ; $796e: $20 $73

jr_01d_7970:
    ld h, l                                       ; $7970: $65
    ld h, l                                       ; $7971: $65
    jr nz, jr_01d_79dc                            ; $7972: $20 $68

    ld l, a                                       ; $7974: $6f

jr_01d_7975:
    ld [hl], a                                    ; $7975: $77
    ld bc, $6f79                                  ; $7976: $01 $79 $6f
    ld [hl], l                                    ; $7979: $75
    jr nz, jr_01d_79e0                            ; $797a: $20 $64

    ld l, a                                       ; $797c: $6f
    jr nz, jr_01d_79e0                            ; $797d: $20 $61

    ld h, a                                       ; $797f: $67
    ld h, c                                       ; $7980: $61
    ld l, c                                       ; $7981: $69
    ld l, [hl]                                    ; $7982: $6e
    ld [hl], e                                    ; $7983: $73
    ld [hl], h                                    ; $7984: $74
    jr nz, jr_01d_7995                            ; $7985: $20 $0e

    rlca                                          ; $7987: $07
    ld bc, $6e69                                  ; $7988: $01 $69 $6e
    jr nz, @+$76                                  ; $798b: $20 $74

    ld l, b                                       ; $798d: $68

jr_01d_798e:
    ld h, l                                       ; $798e: $65
    jr nz, jr_01d_7a05                            ; $798f: $20 $74

jr_01d_7991:
    ld l, a                                       ; $7991: $6f
    ld [hl], l                                    ; $7992: $75
    ld [hl], d                                    ; $7993: $72
    ld l, [hl]                                    ; $7994: $6e

jr_01d_7995:
    ld h, c                                       ; $7995: $61
    ld l, l                                       ; $7996: $6d
    ld h, l                                       ; $7997: $65
    ld l, [hl]                                    ; $7998: $6e
    ld [hl], h                                    ; $7999: $74
    ld l, $03                                     ; $799a: $2e $03
    nop                                           ; $799c: $00
    ld c, c                                       ; $799d: $49
    jr nz, jr_01d_7a08                            ; $799e: $20 $68

    ld h, c                                       ; $79a0: $61
    halt                                          ; $79a1: $76
    ld h, l                                       ; $79a2: $65
    jr nz, jr_01d_7a11                            ; $79a3: $20 $6c

jr_01d_79a5:
    ld l, a                                       ; $79a5: $6f
    ld [hl], e                                    ; $79a6: $73
    ld [hl], h                                    ; $79a7: $74
    inc l                                         ; $79a8: $2c
    ld bc, $2e07                                  ; $79a9: $01 $07 $2e

jr_01d_79ac:
    inc bc                                        ; $79ac: $03
    nop                                           ; $79ad: $00

jr_01d_79ae:
    ld l, $2e                                     ; $79ae: $2e $2e
    ld l, $03                                     ; $79b0: $2e $03
    nop                                           ; $79b2: $00
    ld c, c                                       ; $79b3: $49
    daa                                           ; $79b4: $27
    ld l, h                                       ; $79b5: $6c
    ld l, h                                       ; $79b6: $6c
    jr nz, @+$63                                  ; $79b7: $20 $61

    ld h, h                                       ; $79b9: $64
    ld l, l                                       ; $79ba: $6d
    ld l, c                                       ; $79bb: $69
    ld [hl], h                                    ; $79bc: $74
    inc l                                         ; $79bd: $2c
    jr nz, jr_01d_7a39                            ; $79be: $20 $79

    ld l, a                                       ; $79c0: $6f
    ld [hl], l                                    ; $79c1: $75
    ld [hl], d                                    ; $79c2: $72
    jr nz, jr_01d_7a2c                            ; $79c3: $20 $67

    ld l, a                                       ; $79c5: $6f
    ld l, h                                       ; $79c6: $6c

jr_01d_79c7:
    ld h, [hl]                                    ; $79c7: $66
    ld bc, $6167                                  ; $79c8: $01 $67 $61
    ld l, l                                       ; $79cb: $6d

jr_01d_79cc:
    ld h, l                                       ; $79cc: $65
    jr nz, jr_01d_7a38                            ; $79cd: $20 $69

    ld [hl], e                                    ; $79cf: $73
    jr nz, jr_01d_7a34                            ; $79d0: $20 $62

    ld h, l                                       ; $79d2: $65
    ld a, c                                       ; $79d3: $79

jr_01d_79d4:
    ld l, a                                       ; $79d4: $6f
    ld l, [hl]                                    ; $79d5: $6e
    ld h, h                                       ; $79d6: $64
    jr nz, jr_01d_7a46                            ; $79d7: $20 $6d

    ld h, l                                       ; $79d9: $65
    ld l, $03                                     ; $79da: $2e $03

jr_01d_79dc:
    nop                                           ; $79dc: $00
    ld b, h                                       ; $79dd: $44
    ld l, c                                       ; $79de: $69
    ld h, h                                       ; $79df: $64

jr_01d_79e0:
    jr nz, jr_01d_7a5b                            ; $79e0: $20 $79

    ld l, a                                       ; $79e2: $6f

jr_01d_79e3:
    ld [hl], l                                    ; $79e3: $75
    jr nz, jr_01d_7a52                            ; $79e4: $20 $6c

    ld l, a                                       ; $79e6: $6f
    ld [hl], e                                    ; $79e7: $73
    ld h, l                                       ; $79e8: $65
    inc l                                         ; $79e9: $2c
    ld bc, $070e                                  ; $79ea: $01 $0e $07
    ccf                                           ; $79ed: $3f
    inc bc                                        ; $79ee: $03
    nop                                           ; $79ef: $00
    ld c, c                                       ; $79f0: $49
    jr nz, jr_01d_7a56                            ; $79f1: $20 $63

    ld h, c                                       ; $79f3: $61
    ld l, [hl]                                    ; $79f4: $6e
    daa                                           ; $79f5: $27
    ld [hl], h                                    ; $79f6: $74
    jr nz, jr_01d_7a5b                            ; $79f7: $20 $62

    ld h, l                                       ; $79f9: $65
    ld l, h                                       ; $79fa: $6c
    ld l, c                                       ; $79fb: $69
    ld h, l                                       ; $79fc: $65
    halt                                          ; $79fd: $76
    ld h, l                                       ; $79fe: $65
    ld bc, $6f79                                  ; $79ff: $01 $79 $6f
    ld [hl], l                                    ; $7a02: $75
    jr nz, jr_01d_7a71                            ; $7a03: $20 $6c

jr_01d_7a05:
    ld l, a                                       ; $7a05: $6f
    ld [hl], e                                    ; $7a06: $73
    ld [hl], h                                    ; $7a07: $74

jr_01d_7a08:
    ld l, $03                                     ; $7a08: $2e $03
    nop                                           ; $7a0a: $00
    ld c, c                                       ; $7a0b: $49
    daa                                           ; $7a0c: $27
    ld l, l                                       ; $7a0d: $6d
    jr nz, jr_01d_7a71                            ; $7a0e: $20 $61

    ld h, [hl]                                    ; $7a10: $66

jr_01d_7a11:
    ld [hl], d                                    ; $7a11: $72
    ld h, c                                       ; $7a12: $61
    ld l, c                                       ; $7a13: $69
    ld h, h                                       ; $7a14: $64
    jr nz, @+$6b                                  ; $7a15: $20 $69

    ld [hl], h                                    ; $7a17: $74
    ld bc, $7369                                  ; $7a18: $01 $69 $73
    jr nz, jr_01d_7a91                            ; $7a1b: $20 $74

    ld [hl], d                                    ; $7a1d: $72
    ld [hl], l                                    ; $7a1e: $75
    ld h, l                                       ; $7a1f: $65
    inc l                                         ; $7a20: $2c
    jr nz, jr_01d_7a31                            ; $7a21: $20 $0e

    dec b                                         ; $7a23: $05
    ld l, $2e                                     ; $7a24: $2e $2e
    ld l, $03                                     ; $7a26: $2e $03
    nop                                           ; $7a28: $00
    ld c, c                                       ; $7a29: $49
    jr nz, jr_01d_7aa0                            ; $7a2a: $20 $74

jr_01d_7a2c:
    ld l, b                                       ; $7a2c: $68
    ld l, a                                       ; $7a2d: $6f
    ld [hl], l                                    ; $7a2e: $75
    ld h, a                                       ; $7a2f: $67
    ld l, b                                       ; $7a30: $68

jr_01d_7a31:
    ld [hl], h                                    ; $7a31: $74
    jr nz, jr_01d_7a7d                            ; $7a32: $20 $49

jr_01d_7a34:
    daa                                           ; $7a34: $27
    ld h, h                                       ; $7a35: $64
    jr nz, jr_01d_7a9a                            ; $7a36: $20 $62

jr_01d_7a38:
    ld h, l                                       ; $7a38: $65

jr_01d_7a39:
    ld bc, $6874                                  ; $7a39: $01 $74 $68
    ld h, l                                       ; $7a3c: $65
    jr nz, jr_01d_7aae                            ; $7a3d: $20 $6f

    ld l, [hl]                                    ; $7a3f: $6e
    ld h, l                                       ; $7a40: $65
    jr nz, @+$76                                  ; $7a41: $20 $74

    ld l, a                                       ; $7a43: $6f
    jr nz, jr_01d_7aaa                            ; $7a44: $20 $64

jr_01d_7a46:
    ld l, a                                       ; $7a46: $6f
    jr nz, jr_01d_7ab2                            ; $7a47: $20 $69

    ld [hl], h                                    ; $7a49: $74
    ld hl, $0003                                  ; $7a4a: $21 $03 $00
    ld d, b                                       ; $7a4d: $50
    ld l, a                                       ; $7a4e: $6f
    ld [hl], a                                    ; $7a4f: $77
    ld h, l                                       ; $7a50: $65
    ld [hl], d                                    ; $7a51: $72

jr_01d_7a52:
    jr nz, jr_01d_7ab5                            ; $7a52: $20 $61

    ld l, h                                       ; $7a54: $6c
    ld l, a                                       ; $7a55: $6f

jr_01d_7a56:
    ld l, [hl]                                    ; $7a56: $6e
    ld h, l                                       ; $7a57: $65
    jr nz, jr_01d_7abd                            ; $7a58: $20 $63

    ld h, c                                       ; $7a5a: $61

jr_01d_7a5b:
    ld l, [hl]                                    ; $7a5b: $6e
    ld l, [hl]                                    ; $7a5c: $6e
    ld l, a                                       ; $7a5d: $6f
    ld [hl], h                                    ; $7a5e: $74
    ld bc, $6564                                  ; $7a5f: $01 $64 $65
    ld h, [hl]                                    ; $7a62: $66
    ld h, l                                       ; $7a63: $65
    ld h, c                                       ; $7a64: $61
    ld [hl], h                                    ; $7a65: $74
    jr nz, jr_01d_7ad5                            ; $7a66: $20 $6d

    ld h, l                                       ; $7a68: $65
    inc l                                         ; $7a69: $2c
    ld bc, $6f63                                  ; $7a6a: $01 $63 $6f
    ld [hl], d                                    ; $7a6d: $72
    ld [hl], d                                    ; $7a6e: $72
    ld h, l                                       ; $7a6f: $65
    ld h, e                                       ; $7a70: $63

jr_01d_7a71:
    ld [hl], h                                    ; $7a71: $74
    inc l                                         ; $7a72: $2c
    jr nz, jr_01d_7a83                            ; $7a73: $20 $0e

    ld b, $3f                                     ; $7a75: $06 $3f
    inc bc                                        ; $7a77: $03
    nop                                           ; $7a78: $00
    ld d, e                                       ; $7a79: $53
    ld l, a                                       ; $7a7a: $6f
    jr nz, jr_01d_7a84                            ; $7a7b: $20 $07

jr_01d_7a7d:
    daa                                           ; $7a7d: $27
    ld [hl], e                                    ; $7a7e: $73
    ld bc, $6574                                  ; $7a7f: $01 $74 $65
    ld h, e                                       ; $7a82: $63

jr_01d_7a83:
    ld l, b                                       ; $7a83: $68

jr_01d_7a84:
    ld l, [hl]                                    ; $7a84: $6e
    ld l, c                                       ; $7a85: $69
    ld [hl], c                                    ; $7a86: $71
    ld [hl], l                                    ; $7a87: $75
    ld h, l                                       ; $7a88: $65
    daa                                           ; $7a89: $27
    ld [hl], e                                    ; $7a8a: $73
    jr nz, jr_01d_7aef                            ; $7a8b: $20 $62

    ld h, l                                       ; $7a8d: $65
    ld [hl], h                                    ; $7a8e: $74
    ld [hl], h                                    ; $7a8f: $74
    ld h, l                                       ; $7a90: $65

jr_01d_7a91:
    ld [hl], d                                    ; $7a91: $72
    ld bc, $6874                                  ; $7a92: $01 $74 $68
    ld h, c                                       ; $7a95: $61
    ld l, [hl]                                    ; $7a96: $6e
    jr nz, jr_01d_7b12                            ; $7a97: $20 $79

    ld l, a                                       ; $7a99: $6f

jr_01d_7a9a:
    ld [hl], l                                    ; $7a9a: $75
    ld [hl], d                                    ; $7a9b: $72
    ld [hl], e                                    ; $7a9c: $73
    inc l                                         ; $7a9d: $2c
    jr nz, jr_01d_7aae                            ; $7a9e: $20 $0e

jr_01d_7aa0:
    rlca                                          ; $7aa0: $07
    ccf                                           ; $7aa1: $3f
    inc bc                                        ; $7aa2: $03
    nop                                           ; $7aa3: $00
    ld c, c                                       ; $7aa4: $49
    ld [hl], h                                    ; $7aa5: $74
    jr nz, jr_01d_7b18                            ; $7aa6: $20 $70

    ld h, c                                       ; $7aa8: $61
    ld l, c                                       ; $7aa9: $69

jr_01d_7aaa:
    ld l, [hl]                                    ; $7aaa: $6e
    ld [hl], e                                    ; $7aab: $73
    jr nz, @+$6f                                  ; $7aac: $20 $6d

jr_01d_7aae:
    ld h, l                                       ; $7aae: $65
    jr nz, @+$76                                  ; $7aaf: $20 $74

    ld l, a                                       ; $7ab1: $6f

jr_01d_7ab2:
    jr nz, jr_01d_7b27                            ; $7ab2: $20 $73

    ld h, c                                       ; $7ab4: $61

jr_01d_7ab5:
    ld a, c                                       ; $7ab5: $79
    ld bc, $6f73                                  ; $7ab6: $01 $73 $6f
    inc l                                         ; $7ab9: $2c
    jr nz, jr_01d_7b1e                            ; $7aba: $20 $62

    ld [hl], l                                    ; $7abc: $75

jr_01d_7abd:
    ld [hl], h                                    ; $7abd: $74
    jr nz, jr_01d_7ac7                            ; $7abe: $20 $07

    ld bc, $7369                                  ; $7ac0: $01 $69 $73
    jr nz, jr_01d_7b27                            ; $7ac3: $20 $62

    ld [hl], d                                    ; $7ac5: $72
    ld l, c                                       ; $7ac6: $69

jr_01d_7ac7:
    ld l, h                                       ; $7ac7: $6c
    ld l, h                                       ; $7ac8: $6c
    ld l, c                                       ; $7ac9: $69
    ld h, c                                       ; $7aca: $61
    ld l, [hl]                                    ; $7acb: $6e
    ld [hl], h                                    ; $7acc: $74
    ld l, $03                                     ; $7acd: $2e $03
    nop                                           ; $7acf: $00
    ld d, a                                       ; $7ad0: $57
    ld l, b                                       ; $7ad1: $68
    ld h, l                                       ; $7ad2: $65
    ld [hl], d                                    ; $7ad3: $72
    ld h, l                                       ; $7ad4: $65

jr_01d_7ad5:
    jr nz, @+$76                                  ; $7ad5: $20 $74

    ld l, a                                       ; $7ad7: $6f
    inc l                                         ; $7ad8: $2c
    jr nz, @+$10                                  ; $7ad9: $20 $0e

    rlca                                          ; $7adb: $07
    ccf                                           ; $7adc: $3f
    inc bc                                        ; $7add: $03
    nop                                           ; $7ade: $00
    ld c, c                                       ; $7adf: $49
    daa                                           ; $7ae0: $27
    ld l, l                                       ; $7ae1: $6d
    jr nz, @+$69                                  ; $7ae2: $20 $67

    ld l, a                                       ; $7ae4: $6f
    ld l, c                                       ; $7ae5: $69
    ld l, [hl]                                    ; $7ae6: $6e
    ld h, a                                       ; $7ae7: $67
    jr nz, jr_01d_7b58                            ; $7ae8: $20 $6e

    ld l, a                                       ; $7aea: $6f
    ld [hl], a                                    ; $7aeb: $77
    ld l, b                                       ; $7aec: $68
    ld h, l                                       ; $7aed: $65
    ld [hl], d                                    ; $7aee: $72

jr_01d_7aef:
    ld h, l                                       ; $7aef: $65
    ld l, $03                                     ; $7af0: $2e $03
    nop                                           ; $7af2: $00
    ld c, c                                       ; $7af3: $49
    jr nz, jr_01d_7b63                            ; $7af4: $20 $6d

    ld h, l                                       ; $7af6: $65
    ld [hl], d                                    ; $7af7: $72
    ld h, l                                       ; $7af8: $65
    ld l, h                                       ; $7af9: $6c
    ld a, c                                       ; $7afa: $79
    jr nz, @+$79                                  ; $7afb: $20 $77

    ld l, c                                       ; $7afd: $69
    ld [hl], e                                    ; $7afe: $73
    ld l, b                                       ; $7aff: $68
    jr nz, jr_01d_7b76                            ; $7b00: $20 $74

    ld l, a                                       ; $7b02: $6f
    ld bc, $6562                                  ; $7b03: $01 $62 $65
    jr nz, jr_01d_7b69                            ; $7b06: $20 $61

    ld l, h                                       ; $7b08: $6c
    ld l, a                                       ; $7b09: $6f
    ld l, [hl]                                    ; $7b0a: $6e
    ld h, l                                       ; $7b0b: $65
    inc l                                         ; $7b0c: $2c
    jr nz, jr_01d_7b83                            ; $7b0d: $20 $74

    ld l, a                                       ; $7b0f: $6f
    jr nz, jr_01d_7b76                            ; $7b10: $20 $64

jr_01d_7b12:
    ld h, l                                       ; $7b12: $65
    ld h, c                                       ; $7b13: $61
    ld l, h                                       ; $7b14: $6c
    ld bc, $6977                                  ; $7b15: $01 $77 $69

jr_01d_7b18:
    ld [hl], h                                    ; $7b18: $74
    ld l, b                                       ; $7b19: $68
    jr nz, @+$76                                  ; $7b1a: $20 $74

    ld l, b                                       ; $7b1c: $68
    ld h, l                                       ; $7b1d: $65

jr_01d_7b1e:
    jr nz, jr_01d_7b93                            ; $7b1e: $20 $73

    ld l, b                                       ; $7b20: $68
    ld l, a                                       ; $7b21: $6f
    ld h, e                                       ; $7b22: $63
    ld l, e                                       ; $7b23: $6b
    ld l, $03                                     ; $7b24: $2e $03
    nop                                           ; $7b26: $00

jr_01d_7b27:
    ld b, d                                       ; $7b27: $42
    ld [hl], l                                    ; $7b28: $75
    ld [hl], h                                    ; $7b29: $74
    jr nz, jr_01d_7b3a                            ; $7b2a: $20 $0e

    rlca                                          ; $7b2c: $07
    inc l                                         ; $7b2d: $2c
    ld l, $2e                                     ; $7b2e: $2e $2e
    ld l, $79                                     ; $7b30: $2e $79
    ld l, a                                       ; $7b32: $6f
    ld [hl], l                                    ; $7b33: $75
    daa                                           ; $7b34: $27
    ld [hl], d                                    ; $7b35: $72
    ld h, l                                       ; $7b36: $65
    ld bc, $756a                                  ; $7b37: $01 $6a $75

jr_01d_7b3a:
    ld [hl], e                                    ; $7b3a: $73
    ld [hl], h                                    ; $7b3b: $74
    jr nz, @+$69                                  ; $7b3c: $20 $67

    ld l, c                                       ; $7b3e: $69
    halt                                          ; $7b3f: $76
    ld l, c                                       ; $7b40: $69
    ld l, [hl]                                    ; $7b41: $6e
    ld h, a                                       ; $7b42: $67
    jr nz, jr_01d_7bba                            ; $7b43: $20 $75

    ld [hl], b                                    ; $7b45: $70
    ccf                                           ; $7b46: $3f
    inc bc                                        ; $7b47: $03
    nop                                           ; $7b48: $00
    ld c, c                                       ; $7b49: $49
    jr nz, @+$6e                                  ; $7b4a: $20 $6c

    ld l, a                                       ; $7b4c: $6f
    ld [hl], e                                    ; $7b4d: $73
    ld [hl], h                                    ; $7b4e: $74
    jr nz, jr_01d_7bc5                            ; $7b4f: $20 $74

    ld l, b                                       ; $7b51: $68
    ld h, l                                       ; $7b52: $65
    jr nz, jr_01d_7bc2                            ; $7b53: $20 $6d

    ld h, c                                       ; $7b55: $61
    ld [hl], h                                    ; $7b56: $74
    ld h, e                                       ; $7b57: $63

jr_01d_7b58:
    ld l, b                                       ; $7b58: $68
    inc l                                         ; $7b59: $2c
    ld bc, $796d                                  ; $7b5a: $01 $6d $79
    jr nz, jr_01d_7bd3                            ; $7b5d: $20 $74

    ld l, c                                       ; $7b5f: $69
    ld [hl], h                                    ; $7b60: $74
    ld l, h                                       ; $7b61: $6c
    ld h, l                                       ; $7b62: $65

jr_01d_7b63:
    jr nz, jr_01d_7bc6                            ; $7b63: $20 $61

    ld l, [hl]                                    ; $7b65: $6e
    ld h, h                                       ; $7b66: $64
    jr nz, @+$76                                  ; $7b67: $20 $74

jr_01d_7b69:
    ld l, b                                       ; $7b69: $68
    ld h, l                                       ; $7b6a: $65
    ld bc, $6977                                  ; $7b6b: $01 $77 $69
    ld l, h                                       ; $7b6e: $6c
    ld l, h                                       ; $7b6f: $6c
    jr nz, jr_01d_7be6                            ; $7b70: $20 $74

    ld l, a                                       ; $7b72: $6f
    jr nz, jr_01d_7bdb                            ; $7b73: $20 $66

    ld l, c                                       ; $7b75: $69

jr_01d_7b76:
    ld h, a                                       ; $7b76: $67
    ld l, b                                       ; $7b77: $68
    ld [hl], h                                    ; $7b78: $74
    ld l, $03                                     ; $7b79: $2e $03
    nop                                           ; $7b7b: $00
    ld c, [hl]                                    ; $7b7c: $4e
    ld l, a                                       ; $7b7d: $6f
    ld [hl], a                                    ; $7b7e: $77
    jr nz, jr_01d_7bca                            ; $7b7f: $20 $49

    jr nz, jr_01d_7bfa                            ; $7b81: $20 $77

jr_01d_7b83:
    ld l, c                                       ; $7b83: $69
    ld [hl], e                                    ; $7b84: $73
    ld l, b                                       ; $7b85: $68
    jr nz, jr_01d_7bee                            ; $7b86: $20 $66

    ld l, a                                       ; $7b88: $6f
    ld [hl], d                                    ; $7b89: $72
    ld bc, $2007                                  ; $7b8a: $01 $07 $20
    ld [hl], h                                    ; $7b8d: $74
    ld l, a                                       ; $7b8e: $6f
    ld bc, $6564                                  ; $7b8f: $01 $64 $65
    ld h, [hl]                                    ; $7b92: $66

jr_01d_7b93:
    ld h, l                                       ; $7b93: $65
    ld h, c                                       ; $7b94: $61
    ld [hl], h                                    ; $7b95: $74
    jr nz, jr_01d_7be5                            ; $7b96: $20 $4d

    ld h, c                                       ; $7b98: $61
    ld [hl], d                                    ; $7b99: $72
    ld l, c                                       ; $7b9a: $69
    ld l, a                                       ; $7b9b: $6f
    ld l, $03                                     ; $7b9c: $2e $03
    nop                                           ; $7b9e: $00
    ld c, l                                       ; $7b9f: $4d
    ld h, c                                       ; $7ba0: $61
    ld [hl], d                                    ; $7ba1: $72
    ld l, c                                       ; $7ba2: $69
    ld l, a                                       ; $7ba3: $6f
    ld l, $2e                                     ; $7ba4: $2e $2e
    ld l, $01                                     ; $7ba6: $2e $01
    ld d, h                                       ; $7ba8: $54
    ld l, b                                       ; $7ba9: $68
    ld h, l                                       ; $7baa: $65
    jr nz, jr_01d_7c0f                            ; $7bab: $20 $62

    ld h, l                                       ; $7bad: $65
    ld [hl], e                                    ; $7bae: $73
    ld [hl], h                                    ; $7baf: $74
    jr nz, jr_01d_7c19                            ; $7bb0: $20 $67

    ld l, a                                       ; $7bb2: $6f
    ld l, h                                       ; $7bb3: $6c
    ld h, [hl]                                    ; $7bb4: $66
    ld h, l                                       ; $7bb5: $65
    ld [hl], d                                    ; $7bb6: $72
    ld bc, $6977                                  ; $7bb7: $01 $77 $69

jr_01d_7bba:
    ld l, h                                       ; $7bba: $6c
    ld l, h                                       ; $7bbb: $6c
    jr nz, jr_01d_7c20                            ; $7bbc: $20 $62

    ld h, l                                       ; $7bbe: $65
    jr nz, jr_01d_7c2a                            ; $7bbf: $20 $69

    ld l, [hl]                                    ; $7bc1: $6e

jr_01d_7bc2:
    halt                                          ; $7bc2: $76
    ld l, c                                       ; $7bc3: $69
    ld [hl], h                                    ; $7bc4: $74

jr_01d_7bc5:
    ld h, l                                       ; $7bc5: $65

jr_01d_7bc6:
    ld h, h                                       ; $7bc6: $64
    ld l, $03                                     ; $7bc7: $2e $03
    nop                                           ; $7bc9: $00

jr_01d_7bca:
    ld e, c                                       ; $7bca: $59
    ld l, a                                       ; $7bcb: $6f
    ld [hl], l                                    ; $7bcc: $75
    jr nz, jr_01d_7c32                            ; $7bcd: $20 $63

    ld h, c                                       ; $7bcf: $61
    ld l, [hl]                                    ; $7bd0: $6e
    jr nz, jr_01d_7c49                            ; $7bd1: $20 $76

jr_01d_7bd3:
    ld l, c                                       ; $7bd3: $69
    ld [hl], e                                    ; $7bd4: $73
    ld l, c                                       ; $7bd5: $69
    ld [hl], h                                    ; $7bd6: $74
    jr nz, @+$76                                  ; $7bd7: $20 $74

    ld l, b                                       ; $7bd9: $68
    ld h, l                                       ; $7bda: $65

jr_01d_7bdb:
    ld bc, $6163                                  ; $7bdb: $01 $63 $61
    ld [hl], e                                    ; $7bde: $73
    ld [hl], h                                    ; $7bdf: $74
    ld l, h                                       ; $7be0: $6c
    ld h, l                                       ; $7be1: $65
    jr nz, jr_01d_7c5b                            ; $7be2: $20 $77

    ld l, c                                       ; $7be4: $69

jr_01d_7be5:
    ld [hl], h                                    ; $7be5: $74

jr_01d_7be6:
    ld l, b                                       ; $7be6: $68
    ld bc, $6550                                  ; $7be7: $01 $50 $65
    ld h, c                                       ; $7bea: $61
    ld h, e                                       ; $7beb: $63
    ld l, b                                       ; $7bec: $68
    daa                                           ; $7bed: $27

jr_01d_7bee:
    ld [hl], e                                    ; $7bee: $73
    jr nz, jr_01d_7c5a                            ; $7bef: $20 $69

    ld l, [hl]                                    ; $7bf1: $6e
    halt                                          ; $7bf2: $76
    ld l, c                                       ; $7bf3: $69
    ld [hl], h                                    ; $7bf4: $74
    ld h, c                                       ; $7bf5: $61
    ld [hl], h                                    ; $7bf6: $74
    ld l, c                                       ; $7bf7: $69
    ld l, a                                       ; $7bf8: $6f
    ld l, [hl]                                    ; $7bf9: $6e

jr_01d_7bfa:
    ld l, $03                                     ; $7bfa: $2e $03
    nop                                           ; $7bfc: $00
    ld e, c                                       ; $7bfd: $59
    ld l, a                                       ; $7bfe: $6f
    ld [hl], l                                    ; $7bff: $75
    jr nz, @+$65                                  ; $7c00: $20 $63

    ld h, c                                       ; $7c02: $61
    ld l, [hl]                                    ; $7c03: $6e
    jr nz, @+$72                                  ; $7c04: $20 $70

    ld l, h                                       ; $7c06: $6c
    ld h, c                                       ; $7c07: $61
    ld a, c                                       ; $7c08: $79
    jr nz, jr_01d_7c58                            ; $7c09: $20 $4d

    ld h, c                                       ; $7c0b: $61
    ld [hl], d                                    ; $7c0c: $72
    ld l, c                                       ; $7c0d: $69
    ld l, a                                       ; $7c0e: $6f

jr_01d_7c0f:
    ld bc, $7461                                  ; $7c0f: $01 $61 $74
    jr nz, jr_01d_7c64                            ; $7c12: $20 $50

    ld h, l                                       ; $7c14: $65
    ld h, c                                       ; $7c15: $61
    ld h, e                                       ; $7c16: $63
    ld l, b                                       ; $7c17: $68
    daa                                           ; $7c18: $27

jr_01d_7c19:
    ld [hl], e                                    ; $7c19: $73
    jr nz, jr_01d_7c5f                            ; $7c1a: $20 $43

    ld h, c                                       ; $7c1c: $61
    ld [hl], e                                    ; $7c1d: $73
    ld [hl], h                                    ; $7c1e: $74
    ld l, h                                       ; $7c1f: $6c

jr_01d_7c20:
    ld h, l                                       ; $7c20: $65
    inc l                                         ; $7c21: $2c
    ld bc, $2107                                  ; $7c22: $01 $07 $21
    inc bc                                        ; $7c25: $03
    nop                                           ; $7c26: $00
    ld c, c                                       ; $7c27: $49
    jr nz, jr_01d_7ca1                            ; $7c28: $20 $77

jr_01d_7c2a:
    ld l, c                                       ; $7c2a: $69
    ld [hl], e                                    ; $7c2b: $73
    ld l, b                                       ; $7c2c: $68
    jr nz, jr_01d_7ca3                            ; $7c2d: $20 $74

    ld l, a                                       ; $7c2f: $6f
    jr nz, @+$64                                  ; $7c30: $20 $62

jr_01d_7c32:
    ld h, l                                       ; $7c32: $65
    jr nz, jr_01d_7c96                            ; $7c33: $20 $61

    ld l, h                                       ; $7c35: $6c
    ld l, a                                       ; $7c36: $6f
    ld l, [hl]                                    ; $7c37: $6e
    ld h, l                                       ; $7c38: $65
    ld l, $03                                     ; $7c39: $2e $03
    nop                                           ; $7c3b: $00
    ld b, d                                       ; $7c3c: $42
    ld [hl], l                                    ; $7c3d: $75
    ld [hl], h                                    ; $7c3e: $74
    jr nz, jr_01d_7c4f                            ; $7c3f: $20 $0e

    rlca                                          ; $7c41: $07
    inc l                                         ; $7c42: $2c
    ld l, $2e                                     ; $7c43: $2e $2e
    ld l, $79                                     ; $7c45: $2e $79
    ld l, a                                       ; $7c47: $6f
    ld [hl], l                                    ; $7c48: $75

jr_01d_7c49:
    daa                                           ; $7c49: $27
    ld [hl], d                                    ; $7c4a: $72
    ld h, l                                       ; $7c4b: $65
    ld bc, $756a                                  ; $7c4c: $01 $6a $75

jr_01d_7c4f:
    ld [hl], e                                    ; $7c4f: $73
    ld [hl], h                                    ; $7c50: $74
    jr nz, jr_01d_7cba                            ; $7c51: $20 $67

    ld l, c                                       ; $7c53: $69
    halt                                          ; $7c54: $76
    ld l, c                                       ; $7c55: $69
    ld l, [hl]                                    ; $7c56: $6e
    ld h, a                                       ; $7c57: $67

jr_01d_7c58:
    jr nz, @+$77                                  ; $7c58: $20 $75

jr_01d_7c5a:
    ld [hl], b                                    ; $7c5a: $70

jr_01d_7c5b:
    ccf                                           ; $7c5b: $3f
    inc bc                                        ; $7c5c: $03
    nop                                           ; $7c5d: $00
    ld c, c                                       ; $7c5e: $49

jr_01d_7c5f:
    jr nz, jr_01d_7ccd                            ; $7c5f: $20 $6c

    ld l, a                                       ; $7c61: $6f
    ld [hl], e                                    ; $7c62: $73
    ld [hl], h                                    ; $7c63: $74

jr_01d_7c64:
    jr nz, jr_01d_7cda                            ; $7c64: $20 $74

    ld l, b                                       ; $7c66: $68
    ld h, l                                       ; $7c67: $65
    jr nz, jr_01d_7cd7                            ; $7c68: $20 $6d

    ld h, c                                       ; $7c6a: $61
    ld [hl], h                                    ; $7c6b: $74
    ld h, e                                       ; $7c6c: $63
    ld l, b                                       ; $7c6d: $68
    ld bc, $6e61                                  ; $7c6e: $01 $61 $6e
    ld h, h                                       ; $7c71: $64
    jr nz, jr_01d_7ce1                            ; $7c72: $20 $6d

    ld a, c                                       ; $7c74: $79
    jr nz, jr_01d_7ceb                            ; $7c75: $20 $74

    ld l, c                                       ; $7c77: $69
    ld [hl], h                                    ; $7c78: $74
    ld l, h                                       ; $7c79: $6c
    ld h, l                                       ; $7c7a: $65
    inc l                                         ; $7c7b: $2c
    jr nz, jr_01d_7ce0                            ; $7c7c: $20 $62

    ld [hl], l                                    ; $7c7e: $75
    ld [hl], h                                    ; $7c7f: $74
    ld bc, $7469                                  ; $7c80: $01 $69 $74
    jr nz, jr_01d_7cee                            ; $7c83: $20 $69

    ld [hl], e                                    ; $7c85: $73
    jr nz, jr_01d_7cf6                            ; $7c86: $20 $6e

    ld l, a                                       ; $7c88: $6f
    ld [hl], h                                    ; $7c89: $74
    jr nz, jr_01d_7d00                            ; $7c8a: $20 $74

    ld l, b                                       ; $7c8c: $68
    ld h, l                                       ; $7c8d: $65
    jr nz, jr_01d_7cf5                            ; $7c8e: $20 $65

    ld l, [hl]                                    ; $7c90: $6e
    ld h, h                                       ; $7c91: $64
    ld hl, $0003                                  ; $7c92: $21 $03 $00
    ld b, c                                       ; $7c95: $41

jr_01d_7c96:
    ld [hl], e                                    ; $7c96: $73
    jr nz, jr_01d_7cfc                            ; $7c97: $20 $63

    ld l, b                                       ; $7c99: $68
    ld h, c                                       ; $7c9a: $61
    ld l, h                                       ; $7c9b: $6c
    ld l, h                                       ; $7c9c: $6c
    ld h, l                                       ; $7c9d: $65
    ld l, [hl]                                    ; $7c9e: $6e
    ld h, a                                       ; $7c9f: $67
    ld h, l                                       ; $7ca0: $65

jr_01d_7ca1:
    ld [hl], d                                    ; $7ca1: $72
    inc l                                         ; $7ca2: $2c

jr_01d_7ca3:
    ld bc, $2c07                                  ; $7ca3: $01 $07 $2c
    jr nz, jr_01d_7cf1                            ; $7ca6: $20 $49

    ld bc, $6873                                  ; $7ca8: $01 $73 $68
    ld h, c                                       ; $7cab: $61
    ld l, h                                       ; $7cac: $6c
    ld l, h                                       ; $7cad: $6c
    jr nz, @+$78                                  ; $7cae: $20 $76

    ld h, c                                       ; $7cb0: $61
    ld l, [hl]                                    ; $7cb1: $6e
    ld [hl], c                                    ; $7cb2: $71
    ld [hl], l                                    ; $7cb3: $75
    ld l, c                                       ; $7cb4: $69
    ld [hl], e                                    ; $7cb5: $73
    ld l, b                                       ; $7cb6: $68
    jr nz, jr_01d_7d32                            ; $7cb7: $20 $79

    ld l, a                                       ; $7cb9: $6f

jr_01d_7cba:
    ld [hl], l                                    ; $7cba: $75
    ld l, $03                                     ; $7cbb: $2e $03
    nop                                           ; $7cbd: $00
    ld c, a                                       ; $7cbe: $4f
    ld l, b                                       ; $7cbf: $68
    ld hl, $4e20                                  ; $7cc0: $21 $20 $4e
    ld l, a                                       ; $7cc3: $6f
    ld [hl], a                                    ; $7cc4: $77
    jr nz, jr_01d_7d10                            ; $7cc5: $20 $49

    jr nz, jr_01d_7d30                            ; $7cc7: $20 $67

    ld h, l                                       ; $7cc9: $65
    ld [hl], h                                    ; $7cca: $74
    jr nz, jr_01d_7d36                            ; $7ccb: $20 $69

jr_01d_7ccd:
    ld [hl], h                                    ; $7ccd: $74
    ld hl, $4601                                  ; $7cce: $21 $01 $46
    ld [hl], d                                    ; $7cd1: $72
    ld l, a                                       ; $7cd2: $6f
    ld l, l                                       ; $7cd3: $6d
    jr nz, jr_01d_7d44                            ; $7cd4: $20 $6e

    ld l, a                                       ; $7cd6: $6f

jr_01d_7cd7:
    ld [hl], a                                    ; $7cd7: $77
    jr nz, jr_01d_7d49                            ; $7cd8: $20 $6f

jr_01d_7cda:
    ld l, [hl]                                    ; $7cda: $6e
    inc l                                         ; $7cdb: $2c
    jr nz, jr_01d_7d55                            ; $7cdc: $20 $77

    ld h, l                                       ; $7cde: $65
    daa                                           ; $7cdf: $27

jr_01d_7ce0:
    ld [hl], d                                    ; $7ce0: $72

jr_01d_7ce1:
    ld h, l                                       ; $7ce1: $65
    ld bc, $6874                                  ; $7ce2: $01 $74 $68
    ld h, l                                       ; $7ce5: $65
    jr nz, jr_01d_7d4b                            ; $7ce6: $20 $63

    ld l, b                                       ; $7ce8: $68
    ld h, c                                       ; $7ce9: $61
    ld l, h                                       ; $7cea: $6c

jr_01d_7ceb:
    ld l, h                                       ; $7ceb: $6c
    ld h, l                                       ; $7cec: $65
    ld l, [hl]                                    ; $7ced: $6e

jr_01d_7cee:
    ld h, a                                       ; $7cee: $67
    ld h, l                                       ; $7cef: $65
    ld [hl], d                                    ; $7cf0: $72

jr_01d_7cf1:
    ld [hl], e                                    ; $7cf1: $73
    ld hl, $0003                                  ; $7cf2: $21 $03 $00

jr_01d_7cf5:
    push af                                       ; $7cf5: $f5

jr_01d_7cf6:
    ld a, $00                                     ; $7cf6: $3e $00
    call Call_01d_7d05                            ; $7cf8: $cd $05 $7d
    pop af                                        ; $7cfb: $f1

jr_01d_7cfc:
    ret                                           ; $7cfc: $c9


    push af                                       ; $7cfd: $f5
    ld a, $01                                     ; $7cfe: $3e $01

jr_01d_7d00:
    call Call_01d_7d05                            ; $7d00: $cd $05 $7d
    pop af                                        ; $7d03: $f1
    ret                                           ; $7d04: $c9


Call_01d_7d05:
    push bc                                       ; $7d05: $c5
    push de                                       ; $7d06: $d5
    push hl                                       ; $7d07: $e5
    ld hl, $4004                                  ; $7d08: $21 $04 $40
    sla e                                         ; $7d0b: $cb $23
    rl d                                          ; $7d0d: $cb $12
    add hl, de                                    ; $7d0f: $19

jr_01d_7d10:
    ld e, [hl]                                    ; $7d10: $5e
    inc hl                                        ; $7d11: $23
    ld d, [hl]                                    ; $7d12: $56
    ld hl, $43e6                                  ; $7d13: $21 $e6 $43
    add hl, de                                    ; $7d16: $19
    or a                                          ; $7d17: $b7
    jr nz, jr_01d_7d22                            ; $7d18: $20 $08

    ld de, $c600                                  ; $7d1a: $11 $00 $c6
    ld bc, $0180                                  ; $7d1d: $01 $80 $01
    jr jr_01d_7d28                                ; $7d20: $18 $06

jr_01d_7d22:
    ld de, $d880                                  ; $7d22: $11 $80 $d8
    ld bc, $0020                                  ; $7d25: $01 $20 $00

jr_01d_7d28:
    call Call_000_03d3                            ; $7d28: $cd $d3 $03
    pop hl                                        ; $7d2b: $e1
    pop de                                        ; $7d2c: $d1
    pop bc                                        ; $7d2d: $c1
    ret                                           ; $7d2e: $c9


    rst $38                                       ; $7d2f: $ff

jr_01d_7d30:
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff

jr_01d_7d32:
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff

jr_01d_7d36:
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff

jr_01d_7d44:
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff

jr_01d_7d49:
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff

jr_01d_7d4b:
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff

jr_01d_7d55:
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    rst $38                                       ; $7d5d: $ff
    rst $38                                       ; $7d5e: $ff
    rst $38                                       ; $7d5f: $ff
    rst $38                                       ; $7d60: $ff
    rst $38                                       ; $7d61: $ff
    rst $38                                       ; $7d62: $ff
    rst $38                                       ; $7d63: $ff
    rst $38                                       ; $7d64: $ff
    rst $38                                       ; $7d65: $ff
    rst $38                                       ; $7d66: $ff
    rst $38                                       ; $7d67: $ff
    rst $38                                       ; $7d68: $ff
    rst $38                                       ; $7d69: $ff
    rst $38                                       ; $7d6a: $ff
    rst $38                                       ; $7d6b: $ff
    rst $38                                       ; $7d6c: $ff
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    rst $38                                       ; $7d72: $ff
    rst $38                                       ; $7d73: $ff
    rst $38                                       ; $7d74: $ff
    rst $38                                       ; $7d75: $ff
    rst $38                                       ; $7d76: $ff
    rst $38                                       ; $7d77: $ff
    rst $38                                       ; $7d78: $ff
    rst $38                                       ; $7d79: $ff
    rst $38                                       ; $7d7a: $ff
    rst $38                                       ; $7d7b: $ff
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    rst $38                                       ; $7d84: $ff
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    rst $38                                       ; $7d89: $ff
    rst $38                                       ; $7d8a: $ff
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rst $38                                       ; $7d92: $ff
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rst $38                                       ; $7d95: $ff
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rst $38                                       ; $7d9a: $ff
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rst $38                                       ; $7d9d: $ff
    rst $38                                       ; $7d9e: $ff
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    rst $38                                       ; $7db2: $ff
    rst $38                                       ; $7db3: $ff
    rst $38                                       ; $7db4: $ff
    rst $38                                       ; $7db5: $ff
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    rst $38                                       ; $7dba: $ff
    rst $38                                       ; $7dbb: $ff
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    rst $38                                       ; $7dcb: $ff
    rst $38                                       ; $7dcc: $ff
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    rst $38                                       ; $7dd4: $ff
    rst $38                                       ; $7dd5: $ff
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    rst $38                                       ; $7dd8: $ff
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    rst $38                                       ; $7ddd: $ff
    rst $38                                       ; $7dde: $ff
    rst $38                                       ; $7ddf: $ff
    rst $38                                       ; $7de0: $ff
    rst $38                                       ; $7de1: $ff
    rst $38                                       ; $7de2: $ff
    rst $38                                       ; $7de3: $ff
    rst $38                                       ; $7de4: $ff
    rst $38                                       ; $7de5: $ff
    rst $38                                       ; $7de6: $ff
    rst $38                                       ; $7de7: $ff
    rst $38                                       ; $7de8: $ff
    rst $38                                       ; $7de9: $ff
    rst $38                                       ; $7dea: $ff
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    rst $38                                       ; $7def: $ff
    rst $38                                       ; $7df0: $ff
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    rst $38                                       ; $7e17: $ff
    rst $38                                       ; $7e18: $ff
    rst $38                                       ; $7e19: $ff
    rst $38                                       ; $7e1a: $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    rst $38                                       ; $7e1f: $ff
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rst $38                                       ; $7e23: $ff
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $38                                       ; $7e26: $ff
    rst $38                                       ; $7e27: $ff
    rst $38                                       ; $7e28: $ff
    rst $38                                       ; $7e29: $ff
    rst $38                                       ; $7e2a: $ff
    rst $38                                       ; $7e2b: $ff
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    rst $38                                       ; $7e32: $ff
    rst $38                                       ; $7e33: $ff
    rst $38                                       ; $7e34: $ff
    rst $38                                       ; $7e35: $ff
    rst $38                                       ; $7e36: $ff
    rst $38                                       ; $7e37: $ff
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    rst $38                                       ; $7e3a: $ff
    rst $38                                       ; $7e3b: $ff
    rst $38                                       ; $7e3c: $ff
    rst $38                                       ; $7e3d: $ff
    rst $38                                       ; $7e3e: $ff
    rst $38                                       ; $7e3f: $ff
    rst $38                                       ; $7e40: $ff
    rst $38                                       ; $7e41: $ff
    rst $38                                       ; $7e42: $ff
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    rst $38                                       ; $7e46: $ff
    rst $38                                       ; $7e47: $ff
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    rst $38                                       ; $7e4a: $ff
    rst $38                                       ; $7e4b: $ff
    rst $38                                       ; $7e4c: $ff
    rst $38                                       ; $7e4d: $ff
    rst $38                                       ; $7e4e: $ff
    rst $38                                       ; $7e4f: $ff
    rst $38                                       ; $7e50: $ff
    rst $38                                       ; $7e51: $ff
    rst $38                                       ; $7e52: $ff
    rst $38                                       ; $7e53: $ff
    rst $38                                       ; $7e54: $ff
    rst $38                                       ; $7e55: $ff
    rst $38                                       ; $7e56: $ff
    rst $38                                       ; $7e57: $ff
    rst $38                                       ; $7e58: $ff
    rst $38                                       ; $7e59: $ff
    rst $38                                       ; $7e5a: $ff
    rst $38                                       ; $7e5b: $ff
    rst $38                                       ; $7e5c: $ff
    rst $38                                       ; $7e5d: $ff
    rst $38                                       ; $7e5e: $ff
    rst $38                                       ; $7e5f: $ff
    rst $38                                       ; $7e60: $ff
    rst $38                                       ; $7e61: $ff
    rst $38                                       ; $7e62: $ff
    rst $38                                       ; $7e63: $ff
    rst $38                                       ; $7e64: $ff
    rst $38                                       ; $7e65: $ff
    rst $38                                       ; $7e66: $ff
    rst $38                                       ; $7e67: $ff
    rst $38                                       ; $7e68: $ff
    rst $38                                       ; $7e69: $ff
    rst $38                                       ; $7e6a: $ff
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    rst $38                                       ; $7e6d: $ff
    rst $38                                       ; $7e6e: $ff
    rst $38                                       ; $7e6f: $ff
    rst $38                                       ; $7e70: $ff
    rst $38                                       ; $7e71: $ff
    rst $38                                       ; $7e72: $ff
    rst $38                                       ; $7e73: $ff
    rst $38                                       ; $7e74: $ff
    rst $38                                       ; $7e75: $ff
    rst $38                                       ; $7e76: $ff
    rst $38                                       ; $7e77: $ff
    rst $38                                       ; $7e78: $ff
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
