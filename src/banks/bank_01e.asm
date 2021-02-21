; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    db $4d, $6b

    ld d, l                                       ; $4002: $55
    ld l, e                                       ; $4003: $6b
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    dec [hl]                                      ; $4006: $35
    nop                                           ; $4007: $00
    ld h, c                                       ; $4008: $61
    nop                                           ; $4009: $00
    ld h, a                                       ; $400a: $67
    nop                                           ; $400b: $00
    ld l, l                                       ; $400c: $6d
    nop                                           ; $400d: $00
    ld [hl], e                                    ; $400e: $73
    nop                                           ; $400f: $00
    ld a, c                                       ; $4010: $79
    nop                                           ; $4011: $00
    ld a, a                                       ; $4012: $7f
    nop                                           ; $4013: $00
    add l                                         ; $4014: $85
    nop                                           ; $4015: $00
    xor c                                         ; $4016: $a9
    nop                                           ; $4017: $00
    cp e                                          ; $4018: $bb
    nop                                           ; $4019: $00
    adc $00                                       ; $401a: $ce $00
    pop hl                                        ; $401c: $e1
    nop                                           ; $401d: $00
    add hl, de                                    ; $401e: $19
    ld bc, $013a                                  ; $401f: $01 $3a $01
    sbc d                                         ; $4022: $9a
    ld bc, $01f2                                  ; $4023: $01 $f2 $01
    inc de                                        ; $4026: $13
    ld [bc], a                                    ; $4027: $02
    inc sp                                        ; $4028: $33
    ld [bc], a                                    ; $4029: $02
    ld d, l                                       ; $402a: $55
    ld [bc], a                                    ; $402b: $02
    halt                                          ; $402c: $76
    ld [bc], a                                    ; $402d: $02
    xor e                                         ; $402e: $ab
    ld [bc], a                                    ; $402f: $02
    db $ed                                        ; $4030: $ed
    ld [bc], a                                    ; $4031: $02
    ld d, $03                                     ; $4032: $16 $03
    ld l, h                                       ; $4034: $6c
    inc bc                                        ; $4035: $03
    adc d                                         ; $4036: $8a
    inc bc                                        ; $4037: $03
    xor c                                         ; $4038: $a9
    inc bc                                        ; $4039: $03
    jp c, $f803                                   ; $403a: $da $03 $f8

    inc bc                                        ; $403d: $03
    ld a, [$fc03]                                 ; $403e: $fa $03 $fc
    inc bc                                        ; $4041: $03
    dec c                                         ; $4042: $0d
    inc b                                         ; $4043: $04
    rrca                                          ; $4044: $0f
    inc b                                         ; $4045: $04
    ld de, $1304                                  ; $4046: $11 $04 $13
    inc b                                         ; $4049: $04
    dec d                                         ; $404a: $15
    inc b                                         ; $404b: $04
    rla                                           ; $404c: $17
    inc b                                         ; $404d: $04
    add hl, de                                    ; $404e: $19
    inc b                                         ; $404f: $04
    dec de                                        ; $4050: $1b
    inc b                                         ; $4051: $04
    dec e                                         ; $4052: $1d
    inc b                                         ; $4053: $04
    ld a, [hl+]                                   ; $4054: $2a
    inc b                                         ; $4055: $04
    ld a, $04                                     ; $4056: $3e $04
    ld b, b                                       ; $4058: $40
    inc b                                         ; $4059: $04
    ld d, l                                       ; $405a: $55
    inc b                                         ; $405b: $04
    ld l, b                                       ; $405c: $68
    inc b                                         ; $405d: $04
    ld l, d                                       ; $405e: $6a
    inc b                                         ; $405f: $04
    ld l, h                                       ; $4060: $6c
    inc b                                         ; $4061: $04
    ld l, [hl]                                    ; $4062: $6e
    inc b                                         ; $4063: $04
    ld [hl], b                                    ; $4064: $70
    inc b                                         ; $4065: $04
    ld [hl], d                                    ; $4066: $72
    inc b                                         ; $4067: $04
    ld [hl], h                                    ; $4068: $74
    inc b                                         ; $4069: $04
    add [hl]                                      ; $406a: $86
    inc b                                         ; $406b: $04
    adc b                                         ; $406c: $88
    inc b                                         ; $406d: $04
    sbc b                                         ; $406e: $98
    inc b                                         ; $406f: $04
    xor d                                         ; $4070: $aa
    inc b                                         ; $4071: $04
    cp c                                          ; $4072: $b9
    inc b                                         ; $4073: $04
    call z, $dd04                                 ; $4074: $cc $04 $dd
    inc b                                         ; $4077: $04
    rst $18                                       ; $4078: $df
    inc b                                         ; $4079: $04
    pop hl                                        ; $407a: $e1
    inc b                                         ; $407b: $04
    db $e3                                        ; $407c: $e3
    inc b                                         ; $407d: $04
    push hl                                       ; $407e: $e5
    inc b                                         ; $407f: $04
    rst $20                                       ; $4080: $e7
    inc b                                         ; $4081: $04
    jp hl                                         ; $4082: $e9


    inc b                                         ; $4083: $04
    ld sp, hl                                     ; $4084: $f9
    inc b                                         ; $4085: $04
    ei                                            ; $4086: $fb
    inc b                                         ; $4087: $04
    rrca                                          ; $4088: $0f
    dec b                                         ; $4089: $05
    ld de, $1305                                  ; $408a: $11 $05 $13
    dec b                                         ; $408d: $05
    dec d                                         ; $408e: $15
    dec b                                         ; $408f: $05
    daa                                           ; $4090: $27
    dec b                                         ; $4091: $05
    add hl, hl                                    ; $4092: $29
    dec b                                         ; $4093: $05
    ld a, [hl-]                                   ; $4094: $3a
    dec b                                         ; $4095: $05
    ld c, h                                       ; $4096: $4c
    dec b                                         ; $4097: $05
    ld e, c                                       ; $4098: $59
    dec b                                         ; $4099: $05
    ld l, b                                       ; $409a: $68
    dec b                                         ; $409b: $05
    ld a, b                                       ; $409c: $78
    dec b                                         ; $409d: $05
    adc b                                         ; $409e: $88
    dec b                                         ; $409f: $05
    sbc b                                         ; $40a0: $98
    dec b                                         ; $40a1: $05
    xor d                                         ; $40a2: $aa
    dec b                                         ; $40a3: $05
    xor h                                         ; $40a4: $ac
    dec b                                         ; $40a5: $05
    xor [hl]                                      ; $40a6: $ae
    dec b                                         ; $40a7: $05
    or b                                          ; $40a8: $b0
    dec b                                         ; $40a9: $05
    call nz, $c605                                ; $40aa: $c4 $05 $c6
    dec b                                         ; $40ad: $05
    reti                                          ; $40ae: $d9


    dec b                                         ; $40af: $05
    db $db                                        ; $40b0: $db
    dec b                                         ; $40b1: $05
    db $dd                                        ; $40b2: $dd
    dec b                                         ; $40b3: $05
    rst $18                                       ; $40b4: $df
    dec b                                         ; $40b5: $05
    pop hl                                        ; $40b6: $e1
    dec b                                         ; $40b7: $05
    db $e3                                        ; $40b8: $e3
    dec b                                         ; $40b9: $05
    push hl                                       ; $40ba: $e5
    dec b                                         ; $40bb: $05
    db $fc                                        ; $40bc: $fc
    dec b                                         ; $40bd: $05
    cp $05                                        ; $40be: $fe $05
    ld de, $2306                                  ; $40c0: $11 $06 $23
    ld b, $36                                     ; $40c3: $06 $36
    ld b, $38                                     ; $40c5: $06 $38
    ld b, $3a                                     ; $40c7: $06 $3a
    ld b, $3c                                     ; $40c9: $06 $3c
    ld b, $3e                                     ; $40cb: $06 $3e
    ld b, $4c                                     ; $40cd: $06 $4c
    ld b, $4e                                     ; $40cf: $06 $4e
    ld b, $61                                     ; $40d1: $06 $61
    ld b, $72                                     ; $40d3: $06 $72
    ld b, $84                                     ; $40d5: $06 $84
    ld b, $86                                     ; $40d7: $06 $86
    ld b, $88                                     ; $40d9: $06 $88
    ld b, $8a                                     ; $40db: $06 $8a
    ld b, $99                                     ; $40dd: $06 $99
    ld b, $9b                                     ; $40df: $06 $9b
    ld b, $ab                                     ; $40e1: $06 $ab
    ld b, $c0                                     ; $40e3: $06 $c0
    ld b, $d1                                     ; $40e5: $06 $d1
    ld b, $e2                                     ; $40e7: $06 $e2
    ld b, $f5                                     ; $40e9: $06 $f5
    ld b, $0a                                     ; $40eb: $06 $0a
    rlca                                          ; $40ed: $07
    inc c                                         ; $40ee: $0c
    rlca                                          ; $40ef: $07
    ld c, $07                                     ; $40f0: $0e $07
    db $10                                        ; $40f2: $10
    rlca                                          ; $40f3: $07
    ld [de], a                                    ; $40f4: $12
    rlca                                          ; $40f5: $07
    inc d                                         ; $40f6: $14
    rlca                                          ; $40f7: $07
    ld d, $07                                     ; $40f8: $16 $07
    jr z, jr_01e_4103                             ; $40fa: $28 $07

    scf                                           ; $40fc: $37
    rlca                                          ; $40fd: $07
    add hl, sp                                    ; $40fe: $39
    rlca                                          ; $40ff: $07
    ld c, e                                       ; $4100: $4b
    rlca                                          ; $4101: $07
    ld c, l                                       ; $4102: $4d

jr_01e_4103:
    rlca                                          ; $4103: $07
    ld c, a                                       ; $4104: $4f
    rlca                                          ; $4105: $07
    ld d, c                                       ; $4106: $51
    rlca                                          ; $4107: $07
    ld d, e                                       ; $4108: $53
    rlca                                          ; $4109: $07
    ld h, c                                       ; $410a: $61
    rlca                                          ; $410b: $07
    ld [hl], e                                    ; $410c: $73
    rlca                                          ; $410d: $07
    ld [hl], l                                    ; $410e: $75
    rlca                                          ; $410f: $07
    add [hl]                                      ; $4110: $86
    rlca                                          ; $4111: $07
    adc b                                         ; $4112: $88
    rlca                                          ; $4113: $07
    adc d                                         ; $4114: $8a
    rlca                                          ; $4115: $07
    adc h                                         ; $4116: $8c
    rlca                                          ; $4117: $07
    adc [hl]                                      ; $4118: $8e
    rlca                                          ; $4119: $07
    sbc [hl]                                      ; $411a: $9e
    rlca                                          ; $411b: $07
    and b                                         ; $411c: $a0
    rlca                                          ; $411d: $07
    xor [hl]                                      ; $411e: $ae
    rlca                                          ; $411f: $07
    or b                                          ; $4120: $b0
    rlca                                          ; $4121: $07
    or d                                          ; $4122: $b2
    rlca                                          ; $4123: $07
    or h                                          ; $4124: $b4
    rlca                                          ; $4125: $07
    or [hl]                                       ; $4126: $b6
    rlca                                          ; $4127: $07
    jp nz, $c407                                  ; $4128: $c2 $07 $c4

    rlca                                          ; $412b: $07
    pop de                                        ; $412c: $d1
    rlca                                          ; $412d: $07
    db $e4                                        ; $412e: $e4
    rlca                                          ; $412f: $07
    push af                                       ; $4130: $f5
    rlca                                          ; $4131: $07
    ld [bc], a                                    ; $4132: $02
    ld [$0812], sp                                ; $4133: $08 $12 $08
    inc h                                         ; $4136: $24
    ld [$0826], sp                                ; $4137: $08 $26 $08
    jr z, jr_01e_4144                             ; $413a: $28 $08

    ld a, [hl+]                                   ; $413c: $2a
    ld [$082c], sp                                ; $413d: $08 $2c $08
    ld b, b                                       ; $4140: $40
    ld [$0842], sp                                ; $4141: $08 $42 $08

jr_01e_4144:
    ld d, h                                       ; $4144: $54
    ld [$0863], sp                                ; $4145: $08 $63 $08
    ld h, l                                       ; $4148: $65
    ld [$0867], sp                                ; $4149: $08 $67 $08
    ld l, c                                       ; $414c: $69
    ld [$086b], sp                                ; $414d: $08 $6b $08
    ld [hl], a                                    ; $4150: $77
    ld [$0879], sp                                ; $4151: $08 $79 $08
    adc l                                         ; $4154: $8d
    ld [$088f], sp                                ; $4155: $08 $8f $08
    sub c                                         ; $4158: $91
    ld [$0893], sp                                ; $4159: $08 $93 $08
    sub l                                         ; $415c: $95
    ld [$08a1], sp                                ; $415d: $08 $a1 $08
    and e                                         ; $4160: $a3
    ld [$08b3], sp                                ; $4161: $08 $b3 $08
    ret z                                         ; $4164: $c8

    ld [$08da], sp                                ; $4165: $08 $da $08
    db $eb                                        ; $4168: $eb
    ld [$08ed], sp                                ; $4169: $08 $ed $08
    rst $28                                       ; $416c: $ef
    ld [$08f1], sp                                ; $416d: $08 $f1 $08
    di                                            ; $4170: $f3
    ld [$0906], sp                                ; $4171: $08 $06 $09
    ld [$1b09], sp                                ; $4174: $08 $09 $1b
    add hl, bc                                    ; $4177: $09
    dec e                                         ; $4178: $1d
    add hl, bc                                    ; $4179: $09
    rra                                           ; $417a: $1f
    add hl, bc                                    ; $417b: $09
    ld hl, $2309                                  ; $417c: $21 $09 $23
    add hl, bc                                    ; $417f: $09
    inc sp                                        ; $4180: $33
    add hl, bc                                    ; $4181: $09
    dec [hl]                                      ; $4182: $35
    add hl, bc                                    ; $4183: $09
    ld b, [hl]                                    ; $4184: $46
    add hl, bc                                    ; $4185: $09
    ld d, [hl]                                    ; $4186: $56
    add hl, bc                                    ; $4187: $09
    ld e, b                                       ; $4188: $58
    add hl, bc                                    ; $4189: $09
    ld e, d                                       ; $418a: $5a
    add hl, bc                                    ; $418b: $09
    ld e, h                                       ; $418c: $5c
    add hl, bc                                    ; $418d: $09
    ld e, [hl]                                    ; $418e: $5e
    add hl, bc                                    ; $418f: $09
    ld [hl], b                                    ; $4190: $70
    add hl, bc                                    ; $4191: $09
    ld [hl], d                                    ; $4192: $72
    add hl, bc                                    ; $4193: $09
    add c                                         ; $4194: $81
    add hl, bc                                    ; $4195: $09
    adc a                                         ; $4196: $8f
    add hl, bc                                    ; $4197: $09
    sub c                                         ; $4198: $91
    add hl, bc                                    ; $4199: $09
    sub e                                         ; $419a: $93
    add hl, bc                                    ; $419b: $09
    sub l                                         ; $419c: $95
    add hl, bc                                    ; $419d: $09
    sub a                                         ; $419e: $97
    add hl, bc                                    ; $419f: $09
    and h                                         ; $41a0: $a4
    add hl, bc                                    ; $41a1: $09
    and [hl]                                      ; $41a2: $a6
    add hl, bc                                    ; $41a3: $09
    cp b                                          ; $41a4: $b8
    add hl, bc                                    ; $41a5: $09
    ret z                                         ; $41a6: $c8

    add hl, bc                                    ; $41a7: $09
    jp z, $cc09                                   ; $41a8: $ca $09 $cc

    add hl, bc                                    ; $41ab: $09
    adc $09                                       ; $41ac: $ce $09
    ret nc                                        ; $41ae: $d0

    add hl, bc                                    ; $41af: $09
    db $dd                                        ; $41b0: $dd
    add hl, bc                                    ; $41b1: $09
    rst $18                                       ; $41b2: $df
    add hl, bc                                    ; $41b3: $09
    pop af                                        ; $41b4: $f1
    add hl, bc                                    ; $41b5: $09
    rst $38                                       ; $41b6: $ff
    add hl, bc                                    ; $41b7: $09
    ld [de], a                                    ; $41b8: $12
    ld a, [bc]                                    ; $41b9: $0a
    inc d                                         ; $41ba: $14
    ld a, [bc]                                    ; $41bb: $0a
    ld d, $0a                                     ; $41bc: $16 $0a
    jr jr_01e_41ca                                ; $41be: $18 $0a

    ld a, [de]                                    ; $41c0: $1a
    ld a, [bc]                                    ; $41c1: $0a
    inc l                                         ; $41c2: $2c
    ld a, [bc]                                    ; $41c3: $0a
    ld l, $0a                                     ; $41c4: $2e $0a
    ld a, $0a                                     ; $41c6: $3e $0a
    ld d, d                                       ; $41c8: $52
    ld a, [bc]                                    ; $41c9: $0a

jr_01e_41ca:
    ld h, c                                       ; $41ca: $61
    ld a, [bc]                                    ; $41cb: $0a
    halt                                          ; $41cc: $76
    ld a, [bc]                                    ; $41cd: $0a
    add [hl]                                      ; $41ce: $86
    ld a, [bc]                                    ; $41cf: $0a
    sub [hl]                                      ; $41d0: $96
    ld a, [bc]                                    ; $41d1: $0a
    xor b                                         ; $41d2: $a8
    ld a, [bc]                                    ; $41d3: $0a
    or a                                          ; $41d4: $b7
    ld a, [bc]                                    ; $41d5: $0a
    push bc                                       ; $41d6: $c5
    ld a, [bc]                                    ; $41d7: $0a
    reti                                          ; $41d8: $d9


    ld a, [bc]                                    ; $41d9: $0a
    add sp, $0a                                   ; $41da: $e8 $0a
    ld sp, hl                                     ; $41dc: $f9
    ld a, [bc]                                    ; $41dd: $0a
    dec c                                         ; $41de: $0d
    dec bc                                        ; $41df: $0b
    rrca                                          ; $41e0: $0f
    dec bc                                        ; $41e1: $0b
    ld de, $130b                                  ; $41e2: $11 $0b $13
    dec bc                                        ; $41e5: $0b
    dec d                                         ; $41e6: $15
    dec bc                                        ; $41e7: $0b
    rla                                           ; $41e8: $17
    dec bc                                        ; $41e9: $0b
    add hl, de                                    ; $41ea: $19
    dec bc                                        ; $41eb: $0b
    dec de                                        ; $41ec: $1b
    dec bc                                        ; $41ed: $0b
    dec e                                         ; $41ee: $1d
    dec bc                                        ; $41ef: $0b
    rra                                           ; $41f0: $1f
    dec bc                                        ; $41f1: $0b
    ld hl, $2c0b                                  ; $41f2: $21 $0b $2c
    dec bc                                        ; $41f5: $0b
    ld l, $0b                                     ; $41f6: $2e $0b
    ld b, c                                       ; $41f8: $41
    dec bc                                        ; $41f9: $0b
    ld b, e                                       ; $41fa: $43
    dec bc                                        ; $41fb: $0b
    ld e, b                                       ; $41fc: $58
    dec bc                                        ; $41fd: $0b
    ld e, d                                       ; $41fe: $5a
    dec bc                                        ; $41ff: $0b
    ld l, [hl]                                    ; $4200: $6e
    dec bc                                        ; $4201: $0b
    ld [hl], b                                    ; $4202: $70
    dec bc                                        ; $4203: $0b
    ld [hl], d                                    ; $4204: $72
    dec bc                                        ; $4205: $0b
    ld [hl], h                                    ; $4206: $74
    dec bc                                        ; $4207: $0b
    add h                                         ; $4208: $84
    dec bc                                        ; $4209: $0b
    add [hl]                                      ; $420a: $86
    dec bc                                        ; $420b: $0b
    sub e                                         ; $420c: $93
    dec bc                                        ; $420d: $0b
    sub l                                         ; $420e: $95
    dec bc                                        ; $420f: $0b
    sub a                                         ; $4210: $97
    dec bc                                        ; $4211: $0b
    sbc c                                         ; $4212: $99
    dec bc                                        ; $4213: $0b
    sbc e                                         ; $4214: $9b
    dec bc                                        ; $4215: $0b
    sbc l                                         ; $4216: $9d
    dec bc                                        ; $4217: $0b
    sbc a                                         ; $4218: $9f
    dec bc                                        ; $4219: $0b
    and c                                         ; $421a: $a1
    dec bc                                        ; $421b: $0b
    xor [hl]                                      ; $421c: $ae
    dec bc                                        ; $421d: $0b
    jp nz, $c40b                                  ; $421e: $c2 $0b $c4

    dec bc                                        ; $4221: $0b
    reti                                          ; $4222: $d9


    dec bc                                        ; $4223: $0b
    db $eb                                        ; $4224: $eb
    dec bc                                        ; $4225: $0b
    db $ed                                        ; $4226: $ed
    dec bc                                        ; $4227: $0b
    rst $28                                       ; $4228: $ef
    dec bc                                        ; $4229: $0b
    pop af                                        ; $422a: $f1
    dec bc                                        ; $422b: $0b
    di                                            ; $422c: $f3
    dec bc                                        ; $422d: $0b
    push af                                       ; $422e: $f5
    dec bc                                        ; $422f: $0b
    rst $30                                       ; $4230: $f7
    dec bc                                        ; $4231: $0b
    add hl, bc                                    ; $4232: $09
    inc c                                         ; $4233: $0c
    dec bc                                        ; $4234: $0b
    inc c                                         ; $4235: $0c
    dec de                                        ; $4236: $1b
    inc c                                         ; $4237: $0c
    dec l                                         ; $4238: $2d
    inc c                                         ; $4239: $0c
    inc a                                         ; $423a: $3c
    inc c                                         ; $423b: $0c
    ld c, a                                       ; $423c: $4f
    inc c                                         ; $423d: $0c
    ld e, a                                       ; $423e: $5f
    inc c                                         ; $423f: $0c
    ld h, c                                       ; $4240: $61
    inc c                                         ; $4241: $0c
    ld h, e                                       ; $4242: $63
    inc c                                         ; $4243: $0c
    ld h, l                                       ; $4244: $65
    inc c                                         ; $4245: $0c
    ld h, a                                       ; $4246: $67
    inc c                                         ; $4247: $0c
    ld l, c                                       ; $4248: $69
    inc c                                         ; $4249: $0c
    ld l, e                                       ; $424a: $6b
    inc c                                         ; $424b: $0c
    ld a, e                                       ; $424c: $7b
    inc c                                         ; $424d: $0c
    ld a, l                                       ; $424e: $7d
    inc c                                         ; $424f: $0c
    sub b                                         ; $4250: $90
    inc c                                         ; $4251: $0c
    sub d                                         ; $4252: $92
    inc c                                         ; $4253: $0c
    sub h                                         ; $4254: $94
    inc c                                         ; $4255: $0c
    sub [hl]                                      ; $4256: $96
    inc c                                         ; $4257: $0c
    xor b                                         ; $4258: $a8
    inc c                                         ; $4259: $0c
    xor d                                         ; $425a: $aa
    inc c                                         ; $425b: $0c
    cp e                                          ; $425c: $bb
    inc c                                         ; $425d: $0c
    call $da0c                                    ; $425e: $cd $0c $da
    inc c                                         ; $4261: $0c
    jp hl                                         ; $4262: $e9


    inc c                                         ; $4263: $0c
    ld sp, hl                                     ; $4264: $f9
    inc c                                         ; $4265: $0c
    add hl, bc                                    ; $4266: $09
    dec c                                         ; $4267: $0d
    add hl, de                                    ; $4268: $19
    dec c                                         ; $4269: $0d
    ld a, [hl+]                                   ; $426a: $2a
    dec c                                         ; $426b: $0d
    inc l                                         ; $426c: $2c
    dec c                                         ; $426d: $0d
    ld l, $0d                                     ; $426e: $2e $0d
    jr nc, jr_01e_427f                            ; $4270: $30 $0d

    ld b, l                                       ; $4272: $45
    dec c                                         ; $4273: $0d
    ld b, a                                       ; $4274: $47
    dec c                                         ; $4275: $0d
    ld e, c                                       ; $4276: $59
    dec c                                         ; $4277: $0d
    ld e, e                                       ; $4278: $5b
    dec c                                         ; $4279: $0d
    ld e, l                                       ; $427a: $5d
    dec c                                         ; $427b: $0d
    ld e, a                                       ; $427c: $5f
    dec c                                         ; $427d: $0d
    ld h, c                                       ; $427e: $61

jr_01e_427f:
    dec c                                         ; $427f: $0d
    ld h, e                                       ; $4280: $63
    dec c                                         ; $4281: $0d
    ld h, l                                       ; $4282: $65
    dec c                                         ; $4283: $0d
    ld a, c                                       ; $4284: $79
    dec c                                         ; $4285: $0d
    ld a, e                                       ; $4286: $7b
    dec c                                         ; $4287: $0d
    adc [hl]                                      ; $4288: $8e
    dec c                                         ; $4289: $0d
    and b                                         ; $428a: $a0
    dec c                                         ; $428b: $0d
    or e                                          ; $428c: $b3
    dec c                                         ; $428d: $0d
    or l                                          ; $428e: $b5
    dec c                                         ; $428f: $0d
    or a                                          ; $4290: $b7
    dec c                                         ; $4291: $0d
    cp c                                          ; $4292: $b9
    dec c                                         ; $4293: $0d
    cp e                                          ; $4294: $bb
    dec c                                         ; $4295: $0d
    ret                                           ; $4296: $c9


    dec c                                         ; $4297: $0d
    rrc l                                         ; $4298: $cb $0d
    sbc $0d                                       ; $429a: $de $0d
    rst $28                                       ; $429c: $ef
    dec c                                         ; $429d: $0d
    nop                                           ; $429e: $00
    ld c, $02                                     ; $429f: $0e $02
    ld c, $04                                     ; $42a1: $0e $04
    ld c, $06                                     ; $42a3: $0e $06
    ld c, $15                                     ; $42a5: $0e $15
    ld c, $17                                     ; $42a7: $0e $17
    ld c, $27                                     ; $42a9: $0e $27
    ld c, $3c                                     ; $42ab: $0e $3c
    ld c, $4d                                     ; $42ad: $0e $4d
    ld c, $5e                                     ; $42af: $0e $5e
    ld c, $71                                     ; $42b1: $0e $71
    ld c, $86                                     ; $42b3: $0e $86
    ld c, $88                                     ; $42b5: $0e $88
    ld c, $8a                                     ; $42b7: $0e $8a
    ld c, $8c                                     ; $42b9: $0e $8c
    ld c, $8e                                     ; $42bb: $0e $8e
    ld c, $90                                     ; $42bd: $0e $90
    ld c, $92                                     ; $42bf: $0e $92
    ld c, $a3                                     ; $42c1: $0e $a3
    ld c, $af                                     ; $42c3: $0e $af
    ld c, $b1                                     ; $42c5: $0e $b1
    ld c, $c2                                     ; $42c7: $0e $c2
    ld c, $c4                                     ; $42c9: $0e $c4
    ld c, $c6                                     ; $42cb: $0e $c6
    ld c, $c8                                     ; $42cd: $0e $c8
    ld c, $ca                                     ; $42cf: $0e $ca
    ld c, $db                                     ; $42d1: $0e $db
    ld c, $ea                                     ; $42d3: $0e $ea
    ld c, $ec                                     ; $42d5: $0e $ec
    ld c, $fc                                     ; $42d7: $0e $fc
    ld c, $fe                                     ; $42d9: $0e $fe
    ld c, $00                                     ; $42db: $0e $00
    rrca                                          ; $42dd: $0f
    ld [bc], a                                    ; $42de: $02
    rrca                                          ; $42df: $0f
    inc b                                         ; $42e0: $04
    rrca                                          ; $42e1: $0f
    inc de                                        ; $42e2: $13
    rrca                                          ; $42e3: $0f
    dec d                                         ; $42e4: $15
    rrca                                          ; $42e5: $0f
    inc hl                                        ; $42e6: $23
    rrca                                          ; $42e7: $0f
    dec h                                         ; $42e8: $25
    rrca                                          ; $42e9: $0f
    daa                                           ; $42ea: $27
    rrca                                          ; $42eb: $0f
    add hl, hl                                    ; $42ec: $29
    rrca                                          ; $42ed: $0f
    dec hl                                        ; $42ee: $2b
    rrca                                          ; $42ef: $0f
    ld [hl], $0f                                  ; $42f0: $36 $0f
    jr c, jr_01e_4303                             ; $42f2: $38 $0f

    ld b, l                                       ; $42f4: $45
    rrca                                          ; $42f5: $0f
    ld e, b                                       ; $42f6: $58
    rrca                                          ; $42f7: $0f
    ld l, c                                       ; $42f8: $69
    rrca                                          ; $42f9: $0f
    halt                                          ; $42fa: $76
    rrca                                          ; $42fb: $0f
    add [hl]                                      ; $42fc: $86
    rrca                                          ; $42fd: $0f
    sub a                                         ; $42fe: $97
    rrca                                          ; $42ff: $0f
    sbc c                                         ; $4300: $99
    rrca                                          ; $4301: $0f
    sbc e                                         ; $4302: $9b

jr_01e_4303:
    rrca                                          ; $4303: $0f
    sbc l                                         ; $4304: $9d
    rrca                                          ; $4305: $0f
    sbc a                                         ; $4306: $9f
    rrca                                          ; $4307: $0f
    or d                                          ; $4308: $b2
    rrca                                          ; $4309: $0f
    or h                                          ; $430a: $b4
    rrca                                          ; $430b: $0f
    add $0f                                       ; $430c: $c6 $0f
    call nc, $d60f                                ; $430e: $d4 $0f $d6
    rrca                                          ; $4311: $0f
    ret c                                         ; $4312: $d8

    rrca                                          ; $4313: $0f
    jp c, $dc0f                                   ; $4314: $da $0f $dc

    rrca                                          ; $4317: $0f
    add sp, $0f                                   ; $4318: $e8 $0f
    ld [$fd0f], a                                 ; $431a: $ea $0f $fd
    rrca                                          ; $431d: $0f
    rst $38                                       ; $431e: $ff
    rrca                                          ; $431f: $0f
    ld bc, $0310                                  ; $4320: $01 $10 $03
    db $10                                        ; $4323: $10
    dec b                                         ; $4324: $05
    db $10                                        ; $4325: $10
    ld de, $1310                                  ; $4326: $11 $10 $13
    db $10                                        ; $4329: $10
    inc hl                                        ; $432a: $23
    db $10                                        ; $432b: $10
    jr c, jr_01e_433e                             ; $432c: $38 $10

    ld c, d                                       ; $432e: $4a
    db $10                                        ; $432f: $10
    ld e, e                                       ; $4330: $5b
    db $10                                        ; $4331: $10
    ld e, l                                       ; $4332: $5d
    db $10                                        ; $4333: $10
    ld e, a                                       ; $4334: $5f
    db $10                                        ; $4335: $10
    ld h, c                                       ; $4336: $61
    db $10                                        ; $4337: $10
    ld h, e                                       ; $4338: $63
    db $10                                        ; $4339: $10
    halt                                          ; $433a: $76
    db $10                                        ; $433b: $10
    ld a, b                                       ; $433c: $78
    db $10                                        ; $433d: $10

jr_01e_433e:
    adc e                                         ; $433e: $8b
    db $10                                        ; $433f: $10
    adc l                                         ; $4340: $8d
    db $10                                        ; $4341: $10
    adc a                                         ; $4342: $8f
    db $10                                        ; $4343: $10
    sub c                                         ; $4344: $91
    db $10                                        ; $4345: $10
    sub e                                         ; $4346: $93
    db $10                                        ; $4347: $10
    and e                                         ; $4348: $a3
    db $10                                        ; $4349: $10
    and l                                         ; $434a: $a5
    db $10                                        ; $434b: $10
    or [hl]                                       ; $434c: $b6
    db $10                                        ; $434d: $10
    add $10                                       ; $434e: $c6 $10
    ret z                                         ; $4350: $c8

    db $10                                        ; $4351: $10
    jp z, $cc10                                   ; $4352: $ca $10 $cc

    db $10                                        ; $4355: $10
    adc $10                                       ; $4356: $ce $10
    ldh [rNR10], a                                ; $4358: $e0 $10
    ld [c], a                                     ; $435a: $e2
    db $10                                        ; $435b: $10
    pop af                                        ; $435c: $f1
    db $10                                        ; $435d: $10
    rst $38                                       ; $435e: $ff
    db $10                                        ; $435f: $10
    ld bc, $0311                                  ; $4360: $01 $11 $03
    ld de, $1105                                  ; $4363: $11 $05 $11
    rlca                                          ; $4366: $07
    ld de, $1114                                  ; $4367: $11 $14 $11
    ld d, $11                                     ; $436a: $16 $11
    jr z, @+$13                                   ; $436c: $28 $11

    ld [hl], $11                                  ; $436e: $36 $11
    ld c, b                                       ; $4370: $48
    ld de, $114a                                  ; $4371: $11 $4a $11
    ld c, h                                       ; $4374: $4c
    ld de, $114e                                  ; $4375: $11 $4e $11
    ld d, b                                       ; $4378: $50
    ld de, $115c                                  ; $4379: $11 $5c $11
    ld e, [hl]                                    ; $437c: $5e
    ld de, $1170                                  ; $437d: $11 $70 $11
    add b                                         ; $4380: $80
    ld de, $1182                                  ; $4381: $11 $82 $11
    add h                                         ; $4384: $84
    ld de, $1186                                  ; $4385: $11 $86 $11
    adc b                                         ; $4388: $88
    ld de, $119a                                  ; $4389: $11 $9a $11
    sbc h                                         ; $438c: $9c
    ld de, $11ac                                  ; $438d: $11 $ac $11
    ret nz                                        ; $4390: $c0

    ld de, $11d0                                  ; $4391: $11 $d0 $11
    push hl                                       ; $4394: $e5
    ld de, $11f5                                  ; $4395: $11 $f5 $11
    dec b                                         ; $4398: $05
    ld [de], a                                    ; $4399: $12
    rla                                           ; $439a: $17
    ld [de], a                                    ; $439b: $12
    ld h, $12                                     ; $439c: $26 $12
    inc [hl]                                      ; $439e: $34
    ld [de], a                                    ; $439f: $12
    ld c, b                                       ; $43a0: $48
    ld [de], a                                    ; $43a1: $12
    ld d, a                                       ; $43a2: $57
    ld [de], a                                    ; $43a3: $12
    ld l, b                                       ; $43a4: $68
    ld [de], a                                    ; $43a5: $12
    ld a, h                                       ; $43a6: $7c
    ld [de], a                                    ; $43a7: $12
    ld a, [hl]                                    ; $43a8: $7e
    ld [de], a                                    ; $43a9: $12
    add b                                         ; $43aa: $80
    ld [de], a                                    ; $43ab: $12
    add d                                         ; $43ac: $82
    ld [de], a                                    ; $43ad: $12
    add h                                         ; $43ae: $84
    ld [de], a                                    ; $43af: $12
    add [hl]                                      ; $43b0: $86
    ld [de], a                                    ; $43b1: $12
    adc b                                         ; $43b2: $88
    ld [de], a                                    ; $43b3: $12
    adc d                                         ; $43b4: $8a
    ld [de], a                                    ; $43b5: $12
    adc h                                         ; $43b6: $8c
    ld [de], a                                    ; $43b7: $12
    adc [hl]                                      ; $43b8: $8e
    ld [de], a                                    ; $43b9: $12
    and b                                         ; $43ba: $a0
    ld [de], a                                    ; $43bb: $12
    and d                                         ; $43bc: $a2
    ld [de], a                                    ; $43bd: $12
    or [hl]                                       ; $43be: $b6
    ld [de], a                                    ; $43bf: $12
    cp b                                          ; $43c0: $b8
    ld [de], a                                    ; $43c1: $12
    rl d                                          ; $43c2: $cb $12
    call $cf12                                    ; $43c4: $cd $12 $cf
    ld [de], a                                    ; $43c7: $12
    db $db                                        ; $43c8: $db
    ld [de], a                                    ; $43c9: $12
    push hl                                       ; $43ca: $e5
    ld [de], a                                    ; $43cb: $12
    rst $28                                       ; $43cc: $ef
    ld [de], a                                    ; $43cd: $12
    ld a, [$0012]                                 ; $43ce: $fa $12 $00
    inc de                                        ; $43d1: $13
    ld c, $13                                     ; $43d2: $0e $13
    inc e                                         ; $43d4: $1c
    inc de                                        ; $43d5: $13
    ld l, $13                                     ; $43d6: $2e $13
    ld b, b                                       ; $43d8: $40
    inc de                                        ; $43d9: $13
    ld d, b                                       ; $43da: $50
    inc de                                        ; $43db: $13
    ld e, [hl]                                    ; $43dc: $5e
    inc de                                        ; $43dd: $13
    ld l, h                                       ; $43de: $6c
    inc de                                        ; $43df: $13
    ld a, [hl]                                    ; $43e0: $7e
    inc de                                        ; $43e1: $13
    sub b                                         ; $43e2: $90
    inc de                                        ; $43e3: $13
    and b                                         ; $43e4: $a0
    inc de                                        ; $43e5: $13
    xor [hl]                                      ; $43e6: $ae
    inc de                                        ; $43e7: $13
    cp h                                          ; $43e8: $bc
    inc de                                        ; $43e9: $13
    adc $13                                       ; $43ea: $ce $13
    ldh [rNR13], a                                ; $43ec: $e0 $13
    ldh a, [rNR13]                                ; $43ee: $f0 $13
    rst $38                                       ; $43f0: $ff
    inc de                                        ; $43f1: $13
    dec c                                         ; $43f2: $0d
    inc d                                         ; $43f3: $14
    dec de                                        ; $43f4: $1b
    inc d                                         ; $43f5: $14
    dec l                                         ; $43f6: $2d
    inc d                                         ; $43f7: $14
    ccf                                           ; $43f8: $3f
    inc d                                         ; $43f9: $14
    ld c, a                                       ; $43fa: $4f
    inc d                                         ; $43fb: $14
    ld e, [hl]                                    ; $43fc: $5e
    inc d                                         ; $43fd: $14
    ld l, l                                       ; $43fe: $6d
    inc d                                         ; $43ff: $14
    add b                                         ; $4400: $80
    inc d                                         ; $4401: $14
    sub e                                         ; $4402: $93
    inc d                                         ; $4403: $14
    and a                                         ; $4404: $a7
    inc d                                         ; $4405: $14
    ret nz                                        ; $4406: $c0

    inc d                                         ; $4407: $14
    sub $14                                       ; $4408: $d6 $14
    ld [$fd14], a                                 ; $440a: $ea $14 $fd
    inc d                                         ; $440d: $14
    jr jr_01e_4425                                ; $440e: $18 $15

    inc hl                                        ; $4410: $23
    dec d                                         ; $4411: $15
    cpl                                           ; $4412: $2f
    dec d                                         ; $4413: $15
    add hl, sp                                    ; $4414: $39
    dec d                                         ; $4415: $15
    ld b, e                                       ; $4416: $43
    dec d                                         ; $4417: $15
    ld c, [hl]                                    ; $4418: $4e
    dec d                                         ; $4419: $15
    ld e, l                                       ; $441a: $5d
    dec d                                         ; $441b: $15
    ld l, d                                       ; $441c: $6a
    dec d                                         ; $441d: $15
    ld a, e                                       ; $441e: $7b
    dec d                                         ; $441f: $15
    adc a                                         ; $4420: $8f
    dec d                                         ; $4421: $15
    and e                                         ; $4422: $a3
    dec d                                         ; $4423: $15
    cp d                                          ; $4424: $ba

jr_01e_4425:
    dec d                                         ; $4425: $15
    ret nc                                        ; $4426: $d0

    dec d                                         ; $4427: $15
    db $e3                                        ; $4428: $e3
    dec d                                         ; $4429: $15
    db $fc                                        ; $442a: $fc
    dec d                                         ; $442b: $15
    ld bc, $0716                                  ; $442c: $01 $16 $07

jr_01e_442f:
    ld d, $0d                                     ; $442f: $16 $0d
    ld d, $13                                     ; $4431: $16 $13
    ld d, $19                                     ; $4433: $16 $19
    ld d, $1f                                     ; $4435: $16 $1f
    ld d, $25                                     ; $4437: $16 $25
    ld d, $2b                                     ; $4439: $16 $2b
    ld d, $31                                     ; $443b: $16 $31
    ld d, $37                                     ; $443d: $16 $37
    ld d, $3d                                     ; $443f: $16 $3d
    ld d, $54                                     ; $4441: $16 $54
    ld d, $6b                                     ; $4443: $16 $6b
    ld d, $86                                     ; $4445: $16 $86
    ld d, $a2                                     ; $4447: $16 $a2
    ld d, $be                                     ; $4449: $16 $be
    ld d, $e0                                     ; $444b: $16 $e0
    ld d, $f1                                     ; $444d: $16 $f1

jr_01e_444f:
    ld d, $01                                     ; $444f: $16 $01
    rla                                           ; $4451: $17
    ld [de], a                                    ; $4452: $12
    rla                                           ; $4453: $17
    dec h                                         ; $4454: $25
    rla                                           ; $4455: $17
    scf                                           ; $4456: $37
    rla                                           ; $4457: $17
    ld b, d                                       ; $4458: $42
    rla                                           ; $4459: $17

    db $4d, $17

    ld d, l                                       ; $445c: $55
    rla                                           ; $445d: $17
    ld e, l                                       ; $445e: $5d

jr_01e_445f:
    rla                                           ; $445f: $17
    ld h, a                                       ; $4460: $67
    rla                                           ; $4461: $17
    ld [hl], c                                    ; $4462: $71
    rla                                           ; $4463: $17

    db $7b, $17

    add h                                         ; $4466: $84
    rla                                           ; $4467: $17
    sub b                                         ; $4468: $90
    rla                                           ; $4469: $17
    sbc b                                         ; $446a: $98
    rla                                           ; $446b: $17
    and [hl]                                      ; $446c: $a6
    rla                                           ; $446d: $17
    or h                                          ; $446e: $b4

jr_01e_446f:
    rla                                           ; $446f: $17
    db $c2                                        ; $4470: $c2
    rla                                           ; $4471: $17

    db $c7, $17, $d0, $17

    jp c, $e017                                   ; $4476: $da $17 $e0

    rla                                           ; $4479: $17
    push hl                                       ; $447a: $e5
    rla                                           ; $447b: $17
    pop af                                        ; $447c: $f1
    rla                                           ; $447d: $17
    db $fc                                        ; $447e: $fc
    rla                                           ; $447f: $17
    rlca                                          ; $4480: $07
    jr jr_01e_4495                                ; $4481: $18 $12

    jr jr_01e_449b                                ; $4483: $18 $16

    jr @+$1f                                      ; $4485: $18 $1d

    jr @+$25                                      ; $4487: $18 $23

    jr @+$2b                                      ; $4489: $18 $29

    jr jr_01e_44bd                                ; $448b: $18 $30

    jr jr_01e_44cd                                ; $448d: $18 $3e

    db $18                                        ; $448f: $18

    db $44, $18, $4e, $18

    ld d, [hl]                                    ; $4494: $56

jr_01e_4495:
    jr jr_01e_44f3                                ; $4495: $18 $5c

    jr jr_01e_4504                                ; $4497: $18 $6b

    jr jr_01e_450b                                ; $4499: $18 $70

jr_01e_449b:
    jr jr_01e_451b                                ; $449b: $18 $7e

    jr jr_01e_442f                                ; $449d: $18 $90

    jr @-$65                                      ; $449f: $18 $99

    jr @-$5b                                      ; $44a1: $18 $a3

    jr jr_01e_444f                                ; $44a3: $18 $aa

    jr jr_01e_445f                                ; $44a5: $18 $b8

    jr jr_01e_446f                                ; $44a7: $18 $c6

jr_01e_44a9:
    jr @-$32                                      ; $44a9: $18 $cc

    jr @-$25                                      ; $44ab: $18 $d9

    jr @-$21                                      ; $44ad: $18 $dd

    jr jr_01e_4495                                ; $44af: $18 $e4

    jr @-$15                                      ; $44b1: $18 $e9

    jr jr_01e_44a9                                ; $44b3: $18 $f4

    jr jr_01e_44be                                ; $44b5: $18 $07

    add hl, de                                    ; $44b7: $19
    ld c, $19                                     ; $44b8: $0e $19
    inc d                                         ; $44ba: $14
    add hl, de                                    ; $44bb: $19
    dec de                                        ; $44bc: $1b

jr_01e_44bd:
    add hl, de                                    ; $44bd: $19

jr_01e_44be:
    ld [hl+], a                                   ; $44be: $22
    add hl, de                                    ; $44bf: $19
    cpl                                           ; $44c0: $2f
    add hl, de                                    ; $44c1: $19
    add hl, sp                                    ; $44c2: $39
    add hl, de                                    ; $44c3: $19
    ld a, $19                                     ; $44c4: $3e $19
    ld b, l                                       ; $44c6: $45
    add hl, de                                    ; $44c7: $19
    ld d, l                                       ; $44c8: $55
    add hl, de                                    ; $44c9: $19
    ld e, d                                       ; $44ca: $5a
    add hl, de                                    ; $44cb: $19
    ld e, a                                       ; $44cc: $5f

jr_01e_44cd:
    add hl, de                                    ; $44cd: $19
    ld h, l                                       ; $44ce: $65
    add hl, de                                    ; $44cf: $19
    ld l, [hl]                                    ; $44d0: $6e
    add hl, de                                    ; $44d1: $19
    ld a, b                                       ; $44d2: $78
    add hl, de                                    ; $44d3: $19
    ld a, l                                       ; $44d4: $7d

jr_01e_44d5:
    add hl, de                                    ; $44d5: $19
    add d                                         ; $44d6: $82
    add hl, de                                    ; $44d7: $19
    adc d                                         ; $44d8: $8a
    add hl, de                                    ; $44d9: $19
    sbc c                                         ; $44da: $99
    add hl, de                                    ; $44db: $19
    and [hl]                                      ; $44dc: $a6
    add hl, de                                    ; $44dd: $19
    xor h                                         ; $44de: $ac
    add hl, de                                    ; $44df: $19
    cp e                                          ; $44e0: $bb
    add hl, de                                    ; $44e1: $19
    ret nz                                        ; $44e2: $c0

    add hl, de                                    ; $44e3: $19
    push bc                                       ; $44e4: $c5
    add hl, de                                    ; $44e5: $19
    rr c                                          ; $44e6: $cb $19
    rst $10                                       ; $44e8: $d7
    add hl, de                                    ; $44e9: $19
    db $dd                                        ; $44ea: $dd
    add hl, de                                    ; $44eb: $19
    push hl                                       ; $44ec: $e5
    add hl, de                                    ; $44ed: $19
    xor $19                                       ; $44ee: $ee $19
    ld hl, sp+$19                                 ; $44f0: $f8 $19
    rst $38                                       ; $44f2: $ff

jr_01e_44f3:
    add hl, de                                    ; $44f3: $19
    inc c                                         ; $44f4: $0c
    ld a, [de]                                    ; $44f5: $1a
    ld [de], a                                    ; $44f6: $12
    ld a, [de]                                    ; $44f7: $1a
    dec e                                         ; $44f8: $1d
    ld a, [de]                                    ; $44f9: $1a
    ld [hl+], a                                   ; $44fa: $22
    ld a, [de]                                    ; $44fb: $1a
    jr z, jr_01e_4518                             ; $44fc: $28 $1a

    dec [hl]                                      ; $44fe: $35
    ld a, [de]                                    ; $44ff: $1a
    ld a, $1a                                     ; $4500: $3e $1a
    ld b, l                                       ; $4502: $45
    ld a, [de]                                    ; $4503: $1a

jr_01e_4504:
    ld c, d                                       ; $4504: $4a
    ld a, [de]                                    ; $4505: $1a
    ld d, b                                       ; $4506: $50
    ld a, [de]                                    ; $4507: $1a
    ld d, l                                       ; $4508: $55
    ld a, [de]                                    ; $4509: $1a
    ld h, c                                       ; $450a: $61

jr_01e_450b:
    ld a, [de]                                    ; $450b: $1a
    ld l, d                                       ; $450c: $6a
    ld a, [de]                                    ; $450d: $1a
    ld [hl], h                                    ; $450e: $74
    ld a, [de]                                    ; $450f: $1a
    ld a, d                                       ; $4510: $7a
    ld a, [de]                                    ; $4511: $1a
    ld a, a                                       ; $4512: $7f
    ld a, [de]                                    ; $4513: $1a
    add [hl]                                      ; $4514: $86
    ld a, [de]                                    ; $4515: $1a
    sub c                                         ; $4516: $91
    ld a, [de]                                    ; $4517: $1a

jr_01e_4518:
    sbc l                                         ; $4518: $9d
    ld a, [de]                                    ; $4519: $1a
    and d                                         ; $451a: $a2

jr_01e_451b:
    ld a, [de]                                    ; $451b: $1a
    or a                                          ; $451c: $b7
    ld a, [de]                                    ; $451d: $1a
    cp e                                          ; $451e: $bb
    ld a, [de]                                    ; $451f: $1a
    ret nz                                        ; $4520: $c0

    ld a, [de]                                    ; $4521: $1a
    add $1a                                       ; $4522: $c6 $1a
    rst $08                                       ; $4524: $cf
    ld a, [de]                                    ; $4525: $1a
    call nc, $de1a                                ; $4526: $d4 $1a $de
    ld a, [de]                                    ; $4529: $1a
    add sp, $1a                                   ; $452a: $e8 $1a
    ld a, [c]                                     ; $452c: $f2
    ld a, [de]                                    ; $452d: $1a
    ld sp, hl                                     ; $452e: $f9
    ld a, [de]                                    ; $452f: $1a
    inc b                                         ; $4530: $04
    dec de                                        ; $4531: $1b
    ld c, $1b                                     ; $4532: $0e $1b
    dec d                                         ; $4534: $15
    dec de                                        ; $4535: $1b
    ld hl, $2d1b                                  ; $4536: $21 $1b $2d
    dec de                                        ; $4539: $1b
    dec [hl]                                      ; $453a: $35
    dec de                                        ; $453b: $1b
    dec sp                                        ; $453c: $3b
    dec de                                        ; $453d: $1b
    ld b, d                                       ; $453e: $42
    dec de                                        ; $453f: $1b
    ld b, a                                       ; $4540: $47
    dec de                                        ; $4541: $1b
    ld c, e                                       ; $4542: $4b
    dec de                                        ; $4543: $1b
    ld c, [hl]                                    ; $4544: $4e
    dec de                                        ; $4545: $1b
    ld d, c                                       ; $4546: $51
    dec de                                        ; $4547: $1b
    ld h, a                                       ; $4548: $67
    dec de                                        ; $4549: $1b
    ld [hl], d                                    ; $454a: $72
    dec de                                        ; $454b: $1b
    ld a, e                                       ; $454c: $7b
    dec de                                        ; $454d: $1b
    ld a, a                                       ; $454e: $7f
    dec de                                        ; $454f: $1b
    add [hl]                                      ; $4550: $86
    dec de                                        ; $4551: $1b
    sbc b                                         ; $4552: $98
    dec de                                        ; $4553: $1b
    and c                                         ; $4554: $a1
    dec de                                        ; $4555: $1b
    xor d                                         ; $4556: $aa
    dec de                                        ; $4557: $1b
    cp a                                          ; $4558: $bf
    dec de                                        ; $4559: $1b
    rst $00                                       ; $455a: $c7
    dec de                                        ; $455b: $1b
    rr e                                          ; $455c: $cb $1b
    sub $1b                                       ; $455e: $d6 $1b
    push hl                                       ; $4560: $e5
    dec de                                        ; $4561: $1b
    db $ed                                        ; $4562: $ed
    dec de                                        ; $4563: $1b
    ld hl, sp+$1b                                 ; $4564: $f8 $1b
    rst $38                                       ; $4566: $ff
    dec de                                        ; $4567: $1b
    inc c                                         ; $4568: $0c
    inc e                                         ; $4569: $1c
    ld de, $1a1c                                  ; $456a: $11 $1c $1a
    inc e                                         ; $456d: $1c
    jr nz, jr_01e_458c                            ; $456e: $20 $1c

    ld h, $1c                                     ; $4570: $26 $1c
    ld a, [hl+]                                   ; $4572: $2a
    inc e                                         ; $4573: $1c
    ld [hl-], a                                   ; $4574: $32
    inc e                                         ; $4575: $1c
    ld c, b                                       ; $4576: $48
    inc e                                         ; $4577: $1c
    ld d, e                                       ; $4578: $53
    inc e                                         ; $4579: $1c
    ld e, c                                       ; $457a: $59
    inc e                                         ; $457b: $1c
    ld h, c                                       ; $457c: $61
    inc e                                         ; $457d: $1c
    ld l, h                                       ; $457e: $6c
    inc e                                         ; $457f: $1c
    ld [hl], d                                    ; $4580: $72
    inc e                                         ; $4581: $1c
    ld a, b                                       ; $4582: $78
    inc e                                         ; $4583: $1c
    add e                                         ; $4584: $83
    inc e                                         ; $4585: $1c
    adc [hl]                                      ; $4586: $8e
    inc e                                         ; $4587: $1c
    sub a                                         ; $4588: $97
    inc e                                         ; $4589: $1c
    sbc h                                         ; $458a: $9c
    inc e                                         ; $458b: $1c

jr_01e_458c:
    xor b                                         ; $458c: $a8
    inc e                                         ; $458d: $1c
    xor l                                         ; $458e: $ad
    inc e                                         ; $458f: $1c
    or e                                          ; $4590: $b3
    inc e                                         ; $4591: $1c
    cp l                                          ; $4592: $bd
    inc e                                         ; $4593: $1c
    jp nz, $c71c                                  ; $4594: $c2 $1c $c7

    inc e                                         ; $4597: $1c
    call $d41c                                    ; $4598: $cd $1c $d4
    inc e                                         ; $459b: $1c
    db $db                                        ; $459c: $db
    inc e                                         ; $459d: $1c
    ld [c], a                                     ; $459e: $e2
    inc e                                         ; $459f: $1c
    jp hl                                         ; $45a0: $e9


    inc e                                         ; $45a1: $1c
    or $1c                                        ; $45a2: $f6 $1c
    db $fc                                        ; $45a4: $fc
    inc e                                         ; $45a5: $1c
    nop                                           ; $45a6: $00
    dec e                                         ; $45a7: $1d
    dec bc                                        ; $45a8: $0b
    dec e                                         ; $45a9: $1d
    ld d, $1d                                     ; $45aa: $16 $1d
    rra                                           ; $45ac: $1f
    dec e                                         ; $45ad: $1d
    ld h, $1d                                     ; $45ae: $26 $1d
    ld a, [hl+]                                   ; $45b0: $2a
    dec e                                         ; $45b1: $1d
    ld [hl-], a                                   ; $45b2: $32

jr_01e_45b3:
    dec e                                         ; $45b3: $1d
    ld b, a                                       ; $45b4: $47
    dec e                                         ; $45b5: $1d
    ld d, d                                       ; $45b6: $52
    dec e                                         ; $45b7: $1d
    ld e, a                                       ; $45b8: $5f
    dec e                                         ; $45b9: $1d
    ld l, h                                       ; $45ba: $6c
    dec e                                         ; $45bb: $1d
    halt                                          ; $45bc: $76
    dec e                                         ; $45bd: $1d
    add c                                         ; $45be: $81
    dec e                                         ; $45bf: $1d
    adc h                                         ; $45c0: $8c
    dec e                                         ; $45c1: $1d
    sub h                                         ; $45c2: $94
    dec e                                         ; $45c3: $1d
    sbc h                                         ; $45c4: $9c
    dec e                                         ; $45c5: $1d
    and a                                         ; $45c6: $a7
    dec e                                         ; $45c7: $1d
    or h                                          ; $45c8: $b4
    dec e                                         ; $45c9: $1d
    cp d                                          ; $45ca: $ba
    dec e                                         ; $45cb: $1d
    cp a                                          ; $45cc: $bf
    dec e                                         ; $45cd: $1d
    call nz, $cc1d                                ; $45ce: $c4 $1d $cc
    dec e                                         ; $45d1: $1d
    pop de                                        ; $45d2: $d1
    dec e                                         ; $45d3: $1d
    ld [hl-], a                                   ; $45d4: $32
    ld e, $a6                                     ; $45d5: $1e $a6
    ld e, $d6                                     ; $45d7: $1e $d6
    ld e, $29                                     ; $45d9: $1e $29
    rra                                           ; $45db: $1f
    ld l, a                                       ; $45dc: $6f
    rra                                           ; $45dd: $1f
    rst $08                                       ; $45de: $cf
    rra                                           ; $45df: $1f
    dec hl                                        ; $45e0: $2b
    jr nz, jr_01e_4656                            ; $45e1: $20 $73

    jr nz, jr_01e_45b3                            ; $45e3: $20 $ce

    jr nz, jr_01e_4618                            ; $45e5: $20 $31

    ld hl, $2164                                  ; $45e7: $21 $64 $21
    adc h                                         ; $45ea: $8c
    ld hl, $220f                                  ; $45eb: $21 $0f $22
    ld d, b                                       ; $45ee: $50
    ld [hl+], a                                   ; $45ef: $22
    halt                                          ; $45f0: $76
    ld [hl+], a                                   ; $45f1: $22
    call c, Call_01e_4722                         ; $45f2: $dc $22 $47
    inc hl                                        ; $45f5: $23
    halt                                          ; $45f6: $76
    inc hl                                        ; $45f7: $23
    reti                                          ; $45f8: $d9


    inc hl                                        ; $45f9: $23
    dec e                                         ; $45fa: $1d
    inc h                                         ; $45fb: $24
    ld b, b                                       ; $45fc: $40
    inc h                                         ; $45fd: $24
    ld [hl], b                                    ; $45fe: $70
    inc h                                         ; $45ff: $24
    call $ff24                                    ; $4600: $cd $24 $ff
    inc h                                         ; $4603: $24
    ld d, a                                       ; $4604: $57
    ld h, l                                       ; $4605: $65
    ld l, h                                       ; $4606: $6c
    ld l, h                                       ; $4607: $6c
    inc l                                         ; $4608: $2c
    jr nz, jr_01e_4684                            ; $4609: $20 $79

    ld h, l                                       ; $460b: $65
    ld [hl], e                                    ; $460c: $73
    ld hl, $4120                                  ; $460d: $21 $20 $41
    ld [hl], e                                    ; $4610: $73
    ld bc, $6863                                  ; $4611: $01 $63 $68
    ld h, c                                       ; $4614: $61
    ld l, h                                       ; $4615: $6c
    ld l, h                                       ; $4616: $6c
    ld h, l                                       ; $4617: $65

jr_01e_4618:
    ld l, [hl]                                    ; $4618: $6e
    ld h, a                                       ; $4619: $67
    ld h, l                                       ; $461a: $65
    ld [hl], d                                    ; $461b: $72
    ld [hl], e                                    ; $461c: $73
    inc l                                         ; $461d: $2c
    jr nz, @+$79                                  ; $461e: $20 $77

    ld h, l                                       ; $4620: $65
    daa                                           ; $4621: $27
    ld l, h                                       ; $4622: $6c
    ld l, h                                       ; $4623: $6c
    ld bc, $6572                                  ; $4624: $01 $72 $65
    ld [hl], h                                    ; $4627: $74
    ld h, c                                       ; $4628: $61
    ld l, e                                       ; $4629: $6b
    ld h, l                                       ; $462a: $65
    jr nz, @+$71                                  ; $462b: $20 $6f

    ld [hl], l                                    ; $462d: $75
    ld [hl], d                                    ; $462e: $72
    jr nz, jr_01e_46a5                            ; $462f: $20 $74

    ld l, c                                       ; $4631: $69
    ld [hl], h                                    ; $4632: $74
    ld l, h                                       ; $4633: $6c
    ld h, l                                       ; $4634: $65
    ld [hl], e                                    ; $4635: $73
    ld hl, $0003                                  ; $4636: $21 $03 $00
    ld e, c                                       ; $4639: $59
    ld l, a                                       ; $463a: $6f
    ld [hl], l                                    ; $463b: $75
    jr nz, jr_01e_46a9                            ; $463c: $20 $6b

    ld l, [hl]                                    ; $463e: $6e
    ld l, a                                       ; $463f: $6f
    ld [hl], a                                    ; $4640: $77
    jr nz, jr_01e_46ac                            ; $4641: $20 $69

    ld [hl], h                                    ; $4643: $74
    inc l                                         ; $4644: $2c
    jr nz, jr_01e_464e                            ; $4645: $20 $07

    ld hl, $5701                                  ; $4647: $21 $01 $57
    ld h, l                                       ; $464a: $65
    jr nz, jr_01e_46b0                            ; $464b: $20 $63

    ld h, c                                       ; $464d: $61

jr_01e_464e:
    ld l, [hl]                                    ; $464e: $6e
    daa                                           ; $464f: $27
    ld [hl], h                                    ; $4650: $74
    jr nz, jr_01e_46ca                            ; $4651: $20 $77

    ld h, c                                       ; $4653: $61
    ld l, c                                       ; $4654: $69
    ld [hl], h                                    ; $4655: $74

jr_01e_4656:
    jr nz, jr_01e_46cc                            ; $4656: $20 $74

    ld l, a                                       ; $4658: $6f
    ld bc, $6c70                                  ; $4659: $01 $70 $6c
    ld h, c                                       ; $465c: $61
    ld a, c                                       ; $465d: $79
    jr nz, jr_01e_46d9                            ; $465e: $20 $79

    ld l, a                                       ; $4660: $6f
    ld [hl], l                                    ; $4661: $75
    ld hl, $0003                                  ; $4662: $21 $03 $00
    ld b, h                                       ; $4665: $44
    ld d, l                                       ; $4666: $55
    ld c, l                                       ; $4667: $4d
    ld c, l                                       ; $4668: $4d
    ld e, c                                       ; $4669: $59
    nop                                           ; $466a: $00
    ld b, h                                       ; $466b: $44
    ld d, l                                       ; $466c: $55
    ld c, l                                       ; $466d: $4d
    ld c, l                                       ; $466e: $4d
    ld e, c                                       ; $466f: $59
    nop                                           ; $4670: $00
    ld b, h                                       ; $4671: $44
    ld d, l                                       ; $4672: $55
    ld c, l                                       ; $4673: $4d
    ld c, l                                       ; $4674: $4d
    ld e, c                                       ; $4675: $59
    nop                                           ; $4676: $00
    ld b, h                                       ; $4677: $44
    ld d, l                                       ; $4678: $55
    ld c, l                                       ; $4679: $4d
    ld c, l                                       ; $467a: $4d
    ld e, c                                       ; $467b: $59
    nop                                           ; $467c: $00
    ld b, h                                       ; $467d: $44
    ld d, l                                       ; $467e: $55
    ld c, l                                       ; $467f: $4d
    ld c, l                                       ; $4680: $4d
    ld e, c                                       ; $4681: $59
    nop                                           ; $4682: $00
    ld b, h                                       ; $4683: $44

jr_01e_4684:
    ld d, l                                       ; $4684: $55
    ld c, l                                       ; $4685: $4d
    ld c, l                                       ; $4686: $4d
    ld e, c                                       ; $4687: $59
    nop                                           ; $4688: $00
    ld d, a                                       ; $4689: $57
    ld l, b                                       ; $468a: $68
    ld l, c                                       ; $468b: $69
    ld h, e                                       ; $468c: $63
    ld l, b                                       ; $468d: $68
    jr nz, jr_01e_4702                            ; $468e: $20 $72

    ld [hl], l                                    ; $4690: $75
    ld l, h                                       ; $4691: $6c
    ld h, l                                       ; $4692: $65
    ld [hl], e                                    ; $4693: $73
    ccf                                           ; $4694: $3f
    ld bc, $614d                                  ; $4695: $01 $4d $61
    ld [hl], h                                    ; $4698: $74
    ld h, e                                       ; $4699: $63
    ld l, b                                       ; $469a: $68
    jr nz, @+$49                                  ; $469b: $20 $47

    ld h, c                                       ; $469d: $61
    ld l, l                                       ; $469e: $6d
    ld h, l                                       ; $469f: $65
    jr nz, jr_01e_4711                            ; $46a0: $20 $6f

    ld [hl], d                                    ; $46a2: $72
    jr nz, @+$55                                  ; $46a3: $20 $53

jr_01e_46a5:
    ld [hl], h                                    ; $46a5: $74
    ld [hl], d                                    ; $46a6: $72
    ld l, a                                       ; $46a7: $6f
    ld l, e                                       ; $46a8: $6b

jr_01e_46a9:
    ld h, l                                       ; $46a9: $65
    ccf                                           ; $46aa: $3f
    inc bc                                        ; $46ab: $03

jr_01e_46ac:
    nop                                           ; $46ac: $00
    ld c, l                                       ; $46ad: $4d
    ld h, c                                       ; $46ae: $61
    ld [hl], h                                    ; $46af: $74

jr_01e_46b0:
    ld h, e                                       ; $46b0: $63
    ld l, b                                       ; $46b1: $68
    jr nz, @+$49                                  ; $46b2: $20 $47

    ld h, c                                       ; $46b4: $61
    ld l, l                                       ; $46b5: $6d
    ld h, l                                       ; $46b6: $65
    ld bc, $7453                                  ; $46b7: $01 $53 $74
    ld [hl], d                                    ; $46ba: $72
    ld l, a                                       ; $46bb: $6f
    ld l, e                                       ; $46bc: $6b
    ld h, l                                       ; $46bd: $65
    nop                                           ; $46be: $00
    ld c, a                                       ; $46bf: $4f
    ld c, e                                       ; $46c0: $4b
    ld hl, $4120                                  ; $46c1: $21 $20 $41
    jr nz, jr_01e_4713                            ; $46c4: $20 $4d

    ld h, c                                       ; $46c6: $61
    ld [hl], h                                    ; $46c7: $74
    ld h, e                                       ; $46c8: $63
    ld l, b                                       ; $46c9: $68

jr_01e_46ca:
    jr nz, jr_01e_4713                            ; $46ca: $20 $47

jr_01e_46cc:
    ld h, c                                       ; $46cc: $61
    ld l, l                                       ; $46cd: $6d
    ld h, l                                       ; $46ce: $65
    ld hl, $0003                                  ; $46cf: $21 $03 $00
    ld c, a                                       ; $46d2: $4f
    ld c, e                                       ; $46d3: $4b
    ld hl, $5320                                  ; $46d4: $21 $20 $53
    ld [hl], h                                    ; $46d7: $74
    ld [hl], d                                    ; $46d8: $72

jr_01e_46d9:
    ld l, a                                       ; $46d9: $6f
    ld l, e                                       ; $46da: $6b
    ld h, l                                       ; $46db: $65
    jr nz, jr_01e_4750                            ; $46dc: $20 $72

    ld [hl], l                                    ; $46de: $75
    ld l, h                                       ; $46df: $6c
    ld h, l                                       ; $46e0: $65
    ld [hl], e                                    ; $46e1: $73
    ld hl, $0003                                  ; $46e2: $21 $03 $00
    ld c, b                                       ; $46e5: $48
    ld h, l                                       ; $46e6: $65
    ld a, c                                       ; $46e7: $79
    ld hl, $5920                                  ; $46e8: $21 $20 $59
    ld l, a                                       ; $46eb: $6f
    ld [hl], l                                    ; $46ec: $75
    jr nz, jr_01e_4766                            ; $46ed: $20 $77

    ld h, c                                       ; $46ef: $61
    ld l, [hl]                                    ; $46f0: $6e
    ld [hl], h                                    ; $46f1: $74
    jr nz, @+$6f                                  ; $46f2: $20 $6d

    ld h, l                                       ; $46f4: $65
    inc l                                         ; $46f5: $2c
    ld bc, $6874                                  ; $46f6: $01 $74 $68
    ld h, l                                       ; $46f9: $65
    jr nz, jr_01e_475f                            ; $46fa: $20 $63

    ld l, h                                       ; $46fc: $6c
    ld [hl], l                                    ; $46fd: $75
    ld h, d                                       ; $46fe: $62
    jr nz, jr_01e_476e                            ; $46ff: $20 $6d

    ld h, c                                       ; $4701: $61

jr_01e_4702:
    ld l, e                                       ; $4702: $6b
    ld h, l                                       ; $4703: $65
    ld [hl], d                                    ; $4704: $72
    inc l                                         ; $4705: $2c
    jr nz, jr_01e_477c                            ; $4706: $20 $74

    ld l, a                                       ; $4708: $6f
    ld bc, $6f6c                                  ; $4709: $01 $6c $6f
    ld l, a                                       ; $470c: $6f
    ld l, e                                       ; $470d: $6b
    jr nz, jr_01e_4771                            ; $470e: $20 $61

    ld [hl], h                                    ; $4710: $74

jr_01e_4711:
    jr nz, jr_01e_478c                            ; $4711: $20 $79

jr_01e_4713:
    ld l, a                                       ; $4713: $6f
    ld [hl], l                                    ; $4714: $75
    ld [hl], d                                    ; $4715: $72
    jr nz, jr_01e_477b                            ; $4716: $20 $63

    ld l, h                                       ; $4718: $6c
    ld [hl], l                                    ; $4719: $75
    ld h, d                                       ; $471a: $62
    ccf                                           ; $471b: $3f
    nop                                           ; $471c: $00
    ld c, c                                       ; $471d: $49
    ld h, [hl]                                    ; $471e: $66
    jr nz, jr_01e_479a                            ; $471f: $20 $79

    ld l, a                                       ; $4721: $6f

Call_01e_4722:
    ld [hl], l                                    ; $4722: $75
    jr nz, jr_01e_479c                            ; $4723: $20 $77

    ld h, c                                       ; $4725: $61
    ld l, [hl]                                    ; $4726: $6e
    ld [hl], h                                    ; $4727: $74
    jr nz, jr_01e_4797                            ; $4728: $20 $6d

    ld h, l                                       ; $472a: $65
    jr nz, jr_01e_47a1                            ; $472b: $20 $74

    ld l, a                                       ; $472d: $6f
    inc l                                         ; $472e: $2c
    ld bc, $656c                                  ; $472f: $01 $6c $65
    ld [hl], h                                    ; $4732: $74
    jr nz, jr_01e_47a2                            ; $4733: $20 $6d

    ld h, l                                       ; $4735: $65
    jr nz, jr_01e_47a3                            ; $4736: $20 $6b

    ld l, [hl]                                    ; $4738: $6e
    ld l, a                                       ; $4739: $6f
    ld [hl], a                                    ; $473a: $77
    ld l, $03                                     ; $473b: $2e $03
    nop                                           ; $473d: $00
    ld d, a                                       ; $473e: $57
    ld l, b                                       ; $473f: $68
    ld h, l                                       ; $4740: $65
    ld [hl], d                                    ; $4741: $72
    ld h, l                                       ; $4742: $65
    jr nz, @+$76                                  ; $4743: $20 $74

    ld l, a                                       ; $4745: $6f
    jr nz, jr_01e_47bb                            ; $4746: $20 $73

    ld [hl], h                                    ; $4748: $74
    ld h, c                                       ; $4749: $61
    ld [hl], d                                    ; $474a: $72
    ld [hl], h                                    ; $474b: $74
    ld l, $2e                                     ; $474c: $2e $2e
    ld l, $01                                     ; $474e: $2e $01

jr_01e_4750:
    ld c, c                                       ; $4750: $49
    ld [hl], h                                    ; $4751: $74
    daa                                           ; $4752: $27
    ld [hl], e                                    ; $4753: $73
    jr nz, jr_01e_47c6                            ; $4754: $20 $70

    ld [hl], d                                    ; $4756: $72
    ld h, l                                       ; $4757: $65
    ld [hl], h                                    ; $4758: $74
    ld [hl], h                                    ; $4759: $74
    ld a, c                                       ; $475a: $79
    jr nz, @+$79                                  ; $475b: $20 $77

    ld h, l                                       ; $475d: $65
    ld l, h                                       ; $475e: $6c

jr_01e_475f:
    ld l, h                                       ; $475f: $6c
    ld bc, $6162                                  ; $4760: $01 $62 $61
    ld l, h                                       ; $4763: $6c
    ld h, c                                       ; $4764: $61
    ld l, [hl]                                    ; $4765: $6e

jr_01e_4766:
    ld h, e                                       ; $4766: $63
    ld h, l                                       ; $4767: $65
    ld h, h                                       ; $4768: $64
    ld l, $02                                     ; $4769: $2e $02
    ld b, d                                       ; $476b: $42
    ld [hl], l                                    ; $476c: $75
    ld [hl], h                                    ; $476d: $74

jr_01e_476e:
    jr nz, jr_01e_47dd                            ; $476e: $20 $6d

    ld a, c                                       ; $4770: $79

jr_01e_4771:
    jr nz, jr_01e_47d6                            ; $4771: $20 $63

    ld l, h                                       ; $4773: $6c
    ld [hl], l                                    ; $4774: $75
    ld h, d                                       ; $4775: $62
    jr nz, jr_01e_47e5                            ; $4776: $20 $6d

    ld h, c                                       ; $4778: $61
    ld l, e                                       ; $4779: $6b
    ld h, l                                       ; $477a: $65

jr_01e_477b:
    ld [hl], e                                    ; $477b: $73

jr_01e_477c:
    ld bc, $6f79                                  ; $477c: $01 $79 $6f
    ld [hl], l                                    ; $477f: $75
    ld [hl], d                                    ; $4780: $72
    jr nz, jr_01e_47ea                            ; $4781: $20 $67

    ld h, c                                       ; $4783: $61
    ld l, l                                       ; $4784: $6d
    ld h, l                                       ; $4785: $65
    jr nz, jr_01e_47fd                            ; $4786: $20 $75

    ld l, [hl]                                    ; $4788: $6e
    ld l, c                                       ; $4789: $69
    ld [hl], c                                    ; $478a: $71
    ld [hl], l                                    ; $478b: $75

jr_01e_478c:
    ld h, l                                       ; $478c: $65
    ld hl, $5701                                  ; $478d: $21 $01 $57
    ld h, c                                       ; $4790: $61
    ld l, [hl]                                    ; $4791: $6e
    ld l, [hl]                                    ; $4792: $6e
    ld h, c                                       ; $4793: $61
    jr nz, jr_01e_480a                            ; $4794: $20 $74

    ld [hl], d                                    ; $4796: $72

jr_01e_4797:
    ld a, c                                       ; $4797: $79
    jr nz, jr_01e_4809                            ; $4798: $20 $6f

jr_01e_479a:
    ld l, [hl]                                    ; $479a: $6e
    ld h, l                                       ; $479b: $65

jr_01e_479c:
    ccf                                           ; $479c: $3f
    nop                                           ; $479d: $00
    ld d, a                                       ; $479e: $57
    ld h, l                                       ; $479f: $65
    ld l, h                                       ; $47a0: $6c

jr_01e_47a1:
    ld l, h                                       ; $47a1: $6c

jr_01e_47a2:
    inc l                                         ; $47a2: $2c

jr_01e_47a3:
    jr nz, jr_01e_4808                            ; $47a3: $20 $63

    ld l, h                                       ; $47a5: $6c
    ld [hl], l                                    ; $47a6: $75
    ld h, d                                       ; $47a7: $62
    ld bc, $6173                                  ; $47a8: $01 $73 $61
    ld [hl], h                                    ; $47ab: $74
    ld l, c                                       ; $47ac: $69
    ld [hl], e                                    ; $47ad: $73
    ld h, [hl]                                    ; $47ae: $66
    ld h, c                                       ; $47af: $61
    ld h, e                                       ; $47b0: $63
    ld [hl], h                                    ; $47b1: $74
    ld l, c                                       ; $47b2: $69
    ld l, a                                       ; $47b3: $6f
    ld l, [hl]                                    ; $47b4: $6e
    jr nz, @+$6b                                  ; $47b5: $20 $69

    ld [hl], e                                    ; $47b7: $73
    ld bc, $6f6d                                  ; $47b8: $01 $6d $6f

jr_01e_47bb:
    ld [hl], e                                    ; $47bb: $73
    ld [hl], h                                    ; $47bc: $74
    jr nz, jr_01e_4828                            ; $47bd: $20 $69

    ld l, l                                       ; $47bf: $6d
    ld [hl], b                                    ; $47c0: $70
    ld l, a                                       ; $47c1: $6f
    ld [hl], d                                    ; $47c2: $72
    ld [hl], h                                    ; $47c3: $74
    ld h, c                                       ; $47c4: $61
    ld l, [hl]                                    ; $47c5: $6e

jr_01e_47c6:
    ld [hl], h                                    ; $47c6: $74
    ld l, $02                                     ; $47c7: $2e $02
    ld b, d                                       ; $47c9: $42
    ld [hl], l                                    ; $47ca: $75
    ld [hl], h                                    ; $47cb: $74
    jr nz, jr_01e_4837                            ; $47cc: $20 $69

    ld h, [hl]                                    ; $47ce: $66
    jr nz, @+$7b                                  ; $47cf: $20 $79

    ld l, a                                       ; $47d1: $6f
    ld [hl], l                                    ; $47d2: $75
    jr nz, jr_01e_484c                            ; $47d3: $20 $77

    ld h, c                                       ; $47d5: $61

jr_01e_47d6:
    ld l, [hl]                                    ; $47d6: $6e
    ld [hl], h                                    ; $47d7: $74
    jr nz, @+$63                                  ; $47d8: $20 $61

    ld bc, $6e75                                  ; $47da: $01 $75 $6e

jr_01e_47dd:
    ld l, c                                       ; $47dd: $69
    ld [hl], c                                    ; $47de: $71
    ld [hl], l                                    ; $47df: $75
    ld h, l                                       ; $47e0: $65
    jr nz, jr_01e_4846                            ; $47e1: $20 $63

    ld l, h                                       ; $47e3: $6c
    ld [hl], l                                    ; $47e4: $75

jr_01e_47e5:
    ld h, d                                       ; $47e5: $62
    inc l                                         ; $47e6: $2c
    ld bc, $656c                                  ; $47e7: $01 $6c $65

jr_01e_47ea:
    ld [hl], h                                    ; $47ea: $74
    jr nz, jr_01e_485a                            ; $47eb: $20 $6d

    ld h, l                                       ; $47ed: $65
    jr nz, jr_01e_485b                            ; $47ee: $20 $6b

    ld l, [hl]                                    ; $47f0: $6e
    ld l, a                                       ; $47f1: $6f
    ld [hl], a                                    ; $47f2: $77
    ld l, $03                                     ; $47f3: $2e $03
    nop                                           ; $47f5: $00
    ld d, a                                       ; $47f6: $57
    ld l, b                                       ; $47f7: $68
    ld h, c                                       ; $47f8: $61
    ld [hl], h                                    ; $47f9: $74
    jr nz, jr_01e_4867                            ; $47fa: $20 $6b

    ld l, c                                       ; $47fc: $69

jr_01e_47fd:
    ld l, [hl]                                    ; $47fd: $6e
    ld h, h                                       ; $47fe: $64
    ld h, c                                       ; $47ff: $61
    jr nz, jr_01e_4865                            ; $4800: $20 $63

    ld l, h                                       ; $4802: $6c
    ld [hl], l                                    ; $4803: $75
    ld h, d                                       ; $4804: $62
    ld bc, $6f77                                  ; $4805: $01 $77 $6f

jr_01e_4808:
    ld [hl], l                                    ; $4808: $75

jr_01e_4809:
    ld l, h                                       ; $4809: $6c

jr_01e_480a:
    ld h, h                                       ; $480a: $64
    jr nz, jr_01e_4886                            ; $480b: $20 $79

    ld l, a                                       ; $480d: $6f
    ld [hl], l                                    ; $480e: $75
    jr nz, jr_01e_487d                            ; $480f: $20 $6c

    ld l, c                                       ; $4811: $69
    ld l, e                                       ; $4812: $6b
    ld h, l                                       ; $4813: $65
    ccf                                           ; $4814: $3f
    inc bc                                        ; $4815: $03
    nop                                           ; $4816: $00
    ld b, h                                       ; $4817: $44
    ld l, c                                       ; $4818: $69
    ld [hl], e                                    ; $4819: $73
    ld [hl], h                                    ; $481a: $74
    ld h, c                                       ; $481b: $61
    ld l, [hl]                                    ; $481c: $6e
    ld h, e                                       ; $481d: $63
    ld h, l                                       ; $481e: $65
    jr nz, jr_01e_4864                            ; $481f: $20 $43

    ld l, h                                       ; $4821: $6c
    ld [hl], l                                    ; $4822: $75
    ld h, d                                       ; $4823: $62
    ld bc, $6f43                                  ; $4824: $01 $43 $6f
    ld l, [hl]                                    ; $4827: $6e

jr_01e_4828:
    ld [hl], h                                    ; $4828: $74
    ld [hl], d                                    ; $4829: $72
    ld l, a                                       ; $482a: $6f
    ld l, h                                       ; $482b: $6c
    jr nz, jr_01e_4871                            ; $482c: $20 $43

    ld l, h                                       ; $482e: $6c
    ld [hl], l                                    ; $482f: $75
    ld h, d                                       ; $4830: $62
    ld bc, $6f4e                                  ; $4831: $01 $4e $6f
    ld l, [hl]                                    ; $4834: $6e
    ld h, l                                       ; $4835: $65
    nop                                           ; $4836: $00

jr_01e_4837:
    ld e, c                                       ; $4837: $59
    ld l, a                                       ; $4838: $6f
    ld [hl], l                                    ; $4839: $75
    jr nz, jr_01e_48a3                            ; $483a: $20 $67

    ld l, a                                       ; $483c: $6f
    ld [hl], h                                    ; $483d: $74
    jr nz, jr_01e_48a1                            ; $483e: $20 $61

    jr nz, jr_01e_48b5                            ; $4840: $20 $73

    ld [hl], b                                    ; $4842: $70
    ld h, l                                       ; $4843: $65
    ld h, e                                       ; $4844: $63
    ld l, c                                       ; $4845: $69

jr_01e_4846:
    ld h, c                                       ; $4846: $61
    ld l, h                                       ; $4847: $6c
    ld bc, $6944                                  ; $4848: $01 $44 $69
    ld [hl], e                                    ; $484b: $73

jr_01e_484c:
    ld [hl], h                                    ; $484c: $74
    ld h, c                                       ; $484d: $61
    ld l, [hl]                                    ; $484e: $6e
    ld h, e                                       ; $484f: $63
    ld h, l                                       ; $4850: $65
    jr nz, jr_01e_4896                            ; $4851: $20 $43

    ld l, h                                       ; $4853: $6c
    ld [hl], l                                    ; $4854: $75
    ld h, d                                       ; $4855: $62
    ld hl, $0003                                  ; $4856: $21 $03 $00
    ld e, c                                       ; $4859: $59

jr_01e_485a:
    ld l, a                                       ; $485a: $6f

jr_01e_485b:
    ld [hl], l                                    ; $485b: $75
    jr nz, jr_01e_48c5                            ; $485c: $20 $67

    ld l, a                                       ; $485e: $6f
    ld [hl], h                                    ; $485f: $74
    jr nz, jr_01e_48c3                            ; $4860: $20 $61

    jr nz, jr_01e_48d7                            ; $4862: $20 $73

jr_01e_4864:
    ld [hl], b                                    ; $4864: $70

jr_01e_4865:
    ld h, l                                       ; $4865: $65
    ld h, e                                       ; $4866: $63

jr_01e_4867:
    ld l, c                                       ; $4867: $69
    ld h, c                                       ; $4868: $61
    ld l, h                                       ; $4869: $6c
    ld bc, $6f43                                  ; $486a: $01 $43 $6f
    ld l, [hl]                                    ; $486d: $6e
    ld [hl], h                                    ; $486e: $74
    ld [hl], d                                    ; $486f: $72
    ld l, a                                       ; $4870: $6f

jr_01e_4871:
    ld l, h                                       ; $4871: $6c
    jr nz, jr_01e_48b7                            ; $4872: $20 $43

    ld l, h                                       ; $4874: $6c
    ld [hl], l                                    ; $4875: $75
    ld h, d                                       ; $4876: $62
    ld hl, $0003                                  ; $4877: $21 $03 $00
    ld c, c                                       ; $487a: $49
    daa                                           ; $487b: $27
    ld l, h                                       ; $487c: $6c

jr_01e_487d:
    ld l, h                                       ; $487d: $6c
    jr nz, jr_01e_48eb                            ; $487e: $20 $6b

    ld h, l                                       ; $4880: $65
    ld h, l                                       ; $4881: $65
    ld [hl], b                                    ; $4882: $70
    jr nz, jr_01e_48fe                            ; $4883: $20 $79

    ld l, a                                       ; $4885: $6f

jr_01e_4886:
    ld [hl], l                                    ; $4886: $75
    ld [hl], d                                    ; $4887: $72
    jr nz, jr_01e_48ed                            ; $4888: $20 $63

    ld l, h                                       ; $488a: $6c
    ld [hl], l                                    ; $488b: $75
    ld h, d                                       ; $488c: $62
    ld bc, $6568                                  ; $488d: $01 $68 $65
    ld [hl], d                                    ; $4890: $72
    ld h, l                                       ; $4891: $65
    ld l, $20                                     ; $4892: $2e $20
    ld b, e                                       ; $4894: $43
    ld l, a                                       ; $4895: $6f

jr_01e_4896:
    ld l, l                                       ; $4896: $6d
    ld h, l                                       ; $4897: $65
    jr nz, jr_01e_48fc                            ; $4898: $20 $62

    ld h, c                                       ; $489a: $61
    ld h, e                                       ; $489b: $63
    ld l, e                                       ; $489c: $6b
    ld bc, $6f66                                  ; $489d: $01 $66 $6f
    ld [hl], d                                    ; $48a0: $72

jr_01e_48a1:
    jr nz, jr_01e_490c                            ; $48a1: $20 $69

jr_01e_48a3:
    ld [hl], h                                    ; $48a3: $74
    jr nz, @+$63                                  ; $48a4: $20 $61

    ld l, [hl]                                    ; $48a6: $6e
    ld a, c                                       ; $48a7: $79
    ld [hl], h                                    ; $48a8: $74
    ld l, c                                       ; $48a9: $69
    ld l, l                                       ; $48aa: $6d
    ld h, l                                       ; $48ab: $65
    ld l, $03                                     ; $48ac: $2e $03
    nop                                           ; $48ae: $00
    ld b, a                                       ; $48af: $47
    ld l, a                                       ; $48b0: $6f
    ld l, h                                       ; $48b1: $6c
    ld h, [hl]                                    ; $48b2: $66
    daa                                           ; $48b3: $27
    ld [hl], e                                    ; $48b4: $73

jr_01e_48b5:
    jr nz, jr_01e_491d                            ; $48b5: $20 $66

jr_01e_48b7:
    ld l, c                                       ; $48b7: $69
    ld [hl], d                                    ; $48b8: $72
    ld h, l                                       ; $48b9: $65
    jr nz, jr_01e_4925                            ; $48ba: $20 $69

    ld [hl], e                                    ; $48bc: $73
    jr nz, jr_01e_4928                            ; $48bd: $20 $69

    ld l, [hl]                                    ; $48bf: $6e
    jr nz, jr_01e_493b                            ; $48c0: $20 $79

    ld l, a                                       ; $48c2: $6f

jr_01e_48c3:
    ld [hl], l                                    ; $48c3: $75
    ld [hl], d                                    ; $48c4: $72

jr_01e_48c5:
    ld bc, $7965                                  ; $48c5: $01 $65 $79
    ld h, l                                       ; $48c8: $65
    ld [hl], e                                    ; $48c9: $73
    ld l, $20                                     ; $48ca: $2e $20
    ld e, c                                       ; $48cc: $59
    ld l, a                                       ; $48cd: $6f
    ld [hl], l                                    ; $48ce: $75
    jr nz, jr_01e_4932                            ; $48cf: $20 $61

    ld [hl], d                                    ; $48d1: $72
    ld h, l                                       ; $48d2: $65
    jr nz, jr_01e_494c                            ; $48d3: $20 $77

    ld l, a                                       ; $48d5: $6f
    ld [hl], d                                    ; $48d6: $72

jr_01e_48d7:
    ld [hl], h                                    ; $48d7: $74
    ld l, b                                       ; $48d8: $68
    ld a, c                                       ; $48d9: $79
    jr nz, jr_01e_494b                            ; $48da: $20 $6f

    ld h, [hl]                                    ; $48dc: $66
    ld bc, $6977                                  ; $48dd: $01 $77 $69
    ld h, l                                       ; $48e0: $65
    ld l, h                                       ; $48e1: $6c
    ld h, h                                       ; $48e2: $64
    ld l, c                                       ; $48e3: $69
    ld l, [hl]                                    ; $48e4: $6e
    ld h, a                                       ; $48e5: $67
    jr nz, @+$6f                                  ; $48e6: $20 $6d

    ld a, c                                       ; $48e8: $79
    jr nz, @+$79                                  ; $48e9: $20 $77

jr_01e_48eb:
    ld l, a                                       ; $48eb: $6f
    ld [hl], d                                    ; $48ec: $72

jr_01e_48ed:
    ld l, e                                       ; $48ed: $6b
    ld l, $03                                     ; $48ee: $2e $03
    nop                                           ; $48f0: $00
    ld d, a                                       ; $48f1: $57
    ld l, b                                       ; $48f2: $68
    ld h, c                                       ; $48f3: $61
    ld [hl], h                                    ; $48f4: $74
    daa                                           ; $48f5: $27
    ld [hl], e                                    ; $48f6: $73
    jr nz, jr_01e_4970                            ; $48f7: $20 $77

    ld [hl], d                                    ; $48f9: $72
    ld l, a                                       ; $48fa: $6f
    ld l, [hl]                                    ; $48fb: $6e

jr_01e_48fc:
    ld h, a                                       ; $48fc: $67
    inc l                                         ; $48fd: $2c

jr_01e_48fe:
    ld bc, $3f07                                  ; $48fe: $01 $07 $3f
    jr nz, jr_01e_4957                            ; $4901: $20 $54

    ld l, b                                       ; $4903: $68
    ld h, l                                       ; $4904: $65
    ld bc, $6c63                                  ; $4905: $01 $63 $6c
    ld [hl], l                                    ; $4908: $75
    ld h, d                                       ; $4909: $62
    daa                                           ; $490a: $27
    ld [hl], e                                    ; $490b: $73

jr_01e_490c:
    jr nz, jr_01e_497c                            ; $490c: $20 $6e

    ld l, a                                       ; $490e: $6f
    ld [hl], h                                    ; $490f: $74
    jr nz, jr_01e_4978                            ; $4910: $20 $66

    ld l, a                                       ; $4912: $6f
    ld [hl], d                                    ; $4913: $72
    jr nz, jr_01e_498f                            ; $4914: $20 $79

    ld l, a                                       ; $4916: $6f
    ld [hl], l                                    ; $4917: $75
    ccf                                           ; $4918: $3f
    nop                                           ; $4919: $00
    ld d, l                                       ; $491a: $55
    ld [hl], e                                    ; $491b: $73
    ld h, l                                       ; $491c: $65

jr_01e_491d:
    jr nz, jr_01e_498c                            ; $491d: $20 $6d

    ld a, c                                       ; $491f: $79
    jr nz, jr_01e_4985                            ; $4920: $20 $63

    ld l, h                                       ; $4922: $6c
    ld [hl], l                                    ; $4923: $75
    ld h, d                                       ; $4924: $62

jr_01e_4925:
    inc l                                         ; $4925: $2c
    jr nz, jr_01e_4989                            ; $4926: $20 $61

jr_01e_4928:
    ld l, [hl]                                    ; $4928: $6e
    ld h, h                                       ; $4929: $64
    ld bc, $6f79                                  ; $492a: $01 $79 $6f
    ld [hl], l                                    ; $492d: $75
    ld [hl], d                                    ; $492e: $72
    jr nz, jr_01e_4998                            ; $492f: $20 $67

    ld h, c                                       ; $4931: $61

jr_01e_4932:
    ld l, l                                       ; $4932: $6d
    ld h, l                                       ; $4933: $65
    jr nz, jr_01e_49ad                            ; $4934: $20 $77

    ld l, c                                       ; $4936: $69
    ld l, h                                       ; $4937: $6c
    ld l, h                                       ; $4938: $6c
    jr nz, jr_01e_499e                            ; $4939: $20 $63

jr_01e_493b:
    ld l, b                                       ; $493b: $68
    ld h, c                                       ; $493c: $61
    ld l, [hl]                                    ; $493d: $6e
    ld h, a                                       ; $493e: $67
    ld h, l                                       ; $493f: $65
    ld l, $02                                     ; $4940: $2e $02
    ld b, d                                       ; $4942: $42
    ld [hl], l                                    ; $4943: $75
    ld [hl], h                                    ; $4944: $74
    jr nz, @+$74                                  ; $4945: $20 $72

    ld h, l                                       ; $4947: $65
    ld l, l                                       ; $4948: $6d
    ld h, l                                       ; $4949: $65
    ld l, l                                       ; $494a: $6d

jr_01e_494b:
    ld h, d                                       ; $494b: $62

jr_01e_494c:
    ld h, l                                       ; $494c: $65
    ld [hl], d                                    ; $494d: $72
    inc l                                         ; $494e: $2c
    jr nz, jr_01e_49b8                            ; $494f: $20 $67

    ld l, a                                       ; $4951: $6f
    ld l, h                                       ; $4952: $6c
    ld h, [hl]                                    ; $4953: $66
    ld bc, $7369                                  ; $4954: $01 $69 $73

jr_01e_4957:
    jr nz, jr_01e_49c6                            ; $4957: $20 $6d

    ld l, a                                       ; $4959: $6f
    ld [hl], d                                    ; $495a: $72
    ld h, l                                       ; $495b: $65
    jr nz, @+$76                                  ; $495c: $20 $74

    ld l, b                                       ; $495e: $68
    ld h, c                                       ; $495f: $61
    ld l, [hl]                                    ; $4960: $6e
    ld bc, $756a                                  ; $4961: $01 $6a $75
    ld [hl], e                                    ; $4964: $73
    ld [hl], h                                    ; $4965: $74
    jr nz, @+$63                                  ; $4966: $20 $61

    jr nz, jr_01e_49cd                            ; $4968: $20 $63

    ld l, h                                       ; $496a: $6c
    ld [hl], l                                    ; $496b: $75
    ld h, d                                       ; $496c: $62
    ld l, $03                                     ; $496d: $2e $03
    nop                                           ; $496f: $00

jr_01e_4970:
    ld d, a                                       ; $4970: $57
    ld l, c                                       ; $4971: $69
    ld l, h                                       ; $4972: $6c
    ld l, h                                       ; $4973: $6c
    jr nz, jr_01e_49ef                            ; $4974: $20 $79

    ld l, a                                       ; $4976: $6f
    ld [hl], l                                    ; $4977: $75

jr_01e_4978:
    jr nz, jr_01e_49df                            ; $4978: $20 $65

    ld a, b                                       ; $497a: $78
    ld l, b                                       ; $497b: $68

jr_01e_497c:
    ld h, c                                       ; $497c: $61
    ld l, [hl]                                    ; $497d: $6e
    ld h, a                                       ; $497e: $67
    ld h, l                                       ; $497f: $65
    ld bc, $6c63                                  ; $4980: $01 $63 $6c
    ld [hl], l                                    ; $4983: $75
    ld h, d                                       ; $4984: $62

jr_01e_4985:
    ld [hl], e                                    ; $4985: $73
    inc l                                         ; $4986: $2c
    jr nz, @+$76                                  ; $4987: $20 $74

jr_01e_4989:
    ld l, b                                       ; $4989: $68
    ld h, l                                       ; $498a: $65
    ld l, [hl]                                    ; $498b: $6e

jr_01e_498c:
    ccf                                           ; $498c: $3f
    nop                                           ; $498d: $00
    rlca                                          ; $498e: $07

jr_01e_498f:
    jr nz, jr_01e_49f8                            ; $498f: $20 $67

    ld h, c                                       ; $4991: $61
    halt                                          ; $4992: $76
    ld h, l                                       ; $4993: $65
    ld bc, $6874                                  ; $4994: $01 $74 $68
    ld h, l                                       ; $4997: $65

jr_01e_4998:
    jr nz, jr_01e_4a0d                            ; $4998: $20 $73

    ld [hl], b                                    ; $499a: $70
    ld h, l                                       ; $499b: $65
    ld h, e                                       ; $499c: $63
    ld l, c                                       ; $499d: $69

jr_01e_499e:
    ld h, c                                       ; $499e: $61
    ld l, h                                       ; $499f: $6c
    jr nz, jr_01e_4a05                            ; $49a0: $20 $63

    ld l, h                                       ; $49a2: $6c
    ld [hl], l                                    ; $49a3: $75
    ld h, d                                       ; $49a4: $62
    ld bc, $6162                                  ; $49a5: $01 $62 $61
    ld h, e                                       ; $49a8: $63
    ld l, e                                       ; $49a9: $6b
    ld l, $03                                     ; $49aa: $2e $03
    nop                                           ; $49ac: $00

jr_01e_49ad:
    ld c, h                                       ; $49ad: $4c
    ld h, l                                       ; $49ae: $65
    ld [hl], h                                    ; $49af: $74
    jr nz, jr_01e_4a1f                            ; $49b0: $20 $6d

    ld h, l                                       ; $49b2: $65
    jr nz, @+$6d                                  ; $49b3: $20 $6b

    ld l, [hl]                                    ; $49b5: $6e
    ld l, a                                       ; $49b6: $6f
    ld [hl], a                                    ; $49b7: $77

jr_01e_49b8:
    jr nz, jr_01e_4a23                            ; $49b8: $20 $69

    ld h, [hl]                                    ; $49ba: $66
    jr nz, jr_01e_4a36                            ; $49bb: $20 $79

    ld l, a                                       ; $49bd: $6f
    ld [hl], l                                    ; $49be: $75
    ld bc, $6177                                  ; $49bf: $01 $77 $61
    ld l, [hl]                                    ; $49c2: $6e
    ld [hl], h                                    ; $49c3: $74
    jr nz, jr_01e_4a3a                            ; $49c4: $20 $74

jr_01e_49c6:
    ld l, b                                       ; $49c6: $68
    ld h, l                                       ; $49c7: $65
    jr nz, jr_01e_4a3d                            ; $49c8: $20 $73

    ld [hl], b                                    ; $49ca: $70
    ld h, l                                       ; $49cb: $65
    ld h, e                                       ; $49cc: $63

jr_01e_49cd:
    ld l, c                                       ; $49cd: $69
    ld h, c                                       ; $49ce: $61
    ld l, h                                       ; $49cf: $6c
    ld bc, $6c63                                  ; $49d0: $01 $63 $6c
    ld [hl], l                                    ; $49d3: $75
    ld h, d                                       ; $49d4: $62
    jr nz, @+$63                                  ; $49d5: $20 $61

    ld h, a                                       ; $49d7: $67
    ld h, c                                       ; $49d8: $61
    ld l, c                                       ; $49d9: $69
    ld l, [hl]                                    ; $49da: $6e
    ld l, $03                                     ; $49db: $2e $03
    nop                                           ; $49dd: $00
    rlca                                          ; $49de: $07

jr_01e_49df:
    jr nz, jr_01e_4a55                            ; $49df: $20 $74

    ld [hl], d                                    ; $49e1: $72
    ld h, c                                       ; $49e2: $61
    ld h, h                                       ; $49e3: $64
    ld h, l                                       ; $49e4: $65
    ld h, h                                       ; $49e5: $64
    jr nz, jr_01e_4a4e                            ; $49e6: $20 $66

    ld l, a                                       ; $49e8: $6f
    ld [hl], d                                    ; $49e9: $72
    ld bc, $2061                                  ; $49ea: $01 $61 $20
    ld [hl], e                                    ; $49ed: $73
    ld [hl], b                                    ; $49ee: $70

jr_01e_49ef:
    ld h, l                                       ; $49ef: $65
    ld h, e                                       ; $49f0: $63
    ld l, c                                       ; $49f1: $69
    ld h, c                                       ; $49f2: $61
    ld l, h                                       ; $49f3: $6c
    jr nz, jr_01e_4a59                            ; $49f4: $20 $63

    ld l, h                                       ; $49f6: $6c
    ld [hl], l                                    ; $49f7: $75

jr_01e_49f8:
    ld h, d                                       ; $49f8: $62
    ld hl, $0003                                  ; $49f9: $21 $03 $00
    jr nz, jr_01e_49fe                            ; $49fc: $20 $00

jr_01e_49fe:
    jr nz, jr_01e_4a00                            ; $49fe: $20 $00

jr_01e_4a00:
    ld c, l                                       ; $4a00: $4d
    ld b, c                                       ; $4a01: $41
    ld d, d                                       ; $4a02: $52
    ld c, c                                       ; $4a03: $49
    ld c, a                                       ; $4a04: $4f

jr_01e_4a05:
    jr nz, jr_01e_4a4e                            ; $4a05: $20 $47

    ld c, a                                       ; $4a07: $4f
    ld c, h                                       ; $4a08: $4c
    ld b, [hl]                                    ; $4a09: $46
    jr nz, jr_01e_4a5f                            ; $4a0a: $20 $53

    ld d, h                                       ; $4a0c: $54

jr_01e_4a0d:
    ld b, c                                       ; $4a0d: $41
    ld b, [hl]                                    ; $4a0e: $46
    ld b, [hl]                                    ; $4a0f: $46
    nop                                           ; $4a10: $00
    jr nz, jr_01e_4a13                            ; $4a11: $20 $00

jr_01e_4a13:
    jr nz, jr_01e_4a15                            ; $4a13: $20 $00

jr_01e_4a15:
    jr nz, jr_01e_4a17                            ; $4a15: $20 $00

jr_01e_4a17:
    jr nz, jr_01e_4a19                            ; $4a17: $20 $00

jr_01e_4a19:
    jr nz, jr_01e_4a1b                            ; $4a19: $20 $00

jr_01e_4a1b:
    jr nz, jr_01e_4a1d                            ; $4a1b: $20 $00

jr_01e_4a1d:
    jr nz, jr_01e_4a1f                            ; $4a1d: $20 $00

jr_01e_4a1f:
    jr nz, jr_01e_4a21                            ; $4a1f: $20 $00

jr_01e_4a21:
    ld d, e                                       ; $4a21: $53
    ld [hl], l                                    ; $4a22: $75

jr_01e_4a23:
    ld h, d                                       ; $4a23: $62
    ld [hl], e                                    ; $4a24: $73
    ld h, e                                       ; $4a25: $63
    ld [hl], d                                    ; $4a26: $72
    ld l, c                                       ; $4a27: $69
    ld [hl], b                                    ; $4a28: $70
    ld [hl], h                                    ; $4a29: $74
    jr nz, jr_01e_4a4c                            ; $4a2a: $20 $20

    ld h, $00                                     ; $4a2c: $26 $00
    ld c, h                                       ; $4a2e: $4c
    ld h, l                                       ; $4a2f: $65
    ld h, c                                       ; $4a30: $61
    ld h, h                                       ; $4a31: $64
    jr nz, jr_01e_4a7b                            ; $4a32: $20 $47

    ld h, c                                       ; $4a34: $61
    ld l, l                                       ; $4a35: $6d

jr_01e_4a36:
    ld h, l                                       ; $4a36: $65
    jr nz, @+$46                                  ; $4a37: $20 $44

    ld h, l                                       ; $4a39: $65

jr_01e_4a3a:
    ld [hl], e                                    ; $4a3a: $73
    ld l, c                                       ; $4a3b: $69
    ld h, a                                       ; $4a3c: $67

jr_01e_4a3d:
    ld l, [hl]                                    ; $4a3d: $6e
    ld h, l                                       ; $4a3e: $65
    ld [hl], d                                    ; $4a3f: $72
    ld [hl], e                                    ; $4a40: $73
    nop                                           ; $4a41: $00
    jr nz, jr_01e_4a44                            ; $4a42: $20 $00

jr_01e_4a44:
    jr nz, jr_01e_4a66                            ; $4a44: $20 $20

    ld c, b                                       ; $4a46: $48
    ld l, c                                       ; $4a47: $69
    ld [hl], d                                    ; $4a48: $72
    ld l, a                                       ; $4a49: $6f
    ld a, c                                       ; $4a4a: $79
    ld [hl], l                                    ; $4a4b: $75

jr_01e_4a4c:
    ld l, e                                       ; $4a4c: $6b
    ld l, c                                       ; $4a4d: $69

jr_01e_4a4e:
    jr nz, jr_01e_4aa4                            ; $4a4e: $20 $54

    ld h, c                                       ; $4a50: $61
    ld l, e                                       ; $4a51: $6b
    ld h, c                                       ; $4a52: $61
    ld l, b                                       ; $4a53: $68
    ld h, c                                       ; $4a54: $61

jr_01e_4a55:
    ld [hl], e                                    ; $4a55: $73
    ld l, b                                       ; $4a56: $68
    ld l, c                                       ; $4a57: $69
    nop                                           ; $4a58: $00

jr_01e_4a59:
    jr nz, jr_01e_4a7b                            ; $4a59: $20 $20

    ld d, e                                       ; $4a5b: $53
    ld l, b                                       ; $4a5c: $68
    ld [hl], l                                    ; $4a5d: $75
    ld h, a                                       ; $4a5e: $67

jr_01e_4a5f:
    ld l, a                                       ; $4a5f: $6f
    jr nz, @+$56                                  ; $4a60: $20 $54

    ld h, c                                       ; $4a62: $61
    ld l, e                                       ; $4a63: $6b
    ld h, c                                       ; $4a64: $61
    ld l, b                                       ; $4a65: $68

jr_01e_4a66:
    ld h, c                                       ; $4a66: $61
    ld [hl], e                                    ; $4a67: $73
    ld l, b                                       ; $4a68: $68
    ld l, c                                       ; $4a69: $69
    jr nz, jr_01e_4a6c                            ; $4a6a: $20 $00

jr_01e_4a6c:
    jr nz, jr_01e_4a6e                            ; $4a6c: $20 $00

jr_01e_4a6e:
    jr nz, jr_01e_4a70                            ; $4a6e: $20 $00

jr_01e_4a70:
    jr nz, jr_01e_4a72                            ; $4a70: $20 $00

jr_01e_4a72:
    jr nz, jr_01e_4a74                            ; $4a72: $20 $00

jr_01e_4a74:
    jr nz, jr_01e_4a76                            ; $4a74: $20 $00

jr_01e_4a76:
    jr nz, jr_01e_4a78                            ; $4a76: $20 $00

jr_01e_4a78:
    ld b, a                                       ; $4a78: $47
    ld h, c                                       ; $4a79: $61
    ld l, l                                       ; $4a7a: $6d

jr_01e_4a7b:
    ld h, l                                       ; $4a7b: $65
    jr nz, jr_01e_4ac2                            ; $4a7c: $20 $44

    ld h, l                                       ; $4a7e: $65
    ld [hl], e                                    ; $4a7f: $73
    ld l, c                                       ; $4a80: $69
    ld h, a                                       ; $4a81: $67
    ld l, [hl]                                    ; $4a82: $6e
    jr nz, jr_01e_4ad8                            ; $4a83: $20 $53

    ld [hl], h                                    ; $4a85: $74
    ld h, c                                       ; $4a86: $61
    ld h, [hl]                                    ; $4a87: $66
    ld h, [hl]                                    ; $4a88: $66
    nop                                           ; $4a89: $00
    jr nz, jr_01e_4a8c                            ; $4a8a: $20 $00

jr_01e_4a8c:
    jr nz, jr_01e_4aae                            ; $4a8c: $20 $20

    ld d, e                                       ; $4a8e: $53
    ld l, b                                       ; $4a8f: $68
    ld [hl], l                                    ; $4a90: $75
    ld l, d                                       ; $4a91: $6a
    ld l, c                                       ; $4a92: $69
    jr nz, @+$55                                  ; $4a93: $20 $53

    ld l, b                                       ; $4a95: $68
    ld l, c                                       ; $4a96: $69
    ld l, l                                       ; $4a97: $6d
    ld l, c                                       ; $4a98: $69
    ld a, d                                       ; $4a99: $7a
    ld [hl], l                                    ; $4a9a: $75
    nop                                           ; $4a9b: $00
    jr nz, @+$22                                  ; $4a9c: $20 $20

    ld e, c                                       ; $4a9e: $59
    ld [hl], l                                    ; $4a9f: $75
    ld [hl], e                                    ; $4aa0: $73
    ld [hl], l                                    ; $4aa1: $75
    ld l, e                                       ; $4aa2: $6b
    ld h, l                                       ; $4aa3: $65

jr_01e_4aa4:
    jr nz, jr_01e_4af9                            ; $4aa4: $20 $53

    ld [hl], l                                    ; $4aa6: $75
    ld h, a                                       ; $4aa7: $67
    ld l, c                                       ; $4aa8: $69
    ld l, l                                       ; $4aa9: $6d
    ld l, a                                       ; $4aaa: $6f
    ld [hl], h                                    ; $4aab: $74
    ld l, a                                       ; $4aac: $6f
    nop                                           ; $4aad: $00

jr_01e_4aae:
    jr nz, jr_01e_4ad0                            ; $4aae: $20 $20

    ld b, c                                       ; $4ab0: $41
    ld a, c                                       ; $4ab1: $79
    ld [hl], l                                    ; $4ab2: $75
    ld l, l                                       ; $4ab3: $6d
    ld [hl], l                                    ; $4ab4: $75
    jr nz, @+$55                                  ; $4ab5: $20 $53

    ld l, b                                       ; $4ab7: $68
    ld l, c                                       ; $4ab8: $69
    ld l, [hl]                                    ; $4ab9: $6e
    ld h, h                                       ; $4aba: $64
    ld l, a                                       ; $4abb: $6f
    nop                                           ; $4abc: $00
    jr nz, jr_01e_4adf                            ; $4abd: $20 $20

    ld d, h                                       ; $4abf: $54
    ld h, c                                       ; $4ac0: $61
    ld l, e                                       ; $4ac1: $6b

jr_01e_4ac2:
    ld h, c                                       ; $4ac2: $61
    ld [hl], e                                    ; $4ac3: $73
    ld l, b                                       ; $4ac4: $68
    ld l, c                                       ; $4ac5: $69
    jr nz, jr_01e_4b13                            ; $4ac6: $20 $4b

    ld l, c                                       ; $4ac8: $69
    ld [hl], h                                    ; $4ac9: $74
    ld h, c                                       ; $4aca: $61
    ld l, l                                       ; $4acb: $6d
    ld [hl], l                                    ; $4acc: $75
    ld [hl], d                                    ; $4acd: $72
    ld h, c                                       ; $4ace: $61
    nop                                           ; $4acf: $00

jr_01e_4ad0:
    jr nz, @+$22                                  ; $4ad0: $20 $20

    ld c, e                                       ; $4ad2: $4b
    ld h, l                                       ; $4ad3: $65
    ld l, [hl]                                    ; $4ad4: $6e
    ld [hl], h                                    ; $4ad5: $74
    ld h, c                                       ; $4ad6: $61
    ld [hl], d                                    ; $4ad7: $72

jr_01e_4ad8:
    ld l, a                                       ; $4ad8: $6f
    jr nz, @+$55                                  ; $4ad9: $20 $53

    ld h, c                                       ; $4adb: $61
    ld l, e                                       ; $4adc: $6b
    ld l, a                                       ; $4add: $6f
    ld l, b                                       ; $4ade: $68

jr_01e_4adf:
    jr nz, jr_01e_4ae1                            ; $4adf: $20 $00

jr_01e_4ae1:
    jr nz, jr_01e_4ae3                            ; $4ae1: $20 $00

jr_01e_4ae3:
    jr nz, jr_01e_4ae5                            ; $4ae3: $20 $00

jr_01e_4ae5:
    jr nz, jr_01e_4ae7                            ; $4ae5: $20 $00

jr_01e_4ae7:
    jr nz, jr_01e_4ae9                            ; $4ae7: $20 $00

jr_01e_4ae9:
    jr nz, jr_01e_4aeb                            ; $4ae9: $20 $00

jr_01e_4aeb:
    jr nz, jr_01e_4aed                            ; $4aeb: $20 $00

jr_01e_4aed:
    ld c, h                                       ; $4aed: $4c
    ld h, l                                       ; $4aee: $65
    ld h, c                                       ; $4aef: $61
    ld h, h                                       ; $4af0: $64
    jr nz, jr_01e_4b43                            ; $4af1: $20 $50

    ld [hl], d                                    ; $4af3: $72
    ld l, a                                       ; $4af4: $6f
    ld h, a                                       ; $4af5: $67
    ld [hl], d                                    ; $4af6: $72
    ld h, c                                       ; $4af7: $61
    ld l, l                                       ; $4af8: $6d

jr_01e_4af9:
    ld l, l                                       ; $4af9: $6d
    ld h, l                                       ; $4afa: $65
    ld [hl], d                                    ; $4afb: $72
    nop                                           ; $4afc: $00
    jr nz, jr_01e_4aff                            ; $4afd: $20 $00

jr_01e_4aff:
    jr nz, jr_01e_4b21                            ; $4aff: $20 $20

    ld e, c                                       ; $4b01: $59
    ld h, c                                       ; $4b02: $61
    ld [hl], e                                    ; $4b03: $73
    ld [hl], l                                    ; $4b04: $75
    ld l, b                                       ; $4b05: $68
    ld l, c                                       ; $4b06: $69
    ld [hl], d                                    ; $4b07: $72
    ld l, a                                       ; $4b08: $6f
    jr nz, jr_01e_4b5f                            ; $4b09: $20 $54

    ld h, c                                       ; $4b0b: $61
    ld h, a                                       ; $4b0c: $67
    ld [hl], l                                    ; $4b0d: $75
    ld h, e                                       ; $4b0e: $63
    ld l, b                                       ; $4b0f: $68
    ld l, c                                       ; $4b10: $69
    jr nz, jr_01e_4b13                            ; $4b11: $20 $00

jr_01e_4b13:
    jr nz, jr_01e_4b15                            ; $4b13: $20 $00

jr_01e_4b15:
    jr nz, jr_01e_4b17                            ; $4b15: $20 $00

jr_01e_4b17:
    jr nz, jr_01e_4b19                            ; $4b17: $20 $00

jr_01e_4b19:
    ld d, b                                       ; $4b19: $50
    ld [hl], d                                    ; $4b1a: $72
    ld l, a                                       ; $4b1b: $6f
    ld h, a                                       ; $4b1c: $67
    ld [hl], d                                    ; $4b1d: $72
    ld h, c                                       ; $4b1e: $61
    ld l, l                                       ; $4b1f: $6d
    ld l, l                                       ; $4b20: $6d

jr_01e_4b21:
    ld l, c                                       ; $4b21: $69
    ld l, [hl]                                    ; $4b22: $6e
    ld h, a                                       ; $4b23: $67
    jr nz, jr_01e_4b79                            ; $4b24: $20 $53

    ld [hl], h                                    ; $4b26: $74
    ld h, c                                       ; $4b27: $61
    ld h, [hl]                                    ; $4b28: $66
    ld h, [hl]                                    ; $4b29: $66
    nop                                           ; $4b2a: $00
    jr nz, jr_01e_4b2d                            ; $4b2b: $20 $00

jr_01e_4b2d:
    jr nz, jr_01e_4b4f                            ; $4b2d: $20 $20

    ld d, h                                       ; $4b2f: $54
    ld h, c                                       ; $4b30: $61
    ld l, e                                       ; $4b31: $6b
    ld h, l                                       ; $4b32: $65
    ld [hl], e                                    ; $4b33: $73
    ld l, b                                       ; $4b34: $68
    ld l, c                                       ; $4b35: $69
    jr nz, jr_01e_4b86                            ; $4b36: $20 $4e

    ld l, a                                       ; $4b38: $6f
    ld l, b                                       ; $4b39: $68
    ld h, c                                       ; $4b3a: $61
    ld [hl], d                                    ; $4b3b: $72
    ld h, c                                       ; $4b3c: $61
    nop                                           ; $4b3d: $00
    jr nz, jr_01e_4b60                            ; $4b3e: $20 $20

    ld e, c                                       ; $4b40: $59
    ld [hl], l                                    ; $4b41: $75
    ld [hl], h                                    ; $4b42: $74

jr_01e_4b43:
    ld h, c                                       ; $4b43: $61
    ld l, e                                       ; $4b44: $6b
    ld h, c                                       ; $4b45: $61
    jr nz, jr_01e_4ba1                            ; $4b46: $20 $59

    ld h, c                                       ; $4b48: $61
    ld l, l                                       ; $4b49: $6d
    ld h, c                                       ; $4b4a: $61
    ld l, l                                       ; $4b4b: $6d
    ld l, a                                       ; $4b4c: $6f
    ld [hl], h                                    ; $4b4d: $74
    ld l, a                                       ; $4b4e: $6f

jr_01e_4b4f:
    nop                                           ; $4b4f: $00
    jr nz, jr_01e_4b72                            ; $4b50: $20 $20

    ld b, c                                       ; $4b52: $41
    ld l, e                                       ; $4b53: $6b
    ld l, c                                       ; $4b54: $69
    ld l, e                                       ; $4b55: $6b
    ld l, a                                       ; $4b56: $6f
    jr nz, jr_01e_4bac                            ; $4b57: $20 $53

    ld h, c                                       ; $4b59: $61
    ld [hl], h                                    ; $4b5a: $74
    ld l, a                                       ; $4b5b: $6f
    nop                                           ; $4b5c: $00
    jr nz, jr_01e_4b7f                            ; $4b5d: $20 $20

jr_01e_4b5f:
    ld c, e                                       ; $4b5f: $4b

jr_01e_4b60:
    ld h, l                                       ; $4b60: $65
    ld l, [hl]                                    ; $4b61: $6e
    ld l, d                                       ; $4b62: $6a
    ld l, c                                       ; $4b63: $69
    jr nz, jr_01e_4bb4                            ; $4b64: $20 $4e

    ld [hl], l                                    ; $4b66: $75
    ld l, l                                       ; $4b67: $6d
    ld h, c                                       ; $4b68: $61
    ld a, c                                       ; $4b69: $79
    ld h, c                                       ; $4b6a: $61
    nop                                           ; $4b6b: $00
    jr nz, jr_01e_4b8e                            ; $4b6c: $20 $20

    ld c, e                                       ; $4b6e: $4b
    ld h, c                                       ; $4b6f: $61
    ld l, a                                       ; $4b70: $6f
    ld [hl], d                                    ; $4b71: $72

jr_01e_4b72:
    ld [hl], l                                    ; $4b72: $75
    jr nz, jr_01e_4bc8                            ; $4b73: $20 $53

    ld l, b                                       ; $4b75: $68
    ld l, c                                       ; $4b76: $69
    ld l, l                                       ; $4b77: $6d
    ld h, c                                       ; $4b78: $61

jr_01e_4b79:
    ld h, h                                       ; $4b79: $64
    ld h, c                                       ; $4b7a: $61
    nop                                           ; $4b7b: $00
    jr nz, jr_01e_4b9e                            ; $4b7c: $20 $20

    ld c, [hl]                                    ; $4b7e: $4e

jr_01e_4b7f:
    ld l, a                                       ; $4b7f: $6f
    ld [hl], d                                    ; $4b80: $72
    ld l, c                                       ; $4b81: $69
    ld l, a                                       ; $4b82: $6f
    jr nz, jr_01e_4bd8                            ; $4b83: $20 $53

    ld l, b                                       ; $4b85: $68

jr_01e_4b86:
    ld l, c                                       ; $4b86: $69
    ld l, l                                       ; $4b87: $6d
    ld l, c                                       ; $4b88: $69
    ld a, d                                       ; $4b89: $7a
    ld [hl], l                                    ; $4b8a: $75
    nop                                           ; $4b8b: $00
    jr nz, jr_01e_4bae                            ; $4b8c: $20 $20

jr_01e_4b8e:
    ld c, b                                       ; $4b8e: $48
    ld h, c                                       ; $4b8f: $61
    ld [hl], d                                    ; $4b90: $72
    ld [hl], l                                    ; $4b91: $75
    ld l, e                                       ; $4b92: $6b
    ld l, c                                       ; $4b93: $69
    jr nz, jr_01e_4be1                            ; $4b94: $20 $4b

    ld l, a                                       ; $4b96: $6f
    ld h, h                                       ; $4b97: $64
    ld h, l                                       ; $4b98: $65
    ld [hl], d                                    ; $4b99: $72
    ld h, c                                       ; $4b9a: $61
    nop                                           ; $4b9b: $00
    jr nz, jr_01e_4bbe                            ; $4b9c: $20 $20

jr_01e_4b9e:
    ld d, h                                       ; $4b9e: $54
    ld l, a                                       ; $4b9f: $6f
    ld [hl], d                                    ; $4ba0: $72

jr_01e_4ba1:
    ld [hl], l                                    ; $4ba1: $75
    jr nz, jr_01e_4bf8                            ; $4ba2: $20 $54

    ld h, c                                       ; $4ba4: $61
    ld l, e                                       ; $4ba5: $6b
    ld h, c                                       ; $4ba6: $61
    ld l, l                                       ; $4ba7: $6d
    ld h, c                                       ; $4ba8: $61
    ld [hl], h                                    ; $4ba9: $74
    ld [hl], e                                    ; $4baa: $73
    ld [hl], l                                    ; $4bab: $75

jr_01e_4bac:
    jr nz, jr_01e_4bae                            ; $4bac: $20 $00

jr_01e_4bae:
    jr nz, jr_01e_4bb0                            ; $4bae: $20 $00

jr_01e_4bb0:
    jr nz, jr_01e_4bb2                            ; $4bb0: $20 $00

jr_01e_4bb2:
    jr nz, jr_01e_4bb4                            ; $4bb2: $20 $00

jr_01e_4bb4:
    ld d, b                                       ; $4bb4: $50
    ld [hl], d                                    ; $4bb5: $72
    ld l, a                                       ; $4bb6: $6f
    ld h, a                                       ; $4bb7: $67
    ld [hl], d                                    ; $4bb8: $72
    ld h, c                                       ; $4bb9: $61
    ld l, l                                       ; $4bba: $6d
    ld l, l                                       ; $4bbb: $6d
    ld l, c                                       ; $4bbc: $69
    ld l, [hl]                                    ; $4bbd: $6e

jr_01e_4bbe:
    ld h, a                                       ; $4bbe: $67
    jr nz, jr_01e_4c14                            ; $4bbf: $20 $53

    ld [hl], l                                    ; $4bc1: $75
    ld [hl], b                                    ; $4bc2: $70
    ld [hl], b                                    ; $4bc3: $70
    ld l, a                                       ; $4bc4: $6f
    ld [hl], d                                    ; $4bc5: $72
    ld [hl], h                                    ; $4bc6: $74
    nop                                           ; $4bc7: $00

jr_01e_4bc8:
    jr nz, jr_01e_4bca                            ; $4bc8: $20 $00

jr_01e_4bca:
    jr nz, jr_01e_4bec                            ; $4bca: $20 $20

    ld d, b                                       ; $4bcc: $50
    ld l, $45                                     ; $4bcd: $2e $45
    ld l, $4a                                     ; $4bcf: $2e $4a
    ld h, c                                       ; $4bd1: $61
    ld [hl], d                                    ; $4bd2: $72
    ld h, l                                       ; $4bd3: $65
    ld [hl], h                                    ; $4bd4: $74
    ld l, b                                       ; $4bd5: $68
    jr nz, jr_01e_4c20                            ; $4bd6: $20 $48

jr_01e_4bd8:
    ld h, l                                       ; $4bd8: $65
    ld l, c                                       ; $4bd9: $69
    ld l, [hl]                                    ; $4bda: $6e
    jr nz, jr_01e_4bdd                            ; $4bdb: $20 $00

jr_01e_4bdd:
    jr nz, jr_01e_4bdf                            ; $4bdd: $20 $00

jr_01e_4bdf:
    jr nz, jr_01e_4be1                            ; $4bdf: $20 $00

jr_01e_4be1:
    jr nz, jr_01e_4be3                            ; $4be1: $20 $00

jr_01e_4be3:
    jr nz, jr_01e_4be5                            ; $4be3: $20 $00

jr_01e_4be5:
    jr nz, jr_01e_4be7                            ; $4be5: $20 $00

jr_01e_4be7:
    jr nz, jr_01e_4be9                            ; $4be7: $20 $00

jr_01e_4be9:
    ld c, a                                       ; $4be9: $4f
    ld [hl], d                                    ; $4bea: $72
    ld l, c                                       ; $4beb: $69

jr_01e_4bec:
    ld h, a                                       ; $4bec: $67
    ld l, c                                       ; $4bed: $69
    ld l, [hl]                                    ; $4bee: $6e
    ld h, c                                       ; $4bef: $61
    ld l, h                                       ; $4bf0: $6c
    jr nz, jr_01e_4c36                            ; $4bf1: $20 $43

    ld l, b                                       ; $4bf3: $68
    ld h, c                                       ; $4bf4: $61
    ld [hl], d                                    ; $4bf5: $72
    ld h, c                                       ; $4bf6: $61
    ld h, e                                       ; $4bf7: $63

jr_01e_4bf8:
    ld [hl], h                                    ; $4bf8: $74
    ld h, l                                       ; $4bf9: $65
    ld [hl], d                                    ; $4bfa: $72
    ld [hl], e                                    ; $4bfb: $73
    jr nz, jr_01e_4c40                            ; $4bfc: $20 $42

    ld a, c                                       ; $4bfe: $79
    nop                                           ; $4bff: $00
    jr nz, jr_01e_4c02                            ; $4c00: $20 $00

jr_01e_4c02:
    jr nz, jr_01e_4c24                            ; $4c02: $20 $20

    ld d, e                                       ; $4c04: $53
    ld l, b                                       ; $4c05: $68
    ld l, c                                       ; $4c06: $69
    ld h, a                                       ; $4c07: $67
    ld h, l                                       ; $4c08: $65
    ld [hl], d                                    ; $4c09: $72
    ld [hl], l                                    ; $4c0a: $75
    jr nz, jr_01e_4c5a                            ; $4c0b: $20 $4d

    ld l, c                                       ; $4c0d: $69
    ld a, c                                       ; $4c0e: $79
    ld h, c                                       ; $4c0f: $61
    ld l, l                                       ; $4c10: $6d
    ld l, a                                       ; $4c11: $6f
    ld [hl], h                                    ; $4c12: $74
    ld l, a                                       ; $4c13: $6f

jr_01e_4c14:
    nop                                           ; $4c14: $00
    jr nz, jr_01e_4c37                            ; $4c15: $20 $20

    ld c, b                                       ; $4c17: $48
    ld l, c                                       ; $4c18: $69
    ld [hl], d                                    ; $4c19: $72
    ld l, a                                       ; $4c1a: $6f
    ld l, d                                       ; $4c1b: $6a
    ld l, c                                       ; $4c1c: $69
    jr nz, jr_01e_4c6a                            ; $4c1d: $20 $4b

    ld l, c                                       ; $4c1f: $69

jr_01e_4c20:
    ld a, c                                       ; $4c20: $79
    ld l, a                                       ; $4c21: $6f
    ld [hl], h                                    ; $4c22: $74
    ld h, c                                       ; $4c23: $61

jr_01e_4c24:
    ld l, e                                       ; $4c24: $6b
    ld h, l                                       ; $4c25: $65
    nop                                           ; $4c26: $00
    jr nz, jr_01e_4c49                            ; $4c27: $20 $20

    ld c, l                                       ; $4c29: $4d
    ld l, c                                       ; $4c2a: $69
    ld [hl], h                                    ; $4c2b: $74
    ld [hl], e                                    ; $4c2c: $73
    ld [hl], l                                    ; $4c2d: $75
    ld [hl], d                                    ; $4c2e: $72
    ld [hl], l                                    ; $4c2f: $75
    jr nz, jr_01e_4c78                            ; $4c30: $20 $46

    ld [hl], l                                    ; $4c32: $75
    ld l, e                                       ; $4c33: $6b
    ld [hl], l                                    ; $4c34: $75
    ld l, l                                       ; $4c35: $6d

jr_01e_4c36:
    ld l, a                                       ; $4c36: $6f

jr_01e_4c37:
    ld [hl], h                                    ; $4c37: $74
    ld l, a                                       ; $4c38: $6f
    nop                                           ; $4c39: $00
    jr nz, jr_01e_4c3c                            ; $4c3a: $20 $00

jr_01e_4c3c:
    jr nz, jr_01e_4c3e                            ; $4c3c: $20 $00

jr_01e_4c3e:
    jr nz, jr_01e_4c40                            ; $4c3e: $20 $00

jr_01e_4c40:
    jr nz, jr_01e_4c42                            ; $4c40: $20 $00

jr_01e_4c42:
    ld c, h                                       ; $4c42: $4c
    ld h, l                                       ; $4c43: $65
    ld h, c                                       ; $4c44: $61
    ld h, h                                       ; $4c45: $64
    jr nz, jr_01e_4c8f                            ; $4c46: $20 $47

    ld [hl], d                                    ; $4c48: $72

jr_01e_4c49:
    ld h, c                                       ; $4c49: $61
    ld [hl], b                                    ; $4c4a: $70
    ld l, b                                       ; $4c4b: $68
    ld l, c                                       ; $4c4c: $69
    ld h, e                                       ; $4c4d: $63
    ld [hl], e                                    ; $4c4e: $73
    nop                                           ; $4c4f: $00
    jr nz, jr_01e_4c52                            ; $4c50: $20 $00

jr_01e_4c52:
    jr nz, jr_01e_4c74                            ; $4c52: $20 $20

    ld c, l                                       ; $4c54: $4d
    ld l, c                                       ; $4c55: $69
    ld [hl], h                                    ; $4c56: $74
    ld [hl], e                                    ; $4c57: $73
    ld [hl], l                                    ; $4c58: $75
    ld [hl], d                                    ; $4c59: $72

jr_01e_4c5a:
    ld [hl], l                                    ; $4c5a: $75
    jr nz, jr_01e_4ca3                            ; $4c5b: $20 $46

    ld [hl], l                                    ; $4c5d: $75
    ld l, e                                       ; $4c5e: $6b
    ld [hl], l                                    ; $4c5f: $75
    ld l, l                                       ; $4c60: $6d
    ld l, a                                       ; $4c61: $6f
    ld [hl], h                                    ; $4c62: $74
    ld l, a                                       ; $4c63: $6f
    nop                                           ; $4c64: $00
    jr nz, @+$22                                  ; $4c65: $20 $20

    ld c, l                                       ; $4c67: $4d
    ld h, c                                       ; $4c68: $61
    ld [hl], e                                    ; $4c69: $73

jr_01e_4c6a:
    ld h, c                                       ; $4c6a: $61
    ld [hl], e                                    ; $4c6b: $73
    ld l, b                                       ; $4c6c: $68
    ld l, c                                       ; $4c6d: $69
    jr nz, jr_01e_4cbd                            ; $4c6e: $20 $4d

    ld l, c                                       ; $4c70: $69
    ld l, e                                       ; $4c71: $6b
    ld h, c                                       ; $4c72: $61
    ld l, l                                       ; $4c73: $6d

jr_01e_4c74:
    ld l, c                                       ; $4c74: $69
    nop                                           ; $4c75: $00
    jr nz, jr_01e_4c98                            ; $4c76: $20 $20

jr_01e_4c78:
    ld b, c                                       ; $4c78: $41
    ld l, e                                       ; $4c79: $6b
    ld l, c                                       ; $4c7a: $69
    ld l, b                                       ; $4c7b: $68
    ld l, c                                       ; $4c7c: $69
    ld [hl], h                                    ; $4c7d: $74
    ld l, a                                       ; $4c7e: $6f
    jr nz, jr_01e_4ccc                            ; $4c7f: $20 $4b

    ld l, c                                       ; $4c81: $69
    ld l, l                                       ; $4c82: $6d
    ld [hl], l                                    ; $4c83: $75
    ld [hl], d                                    ; $4c84: $72
    ld h, c                                       ; $4c85: $61
    jr nz, jr_01e_4c88                            ; $4c86: $20 $00

jr_01e_4c88:
    jr nz, jr_01e_4c8a                            ; $4c88: $20 $00

jr_01e_4c8a:
    jr nz, jr_01e_4c8c                            ; $4c8a: $20 $00

jr_01e_4c8c:
    jr nz, jr_01e_4c8e                            ; $4c8c: $20 $00

jr_01e_4c8e:
    ld b, a                                       ; $4c8e: $47

jr_01e_4c8f:
    ld [hl], d                                    ; $4c8f: $72
    ld h, c                                       ; $4c90: $61
    ld [hl], b                                    ; $4c91: $70
    ld l, b                                       ; $4c92: $68
    ld l, c                                       ; $4c93: $69
    ld h, e                                       ; $4c94: $63
    ld [hl], e                                    ; $4c95: $73
    jr nz, jr_01e_4ceb                            ; $4c96: $20 $53

jr_01e_4c98:
    ld [hl], h                                    ; $4c98: $74
    ld h, c                                       ; $4c99: $61
    ld h, [hl]                                    ; $4c9a: $66
    ld h, [hl]                                    ; $4c9b: $66
    nop                                           ; $4c9c: $00
    jr nz, jr_01e_4c9f                            ; $4c9d: $20 $00

jr_01e_4c9f:
    jr nz, jr_01e_4cc1                            ; $4c9f: $20 $20

    ld b, [hl]                                    ; $4ca1: $46
    ld [hl], l                                    ; $4ca2: $75

jr_01e_4ca3:
    ld l, l                                       ; $4ca3: $6d
    ld l, c                                       ; $4ca4: $69
    ld l, b                                       ; $4ca5: $68
    ld l, c                                       ; $4ca6: $69
    ld h, h                                       ; $4ca7: $64
    ld h, l                                       ; $4ca8: $65
    jr nz, jr_01e_4cec                            ; $4ca9: $20 $41

    ld l, a                                       ; $4cab: $6f
    ld l, e                                       ; $4cac: $6b
    ld l, c                                       ; $4cad: $69
    nop                                           ; $4cae: $00
    jr nz, jr_01e_4cd1                            ; $4caf: $20 $20

    ld c, l                                       ; $4cb1: $4d
    ld l, c                                       ; $4cb2: $69
    ld [hl], h                                    ; $4cb3: $74
    ld [hl], e                                    ; $4cb4: $73
    ld [hl], l                                    ; $4cb5: $75
    ld l, l                                       ; $4cb6: $6d
    ld h, c                                       ; $4cb7: $61
    ld [hl], e                                    ; $4cb8: $73
    ld h, c                                       ; $4cb9: $61
    jr nz, jr_01e_4d09                            ; $4cba: $20 $4d

    ld [hl], l                                    ; $4cbc: $75

jr_01e_4cbd:
    ld [hl], d                                    ; $4cbd: $72
    ld h, c                                       ; $4cbe: $61
    ld l, c                                       ; $4cbf: $69
    ld [hl], e                                    ; $4cc0: $73

jr_01e_4cc1:
    ld l, b                                       ; $4cc1: $68
    ld l, c                                       ; $4cc2: $69
    nop                                           ; $4cc3: $00
    jr nz, jr_01e_4ce6                            ; $4cc4: $20 $20

    ld d, e                                       ; $4cc6: $53
    ld l, b                                       ; $4cc7: $68
    ld l, c                                       ; $4cc8: $69
    ld h, a                                       ; $4cc9: $67
    ld h, l                                       ; $4cca: $65
    ld l, e                                       ; $4ccb: $6b

jr_01e_4ccc:
    ld l, c                                       ; $4ccc: $69
    jr nz, jr_01e_4d1a                            ; $4ccd: $20 $4b

    ld l, c                                       ; $4ccf: $69
    ld l, l                                       ; $4cd0: $6d

jr_01e_4cd1:
    ld [hl], l                                    ; $4cd1: $75
    ld [hl], d                                    ; $4cd2: $72
    ld h, c                                       ; $4cd3: $61
    nop                                           ; $4cd4: $00
    jr nz, jr_01e_4cf7                            ; $4cd5: $20 $20

    ld c, d                                       ; $4cd7: $4a
    ld [hl], l                                    ; $4cd8: $75
    ld l, [hl]                                    ; $4cd9: $6e
    ld l, c                                       ; $4cda: $69
    ld h, e                                       ; $4cdb: $63
    ld l, b                                       ; $4cdc: $68
    ld l, c                                       ; $4cdd: $69
    jr nz, @+$51                                  ; $4cde: $20 $4f

    ld h, e                                       ; $4ce0: $63
    ld l, b                                       ; $4ce1: $68
    ld l, c                                       ; $4ce2: $69
    ld h, c                                       ; $4ce3: $61
    ld l, c                                       ; $4ce4: $69
    nop                                           ; $4ce5: $00

jr_01e_4ce6:
    jr nz, jr_01e_4d08                            ; $4ce6: $20 $20

    ld c, b                                       ; $4ce8: $48
    ld l, c                                       ; $4ce9: $69
    ld [hl], d                                    ; $4cea: $72

jr_01e_4ceb:
    ld l, a                                       ; $4ceb: $6f

jr_01e_4cec:
    ld [hl], h                                    ; $4cec: $74
    ld l, a                                       ; $4ced: $6f
    jr nz, @+$50                                  ; $4cee: $20 $4e

    ld h, c                                       ; $4cf0: $61
    ld l, e                                       ; $4cf1: $6b
    ld h, c                                       ; $4cf2: $61
    ld [hl], e                                    ; $4cf3: $73
    ld l, b                                       ; $4cf4: $68
    ld l, c                                       ; $4cf5: $69
    ld l, l                                       ; $4cf6: $6d

jr_01e_4cf7:
    ld h, c                                       ; $4cf7: $61
    nop                                           ; $4cf8: $00
    jr nz, jr_01e_4d1b                            ; $4cf9: $20 $20

    ld c, l                                       ; $4cfb: $4d
    ld h, c                                       ; $4cfc: $61
    ld [hl], e                                    ; $4cfd: $73
    ld h, c                                       ; $4cfe: $61
    ld a, c                                       ; $4cff: $79
    ld [hl], l                                    ; $4d00: $75
    ld l, e                                       ; $4d01: $6b
    ld l, c                                       ; $4d02: $69
    jr nz, jr_01e_4d4d                            ; $4d03: $20 $48

    ld h, c                                       ; $4d05: $61
    ld [hl], e                                    ; $4d06: $73
    ld l, b                                       ; $4d07: $68

jr_01e_4d08:
    ld l, c                                       ; $4d08: $69

jr_01e_4d09:
    ld l, l                                       ; $4d09: $6d
    ld l, a                                       ; $4d0a: $6f
    ld [hl], h                                    ; $4d0b: $74
    ld l, a                                       ; $4d0c: $6f
    nop                                           ; $4d0d: $00
    jr nz, jr_01e_4d10                            ; $4d0e: $20 $00

jr_01e_4d10:
    jr nz, jr_01e_4d12                            ; $4d10: $20 $00

jr_01e_4d12:
    jr nz, jr_01e_4d14                            ; $4d12: $20 $00

jr_01e_4d14:
    jr nz, jr_01e_4d16                            ; $4d14: $20 $00

jr_01e_4d16:
    jr nz, jr_01e_4d18                            ; $4d16: $20 $00

jr_01e_4d18:
    jr nz, jr_01e_4d1a                            ; $4d18: $20 $00

jr_01e_4d1a:
    ld c, l                                       ; $4d1a: $4d

jr_01e_4d1b:
    ld [hl], l                                    ; $4d1b: $75
    ld [hl], e                                    ; $4d1c: $73
    ld l, c                                       ; $4d1d: $69
    ld h, e                                       ; $4d1e: $63
    jr nz, jr_01e_4d64                            ; $4d1f: $20 $43

    ld l, a                                       ; $4d21: $6f
    ld l, l                                       ; $4d22: $6d
    ld [hl], b                                    ; $4d23: $70
    ld l, a                                       ; $4d24: $6f
    ld [hl], e                                    ; $4d25: $73
    ld l, c                                       ; $4d26: $69
    ld [hl], h                                    ; $4d27: $74
    ld l, c                                       ; $4d28: $69
    ld l, a                                       ; $4d29: $6f
    ld l, [hl]                                    ; $4d2a: $6e
    nop                                           ; $4d2b: $00
    ld h, $20                                     ; $4d2c: $26 $20
    jr nz, jr_01e_4d71                            ; $4d2e: $20 $41

    ld [hl], d                                    ; $4d30: $72
    ld [hl], d                                    ; $4d31: $72
    ld h, c                                       ; $4d32: $61
    ld l, [hl]                                    ; $4d33: $6e
    ld h, a                                       ; $4d34: $67
    ld h, l                                       ; $4d35: $65
    ld l, l                                       ; $4d36: $6d
    ld h, l                                       ; $4d37: $65
    ld l, [hl]                                    ; $4d38: $6e
    ld [hl], h                                    ; $4d39: $74
    nop                                           ; $4d3a: $00
    jr nz, jr_01e_4d3d                            ; $4d3b: $20 $00

jr_01e_4d3d:
    jr nz, jr_01e_4d5f                            ; $4d3d: $20 $20

    ld c, l                                       ; $4d3f: $4d
    ld l, a                                       ; $4d40: $6f
    ld [hl], h                                    ; $4d41: $74
    ld l, a                                       ; $4d42: $6f
    ld l, c                                       ; $4d43: $69
    jr nz, jr_01e_4d99                            ; $4d44: $20 $53

    ld h, c                                       ; $4d46: $61
    ld l, e                                       ; $4d47: $6b
    ld [hl], l                                    ; $4d48: $75
    ld [hl], d                                    ; $4d49: $72
    ld h, c                                       ; $4d4a: $61
    ld h, d                                       ; $4d4b: $62
    ld h, c                                       ; $4d4c: $61

jr_01e_4d4d:
    jr nz, jr_01e_4d4f                            ; $4d4d: $20 $00

jr_01e_4d4f:
    jr nz, jr_01e_4d51                            ; $4d4f: $20 $00

jr_01e_4d51:
    jr nz, jr_01e_4d53                            ; $4d51: $20 $00

jr_01e_4d53:
    jr nz, jr_01e_4d55                            ; $4d53: $20 $00

jr_01e_4d55:
    jr nz, jr_01e_4d57                            ; $4d55: $20 $00

jr_01e_4d57:
    ld d, e                                       ; $4d57: $53
    ld l, a                                       ; $4d58: $6f
    ld [hl], l                                    ; $4d59: $75
    ld l, [hl]                                    ; $4d5a: $6e
    ld h, h                                       ; $4d5b: $64
    jr nz, @+$47                                  ; $4d5c: $20 $45

    ld h, [hl]                                    ; $4d5e: $66

jr_01e_4d5f:
    ld h, [hl]                                    ; $4d5f: $66
    ld h, l                                       ; $4d60: $65
    ld h, e                                       ; $4d61: $63
    ld [hl], h                                    ; $4d62: $74
    ld [hl], e                                    ; $4d63: $73

jr_01e_4d64:
    nop                                           ; $4d64: $00
    ld h, $20                                     ; $4d65: $26 $20
    jr nz, jr_01e_4dbc                            ; $4d67: $20 $53

    ld l, a                                       ; $4d69: $6f
    ld [hl], l                                    ; $4d6a: $75
    ld l, [hl]                                    ; $4d6b: $6e
    ld h, h                                       ; $4d6c: $64
    jr nz, jr_01e_4dbe                            ; $4d6d: $20 $4f

    ld [hl], b                                    ; $4d6f: $70
    ld h, l                                       ; $4d70: $65

jr_01e_4d71:
    ld [hl], d                                    ; $4d71: $72
    ld h, c                                       ; $4d72: $61
    ld [hl], h                                    ; $4d73: $74
    ld l, a                                       ; $4d74: $6f
    ld [hl], d                                    ; $4d75: $72
    nop                                           ; $4d76: $00
    jr nz, jr_01e_4d79                            ; $4d77: $20 $00

jr_01e_4d79:
    jr nz, jr_01e_4d9b                            ; $4d79: $20 $20

    ld d, h                                       ; $4d7b: $54
    ld h, c                                       ; $4d7c: $61
    ld l, e                                       ; $4d7d: $6b
    ld h, c                                       ; $4d7e: $61
    ld [hl], e                                    ; $4d7f: $73
    ld l, b                                       ; $4d80: $68
    ld l, c                                       ; $4d81: $69
    jr nz, jr_01e_4da4                            ; $4d82: $20 $20

    ld c, l                                       ; $4d84: $4d
    ld l, a                                       ; $4d85: $6f
    ld [hl], d                                    ; $4d86: $72
    ld l, c                                       ; $4d87: $69
    ld l, a                                       ; $4d88: $6f
    nop                                           ; $4d89: $00
    jr nz, jr_01e_4d8c                            ; $4d8a: $20 $00

jr_01e_4d8c:
    jr nz, jr_01e_4d8e                            ; $4d8c: $20 $00

jr_01e_4d8e:
    jr nz, jr_01e_4d90                            ; $4d8e: $20 $00

jr_01e_4d90:
    jr nz, jr_01e_4d92                            ; $4d90: $20 $00

jr_01e_4d92:
    ld d, e                                       ; $4d92: $53
    ld l, a                                       ; $4d93: $6f
    ld [hl], l                                    ; $4d94: $75
    ld l, [hl]                                    ; $4d95: $6e
    ld h, h                                       ; $4d96: $64
    jr nz, jr_01e_4ddd                            ; $4d97: $20 $44

jr_01e_4d99:
    ld l, c                                       ; $4d99: $69
    ld [hl], d                                    ; $4d9a: $72

jr_01e_4d9b:
    ld h, l                                       ; $4d9b: $65
    ld h, e                                       ; $4d9c: $63
    ld [hl], h                                    ; $4d9d: $74
    ld l, a                                       ; $4d9e: $6f
    ld [hl], d                                    ; $4d9f: $72
    ld [hl], e                                    ; $4da0: $73
    nop                                           ; $4da1: $00
    jr nz, jr_01e_4da4                            ; $4da2: $20 $00

jr_01e_4da4:
    jr nz, jr_01e_4dc6                            ; $4da4: $20 $20

    ld c, l                                       ; $4da6: $4d
    ld h, c                                       ; $4da7: $61
    ld [hl], e                                    ; $4da8: $73
    ld h, c                                       ; $4da9: $61
    ld h, c                                       ; $4daa: $61
    ld l, e                                       ; $4dab: $6b
    ld l, c                                       ; $4dac: $69
    jr nz, jr_01e_4e04                            ; $4dad: $20 $55

    ld l, [hl]                                    ; $4daf: $6e
    ld l, a                                       ; $4db0: $6f
    nop                                           ; $4db1: $00
    jr nz, jr_01e_4db4                            ; $4db2: $20 $00

jr_01e_4db4:
    jr nz, jr_01e_4db6                            ; $4db4: $20 $00

jr_01e_4db6:
    jr nz, jr_01e_4db8                            ; $4db6: $20 $00

jr_01e_4db8:
    jr nz, jr_01e_4dba                            ; $4db8: $20 $00

jr_01e_4dba:
    ld d, e                                       ; $4dba: $53
    ld [hl], l                                    ; $4dbb: $75

jr_01e_4dbc:
    ld [hl], b                                    ; $4dbc: $70
    ld h, l                                       ; $4dbd: $65

jr_01e_4dbe:
    ld [hl], d                                    ; $4dbe: $72
    halt                                          ; $4dbf: $76
    ld l, c                                       ; $4dc0: $69
    ld [hl], e                                    ; $4dc1: $73
    ld l, a                                       ; $4dc2: $6f
    ld [hl], d                                    ; $4dc3: $72
    ld [hl], e                                    ; $4dc4: $73
    nop                                           ; $4dc5: $00

jr_01e_4dc6:
    jr nz, jr_01e_4dc8                            ; $4dc6: $20 $00

jr_01e_4dc8:
    jr nz, jr_01e_4dea                            ; $4dc8: $20 $20

    ld c, e                                       ; $4dca: $4b
    ld h, l                                       ; $4dcb: $65
    ld l, [hl]                                    ; $4dcc: $6e
    ld l, d                                       ; $4dcd: $6a
    ld l, c                                       ; $4dce: $69
    jr nz, jr_01e_4e1e                            ; $4dcf: $20 $4d

    ld l, c                                       ; $4dd1: $69
    ld l, e                                       ; $4dd2: $6b
    ld l, c                                       ; $4dd3: $69
    nop                                           ; $4dd4: $00
    jr nz, jr_01e_4df7                            ; $4dd5: $20 $20

    ld d, e                                       ; $4dd7: $53
    ld l, b                                       ; $4dd8: $68
    ld l, c                                       ; $4dd9: $69
    ld h, a                                       ; $4dda: $67
    ld h, l                                       ; $4ddb: $65
    ld [hl], d                                    ; $4ddc: $72

jr_01e_4ddd:
    ld [hl], l                                    ; $4ddd: $75
    jr nz, @+$4f                                  ; $4dde: $20 $4d

    ld l, c                                       ; $4de0: $69
    ld a, c                                       ; $4de1: $79
    ld h, c                                       ; $4de2: $61
    ld l, l                                       ; $4de3: $6d
    ld l, a                                       ; $4de4: $6f
    ld [hl], h                                    ; $4de5: $74
    ld l, a                                       ; $4de6: $6f
    nop                                           ; $4de7: $00
    jr nz, jr_01e_4e0a                            ; $4de8: $20 $20

jr_01e_4dea:
    ld d, h                                       ; $4dea: $54
    ld h, c                                       ; $4deb: $61
    ld l, e                                       ; $4dec: $6b
    ld h, c                                       ; $4ded: $61
    ld [hl], e                                    ; $4dee: $73
    ld l, b                                       ; $4def: $68
    ld l, c                                       ; $4df0: $69
    jr nz, @+$56                                  ; $4df1: $20 $54

    ld h, l                                       ; $4df3: $65
    ld a, d                                       ; $4df4: $7a
    ld [hl], l                                    ; $4df5: $75
    ld l, e                                       ; $4df6: $6b

jr_01e_4df7:
    ld h, c                                       ; $4df7: $61
    nop                                           ; $4df8: $00
    jr nz, jr_01e_4e1b                            ; $4df9: $20 $20

    ld c, e                                       ; $4dfb: $4b
    ld l, a                                       ; $4dfc: $6f
    ld l, d                                       ; $4dfd: $6a
    ld l, c                                       ; $4dfe: $69
    jr nz, jr_01e_4e4c                            ; $4dff: $20 $4b

    ld l, a                                       ; $4e01: $6f
    ld l, [hl]                                    ; $4e02: $6e
    ld h, h                                       ; $4e03: $64

jr_01e_4e04:
    ld l, a                                       ; $4e04: $6f
    nop                                           ; $4e05: $00
    jr nz, jr_01e_4e28                            ; $4e06: $20 $20

    ld c, b                                       ; $4e08: $48
    ld h, c                                       ; $4e09: $61

jr_01e_4e0a:
    ld [hl], d                                    ; $4e0a: $72
    ld [hl], l                                    ; $4e0b: $75
    ld l, e                                       ; $4e0c: $6b
    ld l, c                                       ; $4e0d: $69
    jr nz, jr_01e_4e5b                            ; $4e0e: $20 $4b

    ld l, a                                       ; $4e10: $6f
    ld h, h                                       ; $4e11: $64
    ld h, l                                       ; $4e12: $65
    ld [hl], d                                    ; $4e13: $72
    ld h, c                                       ; $4e14: $61
    nop                                           ; $4e15: $00
    jr nz, jr_01e_4e38                            ; $4e16: $20 $20

    ld d, h                                       ; $4e18: $54
    ld l, a                                       ; $4e19: $6f
    ld [hl], d                                    ; $4e1a: $72

jr_01e_4e1b:
    ld [hl], l                                    ; $4e1b: $75
    jr nz, jr_01e_4e72                            ; $4e1c: $20 $54

jr_01e_4e1e:
    ld h, c                                       ; $4e1e: $61
    ld l, e                                       ; $4e1f: $6b
    ld h, c                                       ; $4e20: $61
    ld l, l                                       ; $4e21: $6d
    ld h, c                                       ; $4e22: $61
    ld [hl], h                                    ; $4e23: $74
    ld [hl], e                                    ; $4e24: $73
    ld [hl], l                                    ; $4e25: $75
    jr nz, jr_01e_4e28                            ; $4e26: $20 $00

jr_01e_4e28:
    jr nz, jr_01e_4e2a                            ; $4e28: $20 $00

jr_01e_4e2a:
    jr nz, jr_01e_4e2c                            ; $4e2a: $20 $00

jr_01e_4e2c:
    jr nz, jr_01e_4e2e                            ; $4e2c: $20 $00

jr_01e_4e2e:
    jr nz, jr_01e_4e30                            ; $4e2e: $20 $00

jr_01e_4e30:
    ld b, c                                       ; $4e30: $41
    ld [hl], e                                    ; $4e31: $73
    ld [hl], e                                    ; $4e32: $73
    ld l, c                                       ; $4e33: $69
    ld [hl], e                                    ; $4e34: $73
    ld [hl], h                                    ; $4e35: $74
    ld h, c                                       ; $4e36: $61
    ld l, [hl]                                    ; $4e37: $6e

jr_01e_4e38:
    ld [hl], h                                    ; $4e38: $74
    jr nz, jr_01e_4e7f                            ; $4e39: $20 $44

    ld l, c                                       ; $4e3b: $69
    ld [hl], d                                    ; $4e3c: $72
    ld h, l                                       ; $4e3d: $65
    ld h, e                                       ; $4e3e: $63
    ld [hl], h                                    ; $4e3f: $74
    ld l, a                                       ; $4e40: $6f
    ld [hl], d                                    ; $4e41: $72
    ld [hl], e                                    ; $4e42: $73
    nop                                           ; $4e43: $00
    jr nz, jr_01e_4e46                            ; $4e44: $20 $00

jr_01e_4e46:
    jr nz, @+$22                                  ; $4e46: $20 $20

    ld e, c                                       ; $4e48: $59
    ld [hl], l                                    ; $4e49: $75
    ld [hl], e                                    ; $4e4a: $73
    ld [hl], l                                    ; $4e4b: $75

jr_01e_4e4c:
    ld l, e                                       ; $4e4c: $6b
    ld h, l                                       ; $4e4d: $65
    jr nz, jr_01e_4ea3                            ; $4e4e: $20 $53

    ld [hl], l                                    ; $4e50: $75
    ld h, a                                       ; $4e51: $67
    ld l, c                                       ; $4e52: $69
    ld l, l                                       ; $4e53: $6d
    ld l, a                                       ; $4e54: $6f
    ld [hl], h                                    ; $4e55: $74
    ld l, a                                       ; $4e56: $6f
    nop                                           ; $4e57: $00
    jr nz, jr_01e_4e7a                            ; $4e58: $20 $20

    ld c, l                                       ; $4e5a: $4d

jr_01e_4e5b:
    ld h, c                                       ; $4e5b: $61
    ld [hl], e                                    ; $4e5c: $73
    ld h, c                                       ; $4e5d: $61
    ld h, c                                       ; $4e5e: $61
    ld l, e                                       ; $4e5f: $6b
    ld l, c                                       ; $4e60: $69
    jr nz, @+$57                                  ; $4e61: $20 $55

    ld l, [hl]                                    ; $4e63: $6e
    ld l, a                                       ; $4e64: $6f
    jr nz, jr_01e_4e67                            ; $4e65: $20 $00

jr_01e_4e67:
    jr nz, jr_01e_4e69                            ; $4e67: $20 $00

jr_01e_4e69:
    jr nz, jr_01e_4e6b                            ; $4e69: $20 $00

jr_01e_4e6b:
    jr nz, jr_01e_4e6d                            ; $4e6b: $20 $00

jr_01e_4e6d:
    jr nz, jr_01e_4e6f                            ; $4e6d: $20 $00

jr_01e_4e6f:
    ld b, h                                       ; $4e6f: $44
    ld l, c                                       ; $4e70: $69
    ld [hl], d                                    ; $4e71: $72

jr_01e_4e72:
    ld h, l                                       ; $4e72: $65
    ld h, e                                       ; $4e73: $63
    ld [hl], h                                    ; $4e74: $74
    ld h, l                                       ; $4e75: $65
    ld h, h                                       ; $4e76: $64
    jr nz, jr_01e_4ebb                            ; $4e77: $20 $42

    ld a, c                                       ; $4e79: $79

jr_01e_4e7a:
    nop                                           ; $4e7a: $00
    jr nz, jr_01e_4e7d                            ; $4e7b: $20 $00

jr_01e_4e7d:
    jr nz, jr_01e_4e9f                            ; $4e7d: $20 $20

jr_01e_4e7f:
    ld e, c                                       ; $4e7f: $59
    ld h, c                                       ; $4e80: $61
    ld [hl], e                                    ; $4e81: $73
    ld [hl], l                                    ; $4e82: $75
    ld l, b                                       ; $4e83: $68
    ld l, c                                       ; $4e84: $69
    ld [hl], d                                    ; $4e85: $72
    ld l, a                                       ; $4e86: $6f
    jr nz, jr_01e_4edd                            ; $4e87: $20 $54

    ld h, c                                       ; $4e89: $61
    ld h, a                                       ; $4e8a: $67
    ld [hl], l                                    ; $4e8b: $75
    ld h, e                                       ; $4e8c: $63
    ld l, b                                       ; $4e8d: $68
    ld l, c                                       ; $4e8e: $69
    jr nz, jr_01e_4e91                            ; $4e8f: $20 $00

jr_01e_4e91:
    jr nz, jr_01e_4e93                            ; $4e91: $20 $00

jr_01e_4e93:
    jr nz, jr_01e_4e95                            ; $4e93: $20 $00

jr_01e_4e95:
    jr nz, jr_01e_4e97                            ; $4e95: $20 $00

jr_01e_4e97:
    jr nz, jr_01e_4e99                            ; $4e97: $20 $00

jr_01e_4e99:
    ld d, b                                       ; $4e99: $50
    ld [hl], d                                    ; $4e9a: $72
    ld l, a                                       ; $4e9b: $6f
    ld h, h                                       ; $4e9c: $64
    ld [hl], l                                    ; $4e9d: $75
    ld h, e                                       ; $4e9e: $63

jr_01e_4e9f:
    ld h, l                                       ; $4e9f: $65
    ld h, h                                       ; $4ea0: $64
    jr nz, jr_01e_4ee5                            ; $4ea1: $20 $42

jr_01e_4ea3:
    ld a, c                                       ; $4ea3: $79
    nop                                           ; $4ea4: $00
    jr nz, jr_01e_4ea7                            ; $4ea5: $20 $00

jr_01e_4ea7:
    jr nz, jr_01e_4ec9                            ; $4ea7: $20 $20

    ld d, e                                       ; $4ea9: $53
    ld l, b                                       ; $4eaa: $68
    ld l, c                                       ; $4eab: $69
    ld l, [hl]                                    ; $4eac: $6e
    ld l, d                                       ; $4ead: $6a
    ld l, c                                       ; $4eae: $69
    jr nz, jr_01e_4ef9                            ; $4eaf: $20 $48

    ld h, c                                       ; $4eb1: $61
    ld [hl], h                                    ; $4eb2: $74
    ld h, c                                       ; $4eb3: $61
    ld l, [hl]                                    ; $4eb4: $6e
    ld l, a                                       ; $4eb5: $6f
    nop                                           ; $4eb6: $00
    jr nz, jr_01e_4ed9                            ; $4eb7: $20 $20

    ld c, b                                       ; $4eb9: $48
    ld l, c                                       ; $4eba: $69

jr_01e_4ebb:
    ld [hl], d                                    ; $4ebb: $72
    ld l, a                                       ; $4ebc: $6f
    ld a, c                                       ; $4ebd: $79
    ld [hl], l                                    ; $4ebe: $75
    ld l, e                                       ; $4ebf: $6b
    ld l, c                                       ; $4ec0: $69
    jr nz, jr_01e_4f17                            ; $4ec1: $20 $54

    ld h, c                                       ; $4ec3: $61
    ld l, e                                       ; $4ec4: $6b
    ld h, c                                       ; $4ec5: $61
    ld l, b                                       ; $4ec6: $68
    ld h, c                                       ; $4ec7: $61
    ld [hl], e                                    ; $4ec8: $73

jr_01e_4ec9:
    ld l, b                                       ; $4ec9: $68
    ld l, c                                       ; $4eca: $69
    nop                                           ; $4ecb: $00
    jr nz, jr_01e_4eee                            ; $4ecc: $20 $20

    ld d, e                                       ; $4ece: $53
    ld l, b                                       ; $4ecf: $68
    ld [hl], l                                    ; $4ed0: $75
    ld h, a                                       ; $4ed1: $67
    ld l, a                                       ; $4ed2: $6f
    jr nz, jr_01e_4f29                            ; $4ed3: $20 $54

    ld h, c                                       ; $4ed5: $61
    ld l, e                                       ; $4ed6: $6b
    ld h, c                                       ; $4ed7: $61
    ld l, b                                       ; $4ed8: $68

jr_01e_4ed9:
    ld h, c                                       ; $4ed9: $61
    ld [hl], e                                    ; $4eda: $73
    ld l, b                                       ; $4edb: $68
    ld l, c                                       ; $4edc: $69

jr_01e_4edd:
    nop                                           ; $4edd: $00
    jr nz, jr_01e_4f00                            ; $4ede: $20 $20

    ld c, b                                       ; $4ee0: $48
    ld l, c                                       ; $4ee1: $69
    ld h, h                                       ; $4ee2: $64
    ld h, l                                       ; $4ee3: $65
    ld [hl], h                                    ; $4ee4: $74

jr_01e_4ee5:
    ld l, a                                       ; $4ee5: $6f
    ld [hl], e                                    ; $4ee6: $73
    ld l, b                                       ; $4ee7: $68
    ld l, c                                       ; $4ee8: $69
    jr nz, jr_01e_4f30                            ; $4ee9: $20 $45

    ld l, [hl]                                    ; $4eeb: $6e
    ld h, h                                       ; $4eec: $64
    ld l, a                                       ; $4eed: $6f

jr_01e_4eee:
    nop                                           ; $4eee: $00
    jr nz, jr_01e_4ef1                            ; $4eef: $20 $00

jr_01e_4ef1:
    jr nz, jr_01e_4ef3                            ; $4ef1: $20 $00

jr_01e_4ef3:
    jr nz, jr_01e_4ef5                            ; $4ef3: $20 $00

jr_01e_4ef5:
    jr nz, jr_01e_4ef7                            ; $4ef5: $20 $00

jr_01e_4ef7:
    ld b, l                                       ; $4ef7: $45
    ld a, b                                       ; $4ef8: $78

jr_01e_4ef9:
    ld h, l                                       ; $4ef9: $65
    ld h, e                                       ; $4efa: $63
    ld [hl], l                                    ; $4efb: $75
    ld [hl], h                                    ; $4efc: $74
    ld l, c                                       ; $4efd: $69
    halt                                          ; $4efe: $76
    ld h, l                                       ; $4eff: $65

jr_01e_4f00:
    jr nz, jr_01e_4f52                            ; $4f00: $20 $50

    ld [hl], d                                    ; $4f02: $72
    ld l, a                                       ; $4f03: $6f
    ld h, h                                       ; $4f04: $64
    ld [hl], l                                    ; $4f05: $75
    ld h, e                                       ; $4f06: $63
    ld h, l                                       ; $4f07: $65
    ld [hl], d                                    ; $4f08: $72
    nop                                           ; $4f09: $00
    jr nz, jr_01e_4f0c                            ; $4f0a: $20 $00

jr_01e_4f0c:
    jr nz, jr_01e_4f2e                            ; $4f0c: $20 $20

    ld c, b                                       ; $4f0e: $48
    ld l, c                                       ; $4f0f: $69
    ld [hl], d                                    ; $4f10: $72
    ld l, a                                       ; $4f11: $6f
    ld [hl], e                                    ; $4f12: $73
    ld l, b                                       ; $4f13: $68
    ld l, c                                       ; $4f14: $69
    jr nz, jr_01e_4f70                            ; $4f15: $20 $59

jr_01e_4f17:
    ld h, c                                       ; $4f17: $61
    ld l, l                                       ; $4f18: $6d
    ld h, c                                       ; $4f19: $61
    ld [hl], l                                    ; $4f1a: $75
    ld h, e                                       ; $4f1b: $63
    ld l, b                                       ; $4f1c: $68
    ld l, c                                       ; $4f1d: $69
    nop                                           ; $4f1e: $00
    jr nz, jr_01e_4f21                            ; $4f1f: $20 $00

jr_01e_4f21:
    jr nz, jr_01e_4f23                            ; $4f21: $20 $00

jr_01e_4f23:
    jr nz, jr_01e_4f25                            ; $4f23: $20 $00

jr_01e_4f25:
    jr nz, jr_01e_4f27                            ; $4f25: $20 $00

jr_01e_4f27:
    ld b, a                                       ; $4f27: $47
    ld [hl], d                                    ; $4f28: $72

jr_01e_4f29:
    ld h, c                                       ; $4f29: $61
    ld [hl], b                                    ; $4f2a: $70
    ld l, b                                       ; $4f2b: $68
    ld l, c                                       ; $4f2c: $69
    ld h, e                                       ; $4f2d: $63

jr_01e_4f2e:
    jr nz, jr_01e_4f83                            ; $4f2e: $20 $53

jr_01e_4f30:
    ld [hl], l                                    ; $4f30: $75
    ld [hl], b                                    ; $4f31: $70
    ld [hl], b                                    ; $4f32: $70
    ld l, a                                       ; $4f33: $6f
    ld [hl], d                                    ; $4f34: $72
    ld [hl], h                                    ; $4f35: $74
    nop                                           ; $4f36: $00
    jr nz, jr_01e_4f39                            ; $4f37: $20 $00

jr_01e_4f39:
    jr nz, @+$22                                  ; $4f39: $20 $20

    ld e, c                                       ; $4f3b: $59
    ld l, a                                       ; $4f3c: $6f
    ld [hl], l                                    ; $4f3d: $75
    ld l, c                                       ; $4f3e: $69
    ld h, e                                       ; $4f3f: $63
    ld l, b                                       ; $4f40: $68
    ld l, c                                       ; $4f41: $69
    jr nz, jr_01e_4f8f                            ; $4f42: $20 $4b

    ld l, a                                       ; $4f44: $6f
    ld [hl], h                                    ; $4f45: $74
    ld h, c                                       ; $4f46: $61
    ld h, d                                       ; $4f47: $62
    ld h, l                                       ; $4f48: $65
    nop                                           ; $4f49: $00
    jr nz, jr_01e_4f6c                            ; $4f4a: $20 $20

    ld e, c                                       ; $4f4c: $59
    ld [hl], l                                    ; $4f4d: $75
    ld [hl], e                                    ; $4f4e: $73
    ld [hl], l                                    ; $4f4f: $75
    ld l, e                                       ; $4f50: $6b
    ld h, l                                       ; $4f51: $65

jr_01e_4f52:
    jr nz, jr_01e_4fa2                            ; $4f52: $20 $4e

    ld h, c                                       ; $4f54: $61
    ld l, e                                       ; $4f55: $6b
    ld h, c                                       ; $4f56: $61
    ld l, [hl]                                    ; $4f57: $6e
    ld l, a                                       ; $4f58: $6f
    nop                                           ; $4f59: $00
    jr nz, jr_01e_4f5c                            ; $4f5a: $20 $00

jr_01e_4f5c:
    jr nz, jr_01e_4f5e                            ; $4f5c: $20 $00

jr_01e_4f5e:
    jr nz, jr_01e_4f60                            ; $4f5e: $20 $00

jr_01e_4f60:
    jr nz, jr_01e_4f62                            ; $4f60: $20 $00

jr_01e_4f62:
    ld b, c                                       ; $4f62: $41
    ld [hl], d                                    ; $4f63: $72
    ld [hl], h                                    ; $4f64: $74
    jr nz, jr_01e_4fbe                            ; $4f65: $20 $57

    ld l, a                                       ; $4f67: $6f
    ld [hl], d                                    ; $4f68: $72
    ld l, e                                       ; $4f69: $6b
    jr nz, jr_01e_4fb0                            ; $4f6a: $20 $44

jr_01e_4f6c:
    ld h, l                                       ; $4f6c: $65
    ld [hl], e                                    ; $4f6d: $73
    ld l, c                                       ; $4f6e: $69
    ld h, a                                       ; $4f6f: $67

jr_01e_4f70:
    ld l, [hl]                                    ; $4f70: $6e
    ld h, l                                       ; $4f71: $65
    ld [hl], d                                    ; $4f72: $72
    nop                                           ; $4f73: $00
    jr nz, jr_01e_4f76                            ; $4f74: $20 $00

jr_01e_4f76:
    jr nz, @+$22                                  ; $4f76: $20 $20

    ld d, d                                       ; $4f78: $52
    ld a, c                                       ; $4f79: $79
    ld [hl], l                                    ; $4f7a: $75
    ld l, d                                       ; $4f7b: $6a
    ld l, c                                       ; $4f7c: $69
    jr nz, @+$4a                                  ; $4f7d: $20 $48

    ld h, c                                       ; $4f7f: $61
    ld h, a                                       ; $4f80: $67
    ld l, c                                       ; $4f81: $69
    ld l, [hl]                                    ; $4f82: $6e

jr_01e_4f83:
    ld l, a                                       ; $4f83: $6f
    nop                                           ; $4f84: $00
    jr nz, jr_01e_4fa7                            ; $4f85: $20 $20

    ld e, c                                       ; $4f87: $59
    ld h, c                                       ; $4f88: $61
    ld [hl], e                                    ; $4f89: $73
    ld [hl], l                                    ; $4f8a: $75
    ld l, a                                       ; $4f8b: $6f
    jr nz, jr_01e_4fd7                            ; $4f8c: $20 $49

    ld l, [hl]                                    ; $4f8e: $6e

jr_01e_4f8f:
    ld l, a                                       ; $4f8f: $6f
    ld [hl], l                                    ; $4f90: $75
    ld h, l                                       ; $4f91: $65
    nop                                           ; $4f92: $00
    jr nz, jr_01e_4f95                            ; $4f93: $20 $00

jr_01e_4f95:
    jr nz, jr_01e_4f97                            ; $4f95: $20 $00

jr_01e_4f97:
    jr nz, jr_01e_4f99                            ; $4f97: $20 $00

jr_01e_4f99:
    jr nz, jr_01e_4f9b                            ; $4f99: $20 $00

jr_01e_4f9b:
    ld b, e                                       ; $4f9b: $43
    ld l, a                                       ; $4f9c: $6f
    ld l, a                                       ; $4f9d: $6f
    ld [hl], d                                    ; $4f9e: $72
    ld h, h                                       ; $4f9f: $64
    ld l, c                                       ; $4fa0: $69
    ld l, [hl]                                    ; $4fa1: $6e

jr_01e_4fa2:
    ld h, c                                       ; $4fa2: $61
    ld [hl], h                                    ; $4fa3: $74
    ld l, a                                       ; $4fa4: $6f
    ld [hl], d                                    ; $4fa5: $72
    ld [hl], e                                    ; $4fa6: $73

jr_01e_4fa7:
    nop                                           ; $4fa7: $00
    jr nz, jr_01e_4faa                            ; $4fa8: $20 $00

jr_01e_4faa:
    jr nz, jr_01e_4fcc                            ; $4faa: $20 $20

    ld d, h                                       ; $4fac: $54
    ld l, a                                       ; $4fad: $6f
    ld [hl], e                                    ; $4fae: $73
    ld l, b                                       ; $4faf: $68

jr_01e_4fb0:
    ld l, c                                       ; $4fb0: $69
    ld l, b                                       ; $4fb1: $68
    ld h, c                                       ; $4fb2: $61
    ld [hl], d                                    ; $4fb3: $72
    ld [hl], l                                    ; $4fb4: $75
    jr nz, jr_01e_5000                            ; $4fb5: $20 $49

    ld a, d                                       ; $4fb7: $7a
    ld [hl], l                                    ; $4fb8: $75
    ld l, [hl]                                    ; $4fb9: $6e
    ld l, a                                       ; $4fba: $6f
    nop                                           ; $4fbb: $00
    jr nz, jr_01e_4fde                            ; $4fbc: $20 $20

jr_01e_4fbe:
    ld c, l                                       ; $4fbe: $4d
    ld h, c                                       ; $4fbf: $61
    ld [hl], e                                    ; $4fc0: $73
    ld h, c                                       ; $4fc1: $61
    ld l, [hl]                                    ; $4fc2: $6e
    ld l, a                                       ; $4fc3: $6f
    ld [hl], d                                    ; $4fc4: $72
    ld l, c                                       ; $4fc5: $69
    jr nz, jr_01e_501f                            ; $4fc6: $20 $57

    ld h, c                                       ; $4fc8: $61
    ld l, e                                       ; $4fc9: $6b
    ld h, l                                       ; $4fca: $65
    nop                                           ; $4fcb: $00

jr_01e_4fcc:
    jr nz, jr_01e_4fce                            ; $4fcc: $20 $00

jr_01e_4fce:
    jr nz, jr_01e_4fd0                            ; $4fce: $20 $00

jr_01e_4fd0:
    jr nz, jr_01e_4fd2                            ; $4fd0: $20 $00

jr_01e_4fd2:
    jr nz, jr_01e_4fd4                            ; $4fd2: $20 $00

jr_01e_4fd4:
    ld c, h                                       ; $4fd4: $4c
    ld l, a                                       ; $4fd5: $6f
    ld h, e                                       ; $4fd6: $63

jr_01e_4fd7:
    ld h, c                                       ; $4fd7: $61
    ld l, h                                       ; $4fd8: $6c
    ld l, c                                       ; $4fd9: $69
    ld a, d                                       ; $4fda: $7a
    ld h, c                                       ; $4fdb: $61
    ld [hl], h                                    ; $4fdc: $74
    ld l, c                                       ; $4fdd: $69

jr_01e_4fde:
    ld l, a                                       ; $4fde: $6f
    ld l, [hl]                                    ; $4fdf: $6e
    nop                                           ; $4fe0: $00
    jr nz, jr_01e_4fe3                            ; $4fe1: $20 $00

jr_01e_4fe3:
    jr nz, jr_01e_5005                            ; $4fe3: $20 $20

    ld c, l                                       ; $4fe5: $4d
    ld l, c                                       ; $4fe6: $69
    ld h, e                                       ; $4fe7: $63
    ld l, b                                       ; $4fe8: $68
    ld h, l                                       ; $4fe9: $65
    ld l, h                                       ; $4fea: $6c
    ld l, h                                       ; $4feb: $6c
    ld h, l                                       ; $4fec: $65
    jr nz, @+$52                                  ; $4fed: $20 $50

    ld l, a                                       ; $4fef: $6f
    ld [hl], a                                    ; $4ff0: $77
    ld h, l                                       ; $4ff1: $65
    ld [hl], d                                    ; $4ff2: $72
    ld [hl], e                                    ; $4ff3: $73
    nop                                           ; $4ff4: $00
    jr nz, @+$22                                  ; $4ff5: $20 $20

    ld b, d                                       ; $4ff7: $42
    ld l, c                                       ; $4ff8: $69
    ld l, h                                       ; $4ff9: $6c
    ld l, h                                       ; $4ffa: $6c
    jr nz, @+$56                                  ; $4ffb: $20 $54

    ld [hl], d                                    ; $4ffd: $72
    ld l, c                                       ; $4ffe: $69
    ld l, [hl]                                    ; $4fff: $6e

jr_01e_5000:
    ld h, l                                       ; $5000: $65
    ld l, [hl]                                    ; $5001: $6e
    nop                                           ; $5002: $00
    jr nz, jr_01e_5025                            ; $5003: $20 $20

jr_01e_5005:
    ld b, a                                       ; $5005: $47
    ld [hl], d                                    ; $5006: $72
    ld h, l                                       ; $5007: $65
    ld h, a                                       ; $5008: $67
    jr nz, jr_01e_505d                            ; $5009: $20 $52

    ld l, c                                       ; $500b: $69
    ld h, e                                       ; $500c: $63
    ld l, b                                       ; $500d: $68
    ld h, c                                       ; $500e: $61
    ld [hl], d                                    ; $500f: $72
    ld h, h                                       ; $5010: $64
    ld [hl], e                                    ; $5011: $73
    ld l, a                                       ; $5012: $6f
    ld l, [hl]                                    ; $5013: $6e
    jr nz, jr_01e_5016                            ; $5014: $20 $00

jr_01e_5016:
    jr nz, jr_01e_5018                            ; $5016: $20 $00

jr_01e_5018:
    jr nz, jr_01e_501a                            ; $5018: $20 $00

jr_01e_501a:
    jr nz, jr_01e_501c                            ; $501a: $20 $00

jr_01e_501c:
    jr nz, jr_01e_501e                            ; $501c: $20 $00

jr_01e_501e:
    ld d, e                                       ; $501e: $53

jr_01e_501f:
    ld [hl], b                                    ; $501f: $70
    ld h, l                                       ; $5020: $65
    ld h, e                                       ; $5021: $63
    ld l, c                                       ; $5022: $69
    ld h, c                                       ; $5023: $61
    ld l, h                                       ; $5024: $6c

jr_01e_5025:
    jr nz, @+$56                                  ; $5025: $20 $54

    ld l, b                                       ; $5027: $68
    ld h, c                                       ; $5028: $61
    ld l, [hl]                                    ; $5029: $6e
    ld l, e                                       ; $502a: $6b
    ld [hl], e                                    ; $502b: $73
    jr nz, jr_01e_50a2                            ; $502c: $20 $74

    ld l, a                                       ; $502e: $6f
    nop                                           ; $502f: $00
    jr nz, jr_01e_5032                            ; $5030: $20 $00

jr_01e_5032:
    jr nz, jr_01e_5054                            ; $5032: $20 $20

    ld c, [hl]                                    ; $5034: $4e
    ld l, c                                       ; $5035: $69
    ld l, [hl]                                    ; $5036: $6e
    ld [hl], h                                    ; $5037: $74
    ld h, l                                       ; $5038: $65
    ld l, [hl]                                    ; $5039: $6e
    ld h, h                                       ; $503a: $64
    ld l, a                                       ; $503b: $6f
    jr nz, jr_01e_5090                            ; $503c: $20 $52

    ld h, $44                                     ; $503e: $26 $44
    ld sp, $2000                                  ; $5040: $31 $00 $20
    jr nz, jr_01e_5065                            ; $5043: $20 $20

    jr nz, jr_01e_5067                            ; $5045: $20 $20

    jr nz, jr_01e_508a                            ; $5047: $20 $41

    ld [hl], d                                    ; $5049: $72
    ld [hl], h                                    ; $504a: $74
    jr nz, jr_01e_50c4                            ; $504b: $20 $77

    ld l, a                                       ; $504d: $6f
    ld [hl], d                                    ; $504e: $72
    ld l, e                                       ; $504f: $6b
    jr nz, jr_01e_50c6                            ; $5050: $20 $74

    ld h, l                                       ; $5052: $65
    ld h, c                                       ; $5053: $61

jr_01e_5054:
    ld l, l                                       ; $5054: $6d
    nop                                           ; $5055: $00
    jr nz, jr_01e_5078                            ; $5056: $20 $20

    ld c, e                                       ; $5058: $4b
    ld h, l                                       ; $5059: $65
    ld l, c                                       ; $505a: $69
    ld l, e                                       ; $505b: $6b
    ld l, a                                       ; $505c: $6f

jr_01e_505d:
    jr nz, jr_01e_50b3                            ; $505d: $20 $54

    ld h, c                                       ; $505f: $61
    ld l, l                                       ; $5060: $6d
    ld [hl], l                                    ; $5061: $75
    ld [hl], d                                    ; $5062: $72
    ld h, c                                       ; $5063: $61
    nop                                           ; $5064: $00

jr_01e_5065:
    jr nz, jr_01e_5087                            ; $5065: $20 $20

jr_01e_5067:
    ld c, e                                       ; $5067: $4b
    ld h, c                                       ; $5068: $61
    ld a, d                                       ; $5069: $7a
    ld [hl], l                                    ; $506a: $75
    ld l, b                                       ; $506b: $68
    ld l, c                                       ; $506c: $69
    ld [hl], d                                    ; $506d: $72
    ld l, a                                       ; $506e: $6f
    jr nz, jr_01e_50be                            ; $506f: $20 $4d

    ld h, c                                       ; $5071: $61
    ld [hl], h                                    ; $5072: $74
    ld [hl], e                                    ; $5073: $73
    ld [hl], l                                    ; $5074: $75
    ld l, l                                       ; $5075: $6d
    ld l, a                                       ; $5076: $6f
    ld [hl], h                                    ; $5077: $74

jr_01e_5078:
    ld l, a                                       ; $5078: $6f
    nop                                           ; $5079: $00
    jr nz, jr_01e_509c                            ; $507a: $20 $20

    ld c, b                                       ; $507c: $48
    ld l, c                                       ; $507d: $69
    ld [hl], d                                    ; $507e: $72
    ld l, a                                       ; $507f: $6f
    ld l, e                                       ; $5080: $6b
    ld l, a                                       ; $5081: $6f
    jr nz, @+$55                                  ; $5082: $20 $53

    ld [hl], l                                    ; $5084: $75
    ld h, a                                       ; $5085: $67
    ld l, c                                       ; $5086: $69

jr_01e_5087:
    ld l, [hl]                                    ; $5087: $6e
    ld l, a                                       ; $5088: $6f
    nop                                           ; $5089: $00

jr_01e_508a:
    jr nz, jr_01e_50ac                            ; $508a: $20 $20

    ld b, c                                       ; $508c: $41
    ld [hl], h                                    ; $508d: $74
    ld [hl], e                                    ; $508e: $73
    ld [hl], l                                    ; $508f: $75

jr_01e_5090:
    ld [hl], e                                    ; $5090: $73
    ld l, b                                       ; $5091: $68
    ld l, c                                       ; $5092: $69
    jr nz, jr_01e_50e4                            ; $5093: $20 $4f

    ld l, e                                       ; $5095: $6b
    ld h, c                                       ; $5096: $61
    ld h, h                                       ; $5097: $64
    ld h, c                                       ; $5098: $61
    nop                                           ; $5099: $00
    jr nz, @+$22                                  ; $509a: $20 $20

jr_01e_509c:
    ld c, [hl]                                    ; $509c: $4e
    ld c, a                                       ; $509d: $4f
    ld b, c                                       ; $509e: $41
    jr nz, jr_01e_50e5                            ; $509f: $20 $44

    ld h, l                                       ; $50a1: $65

jr_01e_50a2:
    ld h, d                                       ; $50a2: $62
    ld [hl], l                                    ; $50a3: $75
    ld h, a                                       ; $50a4: $67
    jr nz, jr_01e_50fa                            ; $50a5: $20 $53

    ld [hl], h                                    ; $50a7: $74
    ld h, c                                       ; $50a8: $61
    ld h, [hl]                                    ; $50a9: $66
    ld h, [hl]                                    ; $50aa: $66
    nop                                           ; $50ab: $00

jr_01e_50ac:
    jr nz, @+$22                                  ; $50ac: $20 $20

    ld c, b                                       ; $50ae: $48
    ld l, c                                       ; $50af: $69
    ld [hl], d                                    ; $50b0: $72
    ld l, a                                       ; $50b1: $6f
    ld [hl], e                                    ; $50b2: $73

jr_01e_50b3:
    ld l, b                                       ; $50b3: $68
    ld l, c                                       ; $50b4: $69
    jr nz, jr_01e_510a                            ; $50b5: $20 $53

    ld h, c                                       ; $50b7: $61
    ld [hl], h                                    ; $50b8: $74
    ld l, a                                       ; $50b9: $6f
    nop                                           ; $50ba: $00
    jr nz, jr_01e_50dd                            ; $50bb: $20 $20

    ld d, e                                       ; $50bd: $53

jr_01e_50be:
    ld [hl], l                                    ; $50be: $75
    ld [hl], b                                    ; $50bf: $70
    ld h, l                                       ; $50c0: $65
    ld [hl], d                                    ; $50c1: $72
    jr nz, jr_01e_5111                            ; $50c2: $20 $4d

jr_01e_50c4:
    ld h, c                                       ; $50c4: $61
    ld [hl], d                                    ; $50c5: $72

jr_01e_50c6:
    ld l, c                                       ; $50c6: $69
    ld l, a                                       ; $50c7: $6f
    nop                                           ; $50c8: $00
    jr nz, jr_01e_50eb                            ; $50c9: $20 $20

    jr nz, @+$22                                  ; $50cb: $20 $20

    jr nz, jr_01e_50ef                            ; $50cd: $20 $20

    jr nz, jr_01e_50f1                            ; $50cf: $20 $20

    jr nz, @+$45                                  ; $50d1: $20 $43

    ld l, h                                       ; $50d3: $6c
    ld [hl], l                                    ; $50d4: $75
    ld h, d                                       ; $50d5: $62
    jr nz, jr_01e_514b                            ; $50d6: $20 $73

    ld [hl], h                                    ; $50d8: $74
    ld h, c                                       ; $50d9: $61
    ld h, [hl]                                    ; $50da: $66
    ld h, [hl]                                    ; $50db: $66
    nop                                           ; $50dc: $00

jr_01e_50dd:
    jr nz, jr_01e_50ff                            ; $50dd: $20 $20

    ld d, e                                       ; $50df: $53
    ld l, b                                       ; $50e0: $68
    ld l, c                                       ; $50e1: $69
    ld l, [hl]                                    ; $50e2: $6e
    ld l, c                                       ; $50e3: $69

jr_01e_50e4:
    ld h, e                                       ; $50e4: $63

jr_01e_50e5:
    ld l, b                                       ; $50e5: $68
    ld l, c                                       ; $50e6: $69
    jr nz, @+$46                                  ; $50e7: $20 $44

    ld l, a                                       ; $50e9: $6f
    ld l, c                                       ; $50ea: $69

jr_01e_50eb:
    nop                                           ; $50eb: $00
    jr nz, jr_01e_510e                            ; $50ec: $20 $20

    ld c, a                                       ; $50ee: $4f

jr_01e_50ef:
    ld [hl], e                                    ; $50ef: $73
    ld h, c                                       ; $50f0: $61

jr_01e_50f1:
    ld l, l                                       ; $50f1: $6d
    ld [hl], l                                    ; $50f2: $75
    jr nz, jr_01e_5140                            ; $50f3: $20 $4b

    ld [hl], l                                    ; $50f5: $75
    ld l, [hl]                                    ; $50f6: $6e
    ld l, c                                       ; $50f7: $69
    ld l, l                                       ; $50f8: $6d
    ld h, c                                       ; $50f9: $61

jr_01e_50fa:
    ld [hl], e                                    ; $50fa: $73
    ld h, c                                       ; $50fb: $61
    nop                                           ; $50fc: $00
    jr nz, jr_01e_511f                            ; $50fd: $20 $20

jr_01e_50ff:
    ld c, [hl]                                    ; $50ff: $4e
    ld l, a                                       ; $5100: $6f
    ld [hl], d                                    ; $5101: $72
    ld l, c                                       ; $5102: $69
    ld a, c                                       ; $5103: $79
    ld [hl], l                                    ; $5104: $75
    ld l, e                                       ; $5105: $6b
    ld l, c                                       ; $5106: $69
    jr nz, jr_01e_5157                            ; $5107: $20 $4e

    ld h, c                                       ; $5109: $61

jr_01e_510a:
    ld l, e                                       ; $510a: $6b
    ld h, c                                       ; $510b: $61
    ld h, a                                       ; $510c: $67
    ld h, c                                       ; $510d: $61

jr_01e_510e:
    ld l, l                                       ; $510e: $6d
    ld l, c                                       ; $510f: $69
    nop                                           ; $5110: $00

jr_01e_5111:
    jr nz, jr_01e_5113                            ; $5111: $20 $00

jr_01e_5113:
    jr nz, jr_01e_5115                            ; $5113: $20 $00

jr_01e_5115:
    jr nz, jr_01e_5117                            ; $5115: $20 $00

jr_01e_5117:
    jr nz, jr_01e_5119                            ; $5117: $20 $00

jr_01e_5119:
    jr nz, jr_01e_511b                            ; $5119: $20 $00

jr_01e_511b:
    jr nz, jr_01e_511d                            ; $511b: $20 $00

jr_01e_511d:
    jr nz, jr_01e_511f                            ; $511d: $20 $00

jr_01e_511f:
    jr nz, jr_01e_5121                            ; $511f: $20 $00

jr_01e_5121:
    jr nz, jr_01e_5123                            ; $5121: $20 $00

jr_01e_5123:
    jr nz, jr_01e_5125                            ; $5123: $20 $00

jr_01e_5125:
    ld b, e                                       ; $5125: $43
    ld [hl], d                                    ; $5126: $72
    ld h, l                                       ; $5127: $65
    ld h, c                                       ; $5128: $61
    ld [hl], h                                    ; $5129: $74
    ld h, l                                       ; $512a: $65
    ld h, h                                       ; $512b: $64
    jr nz, jr_01e_5170                            ; $512c: $20 $42

    ld a, c                                       ; $512e: $79
    nop                                           ; $512f: $00
    jr nz, jr_01e_5132                            ; $5130: $20 $00

jr_01e_5132:
    jr nz, jr_01e_5154                            ; $5132: $20 $20

    ld b, e                                       ; $5134: $43
    ld b, c                                       ; $5135: $41
    ld c, l                                       ; $5136: $4d
    ld b, l                                       ; $5137: $45
    ld c, h                                       ; $5138: $4c
    ld c, a                                       ; $5139: $4f
    ld d, h                                       ; $513a: $54
    jr nz, jr_01e_5180                            ; $513b: $20 $43

    ld l, a                                       ; $513d: $6f
    ld l, $2c                                     ; $513e: $2e $2c

jr_01e_5140:
    ld c, h                                       ; $5140: $4c
    ld [hl], h                                    ; $5141: $74
    ld h, h                                       ; $5142: $64
    ld l, $00                                     ; $5143: $2e $00
    jr nz, jr_01e_5147                            ; $5145: $20 $00

jr_01e_5147:
    jr nz, @+$22                                  ; $5147: $20 $20

    ld c, l                                       ; $5149: $4d
    ld c, a                                       ; $514a: $4f

jr_01e_514b:
    ld c, [hl]                                    ; $514b: $4e
    ld b, l                                       ; $514c: $45
    ld b, a                                       ; $514d: $47
    ld c, c                                       ; $514e: $49
    jr nz, jr_01e_5194                            ; $514f: $20 $43

    ld l, a                                       ; $5151: $6f
    ld [hl], d                                    ; $5152: $72
    ld [hl], b                                    ; $5153: $70

jr_01e_5154:
    ld l, a                                       ; $5154: $6f
    ld [hl], d                                    ; $5155: $72
    ld h, c                                       ; $5156: $61

jr_01e_5157:
    ld [hl], h                                    ; $5157: $74
    ld l, c                                       ; $5158: $69
    ld l, a                                       ; $5159: $6f
    ld l, [hl]                                    ; $515a: $6e
    nop                                           ; $515b: $00
    jr nz, jr_01e_515e                            ; $515c: $20 $00

jr_01e_515e:
    jr nz, jr_01e_5180                            ; $515e: $20 $20

    ld c, [hl]                                    ; $5160: $4e
    ld c, c                                       ; $5161: $49
    ld c, [hl]                                    ; $5162: $4e
    ld d, h                                       ; $5163: $54
    ld b, l                                       ; $5164: $45
    ld c, [hl]                                    ; $5165: $4e
    ld b, h                                       ; $5166: $44
    ld c, a                                       ; $5167: $4f
    jr nz, jr_01e_51ad                            ; $5168: $20 $43

    ld l, a                                       ; $516a: $6f
    ld l, $2c                                     ; $516b: $2e $2c
    ld c, h                                       ; $516d: $4c
    ld [hl], h                                    ; $516e: $74
    ld h, h                                       ; $516f: $64

jr_01e_5170:
    ld l, $00                                     ; $5170: $2e $00
    jr nz, jr_01e_5174                            ; $5172: $20 $00

jr_01e_5174:
    inc hl                                        ; $5174: $23
    nop                                           ; $5175: $00
    jr nz, jr_01e_5178                            ; $5176: $20 $00

jr_01e_5178:
    jr nz, @+$22                                  ; $5178: $20 $20

    jr nz, @+$22                                  ; $517a: $20 $20

    ld c, l                                       ; $517c: $4d
    ld b, c                                       ; $517d: $41
    ld d, d                                       ; $517e: $52
    ld c, c                                       ; $517f: $49

jr_01e_5180:
    ld c, a                                       ; $5180: $4f
    jr nz, jr_01e_51ca                            ; $5181: $20 $47

    ld c, a                                       ; $5183: $4f
    ld c, h                                       ; $5184: $4c
    ld b, [hl]                                    ; $5185: $46
    jr nz, jr_01e_5188                            ; $5186: $20 $00

jr_01e_5188:
    jr nz, jr_01e_518a                            ; $5188: $20 $00

jr_01e_518a:
    jr nz, jr_01e_51ac                            ; $518a: $20 $20

    jr nz, jr_01e_51ae                            ; $518c: $20 $20

    jr nz, jr_01e_51b0                            ; $518e: $20 $20

    jr nz, @+$55                                  ; $5190: $20 $53

    ld d, h                                       ; $5192: $54
    ld b, c                                       ; $5193: $41

jr_01e_5194:
    ld b, [hl]                                    ; $5194: $46
    ld b, [hl]                                    ; $5195: $46
    nop                                           ; $5196: $00
    jr nz, jr_01e_5199                            ; $5197: $20 $00

jr_01e_5199:
    jr nz, jr_01e_519b                            ; $5199: $20 $00

jr_01e_519b:
    jr nz, jr_01e_519d                            ; $519b: $20 $00

jr_01e_519d:
    jr nz, jr_01e_519f                            ; $519d: $20 $00

jr_01e_519f:
    jr nz, jr_01e_51a1                            ; $519f: $20 $00

jr_01e_51a1:
    jr nz, jr_01e_51a3                            ; $51a1: $20 $00

jr_01e_51a3:
    jr nz, jr_01e_51a5                            ; $51a3: $20 $00

jr_01e_51a5:
    ld d, e                                       ; $51a5: $53
    ld d, l                                       ; $51a6: $55
    ld b, d                                       ; $51a7: $42
    ld d, e                                       ; $51a8: $53
    ld b, e                                       ; $51a9: $43
    ld d, d                                       ; $51aa: $52
    ld c, c                                       ; $51ab: $49

jr_01e_51ac:
    ld d, b                                       ; $51ac: $50

jr_01e_51ad:
    ld d, h                                       ; $51ad: $54

jr_01e_51ae:
    jr nz, jr_01e_51d0                            ; $51ae: $20 $20

jr_01e_51b0:
    ld h, $00                                     ; $51b0: $26 $00
    ld c, h                                       ; $51b2: $4c
    ld b, l                                       ; $51b3: $45
    ld b, c                                       ; $51b4: $41
    ld b, h                                       ; $51b5: $44
    jr nz, jr_01e_51ff                            ; $51b6: $20 $47

    ld b, c                                       ; $51b8: $41
    ld c, l                                       ; $51b9: $4d
    ld b, l                                       ; $51ba: $45
    jr nz, jr_01e_5201                            ; $51bb: $20 $44

    ld b, l                                       ; $51bd: $45
    ld d, e                                       ; $51be: $53
    ld c, c                                       ; $51bf: $49
    ld b, a                                       ; $51c0: $47
    ld c, [hl]                                    ; $51c1: $4e
    ld b, l                                       ; $51c2: $45
    ld d, d                                       ; $51c3: $52
    ld d, e                                       ; $51c4: $53
    nop                                           ; $51c5: $00
    jr nz, jr_01e_51c8                            ; $51c6: $20 $00

jr_01e_51c8:
    jr nz, jr_01e_51ea                            ; $51c8: $20 $20

jr_01e_51ca:
    ld c, b                                       ; $51ca: $48
    ld c, c                                       ; $51cb: $49
    ld d, d                                       ; $51cc: $52
    ld c, a                                       ; $51cd: $4f
    ld e, c                                       ; $51ce: $59
    ld d, l                                       ; $51cf: $55

jr_01e_51d0:
    ld c, e                                       ; $51d0: $4b
    ld c, c                                       ; $51d1: $49
    jr nz, @+$56                                  ; $51d2: $20 $54

    ld b, c                                       ; $51d4: $41
    ld c, e                                       ; $51d5: $4b
    ld b, c                                       ; $51d6: $41
    ld c, b                                       ; $51d7: $48
    ld b, c                                       ; $51d8: $41
    ld d, e                                       ; $51d9: $53
    ld c, b                                       ; $51da: $48
    ld c, c                                       ; $51db: $49
    nop                                           ; $51dc: $00
    jr nz, jr_01e_51ff                            ; $51dd: $20 $20

    ld d, e                                       ; $51df: $53
    ld c, b                                       ; $51e0: $48
    ld d, l                                       ; $51e1: $55
    ld b, a                                       ; $51e2: $47
    ld c, a                                       ; $51e3: $4f
    jr nz, jr_01e_523a                            ; $51e4: $20 $54

    ld b, c                                       ; $51e6: $41
    ld c, e                                       ; $51e7: $4b
    ld b, c                                       ; $51e8: $41
    ld c, b                                       ; $51e9: $48

jr_01e_51ea:
    ld b, c                                       ; $51ea: $41
    ld d, e                                       ; $51eb: $53
    ld c, b                                       ; $51ec: $48
    ld c, c                                       ; $51ed: $49
    nop                                           ; $51ee: $00
    jr nz, jr_01e_51f1                            ; $51ef: $20 $00

jr_01e_51f1:
    jr nz, jr_01e_51f3                            ; $51f1: $20 $00

jr_01e_51f3:
    jr nz, jr_01e_51f5                            ; $51f3: $20 $00

jr_01e_51f5:
    jr nz, jr_01e_51f7                            ; $51f5: $20 $00

jr_01e_51f7:
    jr nz, jr_01e_51f9                            ; $51f7: $20 $00

jr_01e_51f9:
    jr nz, jr_01e_51fb                            ; $51f9: $20 $00

jr_01e_51fb:
    ld b, a                                       ; $51fb: $47
    ld b, c                                       ; $51fc: $41
    ld c, l                                       ; $51fd: $4d
    ld b, l                                       ; $51fe: $45

jr_01e_51ff:
    jr nz, jr_01e_5245                            ; $51ff: $20 $44

jr_01e_5201:
    ld b, l                                       ; $5201: $45
    ld d, e                                       ; $5202: $53
    ld c, c                                       ; $5203: $49
    ld b, a                                       ; $5204: $47
    ld c, [hl]                                    ; $5205: $4e
    jr nz, jr_01e_525b                            ; $5206: $20 $53

    ld d, h                                       ; $5208: $54
    ld b, c                                       ; $5209: $41
    ld b, [hl]                                    ; $520a: $46
    ld b, [hl]                                    ; $520b: $46
    nop                                           ; $520c: $00
    jr nz, jr_01e_520f                            ; $520d: $20 $00

jr_01e_520f:
    jr nz, jr_01e_5231                            ; $520f: $20 $20

    ld d, e                                       ; $5211: $53
    ld c, b                                       ; $5212: $48
    ld d, l                                       ; $5213: $55
    ld c, d                                       ; $5214: $4a
    ld c, c                                       ; $5215: $49
    jr nz, jr_01e_526b                            ; $5216: $20 $53

    ld c, b                                       ; $5218: $48
    ld c, c                                       ; $5219: $49
    ld c, l                                       ; $521a: $4d
    ld c, c                                       ; $521b: $49
    ld e, d                                       ; $521c: $5a
    ld d, l                                       ; $521d: $55
    nop                                           ; $521e: $00
    jr nz, @+$22                                  ; $521f: $20 $20

    ld e, c                                       ; $5221: $59
    ld d, l                                       ; $5222: $55
    ld d, e                                       ; $5223: $53
    ld d, l                                       ; $5224: $55
    ld c, e                                       ; $5225: $4b
    ld b, l                                       ; $5226: $45
    jr nz, jr_01e_527c                            ; $5227: $20 $53

    ld d, l                                       ; $5229: $55
    ld b, a                                       ; $522a: $47
    ld c, c                                       ; $522b: $49
    ld c, l                                       ; $522c: $4d
    ld c, a                                       ; $522d: $4f
    ld d, h                                       ; $522e: $54
    ld c, a                                       ; $522f: $4f
    nop                                           ; $5230: $00

jr_01e_5231:
    jr nz, jr_01e_5253                            ; $5231: $20 $20

    ld b, c                                       ; $5233: $41
    ld e, c                                       ; $5234: $59
    ld d, l                                       ; $5235: $55
    ld c, l                                       ; $5236: $4d
    ld d, l                                       ; $5237: $55
    jr nz, jr_01e_528d                            ; $5238: $20 $53

jr_01e_523a:
    ld c, b                                       ; $523a: $48
    ld c, c                                       ; $523b: $49
    ld c, [hl]                                    ; $523c: $4e
    ld b, h                                       ; $523d: $44
    ld c, a                                       ; $523e: $4f
    nop                                           ; $523f: $00
    jr nz, jr_01e_5262                            ; $5240: $20 $20

    ld d, h                                       ; $5242: $54
    ld b, c                                       ; $5243: $41
    ld c, e                                       ; $5244: $4b

jr_01e_5245:
    ld b, c                                       ; $5245: $41
    ld d, e                                       ; $5246: $53
    ld c, b                                       ; $5247: $48
    ld c, c                                       ; $5248: $49
    jr nz, jr_01e_5296                            ; $5249: $20 $4b

    ld c, c                                       ; $524b: $49
    ld d, h                                       ; $524c: $54
    ld b, c                                       ; $524d: $41
    ld c, l                                       ; $524e: $4d
    ld d, l                                       ; $524f: $55
    ld d, d                                       ; $5250: $52
    ld b, c                                       ; $5251: $41
    nop                                           ; $5252: $00

jr_01e_5253:
    jr nz, jr_01e_5275                            ; $5253: $20 $20

    ld c, e                                       ; $5255: $4b
    ld b, l                                       ; $5256: $45
    ld c, [hl]                                    ; $5257: $4e
    ld d, h                                       ; $5258: $54
    ld b, c                                       ; $5259: $41
    ld d, d                                       ; $525a: $52

jr_01e_525b:
    ld c, a                                       ; $525b: $4f
    jr nz, jr_01e_52b1                            ; $525c: $20 $53

    ld b, c                                       ; $525e: $41
    ld c, e                                       ; $525f: $4b
    ld c, a                                       ; $5260: $4f
    ld d, l                                       ; $5261: $55

jr_01e_5262:
    nop                                           ; $5262: $00
    jr nz, jr_01e_5265                            ; $5263: $20 $00

jr_01e_5265:
    jr nz, jr_01e_5267                            ; $5265: $20 $00

jr_01e_5267:
    jr nz, jr_01e_5269                            ; $5267: $20 $00

jr_01e_5269:
    jr nz, jr_01e_526b                            ; $5269: $20 $00

jr_01e_526b:
    jr nz, jr_01e_526d                            ; $526b: $20 $00

jr_01e_526d:
    jr nz, jr_01e_526f                            ; $526d: $20 $00

jr_01e_526f:
    ld c, h                                       ; $526f: $4c
    ld b, l                                       ; $5270: $45
    ld b, c                                       ; $5271: $41
    ld b, h                                       ; $5272: $44
    jr nz, jr_01e_52c5                            ; $5273: $20 $50

jr_01e_5275:
    ld d, d                                       ; $5275: $52
    ld c, a                                       ; $5276: $4f
    ld b, a                                       ; $5277: $47
    ld d, d                                       ; $5278: $52
    ld b, c                                       ; $5279: $41
    ld c, l                                       ; $527a: $4d
    ld c, l                                       ; $527b: $4d

jr_01e_527c:
    ld b, l                                       ; $527c: $45
    ld d, d                                       ; $527d: $52
    nop                                           ; $527e: $00
    jr nz, jr_01e_5281                            ; $527f: $20 $00

jr_01e_5281:
    jr nz, jr_01e_52a3                            ; $5281: $20 $20

    ld e, c                                       ; $5283: $59
    ld b, c                                       ; $5284: $41
    ld d, e                                       ; $5285: $53
    ld d, l                                       ; $5286: $55
    ld c, b                                       ; $5287: $48
    ld c, c                                       ; $5288: $49
    ld d, d                                       ; $5289: $52
    ld c, a                                       ; $528a: $4f
    jr nz, jr_01e_52e1                            ; $528b: $20 $54

jr_01e_528d:
    ld b, c                                       ; $528d: $41
    ld b, a                                       ; $528e: $47
    ld d, l                                       ; $528f: $55
    ld b, e                                       ; $5290: $43
    ld c, b                                       ; $5291: $48
    ld c, c                                       ; $5292: $49
    nop                                           ; $5293: $00
    jr nz, jr_01e_5296                            ; $5294: $20 $00

jr_01e_5296:
    jr nz, jr_01e_5298                            ; $5296: $20 $00

jr_01e_5298:
    jr nz, jr_01e_529a                            ; $5298: $20 $00

jr_01e_529a:
    ld d, b                                       ; $529a: $50
    ld d, d                                       ; $529b: $52
    ld c, a                                       ; $529c: $4f
    ld b, a                                       ; $529d: $47
    ld d, d                                       ; $529e: $52
    ld b, c                                       ; $529f: $41
    ld c, l                                       ; $52a0: $4d
    ld c, l                                       ; $52a1: $4d
    ld c, c                                       ; $52a2: $49

jr_01e_52a3:
    ld c, [hl]                                    ; $52a3: $4e
    ld b, a                                       ; $52a4: $47
    jr nz, jr_01e_52fa                            ; $52a5: $20 $53

    ld d, h                                       ; $52a7: $54
    ld b, c                                       ; $52a8: $41
    ld b, [hl]                                    ; $52a9: $46
    ld b, [hl]                                    ; $52aa: $46
    nop                                           ; $52ab: $00
    jr nz, jr_01e_52ae                            ; $52ac: $20 $00

jr_01e_52ae:
    jr nz, jr_01e_52d0                            ; $52ae: $20 $20

    ld d, h                                       ; $52b0: $54

jr_01e_52b1:
    ld b, c                                       ; $52b1: $41
    ld c, e                                       ; $52b2: $4b
    ld b, l                                       ; $52b3: $45
    ld d, e                                       ; $52b4: $53
    ld c, b                                       ; $52b5: $48
    ld c, c                                       ; $52b6: $49
    jr nz, jr_01e_5307                            ; $52b7: $20 $4e

    ld c, a                                       ; $52b9: $4f
    ld c, b                                       ; $52ba: $48
    ld b, c                                       ; $52bb: $41
    ld d, d                                       ; $52bc: $52
    ld b, c                                       ; $52bd: $41
    nop                                           ; $52be: $00
    jr nz, jr_01e_52e1                            ; $52bf: $20 $20

    ld e, c                                       ; $52c1: $59
    ld d, l                                       ; $52c2: $55
    ld d, h                                       ; $52c3: $54
    ld b, c                                       ; $52c4: $41

jr_01e_52c5:
    ld c, e                                       ; $52c5: $4b
    ld b, c                                       ; $52c6: $41
    jr nz, jr_01e_5322                            ; $52c7: $20 $59

    ld b, c                                       ; $52c9: $41
    ld c, l                                       ; $52ca: $4d
    ld b, c                                       ; $52cb: $41
    ld c, l                                       ; $52cc: $4d
    ld c, a                                       ; $52cd: $4f
    ld d, h                                       ; $52ce: $54
    ld c, a                                       ; $52cf: $4f

jr_01e_52d0:
    nop                                           ; $52d0: $00
    jr nz, jr_01e_52f3                            ; $52d1: $20 $20

    ld b, c                                       ; $52d3: $41
    ld c, e                                       ; $52d4: $4b
    ld c, c                                       ; $52d5: $49
    ld c, e                                       ; $52d6: $4b
    ld c, a                                       ; $52d7: $4f
    jr nz, jr_01e_532d                            ; $52d8: $20 $53

    ld b, c                                       ; $52da: $41
    ld d, h                                       ; $52db: $54
    ld c, a                                       ; $52dc: $4f
    nop                                           ; $52dd: $00
    jr nz, jr_01e_5300                            ; $52de: $20 $20

    ld c, e                                       ; $52e0: $4b

jr_01e_52e1:
    ld b, l                                       ; $52e1: $45
    ld c, [hl]                                    ; $52e2: $4e
    ld c, d                                       ; $52e3: $4a
    ld c, c                                       ; $52e4: $49
    jr nz, jr_01e_5335                            ; $52e5: $20 $4e

    ld d, l                                       ; $52e7: $55
    ld c, l                                       ; $52e8: $4d
    ld b, c                                       ; $52e9: $41
    ld e, c                                       ; $52ea: $59
    ld b, c                                       ; $52eb: $41
    nop                                           ; $52ec: $00
    jr nz, jr_01e_530f                            ; $52ed: $20 $20

    ld c, e                                       ; $52ef: $4b
    ld b, c                                       ; $52f0: $41
    ld c, a                                       ; $52f1: $4f
    ld d, d                                       ; $52f2: $52

jr_01e_52f3:
    ld d, l                                       ; $52f3: $55
    jr nz, jr_01e_5349                            ; $52f4: $20 $53

    ld c, b                                       ; $52f6: $48
    ld c, c                                       ; $52f7: $49
    ld c, l                                       ; $52f8: $4d
    ld b, c                                       ; $52f9: $41

jr_01e_52fa:
    ld b, h                                       ; $52fa: $44
    ld b, c                                       ; $52fb: $41
    nop                                           ; $52fc: $00
    jr nz, jr_01e_531f                            ; $52fd: $20 $20

    ld c, [hl]                                    ; $52ff: $4e

jr_01e_5300:
    ld c, a                                       ; $5300: $4f
    ld d, d                                       ; $5301: $52
    ld c, c                                       ; $5302: $49
    ld c, a                                       ; $5303: $4f
    jr nz, jr_01e_5359                            ; $5304: $20 $53

    ld c, b                                       ; $5306: $48

jr_01e_5307:
    ld c, c                                       ; $5307: $49
    ld c, l                                       ; $5308: $4d
    ld c, c                                       ; $5309: $49
    ld e, d                                       ; $530a: $5a
    ld d, l                                       ; $530b: $55
    nop                                           ; $530c: $00
    jr nz, @+$22                                  ; $530d: $20 $20

jr_01e_530f:
    ld c, b                                       ; $530f: $48
    ld b, c                                       ; $5310: $41
    ld d, d                                       ; $5311: $52
    ld d, l                                       ; $5312: $55
    ld c, e                                       ; $5313: $4b
    ld c, c                                       ; $5314: $49
    jr nz, @+$4d                                  ; $5315: $20 $4b

    ld c, a                                       ; $5317: $4f
    ld b, h                                       ; $5318: $44
    ld b, l                                       ; $5319: $45
    ld d, d                                       ; $531a: $52
    ld b, c                                       ; $531b: $41
    nop                                           ; $531c: $00
    jr nz, jr_01e_533f                            ; $531d: $20 $20

jr_01e_531f:
    ld d, h                                       ; $531f: $54
    ld c, a                                       ; $5320: $4f
    ld d, d                                       ; $5321: $52

jr_01e_5322:
    ld d, l                                       ; $5322: $55
    jr nz, jr_01e_5379                            ; $5323: $20 $54

    ld b, c                                       ; $5325: $41
    ld c, e                                       ; $5326: $4b
    ld b, c                                       ; $5327: $41
    ld c, l                                       ; $5328: $4d
    ld b, c                                       ; $5329: $41
    ld d, h                                       ; $532a: $54
    ld d, e                                       ; $532b: $53
    ld d, l                                       ; $532c: $55

jr_01e_532d:
    nop                                           ; $532d: $00
    jr nz, jr_01e_5330                            ; $532e: $20 $00

jr_01e_5330:
    jr nz, jr_01e_5332                            ; $5330: $20 $00

jr_01e_5332:
    jr nz, jr_01e_5334                            ; $5332: $20 $00

jr_01e_5334:
    ld d, e                                       ; $5334: $53

jr_01e_5335:
    ld d, l                                       ; $5335: $55
    ld d, b                                       ; $5336: $50
    ld d, b                                       ; $5337: $50
    ld c, a                                       ; $5338: $4f
    ld d, d                                       ; $5339: $52
    ld d, h                                       ; $533a: $54
    jr nz, jr_01e_538d                            ; $533b: $20 $50

    ld d, d                                       ; $533d: $52
    ld c, a                                       ; $533e: $4f

jr_01e_533f:
    ld b, a                                       ; $533f: $47
    ld d, d                                       ; $5340: $52
    ld b, c                                       ; $5341: $41
    ld c, l                                       ; $5342: $4d
    ld c, l                                       ; $5343: $4d
    ld c, c                                       ; $5344: $49
    ld c, [hl]                                    ; $5345: $4e
    ld b, a                                       ; $5346: $47
    jr nz, jr_01e_5349                            ; $5347: $20 $00

jr_01e_5349:
    jr nz, jr_01e_534b                            ; $5349: $20 $00

jr_01e_534b:
    jr nz, jr_01e_536d                            ; $534b: $20 $20

    ld d, b                                       ; $534d: $50
    ld l, $45                                     ; $534e: $2e $45
    ld l, $4a                                     ; $5350: $2e $4a
    ld b, c                                       ; $5352: $41
    ld d, d                                       ; $5353: $52
    ld b, l                                       ; $5354: $45
    ld d, h                                       ; $5355: $54
    ld c, b                                       ; $5356: $48
    jr nz, jr_01e_53a1                            ; $5357: $20 $48

jr_01e_5359:
    ld b, l                                       ; $5359: $45
    ld c, c                                       ; $535a: $49
    ld c, [hl]                                    ; $535b: $4e
    nop                                           ; $535c: $00
    jr nz, jr_01e_535f                            ; $535d: $20 $00

jr_01e_535f:
    jr nz, jr_01e_5361                            ; $535f: $20 $00

jr_01e_5361:
    jr nz, jr_01e_5363                            ; $5361: $20 $00

jr_01e_5363:
    jr nz, jr_01e_5365                            ; $5363: $20 $00

jr_01e_5365:
    jr nz, jr_01e_5367                            ; $5365: $20 $00

jr_01e_5367:
    jr nz, jr_01e_5369                            ; $5367: $20 $00

jr_01e_5369:
    ld c, a                                       ; $5369: $4f
    ld d, d                                       ; $536a: $52
    ld c, c                                       ; $536b: $49
    ld b, a                                       ; $536c: $47

jr_01e_536d:
    ld c, c                                       ; $536d: $49
    ld c, [hl]                                    ; $536e: $4e
    ld b, c                                       ; $536f: $41
    ld c, h                                       ; $5370: $4c
    jr nz, jr_01e_53b6                            ; $5371: $20 $43

    ld c, b                                       ; $5373: $48
    ld b, c                                       ; $5374: $41
    ld d, d                                       ; $5375: $52
    ld b, c                                       ; $5376: $41
    ld b, e                                       ; $5377: $43
    ld d, h                                       ; $5378: $54

jr_01e_5379:
    ld b, l                                       ; $5379: $45
    ld d, d                                       ; $537a: $52
    ld d, e                                       ; $537b: $53
    nop                                           ; $537c: $00
    jr nz, jr_01e_537f                            ; $537d: $20 $00

jr_01e_537f:
    jr nz, jr_01e_53a1                            ; $537f: $20 $20

    ld d, e                                       ; $5381: $53
    ld c, b                                       ; $5382: $48
    ld c, c                                       ; $5383: $49
    ld b, a                                       ; $5384: $47
    ld b, l                                       ; $5385: $45
    ld d, d                                       ; $5386: $52
    ld d, l                                       ; $5387: $55
    jr nz, jr_01e_53d7                            ; $5388: $20 $4d

    ld c, c                                       ; $538a: $49
    ld e, c                                       ; $538b: $59
    ld b, c                                       ; $538c: $41

jr_01e_538d:
    ld c, l                                       ; $538d: $4d
    ld c, a                                       ; $538e: $4f
    ld d, h                                       ; $538f: $54
    ld c, a                                       ; $5390: $4f
    nop                                           ; $5391: $00
    jr nz, jr_01e_53b4                            ; $5392: $20 $20

    ld c, b                                       ; $5394: $48
    ld c, c                                       ; $5395: $49
    ld d, d                                       ; $5396: $52
    ld c, a                                       ; $5397: $4f
    ld c, d                                       ; $5398: $4a
    ld c, c                                       ; $5399: $49
    jr nz, jr_01e_53e7                            ; $539a: $20 $4b

    ld c, c                                       ; $539c: $49
    ld e, c                                       ; $539d: $59
    ld c, a                                       ; $539e: $4f
    ld d, h                                       ; $539f: $54
    ld b, c                                       ; $53a0: $41

jr_01e_53a1:
    ld c, e                                       ; $53a1: $4b
    ld b, l                                       ; $53a2: $45
    nop                                           ; $53a3: $00
    jr nz, jr_01e_53c6                            ; $53a4: $20 $20

    ld c, l                                       ; $53a6: $4d
    ld c, c                                       ; $53a7: $49
    ld d, h                                       ; $53a8: $54
    ld d, e                                       ; $53a9: $53
    ld d, l                                       ; $53aa: $55
    ld d, d                                       ; $53ab: $52
    ld d, l                                       ; $53ac: $55
    jr nz, jr_01e_53f5                            ; $53ad: $20 $46

    ld d, l                                       ; $53af: $55
    ld c, e                                       ; $53b0: $4b
    ld d, l                                       ; $53b1: $55
    ld c, l                                       ; $53b2: $4d
    ld c, a                                       ; $53b3: $4f

jr_01e_53b4:
    ld d, h                                       ; $53b4: $54
    ld c, a                                       ; $53b5: $4f

jr_01e_53b6:
    nop                                           ; $53b6: $00
    jr nz, jr_01e_53b9                            ; $53b7: $20 $00

jr_01e_53b9:
    jr nz, jr_01e_53bb                            ; $53b9: $20 $00

jr_01e_53bb:
    jr nz, jr_01e_53bd                            ; $53bb: $20 $00

jr_01e_53bd:
    jr nz, jr_01e_53bf                            ; $53bd: $20 $00

jr_01e_53bf:
    ld c, h                                       ; $53bf: $4c
    ld b, l                                       ; $53c0: $45
    ld b, c                                       ; $53c1: $41
    ld b, h                                       ; $53c2: $44
    jr nz, jr_01e_540c                            ; $53c3: $20 $47

    ld d, d                                       ; $53c5: $52

jr_01e_53c6:
    ld b, c                                       ; $53c6: $41
    ld d, b                                       ; $53c7: $50
    ld c, b                                       ; $53c8: $48
    ld c, c                                       ; $53c9: $49
    ld b, e                                       ; $53ca: $43
    ld d, e                                       ; $53cb: $53
    nop                                           ; $53cc: $00
    jr nz, jr_01e_53cf                            ; $53cd: $20 $00

jr_01e_53cf:
    jr nz, jr_01e_53f1                            ; $53cf: $20 $20

    ld c, l                                       ; $53d1: $4d
    ld c, c                                       ; $53d2: $49
    ld d, h                                       ; $53d3: $54
    ld d, e                                       ; $53d4: $53
    ld d, l                                       ; $53d5: $55
    ld d, d                                       ; $53d6: $52

jr_01e_53d7:
    ld d, l                                       ; $53d7: $55
    jr nz, jr_01e_5420                            ; $53d8: $20 $46

    ld d, l                                       ; $53da: $55
    ld c, e                                       ; $53db: $4b
    ld d, l                                       ; $53dc: $55
    ld c, l                                       ; $53dd: $4d
    ld c, a                                       ; $53de: $4f
    ld d, h                                       ; $53df: $54
    ld c, a                                       ; $53e0: $4f
    nop                                           ; $53e1: $00
    jr nz, jr_01e_5404                            ; $53e2: $20 $20

    ld c, l                                       ; $53e4: $4d
    ld b, c                                       ; $53e5: $41
    ld d, e                                       ; $53e6: $53

jr_01e_53e7:
    ld b, c                                       ; $53e7: $41
    ld d, e                                       ; $53e8: $53
    ld c, b                                       ; $53e9: $48
    ld c, c                                       ; $53ea: $49
    jr nz, jr_01e_543a                            ; $53eb: $20 $4d

    ld c, c                                       ; $53ed: $49
    ld c, e                                       ; $53ee: $4b
    ld b, c                                       ; $53ef: $41
    ld c, l                                       ; $53f0: $4d

jr_01e_53f1:
    ld c, c                                       ; $53f1: $49
    nop                                           ; $53f2: $00
    jr nz, jr_01e_5415                            ; $53f3: $20 $20

jr_01e_53f5:
    ld b, c                                       ; $53f5: $41
    ld c, e                                       ; $53f6: $4b
    ld c, c                                       ; $53f7: $49
    ld c, b                                       ; $53f8: $48
    ld c, c                                       ; $53f9: $49
    ld d, h                                       ; $53fa: $54
    ld c, a                                       ; $53fb: $4f
    jr nz, jr_01e_5449                            ; $53fc: $20 $4b

    ld c, c                                       ; $53fe: $49
    ld c, l                                       ; $53ff: $4d
    ld d, l                                       ; $5400: $55
    ld d, d                                       ; $5401: $52
    ld b, c                                       ; $5402: $41
    nop                                           ; $5403: $00

jr_01e_5404:
    jr nz, jr_01e_5406                            ; $5404: $20 $00

jr_01e_5406:
    jr nz, jr_01e_5408                            ; $5406: $20 $00

jr_01e_5408:
    jr nz, jr_01e_540a                            ; $5408: $20 $00

jr_01e_540a:
    ld b, a                                       ; $540a: $47
    ld d, d                                       ; $540b: $52

jr_01e_540c:
    ld b, c                                       ; $540c: $41
    ld d, b                                       ; $540d: $50
    ld c, b                                       ; $540e: $48
    ld c, c                                       ; $540f: $49
    ld b, e                                       ; $5410: $43
    ld d, e                                       ; $5411: $53
    jr nz, jr_01e_5467                            ; $5412: $20 $53

    ld d, h                                       ; $5414: $54

jr_01e_5415:
    ld b, c                                       ; $5415: $41
    ld b, [hl]                                    ; $5416: $46
    ld b, [hl]                                    ; $5417: $46
    nop                                           ; $5418: $00
    jr nz, jr_01e_541b                            ; $5419: $20 $00

jr_01e_541b:
    jr nz, jr_01e_543d                            ; $541b: $20 $20

    ld b, [hl]                                    ; $541d: $46
    ld d, l                                       ; $541e: $55
    ld c, l                                       ; $541f: $4d

jr_01e_5420:
    ld c, c                                       ; $5420: $49
    ld c, b                                       ; $5421: $48
    ld c, c                                       ; $5422: $49
    ld b, h                                       ; $5423: $44
    ld b, l                                       ; $5424: $45
    jr nz, jr_01e_5468                            ; $5425: $20 $41

    ld c, a                                       ; $5427: $4f
    ld c, e                                       ; $5428: $4b
    ld c, c                                       ; $5429: $49
    nop                                           ; $542a: $00
    jr nz, jr_01e_544d                            ; $542b: $20 $20

    ld c, l                                       ; $542d: $4d
    ld c, c                                       ; $542e: $49
    ld d, h                                       ; $542f: $54
    ld d, e                                       ; $5430: $53
    ld d, l                                       ; $5431: $55
    ld c, l                                       ; $5432: $4d
    ld b, c                                       ; $5433: $41
    ld d, e                                       ; $5434: $53
    ld b, c                                       ; $5435: $41
    jr nz, jr_01e_5485                            ; $5436: $20 $4d

    ld d, l                                       ; $5438: $55
    ld d, d                                       ; $5439: $52

jr_01e_543a:
    ld b, c                                       ; $543a: $41
    ld c, c                                       ; $543b: $49
    ld d, e                                       ; $543c: $53

jr_01e_543d:
    ld c, b                                       ; $543d: $48
    ld c, c                                       ; $543e: $49
    nop                                           ; $543f: $00
    jr nz, jr_01e_5462                            ; $5440: $20 $20

    ld d, e                                       ; $5442: $53
    ld c, b                                       ; $5443: $48
    ld c, c                                       ; $5444: $49
    ld b, a                                       ; $5445: $47
    ld b, l                                       ; $5446: $45
    ld c, e                                       ; $5447: $4b
    ld c, c                                       ; $5448: $49

jr_01e_5449:
    jr nz, jr_01e_5496                            ; $5449: $20 $4b

    ld c, c                                       ; $544b: $49
    ld c, l                                       ; $544c: $4d

jr_01e_544d:
    ld d, l                                       ; $544d: $55
    ld d, d                                       ; $544e: $52
    ld b, c                                       ; $544f: $41
    nop                                           ; $5450: $00
    jr nz, jr_01e_5473                            ; $5451: $20 $20

    ld c, d                                       ; $5453: $4a
    ld d, l                                       ; $5454: $55
    ld c, [hl]                                    ; $5455: $4e
    ld c, c                                       ; $5456: $49
    ld b, e                                       ; $5457: $43
    ld c, b                                       ; $5458: $48
    ld c, c                                       ; $5459: $49
    jr nz, jr_01e_54ab                            ; $545a: $20 $4f

    ld b, e                                       ; $545c: $43
    ld c, b                                       ; $545d: $48
    ld c, c                                       ; $545e: $49
    ld b, c                                       ; $545f: $41
    ld c, c                                       ; $5460: $49
    nop                                           ; $5461: $00

jr_01e_5462:
    jr nz, jr_01e_5484                            ; $5462: $20 $20

    ld c, b                                       ; $5464: $48
    ld c, c                                       ; $5465: $49
    ld d, d                                       ; $5466: $52

jr_01e_5467:
    ld c, a                                       ; $5467: $4f

jr_01e_5468:
    ld d, h                                       ; $5468: $54
    ld c, a                                       ; $5469: $4f
    jr nz, jr_01e_54ba                            ; $546a: $20 $4e

    ld b, c                                       ; $546c: $41
    ld c, e                                       ; $546d: $4b
    ld b, c                                       ; $546e: $41
    ld d, e                                       ; $546f: $53
    ld c, b                                       ; $5470: $48
    ld c, c                                       ; $5471: $49
    ld c, l                                       ; $5472: $4d

jr_01e_5473:
    ld b, c                                       ; $5473: $41
    nop                                           ; $5474: $00
    jr nz, jr_01e_5497                            ; $5475: $20 $20

    ld c, l                                       ; $5477: $4d
    ld b, c                                       ; $5478: $41
    ld d, e                                       ; $5479: $53
    ld b, c                                       ; $547a: $41
    ld e, c                                       ; $547b: $59
    ld d, l                                       ; $547c: $55
    ld c, e                                       ; $547d: $4b
    ld c, c                                       ; $547e: $49
    jr nz, @+$4a                                  ; $547f: $20 $48

    ld b, c                                       ; $5481: $41
    ld d, e                                       ; $5482: $53
    ld c, b                                       ; $5483: $48

jr_01e_5484:
    ld c, c                                       ; $5484: $49

jr_01e_5485:
    ld c, l                                       ; $5485: $4d
    ld c, a                                       ; $5486: $4f
    ld d, h                                       ; $5487: $54
    ld c, a                                       ; $5488: $4f
    nop                                           ; $5489: $00
    jr nz, jr_01e_548c                            ; $548a: $20 $00

jr_01e_548c:
    jr nz, jr_01e_548e                            ; $548c: $20 $00

jr_01e_548e:
    jr nz, jr_01e_5490                            ; $548e: $20 $00

jr_01e_5490:
    jr nz, jr_01e_5492                            ; $5490: $20 $00

jr_01e_5492:
    jr nz, jr_01e_5494                            ; $5492: $20 $00

jr_01e_5494:
    jr nz, jr_01e_5496                            ; $5494: $20 $00

jr_01e_5496:
    ld c, l                                       ; $5496: $4d

jr_01e_5497:
    ld d, l                                       ; $5497: $55
    ld d, e                                       ; $5498: $53
    ld c, c                                       ; $5499: $49
    ld b, e                                       ; $549a: $43
    jr nz, jr_01e_54e0                            ; $549b: $20 $43

    ld c, a                                       ; $549d: $4f
    ld c, l                                       ; $549e: $4d
    ld d, b                                       ; $549f: $50
    ld c, a                                       ; $54a0: $4f
    ld d, e                                       ; $54a1: $53
    ld b, l                                       ; $54a2: $45
    jr nz, jr_01e_54c5                            ; $54a3: $20 $20

    ld h, $00                                     ; $54a5: $26 $00
    ld b, c                                       ; $54a7: $41
    ld d, d                                       ; $54a8: $52
    ld d, d                                       ; $54a9: $52
    ld b, c                                       ; $54aa: $41

jr_01e_54ab:
    ld c, [hl]                                    ; $54ab: $4e
    ld b, a                                       ; $54ac: $47
    ld b, l                                       ; $54ad: $45
    ld c, l                                       ; $54ae: $4d
    ld b, l                                       ; $54af: $45
    ld c, [hl]                                    ; $54b0: $4e
    ld d, h                                       ; $54b1: $54
    nop                                           ; $54b2: $00
    jr nz, jr_01e_54b5                            ; $54b3: $20 $00

jr_01e_54b5:
    jr nz, jr_01e_54d7                            ; $54b5: $20 $20

    ld c, l                                       ; $54b7: $4d
    ld c, a                                       ; $54b8: $4f
    ld d, h                                       ; $54b9: $54

jr_01e_54ba:
    ld c, a                                       ; $54ba: $4f
    ld c, c                                       ; $54bb: $49
    jr nz, jr_01e_5511                            ; $54bc: $20 $53

    ld b, c                                       ; $54be: $41
    ld c, e                                       ; $54bf: $4b
    ld d, l                                       ; $54c0: $55
    ld d, d                                       ; $54c1: $52
    ld b, c                                       ; $54c2: $41
    ld b, d                                       ; $54c3: $42
    ld b, c                                       ; $54c4: $41

jr_01e_54c5:
    nop                                           ; $54c5: $00
    jr nz, jr_01e_54c8                            ; $54c6: $20 $00

jr_01e_54c8:
    jr nz, jr_01e_54ca                            ; $54c8: $20 $00

jr_01e_54ca:
    jr nz, jr_01e_54cc                            ; $54ca: $20 $00

jr_01e_54cc:
    jr nz, jr_01e_54ce                            ; $54cc: $20 $00

jr_01e_54ce:
    ld d, e                                       ; $54ce: $53
    ld c, a                                       ; $54cf: $4f
    ld d, l                                       ; $54d0: $55
    ld c, [hl]                                    ; $54d1: $4e
    ld b, h                                       ; $54d2: $44
    jr nz, @+$47                                  ; $54d3: $20 $45

    ld b, [hl]                                    ; $54d5: $46
    ld b, [hl]                                    ; $54d6: $46

jr_01e_54d7:
    ld b, l                                       ; $54d7: $45
    ld b, e                                       ; $54d8: $43
    ld d, h                                       ; $54d9: $54
    ld d, e                                       ; $54da: $53
    jr nz, jr_01e_54fd                            ; $54db: $20 $20

    ld h, $00                                     ; $54dd: $26 $00
    ld d, e                                       ; $54df: $53

jr_01e_54e0:
    ld c, a                                       ; $54e0: $4f
    ld d, l                                       ; $54e1: $55
    ld c, [hl]                                    ; $54e2: $4e
    ld b, h                                       ; $54e3: $44
    jr nz, jr_01e_5535                            ; $54e4: $20 $4f

    ld d, b                                       ; $54e6: $50
    ld b, l                                       ; $54e7: $45
    ld d, d                                       ; $54e8: $52
    ld b, c                                       ; $54e9: $41
    ld d, h                                       ; $54ea: $54
    ld c, a                                       ; $54eb: $4f
    ld d, d                                       ; $54ec: $52
    nop                                           ; $54ed: $00
    jr nz, jr_01e_54f0                            ; $54ee: $20 $00

jr_01e_54f0:
    jr nz, jr_01e_5512                            ; $54f0: $20 $20

    ld d, h                                       ; $54f2: $54
    ld b, c                                       ; $54f3: $41
    ld c, e                                       ; $54f4: $4b
    ld b, c                                       ; $54f5: $41
    ld d, e                                       ; $54f6: $53
    ld c, b                                       ; $54f7: $48
    ld c, c                                       ; $54f8: $49
    jr nz, jr_01e_5548                            ; $54f9: $20 $4d

    ld c, a                                       ; $54fb: $4f
    ld d, d                                       ; $54fc: $52

jr_01e_54fd:
    ld c, c                                       ; $54fd: $49
    ld c, a                                       ; $54fe: $4f
    nop                                           ; $54ff: $00
    jr nz, jr_01e_5502                            ; $5500: $20 $00

jr_01e_5502:
    jr nz, jr_01e_5504                            ; $5502: $20 $00

jr_01e_5504:
    jr nz, jr_01e_5506                            ; $5504: $20 $00

jr_01e_5506:
    jr nz, jr_01e_5508                            ; $5506: $20 $00

jr_01e_5508:
    ld d, e                                       ; $5508: $53
    ld c, a                                       ; $5509: $4f
    ld d, l                                       ; $550a: $55
    ld c, [hl]                                    ; $550b: $4e
    ld b, h                                       ; $550c: $44
    jr nz, @+$46                                  ; $550d: $20 $44

    ld c, c                                       ; $550f: $49
    ld d, d                                       ; $5510: $52

jr_01e_5511:
    ld b, l                                       ; $5511: $45

jr_01e_5512:
    ld b, e                                       ; $5512: $43
    ld d, h                                       ; $5513: $54
    ld b, l                                       ; $5514: $45
    ld b, h                                       ; $5515: $44
    nop                                           ; $5516: $00
    jr nz, jr_01e_5519                            ; $5517: $20 $00

jr_01e_5519:
    jr nz, @+$22                                  ; $5519: $20 $20

    ld c, l                                       ; $551b: $4d
    ld b, c                                       ; $551c: $41
    ld d, e                                       ; $551d: $53
    ld b, c                                       ; $551e: $41
    ld b, c                                       ; $551f: $41
    ld c, e                                       ; $5520: $4b
    ld c, c                                       ; $5521: $49
    jr nz, jr_01e_5579                            ; $5522: $20 $55

    ld c, [hl]                                    ; $5524: $4e
    ld c, a                                       ; $5525: $4f
    nop                                           ; $5526: $00
    jr nz, jr_01e_5529                            ; $5527: $20 $00

jr_01e_5529:
    jr nz, jr_01e_552b                            ; $5529: $20 $00

jr_01e_552b:
    jr nz, jr_01e_552d                            ; $552b: $20 $00

jr_01e_552d:
    jr nz, jr_01e_552f                            ; $552d: $20 $00

jr_01e_552f:
    ld d, e                                       ; $552f: $53
    ld d, l                                       ; $5530: $55
    ld d, b                                       ; $5531: $50
    ld b, l                                       ; $5532: $45
    ld d, d                                       ; $5533: $52
    ld d, [hl]                                    ; $5534: $56

jr_01e_5535:
    ld c, c                                       ; $5535: $49
    ld d, e                                       ; $5536: $53
    ld c, a                                       ; $5537: $4f
    ld d, d                                       ; $5538: $52
    nop                                           ; $5539: $00
    jr nz, jr_01e_553c                            ; $553a: $20 $00

jr_01e_553c:
    jr nz, jr_01e_555e                            ; $553c: $20 $20

    ld c, e                                       ; $553e: $4b
    ld b, l                                       ; $553f: $45
    ld c, [hl]                                    ; $5540: $4e
    ld c, d                                       ; $5541: $4a
    ld c, c                                       ; $5542: $49
    jr nz, jr_01e_5592                            ; $5543: $20 $4d

    ld c, c                                       ; $5545: $49
    ld c, e                                       ; $5546: $4b
    ld c, c                                       ; $5547: $49

jr_01e_5548:
    nop                                           ; $5548: $00
    jr nz, jr_01e_556b                            ; $5549: $20 $20

    ld d, e                                       ; $554b: $53
    ld c, b                                       ; $554c: $48
    ld c, c                                       ; $554d: $49
    ld b, a                                       ; $554e: $47
    ld b, l                                       ; $554f: $45
    ld d, d                                       ; $5550: $52
    ld d, l                                       ; $5551: $55
    jr nz, jr_01e_55a1                            ; $5552: $20 $4d

    ld c, c                                       ; $5554: $49
    ld e, c                                       ; $5555: $59
    ld b, c                                       ; $5556: $41
    ld c, l                                       ; $5557: $4d
    ld c, a                                       ; $5558: $4f
    ld d, h                                       ; $5559: $54
    ld c, a                                       ; $555a: $4f
    nop                                           ; $555b: $00
    jr nz, jr_01e_557e                            ; $555c: $20 $20

jr_01e_555e:
    ld d, h                                       ; $555e: $54
    ld b, c                                       ; $555f: $41
    ld c, e                                       ; $5560: $4b
    ld b, c                                       ; $5561: $41
    ld d, e                                       ; $5562: $53
    ld c, b                                       ; $5563: $48
    ld c, c                                       ; $5564: $49
    jr nz, jr_01e_55bb                            ; $5565: $20 $54

    ld b, l                                       ; $5567: $45
    ld e, d                                       ; $5568: $5a
    ld d, l                                       ; $5569: $55
    ld c, e                                       ; $556a: $4b

jr_01e_556b:
    ld b, c                                       ; $556b: $41
    nop                                           ; $556c: $00
    jr nz, jr_01e_558f                            ; $556d: $20 $20

    ld c, e                                       ; $556f: $4b
    ld c, a                                       ; $5570: $4f
    ld c, d                                       ; $5571: $4a
    ld c, c                                       ; $5572: $49
    jr nz, jr_01e_55c0                            ; $5573: $20 $4b

    ld c, a                                       ; $5575: $4f
    ld c, [hl]                                    ; $5576: $4e
    ld b, h                                       ; $5577: $44
    ld c, a                                       ; $5578: $4f

jr_01e_5579:
    nop                                           ; $5579: $00
    jr nz, @+$22                                  ; $557a: $20 $20

    ld c, b                                       ; $557c: $48
    ld b, c                                       ; $557d: $41

jr_01e_557e:
    ld d, d                                       ; $557e: $52
    ld d, l                                       ; $557f: $55
    ld c, e                                       ; $5580: $4b
    ld c, c                                       ; $5581: $49
    jr nz, jr_01e_55cf                            ; $5582: $20 $4b

    ld c, a                                       ; $5584: $4f
    ld b, h                                       ; $5585: $44
    ld b, l                                       ; $5586: $45
    ld d, d                                       ; $5587: $52
    ld b, c                                       ; $5588: $41
    nop                                           ; $5589: $00
    jr nz, jr_01e_55ac                            ; $558a: $20 $20

    ld d, h                                       ; $558c: $54
    ld c, a                                       ; $558d: $4f
    ld d, d                                       ; $558e: $52

jr_01e_558f:
    ld d, l                                       ; $558f: $55
    jr nz, jr_01e_55e6                            ; $5590: $20 $54

jr_01e_5592:
    ld b, c                                       ; $5592: $41
    ld c, e                                       ; $5593: $4b
    ld b, c                                       ; $5594: $41
    ld c, l                                       ; $5595: $4d
    ld b, c                                       ; $5596: $41
    ld d, h                                       ; $5597: $54
    ld d, e                                       ; $5598: $53
    ld d, l                                       ; $5599: $55
    nop                                           ; $559a: $00
    jr nz, jr_01e_559d                            ; $559b: $20 $00

jr_01e_559d:
    jr nz, jr_01e_559f                            ; $559d: $20 $00

jr_01e_559f:
    jr nz, jr_01e_55a1                            ; $559f: $20 $00

jr_01e_55a1:
    jr nz, jr_01e_55a3                            ; $55a1: $20 $00

jr_01e_55a3:
    ld b, c                                       ; $55a3: $41
    ld d, e                                       ; $55a4: $53
    ld d, e                                       ; $55a5: $53
    ld c, c                                       ; $55a6: $49
    ld d, e                                       ; $55a7: $53
    ld d, h                                       ; $55a8: $54
    ld b, c                                       ; $55a9: $41
    ld c, [hl]                                    ; $55aa: $4e
    ld d, h                                       ; $55ab: $54

jr_01e_55ac:
    jr nz, jr_01e_55f2                            ; $55ac: $20 $44

    ld c, c                                       ; $55ae: $49
    ld d, d                                       ; $55af: $52
    ld b, l                                       ; $55b0: $45
    ld b, e                                       ; $55b1: $43
    ld d, h                                       ; $55b2: $54
    ld c, a                                       ; $55b3: $4f
    ld d, d                                       ; $55b4: $52
    nop                                           ; $55b5: $00
    jr nz, jr_01e_55b8                            ; $55b6: $20 $00

jr_01e_55b8:
    jr nz, jr_01e_55da                            ; $55b8: $20 $20

    ld e, c                                       ; $55ba: $59

jr_01e_55bb:
    ld d, l                                       ; $55bb: $55
    ld d, e                                       ; $55bc: $53
    ld d, l                                       ; $55bd: $55
    ld c, e                                       ; $55be: $4b
    ld b, l                                       ; $55bf: $45

jr_01e_55c0:
    jr nz, jr_01e_5615                            ; $55c0: $20 $53

    ld d, l                                       ; $55c2: $55
    ld b, a                                       ; $55c3: $47
    ld c, c                                       ; $55c4: $49
    ld c, l                                       ; $55c5: $4d
    ld c, a                                       ; $55c6: $4f
    ld d, h                                       ; $55c7: $54
    ld c, a                                       ; $55c8: $4f
    nop                                           ; $55c9: $00
    jr nz, jr_01e_55ec                            ; $55ca: $20 $20

    ld c, l                                       ; $55cc: $4d
    ld b, c                                       ; $55cd: $41
    ld d, e                                       ; $55ce: $53

jr_01e_55cf:
    ld b, c                                       ; $55cf: $41
    ld b, c                                       ; $55d0: $41
    ld c, e                                       ; $55d1: $4b
    ld c, c                                       ; $55d2: $49
    jr nz, jr_01e_562a                            ; $55d3: $20 $55

    ld c, [hl]                                    ; $55d5: $4e
    ld c, a                                       ; $55d6: $4f
    nop                                           ; $55d7: $00
    jr nz, jr_01e_55da                            ; $55d8: $20 $00

jr_01e_55da:
    jr nz, jr_01e_55dc                            ; $55da: $20 $00

jr_01e_55dc:
    jr nz, jr_01e_55de                            ; $55dc: $20 $00

jr_01e_55de:
    jr nz, jr_01e_55e0                            ; $55de: $20 $00

jr_01e_55e0:
    ld b, h                                       ; $55e0: $44
    ld c, c                                       ; $55e1: $49
    ld d, d                                       ; $55e2: $52
    ld b, l                                       ; $55e3: $45
    ld b, e                                       ; $55e4: $43
    ld d, h                                       ; $55e5: $54

jr_01e_55e6:
    ld b, l                                       ; $55e6: $45
    ld b, h                                       ; $55e7: $44
    jr nz, jr_01e_562c                            ; $55e8: $20 $42

    ld e, c                                       ; $55ea: $59
    nop                                           ; $55eb: $00

jr_01e_55ec:
    jr nz, jr_01e_55ee                            ; $55ec: $20 $00

jr_01e_55ee:
    jr nz, jr_01e_5610                            ; $55ee: $20 $20

    ld e, c                                       ; $55f0: $59
    ld b, c                                       ; $55f1: $41

jr_01e_55f2:
    ld d, e                                       ; $55f2: $53
    ld d, l                                       ; $55f3: $55
    ld c, b                                       ; $55f4: $48
    ld c, c                                       ; $55f5: $49
    ld d, d                                       ; $55f6: $52
    ld c, a                                       ; $55f7: $4f
    jr nz, jr_01e_564e                            ; $55f8: $20 $54

    ld b, c                                       ; $55fa: $41
    ld b, a                                       ; $55fb: $47
    ld d, l                                       ; $55fc: $55
    ld b, e                                       ; $55fd: $43
    ld c, b                                       ; $55fe: $48
    ld c, c                                       ; $55ff: $49
    nop                                           ; $5600: $00
    jr nz, jr_01e_5603                            ; $5601: $20 $00

jr_01e_5603:
    jr nz, jr_01e_5605                            ; $5603: $20 $00

jr_01e_5605:
    jr nz, jr_01e_5607                            ; $5605: $20 $00

jr_01e_5607:
    jr nz, jr_01e_5609                            ; $5607: $20 $00

jr_01e_5609:
    ld d, b                                       ; $5609: $50
    ld d, d                                       ; $560a: $52
    ld c, a                                       ; $560b: $4f
    ld b, h                                       ; $560c: $44
    ld d, l                                       ; $560d: $55
    ld b, e                                       ; $560e: $43
    ld b, l                                       ; $560f: $45

jr_01e_5610:
    ld b, h                                       ; $5610: $44
    jr nz, jr_01e_5655                            ; $5611: $20 $42

    ld e, c                                       ; $5613: $59
    nop                                           ; $5614: $00

jr_01e_5615:
    jr nz, jr_01e_5617                            ; $5615: $20 $00

jr_01e_5617:
    jr nz, jr_01e_5639                            ; $5617: $20 $20

    ld d, e                                       ; $5619: $53
    ld c, b                                       ; $561a: $48
    ld c, c                                       ; $561b: $49
    ld c, [hl]                                    ; $561c: $4e
    ld c, d                                       ; $561d: $4a
    ld c, c                                       ; $561e: $49
    jr nz, jr_01e_5669                            ; $561f: $20 $48

    ld b, c                                       ; $5621: $41
    ld d, h                                       ; $5622: $54
    ld b, c                                       ; $5623: $41
    ld c, [hl]                                    ; $5624: $4e
    ld c, a                                       ; $5625: $4f
    nop                                           ; $5626: $00
    jr nz, jr_01e_5649                            ; $5627: $20 $20

    ld c, b                                       ; $5629: $48

jr_01e_562a:
    ld c, c                                       ; $562a: $49
    ld d, d                                       ; $562b: $52

jr_01e_562c:
    ld c, a                                       ; $562c: $4f
    ld e, c                                       ; $562d: $59
    ld d, l                                       ; $562e: $55
    ld c, e                                       ; $562f: $4b
    ld c, c                                       ; $5630: $49
    jr nz, jr_01e_5687                            ; $5631: $20 $54

    ld b, c                                       ; $5633: $41
    ld c, e                                       ; $5634: $4b
    ld b, c                                       ; $5635: $41
    ld c, b                                       ; $5636: $48
    ld b, c                                       ; $5637: $41
    ld d, e                                       ; $5638: $53

jr_01e_5639:
    ld c, b                                       ; $5639: $48
    ld c, c                                       ; $563a: $49
    nop                                           ; $563b: $00
    jr nz, jr_01e_565e                            ; $563c: $20 $20

    ld d, e                                       ; $563e: $53
    ld c, b                                       ; $563f: $48
    ld d, l                                       ; $5640: $55
    ld b, a                                       ; $5641: $47
    ld c, a                                       ; $5642: $4f
    jr nz, jr_01e_5699                            ; $5643: $20 $54

    ld b, c                                       ; $5645: $41
    ld c, e                                       ; $5646: $4b
    ld b, c                                       ; $5647: $41
    ld c, b                                       ; $5648: $48

jr_01e_5649:
    ld b, c                                       ; $5649: $41
    ld d, e                                       ; $564a: $53
    ld c, b                                       ; $564b: $48
    ld c, c                                       ; $564c: $49
    nop                                           ; $564d: $00

jr_01e_564e:
    jr nz, jr_01e_5670                            ; $564e: $20 $20

    ld c, b                                       ; $5650: $48
    ld c, c                                       ; $5651: $49
    ld b, h                                       ; $5652: $44
    ld b, l                                       ; $5653: $45
    ld d, h                                       ; $5654: $54

jr_01e_5655:
    ld c, a                                       ; $5655: $4f
    ld d, e                                       ; $5656: $53
    ld c, b                                       ; $5657: $48
    ld c, c                                       ; $5658: $49
    jr nz, jr_01e_56a0                            ; $5659: $20 $45

    ld c, [hl]                                    ; $565b: $4e
    ld b, h                                       ; $565c: $44
    ld c, a                                       ; $565d: $4f

jr_01e_565e:
    nop                                           ; $565e: $00
    jr nz, jr_01e_5661                            ; $565f: $20 $00

jr_01e_5661:
    jr nz, jr_01e_5663                            ; $5661: $20 $00

jr_01e_5663:
    jr nz, jr_01e_5665                            ; $5663: $20 $00

jr_01e_5665:
    jr nz, jr_01e_5667                            ; $5665: $20 $00

jr_01e_5667:
    ld b, l                                       ; $5667: $45
    ld e, b                                       ; $5668: $58

jr_01e_5669:
    ld b, l                                       ; $5669: $45
    ld b, e                                       ; $566a: $43
    ld d, l                                       ; $566b: $55
    ld d, h                                       ; $566c: $54
    ld c, c                                       ; $566d: $49
    ld d, [hl]                                    ; $566e: $56
    ld b, l                                       ; $566f: $45

jr_01e_5670:
    jr nz, jr_01e_56c2                            ; $5670: $20 $50

    ld d, d                                       ; $5672: $52
    ld c, a                                       ; $5673: $4f
    ld b, h                                       ; $5674: $44
    ld d, l                                       ; $5675: $55
    ld b, e                                       ; $5676: $43
    ld b, l                                       ; $5677: $45
    ld d, d                                       ; $5678: $52
    nop                                           ; $5679: $00
    jr nz, jr_01e_567c                            ; $567a: $20 $00

jr_01e_567c:
    jr nz, jr_01e_569e                            ; $567c: $20 $20

    ld c, b                                       ; $567e: $48
    ld c, c                                       ; $567f: $49
    ld d, d                                       ; $5680: $52
    ld c, a                                       ; $5681: $4f
    ld d, e                                       ; $5682: $53
    ld c, b                                       ; $5683: $48
    ld c, c                                       ; $5684: $49
    jr nz, jr_01e_56e0                            ; $5685: $20 $59

jr_01e_5687:
    ld b, c                                       ; $5687: $41
    ld c, l                                       ; $5688: $4d
    ld b, c                                       ; $5689: $41
    ld d, l                                       ; $568a: $55
    ld b, e                                       ; $568b: $43
    ld c, b                                       ; $568c: $48
    ld c, c                                       ; $568d: $49
    nop                                           ; $568e: $00
    jr nz, jr_01e_5691                            ; $568f: $20 $00

jr_01e_5691:
    jr nz, jr_01e_5693                            ; $5691: $20 $00

jr_01e_5693:
    jr nz, jr_01e_5695                            ; $5693: $20 $00

jr_01e_5695:
    jr nz, jr_01e_5697                            ; $5695: $20 $00

jr_01e_5697:
    ld b, a                                       ; $5697: $47
    ld d, d                                       ; $5698: $52

jr_01e_5699:
    ld b, c                                       ; $5699: $41
    ld d, b                                       ; $569a: $50
    ld c, b                                       ; $569b: $48
    ld c, c                                       ; $569c: $49
    ld b, e                                       ; $569d: $43

jr_01e_569e:
    jr nz, jr_01e_56f3                            ; $569e: $20 $53

jr_01e_56a0:
    ld d, l                                       ; $56a0: $55
    ld d, b                                       ; $56a1: $50
    ld d, b                                       ; $56a2: $50
    ld c, a                                       ; $56a3: $4f
    ld d, d                                       ; $56a4: $52
    ld d, h                                       ; $56a5: $54
    nop                                           ; $56a6: $00
    jr nz, jr_01e_56a9                            ; $56a7: $20 $00

jr_01e_56a9:
    jr nz, @+$22                                  ; $56a9: $20 $20

    ld e, c                                       ; $56ab: $59
    ld c, a                                       ; $56ac: $4f
    ld d, l                                       ; $56ad: $55
    ld c, c                                       ; $56ae: $49
    ld b, e                                       ; $56af: $43
    ld c, b                                       ; $56b0: $48
    ld c, c                                       ; $56b1: $49
    jr nz, jr_01e_56ff                            ; $56b2: $20 $4b

    ld c, a                                       ; $56b4: $4f
    ld d, h                                       ; $56b5: $54
    ld b, c                                       ; $56b6: $41
    ld b, d                                       ; $56b7: $42
    ld b, l                                       ; $56b8: $45
    nop                                           ; $56b9: $00
    jr nz, jr_01e_56dc                            ; $56ba: $20 $20

    ld e, c                                       ; $56bc: $59
    ld d, l                                       ; $56bd: $55
    ld d, e                                       ; $56be: $53
    ld d, l                                       ; $56bf: $55
    ld c, e                                       ; $56c0: $4b
    ld b, l                                       ; $56c1: $45

jr_01e_56c2:
    jr nz, jr_01e_5712                            ; $56c2: $20 $4e

    ld b, c                                       ; $56c4: $41
    ld c, e                                       ; $56c5: $4b
    ld b, c                                       ; $56c6: $41
    ld c, [hl]                                    ; $56c7: $4e
    ld c, a                                       ; $56c8: $4f
    nop                                           ; $56c9: $00
    jr nz, jr_01e_56cc                            ; $56ca: $20 $00

jr_01e_56cc:
    jr nz, jr_01e_56ce                            ; $56cc: $20 $00

jr_01e_56ce:
    jr nz, jr_01e_56d0                            ; $56ce: $20 $00

jr_01e_56d0:
    jr nz, jr_01e_56d2                            ; $56d0: $20 $00

jr_01e_56d2:
    ld b, c                                       ; $56d2: $41
    ld d, d                                       ; $56d3: $52
    ld d, h                                       ; $56d4: $54
    jr nz, jr_01e_572e                            ; $56d5: $20 $57

    ld c, a                                       ; $56d7: $4f
    ld d, d                                       ; $56d8: $52
    ld c, e                                       ; $56d9: $4b
    jr nz, jr_01e_5720                            ; $56da: $20 $44

jr_01e_56dc:
    ld b, l                                       ; $56dc: $45
    ld d, e                                       ; $56dd: $53
    ld c, c                                       ; $56de: $49
    ld b, a                                       ; $56df: $47

jr_01e_56e0:
    ld c, [hl]                                    ; $56e0: $4e
    ld b, l                                       ; $56e1: $45
    ld d, d                                       ; $56e2: $52
    nop                                           ; $56e3: $00
    jr nz, jr_01e_56e6                            ; $56e4: $20 $00

jr_01e_56e6:
    jr nz, @+$22                                  ; $56e6: $20 $20

    ld d, d                                       ; $56e8: $52
    ld e, c                                       ; $56e9: $59
    ld d, l                                       ; $56ea: $55
    ld c, d                                       ; $56eb: $4a
    ld c, c                                       ; $56ec: $49
    jr nz, jr_01e_5737                            ; $56ed: $20 $48

    ld b, c                                       ; $56ef: $41
    ld b, a                                       ; $56f0: $47
    ld c, c                                       ; $56f1: $49
    ld c, [hl]                                    ; $56f2: $4e

jr_01e_56f3:
    ld c, a                                       ; $56f3: $4f
    nop                                           ; $56f4: $00
    jr nz, jr_01e_5717                            ; $56f5: $20 $20

    ld e, c                                       ; $56f7: $59
    ld b, c                                       ; $56f8: $41
    ld d, e                                       ; $56f9: $53
    ld d, l                                       ; $56fa: $55
    ld c, a                                       ; $56fb: $4f
    jr nz, jr_01e_5747                            ; $56fc: $20 $49

    ld c, [hl]                                    ; $56fe: $4e

jr_01e_56ff:
    ld c, a                                       ; $56ff: $4f
    ld d, l                                       ; $5700: $55
    ld b, l                                       ; $5701: $45
    nop                                           ; $5702: $00
    jr nz, jr_01e_5705                            ; $5703: $20 $00

jr_01e_5705:
    jr nz, jr_01e_5707                            ; $5705: $20 $00

jr_01e_5707:
    jr nz, jr_01e_5709                            ; $5707: $20 $00

jr_01e_5709:
    jr nz, jr_01e_570b                            ; $5709: $20 $00

jr_01e_570b:
    ld c, h                                       ; $570b: $4c
    ld c, a                                       ; $570c: $4f
    ld b, e                                       ; $570d: $43
    ld b, c                                       ; $570e: $41
    ld c, h                                       ; $570f: $4c
    ld c, c                                       ; $5710: $49
    ld e, d                                       ; $5711: $5a

jr_01e_5712:
    ld b, c                                       ; $5712: $41
    ld d, h                                       ; $5713: $54
    ld c, c                                       ; $5714: $49
    ld c, a                                       ; $5715: $4f
    ld c, [hl]                                    ; $5716: $4e

jr_01e_5717:
    nop                                           ; $5717: $00
    jr nz, jr_01e_571a                            ; $5718: $20 $00

jr_01e_571a:
    jr nz, jr_01e_573c                            ; $571a: $20 $20

    ld c, l                                       ; $571c: $4d
    ld c, c                                       ; $571d: $49
    ld b, e                                       ; $571e: $43
    ld c, b                                       ; $571f: $48

jr_01e_5720:
    ld b, l                                       ; $5720: $45
    ld c, h                                       ; $5721: $4c
    ld c, h                                       ; $5722: $4c
    ld b, l                                       ; $5723: $45
    jr nz, jr_01e_5776                            ; $5724: $20 $50

    ld c, a                                       ; $5726: $4f
    ld d, a                                       ; $5727: $57
    ld b, l                                       ; $5728: $45
    ld d, d                                       ; $5729: $52
    ld d, e                                       ; $572a: $53
    nop                                           ; $572b: $00
    jr nz, jr_01e_574e                            ; $572c: $20 $20

jr_01e_572e:
    ld b, d                                       ; $572e: $42
    ld c, c                                       ; $572f: $49
    ld c, h                                       ; $5730: $4c
    ld c, h                                       ; $5731: $4c
    jr nz, jr_01e_5788                            ; $5732: $20 $54

    ld d, d                                       ; $5734: $52
    ld c, c                                       ; $5735: $49
    ld c, [hl]                                    ; $5736: $4e

jr_01e_5737:
    ld b, l                                       ; $5737: $45
    ld c, [hl]                                    ; $5738: $4e
    nop                                           ; $5739: $00
    jr nz, jr_01e_575c                            ; $573a: $20 $20

jr_01e_573c:
    ld b, a                                       ; $573c: $47
    ld d, d                                       ; $573d: $52
    ld b, l                                       ; $573e: $45
    ld b, a                                       ; $573f: $47
    jr nz, @+$54                                  ; $5740: $20 $52

    ld c, c                                       ; $5742: $49
    ld b, e                                       ; $5743: $43
    ld c, b                                       ; $5744: $48
    ld b, c                                       ; $5745: $41
    ld d, d                                       ; $5746: $52

jr_01e_5747:
    ld b, h                                       ; $5747: $44
    ld d, e                                       ; $5748: $53
    ld c, a                                       ; $5749: $4f
    ld c, [hl]                                    ; $574a: $4e
    nop                                           ; $574b: $00
    jr nz, jr_01e_574e                            ; $574c: $20 $00

jr_01e_574e:
    jr nz, jr_01e_5750                            ; $574e: $20 $00

jr_01e_5750:
    jr nz, jr_01e_5752                            ; $5750: $20 $00

jr_01e_5752:
    jr nz, jr_01e_5754                            ; $5752: $20 $00

jr_01e_5754:
    ld b, e                                       ; $5754: $43
    ld c, a                                       ; $5755: $4f
    ld c, a                                       ; $5756: $4f
    ld d, d                                       ; $5757: $52
    ld b, h                                       ; $5758: $44
    ld c, c                                       ; $5759: $49
    ld c, [hl]                                    ; $575a: $4e
    ld b, c                                       ; $575b: $41

jr_01e_575c:
    ld d, h                                       ; $575c: $54
    ld c, a                                       ; $575d: $4f
    ld d, d                                       ; $575e: $52
    nop                                           ; $575f: $00
    jr nz, jr_01e_5762                            ; $5760: $20 $00

jr_01e_5762:
    jr nz, jr_01e_5784                            ; $5762: $20 $20

    ld d, h                                       ; $5764: $54
    ld c, a                                       ; $5765: $4f
    ld d, e                                       ; $5766: $53
    ld c, b                                       ; $5767: $48
    ld c, c                                       ; $5768: $49
    ld c, b                                       ; $5769: $48
    ld b, c                                       ; $576a: $41
    ld d, d                                       ; $576b: $52
    ld d, l                                       ; $576c: $55
    jr nz, jr_01e_57b8                            ; $576d: $20 $49

    ld e, d                                       ; $576f: $5a
    ld d, l                                       ; $5770: $55
    ld c, [hl]                                    ; $5771: $4e
    ld c, a                                       ; $5772: $4f
    nop                                           ; $5773: $00
    jr nz, jr_01e_5796                            ; $5774: $20 $20

jr_01e_5776:
    ld c, l                                       ; $5776: $4d
    ld b, c                                       ; $5777: $41
    ld d, e                                       ; $5778: $53
    ld b, c                                       ; $5779: $41
    ld c, [hl]                                    ; $577a: $4e
    ld c, a                                       ; $577b: $4f
    ld d, d                                       ; $577c: $52
    ld c, c                                       ; $577d: $49
    jr nz, jr_01e_57d7                            ; $577e: $20 $57

    ld b, c                                       ; $5780: $41
    ld c, e                                       ; $5781: $4b
    ld b, l                                       ; $5782: $45
    nop                                           ; $5783: $00

jr_01e_5784:
    jr nz, jr_01e_5786                            ; $5784: $20 $00

jr_01e_5786:
    jr nz, jr_01e_5788                            ; $5786: $20 $00

jr_01e_5788:
    jr nz, jr_01e_578a                            ; $5788: $20 $00

jr_01e_578a:
    jr nz, jr_01e_578c                            ; $578a: $20 $00

jr_01e_578c:
    ld d, e                                       ; $578c: $53
    ld d, b                                       ; $578d: $50
    ld b, l                                       ; $578e: $45
    ld b, e                                       ; $578f: $43
    ld c, c                                       ; $5790: $49
    ld b, c                                       ; $5791: $41
    ld c, h                                       ; $5792: $4c
    jr nz, jr_01e_57e9                            ; $5793: $20 $54

    ld c, b                                       ; $5795: $48

jr_01e_5796:
    ld b, c                                       ; $5796: $41
    ld c, [hl]                                    ; $5797: $4e
    ld c, e                                       ; $5798: $4b
    ld d, e                                       ; $5799: $53
    jr nz, jr_01e_57f0                            ; $579a: $20 $54

    ld c, a                                       ; $579c: $4f
    nop                                           ; $579d: $00
    jr nz, jr_01e_57a0                            ; $579e: $20 $00

jr_01e_57a0:
    jr nz, jr_01e_57c2                            ; $57a0: $20 $20

    ld c, [hl]                                    ; $57a2: $4e
    ld c, c                                       ; $57a3: $49
    ld c, [hl]                                    ; $57a4: $4e
    ld d, h                                       ; $57a5: $54
    ld b, l                                       ; $57a6: $45
    ld c, [hl]                                    ; $57a7: $4e
    ld b, h                                       ; $57a8: $44
    ld c, a                                       ; $57a9: $4f
    jr nz, jr_01e_57fe                            ; $57aa: $20 $52

    ld h, $44                                     ; $57ac: $26 $44
    ld sp, $2000                                  ; $57ae: $31 $00 $20
    jr nz, jr_01e_57d3                            ; $57b1: $20 $20

    jr nz, @+$22                                  ; $57b3: $20 $20

    jr nz, jr_01e_57f8                            ; $57b5: $20 $41

    ld d, d                                       ; $57b7: $52

jr_01e_57b8:
    ld d, h                                       ; $57b8: $54
    jr nz, jr_01e_5812                            ; $57b9: $20 $57

    ld c, a                                       ; $57bb: $4f
    ld d, d                                       ; $57bc: $52
    ld c, e                                       ; $57bd: $4b
    jr nz, jr_01e_5814                            ; $57be: $20 $54

    ld b, l                                       ; $57c0: $45
    ld b, c                                       ; $57c1: $41

jr_01e_57c2:
    ld c, l                                       ; $57c2: $4d
    nop                                           ; $57c3: $00
    jr nz, jr_01e_57e6                            ; $57c4: $20 $20

    ld c, e                                       ; $57c6: $4b
    ld b, l                                       ; $57c7: $45
    ld c, c                                       ; $57c8: $49
    ld c, e                                       ; $57c9: $4b
    ld c, a                                       ; $57ca: $4f
    jr nz, jr_01e_57ed                            ; $57cb: $20 $20

    ld d, h                                       ; $57cd: $54
    ld b, c                                       ; $57ce: $41
    ld c, l                                       ; $57cf: $4d
    ld d, l                                       ; $57d0: $55
    ld d, d                                       ; $57d1: $52
    ld b, c                                       ; $57d2: $41

jr_01e_57d3:
    nop                                           ; $57d3: $00
    jr nz, jr_01e_57f6                            ; $57d4: $20 $20

    ld c, e                                       ; $57d6: $4b

jr_01e_57d7:
    ld b, c                                       ; $57d7: $41
    ld e, d                                       ; $57d8: $5a
    ld d, l                                       ; $57d9: $55
    ld c, b                                       ; $57da: $48
    ld c, c                                       ; $57db: $49
    ld d, d                                       ; $57dc: $52
    ld c, a                                       ; $57dd: $4f
    jr nz, jr_01e_582d                            ; $57de: $20 $4d

    ld b, c                                       ; $57e0: $41
    ld d, h                                       ; $57e1: $54
    ld d, e                                       ; $57e2: $53
    ld d, l                                       ; $57e3: $55
    ld c, l                                       ; $57e4: $4d
    ld c, a                                       ; $57e5: $4f

jr_01e_57e6:
    ld d, h                                       ; $57e6: $54
    ld c, a                                       ; $57e7: $4f
    nop                                           ; $57e8: $00

jr_01e_57e9:
    jr nz, jr_01e_580b                            ; $57e9: $20 $20

    ld c, b                                       ; $57eb: $48
    ld c, c                                       ; $57ec: $49

jr_01e_57ed:
    ld d, d                                       ; $57ed: $52
    ld c, a                                       ; $57ee: $4f
    ld c, e                                       ; $57ef: $4b

jr_01e_57f0:
    ld c, a                                       ; $57f0: $4f
    jr nz, @+$55                                  ; $57f1: $20 $53

    ld d, l                                       ; $57f3: $55
    ld b, a                                       ; $57f4: $47
    ld c, c                                       ; $57f5: $49

jr_01e_57f6:
    ld c, [hl]                                    ; $57f6: $4e
    ld c, a                                       ; $57f7: $4f

jr_01e_57f8:
    nop                                           ; $57f8: $00
    jr nz, jr_01e_581b                            ; $57f9: $20 $20

    ld b, c                                       ; $57fb: $41
    ld d, h                                       ; $57fc: $54
    ld d, e                                       ; $57fd: $53

jr_01e_57fe:
    ld d, l                                       ; $57fe: $55
    ld d, e                                       ; $57ff: $53
    ld c, b                                       ; $5800: $48
    ld c, c                                       ; $5801: $49
    jr nz, jr_01e_5853                            ; $5802: $20 $4f

    ld c, e                                       ; $5804: $4b
    ld b, c                                       ; $5805: $41
    ld b, h                                       ; $5806: $44
    ld b, c                                       ; $5807: $41
    nop                                           ; $5808: $00
    jr nz, @+$22                                  ; $5809: $20 $20

jr_01e_580b:
    ld c, [hl]                                    ; $580b: $4e
    ld c, a                                       ; $580c: $4f
    ld b, c                                       ; $580d: $41
    jr nz, jr_01e_5854                            ; $580e: $20 $44

    ld b, l                                       ; $5810: $45
    ld b, d                                       ; $5811: $42

jr_01e_5812:
    ld d, l                                       ; $5812: $55
    ld b, a                                       ; $5813: $47

jr_01e_5814:
    jr nz, jr_01e_5869                            ; $5814: $20 $53

    ld d, h                                       ; $5816: $54
    ld b, c                                       ; $5817: $41
    ld b, [hl]                                    ; $5818: $46
    ld b, [hl]                                    ; $5819: $46
    nop                                           ; $581a: $00

jr_01e_581b:
    jr nz, @+$22                                  ; $581b: $20 $20

    ld c, b                                       ; $581d: $48
    ld c, c                                       ; $581e: $49
    ld d, d                                       ; $581f: $52
    ld c, a                                       ; $5820: $4f
    ld d, e                                       ; $5821: $53
    ld c, b                                       ; $5822: $48
    ld c, c                                       ; $5823: $49
    jr nz, jr_01e_5879                            ; $5824: $20 $53

    ld b, c                                       ; $5826: $41
    ld d, h                                       ; $5827: $54
    ld c, a                                       ; $5828: $4f
    nop                                           ; $5829: $00
    jr nz, jr_01e_584c                            ; $582a: $20 $20

    ld d, e                                       ; $582c: $53

jr_01e_582d:
    ld d, l                                       ; $582d: $55
    ld d, b                                       ; $582e: $50
    ld b, l                                       ; $582f: $45
    ld d, d                                       ; $5830: $52
    jr nz, jr_01e_5880                            ; $5831: $20 $4d

    ld b, c                                       ; $5833: $41
    ld d, d                                       ; $5834: $52
    ld c, c                                       ; $5835: $49
    ld c, a                                       ; $5836: $4f
    nop                                           ; $5837: $00
    jr nz, jr_01e_585a                            ; $5838: $20 $20

    jr nz, @+$22                                  ; $583a: $20 $20

    jr nz, jr_01e_585e                            ; $583c: $20 $20

    jr nz, jr_01e_5860                            ; $583e: $20 $20

    jr nz, @+$45                                  ; $5840: $20 $43

    ld c, h                                       ; $5842: $4c
    ld d, l                                       ; $5843: $55
    ld b, d                                       ; $5844: $42
    jr nz, jr_01e_589a                            ; $5845: $20 $53

    ld d, h                                       ; $5847: $54
    ld b, c                                       ; $5848: $41
    ld b, [hl]                                    ; $5849: $46
    ld b, [hl]                                    ; $584a: $46
    nop                                           ; $584b: $00

jr_01e_584c:
    jr nz, jr_01e_586e                            ; $584c: $20 $20

    ld d, e                                       ; $584e: $53
    ld c, b                                       ; $584f: $48
    ld c, c                                       ; $5850: $49
    ld c, [hl]                                    ; $5851: $4e
    ld c, c                                       ; $5852: $49

jr_01e_5853:
    ld b, e                                       ; $5853: $43

jr_01e_5854:
    ld c, b                                       ; $5854: $48
    ld c, c                                       ; $5855: $49
    jr nz, jr_01e_589c                            ; $5856: $20 $44

    ld c, a                                       ; $5858: $4f
    ld c, c                                       ; $5859: $49

jr_01e_585a:
    nop                                           ; $585a: $00
    jr nz, jr_01e_587d                            ; $585b: $20 $20

    ld c, a                                       ; $585d: $4f

jr_01e_585e:
    ld d, e                                       ; $585e: $53
    ld b, c                                       ; $585f: $41

jr_01e_5860:
    ld c, l                                       ; $5860: $4d
    ld d, l                                       ; $5861: $55
    jr nz, jr_01e_58af                            ; $5862: $20 $4b

    ld d, l                                       ; $5864: $55
    ld c, [hl]                                    ; $5865: $4e
    ld c, c                                       ; $5866: $49
    ld c, l                                       ; $5867: $4d
    ld b, c                                       ; $5868: $41

jr_01e_5869:
    ld d, e                                       ; $5869: $53
    ld b, c                                       ; $586a: $41
    nop                                           ; $586b: $00
    jr nz, jr_01e_588e                            ; $586c: $20 $20

jr_01e_586e:
    ld c, [hl]                                    ; $586e: $4e
    ld c, a                                       ; $586f: $4f
    ld d, d                                       ; $5870: $52
    ld c, c                                       ; $5871: $49
    ld e, c                                       ; $5872: $59
    ld d, l                                       ; $5873: $55
    ld c, e                                       ; $5874: $4b
    ld c, c                                       ; $5875: $49
    jr nz, @+$50                                  ; $5876: $20 $4e

    ld b, c                                       ; $5878: $41

jr_01e_5879:
    ld c, e                                       ; $5879: $4b
    ld b, c                                       ; $587a: $41
    ld b, a                                       ; $587b: $47
    ld b, c                                       ; $587c: $41

jr_01e_587d:
    ld c, l                                       ; $587d: $4d
    ld c, c                                       ; $587e: $49
    nop                                           ; $587f: $00

jr_01e_5880:
    jr nz, jr_01e_5882                            ; $5880: $20 $00

jr_01e_5882:
    jr nz, jr_01e_5884                            ; $5882: $20 $00

jr_01e_5884:
    jr nz, jr_01e_5886                            ; $5884: $20 $00

jr_01e_5886:
    jr nz, jr_01e_5888                            ; $5886: $20 $00

jr_01e_5888:
    jr nz, jr_01e_588a                            ; $5888: $20 $00

jr_01e_588a:
    jr nz, jr_01e_588c                            ; $588a: $20 $00

jr_01e_588c:
    jr nz, jr_01e_588e                            ; $588c: $20 $00

jr_01e_588e:
    jr nz, jr_01e_5890                            ; $588e: $20 $00

jr_01e_5890:
    jr nz, jr_01e_5892                            ; $5890: $20 $00

jr_01e_5892:
    jr nz, jr_01e_58d7                            ; $5892: $20 $43

    ld b, c                                       ; $5894: $41
    ld c, l                                       ; $5895: $4d
    ld b, l                                       ; $5896: $45
    ld c, h                                       ; $5897: $4c
    ld c, a                                       ; $5898: $4f
    ld d, h                                       ; $5899: $54

jr_01e_589a:
    jr nz, jr_01e_58df                            ; $589a: $20 $43

jr_01e_589c:
    ld c, a                                       ; $589c: $4f
    ld l, $2c                                     ; $589d: $2e $2c
    ld c, h                                       ; $589f: $4c
    ld d, h                                       ; $58a0: $54
    ld b, h                                       ; $58a1: $44
    ld l, $00                                     ; $58a2: $2e $00
    jr nz, jr_01e_58a6                            ; $58a4: $20 $00

jr_01e_58a6:
    jr nz, jr_01e_58f5                            ; $58a6: $20 $4d

    ld c, a                                       ; $58a8: $4f
    ld c, [hl]                                    ; $58a9: $4e
    ld b, l                                       ; $58aa: $45
    ld b, a                                       ; $58ab: $47
    ld c, c                                       ; $58ac: $49
    jr nz, jr_01e_58f2                            ; $58ad: $20 $43

jr_01e_58af:
    ld c, a                                       ; $58af: $4f
    ld d, d                                       ; $58b0: $52
    ld d, b                                       ; $58b1: $50
    ld c, a                                       ; $58b2: $4f
    ld d, d                                       ; $58b3: $52
    ld b, c                                       ; $58b4: $41
    ld d, h                                       ; $58b5: $54
    ld c, c                                       ; $58b6: $49
    ld c, a                                       ; $58b7: $4f
    ld c, [hl]                                    ; $58b8: $4e
    nop                                           ; $58b9: $00
    jr nz, jr_01e_58bc                            ; $58ba: $20 $00

jr_01e_58bc:
    jr nz, jr_01e_590c                            ; $58bc: $20 $4e

    ld c, c                                       ; $58be: $49
    ld c, [hl]                                    ; $58bf: $4e
    ld d, h                                       ; $58c0: $54
    ld b, l                                       ; $58c1: $45
    ld c, [hl]                                    ; $58c2: $4e
    ld b, h                                       ; $58c3: $44
    ld c, a                                       ; $58c4: $4f
    jr nz, jr_01e_590a                            ; $58c5: $20 $43

    ld c, a                                       ; $58c7: $4f
    ld l, $2c                                     ; $58c8: $2e $2c
    ld c, h                                       ; $58ca: $4c
    ld d, h                                       ; $58cb: $54
    ld b, h                                       ; $58cc: $44
    ld l, $00                                     ; $58cd: $2e $00
    jr nz, jr_01e_58d1                            ; $58cf: $20 $00

jr_01e_58d1:
    inc hl                                        ; $58d1: $23
    nop                                           ; $58d2: $00
    ld c, l                                       ; $58d3: $4d
    ld h, c                                       ; $58d4: $61
    ld [hl], d                                    ; $58d5: $72
    ld l, c                                       ; $58d6: $69

jr_01e_58d7:
    ld l, a                                       ; $58d7: $6f
    ld l, [hl]                                    ; $58d8: $6e
    jr nz, @+$45                                  ; $58d9: $20 $43

    ld l, h                                       ; $58db: $6c
    ld [hl], l                                    ; $58dc: $75
    ld h, d                                       ; $58dd: $62
    nop                                           ; $58de: $00

jr_01e_58df:
    ld d, b                                       ; $58df: $50
    ld h, c                                       ; $58e0: $61
    ld l, h                                       ; $58e1: $6c
    ld l, l                                       ; $58e2: $6d
    jr nz, jr_01e_5928                            ; $58e3: $20 $43

    ld l, h                                       ; $58e5: $6c
    ld [hl], l                                    ; $58e6: $75
    ld h, d                                       ; $58e7: $62
    nop                                           ; $58e8: $00
    ld b, h                                       ; $58e9: $44
    ld [hl], l                                    ; $58ea: $75
    ld l, [hl]                                    ; $58eb: $6e
    ld h, l                                       ; $58ec: $65
    jr nz, jr_01e_5932                            ; $58ed: $20 $43

    ld l, h                                       ; $58ef: $6c
    ld [hl], l                                    ; $58f0: $75
    ld h, d                                       ; $58f1: $62

jr_01e_58f2:
    nop                                           ; $58f2: $00
    ld c, h                                       ; $58f3: $4c
    ld l, c                                       ; $58f4: $69

jr_01e_58f5:
    ld l, [hl]                                    ; $58f5: $6e
    ld l, e                                       ; $58f6: $6b
    ld [hl], e                                    ; $58f7: $73
    jr nz, jr_01e_593d                            ; $58f8: $20 $43

    ld l, h                                       ; $58fa: $6c
    ld [hl], l                                    ; $58fb: $75
    ld h, d                                       ; $58fc: $62
    nop                                           ; $58fd: $00
    ld b, [hl]                                    ; $58fe: $46
    ld l, c                                       ; $58ff: $69
    ld h, l                                       ; $5900: $65
    ld l, h                                       ; $5901: $6c
    ld h, h                                       ; $5902: $64
    nop                                           ; $5903: $00
    ld d, e                                       ; $5904: $53
    ld l, b                                       ; $5905: $68
    ld l, a                                       ; $5906: $6f
    ld [hl], h                                    ; $5907: $74
    jr nz, jr_01e_5956                            ; $5908: $20 $4c

jr_01e_590a:
    ld h, l                                       ; $590a: $65
    ld [hl], e                                    ; $590b: $73

jr_01e_590c:
    ld [hl], e                                    ; $590c: $73
    ld l, a                                       ; $590d: $6f
    ld l, [hl]                                    ; $590e: $6e
    jr nz, @+$33                                  ; $590f: $20 $31

    nop                                           ; $5911: $00
    ld d, e                                       ; $5912: $53
    ld l, b                                       ; $5913: $68
    ld l, a                                       ; $5914: $6f
    ld [hl], h                                    ; $5915: $74
    jr nz, jr_01e_5964                            ; $5916: $20 $4c

    ld h, l                                       ; $5918: $65
    ld [hl], e                                    ; $5919: $73
    ld [hl], e                                    ; $591a: $73
    ld l, a                                       ; $591b: $6f
    ld l, [hl]                                    ; $591c: $6e
    jr nz, jr_01e_5951                            ; $591d: $20 $32

    nop                                           ; $591f: $00
    ld b, c                                       ; $5920: $41
    ld [hl], b                                    ; $5921: $70
    ld [hl], b                                    ; $5922: $70
    ld [hl], d                                    ; $5923: $72
    ld l, a                                       ; $5924: $6f
    ld h, c                                       ; $5925: $61
    ld h, e                                       ; $5926: $63
    ld l, b                                       ; $5927: $68

jr_01e_5928:
    jr nz, jr_01e_5976                            ; $5928: $20 $4c

    ld h, l                                       ; $592a: $65
    ld [hl], e                                    ; $592b: $73
    ld [hl], e                                    ; $592c: $73
    ld l, a                                       ; $592d: $6f
    ld l, [hl]                                    ; $592e: $6e
    jr nz, jr_01e_5962                            ; $592f: $20 $31

    nop                                           ; $5931: $00

jr_01e_5932:
    ld b, c                                       ; $5932: $41
    ld [hl], b                                    ; $5933: $70
    ld [hl], b                                    ; $5934: $70
    ld [hl], d                                    ; $5935: $72
    ld l, a                                       ; $5936: $6f
    ld h, c                                       ; $5937: $61
    ld h, e                                       ; $5938: $63
    ld l, b                                       ; $5939: $68
    jr nz, jr_01e_5988                            ; $593a: $20 $4c

    ld h, l                                       ; $593c: $65

jr_01e_593d:
    ld [hl], e                                    ; $593d: $73
    ld [hl], e                                    ; $593e: $73
    ld l, a                                       ; $593f: $6f
    ld l, [hl]                                    ; $5940: $6e
    jr nz, jr_01e_5975                            ; $5941: $20 $32

    nop                                           ; $5943: $00
    ld d, b                                       ; $5944: $50
    ld [hl], l                                    ; $5945: $75
    ld [hl], h                                    ; $5946: $74
    ld [hl], h                                    ; $5947: $74
    ld l, c                                       ; $5948: $69
    ld l, [hl]                                    ; $5949: $6e
    ld h, a                                       ; $594a: $67
    jr nz, jr_01e_5990                            ; $594b: $20 $43

    ld l, a                                       ; $594d: $6f
    ld l, [hl]                                    ; $594e: $6e
    ld [hl], h                                    ; $594f: $74
    ld h, l                                       ; $5950: $65

jr_01e_5951:
    ld [hl], e                                    ; $5951: $73
    ld [hl], h                                    ; $5952: $74
    nop                                           ; $5953: $00
    ld d, e                                       ; $5954: $53
    ld l, b                                       ; $5955: $68

jr_01e_5956:
    ld l, a                                       ; $5956: $6f
    ld [hl], h                                    ; $5957: $74
    jr nz, jr_01e_59a6                            ; $5958: $20 $4c

    ld h, l                                       ; $595a: $65
    ld [hl], e                                    ; $595b: $73
    ld [hl], e                                    ; $595c: $73
    ld l, a                                       ; $595d: $6f
    ld l, [hl]                                    ; $595e: $6e
    jr nz, @+$33                                  ; $595f: $20 $31

    nop                                           ; $5961: $00

jr_01e_5962:
    ld d, e                                       ; $5962: $53
    ld l, b                                       ; $5963: $68

jr_01e_5964:
    ld l, a                                       ; $5964: $6f
    ld [hl], h                                    ; $5965: $74
    jr nz, jr_01e_59b4                            ; $5966: $20 $4c

    ld h, l                                       ; $5968: $65
    ld [hl], e                                    ; $5969: $73
    ld [hl], e                                    ; $596a: $73
    ld l, a                                       ; $596b: $6f
    ld l, [hl]                                    ; $596c: $6e
    jr nz, jr_01e_59a1                            ; $596d: $20 $32

    nop                                           ; $596f: $00
    ld b, c                                       ; $5970: $41
    ld [hl], b                                    ; $5971: $70
    ld [hl], b                                    ; $5972: $70
    ld [hl], d                                    ; $5973: $72
    ld l, a                                       ; $5974: $6f

jr_01e_5975:
    ld h, c                                       ; $5975: $61

jr_01e_5976:
    ld h, e                                       ; $5976: $63
    ld l, b                                       ; $5977: $68
    jr nz, jr_01e_59c6                            ; $5978: $20 $4c

    ld h, l                                       ; $597a: $65
    ld [hl], e                                    ; $597b: $73
    ld [hl], e                                    ; $597c: $73
    ld l, a                                       ; $597d: $6f
    ld l, [hl]                                    ; $597e: $6e
    jr nz, jr_01e_59b2                            ; $597f: $20 $31

    nop                                           ; $5981: $00
    ld b, c                                       ; $5982: $41
    ld [hl], b                                    ; $5983: $70
    ld [hl], b                                    ; $5984: $70
    ld [hl], d                                    ; $5985: $72
    ld l, a                                       ; $5986: $6f
    ld h, c                                       ; $5987: $61

jr_01e_5988:
    ld h, e                                       ; $5988: $63
    ld l, b                                       ; $5989: $68
    jr nz, jr_01e_59d8                            ; $598a: $20 $4c

    ld h, l                                       ; $598c: $65
    ld [hl], e                                    ; $598d: $73
    ld [hl], e                                    ; $598e: $73
    ld l, a                                       ; $598f: $6f

jr_01e_5990:
    ld l, [hl]                                    ; $5990: $6e
    jr nz, jr_01e_59c5                            ; $5991: $20 $32

    nop                                           ; $5993: $00
    ld d, b                                       ; $5994: $50
    ld [hl], l                                    ; $5995: $75
    ld [hl], h                                    ; $5996: $74
    ld [hl], h                                    ; $5997: $74
    ld l, c                                       ; $5998: $69
    ld l, [hl]                                    ; $5999: $6e
    ld h, a                                       ; $599a: $67
    jr nz, jr_01e_59e0                            ; $599b: $20 $43

    ld l, a                                       ; $599d: $6f
    ld l, [hl]                                    ; $599e: $6e
    ld [hl], h                                    ; $599f: $74
    ld h, l                                       ; $59a0: $65

jr_01e_59a1:
    ld [hl], e                                    ; $59a1: $73
    ld [hl], h                                    ; $59a2: $74
    nop                                           ; $59a3: $00
    ld d, e                                       ; $59a4: $53
    ld l, b                                       ; $59a5: $68

jr_01e_59a6:
    ld l, a                                       ; $59a6: $6f
    ld [hl], h                                    ; $59a7: $74
    jr nz, jr_01e_59f6                            ; $59a8: $20 $4c

    ld h, l                                       ; $59aa: $65
    ld [hl], e                                    ; $59ab: $73
    ld [hl], e                                    ; $59ac: $73
    ld l, a                                       ; $59ad: $6f
    ld l, [hl]                                    ; $59ae: $6e
    jr nz, @+$33                                  ; $59af: $20 $31

    nop                                           ; $59b1: $00

jr_01e_59b2:
    ld d, e                                       ; $59b2: $53
    ld l, b                                       ; $59b3: $68

jr_01e_59b4:
    ld l, a                                       ; $59b4: $6f
    ld [hl], h                                    ; $59b5: $74
    jr nz, jr_01e_5a04                            ; $59b6: $20 $4c

    ld h, l                                       ; $59b8: $65
    ld [hl], e                                    ; $59b9: $73
    ld [hl], e                                    ; $59ba: $73
    ld l, a                                       ; $59bb: $6f
    ld l, [hl]                                    ; $59bc: $6e
    jr nz, jr_01e_59f1                            ; $59bd: $20 $32

    nop                                           ; $59bf: $00
    ld b, c                                       ; $59c0: $41
    ld [hl], b                                    ; $59c1: $70
    ld [hl], b                                    ; $59c2: $70
    ld [hl], d                                    ; $59c3: $72
    ld l, a                                       ; $59c4: $6f

jr_01e_59c5:
    ld h, c                                       ; $59c5: $61

jr_01e_59c6:
    ld h, e                                       ; $59c6: $63
    ld l, b                                       ; $59c7: $68
    jr nz, @+$4e                                  ; $59c8: $20 $4c

    ld h, l                                       ; $59ca: $65
    ld [hl], e                                    ; $59cb: $73
    ld [hl], e                                    ; $59cc: $73
    ld l, a                                       ; $59cd: $6f
    ld l, [hl]                                    ; $59ce: $6e
    jr nz, jr_01e_5a02                            ; $59cf: $20 $31

    nop                                           ; $59d1: $00
    ld b, c                                       ; $59d2: $41
    ld [hl], b                                    ; $59d3: $70
    ld [hl], b                                    ; $59d4: $70
    ld [hl], d                                    ; $59d5: $72
    ld l, a                                       ; $59d6: $6f
    ld h, c                                       ; $59d7: $61

jr_01e_59d8:
    ld h, e                                       ; $59d8: $63
    ld l, b                                       ; $59d9: $68
    jr nz, @+$4e                                  ; $59da: $20 $4c

    ld h, l                                       ; $59dc: $65
    ld [hl], e                                    ; $59dd: $73
    ld [hl], e                                    ; $59de: $73
    ld l, a                                       ; $59df: $6f

jr_01e_59e0:
    ld l, [hl]                                    ; $59e0: $6e
    jr nz, jr_01e_5a15                            ; $59e1: $20 $32

    nop                                           ; $59e3: $00
    ld d, b                                       ; $59e4: $50
    ld [hl], l                                    ; $59e5: $75
    ld [hl], h                                    ; $59e6: $74
    ld [hl], h                                    ; $59e7: $74
    ld l, c                                       ; $59e8: $69
    ld l, [hl]                                    ; $59e9: $6e
    ld h, a                                       ; $59ea: $67
    jr nz, jr_01e_5a30                            ; $59eb: $20 $43

    ld l, a                                       ; $59ed: $6f
    ld l, [hl]                                    ; $59ee: $6e
    ld [hl], h                                    ; $59ef: $74
    ld h, l                                       ; $59f0: $65

jr_01e_59f1:
    ld [hl], e                                    ; $59f1: $73
    ld [hl], h                                    ; $59f2: $74
    nop                                           ; $59f3: $00
    ld b, c                                       ; $59f4: $41
    ld l, h                                       ; $59f5: $6c

jr_01e_59f6:
    ld [hl], h                                    ; $59f6: $74
    ld h, l                                       ; $59f7: $65
    ld [hl], d                                    ; $59f8: $72
    ld l, [hl]                                    ; $59f9: $6e
    ld h, c                                       ; $59fa: $61
    ld [hl], h                                    ; $59fb: $74
    ld h, l                                       ; $59fc: $65
    jr nz, jr_01e_5a46                            ; $59fd: $20 $47

    ld h, c                                       ; $59ff: $61
    ld l, l                                       ; $5a00: $6d
    ld h, l                                       ; $5a01: $65

jr_01e_5a02:
    nop                                           ; $5a02: $00
    ld d, e                                       ; $5a03: $53

jr_01e_5a04:
    ld l, b                                       ; $5a04: $68
    ld l, a                                       ; $5a05: $6f
    ld [hl], h                                    ; $5a06: $74
    jr nz, jr_01e_5a55                            ; $5a07: $20 $4c

    ld h, l                                       ; $5a09: $65
    ld [hl], e                                    ; $5a0a: $73
    ld [hl], e                                    ; $5a0b: $73
    ld l, a                                       ; $5a0c: $6f
    ld l, [hl]                                    ; $5a0d: $6e
    jr nz, @+$33                                  ; $5a0e: $20 $31

    nop                                           ; $5a10: $00
    ld d, e                                       ; $5a11: $53
    ld l, b                                       ; $5a12: $68
    ld l, a                                       ; $5a13: $6f
    ld [hl], h                                    ; $5a14: $74

jr_01e_5a15:
    jr nz, jr_01e_5a63                            ; $5a15: $20 $4c

    ld h, l                                       ; $5a17: $65
    ld [hl], e                                    ; $5a18: $73
    ld [hl], e                                    ; $5a19: $73
    ld l, a                                       ; $5a1a: $6f
    ld l, [hl]                                    ; $5a1b: $6e
    jr nz, jr_01e_5a50                            ; $5a1c: $20 $32

    nop                                           ; $5a1e: $00
    ld b, c                                       ; $5a1f: $41
    ld [hl], b                                    ; $5a20: $70
    ld [hl], b                                    ; $5a21: $70
    ld [hl], d                                    ; $5a22: $72
    ld l, a                                       ; $5a23: $6f
    ld h, c                                       ; $5a24: $61
    ld h, e                                       ; $5a25: $63
    ld l, b                                       ; $5a26: $68
    jr nz, jr_01e_5a75                            ; $5a27: $20 $4c

    ld h, l                                       ; $5a29: $65
    ld [hl], e                                    ; $5a2a: $73
    ld [hl], e                                    ; $5a2b: $73
    ld l, a                                       ; $5a2c: $6f
    ld l, [hl]                                    ; $5a2d: $6e
    jr nz, jr_01e_5a61                            ; $5a2e: $20 $31

jr_01e_5a30:
    nop                                           ; $5a30: $00
    ld b, c                                       ; $5a31: $41
    ld [hl], b                                    ; $5a32: $70
    ld [hl], b                                    ; $5a33: $70
    ld [hl], d                                    ; $5a34: $72
    ld l, a                                       ; $5a35: $6f
    ld h, c                                       ; $5a36: $61
    ld h, e                                       ; $5a37: $63
    ld l, b                                       ; $5a38: $68
    jr nz, jr_01e_5a87                            ; $5a39: $20 $4c

    ld h, l                                       ; $5a3b: $65
    ld [hl], e                                    ; $5a3c: $73
    ld [hl], e                                    ; $5a3d: $73
    ld l, a                                       ; $5a3e: $6f
    ld l, [hl]                                    ; $5a3f: $6e
    jr nz, jr_01e_5a74                            ; $5a40: $20 $32

    nop                                           ; $5a42: $00
    ld d, b                                       ; $5a43: $50
    ld [hl], l                                    ; $5a44: $75
    ld [hl], h                                    ; $5a45: $74

jr_01e_5a46:
    ld [hl], h                                    ; $5a46: $74
    ld l, c                                       ; $5a47: $69
    ld l, [hl]                                    ; $5a48: $6e
    ld h, a                                       ; $5a49: $67
    jr nz, jr_01e_5a8f                            ; $5a4a: $20 $43

    ld l, a                                       ; $5a4c: $6f
    ld l, [hl]                                    ; $5a4d: $6e
    ld [hl], h                                    ; $5a4e: $74
    ld h, l                                       ; $5a4f: $65

jr_01e_5a50:
    ld [hl], e                                    ; $5a50: $73
    ld [hl], h                                    ; $5a51: $74
    nop                                           ; $5a52: $00
    ld d, e                                       ; $5a53: $53
    ld l, b                                       ; $5a54: $68

jr_01e_5a55:
    ld l, a                                       ; $5a55: $6f
    ld [hl], h                                    ; $5a56: $74
    jr nz, jr_01e_5a9c                            ; $5a57: $20 $43

    ld l, a                                       ; $5a59: $6f
    ld l, [hl]                                    ; $5a5a: $6e
    ld [hl], h                                    ; $5a5b: $74
    ld h, l                                       ; $5a5c: $65
    ld [hl], e                                    ; $5a5d: $73
    ld [hl], h                                    ; $5a5e: $74
    jr nz, jr_01e_5a92                            ; $5a5f: $20 $31

jr_01e_5a61:
    nop                                           ; $5a61: $00
    ld d, e                                       ; $5a62: $53

jr_01e_5a63:
    ld l, b                                       ; $5a63: $68
    ld l, a                                       ; $5a64: $6f
    ld [hl], h                                    ; $5a65: $74
    jr nz, jr_01e_5aab                            ; $5a66: $20 $43

    ld l, a                                       ; $5a68: $6f
    ld l, [hl]                                    ; $5a69: $6e
    ld [hl], h                                    ; $5a6a: $74
    ld h, l                                       ; $5a6b: $65
    ld [hl], e                                    ; $5a6c: $73
    ld [hl], h                                    ; $5a6d: $74
    jr nz, jr_01e_5aa2                            ; $5a6e: $20 $32

    nop                                           ; $5a70: $00
    ld b, c                                       ; $5a71: $41
    ld [hl], b                                    ; $5a72: $70
    ld [hl], b                                    ; $5a73: $70

jr_01e_5a74:
    ld [hl], d                                    ; $5a74: $72

jr_01e_5a75:
    ld l, a                                       ; $5a75: $6f
    ld h, c                                       ; $5a76: $61
    ld h, e                                       ; $5a77: $63
    ld l, b                                       ; $5a78: $68
    jr nz, jr_01e_5abe                            ; $5a79: $20 $43

    ld l, a                                       ; $5a7b: $6f
    ld l, [hl]                                    ; $5a7c: $6e
    ld [hl], h                                    ; $5a7d: $74
    ld h, l                                       ; $5a7e: $65
    ld [hl], e                                    ; $5a7f: $73
    ld [hl], h                                    ; $5a80: $74
    jr nz, jr_01e_5ab4                            ; $5a81: $20 $31

    nop                                           ; $5a83: $00
    ld b, c                                       ; $5a84: $41
    ld [hl], b                                    ; $5a85: $70
    ld [hl], b                                    ; $5a86: $70

jr_01e_5a87:
    ld [hl], d                                    ; $5a87: $72
    ld l, a                                       ; $5a88: $6f
    ld h, c                                       ; $5a89: $61
    ld h, e                                       ; $5a8a: $63
    ld l, b                                       ; $5a8b: $68
    jr nz, jr_01e_5ad1                            ; $5a8c: $20 $43

    ld l, a                                       ; $5a8e: $6f

jr_01e_5a8f:
    ld l, [hl]                                    ; $5a8f: $6e
    ld [hl], h                                    ; $5a90: $74
    ld h, l                                       ; $5a91: $65

jr_01e_5a92:
    ld [hl], e                                    ; $5a92: $73
    ld [hl], h                                    ; $5a93: $74
    jr nz, jr_01e_5ac8                            ; $5a94: $20 $32

    nop                                           ; $5a96: $00
    ld d, a                                       ; $5a97: $57
    ld l, c                                       ; $5a98: $69
    ld l, [hl]                                    ; $5a99: $6e
    ld h, h                                       ; $5a9a: $64
    ld a, c                                       ; $5a9b: $79

jr_01e_5a9c:
    jr nz, @+$58                                  ; $5a9c: $20 $56

    ld h, c                                       ; $5a9e: $61
    ld l, h                                       ; $5a9f: $6c
    ld l, h                                       ; $5aa0: $6c
    ld h, l                                       ; $5aa1: $65

jr_01e_5aa2:
    ld a, c                                       ; $5aa2: $79
    jr nz, jr_01e_5aed                            ; $5aa3: $20 $48

    ld l, a                                       ; $5aa5: $6f
    ld l, h                                       ; $5aa6: $6c
    ld h, l                                       ; $5aa7: $65
    jr nz, jr_01e_5adb                            ; $5aa8: $20 $31

    nop                                           ; $5aaa: $00

jr_01e_5aab:
    ld d, h                                       ; $5aab: $54
    ld l, c                                       ; $5aac: $69
    ld l, [hl]                                    ; $5aad: $6e
    ld a, c                                       ; $5aae: $79
    dec l                                         ; $5aaf: $2d
    ld d, h                                       ; $5ab0: $54
    ld l, a                                       ; $5ab1: $6f
    ld [hl], h                                    ; $5ab2: $74
    ld [hl], e                                    ; $5ab3: $73

jr_01e_5ab4:
    jr nz, jr_01e_5afd                            ; $5ab4: $20 $47

    ld l, a                                       ; $5ab6: $6f
    ld l, h                                       ; $5ab7: $6c
    ld h, [hl]                                    ; $5ab8: $66
    jr nz, jr_01e_5b02                            ; $5ab9: $20 $47

    ld [hl], d                                    ; $5abb: $72
    ld l, a                                       ; $5abc: $6f
    ld [hl], l                                    ; $5abd: $75

jr_01e_5abe:
    ld l, [hl]                                    ; $5abe: $6e
    ld h, h                                       ; $5abf: $64
    ld [hl], e                                    ; $5ac0: $73
    jr nz, jr_01e_5ae3                            ; $5ac1: $20 $20

    nop                                           ; $5ac3: $00
    ld c, l                                       ; $5ac4: $4d
    ld l, c                                       ; $5ac5: $69
    ld l, [hl]                                    ; $5ac6: $6e
    ld l, c                                       ; $5ac7: $69

jr_01e_5ac8:
    dec l                                         ; $5ac8: $2d
    ld c, l                                       ; $5ac9: $4d
    ld l, c                                       ; $5aca: $69
    ld l, [hl]                                    ; $5acb: $6e
    ld l, c                                       ; $5acc: $69
    jr nz, jr_01e_5b1b                            ; $5acd: $20 $4c

    ld h, c                                       ; $5acf: $61
    ld l, e                                       ; $5ad0: $6b

jr_01e_5ad1:
    ld h, l                                       ; $5ad1: $65
    jr nz, jr_01e_5b17                            ; $5ad2: $20 $43

    ld l, a                                       ; $5ad4: $6f
    ld [hl], l                                    ; $5ad5: $75
    ld [hl], d                                    ; $5ad6: $72
    ld [hl], e                                    ; $5ad7: $73
    ld h, l                                       ; $5ad8: $65
    nop                                           ; $5ad9: $00
    ld d, a                                       ; $5ada: $57

jr_01e_5adb:
    ld l, c                                       ; $5adb: $69
    ld l, [hl]                                    ; $5adc: $6e
    ld h, h                                       ; $5add: $64
    ld a, c                                       ; $5ade: $79
    jr nz, jr_01e_5b37                            ; $5adf: $20 $56

    ld h, c                                       ; $5ae1: $61
    ld l, h                                       ; $5ae2: $6c

jr_01e_5ae3:
    ld l, h                                       ; $5ae3: $6c
    ld h, l                                       ; $5ae4: $65
    ld a, c                                       ; $5ae5: $79
    jr nz, jr_01e_5b30                            ; $5ae6: $20 $48

    ld l, a                                       ; $5ae8: $6f
    ld l, h                                       ; $5ae9: $6c
    ld h, l                                       ; $5aea: $65
    jr nz, jr_01e_5b1f                            ; $5aeb: $20 $32

jr_01e_5aed:
    nop                                           ; $5aed: $00
    ld d, d                                       ; $5aee: $52
    ld h, c                                       ; $5aef: $61
    halt                                          ; $5af0: $76
    ld h, l                                       ; $5af1: $65
    ld l, [hl]                                    ; $5af2: $6e
    jr nz, jr_01e_5b4c                            ; $5af3: $20 $57

    ld l, a                                       ; $5af5: $6f
    ld l, a                                       ; $5af6: $6f
    ld h, h                                       ; $5af7: $64
    ld [hl], e                                    ; $5af8: $73
    jr nz, jr_01e_5b3e                            ; $5af9: $20 $43

    ld l, a                                       ; $5afb: $6f
    ld [hl], l                                    ; $5afc: $75

jr_01e_5afd:
    ld [hl], d                                    ; $5afd: $72
    ld [hl], e                                    ; $5afe: $73
    ld h, l                                       ; $5aff: $65
    nop                                           ; $5b00: $00
    ld b, a                                       ; $5b01: $47

jr_01e_5b02:
    ld l, a                                       ; $5b02: $6f
    ld l, h                                       ; $5b03: $6c
    ld h, [hl]                                    ; $5b04: $66
    jr nz, jr_01e_5b4e                            ; $5b05: $20 $47

    ld [hl], l                                    ; $5b07: $75
    ld [hl], d                                    ; $5b08: $72
    ld [hl], l                                    ; $5b09: $75
    daa                                           ; $5b0a: $27
    ld [hl], e                                    ; $5b0b: $73
    jr nz, jr_01e_5b5e                            ; $5b0c: $20 $50

    ld l, c                                       ; $5b0e: $69
    ld [hl], h                                    ; $5b0f: $74
    ld h, e                                       ; $5b10: $63
    ld l, b                                       ; $5b11: $68
    jr nz, jr_01e_5b3a                            ; $5b12: $20 $26

    jr nz, @+$52                                  ; $5b14: $20 $50

    ld [hl], l                                    ; $5b16: $75

jr_01e_5b17:
    ld [hl], h                                    ; $5b17: $74
    ld [hl], h                                    ; $5b18: $74
    jr nz, jr_01e_5b3b                            ; $5b19: $20 $20

jr_01e_5b1b:
    nop                                           ; $5b1b: $00
    ld c, [hl]                                    ; $5b1c: $4e
    ld h, c                                       ; $5b1d: $61
    halt                                          ; $5b1e: $76

jr_01e_5b1f:
    ld l, c                                       ; $5b1f: $69
    ld h, a                                       ; $5b20: $67
    ld h, c                                       ; $5b21: $61
    ld [hl], h                                    ; $5b22: $74
    ld l, c                                       ; $5b23: $69
    ld l, a                                       ; $5b24: $6f
    ld l, [hl]                                    ; $5b25: $6e
    nop                                           ; $5b26: $00
    ld c, l                                       ; $5b27: $4d
    ld h, c                                       ; $5b28: $61
    ld [hl], d                                    ; $5b29: $72
    ld l, c                                       ; $5b2a: $69
    ld l, a                                       ; $5b2b: $6f
    ld l, [hl]                                    ; $5b2c: $6e
    jr nz, jr_01e_5b72                            ; $5b2d: $20 $43

    ld l, h                                       ; $5b2f: $6c

jr_01e_5b30:
    ld [hl], l                                    ; $5b30: $75
    ld h, d                                       ; $5b31: $62
    nop                                           ; $5b32: $00
    ld d, b                                       ; $5b33: $50
    ld h, c                                       ; $5b34: $61
    ld l, h                                       ; $5b35: $6c
    ld l, l                                       ; $5b36: $6d

jr_01e_5b37:
    jr nz, jr_01e_5b7c                            ; $5b37: $20 $43

    ld l, h                                       ; $5b39: $6c

jr_01e_5b3a:
    ld [hl], l                                    ; $5b3a: $75

jr_01e_5b3b:
    ld h, d                                       ; $5b3b: $62
    nop                                           ; $5b3c: $00
    ld b, h                                       ; $5b3d: $44

jr_01e_5b3e:
    ld [hl], l                                    ; $5b3e: $75
    ld l, [hl]                                    ; $5b3f: $6e
    ld h, l                                       ; $5b40: $65
    jr nz, jr_01e_5b86                            ; $5b41: $20 $43

    ld l, h                                       ; $5b43: $6c
    ld [hl], l                                    ; $5b44: $75
    ld h, d                                       ; $5b45: $62
    nop                                           ; $5b46: $00
    ld c, h                                       ; $5b47: $4c
    ld l, c                                       ; $5b48: $69
    ld l, [hl]                                    ; $5b49: $6e
    ld l, e                                       ; $5b4a: $6b
    ld [hl], e                                    ; $5b4b: $73

jr_01e_5b4c:
    jr nz, @+$45                                  ; $5b4c: $20 $43

jr_01e_5b4e:
    ld l, h                                       ; $5b4e: $6c
    ld [hl], l                                    ; $5b4f: $75
    ld h, d                                       ; $5b50: $62
    nop                                           ; $5b51: $00
    ld d, b                                       ; $5b52: $50
    ld h, l                                       ; $5b53: $65
    ld h, c                                       ; $5b54: $61
    ld h, e                                       ; $5b55: $63
    ld l, b                                       ; $5b56: $68
    daa                                           ; $5b57: $27
    ld [hl], e                                    ; $5b58: $73
    jr nz, jr_01e_5b9e                            ; $5b59: $20 $43

    ld h, c                                       ; $5b5b: $61
    ld [hl], e                                    ; $5b5c: $73
    ld [hl], h                                    ; $5b5d: $74

jr_01e_5b5e:
    ld l, h                                       ; $5b5e: $6c
    ld h, l                                       ; $5b5f: $65
    nop                                           ; $5b60: $00
    ld b, a                                       ; $5b61: $47
    ld l, a                                       ; $5b62: $6f
    ld l, h                                       ; $5b63: $6c
    ld h, [hl]                                    ; $5b64: $66
    jr nz, jr_01e_5baa                            ; $5b65: $20 $43

    ld l, h                                       ; $5b67: $6c
    ld l, c                                       ; $5b68: $69
    ld l, [hl]                                    ; $5b69: $6e
    ld l, c                                       ; $5b6a: $69
    ld h, e                                       ; $5b6b: $63
    jr nz, jr_01e_5b6e                            ; $5b6c: $20 $00

jr_01e_5b6e:
    ld b, e                                       ; $5b6e: $43
    ld l, h                                       ; $5b6f: $6c
    ld [hl], l                                    ; $5b70: $75
    ld h, d                                       ; $5b71: $62

jr_01e_5b72:
    jr nz, jr_01e_5bc1                            ; $5b72: $20 $4d

    ld h, c                                       ; $5b74: $61
    ld l, e                                       ; $5b75: $6b
    ld h, l                                       ; $5b76: $65
    ld [hl], d                                    ; $5b77: $72
    daa                                           ; $5b78: $27
    ld [hl], e                                    ; $5b79: $73
    jr nz, jr_01e_5bc4                            ; $5b7a: $20 $48

jr_01e_5b7c:
    ld [hl], l                                    ; $5b7c: $75
    ld [hl], h                                    ; $5b7d: $74
    nop                                           ; $5b7e: $00
    ld d, a                                       ; $5b7f: $57
    ld l, c                                       ; $5b80: $69
    ld l, [hl]                                    ; $5b81: $6e
    ld h, h                                       ; $5b82: $64
    ld a, c                                       ; $5b83: $79
    jr nz, jr_01e_5bdc                            ; $5b84: $20 $56

jr_01e_5b86:
    ld h, c                                       ; $5b86: $61
    ld l, h                                       ; $5b87: $6c
    ld l, h                                       ; $5b88: $6c
    ld h, l                                       ; $5b89: $65
    ld a, c                                       ; $5b8a: $79
    jr nz, jr_01e_5bd5                            ; $5b8b: $20 $48

    ld l, a                                       ; $5b8d: $6f
    ld l, h                                       ; $5b8e: $6c
    ld h, l                                       ; $5b8f: $65
    jr nz, jr_01e_5bc3                            ; $5b90: $20 $31

    nop                                           ; $5b92: $00
    ld d, a                                       ; $5b93: $57
    ld l, c                                       ; $5b94: $69
    ld l, [hl]                                    ; $5b95: $6e
    ld h, h                                       ; $5b96: $64
    ld a, c                                       ; $5b97: $79
    jr nz, jr_01e_5bf0                            ; $5b98: $20 $56

    ld h, c                                       ; $5b9a: $61
    ld l, h                                       ; $5b9b: $6c
    ld l, h                                       ; $5b9c: $6c
    ld h, l                                       ; $5b9d: $65

jr_01e_5b9e:
    ld a, c                                       ; $5b9e: $79
    jr nz, jr_01e_5be9                            ; $5b9f: $20 $48

    ld l, a                                       ; $5ba1: $6f
    ld l, h                                       ; $5ba2: $6c
    ld h, l                                       ; $5ba3: $65
    jr nz, jr_01e_5bd8                            ; $5ba4: $20 $32

    nop                                           ; $5ba6: $00
    ld d, h                                       ; $5ba7: $54
    ld l, c                                       ; $5ba8: $69
    ld l, [hl]                                    ; $5ba9: $6e

jr_01e_5baa:
    ld a, c                                       ; $5baa: $79
    dec l                                         ; $5bab: $2d
    ld d, h                                       ; $5bac: $54
    ld l, a                                       ; $5bad: $6f
    ld [hl], h                                    ; $5bae: $74
    ld [hl], e                                    ; $5baf: $73
    jr nz, @+$49                                  ; $5bb0: $20 $47

    ld l, a                                       ; $5bb2: $6f
    ld l, h                                       ; $5bb3: $6c
    ld h, [hl]                                    ; $5bb4: $66
    jr nz, jr_01e_5bfe                            ; $5bb5: $20 $47

    ld [hl], d                                    ; $5bb7: $72
    ld l, a                                       ; $5bb8: $6f
    ld [hl], l                                    ; $5bb9: $75
    ld l, [hl]                                    ; $5bba: $6e
    ld h, h                                       ; $5bbb: $64
    ld [hl], e                                    ; $5bbc: $73
    nop                                           ; $5bbd: $00
    ld c, l                                       ; $5bbe: $4d
    ld l, c                                       ; $5bbf: $69
    ld l, [hl]                                    ; $5bc0: $6e

jr_01e_5bc1:
    ld l, c                                       ; $5bc1: $69
    dec l                                         ; $5bc2: $2d

jr_01e_5bc3:
    ld c, l                                       ; $5bc3: $4d

jr_01e_5bc4:
    ld l, c                                       ; $5bc4: $69
    ld l, [hl]                                    ; $5bc5: $6e
    ld l, c                                       ; $5bc6: $69
    jr nz, @+$4e                                  ; $5bc7: $20 $4c

    ld h, c                                       ; $5bc9: $61
    ld l, e                                       ; $5bca: $6b
    ld h, l                                       ; $5bcb: $65
    jr nz, jr_01e_5c11                            ; $5bcc: $20 $43

    ld l, a                                       ; $5bce: $6f
    ld [hl], l                                    ; $5bcf: $75
    ld [hl], d                                    ; $5bd0: $72
    ld [hl], e                                    ; $5bd1: $73
    ld h, l                                       ; $5bd2: $65
    nop                                           ; $5bd3: $00
    ld d, d                                       ; $5bd4: $52

jr_01e_5bd5:
    ld h, c                                       ; $5bd5: $61
    halt                                          ; $5bd6: $76
    ld h, l                                       ; $5bd7: $65

jr_01e_5bd8:
    ld l, [hl]                                    ; $5bd8: $6e
    jr nz, jr_01e_5c32                            ; $5bd9: $20 $57

    ld l, a                                       ; $5bdb: $6f

jr_01e_5bdc:
    ld l, a                                       ; $5bdc: $6f
    ld h, h                                       ; $5bdd: $64
    ld [hl], e                                    ; $5bde: $73
    jr nz, jr_01e_5c24                            ; $5bdf: $20 $43

    ld l, a                                       ; $5be1: $6f
    ld [hl], l                                    ; $5be2: $75
    ld [hl], d                                    ; $5be3: $72
    ld [hl], e                                    ; $5be4: $73
    ld h, l                                       ; $5be5: $65
    nop                                           ; $5be6: $00
    ld b, a                                       ; $5be7: $47
    ld l, a                                       ; $5be8: $6f

jr_01e_5be9:
    ld l, h                                       ; $5be9: $6c
    ld h, [hl]                                    ; $5bea: $66
    jr nz, jr_01e_5c34                            ; $5beb: $20 $47

    ld [hl], l                                    ; $5bed: $75
    ld [hl], d                                    ; $5bee: $72
    ld [hl], l                                    ; $5bef: $75

jr_01e_5bf0:
    daa                                           ; $5bf0: $27
    ld [hl], e                                    ; $5bf1: $73
    jr nz, jr_01e_5c44                            ; $5bf2: $20 $50

    ld l, c                                       ; $5bf4: $69
    ld [hl], h                                    ; $5bf5: $74
    ld h, e                                       ; $5bf6: $63
    ld l, b                                       ; $5bf7: $68
    jr nz, jr_01e_5c20                            ; $5bf8: $20 $26

    jr nz, @+$52                                  ; $5bfa: $20 $50

    ld [hl], l                                    ; $5bfc: $75
    ld [hl], h                                    ; $5bfd: $74

jr_01e_5bfe:
    ld [hl], h                                    ; $5bfe: $74
    nop                                           ; $5bff: $00
    ld d, c                                       ; $5c00: $51
    ld [hl], l                                    ; $5c01: $75
    ld l, c                                       ; $5c02: $69
    ld [hl], h                                    ; $5c03: $74
    nop                                           ; $5c04: $00
    ld b, c                                       ; $5c05: $41
    jr nz, jr_01e_5c35                            ; $5c06: $20 $2d

    jr nz, @+$44                                  ; $5c08: $20 $42

    nop                                           ; $5c0a: $00
    ld b, e                                       ; $5c0b: $43
    jr nz, jr_01e_5c3b                            ; $5c0c: $20 $2d

    jr nz, jr_01e_5c54                            ; $5c0e: $20 $44

    nop                                           ; $5c10: $00

jr_01e_5c11:
    ld b, l                                       ; $5c11: $45
    jr nz, jr_01e_5c41                            ; $5c12: $20 $2d

    jr nz, @+$48                                  ; $5c14: $20 $46

    nop                                           ; $5c16: $00
    ld b, a                                       ; $5c17: $47
    jr nz, jr_01e_5c47                            ; $5c18: $20 $2d

    jr nz, jr_01e_5c65                            ; $5c1a: $20 $49

    nop                                           ; $5c1c: $00
    ld c, d                                       ; $5c1d: $4a
    jr nz, jr_01e_5c4d                            ; $5c1e: $20 $2d

jr_01e_5c20:
    jr nz, jr_01e_5c6f                            ; $5c20: $20 $4d

    nop                                           ; $5c22: $00
    ld c, [hl]                                    ; $5c23: $4e

jr_01e_5c24:
    jr nz, jr_01e_5c53                            ; $5c24: $20 $2d

    jr nz, jr_01e_5c78                            ; $5c26: $20 $50

    nop                                           ; $5c28: $00
    ld d, c                                       ; $5c29: $51
    jr nz, jr_01e_5c59                            ; $5c2a: $20 $2d

    jr nz, jr_01e_5c80                            ; $5c2c: $20 $52

    nop                                           ; $5c2e: $00
    ld d, e                                       ; $5c2f: $53
    jr nz, jr_01e_5c5f                            ; $5c30: $20 $2d

jr_01e_5c32:
    jr nz, @+$56                                  ; $5c32: $20 $54

jr_01e_5c34:
    nop                                           ; $5c34: $00

jr_01e_5c35:
    ld d, l                                       ; $5c35: $55
    jr nz, jr_01e_5c65                            ; $5c36: $20 $2d

    jr nz, jr_01e_5c92                            ; $5c38: $20 $58

    nop                                           ; $5c3a: $00

jr_01e_5c3b:
    ld e, c                                       ; $5c3b: $59
    jr nz, jr_01e_5c6b                            ; $5c3c: $20 $2d

    jr nz, jr_01e_5c9a                            ; $5c3e: $20 $5a

    nop                                           ; $5c40: $00

jr_01e_5c41:
    ld b, c                                       ; $5c41: $41
    ld [hl], e                                    ; $5c42: $73
    ld l, e                                       ; $5c43: $6b

jr_01e_5c44:
    jr nz, jr_01e_5ca7                            ; $5c44: $20 $61

    ld h, d                                       ; $5c46: $62

jr_01e_5c47:
    ld l, a                                       ; $5c47: $6f
    ld [hl], l                                    ; $5c48: $75
    ld [hl], h                                    ; $5c49: $74
    ld bc, $6f67                                  ; $5c4a: $01 $67 $6f

jr_01e_5c4d:
    ld l, h                                       ; $5c4d: $6c
    ld h, [hl]                                    ; $5c4e: $66
    jr nz, jr_01e_5cc5                            ; $5c4f: $20 $74

    ld h, l                                       ; $5c51: $65
    ld [hl], d                                    ; $5c52: $72

jr_01e_5c53:
    ld l, l                                       ; $5c53: $6d

jr_01e_5c54:
    ld [hl], e                                    ; $5c54: $73
    ld l, $03                                     ; $5c55: $2e $03
    nop                                           ; $5c57: $00
    ld b, c                                       ; $5c58: $41

jr_01e_5c59:
    ld [hl], e                                    ; $5c59: $73
    ld l, e                                       ; $5c5a: $6b
    jr nz, jr_01e_5cbe                            ; $5c5b: $20 $61

    ld h, d                                       ; $5c5d: $62
    ld l, a                                       ; $5c5e: $6f

jr_01e_5c5f:
    ld [hl], l                                    ; $5c5f: $75
    ld [hl], h                                    ; $5c60: $74
    ld bc, $6f67                                  ; $5c61: $01 $67 $6f
    ld l, h                                       ; $5c64: $6c

jr_01e_5c65:
    ld h, [hl]                                    ; $5c65: $66
    jr nz, jr_01e_5cda                            ; $5c66: $20 $72

    ld [hl], l                                    ; $5c68: $75
    ld l, h                                       ; $5c69: $6c
    ld h, l                                       ; $5c6a: $65

jr_01e_5c6b:
    ld [hl], e                                    ; $5c6b: $73
    ld l, $03                                     ; $5c6c: $2e $03
    nop                                           ; $5c6e: $00

jr_01e_5c6f:
    ld b, c                                       ; $5c6f: $41
    ld [hl], e                                    ; $5c70: $73
    ld l, e                                       ; $5c71: $6b
    jr nz, jr_01e_5cd5                            ; $5c72: $20 $61

    ld h, d                                       ; $5c74: $62
    ld l, a                                       ; $5c75: $6f
    ld [hl], l                                    ; $5c76: $75
    ld [hl], h                                    ; $5c77: $74

jr_01e_5c78:
    ld bc, $6f67                                  ; $5c78: $01 $67 $6f
    ld l, h                                       ; $5c7b: $6c
    ld h, [hl]                                    ; $5c7c: $66
    jr nz, jr_01e_5ce4                            ; $5c7d: $20 $65

    ld [hl], c                                    ; $5c7f: $71

jr_01e_5c80:
    ld [hl], l                                    ; $5c80: $75
    ld l, c                                       ; $5c81: $69
    ld [hl], b                                    ; $5c82: $70
    ld l, l                                       ; $5c83: $6d
    ld h, l                                       ; $5c84: $65
    ld l, [hl]                                    ; $5c85: $6e
    ld [hl], h                                    ; $5c86: $74
    ld l, $03                                     ; $5c87: $2e $03
    nop                                           ; $5c89: $00
    ld b, c                                       ; $5c8a: $41
    ld [hl], e                                    ; $5c8b: $73
    ld l, e                                       ; $5c8c: $6b
    jr nz, jr_01e_5cf0                            ; $5c8d: $20 $61

    ld h, d                                       ; $5c8f: $62
    ld l, a                                       ; $5c90: $6f
    ld [hl], l                                    ; $5c91: $75

jr_01e_5c92:
    ld [hl], h                                    ; $5c92: $74
    ld bc, $6f67                                  ; $5c93: $01 $67 $6f
    ld l, h                                       ; $5c96: $6c
    ld h, [hl]                                    ; $5c97: $66
    jr nz, jr_01e_5d0e                            ; $5c98: $20 $74

jr_01e_5c9a:
    ld h, l                                       ; $5c9a: $65
    ld h, e                                       ; $5c9b: $63
    ld l, b                                       ; $5c9c: $68
    ld l, [hl]                                    ; $5c9d: $6e
    ld l, c                                       ; $5c9e: $69
    ld [hl], c                                    ; $5c9f: $71
    ld [hl], l                                    ; $5ca0: $75
    ld h, l                                       ; $5ca1: $65
    ld [hl], e                                    ; $5ca2: $73
    ld l, $03                                     ; $5ca3: $2e $03
    nop                                           ; $5ca5: $00
    ld b, c                                       ; $5ca6: $41

jr_01e_5ca7:
    ld [hl], e                                    ; $5ca7: $73
    ld l, e                                       ; $5ca8: $6b
    jr nz, jr_01e_5d0c                            ; $5ca9: $20 $61

    ld h, d                                       ; $5cab: $62
    ld l, a                                       ; $5cac: $6f
    ld [hl], l                                    ; $5cad: $75
    ld [hl], h                                    ; $5cae: $74
    ld bc, $6f67                                  ; $5caf: $01 $67 $6f
    ld l, h                                       ; $5cb2: $6c
    ld h, [hl]                                    ; $5cb3: $66
    jr nz, jr_01e_5d1c                            ; $5cb4: $20 $66

    ld h, c                                       ; $5cb6: $61
    ld h, e                                       ; $5cb7: $63
    ld l, c                                       ; $5cb8: $69
    ld l, h                                       ; $5cb9: $6c
    ld l, c                                       ; $5cba: $69
    ld [hl], h                                    ; $5cbb: $74
    ld l, c                                       ; $5cbc: $69
    ld h, l                                       ; $5cbd: $65

jr_01e_5cbe:
    ld [hl], e                                    ; $5cbe: $73
    ld l, $03                                     ; $5cbf: $2e $03
    nop                                           ; $5cc1: $00
    ld d, [hl]                                    ; $5cc2: $56
    ld l, c                                       ; $5cc3: $69
    ld h, l                                       ; $5cc4: $65

jr_01e_5cc5:
    ld [hl], a                                    ; $5cc5: $77
    jr nz, jr_01e_5d3c                            ; $5cc6: $20 $74

    ld l, b                                       ; $5cc8: $68
    ld h, l                                       ; $5cc9: $65
    jr nz, jr_01e_5d31                            ; $5cca: $20 $65

    ld l, [hl]                                    ; $5ccc: $6e
    ld [hl], h                                    ; $5ccd: $74
    ld l, c                                       ; $5cce: $69
    ld [hl], d                                    ; $5ccf: $72
    ld h, l                                       ; $5cd0: $65
    ld bc, $6964                                  ; $5cd1: $01 $64 $69
    ld h, e                                       ; $5cd4: $63

jr_01e_5cd5:
    ld [hl], h                                    ; $5cd5: $74
    ld l, c                                       ; $5cd6: $69
    ld l, a                                       ; $5cd7: $6f
    ld l, [hl]                                    ; $5cd8: $6e
    ld h, c                                       ; $5cd9: $61

jr_01e_5cda:
    ld [hl], d                                    ; $5cda: $72
    ld a, c                                       ; $5cdb: $79
    jr nz, jr_01e_5d46                            ; $5cdc: $20 $68

    ld h, l                                       ; $5cde: $65
    ld [hl], d                                    ; $5cdf: $72
    ld h, l                                       ; $5ce0: $65
    ld l, $03                                     ; $5ce1: $2e $03
    nop                                           ; $5ce3: $00

jr_01e_5ce4:
    ld b, a                                       ; $5ce4: $47
    ld l, a                                       ; $5ce5: $6f
    ld l, h                                       ; $5ce6: $6c
    ld h, [hl]                                    ; $5ce7: $66
    jr nz, @+$7b                                  ; $5ce8: $20 $79

    ld l, a                                       ; $5cea: $6f
    ld [hl], l                                    ; $5ceb: $75
    ld h, a                                       ; $5cec: $67
    ld l, a                                       ; $5ced: $6f
    jr nz, @+$6c                                  ; $5cee: $20 $6a

jr_01e_5cf0:
    ld l, c                                       ; $5cf0: $69
    ld [hl], h                                    ; $5cf1: $74
    ld h, l                                       ; $5cf2: $65
    ld l, [hl]                                    ; $5cf3: $6e
    nop                                           ; $5cf4: $00
    ld b, a                                       ; $5cf5: $47
    ld l, a                                       ; $5cf6: $6f
    ld l, h                                       ; $5cf7: $6c
    ld h, [hl]                                    ; $5cf8: $66
    jr nz, @+$74                                  ; $5cf9: $20 $72

    ld [hl], l                                    ; $5cfb: $75
    ld l, h                                       ; $5cfc: $6c
    ld h, l                                       ; $5cfd: $65
    jr nz, @+$6c                                  ; $5cfe: $20 $6a

    ld l, c                                       ; $5d00: $69
    ld [hl], h                                    ; $5d01: $74
    ld h, l                                       ; $5d02: $65
    ld l, [hl]                                    ; $5d03: $6e
    nop                                           ; $5d04: $00
    ld b, a                                       ; $5d05: $47
    ld l, a                                       ; $5d06: $6f
    ld l, h                                       ; $5d07: $6c
    ld h, [hl]                                    ; $5d08: $66
    jr nz, @+$66                                  ; $5d09: $20 $64

    ld l, a                                       ; $5d0b: $6f

jr_01e_5d0c:
    ld [hl], l                                    ; $5d0c: $75
    ld h, a                                       ; $5d0d: $67

jr_01e_5d0e:
    ld [hl], l                                    ; $5d0e: $75
    jr nz, @+$6c                                  ; $5d0f: $20 $6a

    ld l, c                                       ; $5d11: $69
    ld [hl], h                                    ; $5d12: $74
    ld h, l                                       ; $5d13: $65
    ld l, [hl]                                    ; $5d14: $6e
    nop                                           ; $5d15: $00
    ld b, a                                       ; $5d16: $47
    ld l, a                                       ; $5d17: $6f
    ld l, h                                       ; $5d18: $6c
    ld h, [hl]                                    ; $5d19: $66
    jr nz, @+$69                                  ; $5d1a: $20 $67

jr_01e_5d1c:
    ld l, c                                       ; $5d1c: $69
    ld l, d                                       ; $5d1d: $6a
    ld a, c                                       ; $5d1e: $79
    ld [hl], l                                    ; $5d1f: $75
    ld [hl], h                                    ; $5d20: $74
    ld [hl], l                                    ; $5d21: $75
    jr nz, @+$6c                                  ; $5d22: $20 $6a

    ld l, c                                       ; $5d24: $69
    ld [hl], h                                    ; $5d25: $74
    ld h, l                                       ; $5d26: $65
    ld l, [hl]                                    ; $5d27: $6e
    nop                                           ; $5d28: $00
    ld b, a                                       ; $5d29: $47
    ld l, a                                       ; $5d2a: $6f
    ld l, h                                       ; $5d2b: $6c
    ld h, [hl]                                    ; $5d2c: $66
    jr nz, @+$75                                  ; $5d2d: $20 $73

    ld l, c                                       ; $5d2f: $69
    ld [hl], e                                    ; $5d30: $73

jr_01e_5d31:
    ld h, l                                       ; $5d31: $65
    ld [hl], h                                    ; $5d32: $74
    ld [hl], l                                    ; $5d33: $75
    jr nz, @+$6c                                  ; $5d34: $20 $6a

    ld l, c                                       ; $5d36: $69
    ld [hl], h                                    ; $5d37: $74
    ld h, l                                       ; $5d38: $65
    ld l, [hl]                                    ; $5d39: $6e
    nop                                           ; $5d3a: $00
    ld b, a                                       ; $5d3b: $47

jr_01e_5d3c:
    ld l, a                                       ; $5d3c: $6f
    ld l, h                                       ; $5d3d: $6c
    ld h, [hl]                                    ; $5d3e: $66
    jr nz, @+$6b                                  ; $5d3f: $20 $69

    ld l, [hl]                                    ; $5d41: $6e
    ld h, h                                       ; $5d42: $64
    ld h, l                                       ; $5d43: $65
    ld a, b                                       ; $5d44: $78
    nop                                           ; $5d45: $00

jr_01e_5d46:
    ld b, a                                       ; $5d46: $47
    ld l, a                                       ; $5d47: $6f
    ld l, h                                       ; $5d48: $6c
    ld h, [hl]                                    ; $5d49: $66
    jr nz, @+$6c                                  ; $5d4a: $20 $6a

    ld l, c                                       ; $5d4c: $69
    ld [hl], h                                    ; $5d4d: $74
    ld h, l                                       ; $5d4e: $65
    ld l, [hl]                                    ; $5d4f: $6e
    nop                                           ; $5d50: $00

    db $61, $64, $64, $72, $65, $73, $73, $00, $61, $67, $61, $69, $6e, $73, $74, $00
    db $61, $67, $65, $20, $73, $68, $6f, $6f, $74, $00, $61, $6c, $62, $61, $74, $72
    db $6f, $73, $73, $00, $61, $6c, $74, $65, $72, $6e, $61, $74, $65, $00, $61, $70
    db $70, $72, $6f, $61, $63, $68, $00, $61, $74, $20, $74, $68, $65, $20, $74, $75
    db $72, $6e, $00, $61, $76, $65, $72, $61, $67, $65, $00, $61, $76, $65, $72, $61
    db $67, $65, $20, $64, $72, $69, $76, $65, $00, $61, $76, $65, $72, $61, $67, $65
    db $20, $70, $75, $74, $74, $73, $00, $61, $76, $65, $72, $61, $67, $65, $20, $73
    db $63, $6f, $72, $65, $00, $62, $61, $63, $6b, $00, $62, $61, $63, $6b, $73, $70
    db $69, $6e, $00, $62, $61, $63, $6b, $73, $77, $69, $6e, $67, $00, $62, $61, $66
    db $66, $79, $00, $62, $61, $6c, $6c, $00, $62, $61, $72, $65, $20, $67, $72, $6f
    db $75, $6e, $64, $00, $62, $65, $73, $74, $20, $64, $72, $69, $76, $65, $00, $62
    db $65, $73, $74, $20, $67, $72, $6f, $73, $73, $00, $62, $65, $73, $74, $20, $73
    db $63, $6f, $72, $65, $00, $62, $65, $74, $00, $62, $69, $72, $64, $69, $65, $00
    db $62, $6c, $69, $6e, $64, $00, $62, $6f, $67, $65, $79, $00, $63, $61, $64, $64
    db $69, $65, $00, $63, $61, $64, $64, $69, $65, $20, $6d, $61, $73, $74, $65, $72
    db $00, $63, $61, $72, $72, $79, $00, $63, $68, $69, $70, $20, $73, $68, $6f, $74
    db $00, $63, $68, $69, $70, $2d, $69, $6e, $00, $63, $6c, $65, $65, $6b, $00, $63
    db $6c, $6f, $73, $65, $73, $74, $20, $74, $6f, $20, $70, $69, $6e, $00, $63, $6c
    db $75, $62, $00, $63, $6c, $75, $62, $20, $63, $68, $61, $6d, $70, $69, $6f, $6e
    db $00, $63, $6c, $75, $62, $20, $63, $68, $61, $6d, $70, $69, $6f, $6e, $73, $68
    db $69, $70, $00, $63, $6c, $75, $62, $20, $73, $65, $74, $00, $63, $6c, $75, $62
    db $68, $6f, $75, $73, $65, $00, $63, $6f, $75, $72, $73, $65, $00, $63, $6f, $75
    db $72, $73, $65, $20, $6c, $61, $79, $6f, $75, $74, $00, $63, $6f, $75, $72, $73
    db $65, $20, $72, $61, $74, $69, $6e, $67, $00, $63, $72, $65, $65, $6b, $00, $63
    db $72, $6f, $73, $73, $2d, $62, $75, $6e, $6b, $65, $72, $00, $63, $75, $70, $00
    db $63, $75, $70, $20, $69, $6e, $00, $64, $65, $61, $64, $00, $64, $65, $65, $70
    db $20, $72, $6f, $75, $67, $68, $00, $64, $65, $66, $65, $6e, $64, $69, $6e, $67
    db $20, $63, $68, $61, $6d, $70, $69, $6f, $6e, $00, $64, $69, $6d, $70, $6c, $65
    db $00, $64, $69, $76, $6f, $74, $00, $64, $6f, $67, $6c, $65, $67, $00, $64, $6f
    db $72, $6d, $69, $65, $00, $64, $6f, $75, $62, $6c, $65, $20, $62, $6f, $67, $65
    db $79, $00, $64, $6f, $77, $6e, $73, $77, $69, $6e, $67, $00, $64, $72, $61, $77
    db $00, $64, $72, $69, $76, $65, $72, $00, $64, $72, $69, $76, $69, $6e, $67, $20
    db $63, $6f, $6e, $74, $65, $73, $74, $00, $64, $72, $6f, $70, $00, $64, $75, $66
    db $66, $00, $65, $61, $67, $6c, $65, $00, $65, $76, $65, $6e, $20, $70, $61, $72
    db $00, $65, $78, $70, $6c, $6f, $73, $69, $6f, $6e, $00, $66, $61, $63, $65, $00
    db $66, $61, $64, $65, $00, $66, $61, $69, $72, $77, $61, $79, $00, $66, $61, $69
    db $72, $77, $61, $79, $20, $62, $75, $6e, $6b, $65, $72, $00, $66, $61, $69, $72
    db $77, $61, $79, $20, $77, $6f, $6f, $64, $00, $66, $6c, $69, $65, $72, $00, $66
    db $6f, $6c, $6c, $6f, $77, $20, $74, $68, $72, $6f, $75, $67, $68, $00, $66, $6f
    db $72, $65, $00, $66, $6f, $72, $6b, $00, $66, $72, $6f, $6e, $74, $00, $67, $61
    db $6d

    ld h, d                                       ; $5fd2: $62
    ld l, h                                       ; $5fd3: $6c
    ld h, l                                       ; $5fd4: $65
    jr nz, jr_01e_604a                            ; $5fd5: $20 $73

    ld l, b                                       ; $5fd7: $68
    ld l, a                                       ; $5fd8: $6f
    ld [hl], h                                    ; $5fd9: $74
    nop                                           ; $5fda: $00
    ld h, a                                       ; $5fdb: $67
    ld l, c                                       ; $5fdc: $69
    ld l, l                                       ; $5fdd: $6d
    ld l, l                                       ; $5fde: $6d
    ld h, l                                       ; $5fdf: $65
    nop                                           ; $5fe0: $00
    ld h, a                                       ; $5fe1: $67
    ld l, c                                       ; $5fe2: $69
    halt                                          ; $5fe3: $76
    ld h, l                                       ; $5fe4: $65
    jr nz, jr_01e_605c                            ; $5fe5: $20 $75

    ld [hl], b                                    ; $5fe7: $70
    nop                                           ; $5fe8: $00
    ld h, a                                       ; $5fe9: $67
    ld l, a                                       ; $5fea: $6f
    ld l, h                                       ; $5feb: $6c
    ld h, [hl]                                    ; $5fec: $66
    jr nz, jr_01e_6051                            ; $5fed: $20 $62

    ld h, c                                       ; $5fef: $61
    ld h, a                                       ; $5ff0: $67
    nop                                           ; $5ff1: $00
    ld h, a                                       ; $5ff2: $67
    ld l, a                                       ; $5ff3: $6f
    ld l, h                                       ; $5ff4: $6c
    ld h, [hl]                                    ; $5ff5: $66
    jr nz, jr_01e_605b                            ; $5ff6: $20 $63

    ld l, h                                       ; $5ff8: $6c
    ld [hl], l                                    ; $5ff9: $75
    ld h, d                                       ; $5ffa: $62
    nop                                           ; $5ffb: $00
    ld h, a                                       ; $5ffc: $67
    ld l, a                                       ; $5ffd: $6f
    ld l, h                                       ; $5ffe: $6c
    ld h, [hl]                                    ; $5fff: $66
    ld h, l                                       ; $6000: $65
    ld [hl], d                                    ; $6001: $72
    nop                                           ; $6002: $00
    ld h, a                                       ; $6003: $67
    ld [hl], d                                    ; $6004: $72
    ld h, c                                       ; $6005: $61
    ld [hl], e                                    ; $6006: $73
    ld [hl], e                                    ; $6007: $73
    jr nz, jr_01e_606c                            ; $6008: $20 $62

    ld [hl], l                                    ; $600a: $75
    ld l, [hl]                                    ; $600b: $6e
    ld l, e                                       ; $600c: $6b
    ld h, l                                       ; $600d: $65
    ld [hl], d                                    ; $600e: $72
    nop                                           ; $600f: $00
    ld h, a                                       ; $6010: $67
    ld [hl], d                                    ; $6011: $72
    ld h, l                                       ; $6012: $65
    ld h, l                                       ; $6013: $65
    ld l, [hl]                                    ; $6014: $6e
    nop                                           ; $6015: $00
    ld h, a                                       ; $6016: $67
    ld [hl], d                                    ; $6017: $72
    ld h, l                                       ; $6018: $65
    ld h, l                                       ; $6019: $65
    ld l, [hl]                                    ; $601a: $6e
    jr nz, jr_01e_6082                            ; $601b: $20 $65

    ld h, h                                       ; $601d: $64
    ld h, a                                       ; $601e: $67
    ld h, l                                       ; $601f: $65
    nop                                           ; $6020: $00
    ld h, a                                       ; $6021: $67
    ld [hl], d                                    ; $6022: $72
    ld l, c                                       ; $6023: $69
    ld [hl], b                                    ; $6024: $70
    nop                                           ; $6025: $00
    ld h, a                                       ; $6026: $67
    ld [hl], d                                    ; $6027: $72
    ld l, a                                       ; $6028: $6f
    ld [hl], e                                    ; $6029: $73
    ld [hl], e                                    ; $602a: $73
    nop                                           ; $602b: $00
    ld h, a                                       ; $602c: $67
    ld [hl], l                                    ; $602d: $75
    ld h, c                                       ; $602e: $61
    ld [hl], d                                    ; $602f: $72
    ld h, h                                       ; $6030: $64
    jr nz, jr_01e_6095                            ; $6031: $20 $62

    ld [hl], l                                    ; $6033: $75
    ld l, [hl]                                    ; $6034: $6e
    ld l, e                                       ; $6035: $6b
    ld h, l                                       ; $6036: $65
    ld [hl], d                                    ; $6037: $72
    nop                                           ; $6038: $00
    ld l, b                                       ; $6039: $68
    ld h, c                                       ; $603a: $61
    ld l, [hl]                                    ; $603b: $6e
    ld h, h                                       ; $603c: $64
    ld l, c                                       ; $603d: $69
    ld h, e                                       ; $603e: $63
    ld h, c                                       ; $603f: $61
    ld [hl], b                                    ; $6040: $70
    nop                                           ; $6041: $00
    ld l, b                                       ; $6042: $68
    ld h, c                                       ; $6043: $61
    ld a, d                                       ; $6044: $7a
    ld h, c                                       ; $6045: $61
    ld [hl], d                                    ; $6046: $72
    ld h, h                                       ; $6047: $64
    nop                                           ; $6048: $00
    ld l, b                                       ; $6049: $68

jr_01e_604a:
    ld h, l                                       ; $604a: $65
    ld h, c                                       ; $604b: $61
    ld h, h                                       ; $604c: $64
    nop                                           ; $604d: $00
    ld l, b                                       ; $604e: $68
    ld h, l                                       ; $604f: $65
    ld h, c                                       ; $6050: $61

jr_01e_6051:
    ld [hl], h                                    ; $6051: $74
    ld l, b                                       ; $6052: $68
    nop                                           ; $6053: $00
    ld l, b                                       ; $6054: $68
    ld l, a                                       ; $6055: $6f
    ld l, h                                       ; $6056: $6c
    ld h, l                                       ; $6057: $65
    nop                                           ; $6058: $00
    ld l, b                                       ; $6059: $68
    ld l, a                                       ; $605a: $6f

jr_01e_605b:
    ld l, h                                       ; $605b: $6c

jr_01e_605c:
    ld h, l                                       ; $605c: $65
    jr nz, jr_01e_60c8                            ; $605d: $20 $69

    ld l, [hl]                                    ; $605f: $6e
    jr nz, jr_01e_60d1                            ; $6060: $20 $6f

    ld l, [hl]                                    ; $6062: $6e
    ld h, l                                       ; $6063: $65
    nop                                           ; $6064: $00
    ld l, b                                       ; $6065: $68
    ld l, a                                       ; $6066: $6f
    ld l, h                                       ; $6067: $6c
    ld h, l                                       ; $6068: $65
    jr nz, jr_01e_60da                            ; $6069: $20 $6f

    ld [hl], l                                    ; $606b: $75

jr_01e_606c:
    ld [hl], h                                    ; $606c: $74
    nop                                           ; $606d: $00
    ld l, b                                       ; $606e: $68
    ld l, a                                       ; $606f: $6f
    ld l, l                                       ; $6070: $6d
    ld h, l                                       ; $6071: $65
    jr nz, jr_01e_60dc                            ; $6072: $20 $68

    ld l, a                                       ; $6074: $6f
    ld l, h                                       ; $6075: $6c
    ld h, l                                       ; $6076: $65
    nop                                           ; $6077: $00
    ld l, b                                       ; $6078: $68
    ld l, a                                       ; $6079: $6f
    ld l, [hl]                                    ; $607a: $6e
    ld l, a                                       ; $607b: $6f
    ld [hl], d                                    ; $607c: $72
    nop                                           ; $607d: $00
    ld l, b                                       ; $607e: $68
    ld l, a                                       ; $607f: $6f
    ld l, a                                       ; $6080: $6f
    ld l, e                                       ; $6081: $6b

jr_01e_6082:
    nop                                           ; $6082: $00
    ld l, c                                       ; $6083: $69
    ld l, l                                       ; $6084: $6d
    ld [hl], b                                    ; $6085: $70
    ld h, c                                       ; $6086: $61
    ld h, e                                       ; $6087: $63
    ld [hl], h                                    ; $6088: $74
    nop                                           ; $6089: $00
    ld l, c                                       ; $608a: $69
    ld l, [hl]                                    ; $608b: $6e
    ld [hl], e                                    ; $608c: $73
    ld l, c                                       ; $608d: $69
    ld h, h                                       ; $608e: $64
    ld h, l                                       ; $608f: $65
    dec l                                         ; $6090: $2d
    ld l, a                                       ; $6091: $6f
    ld [hl], l                                    ; $6092: $75
    ld [hl], h                                    ; $6093: $74
    nop                                           ; $6094: $00

jr_01e_6095:
    ld l, c                                       ; $6095: $69
    ld l, [hl]                                    ; $6096: $6e
    ld [hl], h                                    ; $6097: $74
    ld h, l                                       ; $6098: $65
    ld l, [hl]                                    ; $6099: $6e
    ld [hl], h                                    ; $609a: $74
    ld l, c                                       ; $609b: $69
    ld l, a                                       ; $609c: $6f
    ld l, [hl]                                    ; $609d: $6e
    ld h, c                                       ; $609e: $61
    ld l, h                                       ; $609f: $6c
    nop                                           ; $60a0: $00
    ld l, c                                       ; $60a1: $69
    ld [hl], d                                    ; $60a2: $72
    ld l, a                                       ; $60a3: $6f
    ld l, [hl]                                    ; $60a4: $6e
    nop                                           ; $60a5: $00
    ld l, h                                       ; $60a6: $6c
    ld h, c                                       ; $60a7: $61
    ld [hl], h                                    ; $60a8: $74
    ld h, l                                       ; $60a9: $65
    ld [hl], d                                    ; $60aa: $72
    ld h, c                                       ; $60ab: $61
    ld l, h                                       ; $60ac: $6c
    jr nz, jr_01e_6126                            ; $60ad: $20 $77

    ld h, c                                       ; $60af: $61
    ld [hl], h                                    ; $60b0: $74
    ld h, l                                       ; $60b1: $65
    ld [hl], d                                    ; $60b2: $72
    jr nz, jr_01e_611d                            ; $60b3: $20 $68

    ld h, c                                       ; $60b5: $61
    ld a, d                                       ; $60b6: $7a
    ld h, c                                       ; $60b7: $61
    ld [hl], d                                    ; $60b8: $72
    ld h, h                                       ; $60b9: $64
    nop                                           ; $60ba: $00
    ld l, h                                       ; $60bb: $6c
    ld l, c                                       ; $60bc: $69
    ld h, l                                       ; $60bd: $65
    nop                                           ; $60be: $00
    ld l, h                                       ; $60bf: $6c
    ld l, c                                       ; $60c0: $69
    ld l, [hl]                                    ; $60c1: $6e
    ld h, l                                       ; $60c2: $65
    nop                                           ; $60c3: $00
    ld l, h                                       ; $60c4: $6c
    ld l, c                                       ; $60c5: $69
    ld l, [hl]                                    ; $60c6: $6e
    ld l, e                                       ; $60c7: $6b

jr_01e_60c8:
    ld [hl], e                                    ; $60c8: $73
    nop                                           ; $60c9: $00
    ld l, h                                       ; $60ca: $6c
    ld l, a                                       ; $60cb: $6f
    ld h, d                                       ; $60cc: $62
    jr nz, jr_01e_6142                            ; $60cd: $20 $73

    ld l, b                                       ; $60cf: $68
    ld l, a                                       ; $60d0: $6f

jr_01e_60d1:
    ld [hl], h                                    ; $60d1: $74
    nop                                           ; $60d2: $00
    ld l, h                                       ; $60d3: $6c
    ld l, a                                       ; $60d4: $6f
    ld h, [hl]                                    ; $60d5: $66
    ld [hl], h                                    ; $60d6: $74
    nop                                           ; $60d7: $00
    ld l, h                                       ; $60d8: $6c
    ld l, a                                       ; $60d9: $6f

jr_01e_60da:
    ld l, [hl]                                    ; $60da: $6e
    ld h, a                                       ; $60db: $67

jr_01e_60dc:
    jr nz, jr_01e_6146                            ; $60dc: $20 $68

    ld l, a                                       ; $60de: $6f
    ld l, h                                       ; $60df: $6c
    ld h, l                                       ; $60e0: $65
    nop                                           ; $60e1: $00
    ld l, h                                       ; $60e2: $6c
    ld l, a                                       ; $60e3: $6f
    ld l, [hl]                                    ; $60e4: $6e
    ld h, a                                       ; $60e5: $67
    jr nz, jr_01e_6151                            ; $60e6: $20 $69

    ld [hl], d                                    ; $60e8: $72
    ld l, a                                       ; $60e9: $6f
    ld l, [hl]                                    ; $60ea: $6e
    nop                                           ; $60eb: $00
    ld l, h                                       ; $60ec: $6c
    ld l, a                                       ; $60ed: $6f
    ld [hl], e                                    ; $60ee: $73
    ld [hl], h                                    ; $60ef: $74
    jr nz, jr_01e_6154                            ; $60f0: $20 $62

    ld h, c                                       ; $60f2: $61
    ld l, h                                       ; $60f3: $6c
    ld l, h                                       ; $60f4: $6c
    nop                                           ; $60f5: $00
    ld l, l                                       ; $60f6: $6d
    ld h, c                                       ; $60f7: $61
    ld [hl], d                                    ; $60f8: $72
    ld l, e                                       ; $60f9: $6b
    ld h, l                                       ; $60fa: $65
    ld [hl], d                                    ; $60fb: $72
    nop                                           ; $60fc: $00
    ld l, l                                       ; $60fd: $6d
    ld h, c                                       ; $60fe: $61
    ld [hl], h                                    ; $60ff: $74
    ld h, e                                       ; $6100: $63
    ld l, b                                       ; $6101: $68
    jr nz, jr_01e_6174                            ; $6102: $20 $70

    ld l, h                                       ; $6104: $6c
    ld h, c                                       ; $6105: $61
    ld a, c                                       ; $6106: $79
    nop                                           ; $6107: $00
    ld l, l                                       ; $6108: $6d
    ld h, l                                       ; $6109: $65
    ld h, l                                       ; $610a: $65
    ld [hl], h                                    ; $610b: $74
    jr nz, jr_01e_616f                            ; $610c: $20 $61

    ld [hl], d                                    ; $610e: $72
    ld h, l                                       ; $610f: $65
    ld h, c                                       ; $6110: $61
    nop                                           ; $6111: $00
    ld l, l                                       ; $6112: $6d
    ld h, l                                       ; $6113: $65
    ld l, l                                       ; $6114: $6d
    ld h, d                                       ; $6115: $62
    ld h, l                                       ; $6116: $65
    ld [hl], d                                    ; $6117: $72
    nop                                           ; $6118: $00
    ld l, l                                       ; $6119: $6d
    ld l, c                                       ; $611a: $69
    ld h, h                                       ; $611b: $64
    ld h, h                                       ; $611c: $64

jr_01e_611d:
    ld l, h                                       ; $611d: $6c
    ld h, l                                       ; $611e: $65
    jr nz, jr_01e_6189                            ; $611f: $20 $68

    ld l, a                                       ; $6121: $6f
    ld l, h                                       ; $6122: $6c
    ld h, l                                       ; $6123: $65
    nop                                           ; $6124: $00
    ld l, l                                       ; $6125: $6d

jr_01e_6126:
    ld l, c                                       ; $6126: $69
    ld h, h                                       ; $6127: $64
    ld h, h                                       ; $6128: $64
    ld l, h                                       ; $6129: $6c
    ld h, l                                       ; $612a: $65
    jr nz, jr_01e_6196                            ; $612b: $20 $69

    ld [hl], d                                    ; $612d: $72
    ld l, a                                       ; $612e: $6f
    ld l, [hl]                                    ; $612f: $6e
    nop                                           ; $6130: $00
    ld l, l                                       ; $6131: $6d
    ld l, c                                       ; $6132: $69
    ld [hl], e                                    ; $6133: $73
    dec l                                         ; $6134: $2d
    ld l, b                                       ; $6135: $68
    ld l, c                                       ; $6136: $69
    ld [hl], h                                    ; $6137: $74
    nop                                           ; $6138: $00
    ld l, l                                       ; $6139: $6d
    ld l, a                                       ; $613a: $6f
    ld [hl], l                                    ; $613b: $75
    ld l, [hl]                                    ; $613c: $6e
    ld h, h                                       ; $613d: $64
    nop                                           ; $613e: $00
    ld l, [hl]                                    ; $613f: $6e
    ld h, c                                       ; $6140: $61
    ld [hl], e                                    ; $6141: $73

jr_01e_6142:
    ld [hl], e                                    ; $6142: $73
    ld h, c                                       ; $6143: $61
    ld [hl], l                                    ; $6144: $75
    nop                                           ; $6145: $00

jr_01e_6146:
    ld l, [hl]                                    ; $6146: $6e
    ld h, l                                       ; $6147: $65
    ld h, e                                       ; $6148: $63
    ld l, e                                       ; $6149: $6b
    nop                                           ; $614a: $00
    ld l, [hl]                                    ; $614b: $6e
    ld h, l                                       ; $614c: $65
    ld [hl], h                                    ; $614d: $74
    nop                                           ; $614e: $00
    ld c, a                                       ; $614f: $4f
    ld b, d                                       ; $6150: $42

jr_01e_6151:
    nop                                           ; $6151: $00
    ld l, a                                       ; $6152: $6f
    ld l, [hl]                                    ; $6153: $6e

jr_01e_6154:
    nop                                           ; $6154: $00
    ld l, a                                       ; $6155: $6f
    ld l, [hl]                                    ; $6156: $6e
    jr nz, jr_01e_61bf                            ; $6157: $20 $66

    ld h, c                                       ; $6159: $61
    ld l, c                                       ; $615a: $69
    ld [hl], d                                    ; $615b: $72
    ld [hl], a                                    ; $615c: $77
    ld h, c                                       ; $615d: $61
    ld a, c                                       ; $615e: $79
    jr nz, jr_01e_61d1                            ; $615f: $20 $70

    ld h, l                                       ; $6161: $65
    ld [hl], d                                    ; $6162: $72
    ld h, e                                       ; $6163: $63
    ld h, l                                       ; $6164: $65
    ld l, [hl]                                    ; $6165: $6e
    ld [hl], h                                    ; $6166: $74
    ld h, c                                       ; $6167: $61
    ld h, a                                       ; $6168: $67
    ld h, l                                       ; $6169: $65
    nop                                           ; $616a: $00
    ld l, a                                       ; $616b: $6f
    ld [hl], l                                    ; $616c: $75
    ld [hl], h                                    ; $616d: $74
    ld [hl], e                                    ; $616e: $73

jr_01e_616f:
    ld l, c                                       ; $616f: $69
    ld h, h                                       ; $6170: $64
    ld h, l                                       ; $6171: $65
    dec l                                         ; $6172: $2d
    ld l, c                                       ; $6173: $69

jr_01e_6174:
    ld l, [hl]                                    ; $6174: $6e
    nop                                           ; $6175: $00
    ld l, a                                       ; $6176: $6f
    halt                                          ; $6177: $76
    ld h, l                                       ; $6178: $65
    ld [hl], d                                    ; $6179: $72
    jr nz, jr_01e_61ec                            ; $617a: $20 $70

    ld h, c                                       ; $617c: $61
    ld [hl], d                                    ; $617d: $72
    nop                                           ; $617e: $00
    ld [hl], b                                    ; $617f: $70
    ld h, c                                       ; $6180: $61
    ld [hl], d                                    ; $6181: $72
    nop                                           ; $6182: $00
    ld [hl], b                                    ; $6183: $70
    ld h, c                                       ; $6184: $61
    ld [hl], d                                    ; $6185: $72
    jr nz, jr_01e_61f7                            ; $6186: $20 $6f

    ld l, [hl]                                    ; $6188: $6e

jr_01e_6189:
    nop                                           ; $6189: $00
    ld [hl], b                                    ; $618a: $70
    ld h, c                                       ; $618b: $61
    ld [hl], d                                    ; $618c: $72
    jr nz, jr_01e_61fe                            ; $618d: $20 $6f

    ld l, [hl]                                    ; $618f: $6e
    jr nz, jr_01e_6202                            ; $6190: $20 $70

    ld h, l                                       ; $6192: $65
    ld [hl], d                                    ; $6193: $72
    ld h, e                                       ; $6194: $63
    ld h, l                                       ; $6195: $65

jr_01e_6196:
    ld l, [hl]                                    ; $6196: $6e
    ld [hl], h                                    ; $6197: $74
    ld h, c                                       ; $6198: $61
    ld h, a                                       ; $6199: $67
    ld h, l                                       ; $619a: $65
    nop                                           ; $619b: $00
    ld [hl], b                                    ; $619c: $70
    ld h, c                                       ; $619d: $61
    ld [hl], d                                    ; $619e: $72
    jr nz, jr_01e_6211                            ; $619f: $20 $70

    ld l, h                                       ; $61a1: $6c
    ld h, c                                       ; $61a2: $61
    ld a, c                                       ; $61a3: $79
    nop                                           ; $61a4: $00
    ld [hl], b                                    ; $61a5: $70
    ld h, c                                       ; $61a6: $61
    ld [hl], d                                    ; $61a7: $72
    jr nz, jr_01e_621d                            ; $61a8: $20 $73

    ld h, c                                       ; $61aa: $61
    halt                                          ; $61ab: $76
    ld h, l                                       ; $61ac: $65
    nop                                           ; $61ad: $00
    ld [hl], b                                    ; $61ae: $70
    ld h, c                                       ; $61af: $61
    ld [hl], d                                    ; $61b0: $72
    jr nz, jr_01e_6226                            ; $61b1: $20 $73

    ld h, c                                       ; $61b3: $61
    halt                                          ; $61b4: $76
    ld h, l                                       ; $61b5: $65
    ld [hl], e                                    ; $61b6: $73
    jr nz, jr_01e_6229                            ; $61b7: $20 $70

    ld h, l                                       ; $61b9: $65
    ld [hl], d                                    ; $61ba: $72
    ld h, e                                       ; $61bb: $63
    ld h, l                                       ; $61bc: $65
    ld l, [hl]                                    ; $61bd: $6e
    ld [hl], h                                    ; $61be: $74

jr_01e_61bf:
    ld h, c                                       ; $61bf: $61
    ld h, a                                       ; $61c0: $67
    ld h, l                                       ; $61c1: $65
    nop                                           ; $61c2: $00
    ld [hl], b                                    ; $61c3: $70
    ld h, l                                       ; $61c4: $65
    ld l, [hl]                                    ; $61c5: $6e
    ld h, c                                       ; $61c6: $61
    ld l, h                                       ; $61c7: $6c
    ld [hl], h                                    ; $61c8: $74
    ld a, c                                       ; $61c9: $79
    nop                                           ; $61ca: $00
    ld [hl], b                                    ; $61cb: $70
    ld l, c                                       ; $61cc: $69
    ld l, [hl]                                    ; $61cd: $6e
    nop                                           ; $61ce: $00
    ld [hl], b                                    ; $61cf: $70
    ld l, c                                       ; $61d0: $69

jr_01e_61d1:
    ld [hl], h                                    ; $61d1: $74
    ld h, e                                       ; $61d2: $63
    ld l, b                                       ; $61d3: $68
    jr nz, jr_01e_6249                            ; $61d4: $20 $73

    ld l, b                                       ; $61d6: $68
    ld l, a                                       ; $61d7: $6f
    ld [hl], h                                    ; $61d8: $74
    nop                                           ; $61d9: $00
    ld [hl], b                                    ; $61da: $70
    ld l, c                                       ; $61db: $69
    ld [hl], h                                    ; $61dc: $74
    ld h, e                                       ; $61dd: $63
    ld l, b                                       ; $61de: $68
    ld l, c                                       ; $61df: $69
    ld l, [hl]                                    ; $61e0: $6e
    ld h, a                                       ; $61e1: $67
    jr nz, jr_01e_625b                            ; $61e2: $20 $77

    ld h, l                                       ; $61e4: $65
    ld h, h                                       ; $61e5: $64
    ld h, a                                       ; $61e6: $67
    ld h, l                                       ; $61e7: $65
    nop                                           ; $61e8: $00
    ld [hl], b                                    ; $61e9: $70
    ld l, h                                       ; $61ea: $6c
    ld h, c                                       ; $61eb: $61

jr_01e_61ec:
    ld a, c                                       ; $61ec: $79
    ld l, a                                       ; $61ed: $6f
    ld h, [hl]                                    ; $61ee: $66
    ld h, [hl]                                    ; $61ef: $66
    nop                                           ; $61f0: $00
    ld [hl], b                                    ; $61f1: $70
    ld l, a                                       ; $61f2: $6f
    ld [hl], h                                    ; $61f3: $74
    jr nz, jr_01e_6258                            ; $61f4: $20 $62

    ld [hl], l                                    ; $61f6: $75

jr_01e_61f7:
    ld l, [hl]                                    ; $61f7: $6e
    ld l, e                                       ; $61f8: $6b
    ld h, l                                       ; $61f9: $65
    ld [hl], d                                    ; $61fa: $72
    nop                                           ; $61fb: $00
    ld [hl], b                                    ; $61fc: $70
    ld [hl], l                                    ; $61fd: $75

jr_01e_61fe:
    ld [hl], h                                    ; $61fe: $74
    ld [hl], h                                    ; $61ff: $74
    ld h, l                                       ; $6200: $65
    ld [hl], d                                    ; $6201: $72

jr_01e_6202:
    nop                                           ; $6202: $00
    ld [hl], b                                    ; $6203: $70
    ld [hl], l                                    ; $6204: $75
    ld [hl], h                                    ; $6205: $74
    ld [hl], h                                    ; $6206: $74
    ld l, c                                       ; $6207: $69
    ld l, [hl]                                    ; $6208: $6e
    ld h, a                                       ; $6209: $67
    jr nz, jr_01e_6278                            ; $620a: $20 $6c

    ld l, c                                       ; $620c: $69
    ld l, [hl]                                    ; $620d: $6e
    ld h, l                                       ; $620e: $65
    nop                                           ; $620f: $00
    ld [hl], d                                    ; $6210: $72

jr_01e_6211:
    ld h, c                                       ; $6211: $61
    ld l, e                                       ; $6212: $6b
    ld h, l                                       ; $6213: $65
    nop                                           ; $6214: $00
    ld [hl], d                                    ; $6215: $72
    ld h, l                                       ; $6216: $65
    ld h, e                                       ; $6217: $63
    ld l, a                                       ; $6218: $6f
    halt                                          ; $6219: $76
    ld h, l                                       ; $621a: $65
    ld [hl], d                                    ; $621b: $72
    ld a, c                                       ; $621c: $79

jr_01e_621d:
    nop                                           ; $621d: $00
    ld [hl], d                                    ; $621e: $72
    ld l, a                                       ; $621f: $6f
    ld [hl], l                                    ; $6220: $75
    ld h, a                                       ; $6221: $67
    ld l, b                                       ; $6222: $68
    nop                                           ; $6223: $00
    ld [hl], d                                    ; $6224: $72
    ld l, a                                       ; $6225: $6f

jr_01e_6226:
    ld [hl], l                                    ; $6226: $75
    ld l, [hl]                                    ; $6227: $6e
    ld h, h                                       ; $6228: $64

jr_01e_6229:
    nop                                           ; $6229: $00
    ld [hl], d                                    ; $622a: $72
    ld [hl], l                                    ; $622b: $75
    ld l, [hl]                                    ; $622c: $6e
    nop                                           ; $622d: $00
    ld [hl], d                                    ; $622e: $72
    ld [hl], l                                    ; $622f: $75
    ld l, [hl]                                    ; $6230: $6e
    ld l, [hl]                                    ; $6231: $6e
    ld l, c                                       ; $6232: $69
    ld l, [hl]                                    ; $6233: $6e
    ld h, a                                       ; $6234: $67
    nop                                           ; $6235: $00
    ld [hl], e                                    ; $6236: $73
    ld h, c                                       ; $6237: $61
    ld l, [hl]                                    ; $6238: $6e
    ld h, h                                       ; $6239: $64
    jr nz, jr_01e_62af                            ; $623a: $20 $73

    ld h, c                                       ; $623c: $61
    halt                                          ; $623d: $76
    ld h, l                                       ; $623e: $65
    ld [hl], e                                    ; $623f: $73
    jr nz, jr_01e_62b2                            ; $6240: $20 $70

    ld h, l                                       ; $6242: $65
    ld [hl], d                                    ; $6243: $72
    ld h, e                                       ; $6244: $63
    ld h, l                                       ; $6245: $65
    ld l, [hl]                                    ; $6246: $6e
    ld [hl], h                                    ; $6247: $74
    ld h, c                                       ; $6248: $61

jr_01e_6249:
    ld h, a                                       ; $6249: $67
    ld h, l                                       ; $624a: $65
    nop                                           ; $624b: $00
    ld [hl], e                                    ; $624c: $73
    ld h, c                                       ; $624d: $61
    ld l, [hl]                                    ; $624e: $6e
    ld h, h                                       ; $624f: $64
    jr nz, jr_01e_62c9                            ; $6250: $20 $77

    ld h, l                                       ; $6252: $65
    ld h, h                                       ; $6253: $64
    ld h, a                                       ; $6254: $67
    ld h, l                                       ; $6255: $65
    nop                                           ; $6256: $00
    ld [hl], e                                    ; $6257: $73

jr_01e_6258:
    ld h, e                                       ; $6258: $63
    ld l, a                                       ; $6259: $6f
    ld [hl], d                                    ; $625a: $72

jr_01e_625b:
    ld h, l                                       ; $625b: $65
    nop                                           ; $625c: $00
    ld [hl], e                                    ; $625d: $73
    ld h, e                                       ; $625e: $63
    ld [hl], d                                    ; $625f: $72
    ld h, c                                       ; $6260: $61
    ld [hl], h                                    ; $6261: $74
    ld h, e                                       ; $6262: $63
    ld l, b                                       ; $6263: $68
    nop                                           ; $6264: $00
    ld [hl], e                                    ; $6265: $73
    ld h, l                                       ; $6266: $65
    ld l, l                                       ; $6267: $6d
    ld l, c                                       ; $6268: $69
    dec l                                         ; $6269: $2d
    ld [hl], d                                    ; $626a: $72
    ld l, a                                       ; $626b: $6f
    ld [hl], l                                    ; $626c: $75
    ld h, a                                       ; $626d: $67
    ld l, b                                       ; $626e: $68
    nop                                           ; $626f: $00
    ld [hl], e                                    ; $6270: $73
    ld l, b                                       ; $6271: $68
    ld h, c                                       ; $6272: $61
    ld h, [hl]                                    ; $6273: $66
    ld [hl], h                                    ; $6274: $74
    nop                                           ; $6275: $00
    ld [hl], e                                    ; $6276: $73
    ld l, b                                       ; $6277: $68

jr_01e_6278:
    ld h, c                                       ; $6278: $61
    ld l, [hl]                                    ; $6279: $6e
    ld l, e                                       ; $627a: $6b
    nop                                           ; $627b: $00
    ld [hl], e                                    ; $627c: $73
    ld l, b                                       ; $627d: $68
    ld l, a                                       ; $627e: $6f
    ld [hl], d                                    ; $627f: $72
    ld [hl], h                                    ; $6280: $74
    jr nz, jr_01e_62eb                            ; $6281: $20 $68

    ld l, a                                       ; $6283: $6f
    ld l, h                                       ; $6284: $6c
    ld h, l                                       ; $6285: $65
    nop                                           ; $6286: $00
    ld [hl], e                                    ; $6287: $73
    ld l, b                                       ; $6288: $68
    ld l, a                                       ; $6289: $6f
    ld [hl], d                                    ; $628a: $72
    ld [hl], h                                    ; $628b: $74
    jr nz, jr_01e_62f7                            ; $628c: $20 $69

    ld [hl], d                                    ; $628e: $72
    ld l, a                                       ; $628f: $6f
    ld l, [hl]                                    ; $6290: $6e
    nop                                           ; $6291: $00
    ld [hl], e                                    ; $6292: $73
    ld l, b                                       ; $6293: $68
    ld l, a                                       ; $6294: $6f
    ld [hl], d                                    ; $6295: $72
    ld [hl], h                                    ; $6296: $74
    ld h, e                                       ; $6297: $63
    ld [hl], l                                    ; $6298: $75
    ld [hl], h                                    ; $6299: $74
    nop                                           ; $629a: $00
    ld [hl], e                                    ; $629b: $73
    ld l, b                                       ; $629c: $68
    ld l, a                                       ; $629d: $6f
    ld [hl], h                                    ; $629e: $74
    nop                                           ; $629f: $00
    ld [hl], e                                    ; $62a0: $73
    ld l, c                                       ; $62a1: $69
    ld h, h                                       ; $62a2: $64
    ld h, l                                       ; $62a3: $65
    jr nz, @+$64                                  ; $62a4: $20 $62

    ld [hl], l                                    ; $62a6: $75
    ld l, [hl]                                    ; $62a7: $6e
    ld l, e                                       ; $62a8: $6b
    ld h, l                                       ; $62a9: $65
    ld [hl], d                                    ; $62aa: $72
    nop                                           ; $62ab: $00
    ld [hl], e                                    ; $62ac: $73
    ld l, c                                       ; $62ad: $69
    ld l, [hl]                                    ; $62ae: $6e

jr_01e_62af:
    ld l, e                                       ; $62af: $6b
    nop                                           ; $62b0: $00
    ld [hl], e                                    ; $62b1: $73

jr_01e_62b2:
    ld l, h                                       ; $62b2: $6c
    ld l, c                                       ; $62b3: $69
    ld h, e                                       ; $62b4: $63
    ld h, l                                       ; $62b5: $65
    nop                                           ; $62b6: $00
    ld [hl], e                                    ; $62b7: $73
    ld l, h                                       ; $62b8: $6c
    ld l, a                                       ; $62b9: $6f
    ld [hl], a                                    ; $62ba: $77
    jr nz, jr_01e_632d                            ; $62bb: $20 $70

    ld l, h                                       ; $62bd: $6c
    ld h, c                                       ; $62be: $61
    ld a, c                                       ; $62bf: $79
    nop                                           ; $62c0: $00
    ld [hl], e                                    ; $62c1: $73
    ld l, a                                       ; $62c2: $6f
    ld l, h                                       ; $62c3: $6c
    ld h, l                                       ; $62c4: $65
    nop                                           ; $62c5: $00
    ld [hl], e                                    ; $62c6: $73
    ld [hl], b                                    ; $62c7: $70
    ld l, c                                       ; $62c8: $69

jr_01e_62c9:
    ld l, [hl]                                    ; $62c9: $6e
    nop                                           ; $62ca: $00
    ld [hl], e                                    ; $62cb: $73
    ld [hl], b                                    ; $62cc: $70
    ld l, a                                       ; $62cd: $6f
    ld l, a                                       ; $62ce: $6f
    ld l, [hl]                                    ; $62cf: $6e
    nop                                           ; $62d0: $00
    ld [hl], e                                    ; $62d1: $73
    ld [hl], h                                    ; $62d2: $74
    ld h, c                                       ; $62d3: $61
    ld l, [hl]                                    ; $62d4: $6e
    ld h, e                                       ; $62d5: $63
    ld h, l                                       ; $62d6: $65
    nop                                           ; $62d7: $00
    ld [hl], e                                    ; $62d8: $73
    ld [hl], h                                    ; $62d9: $74
    ld h, l                                       ; $62da: $65
    ld h, c                                       ; $62db: $61
    ld h, h                                       ; $62dc: $64
    ld a, c                                       ; $62dd: $79
    nop                                           ; $62de: $00
    ld [hl], e                                    ; $62df: $73
    ld [hl], h                                    ; $62e0: $74
    ld [hl], d                                    ; $62e1: $72
    ld l, a                                       ; $62e2: $6f
    ld l, e                                       ; $62e3: $6b
    ld h, l                                       ; $62e4: $65
    nop                                           ; $62e5: $00
    ld [hl], e                                    ; $62e6: $73
    ld [hl], h                                    ; $62e7: $74
    ld a, c                                       ; $62e8: $79
    ld l, l                                       ; $62e9: $6d
    ld l, c                                       ; $62ea: $69

jr_01e_62eb:
    ld h, l                                       ; $62eb: $65
    nop                                           ; $62ec: $00
    ld [hl], e                                    ; $62ed: $73
    ld [hl], l                                    ; $62ee: $75
    ld h, h                                       ; $62ef: $64
    ld h, h                                       ; $62f0: $64
    ld h, l                                       ; $62f1: $65
    ld l, [hl]                                    ; $62f2: $6e
    jr nz, jr_01e_6359                            ; $62f3: $20 $64

    ld h, l                                       ; $62f5: $65
    ld h, c                                       ; $62f6: $61

jr_01e_62f7:
    ld [hl], h                                    ; $62f7: $74
    ld l, b                                       ; $62f8: $68
    nop                                           ; $62f9: $00
    ld [hl], e                                    ; $62fa: $73
    ld [hl], a                                    ; $62fb: $77
    ld l, c                                       ; $62fc: $69
    ld l, [hl]                                    ; $62fd: $6e
    ld h, a                                       ; $62fe: $67
    nop                                           ; $62ff: $00
    ld [hl], h                                    ; $6300: $74
    ld h, l                                       ; $6301: $65
    ld h, l                                       ; $6302: $65
    nop                                           ; $6303: $00
    ld [hl], h                                    ; $6304: $74
    ld h, l                                       ; $6305: $65
    ld h, l                                       ; $6306: $65
    jr nz, jr_01e_6370                            ; $6307: $20 $67

    ld [hl], d                                    ; $6309: $72
    ld l, a                                       ; $630a: $6f
    ld [hl], l                                    ; $630b: $75
    ld l, [hl]                                    ; $630c: $6e
    ld h, h                                       ; $630d: $64
    nop                                           ; $630e: $00
    ld [hl], h                                    ; $630f: $74
    ld h, l                                       ; $6310: $65
    ld h, l                                       ; $6311: $65
    jr nz, jr_01e_6381                            ; $6312: $20 $6d

    ld h, c                                       ; $6314: $61
    ld [hl], d                                    ; $6315: $72
    ld l, e                                       ; $6316: $6b
    ld h, l                                       ; $6317: $65
    ld [hl], d                                    ; $6318: $72
    nop                                           ; $6319: $00
    ld [hl], h                                    ; $631a: $74
    ld h, l                                       ; $631b: $65
    ld h, l                                       ; $631c: $65
    jr nz, jr_01e_6392                            ; $631d: $20 $73

    ld l, b                                       ; $631f: $68
    ld l, a                                       ; $6320: $6f
    ld [hl], h                                    ; $6321: $74
    nop                                           ; $6322: $00
    ld [hl], h                                    ; $6323: $74
    ld h, l                                       ; $6324: $65
    ld h, l                                       ; $6325: $65
    jr nz, jr_01e_639d                            ; $6326: $20 $75

    ld [hl], b                                    ; $6328: $70
    nop                                           ; $6329: $00
    ld [hl], h                                    ; $632a: $74
    ld l, a                                       ; $632b: $6f
    ld [hl], b                                    ; $632c: $70

jr_01e_632d:
    nop                                           ; $632d: $00
    ld [hl], h                                    ; $632e: $74
    ld l, a                                       ; $632f: $6f
    ld [hl], b                                    ; $6330: $70
    ld [hl], e                                    ; $6331: $73
    ld [hl], b                                    ; $6332: $70
    ld l, c                                       ; $6333: $69
    ld l, [hl]                                    ; $6334: $6e
    nop                                           ; $6335: $00
    ld [hl], h                                    ; $6336: $74
    ld l, a                                       ; $6337: $6f
    ld [hl], h                                    ; $6338: $74
    ld h, c                                       ; $6339: $61
    ld l, h                                       ; $633a: $6c
    jr nz, jr_01e_63a1                            ; $633b: $20 $64

    ld [hl], d                                    ; $633d: $72
    ld l, c                                       ; $633e: $69
    halt                                          ; $633f: $76
    ld h, l                                       ; $6340: $65
    jr nz, jr_01e_63a7                            ; $6341: $20 $64

    ld l, c                                       ; $6343: $69
    ld [hl], e                                    ; $6344: $73
    ld [hl], h                                    ; $6345: $74
    ld h, c                                       ; $6346: $61
    ld l, [hl]                                    ; $6347: $6e
    ld h, e                                       ; $6348: $63
    ld h, l                                       ; $6349: $65
    nop                                           ; $634a: $00
    ld [hl], h                                    ; $634b: $74
    ld l, a                                       ; $634c: $6f
    ld [hl], l                                    ; $634d: $75
    ld [hl], d                                    ; $634e: $72
    ld l, [hl]                                    ; $634f: $6e
    ld h, c                                       ; $6350: $61
    ld l, l                                       ; $6351: $6d
    ld h, l                                       ; $6352: $65
    ld l, [hl]                                    ; $6353: $6e
    ld [hl], h                                    ; $6354: $74
    nop                                           ; $6355: $00
    ld [hl], h                                    ; $6356: $74
    ld [hl], d                                    ; $6357: $72
    ld l, c                                       ; $6358: $69

jr_01e_6359:
    ld [hl], b                                    ; $6359: $70
    ld l, h                                       ; $635a: $6c
    ld h, l                                       ; $635b: $65
    jr nz, jr_01e_63c0                            ; $635c: $20 $62

    ld l, a                                       ; $635e: $6f
    ld h, a                                       ; $635f: $67
    ld h, l                                       ; $6360: $65
    ld a, c                                       ; $6361: $79
    nop                                           ; $6362: $00
    ld [hl], h                                    ; $6363: $74
    ld [hl], d                                    ; $6364: $72
    ld l, a                                       ; $6365: $6f
    ld [hl], l                                    ; $6366: $75
    ld h, d                                       ; $6367: $62
    ld l, h                                       ; $6368: $6c
    ld h, l                                       ; $6369: $65
    jr nz, jr_01e_63df                            ; $636a: $20 $73

    ld l, b                                       ; $636c: $68
    ld l, a                                       ; $636d: $6f
    ld [hl], h                                    ; $636e: $74
    nop                                           ; $636f: $00

jr_01e_6370:
    ld [hl], l                                    ; $6370: $75
    ld l, [hl]                                    ; $6371: $6e
    ld h, h                                       ; $6372: $64
    ld h, l                                       ; $6373: $65
    ld [hl], d                                    ; $6374: $72
    jr nz, jr_01e_63e7                            ; $6375: $20 $70

    ld h, c                                       ; $6377: $61
    ld [hl], d                                    ; $6378: $72
    nop                                           ; $6379: $00
    ld [hl], l                                    ; $637a: $75
    ld l, [hl]                                    ; $637b: $6e
    ld h, h                                       ; $637c: $64
    ld [hl], l                                    ; $637d: $75
    ld l, h                                       ; $637e: $6c
    ld h, c                                       ; $637f: $61
    ld [hl], h                                    ; $6380: $74

jr_01e_6381:
    ld l, c                                       ; $6381: $69
    ld l, a                                       ; $6382: $6f
    ld l, [hl]                                    ; $6383: $6e
    nop                                           ; $6384: $00
    ld [hl], l                                    ; $6385: $75
    ld l, [hl]                                    ; $6386: $6e
    ld [hl], b                                    ; $6387: $70
    ld l, h                                       ; $6388: $6c
    ld h, c                                       ; $6389: $61
    ld a, c                                       ; $638a: $79
    ld h, c                                       ; $638b: $61
    ld h, d                                       ; $638c: $62
    ld l, h                                       ; $638d: $6c
    ld h, l                                       ; $638e: $65
    nop                                           ; $638f: $00
    ld [hl], l                                    ; $6390: $75
    ld [hl], b                                    ; $6391: $70

jr_01e_6392:
    ld [hl], d                                    ; $6392: $72
    ld l, c                                       ; $6393: $69
    ld h, a                                       ; $6394: $67
    ld l, b                                       ; $6395: $68
    ld [hl], h                                    ; $6396: $74
    nop                                           ; $6397: $00
    halt                                          ; $6398: $76
    ld l, c                                       ; $6399: $69
    ld [hl], e                                    ; $639a: $73
    ld l, c                                       ; $639b: $69
    ld [hl], h                                    ; $639c: $74

jr_01e_639d:
    ld l, a                                       ; $639d: $6f
    ld [hl], d                                    ; $639e: $72
    nop                                           ; $639f: $00
    ld [hl], a                                    ; $63a0: $77

jr_01e_63a1:
    ld h, c                                       ; $63a1: $61
    ld [hl], e                                    ; $63a2: $73
    ld [hl], h                                    ; $63a3: $74
    ld h, l                                       ; $63a4: $65
    jr nz, jr_01e_6408                            ; $63a5: $20 $61

jr_01e_63a7:
    ld [hl], d                                    ; $63a7: $72
    ld h, l                                       ; $63a8: $65
    ld h, c                                       ; $63a9: $61
    nop                                           ; $63aa: $00
    ld [hl], a                                    ; $63ab: $77
    ld h, c                                       ; $63ac: $61
    ld [hl], h                                    ; $63ad: $74
    ld h, l                                       ; $63ae: $65
    ld [hl], d                                    ; $63af: $72
    jr nz, jr_01e_641a                            ; $63b0: $20 $68

    ld h, c                                       ; $63b2: $61
    ld a, d                                       ; $63b3: $7a
    ld h, c                                       ; $63b4: $61
    ld [hl], d                                    ; $63b5: $72
    ld h, h                                       ; $63b6: $64
    nop                                           ; $63b7: $00
    ld [hl], a                                    ; $63b8: $77
    ld h, l                                       ; $63b9: $65
    ld h, h                                       ; $63ba: $64
    ld h, a                                       ; $63bb: $67
    ld h, l                                       ; $63bc: $65
    nop                                           ; $63bd: $00
    ld [hl], a                                    ; $63be: $77
    ld l, a                                       ; $63bf: $6f

jr_01e_63c0:
    ld l, a                                       ; $63c0: $6f
    ld h, h                                       ; $63c1: $64
    nop                                           ; $63c2: $00
    ld a, c                                       ; $63c3: $79
    ld h, c                                       ; $63c4: $61
    ld [hl], d                                    ; $63c5: $72
    ld h, h                                       ; $63c6: $64
    nop                                           ; $63c7: $00
    ld a, c                                       ; $63c8: $79
    ld h, c                                       ; $63c9: $61
    ld [hl], d                                    ; $63ca: $72
    ld h, h                                       ; $63cb: $64
    ld h, c                                       ; $63cc: $61
    ld h, a                                       ; $63cd: $67
    ld h, l                                       ; $63ce: $65
    nop                                           ; $63cf: $00
    ld a, c                                       ; $63d0: $79
    ld l, c                                       ; $63d1: $69
    ld [hl], b                                    ; $63d2: $70
    ld [hl], e                                    ; $63d3: $73
    nop                                           ; $63d4: $00
    ld d, h                                       ; $63d5: $54
    ld h, c                                       ; $63d6: $61
    ld l, e                                       ; $63d7: $6b
    ld l, c                                       ; $63d8: $69
    ld l, [hl]                                    ; $63d9: $6e
    ld h, a                                       ; $63da: $67
    jr nz, jr_01e_643e                            ; $63db: $20 $61

    jr nz, jr_01e_6452                            ; $63dd: $20 $73

jr_01e_63df:
    ld [hl], h                                    ; $63df: $74
    ld h, c                                       ; $63e0: $61
    ld l, [hl]                                    ; $63e1: $6e
    ld h, e                                       ; $63e2: $63
    ld h, l                                       ; $63e3: $65
    ld bc, $6e61                                  ; $63e4: $01 $61 $6e

jr_01e_63e7:
    ld h, h                                       ; $63e7: $64
    jr nz, jr_01e_645a                            ; $63e8: $20 $70

    ld [hl], d                                    ; $63ea: $72
    ld h, l                                       ; $63eb: $65
    ld [hl], b                                    ; $63ec: $70
    ld h, c                                       ; $63ed: $61
    ld [hl], d                                    ; $63ee: $72
    ld l, c                                       ; $63ef: $69
    ld l, [hl]                                    ; $63f0: $6e
    ld h, a                                       ; $63f1: $67
    ld bc, $6f74                                  ; $63f2: $01 $74 $6f
    jr nz, jr_01e_645f                            ; $63f5: $20 $68

    ld l, c                                       ; $63f7: $69
    ld [hl], h                                    ; $63f8: $74
    jr nz, jr_01e_646f                            ; $63f9: $20 $74

    ld l, b                                       ; $63fb: $68
    ld h, l                                       ; $63fc: $65
    jr nz, jr_01e_6461                            ; $63fd: $20 $62

    ld h, c                                       ; $63ff: $61
    ld l, h                                       ; $6400: $6c
    ld l, h                                       ; $6401: $6c
    ld l, $02                                     ; $6402: $2e $02
    ld c, c                                       ; $6404: $49
    ld l, [hl]                                    ; $6405: $6e
    jr nz, jr_01e_6469                            ; $6406: $20 $61

jr_01e_6408:
    jr nz, jr_01e_6472                            ; $6408: $20 $68

    ld h, c                                       ; $640a: $61
    ld a, d                                       ; $640b: $7a
    ld h, c                                       ; $640c: $61
    ld [hl], d                                    ; $640d: $72
    ld h, h                                       ; $640e: $64
    inc l                                         ; $640f: $2c
    jr nz, jr_01e_648b                            ; $6410: $20 $79

    ld l, a                                       ; $6412: $6f
    ld [hl], l                                    ; $6413: $75
    ld [hl], d                                    ; $6414: $72
    ld bc, $6c63                                  ; $6415: $01 $63 $6c
    ld [hl], l                                    ; $6418: $75
    ld h, d                                       ; $6419: $62

jr_01e_641a:
    jr nz, jr_01e_6489                            ; $641a: $20 $6d

    ld h, c                                       ; $641c: $61
    ld a, c                                       ; $641d: $79
    jr nz, jr_01e_648e                            ; $641e: $20 $6e

    ld l, a                                       ; $6420: $6f
    ld [hl], h                                    ; $6421: $74
    jr nz, jr_01e_6498                            ; $6422: $20 $74

    ld l, a                                       ; $6424: $6f
    ld [hl], l                                    ; $6425: $75
    ld h, e                                       ; $6426: $63
    ld l, b                                       ; $6427: $68
    ld bc, $6874                                  ; $6428: $01 $74 $68
    ld h, l                                       ; $642b: $65
    jr nz, @+$69                                  ; $642c: $20 $67

    ld [hl], d                                    ; $642e: $72
    ld l, a                                       ; $642f: $6f
    ld [hl], l                                    ; $6430: $75
    ld l, [hl]                                    ; $6431: $6e
    ld h, h                                       ; $6432: $64
    ld l, $03                                     ; $6433: $2e $03
    nop                                           ; $6435: $00
    ld d, d                                       ; $6436: $52
    ld h, l                                       ; $6437: $65
    ld h, [hl]                                    ; $6438: $66
    ld h, l                                       ; $6439: $65
    ld [hl], d                                    ; $643a: $72
    ld [hl], e                                    ; $643b: $73
    jr nz, @+$76                                  ; $643c: $20 $74

jr_01e_643e:
    ld l, a                                       ; $643e: $6f
    jr nz, jr_01e_64a9                            ; $643f: $20 $68

    ld l, c                                       ; $6441: $69
    ld [hl], h                                    ; $6442: $74
    ld [hl], h                                    ; $6443: $74
    ld l, c                                       ; $6444: $69
    ld l, [hl]                                    ; $6445: $6e
    ld h, a                                       ; $6446: $67
    jr nz, jr_01e_64aa                            ; $6447: $20 $61

    ld bc, $6162                                  ; $6449: $01 $62 $61
    ld l, h                                       ; $644c: $6c
    ld l, h                                       ; $644d: $6c
    jr nz, jr_01e_64b9                            ; $644e: $20 $69

    ld l, [hl]                                    ; $6450: $6e
    ld [hl], h                                    ; $6451: $74

jr_01e_6452:
    ld l, a                                       ; $6452: $6f
    jr nz, jr_01e_64c9                            ; $6453: $20 $74

    ld l, b                                       ; $6455: $68
    ld h, l                                       ; $6456: $65
    jr nz, @+$79                                  ; $6457: $20 $77

    ld l, c                                       ; $6459: $69

jr_01e_645a:
    ld l, [hl]                                    ; $645a: $6e
    ld h, h                                       ; $645b: $64
    ld l, $01                                     ; $645c: $2e $01
    ld d, h                                       ; $645e: $54

jr_01e_645f:
    ld l, b                                       ; $645f: $68
    ld h, l                                       ; $6460: $65

jr_01e_6461:
    jr nz, @+$64                                  ; $6461: $20 $62

    ld h, c                                       ; $6463: $61
    ld l, h                                       ; $6464: $6c
    ld l, h                                       ; $6465: $6c
    jr nz, jr_01e_64df                            ; $6466: $20 $77

    ld l, a                                       ; $6468: $6f

jr_01e_6469:
    ld l, [hl]                                    ; $6469: $6e
    daa                                           ; $646a: $27
    ld [hl], h                                    ; $646b: $74
    jr nz, jr_01e_64d5                            ; $646c: $20 $67

    ld l, a                                       ; $646e: $6f

jr_01e_646f:
    ld [bc], a                                    ; $646f: $02
    ld h, c                                       ; $6470: $61
    ld [hl], e                                    ; $6471: $73

jr_01e_6472:
    jr nz, jr_01e_64da                            ; $6472: $20 $66

    ld h, c                                       ; $6474: $61
    ld [hl], d                                    ; $6475: $72
    inc l                                         ; $6476: $2c
    jr nz, jr_01e_64ec                            ; $6477: $20 $73

    ld l, a                                       ; $6479: $6f
    jr nz, jr_01e_64f1                            ; $647a: $20 $75

    ld [hl], e                                    ; $647c: $73
    ld h, l                                       ; $647d: $65
    jr nz, jr_01e_64e1                            ; $647e: $20 $61

    ld bc, $6f6d                                  ; $6480: $01 $6d $6f
    ld [hl], d                                    ; $6483: $72
    ld h, l                                       ; $6484: $65
    jr nz, jr_01e_64f7                            ; $6485: $20 $70

    ld l, a                                       ; $6487: $6f
    ld [hl], a                                    ; $6488: $77

jr_01e_6489:
    ld h, l                                       ; $6489: $65
    ld [hl], d                                    ; $648a: $72

jr_01e_648b:
    ld h, [hl]                                    ; $648b: $66
    ld [hl], l                                    ; $648c: $75
    ld l, h                                       ; $648d: $6c

jr_01e_648e:
    jr nz, jr_01e_64f3                            ; $648e: $20 $63

    ld l, h                                       ; $6490: $6c
    ld [hl], l                                    ; $6491: $75
    ld h, d                                       ; $6492: $62
    ld bc, $726f                                  ; $6493: $01 $6f $72
    jr nz, jr_01e_6500                            ; $6496: $20 $68

jr_01e_6498:
    ld l, c                                       ; $6498: $69
    ld [hl], h                                    ; $6499: $74
    jr nz, jr_01e_6510                            ; $649a: $20 $74

    ld l, b                                       ; $649c: $68
    ld h, l                                       ; $649d: $65
    jr nz, jr_01e_6502                            ; $649e: $20 $62

    ld h, c                                       ; $64a0: $61
    ld l, h                                       ; $64a1: $6c
    ld l, h                                       ; $64a2: $6c
    jr nz, @+$6e                                  ; $64a3: $20 $6c

    ld l, a                                       ; $64a5: $6f
    ld [hl], a                                    ; $64a6: $77
    ld l, $03                                     ; $64a7: $2e $03

jr_01e_64a9:
    nop                                           ; $64a9: $00

jr_01e_64aa:
    ld d, e                                       ; $64aa: $53
    ld h, e                                       ; $64ab: $63
    ld l, a                                       ; $64ac: $6f
    ld [hl], d                                    ; $64ad: $72
    ld l, c                                       ; $64ae: $69
    ld l, [hl]                                    ; $64af: $6e
    ld h, a                                       ; $64b0: $67
    jr nz, @+$6e                                  ; $64b1: $20 $6c

    ld h, l                                       ; $64b3: $65
    ld [hl], e                                    ; $64b4: $73
    ld [hl], e                                    ; $64b5: $73
    jr nz, jr_01e_652c                            ; $64b6: $20 $74

    ld l, b                                       ; $64b8: $68

jr_01e_64b9:
    ld h, c                                       ; $64b9: $61
    ld l, [hl]                                    ; $64ba: $6e
    ld bc, $6f79                                  ; $64bb: $01 $79 $6f
    ld [hl], l                                    ; $64be: $75
    ld [hl], d                                    ; $64bf: $72
    jr nz, jr_01e_6523                            ; $64c0: $20 $61

    ld h, a                                       ; $64c2: $67
    ld h, l                                       ; $64c3: $65
    jr nz, @+$6b                                  ; $64c4: $20 $69

    ld l, [hl]                                    ; $64c6: $6e
    jr nz, jr_01e_652a                            ; $64c7: $20 $61

jr_01e_64c9:
    ld bc, $6f72                                  ; $64c9: $01 $72 $6f
    ld [hl], l                                    ; $64cc: $75
    ld l, [hl]                                    ; $64cd: $6e
    ld h, h                                       ; $64ce: $64
    jr nz, @+$71                                  ; $64cf: $20 $6f

    ld h, [hl]                                    ; $64d1: $66
    jr nz, jr_01e_653b                            ; $64d2: $20 $67

    ld l, a                                       ; $64d4: $6f

jr_01e_64d5:
    ld l, h                                       ; $64d5: $6c
    ld h, [hl]                                    ; $64d6: $66
    ld l, $03                                     ; $64d7: $2e $03
    nop                                           ; $64d9: $00

jr_01e_64da:
    ld b, c                                       ; $64da: $41
    jr nz, @+$75                                  ; $64db: $20 $73

    ld h, e                                       ; $64dd: $63
    ld l, a                                       ; $64de: $6f

jr_01e_64df:
    ld [hl], d                                    ; $64df: $72
    ld h, l                                       ; $64e0: $65

jr_01e_64e1:
    jr nz, jr_01e_6552                            ; $64e1: $20 $6f

    ld h, [hl]                                    ; $64e3: $66
    jr nz, jr_01e_6519                            ; $64e4: $20 $33

    ld bc, $7473                                  ; $64e6: $01 $73 $74
    ld [hl], d                                    ; $64e9: $72
    ld l, a                                       ; $64ea: $6f
    ld l, e                                       ; $64eb: $6b

jr_01e_64ec:
    ld h, l                                       ; $64ec: $65
    ld [hl], e                                    ; $64ed: $73
    jr nz, jr_01e_6565                            ; $64ee: $20 $75

    ld l, [hl]                                    ; $64f0: $6e

jr_01e_64f1:
    ld h, h                                       ; $64f1: $64
    ld h, l                                       ; $64f2: $65

jr_01e_64f3:
    ld [hl], d                                    ; $64f3: $72
    ld bc, $6170                                  ; $64f4: $01 $70 $61

jr_01e_64f7:
    ld [hl], d                                    ; $64f7: $72
    jr nz, jr_01e_6569                            ; $64f8: $20 $6f

    ld l, [hl]                                    ; $64fa: $6e
    jr nz, jr_01e_655e                            ; $64fb: $20 $61

    jr nz, @+$6a                                  ; $64fd: $20 $68

    ld l, a                                       ; $64ff: $6f

jr_01e_6500:
    ld l, h                                       ; $6500: $6c
    ld h, l                                       ; $6501: $65

jr_01e_6502:
    ld l, $02                                     ; $6502: $2e $02
    ld c, c                                       ; $6504: $49
    ld [hl], h                                    ; $6505: $74
    daa                                           ; $6506: $27
    ld [hl], e                                    ; $6507: $73
    jr nz, jr_01e_657e                            ; $6508: $20 $74

    ld l, a                                       ; $650a: $6f
    ld [hl], l                                    ; $650b: $75
    ld h, a                                       ; $650c: $67
    ld l, b                                       ; $650d: $68
    ld h, l                                       ; $650e: $65
    ld [hl], d                                    ; $650f: $72

jr_01e_6510:
    jr nz, jr_01e_6586                            ; $6510: $20 $74

    ld l, a                                       ; $6512: $6f
    ld bc, $6567                                  ; $6513: $01 $67 $65
    ld [hl], h                                    ; $6516: $74
    jr nz, jr_01e_658d                            ; $6517: $20 $74

jr_01e_6519:
    ld l, b                                       ; $6519: $68
    ld h, c                                       ; $651a: $61
    ld l, [hl]                                    ; $651b: $6e
    jr nz, jr_01e_657f                            ; $651c: $20 $61

    jr nz, jr_01e_6588                            ; $651e: $20 $68

    ld l, a                                       ; $6520: $6f
    ld l, h                                       ; $6521: $6c
    ld h, l                                       ; $6522: $65

jr_01e_6523:
    ld bc, $6e69                                  ; $6523: $01 $69 $6e
    jr nz, jr_01e_6597                            ; $6526: $20 $6f

    ld l, [hl]                                    ; $6528: $6e
    ld h, l                                       ; $6529: $65

jr_01e_652a:
    ld l, $03                                     ; $652a: $2e $03

jr_01e_652c:
    nop                                           ; $652c: $00
    ld b, c                                       ; $652d: $41
    jr nz, jr_01e_6597                            ; $652e: $20 $67

    ld h, c                                       ; $6530: $61
    ld l, l                                       ; $6531: $6d
    ld h, l                                       ; $6532: $65
    jr nz, jr_01e_659e                            ; $6533: $20 $69

    ld l, [hl]                                    ; $6535: $6e
    jr nz, jr_01e_65af                            ; $6536: $20 $77

    ld l, b                                       ; $6538: $68
    ld l, c                                       ; $6539: $69
    ld h, e                                       ; $653a: $63

jr_01e_653b:
    ld l, b                                       ; $653b: $68
    jr nz, @+$63                                  ; $653c: $20 $61

    ld bc, $6574                                  ; $653e: $01 $74 $65
    ld h, c                                       ; $6541: $61
    ld l, l                                       ; $6542: $6d
    jr nz, jr_01e_65b4                            ; $6543: $20 $6f

    ld h, [hl]                                    ; $6545: $66
    jr nz, jr_01e_65b8                            ; $6546: $20 $70

    ld l, h                                       ; $6548: $6c
    ld h, c                                       ; $6549: $61
    ld a, c                                       ; $654a: $79
    ld h, l                                       ; $654b: $65
    ld [hl], d                                    ; $654c: $72
    ld [hl], e                                    ; $654d: $73
    ld bc, $6174                                  ; $654e: $01 $74 $61
    ld l, e                                       ; $6551: $6b

jr_01e_6552:
    ld h, l                                       ; $6552: $65
    ld [hl], e                                    ; $6553: $73
    jr nz, jr_01e_65ca                            ; $6554: $20 $74

    ld [hl], l                                    ; $6556: $75
    ld [hl], d                                    ; $6557: $72
    ld l, [hl]                                    ; $6558: $6e
    ld [hl], e                                    ; $6559: $73
    jr nz, jr_01e_65c4                            ; $655a: $20 $68

    ld l, c                                       ; $655c: $69
    ld [hl], h                                    ; $655d: $74

jr_01e_655e:
    ld [hl], h                                    ; $655e: $74
    ld l, c                                       ; $655f: $69
    ld l, [hl]                                    ; $6560: $6e
    ld h, a                                       ; $6561: $67
    ld [bc], a                                    ; $6562: $02
    ld [hl], h                                    ; $6563: $74
    ld l, b                                       ; $6564: $68

jr_01e_6565:
    ld h, l                                       ; $6565: $65
    jr nz, jr_01e_65db                            ; $6566: $20 $73

    ld h, c                                       ; $6568: $61

jr_01e_6569:
    ld l, l                                       ; $6569: $6d
    ld h, l                                       ; $656a: $65
    jr nz, jr_01e_65cf                            ; $656b: $20 $62

    ld h, c                                       ; $656d: $61
    ld l, h                                       ; $656e: $6c
    ld l, h                                       ; $656f: $6c
    ld l, $03                                     ; $6570: $2e $03
    nop                                           ; $6572: $00
    ld b, c                                       ; $6573: $41
    jr nz, jr_01e_65e9                            ; $6574: $20 $73

    ld l, b                                       ; $6576: $68
    ld l, a                                       ; $6577: $6f
    ld [hl], d                                    ; $6578: $72
    ld [hl], h                                    ; $6579: $74
    dec l                                         ; $657a: $2d
    ld h, h                                       ; $657b: $64
    ld l, c                                       ; $657c: $69
    ld [hl], e                                    ; $657d: $73

jr_01e_657e:
    ld [hl], h                                    ; $657e: $74

jr_01e_657f:
    ld h, c                                       ; $657f: $61
    ld l, [hl]                                    ; $6580: $6e
    ld h, e                                       ; $6581: $63
    ld h, l                                       ; $6582: $65
    ld bc, $6873                                  ; $6583: $01 $73 $68

jr_01e_6586:
    ld l, a                                       ; $6586: $6f
    ld [hl], h                                    ; $6587: $74

jr_01e_6588:
    jr nz, @+$76                                  ; $6588: $20 $74

    ld l, a                                       ; $658a: $6f
    jr nz, jr_01e_6601                            ; $658b: $20 $74

jr_01e_658d:
    ld l, b                                       ; $658d: $68
    ld h, l                                       ; $658e: $65
    jr nz, jr_01e_6601                            ; $658f: $20 $70

    ld l, c                                       ; $6591: $69
    ld l, [hl]                                    ; $6592: $6e
    inc l                                         ; $6593: $2c
    ld bc, $7375                                  ; $6594: $01 $75 $73

jr_01e_6597:
    ld [hl], l                                    ; $6597: $75
    ld h, c                                       ; $6598: $61
    ld l, h                                       ; $6599: $6c
    ld l, h                                       ; $659a: $6c
    ld a, c                                       ; $659b: $79
    jr nz, jr_01e_65d4                            ; $659c: $20 $36

jr_01e_659e:
    jr nc, jr_01e_65c0                            ; $659e: $30 $20

    ld a, c                                       ; $65a0: $79
    ld h, h                                       ; $65a1: $64
    ld [hl], e                                    ; $65a2: $73
    jr nz, jr_01e_6614                            ; $65a3: $20 $6f

    ld [hl], d                                    ; $65a5: $72
    ld [bc], a                                    ; $65a6: $02
    ld l, h                                       ; $65a7: $6c
    ld h, l                                       ; $65a8: $65
    ld [hl], e                                    ; $65a9: $73
    ld [hl], e                                    ; $65aa: $73
    ld l, $20                                     ; $65ab: $2e $20
    ld b, e                                       ; $65ad: $43
    ld l, b                                       ; $65ae: $68

jr_01e_65af:
    ld l, c                                       ; $65af: $69
    ld [hl], b                                    ; $65b0: $70
    jr nz, jr_01e_6614                            ; $65b1: $20 $61

    ld l, [hl]                                    ; $65b3: $6e

jr_01e_65b4:
    ld h, h                                       ; $65b4: $64
    ld bc, $6970                                  ; $65b5: $01 $70 $69

jr_01e_65b8:
    ld [hl], h                                    ; $65b8: $74
    ld h, e                                       ; $65b9: $63
    ld l, b                                       ; $65ba: $68
    jr nz, jr_01e_6630                            ; $65bb: $20 $73

    ld l, b                                       ; $65bd: $68
    ld l, a                                       ; $65be: $6f
    ld [hl], h                                    ; $65bf: $74

jr_01e_65c0:
    ld [hl], e                                    ; $65c0: $73
    jr nz, jr_01e_6624                            ; $65c1: $20 $61

    ld [hl], d                                    ; $65c3: $72

jr_01e_65c4:
    ld h, l                                       ; $65c4: $65
    ld bc, $666f                                  ; $65c5: $01 $6f $66
    ld [hl], h                                    ; $65c8: $74
    ld h, l                                       ; $65c9: $65

jr_01e_65ca:
    ld l, [hl]                                    ; $65ca: $6e
    jr nz, jr_01e_6642                            ; $65cb: $20 $75

    ld [hl], e                                    ; $65cd: $73
    ld h, l                                       ; $65ce: $65

jr_01e_65cf:
    ld h, h                                       ; $65cf: $64
    ld l, $03                                     ; $65d0: $2e $03
    nop                                           ; $65d2: $00
    ld d, a                                       ; $65d3: $57

jr_01e_65d4:
    ld l, b                                       ; $65d4: $68
    ld h, l                                       ; $65d5: $65
    ld l, [hl]                                    ; $65d6: $6e
    jr nz, @+$72                                  ; $65d7: $20 $70

    ld l, h                                       ; $65d9: $6c
    ld h, c                                       ; $65da: $61

jr_01e_65db:
    ld a, c                                       ; $65db: $79
    ld l, c                                       ; $65dc: $69
    ld l, [hl]                                    ; $65dd: $6e
    ld h, a                                       ; $65de: $67
    jr nz, jr_01e_6642                            ; $65df: $20 $61

    ld l, [hl]                                    ; $65e1: $6e
    jr nz, jr_01e_6615                            ; $65e2: $20 $31

    jr c, @+$2f                                   ; $65e4: $38 $2d

    ld l, b                                       ; $65e6: $68
    ld l, a                                       ; $65e7: $6f
    ld l, h                                       ; $65e8: $6c

jr_01e_65e9:
    ld h, l                                       ; $65e9: $65
    ld bc, $6f72                                  ; $65ea: $01 $72 $6f
    ld [hl], l                                    ; $65ed: $75
    ld l, [hl]                                    ; $65ee: $6e
    ld h, h                                       ; $65ef: $64
    jr nz, jr_01e_6661                            ; $65f0: $20 $6f

    ld h, [hl]                                    ; $65f2: $66
    jr nz, jr_01e_665c                            ; $65f3: $20 $67

    ld l, a                                       ; $65f5: $6f
    ld l, h                                       ; $65f6: $6c
    ld h, [hl]                                    ; $65f7: $66
    inc l                                         ; $65f8: $2c
    jr nz, jr_01e_6674                            ; $65f9: $20 $79

    ld l, a                                       ; $65fb: $6f
    ld [hl], l                                    ; $65fc: $75
    jr nz, jr_01e_6660                            ; $65fd: $20 $61

    ld [hl], d                                    ; $65ff: $72
    ld h, l                                       ; $6600: $65

jr_01e_6601:
    ld bc, $7461                                  ; $6601: $01 $61 $74
    jr nz, jr_01e_667a                            ; $6604: $20 $74

    ld l, b                                       ; $6606: $68
    ld h, l                                       ; $6607: $65
    jr nz, jr_01e_667e                            ; $6608: $20 $74

    ld [hl], l                                    ; $660a: $75
    ld [hl], d                                    ; $660b: $72
    ld l, [hl]                                    ; $660c: $6e
    jr nz, jr_01e_6686                            ; $660d: $20 $77

    ld l, b                                       ; $660f: $68
    ld h, l                                       ; $6610: $65
    ld l, [hl]                                    ; $6611: $6e
    jr nz, jr_01e_668d                            ; $6612: $20 $79

jr_01e_6614:
    ld l, a                                       ; $6614: $6f

jr_01e_6615:
    ld [hl], l                                    ; $6615: $75
    jr nz, jr_01e_661a                            ; $6616: $20 $02

    ld l, b                                       ; $6618: $68
    ld h, c                                       ; $6619: $61

jr_01e_661a:
    halt                                          ; $661a: $76
    ld h, l                                       ; $661b: $65
    jr nz, jr_01e_6684                            ; $661c: $20 $66

    ld l, c                                       ; $661e: $69
    ld l, [hl]                                    ; $661f: $6e
    ld l, c                                       ; $6620: $69
    ld [hl], e                                    ; $6621: $73
    ld l, b                                       ; $6622: $68
    ld h, l                                       ; $6623: $65

jr_01e_6624:
    ld h, h                                       ; $6624: $64
    jr nz, @+$4a                                  ; $6625: $20 $48

    ld l, a                                       ; $6627: $6f
    ld l, h                                       ; $6628: $6c
    ld h, l                                       ; $6629: $65
    jr nz, jr_01e_6665                            ; $662a: $20 $39

    ld l, $03                                     ; $662c: $2e $03
    nop                                           ; $662e: $00
    ld d, h                                       ; $662f: $54

jr_01e_6630:
    ld l, b                                       ; $6630: $68
    ld h, l                                       ; $6631: $65
    jr nz, jr_01e_66a9                            ; $6632: $20 $75

    ld [hl], e                                    ; $6634: $73
    ld [hl], l                                    ; $6635: $75
    ld h, c                                       ; $6636: $61
    ld l, h                                       ; $6637: $6c
    jr nz, @+$63                                  ; $6638: $20 $61

    ld l, l                                       ; $663a: $6d
    ld l, a                                       ; $663b: $6f
    ld [hl], l                                    ; $663c: $75
    ld l, [hl]                                    ; $663d: $6e
    ld [hl], h                                    ; $663e: $74
    ld l, $01                                     ; $663f: $2e $01
    ld b, c                                       ; $6641: $41

jr_01e_6642:
    halt                                          ; $6642: $76
    ld h, l                                       ; $6643: $65
    ld [hl], d                                    ; $6644: $72
    ld h, c                                       ; $6645: $61
    ld h, a                                       ; $6646: $67
    ld h, l                                       ; $6647: $65
    jr nz, jr_01e_66bd                            ; $6648: $20 $73

    ld h, e                                       ; $664a: $63
    ld l, a                                       ; $664b: $6f
    ld [hl], d                                    ; $664c: $72
    ld h, l                                       ; $664d: $65
    jr nz, jr_01e_66b1                            ; $664e: $20 $61

    ld l, [hl]                                    ; $6650: $6e
    ld h, h                                       ; $6651: $64
    ld bc, $7264                                  ; $6652: $01 $64 $72
    ld l, c                                       ; $6655: $69
    halt                                          ; $6656: $76
    ld h, l                                       ; $6657: $65
    jr nz, jr_01e_66be                            ; $6658: $20 $64

    ld h, c                                       ; $665a: $61
    ld [hl], h                                    ; $665b: $74

jr_01e_665c:
    ld h, c                                       ; $665c: $61
    jr nz, @+$63                                  ; $665d: $20 $61

    ld [hl], d                                    ; $665f: $72

jr_01e_6660:
    ld h, l                                       ; $6660: $65

jr_01e_6661:
    ld [bc], a                                    ; $6661: $02
    ld [hl], e                                    ; $6662: $73
    ld h, c                                       ; $6663: $61
    halt                                          ; $6664: $76

jr_01e_6665:
    ld h, l                                       ; $6665: $65
    ld h, h                                       ; $6666: $64
    jr nz, jr_01e_66de                            ; $6667: $20 $75

    ld l, [hl]                                    ; $6669: $6e
    ld h, h                                       ; $666a: $64
    ld h, l                                       ; $666b: $65
    ld [hl], d                                    ; $666c: $72
    ld bc, $7453                                  ; $666d: $01 $53 $74
    ld h, c                                       ; $6670: $61
    ld [hl], h                                    ; $6671: $74
    ld [hl], l                                    ; $6672: $75
    ld [hl], e                                    ; $6673: $73

jr_01e_6674:
    ld l, $03                                     ; $6674: $2e $03
    nop                                           ; $6676: $00
    ld d, h                                       ; $6677: $54
    ld l, b                                       ; $6678: $68
    ld h, l                                       ; $6679: $65

jr_01e_667a:
    jr nz, jr_01e_66dd                            ; $667a: $20 $61

    halt                                          ; $667c: $76
    ld h, l                                       ; $667d: $65

jr_01e_667e:
    ld [hl], d                                    ; $667e: $72
    ld h, c                                       ; $667f: $61
    ld h, a                                       ; $6680: $67
    ld h, l                                       ; $6681: $65
    jr nz, jr_01e_66e8                            ; $6682: $20 $64

jr_01e_6684:
    ld l, c                                       ; $6684: $69
    ld [hl], e                                    ; $6685: $73

jr_01e_6686:
    dec l                                         ; $6686: $2d
    ld bc, $6174                                  ; $6687: $01 $74 $61
    ld l, [hl]                                    ; $668a: $6e
    ld h, e                                       ; $668b: $63
    ld h, l                                       ; $668c: $65

jr_01e_668d:
    jr nz, jr_01e_6703                            ; $668d: $20 $74

    ld [hl], d                                    ; $668f: $72
    ld h, c                                       ; $6690: $61
    halt                                          ; $6691: $76
    ld h, l                                       ; $6692: $65
    ld l, h                                       ; $6693: $6c
    ld h, l                                       ; $6694: $65
    ld h, h                                       ; $6695: $64
    jr nz, jr_01e_66fa                            ; $6696: $20 $62

    ld a, c                                       ; $6698: $79
    ld bc, $6162                                  ; $6699: $01 $62 $61
    ld l, h                                       ; $669c: $6c
    ld l, h                                       ; $669d: $6c
    ld [hl], e                                    ; $669e: $73
    jr nz, jr_01e_6715                            ; $669f: $20 $74

    ld l, b                                       ; $66a1: $68
    ld h, c                                       ; $66a2: $61
    ld [hl], h                                    ; $66a3: $74
    jr nz, @+$6e                                  ; $66a4: $20 $6c

    ld h, c                                       ; $66a6: $61
    ld l, [hl]                                    ; $66a7: $6e
    ld h, h                                       ; $66a8: $64

jr_01e_66a9:
    ld h, l                                       ; $66a9: $65
    ld h, h                                       ; $66aa: $64
    ld [bc], a                                    ; $66ab: $02
    ld l, a                                       ; $66ac: $6f
    ld l, [hl]                                    ; $66ad: $6e
    jr nz, jr_01e_6724                            ; $66ae: $20 $74

    ld l, b                                       ; $66b0: $68

jr_01e_66b1:
    ld h, l                                       ; $66b1: $65
    jr nz, @+$69                                  ; $66b2: $20 $67

    ld [hl], d                                    ; $66b4: $72
    ld h, l                                       ; $66b5: $65
    ld h, l                                       ; $66b6: $65
    ld l, [hl]                                    ; $66b7: $6e
    inc l                                         ; $66b8: $2c
    ld bc, $7267                                  ; $66b9: $01 $67 $72
    ld h, l                                       ; $66bc: $65

jr_01e_66bd:
    ld h, l                                       ; $66bd: $65

jr_01e_66be:
    ld l, [hl]                                    ; $66be: $6e
    jr nz, jr_01e_6726                            ; $66bf: $20 $65

    ld h, h                                       ; $66c1: $64
    ld h, a                                       ; $66c2: $67
    ld h, l                                       ; $66c3: $65
    jr nz, jr_01e_6735                            ; $66c4: $20 $6f

    ld [hl], d                                    ; $66c6: $72
    ld bc, $6166                                  ; $66c7: $01 $66 $61
    ld l, c                                       ; $66ca: $69
    ld [hl], d                                    ; $66cb: $72
    ld [hl], a                                    ; $66cc: $77
    ld h, c                                       ; $66cd: $61
    ld a, c                                       ; $66ce: $79
    ld l, $03                                     ; $66cf: $2e $03
    nop                                           ; $66d1: $00
    ld d, h                                       ; $66d2: $54
    ld l, b                                       ; $66d3: $68
    ld h, l                                       ; $66d4: $65
    jr nz, jr_01e_674c                            ; $66d5: $20 $75

    ld [hl], e                                    ; $66d7: $73
    ld [hl], l                                    ; $66d8: $75
    ld h, c                                       ; $66d9: $61
    ld l, h                                       ; $66da: $6c
    jr nz, jr_01e_674b                            ; $66db: $20 $6e

jr_01e_66dd:
    ld [hl], l                                    ; $66dd: $75

jr_01e_66de:
    ld l, l                                       ; $66de: $6d
    ld h, d                                       ; $66df: $62
    ld h, l                                       ; $66e0: $65
    ld [hl], d                                    ; $66e1: $72
    jr nz, jr_01e_6753                            ; $66e2: $20 $6f

    ld h, [hl]                                    ; $66e4: $66
    ld bc, $7570                                  ; $66e5: $01 $70 $75

jr_01e_66e8:
    ld [hl], h                                    ; $66e8: $74
    ld [hl], h                                    ; $66e9: $74
    ld [hl], e                                    ; $66ea: $73
    jr nz, jr_01e_6761                            ; $66eb: $20 $74

    ld h, c                                       ; $66ed: $61
    ld l, e                                       ; $66ee: $6b
    ld h, l                                       ; $66ef: $65
    ld l, [hl]                                    ; $66f0: $6e
    jr nz, jr_01e_6762                            ; $66f1: $20 $6f

    ld l, [hl]                                    ; $66f3: $6e
    jr nz, @+$63                                  ; $66f4: $20 $61

    ld bc, $6f68                                  ; $66f6: $01 $68 $6f
    ld l, h                                       ; $66f9: $6c

jr_01e_66fa:
    ld h, l                                       ; $66fa: $65
    ld l, $02                                     ; $66fb: $2e $02
    ld c, c                                       ; $66fd: $49
    ld l, l                                       ; $66fe: $6d
    ld [hl], b                                    ; $66ff: $70
    ld [hl], d                                    ; $6700: $72
    ld l, a                                       ; $6701: $6f
    halt                                          ; $6702: $76

jr_01e_6703:
    ld h, l                                       ; $6703: $65
    ld h, h                                       ; $6704: $64
    jr nz, jr_01e_6777                            ; $6705: $20 $70

    ld [hl], l                                    ; $6707: $75
    ld [hl], h                                    ; $6708: $74
    ld [hl], h                                    ; $6709: $74
    ld l, c                                       ; $670a: $69
    ld l, [hl]                                    ; $670b: $6e
    ld h, a                                       ; $670c: $67
    ld bc, $6e61                                  ; $670d: $01 $61 $6e
    ld h, h                                       ; $6710: $64
    jr nz, jr_01e_6774                            ; $6711: $20 $61

    ld [hl], b                                    ; $6713: $70
    ld [hl], b                                    ; $6714: $70

jr_01e_6715:
    ld [hl], d                                    ; $6715: $72
    ld l, a                                       ; $6716: $6f
    ld h, c                                       ; $6717: $61
    ld h, e                                       ; $6718: $63
    ld l, b                                       ; $6719: $68
    jr nz, jr_01e_678f                            ; $671a: $20 $73

    ld l, b                                       ; $671c: $68
    ld l, a                                       ; $671d: $6f
    ld [hl], h                                    ; $671e: $74
    ld [hl], e                                    ; $671f: $73
    ld bc, $6163                                  ; $6720: $01 $63 $61
    ld l, [hl]                                    ; $6723: $6e

jr_01e_6724:
    jr nz, @+$6a                                  ; $6724: $20 $68

jr_01e_6726:
    ld h, l                                       ; $6726: $65
    ld l, h                                       ; $6727: $6c
    ld [hl], b                                    ; $6728: $70
    jr nz, jr_01e_6797                            ; $6729: $20 $6c

    ld l, a                                       ; $672b: $6f
    ld [hl], a                                    ; $672c: $77
    ld h, l                                       ; $672d: $65
    ld [hl], d                                    ; $672e: $72
    jr nz, jr_01e_679a                            ; $672f: $20 $69

    ld [hl], h                                    ; $6731: $74
    ld l, $03                                     ; $6732: $2e $03
    nop                                           ; $6734: $00

jr_01e_6735:
    ld d, h                                       ; $6735: $54
    ld l, b                                       ; $6736: $68
    ld h, l                                       ; $6737: $65
    jr nz, jr_01e_679b                            ; $6738: $20 $61

    halt                                          ; $673a: $76
    ld h, l                                       ; $673b: $65
    ld [hl], d                                    ; $673c: $72
    ld h, c                                       ; $673d: $61
    ld h, a                                       ; $673e: $67
    ld h, l                                       ; $673f: $65
    jr nz, @+$71                                  ; $6740: $20 $6f

    ld h, [hl]                                    ; $6742: $66
    ld bc, $6c61                                  ; $6743: $01 $61 $6c
    ld l, h                                       ; $6746: $6c
    jr nz, jr_01e_67c2                            ; $6747: $20 $79

    ld l, a                                       ; $6749: $6f
    ld [hl], l                                    ; $674a: $75

jr_01e_674b:
    ld [hl], d                                    ; $674b: $72

jr_01e_674c:
    jr nz, jr_01e_67c1                            ; $674c: $20 $73

    ld h, e                                       ; $674e: $63
    ld l, a                                       ; $674f: $6f
    ld [hl], d                                    ; $6750: $72
    ld h, l                                       ; $6751: $65
    ld [hl], e                                    ; $6752: $73

jr_01e_6753:
    ld bc, $6e69                                  ; $6753: $01 $69 $6e
    jr nz, jr_01e_6789                            ; $6756: $20 $31

    jr c, @+$2f                                   ; $6758: $38 $2d

    ld l, b                                       ; $675a: $68
    ld l, a                                       ; $675b: $6f
    ld l, h                                       ; $675c: $6c
    ld h, l                                       ; $675d: $65
    jr nz, @+$74                                  ; $675e: $20 $72

    ld l, a                                       ; $6760: $6f

jr_01e_6761:
    ld [hl], l                                    ; $6761: $75

jr_01e_6762:
    ld l, [hl]                                    ; $6762: $6e
    ld h, h                                       ; $6763: $64
    ld [hl], e                                    ; $6764: $73
    ld l, $03                                     ; $6765: $2e $03
    nop                                           ; $6767: $00
    ld d, h                                       ; $6768: $54
    ld l, b                                       ; $6769: $68
    ld h, l                                       ; $676a: $65
    jr nz, @+$6e                                  ; $676b: $20 $6c

    ld h, c                                       ; $676d: $61
    ld [hl], e                                    ; $676e: $73
    ld [hl], h                                    ; $676f: $74
    jr nz, jr_01e_67ab                            ; $6770: $20 $39

    jr nz, jr_01e_67dc                            ; $6772: $20 $68

jr_01e_6774:
    ld l, a                                       ; $6774: $6f
    ld l, h                                       ; $6775: $6c
    ld h, l                                       ; $6776: $65

jr_01e_6777:
    ld [hl], e                                    ; $6777: $73
    ld bc, $6e6f                                  ; $6778: $01 $6f $6e
    jr nz, @+$63                                  ; $677b: $20 $61

    ld l, [hl]                                    ; $677d: $6e
    jr nz, @+$33                                  ; $677e: $20 $31

    jr c, jr_01e_67af                             ; $6780: $38 $2d

    ld l, b                                       ; $6782: $68
    ld l, a                                       ; $6783: $6f
    ld l, h                                       ; $6784: $6c
    ld h, l                                       ; $6785: $65
    ld bc, $6f63                                  ; $6786: $01 $63 $6f

jr_01e_6789:
    ld [hl], l                                    ; $6789: $75
    ld [hl], d                                    ; $678a: $72
    ld [hl], e                                    ; $678b: $73
    ld h, l                                       ; $678c: $65
    ld l, $03                                     ; $678d: $2e $03

jr_01e_678f:
    nop                                           ; $678f: $00
    ld d, [hl]                                    ; $6790: $56
    ld h, l                                       ; $6791: $65
    ld [hl], d                                    ; $6792: $72
    ld [hl], h                                    ; $6793: $74
    ld l, c                                       ; $6794: $69
    ld h, e                                       ; $6795: $63
    ld h, c                                       ; $6796: $61

jr_01e_6797:
    ld l, h                                       ; $6797: $6c
    jr nz, @+$75                                  ; $6798: $20 $73

jr_01e_679a:
    ld [hl], b                                    ; $679a: $70

jr_01e_679b:
    ld l, c                                       ; $679b: $69
    ld l, [hl]                                    ; $679c: $6e
    jr nz, jr_01e_680e                            ; $679d: $20 $6f

    ld l, [hl]                                    ; $679f: $6e
    jr nz, jr_01e_6803                            ; $67a0: $20 $61

    ld bc, $6162                                  ; $67a2: $01 $62 $61
    ld l, h                                       ; $67a5: $6c
    ld l, h                                       ; $67a6: $6c
    jr nz, jr_01e_6818                            ; $67a7: $20 $6f

    ld [hl], b                                    ; $67a9: $70
    ld [hl], b                                    ; $67aa: $70

jr_01e_67ab:
    ld l, a                                       ; $67ab: $6f
    ld [hl], e                                    ; $67ac: $73
    ld l, c                                       ; $67ad: $69
    ld [hl], h                                    ; $67ae: $74

jr_01e_67af:
    ld h, l                                       ; $67af: $65
    jr nz, jr_01e_6826                            ; $67b0: $20 $74

    ld l, b                                       ; $67b2: $68
    ld h, l                                       ; $67b3: $65
    ld bc, $6964                                  ; $67b4: $01 $64 $69
    ld [hl], d                                    ; $67b7: $72
    ld h, l                                       ; $67b8: $65
    ld h, e                                       ; $67b9: $63
    ld [hl], h                                    ; $67ba: $74
    ld l, c                                       ; $67bb: $69
    ld l, a                                       ; $67bc: $6f
    ld l, [hl]                                    ; $67bd: $6e
    jr nz, @+$76                                  ; $67be: $20 $74

    ld l, b                                       ; $67c0: $68

jr_01e_67c1:
    ld h, l                                       ; $67c1: $65

jr_01e_67c2:
    jr nz, jr_01e_6826                            ; $67c2: $20 $62

    ld h, c                                       ; $67c4: $61
    ld l, h                                       ; $67c5: $6c
    ld l, h                                       ; $67c6: $6c
    ld [bc], a                                    ; $67c7: $02
    ld l, c                                       ; $67c8: $69
    ld [hl], e                                    ; $67c9: $73
    jr nz, jr_01e_6839                            ; $67ca: $20 $6d

    ld l, a                                       ; $67cc: $6f
    halt                                          ; $67cd: $76
    ld l, c                                       ; $67ce: $69
    ld l, [hl]                                    ; $67cf: $6e
    ld h, a                                       ; $67d0: $67
    ld l, $20                                     ; $67d1: $2e $20
    ld b, d                                       ; $67d3: $42
    ld h, c                                       ; $67d4: $61
    ld l, h                                       ; $67d5: $6c
    ld l, h                                       ; $67d6: $6c
    ld [hl], e                                    ; $67d7: $73
    ld bc, $6977                                  ; $67d8: $01 $77 $69
    ld [hl], h                                    ; $67db: $74

jr_01e_67dc:
    ld l, b                                       ; $67dc: $68
    jr nz, jr_01e_6841                            ; $67dd: $20 $62

    ld h, c                                       ; $67df: $61
    ld h, e                                       ; $67e0: $63
    ld l, e                                       ; $67e1: $6b
    ld [hl], e                                    ; $67e2: $73
    ld [hl], b                                    ; $67e3: $70
    ld l, c                                       ; $67e4: $69
    ld l, [hl]                                    ; $67e5: $6e
    ld bc, $7473                                  ; $67e6: $01 $73 $74
    ld l, a                                       ; $67e9: $6f
    ld [hl], b                                    ; $67ea: $70
    jr nz, jr_01e_685a                            ; $67eb: $20 $6d

    ld l, a                                       ; $67ed: $6f
    ld [hl], d                                    ; $67ee: $72
    ld h, l                                       ; $67ef: $65
    jr nz, jr_01e_6863                            ; $67f0: $20 $71

    ld [hl], l                                    ; $67f2: $75
    ld l, c                                       ; $67f3: $69
    ld h, e                                       ; $67f4: $63
    ld l, e                                       ; $67f5: $6b
    ld l, h                                       ; $67f6: $6c
    ld a, c                                       ; $67f7: $79
    ld [bc], a                                    ; $67f8: $02
    ld [hl], h                                    ; $67f9: $74
    ld l, b                                       ; $67fa: $68
    ld h, c                                       ; $67fb: $61
    ld l, [hl]                                    ; $67fc: $6e
    jr nz, jr_01e_6861                            ; $67fd: $20 $62

    ld h, c                                       ; $67ff: $61
    ld l, h                                       ; $6800: $6c
    ld l, h                                       ; $6801: $6c
    ld [hl], e                                    ; $6802: $73

jr_01e_6803:
    jr nz, jr_01e_687c                            ; $6803: $20 $77

    ld l, c                                       ; $6805: $69
    ld [hl], h                                    ; $6806: $74
    ld l, b                                       ; $6807: $68
    jr nz, @+$70                                  ; $6808: $20 $6e

    ld l, a                                       ; $680a: $6f
    ld bc, $7073                                  ; $680b: $01 $73 $70

jr_01e_680e:
    ld l, c                                       ; $680e: $69
    ld l, [hl]                                    ; $680f: $6e
    ld l, $03                                     ; $6810: $2e $03
    nop                                           ; $6812: $00
    ld d, h                                       ; $6813: $54
    ld l, b                                       ; $6814: $68
    ld h, l                                       ; $6815: $65
    jr nz, jr_01e_6885                            ; $6816: $20 $6d

jr_01e_6818:
    ld l, a                                       ; $6818: $6f
    ld [hl], h                                    ; $6819: $74
    ld l, c                                       ; $681a: $69
    ld l, a                                       ; $681b: $6f
    ld l, [hl]                                    ; $681c: $6e
    jr nz, jr_01e_688e                            ; $681d: $20 $6f

    ld h, [hl]                                    ; $681f: $66
    ld bc, $7773                                  ; $6820: $01 $73 $77
    ld l, c                                       ; $6823: $69
    ld l, [hl]                                    ; $6824: $6e
    ld h, a                                       ; $6825: $67

jr_01e_6826:
    ld l, c                                       ; $6826: $69
    ld l, [hl]                                    ; $6827: $6e
    ld h, a                                       ; $6828: $67
    jr nz, @+$7b                                  ; $6829: $20 $79

    ld l, a                                       ; $682b: $6f
    ld [hl], l                                    ; $682c: $75
    ld [hl], d                                    ; $682d: $72
    jr nz, @+$65                                  ; $682e: $20 $63

    ld l, h                                       ; $6830: $6c
    ld [hl], l                                    ; $6831: $75
    ld h, d                                       ; $6832: $62
    ld bc, $6562                                  ; $6833: $01 $62 $65
    ld l, b                                       ; $6836: $68
    ld l, c                                       ; $6837: $69
    ld l, [hl]                                    ; $6838: $6e

jr_01e_6839:
    ld h, h                                       ; $6839: $64
    jr nz, @+$7b                                  ; $683a: $20 $79

    ld l, a                                       ; $683c: $6f
    ld [hl], l                                    ; $683d: $75
    jr nz, jr_01e_68a1                            ; $683e: $20 $61

    ld h, [hl]                                    ; $6840: $66

jr_01e_6841:
    ld [hl], h                                    ; $6841: $74
    ld h, l                                       ; $6842: $65
    ld [hl], d                                    ; $6843: $72
    ld [bc], a                                    ; $6844: $02
    ld a, c                                       ; $6845: $79
    ld l, a                                       ; $6846: $6f
    ld [hl], l                                    ; $6847: $75
    ld [hl], d                                    ; $6848: $72
    jr nz, jr_01e_68ac                            ; $6849: $20 $61

    ld h, h                                       ; $684b: $64
    ld h, h                                       ; $684c: $64
    ld [hl], d                                    ; $684d: $72
    ld h, l                                       ; $684e: $65
    ld [hl], e                                    ; $684f: $73
    ld [hl], e                                    ; $6850: $73
    ld l, $03                                     ; $6851: $2e $03
    nop                                           ; $6853: $00
    ld d, h                                       ; $6854: $54
    ld l, b                                       ; $6855: $68
    ld l, c                                       ; $6856: $69
    ld [hl], e                                    ; $6857: $73
    jr nz, jr_01e_68c3                            ; $6858: $20 $69

jr_01e_685a:
    ld [hl], e                                    ; $685a: $73
    jr nz, @+$63                                  ; $685b: $20 $61

    ld l, [hl]                                    ; $685d: $6e
    ld l, a                                       ; $685e: $6f
    ld [hl], h                                    ; $685f: $74
    ld l, b                                       ; $6860: $68

jr_01e_6861:
    ld h, l                                       ; $6861: $65
    ld [hl], d                                    ; $6862: $72

jr_01e_6863:
    ld bc, $616e                                  ; $6863: $01 $6e $61
    ld l, l                                       ; $6866: $6d
    ld h, l                                       ; $6867: $65
    jr nz, jr_01e_68d0                            ; $6868: $20 $66

    ld l, a                                       ; $686a: $6f
    ld [hl], d                                    ; $686b: $72
    jr nz, @+$76                                  ; $686c: $20 $74

    ld l, b                                       ; $686e: $68
    ld h, l                                       ; $686f: $65
    ld bc, $2034                                  ; $6870: $01 $34 $20
    ld [hl], a                                    ; $6873: $77
    ld l, a                                       ; $6874: $6f
    ld l, a                                       ; $6875: $6f
    ld h, h                                       ; $6876: $64
    ld l, $03                                     ; $6877: $2e $03
    nop                                           ; $6879: $00
    ld d, h                                       ; $687a: $54
    ld l, b                                       ; $687b: $68

jr_01e_687c:
    ld h, l                                       ; $687c: $65
    jr nz, @+$74                                  ; $687d: $20 $72

    ld l, a                                       ; $687f: $6f
    ld [hl], l                                    ; $6880: $75
    ld l, [hl]                                    ; $6881: $6e
    ld h, h                                       ; $6882: $64
    jr nz, jr_01e_68f4                            ; $6883: $20 $6f

jr_01e_6885:
    ld h, d                                       ; $6885: $62
    ld l, d                                       ; $6886: $6a
    ld h, l                                       ; $6887: $65
    ld h, e                                       ; $6888: $63
    ld [hl], h                                    ; $6889: $74
    ld [bc], a                                    ; $688a: $02
    ld a, c                                       ; $688b: $79
    ld l, a                                       ; $688c: $6f
    ld [hl], l                                    ; $688d: $75

jr_01e_688e:
    jr nz, jr_01e_68f8                            ; $688e: $20 $68

    ld l, c                                       ; $6890: $69
    ld [hl], h                                    ; $6891: $74
    jr nz, @+$76                                  ; $6892: $20 $74

    ld l, a                                       ; $6894: $6f
    ld [hl], a                                    ; $6895: $77
    ld h, c                                       ; $6896: $61
    ld [hl], d                                    ; $6897: $72
    ld h, h                                       ; $6898: $64
    ld bc, $6874                                  ; $6899: $01 $74 $68
    ld h, l                                       ; $689c: $65
    jr nz, jr_01e_6906                            ; $689d: $20 $67

    ld [hl], d                                    ; $689f: $72
    ld h, l                                       ; $68a0: $65

jr_01e_68a1:
    ld h, l                                       ; $68a1: $65
    ld l, [hl]                                    ; $68a2: $6e
    ld l, $20                                     ; $68a3: $2e $20
    ld b, d                                       ; $68a5: $42
    ld h, c                                       ; $68a6: $61
    ld l, h                                       ; $68a7: $6c
    ld l, h                                       ; $68a8: $6c
    ld [hl], e                                    ; $68a9: $73
    ld [bc], a                                    ; $68aa: $02
    ld [hl], a                                    ; $68ab: $77

jr_01e_68ac:
    ld h, l                                       ; $68ac: $65
    ld [hl], d                                    ; $68ad: $72
    ld h, l                                       ; $68ae: $65
    jr nz, @+$71                                  ; $68af: $20 $6f

    ld l, [hl]                                    ; $68b1: $6e
    ld h, e                                       ; $68b2: $63
    ld h, l                                       ; $68b3: $65
    jr nz, jr_01e_6923                            ; $68b4: $20 $6d

    ld h, c                                       ; $68b6: $61
    ld h, h                                       ; $68b7: $64
    ld h, l                                       ; $68b8: $65
    jr nz, jr_01e_692a                            ; $68b9: $20 $6f

    ld h, [hl]                                    ; $68bb: $66
    ld bc, $6566                                  ; $68bc: $01 $66 $65
    ld h, c                                       ; $68bf: $61
    ld [hl], h                                    ; $68c0: $74
    ld l, b                                       ; $68c1: $68
    ld h, l                                       ; $68c2: $65

jr_01e_68c3:
    ld [hl], d                                    ; $68c3: $72
    ld [hl], e                                    ; $68c4: $73
    jr nz, jr_01e_6929                            ; $68c5: $20 $62

    ld [hl], l                                    ; $68c7: $75
    ld [hl], h                                    ; $68c8: $74
    jr nz, @+$66                                  ; $68c9: $20 $64

    ld l, c                                       ; $68cb: $69
    ld h, h                                       ; $68cc: $64
    jr nz, @+$70                                  ; $68cd: $20 $6e

    ld l, a                                       ; $68cf: $6f

jr_01e_68d0:
    ld [hl], h                                    ; $68d0: $74
    ld bc, $6f67                                  ; $68d1: $01 $67 $6f
    jr nz, jr_01e_694c                            ; $68d4: $20 $76

    ld h, l                                       ; $68d6: $65
    ld [hl], d                                    ; $68d7: $72
    ld a, c                                       ; $68d8: $79
    jr nz, jr_01e_6941                            ; $68d9: $20 $66

    ld h, c                                       ; $68db: $61
    ld [hl], d                                    ; $68dc: $72
    ld l, $03                                     ; $68dd: $2e $03
    nop                                           ; $68df: $00
    ld b, c                                       ; $68e0: $41
    jr nz, jr_01e_6956                            ; $68e1: $20 $73

    ld [hl], b                                    ; $68e3: $70
    ld l, a                                       ; $68e4: $6f
    ld [hl], h                                    ; $68e5: $74
    jr nz, jr_01e_695f                            ; $68e6: $20 $77

    ld l, b                                       ; $68e8: $68
    ld h, l                                       ; $68e9: $65
    ld [hl], d                                    ; $68ea: $72
    ld h, l                                       ; $68eb: $65
    jr nz, @+$76                                  ; $68ec: $20 $74

    ld l, b                                       ; $68ee: $68
    ld h, l                                       ; $68ef: $65
    ld bc, $7267                                  ; $68f0: $01 $67 $72
    ld h, c                                       ; $68f3: $61

jr_01e_68f4:
    ld [hl], e                                    ; $68f4: $73
    ld [hl], e                                    ; $68f5: $73
    jr nz, jr_01e_6961                            ; $68f6: $20 $69

jr_01e_68f8:
    ld [hl], e                                    ; $68f8: $73
    jr nz, @+$76                                  ; $68f9: $20 $74

    ld l, b                                       ; $68fb: $68
    ld l, c                                       ; $68fc: $69
    ld l, [hl]                                    ; $68fd: $6e
    jr nz, jr_01e_6961                            ; $68fe: $20 $61

    ld l, [hl]                                    ; $6900: $6e
    ld h, h                                       ; $6901: $64
    ld bc, $6964                                  ; $6902: $01 $64 $69
    ld [hl], d                                    ; $6905: $72

jr_01e_6906:
    ld [hl], h                                    ; $6906: $74
    jr nz, @+$65                                  ; $6907: $20 $63

    ld h, c                                       ; $6909: $61
    ld l, [hl]                                    ; $690a: $6e
    jr nz, @+$64                                  ; $690b: $20 $62

    ld h, l                                       ; $690d: $65
    jr nz, jr_01e_6983                            ; $690e: $20 $73

    ld h, l                                       ; $6910: $65
    ld h, l                                       ; $6911: $65
    ld l, [hl]                                    ; $6912: $6e
    ld l, $02                                     ; $6913: $2e $02
    ld c, l                                       ; $6915: $4d
    ld l, c                                       ; $6916: $69
    ld [hl], e                                    ; $6917: $73
    ld [hl], e                                    ; $6918: $73
    ld l, c                                       ; $6919: $69
    ld l, [hl]                                    ; $691a: $6e
    ld h, a                                       ; $691b: $67
    jr nz, jr_01e_698d                            ; $691c: $20 $6f

    ld l, [hl]                                    ; $691e: $6e
    jr nz, jr_01e_6983                            ; $691f: $20 $62

    ld h, c                                       ; $6921: $61
    ld [hl], d                                    ; $6922: $72

jr_01e_6923:
    ld h, l                                       ; $6923: $65
    ld bc, $7267                                  ; $6924: $01 $67 $72
    ld l, a                                       ; $6927: $6f
    ld [hl], l                                    ; $6928: $75

jr_01e_6929:
    ld l, [hl]                                    ; $6929: $6e

jr_01e_692a:
    ld h, h                                       ; $692a: $64
    jr nz, @+$6b                                  ; $692b: $20 $69

    ld [hl], e                                    ; $692d: $73
    jr nz, jr_01e_6992                            ; $692e: $20 $62

    ld h, c                                       ; $6930: $61
    ld h, h                                       ; $6931: $64
    inc l                                         ; $6932: $2c
    jr nz, jr_01e_69a8                            ; $6933: $20 $73

    ld l, a                                       ; $6935: $6f
    ld bc, $6177                                  ; $6936: $01 $77 $61
    ld [hl], h                                    ; $6939: $74
    ld h, e                                       ; $693a: $63
    ld l, b                                       ; $693b: $68
    jr nz, jr_01e_69b7                            ; $693c: $20 $79

    ld l, a                                       ; $693e: $6f
    ld [hl], l                                    ; $693f: $75
    ld [hl], d                                    ; $6940: $72

jr_01e_6941:
    jr nz, jr_01e_69b7                            ; $6941: $20 $74

    ld l, c                                       ; $6943: $69
    ld l, l                                       ; $6944: $6d
    ld l, c                                       ; $6945: $69
    ld l, [hl]                                    ; $6946: $6e
    ld h, a                                       ; $6947: $67
    ld hl, $0003                                  ; $6948: $21 $03 $00
    ld d, h                                       ; $694b: $54

jr_01e_694c:
    ld l, b                                       ; $694c: $68
    ld h, l                                       ; $694d: $65
    jr nz, jr_01e_69bc                            ; $694e: $20 $6c

    ld l, a                                       ; $6950: $6f
    ld l, [hl]                                    ; $6951: $6e
    ld h, a                                       ; $6952: $67
    ld h, l                                       ; $6953: $65
    ld [hl], e                                    ; $6954: $73
    ld [hl], h                                    ; $6955: $74

jr_01e_6956:
    jr nz, jr_01e_69bc                            ; $6956: $20 $64

    ld l, c                                       ; $6958: $69
    ld [hl], e                                    ; $6959: $73
    dec l                                         ; $695a: $2d
    ld bc, $6174                                  ; $695b: $01 $74 $61
    ld l, [hl]                                    ; $695e: $6e

jr_01e_695f:
    ld h, e                                       ; $695f: $63
    ld h, l                                       ; $6960: $65

jr_01e_6961:
    jr nz, jr_01e_69dc                            ; $6961: $20 $79

    ld l, a                                       ; $6963: $6f
    ld [hl], l                                    ; $6964: $75
    jr nz, jr_01e_69cc                            ; $6965: $20 $65

    halt                                          ; $6967: $76
    ld h, l                                       ; $6968: $65
    ld [hl], d                                    ; $6969: $72
    ld bc, $6968                                  ; $696a: $01 $68 $69
    ld [hl], h                                    ; $696d: $74
    jr nz, jr_01e_69e4                            ; $696e: $20 $74

    ld l, b                                       ; $6970: $68
    ld h, l                                       ; $6971: $65
    jr nz, @+$64                                  ; $6972: $20 $62

    ld h, c                                       ; $6974: $61
    ld l, h                                       ; $6975: $6c
    ld l, h                                       ; $6976: $6c
    ld l, $03                                     ; $6977: $2e $03
    nop                                           ; $6979: $00
    ld d, h                                       ; $697a: $54
    ld l, b                                       ; $697b: $68
    ld l, c                                       ; $697c: $69
    ld [hl], e                                    ; $697d: $73
    jr nz, jr_01e_69e9                            ; $697e: $20 $69

    ld [hl], e                                    ; $6980: $73
    jr nz, jr_01e_69f7                            ; $6981: $20 $74

jr_01e_6983:
    ld l, b                                       ; $6983: $68
    ld h, l                                       ; $6984: $65
    jr nz, jr_01e_69e9                            ; $6985: $20 $62

    ld h, l                                       ; $6987: $65
    ld [hl], e                                    ; $6988: $73
    ld [hl], h                                    ; $6989: $74
    ld bc, $6373                                  ; $698a: $01 $73 $63

jr_01e_698d:
    ld l, a                                       ; $698d: $6f
    ld [hl], d                                    ; $698e: $72
    ld h, l                                       ; $698f: $65
    jr nz, jr_01e_69f7                            ; $6990: $20 $65

jr_01e_6992:
    halt                                          ; $6992: $76
    ld h, l                                       ; $6993: $65
    ld [hl], d                                    ; $6994: $72
    jr nz, jr_01e_6a0a                            ; $6995: $20 $73

    ld l, b                                       ; $6997: $68
    ld l, a                                       ; $6998: $6f
    ld [hl], h                                    ; $6999: $74
    inc l                                         ; $699a: $2c
    ld bc, $6f6e                                  ; $699b: $01 $6e $6f
    ld [hl], h                                    ; $699e: $74
    jr nz, jr_01e_6a0a                            ; $699f: $20 $69

    ld l, [hl]                                    ; $69a1: $6e
    ld h, e                                       ; $69a2: $63
    ld l, h                                       ; $69a3: $6c
    ld [hl], l                                    ; $69a4: $75
    ld h, h                                       ; $69a5: $64
    ld l, c                                       ; $69a6: $69
    ld l, [hl]                                    ; $69a7: $6e

jr_01e_69a8:
    ld h, a                                       ; $69a8: $67
    jr nz, jr_01e_6a0c                            ; $69a9: $20 $61

    ld [bc], a                                    ; $69ab: $02
    ld l, b                                       ; $69ac: $68
    ld h, c                                       ; $69ad: $61
    ld l, [hl]                                    ; $69ae: $6e
    ld h, h                                       ; $69af: $64
    ld l, c                                       ; $69b0: $69
    ld h, e                                       ; $69b1: $63
    ld h, c                                       ; $69b2: $61
    ld [hl], b                                    ; $69b3: $70
    ld l, $20                                     ; $69b4: $2e $20
    ld c, c                                       ; $69b6: $49

jr_01e_69b7:
    ld [hl], h                                    ; $69b7: $74
    daa                                           ; $69b8: $27
    ld [hl], e                                    ; $69b9: $73
    jr nz, jr_01e_6a1d                            ; $69ba: $20 $61

jr_01e_69bc:
    ld bc, $7274                                  ; $69bc: $01 $74 $72
    ld [hl], l                                    ; $69bf: $75
    ld h, l                                       ; $69c0: $65
    jr nz, jr_01e_6a30                            ; $69c1: $20 $6d

    ld h, l                                       ; $69c3: $65
    ld h, c                                       ; $69c4: $61
    ld [hl], e                                    ; $69c5: $73
    ld [hl], l                                    ; $69c6: $75
    ld [hl], d                                    ; $69c7: $72
    ld h, l                                       ; $69c8: $65
    jr nz, jr_01e_6a3a                            ; $69c9: $20 $6f

    ld h, [hl]                                    ; $69cb: $66

jr_01e_69cc:
    ld bc, $6b73                                  ; $69cc: $01 $73 $6b
    ld l, c                                       ; $69cf: $69
    ld l, h                                       ; $69d0: $6c
    ld l, h                                       ; $69d1: $6c
    jr nz, jr_01e_6a35                            ; $69d2: $20 $61

    ld [hl], h                                    ; $69d4: $74
    jr nz, @+$69                                  ; $69d5: $20 $67

    ld l, a                                       ; $69d7: $6f
    ld l, h                                       ; $69d8: $6c
    ld h, [hl]                                    ; $69d9: $66
    ld l, $03                                     ; $69da: $2e $03

jr_01e_69dc:
    nop                                           ; $69dc: $00
    ld d, h                                       ; $69dd: $54
    ld l, b                                       ; $69de: $68
    ld h, l                                       ; $69df: $65
    jr nz, jr_01e_6a48                            ; $69e0: $20 $66

    ld h, l                                       ; $69e2: $65
    ld [hl], a                                    ; $69e3: $77

jr_01e_69e4:
    ld h, l                                       ; $69e4: $65
    ld [hl], e                                    ; $69e5: $73
    ld [hl], h                                    ; $69e6: $74
    jr nz, jr_01e_6a57                            ; $69e7: $20 $6e

jr_01e_69e9:
    ld [hl], l                                    ; $69e9: $75
    ld l, l                                       ; $69ea: $6d
    ld h, d                                       ; $69eb: $62
    ld h, l                                       ; $69ec: $65
    ld [hl], d                                    ; $69ed: $72
    ld bc, $666f                                  ; $69ee: $01 $6f $66
    jr nz, jr_01e_6a66                            ; $69f1: $20 $73

    ld [hl], h                                    ; $69f3: $74
    ld [hl], d                                    ; $69f4: $72
    ld l, a                                       ; $69f5: $6f
    ld l, e                                       ; $69f6: $6b

jr_01e_69f7:
    ld h, l                                       ; $69f7: $65
    ld [hl], e                                    ; $69f8: $73
    jr nz, jr_01e_6a74                            ; $69f9: $20 $79

    ld l, a                                       ; $69fb: $6f
    ld [hl], l                                    ; $69fc: $75
    jr nz, @+$67                                  ; $69fd: $20 $65

    halt                                          ; $69ff: $76
    ld h, l                                       ; $6a00: $65
    ld [hl], d                                    ; $6a01: $72
    ld bc, $6f74                                  ; $6a02: $01 $74 $6f
    ld l, a                                       ; $6a05: $6f
    ld l, e                                       ; $6a06: $6b
    jr nz, @+$76                                  ; $6a07: $20 $74

    ld l, a                                       ; $6a09: $6f

jr_01e_6a0a:
    jr nz, @+$68                                  ; $6a0a: $20 $66

jr_01e_6a0c:
    ld l, c                                       ; $6a0c: $69
    ld l, [hl]                                    ; $6a0d: $6e
    ld l, c                                       ; $6a0e: $69
    ld [hl], e                                    ; $6a0f: $73
    ld l, b                                       ; $6a10: $68
    jr nz, jr_01e_6a74                            ; $6a11: $20 $61

    ld [bc], a                                    ; $6a13: $02
    ld h, [hl]                                    ; $6a14: $66
    ld [hl], l                                    ; $6a15: $75
    ld l, h                                       ; $6a16: $6c
    ld l, h                                       ; $6a17: $6c
    jr nz, jr_01e_6a8c                            ; $6a18: $20 $72

    ld l, a                                       ; $6a1a: $6f
    ld [hl], l                                    ; $6a1b: $75
    ld l, [hl]                                    ; $6a1c: $6e

jr_01e_6a1d:
    ld h, h                                       ; $6a1d: $64
    ld l, $03                                     ; $6a1e: $2e $03
    nop                                           ; $6a20: $00
    ld b, c                                       ; $6a21: $41
    jr nz, jr_01e_6a9b                            ; $6a22: $20 $77

    ld h, c                                       ; $6a24: $61
    ld h, a                                       ; $6a25: $67
    ld h, l                                       ; $6a26: $65
    ld [hl], d                                    ; $6a27: $72
    jr nz, @+$71                                  ; $6a28: $20 $6f

    ld l, [hl]                                    ; $6a2a: $6e
    jr nz, jr_01e_6aa0                            ; $6a2b: $20 $73

    ld h, e                                       ; $6a2d: $63
    ld l, a                                       ; $6a2e: $6f
    ld [hl], d                                    ; $6a2f: $72

jr_01e_6a30:
    ld h, l                                       ; $6a30: $65
    inc l                                         ; $6a31: $2c
    ld bc, $6f68                                  ; $6a32: $01 $68 $6f

jr_01e_6a35:
    ld l, h                                       ; $6a35: $6c
    ld h, l                                       ; $6a36: $65
    ld [hl], e                                    ; $6a37: $73
    jr nz, jr_01e_6ab1                            ; $6a38: $20 $77

jr_01e_6a3a:
    ld l, a                                       ; $6a3a: $6f
    ld l, [hl]                                    ; $6a3b: $6e
    inc l                                         ; $6a3c: $2c
    jr nz, jr_01e_6aa4                            ; $6a3d: $20 $65

    ld [hl], h                                    ; $6a3f: $74
    ld h, e                                       ; $6a40: $63
    ld l, $03                                     ; $6a41: $2e $03
    nop                                           ; $6a43: $00
    ld d, h                                       ; $6a44: $54
    ld h, l                                       ; $6a45: $65
    ld [hl], d                                    ; $6a46: $72
    ld l, l                                       ; $6a47: $6d

jr_01e_6a48:
    jr nz, jr_01e_6ab0                            ; $6a48: $20 $66

    ld l, a                                       ; $6a4a: $6f
    ld [hl], d                                    ; $6a4b: $72
    jr nz, @+$6a                                  ; $6a4c: $20 $68

    ld l, a                                       ; $6a4e: $6f
    ld l, h                                       ; $6a4f: $6c
    ld l, c                                       ; $6a50: $69
    ld l, [hl]                                    ; $6a51: $6e
    ld h, a                                       ; $6a52: $67
    ld bc, $756f                                  ; $6a53: $01 $6f $75
    ld [hl], h                                    ; $6a56: $74

jr_01e_6a57:
    jr nz, jr_01e_6ac2                            ; $6a57: $20 $69

    ld l, [hl]                                    ; $6a59: $6e
    jr nz, @+$33                                  ; $6a5a: $20 $31

    jr nz, jr_01e_6ad1                            ; $6a5c: $20 $73

    ld [hl], h                                    ; $6a5e: $74
    ld [hl], d                                    ; $6a5f: $72
    ld l, a                                       ; $6a60: $6f
    ld l, e                                       ; $6a61: $6b
    ld h, l                                       ; $6a62: $65
    ld bc, $656c                                  ; $6a63: $01 $6c $65

jr_01e_6a66:
    ld [hl], e                                    ; $6a66: $73
    ld [hl], e                                    ; $6a67: $73
    jr nz, jr_01e_6ade                            ; $6a68: $20 $74

    ld l, b                                       ; $6a6a: $68
    ld h, c                                       ; $6a6b: $61
    ld l, [hl]                                    ; $6a6c: $6e
    jr nz, jr_01e_6adf                            ; $6a6d: $20 $70

    ld h, c                                       ; $6a6f: $61
    ld [hl], d                                    ; $6a70: $72
    ld l, $03                                     ; $6a71: $2e $03
    nop                                           ; $6a73: $00

jr_01e_6a74:
    ld b, d                                       ; $6a74: $42
    ld l, h                                       ; $6a75: $6c
    ld l, c                                       ; $6a76: $69
    ld l, [hl]                                    ; $6a77: $6e
    ld h, h                                       ; $6a78: $64
    jr nz, jr_01e_6ae4                            ; $6a79: $20 $69

    ld [hl], e                                    ; $6a7b: $73
    jr nz, @+$79                                  ; $6a7c: $20 $77

    ld l, b                                       ; $6a7e: $68
    ld h, l                                       ; $6a7f: $65
    ld l, [hl]                                    ; $6a80: $6e
    ld bc, $6874                                  ; $6a81: $01 $74 $68
    ld h, l                                       ; $6a84: $65
    jr nz, jr_01e_6af7                            ; $6a85: $20 $70

    ld l, c                                       ; $6a87: $69
    ld l, [hl]                                    ; $6a88: $6e
    jr nz, jr_01e_6afa                            ; $6a89: $20 $6f

    ld [hl], d                                    ; $6a8b: $72

jr_01e_6a8c:
    jr nz, @+$69                                  ; $6a8c: $20 $67

    ld [hl], d                                    ; $6a8e: $72
    ld h, l                                       ; $6a8f: $65
    ld h, l                                       ; $6a90: $65
    ld l, [hl]                                    ; $6a91: $6e
    ld bc, $6163                                  ; $6a92: $01 $63 $61
    ld l, [hl]                                    ; $6a95: $6e
    daa                                           ; $6a96: $27
    ld [hl], h                                    ; $6a97: $74
    jr nz, @+$64                                  ; $6a98: $20 $62

    ld h, l                                       ; $6a9a: $65

jr_01e_6a9b:
    jr nz, jr_01e_6b10                            ; $6a9b: $20 $73

    ld h, l                                       ; $6a9d: $65
    ld h, l                                       ; $6a9e: $65
    ld l, [hl]                                    ; $6a9f: $6e

jr_01e_6aa0:
    ld [bc], a                                    ; $6aa0: $02
    ld h, [hl]                                    ; $6aa1: $66
    ld [hl], d                                    ; $6aa2: $72
    ld l, a                                       ; $6aa3: $6f

jr_01e_6aa4:
    ld l, l                                       ; $6aa4: $6d
    jr nz, @+$76                                  ; $6aa5: $20 $74

    ld l, b                                       ; $6aa7: $68
    ld h, l                                       ; $6aa8: $65
    jr nz, jr_01e_6b1f                            ; $6aa9: $20 $74

    ld h, l                                       ; $6aab: $65
    ld h, l                                       ; $6aac: $65
    ld bc, $6562                                  ; $6aad: $01 $62 $65

jr_01e_6ab0:
    ld h, e                                       ; $6ab0: $63

jr_01e_6ab1:
    ld h, c                                       ; $6ab1: $61
    ld [hl], l                                    ; $6ab2: $75
    ld [hl], e                                    ; $6ab3: $73
    ld h, l                                       ; $6ab4: $65
    jr nz, jr_01e_6b26                            ; $6ab5: $20 $6f

    ld h, [hl]                                    ; $6ab7: $66
    jr nz, @+$63                                  ; $6ab8: $20 $61

    jr nz, jr_01e_6b20                            ; $6aba: $20 $64

    ld l, a                                       ; $6abc: $6f
    ld h, a                                       ; $6abd: $67
    dec l                                         ; $6abe: $2d
    ld bc, $656c                                  ; $6abf: $01 $6c $65

jr_01e_6ac2:
    ld h, a                                       ; $6ac2: $67
    jr nz, jr_01e_6b34                            ; $6ac3: $20 $6f

    ld [hl], d                                    ; $6ac5: $72
    jr nz, jr_01e_6b3b                            ; $6ac6: $20 $73

    ld l, b                                       ; $6ac8: $68
    ld h, c                                       ; $6ac9: $61
    ld h, h                                       ; $6aca: $64
    ld l, a                                       ; $6acb: $6f
    ld [hl], a                                    ; $6acc: $77
    ld [hl], e                                    ; $6acd: $73
    ld l, $03                                     ; $6ace: $2e $03
    nop                                           ; $6ad0: $00

jr_01e_6ad1:
    ld b, c                                       ; $6ad1: $41
    jr nz, jr_01e_6b47                            ; $6ad2: $20 $73

    ld h, e                                       ; $6ad4: $63
    ld l, a                                       ; $6ad5: $6f
    ld [hl], d                                    ; $6ad6: $72
    ld h, l                                       ; $6ad7: $65
    jr nz, jr_01e_6b49                            ; $6ad8: $20 $6f

    ld h, [hl]                                    ; $6ada: $66
    jr nz, jr_01e_6b4c                            ; $6adb: $20 $6f

    ld l, [hl]                                    ; $6add: $6e

jr_01e_6ade:
    ld h, l                                       ; $6ade: $65

jr_01e_6adf:
    ld bc, $7473                                  ; $6adf: $01 $73 $74
    ld [hl], d                                    ; $6ae2: $72
    ld l, a                                       ; $6ae3: $6f

jr_01e_6ae4:
    ld l, e                                       ; $6ae4: $6b
    ld h, l                                       ; $6ae5: $65
    jr nz, @+$71                                  ; $6ae6: $20 $6f

    halt                                          ; $6ae8: $76
    ld h, l                                       ; $6ae9: $65
    ld [hl], d                                    ; $6aea: $72
    jr nz, jr_01e_6b5d                            ; $6aeb: $20 $70

    ld h, c                                       ; $6aed: $61
    ld [hl], d                                    ; $6aee: $72
    ld bc, $6e6f                                  ; $6aef: $01 $6f $6e
    jr nz, jr_01e_6b55                            ; $6af2: $20 $61

    jr nz, jr_01e_6b69                            ; $6af4: $20 $73

    ld l, c                                       ; $6af6: $69

jr_01e_6af7:
    ld l, [hl]                                    ; $6af7: $6e
    ld h, a                                       ; $6af8: $67
    ld l, h                                       ; $6af9: $6c

jr_01e_6afa:
    ld h, l                                       ; $6afa: $65
    jr nz, jr_01e_6b65                            ; $6afb: $20 $68

    ld l, a                                       ; $6afd: $6f
    ld l, h                                       ; $6afe: $6c
    ld h, l                                       ; $6aff: $65
    ld l, $03                                     ; $6b00: $2e $03
    nop                                           ; $6b02: $00
    ld b, c                                       ; $6b03: $41
    jr nz, jr_01e_6b69                            ; $6b04: $20 $63

    ld h, c                                       ; $6b06: $61
    ld h, h                                       ; $6b07: $64
    ld h, h                                       ; $6b08: $64
    ld l, c                                       ; $6b09: $69
    ld h, l                                       ; $6b0a: $65
    jr nz, jr_01e_6b75                            ; $6b0b: $20 $68

    ld h, l                                       ; $6b0d: $65
    ld l, h                                       ; $6b0e: $6c
    ld [hl], b                                    ; $6b0f: $70

jr_01e_6b10:
    ld [hl], e                                    ; $6b10: $73
    jr nz, @+$63                                  ; $6b11: $20 $61

    ld bc, $6c70                                  ; $6b13: $01 $70 $6c
    ld h, c                                       ; $6b16: $61
    ld a, c                                       ; $6b17: $79
    ld h, l                                       ; $6b18: $65
    ld [hl], d                                    ; $6b19: $72
    jr nz, @+$64                                  ; $6b1a: $20 $62

    ld a, c                                       ; $6b1c: $79
    jr nz, @+$65                                  ; $6b1d: $20 $63

jr_01e_6b1f:
    ld h, c                                       ; $6b1f: $61

jr_01e_6b20:
    ld [hl], d                                    ; $6b20: $72
    ld [hl], d                                    ; $6b21: $72
    ld a, c                                       ; $6b22: $79
    ld l, c                                       ; $6b23: $69
    ld l, [hl]                                    ; $6b24: $6e
    ld h, a                                       ; $6b25: $67

jr_01e_6b26:
    ld bc, $6c63                                  ; $6b26: $01 $63 $6c
    ld [hl], l                                    ; $6b29: $75
    ld h, d                                       ; $6b2a: $62
    ld [hl], e                                    ; $6b2b: $73
    jr nz, jr_01e_6b8f                            ; $6b2c: $20 $61

    ld l, [hl]                                    ; $6b2e: $6e
    ld h, h                                       ; $6b2f: $64
    jr nz, jr_01e_6ba1                            ; $6b30: $20 $6f

    ld h, [hl]                                    ; $6b32: $66
    ld h, [hl]                                    ; $6b33: $66

jr_01e_6b34:
    ld h, l                                       ; $6b34: $65
    ld [hl], d                                    ; $6b35: $72
    ld l, c                                       ; $6b36: $69
    ld l, [hl]                                    ; $6b37: $6e
    ld h, a                                       ; $6b38: $67
    ld [bc], a                                    ; $6b39: $02
    ld l, a                                       ; $6b3a: $6f

jr_01e_6b3b:
    ld [hl], h                                    ; $6b3b: $74
    ld l, b                                       ; $6b3c: $68
    ld h, l                                       ; $6b3d: $65
    ld [hl], d                                    ; $6b3e: $72
    jr nz, jr_01e_6ba2                            ; $6b3f: $20 $61

    ld [hl], e                                    ; $6b41: $73
    ld [hl], e                                    ; $6b42: $73
    ld l, c                                       ; $6b43: $69
    ld [hl], e                                    ; $6b44: $73
    ld [hl], h                                    ; $6b45: $74
    ld h, c                                       ; $6b46: $61

jr_01e_6b47:
    ld l, [hl]                                    ; $6b47: $6e
    ld h, e                                       ; $6b48: $63

jr_01e_6b49:
    ld h, l                                       ; $6b49: $65
    ld l, $03                                     ; $6b4a: $2e $03

jr_01e_6b4c:
    nop                                           ; $6b4c: $00

    push af                                       ; $6b4d: $f5
    ld a, $00                                     ; $6b4e: $3e $00
    call Call_01e_6b5d                            ; $6b50: $cd $5d $6b
    pop af                                        ; $6b53: $f1
    ret                                           ; $6b54: $c9


jr_01e_6b55:
    push af                                       ; $6b55: $f5
    ld a, $01                                     ; $6b56: $3e $01
    call Call_01e_6b5d                            ; $6b58: $cd $5d $6b
    pop af                                        ; $6b5b: $f1
    ret                                           ; $6b5c: $c9


Call_01e_6b5d:
jr_01e_6b5d:
    push bc                                       ; $6b5d: $c5
    push de                                       ; $6b5e: $d5
    push hl                                       ; $6b5f: $e5
    ld hl, $4004                                  ; $6b60: $21 $04 $40
    sla e                                         ; $6b63: $cb $23

jr_01e_6b65:
    rl d                                          ; $6b65: $cb $12
    add hl, de                                    ; $6b67: $19
    ld e, [hl]                                    ; $6b68: $5e

jr_01e_6b69:
    inc hl                                        ; $6b69: $23
    ld d, [hl]                                    ; $6b6a: $56
    ld hl, $4604                                  ; $6b6b: $21 $04 $46
    add hl, de                                    ; $6b6e: $19
    or a                                          ; $6b6f: $b7
    jr nz, jr_01e_6b7a                            ; $6b70: $20 $08

    ld de, $c600                                  ; $6b72: $11 $00 $c6

jr_01e_6b75:
    ld bc, $0180                                  ; $6b75: $01 $80 $01
    jr jr_01e_6b80                                ; $6b78: $18 $06

jr_01e_6b7a:
    ld de, $d880                                  ; $6b7a: $11 $80 $d8
    ld bc, $0020                                  ; $6b7d: $01 $20 $00

jr_01e_6b80:
    call MemCopy                            ; $6b80: $cd $d3 $03
    pop hl                                        ; $6b83: $e1
    pop de                                        ; $6b84: $d1
    pop bc                                        ; $6b85: $c1
    ret                                           ; $6b86: $c9


    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff

jr_01e_6b8f:
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff

jr_01e_6ba1:
    rst $38                                       ; $6ba1: $ff

jr_01e_6ba2:
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    rst $38                                       ; $6e50: $ff
    rst $38                                       ; $6e51: $ff
    rst $38                                       ; $6e52: $ff
    rst $38                                       ; $6e53: $ff
    rst $38                                       ; $6e54: $ff
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    rst $38                                       ; $6e57: $ff
    rst $38                                       ; $6e58: $ff
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    rst $38                                       ; $6e70: $ff
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    rst $38                                       ; $6e8d: $ff
    rst $38                                       ; $6e8e: $ff
    rst $38                                       ; $6e8f: $ff
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    rst $38                                       ; $6e92: $ff
    rst $38                                       ; $6e93: $ff
    rst $38                                       ; $6e94: $ff
    rst $38                                       ; $6e95: $ff
    rst $38                                       ; $6e96: $ff
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
    rst $38                                       ; $6e99: $ff
    rst $38                                       ; $6e9a: $ff
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff
    rst $38                                       ; $6eb5: $ff
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    rst $38                                       ; $6ec5: $ff
    rst $38                                       ; $6ec6: $ff
    rst $38                                       ; $6ec7: $ff
    rst $38                                       ; $6ec8: $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    rst $38                                       ; $6f65: $ff
    rst $38                                       ; $6f66: $ff
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    rst $38                                       ; $6f72: $ff
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    rst $38                                       ; $7467: $ff
    rst $38                                       ; $7468: $ff
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    rst $38                                       ; $746e: $ff
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    rst $38                                       ; $747c: $ff
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    rst $38                                       ; $7484: $ff
    rst $38                                       ; $7485: $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    rst $38                                       ; $748c: $ff
    rst $38                                       ; $748d: $ff
    rst $38                                       ; $748e: $ff
    rst $38                                       ; $748f: $ff
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
    rst $38                                       ; $7492: $ff
    rst $38                                       ; $7493: $ff
    rst $38                                       ; $7494: $ff
    rst $38                                       ; $7495: $ff
    rst $38                                       ; $7496: $ff
    rst $38                                       ; $7497: $ff
    rst $38                                       ; $7498: $ff
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    rst $38                                       ; $749c: $ff
    rst $38                                       ; $749d: $ff
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    rst $38                                       ; $74a0: $ff
    rst $38                                       ; $74a1: $ff
    rst $38                                       ; $74a2: $ff
    rst $38                                       ; $74a3: $ff
    rst $38                                       ; $74a4: $ff
    rst $38                                       ; $74a5: $ff
    rst $38                                       ; $74a6: $ff
    rst $38                                       ; $74a7: $ff
    rst $38                                       ; $74a8: $ff
    rst $38                                       ; $74a9: $ff
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    rst $38                                       ; $74ac: $ff
    rst $38                                       ; $74ad: $ff
    rst $38                                       ; $74ae: $ff
    rst $38                                       ; $74af: $ff
    rst $38                                       ; $74b0: $ff
    rst $38                                       ; $74b1: $ff
    rst $38                                       ; $74b2: $ff
    rst $38                                       ; $74b3: $ff
    rst $38                                       ; $74b4: $ff
    rst $38                                       ; $74b5: $ff
    rst $38                                       ; $74b6: $ff
    rst $38                                       ; $74b7: $ff
    rst $38                                       ; $74b8: $ff
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    rst $38                                       ; $74bc: $ff
    rst $38                                       ; $74bd: $ff
    rst $38                                       ; $74be: $ff
    rst $38                                       ; $74bf: $ff
    rst $38                                       ; $74c0: $ff
    rst $38                                       ; $74c1: $ff
    rst $38                                       ; $74c2: $ff
    rst $38                                       ; $74c3: $ff
    rst $38                                       ; $74c4: $ff
    rst $38                                       ; $74c5: $ff
    rst $38                                       ; $74c6: $ff
    rst $38                                       ; $74c7: $ff
    rst $38                                       ; $74c8: $ff
    rst $38                                       ; $74c9: $ff
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    rst $38                                       ; $74cc: $ff
    rst $38                                       ; $74cd: $ff
    rst $38                                       ; $74ce: $ff
    rst $38                                       ; $74cf: $ff
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rst $38                                       ; $74d5: $ff
    rst $38                                       ; $74d6: $ff
    rst $38                                       ; $74d7: $ff
    rst $38                                       ; $74d8: $ff
    rst $38                                       ; $74d9: $ff
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    rst $38                                       ; $74e8: $ff
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    rst $38                                       ; $7654: $ff
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    rst $38                                       ; $765f: $ff
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    rst $38                                       ; $7677: $ff
    rst $38                                       ; $7678: $ff
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $38                                       ; $7692: $ff
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    rst $38                                       ; $769f: $ff
    rst $38                                       ; $76a0: $ff
    rst $38                                       ; $76a1: $ff
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rst $38                                       ; $76a4: $ff
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    rst $38                                       ; $76a7: $ff
    rst $38                                       ; $76a8: $ff
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    rst $38                                       ; $76b0: $ff
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    rst $38                                       ; $76b3: $ff
    rst $38                                       ; $76b4: $ff
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    rst $38                                       ; $7854: $ff
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $38                                       ; $7858: $ff
    rst $38                                       ; $7859: $ff
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    rst $38                                       ; $785c: $ff
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    rst $38                                       ; $7864: $ff
    rst $38                                       ; $7865: $ff
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
    rst $38                                       ; $7875: $ff
    rst $38                                       ; $7876: $ff
    rst $38                                       ; $7877: $ff
    rst $38                                       ; $7878: $ff
    rst $38                                       ; $7879: $ff
    rst $38                                       ; $787a: $ff
    rst $38                                       ; $787b: $ff
    rst $38                                       ; $787c: $ff
    rst $38                                       ; $787d: $ff
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    rst $38                                       ; $7887: $ff
    rst $38                                       ; $7888: $ff
    rst $38                                       ; $7889: $ff
    rst $38                                       ; $788a: $ff
    rst $38                                       ; $788b: $ff
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    rst $38                                       ; $788f: $ff
    rst $38                                       ; $7890: $ff
    rst $38                                       ; $7891: $ff
    rst $38                                       ; $7892: $ff
    rst $38                                       ; $7893: $ff
    rst $38                                       ; $7894: $ff
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    rst $38                                       ; $789b: $ff
    rst $38                                       ; $789c: $ff
    rst $38                                       ; $789d: $ff
    rst $38                                       ; $789e: $ff
    rst $38                                       ; $789f: $ff
    rst $38                                       ; $78a0: $ff
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    rst $38                                       ; $78a3: $ff
    rst $38                                       ; $78a4: $ff
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    rst $38                                       ; $78a7: $ff
    rst $38                                       ; $78a8: $ff
    rst $38                                       ; $78a9: $ff
    rst $38                                       ; $78aa: $ff
    rst $38                                       ; $78ab: $ff
    rst $38                                       ; $78ac: $ff
    rst $38                                       ; $78ad: $ff
    rst $38                                       ; $78ae: $ff
    rst $38                                       ; $78af: $ff
    rst $38                                       ; $78b0: $ff
    rst $38                                       ; $78b1: $ff
    rst $38                                       ; $78b2: $ff
    rst $38                                       ; $78b3: $ff
    rst $38                                       ; $78b4: $ff
    rst $38                                       ; $78b5: $ff
    rst $38                                       ; $78b6: $ff
    rst $38                                       ; $78b7: $ff
    rst $38                                       ; $78b8: $ff
    rst $38                                       ; $78b9: $ff
    rst $38                                       ; $78ba: $ff
    rst $38                                       ; $78bb: $ff
    rst $38                                       ; $78bc: $ff
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    rst $38                                       ; $78bf: $ff
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    rst $38                                       ; $795a: $ff
    rst $38                                       ; $795b: $ff
    rst $38                                       ; $795c: $ff
    rst $38                                       ; $795d: $ff
    rst $38                                       ; $795e: $ff
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    rst $38                                       ; $7963: $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    rst $38                                       ; $7984: $ff
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rst $38                                       ; $79a3: $ff
    rst $38                                       ; $79a4: $ff
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    rst $38                                       ; $79c4: $ff
    rst $38                                       ; $79c5: $ff
    rst $38                                       ; $79c6: $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $38                                       ; $7a26: $ff
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    rst $38                                       ; $7a52: $ff
    rst $38                                       ; $7a53: $ff
    rst $38                                       ; $7a54: $ff
    rst $38                                       ; $7a55: $ff
    rst $38                                       ; $7a56: $ff
    rst $38                                       ; $7a57: $ff
    rst $38                                       ; $7a58: $ff
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    rst $38                                       ; $7a5d: $ff
    rst $38                                       ; $7a5e: $ff
    rst $38                                       ; $7a5f: $ff
    rst $38                                       ; $7a60: $ff
    rst $38                                       ; $7a61: $ff
    rst $38                                       ; $7a62: $ff
    rst $38                                       ; $7a63: $ff
    rst $38                                       ; $7a64: $ff
    rst $38                                       ; $7a65: $ff
    rst $38                                       ; $7a66: $ff
    rst $38                                       ; $7a67: $ff
    rst $38                                       ; $7a68: $ff
    rst $38                                       ; $7a69: $ff
    rst $38                                       ; $7a6a: $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    rst $38                                       ; $7a6d: $ff
    rst $38                                       ; $7a6e: $ff
    rst $38                                       ; $7a6f: $ff
    rst $38                                       ; $7a70: $ff
    rst $38                                       ; $7a71: $ff
    rst $38                                       ; $7a72: $ff
    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff
    rst $38                                       ; $7a79: $ff
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    rst $38                                       ; $7a92: $ff
    rst $38                                       ; $7a93: $ff
    rst $38                                       ; $7a94: $ff
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    rst $38                                       ; $7a9c: $ff
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rst $38                                       ; $7aa4: $ff
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    rst $38                                       ; $7aaa: $ff
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    rst $38                                       ; $7ac6: $ff
    rst $38                                       ; $7ac7: $ff
    rst $38                                       ; $7ac8: $ff
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rst $38                                       ; $7adf: $ff
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    rst $38                                       ; $7aef: $ff
    rst $38                                       ; $7af0: $ff
    rst $38                                       ; $7af1: $ff
    rst $38                                       ; $7af2: $ff
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rst $38                                       ; $7af6: $ff
    rst $38                                       ; $7af7: $ff
    rst $38                                       ; $7af8: $ff
    rst $38                                       ; $7af9: $ff
    rst $38                                       ; $7afa: $ff
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    rst $38                                       ; $7b22: $ff
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rst $38                                       ; $7b55: $ff
    rst $38                                       ; $7b56: $ff
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rst $38                                       ; $7b5d: $ff
    rst $38                                       ; $7b5e: $ff
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    rst $38                                       ; $7b81: $ff
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    rst $38                                       ; $7b87: $ff
    rst $38                                       ; $7b88: $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rst $38                                       ; $7b90: $ff
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    rst $38                                       ; $7bb4: $ff
    rst $38                                       ; $7bb5: $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    rst $38                                       ; $7bbc: $ff
    rst $38                                       ; $7bbd: $ff
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    rst $38                                       ; $7bc2: $ff
    rst $38                                       ; $7bc3: $ff
    rst $38                                       ; $7bc4: $ff
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $38                                       ; $7bc7: $ff
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    rst $38                                       ; $7bd0: $ff
    rst $38                                       ; $7bd1: $ff
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    rst $38                                       ; $7bea: $ff
    rst $38                                       ; $7beb: $ff
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    rst $38                                       ; $7bfe: $ff
    rst $38                                       ; $7bff: $ff
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    rst $38                                       ; $7c04: $ff
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    rst $38                                       ; $7c12: $ff
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    rst $38                                       ; $7c1a: $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $38                                       ; $7c26: $ff
    rst $38                                       ; $7c27: $ff
    rst $38                                       ; $7c28: $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff
    rst $38                                       ; $7c2b: $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    rst $38                                       ; $7c31: $ff
    rst $38                                       ; $7c32: $ff
    rst $38                                       ; $7c33: $ff
    rst $38                                       ; $7c34: $ff
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    rst $38                                       ; $7c3b: $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    rst $38                                       ; $7c42: $ff
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    rst $38                                       ; $7c51: $ff
    rst $38                                       ; $7c52: $ff
    rst $38                                       ; $7c53: $ff
    rst $38                                       ; $7c54: $ff
    rst $38                                       ; $7c55: $ff
    rst $38                                       ; $7c56: $ff
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    rst $38                                       ; $7c59: $ff
    rst $38                                       ; $7c5a: $ff
    rst $38                                       ; $7c5b: $ff
    rst $38                                       ; $7c5c: $ff
    rst $38                                       ; $7c5d: $ff
    rst $38                                       ; $7c5e: $ff
    rst $38                                       ; $7c5f: $ff
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    rst $38                                       ; $7c63: $ff
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    rst $38                                       ; $7c66: $ff
    rst $38                                       ; $7c67: $ff
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    rst $38                                       ; $7c73: $ff
    rst $38                                       ; $7c74: $ff
    rst $38                                       ; $7c75: $ff
    rst $38                                       ; $7c76: $ff
    rst $38                                       ; $7c77: $ff
    rst $38                                       ; $7c78: $ff
    rst $38                                       ; $7c79: $ff
    rst $38                                       ; $7c7a: $ff
    rst $38                                       ; $7c7b: $ff
    rst $38                                       ; $7c7c: $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    rst $38                                       ; $7c7f: $ff
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rst $38                                       ; $7c88: $ff
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    rst $38                                       ; $7c8b: $ff
    rst $38                                       ; $7c8c: $ff
    rst $38                                       ; $7c8d: $ff
    rst $38                                       ; $7c8e: $ff
    rst $38                                       ; $7c8f: $ff
    rst $38                                       ; $7c90: $ff
    rst $38                                       ; $7c91: $ff
    rst $38                                       ; $7c92: $ff
    rst $38                                       ; $7c93: $ff
    rst $38                                       ; $7c94: $ff
    rst $38                                       ; $7c95: $ff
    rst $38                                       ; $7c96: $ff
    rst $38                                       ; $7c97: $ff
    rst $38                                       ; $7c98: $ff
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    rst $38                                       ; $7ca5: $ff
    rst $38                                       ; $7ca6: $ff
    rst $38                                       ; $7ca7: $ff
    rst $38                                       ; $7ca8: $ff
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff
    rst $38                                       ; $7cac: $ff
    rst $38                                       ; $7cad: $ff
    rst $38                                       ; $7cae: $ff
    rst $38                                       ; $7caf: $ff
    rst $38                                       ; $7cb0: $ff
    rst $38                                       ; $7cb1: $ff
    rst $38                                       ; $7cb2: $ff
    rst $38                                       ; $7cb3: $ff
    rst $38                                       ; $7cb4: $ff
    rst $38                                       ; $7cb5: $ff
    rst $38                                       ; $7cb6: $ff
    rst $38                                       ; $7cb7: $ff
    rst $38                                       ; $7cb8: $ff
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    rst $38                                       ; $7cbb: $ff
    rst $38                                       ; $7cbc: $ff
    rst $38                                       ; $7cbd: $ff
    rst $38                                       ; $7cbe: $ff
    rst $38                                       ; $7cbf: $ff
    rst $38                                       ; $7cc0: $ff
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff
    rst $38                                       ; $7cc4: $ff
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    rst $38                                       ; $7cc7: $ff
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    rst $38                                       ; $7ccf: $ff
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    rst $38                                       ; $7cf2: $ff
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff
    rst $38                                       ; $7cfb: $ff
    rst $38                                       ; $7cfc: $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    rst $38                                       ; $7d12: $ff
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rst $38                                       ; $7d16: $ff
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
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
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
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
