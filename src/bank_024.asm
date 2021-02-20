; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    ld [de], a                                    ; $4000: $12
    ld b, b                                       ; $4001: $40
    inc sp                                        ; $4002: $33
    ld b, b                                       ; $4003: $40
    or c                                          ; $4004: $b1
    ld c, d                                       ; $4005: $4a
    ld sp, $b151                                  ; $4006: $31 $51 $b1
    ld d, a                                       ; $4009: $57
    db $31                                        ; $400a: $31
    ld e, [hl]                                    ; $400b: $5e

    db $c1, $64, $41, $6b, $c1, $71

    push af                                       ; $4012: $f5
    push bc                                       ; $4013: $c5
    push de                                       ; $4014: $d5
    push hl                                       ; $4015: $e5
    ldh [$95], a                                  ; $4016: $e0 $95
    ld [$2000], a                                 ; $4018: $ea $00 $20

    ld a, c                                       ; $401b: $79
    add a                                         ; $401c: $87
    add l                                         ; $401d: $85
    ld l, a                                       ; $401e: $6f
    jr nc, jr_024_4022                            ; $401f: $30 $01

    inc h                                         ; $4021: $24

jr_024_4022:
    ld a, [hl+]                                   ; $4022: $2a
    ld h, [hl]                                    ; $4023: $66
    ld l, a                                       ; $4024: $6f
    ld c, b                                       ; $4025: $48
    ld b, $00                                     ; $4026: $06 $00
    add hl, bc                                    ; $4028: $09
    ld c, $04                                     ; $4029: $0e $04
    call Call_000_0468                            ; $402b: $cd $68 $04
    pop hl                                        ; $402e: $e1
    pop de                                        ; $402f: $d1
    pop bc                                        ; $4030: $c1
    pop af                                        ; $4031: $f1
    ret                                           ; $4032: $c9


    dec b                                         ; $4033: $05
    inc b                                         ; $4034: $04
    dec sp                                        ; $4035: $3b
    ld b, b                                       ; $4036: $40
    ld d, b                                       ; $4037: $50
    ld c, d                                       ; $4038: $4a
    dec sp                                        ; $4039: $3b
    ld b, b                                       ; $403a: $40
    ld d, b                                       ; $403b: $50
    ld b, b                                       ; $403c: $40
    ld d, b                                       ; $403d: $50
    ld b, c                                       ; $403e: $41
    ld d, b                                       ; $403f: $50
    ld b, d                                       ; $4040: $42
    ld d, b                                       ; $4041: $50
    ld b, e                                       ; $4042: $43
    ld d, b                                       ; $4043: $50
    ld b, h                                       ; $4044: $44
    ld d, b                                       ; $4045: $50
    ld b, l                                       ; $4046: $45
    ld d, b                                       ; $4047: $50
    ld b, [hl]                                    ; $4048: $46
    ld d, b                                       ; $4049: $50
    ld b, a                                       ; $404a: $47
    ld d, b                                       ; $404b: $50
    ld c, b                                       ; $404c: $48
    ld d, b                                       ; $404d: $50
    ld c, c                                       ; $404e: $49
    nop                                           ; $404f: $00
    nop                                           ; $4050: $00
    nop                                           ; $4051: $00
    ld bc, $0201                                  ; $4052: $01 $01 $02
    inc bc                                        ; $4055: $03
    inc c                                         ; $4056: $0c
    rrca                                          ; $4057: $0f
    inc d                                         ; $4058: $14
    rra                                           ; $4059: $1f
    rra                                           ; $405a: $1f
    dec de                                        ; $405b: $1b
    rrca                                          ; $405c: $0f
    add hl, bc                                    ; $405d: $09
    rlca                                          ; $405e: $07
    inc b                                         ; $405f: $04
    rlca                                          ; $4060: $07
    rlca                                          ; $4061: $07
    add hl, bc                                    ; $4062: $09
    rrca                                          ; $4063: $0f
    ld [de], a                                    ; $4064: $12
    rra                                           ; $4065: $1f
    ccf                                           ; $4066: $3f
    cpl                                           ; $4067: $2f
    ccf                                           ; $4068: $3f
    ccf                                           ; $4069: $3f
    rra                                           ; $406a: $1f
    rra                                           ; $406b: $1f
    rla                                           ; $406c: $17
    rra                                           ; $406d: $1f
    ld c, $0e                                     ; $406e: $0e $0e
    ret nz                                        ; $4070: $c0

    ret nz                                        ; $4071: $c0

    jr nz, @-$1e                                  ; $4072: $20 $e0

    ld [hl], b                                    ; $4074: $70
    ret nc                                        ; $4075: $d0

    ld [hl], b                                    ; $4076: $70
    ldh a, [$c8]                                  ; $4077: $f0 $c8
    ld hl, sp+$30                                 ; $4079: $f8 $30
    ldh a, [$f8]                                  ; $407b: $f0 $f8
    ret c                                         ; $407d: $d8

    db $fc                                        ; $407e: $fc
    call nc, Call_000_38f8                        ; $407f: $d4 $f8 $38
    ld hl, sp+$18                                 ; $4082: $f8 $18
    db $fc                                        ; $4084: $fc
    sub h                                         ; $4085: $94
    ld hl, sp-$08                                 ; $4086: $f8 $f8
    ldh a, [$f0]                                  ; $4088: $f0 $f0
    add sp, -$08                                  ; $408a: $e8 $f8
    ret c                                         ; $408c: $d8

    ld hl, sp+$70                                 ; $408d: $f8 $70
    ld [hl], b                                    ; $408f: $70
    inc bc                                        ; $4090: $03
    inc bc                                        ; $4091: $03
    dec b                                         ; $4092: $05
    rlca                                          ; $4093: $07
    dec de                                        ; $4094: $1b
    ld e, $27                                     ; $4095: $1e $27
    ccf                                           ; $4097: $3f
    ld l, b                                       ; $4098: $68
    ld a, a                                       ; $4099: $7f
    rst $30                                       ; $409a: $f7
    cp a                                          ; $409b: $bf
    ld a, a                                       ; $409c: $7f
    ld e, d                                       ; $409d: $5a
    ccf                                           ; $409e: $3f
    inc a                                         ; $409f: $3c
    ld a, a                                       ; $40a0: $7f
    halt                                          ; $40a1: $76
    rst $28                                       ; $40a2: $ef
    cp e                                          ; $40a3: $bb
    rst $38                                       ; $40a4: $ff
    db $fc                                        ; $40a5: $fc
    ld e, e                                       ; $40a6: $5b
    ld e, a                                       ; $40a7: $5f
    ld e, a                                       ; $40a8: $5f
    ld e, a                                       ; $40a9: $5f
    rst $08                                       ; $40aa: $cf
    rst $08                                       ; $40ab: $cf
    ret                                           ; $40ac: $c9


    rst $08                                       ; $40ad: $cf
    ld b, $06                                     ; $40ae: $06 $06
    add b                                         ; $40b0: $80
    add b                                         ; $40b1: $80
    ld b, b                                       ; $40b2: $40
    ret nz                                        ; $40b3: $c0

    or b                                          ; $40b4: $b0
    ldh a, [$c8]                                  ; $40b5: $f0 $c8
    ld hl, sp+$2c                                 ; $40b7: $f8 $2c
    db $fc                                        ; $40b9: $fc
    sbc $fa                                       ; $40ba: $de $fa
    db $fc                                        ; $40bc: $fc
    or h                                          ; $40bd: $b4
    ld hl, sp+$78                                 ; $40be: $f8 $78
    ld hl, sp-$28                                 ; $40c0: $f8 $d8
    db $f4                                        ; $40c2: $f4
    cp h                                          ; $40c3: $bc
    db $fc                                        ; $40c4: $fc
    ld a, h                                       ; $40c5: $7c
    cp [hl]                                       ; $40c6: $be
    ld a, [$f6f6]                                 ; $40c7: $fa $f6 $f6
    ldh [$e0], a                                  ; $40ca: $e0 $e0
    nop                                           ; $40cc: $00
    nop                                           ; $40cd: $00
    nop                                           ; $40ce: $00
    nop                                           ; $40cf: $00
    inc bc                                        ; $40d0: $03
    inc bc                                        ; $40d1: $03
    inc b                                         ; $40d2: $04
    rlca                                          ; $40d3: $07
    ld c, $0b                                     ; $40d4: $0e $0b
    ld c, $0f                                     ; $40d6: $0e $0f
    inc de                                        ; $40d8: $13
    rra                                           ; $40d9: $1f
    inc c                                         ; $40da: $0c
    rrca                                          ; $40db: $0f
    rra                                           ; $40dc: $1f
    dec de                                        ; $40dd: $1b
    ccf                                           ; $40de: $3f
    dec hl                                        ; $40df: $2b
    rra                                           ; $40e0: $1f
    inc e                                         ; $40e1: $1c
    rra                                           ; $40e2: $1f
    add hl, de                                    ; $40e3: $19
    ld c, $0f                                     ; $40e4: $0e $0f
    inc e                                         ; $40e6: $1c
    rla                                           ; $40e7: $17

jr_024_40e8:
    rra                                           ; $40e8: $1f
    rra                                           ; $40e9: $1f
    rra                                           ; $40ea: $1f
    rra                                           ; $40eb: $1f
    rla                                           ; $40ec: $17
    rra                                           ; $40ed: $1f
    ld c, $0e                                     ; $40ee: $0e $0e
    nop                                           ; $40f0: $00
    nop                                           ; $40f1: $00

jr_024_40f2:
    add b                                         ; $40f2: $80
    add b                                         ; $40f3: $80
    ld b, b                                       ; $40f4: $40
    ret nz                                        ; $40f5: $c0

    jr nc, jr_024_40e8                            ; $40f6: $30 $f0

    jr z, jr_024_40f2                             ; $40f8: $28 $f8

    ld hl, sp-$28                                 ; $40fa: $f8 $d8
    ldh a, [$90]                                  ; $40fc: $f0 $90
    ldh [rNR41], a                                ; $40fe: $e0 $20
    ldh [$e0], a                                  ; $4100: $e0 $e0
    ld e, b                                       ; $4102: $58
    ld hl, sp+$5c                                 ; $4103: $f8 $5c
    db $f4                                        ; $4105: $f4
    db $fc                                        ; $4106: $fc
    db $fc                                        ; $4107: $fc
    ldh a, [$f0]                                  ; $4108: $f0 $f0
    add sp, -$08                                  ; $410a: $e8 $f8
    ret c                                         ; $410c: $d8

    ld hl, sp+$70                                 ; $410d: $f8 $70
    ld [hl], b                                    ; $410f: $70
    inc bc                                        ; $4110: $03
    inc bc                                        ; $4111: $03
    inc b                                         ; $4112: $04
    rlca                                          ; $4113: $07
    jr @+$21                                      ; $4114: $18 $1f

    jr nz, jr_024_4157                            ; $4116: $20 $3f

    jr nz, jr_024_4159                            ; $4118: $20 $3f

    ld [hl], b                                    ; $411a: $70
    ld e, a                                       ; $411b: $5f
    ld a, b                                       ; $411c: $78
    ld e, a                                       ; $411d: $5f
    ccf                                           ; $411e: $3f
    cpl                                           ; $411f: $2f
    rst $38                                       ; $4120: $ff
    rst $38                                       ; $4121: $ff
    rst $28                                       ; $4122: $ef
    cp e                                          ; $4123: $bb
    ld [hl], h                                    ; $4124: $74
    ld a, a                                       ; $4125: $7f

jr_024_4126:
    dec de                                        ; $4126: $1b
    rra                                           ; $4127: $1f
    rra                                           ; $4128: $1f
    rra                                           ; $4129: $1f
    rrca                                          ; $412a: $0f
    rrca                                          ; $412b: $0f
    add hl, bc                                    ; $412c: $09
    rrca                                          ; $412d: $0f
    ld b, $06                                     ; $412e: $06 $06
    add b                                         ; $4130: $80
    add b                                         ; $4131: $80
    ld b, b                                       ; $4132: $40
    ret nz                                        ; $4133: $c0

    jr nc, jr_024_4126                            ; $4134: $30 $f0

    ld [$08f8], sp                                ; $4136: $08 $f8 $08
    ld hl, sp+$1c                                 ; $4139: $f8 $1c
    db $f4                                        ; $413b: $f4
    inc a                                         ; $413c: $3c
    db $f4                                        ; $413d: $f4
    ld hl, sp-$18                                 ; $413e: $f8 $e8
    ld hl, sp-$08                                 ; $4140: $f8 $f8
    add sp, -$48                                  ; $4142: $e8 $b8
    ld d, a                                       ; $4144: $57
    rst $38                                       ; $4145: $ff
    cp a                                          ; $4146: $bf
    ei                                            ; $4147: $fb
    or $f6                                        ; $4148: $f6 $f6
    ldh [$e0], a                                  ; $414a: $e0 $e0
    nop                                           ; $414c: $00
    nop                                           ; $414d: $00
    nop                                           ; $414e: $00
    nop                                           ; $414f: $00
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    ld bc, $0201                                  ; $4152: $01 $01 $02
    inc bc                                        ; $4155: $03
    inc c                                         ; $4156: $0c

jr_024_4157:
    rrca                                          ; $4157: $0f
    inc d                                         ; $4158: $14

jr_024_4159:
    rra                                           ; $4159: $1f
    rra                                           ; $415a: $1f
    dec de                                        ; $415b: $1b
    rrca                                          ; $415c: $0f
    add hl, bc                                    ; $415d: $09
    rlca                                          ; $415e: $07
    inc b                                         ; $415f: $04
    rlca                                          ; $4160: $07
    rlca                                          ; $4161: $07
    ld a, [de]                                    ; $4162: $1a
    rra                                           ; $4163: $1f
    ld a, [hl-]                                   ; $4164: $3a
    cpl                                           ; $4165: $2f
    ccf                                           ; $4166: $3f
    ccf                                           ; $4167: $3f
    rrca                                          ; $4168: $0f
    rrca                                          ; $4169: $0f
    rla                                           ; $416a: $17
    rra                                           ; $416b: $1f
    dec de                                        ; $416c: $1b
    rra                                           ; $416d: $1f
    ld c, $0e                                     ; $416e: $0e $0e

jr_024_4170:
    ret nz                                        ; $4170: $c0

    ret nz                                        ; $4171: $c0

    jr nz, @-$1e                                  ; $4172: $20 $e0

    ld [hl], b                                    ; $4174: $70
    ret nc                                        ; $4175: $d0

    ld [hl], b                                    ; $4176: $70
    ldh a, [$c8]                                  ; $4177: $f0 $c8
    ld hl, sp+$30                                 ; $4179: $f8 $30
    ldh a, [$f8]                                  ; $417b: $f0 $f8
    ret c                                         ; $417d: $d8

    db $fc                                        ; $417e: $fc
    call nc, Call_000_3bfb                        ; $417f: $d4 $fb $3b
    ei                                            ; $4182: $fb
    sbc e                                         ; $4183: $9b
    ld [hl], h                                    ; $4184: $74
    db $f4                                        ; $4185: $f4
    jr c, jr_024_4170                             ; $4186: $38 $e8

    ld hl, sp-$08                                 ; $4188: $f8 $f8
    ld hl, sp-$08                                 ; $418a: $f8 $f8
    add sp, -$08                                  ; $418c: $e8 $f8
    ld [hl], b                                    ; $418e: $70
    ld [hl], b                                    ; $418f: $70
    inc bc                                        ; $4190: $03
    inc bc                                        ; $4191: $03
    dec b                                         ; $4192: $05
    rlca                                          ; $4193: $07
    dec de                                        ; $4194: $1b
    ld e, $27                                     ; $4195: $1e $27
    ccf                                           ; $4197: $3f
    ld l, b                                       ; $4198: $68
    ld a, a                                       ; $4199: $7f
    rst $30                                       ; $419a: $f7
    cp a                                          ; $419b: $bf
    ld a, a                                       ; $419c: $7f
    ld e, d                                       ; $419d: $5a
    ccf                                           ; $419e: $3f
    inc a                                         ; $419f: $3c
    rst $38                                       ; $41a0: $ff
    or $df                                        ; $41a1: $f6 $df
    ei                                            ; $41a3: $fb
    ld a, a                                       ; $41a4: $7f
    ld a, h                                       ; $41a5: $7c
    ei                                            ; $41a6: $fb
    cp a                                          ; $41a7: $bf
    rst $18                                       ; $41a8: $df
    rst $18                                       ; $41a9: $df
    rrca                                          ; $41aa: $0f
    rrca                                          ; $41ab: $0f
    ld bc, $0001                                  ; $41ac: $01 $01 $00
    nop                                           ; $41af: $00
    add b                                         ; $41b0: $80
    add b                                         ; $41b1: $80
    ld b, b                                       ; $41b2: $40
    ret nz                                        ; $41b3: $c0

    or b                                          ; $41b4: $b0
    ldh a, [$c8]                                  ; $41b5: $f0 $c8
    ld hl, sp+$2c                                 ; $41b7: $f8 $2c
    db $fc                                        ; $41b9: $fc
    sbc $fa                                       ; $41ba: $de $fa
    db $fc                                        ; $41bc: $fc
    or h                                          ; $41bd: $b4
    ld hl, sp+$78                                 ; $41be: $f8 $78
    db $fc                                        ; $41c0: $fc
    call c, $baee                                 ; $41c1: $dc $ee $ba
    cp $7e                                        ; $41c4: $fe $7e
    or b                                          ; $41c6: $b0
    ldh a, [$f0]                                  ; $41c7: $f0 $f0
    ldh a, [$e0]                                  ; $41c9: $f0 $e0
    ldh [rNR41], a                                ; $41cb: $e0 $20
    ldh [$c0], a                                  ; $41cd: $e0 $c0
    ret nz                                        ; $41cf: $c0

    inc bc                                        ; $41d0: $03
    inc bc                                        ; $41d1: $03
    inc b                                         ; $41d2: $04
    rlca                                          ; $41d3: $07
    ld c, $0b                                     ; $41d4: $0e $0b
    ld c, $0f                                     ; $41d6: $0e $0f
    inc de                                        ; $41d8: $13
    rra                                           ; $41d9: $1f
    inc c                                         ; $41da: $0c
    rrca                                          ; $41db: $0f
    rra                                           ; $41dc: $1f
    dec de                                        ; $41dd: $1b
    rst $38                                       ; $41de: $ff
    db $eb                                        ; $41df: $eb
    rst $18                                       ; $41e0: $df
    call c, Call_024_787f                         ; $41e1: $dc $7f $78
    ccf                                           ; $41e4: $3f
    add hl, hl                                    ; $41e5: $29
    rra                                           ; $41e6: $1f
    rra                                           ; $41e7: $1f

jr_024_41e8:
    rrca                                          ; $41e8: $0f
    rrca                                          ; $41e9: $0f
    rla                                           ; $41ea: $17
    rra                                           ; $41eb: $1f
    dec de                                        ; $41ec: $1b
    rra                                           ; $41ed: $1f
    ld c, $0e                                     ; $41ee: $0e $0e
    nop                                           ; $41f0: $00
    nop                                           ; $41f1: $00

jr_024_41f2:
    add b                                         ; $41f2: $80
    add b                                         ; $41f3: $80
    ld b, b                                       ; $41f4: $40
    ret nz                                        ; $41f5: $c0

    jr nc, jr_024_41e8                            ; $41f6: $30 $f0

    jr z, jr_024_41f2                             ; $41f8: $28 $f8

    ld hl, sp-$28                                 ; $41fa: $f8 $d8
    ldh a, [$90]                                  ; $41fc: $f0 $90
    ldh [rNR41], a                                ; $41fe: $e0 $20
    ldh [$e0], a                                  ; $4200: $e0 $e0
    sub b                                         ; $4202: $90
    ldh a, [rOBP0]                                ; $4203: $f0 $48
    ld hl, sp-$04                                 ; $4205: $f8 $fc
    db $f4                                        ; $4207: $f4
    db $fc                                        ; $4208: $fc
    db $fc                                        ; $4209: $fc
    ld hl, sp-$08                                 ; $420a: $f8 $f8
    add sp, -$08                                  ; $420c: $e8 $f8
    ld [hl], b                                    ; $420e: $70
    ld [hl], b                                    ; $420f: $70
    inc bc                                        ; $4210: $03
    inc bc                                        ; $4211: $03
    inc b                                         ; $4212: $04
    rlca                                          ; $4213: $07
    jr @+$21                                      ; $4214: $18 $1f

    jr nz, jr_024_4257                            ; $4216: $20 $3f

    jr nz, jr_024_4259                            ; $4218: $20 $3f

    ld [hl], b                                    ; $421a: $70
    ld e, a                                       ; $421b: $5f
    ld a, b                                       ; $421c: $78
    ld e, a                                       ; $421d: $5f
    ccf                                           ; $421e: $3f
    cpl                                           ; $421f: $2f
    ccf                                           ; $4220: $3f
    ccf                                           ; $4221: $3f
    cpl                                           ; $4222: $2f
    dec sp                                        ; $4223: $3b
    ld d, h                                       ; $4224: $54
    ld a, a                                       ; $4225: $7f

jr_024_4226:
    ei                                            ; $4226: $fb
    cp a                                          ; $4227: $bf
    rst $18                                       ; $4228: $df
    rst $18                                       ; $4229: $df
    rrca                                          ; $422a: $0f
    rrca                                          ; $422b: $0f
    ld bc, $0001                                  ; $422c: $01 $01 $00
    nop                                           ; $422f: $00
    add b                                         ; $4230: $80
    add b                                         ; $4231: $80
    ld b, b                                       ; $4232: $40
    ret nz                                        ; $4233: $c0

    jr nc, jr_024_4226                            ; $4234: $30 $f0

    ld [$08f8], sp                                ; $4236: $08 $f8 $08
    ld hl, sp+$1f                                 ; $4239: $f8 $1f
    rst $30                                       ; $423b: $f7
    ccf                                           ; $423c: $3f
    rst $30                                       ; $423d: $f7
    ld a, [$feea]                                 ; $423e: $fa $ea $fe
    cp $ee                                        ; $4241: $fe $ee
    cp d                                          ; $4243: $ba
    ld e, h                                       ; $4244: $5c
    db $fc                                        ; $4245: $fc
    or b                                          ; $4246: $b0
    ldh a, [$f0]                                  ; $4247: $f0 $f0
    ldh a, [$e0]                                  ; $4249: $f0 $e0
    ldh [rNR41], a                                ; $424b: $e0 $20
    ldh [$c0], a                                  ; $424d: $e0 $c0
    ret nz                                        ; $424f: $c0

    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    inc bc                                        ; $4252: $03
    inc bc                                        ; $4253: $03
    inc b                                         ; $4254: $04
    rlca                                          ; $4255: $07
    dec b                                         ; $4256: $05

jr_024_4257:
    rlca                                          ; $4257: $07
    inc bc                                        ; $4258: $03

jr_024_4259:
    ld [bc], a                                    ; $4259: $02
    inc bc                                        ; $425a: $03
    ld [bc], a                                    ; $425b: $02
    inc bc                                        ; $425c: $03
    inc bc                                        ; $425d: $03
    dec b                                         ; $425e: $05
    rlca                                          ; $425f: $07
    ld a, [bc]                                    ; $4260: $0a
    rrca                                          ; $4261: $0f
    inc e                                         ; $4262: $1c
    rra                                           ; $4263: $1f
    ld e, $1f                                     ; $4264: $1e $1f

jr_024_4266:
    rra                                           ; $4266: $1f
    rra                                           ; $4267: $1f
    rrca                                          ; $4268: $0f
    rrca                                          ; $4269: $0f
    rrca                                          ; $426a: $0f
    rrca                                          ; $426b: $0f
    ld [$0f0f], sp                                ; $426c: $08 $0f $0f
    rrca                                          ; $426f: $0f
    jr c, @+$3a                                   ; $4270: $38 $38

    call nz, Call_000_0cfc                        ; $4272: $c4 $fc $0c
    db $fc                                        ; $4275: $fc
    inc a                                         ; $4276: $3c
    db $f4                                        ; $4277: $f4
    call z, $f2fc                                 ; $4278: $cc $fc $f2
    ld a, [hl]                                    ; $427b: $7e
    db $fc                                        ; $427c: $fc
    ld e, h                                       ; $427d: $5c
    ld hl, sp+$28                                 ; $427e: $f8 $28
    db $fc                                        ; $4280: $fc
    or h                                          ; $4281: $b4
    ld a, b                                       ; $4282: $78
    ret c                                         ; $4283: $d8

    jr nz, jr_024_4266                            ; $4284: $20 $e0

    and b                                         ; $4286: $a0
    ldh [$f0], a                                  ; $4287: $e0 $f0
    ret nc                                        ; $4289: $d0

    jr nc, jr_024_42bc                            ; $428a: $30 $30

    adc e                                         ; $428c: $8b
    adc e                                         ; $428d: $8b
    add a                                         ; $428e: $87
    add a                                         ; $428f: $87
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    ld bc, $0e01                                  ; $4292: $01 $01 $0e
    rrca                                          ; $4295: $0f
    db $10                                        ; $4296: $10
    rra                                           ; $4297: $1f
    dec sp                                        ; $4298: $3b
    cpl                                           ; $4299: $2f
    inc a                                         ; $429a: $3c
    daa                                           ; $429b: $27
    rra                                           ; $429c: $1f
    rla                                           ; $429d: $17
    rrca                                          ; $429e: $0f
    dec bc                                        ; $429f: $0b
    rrca                                          ; $42a0: $0f
    add hl, bc                                    ; $42a1: $09
    rla                                           ; $42a2: $17
    inc e                                         ; $42a3: $1c
    inc de                                        ; $42a4: $13
    rra                                           ; $42a5: $1f
    add hl, bc                                    ; $42a6: $09
    rrca                                          ; $42a7: $0f
    rrca                                          ; $42a8: $0f
    ld c, $0f                                     ; $42a9: $0e $0f
    rrca                                          ; $42ab: $0f
    inc de                                        ; $42ac: $13
    rra                                           ; $42ad: $1f
    rra                                           ; $42ae: $1f
    rra                                           ; $42af: $1f
    ldh [$e0], a                                  ; $42b0: $e0 $e0
    db $10                                        ; $42b2: $10
    ldh a, [rBCPS]                                ; $42b3: $f0 $68
    ld hl, sp-$18                                 ; $42b5: $f8 $e8
    cp b                                          ; $42b7: $b8
    ld hl, sp-$08                                 ; $42b8: $f8 $f8
    inc b                                         ; $42ba: $04
    db $fc                                        ; $42bb: $fc

jr_024_42bc:
    ld hl, sp-$08                                 ; $42bc: $f8 $f8
    ld hl, sp+$18                                 ; $42be: $f8 $18
    ldh a, [$b0]                                  ; $42c0: $f0 $b0
    ld hl, sp-$28                                 ; $42c2: $f8 $d8
    add sp, $38                                   ; $42c4: $e8 $38
    ret nc                                        ; $42c6: $d0

    ldh a, [$f0]                                  ; $42c7: $f0 $f0
    or b                                          ; $42c9: $b0
    ldh a, [$f0]                                  ; $42ca: $f0 $f0
    adc b                                         ; $42cc: $88
    ld hl, sp-$08                                 ; $42cd: $f8 $f8
    ld hl, sp+$1c                                 ; $42cf: $f8 $1c
    inc e                                         ; $42d1: $1c
    inc hl                                        ; $42d2: $23
    ccf                                           ; $42d3: $3f
    jr nc, jr_024_4315                            ; $42d4: $30 $3f

jr_024_42d6:
    inc a                                         ; $42d6: $3c
    cpl                                           ; $42d7: $2f
    inc sp                                        ; $42d8: $33
    ccf                                           ; $42d9: $3f
    ld c, a                                       ; $42da: $4f
    ld a, [hl]                                    ; $42db: $7e
    ccf                                           ; $42dc: $3f
    ld a, [hl-]                                   ; $42dd: $3a
    rra                                           ; $42de: $1f
    inc d                                         ; $42df: $14
    ccf                                           ; $42e0: $3f
    dec l                                         ; $42e1: $2d
    ld e, $1b                                     ; $42e2: $1e $1b
    inc b                                         ; $42e4: $04
    rlca                                          ; $42e5: $07
    dec b                                         ; $42e6: $05
    rlca                                          ; $42e7: $07
    rrca                                          ; $42e8: $0f
    dec bc                                        ; $42e9: $0b
    inc c                                         ; $42ea: $0c
    inc c                                         ; $42eb: $0c
    pop de                                        ; $42ec: $d1
    pop de                                        ; $42ed: $d1
    pop hl                                        ; $42ee: $e1
    pop hl                                        ; $42ef: $e1
    nop                                           ; $42f0: $00
    nop                                           ; $42f1: $00
    ret nz                                        ; $42f2: $c0

    ret nz                                        ; $42f3: $c0

    jr nz, jr_024_42d6                            ; $42f4: $20 $e0

    and b                                         ; $42f6: $a0
    ldh [$c0], a                                  ; $42f7: $e0 $c0
    ld b, b                                       ; $42f9: $40
    ret nz                                        ; $42fa: $c0

    ld b, b                                       ; $42fb: $40
    ret nz                                        ; $42fc: $c0

    ret nz                                        ; $42fd: $c0

    and b                                         ; $42fe: $a0
    ldh [$50], a                                  ; $42ff: $e0 $50
    ldh a, [$38]                                  ; $4301: $f0 $38
    ld hl, sp+$78                                 ; $4303: $f8 $78
    ld hl, sp-$08                                 ; $4305: $f8 $f8
    ld hl, sp-$10                                 ; $4307: $f8 $f0
    ldh a, [$f0]                                  ; $4309: $f0 $f0
    ldh a, [rNR10]                                ; $430b: $f0 $10
    ldh a, [$f0]                                  ; $430d: $f0 $f0
    ldh a, [rTAC]                                 ; $430f: $f0 $07
    rlca                                          ; $4311: $07
    ld [$100f], sp                                ; $4312: $08 $0f $10

jr_024_4315:
    rra                                           ; $4315: $1f
    inc d                                         ; $4316: $14
    rra                                           ; $4317: $1f
    ld e, $1b                                     ; $4318: $1e $1b
    ccf                                           ; $431a: $3f
    dec sp                                        ; $431b: $3b
    rra                                           ; $431c: $1f
    inc d                                         ; $431d: $14
    rrca                                          ; $431e: $0f
    rrca                                          ; $431f: $0f
    add hl, bc                                    ; $4320: $09
    rrca                                          ; $4321: $0f
    ld de, $171f                                  ; $4322: $11 $1f $17
    rra                                           ; $4325: $1f
    rrca                                          ; $4326: $0f
    rrca                                          ; $4327: $0f
    rlca                                          ; $4328: $07
    rlca                                          ; $4329: $07
    rrca                                          ; $432a: $0f
    rrca                                          ; $432b: $0f
    ld de, $1f1f                                  ; $432c: $11 $1f $1f
    rra                                           ; $432f: $1f
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    add b                                         ; $4332: $80
    add b                                         ; $4333: $80
    ld [hl], b                                    ; $4334: $70
    ldh a, [$08]                                  ; $4335: $f0 $08
    ld hl, sp+$0c                                 ; $4337: $f8 $0c
    db $fc                                        ; $4339: $fc

jr_024_433a:
    db $fc                                        ; $433a: $fc
    db $f4                                        ; $433b: $f4

jr_024_433c:
    ld hl, sp-$08                                 ; $433c: $f8 $f8
    ldh a, [$f0]                                  ; $433e: $f0 $f0
    jr z, jr_024_433a                             ; $4340: $28 $f8

    jr z, jr_024_433c                             ; $4342: $28 $f8

    ld hl, sp-$08                                 ; $4344: $f8 $f8
    ldh a, [$f0]                                  ; $4346: $f0 $f0
    ldh a, [$f0]                                  ; $4348: $f0 $f0
    ldh a, [$f0]                                  ; $434a: $f0 $f0
    ret z                                         ; $434c: $c8

    ld hl, sp-$08                                 ; $434d: $f8 $f8
    ld hl, sp+$00                                 ; $434f: $f8 $00
    nop                                           ; $4351: $00
    inc bc                                        ; $4352: $03
    inc bc                                        ; $4353: $03
    inc b                                         ; $4354: $04
    rlca                                          ; $4355: $07
    dec b                                         ; $4356: $05
    rlca                                          ; $4357: $07
    inc bc                                        ; $4358: $03
    ld [bc], a                                    ; $4359: $02
    inc bc                                        ; $435a: $03
    ld [bc], a                                    ; $435b: $02
    rlca                                          ; $435c: $07
    rlca                                          ; $435d: $07
    add hl, sp                                    ; $435e: $39
    ccf                                           ; $435f: $3f
    add hl, sp                                    ; $4360: $39
    ccf                                           ; $4361: $3f
    ld e, $1f                                     ; $4362: $1e $1f
    rra                                           ; $4364: $1f
    dec e                                         ; $4365: $1d
    rra                                           ; $4366: $1f
    rra                                           ; $4367: $1f
    rrca                                          ; $4368: $0f
    rrca                                          ; $4369: $0f
    rrca                                          ; $436a: $0f
    rrca                                          ; $436b: $0f
    ld [$0f0f], sp                                ; $436c: $08 $0f $0f
    rrca                                          ; $436f: $0f
    jr c, jr_024_43aa                             ; $4370: $38 $38

    call nz, Call_000_0cfc                        ; $4372: $c4 $fc $0c
    db $fc                                        ; $4375: $fc
    inc a                                         ; $4376: $3c
    db $f4                                        ; $4377: $f4
    call z, $f2fc                                 ; $4378: $cc $fc $f2
    ld a, [hl]                                    ; $437b: $7e
    db $fc                                        ; $437c: $fc
    ld e, h                                       ; $437d: $5c
    ld hl, sp+$28                                 ; $437e: $f8 $28
    db $fc                                        ; $4380: $fc
    inc [hl]                                      ; $4381: $34
    ld hl, sp-$28                                 ; $4382: $f8 $d8
    and b                                         ; $4384: $a0
    ldh [$e0], a                                  ; $4385: $e0 $e0
    ld h, b                                       ; $4387: $60
    ret nz                                        ; $4388: $c0

    ret nz                                        ; $4389: $c0

    nop                                           ; $438a: $00
    nop                                           ; $438b: $00
    add b                                         ; $438c: $80
    add b                                         ; $438d: $80
    add b                                         ; $438e: $80
    add b                                         ; $438f: $80
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    ld bc, $0e01                                  ; $4392: $01 $01 $0e
    rrca                                          ; $4395: $0f
    db $10                                        ; $4396: $10
    rra                                           ; $4397: $1f
    dec sp                                        ; $4398: $3b
    cpl                                           ; $4399: $2f
    inc a                                         ; $439a: $3c
    daa                                           ; $439b: $27
    rra                                           ; $439c: $1f
    rla                                           ; $439d: $17
    rst $08                                       ; $439e: $cf
    set 1, a                                      ; $439f: $cb $cf
    ret                                           ; $43a1: $c9


    ld d, a                                       ; $43a2: $57
    ld e, h                                       ; $43a3: $5c
    ccf                                           ; $43a4: $3f
    ccf                                           ; $43a5: $3f
    rra                                           ; $43a6: $1f
    dec d                                         ; $43a7: $15
    rrca                                          ; $43a8: $0f
    rrca                                          ; $43a9: $0f

jr_024_43aa:
    rrca                                          ; $43aa: $0f
    rrca                                          ; $43ab: $0f
    ld [de], a                                    ; $43ac: $12
    ld e, $1e                                     ; $43ad: $1e $1e
    ld e, $e0                                     ; $43af: $1e $e0
    ldh [rNR10], a                                ; $43b1: $e0 $10
    ldh a, [rBCPS]                                ; $43b3: $f0 $68
    ld hl, sp-$18                                 ; $43b5: $f8 $e8
    cp b                                          ; $43b7: $b8
    ld hl, sp-$08                                 ; $43b8: $f8 $f8
    inc b                                         ; $43ba: $04
    db $fc                                        ; $43bb: $fc
    ld hl, sp-$08                                 ; $43bc: $f8 $f8
    ld hl, sp+$18                                 ; $43be: $f8 $18
    ldh a, [$b0]                                  ; $43c0: $f0 $b0
    ldh a, [$f0]                                  ; $43c2: $f0 $f0
    ret nc                                        ; $43c4: $d0

    ldh a, [$30]                                  ; $43c5: $f0 $30
    ldh a, [$f0]                                  ; $43c7: $f0 $f0
    ldh a, [$f0]                                  ; $43c9: $f0 $f0
    ldh a, [$88]                                  ; $43cb: $f0 $88
    ld hl, sp-$08                                 ; $43cd: $f8 $f8
    ld hl, sp+$1c                                 ; $43cf: $f8 $1c
    inc e                                         ; $43d1: $1c
    inc hl                                        ; $43d2: $23
    ccf                                           ; $43d3: $3f
    jr nc, jr_024_4415                            ; $43d4: $30 $3f

jr_024_43d6:
    inc a                                         ; $43d6: $3c
    cpl                                           ; $43d7: $2f
    inc sp                                        ; $43d8: $33
    ccf                                           ; $43d9: $3f
    ld c, a                                       ; $43da: $4f
    ld a, [hl]                                    ; $43db: $7e
    ccf                                           ; $43dc: $3f
    ld a, [hl-]                                   ; $43dd: $3a
    rra                                           ; $43de: $1f
    inc d                                         ; $43df: $14
    ccf                                           ; $43e0: $3f
    dec l                                         ; $43e1: $2d
    ld e, $1b                                     ; $43e2: $1e $1b
    inc b                                         ; $43e4: $04
    rlca                                          ; $43e5: $07
    dec b                                         ; $43e6: $05
    rlca                                          ; $43e7: $07
    inc bc                                        ; $43e8: $03
    inc bc                                        ; $43e9: $03
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    ld bc, $0101                                  ; $43ec: $01 $01 $01
    ld bc, $0000                                  ; $43ef: $01 $00 $00
    ret nz                                        ; $43f2: $c0

    ret nz                                        ; $43f3: $c0

    jr nz, jr_024_43d6                            ; $43f4: $20 $e0

    and b                                         ; $43f6: $a0
    ldh [$c0], a                                  ; $43f7: $e0 $c0
    ld b, b                                       ; $43f9: $40
    ret nz                                        ; $43fa: $c0

    ld b, b                                       ; $43fb: $40
    ldh [$e0], a                                  ; $43fc: $e0 $e0
    sbc h                                         ; $43fe: $9c
    db $fc                                        ; $43ff: $fc
    call z, Call_024_78fc                         ; $4400: $cc $fc $78
    ld hl, sp+$78                                 ; $4403: $f8 $78
    ld hl, sp-$08                                 ; $4405: $f8 $f8
    ld hl, sp-$10                                 ; $4407: $f8 $f0
    ldh a, [$f0]                                  ; $4409: $f0 $f0
    ldh a, [rNR10]                                ; $440b: $f0 $10
    ldh a, [$f0]                                  ; $440d: $f0 $f0
    ldh a, [rTAC]                                 ; $440f: $f0 $07
    rlca                                          ; $4411: $07
    ld [$100f], sp                                ; $4412: $08 $0f $10

jr_024_4415:
    rra                                           ; $4415: $1f
    inc d                                         ; $4416: $14
    rra                                           ; $4417: $1f
    ld e, $1b                                     ; $4418: $1e $1b
    ccf                                           ; $441a: $3f
    dec sp                                        ; $441b: $3b
    rra                                           ; $441c: $1f
    inc d                                         ; $441d: $14
    rrca                                          ; $441e: $0f
    add hl, bc                                    ; $441f: $09
    ld c, $0f                                     ; $4420: $0e $0f
    ld a, [bc]                                    ; $4422: $0a
    rrca                                          ; $4423: $0f
    dec bc                                        ; $4424: $0b
    rrca                                          ; $4425: $0f
    rlca                                          ; $4426: $07
    rlca                                          ; $4427: $07
    rlca                                          ; $4428: $07
    rlca                                          ; $4429: $07
    rrca                                          ; $442a: $0f
    rrca                                          ; $442b: $0f
    ld de, $1f1f                                  ; $442c: $11 $1f $1f
    rra                                           ; $442f: $1f
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    add b                                         ; $4432: $80
    add b                                         ; $4433: $80
    ld [hl], b                                    ; $4434: $70
    ldh a, [$08]                                  ; $4435: $f0 $08
    ld hl, sp+$0c                                 ; $4437: $f8 $0c
    db $fc                                        ; $4439: $fc
    db $fc                                        ; $443a: $fc
    db $f4                                        ; $443b: $f4
    ld hl, sp-$08                                 ; $443c: $f8 $f8
    set 7, e                                      ; $443e: $cb $fb
    ld b, a                                       ; $4440: $47
    rst $38                                       ; $4441: $ff
    ld d, h                                       ; $4442: $54
    db $fc                                        ; $4443: $fc
    ld hl, sp-$08                                 ; $4444: $f8 $f8
    ldh a, [$f0]                                  ; $4446: $f0 $f0
    ldh a, [$f0]                                  ; $4448: $f0 $f0
    ldh a, [$f0]                                  ; $444a: $f0 $f0
    ld c, b                                       ; $444c: $48
    ld a, b                                       ; $444d: $78
    ld a, b                                       ; $444e: $78
    ld a, b                                       ; $444f: $78
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    inc bc                                        ; $4452: $03
    inc bc                                        ; $4453: $03
    ld h, h                                       ; $4454: $64
    ld h, a                                       ; $4455: $67
    ld h, l                                       ; $4456: $65
    ld h, a                                       ; $4457: $67
    ld h, e                                       ; $4458: $63
    ld h, d                                       ; $4459: $62
    inc sp                                        ; $445a: $33
    ld [hl-], a                                   ; $445b: $32
    rra                                           ; $445c: $1f
    rra                                           ; $445d: $1f
    dec e                                         ; $445e: $1d
    rla                                           ; $445f: $17
    rla                                           ; $4460: $17
    rra                                           ; $4461: $1f
    ld e, $1b                                     ; $4462: $1e $1b
    ld e, $1f                                     ; $4464: $1e $1f
    rra                                           ; $4466: $1f
    rra                                           ; $4467: $1f
    rrca                                          ; $4468: $0f
    rrca                                          ; $4469: $0f
    rrca                                          ; $446a: $0f
    rrca                                          ; $446b: $0f
    ld [$0f0f], sp                                ; $446c: $08 $0f $0f
    rrca                                          ; $446f: $0f
    jr c, jr_024_44aa                             ; $4470: $38 $38

    call nz, Call_000_0cfc                        ; $4472: $c4 $fc $0c
    db $fc                                        ; $4475: $fc
    inc a                                         ; $4476: $3c
    db $f4                                        ; $4477: $f4
    call z, $f2fc                                 ; $4478: $cc $fc $f2
    ld a, [hl]                                    ; $447b: $7e
    db $fc                                        ; $447c: $fc
    ld e, h                                       ; $447d: $5c
    ld hl, sp+$28                                 ; $447e: $f8 $28
    db $fc                                        ; $4480: $fc
    inc [hl]                                      ; $4481: $34
    ld hl, sp-$68                                 ; $4482: $f8 $98
    ld h, b                                       ; $4484: $60
    ldh [$c0], a                                  ; $4485: $e0 $c0
    ret nz                                        ; $4487: $c0

    add b                                         ; $4488: $80
    add b                                         ; $4489: $80
    nop                                           ; $448a: $00
    nop                                           ; $448b: $00
    add b                                         ; $448c: $80
    add b                                         ; $448d: $80
    add b                                         ; $448e: $80
    add b                                         ; $448f: $80
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    ld bc, $6e01                                  ; $4492: $01 $01 $6e
    ld l, a                                       ; $4495: $6f
    ld [hl], b                                    ; $4496: $70
    ld a, a                                       ; $4497: $7f
    ld a, e                                       ; $4498: $7b
    ld l, a                                       ; $4499: $6f
    inc a                                         ; $449a: $3c
    daa                                           ; $449b: $27
    ccf                                           ; $449c: $3f
    scf                                           ; $449d: $37
    ccf                                           ; $449e: $3f
    dec hl                                        ; $449f: $2b
    rra                                           ; $44a0: $1f
    add hl, de                                    ; $44a1: $19
    rra                                           ; $44a2: $1f
    ld d, $09                                     ; $44a3: $16 $09
    rrca                                          ; $44a5: $0f
    inc c                                         ; $44a6: $0c
    rrca                                          ; $44a7: $0f
    rrca                                          ; $44a8: $0f
    rrca                                          ; $44a9: $0f

jr_024_44aa:
    rrca                                          ; $44aa: $0f
    rrca                                          ; $44ab: $0f
    ld [de], a                                    ; $44ac: $12
    ld e, $1e                                     ; $44ad: $1e $1e
    ld e, $e0                                     ; $44af: $1e $e0
    ldh [rNR10], a                                ; $44b1: $e0 $10
    ldh a, [rBCPS]                                ; $44b3: $f0 $68
    ld hl, sp-$18                                 ; $44b5: $f8 $e8
    cp b                                          ; $44b7: $b8
    ld hl, sp-$08                                 ; $44b8: $f8 $f8
    inc b                                         ; $44ba: $04
    db $fc                                        ; $44bb: $fc
    ld hl, sp-$08                                 ; $44bc: $f8 $f8
    ld hl, sp+$18                                 ; $44be: $f8 $18
    ldh a, [$b0]                                  ; $44c0: $f0 $b0
    ldh a, [$d0]                                  ; $44c2: $f0 $d0
    ldh [$e0], a                                  ; $44c4: $e0 $e0
    and b                                         ; $44c6: $a0
    ldh [$f0], a                                  ; $44c7: $e0 $f0
    ldh a, [$f0]                                  ; $44c9: $f0 $f0
    ldh a, [$88]                                  ; $44cb: $f0 $88
    ld hl, sp-$08                                 ; $44cd: $f8 $f8
    ld hl, sp+$1c                                 ; $44cf: $f8 $1c
    inc e                                         ; $44d1: $1c
    inc hl                                        ; $44d2: $23
    ccf                                           ; $44d3: $3f
    jr nc, jr_024_4515                            ; $44d4: $30 $3f

    inc a                                         ; $44d6: $3c
    cpl                                           ; $44d7: $2f
    inc sp                                        ; $44d8: $33
    ccf                                           ; $44d9: $3f
    ld c, a                                       ; $44da: $4f
    ld a, [hl]                                    ; $44db: $7e
    ccf                                           ; $44dc: $3f
    ld a, [hl-]                                   ; $44dd: $3a
    rra                                           ; $44de: $1f
    inc d                                         ; $44df: $14
    ccf                                           ; $44e0: $3f
    dec l                                         ; $44e1: $2d
    rra                                           ; $44e2: $1f
    add hl, de                                    ; $44e3: $19
    ld b, $07                                     ; $44e4: $06 $07
    inc bc                                        ; $44e6: $03
    inc bc                                        ; $44e7: $03
    ld bc, $0001                                  ; $44e8: $01 $01 $00
    nop                                           ; $44eb: $00
    ld bc, $0101                                  ; $44ec: $01 $01 $01
    ld bc, $0000                                  ; $44ef: $01 $00 $00
    ret nz                                        ; $44f2: $c0

    ret nz                                        ; $44f3: $c0

    ld h, $e6                                     ; $44f4: $26 $e6
    and [hl]                                      ; $44f6: $a6
    and $c6                                       ; $44f7: $e6 $c6
    ld b, [hl]                                    ; $44f9: $46
    call c, $f85c                                 ; $44fa: $dc $5c $f8
    add sp, -$68                                  ; $44fd: $e8 $98
    ld hl, sp+$08                                 ; $44ff: $f8 $08
    ld hl, sp-$48                                 ; $4501: $f8 $b8
    ld hl, sp-$08                                 ; $4503: $f8 $f8
    ld hl, sp-$08                                 ; $4505: $f8 $f8
    ld hl, sp-$10                                 ; $4507: $f8 $f0
    ldh a, [$f0]                                  ; $4509: $f0 $f0
    ldh a, [rNR10]                                ; $450b: $f0 $10
    ldh a, [$f0]                                  ; $450d: $f0 $f0
    ldh a, [rTAC]                                 ; $450f: $f0 $07
    rlca                                          ; $4511: $07
    ld [$100f], sp                                ; $4512: $08 $0f $10

jr_024_4515:
    rra                                           ; $4515: $1f
    inc d                                         ; $4516: $14
    rra                                           ; $4517: $1f
    ld e, $1b                                     ; $4518: $1e $1b
    ccf                                           ; $451a: $3f
    dec sp                                        ; $451b: $3b
    rra                                           ; $451c: $1f
    inc d                                         ; $451d: $14
    rrca                                          ; $451e: $0f
    add hl, bc                                    ; $451f: $09
    ld c, $0b                                     ; $4520: $0e $0b
    inc b                                         ; $4522: $04
    rlca                                          ; $4523: $07
    rlca                                          ; $4524: $07
    rlca                                          ; $4525: $07
    rlca                                          ; $4526: $07
    rlca                                          ; $4527: $07
    rlca                                          ; $4528: $07
    rlca                                          ; $4529: $07
    rrca                                          ; $452a: $0f
    rrca                                          ; $452b: $0f
    ld de, $1f1f                                  ; $452c: $11 $1f $1f
    rra                                           ; $452f: $1f
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    add b                                         ; $4532: $80
    add b                                         ; $4533: $80
    halt                                          ; $4534: $76
    or $0e                                        ; $4535: $f6 $0e
    cp $0e                                        ; $4537: $fe $0e
    cp $fc                                        ; $4539: $fe $fc
    db $f4                                        ; $453b: $f4
    db $fc                                        ; $453c: $fc
    db $fc                                        ; $453d: $fc
    sbc h                                         ; $453e: $9c
    db $f4                                        ; $453f: $f4
    adc b                                         ; $4540: $88
    ld hl, sp-$58                                 ; $4541: $f8 $a8
    ld hl, sp-$10                                 ; $4543: $f8 $f0
    ldh a, [$f0]                                  ; $4545: $f0 $f0
    ldh a, [$f0]                                  ; $4547: $f0 $f0
    ldh a, [$f0]                                  ; $4549: $f0 $f0
    ldh a, [rOBP0]                                ; $454b: $f0 $48
    ld a, b                                       ; $454d: $78
    ld a, b                                       ; $454e: $78
    ld a, b                                       ; $454f: $78
    ld bc, $0601                                  ; $4550: $01 $01 $06
    rlca                                          ; $4553: $07
    ld [$d80f], sp                                ; $4554: $08 $0f $d8
    rst $18                                       ; $4557: $df
    ret c                                         ; $4558: $d8

    rst $18                                       ; $4559: $df
    call c, Call_024_7cd7                         ; $455a: $dc $d7 $7c
    ld a, a                                       ; $455d: $7f
    dec sp                                        ; $455e: $3b
    cpl                                           ; $455f: $2f
    inc d                                         ; $4560: $14
    rra                                           ; $4561: $1f
    inc d                                         ; $4562: $14
    rra                                           ; $4563: $1f
    rra                                           ; $4564: $1f
    rra                                           ; $4565: $1f
    rrca                                          ; $4566: $0f
    rrca                                          ; $4567: $0f
    rrca                                          ; $4568: $0f
    rrca                                          ; $4569: $0f
    ld c, $0f                                     ; $456a: $0e $0f
    add hl, bc                                    ; $456c: $09
    rrca                                          ; $456d: $0f

jr_024_456e:
    rrca                                          ; $456e: $0f
    rrca                                          ; $456f: $0f
    ldh [$e0], a                                  ; $4570: $e0 $e0
    db $10                                        ; $4572: $10
    ldh a, [$08]                                  ; $4573: $f0 $08
    ld hl, sp+$08                                 ; $4575: $f8 $08
    ld hl, sp+$1c                                 ; $4577: $f8 $1c
    db $f4                                        ; $4579: $f4
    inc e                                         ; $457a: $1c
    db $f4                                        ; $457b: $f4
    ld a, h                                       ; $457c: $7c
    db $e4                                        ; $457d: $e4
    ld hl, sp-$28                                 ; $457e: $f8 $d8
    ld [hl], b                                    ; $4580: $70
    ldh a, [$50]                                  ; $4581: $f0 $50
    ldh a, [$d0]                                  ; $4583: $f0 $d0
    ldh a, [$e0]                                  ; $4585: $f0 $e0
    ldh [$c0], a                                  ; $4587: $e0 $c0
    ret nz                                        ; $4589: $c0

    ld b, b                                       ; $458a: $40
    ret nz                                        ; $458b: $c0

    jr nz, jr_024_456e                            ; $458c: $20 $e0

    ldh [$e0], a                                  ; $458e: $e0 $e0
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    ld bc, $0201                                  ; $4592: $01 $01 $02
    inc bc                                        ; $4595: $03
    call z, $d3cf                                 ; $4596: $cc $cf $d3
    rst $18                                       ; $4599: $df
    db $fc                                        ; $459a: $fc
    rst $28                                       ; $459b: $ef
    ld a, a                                       ; $459c: $7f
    ld h, a                                       ; $459d: $67
    ccf                                           ; $459e: $3f
    inc sp                                        ; $459f: $33
    rra                                           ; $45a0: $1f
    dec de                                        ; $45a1: $1b
    rrca                                          ; $45a2: $0f
    inc c                                         ; $45a3: $0c
    dec bc                                        ; $45a4: $0b
    rrca                                          ; $45a5: $0f
    inc c                                         ; $45a6: $0c
    rrca                                          ; $45a7: $0f
    rrca                                          ; $45a8: $0f
    rrca                                          ; $45a9: $0f
    rla                                           ; $45aa: $17
    rra                                           ; $45ab: $1f
    add hl, de                                    ; $45ac: $19
    rra                                           ; $45ad: $1f
    ld c, $0e                                     ; $45ae: $0e $0e
    ret nz                                        ; $45b0: $c0

    ret nz                                        ; $45b1: $c0

    jr nz, @-$1e                                  ; $45b2: $20 $e0

    ld [hl], b                                    ; $45b4: $70
    ret nc                                        ; $45b5: $d0

    ld [hl], b                                    ; $45b6: $70
    ldh a, [$88]                                  ; $45b7: $f0 $88
    ld hl, sp+$70                                 ; $45b9: $f8 $70
    ldh a, [$f8]                                  ; $45bb: $f0 $f8
    xor b                                         ; $45bd: $a8
    ldh a, [$30]                                  ; $45be: $f0 $30
    ldh a, [$f0]                                  ; $45c0: $f0 $f0
    ldh a, [rNR10]                                ; $45c2: $f0 $10
    ldh a, [$30]                                  ; $45c4: $f0 $30
    ret nc                                        ; $45c6: $d0

    ldh a, [$f0]                                  ; $45c7: $f0 $f0
    ldh a, [$f0]                                  ; $45c9: $f0 $f0
    ldh a, [$88]                                  ; $45cb: $f0 $88
    ld hl, sp-$08                                 ; $45cd: $f8 $f8
    ld hl, sp+$07                                 ; $45cf: $f8 $07
    rlca                                          ; $45d1: $07
    ld a, [bc]                                    ; $45d2: $0a
    rrca                                          ; $45d3: $0f
    rla                                           ; $45d4: $17
    dec e                                         ; $45d5: $1d
    ld d, $1f                                     ; $45d6: $16 $1f
    add hl, hl                                    ; $45d8: $29
    ccf                                           ; $45d9: $3f
    scf                                           ; $45da: $37
    ccf                                           ; $45db: $3f
    ccf                                           ; $45dc: $3f
    inc l                                         ; $45dd: $2c
    rra                                           ; $45de: $1f
    dec e                                         ; $45df: $1d
    rra                                           ; $45e0: $1f
    inc de                                        ; $45e1: $13
    rrca                                          ; $45e2: $0f
    inc c                                         ; $45e3: $0c
    dec bc                                        ; $45e4: $0b
    rrca                                          ; $45e5: $0f
    ld c, $0f                                     ; $45e6: $0e $0f
    rrca                                          ; $45e8: $0f
    rrca                                          ; $45e9: $0f
    rlca                                          ; $45ea: $07
    rlca                                          ; $45eb: $07
    dec b                                         ; $45ec: $05
    rlca                                          ; $45ed: $07
    inc bc                                        ; $45ee: $03
    inc bc                                        ; $45ef: $03
    add b                                         ; $45f0: $80
    add b                                         ; $45f1: $80
    ld b, b                                       ; $45f2: $40
    ret nz                                        ; $45f3: $c0

    and b                                         ; $45f4: $a0
    ldh [$5b], a                                  ; $45f5: $e0 $5b
    ei                                            ; $45f7: $fb

jr_024_45f8:
    ei                                            ; $45f8: $fb
    db $eb                                        ; $45f9: $eb
    ei                                            ; $45fa: $fb
    xor e                                         ; $45fb: $ab
    or $f6                                        ; $45fc: $f6 $f6
    db $fc                                        ; $45fe: $fc
    sbc h                                         ; $45ff: $9c
    ld hl, sp+$28                                 ; $4600: $f8 $28
    ldh a, [rSVBK]                                ; $4602: $f0 $70
    ldh a, [$d0]                                  ; $4604: $f0 $d0
    jr nc, jr_024_45f8                            ; $4606: $30 $f0

    ldh a, [$f0]                                  ; $4608: $f0 $f0
    ldh a, [$f0]                                  ; $460a: $f0 $f0
    db $10                                        ; $460c: $10
    ldh a, [$f0]                                  ; $460d: $f0 $f0
    ldh a, [rTMA]                                 ; $460f: $f0 $06
    ld b, $09                                     ; $4611: $06 $09
    rrca                                          ; $4613: $0f
    jr jr_024_4635                                ; $4614: $18 $1f

    inc e                                         ; $4616: $1c
    rla                                           ; $4617: $17
    rra                                           ; $4618: $1f
    rra                                           ; $4619: $1f
    cpl                                           ; $461a: $2f
    ld a, [hl-]                                   ; $461b: $3a
    ccf                                           ; $461c: $3f
    ld [hl], $1f                                  ; $461d: $36 $1f
    inc e                                         ; $461f: $1c
    rrca                                          ; $4620: $0f
    ld [$0707], sp                                ; $4621: $08 $07 $07
    inc b                                         ; $4624: $04
    rlca                                          ; $4625: $07
    rlca                                          ; $4626: $07
    rlca                                          ; $4627: $07
    rlca                                          ; $4628: $07
    rlca                                          ; $4629: $07
    rrca                                          ; $462a: $0f
    rrca                                          ; $462b: $0f
    ld de, $1f1f                                  ; $462c: $11 $1f $1f
    rra                                           ; $462f: $1f
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    add b                                         ; $4632: $80
    add b                                         ; $4633: $80
    ld h, b                                       ; $4634: $60

jr_024_4635:
    ldh [$73], a                                  ; $4635: $e0 $73
    db $d3                                        ; $4637: $d3
    ei                                            ; $4638: $fb
    sbc e                                         ; $4639: $9b
    db $eb                                        ; $463a: $eb
    cp e                                          ; $463b: $bb
    or $36                                        ; $463c: $f6 $36
    db $fc                                        ; $463e: $fc
    ld a, h                                       ; $463f: $7c
    ld hl, sp-$18                                 ; $4640: $f8 $e8
    ld hl, sp-$48                                 ; $4642: $f8 $b8
    add sp, -$08                                  ; $4644: $e8 $f8
    ldh a, [$f0]                                  ; $4646: $f0 $f0
    ldh a, [$f0]                                  ; $4648: $f0 $f0
    add sp, -$08                                  ; $464a: $e8 $f8
    sbc b                                         ; $464c: $98
    ld hl, sp+$70                                 ; $464d: $f8 $70
    ld [hl], b                                    ; $464f: $70
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    nop                                           ; $4652: $00
    nop                                           ; $4653: $00
    ld bc, $0201                                  ; $4654: $01 $01 $02
    inc bc                                        ; $4657: $03
    inc c                                         ; $4658: $0c
    rrca                                          ; $4659: $0f
    inc d                                         ; $465a: $14
    rra                                           ; $465b: $1f
    rra                                           ; $465c: $1f
    dec de                                        ; $465d: $1b
    rrca                                          ; $465e: $0f
    add hl, bc                                    ; $465f: $09
    rlca                                          ; $4660: $07
    inc b                                         ; $4661: $04
    rlca                                          ; $4662: $07
    rlca                                          ; $4663: $07
    ld [de], a                                    ; $4664: $12
    rra                                           ; $4665: $1f
    ccf                                           ; $4666: $3f
    cpl                                           ; $4667: $2f
    ccf                                           ; $4668: $3f
    ccf                                           ; $4669: $3f
    rra                                           ; $466a: $1f
    rra                                           ; $466b: $1f
    rla                                           ; $466c: $17
    rra                                           ; $466d: $1f
    ld c, $0e                                     ; $466e: $0e $0e
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    ret nz                                        ; $4672: $c0

    ret nz                                        ; $4673: $c0

    jr nz, @-$1e                                  ; $4674: $20 $e0

    ld [hl], b                                    ; $4676: $70
    ret nc                                        ; $4677: $d0

    ld [hl], b                                    ; $4678: $70
    ldh a, [$c8]                                  ; $4679: $f0 $c8
    ld hl, sp+$30                                 ; $467b: $f8 $30
    ldh a, [$f8]                                  ; $467d: $f0 $f8
    ret c                                         ; $467f: $d8

    db $fc                                        ; $4680: $fc
    call nc, Call_000_38f8                        ; $4681: $d4 $f8 $38
    db $fc                                        ; $4684: $fc
    sub h                                         ; $4685: $94
    ld hl, sp-$08                                 ; $4686: $f8 $f8
    ldh a, [$f0]                                  ; $4688: $f0 $f0
    add sp, -$08                                  ; $468a: $e8 $f8
    ret c                                         ; $468c: $d8

    ld hl, sp+$70                                 ; $468d: $f8 $70
    ld [hl], b                                    ; $468f: $70
    nop                                           ; $4690: $00
    nop                                           ; $4691: $00
    inc bc                                        ; $4692: $03
    inc bc                                        ; $4693: $03
    dec b                                         ; $4694: $05
    rlca                                          ; $4695: $07
    dec de                                        ; $4696: $1b
    ld e, $27                                     ; $4697: $1e $27
    ccf                                           ; $4699: $3f
    ld l, b                                       ; $469a: $68
    ld a, a                                       ; $469b: $7f
    rst $30                                       ; $469c: $f7
    cp a                                          ; $469d: $bf
    ld a, a                                       ; $469e: $7f
    ld e, d                                       ; $469f: $5a
    ccf                                           ; $46a0: $3f
    inc a                                         ; $46a1: $3c
    ld a, a                                       ; $46a2: $7f
    halt                                          ; $46a3: $76
    rst $38                                       ; $46a4: $ff
    db $fc                                        ; $46a5: $fc
    ld e, e                                       ; $46a6: $5b
    ld e, a                                       ; $46a7: $5f
    ld e, a                                       ; $46a8: $5f
    ld e, a                                       ; $46a9: $5f
    rst $08                                       ; $46aa: $cf
    rst $08                                       ; $46ab: $cf
    ret                                           ; $46ac: $c9


    rst $08                                       ; $46ad: $cf
    ld b, $06                                     ; $46ae: $06 $06
    nop                                           ; $46b0: $00
    nop                                           ; $46b1: $00
    add b                                         ; $46b2: $80
    add b                                         ; $46b3: $80
    ld b, b                                       ; $46b4: $40
    ret nz                                        ; $46b5: $c0

    or b                                          ; $46b6: $b0
    ldh a, [$c8]                                  ; $46b7: $f0 $c8
    ld hl, sp+$2c                                 ; $46b9: $f8 $2c
    db $fc                                        ; $46bb: $fc
    sbc $fa                                       ; $46bc: $de $fa
    db $fc                                        ; $46be: $fc
    or h                                          ; $46bf: $b4
    ld hl, sp+$78                                 ; $46c0: $f8 $78
    ld hl, sp-$28                                 ; $46c2: $f8 $d8
    db $fc                                        ; $46c4: $fc
    ld a, h                                       ; $46c5: $7c
    cp [hl]                                       ; $46c6: $be
    ld a, [$f6f6]                                 ; $46c7: $fa $f6 $f6
    ldh [$e0], a                                  ; $46ca: $e0 $e0
    nop                                           ; $46cc: $00
    nop                                           ; $46cd: $00
    nop                                           ; $46ce: $00
    nop                                           ; $46cf: $00
    nop                                           ; $46d0: $00
    nop                                           ; $46d1: $00
    inc bc                                        ; $46d2: $03
    inc bc                                        ; $46d3: $03
    inc b                                         ; $46d4: $04
    rlca                                          ; $46d5: $07
    ld c, $0b                                     ; $46d6: $0e $0b
    ld c, $0f                                     ; $46d8: $0e $0f
    inc de                                        ; $46da: $13
    rra                                           ; $46db: $1f
    inc c                                         ; $46dc: $0c
    rrca                                          ; $46dd: $0f
    rra                                           ; $46de: $1f
    dec de                                        ; $46df: $1b
    ccf                                           ; $46e0: $3f
    dec hl                                        ; $46e1: $2b
    rra                                           ; $46e2: $1f
    inc e                                         ; $46e3: $1c
    ld c, $0f                                     ; $46e4: $0e $0f
    inc e                                         ; $46e6: $1c
    rla                                           ; $46e7: $17
    rra                                           ; $46e8: $1f
    rra                                           ; $46e9: $1f

jr_024_46ea:
    rra                                           ; $46ea: $1f
    rra                                           ; $46eb: $1f
    rla                                           ; $46ec: $17
    rra                                           ; $46ed: $1f
    ld c, $0e                                     ; $46ee: $0e $0e
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    nop                                           ; $46f2: $00
    nop                                           ; $46f3: $00

jr_024_46f4:
    add b                                         ; $46f4: $80
    add b                                         ; $46f5: $80
    ld b, b                                       ; $46f6: $40
    ret nz                                        ; $46f7: $c0

    jr nc, jr_024_46ea                            ; $46f8: $30 $f0

    jr z, jr_024_46f4                             ; $46fa: $28 $f8

    ld hl, sp-$28                                 ; $46fc: $f8 $d8
    ldh a, [$90]                                  ; $46fe: $f0 $90
    ldh [rNR41], a                                ; $4700: $e0 $20
    ldh [$e0], a                                  ; $4702: $e0 $e0
    ld e, h                                       ; $4704: $5c
    db $f4                                        ; $4705: $f4
    db $fc                                        ; $4706: $fc
    db $fc                                        ; $4707: $fc
    ldh a, [$f0]                                  ; $4708: $f0 $f0
    add sp, -$08                                  ; $470a: $e8 $f8
    ret c                                         ; $470c: $d8

    ld hl, sp+$70                                 ; $470d: $f8 $70
    ld [hl], b                                    ; $470f: $70
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    inc bc                                        ; $4712: $03
    inc bc                                        ; $4713: $03
    inc b                                         ; $4714: $04
    rlca                                          ; $4715: $07
    jr @+$21                                      ; $4716: $18 $1f

    jr nz, jr_024_4759                            ; $4718: $20 $3f

    jr nz, jr_024_475b                            ; $471a: $20 $3f

    ld [hl], b                                    ; $471c: $70
    ld e, a                                       ; $471d: $5f
    ld a, b                                       ; $471e: $78
    ld e, a                                       ; $471f: $5f
    ccf                                           ; $4720: $3f
    cpl                                           ; $4721: $2f
    rst $38                                       ; $4722: $ff
    rst $38                                       ; $4723: $ff
    ld [hl], h                                    ; $4724: $74
    ld a, a                                       ; $4725: $7f
    dec de                                        ; $4726: $1b
    rra                                           ; $4727: $1f

jr_024_4728:
    rra                                           ; $4728: $1f
    rra                                           ; $4729: $1f
    rrca                                          ; $472a: $0f
    rrca                                          ; $472b: $0f
    add hl, bc                                    ; $472c: $09
    rrca                                          ; $472d: $0f
    ld b, $06                                     ; $472e: $06 $06
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    add b                                         ; $4732: $80
    add b                                         ; $4733: $80
    ld b, b                                       ; $4734: $40
    ret nz                                        ; $4735: $c0

    jr nc, jr_024_4728                            ; $4736: $30 $f0

    ld [$08f8], sp                                ; $4738: $08 $f8 $08
    ld hl, sp+$1c                                 ; $473b: $f8 $1c
    db $f4                                        ; $473d: $f4
    inc a                                         ; $473e: $3c
    db $f4                                        ; $473f: $f4
    ld hl, sp-$18                                 ; $4740: $f8 $e8
    ld hl, sp-$08                                 ; $4742: $f8 $f8
    ld d, a                                       ; $4744: $57
    rst $38                                       ; $4745: $ff
    cp a                                          ; $4746: $bf
    ei                                            ; $4747: $fb
    or $f6                                        ; $4748: $f6 $f6
    ldh [$e0], a                                  ; $474a: $e0 $e0
    nop                                           ; $474c: $00
    nop                                           ; $474d: $00
    nop                                           ; $474e: $00
    nop                                           ; $474f: $00
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    ld bc, $0601                                  ; $4754: $01 $01 $06
    rlca                                          ; $4757: $07
    ld a, [bc]                                    ; $4758: $0a

jr_024_4759:
    rrca                                          ; $4759: $0f
    rrca                                          ; $475a: $0f

jr_024_475b:
    dec c                                         ; $475b: $0d
    rlca                                          ; $475c: $07
    inc b                                         ; $475d: $04
    inc bc                                        ; $475e: $03
    ld [bc], a                                    ; $475f: $02
    inc bc                                        ; $4760: $03
    inc bc                                        ; $4761: $03
    add hl, bc                                    ; $4762: $09
    rrca                                          ; $4763: $0f
    ld [de], a                                    ; $4764: $12
    rra                                           ; $4765: $1f
    ccf                                           ; $4766: $3f
    cpl                                           ; $4767: $2f
    ccf                                           ; $4768: $3f
    ccf                                           ; $4769: $3f
    rra                                           ; $476a: $1f
    rra                                           ; $476b: $1f
    rla                                           ; $476c: $17
    rra                                           ; $476d: $1f
    ld c, $0e                                     ; $476e: $0e $0e
    ld h, b                                       ; $4770: $60
    ld h, b                                       ; $4771: $60
    sub b                                         ; $4772: $90
    ldh a, [$38]                                  ; $4773: $f0 $38
    add sp, $38                                   ; $4775: $e8 $38
    ld hl, sp+$64                                 ; $4777: $f8 $64
    db $fc                                        ; $4779: $fc
    sbc b                                         ; $477a: $98
    ld hl, sp-$04                                 ; $477b: $f8 $fc
    db $ec                                        ; $477d: $ec
    cp $6a                                        ; $477e: $fe $6a
    db $fc                                        ; $4780: $fc
    sbc h                                         ; $4781: $9c
    ld hl, sp+$18                                 ; $4782: $f8 $18
    db $fc                                        ; $4784: $fc
    sub h                                         ; $4785: $94
    ld hl, sp-$08                                 ; $4786: $f8 $f8
    ldh a, [$f0]                                  ; $4788: $f0 $f0
    add sp, -$08                                  ; $478a: $e8 $f8
    ret c                                         ; $478c: $d8

    ld hl, sp+$70                                 ; $478d: $f8 $70
    ld [hl], b                                    ; $478f: $70
    ld bc, $0201                                  ; $4790: $01 $01 $02
    inc bc                                        ; $4793: $03
    dec c                                         ; $4794: $0d
    rrca                                          ; $4795: $0f
    inc de                                        ; $4796: $13
    rra                                           ; $4797: $1f
    inc [hl]                                      ; $4798: $34
    ccf                                           ; $4799: $3f
    ld a, e                                       ; $479a: $7b
    ld e, a                                       ; $479b: $5f
    ccf                                           ; $479c: $3f
    dec l                                         ; $479d: $2d
    rra                                           ; $479e: $1f
    ld e, $3f                                     ; $479f: $1e $3f
    dec sp                                        ; $47a1: $3b
    rst $28                                       ; $47a2: $ef
    cp e                                          ; $47a3: $bb
    rst $38                                       ; $47a4: $ff
    db $fc                                        ; $47a5: $fc
    ld e, e                                       ; $47a6: $5b
    ld e, a                                       ; $47a7: $5f
    ld e, a                                       ; $47a8: $5f
    ld e, a                                       ; $47a9: $5f
    rst $08                                       ; $47aa: $cf
    rst $08                                       ; $47ab: $cf
    ret                                           ; $47ac: $c9


    rst $08                                       ; $47ad: $cf
    ld b, $06                                     ; $47ae: $06 $06
    ret nz                                        ; $47b0: $c0

    ret nz                                        ; $47b1: $c0

    and b                                         ; $47b2: $a0
    ldh [$d8], a                                  ; $47b3: $e0 $d8
    ld a, b                                       ; $47b5: $78
    db $e4                                        ; $47b6: $e4
    db $fc                                        ; $47b7: $fc
    ld d, $fe                                     ; $47b8: $16 $fe
    rst $28                                       ; $47ba: $ef
    db $fd                                        ; $47bb: $fd
    cp $5a                                        ; $47bc: $fe $5a
    db $fc                                        ; $47be: $fc
    inc a                                         ; $47bf: $3c
    db $fc                                        ; $47c0: $fc
    ld l, h                                       ; $47c1: $6c
    db $f4                                        ; $47c2: $f4
    cp h                                          ; $47c3: $bc
    db $fc                                        ; $47c4: $fc
    ld a, h                                       ; $47c5: $7c
    cp [hl]                                       ; $47c6: $be
    ld a, [$f6f6]                                 ; $47c7: $fa $f6 $f6
    ldh [$e0], a                                  ; $47ca: $e0 $e0
    nop                                           ; $47cc: $00
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    ld bc, $0201                                  ; $47d0: $01 $01 $02
    inc bc                                        ; $47d3: $03
    rlca                                          ; $47d4: $07
    dec b                                         ; $47d5: $05

jr_024_47d6:
    rlca                                          ; $47d6: $07
    rlca                                          ; $47d7: $07
    add hl, bc                                    ; $47d8: $09
    rrca                                          ; $47d9: $0f
    ld b, $07                                     ; $47da: $06 $07
    rrca                                          ; $47dc: $0f
    dec c                                         ; $47dd: $0d
    rra                                           ; $47de: $1f
    dec d                                         ; $47df: $15
    rrca                                          ; $47e0: $0f
    ld c, $1f                                     ; $47e1: $0e $1f
    add hl, de                                    ; $47e3: $19
    ld c, $0f                                     ; $47e4: $0e $0f
    inc e                                         ; $47e6: $1c
    rla                                           ; $47e7: $17
    rra                                           ; $47e8: $1f
    rra                                           ; $47e9: $1f
    rra                                           ; $47ea: $1f
    rra                                           ; $47eb: $1f
    rla                                           ; $47ec: $17
    rra                                           ; $47ed: $1f
    ld c, $0e                                     ; $47ee: $0e $0e

jr_024_47f0:
    add b                                         ; $47f0: $80
    add b                                         ; $47f1: $80
    ld b, b                                       ; $47f2: $40
    ret nz                                        ; $47f3: $c0

    jr nz, jr_024_47d6                            ; $47f4: $20 $e0

    jr jr_024_47f0                                ; $47f6: $18 $f8

    sub h                                         ; $47f8: $94
    db $fc                                        ; $47f9: $fc
    ld a, h                                       ; $47fa: $7c
    db $ec                                        ; $47fb: $ec
    ld hl, sp-$38                                 ; $47fc: $f8 $c8
    ldh a, [$90]                                  ; $47fe: $f0 $90
    ldh a, [rSVBK]                                ; $4800: $f0 $70
    ld e, b                                       ; $4802: $58
    ld hl, sp+$5c                                 ; $4803: $f8 $5c
    db $f4                                        ; $4805: $f4
    db $fc                                        ; $4806: $fc
    db $fc                                        ; $4807: $fc
    ldh a, [$f0]                                  ; $4808: $f0 $f0
    add sp, -$08                                  ; $480a: $e8 $f8
    ret c                                         ; $480c: $d8

    ld hl, sp+$70                                 ; $480d: $f8 $70
    ld [hl], b                                    ; $480f: $70
    ld bc, $0201                                  ; $4810: $01 $01 $02
    inc bc                                        ; $4813: $03

jr_024_4814:
    inc c                                         ; $4814: $0c
    rrca                                          ; $4815: $0f
    db $10                                        ; $4816: $10
    rra                                           ; $4817: $1f
    db $10                                        ; $4818: $10
    rra                                           ; $4819: $1f
    jr c, @+$31                                   ; $481a: $38 $2f

    inc a                                         ; $481c: $3c
    cpl                                           ; $481d: $2f
    rra                                           ; $481e: $1f
    rla                                           ; $481f: $17
    ld a, a                                       ; $4820: $7f
    ld a, a                                       ; $4821: $7f
    rst $28                                       ; $4822: $ef
    cp e                                          ; $4823: $bb
    ld [hl], h                                    ; $4824: $74
    ld a, a                                       ; $4825: $7f
    dec de                                        ; $4826: $1b
    rra                                           ; $4827: $1f
    rra                                           ; $4828: $1f
    rra                                           ; $4829: $1f
    rrca                                          ; $482a: $0f
    rrca                                          ; $482b: $0f
    add hl, bc                                    ; $482c: $09
    rrca                                          ; $482d: $0f

jr_024_482e:
    ld b, $06                                     ; $482e: $06 $06
    ret nz                                        ; $4830: $c0

    ret nz                                        ; $4831: $c0

    jr nz, jr_024_4814                            ; $4832: $20 $e0

    jr jr_024_482e                                ; $4834: $18 $f8

    inc b                                         ; $4836: $04
    db $fc                                        ; $4837: $fc
    inc b                                         ; $4838: $04
    db $fc                                        ; $4839: $fc
    ld c, $fa                                     ; $483a: $0e $fa
    ld e, $fa                                     ; $483c: $1e $fa
    db $fc                                        ; $483e: $fc
    db $f4                                        ; $483f: $f4
    db $fc                                        ; $4840: $fc
    db $fc                                        ; $4841: $fc
    add sp, -$48                                  ; $4842: $e8 $b8
    ld d, a                                       ; $4844: $57
    rst $38                                       ; $4845: $ff
    cp a                                          ; $4846: $bf
    ei                                            ; $4847: $fb
    or $f6                                        ; $4848: $f6 $f6
    ldh [$e0], a                                  ; $484a: $e0 $e0
    nop                                           ; $484c: $00
    nop                                           ; $484d: $00
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    ld bc, $0201                                  ; $4850: $01 $01 $02
    inc bc                                        ; $4853: $03
    inc b                                         ; $4854: $04
    rlca                                          ; $4855: $07
    jr @+$21                                      ; $4856: $18 $1f

    add hl, hl                                    ; $4858: $29
    ccf                                           ; $4859: $3f
    ld a, $37                                     ; $485a: $3e $37
    rra                                           ; $485c: $1f
    inc de                                        ; $485d: $13
    rrca                                          ; $485e: $0f
    add hl, bc                                    ; $485f: $09
    rrca                                          ; $4860: $0f
    ld c, $09                                     ; $4861: $0e $09
    rrca                                          ; $4863: $0f
    ld [de], a                                    ; $4864: $12
    rra                                           ; $4865: $1f
    ccf                                           ; $4866: $3f
    cpl                                           ; $4867: $2f
    ccf                                           ; $4868: $3f
    ccf                                           ; $4869: $3f
    rra                                           ; $486a: $1f
    rra                                           ; $486b: $1f
    rla                                           ; $486c: $17
    rra                                           ; $486d: $1f
    ld c, $0e                                     ; $486e: $0e $0e
    add b                                         ; $4870: $80
    add b                                         ; $4871: $80
    ld b, b                                       ; $4872: $40
    ret nz                                        ; $4873: $c0

    ldh [$a0], a                                  ; $4874: $e0 $a0
    ldh [$e0], a                                  ; $4876: $e0 $e0
    sub b                                         ; $4878: $90
    ldh a, [$60]                                  ; $4879: $f0 $60
    ldh [$f0], a                                  ; $487b: $e0 $f0
    or b                                          ; $487d: $b0
    ld hl, sp-$58                                 ; $487e: $f8 $a8
    ldh a, [rSVBK]                                ; $4880: $f0 $70
    ld hl, sp+$18                                 ; $4882: $f8 $18
    db $fc                                        ; $4884: $fc
    sub h                                         ; $4885: $94
    ld hl, sp-$08                                 ; $4886: $f8 $f8
    ldh a, [$f0]                                  ; $4888: $f0 $f0
    add sp, -$08                                  ; $488a: $e8 $f8
    ret c                                         ; $488c: $d8

    ld hl, sp+$70                                 ; $488d: $f8 $70
    ld [hl], b                                    ; $488f: $70
    rlca                                          ; $4890: $07
    rlca                                          ; $4891: $07
    ld a, [bc]                                    ; $4892: $0a
    rrca                                          ; $4893: $0f
    scf                                           ; $4894: $37
    dec a                                         ; $4895: $3d
    ld c, a                                       ; $4896: $4f
    ld a, a                                       ; $4897: $7f
    ret nc                                        ; $4898: $d0

    rst $38                                       ; $4899: $ff
    rst $28                                       ; $489a: $ef
    ld a, a                                       ; $489b: $7f
    rst $38                                       ; $489c: $ff
    or l                                          ; $489d: $b5
    ld a, a                                       ; $489e: $7f
    ld a, b                                       ; $489f: $78
    rst $38                                       ; $48a0: $ff
    db $ed                                        ; $48a1: $ed
    rst $28                                       ; $48a2: $ef
    cp e                                          ; $48a3: $bb
    rst $38                                       ; $48a4: $ff
    db $fc                                        ; $48a5: $fc
    ld e, e                                       ; $48a6: $5b
    ld e, a                                       ; $48a7: $5f
    ld e, a                                       ; $48a8: $5f
    ld e, a                                       ; $48a9: $5f
    rst $08                                       ; $48aa: $cf
    rst $08                                       ; $48ab: $cf
    ret                                           ; $48ac: $c9


    rst $08                                       ; $48ad: $cf
    ld b, $06                                     ; $48ae: $06 $06
    nop                                           ; $48b0: $00
    nop                                           ; $48b1: $00
    add b                                         ; $48b2: $80
    add b                                         ; $48b3: $80
    ld h, b                                       ; $48b4: $60
    ldh [$90], a                                  ; $48b5: $e0 $90
    ldh a, [$58]                                  ; $48b7: $f0 $58
    ld hl, sp-$44                                 ; $48b9: $f8 $bc
    db $f4                                        ; $48bb: $f4
    ld hl, sp+$68                                 ; $48bc: $f8 $68
    ldh a, [$f0]                                  ; $48be: $f0 $f0
    ldh a, [$b0]                                  ; $48c0: $f0 $b0
    db $f4                                        ; $48c2: $f4
    cp h                                          ; $48c3: $bc
    db $fc                                        ; $48c4: $fc
    ld a, h                                       ; $48c5: $7c
    cp [hl]                                       ; $48c6: $be
    ld a, [$f6f6]                                 ; $48c7: $fa $f6 $f6
    ldh [$e0], a                                  ; $48ca: $e0 $e0
    nop                                           ; $48cc: $00
    nop                                           ; $48cd: $00
    nop                                           ; $48ce: $00
    nop                                           ; $48cf: $00
    ld b, $06                                     ; $48d0: $06 $06
    add hl, bc                                    ; $48d2: $09
    rrca                                          ; $48d3: $0f
    inc e                                         ; $48d4: $1c
    rla                                           ; $48d5: $17
    inc e                                         ; $48d6: $1c
    rra                                           ; $48d7: $1f
    ld h, $3f                                     ; $48d8: $26 $3f
    add hl, de                                    ; $48da: $19
    rra                                           ; $48db: $1f
    ccf                                           ; $48dc: $3f
    scf                                           ; $48dd: $37
    ld a, a                                       ; $48de: $7f
    ld d, [hl]                                    ; $48df: $56
    ccf                                           ; $48e0: $3f
    add hl, sp                                    ; $48e1: $39
    rra                                           ; $48e2: $1f
    add hl, de                                    ; $48e3: $19
    ld c, $0f                                     ; $48e4: $0e $0f
    inc e                                         ; $48e6: $1c
    rla                                           ; $48e7: $17
    rra                                           ; $48e8: $1f
    rra                                           ; $48e9: $1f
    rra                                           ; $48ea: $1f
    rra                                           ; $48eb: $1f
    rla                                           ; $48ec: $17
    rra                                           ; $48ed: $1f
    ld c, $0e                                     ; $48ee: $0e $0e
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    nop                                           ; $48f3: $00
    add b                                         ; $48f4: $80
    add b                                         ; $48f5: $80
    ld h, b                                       ; $48f6: $60
    ldh [$50], a                                  ; $48f7: $e0 $50
    ldh a, [$f0]                                  ; $48f9: $f0 $f0
    or b                                          ; $48fb: $b0
    ldh [rNR41], a                                ; $48fc: $e0 $20
    ret nz                                        ; $48fe: $c0

    ld b, b                                       ; $48ff: $40
    ret nz                                        ; $4900: $c0

    ret nz                                        ; $4901: $c0

    ld e, b                                       ; $4902: $58
    ld hl, sp+$5c                                 ; $4903: $f8 $5c
    db $f4                                        ; $4905: $f4
    db $fc                                        ; $4906: $fc
    db $fc                                        ; $4907: $fc
    ldh a, [$f0]                                  ; $4908: $f0 $f0
    add sp, -$08                                  ; $490a: $e8 $f8
    ret c                                         ; $490c: $d8

    ld hl, sp+$70                                 ; $490d: $f8 $70
    ld [hl], b                                    ; $490f: $70
    rlca                                          ; $4910: $07
    rlca                                          ; $4911: $07
    ld [$300f], sp                                ; $4912: $08 $0f $30
    ccf                                           ; $4915: $3f
    ld b, b                                       ; $4916: $40
    ld a, a                                       ; $4917: $7f
    ld b, b                                       ; $4918: $40
    ld a, a                                       ; $4919: $7f
    ldh [$bf], a                                  ; $491a: $e0 $bf
    ldh a, [$bf]                                  ; $491c: $f0 $bf
    ld a, a                                       ; $491e: $7f
    ld e, a                                       ; $491f: $5f
    rst $38                                       ; $4920: $ff
    rst $38                                       ; $4921: $ff
    rst $28                                       ; $4922: $ef
    cp e                                          ; $4923: $bb
    ld [hl], h                                    ; $4924: $74
    ld a, a                                       ; $4925: $7f
    dec de                                        ; $4926: $1b
    rra                                           ; $4927: $1f
    rra                                           ; $4928: $1f
    rra                                           ; $4929: $1f
    rrca                                          ; $492a: $0f
    rrca                                          ; $492b: $0f
    add hl, bc                                    ; $492c: $09
    rrca                                          ; $492d: $0f
    ld b, $06                                     ; $492e: $06 $06
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    add b                                         ; $4932: $80
    add b                                         ; $4933: $80
    ld h, b                                       ; $4934: $60
    ldh [rNR10], a                                ; $4935: $e0 $10
    ldh a, [rNR10]                                ; $4937: $f0 $10
    ldh a, [$38]                                  ; $4939: $f0 $38
    add sp, $78                                   ; $493b: $e8 $78
    add sp, -$10                                  ; $493d: $e8 $f0
    ret nc                                        ; $493f: $d0

    ldh a, [$f0]                                  ; $4940: $f0 $f0
    add sp, -$48                                  ; $4942: $e8 $b8
    ld d, a                                       ; $4944: $57
    rst $38                                       ; $4945: $ff
    cp a                                          ; $4946: $bf
    ei                                            ; $4947: $fb
    or $f6                                        ; $4948: $f6 $f6
    ldh [$e0], a                                  ; $494a: $e0 $e0
    nop                                           ; $494c: $00
    nop                                           ; $494d: $00
    nop                                           ; $494e: $00
    nop                                           ; $494f: $00
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    ld bc, $0201                                  ; $4954: $01 $01 $02
    inc bc                                        ; $4957: $03
    inc b                                         ; $4958: $04
    rlca                                          ; $4959: $07
    ld [$070f], sp                                ; $495a: $08 $0f $07
    dec b                                         ; $495d: $05
    inc bc                                        ; $495e: $03
    nop                                           ; $495f: $00
    inc bc                                        ; $4960: $03
    inc bc                                        ; $4961: $03
    dec b                                         ; $4962: $05
    rlca                                          ; $4963: $07
    rra                                           ; $4964: $1f
    rla                                           ; $4965: $17
    rra                                           ; $4966: $1f
    rra                                           ; $4967: $1f
    rrca                                          ; $4968: $0f
    rrca                                          ; $4969: $0f
    dec bc                                        ; $496a: $0b
    rrca                                          ; $496b: $0f
    ld b, $06                                     ; $496c: $06 $06
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    ret nz                                        ; $4972: $c0

jr_024_4973:
    ret nz                                        ; $4973: $c0

    nop                                           ; $4974: $00

jr_024_4975:
    ret nz                                        ; $4975: $c0

    ld h, b                                       ; $4976: $60
    ldh [$60], a                                  ; $4977: $e0 $60
    ldh [$d0], a                                  ; $4979: $e0 $d0
    ldh a, [$f0]                                  ; $497b: $f0 $f0
    ldh a, [$f8]                                  ; $497d: $f0 $f8
    add sp, -$10                                  ; $497f: $e8 $f0
    jr nc, jr_024_4973                            ; $4981: $30 $f0

    jr nc, jr_024_4975                            ; $4983: $30 $f0

    ldh a, [$e0]                                  ; $4985: $f0 $e0
    ldh [$d0], a                                  ; $4987: $e0 $d0
    ldh a, [$f0]                                  ; $4989: $f0 $f0
    ldh a, [$60]                                  ; $498b: $f0 $60
    ld h, b                                       ; $498d: $60
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    inc bc                                        ; $4992: $03
    inc bc                                        ; $4993: $03
    ld bc, $0f03                                  ; $4994: $01 $03 $0f
    ld c, $13                                     ; $4997: $0e $13
    rra                                           ; $4999: $1f
    inc [hl]                                      ; $499a: $34
    ccf                                           ; $499b: $3f
    ccf                                           ; $499c: $3f
    ld l, $1f                                     ; $499d: $2e $1f
    inc e                                         ; $499f: $1c
    ccf                                           ; $49a0: $3f
    ld a, [hl-]                                   ; $49a1: $3a
    ld [hl], a                                    ; $49a2: $77
    ld e, a                                       ; $49a3: $5f
    cpl                                           ; $49a4: $2f
    cpl                                           ; $49a5: $2f
    cpl                                           ; $49a6: $2f
    cpl                                           ; $49a7: $2f
    ld h, a                                       ; $49a8: $67
    ld h, a                                       ; $49a9: $67
    ld h, l                                       ; $49aa: $65
    ld h, a                                       ; $49ab: $67
    ld [bc], a                                    ; $49ac: $02
    ld [bc], a                                    ; $49ad: $02
    nop                                           ; $49ae: $00
    nop                                           ; $49af: $00
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    add b                                         ; $49b2: $80
    add b                                         ; $49b3: $80
    ld b, b                                       ; $49b4: $40
    ret nz                                        ; $49b5: $c0

    and b                                         ; $49b6: $a0
    ldh [$d0], a                                  ; $49b7: $e0 $d0
    ldh a, [rNR23]                                ; $49b9: $f0 $18
    ld hl, sp-$08                                 ; $49bb: $f8 $f8
    xor b                                         ; $49bd: $a8
    ldh a, [rSVBK]                                ; $49be: $f0 $70
    ldh a, [$f0]                                  ; $49c0: $f0 $f0
    add sp, -$48                                  ; $49c2: $e8 $b8
    cp h                                          ; $49c4: $bc
    db $f4                                        ; $49c5: $f4
    db $ec                                        ; $49c6: $ec
    db $ec                                        ; $49c7: $ec
    ret nz                                        ; $49c8: $c0

    ret nz                                        ; $49c9: $c0

    nop                                           ; $49ca: $00
    nop                                           ; $49cb: $00
    nop                                           ; $49cc: $00
    nop                                           ; $49cd: $00
    nop                                           ; $49ce: $00
    nop                                           ; $49cf: $00
    nop                                           ; $49d0: $00
    nop                                           ; $49d1: $00
    inc bc                                        ; $49d2: $03
    inc bc                                        ; $49d3: $03
    nop                                           ; $49d4: $00
    inc bc                                        ; $49d5: $03
    ld b, $07                                     ; $49d6: $06 $07
    ld b, $07                                     ; $49d8: $06 $07

jr_024_49da:
    dec bc                                        ; $49da: $0b
    rrca                                          ; $49db: $0f
    rrca                                          ; $49dc: $0f
    rrca                                          ; $49dd: $0f
    rra                                           ; $49de: $1f
    rla                                           ; $49df: $17
    rrca                                          ; $49e0: $0f
    inc c                                         ; $49e1: $0c
    rrca                                          ; $49e2: $0f
    dec c                                         ; $49e3: $0d
    inc c                                         ; $49e4: $0c
    dec bc                                        ; $49e5: $0b
    rrca                                          ; $49e6: $0f
    rrca                                          ; $49e7: $0f
    rrca                                          ; $49e8: $0f
    rrca                                          ; $49e9: $0f
    dec bc                                        ; $49ea: $0b
    rrca                                          ; $49eb: $0f
    ld b, $06                                     ; $49ec: $06 $06
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    add b                                         ; $49f4: $80
    add b                                         ; $49f5: $80
    ld b, b                                       ; $49f6: $40
    ret nz                                        ; $49f7: $c0

    jr nz, jr_024_49da                            ; $49f8: $20 $e0

    db $10                                        ; $49fa: $10
    ldh a, [$e0]                                  ; $49fb: $f0 $e0
    and b                                         ; $49fd: $a0
    ret nz                                        ; $49fe: $c0

    nop                                           ; $49ff: $00
    ret nz                                        ; $4a00: $c0

    ret nz                                        ; $4a01: $c0

    ld [hl], b                                    ; $4a02: $70
    ldh a, [$f8]                                  ; $4a03: $f0 $f8
    ld hl, sp-$20                                 ; $4a05: $f8 $e0
    ldh [$d0], a                                  ; $4a07: $e0 $d0
    ldh a, [$f0]                                  ; $4a09: $f0 $f0
    ldh a, [$60]                                  ; $4a0b: $f0 $60
    ld h, b                                       ; $4a0d: $60
    nop                                           ; $4a0e: $00
    nop                                           ; $4a0f: $00
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    inc bc                                        ; $4a12: $03
    inc bc                                        ; $4a13: $03
    nop                                           ; $4a14: $00
    inc bc                                        ; $4a15: $03
    inc c                                         ; $4a16: $0c
    rrca                                          ; $4a17: $0f

jr_024_4a18:
    db $10                                        ; $4a18: $10
    rra                                           ; $4a19: $1f
    db $10                                        ; $4a1a: $10
    rra                                           ; $4a1b: $1f
    inc a                                         ; $4a1c: $3c
    cpl                                           ; $4a1d: $2f
    rra                                           ; $4a1e: $1f
    rla                                           ; $4a1f: $17
    ld a, a                                       ; $4a20: $7f
    ld a, a                                       ; $4a21: $7f
    ld [hl], a                                    ; $4a22: $77
    ld e, a                                       ; $4a23: $5f
    rrca                                          ; $4a24: $0f
    rrca                                          ; $4a25: $0f
    rrca                                          ; $4a26: $0f
    rrca                                          ; $4a27: $0f
    rlca                                          ; $4a28: $07
    rlca                                          ; $4a29: $07
    dec b                                         ; $4a2a: $05
    rlca                                          ; $4a2b: $07
    ld [bc], a                                    ; $4a2c: $02
    ld [bc], a                                    ; $4a2d: $02
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    add b                                         ; $4a32: $80
    add b                                         ; $4a33: $80
    ld b, b                                       ; $4a34: $40
    ret nz                                        ; $4a35: $c0

    jr nz, jr_024_4a18                            ; $4a36: $20 $e0

    db $10                                        ; $4a38: $10
    ldh a, [rNR10]                                ; $4a39: $f0 $10
    ldh a, [$38]                                  ; $4a3b: $f0 $38
    add sp, -$10                                  ; $4a3d: $e8 $f0
    ret nc                                        ; $4a3f: $d0

    ldh a, [$f0]                                  ; $4a40: $f0 $f0
    ret nc                                        ; $4a42: $d0

    or b                                          ; $4a43: $b0
    cp [hl]                                       ; $4a44: $be
    or $ec                                        ; $4a45: $f6 $ec
    db $ec                                        ; $4a47: $ec
    ret nz                                        ; $4a48: $c0

    ret nz                                        ; $4a49: $c0

    nop                                           ; $4a4a: $00
    nop                                           ; $4a4b: $00
    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    ld h, d                                       ; $4a50: $62
    ld c, d                                       ; $4a51: $4a
    ld h, l                                       ; $4a52: $65
    ld c, d                                       ; $4a53: $4a
    ld l, e                                       ; $4a54: $6b
    ld c, d                                       ; $4a55: $4a
    ld l, [hl]                                    ; $4a56: $6e
    ld c, d                                       ; $4a57: $4a
    ld a, c                                       ; $4a58: $79
    ld c, d                                       ; $4a59: $4a
    add b                                         ; $4a5a: $80
    ld c, d                                       ; $4a5b: $4a
    adc b                                         ; $4a5c: $88
    ld c, d                                       ; $4a5d: $4a
    sbc h                                         ; $4a5e: $9c
    ld c, d                                       ; $4a5f: $4a
    xor b                                         ; $4a60: $a8
    ld c, d                                       ; $4a61: $4a
    nop                                           ; $4a62: $00
    rst $38                                       ; $4a63: $ff
    db $fd                                        ; $4a64: $fd
    nop                                           ; $4a65: $00
    ld e, $01                                     ; $4a66: $1e $01
    ld e, $ff                                     ; $4a68: $1e $ff
    nop                                           ; $4a6a: $00
    ld [bc], a                                    ; $4a6b: $02
    rst $38                                       ; $4a6c: $ff
    db $fd                                        ; $4a6d: $fd
    ld [bc], a                                    ; $4a6e: $02
    inc c                                         ; $4a6f: $0c
    inc bc                                        ; $4a70: $03
    inc c                                         ; $4a71: $0c
    inc b                                         ; $4a72: $04
    jr jr_024_4a77                                ; $4a73: $18 $02

    inc c                                         ; $4a75: $0c
    dec b                                         ; $4a76: $05

jr_024_4a77:
    inc c                                         ; $4a77: $0c
    db $fd                                        ; $4a78: $fd
    ld [bc], a                                    ; $4a79: $02
    jr @+$05                                      ; $4a7a: $18 $03

    jr jr_024_4a80                                ; $4a7c: $18 $02

    jr @-$01                                      ; $4a7e: $18 $fd

jr_024_4a80:
    nop                                           ; $4a80: $00
    ld a, [bc]                                    ; $4a81: $0a
    ld b, $1e                                     ; $4a82: $06 $1e
    nop                                           ; $4a84: $00
    ld a, [bc]                                    ; $4a85: $0a
    cp $01                                        ; $4a86: $fe $01
    nop                                           ; $4a88: $00
    ld a, [bc]                                    ; $4a89: $0a
    rlca                                          ; $4a8a: $07
    ld a, [bc]                                    ; $4a8b: $0a
    nop                                           ; $4a8c: $00
    inc bc                                        ; $4a8d: $03
    ld [$000a], sp                                ; $4a8e: $08 $0a $00
    inc bc                                        ; $4a91: $03
    rlca                                          ; $4a92: $07
    ld a, [bc]                                    ; $4a93: $0a
    nop                                           ; $4a94: $00
    inc bc                                        ; $4a95: $03
    ld [$000a], sp                                ; $4a96: $08 $0a $00
    ld a, [bc]                                    ; $4a99: $0a
    cp $01                                        ; $4a9a: $fe $01
    nop                                           ; $4a9c: $00
    ld a, [bc]                                    ; $4a9d: $0a
    add hl, bc                                    ; $4a9e: $09
    ld [$0800], sp                                ; $4a9f: $08 $00 $08
    add hl, bc                                    ; $4aa2: $09
    ld [$0a00], sp                                ; $4aa3: $08 $00 $0a
    cp $01                                        ; $4aa6: $fe $01
    ld [bc], a                                    ; $4aa8: $02
    ld [de], a                                    ; $4aa9: $12
    inc bc                                        ; $4aaa: $03
    ld [de], a                                    ; $4aab: $12
    ld [bc], a                                    ; $4aac: $02
    ld e, $05                                     ; $4aad: $1e $05
    ld [de], a                                    ; $4aaf: $12
    db $fd                                        ; $4ab0: $fd
    ld b, $04                                     ; $4ab1: $06 $04
    cp c                                          ; $4ab3: $b9
    ld c, d                                       ; $4ab4: $4a
    ret nc                                        ; $4ab5: $d0

    ld d, b                                       ; $4ab6: $50
    cp c                                          ; $4ab7: $b9
    ld c, d                                       ; $4ab8: $4a
    ret nc                                        ; $4ab9: $d0

    ld c, d                                       ; $4aba: $4a
    ret nc                                        ; $4abb: $d0

    ld c, e                                       ; $4abc: $4b
    ret nc                                        ; $4abd: $d0

    ld c, e                                       ; $4abe: $4b
    ret nc                                        ; $4abf: $d0

    ld c, e                                       ; $4ac0: $4b
    ret nc                                        ; $4ac1: $d0

    ld c, e                                       ; $4ac2: $4b
    ret nc                                        ; $4ac3: $d0

    ld c, e                                       ; $4ac4: $4b
    ret nc                                        ; $4ac5: $d0

    ld c, h                                       ; $4ac6: $4c
    ret nc                                        ; $4ac7: $d0

    ld c, l                                       ; $4ac8: $4d
    ret nc                                        ; $4ac9: $d0

    ld c, [hl]                                    ; $4aca: $4e
    ret nc                                        ; $4acb: $d0

    ld c, a                                       ; $4acc: $4f
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    nop                                           ; $4ad0: $00
    nop                                           ; $4ad1: $00
    inc bc                                        ; $4ad2: $03
    inc bc                                        ; $4ad3: $03
    rlca                                          ; $4ad4: $07
    inc b                                         ; $4ad5: $04
    rlca                                          ; $4ad6: $07
    inc b                                         ; $4ad7: $04
    dec bc                                        ; $4ad8: $0b
    rrca                                          ; $4ad9: $0f
    db $10                                        ; $4ada: $10
    rra                                           ; $4adb: $1f
    inc d                                         ; $4adc: $14
    dec de                                        ; $4add: $1b
    jr nz, @+$41                                  ; $4ade: $20 $3f

    jr nz, @+$41                                  ; $4ae0: $20 $3f

    db $10                                        ; $4ae2: $10
    rra                                           ; $4ae3: $1f
    db $10                                        ; $4ae4: $10
    rra                                           ; $4ae5: $1f
    jr c, jr_024_4b17                             ; $4ae6: $38 $2f

    ld a, $2f                                     ; $4ae8: $3e $2f
    rra                                           ; $4aea: $1f
    rla                                           ; $4aeb: $17
    ld c, $0e                                     ; $4aec: $0e $0e
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    ret nz                                        ; $4af2: $c0

    ret nz                                        ; $4af3: $c0

    ldh [rNR41], a                                ; $4af4: $e0 $20
    ldh [rNR41], a                                ; $4af6: $e0 $20
    ret nc                                        ; $4af8: $d0

    ldh a, [$08]                                  ; $4af9: $f0 $08
    ld hl, sp+$28                                 ; $4afb: $f8 $28
    ret c                                         ; $4afd: $d8

    inc h                                         ; $4afe: $24
    call c, $dc24                                 ; $4aff: $dc $24 $dc
    ld [$08f8], sp                                ; $4b02: $08 $f8 $08
    ld hl, sp+$18                                 ; $4b05: $f8 $18
    ld hl, sp+$7c                                 ; $4b07: $f8 $7c
    db $e4                                        ; $4b09: $e4
    db $fc                                        ; $4b0a: $fc
    add h                                         ; $4b0b: $84
    ld hl, sp-$78                                 ; $4b0c: $f8 $88
    ld [hl], b                                    ; $4b0e: $70
    ld [hl], b                                    ; $4b0f: $70
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    inc bc                                        ; $4b12: $03
    inc bc                                        ; $4b13: $03
    rlca                                          ; $4b14: $07
    inc b                                         ; $4b15: $04
    rlca                                          ; $4b16: $07

jr_024_4b17:
    inc b                                         ; $4b17: $04
    dec bc                                        ; $4b18: $0b
    rrca                                          ; $4b19: $0f
    db $10                                        ; $4b1a: $10
    rra                                           ; $4b1b: $1f
    ld d, $19                                     ; $4b1c: $16 $19
    ld h, $39                                     ; $4b1e: $26 $39
    ld h, $39                                     ; $4b20: $26 $39
    db $10                                        ; $4b22: $10
    rra                                           ; $4b23: $1f
    db $10                                        ; $4b24: $10
    rra                                           ; $4b25: $1f
    ld c, $0f                                     ; $4b26: $0e $0f
    rra                                           ; $4b28: $1f
    ld de, $111f                                  ; $4b29: $11 $1f $11
    rra                                           ; $4b2c: $1f
    rra                                           ; $4b2d: $1f
    ld c, $0e                                     ; $4b2e: $0e $0e
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    ret nz                                        ; $4b32: $c0

    ret nz                                        ; $4b33: $c0

    ldh [rNR41], a                                ; $4b34: $e0 $20
    ldh [rNR41], a                                ; $4b36: $e0 $20
    ret nc                                        ; $4b38: $d0

    ldh a, [$08]                                  ; $4b39: $f0 $08
    ld hl, sp+$68                                 ; $4b3b: $f8 $68
    sbc b                                         ; $4b3d: $98
    ld h, h                                       ; $4b3e: $64
    sbc h                                         ; $4b3f: $9c
    ld h, h                                       ; $4b40: $64
    sbc h                                         ; $4b41: $9c
    ld [$08f8], sp                                ; $4b42: $08 $f8 $08
    ld hl, sp+$10                                 ; $4b45: $f8 $10
    ldh a, [$78]                                  ; $4b47: $f0 $78
    add sp, -$08                                  ; $4b49: $e8 $f8
    adc b                                         ; $4b4b: $88
    ld [hl], b                                    ; $4b4c: $70
    ld [hl], b                                    ; $4b4d: $70
    nop                                           ; $4b4e: $00
    nop                                           ; $4b4f: $00
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    inc bc                                        ; $4b52: $03
    inc bc                                        ; $4b53: $03
    rlca                                          ; $4b54: $07
    inc b                                         ; $4b55: $04
    rlca                                          ; $4b56: $07
    inc b                                         ; $4b57: $04
    dec bc                                        ; $4b58: $0b
    rrca                                          ; $4b59: $0f
    db $10                                        ; $4b5a: $10
    rra                                           ; $4b5b: $1f
    inc d                                         ; $4b5c: $14
    dec de                                        ; $4b5d: $1b
    inc h                                         ; $4b5e: $24
    dec sp                                        ; $4b5f: $3b
    inc h                                         ; $4b60: $24
    dec sp                                        ; $4b61: $3b
    db $10                                        ; $4b62: $10
    rra                                           ; $4b63: $1f
    db $10                                        ; $4b64: $10
    rra                                           ; $4b65: $1f
    jr c, jr_024_4b97                             ; $4b66: $38 $2f

    ld a, $3f                                     ; $4b68: $3e $3f
    rra                                           ; $4b6a: $1f
    rra                                           ; $4b6b: $1f
    inc c                                         ; $4b6c: $0c
    inc c                                         ; $4b6d: $0c
    nop                                           ; $4b6e: $00
    nop                                           ; $4b6f: $00
    nop                                           ; $4b70: $00
    nop                                           ; $4b71: $00
    ret nz                                        ; $4b72: $c0

    ret nz                                        ; $4b73: $c0

    ldh [rNR41], a                                ; $4b74: $e0 $20
    ldh [rNR41], a                                ; $4b76: $e0 $20
    ret nc                                        ; $4b78: $d0

    ldh a, [$08]                                  ; $4b79: $f0 $08
    ld hl, sp+$08                                 ; $4b7b: $f8 $08
    ld hl, sp+$04                                 ; $4b7d: $f8 $04
    db $fc                                        ; $4b7f: $fc
    inc b                                         ; $4b80: $04
    db $fc                                        ; $4b81: $fc
    ld [$08f8], sp                                ; $4b82: $08 $f8 $08
    ld hl, sp+$18                                 ; $4b85: $f8 $18
    ld hl, sp+$7c                                 ; $4b87: $f8 $7c
    db $e4                                        ; $4b89: $e4
    db $fc                                        ; $4b8a: $fc
    add h                                         ; $4b8b: $84
    ld hl, sp-$78                                 ; $4b8c: $f8 $88
    ld [hl], b                                    ; $4b8e: $70
    ld [hl], b                                    ; $4b8f: $70
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    inc bc                                        ; $4b92: $03
    inc bc                                        ; $4b93: $03
    rlca                                          ; $4b94: $07
    inc b                                         ; $4b95: $04
    rlca                                          ; $4b96: $07

jr_024_4b97:
    inc b                                         ; $4b97: $04
    dec bc                                        ; $4b98: $0b
    rrca                                          ; $4b99: $0f
    db $10                                        ; $4b9a: $10
    rra                                           ; $4b9b: $1f
    inc d                                         ; $4b9c: $14
    dec de                                        ; $4b9d: $1b
    jr nz, @+$41                                  ; $4b9e: $20 $3f

    jr nz, @+$41                                  ; $4ba0: $20 $3f

    db $10                                        ; $4ba2: $10
    rra                                           ; $4ba3: $1f
    db $10                                        ; $4ba4: $10
    rra                                           ; $4ba5: $1f
    ld [$0e0f], sp                                ; $4ba6: $08 $0f $0e
    rrca                                          ; $4ba9: $0f
    rra                                           ; $4baa: $1f
    ld de, $1f1f                                  ; $4bab: $11 $1f $1f
    ld c, $0e                                     ; $4bae: $0e $0e
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    ret nz                                        ; $4bb2: $c0

    ret nz                                        ; $4bb3: $c0

    ldh [rNR41], a                                ; $4bb4: $e0 $20
    ldh [rNR41], a                                ; $4bb6: $e0 $20
    ret nc                                        ; $4bb8: $d0

    ldh a, [$08]                                  ; $4bb9: $f0 $08
    ld hl, sp+$08                                 ; $4bbb: $f8 $08
    ld hl, sp+$04                                 ; $4bbd: $f8 $04
    db $fc                                        ; $4bbf: $fc
    inc b                                         ; $4bc0: $04
    db $fc                                        ; $4bc1: $fc
    ld [$08f8], sp                                ; $4bc2: $08 $f8 $08
    ld hl, sp+$10                                 ; $4bc5: $f8 $10
    ldh a, [$78]                                  ; $4bc7: $f0 $78
    add sp, -$08                                  ; $4bc9: $e8 $f8
    ret z                                         ; $4bcb: $c8

    ld [hl], b                                    ; $4bcc: $70
    ld [hl], b                                    ; $4bcd: $70
    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    inc bc                                        ; $4bd2: $03
    inc bc                                        ; $4bd3: $03
    rlca                                          ; $4bd4: $07
    inc b                                         ; $4bd5: $04
    rlca                                          ; $4bd6: $07
    inc b                                         ; $4bd7: $04
    dec bc                                        ; $4bd8: $0b
    rrca                                          ; $4bd9: $0f
    db $10                                        ; $4bda: $10
    rra                                           ; $4bdb: $1f
    inc d                                         ; $4bdc: $14
    dec de                                        ; $4bdd: $1b
    jr nz, @+$41                                  ; $4bde: $20 $3f

    jr nz, @+$41                                  ; $4be0: $20 $3f

    db $10                                        ; $4be2: $10
    rra                                           ; $4be3: $1f
    db $10                                        ; $4be4: $10
    rra                                           ; $4be5: $1f
    jr jr_024_4c07                                ; $4be6: $18 $1f

    ld a, $27                                     ; $4be8: $3e $27
    ccf                                           ; $4bea: $3f
    ld hl, $111f                                  ; $4beb: $21 $1f $11
    ld c, $0e                                     ; $4bee: $0e $0e
    nop                                           ; $4bf0: $00
    nop                                           ; $4bf1: $00
    ret nz                                        ; $4bf2: $c0

    ret nz                                        ; $4bf3: $c0

    ldh [rNR41], a                                ; $4bf4: $e0 $20
    ldh [rNR41], a                                ; $4bf6: $e0 $20
    ret nc                                        ; $4bf8: $d0

    ldh a, [$08]                                  ; $4bf9: $f0 $08
    ld hl, sp+$28                                 ; $4bfb: $f8 $28
    ret c                                         ; $4bfd: $d8

    inc h                                         ; $4bfe: $24
    call c, $dc24                                 ; $4bff: $dc $24 $dc
    ld [$08f8], sp                                ; $4c02: $08 $f8 $08
    ld hl, sp+$1c                                 ; $4c05: $f8 $1c

jr_024_4c07:
    db $f4                                        ; $4c07: $f4
    ld a, h                                       ; $4c08: $7c
    db $fc                                        ; $4c09: $fc
    ld hl, sp-$08                                 ; $4c0a: $f8 $f8
    jr nc, jr_024_4c3e                            ; $4c0c: $30 $30

    nop                                           ; $4c0e: $00
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    inc bc                                        ; $4c12: $03
    inc bc                                        ; $4c13: $03
    rlca                                          ; $4c14: $07
    inc b                                         ; $4c15: $04
    rlca                                          ; $4c16: $07
    inc b                                         ; $4c17: $04
    dec bc                                        ; $4c18: $0b
    rrca                                          ; $4c19: $0f
    db $10                                        ; $4c1a: $10
    rra                                           ; $4c1b: $1f
    ld d, $19                                     ; $4c1c: $16 $19
    ld h, $39                                     ; $4c1e: $26 $39
    ld h, $39                                     ; $4c20: $26 $39
    db $10                                        ; $4c22: $10
    rra                                           ; $4c23: $1f
    db $10                                        ; $4c24: $10
    rra                                           ; $4c25: $1f
    ld [$1e0f], sp                                ; $4c26: $08 $0f $1e
    rla                                           ; $4c29: $17
    rra                                           ; $4c2a: $1f
    ld de, $0e0e                                  ; $4c2b: $11 $0e $0e
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    ret nz                                        ; $4c32: $c0

    ret nz                                        ; $4c33: $c0

    ldh [rNR41], a                                ; $4c34: $e0 $20
    ldh [rNR41], a                                ; $4c36: $e0 $20
    ret nc                                        ; $4c38: $d0

    ldh a, [$08]                                  ; $4c39: $f0 $08
    ld hl, sp+$68                                 ; $4c3b: $f8 $68
    sbc b                                         ; $4c3d: $98

jr_024_4c3e:
    ld h, h                                       ; $4c3e: $64
    sbc h                                         ; $4c3f: $9c
    ld h, h                                       ; $4c40: $64
    sbc h                                         ; $4c41: $9c
    ld [$08f8], sp                                ; $4c42: $08 $f8 $08
    ld hl, sp+$70                                 ; $4c45: $f8 $70
    ldh a, [$f8]                                  ; $4c47: $f0 $f8
    adc b                                         ; $4c49: $88
    ld hl, sp-$78                                 ; $4c4a: $f8 $88
    ld hl, sp-$08                                 ; $4c4c: $f8 $f8
    ld [hl], b                                    ; $4c4e: $70
    ld [hl], b                                    ; $4c4f: $70
    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    inc bc                                        ; $4c52: $03
    inc bc                                        ; $4c53: $03
    rlca                                          ; $4c54: $07
    inc b                                         ; $4c55: $04
    rlca                                          ; $4c56: $07
    inc b                                         ; $4c57: $04
    dec bc                                        ; $4c58: $0b
    rrca                                          ; $4c59: $0f
    db $10                                        ; $4c5a: $10
    rra                                           ; $4c5b: $1f
    inc d                                         ; $4c5c: $14
    dec de                                        ; $4c5d: $1b
    inc h                                         ; $4c5e: $24
    dec sp                                        ; $4c5f: $3b
    inc h                                         ; $4c60: $24
    dec sp                                        ; $4c61: $3b
    db $10                                        ; $4c62: $10
    rra                                           ; $4c63: $1f
    db $10                                        ; $4c64: $10
    rra                                           ; $4c65: $1f
    jr jr_024_4c87                                ; $4c66: $18 $1f

    ld a, $27                                     ; $4c68: $3e $27
    ccf                                           ; $4c6a: $3f
    ld hl, $111f                                  ; $4c6b: $21 $1f $11
    ld c, $0e                                     ; $4c6e: $0e $0e
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    ret nz                                        ; $4c72: $c0

    ret nz                                        ; $4c73: $c0

    ldh [rNR41], a                                ; $4c74: $e0 $20
    ldh [rNR41], a                                ; $4c76: $e0 $20
    ret nc                                        ; $4c78: $d0

    ldh a, [$08]                                  ; $4c79: $f0 $08
    ld hl, sp+$08                                 ; $4c7b: $f8 $08
    ld hl, sp+$04                                 ; $4c7d: $f8 $04
    db $fc                                        ; $4c7f: $fc
    inc b                                         ; $4c80: $04
    db $fc                                        ; $4c81: $fc
    ld [$08f8], sp                                ; $4c82: $08 $f8 $08
    ld hl, sp+$1c                                 ; $4c85: $f8 $1c

jr_024_4c87:
    db $f4                                        ; $4c87: $f4
    ld a, h                                       ; $4c88: $7c
    db $f4                                        ; $4c89: $f4
    ld hl, sp-$18                                 ; $4c8a: $f8 $e8
    ld [hl], b                                    ; $4c8c: $70
    ld [hl], b                                    ; $4c8d: $70
    nop                                           ; $4c8e: $00
    nop                                           ; $4c8f: $00
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    inc bc                                        ; $4c92: $03
    inc bc                                        ; $4c93: $03
    rlca                                          ; $4c94: $07
    inc b                                         ; $4c95: $04
    rlca                                          ; $4c96: $07
    inc b                                         ; $4c97: $04
    dec bc                                        ; $4c98: $0b
    rrca                                          ; $4c99: $0f
    db $10                                        ; $4c9a: $10
    rra                                           ; $4c9b: $1f
    inc d                                         ; $4c9c: $14
    dec de                                        ; $4c9d: $1b
    jr nz, jr_024_4cdf                            ; $4c9e: $20 $3f

    jr nz, @+$41                                  ; $4ca0: $20 $3f

    db $10                                        ; $4ca2: $10
    rra                                           ; $4ca3: $1f
    db $10                                        ; $4ca4: $10
    rra                                           ; $4ca5: $1f
    ld [$1e0f], sp                                ; $4ca6: $08 $0f $1e
    rla                                           ; $4ca9: $17
    rra                                           ; $4caa: $1f
    inc de                                        ; $4cab: $13
    ld c, $0e                                     ; $4cac: $0e $0e
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    nop                                           ; $4cb1: $00
    ret nz                                        ; $4cb2: $c0

    ret nz                                        ; $4cb3: $c0

    ldh [rNR41], a                                ; $4cb4: $e0 $20
    ldh [rNR41], a                                ; $4cb6: $e0 $20
    ret nc                                        ; $4cb8: $d0

    ldh a, [$08]                                  ; $4cb9: $f0 $08
    ld hl, sp+$08                                 ; $4cbb: $f8 $08
    ld hl, sp+$04                                 ; $4cbd: $f8 $04
    db $fc                                        ; $4cbf: $fc
    inc b                                         ; $4cc0: $04
    db $fc                                        ; $4cc1: $fc
    ld [$08f8], sp                                ; $4cc2: $08 $f8 $08
    ld hl, sp+$10                                 ; $4cc5: $f8 $10
    ldh a, [rSVBK]                                ; $4cc7: $f0 $70
    ldh a, [$f8]                                  ; $4cc9: $f0 $f8
    adc b                                         ; $4ccb: $88
    ld hl, sp-$08                                 ; $4ccc: $f8 $f8
    ld [hl], b                                    ; $4cce: $70
    ld [hl], b                                    ; $4ccf: $70
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    inc bc                                        ; $4cd4: $03
    inc bc                                        ; $4cd5: $03
    rlca                                          ; $4cd6: $07
    inc b                                         ; $4cd7: $04
    rlca                                          ; $4cd8: $07
    inc b                                         ; $4cd9: $04
    dec bc                                        ; $4cda: $0b
    rrca                                          ; $4cdb: $0f
    db $10                                        ; $4cdc: $10
    rra                                           ; $4cdd: $1f
    inc d                                         ; $4cde: $14

jr_024_4cdf:
    dec de                                        ; $4cdf: $1b
    jr nz, @+$41                                  ; $4ce0: $20 $3f

    jr nz, @+$41                                  ; $4ce2: $20 $3f

    db $10                                        ; $4ce4: $10
    rra                                           ; $4ce5: $1f
    jr c, jr_024_4d17                             ; $4ce6: $38 $2f

    ld a, $2f                                     ; $4ce8: $3e $2f
    rra                                           ; $4cea: $1f
    rla                                           ; $4ceb: $17
    ld c, $0e                                     ; $4cec: $0e $0e
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    ret nz                                        ; $4cf4: $c0

    ret nz                                        ; $4cf5: $c0

    ldh [rNR41], a                                ; $4cf6: $e0 $20
    ldh [rNR41], a                                ; $4cf8: $e0 $20
    ret nc                                        ; $4cfa: $d0

    ldh a, [$08]                                  ; $4cfb: $f0 $08
    ld hl, sp+$28                                 ; $4cfd: $f8 $28
    ret c                                         ; $4cff: $d8

    inc h                                         ; $4d00: $24
    call c, $dc24                                 ; $4d01: $dc $24 $dc
    ld [$18f8], sp                                ; $4d04: $08 $f8 $18
    ld hl, sp+$7c                                 ; $4d07: $f8 $7c
    db $e4                                        ; $4d09: $e4
    db $fc                                        ; $4d0a: $fc
    add h                                         ; $4d0b: $84
    ld hl, sp-$78                                 ; $4d0c: $f8 $88
    ld [hl], b                                    ; $4d0e: $70
    ld [hl], b                                    ; $4d0f: $70
    nop                                           ; $4d10: $00
    nop                                           ; $4d11: $00
    nop                                           ; $4d12: $00
    nop                                           ; $4d13: $00
    inc bc                                        ; $4d14: $03
    inc bc                                        ; $4d15: $03
    rlca                                          ; $4d16: $07

jr_024_4d17:
    inc b                                         ; $4d17: $04
    rlca                                          ; $4d18: $07
    inc b                                         ; $4d19: $04
    dec bc                                        ; $4d1a: $0b
    rrca                                          ; $4d1b: $0f
    db $10                                        ; $4d1c: $10
    rra                                           ; $4d1d: $1f
    ld d, $19                                     ; $4d1e: $16 $19
    ld h, $39                                     ; $4d20: $26 $39
    ld h, $39                                     ; $4d22: $26 $39
    db $10                                        ; $4d24: $10
    rra                                           ; $4d25: $1f
    ld c, $0f                                     ; $4d26: $0e $0f
    rra                                           ; $4d28: $1f
    ld de, $111f                                  ; $4d29: $11 $1f $11
    rra                                           ; $4d2c: $1f
    rra                                           ; $4d2d: $1f
    ld c, $0e                                     ; $4d2e: $0e $0e
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    ret nz                                        ; $4d34: $c0

    ret nz                                        ; $4d35: $c0

    ldh [rNR41], a                                ; $4d36: $e0 $20
    ldh [rNR41], a                                ; $4d38: $e0 $20
    ret nc                                        ; $4d3a: $d0

    ldh a, [$08]                                  ; $4d3b: $f0 $08
    ld hl, sp+$68                                 ; $4d3d: $f8 $68
    sbc b                                         ; $4d3f: $98
    ld h, h                                       ; $4d40: $64
    sbc h                                         ; $4d41: $9c
    ld h, h                                       ; $4d42: $64
    sbc h                                         ; $4d43: $9c
    ld [$10f8], sp                                ; $4d44: $08 $f8 $10
    ldh a, [$78]                                  ; $4d47: $f0 $78
    add sp, -$08                                  ; $4d49: $e8 $f8
    adc b                                         ; $4d4b: $88
    ld [hl], b                                    ; $4d4c: $70
    ld [hl], b                                    ; $4d4d: $70
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    inc bc                                        ; $4d54: $03
    inc bc                                        ; $4d55: $03
    rlca                                          ; $4d56: $07
    inc b                                         ; $4d57: $04
    rlca                                          ; $4d58: $07
    inc b                                         ; $4d59: $04
    dec bc                                        ; $4d5a: $0b
    rrca                                          ; $4d5b: $0f
    db $10                                        ; $4d5c: $10
    rra                                           ; $4d5d: $1f
    inc d                                         ; $4d5e: $14
    dec de                                        ; $4d5f: $1b
    inc h                                         ; $4d60: $24
    dec sp                                        ; $4d61: $3b
    inc h                                         ; $4d62: $24
    dec sp                                        ; $4d63: $3b
    db $10                                        ; $4d64: $10
    rra                                           ; $4d65: $1f
    jr c, jr_024_4d97                             ; $4d66: $38 $2f

    ld a, $3f                                     ; $4d68: $3e $3f
    rra                                           ; $4d6a: $1f
    rra                                           ; $4d6b: $1f
    inc c                                         ; $4d6c: $0c
    inc c                                         ; $4d6d: $0c
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    nop                                           ; $4d73: $00
    ret nz                                        ; $4d74: $c0

    ret nz                                        ; $4d75: $c0

    ldh [rNR41], a                                ; $4d76: $e0 $20
    ldh [rNR41], a                                ; $4d78: $e0 $20
    ret nc                                        ; $4d7a: $d0

    ldh a, [$08]                                  ; $4d7b: $f0 $08
    ld hl, sp+$08                                 ; $4d7d: $f8 $08
    ld hl, sp+$04                                 ; $4d7f: $f8 $04
    db $fc                                        ; $4d81: $fc
    inc b                                         ; $4d82: $04
    db $fc                                        ; $4d83: $fc
    ld [$18f8], sp                                ; $4d84: $08 $f8 $18
    ld hl, sp+$7c                                 ; $4d87: $f8 $7c
    db $e4                                        ; $4d89: $e4
    db $fc                                        ; $4d8a: $fc
    add h                                         ; $4d8b: $84
    ld hl, sp-$78                                 ; $4d8c: $f8 $88
    ld [hl], b                                    ; $4d8e: $70
    ld [hl], b                                    ; $4d8f: $70
    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    inc bc                                        ; $4d94: $03
    inc bc                                        ; $4d95: $03
    rlca                                          ; $4d96: $07

jr_024_4d97:
    inc b                                         ; $4d97: $04
    rlca                                          ; $4d98: $07
    inc b                                         ; $4d99: $04
    dec bc                                        ; $4d9a: $0b
    rrca                                          ; $4d9b: $0f
    db $10                                        ; $4d9c: $10
    rra                                           ; $4d9d: $1f
    inc d                                         ; $4d9e: $14
    dec de                                        ; $4d9f: $1b
    jr nz, jr_024_4de1                            ; $4da0: $20 $3f

    jr nz, jr_024_4de3                            ; $4da2: $20 $3f

    db $10                                        ; $4da4: $10
    rra                                           ; $4da5: $1f
    ld [$0e0f], sp                                ; $4da6: $08 $0f $0e
    rrca                                          ; $4da9: $0f
    rra                                           ; $4daa: $1f
    ld de, $1f1f                                  ; $4dab: $11 $1f $1f
    ld c, $0e                                     ; $4dae: $0e $0e
    nop                                           ; $4db0: $00
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    nop                                           ; $4db3: $00
    ret nz                                        ; $4db4: $c0

    ret nz                                        ; $4db5: $c0

    ldh [rNR41], a                                ; $4db6: $e0 $20
    ldh [rNR41], a                                ; $4db8: $e0 $20
    ret nc                                        ; $4dba: $d0

    ldh a, [$08]                                  ; $4dbb: $f0 $08
    ld hl, sp+$08                                 ; $4dbd: $f8 $08
    ld hl, sp+$04                                 ; $4dbf: $f8 $04
    db $fc                                        ; $4dc1: $fc
    inc b                                         ; $4dc2: $04
    db $fc                                        ; $4dc3: $fc
    ld [$10f8], sp                                ; $4dc4: $08 $f8 $10
    ldh a, [$78]                                  ; $4dc7: $f0 $78
    add sp, -$08                                  ; $4dc9: $e8 $f8
    ret z                                         ; $4dcb: $c8

    ld [hl], b                                    ; $4dcc: $70
    ld [hl], b                                    ; $4dcd: $70
    nop                                           ; $4dce: $00
    nop                                           ; $4dcf: $00
    nop                                           ; $4dd0: $00
    nop                                           ; $4dd1: $00
    ld bc, $0301                                  ; $4dd2: $01 $01 $03
    ld [bc], a                                    ; $4dd5: $02
    inc bc                                        ; $4dd6: $03
    ld [bc], a                                    ; $4dd7: $02
    dec b                                         ; $4dd8: $05
    rlca                                          ; $4dd9: $07
    ld [$0a0f], sp                                ; $4dda: $08 $0f $0a
    dec c                                         ; $4ddd: $0d
    db $10                                        ; $4dde: $10
    rra                                           ; $4ddf: $1f
    db $10                                        ; $4de0: $10

jr_024_4de1:
    rra                                           ; $4de1: $1f
    db $10                                        ; $4de2: $10

jr_024_4de3:
    rra                                           ; $4de3: $1f
    db $10                                        ; $4de4: $10
    rra                                           ; $4de5: $1f
    jr c, jr_024_4e17                             ; $4de6: $38 $2f

    ld a, $2f                                     ; $4de8: $3e $2f
    rra                                           ; $4dea: $1f
    rla                                           ; $4deb: $17
    ld c, $0e                                     ; $4dec: $0e $0e
    nop                                           ; $4dee: $00
    nop                                           ; $4def: $00
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00
    ldh [$e0], a                                  ; $4df2: $e0 $e0
    ldh a, [rNR10]                                ; $4df4: $f0 $10
    ldh a, [rNR10]                                ; $4df6: $f0 $10
    add sp, -$08                                  ; $4df8: $e8 $f8
    inc b                                         ; $4dfa: $04
    db $fc                                        ; $4dfb: $fc
    inc d                                         ; $4dfc: $14
    db $ec                                        ; $4dfd: $ec
    ld [de], a                                    ; $4dfe: $12
    xor $12                                       ; $4dff: $ee $12
    xor $08                                       ; $4e01: $ee $08
    ld hl, sp+$08                                 ; $4e03: $f8 $08
    ld hl, sp+$18                                 ; $4e05: $f8 $18
    ld hl, sp+$7c                                 ; $4e07: $f8 $7c
    db $e4                                        ; $4e09: $e4
    db $fc                                        ; $4e0a: $fc
    add h                                         ; $4e0b: $84
    ld hl, sp-$78                                 ; $4e0c: $f8 $88
    ld [hl], b                                    ; $4e0e: $70
    ld [hl], b                                    ; $4e0f: $70
    nop                                           ; $4e10: $00
    nop                                           ; $4e11: $00
    ld bc, $0301                                  ; $4e12: $01 $01 $03
    ld [bc], a                                    ; $4e15: $02
    inc bc                                        ; $4e16: $03

jr_024_4e17:
    ld [bc], a                                    ; $4e17: $02
    dec b                                         ; $4e18: $05
    rlca                                          ; $4e19: $07
    ld [$0b0f], sp                                ; $4e1a: $08 $0f $0b
    inc c                                         ; $4e1d: $0c
    inc de                                        ; $4e1e: $13
    inc e                                         ; $4e1f: $1c
    inc de                                        ; $4e20: $13
    inc e                                         ; $4e21: $1c
    db $10                                        ; $4e22: $10
    rra                                           ; $4e23: $1f
    db $10                                        ; $4e24: $10
    rra                                           ; $4e25: $1f
    ld c, $0f                                     ; $4e26: $0e $0f
    rra                                           ; $4e28: $1f
    ld de, $111f                                  ; $4e29: $11 $1f $11
    rra                                           ; $4e2c: $1f
    rra                                           ; $4e2d: $1f
    ld c, $0e                                     ; $4e2e: $0e $0e
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    ldh [$e0], a                                  ; $4e32: $e0 $e0
    ldh a, [rNR10]                                ; $4e34: $f0 $10
    ldh a, [rNR10]                                ; $4e36: $f0 $10
    add sp, -$08                                  ; $4e38: $e8 $f8
    inc b                                         ; $4e3a: $04
    db $fc                                        ; $4e3b: $fc
    inc [hl]                                      ; $4e3c: $34
    call z, $ce32                                 ; $4e3d: $cc $32 $ce
    ld [hl-], a                                   ; $4e40: $32
    adc $08                                       ; $4e41: $ce $08
    ld hl, sp+$08                                 ; $4e43: $f8 $08
    ld hl, sp+$10                                 ; $4e45: $f8 $10
    ldh a, [$78]                                  ; $4e47: $f0 $78
    add sp, -$08                                  ; $4e49: $e8 $f8
    adc b                                         ; $4e4b: $88
    ld [hl], b                                    ; $4e4c: $70
    ld [hl], b                                    ; $4e4d: $70
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    ld bc, $0301                                  ; $4e52: $01 $01 $03
    ld [bc], a                                    ; $4e55: $02
    inc bc                                        ; $4e56: $03
    ld [bc], a                                    ; $4e57: $02
    dec b                                         ; $4e58: $05
    rlca                                          ; $4e59: $07
    ld [$0a0f], sp                                ; $4e5a: $08 $0f $0a
    dec c                                         ; $4e5d: $0d
    ld [de], a                                    ; $4e5e: $12
    dec e                                         ; $4e5f: $1d
    ld [de], a                                    ; $4e60: $12
    dec e                                         ; $4e61: $1d
    db $10                                        ; $4e62: $10
    rra                                           ; $4e63: $1f
    db $10                                        ; $4e64: $10
    rra                                           ; $4e65: $1f
    jr c, jr_024_4e97                             ; $4e66: $38 $2f

    ld a, $3f                                     ; $4e68: $3e $3f
    rra                                           ; $4e6a: $1f
    rra                                           ; $4e6b: $1f
    inc c                                         ; $4e6c: $0c
    inc c                                         ; $4e6d: $0c
    nop                                           ; $4e6e: $00
    nop                                           ; $4e6f: $00
    nop                                           ; $4e70: $00
    nop                                           ; $4e71: $00
    ldh [$e0], a                                  ; $4e72: $e0 $e0
    ldh a, [rNR10]                                ; $4e74: $f0 $10
    ldh a, [rNR10]                                ; $4e76: $f0 $10
    add sp, -$08                                  ; $4e78: $e8 $f8
    inc b                                         ; $4e7a: $04
    db $fc                                        ; $4e7b: $fc
    inc b                                         ; $4e7c: $04
    db $fc                                        ; $4e7d: $fc
    ld [bc], a                                    ; $4e7e: $02
    cp $02                                        ; $4e7f: $fe $02
    cp $08                                        ; $4e81: $fe $08
    ld hl, sp+$08                                 ; $4e83: $f8 $08
    ld hl, sp+$18                                 ; $4e85: $f8 $18
    ld hl, sp+$7c                                 ; $4e87: $f8 $7c
    db $e4                                        ; $4e89: $e4
    db $fc                                        ; $4e8a: $fc
    add h                                         ; $4e8b: $84
    ld hl, sp-$78                                 ; $4e8c: $f8 $88
    ld [hl], b                                    ; $4e8e: $70
    ld [hl], b                                    ; $4e8f: $70
    nop                                           ; $4e90: $00
    nop                                           ; $4e91: $00
    ld bc, $0301                                  ; $4e92: $01 $01 $03
    ld [bc], a                                    ; $4e95: $02
    inc bc                                        ; $4e96: $03

jr_024_4e97:
    ld [bc], a                                    ; $4e97: $02
    dec b                                         ; $4e98: $05
    rlca                                          ; $4e99: $07
    ld [$0a0f], sp                                ; $4e9a: $08 $0f $0a
    dec c                                         ; $4e9d: $0d
    db $10                                        ; $4e9e: $10
    rra                                           ; $4e9f: $1f
    db $10                                        ; $4ea0: $10
    rra                                           ; $4ea1: $1f
    db $10                                        ; $4ea2: $10
    rra                                           ; $4ea3: $1f
    db $10                                        ; $4ea4: $10
    rra                                           ; $4ea5: $1f
    ld [$0e0f], sp                                ; $4ea6: $08 $0f $0e
    rrca                                          ; $4ea9: $0f
    rra                                           ; $4eaa: $1f
    ld de, $1f1f                                  ; $4eab: $11 $1f $1f
    ld c, $0e                                     ; $4eae: $0e $0e
    nop                                           ; $4eb0: $00
    nop                                           ; $4eb1: $00
    ldh [$e0], a                                  ; $4eb2: $e0 $e0
    ldh a, [rNR10]                                ; $4eb4: $f0 $10
    ldh a, [rNR10]                                ; $4eb6: $f0 $10
    add sp, -$08                                  ; $4eb8: $e8 $f8
    inc b                                         ; $4eba: $04
    db $fc                                        ; $4ebb: $fc
    inc b                                         ; $4ebc: $04
    db $fc                                        ; $4ebd: $fc
    ld [bc], a                                    ; $4ebe: $02
    cp $02                                        ; $4ebf: $fe $02
    cp $08                                        ; $4ec1: $fe $08
    ld hl, sp+$08                                 ; $4ec3: $f8 $08
    ld hl, sp+$10                                 ; $4ec5: $f8 $10
    ldh a, [$78]                                  ; $4ec7: $f0 $78
    add sp, -$08                                  ; $4ec9: $e8 $f8
    ret z                                         ; $4ecb: $c8

    ld [hl], b                                    ; $4ecc: $70
    ld [hl], b                                    ; $4ecd: $70
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    rlca                                          ; $4ed2: $07
    rlca                                          ; $4ed3: $07
    rrca                                          ; $4ed4: $0f
    ld [$080f], sp                                ; $4ed5: $08 $0f $08
    rla                                           ; $4ed8: $17
    rra                                           ; $4ed9: $1f
    jr nz, @+$41                                  ; $4eda: $20 $3f

    jr z, jr_024_4f15                             ; $4edc: $28 $37

    ld b, b                                       ; $4ede: $40
    ld a, a                                       ; $4edf: $7f
    ld b, b                                       ; $4ee0: $40
    ld a, a                                       ; $4ee1: $7f
    db $10                                        ; $4ee2: $10
    rra                                           ; $4ee3: $1f
    db $10                                        ; $4ee4: $10
    rra                                           ; $4ee5: $1f
    jr c, @+$31                                   ; $4ee6: $38 $2f

    ld a, $2f                                     ; $4ee8: $3e $2f
    rra                                           ; $4eea: $1f
    rla                                           ; $4eeb: $17
    ld c, $0e                                     ; $4eec: $0e $0e
    nop                                           ; $4eee: $00
    nop                                           ; $4eef: $00
    nop                                           ; $4ef0: $00
    nop                                           ; $4ef1: $00
    add b                                         ; $4ef2: $80
    add b                                         ; $4ef3: $80
    ret nz                                        ; $4ef4: $c0

    ld b, b                                       ; $4ef5: $40
    ret nz                                        ; $4ef6: $c0

    ld b, b                                       ; $4ef7: $40
    and b                                         ; $4ef8: $a0
    ldh [rNR10], a                                ; $4ef9: $e0 $10
    ldh a, [$50]                                  ; $4efb: $f0 $50
    or b                                          ; $4efd: $b0
    ld c, b                                       ; $4efe: $48
    cp b                                          ; $4eff: $b8
    ld c, b                                       ; $4f00: $48
    cp b                                          ; $4f01: $b8
    ld [$08f8], sp                                ; $4f02: $08 $f8 $08
    ld hl, sp+$18                                 ; $4f05: $f8 $18

jr_024_4f07:
    ld hl, sp+$7c                                 ; $4f07: $f8 $7c

jr_024_4f09:
    db $e4                                        ; $4f09: $e4
    db $fc                                        ; $4f0a: $fc
    add h                                         ; $4f0b: $84
    ld hl, sp-$78                                 ; $4f0c: $f8 $88
    ld [hl], b                                    ; $4f0e: $70
    ld [hl], b                                    ; $4f0f: $70
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    rlca                                          ; $4f12: $07
    rlca                                          ; $4f13: $07
    rrca                                          ; $4f14: $0f

jr_024_4f15:
    ld [$080f], sp                                ; $4f15: $08 $0f $08
    rla                                           ; $4f18: $17
    rra                                           ; $4f19: $1f
    jr nz, @+$41                                  ; $4f1a: $20 $3f

    inc l                                         ; $4f1c: $2c
    inc sp                                        ; $4f1d: $33
    ld c, h                                       ; $4f1e: $4c
    ld [hl], e                                    ; $4f1f: $73
    ld c, h                                       ; $4f20: $4c
    ld [hl], e                                    ; $4f21: $73
    db $10                                        ; $4f22: $10
    rra                                           ; $4f23: $1f
    db $10                                        ; $4f24: $10
    rra                                           ; $4f25: $1f
    ld c, $0f                                     ; $4f26: $0e $0f
    rra                                           ; $4f28: $1f
    ld de, $111f                                  ; $4f29: $11 $1f $11
    rra                                           ; $4f2c: $1f
    rra                                           ; $4f2d: $1f
    ld c, $0e                                     ; $4f2e: $0e $0e
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    add b                                         ; $4f32: $80
    add b                                         ; $4f33: $80
    ret nz                                        ; $4f34: $c0

    ld b, b                                       ; $4f35: $40
    ret nz                                        ; $4f36: $c0

    ld b, b                                       ; $4f37: $40
    and b                                         ; $4f38: $a0
    ldh [rNR10], a                                ; $4f39: $e0 $10
    ldh a, [$d0]                                  ; $4f3b: $f0 $d0
    jr nc, jr_024_4f07                            ; $4f3d: $30 $c8

    jr c, jr_024_4f09                             ; $4f3f: $38 $c8

    jr c, jr_024_4f4b                             ; $4f41: $38 $08

    ld hl, sp+$08                                 ; $4f43: $f8 $08
    ld hl, sp+$10                                 ; $4f45: $f8 $10
    ldh a, [$78]                                  ; $4f47: $f0 $78
    add sp, -$08                                  ; $4f49: $e8 $f8

jr_024_4f4b:
    adc b                                         ; $4f4b: $88
    ld [hl], b                                    ; $4f4c: $70
    ld [hl], b                                    ; $4f4d: $70
    nop                                           ; $4f4e: $00
    nop                                           ; $4f4f: $00
    nop                                           ; $4f50: $00
    nop                                           ; $4f51: $00
    rlca                                          ; $4f52: $07
    rlca                                          ; $4f53: $07
    rrca                                          ; $4f54: $0f
    ld [$080f], sp                                ; $4f55: $08 $0f $08
    rla                                           ; $4f58: $17
    rra                                           ; $4f59: $1f
    jr nz, @+$41                                  ; $4f5a: $20 $3f

    jr z, jr_024_4f95                             ; $4f5c: $28 $37

    ld c, b                                       ; $4f5e: $48
    ld [hl], a                                    ; $4f5f: $77
    ld c, b                                       ; $4f60: $48
    ld [hl], a                                    ; $4f61: $77
    db $10                                        ; $4f62: $10
    rra                                           ; $4f63: $1f
    db $10                                        ; $4f64: $10
    rra                                           ; $4f65: $1f
    jr c, @+$31                                   ; $4f66: $38 $2f

    ld a, $3f                                     ; $4f68: $3e $3f
    rra                                           ; $4f6a: $1f
    rra                                           ; $4f6b: $1f
    inc c                                         ; $4f6c: $0c
    inc c                                         ; $4f6d: $0c
    nop                                           ; $4f6e: $00
    nop                                           ; $4f6f: $00
    nop                                           ; $4f70: $00
    nop                                           ; $4f71: $00
    add b                                         ; $4f72: $80
    add b                                         ; $4f73: $80
    ret nz                                        ; $4f74: $c0

    ld b, b                                       ; $4f75: $40
    ret nz                                        ; $4f76: $c0

    ld b, b                                       ; $4f77: $40
    and b                                         ; $4f78: $a0
    ldh [rNR10], a                                ; $4f79: $e0 $10
    ldh a, [rNR10]                                ; $4f7b: $f0 $10
    ldh a, [$08]                                  ; $4f7d: $f0 $08
    ld hl, sp+$08                                 ; $4f7f: $f8 $08
    ld hl, sp+$08                                 ; $4f81: $f8 $08
    ld hl, sp+$08                                 ; $4f83: $f8 $08
    ld hl, sp+$18                                 ; $4f85: $f8 $18
    ld hl, sp+$7c                                 ; $4f87: $f8 $7c
    db $e4                                        ; $4f89: $e4
    db $fc                                        ; $4f8a: $fc
    add h                                         ; $4f8b: $84
    ld hl, sp-$78                                 ; $4f8c: $f8 $88
    ld [hl], b                                    ; $4f8e: $70
    ld [hl], b                                    ; $4f8f: $70
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    rlca                                          ; $4f92: $07
    rlca                                          ; $4f93: $07
    rrca                                          ; $4f94: $0f

jr_024_4f95:
    ld [$080f], sp                                ; $4f95: $08 $0f $08
    rla                                           ; $4f98: $17
    rra                                           ; $4f99: $1f
    jr nz, jr_024_4fdb                            ; $4f9a: $20 $3f

    jr z, jr_024_4fd5                             ; $4f9c: $28 $37

    ld b, b                                       ; $4f9e: $40
    ld a, a                                       ; $4f9f: $7f
    ld b, b                                       ; $4fa0: $40
    ld a, a                                       ; $4fa1: $7f
    db $10                                        ; $4fa2: $10
    rra                                           ; $4fa3: $1f
    db $10                                        ; $4fa4: $10
    rra                                           ; $4fa5: $1f
    ld [$0e0f], sp                                ; $4fa6: $08 $0f $0e
    rrca                                          ; $4fa9: $0f
    rra                                           ; $4faa: $1f
    ld de, $1f1f                                  ; $4fab: $11 $1f $1f
    ld c, $0e                                     ; $4fae: $0e $0e
    nop                                           ; $4fb0: $00
    nop                                           ; $4fb1: $00
    add b                                         ; $4fb2: $80
    add b                                         ; $4fb3: $80
    ret nz                                        ; $4fb4: $c0

    ld b, b                                       ; $4fb5: $40
    ret nz                                        ; $4fb6: $c0

    ld b, b                                       ; $4fb7: $40
    and b                                         ; $4fb8: $a0
    ldh [rNR10], a                                ; $4fb9: $e0 $10
    ldh a, [rNR10]                                ; $4fbb: $f0 $10
    ldh a, [$08]                                  ; $4fbd: $f0 $08
    ld hl, sp+$08                                 ; $4fbf: $f8 $08
    ld hl, sp+$08                                 ; $4fc1: $f8 $08
    ld hl, sp+$08                                 ; $4fc3: $f8 $08
    ld hl, sp+$10                                 ; $4fc5: $f8 $10
    ldh a, [$78]                                  ; $4fc7: $f0 $78
    add sp, -$08                                  ; $4fc9: $e8 $f8
    ret z                                         ; $4fcb: $c8

    ld [hl], b                                    ; $4fcc: $70
    ld [hl], b                                    ; $4fcd: $70
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    nop                                           ; $4fd3: $00
    inc bc                                        ; $4fd4: $03

jr_024_4fd5:
    inc bc                                        ; $4fd5: $03
    inc bc                                        ; $4fd6: $03
    nop                                           ; $4fd7: $00
    inc bc                                        ; $4fd8: $03
    nop                                           ; $4fd9: $00
    rlca                                          ; $4fda: $07

jr_024_4fdb:
    rlca                                          ; $4fdb: $07
    ld [$100f], sp                                ; $4fdc: $08 $0f $10
    rra                                           ; $4fdf: $1f
    db $10                                        ; $4fe0: $10
    rra                                           ; $4fe1: $1f
    ld [$1c0f], sp                                ; $4fe2: $08 $0f $1c
    rla                                           ; $4fe5: $17
    ld e, $17                                     ; $4fe6: $1e $17
    rrca                                          ; $4fe8: $0f
    dec bc                                        ; $4fe9: $0b
    ld b, $06                                     ; $4fea: $06 $06
    nop                                           ; $4fec: $00
    nop                                           ; $4fed: $00
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    ret nz                                        ; $4ff4: $c0

    ret nz                                        ; $4ff5: $c0

    ret nz                                        ; $4ff6: $c0

    nop                                           ; $4ff7: $00
    ret nz                                        ; $4ff8: $c0

    nop                                           ; $4ff9: $00
    ldh [$e0], a                                  ; $4ffa: $e0 $e0
    db $10                                        ; $4ffc: $10
    ldh a, [$08]                                  ; $4ffd: $f0 $08
    ld hl, sp+$08                                 ; $4fff: $f8 $08
    ld hl, sp+$10                                 ; $5001: $f8 $10
    ldh a, [$30]                                  ; $5003: $f0 $30
    ldh a, [$78]                                  ; $5005: $f0 $78
    ret z                                         ; $5007: $c8

    ld hl, sp-$78                                 ; $5008: $f8 $88
    ldh a, [$90]                                  ; $500a: $f0 $90
    ld h, b                                       ; $500c: $60
    ld h, b                                       ; $500d: $60
    nop                                           ; $500e: $00
    nop                                           ; $500f: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    nop                                           ; $5013: $00
    inc bc                                        ; $5014: $03
    inc bc                                        ; $5015: $03
    inc bc                                        ; $5016: $03
    nop                                           ; $5017: $00
    inc bc                                        ; $5018: $03
    nop                                           ; $5019: $00
    rlca                                          ; $501a: $07
    rlca                                          ; $501b: $07
    ld a, [bc]                                    ; $501c: $0a
    dec c                                         ; $501d: $0d
    ld [de], a                                    ; $501e: $12
    dec e                                         ; $501f: $1d
    ld [de], a                                    ; $5020: $12
    dec e                                         ; $5021: $1d
    ld [$060f], sp                                ; $5022: $08 $0f $06
    rlca                                          ; $5025: $07
    rrca                                          ; $5026: $0f
    add hl, bc                                    ; $5027: $09
    rrca                                          ; $5028: $0f
    add hl, bc                                    ; $5029: $09
    rrca                                          ; $502a: $0f
    rrca                                          ; $502b: $0f
    ld b, $06                                     ; $502c: $06 $06
    nop                                           ; $502e: $00
    nop                                           ; $502f: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    ret nz                                        ; $5034: $c0

    ret nz                                        ; $5035: $c0

    ret nz                                        ; $5036: $c0

    nop                                           ; $5037: $00
    ret nz                                        ; $5038: $c0

    nop                                           ; $5039: $00
    ldh [$e0], a                                  ; $503a: $e0 $e0
    ld d, b                                       ; $503c: $50
    or b                                          ; $503d: $b0
    ld c, b                                       ; $503e: $48
    cp b                                          ; $503f: $b8
    ld c, b                                       ; $5040: $48
    cp b                                          ; $5041: $b8
    db $10                                        ; $5042: $10
    ldh a, [rNR41]                                ; $5043: $f0 $20
    ldh [rSVBK], a                                ; $5045: $e0 $70
    ret nc                                        ; $5047: $d0

    ldh a, [$90]                                  ; $5048: $f0 $90
    ld h, b                                       ; $504a: $60
    ld h, b                                       ; $504b: $60
    nop                                           ; $504c: $00
    nop                                           ; $504d: $00
    nop                                           ; $504e: $00
    nop                                           ; $504f: $00
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    inc bc                                        ; $5054: $03
    inc bc                                        ; $5055: $03
    inc bc                                        ; $5056: $03
    nop                                           ; $5057: $00
    inc bc                                        ; $5058: $03
    nop                                           ; $5059: $00
    rlca                                          ; $505a: $07
    rlca                                          ; $505b: $07
    ld [$100f], sp                                ; $505c: $08 $0f $10
    rra                                           ; $505f: $1f
    db $10                                        ; $5060: $10
    rra                                           ; $5061: $1f
    ld [$1c0f], sp                                ; $5062: $08 $0f $1c
    rla                                           ; $5065: $17
    ld e, $1f                                     ; $5066: $1e $1f
    rrca                                          ; $5068: $0f
    rrca                                          ; $5069: $0f
    inc b                                         ; $506a: $04
    inc b                                         ; $506b: $04
    nop                                           ; $506c: $00
    nop                                           ; $506d: $00
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    ret nz                                        ; $5074: $c0

    ret nz                                        ; $5075: $c0

    ret nz                                        ; $5076: $c0

    nop                                           ; $5077: $00
    ret nz                                        ; $5078: $c0

    nop                                           ; $5079: $00
    ldh [$e0], a                                  ; $507a: $e0 $e0
    db $10                                        ; $507c: $10
    ldh a, [$08]                                  ; $507d: $f0 $08
    ld hl, sp+$08                                 ; $507f: $f8 $08
    ld hl, sp+$10                                 ; $5081: $f8 $10
    ldh a, [$30]                                  ; $5083: $f0 $30
    ldh a, [$78]                                  ; $5085: $f0 $78
    ret z                                         ; $5087: $c8

    ld hl, sp-$78                                 ; $5088: $f8 $88
    ldh a, [$90]                                  ; $508a: $f0 $90
    ld h, b                                       ; $508c: $60
    ld h, b                                       ; $508d: $60
    nop                                           ; $508e: $00
    nop                                           ; $508f: $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    inc bc                                        ; $5094: $03
    inc bc                                        ; $5095: $03
    inc bc                                        ; $5096: $03
    nop                                           ; $5097: $00
    inc bc                                        ; $5098: $03
    nop                                           ; $5099: $00
    rlca                                          ; $509a: $07
    rlca                                          ; $509b: $07
    ld [$100f], sp                                ; $509c: $08 $0f $10
    rra                                           ; $509f: $1f
    db $10                                        ; $50a0: $10
    rra                                           ; $50a1: $1f
    ld [$040f], sp                                ; $50a2: $08 $0f $04
    rlca                                          ; $50a5: $07
    ld b, $07                                     ; $50a6: $06 $07
    rrca                                          ; $50a8: $0f
    add hl, bc                                    ; $50a9: $09
    rrca                                          ; $50aa: $0f
    rrca                                          ; $50ab: $0f
    ld b, $06                                     ; $50ac: $06 $06
    nop                                           ; $50ae: $00
    nop                                           ; $50af: $00
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    nop                                           ; $50b3: $00
    ret nz                                        ; $50b4: $c0

    ret nz                                        ; $50b5: $c0

    ret nz                                        ; $50b6: $c0

    nop                                           ; $50b7: $00
    ret nz                                        ; $50b8: $c0

    nop                                           ; $50b9: $00
    ldh [$e0], a                                  ; $50ba: $e0 $e0
    db $10                                        ; $50bc: $10
    ldh a, [$08]                                  ; $50bd: $f0 $08
    ld hl, sp+$08                                 ; $50bf: $f8 $08
    ld hl, sp+$10                                 ; $50c1: $f8 $10
    ldh a, [rNR41]                                ; $50c3: $f0 $20
    ldh [rSVBK], a                                ; $50c5: $e0 $70
    ret nc                                        ; $50c7: $d0

    ldh a, [$d0]                                  ; $50c8: $f0 $d0
    ld h, b                                       ; $50ca: $60
    ld h, b                                       ; $50cb: $60
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    nop                                           ; $50ce: $00
    nop                                           ; $50cf: $00
    ld [c], a                                     ; $50d0: $e2
    ld d, b                                       ; $50d1: $50
    push hl                                       ; $50d2: $e5
    ld d, b                                       ; $50d3: $50
    db $eb                                        ; $50d4: $eb
    ld d, b                                       ; $50d5: $50
    xor $50                                       ; $50d6: $ee $50
    ld sp, hl                                     ; $50d8: $f9
    ld d, b                                       ; $50d9: $50
    nop                                           ; $50da: $00
    ld d, c                                       ; $50db: $51
    ld [$1c51], sp                                ; $50dc: $08 $51 $1c
    ld d, c                                       ; $50df: $51
    jr z, jr_024_5133                             ; $50e0: $28 $51

    nop                                           ; $50e2: $00
    rst $38                                       ; $50e3: $ff
    db $fd                                        ; $50e4: $fd
    nop                                           ; $50e5: $00
    ld e, $01                                     ; $50e6: $1e $01
    ld e, $ff                                     ; $50e8: $1e $ff
    nop                                           ; $50ea: $00
    ld [bc], a                                    ; $50eb: $02
    rst $38                                       ; $50ec: $ff
    db $fd                                        ; $50ed: $fd
    ld [bc], a                                    ; $50ee: $02
    inc c                                         ; $50ef: $0c
    inc bc                                        ; $50f0: $03
    inc c                                         ; $50f1: $0c
    inc b                                         ; $50f2: $04
    jr jr_024_50f7                                ; $50f3: $18 $02

    inc c                                         ; $50f5: $0c
    dec b                                         ; $50f6: $05

jr_024_50f7:
    inc c                                         ; $50f7: $0c
    db $fd                                        ; $50f8: $fd
    ld [bc], a                                    ; $50f9: $02
    jr @+$05                                      ; $50fa: $18 $03

    jr jr_024_5100                                ; $50fc: $18 $02

    jr @-$01                                      ; $50fe: $18 $fd

jr_024_5100:
    nop                                           ; $5100: $00
    ld a, [bc]                                    ; $5101: $0a
    ld b, $1e                                     ; $5102: $06 $1e
    nop                                           ; $5104: $00
    ld a, [bc]                                    ; $5105: $0a
    cp $01                                        ; $5106: $fe $01
    nop                                           ; $5108: $00
    ld a, [bc]                                    ; $5109: $0a
    rlca                                          ; $510a: $07
    ld a, [bc]                                    ; $510b: $0a
    nop                                           ; $510c: $00
    inc bc                                        ; $510d: $03
    ld [$000a], sp                                ; $510e: $08 $0a $00
    inc bc                                        ; $5111: $03
    rlca                                          ; $5112: $07
    ld a, [bc]                                    ; $5113: $0a
    nop                                           ; $5114: $00
    inc bc                                        ; $5115: $03
    ld [$000a], sp                                ; $5116: $08 $0a $00
    ld a, [bc]                                    ; $5119: $0a
    cp $01                                        ; $511a: $fe $01
    nop                                           ; $511c: $00
    ld a, [bc]                                    ; $511d: $0a
    add hl, bc                                    ; $511e: $09
    ld [$0800], sp                                ; $511f: $08 $00 $08
    add hl, bc                                    ; $5122: $09
    ld [$0a00], sp                                ; $5123: $08 $00 $0a
    cp $01                                        ; $5126: $fe $01
    ld [bc], a                                    ; $5128: $02
    ld [de], a                                    ; $5129: $12
    inc bc                                        ; $512a: $03
    ld [de], a                                    ; $512b: $12
    ld [bc], a                                    ; $512c: $02
    ld e, $05                                     ; $512d: $1e $05
    ld [de], a                                    ; $512f: $12
    db $fd                                        ; $5130: $fd
    ld b, $04                                     ; $5131: $06 $04

jr_024_5133:
    add hl, sp                                    ; $5133: $39
    ld d, c                                       ; $5134: $51
    ld d, b                                       ; $5135: $50
    ld d, a                                       ; $5136: $57
    add hl, sp                                    ; $5137: $39
    ld d, c                                       ; $5138: $51
    ld d, b                                       ; $5139: $50
    ld d, c                                       ; $513a: $51
    ld d, b                                       ; $513b: $50
    ld d, d                                       ; $513c: $52
    ld d, b                                       ; $513d: $50
    ld d, d                                       ; $513e: $52
    ld d, b                                       ; $513f: $50
    ld d, d                                       ; $5140: $52
    ld d, b                                       ; $5141: $50
    ld d, d                                       ; $5142: $52
    ld d, b                                       ; $5143: $50
    ld d, d                                       ; $5144: $52
    ld d, b                                       ; $5145: $50
    ld d, e                                       ; $5146: $53
    ld d, b                                       ; $5147: $50
    ld d, h                                       ; $5148: $54
    ld d, b                                       ; $5149: $50
    ld d, l                                       ; $514a: $55
    ld d, b                                       ; $514b: $50
    ld d, [hl]                                    ; $514c: $56
    nop                                           ; $514d: $00
    nop                                           ; $514e: $00
    nop                                           ; $514f: $00
    ld bc, $0201                                  ; $5150: $01 $01 $02
    inc bc                                        ; $5153: $03
    ld [bc], a                                    ; $5154: $02
    inc bc                                        ; $5155: $03
    inc b                                         ; $5156: $04
    rlca                                          ; $5157: $07
    inc e                                         ; $5158: $1c
    rra                                           ; $5159: $1f
    ld hl, $233f                                  ; $515a: $21 $3f $23
    ccf                                           ; $515d: $3f
    rra                                           ; $515e: $1f
    dec e                                         ; $515f: $1d
    rrca                                          ; $5160: $0f
    ld [$0607], sp                                ; $5161: $08 $07 $06

jr_024_5164:
    inc bc                                        ; $5164: $03
    inc bc                                        ; $5165: $03
    rlca                                          ; $5166: $07
    inc b                                         ; $5167: $04
    rlca                                          ; $5168: $07
    dec b                                         ; $5169: $05
    ld c, $0f                                     ; $516a: $0e $0f
    rrca                                          ; $516c: $0f
    dec bc                                        ; $516d: $0b
    ld b, $06                                     ; $516e: $06 $06
    ldh [$e0], a                                  ; $5170: $e0 $e0
    jr nc, jr_024_5164                            ; $5172: $30 $f0

    ld [hl], b                                    ; $5174: $70
    ret nc                                        ; $5175: $d0

    ld a, h                                       ; $5176: $7c
    db $fc                                        ; $5177: $fc
    add d                                         ; $5178: $82
    cp $fc                                        ; $5179: $fe $fc
    db $fc                                        ; $517b: $fc
    ldh a, [$30]                                  ; $517c: $f0 $30
    ld hl, sp+$28                                 ; $517e: $f8 $28
    db $fc                                        ; $5180: $fc
    inc b                                         ; $5181: $04
    db $fc                                        ; $5182: $fc
    inc h                                         ; $5183: $24
    ld hl, sp+$18                                 ; $5184: $f8 $18
    ldh a, [$f0]                                  ; $5186: $f0 $f0
    ldh [$a0], a                                  ; $5188: $e0 $a0
    ld [hl], b                                    ; $518a: $70
    ret nc                                        ; $518b: $d0

    ldh a, [$90]                                  ; $518c: $f0 $90
    ld h, b                                       ; $518e: $60
    ld h, b                                       ; $518f: $60
    rlca                                          ; $5190: $07
    rlca                                          ; $5191: $07
    add hl, bc                                    ; $5192: $09
    rrca                                          ; $5193: $0f

jr_024_5194:
    inc de                                        ; $5194: $13
    ld e, $27                                     ; $5195: $1e $27
    ccf                                           ; $5197: $3f
    jr z, jr_024_51d9                             ; $5198: $28 $3f

    ld d, a                                       ; $519a: $57
    ld a, a                                       ; $519b: $7f
    ld e, a                                       ; $519c: $5f
    ld a, d                                       ; $519d: $7a
    ccf                                           ; $519e: $3f
    dec hl                                        ; $519f: $2b
    ccf                                           ; $51a0: $3f
    inc h                                         ; $51a1: $24
    rra                                           ; $51a2: $1f
    inc d                                         ; $51a3: $14
    ccf                                           ; $51a4: $3f
    dec hl                                        ; $51a5: $2b
    ccf                                           ; $51a6: $3f
    ccf                                           ; $51a7: $3f
    inc c                                         ; $51a8: $0c
    rrca                                          ; $51a9: $0f
    rrca                                          ; $51aa: $0f
    dec bc                                        ; $51ab: $0b
    rrca                                          ; $51ac: $0f
    add hl, bc                                    ; $51ad: $09
    ld b, $06                                     ; $51ae: $06 $06
    ret nz                                        ; $51b0: $c0

    ret nz                                        ; $51b1: $c0

    jr nz, jr_024_5194                            ; $51b2: $20 $e0

    sub b                                         ; $51b4: $90
    ldh a, [$c8]                                  ; $51b5: $f0 $c8
    ld hl, sp+$28                                 ; $51b7: $f8 $28
    ld hl, sp-$2c                                 ; $51b9: $f8 $d4
    db $fc                                        ; $51bb: $fc
    db $f4                                        ; $51bc: $f4
    cp h                                          ; $51bd: $bc
    ld hl, sp-$58                                 ; $51be: $f8 $a8
    ld hl, sp+$48                                 ; $51c0: $f8 $48
    ldh a, [$50]                                  ; $51c2: $f0 $50
    ldh a, [$b0]                                  ; $51c4: $f0 $b0
    ld hl, sp-$18                                 ; $51c6: $f8 $e8
    ld a, b                                       ; $51c8: $78
    add sp, -$10                                  ; $51c9: $e8 $f0
    or b                                          ; $51cb: $b0
    ret nz                                        ; $51cc: $c0

    ret nz                                        ; $51cd: $c0

    nop                                           ; $51ce: $00
    nop                                           ; $51cf: $00
    rlca                                          ; $51d0: $07
    rlca                                          ; $51d1: $07
    inc c                                         ; $51d2: $0c
    rrca                                          ; $51d3: $0f
    ld c, $0b                                     ; $51d4: $0e $0b
    ld a, $3f                                     ; $51d6: $3e $3f

jr_024_51d8:
    ld b, c                                       ; $51d8: $41

jr_024_51d9:
    ld a, a                                       ; $51d9: $7f
    ccf                                           ; $51da: $3f
    ccf                                           ; $51db: $3f
    rrca                                          ; $51dc: $0f
    inc c                                         ; $51dd: $0c
    rra                                           ; $51de: $1f
    inc d                                         ; $51df: $14
    ccf                                           ; $51e0: $3f
    jr nz, jr_024_5222                            ; $51e1: $20 $3f

    inc h                                         ; $51e3: $24
    rra                                           ; $51e4: $1f
    add hl, de                                    ; $51e5: $19
    rlca                                          ; $51e6: $07
    ld b, $0f                                     ; $51e7: $06 $0f
    add hl, bc                                    ; $51e9: $09
    ld c, $0f                                     ; $51ea: $0e $0f
    rrca                                          ; $51ec: $0f
    dec bc                                        ; $51ed: $0b
    ld b, $06                                     ; $51ee: $06 $06
    add b                                         ; $51f0: $80
    add b                                         ; $51f1: $80

jr_024_51f2:
    ld b, b                                       ; $51f2: $40
    ret nz                                        ; $51f3: $c0

    ld b, b                                       ; $51f4: $40
    ret nz                                        ; $51f5: $c0

    jr nz, jr_024_51d8                            ; $51f6: $20 $e0

    jr c, jr_024_51f2                             ; $51f8: $38 $f8

    add h                                         ; $51fa: $84
    db $fc                                        ; $51fb: $fc
    call nz, $f8fc                                ; $51fc: $c4 $fc $f8
    cp b                                          ; $51ff: $b8
    ldh a, [rNR10]                                ; $5200: $f0 $10
    ldh [$60], a                                  ; $5202: $e0 $60
    ldh a, [$f0]                                  ; $5204: $f0 $f0
    ldh a, [$b0]                                  ; $5206: $f0 $b0
    ldh [$e0], a                                  ; $5208: $e0 $e0
    ld [hl], b                                    ; $520a: $70
    ret nc                                        ; $520b: $d0

    ldh a, [$90]                                  ; $520c: $f0 $90
    ld h, b                                       ; $520e: $60
    ld h, b                                       ; $520f: $60
    rlca                                          ; $5210: $07
    rlca                                          ; $5211: $07
    ld [$100f], sp                                ; $5212: $08 $0f $10
    rra                                           ; $5215: $1f
    jr nz, jr_024_5257                            ; $5216: $20 $3f

    jr nz, jr_024_5259                            ; $5218: $20 $3f

    ld b, e                                       ; $521a: $43
    ld a, a                                       ; $521b: $7f
    ld b, b                                       ; $521c: $40
    ld a, a                                       ; $521d: $7f
    jr nc, jr_024_525f                            ; $521e: $30 $3f

    jr c, @+$31                                   ; $5220: $38 $2f

jr_024_5222:
    rra                                           ; $5222: $1f
    rra                                           ; $5223: $1f
    ccf                                           ; $5224: $3f
    inc h                                         ; $5225: $24
    ccf                                           ; $5226: $3f
    ccf                                           ; $5227: $3f
    inc c                                         ; $5228: $0c
    rrca                                          ; $5229: $0f

jr_024_522a:
    rrca                                          ; $522a: $0f
    dec bc                                        ; $522b: $0b
    rrca                                          ; $522c: $0f
    add hl, bc                                    ; $522d: $09
    ld b, $06                                     ; $522e: $06 $06
    ret nz                                        ; $5230: $c0

    ret nz                                        ; $5231: $c0

    jr nz, @-$1e                                  ; $5232: $20 $e0

    db $10                                        ; $5234: $10
    ldh a, [$08]                                  ; $5235: $f0 $08
    ld hl, sp+$08                                 ; $5237: $f8 $08
    ld hl, sp-$7c                                 ; $5239: $f8 $84
    db $fc                                        ; $523b: $fc
    inc b                                         ; $523c: $04
    db $fc                                        ; $523d: $fc
    jr @-$06                                      ; $523e: $18 $f8

    jr c, jr_024_522a                             ; $5240: $38 $e8

    ldh a, [$f0]                                  ; $5242: $f0 $f0
    ldh a, [$50]                                  ; $5244: $f0 $50
    ld hl, sp-$18                                 ; $5246: $f8 $e8
    ld a, b                                       ; $5248: $78
    add sp, -$10                                  ; $5249: $e8 $f0
    or b                                          ; $524b: $b0
    ret nz                                        ; $524c: $c0

    ret nz                                        ; $524d: $c0

    nop                                           ; $524e: $00
    nop                                           ; $524f: $00
    ld bc, $0201                                  ; $5250: $01 $01 $02
    inc bc                                        ; $5253: $03
    ld [bc], a                                    ; $5254: $02
    inc bc                                        ; $5255: $03
    inc b                                         ; $5256: $04

jr_024_5257:
    rlca                                          ; $5257: $07
    inc e                                         ; $5258: $1c

jr_024_5259:
    rra                                           ; $5259: $1f
    ld hl, $233f                                  ; $525a: $21 $3f $23
    ccf                                           ; $525d: $3f
    rra                                           ; $525e: $1f

jr_024_525f:
    dec e                                         ; $525f: $1d
    rrca                                          ; $5260: $0f
    ld [$0607], sp                                ; $5261: $08 $07 $06

jr_024_5264:
    rrca                                          ; $5264: $0f
    rrca                                          ; $5265: $0f
    rrca                                          ; $5266: $0f
    dec c                                         ; $5267: $0d
    rlca                                          ; $5268: $07
    rlca                                          ; $5269: $07
    ld c, $0b                                     ; $526a: $0e $0b
    rrca                                          ; $526c: $0f
    add hl, bc                                    ; $526d: $09
    ld b, $06                                     ; $526e: $06 $06
    ldh [$e0], a                                  ; $5270: $e0 $e0
    jr nc, jr_024_5264                            ; $5272: $30 $f0

    ld [hl], b                                    ; $5274: $70
    ret nc                                        ; $5275: $d0

    ld a, h                                       ; $5276: $7c
    db $fc                                        ; $5277: $fc
    add d                                         ; $5278: $82
    cp $fc                                        ; $5279: $fe $fc
    db $fc                                        ; $527b: $fc
    ldh a, [$30]                                  ; $527c: $f0 $30
    ld hl, sp+$28                                 ; $527e: $f8 $28
    db $fc                                        ; $5280: $fc
    inc b                                         ; $5281: $04
    db $fc                                        ; $5282: $fc
    inc h                                         ; $5283: $24
    ld hl, sp-$68                                 ; $5284: $f8 $98
    ldh [$60], a                                  ; $5286: $e0 $60
    ldh a, [$90]                                  ; $5288: $f0 $90
    ld [hl], b                                    ; $528a: $70
    ldh a, [$f0]                                  ; $528b: $f0 $f0
    ret nc                                        ; $528d: $d0

    ld h, b                                       ; $528e: $60
    ld h, b                                       ; $528f: $60
    rlca                                          ; $5290: $07
    rlca                                          ; $5291: $07
    add hl, bc                                    ; $5292: $09
    rrca                                          ; $5293: $0f

jr_024_5294:
    inc de                                        ; $5294: $13
    ld e, $27                                     ; $5295: $1e $27
    ccf                                           ; $5297: $3f
    jr z, jr_024_52d9                             ; $5298: $28 $3f

    ld d, a                                       ; $529a: $57
    ld a, a                                       ; $529b: $7f
    ld e, a                                       ; $529c: $5f
    ld a, d                                       ; $529d: $7a
    ccf                                           ; $529e: $3f
    dec hl                                        ; $529f: $2b
    ccf                                           ; $52a0: $3f
    inc h                                         ; $52a1: $24
    rra                                           ; $52a2: $1f
    inc d                                         ; $52a3: $14
    rra                                           ; $52a4: $1f
    dec de                                        ; $52a5: $1b
    ccf                                           ; $52a6: $3f
    cpl                                           ; $52a7: $2f
    inc a                                         ; $52a8: $3c
    cpl                                           ; $52a9: $2f
    rra                                           ; $52aa: $1f
    dec de                                        ; $52ab: $1b
    rlca                                          ; $52ac: $07
    rlca                                          ; $52ad: $07
    nop                                           ; $52ae: $00
    nop                                           ; $52af: $00
    ret nz                                        ; $52b0: $c0

    ret nz                                        ; $52b1: $c0

    jr nz, jr_024_5294                            ; $52b2: $20 $e0

    sub b                                         ; $52b4: $90
    ldh a, [$c8]                                  ; $52b5: $f0 $c8
    ld hl, sp+$28                                 ; $52b7: $f8 $28
    ld hl, sp-$2c                                 ; $52b9: $f8 $d4
    db $fc                                        ; $52bb: $fc
    db $f4                                        ; $52bc: $f4
    cp h                                          ; $52bd: $bc
    ld hl, sp-$58                                 ; $52be: $f8 $a8
    ld hl, sp+$48                                 ; $52c0: $f8 $48
    ldh a, [$50]                                  ; $52c2: $f0 $50
    ld hl, sp-$58                                 ; $52c4: $f8 $a8
    ld hl, sp-$08                                 ; $52c6: $f8 $f8
    ld h, b                                       ; $52c8: $60
    ldh [$e0], a                                  ; $52c9: $e0 $e0
    and b                                         ; $52cb: $a0
    ldh [rNR41], a                                ; $52cc: $e0 $20
    ret nz                                        ; $52ce: $c0

    ret nz                                        ; $52cf: $c0

    rlca                                          ; $52d0: $07
    rlca                                          ; $52d1: $07
    inc c                                         ; $52d2: $0c
    rrca                                          ; $52d3: $0f
    ld c, $0b                                     ; $52d4: $0e $0b
    ld a, $3f                                     ; $52d6: $3e $3f

jr_024_52d8:
    ld b, c                                       ; $52d8: $41

jr_024_52d9:
    ld a, a                                       ; $52d9: $7f
    ccf                                           ; $52da: $3f
    ccf                                           ; $52db: $3f
    rrca                                          ; $52dc: $0f
    inc c                                         ; $52dd: $0c
    rra                                           ; $52de: $1f
    inc d                                         ; $52df: $14
    ccf                                           ; $52e0: $3f
    jr nz, jr_024_5322                            ; $52e1: $20 $3f

    inc h                                         ; $52e3: $24
    rra                                           ; $52e4: $1f
    jr jr_024_52f6                                ; $52e5: $18 $0f

    rrca                                          ; $52e7: $0f
    rlca                                          ; $52e8: $07
    dec b                                         ; $52e9: $05
    ld c, $0b                                     ; $52ea: $0e $0b
    rrca                                          ; $52ec: $0f
    add hl, bc                                    ; $52ed: $09
    ld b, $06                                     ; $52ee: $06 $06
    add b                                         ; $52f0: $80
    add b                                         ; $52f1: $80

jr_024_52f2:
    ld b, b                                       ; $52f2: $40
    ret nz                                        ; $52f3: $c0

    ld b, b                                       ; $52f4: $40
    ret nz                                        ; $52f5: $c0

jr_024_52f6:
    jr nz, jr_024_52d8                            ; $52f6: $20 $e0

    jr c, jr_024_52f2                             ; $52f8: $38 $f8

    add h                                         ; $52fa: $84
    db $fc                                        ; $52fb: $fc
    call nz, $f8fc                                ; $52fc: $c4 $fc $f8
    cp b                                          ; $52ff: $b8
    ldh a, [rNR10]                                ; $5300: $f0 $10
    ldh [$60], a                                  ; $5302: $e0 $60
    ret nz                                        ; $5304: $c0

    ret nz                                        ; $5305: $c0

    ldh [rNR41], a                                ; $5306: $e0 $20
    ldh [$a0], a                                  ; $5308: $e0 $a0
    ld [hl], b                                    ; $530a: $70
    ldh a, [$f0]                                  ; $530b: $f0 $f0
    ret nc                                        ; $530d: $d0

    ld h, b                                       ; $530e: $60
    ld h, b                                       ; $530f: $60
    rlca                                          ; $5310: $07
    rlca                                          ; $5311: $07
    ld [$100f], sp                                ; $5312: $08 $0f $10
    rra                                           ; $5315: $1f
    jr nz, jr_024_5357                            ; $5316: $20 $3f

    jr nz, jr_024_5359                            ; $5318: $20 $3f

    ld b, e                                       ; $531a: $43
    ld a, a                                       ; $531b: $7f
    ld b, b                                       ; $531c: $40
    ld a, a                                       ; $531d: $7f
    jr nc, jr_024_535f                            ; $531e: $30 $3f

    jr c, jr_024_5351                             ; $5320: $38 $2f

jr_024_5322:
    rra                                           ; $5322: $1f
    rra                                           ; $5323: $1f
    rra                                           ; $5324: $1f
    inc d                                         ; $5325: $14
    ccf                                           ; $5326: $3f
    cpl                                           ; $5327: $2f
    inc a                                         ; $5328: $3c
    cpl                                           ; $5329: $2f

jr_024_532a:
    rra                                           ; $532a: $1f
    dec de                                        ; $532b: $1b
    rlca                                          ; $532c: $07
    rlca                                          ; $532d: $07
    nop                                           ; $532e: $00
    nop                                           ; $532f: $00
    ret nz                                        ; $5330: $c0

    ret nz                                        ; $5331: $c0

    jr nz, @-$1e                                  ; $5332: $20 $e0

    db $10                                        ; $5334: $10
    ldh a, [$08]                                  ; $5335: $f0 $08
    ld hl, sp+$08                                 ; $5337: $f8 $08
    ld hl, sp-$7c                                 ; $5339: $f8 $84
    db $fc                                        ; $533b: $fc
    inc b                                         ; $533c: $04
    db $fc                                        ; $533d: $fc
    jr @-$06                                      ; $533e: $18 $f8

    jr c, jr_024_532a                             ; $5340: $38 $e8

    ldh a, [$f0]                                  ; $5342: $f0 $f0
    ld hl, sp+$48                                 ; $5344: $f8 $48
    ld hl, sp-$08                                 ; $5346: $f8 $f8
    ld h, b                                       ; $5348: $60
    ldh [$e0], a                                  ; $5349: $e0 $e0
    and b                                         ; $534b: $a0
    ldh [rNR41], a                                ; $534c: $e0 $20
    ret nz                                        ; $534e: $c0

    ret nz                                        ; $534f: $c0

    nop                                           ; $5350: $00

jr_024_5351:
    nop                                           ; $5351: $00
    ld bc, $0201                                  ; $5352: $01 $01 $02
    inc bc                                        ; $5355: $03
    ld [bc], a                                    ; $5356: $02

jr_024_5357:
    inc bc                                        ; $5357: $03
    inc b                                         ; $5358: $04

jr_024_5359:
    rlca                                          ; $5359: $07
    inc e                                         ; $535a: $1c
    rra                                           ; $535b: $1f
    ld hl, $233f                                  ; $535c: $21 $3f $23

jr_024_535f:
    ccf                                           ; $535f: $3f
    rra                                           ; $5360: $1f
    dec e                                         ; $5361: $1d
    rrca                                          ; $5362: $0f
    ld [$0303], sp                                ; $5363: $08 $03 $03

jr_024_5366:
    rlca                                          ; $5366: $07
    inc b                                         ; $5367: $04
    rlca                                          ; $5368: $07
    dec b                                         ; $5369: $05
    ld c, $0f                                     ; $536a: $0e $0f
    rrca                                          ; $536c: $0f
    dec bc                                        ; $536d: $0b
    ld b, $06                                     ; $536e: $06 $06
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    ldh [$e0], a                                  ; $5372: $e0 $e0
    jr nc, jr_024_5366                            ; $5374: $30 $f0

    ld [hl], b                                    ; $5376: $70
    ret nc                                        ; $5377: $d0

    ld a, h                                       ; $5378: $7c
    db $fc                                        ; $5379: $fc
    add d                                         ; $537a: $82
    cp $fc                                        ; $537b: $fe $fc
    db $fc                                        ; $537d: $fc
    ldh a, [$30]                                  ; $537e: $f0 $30
    ld hl, sp+$28                                 ; $5380: $f8 $28
    db $fc                                        ; $5382: $fc
    inc b                                         ; $5383: $04
    ld hl, sp+$18                                 ; $5384: $f8 $18
    ldh a, [$f0]                                  ; $5386: $f0 $f0
    ldh [$a0], a                                  ; $5388: $e0 $a0
    ld [hl], b                                    ; $538a: $70
    ret nc                                        ; $538b: $d0

    ldh a, [$90]                                  ; $538c: $f0 $90
    ld h, b                                       ; $538e: $60
    ld h, b                                       ; $538f: $60
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    rlca                                          ; $5392: $07
    rlca                                          ; $5393: $07
    add hl, bc                                    ; $5394: $09
    rrca                                          ; $5395: $0f

jr_024_5396:
    inc de                                        ; $5396: $13
    ld e, $27                                     ; $5397: $1e $27
    ccf                                           ; $5399: $3f
    jr z, jr_024_53db                             ; $539a: $28 $3f

    ld d, a                                       ; $539c: $57
    ld a, a                                       ; $539d: $7f
    ld e, a                                       ; $539e: $5f
    ld a, d                                       ; $539f: $7a
    ccf                                           ; $53a0: $3f
    dec hl                                        ; $53a1: $2b
    ccf                                           ; $53a2: $3f
    inc h                                         ; $53a3: $24
    ccf                                           ; $53a4: $3f
    dec hl                                        ; $53a5: $2b
    ccf                                           ; $53a6: $3f
    ccf                                           ; $53a7: $3f
    inc c                                         ; $53a8: $0c
    rrca                                          ; $53a9: $0f
    rrca                                          ; $53aa: $0f
    dec bc                                        ; $53ab: $0b
    rrca                                          ; $53ac: $0f
    add hl, bc                                    ; $53ad: $09
    ld b, $06                                     ; $53ae: $06 $06
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    ret nz                                        ; $53b2: $c0

    ret nz                                        ; $53b3: $c0

    jr nz, jr_024_5396                            ; $53b4: $20 $e0

    sub b                                         ; $53b6: $90
    ldh a, [$c8]                                  ; $53b7: $f0 $c8
    ld hl, sp+$28                                 ; $53b9: $f8 $28
    ld hl, sp-$2c                                 ; $53bb: $f8 $d4
    db $fc                                        ; $53bd: $fc
    db $f4                                        ; $53be: $f4
    cp h                                          ; $53bf: $bc
    ld hl, sp-$58                                 ; $53c0: $f8 $a8
    ld hl, sp+$48                                 ; $53c2: $f8 $48
    ldh a, [$b0]                                  ; $53c4: $f0 $b0
    ld hl, sp-$18                                 ; $53c6: $f8 $e8
    ld a, b                                       ; $53c8: $78
    add sp, -$10                                  ; $53c9: $e8 $f0
    or b                                          ; $53cb: $b0
    ret nz                                        ; $53cc: $c0

    ret nz                                        ; $53cd: $c0

    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    rlca                                          ; $53d2: $07
    rlca                                          ; $53d3: $07
    inc c                                         ; $53d4: $0c
    rrca                                          ; $53d5: $0f
    ld c, $0b                                     ; $53d6: $0e $0b
    ld a, $3f                                     ; $53d8: $3e $3f

jr_024_53da:
    ld b, c                                       ; $53da: $41

jr_024_53db:
    ld a, a                                       ; $53db: $7f
    ccf                                           ; $53dc: $3f
    ccf                                           ; $53dd: $3f
    rrca                                          ; $53de: $0f
    inc c                                         ; $53df: $0c
    rra                                           ; $53e0: $1f
    inc d                                         ; $53e1: $14
    ccf                                           ; $53e2: $3f
    jr nz, jr_024_5404                            ; $53e3: $20 $1f

    add hl, de                                    ; $53e5: $19
    rlca                                          ; $53e6: $07
    ld b, $0f                                     ; $53e7: $06 $0f
    add hl, bc                                    ; $53e9: $09
    ld c, $0f                                     ; $53ea: $0e $0f
    rrca                                          ; $53ec: $0f
    dec bc                                        ; $53ed: $0b
    ld b, $06                                     ; $53ee: $06 $06
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    add b                                         ; $53f2: $80
    add b                                         ; $53f3: $80

jr_024_53f4:
    ld b, b                                       ; $53f4: $40
    ret nz                                        ; $53f5: $c0

    ld b, b                                       ; $53f6: $40
    ret nz                                        ; $53f7: $c0

    jr nz, jr_024_53da                            ; $53f8: $20 $e0

    jr c, jr_024_53f4                             ; $53fa: $38 $f8

    add h                                         ; $53fc: $84
    db $fc                                        ; $53fd: $fc
    call nz, $f8fc                                ; $53fe: $c4 $fc $f8
    cp b                                          ; $5401: $b8
    ldh a, [rNR10]                                ; $5402: $f0 $10

jr_024_5404:
    ldh a, [$f0]                                  ; $5404: $f0 $f0
    ldh a, [$b0]                                  ; $5406: $f0 $b0
    ldh [$e0], a                                  ; $5408: $e0 $e0
    ld [hl], b                                    ; $540a: $70
    ret nc                                        ; $540b: $d0

    ldh a, [$90]                                  ; $540c: $f0 $90
    ld h, b                                       ; $540e: $60
    ld h, b                                       ; $540f: $60
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    rlca                                          ; $5412: $07
    rlca                                          ; $5413: $07
    ld [$100f], sp                                ; $5414: $08 $0f $10
    rra                                           ; $5417: $1f
    jr nz, @+$41                                  ; $5418: $20 $3f

    jr nz, jr_024_545b                            ; $541a: $20 $3f

    ld b, e                                       ; $541c: $43
    ld a, a                                       ; $541d: $7f
    ld b, b                                       ; $541e: $40
    ld a, a                                       ; $541f: $7f
    jr nc, jr_024_5461                            ; $5420: $30 $3f

    jr c, @+$31                                   ; $5422: $38 $2f

    ccf                                           ; $5424: $3f
    inc h                                         ; $5425: $24
    ccf                                           ; $5426: $3f
    ccf                                           ; $5427: $3f
    inc c                                         ; $5428: $0c
    rrca                                          ; $5429: $0f
    rrca                                          ; $542a: $0f
    dec bc                                        ; $542b: $0b

jr_024_542c:
    rrca                                          ; $542c: $0f
    add hl, bc                                    ; $542d: $09
    ld b, $06                                     ; $542e: $06 $06
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    ret nz                                        ; $5432: $c0

    ret nz                                        ; $5433: $c0

    jr nz, @-$1e                                  ; $5434: $20 $e0

    db $10                                        ; $5436: $10
    ldh a, [$08]                                  ; $5437: $f0 $08
    ld hl, sp+$08                                 ; $5439: $f8 $08
    ld hl, sp-$7c                                 ; $543b: $f8 $84
    db $fc                                        ; $543d: $fc
    inc b                                         ; $543e: $04
    db $fc                                        ; $543f: $fc
    jr @-$06                                      ; $5440: $18 $f8

    jr c, jr_024_542c                             ; $5442: $38 $e8

    ldh a, [$50]                                  ; $5444: $f0 $50
    ld hl, sp-$18                                 ; $5446: $f8 $e8
    ld a, b                                       ; $5448: $78
    add sp, -$10                                  ; $5449: $e8 $f0
    or b                                          ; $544b: $b0
    ret nz                                        ; $544c: $c0

    ret nz                                        ; $544d: $c0

    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    ld bc, $0101                                  ; $5452: $01 $01 $01
    ld bc, $0302                                  ; $5455: $01 $02 $03
    ld c, $0f                                     ; $5458: $0e $0f
    db $10                                        ; $545a: $10

jr_024_545b:
    rra                                           ; $545b: $1f
    ld de, $0f1f                                  ; $545c: $11 $1f $0f
    ld c, $07                                     ; $545f: $0e $07

jr_024_5461:
    inc b                                         ; $5461: $04
    rlca                                          ; $5462: $07
    ld b, $03                                     ; $5463: $06 $03
    inc bc                                        ; $5465: $03
    rlca                                          ; $5466: $07
    inc b                                         ; $5467: $04
    rlca                                          ; $5468: $07
    dec b                                         ; $5469: $05
    ld c, $0f                                     ; $546a: $0e $0f

jr_024_546c:
    rrca                                          ; $546c: $0f
    dec bc                                        ; $546d: $0b
    ld b, $06                                     ; $546e: $06 $06
    ldh a, [$f0]                                  ; $5470: $f0 $f0
    jr jr_024_546c                                ; $5472: $18 $f8

    jr c, @-$16                                   ; $5474: $38 $e8

    ld a, $fe                                     ; $5476: $3e $fe
    ld b, c                                       ; $5478: $41
    rst $38                                       ; $5479: $ff
    cp $fe                                        ; $547a: $fe $fe
    ld hl, sp-$68                                 ; $547c: $f8 $98
    db $fc                                        ; $547e: $fc
    sub h                                         ; $547f: $94
    cp $02                                        ; $5480: $fe $02
    db $fc                                        ; $5482: $fc
    inc h                                         ; $5483: $24
    ld hl, sp+$18                                 ; $5484: $f8 $18
    ldh a, [$f0]                                  ; $5486: $f0 $f0
    ldh [$a0], a                                  ; $5488: $e0 $a0
    ld [hl], b                                    ; $548a: $70
    ret nc                                        ; $548b: $d0

    ldh a, [$90]                                  ; $548c: $f0 $90
    ld h, b                                       ; $548e: $60
    ld h, b                                       ; $548f: $60
    inc bc                                        ; $5490: $03
    inc bc                                        ; $5491: $03
    inc b                                         ; $5492: $04
    rlca                                          ; $5493: $07
    add hl, bc                                    ; $5494: $09
    rrca                                          ; $5495: $0f
    inc de                                        ; $5496: $13
    rra                                           ; $5497: $1f
    inc d                                         ; $5498: $14
    rra                                           ; $5499: $1f
    dec hl                                        ; $549a: $2b
    ccf                                           ; $549b: $3f
    cpl                                           ; $549c: $2f
    dec a                                         ; $549d: $3d
    rra                                           ; $549e: $1f
    dec d                                         ; $549f: $15
    rra                                           ; $54a0: $1f
    ld [de], a                                    ; $54a1: $12
    rra                                           ; $54a2: $1f
    inc d                                         ; $54a3: $14
    ccf                                           ; $54a4: $3f
    dec hl                                        ; $54a5: $2b
    ccf                                           ; $54a6: $3f
    ccf                                           ; $54a7: $3f
    inc c                                         ; $54a8: $0c
    rrca                                          ; $54a9: $0f
    rrca                                          ; $54aa: $0f
    dec bc                                        ; $54ab: $0b
    rrca                                          ; $54ac: $0f
    add hl, bc                                    ; $54ad: $09
    ld b, $06                                     ; $54ae: $06 $06
    ldh [$e0], a                                  ; $54b0: $e0 $e0
    sub b                                         ; $54b2: $90
    ldh a, [$c8]                                  ; $54b3: $f0 $c8
    ld a, b                                       ; $54b5: $78
    db $e4                                        ; $54b6: $e4
    db $fc                                        ; $54b7: $fc
    inc d                                         ; $54b8: $14
    db $fc                                        ; $54b9: $fc
    ld [$fafe], a                                 ; $54ba: $ea $fe $fa
    ld e, [hl]                                    ; $54bd: $5e
    db $fc                                        ; $54be: $fc
    call nc, Call_000_24fc                        ; $54bf: $d4 $fc $24
    ldh a, [$50]                                  ; $54c2: $f0 $50
    ldh a, [$b0]                                  ; $54c4: $f0 $b0
    ld hl, sp-$18                                 ; $54c6: $f8 $e8
    ld a, b                                       ; $54c8: $78
    add sp, -$10                                  ; $54c9: $e8 $f0
    or b                                          ; $54cb: $b0
    ret nz                                        ; $54cc: $c0

    ret nz                                        ; $54cd: $c0

    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    inc bc                                        ; $54d0: $03
    inc bc                                        ; $54d1: $03
    ld b, $07                                     ; $54d2: $06 $07

jr_024_54d4:
    rlca                                          ; $54d4: $07
    dec b                                         ; $54d5: $05

jr_024_54d6:
    rra                                           ; $54d6: $1f
    rra                                           ; $54d7: $1f
    jr nz, jr_024_5519                            ; $54d8: $20 $3f

    rra                                           ; $54da: $1f
    rra                                           ; $54db: $1f
    rlca                                          ; $54dc: $07
    ld b, $0f                                     ; $54dd: $06 $0f
    ld a, [bc]                                    ; $54df: $0a
    rra                                           ; $54e0: $1f
    db $10                                        ; $54e1: $10
    ccf                                           ; $54e2: $3f
    inc h                                         ; $54e3: $24
    rra                                           ; $54e4: $1f
    add hl, de                                    ; $54e5: $19
    rlca                                          ; $54e6: $07
    ld b, $0f                                     ; $54e7: $06 $0f
    add hl, bc                                    ; $54e9: $09
    ld c, $0f                                     ; $54ea: $0e $0f
    rrca                                          ; $54ec: $0f
    dec bc                                        ; $54ed: $0b
    ld b, $06                                     ; $54ee: $06 $06
    ret nz                                        ; $54f0: $c0

    ret nz                                        ; $54f1: $c0

    jr nz, jr_024_54d4                            ; $54f2: $20 $e0

    jr nz, jr_024_54d6                            ; $54f4: $20 $e0

    db $10                                        ; $54f6: $10
    ldh a, [$9c]                                  ; $54f7: $f0 $9c
    db $fc                                        ; $54f9: $fc
    jp nz, $e2fe                                  ; $54fa: $c2 $fe $e2

    ld a, [hl]                                    ; $54fd: $7e
    db $fc                                        ; $54fe: $fc
    ld e, h                                       ; $54ff: $5c
    ld hl, sp+$08                                 ; $5500: $f8 $08
    ldh [$60], a                                  ; $5502: $e0 $60
    ldh a, [$f0]                                  ; $5504: $f0 $f0
    ldh a, [$b0]                                  ; $5506: $f0 $b0
    ldh [$e0], a                                  ; $5508: $e0 $e0
    ld [hl], b                                    ; $550a: $70
    ret nc                                        ; $550b: $d0

    ldh a, [$90]                                  ; $550c: $f0 $90
    ld h, b                                       ; $550e: $60
    ld h, b                                       ; $550f: $60
    inc bc                                        ; $5510: $03
    inc bc                                        ; $5511: $03
    inc b                                         ; $5512: $04
    rlca                                          ; $5513: $07
    ld [$100f], sp                                ; $5514: $08 $0f $10
    rra                                           ; $5517: $1f
    db $10                                        ; $5518: $10

jr_024_5519:
    rra                                           ; $5519: $1f
    ld hl, $203f                                  ; $551a: $21 $3f $20
    ccf                                           ; $551d: $3f
    jr jr_024_553f                                ; $551e: $18 $1f

    inc e                                         ; $5520: $1c
    rla                                           ; $5521: $17
    rra                                           ; $5522: $1f
    rra                                           ; $5523: $1f
    ccf                                           ; $5524: $3f
    inc h                                         ; $5525: $24
    ccf                                           ; $5526: $3f
    ccf                                           ; $5527: $3f
    inc c                                         ; $5528: $0c
    rrca                                          ; $5529: $0f
    rrca                                          ; $552a: $0f
    dec bc                                        ; $552b: $0b
    rrca                                          ; $552c: $0f
    add hl, bc                                    ; $552d: $09
    ld b, $06                                     ; $552e: $06 $06
    ldh [$e0], a                                  ; $5530: $e0 $e0
    db $10                                        ; $5532: $10
    ldh a, [$08]                                  ; $5533: $f0 $08
    ld hl, sp+$04                                 ; $5535: $f8 $04
    db $fc                                        ; $5537: $fc
    inc b                                         ; $5538: $04
    db $fc                                        ; $5539: $fc
    jp nz, $02fe                                  ; $553a: $c2 $fe $02

    cp $0c                                        ; $553d: $fe $0c

jr_024_553f:
    db $fc                                        ; $553f: $fc
    inc e                                         ; $5540: $1c
    db $f4                                        ; $5541: $f4
    ldh a, [$f0]                                  ; $5542: $f0 $f0
    ldh a, [$50]                                  ; $5544: $f0 $50
    ld hl, sp-$18                                 ; $5546: $f8 $e8
    ld a, b                                       ; $5548: $78
    add sp, -$10                                  ; $5549: $e8 $f0
    or b                                          ; $554b: $b0
    ret nz                                        ; $554c: $c0

    ret nz                                        ; $554d: $c0

    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    inc bc                                        ; $5550: $03
    inc bc                                        ; $5551: $03
    inc b                                         ; $5552: $04
    rlca                                          ; $5553: $07
    inc b                                         ; $5554: $04
    rlca                                          ; $5555: $07
    ld [$390f], sp                                ; $5556: $08 $0f $39
    ccf                                           ; $5559: $3f
    ld b, e                                       ; $555a: $43
    ld a, a                                       ; $555b: $7f
    ld b, a                                       ; $555c: $47
    ld a, [hl]                                    ; $555d: $7e
    ccf                                           ; $555e: $3f
    ld a, [hl-]                                   ; $555f: $3a
    rra                                           ; $5560: $1f
    db $10                                        ; $5561: $10
    rlca                                          ; $5562: $07
    ld b, $03                                     ; $5563: $06 $03
    inc bc                                        ; $5565: $03
    rlca                                          ; $5566: $07
    inc b                                         ; $5567: $04
    rlca                                          ; $5568: $07
    dec b                                         ; $5569: $05
    ld c, $0f                                     ; $556a: $0e $0f
    rrca                                          ; $556c: $0f
    dec bc                                        ; $556d: $0b
    ld b, $06                                     ; $556e: $06 $06
    ret nz                                        ; $5570: $c0

    ret nz                                        ; $5571: $c0

    ld h, b                                       ; $5572: $60
    ldh [$e0], a                                  ; $5573: $e0 $e0
    and b                                         ; $5575: $a0
    ld hl, sp-$08                                 ; $5576: $f8 $f8
    inc b                                         ; $5578: $04
    db $fc                                        ; $5579: $fc
    ld hl, sp-$08                                 ; $557a: $f8 $f8
    ldh [$60], a                                  ; $557c: $e0 $60
    ldh a, [$50]                                  ; $557e: $f0 $50
    ld hl, sp+$08                                 ; $5580: $f8 $08
    db $fc                                        ; $5582: $fc
    inc h                                         ; $5583: $24
    ld hl, sp+$18                                 ; $5584: $f8 $18
    ldh a, [$f0]                                  ; $5586: $f0 $f0
    ldh [$a0], a                                  ; $5588: $e0 $a0
    ld [hl], b                                    ; $558a: $70
    ret nc                                        ; $558b: $d0

    ldh a, [$90]                                  ; $558c: $f0 $90
    ld h, b                                       ; $558e: $60
    ld h, b                                       ; $558f: $60
    rrca                                          ; $5590: $0f
    rrca                                          ; $5591: $0f
    ld [de], a                                    ; $5592: $12
    rra                                           ; $5593: $1f
    daa                                           ; $5594: $27
    dec a                                         ; $5595: $3d

jr_024_5596:
    ld c, a                                       ; $5596: $4f
    ld a, a                                       ; $5597: $7f
    ld d, b                                       ; $5598: $50
    ld a, a                                       ; $5599: $7f
    xor a                                         ; $559a: $af
    rst $38                                       ; $559b: $ff
    cp a                                          ; $559c: $bf
    push af                                       ; $559d: $f5
    ld a, a                                       ; $559e: $7f
    ld d, a                                       ; $559f: $57
    ld a, a                                       ; $55a0: $7f
    ld c, b                                       ; $55a1: $48
    rra                                           ; $55a2: $1f
    inc d                                         ; $55a3: $14
    ccf                                           ; $55a4: $3f
    dec hl                                        ; $55a5: $2b
    ccf                                           ; $55a6: $3f
    ccf                                           ; $55a7: $3f
    inc c                                         ; $55a8: $0c
    rrca                                          ; $55a9: $0f
    rrca                                          ; $55aa: $0f
    dec bc                                        ; $55ab: $0b
    rrca                                          ; $55ac: $0f
    add hl, bc                                    ; $55ad: $09
    ld b, $06                                     ; $55ae: $06 $06
    add b                                         ; $55b0: $80
    add b                                         ; $55b1: $80
    ld b, b                                       ; $55b2: $40
    ret nz                                        ; $55b3: $c0

    jr nz, jr_024_5596                            ; $55b4: $20 $e0

    sub b                                         ; $55b6: $90
    ldh a, [$50]                                  ; $55b7: $f0 $50
    ldh a, [$a8]                                  ; $55b9: $f0 $a8
    ld hl, sp-$18                                 ; $55bb: $f8 $e8
    ld a, b                                       ; $55bd: $78
    ldh a, [$50]                                  ; $55be: $f0 $50
    ldh a, [$90]                                  ; $55c0: $f0 $90
    ldh a, [$50]                                  ; $55c2: $f0 $50
    ldh a, [$b0]                                  ; $55c4: $f0 $b0
    ld hl, sp-$18                                 ; $55c6: $f8 $e8
    ld a, b                                       ; $55c8: $78
    add sp, -$10                                  ; $55c9: $e8 $f0
    or b                                          ; $55cb: $b0
    ret nz                                        ; $55cc: $c0

    ret nz                                        ; $55cd: $c0

    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    rrca                                          ; $55d0: $0f
    rrca                                          ; $55d1: $0f
    jr jr_024_55f3                                ; $55d2: $18 $1f

    inc e                                         ; $55d4: $1c
    rla                                           ; $55d5: $17
    ld a, h                                       ; $55d6: $7c
    ld a, a                                       ; $55d7: $7f
    add d                                         ; $55d8: $82
    rst $38                                       ; $55d9: $ff
    ld a, a                                       ; $55da: $7f
    ld a, a                                       ; $55db: $7f
    rra                                           ; $55dc: $1f
    add hl, de                                    ; $55dd: $19
    ccf                                           ; $55de: $3f
    add hl, hl                                    ; $55df: $29
    ld a, a                                       ; $55e0: $7f
    ld b, b                                       ; $55e1: $40
    ccf                                           ; $55e2: $3f
    inc h                                         ; $55e3: $24
    rra                                           ; $55e4: $1f
    add hl, de                                    ; $55e5: $19
    rlca                                          ; $55e6: $07
    ld b, $0f                                     ; $55e7: $06 $0f
    add hl, bc                                    ; $55e9: $09
    ld c, $0f                                     ; $55ea: $0e $0f
    rrca                                          ; $55ec: $0f
    dec bc                                        ; $55ed: $0b
    ld b, $06                                     ; $55ee: $06 $06
    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    add b                                         ; $55f2: $80

jr_024_55f3:
    add b                                         ; $55f3: $80
    add b                                         ; $55f4: $80
    add b                                         ; $55f5: $80
    ld b, b                                       ; $55f6: $40
    ret nz                                        ; $55f7: $c0

    ld [hl], b                                    ; $55f8: $70
    ldh a, [$08]                                  ; $55f9: $f0 $08
    ld hl, sp-$78                                 ; $55fb: $f8 $88
    ld hl, sp-$10                                 ; $55fd: $f8 $f0
    ld [hl], b                                    ; $55ff: $70
    ldh [rNR41], a                                ; $5600: $e0 $20
    ldh [$60], a                                  ; $5602: $e0 $60
    ldh a, [$f0]                                  ; $5604: $f0 $f0
    ldh a, [$b0]                                  ; $5606: $f0 $b0
    ldh [$e0], a                                  ; $5608: $e0 $e0
    ld [hl], b                                    ; $560a: $70
    ret nc                                        ; $560b: $d0

    ldh a, [$90]                                  ; $560c: $f0 $90
    ld h, b                                       ; $560e: $60
    ld h, b                                       ; $560f: $60
    rrca                                          ; $5610: $0f
    rrca                                          ; $5611: $0f
    db $10                                        ; $5612: $10
    rra                                           ; $5613: $1f
    jr nz, jr_024_5655                            ; $5614: $20 $3f

jr_024_5616:
    ld b, b                                       ; $5616: $40
    ld a, a                                       ; $5617: $7f
    ld b, b                                       ; $5618: $40
    ld a, a                                       ; $5619: $7f
    add a                                         ; $561a: $87
    rst $38                                       ; $561b: $ff
    add b                                         ; $561c: $80
    rst $38                                       ; $561d: $ff
    ld h, b                                       ; $561e: $60
    ld a, a                                       ; $561f: $7f
    ld [hl], b                                    ; $5620: $70
    ld e, a                                       ; $5621: $5f
    rra                                           ; $5622: $1f
    rra                                           ; $5623: $1f
    ccf                                           ; $5624: $3f
    inc h                                         ; $5625: $24
    ccf                                           ; $5626: $3f
    ccf                                           ; $5627: $3f
    inc c                                         ; $5628: $0c
    rrca                                          ; $5629: $0f
    rrca                                          ; $562a: $0f
    dec bc                                        ; $562b: $0b
    rrca                                          ; $562c: $0f
    add hl, bc                                    ; $562d: $09
    ld b, $06                                     ; $562e: $06 $06
    add b                                         ; $5630: $80
    add b                                         ; $5631: $80
    ld b, b                                       ; $5632: $40
    ret nz                                        ; $5633: $c0

    jr nz, jr_024_5616                            ; $5634: $20 $e0

    db $10                                        ; $5636: $10
    ldh a, [rNR10]                                ; $5637: $f0 $10
    ldh a, [$08]                                  ; $5639: $f0 $08
    ld hl, sp+$08                                 ; $563b: $f8 $08
    ld hl, sp+$30                                 ; $563d: $f8 $30
    ldh a, [rSVBK]                                ; $563f: $f0 $70
    ret nc                                        ; $5641: $d0

    ldh a, [$f0]                                  ; $5642: $f0 $f0
    ldh a, [$50]                                  ; $5644: $f0 $50
    ld hl, sp-$18                                 ; $5646: $f8 $e8
    ld a, b                                       ; $5648: $78
    add sp, -$10                                  ; $5649: $e8 $f0
    or b                                          ; $564b: $b0
    ret nz                                        ; $564c: $c0

    ret nz                                        ; $564d: $c0

    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    ld bc, $0201                                  ; $5652: $01 $01 $02

jr_024_5655:
    inc bc                                        ; $5655: $03

jr_024_5656:
    ld [bc], a                                    ; $5656: $02
    inc bc                                        ; $5657: $03
    nop                                           ; $5658: $00
    inc bc                                        ; $5659: $03
    inc c                                         ; $565a: $0c
    rrca                                          ; $565b: $0f
    inc de                                        ; $565c: $13
    rra                                           ; $565d: $1f
    rrca                                          ; $565e: $0f
    dec c                                         ; $565f: $0d
    rlca                                          ; $5660: $07
    inc b                                         ; $5661: $04
    inc bc                                        ; $5662: $03
    ld [bc], a                                    ; $5663: $02
    inc bc                                        ; $5664: $03
    nop                                           ; $5665: $00
    inc bc                                        ; $5666: $03
    ld bc, $0706                                  ; $5667: $01 $06 $07
    rlca                                          ; $566a: $07
    rlca                                          ; $566b: $07
    ld [bc], a                                    ; $566c: $02
    ld [bc], a                                    ; $566d: $02
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    ret nz                                        ; $5672: $c0

    ret nz                                        ; $5673: $c0

    jr nz, jr_024_5656                            ; $5674: $20 $e0

    ld h, b                                       ; $5676: $60
    ldh [$78], a                                  ; $5677: $e0 $78
    ld hl, sp-$7c                                 ; $5679: $f8 $84
    db $fc                                        ; $567b: $fc
    ldh [rNR41], a                                ; $567c: $e0 $20
    ldh a, [rNR10]                                ; $567e: $f0 $10
    ld hl, sp+$08                                 ; $5680: $f8 $08
    ld hl, sp+$08                                 ; $5682: $f8 $08
    ldh [$e0], a                                  ; $5684: $e0 $e0
    ret nz                                        ; $5686: $c0

    add b                                         ; $5687: $80
    ld h, b                                       ; $5688: $60
    ldh [$e0], a                                  ; $5689: $e0 $e0
    and b                                         ; $568b: $a0
    ld b, b                                       ; $568c: $40
    ld b, b                                       ; $568d: $40
    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    inc bc                                        ; $5692: $03
    inc bc                                        ; $5693: $03
    dec b                                         ; $5694: $05
    rlca                                          ; $5695: $07
    dec bc                                        ; $5696: $0b
    ld c, $13                                     ; $5697: $0e $13
    rra                                           ; $5699: $1f
    inc d                                         ; $569a: $14
    rra                                           ; $569b: $1f
    cpl                                           ; $569c: $2f
    ld a, $1f                                     ; $569d: $3e $1f
    rla                                           ; $569f: $17
    rra                                           ; $56a0: $1f
    db $10                                        ; $56a1: $10
    rrca                                          ; $56a2: $0f
    ld [$1f1f], sp                                ; $56a3: $08 $1f $1f
    inc b                                         ; $56a6: $04
    rlca                                          ; $56a7: $07
    rlca                                          ; $56a8: $07
    rlca                                          ; $56a9: $07
    rlca                                          ; $56aa: $07
    dec b                                         ; $56ab: $05
    ld [bc], a                                    ; $56ac: $02
    ld [bc], a                                    ; $56ad: $02
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    ret nz                                        ; $56b2: $c0

    ret nz                                        ; $56b3: $c0

    nop                                           ; $56b4: $00
    ret nz                                        ; $56b5: $c0

    and b                                         ; $56b6: $a0
    ldh [$d0], a                                  ; $56b7: $e0 $d0
    ldh a, [rNR10]                                ; $56b9: $f0 $10
    ldh a, [$e8]                                  ; $56bb: $f0 $e8
    cp b                                          ; $56bd: $b8
    ldh a, [$90]                                  ; $56be: $f0 $90
    ldh a, [$50]                                  ; $56c0: $f0 $50
    ldh [$60], a                                  ; $56c2: $e0 $60
    ldh a, [$d0]                                  ; $56c4: $f0 $d0
    ld [hl], b                                    ; $56c6: $70
    ret nc                                        ; $56c7: $d0

    ldh [$a0], a                                  ; $56c8: $e0 $a0
    ret nz                                        ; $56ca: $c0

    ret nz                                        ; $56cb: $c0

    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    inc bc                                        ; $56d2: $03
    inc bc                                        ; $56d3: $03
    inc b                                         ; $56d4: $04
    rlca                                          ; $56d5: $07
    ld b, $07                                     ; $56d6: $06 $07
    ld e, $1f                                     ; $56d8: $1e $1f
    ld hl, $073f                                  ; $56da: $21 $3f $07
    inc b                                         ; $56dd: $04
    rrca                                          ; $56de: $0f
    ld [$101f], sp                                ; $56df: $08 $1f $10
    rra                                           ; $56e2: $1f
    db $10                                        ; $56e3: $10
    inc bc                                        ; $56e4: $03
    ld [bc], a                                    ; $56e5: $02
    rlca                                          ; $56e6: $07
    dec b                                         ; $56e7: $05
    ld b, $07                                     ; $56e8: $06 $07
    rlca                                          ; $56ea: $07
    rlca                                          ; $56eb: $07

jr_024_56ec:
    ld [bc], a                                    ; $56ec: $02
    ld [bc], a                                    ; $56ed: $02
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    add b                                         ; $56f2: $80
    add b                                         ; $56f3: $80
    ld b, b                                       ; $56f4: $40
    ret nz                                        ; $56f5: $c0

    ld b, b                                       ; $56f6: $40
    ret nz                                        ; $56f7: $c0

    nop                                           ; $56f8: $00
    ret nz                                        ; $56f9: $c0

    jr nc, jr_024_56ec                            ; $56fa: $30 $f0

    ret z                                         ; $56fc: $c8

    ld hl, sp-$10                                 ; $56fd: $f8 $f0
    or b                                          ; $56ff: $b0
    ldh [rNR41], a                                ; $5700: $e0 $20
    ret nz                                        ; $5702: $c0

    ld b, b                                       ; $5703: $40
    ldh [$a0], a                                  ; $5704: $e0 $a0
    ret nz                                        ; $5706: $c0

    ret nz                                        ; $5707: $c0

    ld h, b                                       ; $5708: $60
    ldh [$e0], a                                  ; $5709: $e0 $e0
    and b                                         ; $570b: $a0
    ld b, b                                       ; $570c: $40
    ld b, b                                       ; $570d: $40
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    inc bc                                        ; $5712: $03
    inc bc                                        ; $5713: $03
    inc b                                         ; $5714: $04
    rlca                                          ; $5715: $07
    ld [$100f], sp                                ; $5716: $08 $0f $10
    rra                                           ; $5719: $1f
    db $10                                        ; $571a: $10
    rra                                           ; $571b: $1f
    jr nz, jr_024_575d                            ; $571c: $20 $3f

    jr jr_024_573f                                ; $571e: $18 $1f

    inc e                                         ; $5720: $1c
    rla                                           ; $5721: $17
    rrca                                          ; $5722: $0f
    rrca                                          ; $5723: $0f
    rra                                           ; $5724: $1f
    rra                                           ; $5725: $1f
    inc b                                         ; $5726: $04
    rlca                                          ; $5727: $07
    rlca                                          ; $5728: $07
    rlca                                          ; $5729: $07
    rlca                                          ; $572a: $07
    dec b                                         ; $572b: $05
    ld [bc], a                                    ; $572c: $02
    ld [bc], a                                    ; $572d: $02
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    ret nz                                        ; $5732: $c0

    ret nz                                        ; $5733: $c0

    nop                                           ; $5734: $00
    ret nz                                        ; $5735: $c0

    jr nz, @-$1e                                  ; $5736: $20 $e0

    db $10                                        ; $5738: $10
    ldh a, [rNR10]                                ; $5739: $f0 $10
    ldh a, [$08]                                  ; $573b: $f0 $08
    ld hl, sp+$30                                 ; $573d: $f8 $30

jr_024_573f:
    ldh a, [$30]                                  ; $573f: $f0 $30
    ret nc                                        ; $5741: $d0

    ldh [$e0], a                                  ; $5742: $e0 $e0
    ldh a, [$d0]                                  ; $5744: $f0 $d0
    ld [hl], b                                    ; $5746: $70
    ret nc                                        ; $5747: $d0

    ldh [$a0], a                                  ; $5748: $e0 $a0
    ret nz                                        ; $574a: $c0

    ret nz                                        ; $574b: $c0

    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    nop                                           ; $574f: $00
    ld h, d                                       ; $5750: $62
    ld d, a                                       ; $5751: $57
    ld h, l                                       ; $5752: $65
    ld d, a                                       ; $5753: $57
    ld l, e                                       ; $5754: $6b
    ld d, a                                       ; $5755: $57
    ld l, [hl]                                    ; $5756: $6e
    ld d, a                                       ; $5757: $57
    ld a, c                                       ; $5758: $79
    ld d, a                                       ; $5759: $57
    add b                                         ; $575a: $80
    ld d, a                                       ; $575b: $57
    adc b                                         ; $575c: $88

jr_024_575d:
    ld d, a                                       ; $575d: $57
    sbc h                                         ; $575e: $9c
    ld d, a                                       ; $575f: $57
    xor b                                         ; $5760: $a8
    ld d, a                                       ; $5761: $57
    nop                                           ; $5762: $00
    rst $38                                       ; $5763: $ff
    db $fd                                        ; $5764: $fd
    nop                                           ; $5765: $00
    ld e, $01                                     ; $5766: $1e $01
    ld e, $ff                                     ; $5768: $1e $ff
    nop                                           ; $576a: $00
    ld [bc], a                                    ; $576b: $02
    rst $38                                       ; $576c: $ff
    db $fd                                        ; $576d: $fd
    ld [bc], a                                    ; $576e: $02
    inc c                                         ; $576f: $0c
    inc bc                                        ; $5770: $03
    inc c                                         ; $5771: $0c
    inc b                                         ; $5772: $04
    jr jr_024_5777                                ; $5773: $18 $02

    inc c                                         ; $5775: $0c
    dec b                                         ; $5776: $05

jr_024_5777:
    inc c                                         ; $5777: $0c
    db $fd                                        ; $5778: $fd
    ld [bc], a                                    ; $5779: $02
    jr @+$05                                      ; $577a: $18 $03

    jr jr_024_5780                                ; $577c: $18 $02

    jr @-$01                                      ; $577e: $18 $fd

jr_024_5780:
    nop                                           ; $5780: $00
    ld a, [bc]                                    ; $5781: $0a
    ld b, $1e                                     ; $5782: $06 $1e
    nop                                           ; $5784: $00
    ld a, [bc]                                    ; $5785: $0a
    cp $01                                        ; $5786: $fe $01
    nop                                           ; $5788: $00
    ld a, [bc]                                    ; $5789: $0a
    rlca                                          ; $578a: $07
    ld a, [bc]                                    ; $578b: $0a
    nop                                           ; $578c: $00
    inc bc                                        ; $578d: $03
    ld [$000a], sp                                ; $578e: $08 $0a $00
    inc bc                                        ; $5791: $03
    rlca                                          ; $5792: $07
    ld a, [bc]                                    ; $5793: $0a
    nop                                           ; $5794: $00
    inc bc                                        ; $5795: $03
    ld [$000a], sp                                ; $5796: $08 $0a $00
    ld a, [bc]                                    ; $5799: $0a
    cp $01                                        ; $579a: $fe $01
    nop                                           ; $579c: $00
    ld a, [bc]                                    ; $579d: $0a
    add hl, bc                                    ; $579e: $09
    ld [$0800], sp                                ; $579f: $08 $00 $08
    add hl, bc                                    ; $57a2: $09
    ld [$0a00], sp                                ; $57a3: $08 $00 $0a
    cp $01                                        ; $57a6: $fe $01
    ld [bc], a                                    ; $57a8: $02
    ld [de], a                                    ; $57a9: $12
    inc bc                                        ; $57aa: $03
    ld [de], a                                    ; $57ab: $12
    ld [bc], a                                    ; $57ac: $02
    ld e, $05                                     ; $57ad: $1e $05
    ld [de], a                                    ; $57af: $12
    db $fd                                        ; $57b0: $fd
    inc b                                         ; $57b1: $04
    inc b                                         ; $57b2: $04
    cp c                                          ; $57b3: $b9
    ld d, a                                       ; $57b4: $57
    ret nc                                        ; $57b5: $d0

    ld e, l                                       ; $57b6: $5d
    cp c                                          ; $57b7: $b9
    ld d, a                                       ; $57b8: $57
    ret nc                                        ; $57b9: $d0

    ld d, a                                       ; $57ba: $57
    ret nc                                        ; $57bb: $d0

    ld e, b                                       ; $57bc: $58
    ret nc                                        ; $57bd: $d0

    ld e, b                                       ; $57be: $58
    ret nc                                        ; $57bf: $d0

    ld e, b                                       ; $57c0: $58
    ret nc                                        ; $57c1: $d0

    ld e, b                                       ; $57c2: $58
    ret nc                                        ; $57c3: $d0

    ld e, b                                       ; $57c4: $58
    ret nc                                        ; $57c5: $d0

    ld e, c                                       ; $57c6: $59
    ret nc                                        ; $57c7: $d0

    ld e, d                                       ; $57c8: $5a
    ret nc                                        ; $57c9: $d0

    ld e, e                                       ; $57ca: $5b
    ret nc                                        ; $57cb: $d0

    ld e, h                                       ; $57cc: $5c
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    nop                                           ; $57d0: $00
    nop                                           ; $57d1: $00
    nop                                           ; $57d2: $00
    nop                                           ; $57d3: $00
    ld bc, $0201                                  ; $57d4: $01 $01 $02
    inc bc                                        ; $57d7: $03
    ld [bc], a                                    ; $57d8: $02
    inc bc                                        ; $57d9: $03
    dec b                                         ; $57da: $05
    rlca                                          ; $57db: $07
    add hl, bc                                    ; $57dc: $09
    rrca                                          ; $57dd: $0f
    db $10                                        ; $57de: $10
    rra                                           ; $57df: $1f
    db $10                                        ; $57e0: $10
    rra                                           ; $57e1: $1f
    ld hl, $213f                                  ; $57e2: $21 $3f $21
    ccf                                           ; $57e5: $3f
    ld h, $3f                                     ; $57e6: $26 $3f
    ld d, d                                       ; $57e8: $52
    ld a, a                                       ; $57e9: $7f
    ld a, a                                       ; $57ea: $7f
    ld a, a                                       ; $57eb: $7f
    ld e, a                                       ; $57ec: $5f
    ld [hl], d                                    ; $57ed: $72
    ccf                                           ; $57ee: $3f
    ccf                                           ; $57ef: $3f
    ld h, b                                       ; $57f0: $60
    ld h, b                                       ; $57f1: $60
    sub b                                         ; $57f2: $90
    ldh a, [$88]                                  ; $57f3: $f0 $88
    ld hl, sp+$1c                                 ; $57f5: $f8 $1c
    db $f4                                        ; $57f7: $f4
    cp h                                          ; $57f8: $bc
    db $e4                                        ; $57f9: $e4
    db $fc                                        ; $57fa: $fc
    ld l, h                                       ; $57fb: $6c
    db $fc                                        ; $57fc: $fc
    inc h                                         ; $57fd: $24
    cp $c2                                        ; $57fe: $fe $c2
    ld a, $e2                                     ; $5800: $3e $e2
    ccf                                           ; $5802: $3f
    jp hl                                         ; $5803: $e9


    ld a, $ee                                     ; $5804: $3e $ee
    inc a                                         ; $5806: $3c
    db $f4                                        ; $5807: $f4
    ret c                                         ; $5808: $d8

    ld hl, sp-$10                                 ; $5809: $f8 $f0
    ld [hl], b                                    ; $580b: $70
    ldh a, [$50]                                  ; $580c: $f0 $50
    ldh [$e0], a                                  ; $580e: $e0 $e0
    ld bc, $0201                                  ; $5810: $01 $01 $02
    inc bc                                        ; $5813: $03
    inc b                                         ; $5814: $04
    rlca                                          ; $5815: $07
    ld a, [bc]                                    ; $5816: $0a
    rrca                                          ; $5817: $0f
    rra                                           ; $5818: $1f
    dec e                                         ; $5819: $1d
    ccf                                           ; $581a: $3f
    ld a, [hl+]                                   ; $581b: $2a
    ccf                                           ; $581c: $3f
    jr z, @+$61                                   ; $581d: $28 $5f

    ld [hl], d                                    ; $581f: $72
    ld e, a                                       ; $5820: $5f
    ld [hl], c                                    ; $5821: $71
    adc a                                         ; $5822: $8f
    ld sp, hl                                     ; $5823: $f9
    sbc a                                         ; $5824: $9f
    rst $38                                       ; $5825: $ff
    rst $10                                       ; $5826: $d7
    db $fc                                        ; $5827: $fc
    di                                            ; $5828: $f3
    cp a                                          ; $5829: $bf
    ld a, l                                       ; $582a: $7d
    ld a, a                                       ; $582b: $7f
    ld e, $12                                     ; $582c: $1e $12
    inc c                                         ; $582e: $0c
    inc c                                         ; $582f: $0c
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    add b                                         ; $5832: $80
    add b                                         ; $5833: $80
    ld b, b                                       ; $5834: $40
    ret nz                                        ; $5835: $c0

    and b                                         ; $5836: $a0
    ldh [$f0], a                                  ; $5837: $e0 $f0
    ld [hl], b                                    ; $5839: $70
    ld hl, sp-$58                                 ; $583a: $f8 $a8
    ld hl, sp+$28                                 ; $583c: $f8 $28
    ld hl, sp-$68                                 ; $583e: $f8 $98
    db $f4                                        ; $5840: $f4
    inc e                                         ; $5841: $1c
    db $e4                                        ; $5842: $e4
    inc a                                         ; $5843: $3c
    ld [c], a                                     ; $5844: $e2
    cp $d2                                        ; $5845: $fe $d2
    ld a, [hl]                                    ; $5847: $7e
    sbc [hl]                                      ; $5848: $9e
    cp $fe                                        ; $5849: $fe $fe
    ld a, [c]                                     ; $584b: $f2
    ld l, h                                       ; $584c: $6c
    ld l, h                                       ; $584d: $6c
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    ld b, $06                                     ; $5850: $06 $06
    add hl, bc                                    ; $5852: $09
    rrca                                          ; $5853: $0f
    ld de, $381f                                  ; $5854: $11 $1f $38
    cpl                                           ; $5857: $2f
    dec a                                         ; $5858: $3d
    daa                                           ; $5859: $27
    ccf                                           ; $585a: $3f
    ld [hl], $3f                                  ; $585b: $36 $3f
    inc h                                         ; $585d: $24
    ld a, a                                       ; $585e: $7f
    ld b, e                                       ; $585f: $43
    ld a, h                                       ; $5860: $7c
    ld b, a                                       ; $5861: $47
    db $fc                                        ; $5862: $fc
    sub a                                         ; $5863: $97
    ld l, b                                       ; $5864: $68
    ld a, a                                       ; $5865: $7f
    jr @+$21                                      ; $5866: $18 $1f

    dec a                                         ; $5868: $3d
    cpl                                           ; $5869: $2f
    rra                                           ; $586a: $1f
    dec de                                        ; $586b: $1b
    rrca                                          ; $586c: $0f
    add hl, bc                                    ; $586d: $09
    rlca                                          ; $586e: $07
    rlca                                          ; $586f: $07
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    add b                                         ; $5874: $80
    add b                                         ; $5875: $80
    ld b, b                                       ; $5876: $40
    ret nz                                        ; $5877: $c0

    ld b, b                                       ; $5878: $40
    ret nz                                        ; $5879: $c0

    and b                                         ; $587a: $a0
    ldh [$90], a                                  ; $587b: $e0 $90
    ldh a, [$08]                                  ; $587d: $f0 $08
    ld hl, sp+$08                                 ; $587f: $f8 $08
    ld hl, sp+$04                                 ; $5881: $f8 $04
    db $fc                                        ; $5883: $fc
    add h                                         ; $5884: $84
    db $fc                                        ; $5885: $fc
    jp nz, Jump_024_63fe                          ; $5886: $c2 $fe $63

    cp a                                          ; $5889: $bf
    rst $38                                       ; $588a: $ff
    db $fd                                        ; $588b: $fd
    cp $b2                                        ; $588c: $fe $b2
    call c, Call_000_01dc                         ; $588e: $dc $dc $01
    ld bc, $0302                                  ; $5891: $01 $02 $03
    inc b                                         ; $5894: $04
    rlca                                          ; $5895: $07
    ld [$180f], sp                                ; $5896: $08 $0f $18
    rra                                           ; $5899: $1f
    jr c, jr_024_58cb                             ; $589a: $38 $2f

    jr nc, jr_024_58dd                            ; $589c: $30 $3f

    ld b, b                                       ; $589e: $40
    ld a, a                                       ; $589f: $7f
    ld b, b                                       ; $58a0: $40
    ld a, a                                       ; $58a1: $7f
    sub b                                         ; $58a2: $90
    rst $38                                       ; $58a3: $ff

jr_024_58a4:
    ret c                                         ; $58a4: $d8

    rst $38                                       ; $58a5: $ff

jr_024_58a6:
    ldh a, [$bf]                                  ; $58a6: $f0 $bf
    ld [hl], d                                    ; $58a8: $72
    ld a, a                                       ; $58a9: $7f

jr_024_58aa:
    rra                                           ; $58aa: $1f
    rra                                           ; $58ab: $1f
    ld e, $12                                     ; $58ac: $1e $12
    inc c                                         ; $58ae: $0c
    inc c                                         ; $58af: $0c
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    add b                                         ; $58b2: $80
    add b                                         ; $58b3: $80
    ld b, b                                       ; $58b4: $40
    ret nz                                        ; $58b5: $c0

    jr nz, @-$1e                                  ; $58b6: $20 $e0

jr_024_58b8:
    jr nc, jr_024_58aa                            ; $58b8: $30 $f0

    jr c, jr_024_58a4                             ; $58ba: $38 $e8

    jr c, jr_024_58a6                             ; $58bc: $38 $e8

    jr jr_024_58b8                                ; $58be: $18 $f8

    inc b                                         ; $58c0: $04
    db $fc                                        ; $58c1: $fc
    inc b                                         ; $58c2: $04
    db $fc                                        ; $58c3: $fc
    ld [de], a                                    ; $58c4: $12
    cp $32                                        ; $58c5: $fe $32
    cp $5e                                        ; $58c7: $fe $5e
    cp $fe                                        ; $58c9: $fe $fe

jr_024_58cb:
    ld a, [c]                                     ; $58cb: $f2
    ld l, h                                       ; $58cc: $6c
    ld l, h                                       ; $58cd: $6c
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    nop                                           ; $58d3: $00
    ld bc, $0201                                  ; $58d4: $01 $01 $02
    inc bc                                        ; $58d7: $03
    ld [bc], a                                    ; $58d8: $02
    inc bc                                        ; $58d9: $03
    dec b                                         ; $58da: $05
    rlca                                          ; $58db: $07
    add hl, bc                                    ; $58dc: $09

jr_024_58dd:
    rrca                                          ; $58dd: $0f
    db $10                                        ; $58de: $10
    rra                                           ; $58df: $1f
    db $10                                        ; $58e0: $10
    rra                                           ; $58e1: $1f
    jr nz, jr_024_5923                            ; $58e2: $20 $3f

    ld hl, $433f                                  ; $58e4: $21 $3f $43
    ld a, a                                       ; $58e7: $7f
    add $fd                                       ; $58e8: $c6 $fd
    rst $38                                       ; $58ea: $ff
    cp a                                          ; $58eb: $bf
    ld a, a                                       ; $58ec: $7f
    ld c, l                                       ; $58ed: $4d
    dec sp                                        ; $58ee: $3b
    dec sp                                        ; $58ef: $3b
    ld h, b                                       ; $58f0: $60
    ld h, b                                       ; $58f1: $60
    sub b                                         ; $58f2: $90
    ldh a, [$88]                                  ; $58f3: $f0 $88
    ld hl, sp+$1c                                 ; $58f5: $f8 $1c
    db $f4                                        ; $58f7: $f4
    cp h                                          ; $58f8: $bc
    db $e4                                        ; $58f9: $e4
    db $fc                                        ; $58fa: $fc
    ld l, h                                       ; $58fb: $6c
    db $fc                                        ; $58fc: $fc
    inc h                                         ; $58fd: $24
    cp $c2                                        ; $58fe: $fe $c2

jr_024_5900:
    ld a, $e2                                     ; $5900: $3e $e2
    ccf                                           ; $5902: $3f
    jp hl                                         ; $5903: $e9


    ld d, $fe                                     ; $5904: $16 $fe
    jr jr_024_5900                                ; $5906: $18 $f8

    cp h                                          ; $5908: $bc
    db $f4                                        ; $5909: $f4
    ld hl, sp-$28                                 ; $590a: $f8 $d8
    ldh a, [$90]                                  ; $590c: $f0 $90
    ldh [$e0], a                                  ; $590e: $e0 $e0
    ld bc, $0201                                  ; $5910: $01 $01 $02
    inc bc                                        ; $5913: $03
    inc b                                         ; $5914: $04
    rlca                                          ; $5915: $07
    ld a, [bc]                                    ; $5916: $0a
    rrca                                          ; $5917: $0f
    rra                                           ; $5918: $1f
    dec e                                         ; $5919: $1d
    ccf                                           ; $591a: $3f
    ld a, [hl+]                                   ; $591b: $2a
    ccf                                           ; $591c: $3f
    jr z, jr_024_595e                             ; $591d: $28 $3f

    ld [hl-], a                                   ; $591f: $32
    ld e, a                                       ; $5920: $5f
    ld [hl], c                                    ; $5921: $71
    ld c, a                                       ; $5922: $4f

jr_024_5923:
    ld a, c                                       ; $5923: $79
    adc [hl]                                      ; $5924: $8e
    rst $38                                       ; $5925: $ff
    sbc a                                         ; $5926: $9f
    ei                                            ; $5927: $fb
    rst $30                                       ; $5928: $f7
    db $fc                                        ; $5929: $fc
    rst $38                                       ; $592a: $ff
    sbc a                                         ; $592b: $9f
    ld l, h                                       ; $592c: $6c
    ld l, h                                       ; $592d: $6c
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    add b                                         ; $5932: $80
    add b                                         ; $5933: $80
    ld b, b                                       ; $5934: $40
    ret nz                                        ; $5935: $c0

    and b                                         ; $5936: $a0
    ldh [$f0], a                                  ; $5937: $e0 $f0
    ld [hl], b                                    ; $5939: $70
    ld hl, sp-$58                                 ; $593a: $f8 $a8
    ld hl, sp+$28                                 ; $593c: $f8 $28
    db $f4                                        ; $593e: $f4
    sbc h                                         ; $593f: $9c
    db $f4                                        ; $5940: $f4
    inc e                                         ; $5941: $1c
    ld [c], a                                     ; $5942: $e2
    ld a, $f2                                     ; $5943: $3e $f2
    cp $f6                                        ; $5945: $fe $f6
    cp [hl]                                       ; $5947: $be
    sbc $7a                                       ; $5948: $de $7a
    db $fc                                        ; $594a: $fc
    db $fc                                        ; $594b: $fc
    ldh a, [$90]                                  ; $594c: $f0 $90
    ld h, b                                       ; $594e: $60
    ld h, b                                       ; $594f: $60
    ld b, $06                                     ; $5950: $06 $06
    add hl, bc                                    ; $5952: $09
    rrca                                          ; $5953: $0f
    ld de, $381f                                  ; $5954: $11 $1f $38
    cpl                                           ; $5957: $2f
    dec a                                         ; $5958: $3d
    daa                                           ; $5959: $27
    ccf                                           ; $595a: $3f
    ld [hl], $3f                                  ; $595b: $36 $3f
    inc h                                         ; $595d: $24

jr_024_595e:
    ld a, a                                       ; $595e: $7f
    ld b, e                                       ; $595f: $43
    ld a, h                                       ; $5960: $7c
    ld b, a                                       ; $5961: $47
    db $fc                                        ; $5962: $fc
    sub a                                         ; $5963: $97
    ld a, h                                       ; $5964: $7c
    ld [hl], a                                    ; $5965: $77
    inc a                                         ; $5966: $3c
    cpl                                           ; $5967: $2f
    dec de                                        ; $5968: $1b
    rra                                           ; $5969: $1f
    rrca                                          ; $596a: $0f
    ld c, $0f                                     ; $596b: $0e $0f
    ld a, [bc]                                    ; $596d: $0a
    rlca                                          ; $596e: $07
    rlca                                          ; $596f: $07
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    add b                                         ; $5974: $80
    add b                                         ; $5975: $80
    ld b, b                                       ; $5976: $40
    ret nz                                        ; $5977: $c0

    ld b, b                                       ; $5978: $40
    ret nz                                        ; $5979: $c0

    and b                                         ; $597a: $a0
    ldh [$90], a                                  ; $597b: $e0 $90
    ldh a, [$08]                                  ; $597d: $f0 $08
    ld hl, sp+$08                                 ; $597f: $f8 $08
    ld hl, sp-$7c                                 ; $5981: $f8 $84
    db $fc                                        ; $5983: $fc
    add h                                         ; $5984: $84
    db $fc                                        ; $5985: $fc
    ld h, h                                       ; $5986: $64
    db $fc                                        ; $5987: $fc
    ld c, d                                       ; $5988: $4a
    cp $fe                                        ; $5989: $fe $fe
    cp $fa                                        ; $598b: $fe $fa
    ld c, [hl]                                    ; $598d: $4e
    db $fc                                        ; $598e: $fc
    db $fc                                        ; $598f: $fc
    ld bc, $0201                                  ; $5990: $01 $01 $02
    inc bc                                        ; $5993: $03
    inc b                                         ; $5994: $04
    rlca                                          ; $5995: $07
    ld [$180f], sp                                ; $5996: $08 $0f $18
    rra                                           ; $5999: $1f
    jr c, @+$31                                   ; $599a: $38 $2f

    jr c, @+$31                                   ; $599c: $38 $2f

    jr nc, jr_024_59df                            ; $599e: $30 $3f

    ld b, b                                       ; $59a0: $40
    ld a, a                                       ; $59a1: $7f
    ld b, b                                       ; $59a2: $40
    ld a, a                                       ; $59a3: $7f

jr_024_59a4:
    sub b                                         ; $59a4: $90
    rst $38                                       ; $59a5: $ff
    sbc b                                         ; $59a6: $98
    rst $38                                       ; $59a7: $ff
    db $f4                                        ; $59a8: $f4
    rst $38                                       ; $59a9: $ff

jr_024_59aa:
    rst $38                                       ; $59aa: $ff
    sbc a                                         ; $59ab: $9f
    ld l, h                                       ; $59ac: $6c
    ld l, h                                       ; $59ad: $6c
    nop                                           ; $59ae: $00
    nop                                           ; $59af: $00
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    add b                                         ; $59b2: $80
    add b                                         ; $59b3: $80
    ld b, b                                       ; $59b4: $40
    ret nz                                        ; $59b5: $c0

jr_024_59b6:
    jr nz, @-$1e                                  ; $59b6: $20 $e0

    jr nc, jr_024_59aa                            ; $59b8: $30 $f0

    jr c, jr_024_59a4                             ; $59ba: $38 $e8

    jr jr_024_59b6                                ; $59bc: $18 $f8

    inc b                                         ; $59be: $04
    db $fc                                        ; $59bf: $fc
    inc b                                         ; $59c0: $04
    db $fc                                        ; $59c1: $fc
    ld [de], a                                    ; $59c2: $12
    cp $36                                        ; $59c3: $fe $36
    cp $1e                                        ; $59c5: $fe $1e
    ld a, [$fc9c]                                 ; $59c7: $fa $9c $fc
    ldh a, [$f0]                                  ; $59ca: $f0 $f0
    ldh a, [$90]                                  ; $59cc: $f0 $90
    ld h, b                                       ; $59ce: $60
    ld h, b                                       ; $59cf: $60
    nop                                           ; $59d0: $00
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    nop                                           ; $59d3: $00
    nop                                           ; $59d4: $00
    nop                                           ; $59d5: $00
    ld bc, $0201                                  ; $59d6: $01 $01 $02
    inc bc                                        ; $59d9: $03
    ld [bc], a                                    ; $59da: $02
    inc bc                                        ; $59db: $03
    dec b                                         ; $59dc: $05
    rlca                                          ; $59dd: $07
    add hl, bc                                    ; $59de: $09

jr_024_59df:
    rrca                                          ; $59df: $0f
    db $10                                        ; $59e0: $10
    rra                                           ; $59e1: $1f
    db $10                                        ; $59e2: $10
    rra                                           ; $59e3: $1f
    ld hl, $263f                                  ; $59e4: $21 $3f $26
    ccf                                           ; $59e7: $3f
    ld d, d                                       ; $59e8: $52
    ld a, a                                       ; $59e9: $7f
    ld a, a                                       ; $59ea: $7f
    ld a, a                                       ; $59eb: $7f
    ld e, a                                       ; $59ec: $5f
    ld [hl], d                                    ; $59ed: $72
    ccf                                           ; $59ee: $3f
    ccf                                           ; $59ef: $3f
    nop                                           ; $59f0: $00
    nop                                           ; $59f1: $00
    ld h, b                                       ; $59f2: $60
    ld h, b                                       ; $59f3: $60
    sub b                                         ; $59f4: $90
    ldh a, [$88]                                  ; $59f5: $f0 $88
    ld hl, sp+$1c                                 ; $59f7: $f8 $1c
    db $f4                                        ; $59f9: $f4
    cp h                                          ; $59fa: $bc
    db $e4                                        ; $59fb: $e4
    db $fc                                        ; $59fc: $fc
    ld l, h                                       ; $59fd: $6c
    db $fc                                        ; $59fe: $fc
    inc h                                         ; $59ff: $24
    cp $c2                                        ; $5a00: $fe $c2
    ld a, $e2                                     ; $5a02: $3e $e2
    ld a, $ee                                     ; $5a04: $3e $ee
    inc a                                         ; $5a06: $3c
    db $f4                                        ; $5a07: $f4
    ret c                                         ; $5a08: $d8

    ld hl, sp-$10                                 ; $5a09: $f8 $f0
    ld [hl], b                                    ; $5a0b: $70
    ldh a, [$50]                                  ; $5a0c: $f0 $50
    ldh [$e0], a                                  ; $5a0e: $e0 $e0
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    ld bc, $0201                                  ; $5a12: $01 $01 $02
    inc bc                                        ; $5a15: $03
    inc b                                         ; $5a16: $04
    rlca                                          ; $5a17: $07
    ld a, [bc]                                    ; $5a18: $0a
    rrca                                          ; $5a19: $0f
    rra                                           ; $5a1a: $1f
    dec e                                         ; $5a1b: $1d
    ccf                                           ; $5a1c: $3f
    ld a, [hl+]                                   ; $5a1d: $2a
    ccf                                           ; $5a1e: $3f
    jr z, @+$61                                   ; $5a1f: $28 $5f

    ld [hl], d                                    ; $5a21: $72
    ld e, a                                       ; $5a22: $5f
    ld [hl], c                                    ; $5a23: $71
    sbc a                                         ; $5a24: $9f
    rst $38                                       ; $5a25: $ff
    rst $10                                       ; $5a26: $d7
    db $fc                                        ; $5a27: $fc
    di                                            ; $5a28: $f3
    cp a                                          ; $5a29: $bf
    ld a, l                                       ; $5a2a: $7d
    ld a, a                                       ; $5a2b: $7f
    ld e, $12                                     ; $5a2c: $1e $12
    inc c                                         ; $5a2e: $0c
    inc c                                         ; $5a2f: $0c
    nop                                           ; $5a30: $00
    nop                                           ; $5a31: $00
    nop                                           ; $5a32: $00
    nop                                           ; $5a33: $00
    add b                                         ; $5a34: $80
    add b                                         ; $5a35: $80
    ld b, b                                       ; $5a36: $40
    ret nz                                        ; $5a37: $c0

    and b                                         ; $5a38: $a0
    ldh [$f0], a                                  ; $5a39: $e0 $f0
    ld [hl], b                                    ; $5a3b: $70
    ld hl, sp-$58                                 ; $5a3c: $f8 $a8
    ld hl, sp+$28                                 ; $5a3e: $f8 $28
    ld hl, sp-$68                                 ; $5a40: $f8 $98
    db $f4                                        ; $5a42: $f4
    inc e                                         ; $5a43: $1c
    ld [c], a                                     ; $5a44: $e2
    cp $d2                                        ; $5a45: $fe $d2
    ld a, [hl]                                    ; $5a47: $7e
    sbc [hl]                                      ; $5a48: $9e
    cp $fe                                        ; $5a49: $fe $fe
    ld a, [c]                                     ; $5a4b: $f2
    ld l, h                                       ; $5a4c: $6c
    ld l, h                                       ; $5a4d: $6c
    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    ld b, $06                                     ; $5a52: $06 $06
    add hl, bc                                    ; $5a54: $09
    rrca                                          ; $5a55: $0f
    ld de, $381f                                  ; $5a56: $11 $1f $38
    cpl                                           ; $5a59: $2f
    dec a                                         ; $5a5a: $3d
    daa                                           ; $5a5b: $27
    ccf                                           ; $5a5c: $3f
    ld [hl], $3f                                  ; $5a5d: $36 $3f
    inc h                                         ; $5a5f: $24
    ld a, a                                       ; $5a60: $7f
    ld b, e                                       ; $5a61: $43
    ld a, h                                       ; $5a62: $7c
    ld b, a                                       ; $5a63: $47
    ld l, b                                       ; $5a64: $68
    ld a, a                                       ; $5a65: $7f
    jr @+$21                                      ; $5a66: $18 $1f

    dec a                                         ; $5a68: $3d
    cpl                                           ; $5a69: $2f
    rra                                           ; $5a6a: $1f
    dec de                                        ; $5a6b: $1b
    rrca                                          ; $5a6c: $0f
    add hl, bc                                    ; $5a6d: $09
    rlca                                          ; $5a6e: $07
    rlca                                          ; $5a6f: $07
    nop                                           ; $5a70: $00
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    nop                                           ; $5a73: $00
    nop                                           ; $5a74: $00
    nop                                           ; $5a75: $00
    add b                                         ; $5a76: $80
    add b                                         ; $5a77: $80
    ld b, b                                       ; $5a78: $40
    ret nz                                        ; $5a79: $c0

    ld b, b                                       ; $5a7a: $40
    ret nz                                        ; $5a7b: $c0

    and b                                         ; $5a7c: $a0
    ldh [$90], a                                  ; $5a7d: $e0 $90
    ldh a, [$08]                                  ; $5a7f: $f0 $08
    ld hl, sp+$08                                 ; $5a81: $f8 $08
    ld hl, sp-$7c                                 ; $5a83: $f8 $84
    db $fc                                        ; $5a85: $fc
    jp nz, Jump_024_63fe                          ; $5a86: $c2 $fe $63

    cp a                                          ; $5a89: $bf
    rst $38                                       ; $5a8a: $ff
    db $fd                                        ; $5a8b: $fd
    cp $b2                                        ; $5a8c: $fe $b2
    call c, Call_000_00dc                         ; $5a8e: $dc $dc $00
    nop                                           ; $5a91: $00
    ld bc, $0201                                  ; $5a92: $01 $01 $02
    inc bc                                        ; $5a95: $03
    inc b                                         ; $5a96: $04
    rlca                                          ; $5a97: $07
    ld [$180f], sp                                ; $5a98: $08 $0f $18
    rra                                           ; $5a9b: $1f
    jr c, jr_024_5acd                             ; $5a9c: $38 $2f

    jr nc, @+$41                                  ; $5a9e: $30 $3f

    ld b, b                                       ; $5aa0: $40
    ld a, a                                       ; $5aa1: $7f
    ld b, b                                       ; $5aa2: $40
    ld a, a                                       ; $5aa3: $7f
    ret c                                         ; $5aa4: $d8

    rst $38                                       ; $5aa5: $ff

jr_024_5aa6:
    ldh a, [$bf]                                  ; $5aa6: $f0 $bf

jr_024_5aa8:
    ld [hl], d                                    ; $5aa8: $72
    ld a, a                                       ; $5aa9: $7f
    rra                                           ; $5aaa: $1f
    rra                                           ; $5aab: $1f

jr_024_5aac:
    ld e, $12                                     ; $5aac: $1e $12
    inc c                                         ; $5aae: $0c
    inc c                                         ; $5aaf: $0c
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00

jr_024_5ab2:
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    add b                                         ; $5ab4: $80
    add b                                         ; $5ab5: $80
    ld b, b                                       ; $5ab6: $40
    ret nz                                        ; $5ab7: $c0

    jr nz, @-$1e                                  ; $5ab8: $20 $e0

jr_024_5aba:
    jr nc, jr_024_5aac                            ; $5aba: $30 $f0

    jr c, jr_024_5aa6                             ; $5abc: $38 $e8

    jr c, jr_024_5aa8                             ; $5abe: $38 $e8

    jr jr_024_5aba                                ; $5ac0: $18 $f8

    inc b                                         ; $5ac2: $04
    db $fc                                        ; $5ac3: $fc
    ld [de], a                                    ; $5ac4: $12
    cp $32                                        ; $5ac5: $fe $32
    cp $5e                                        ; $5ac7: $fe $5e
    cp $fe                                        ; $5ac9: $fe $fe
    ld a, [c]                                     ; $5acb: $f2
    ld l, h                                       ; $5acc: $6c

jr_024_5acd:
    ld l, h                                       ; $5acd: $6c
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    ld bc, $0101                                  ; $5ad6: $01 $01 $01
    ld bc, $0302                                  ; $5ad9: $01 $02 $03
    inc b                                         ; $5adc: $04
    rlca                                          ; $5add: $07
    ld [$080f], sp                                ; $5ade: $08 $0f $08
    rrca                                          ; $5ae1: $0f
    ld hl, $213f                                  ; $5ae2: $21 $3f $21
    ccf                                           ; $5ae5: $3f
    ld h, $3f                                     ; $5ae6: $26 $3f
    ld d, d                                       ; $5ae8: $52
    ld a, a                                       ; $5ae9: $7f
    ld a, a                                       ; $5aea: $7f
    ld a, a                                       ; $5aeb: $7f
    ld e, a                                       ; $5aec: $5f
    ld [hl], d                                    ; $5aed: $72
    ccf                                           ; $5aee: $3f
    ccf                                           ; $5aef: $3f
    jr nc, @+$32                                  ; $5af0: $30 $30

    ld c, b                                       ; $5af2: $48
    ld a, b                                       ; $5af3: $78
    call nz, $0efc                                ; $5af4: $c4 $fc $0e
    ld a, [$f25e]                                 ; $5af7: $fa $5e $f2
    cp $b6                                        ; $5afa: $fe $b6
    cp $92                                        ; $5afc: $fe $92
    ld a, a                                       ; $5afe: $7f
    pop hl                                        ; $5aff: $e1
    rra                                           ; $5b00: $1f
    pop af                                        ; $5b01: $f1
    ccf                                           ; $5b02: $3f
    jp hl                                         ; $5b03: $e9


    ld a, $ee                                     ; $5b04: $3e $ee
    inc a                                         ; $5b06: $3c
    db $f4                                        ; $5b07: $f4
    ret c                                         ; $5b08: $d8

    ld hl, sp-$10                                 ; $5b09: $f8 $f0
    ld [hl], b                                    ; $5b0b: $70
    ldh a, [$50]                                  ; $5b0c: $f0 $50
    ldh [$e0], a                                  ; $5b0e: $e0 $e0
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    ld bc, $0201                                  ; $5b12: $01 $01 $02
    inc bc                                        ; $5b15: $03

jr_024_5b16:
    dec b                                         ; $5b16: $05
    rlca                                          ; $5b17: $07
    rrca                                          ; $5b18: $0f
    ld c, $1f                                     ; $5b19: $0e $1f
    dec d                                         ; $5b1b: $15
    rra                                           ; $5b1c: $1f
    inc d                                         ; $5b1d: $14
    cpl                                           ; $5b1e: $2f
    add hl, sp                                    ; $5b1f: $39
    cpl                                           ; $5b20: $2f
    jr c, jr_024_5ab2                             ; $5b21: $38 $8f

    ld sp, hl                                     ; $5b23: $f9
    sbc a                                         ; $5b24: $9f
    rst $38                                       ; $5b25: $ff
    rst $10                                       ; $5b26: $d7
    db $fc                                        ; $5b27: $fc
    di                                            ; $5b28: $f3
    cp a                                          ; $5b29: $bf
    ld a, l                                       ; $5b2a: $7d
    ld a, a                                       ; $5b2b: $7f
    ld e, $12                                     ; $5b2c: $1e $12
    inc c                                         ; $5b2e: $0c
    inc c                                         ; $5b2f: $0c
    add b                                         ; $5b30: $80
    add b                                         ; $5b31: $80
    ld b, b                                       ; $5b32: $40
    ret nz                                        ; $5b33: $c0

    jr nz, jr_024_5b16                            ; $5b34: $20 $e0

    ld d, b                                       ; $5b36: $50
    ldh a, [$f8]                                  ; $5b37: $f0 $f8
    cp b                                          ; $5b39: $b8
    db $fc                                        ; $5b3a: $fc
    ld d, h                                       ; $5b3b: $54
    db $fc                                        ; $5b3c: $fc
    inc d                                         ; $5b3d: $14
    db $fc                                        ; $5b3e: $fc
    ld c, h                                       ; $5b3f: $4c
    ld a, [$e48e]                                 ; $5b40: $fa $8e $e4
    inc a                                         ; $5b43: $3c
    ld [c], a                                     ; $5b44: $e2
    cp $d2                                        ; $5b45: $fe $d2
    ld a, [hl]                                    ; $5b47: $7e
    sbc [hl]                                      ; $5b48: $9e
    cp $fe                                        ; $5b49: $fe $fe
    ld a, [c]                                     ; $5b4b: $f2
    ld l, h                                       ; $5b4c: $6c
    ld l, h                                       ; $5b4d: $6c
    nop                                           ; $5b4e: $00
    nop                                           ; $5b4f: $00
    inc bc                                        ; $5b50: $03
    inc bc                                        ; $5b51: $03
    inc b                                         ; $5b52: $04
    rlca                                          ; $5b53: $07
    ld [$1c0f], sp                                ; $5b54: $08 $0f $1c
    rla                                           ; $5b57: $17

jr_024_5b58:
    ld e, $13                                     ; $5b58: $1e $13
    rra                                           ; $5b5a: $1f
    dec de                                        ; $5b5b: $1b
    rra                                           ; $5b5c: $1f
    ld [de], a                                    ; $5b5d: $12
    ccf                                           ; $5b5e: $3f
    ld hl, $233e                                  ; $5b5f: $21 $3e $23
    db $fc                                        ; $5b62: $fc
    sub a                                         ; $5b63: $97
    ld l, b                                       ; $5b64: $68
    ld a, a                                       ; $5b65: $7f
    jr @+$21                                      ; $5b66: $18 $1f

    dec a                                         ; $5b68: $3d
    cpl                                           ; $5b69: $2f
    rra                                           ; $5b6a: $1f
    dec de                                        ; $5b6b: $1b
    rrca                                          ; $5b6c: $0f
    add hl, bc                                    ; $5b6d: $09
    rlca                                          ; $5b6e: $07
    rlca                                          ; $5b6f: $07
    nop                                           ; $5b70: $00
    nop                                           ; $5b71: $00
    add b                                         ; $5b72: $80
    add b                                         ; $5b73: $80
    ret nz                                        ; $5b74: $c0

    ret nz                                        ; $5b75: $c0

    jr nz, jr_024_5b58                            ; $5b76: $20 $e0

    and b                                         ; $5b78: $a0
    ldh [$d0], a                                  ; $5b79: $e0 $d0
    ld [hl], b                                    ; $5b7b: $70
    ret z                                         ; $5b7c: $c8

    ld a, b                                       ; $5b7d: $78
    add h                                         ; $5b7e: $84
    db $fc                                        ; $5b7f: $fc
    inc b                                         ; $5b80: $04
    db $fc                                        ; $5b81: $fc
    inc b                                         ; $5b82: $04
    db $fc                                        ; $5b83: $fc
    add h                                         ; $5b84: $84
    db $fc                                        ; $5b85: $fc
    jp nz, Jump_024_63fe                          ; $5b86: $c2 $fe $63

    cp a                                          ; $5b89: $bf
    rst $38                                       ; $5b8a: $ff
    db $fd                                        ; $5b8b: $fd
    cp $b2                                        ; $5b8c: $fe $b2
    call c, Call_000_00dc                         ; $5b8e: $dc $dc $00
    nop                                           ; $5b91: $00
    ld bc, $0201                                  ; $5b92: $01 $01 $02
    inc bc                                        ; $5b95: $03

jr_024_5b96:
    inc b                                         ; $5b96: $04
    rlca                                          ; $5b97: $07
    inc c                                         ; $5b98: $0c
    rrca                                          ; $5b99: $0f
    inc e                                         ; $5b9a: $1c
    rla                                           ; $5b9b: $17
    jr jr_024_5bbd                                ; $5b9c: $18 $1f

    jr nz, jr_024_5bdf                            ; $5b9e: $20 $3f

    jr nz, @+$41                                  ; $5ba0: $20 $3f

    sub b                                         ; $5ba2: $90
    rst $38                                       ; $5ba3: $ff
    ret c                                         ; $5ba4: $d8

    rst $38                                       ; $5ba5: $ff
    ldh a, [$bf]                                  ; $5ba6: $f0 $bf
    ld [hl], d                                    ; $5ba8: $72
    ld a, a                                       ; $5ba9: $7f
    rra                                           ; $5baa: $1f
    rra                                           ; $5bab: $1f
    ld e, $12                                     ; $5bac: $1e $12
    inc c                                         ; $5bae: $0c
    inc c                                         ; $5baf: $0c
    add b                                         ; $5bb0: $80
    add b                                         ; $5bb1: $80
    ld b, b                                       ; $5bb2: $40
    ret nz                                        ; $5bb3: $c0

    jr nz, jr_024_5b96                            ; $5bb4: $20 $e0

    db $10                                        ; $5bb6: $10
    ldh a, [rNR23]                                ; $5bb7: $f0 $18
    ld hl, sp+$1c                                 ; $5bb9: $f8 $1c
    db $f4                                        ; $5bbb: $f4
    inc e                                         ; $5bbc: $1c

jr_024_5bbd:
    db $f4                                        ; $5bbd: $f4
    inc c                                         ; $5bbe: $0c
    db $fc                                        ; $5bbf: $fc
    ld [bc], a                                    ; $5bc0: $02
    cp $04                                        ; $5bc1: $fe $04
    db $fc                                        ; $5bc3: $fc
    ld [de], a                                    ; $5bc4: $12
    cp $32                                        ; $5bc5: $fe $32
    cp $5e                                        ; $5bc7: $fe $5e
    cp $fe                                        ; $5bc9: $fe $fe
    ld a, [c]                                     ; $5bcb: $f2
    ld l, h                                       ; $5bcc: $6c
    ld l, h                                       ; $5bcd: $6c
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00
    nop                                           ; $5bd1: $00
    ld bc, $0301                                  ; $5bd2: $01 $01 $03
    inc bc                                        ; $5bd5: $03
    inc b                                         ; $5bd6: $04
    rlca                                          ; $5bd7: $07
    dec b                                         ; $5bd8: $05
    rlca                                          ; $5bd9: $07
    dec bc                                        ; $5bda: $0b
    ld c, $13                                     ; $5bdb: $0e $13
    ld e, $21                                     ; $5bdd: $1e $21

jr_024_5bdf:
    ccf                                           ; $5bdf: $3f
    jr nz, jr_024_5c21                            ; $5be0: $20 $3f

    ld hl, $213f                                  ; $5be2: $21 $3f $21
    ccf                                           ; $5be5: $3f
    ld h, $3f                                     ; $5be6: $26 $3f
    ld d, d                                       ; $5be8: $52
    ld a, a                                       ; $5be9: $7f
    ld a, a                                       ; $5bea: $7f
    ld a, a                                       ; $5beb: $7f
    ld e, a                                       ; $5bec: $5f
    ld [hl], d                                    ; $5bed: $72
    ccf                                           ; $5bee: $3f
    ccf                                           ; $5bef: $3f
    ret nz                                        ; $5bf0: $c0

    ret nz                                        ; $5bf1: $c0

    jr nz, @-$1e                                  ; $5bf2: $20 $e0

    db $10                                        ; $5bf4: $10
    ldh a, [$38]                                  ; $5bf5: $f0 $38
    add sp, $78                                   ; $5bf7: $e8 $78
    ret z                                         ; $5bf9: $c8

    ld hl, sp-$28                                 ; $5bfa: $f8 $d8
    ld hl, sp+$48                                 ; $5bfc: $f8 $48
    db $fc                                        ; $5bfe: $fc
    add h                                         ; $5bff: $84
    ld a, h                                       ; $5c00: $7c
    call nz, $e93f                                ; $5c01: $c4 $3f $e9
    ld a, $ee                                     ; $5c04: $3e $ee
    inc a                                         ; $5c06: $3c
    db $f4                                        ; $5c07: $f4
    ret c                                         ; $5c08: $d8

    ld hl, sp-$10                                 ; $5c09: $f8 $f0
    ld [hl], b                                    ; $5c0b: $70
    ldh a, [$50]                                  ; $5c0c: $f0 $50
    ldh [$e0], a                                  ; $5c0e: $e0 $e0
    ld [bc], a                                    ; $5c10: $02
    ld [bc], a                                    ; $5c11: $02
    dec b                                         ; $5c12: $05
    rlca                                          ; $5c13: $07
    ld [$150f], sp                                ; $5c14: $08 $0f $15
    rra                                           ; $5c17: $1f
    ccf                                           ; $5c18: $3f
    ld a, [hl-]                                   ; $5c19: $3a
    ld a, a                                       ; $5c1a: $7f
    ld d, l                                       ; $5c1b: $55
    ld a, a                                       ; $5c1c: $7f
    ld d, b                                       ; $5c1d: $50
    cp a                                          ; $5c1e: $bf
    push hl                                       ; $5c1f: $e5
    cp a                                          ; $5c20: $bf

jr_024_5c21:
    ld [c], a                                     ; $5c21: $e2
    adc a                                         ; $5c22: $8f
    ld sp, hl                                     ; $5c23: $f9
    sbc a                                         ; $5c24: $9f
    rst $38                                       ; $5c25: $ff
    rst $10                                       ; $5c26: $d7
    db $fc                                        ; $5c27: $fc
    di                                            ; $5c28: $f3
    cp a                                          ; $5c29: $bf
    ld a, l                                       ; $5c2a: $7d
    ld a, a                                       ; $5c2b: $7f
    ld e, $12                                     ; $5c2c: $1e $12
    inc c                                         ; $5c2e: $0c
    inc c                                         ; $5c2f: $0c
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    nop                                           ; $5c33: $00
    add b                                         ; $5c34: $80
    add b                                         ; $5c35: $80
    ld b, b                                       ; $5c36: $40
    ret nz                                        ; $5c37: $c0

    ldh [$e0], a                                  ; $5c38: $e0 $e0
    ldh a, [$50]                                  ; $5c3a: $f0 $50
    ldh a, [$50]                                  ; $5c3c: $f0 $50
    ldh a, [$30]                                  ; $5c3e: $f0 $30
    add sp, $38                                   ; $5c40: $e8 $38
    db $e4                                        ; $5c42: $e4
    inc a                                         ; $5c43: $3c
    ld [c], a                                     ; $5c44: $e2
    cp $d2                                        ; $5c45: $fe $d2
    ld a, [hl]                                    ; $5c47: $7e
    sbc [hl]                                      ; $5c48: $9e
    cp $fe                                        ; $5c49: $fe $fe
    ld a, [c]                                     ; $5c4b: $f2
    ld l, h                                       ; $5c4c: $6c
    ld l, h                                       ; $5c4d: $6c
    nop                                           ; $5c4e: $00
    nop                                           ; $5c4f: $00
    inc c                                         ; $5c50: $0c
    inc c                                         ; $5c51: $0c
    ld [de], a                                    ; $5c52: $12
    ld e, $23                                     ; $5c53: $1e $23
    ccf                                           ; $5c55: $3f
    ld [hl], b                                    ; $5c56: $70
    ld e, a                                       ; $5c57: $5f
    ld a, d                                       ; $5c58: $7a
    ld c, a                                       ; $5c59: $4f
    ld a, a                                       ; $5c5a: $7f
    ld l, l                                       ; $5c5b: $6d
    ld a, a                                       ; $5c5c: $7f
    ld c, c                                       ; $5c5d: $49

jr_024_5c5e:
    cp $87                                        ; $5c5e: $fe $87
    ld hl, sp-$71                                 ; $5c60: $f8 $8f
    db $fc                                        ; $5c62: $fc
    sub a                                         ; $5c63: $97
    ld l, b                                       ; $5c64: $68
    ld a, a                                       ; $5c65: $7f
    jr @+$21                                      ; $5c66: $18 $1f

    dec a                                         ; $5c68: $3d
    cpl                                           ; $5c69: $2f
    rra                                           ; $5c6a: $1f
    dec de                                        ; $5c6b: $1b
    rrca                                          ; $5c6c: $0f
    add hl, bc                                    ; $5c6d: $09
    rlca                                          ; $5c6e: $07
    rlca                                          ; $5c6f: $07
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00
    nop                                           ; $5c74: $00
    nop                                           ; $5c75: $00
    add b                                         ; $5c76: $80
    add b                                         ; $5c77: $80
    add b                                         ; $5c78: $80
    add b                                         ; $5c79: $80
    ld b, b                                       ; $5c7a: $40
    ret nz                                        ; $5c7b: $c0

    jr nz, jr_024_5c5e                            ; $5c7c: $20 $e0

    db $10                                        ; $5c7e: $10
    ldh a, [rNR10]                                ; $5c7f: $f0 $10
    ldh a, [rDIV]                                 ; $5c81: $f0 $04
    db $fc                                        ; $5c83: $fc
    add h                                         ; $5c84: $84
    db $fc                                        ; $5c85: $fc
    jp nz, Jump_024_63fe                          ; $5c86: $c2 $fe $63

    cp a                                          ; $5c89: $bf
    rst $38                                       ; $5c8a: $ff
    db $fd                                        ; $5c8b: $fd
    cp $b2                                        ; $5c8c: $fe $b2
    call c, Call_000_02dc                         ; $5c8e: $dc $dc $02
    ld [bc], a                                    ; $5c91: $02
    dec b                                         ; $5c92: $05
    rlca                                          ; $5c93: $07
    ld [$100f], sp                                ; $5c94: $08 $0f $10
    rra                                           ; $5c97: $1f
    jr nc, jr_024_5cd9                            ; $5c98: $30 $3f

    ld [hl], b                                    ; $5c9a: $70
    ld e, a                                       ; $5c9b: $5f
    ld h, b                                       ; $5c9c: $60
    ld a, a                                       ; $5c9d: $7f
    add b                                         ; $5c9e: $80
    rst $38                                       ; $5c9f: $ff
    add b                                         ; $5ca0: $80
    rst $38                                       ; $5ca1: $ff
    sub b                                         ; $5ca2: $90
    rst $38                                       ; $5ca3: $ff
    ret c                                         ; $5ca4: $d8

    rst $38                                       ; $5ca5: $ff
    ldh a, [$bf]                                  ; $5ca6: $f0 $bf
    ld [hl], d                                    ; $5ca8: $72
    ld a, a                                       ; $5ca9: $7f
    rra                                           ; $5caa: $1f
    rra                                           ; $5cab: $1f
    ld e, $12                                     ; $5cac: $1e $12
    inc c                                         ; $5cae: $0c
    inc c                                         ; $5caf: $0c

jr_024_5cb0:
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    add b                                         ; $5cb4: $80
    add b                                         ; $5cb5: $80
    ld b, b                                       ; $5cb6: $40
    ret nz                                        ; $5cb7: $c0

    ld h, b                                       ; $5cb8: $60
    ldh [rSVBK], a                                ; $5cb9: $e0 $70
    ret nc                                        ; $5cbb: $d0

    ld [hl], b                                    ; $5cbc: $70
    ret nc                                        ; $5cbd: $d0

    jr nc, jr_024_5cb0                            ; $5cbe: $30 $f0

    ld [$04f8], sp                                ; $5cc0: $08 $f8 $04
    db $fc                                        ; $5cc3: $fc
    ld [de], a                                    ; $5cc4: $12
    cp $32                                        ; $5cc5: $fe $32
    cp $5e                                        ; $5cc7: $fe $5e
    cp $fe                                        ; $5cc9: $fe $fe
    ld a, [c]                                     ; $5ccb: $f2
    ld l, h                                       ; $5ccc: $6c
    ld l, h                                       ; $5ccd: $6c
    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    nop                                           ; $5cd0: $00
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00
    nop                                           ; $5cd3: $00
    nop                                           ; $5cd4: $00
    nop                                           ; $5cd5: $00
    ld bc, $0201                                  ; $5cd6: $01 $01 $02

jr_024_5cd9:
    inc bc                                        ; $5cd9: $03
    ld [bc], a                                    ; $5cda: $02
    inc bc                                        ; $5cdb: $03
    dec b                                         ; $5cdc: $05
    rlca                                          ; $5cdd: $07
    ld [$080f], sp                                ; $5cde: $08 $0f $08
    rrca                                          ; $5ce1: $0f
    ld de, $121f                                  ; $5ce2: $11 $1f $12
    rra                                           ; $5ce5: $1f
    ld a, [hl+]                                   ; $5ce6: $2a
    ccf                                           ; $5ce7: $3f
    ccf                                           ; $5ce8: $3f
    ccf                                           ; $5ce9: $3f
    cpl                                           ; $5cea: $2f
    ld a, [hl-]                                   ; $5ceb: $3a
    rra                                           ; $5cec: $1f
    rra                                           ; $5ced: $1f

jr_024_5cee:
    nop                                           ; $5cee: $00
    nop                                           ; $5cef: $00
    nop                                           ; $5cf0: $00
    nop                                           ; $5cf1: $00
    ld b, b                                       ; $5cf2: $40
    ld b, b                                       ; $5cf3: $40
    and b                                         ; $5cf4: $a0
    ldh [$90], a                                  ; $5cf5: $e0 $90
    ldh a, [$38]                                  ; $5cf7: $f0 $38
    add sp, -$48                                  ; $5cf9: $e8 $b8
    ret z                                         ; $5cfb: $c8

Call_024_5cfc:
    ld hl, sp+$08                                 ; $5cfc: $f8 $08
    db $fc                                        ; $5cfe: $fc
    call nz, $c43c                                ; $5cff: $c4 $3c $c4
    ld a, $d2                                     ; $5d02: $3e $d2
    jr c, jr_024_5cee                             ; $5d04: $38 $e8

    ldh a, [$f0]                                  ; $5d06: $f0 $f0
    ldh [$60], a                                  ; $5d08: $e0 $60
    ldh [$60], a                                  ; $5d0a: $e0 $60
    ret nz                                        ; $5d0c: $c0

    ret nz                                        ; $5d0d: $c0

    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    nop                                           ; $5d10: $00
    nop                                           ; $5d11: $00
    ld bc, $0201                                  ; $5d12: $01 $01 $02
    inc bc                                        ; $5d15: $03
    nop                                           ; $5d16: $00
    inc bc                                        ; $5d17: $03
    ld b, $07                                     ; $5d18: $06 $07
    rrca                                          ; $5d1a: $0f
    dec c                                         ; $5d1b: $0d
    rra                                           ; $5d1c: $1f
    inc d                                         ; $5d1d: $14
    cpl                                           ; $5d1e: $2f
    ld a, [hl-]                                   ; $5d1f: $3a
    cpl                                           ; $5d20: $2f
    add hl, sp                                    ; $5d21: $39
    ld b, a                                       ; $5d22: $47
    ld a, l                                       ; $5d23: $7d
    ld l, e                                       ; $5d24: $6b
    ld a, h                                       ; $5d25: $7c
    ld a, e                                       ; $5d26: $7b
    ld e, a                                       ; $5d27: $5f
    dec a                                         ; $5d28: $3d

jr_024_5d29:
    ccf                                           ; $5d29: $3f
    ld c, $0a                                     ; $5d2a: $0e $0a
    inc b                                         ; $5d2c: $04
    inc b                                         ; $5d2d: $04
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    nop                                           ; $5d33: $00
    add b                                         ; $5d34: $80
    add b                                         ; $5d35: $80
    ld b, b                                       ; $5d36: $40
    ret nz                                        ; $5d37: $c0

    add b                                         ; $5d38: $80
    ret nz                                        ; $5d39: $c0

    ldh [$60], a                                  ; $5d3a: $e0 $60
    ldh a, [rNR10]                                ; $5d3c: $f0 $10
    ldh a, [$b0]                                  ; $5d3e: $f0 $b0
    add sp, $38                                   ; $5d40: $e8 $38
    ret z                                         ; $5d42: $c8

    jr c, jr_024_5d29                             ; $5d43: $38 $e4

    ld a, h                                       ; $5d45: $7c
    cp h                                          ; $5d46: $bc
    db $fc                                        ; $5d47: $fc
    db $fc                                        ; $5d48: $fc
    db $e4                                        ; $5d49: $e4
    ld e, b                                       ; $5d4a: $58
    ld e, b                                       ; $5d4b: $58
    nop                                           ; $5d4c: $00
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    ld [bc], a                                    ; $5d52: $02
    ld [bc], a                                    ; $5d53: $02
    dec b                                         ; $5d54: $05
    rlca                                          ; $5d55: $07
    add hl, bc                                    ; $5d56: $09
    rrca                                          ; $5d57: $0f
    inc e                                         ; $5d58: $1c
    rla                                           ; $5d59: $17
    dec e                                         ; $5d5a: $1d
    inc de                                        ; $5d5b: $13
    rra                                           ; $5d5c: $1f
    db $10                                        ; $5d5d: $10
    ccf                                           ; $5d5e: $3f
    inc hl                                        ; $5d5f: $23
    inc a                                         ; $5d60: $3c
    inc hl                                        ; $5d61: $23
    ld a, h                                       ; $5d62: $7c
    ld c, e                                       ; $5d63: $4b
    inc c                                         ; $5d64: $0c
    rrca                                          ; $5d65: $0f
    dec e                                         ; $5d66: $1d
    rla                                           ; $5d67: $17
    rrca                                          ; $5d68: $0f
    rrca                                          ; $5d69: $0f
    rlca                                          ; $5d6a: $07
    dec b                                         ; $5d6b: $05
    inc bc                                        ; $5d6c: $03
    inc bc                                        ; $5d6d: $03
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    nop                                           ; $5d71: $00
    nop                                           ; $5d72: $00
    nop                                           ; $5d73: $00
    nop                                           ; $5d74: $00
    nop                                           ; $5d75: $00
    add b                                         ; $5d76: $80
    add b                                         ; $5d77: $80
    ld b, b                                       ; $5d78: $40
    ret nz                                        ; $5d79: $c0

    ld b, b                                       ; $5d7a: $40
    ret nz                                        ; $5d7b: $c0

    and b                                         ; $5d7c: $a0
    ldh [rNR10], a                                ; $5d7d: $e0 $10
    ldh a, [rNR10]                                ; $5d7f: $f0 $10
    ldh a, [$08]                                  ; $5d81: $f0 $08
    ld hl, sp-$3c                                 ; $5d83: $f8 $c4
    db $fc                                        ; $5d85: $fc
    ld b, [hl]                                    ; $5d86: $46
    cp [hl]                                       ; $5d87: $be
    cp $fa                                        ; $5d88: $fe $fa
    db $fc                                        ; $5d8a: $fc
    and h                                         ; $5d8b: $a4
    ld hl, sp-$08                                 ; $5d8c: $f8 $f8

jr_024_5d8e:
    nop                                           ; $5d8e: $00
    nop                                           ; $5d8f: $00
    nop                                           ; $5d90: $00
    nop                                           ; $5d91: $00
    ld bc, $0201                                  ; $5d92: $01 $01 $02
    inc bc                                        ; $5d95: $03
    nop                                           ; $5d96: $00
    inc bc                                        ; $5d97: $03
    inc b                                         ; $5d98: $04
    rlca                                          ; $5d99: $07
    inc c                                         ; $5d9a: $0c
    rrca                                          ; $5d9b: $0f

jr_024_5d9c:
    jr @+$21                                      ; $5d9c: $18 $1f

    jr nz, jr_024_5ddf                            ; $5d9e: $20 $3f

    jr nz, @+$41                                  ; $5da0: $20 $3f

    ld c, b                                       ; $5da2: $48
    ld a, a                                       ; $5da3: $7f
    ld a, b                                       ; $5da4: $78
    ld e, a                                       ; $5da5: $5f
    ld a, [hl-]                                   ; $5da6: $3a
    ccf                                           ; $5da7: $3f
    rrca                                          ; $5da8: $0f
    rrca                                          ; $5da9: $0f
    ld c, $0a                                     ; $5daa: $0e $0a
    inc b                                         ; $5dac: $04
    inc b                                         ; $5dad: $04
    nop                                           ; $5dae: $00
    nop                                           ; $5daf: $00

jr_024_5db0:
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    nop                                           ; $5db3: $00
    add b                                         ; $5db4: $80
    add b                                         ; $5db5: $80
    ld b, b                                       ; $5db6: $40
    ret nz                                        ; $5db7: $c0

    nop                                           ; $5db8: $00
    ret nz                                        ; $5db9: $c0

    jr nz, jr_024_5d9c                            ; $5dba: $20 $e0

    jr nc, jr_024_5d8e                            ; $5dbc: $30 $d0

    jr nc, jr_024_5db0                            ; $5dbe: $30 $f0

    ld [$08f8], sp                                ; $5dc0: $08 $f8 $08
    ld hl, sp+$24                                 ; $5dc3: $f8 $24
    db $fc                                        ; $5dc5: $fc
    ld a, h                                       ; $5dc6: $7c
    db $fc                                        ; $5dc7: $fc
    db $fc                                        ; $5dc8: $fc
    db $e4                                        ; $5dc9: $e4
    ld e, b                                       ; $5dca: $58
    ld e, b                                       ; $5dcb: $58
    nop                                           ; $5dcc: $00
    nop                                           ; $5dcd: $00
    nop                                           ; $5dce: $00
    nop                                           ; $5dcf: $00
    ld [c], a                                     ; $5dd0: $e2
    ld e, l                                       ; $5dd1: $5d
    push hl                                       ; $5dd2: $e5
    ld e, l                                       ; $5dd3: $5d
    db $eb                                        ; $5dd4: $eb
    ld e, l                                       ; $5dd5: $5d
    xor $5d                                       ; $5dd6: $ee $5d
    ld sp, hl                                     ; $5dd8: $f9
    ld e, l                                       ; $5dd9: $5d
    nop                                           ; $5dda: $00
    ld e, [hl]                                    ; $5ddb: $5e
    ld [$1c5e], sp                                ; $5ddc: $08 $5e $1c

jr_024_5ddf:
    ld e, [hl]                                    ; $5ddf: $5e
    jr z, jr_024_5e40                             ; $5de0: $28 $5e

    nop                                           ; $5de2: $00
    rst $38                                       ; $5de3: $ff
    db $fd                                        ; $5de4: $fd
    nop                                           ; $5de5: $00
    ld e, $01                                     ; $5de6: $1e $01
    ld e, $ff                                     ; $5de8: $1e $ff
    nop                                           ; $5dea: $00
    ld [bc], a                                    ; $5deb: $02
    rst $38                                       ; $5dec: $ff
    db $fd                                        ; $5ded: $fd
    ld [bc], a                                    ; $5dee: $02
    inc c                                         ; $5def: $0c
    inc bc                                        ; $5df0: $03
    inc c                                         ; $5df1: $0c
    inc b                                         ; $5df2: $04
    jr jr_024_5df7                                ; $5df3: $18 $02

    inc c                                         ; $5df5: $0c
    dec b                                         ; $5df6: $05

jr_024_5df7:
    inc c                                         ; $5df7: $0c
    db $fd                                        ; $5df8: $fd
    ld [bc], a                                    ; $5df9: $02
    jr @+$05                                      ; $5dfa: $18 $03

    jr jr_024_5e00                                ; $5dfc: $18 $02

    jr @-$01                                      ; $5dfe: $18 $fd

jr_024_5e00:
    nop                                           ; $5e00: $00
    ld a, [bc]                                    ; $5e01: $0a
    ld b, $1e                                     ; $5e02: $06 $1e
    nop                                           ; $5e04: $00
    ld a, [bc]                                    ; $5e05: $0a
    cp $01                                        ; $5e06: $fe $01
    nop                                           ; $5e08: $00
    ld a, [bc]                                    ; $5e09: $0a
    rlca                                          ; $5e0a: $07
    ld a, [bc]                                    ; $5e0b: $0a
    nop                                           ; $5e0c: $00
    inc bc                                        ; $5e0d: $03
    ld [$000a], sp                                ; $5e0e: $08 $0a $00
    inc bc                                        ; $5e11: $03
    rlca                                          ; $5e12: $07
    ld a, [bc]                                    ; $5e13: $0a
    nop                                           ; $5e14: $00
    inc bc                                        ; $5e15: $03
    ld [$000a], sp                                ; $5e16: $08 $0a $00
    ld a, [bc]                                    ; $5e19: $0a
    cp $01                                        ; $5e1a: $fe $01
    nop                                           ; $5e1c: $00
    ld a, [bc]                                    ; $5e1d: $0a
    add hl, bc                                    ; $5e1e: $09
    ld [$0800], sp                                ; $5e1f: $08 $00 $08
    add hl, bc                                    ; $5e22: $09
    ld [$0a00], sp                                ; $5e23: $08 $00 $0a
    cp $01                                        ; $5e26: $fe $01
    ld [bc], a                                    ; $5e28: $02
    ld [de], a                                    ; $5e29: $12
    inc bc                                        ; $5e2a: $03
    ld [de], a                                    ; $5e2b: $12
    ld [bc], a                                    ; $5e2c: $02
    ld e, $05                                     ; $5e2d: $1e $05
    ld [de], a                                    ; $5e2f: $12
    db $fd                                        ; $5e30: $fd
    ld h, e                                       ; $5e31: $63
    inc b                                         ; $5e32: $04
    ld b, c                                       ; $5e33: $41
    ld e, [hl]                                    ; $5e34: $5e
    ld h, b                                       ; $5e35: $60
    ld h, h                                       ; $5e36: $64
    add hl, sp                                    ; $5e37: $39
    ld e, [hl]                                    ; $5e38: $5e
    ld a, b                                       ; $5e39: $78
    ld a, [hl-]                                   ; $5e3a: $3a
    rst $38                                       ; $5e3b: $ff
    ld l, e                                       ; $5e3c: $6b
    add b                                         ; $5e3d: $80
    ld [de], a                                    ; $5e3e: $12
    nop                                           ; $5e3f: $00

jr_024_5e40:
    nop                                           ; $5e40: $00
    ld h, b                                       ; $5e41: $60
    ld e, [hl]                                    ; $5e42: $5e
    ld h, b                                       ; $5e43: $60
    ld e, a                                       ; $5e44: $5f
    ld h, b                                       ; $5e45: $60
    ld e, a                                       ; $5e46: $5f
    ld h, b                                       ; $5e47: $60
    ld e, a                                       ; $5e48: $5f
    ld h, b                                       ; $5e49: $60
    ld e, a                                       ; $5e4a: $5f
    ld h, b                                       ; $5e4b: $60
    ld e, a                                       ; $5e4c: $5f
    ld h, b                                       ; $5e4d: $60
    ld h, b                                       ; $5e4e: $60
    ld h, b                                       ; $5e4f: $60
    ld h, c                                       ; $5e50: $61
    ld h, b                                       ; $5e51: $60
    ld h, d                                       ; $5e52: $62
    ld h, b                                       ; $5e53: $60
    ld h, e                                       ; $5e54: $63
    nop                                           ; $5e55: $00
    nop                                           ; $5e56: $00
    nop                                           ; $5e57: $00
    nop                                           ; $5e58: $00
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00
    nop                                           ; $5e5b: $00
    nop                                           ; $5e5c: $00
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    nop                                           ; $5e60: $00
    nop                                           ; $5e61: $00
    ld bc, $0101                                  ; $5e62: $01 $01 $01
    ld bc, $0a0b                                  ; $5e65: $01 $0b $0a
    rra                                           ; $5e68: $1f
    rla                                           ; $5e69: $17
    rra                                           ; $5e6a: $1f
    dec e                                         ; $5e6b: $1d
    db $e3                                        ; $5e6c: $e3
    cp $f3                                        ; $5e6d: $fe $f3
    cp [hl]                                       ; $5e6f: $be
    ld a, a                                       ; $5e70: $7f
    ld l, l                                       ; $5e71: $6d
    ld d, a                                       ; $5e72: $57
    ld a, l                                       ; $5e73: $7d
    ld a, a                                       ; $5e74: $7f
    ld a, e                                       ; $5e75: $7b
    ld a, l                                       ; $5e76: $7d
    ld b, a                                       ; $5e77: $47
    ld a, c                                       ; $5e78: $79
    ld a, a                                       ; $5e79: $7f
    ld d, e                                       ; $5e7a: $53
    ld a, a                                       ; $5e7b: $7f
    sub a                                         ; $5e7c: $97
    db $fd                                        ; $5e7d: $fd
    rst $28                                       ; $5e7e: $ef
    rst $28                                       ; $5e7f: $ef
    ldh [$e0], a                                  ; $5e80: $e0 $e0
    ldh a, [$50]                                  ; $5e82: $f0 $50
    ld hl, sp+$58                                 ; $5e84: $f8 $58
    ret c                                         ; $5e86: $d8

    add sp, $34                                   ; $5e87: $e8 $34
    db $fc                                        ; $5e89: $fc
    ld l, $fe                                     ; $5e8a: $2e $fe
    sbc a                                         ; $5e8c: $9f
    push af                                       ; $5e8d: $f5
    cp l                                          ; $5e8e: $bd
    db $eb                                        ; $5e8f: $eb
    cp d                                          ; $5e90: $ba
    xor $5e                                       ; $5e91: $ee $5e
    or $3e                                        ; $5e93: $f6 $3e
    ld a, [$ecbc]                                 ; $5e95: $fa $bc $ec
    ldh a, [$f0]                                  ; $5e98: $f0 $f0
    ld [hl], b                                    ; $5e9a: $70
    ret nc                                        ; $5e9b: $d0

    ldh [$e0], a                                  ; $5e9c: $e0 $e0
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    ld bc, $6701                                  ; $5ea0: $01 $01 $67
    ld h, [hl]                                    ; $5ea3: $66
    ld a, a                                       ; $5ea4: $7f
    ld e, d                                       ; $5ea5: $5a
    dec a                                         ; $5ea6: $3d
    daa                                           ; $5ea7: $27
    rra                                           ; $5ea8: $1f
    ld a, [de]                                    ; $5ea9: $1a
    dec l                                         ; $5eaa: $2d
    ccf                                           ; $5eab: $3f
    ld d, [hl]                                    ; $5eac: $56
    ld a, e                                       ; $5ead: $7b
    cp a                                          ; $5eae: $bf
    db $e4                                        ; $5eaf: $e4
    cp a                                          ; $5eb0: $bf
    jp hl                                         ; $5eb1: $e9


    sbc $f7                                       ; $5eb2: $de $f7
    rst $38                                       ; $5eb4: $ff
    cp e                                          ; $5eb5: $bb
    ld [hl], a                                    ; $5eb6: $77
    ld e, h                                       ; $5eb7: $5c
    dec sp                                        ; $5eb8: $3b
    ccf                                           ; $5eb9: $3f
    ccf                                           ; $5eba: $3f
    cpl                                           ; $5ebb: $2f
    ld e, $1e                                     ; $5ebc: $1e $1e
    nop                                           ; $5ebe: $00
    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    call z, $fccc                                 ; $5ec2: $cc $cc $fc
    or h                                          ; $5ec5: $b4
    ld a, b                                       ; $5ec6: $78
    ret z                                         ; $5ec7: $c8

    ldh a, [$b0]                                  ; $5ec8: $f0 $b0
    ld l, b                                       ; $5eca: $68
    ld hl, sp-$2c                                 ; $5ecb: $f8 $d4
    cp h                                          ; $5ecd: $bc
    ld a, [$fe4e]                                 ; $5ece: $fa $4e $fe
    ld l, $fe                                     ; $5ed1: $2e $fe
    jp c, $bcec                                   ; $5ed3: $da $ec $bc

    ret c                                         ; $5ed6: $d8

    ld a, b                                       ; $5ed7: $78
    adc b                                         ; $5ed8: $88
    ld hl, sp-$28                                 ; $5ed9: $f8 $d8
    ld hl, sp-$08                                 ; $5edb: $f8 $f8
    xor b                                         ; $5edd: $a8
    ld [hl], b                                    ; $5ede: $70
    ld [hl], b                                    ; $5edf: $70
    rlca                                          ; $5ee0: $07
    rlca                                          ; $5ee1: $07
    rrca                                          ; $5ee2: $0f
    ld a, [bc]                                    ; $5ee3: $0a
    rra                                           ; $5ee4: $1f
    ld a, [de]                                    ; $5ee5: $1a
    dec de                                        ; $5ee6: $1b
    rla                                           ; $5ee7: $17
    inc l                                         ; $5ee8: $2c
    ccf                                           ; $5ee9: $3f
    ld [hl], h                                    ; $5eea: $74
    ld a, a                                       ; $5eeb: $7f
    ld sp, hl                                     ; $5eec: $f9
    xor a                                         ; $5eed: $af
    cp l                                          ; $5eee: $bd
    rst $10                                       ; $5eef: $d7
    ld e, l                                       ; $5ef0: $5d
    ld [hl], a                                    ; $5ef1: $77
    ld a, c                                       ; $5ef2: $79
    ld l, a                                       ; $5ef3: $6f
    ld a, [hl]                                    ; $5ef4: $7e
    ld e, a                                       ; $5ef5: $5f
    scf                                           ; $5ef6: $37
    scf                                           ; $5ef7: $37
    ld [bc], a                                    ; $5ef8: $02
    inc bc                                        ; $5ef9: $03
    ld [bc], a                                    ; $5efa: $02
    inc bc                                        ; $5efb: $03
    rlca                                          ; $5efc: $07
    dec b                                         ; $5efd: $05
    rlca                                          ; $5efe: $07
    rlca                                          ; $5eff: $07
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    add b                                         ; $5f02: $80
    add b                                         ; $5f03: $80
    add b                                         ; $5f04: $80
    add b                                         ; $5f05: $80
    ret nc                                        ; $5f06: $d0

    ld d, b                                       ; $5f07: $50
    ld hl, sp-$18                                 ; $5f08: $f8 $e8
    ld hl, sp-$48                                 ; $5f0a: $f8 $b8
    rst $00                                       ; $5f0c: $c7
    ld a, a                                       ; $5f0d: $7f
    rst $08                                       ; $5f0e: $cf
    db $fd                                        ; $5f0f: $fd
    ld a, [hl]                                    ; $5f10: $7e
    or $2a                                        ; $5f11: $f6 $2a
    cp $fe                                        ; $5f13: $fe $fe
    cp $fe                                        ; $5f15: $fe $fe
    and d                                         ; $5f17: $a2
    ld a, [hl]                                    ; $5f18: $7e
    cp $2a                                        ; $5f19: $fe $2a
    cp $79                                        ; $5f1b: $fe $79
    rst $38                                       ; $5f1d: $ff
    add a                                         ; $5f1e: $87
    add a                                         ; $5f1f: $87
    ld bc, $6301                                  ; $5f20: $01 $01 $63
    ld h, d                                       ; $5f23: $62
    ld a, a                                       ; $5f24: $7f
    ld e, [hl]                                    ; $5f25: $5e
    dec a                                         ; $5f26: $3d
    daa                                           ; $5f27: $27
    rra                                           ; $5f28: $1f
    rra                                           ; $5f29: $1f
    cpl                                           ; $5f2a: $2f
    ld a, [hl-]                                   ; $5f2b: $3a
    ld e, a                                       ; $5f2c: $5f
    ld [hl], a                                    ; $5f2d: $77
    cp l                                          ; $5f2e: $bd
    rst $28                                       ; $5f2f: $ef
    cp a                                          ; $5f30: $bf
    ld [$effd], a                                 ; $5f31: $ea $fd $ef
    rst $38                                       ; $5f34: $ff
    or a                                          ; $5f35: $b7
    ld a, a                                       ; $5f36: $7f
    ld e, b                                       ; $5f37: $58
    ccf                                           ; $5f38: $3f
    ccf                                           ; $5f39: $3f
    inc a                                         ; $5f3a: $3c
    cpl                                           ; $5f3b: $2f
    dec e                                         ; $5f3c: $1d
    rra                                           ; $5f3d: $1f
    ld b, $06                                     ; $5f3e: $06 $06
    nop                                           ; $5f40: $00
    nop                                           ; $5f41: $00
    adc h                                         ; $5f42: $8c
    adc h                                         ; $5f43: $8c
    db $fc                                        ; $5f44: $fc
    db $f4                                        ; $5f45: $f4
    ld a, b                                       ; $5f46: $78
    ret z                                         ; $5f47: $c8

    ldh a, [$f0]                                  ; $5f48: $f0 $f0
    add sp, -$48                                  ; $5f4a: $e8 $b8
    db $f4                                        ; $5f4c: $f4
    call c, $ee7a                                 ; $5f4d: $dc $7a $ee
    cp $ae                                        ; $5f50: $fe $ae
    ld a, [hl]                                    ; $5f52: $7e
    ld [$dcfc], a                                 ; $5f53: $ea $fc $dc
    ld hl, sp+$38                                 ; $5f56: $f8 $38
    ret z                                         ; $5f58: $c8

    ld hl, sp-$08                                 ; $5f59: $f8 $f8
    ld hl, sp-$08                                 ; $5f5b: $f8 $f8
    xor b                                         ; $5f5d: $a8
    ld [hl], b                                    ; $5f5e: $70
    ld [hl], b                                    ; $5f5f: $70
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    ld bc, $0101                                  ; $5f62: $01 $01 $01
    ld bc, $0a0b                                  ; $5f65: $01 $0b $0a
    rra                                           ; $5f68: $1f
    rla                                           ; $5f69: $17
    rra                                           ; $5f6a: $1f
    dec e                                         ; $5f6b: $1d
    db $e3                                        ; $5f6c: $e3
    cp $f3                                        ; $5f6d: $fe $f3
    cp a                                          ; $5f6f: $bf
    ld a, [hl]                                    ; $5f70: $7e
    ld l, a                                       ; $5f71: $6f
    ld d, h                                       ; $5f72: $54
    ld a, a                                       ; $5f73: $7f
    ld a, a                                       ; $5f74: $7f
    ld a, a                                       ; $5f75: $7f
    ld a, a                                       ; $5f76: $7f
    ld b, l                                       ; $5f77: $45
    ld a, [hl]                                    ; $5f78: $7e
    ld a, a                                       ; $5f79: $7f
    ld d, h                                       ; $5f7a: $54
    ld a, a                                       ; $5f7b: $7f
    sbc [hl]                                      ; $5f7c: $9e
    rst $38                                       ; $5f7d: $ff
    pop hl                                        ; $5f7e: $e1
    pop hl                                        ; $5f7f: $e1
    ldh [$e0], a                                  ; $5f80: $e0 $e0
    ldh a, [$50]                                  ; $5f82: $f0 $50
    ld hl, sp+$58                                 ; $5f84: $f8 $58
    ret c                                         ; $5f86: $d8

    add sp, $34                                   ; $5f87: $e8 $34
    db $fc                                        ; $5f89: $fc
    ld l, $fe                                     ; $5f8a: $2e $fe
    sbc a                                         ; $5f8c: $9f
    push af                                       ; $5f8d: $f5
    cp l                                          ; $5f8e: $bd
    db $eb                                        ; $5f8f: $eb
    cp d                                          ; $5f90: $ba
    xor $9e                                       ; $5f91: $ee $9e
    or $7e                                        ; $5f93: $f6 $7e
    ld a, [$ecec]                                 ; $5f95: $fa $ec $ec
    ld b, b                                       ; $5f98: $40
    ret nz                                        ; $5f99: $c0

    ld b, b                                       ; $5f9a: $40
    ret nz                                        ; $5f9b: $c0

    ldh [$a0], a                                  ; $5f9c: $e0 $a0
    ldh [$e0], a                                  ; $5f9e: $e0 $e0
    ld bc, $6701                                  ; $5fa0: $01 $01 $67
    ld h, [hl]                                    ; $5fa3: $66
    ld a, a                                       ; $5fa4: $7f
    ld e, d                                       ; $5fa5: $5a
    dec a                                         ; $5fa6: $3d
    daa                                           ; $5fa7: $27
    rra                                           ; $5fa8: $1f
    ld a, [de]                                    ; $5fa9: $1a
    dec l                                         ; $5faa: $2d
    ccf                                           ; $5fab: $3f
    ld d, [hl]                                    ; $5fac: $56
    ld a, e                                       ; $5fad: $7b
    cp a                                          ; $5fae: $bf
    db $e4                                        ; $5faf: $e4
    rst $38                                       ; $5fb0: $ff
    jp hl                                         ; $5fb1: $e9


    cp $b7                                        ; $5fb2: $fe $b7
    ld l, a                                       ; $5fb4: $6f
    ld a, e                                       ; $5fb5: $7b
    scf                                           ; $5fb6: $37
    inc a                                         ; $5fb7: $3c
    inc hl                                        ; $5fb8: $23
    ccf                                           ; $5fb9: $3f
    scf                                           ; $5fba: $37
    ccf                                           ; $5fbb: $3f
    ld a, $2a                                     ; $5fbc: $3e $2a
    inc e                                         ; $5fbe: $1c
    inc e                                         ; $5fbf: $1c
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    call z, $fccc                                 ; $5fc2: $cc $cc $fc
    or h                                          ; $5fc5: $b4
    ld a, b                                       ; $5fc6: $78
    ret z                                         ; $5fc7: $c8

    ldh a, [$b0]                                  ; $5fc8: $f0 $b0
    ld l, b                                       ; $5fca: $68
    ld hl, sp-$2c                                 ; $5fcb: $f8 $d4
    cp h                                          ; $5fcd: $bc
    ld a, [$fa4e]                                 ; $5fce: $fa $4e $fa
    ld l, $f6                                     ; $5fd1: $2e $f6
    sbc $fe                                       ; $5fd3: $de $fe
    cp d                                          ; $5fd5: $ba
    call c, $b874                                 ; $5fd6: $dc $74 $b8
    ld hl, sp-$08                                 ; $5fd9: $f8 $f8
    add sp, -$10                                  ; $5fdb: $e8 $f0
    ldh a, [rP1]                                  ; $5fdd: $f0 $00
    nop                                           ; $5fdf: $00
    rlca                                          ; $5fe0: $07
    rlca                                          ; $5fe1: $07
    rrca                                          ; $5fe2: $0f
    ld a, [bc]                                    ; $5fe3: $0a
    rra                                           ; $5fe4: $1f
    ld a, [de]                                    ; $5fe5: $1a
    dec de                                        ; $5fe6: $1b
    rla                                           ; $5fe7: $17
    inc l                                         ; $5fe8: $2c
    ccf                                           ; $5fe9: $3f
    ld [hl], h                                    ; $5fea: $74
    ld a, a                                       ; $5feb: $7f
    ld sp, hl                                     ; $5fec: $f9
    xor a                                         ; $5fed: $af
    cp l                                          ; $5fee: $bd
    rst $10                                       ; $5fef: $d7
    ld e, l                                       ; $5ff0: $5d
    ld [hl], a                                    ; $5ff1: $77
    ld a, d                                       ; $5ff2: $7a
    ld l, a                                       ; $5ff3: $6f
    ld a, h                                       ; $5ff4: $7c
    ld e, a                                       ; $5ff5: $5f
    dec a                                         ; $5ff6: $3d
    scf                                           ; $5ff7: $37
    rrca                                          ; $5ff8: $0f
    rrca                                          ; $5ff9: $0f
    ld c, $0b                                     ; $5ffa: $0e $0b
    rlca                                          ; $5ffc: $07
    rlca                                          ; $5ffd: $07
    nop                                           ; $5ffe: $00
    nop                                           ; $5fff: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    add b                                         ; $6002: $80
    add b                                         ; $6003: $80
    add b                                         ; $6004: $80
    add b                                         ; $6005: $80
    ret nc                                        ; $6006: $d0

    ld d, b                                       ; $6007: $50
    ld hl, sp-$18                                 ; $6008: $f8 $e8
    ld hl, sp-$48                                 ; $600a: $f8 $b8
    rst $00                                       ; $600c: $c7
    ld a, a                                       ; $600d: $7f
    rst $08                                       ; $600e: $cf
    ld a, l                                       ; $600f: $7d
    cp $b6                                        ; $6010: $fe $b6
    ld [$febe], a                                 ; $6012: $ea $be $fe
    sbc $be                                       ; $6015: $de $be
    ld [c], a                                     ; $6017: $e2
    sbc [hl]                                      ; $6018: $9e
    cp $ca                                        ; $6019: $fe $ca
    cp $e9                                        ; $601b: $fe $e9
    cp a                                          ; $601d: $bf
    rst $30                                       ; $601e: $f7
    rst $30                                       ; $601f: $f7
    ld bc, $6301                                  ; $6020: $01 $01 $63
    ld h, d                                       ; $6023: $62
    ld a, a                                       ; $6024: $7f
    ld e, [hl]                                    ; $6025: $5e
    dec a                                         ; $6026: $3d
    daa                                           ; $6027: $27
    rra                                           ; $6028: $1f
    rra                                           ; $6029: $1f
    cpl                                           ; $602a: $2f
    ld a, [hl-]                                   ; $602b: $3a
    ld e, a                                       ; $602c: $5f
    ld [hl], a                                    ; $602d: $77
    cp l                                          ; $602e: $bd
    rst $28                                       ; $602f: $ef
    rst $38                                       ; $6030: $ff
    ld [$affd], a                                 ; $6031: $ea $fd $af
    ld a, a                                       ; $6034: $7f
    ld [hl], a                                    ; $6035: $77
    ccf                                           ; $6036: $3f
    jr c, jr_024_6060                             ; $6037: $38 $27

    ccf                                           ; $6039: $3f
    ld a, $3f                                     ; $603a: $3e $3f
    ccf                                           ; $603c: $3f
    dec hl                                        ; $603d: $2b
    inc e                                         ; $603e: $1c
    inc e                                         ; $603f: $1c
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    adc h                                         ; $6042: $8c
    adc h                                         ; $6043: $8c
    db $fc                                        ; $6044: $fc
    db $f4                                        ; $6045: $f4
    ld a, b                                       ; $6046: $78
    ret z                                         ; $6047: $c8

    ldh a, [$f0]                                  ; $6048: $f0 $f0
    add sp, -$48                                  ; $604a: $e8 $b8
    db $f4                                        ; $604c: $f4
    call c, $ee7a                                 ; $604d: $dc $7a $ee
    ld a, [$7eae]                                 ; $6050: $fa $ae $7e
    xor $fe                                       ; $6053: $ee $fe
    jp c, Jump_000_34fc                           ; $6055: $da $fc $34

    ld hl, sp-$08                                 ; $6058: $f8 $f8
    ld a, b                                       ; $605a: $78
    add sp, $70                                   ; $605b: $e8 $70
    ldh a, [$c0]                                  ; $605d: $f0 $c0
    ret nz                                        ; $605f: $c0

jr_024_6060:
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    ld bc, $0101                                  ; $6064: $01 $01 $01
    ld bc, $0a0b                                  ; $6067: $01 $0b $0a
    rra                                           ; $606a: $1f
    rla                                           ; $606b: $17
    rra                                           ; $606c: $1f
    dec e                                         ; $606d: $1d
    db $e3                                        ; $606e: $e3
    cp $f3                                        ; $606f: $fe $f3
    cp [hl]                                       ; $6071: $be
    ld a, a                                       ; $6072: $7f
    ld l, l                                       ; $6073: $6d
    ld a, a                                       ; $6074: $7f
    ld a, e                                       ; $6075: $7b
    ld a, l                                       ; $6076: $7d
    ld b, a                                       ; $6077: $47
    ld a, c                                       ; $6078: $79
    ld a, a                                       ; $6079: $7f
    ld d, e                                       ; $607a: $53
    ld a, a                                       ; $607b: $7f
    sub a                                         ; $607c: $97
    db $fd                                        ; $607d: $fd
    rst $28                                       ; $607e: $ef
    rst $28                                       ; $607f: $ef
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    ldh [$e0], a                                  ; $6082: $e0 $e0
    ldh a, [$50]                                  ; $6084: $f0 $50
    ld hl, sp+$58                                 ; $6086: $f8 $58
    ret c                                         ; $6088: $d8

    add sp, $34                                   ; $6089: $e8 $34
    db $fc                                        ; $608b: $fc
    ld l, $fe                                     ; $608c: $2e $fe
    sbc a                                         ; $608e: $9f
    push af                                       ; $608f: $f5
    cp l                                          ; $6090: $bd
    db $eb                                        ; $6091: $eb
    cp d                                          ; $6092: $ba
    xor $3e                                       ; $6093: $ee $3e
    ld a, [$ecbc]                                 ; $6095: $fa $bc $ec
    ldh a, [$f0]                                  ; $6098: $f0 $f0
    ld [hl], b                                    ; $609a: $70
    ret nc                                        ; $609b: $d0

    ldh [$e0], a                                  ; $609c: $e0 $e0
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    ld bc, $6701                                  ; $60a2: $01 $01 $67
    ld h, [hl]                                    ; $60a5: $66
    ld a, a                                       ; $60a6: $7f
    ld e, d                                       ; $60a7: $5a
    dec a                                         ; $60a8: $3d
    daa                                           ; $60a9: $27
    rra                                           ; $60aa: $1f
    ld a, [de]                                    ; $60ab: $1a
    dec l                                         ; $60ac: $2d
    ccf                                           ; $60ad: $3f
    ld d, [hl]                                    ; $60ae: $56
    ld a, e                                       ; $60af: $7b
    cp a                                          ; $60b0: $bf
    db $e4                                        ; $60b1: $e4
    cp a                                          ; $60b2: $bf
    jp hl                                         ; $60b3: $e9


    rst $38                                       ; $60b4: $ff
    cp e                                          ; $60b5: $bb
    ld [hl], a                                    ; $60b6: $77
    ld e, h                                       ; $60b7: $5c
    dec sp                                        ; $60b8: $3b
    ccf                                           ; $60b9: $3f
    ccf                                           ; $60ba: $3f
    cpl                                           ; $60bb: $2f
    ld e, $1e                                     ; $60bc: $1e $1e
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    nop                                           ; $60c0: $00
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    nop                                           ; $60c3: $00
    call z, $fccc                                 ; $60c4: $cc $cc $fc
    or h                                          ; $60c7: $b4
    ld a, b                                       ; $60c8: $78
    ret z                                         ; $60c9: $c8

    ldh a, [$b0]                                  ; $60ca: $f0 $b0
    ld l, b                                       ; $60cc: $68
    ld hl, sp-$2c                                 ; $60cd: $f8 $d4
    cp h                                          ; $60cf: $bc
    ld a, [$fe4e]                                 ; $60d0: $fa $4e $fe
    ld l, $ec                                     ; $60d3: $2e $ec
    cp h                                          ; $60d5: $bc
    ret c                                         ; $60d6: $d8

    ld a, b                                       ; $60d7: $78
    adc b                                         ; $60d8: $88
    ld hl, sp-$28                                 ; $60d9: $f8 $d8
    ld hl, sp-$08                                 ; $60db: $f8 $f8
    xor b                                         ; $60dd: $a8
    ld [hl], b                                    ; $60de: $70
    ld [hl], b                                    ; $60df: $70
    nop                                           ; $60e0: $00
    nop                                           ; $60e1: $00
    rlca                                          ; $60e2: $07
    rlca                                          ; $60e3: $07
    rrca                                          ; $60e4: $0f
    ld a, [bc]                                    ; $60e5: $0a
    rra                                           ; $60e6: $1f
    ld a, [de]                                    ; $60e7: $1a
    dec de                                        ; $60e8: $1b
    rla                                           ; $60e9: $17
    inc l                                         ; $60ea: $2c
    ccf                                           ; $60eb: $3f
    ld [hl], h                                    ; $60ec: $74
    ld a, a                                       ; $60ed: $7f
    ld sp, hl                                     ; $60ee: $f9
    xor a                                         ; $60ef: $af
    cp l                                          ; $60f0: $bd
    rst $10                                       ; $60f1: $d7
    ld e, l                                       ; $60f2: $5d
    ld [hl], a                                    ; $60f3: $77
    ld a, [hl]                                    ; $60f4: $7e
    ld e, a                                       ; $60f5: $5f
    scf                                           ; $60f6: $37
    scf                                           ; $60f7: $37
    ld [bc], a                                    ; $60f8: $02
    inc bc                                        ; $60f9: $03
    ld [bc], a                                    ; $60fa: $02
    inc bc                                        ; $60fb: $03
    rlca                                          ; $60fc: $07
    dec b                                         ; $60fd: $05
    rlca                                          ; $60fe: $07
    rlca                                          ; $60ff: $07
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    add b                                         ; $6104: $80
    add b                                         ; $6105: $80
    add b                                         ; $6106: $80
    add b                                         ; $6107: $80
    ret nc                                        ; $6108: $d0

    ld d, b                                       ; $6109: $50
    ld hl, sp-$18                                 ; $610a: $f8 $e8
    ld hl, sp-$48                                 ; $610c: $f8 $b8
    rst $00                                       ; $610e: $c7
    ld a, a                                       ; $610f: $7f
    rst $08                                       ; $6110: $cf
    db $fd                                        ; $6111: $fd
    ld a, [hl]                                    ; $6112: $7e
    or $fe                                        ; $6113: $f6 $fe
    cp $fe                                        ; $6115: $fe $fe
    and d                                         ; $6117: $a2
    ld a, [hl]                                    ; $6118: $7e
    cp $2a                                        ; $6119: $fe $2a
    cp $79                                        ; $611b: $fe $79
    rst $38                                       ; $611d: $ff
    add a                                         ; $611e: $87
    add a                                         ; $611f: $87
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    ld bc, $6301                                  ; $6122: $01 $01 $63
    ld h, d                                       ; $6125: $62
    ld a, a                                       ; $6126: $7f
    ld e, [hl]                                    ; $6127: $5e
    dec a                                         ; $6128: $3d
    daa                                           ; $6129: $27
    rra                                           ; $612a: $1f
    rra                                           ; $612b: $1f
    cpl                                           ; $612c: $2f
    ld a, [hl-]                                   ; $612d: $3a
    ld e, a                                       ; $612e: $5f
    ld [hl], a                                    ; $612f: $77
    cp l                                          ; $6130: $bd
    rst $28                                       ; $6131: $ef
    cp a                                          ; $6132: $bf
    ld [$b7ff], a                                 ; $6133: $ea $ff $b7
    ld a, a                                       ; $6136: $7f
    ld e, b                                       ; $6137: $58
    ccf                                           ; $6138: $3f
    ccf                                           ; $6139: $3f
    inc a                                         ; $613a: $3c
    cpl                                           ; $613b: $2f
    dec e                                         ; $613c: $1d
    rra                                           ; $613d: $1f
    ld b, $06                                     ; $613e: $06 $06
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    adc h                                         ; $6144: $8c
    adc h                                         ; $6145: $8c
    db $fc                                        ; $6146: $fc
    db $f4                                        ; $6147: $f4
    ld a, b                                       ; $6148: $78
    ret z                                         ; $6149: $c8

    ldh a, [$f0]                                  ; $614a: $f0 $f0
    add sp, -$48                                  ; $614c: $e8 $b8
    db $f4                                        ; $614e: $f4
    call c, $ee7a                                 ; $614f: $dc $7a $ee
    cp $ae                                        ; $6152: $fe $ae
    db $fc                                        ; $6154: $fc
    call c, Call_000_38f8                         ; $6155: $dc $f8 $38
    ret z                                         ; $6158: $c8

    ld hl, sp-$08                                 ; $6159: $f8 $f8
    ld hl, sp-$08                                 ; $615b: $f8 $f8
    xor b                                         ; $615d: $a8
    ld [hl], b                                    ; $615e: $70
    ld [hl], b                                    ; $615f: $70
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    dec b                                         ; $6166: $05
    dec b                                         ; $6167: $05
    rrca                                          ; $6168: $0f
    dec bc                                        ; $6169: $0b
    rrca                                          ; $616a: $0f
    ld c, $71                                     ; $616b: $0e $71
    ld a, a                                       ; $616d: $7f
    ld a, c                                       ; $616e: $79
    ld e, a                                       ; $616f: $5f
    ccf                                           ; $6170: $3f
    ld [hl], $57                                  ; $6171: $36 $57
    ld a, l                                       ; $6173: $7d
    ld a, a                                       ; $6174: $7f
    ld a, e                                       ; $6175: $7b
    ld a, l                                       ; $6176: $7d
    ld b, a                                       ; $6177: $47
    ld a, c                                       ; $6178: $79
    ld a, a                                       ; $6179: $7f
    ld d, e                                       ; $617a: $53
    ld a, a                                       ; $617b: $7f
    sub a                                         ; $617c: $97
    db $fd                                        ; $617d: $fd
    rst $28                                       ; $617e: $ef
    rst $28                                       ; $617f: $ef
    ld [hl], b                                    ; $6180: $70
    ld [hl], b                                    ; $6181: $70
    ld hl, sp-$58                                 ; $6182: $f8 $a8
    db $fc                                        ; $6184: $fc
    xor h                                         ; $6185: $ac
    db $ec                                        ; $6186: $ec
    ld [hl], h                                    ; $6187: $74
    sbc d                                         ; $6188: $9a
    cp $97                                        ; $6189: $fe $97
    rst $38                                       ; $618b: $ff
    rst $08                                       ; $618c: $cf
    ld a, d                                       ; $618d: $7a
    sbc $75                                       ; $618e: $de $75
    db $dd                                        ; $6190: $dd
    rst $30                                       ; $6191: $f7
    ld e, [hl]                                    ; $6192: $5e
    or $3e                                        ; $6193: $f6 $3e
    ld a, [$ecbc]                                 ; $6195: $fa $bc $ec
    ldh a, [$f0]                                  ; $6198: $f0 $f0
    ld [hl], b                                    ; $619a: $70
    ret nc                                        ; $619b: $d0

    ldh [$e0], a                                  ; $619c: $e0 $e0
    nop                                           ; $619e: $00
    nop                                           ; $619f: $00
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    inc sp                                        ; $61a2: $33
    inc sp                                        ; $61a3: $33
    ccf                                           ; $61a4: $3f
    dec l                                         ; $61a5: $2d
    ld e, $13                                     ; $61a6: $1e $13
    rrca                                          ; $61a8: $0f
    dec c                                         ; $61a9: $0d
    ld d, $1f                                     ; $61aa: $16 $1f
    dec hl                                        ; $61ac: $2b
    dec a                                         ; $61ad: $3d
    ld e, a                                       ; $61ae: $5f
    ld [hl], d                                    ; $61af: $72
    ld e, a                                       ; $61b0: $5f
    ld [hl], h                                    ; $61b1: $74
    sbc $f7                                       ; $61b2: $de $f7
    rst $38                                       ; $61b4: $ff
    cp e                                          ; $61b5: $bb
    ld [hl], a                                    ; $61b6: $77
    ld e, h                                       ; $61b7: $5c
    dec sp                                        ; $61b8: $3b
    ccf                                           ; $61b9: $3f
    ccf                                           ; $61ba: $3f
    cpl                                           ; $61bb: $2f
    ld e, $1e                                     ; $61bc: $1e $1e
    nop                                           ; $61be: $00
    nop                                           ; $61bf: $00
    add b                                         ; $61c0: $80
    add b                                         ; $61c1: $80
    and $66                                       ; $61c2: $e6 $66
    cp $5a                                        ; $61c4: $fe $5a
    cp h                                          ; $61c6: $bc
    db $e4                                        ; $61c7: $e4
    ld hl, sp+$58                                 ; $61c8: $f8 $58
    or h                                          ; $61ca: $b4
    db $fc                                        ; $61cb: $fc
    ld l, d                                       ; $61cc: $6a
    sbc $fd                                       ; $61cd: $de $fd
    daa                                           ; $61cf: $27
    rst $38                                       ; $61d0: $ff
    sub a                                         ; $61d1: $97
    cp $da                                        ; $61d2: $fe $da
    db $ec                                        ; $61d4: $ec
    cp h                                          ; $61d5: $bc
    ret c                                         ; $61d6: $d8

    ld a, b                                       ; $61d7: $78
    adc b                                         ; $61d8: $88
    ld hl, sp-$28                                 ; $61d9: $f8 $d8
    ld hl, sp-$08                                 ; $61db: $f8 $f8
    xor b                                         ; $61dd: $a8
    ld [hl], b                                    ; $61de: $70
    ld [hl], b                                    ; $61df: $70
    inc bc                                        ; $61e0: $03
    inc bc                                        ; $61e1: $03
    rlca                                          ; $61e2: $07
    dec b                                         ; $61e3: $05
    rrca                                          ; $61e4: $0f
    dec c                                         ; $61e5: $0d
    dec c                                         ; $61e6: $0d
    dec bc                                        ; $61e7: $0b
    ld d, $1f                                     ; $61e8: $16 $1f
    ld a, [hl-]                                   ; $61ea: $3a
    ccf                                           ; $61eb: $3f
    ld a, h                                       ; $61ec: $7c
    ld d, a                                       ; $61ed: $57
    ld e, [hl]                                    ; $61ee: $5e
    ld l, e                                       ; $61ef: $6b
    ld l, $3b                                     ; $61f0: $2e $3b
    ld a, c                                       ; $61f2: $79
    ld l, a                                       ; $61f3: $6f
    ld a, [hl]                                    ; $61f4: $7e
    ld e, a                                       ; $61f5: $5f
    scf                                           ; $61f6: $37
    scf                                           ; $61f7: $37
    ld [bc], a                                    ; $61f8: $02
    inc bc                                        ; $61f9: $03
    ld [bc], a                                    ; $61fa: $02
    inc bc                                        ; $61fb: $03
    rlca                                          ; $61fc: $07
    dec b                                         ; $61fd: $05
    rlca                                          ; $61fe: $07
    rlca                                          ; $61ff: $07
    add b                                         ; $6200: $80
    add b                                         ; $6201: $80
    ret nz                                        ; $6202: $c0

    ld b, b                                       ; $6203: $40
    ret nz                                        ; $6204: $c0

    ld b, b                                       ; $6205: $40
    add sp, -$58                                  ; $6206: $e8 $a8
    ld a, h                                       ; $6208: $7c
    db $f4                                        ; $6209: $f4
    ld a, h                                       ; $620a: $7c
    call c, $bfe3                                 ; $620b: $dc $e3 $bf
    rst $20                                       ; $620e: $e7
    cp $bf                                        ; $620f: $fe $bf
    ei                                            ; $6211: $fb
    ld a, [hl+]                                   ; $6212: $2a
    cp $fe                                        ; $6213: $fe $fe
    cp $fe                                        ; $6215: $fe $fe
    and d                                         ; $6217: $a2
    ld a, [hl]                                    ; $6218: $7e
    cp $2a                                        ; $6219: $fe $2a
    cp $79                                        ; $621b: $fe $79
    rst $38                                       ; $621d: $ff
    add a                                         ; $621e: $87
    add a                                         ; $621f: $87
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    ld sp, $3f31                                  ; $6222: $31 $31 $3f
    cpl                                           ; $6225: $2f
    ld e, $13                                     ; $6226: $1e $13
    rrca                                          ; $6228: $0f
    rrca                                          ; $6229: $0f
    rla                                           ; $622a: $17
    dec e                                         ; $622b: $1d
    cpl                                           ; $622c: $2f
    dec sp                                        ; $622d: $3b
    ld e, [hl]                                    ; $622e: $5e
    ld [hl], a                                    ; $622f: $77
    ld e, a                                       ; $6230: $5f
    ld [hl], l                                    ; $6231: $75
    db $fd                                        ; $6232: $fd
    rst $28                                       ; $6233: $ef
    rst $38                                       ; $6234: $ff
    or a                                          ; $6235: $b7
    ld a, a                                       ; $6236: $7f
    ld e, b                                       ; $6237: $58
    ccf                                           ; $6238: $3f
    ccf                                           ; $6239: $3f
    inc a                                         ; $623a: $3c
    cpl                                           ; $623b: $2f
    dec e                                         ; $623c: $1d
    rra                                           ; $623d: $1f
    ld b, $06                                     ; $623e: $06 $06
    add b                                         ; $6240: $80
    add b                                         ; $6241: $80
    add $46                                       ; $6242: $c6 $46
    cp $7a                                        ; $6244: $fe $7a
    cp h                                          ; $6246: $bc
    db $e4                                        ; $6247: $e4
    ld hl, sp-$08                                 ; $6248: $f8 $f8
    db $f4                                        ; $624a: $f4
    ld e, h                                       ; $624b: $5c
    ld a, [$bdee]                                 ; $624c: $fa $ee $bd
    rst $30                                       ; $624f: $f7
    rst $38                                       ; $6250: $ff
    ld d, a                                       ; $6251: $57
    ld a, [hl]                                    ; $6252: $7e
    ld [$dcfc], a                                 ; $6253: $ea $fc $dc
    ld hl, sp+$38                                 ; $6256: $f8 $38
    ret z                                         ; $6258: $c8

    ld hl, sp-$08                                 ; $6259: $f8 $f8
    ld hl, sp-$08                                 ; $625b: $f8 $f8
    xor b                                         ; $625d: $a8
    ld [hl], b                                    ; $625e: $70
    ld [hl], b                                    ; $625f: $70
    ld bc, $0301                                  ; $6260: $01 $01 $03
    ld [bc], a                                    ; $6263: $02
    inc bc                                        ; $6264: $03
    ld [bc], a                                    ; $6265: $02
    rla                                           ; $6266: $17
    dec d                                         ; $6267: $15
    ld a, $2f                                     ; $6268: $3e $2f
    ld a, $3b                                     ; $626a: $3e $3b
    rst $00                                       ; $626c: $c7
    db $fd                                        ; $626d: $fd
    rst $20                                       ; $626e: $e7
    ld a, l                                       ; $626f: $7d
    rst $38                                       ; $6270: $ff
    db $db                                        ; $6271: $db
    ld d, a                                       ; $6272: $57
    ld a, l                                       ; $6273: $7d
    ld a, a                                       ; $6274: $7f
    ld a, e                                       ; $6275: $7b
    ld a, l                                       ; $6276: $7d
    ld b, a                                       ; $6277: $47
    ld a, c                                       ; $6278: $79
    ld a, a                                       ; $6279: $7f
    ld d, e                                       ; $627a: $53
    ld a, a                                       ; $627b: $7f
    sub a                                         ; $627c: $97
    db $fd                                        ; $627d: $fd
    rst $28                                       ; $627e: $ef
    rst $28                                       ; $627f: $ef
    ret nz                                        ; $6280: $c0

    ret nz                                        ; $6281: $c0

    ldh [$a0], a                                  ; $6282: $e0 $a0
    ldh a, [$b0]                                  ; $6284: $f0 $b0
    or b                                          ; $6286: $b0
    ret nc                                        ; $6287: $d0

    ld l, b                                       ; $6288: $68
    ld hl, sp+$5c                                 ; $6289: $f8 $5c
    db $fc                                        ; $628b: $fc
    ld a, $ea                                     ; $628c: $3e $ea
    ld a, d                                       ; $628e: $7a
    sub $74                                       ; $628f: $d6 $74
    call c, $f65e                                 ; $6291: $dc $5e $f6
    ld a, $fa                                     ; $6294: $3e $fa
    cp h                                          ; $6296: $bc
    db $ec                                        ; $6297: $ec
    ldh a, [$f0]                                  ; $6298: $f0 $f0
    ld [hl], b                                    ; $629a: $70
    ret nc                                        ; $629b: $d0

    ldh [$e0], a                                  ; $629c: $e0 $e0
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    ld [bc], a                                    ; $62a0: $02
    ld [bc], a                                    ; $62a1: $02
    rst $08                                       ; $62a2: $cf
    call $b5ff                                    ; $62a3: $cd $ff $b5
    ld a, d                                       ; $62a6: $7a
    ld c, a                                       ; $62a7: $4f
    ccf                                           ; $62a8: $3f
    dec [hl]                                      ; $62a9: $35
    ld e, d                                       ; $62aa: $5a
    ld a, a                                       ; $62ab: $7f
    xor l                                         ; $62ac: $ad
    rst $30                                       ; $62ad: $f7
    ld a, a                                       ; $62ae: $7f
    ret z                                         ; $62af: $c8

    ld a, a                                       ; $62b0: $7f
    jp nc, $f7de                                  ; $62b1: $d2 $de $f7

    rst $38                                       ; $62b4: $ff
    cp e                                          ; $62b5: $bb
    ld [hl], a                                    ; $62b6: $77
    ld e, h                                       ; $62b7: $5c
    dec sp                                        ; $62b8: $3b
    ccf                                           ; $62b9: $3f
    ccf                                           ; $62ba: $3f
    cpl                                           ; $62bb: $2f
    ld e, $1e                                     ; $62bc: $1e $1e
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    sbc b                                         ; $62c2: $98
    sbc b                                         ; $62c3: $98
    ld hl, sp+$68                                 ; $62c4: $f8 $68
    ldh a, [$90]                                  ; $62c6: $f0 $90
    ldh [$60], a                                  ; $62c8: $e0 $60
    ret nc                                        ; $62ca: $d0

    ldh a, [$a8]                                  ; $62cb: $f0 $a8
    ld a, b                                       ; $62cd: $78
    db $f4                                        ; $62ce: $f4
    sbc h                                         ; $62cf: $9c
    db $fc                                        ; $62d0: $fc
    ld e, h                                       ; $62d1: $5c
    cp $da                                        ; $62d2: $fe $da
    db $ec                                        ; $62d4: $ec
    cp h                                          ; $62d5: $bc
    ret c                                         ; $62d6: $d8

    ld a, b                                       ; $62d7: $78
    adc b                                         ; $62d8: $88
    ld hl, sp-$28                                 ; $62d9: $f8 $d8
    ld hl, sp-$08                                 ; $62db: $f8 $f8
    xor b                                         ; $62dd: $a8
    ld [hl], b                                    ; $62de: $70
    ld [hl], b                                    ; $62df: $70
    ld c, $0e                                     ; $62e0: $0e $0e
    rra                                           ; $62e2: $1f
    dec d                                         ; $62e3: $15
    ccf                                           ; $62e4: $3f
    dec [hl]                                      ; $62e5: $35
    scf                                           ; $62e6: $37
    ld l, $59                                     ; $62e7: $2e $59
    ld a, a                                       ; $62e9: $7f
    jp hl                                         ; $62ea: $e9


    rst $38                                       ; $62eb: $ff
    di                                            ; $62ec: $f3
    ld e, [hl]                                    ; $62ed: $5e
    ld a, e                                       ; $62ee: $7b
    xor a                                         ; $62ef: $af
    cp d                                          ; $62f0: $ba
    rst $28                                       ; $62f1: $ef
    ld a, c                                       ; $62f2: $79
    ld l, a                                       ; $62f3: $6f
    ld a, [hl]                                    ; $62f4: $7e
    ld e, a                                       ; $62f5: $5f
    scf                                           ; $62f6: $37
    scf                                           ; $62f7: $37
    ld [bc], a                                    ; $62f8: $02
    inc bc                                        ; $62f9: $03
    ld [bc], a                                    ; $62fa: $02
    inc bc                                        ; $62fb: $03
    rlca                                          ; $62fc: $07
    dec b                                         ; $62fd: $05
    rlca                                          ; $62fe: $07
    rlca                                          ; $62ff: $07
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    and b                                         ; $6306: $a0
    and b                                         ; $6307: $a0
    ldh a, [$d0]                                  ; $6308: $f0 $d0
    ldh a, [rSVBK]                                ; $630a: $f0 $70
    adc [hl]                                      ; $630c: $8e
    cp $9e                                        ; $630d: $fe $9e
    ld a, [$ecfc]                                 ; $630f: $fa $fc $ec
    ld a, [hl+]                                   ; $6312: $2a
    cp $fe                                        ; $6313: $fe $fe
    cp $fe                                        ; $6315: $fe $fe
    and d                                         ; $6317: $a2
    ld a, [hl]                                    ; $6318: $7e
    cp $2a                                        ; $6319: $fe $2a
    cp $79                                        ; $631b: $fe $79
    rst $38                                       ; $631d: $ff
    add a                                         ; $631e: $87
    add a                                         ; $631f: $87
    ld [bc], a                                    ; $6320: $02
    ld [bc], a                                    ; $6321: $02
    rst $00                                       ; $6322: $c7
    push bc                                       ; $6323: $c5
    rst $38                                       ; $6324: $ff
    cp l                                          ; $6325: $bd
    ld a, d                                       ; $6326: $7a
    ld c, a                                       ; $6327: $4f
    ccf                                           ; $6328: $3f
    ccf                                           ; $6329: $3f
    ld e, a                                       ; $632a: $5f
    ld [hl], l                                    ; $632b: $75
    cp a                                          ; $632c: $bf
    rst $28                                       ; $632d: $ef
    ld a, d                                       ; $632e: $7a
    rst $18                                       ; $632f: $df
    ld a, a                                       ; $6330: $7f
    push de                                       ; $6331: $d5
    db $fd                                        ; $6332: $fd
    rst $28                                       ; $6333: $ef
    rst $38                                       ; $6334: $ff
    or a                                          ; $6335: $b7
    ld a, a                                       ; $6336: $7f
    ld e, b                                       ; $6337: $58
    ccf                                           ; $6338: $3f
    ccf                                           ; $6339: $3f
    inc a                                         ; $633a: $3c
    cpl                                           ; $633b: $2f
    dec e                                         ; $633c: $1d
    rra                                           ; $633d: $1f
    ld b, $06                                     ; $633e: $06 $06
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    jr @+$1a                                      ; $6342: $18 $18

    ld hl, sp-$18                                 ; $6344: $f8 $e8
    ldh a, [$90]                                  ; $6346: $f0 $90
    ldh [$e0], a                                  ; $6348: $e0 $e0
    ret nc                                        ; $634a: $d0

    ld [hl], b                                    ; $634b: $70
    add sp, -$48                                  ; $634c: $e8 $b8
    db $f4                                        ; $634e: $f4
    call c, Call_024_5cfc                         ; $634f: $dc $fc $5c
    ld a, [hl]                                    ; $6352: $7e
    ld [$dcfc], a                                 ; $6353: $ea $fc $dc
    ld hl, sp+$38                                 ; $6356: $f8 $38
    ret z                                         ; $6358: $c8

    ld hl, sp-$08                                 ; $6359: $f8 $f8
    ld hl, sp-$08                                 ; $635b: $f8 $f8
    xor b                                         ; $635d: $a8
    ld [hl], b                                    ; $635e: $70
    ld [hl], b                                    ; $635f: $70
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    ld bc, $0101                                  ; $6364: $01 $01 $01
    ld bc, $0607                                  ; $6367: $01 $07 $06
    rrca                                          ; $636a: $0f
    dec bc                                        ; $636b: $0b
    ld [hl], e                                    ; $636c: $73
    ld a, [hl]                                    ; $636d: $7e
    ld a, e                                       ; $636e: $7b
    ld e, [hl]                                    ; $636f: $5e
    ccf                                           ; $6370: $3f
    dec [hl]                                      ; $6371: $35
    dec hl                                        ; $6372: $2b
    dec a                                         ; $6373: $3d
    dec a                                         ; $6374: $3d
    inc hl                                        ; $6375: $23
    dec a                                         ; $6376: $3d
    ccf                                           ; $6377: $3f
    dec hl                                        ; $6378: $2b
    ccf                                           ; $6379: $3f
    ld c, e                                       ; $637a: $4b
    ld a, l                                       ; $637b: $7d
    ld [hl], a                                    ; $637c: $77
    ld [hl], a                                    ; $637d: $77
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    ret nz                                        ; $6382: $c0

    ret nz                                        ; $6383: $c0

jr_024_6384:
    ldh [$60], a                                  ; $6384: $e0 $60
    ldh a, [rSVBK]                                ; $6386: $f0 $70
    ldh a, [$d0]                                  ; $6388: $f0 $d0
    jr z, jr_024_6384                             ; $638a: $28 $f8

    cp [hl]                                       ; $638c: $be
    ld [$d6ba], a                                 ; $638d: $ea $ba $d6
    or h                                          ; $6390: $b4
    call c, $ec7c                                 ; $6391: $dc $7c $ec
    cp b                                          ; $6394: $b8
    ret c                                         ; $6395: $d8

    ldh [$e0], a                                  ; $6396: $e0 $e0
    ld h, b                                       ; $6398: $60
    ldh [$c0], a                                  ; $6399: $e0 $c0
    ret nz                                        ; $639b: $c0

    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    nop                                           ; $639e: $00
    nop                                           ; $639f: $00
    nop                                           ; $63a0: $00
    nop                                           ; $63a1: $00
    ld bc, $3301                                  ; $63a2: $01 $01 $33
    ld [hl-], a                                   ; $63a5: $32
    ccf                                           ; $63a6: $3f
    ld l, $1d                                     ; $63a7: $2e $1d
    inc de                                        ; $63a9: $13
    rrca                                          ; $63aa: $0f
    ld c, $2a                                     ; $63ab: $0e $2a
    ccf                                           ; $63ad: $3f
    ld e, a                                       ; $63ae: $5f
    ld [hl], b                                    ; $63af: $70
    ld e, a                                       ; $63b0: $5f
    ld [hl], l                                    ; $63b1: $75
    ld l, [hl]                                    ; $63b2: $6e
    ld a, e                                       ; $63b3: $7b
    dec sp                                        ; $63b4: $3b
    inc l                                         ; $63b5: $2c
    rra                                           ; $63b6: $1f
    rra                                           ; $63b7: $1f
    rra                                           ; $63b8: $1f
    rla                                           ; $63b9: $17
    ld c, $0e                                     ; $63ba: $0e $0e
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    nop                                           ; $63c3: $00
    ret c                                         ; $63c4: $d8

    ret c                                         ; $63c5: $d8

    ld hl, sp-$58                                 ; $63c6: $f8 $a8
    ld [hl], b                                    ; $63c8: $70
    ret nc                                        ; $63c9: $d0

    ldh [$a0], a                                  ; $63ca: $e0 $a0
    add sp, -$48                                  ; $63cc: $e8 $b8
    db $f4                                        ; $63ce: $f4
    ld e, h                                       ; $63cf: $5c
    db $fc                                        ; $63d0: $fc
    inc e                                         ; $63d1: $1c
    db $fc                                        ; $63d2: $fc
    db $f4                                        ; $63d3: $f4
    ldh a, [rSVBK]                                ; $63d4: $f0 $70
    sub b                                         ; $63d6: $90
    ldh a, [$f0]                                  ; $63d7: $f0 $f0
    ldh a, [$f0]                                  ; $63d9: $f0 $f0
    sub b                                         ; $63db: $90
    ld h, b                                       ; $63dc: $60
    ld h, b                                       ; $63dd: $60
    nop                                           ; $63de: $00
    nop                                           ; $63df: $00
    nop                                           ; $63e0: $00
    nop                                           ; $63e1: $00
    inc bc                                        ; $63e2: $03
    inc bc                                        ; $63e3: $03
    rlca                                          ; $63e4: $07
    ld b, $0f                                     ; $63e5: $06 $0f
    ld c, $0f                                     ; $63e7: $0e $0f
    dec bc                                        ; $63e9: $0b
    inc d                                         ; $63ea: $14
    rra                                           ; $63eb: $1f
    ld a, l                                       ; $63ec: $7d
    ld d, a                                       ; $63ed: $57
    ld e, l                                       ; $63ee: $5d
    ld l, e                                       ; $63ef: $6b
    dec l                                         ; $63f0: $2d
    dec sp                                        ; $63f1: $3b
    dec a                                         ; $63f2: $3d
    scf                                           ; $63f3: $37
    dec de                                        ; $63f4: $1b
    dec de                                        ; $63f5: $1b
    ld [bc], a                                    ; $63f6: $02
    inc bc                                        ; $63f7: $03
    ld [bc], a                                    ; $63f8: $02
    inc bc                                        ; $63f9: $03
    inc bc                                        ; $63fa: $03
    ld bc, $0303                                  ; $63fb: $01 $03 $03

Jump_024_63fe:
    nop                                           ; $63fe: $00
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    add b                                         ; $6404: $80
    add b                                         ; $6405: $80
    add b                                         ; $6406: $80
    add b                                         ; $6407: $80
    ldh [$60], a                                  ; $6408: $e0 $60
    ldh a, [$d0]                                  ; $640a: $f0 $d0
    adc $7e                                       ; $640c: $ce $7e
    sbc $fa                                       ; $640e: $de $fa
    ld a, h                                       ; $6410: $7c
    db $ec                                        ; $6411: $ec
    inc d                                         ; $6412: $14
    db $fc                                        ; $6413: $fc
    db $fc                                        ; $6414: $fc
    add h                                         ; $6415: $84
    ld a, h                                       ; $6416: $7c
    db $fc                                        ; $6417: $fc
    inc d                                         ; $6418: $14
    db $fc                                        ; $6419: $fc
    ld [hl], d                                    ; $641a: $72
    cp $8e                                        ; $641b: $fe $8e
    adc [hl]                                      ; $641d: $8e
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    ld bc, $3301                                  ; $6422: $01 $01 $33
    ld [hl-], a                                   ; $6425: $32
    ccf                                           ; $6426: $3f
    ld l, $1d                                     ; $6427: $2e $1d
    inc de                                        ; $6429: $13
    rrca                                          ; $642a: $0f
    rrca                                          ; $642b: $0f
    cpl                                           ; $642c: $2f
    dec sp                                        ; $642d: $3b
    ld e, l                                       ; $642e: $5d
    ld [hl], a                                    ; $642f: $77
    ld e, a                                       ; $6430: $5f
    halt                                          ; $6431: $76
    ld a, l                                       ; $6432: $7d
    ld [hl], a                                    ; $6433: $77
    ccf                                           ; $6434: $3f
    inc l                                         ; $6435: $2c
    rra                                           ; $6436: $1f
    rra                                           ; $6437: $1f
    inc e                                         ; $6438: $1c
    rla                                           ; $6439: $17
    dec c                                         ; $643a: $0d
    rrca                                          ; $643b: $0f
    ld [bc], a                                    ; $643c: $02
    ld [bc], a                                    ; $643d: $02
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    sbc b                                         ; $6444: $98
    sbc b                                         ; $6445: $98
    ld hl, sp-$18                                 ; $6446: $f8 $e8
    ld [hl], b                                    ; $6448: $70
    ret nc                                        ; $6449: $d0

    ldh [$e0], a                                  ; $644a: $e0 $e0
    add sp, -$08                                  ; $644c: $e8 $f8
    ld [hl], h                                    ; $644e: $74
    call c, $9cfc                                 ; $644f: $dc $fc $9c
    ld a, h                                       ; $6452: $7c
    call nc, $30f0                                ; $6453: $d4 $f0 $30
    ret nc                                        ; $6456: $d0

    ldh a, [$f0]                                  ; $6457: $f0 $f0
    ldh a, [$f0]                                  ; $6459: $f0 $f0
    sub b                                         ; $645b: $90
    ld h, b                                       ; $645c: $60
    ld h, b                                       ; $645d: $60
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    ld [hl], d                                    ; $6460: $72
    ld h, h                                       ; $6461: $64
    ld [hl], l                                    ; $6462: $75
    ld h, h                                       ; $6463: $64
    ld a, e                                       ; $6464: $7b
    ld h, h                                       ; $6465: $64
    ld a, [hl]                                    ; $6466: $7e
    ld h, h                                       ; $6467: $64
    adc c                                         ; $6468: $89
    ld h, h                                       ; $6469: $64
    sub b                                         ; $646a: $90
    ld h, h                                       ; $646b: $64
    sbc b                                         ; $646c: $98
    ld h, h                                       ; $646d: $64
    xor h                                         ; $646e: $ac
    ld h, h                                       ; $646f: $64
    cp b                                          ; $6470: $b8
    ld h, h                                       ; $6471: $64
    nop                                           ; $6472: $00
    rst $38                                       ; $6473: $ff
    db $fd                                        ; $6474: $fd
    nop                                           ; $6475: $00
    ld e, $01                                     ; $6476: $1e $01
    ld e, $ff                                     ; $6478: $1e $ff
    nop                                           ; $647a: $00
    ld [bc], a                                    ; $647b: $02
    rst $38                                       ; $647c: $ff
    db $fd                                        ; $647d: $fd
    ld [bc], a                                    ; $647e: $02
    inc c                                         ; $647f: $0c
    inc bc                                        ; $6480: $03
    inc c                                         ; $6481: $0c
    inc b                                         ; $6482: $04
    jr jr_024_6487                                ; $6483: $18 $02

    inc c                                         ; $6485: $0c
    dec b                                         ; $6486: $05

jr_024_6487:
    inc c                                         ; $6487: $0c
    db $fd                                        ; $6488: $fd
    ld [bc], a                                    ; $6489: $02
    jr @+$05                                      ; $648a: $18 $03

    jr jr_024_6490                                ; $648c: $18 $02

    jr @-$01                                      ; $648e: $18 $fd

jr_024_6490:
    nop                                           ; $6490: $00
    ld a, [bc]                                    ; $6491: $0a
    ld b, $1e                                     ; $6492: $06 $1e
    nop                                           ; $6494: $00
    ld a, [bc]                                    ; $6495: $0a
    cp $01                                        ; $6496: $fe $01
    nop                                           ; $6498: $00
    ld a, [bc]                                    ; $6499: $0a
    rlca                                          ; $649a: $07
    ld a, [bc]                                    ; $649b: $0a
    nop                                           ; $649c: $00
    inc bc                                        ; $649d: $03
    ld [$000a], sp                                ; $649e: $08 $0a $00
    inc bc                                        ; $64a1: $03
    rlca                                          ; $64a2: $07
    ld a, [bc]                                    ; $64a3: $0a
    nop                                           ; $64a4: $00
    inc bc                                        ; $64a5: $03
    ld [$000a], sp                                ; $64a6: $08 $0a $00
    ld a, [bc]                                    ; $64a9: $0a
    cp $01                                        ; $64aa: $fe $01
    nop                                           ; $64ac: $00
    ld a, [bc]                                    ; $64ad: $0a
    add hl, bc                                    ; $64ae: $09
    ld [$0800], sp                                ; $64af: $08 $00 $08
    add hl, bc                                    ; $64b2: $09
    ld [$0a00], sp                                ; $64b3: $08 $00 $0a
    cp $01                                        ; $64b6: $fe $01
    ld [bc], a                                    ; $64b8: $02
    ld [de], a                                    ; $64b9: $12
    inc bc                                        ; $64ba: $03
    ld [de], a                                    ; $64bb: $12
    ld [bc], a                                    ; $64bc: $02
    ld e, $05                                     ; $64bd: $1e $05
    ld [de], a                                    ; $64bf: $12
    db $fd                                        ; $64c0: $fd

    db $07, $04, $c9, $64, $e0, $6a, $c9, $64, $e0, $64, $e0, $65, $e0, $65, $e0, $65

    ldh [$65], a                                  ; $64d1: $e0 $65
    ldh [$65], a                                  ; $64d3: $e0 $65
    ldh [$66], a                                  ; $64d5: $e0 $66
    ldh [$67], a                                  ; $64d7: $e0 $67
    ldh [rBCPS], a                                ; $64d9: $e0 $68
    ldh [rBCPD], a                                ; $64db: $e0 $69
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    rlca                                          ; $64e0: $07
    rlca                                          ; $64e1: $07
    rrca                                          ; $64e2: $0f
    rrca                                          ; $64e3: $0f
    ld [$0e0f], sp                                ; $64e4: $08 $0f $0e
    rrca                                          ; $64e7: $0f
    rrca                                          ; $64e8: $0f
    add hl, bc                                    ; $64e9: $09
    rrca                                          ; $64ea: $0f
    add hl, bc                                    ; $64eb: $09
    rlca                                          ; $64ec: $07
    inc b                                         ; $64ed: $04
    rlca                                          ; $64ee: $07
    ld b, $0f                                     ; $64ef: $06 $0f
    dec c                                         ; $64f1: $0d
    rra                                           ; $64f2: $1f
    dec d                                         ; $64f3: $15
    rra                                           ; $64f4: $1f
    dec e                                         ; $64f5: $1d
    rrca                                          ; $64f6: $0f
    inc c                                         ; $64f7: $0c
    rlca                                          ; $64f8: $07
    rlca                                          ; $64f9: $07
    dec bc                                        ; $64fa: $0b
    rrca                                          ; $64fb: $0f
    add hl, bc                                    ; $64fc: $09
    rrca                                          ; $64fd: $0f
    ld b, $06                                     ; $64fe: $06 $06
    ldh [$e0], a                                  ; $6500: $e0 $e0
    ldh a, [$d0]                                  ; $6502: $f0 $d0
    ldh a, [$90]                                  ; $6504: $f0 $90
    ldh a, [$b0]                                  ; $6506: $f0 $b0
    ldh a, [$d0]                                  ; $6508: $f0 $d0
    ret nc                                        ; $650a: $d0

    ld [hl], b                                    ; $650b: $70
    ld hl, sp+$28                                 ; $650c: $f8 $28
    ld hl, sp+$28                                 ; $650e: $f8 $28
    ldh a, [rNR10]                                ; $6510: $f0 $10
    ldh a, [$90]                                  ; $6512: $f0 $90
    ldh [$60], a                                  ; $6514: $e0 $60
    ldh a, [$90]                                  ; $6516: $f0 $90
    ldh a, [$f0]                                  ; $6518: $f0 $f0
    add sp, -$08                                  ; $651a: $e8 $f8
    ld hl, sp-$08                                 ; $651c: $f8 $f8
    jr nc, jr_024_6550                            ; $651e: $30 $30

    rrca                                          ; $6520: $0f
    rrca                                          ; $6521: $0f
    rra                                           ; $6522: $1f
    ld e, $17                                     ; $6523: $1e $17
    inc e                                         ; $6525: $1c
    rra                                           ; $6526: $1f
    ld e, $3d                                     ; $6527: $1e $3d
    dec hl                                        ; $6529: $2b
    add hl, sp                                    ; $652a: $39
    cpl                                           ; $652b: $2f
    rra                                           ; $652c: $1f
    ld e, $3f                                     ; $652d: $1e $3f
    ld a, [hl+]                                   ; $652f: $2a
    ld a, a                                       ; $6530: $7f
    ld l, c                                       ; $6531: $69
    ld a, a                                       ; $6532: $7f
    ld [hl], h                                    ; $6533: $74

jr_024_6534:
    rrca                                          ; $6534: $0f
    dec bc                                        ; $6535: $0b
    rrca                                          ; $6536: $0f
    ld a, [bc]                                    ; $6537: $0a
    rrca                                          ; $6538: $0f
    inc c                                         ; $6539: $0c
    rrca                                          ; $653a: $0f
    rrca                                          ; $653b: $0f
    add hl, bc                                    ; $653c: $09
    rrca                                          ; $653d: $0f
    ld b, $06                                     ; $653e: $06 $06
    ldh [$e0], a                                  ; $6540: $e0 $e0
    ldh a, [$f0]                                  ; $6542: $f0 $f0
    ret nc                                        ; $6544: $d0

    ld [hl], b                                    ; $6545: $70
    ldh a, [$f0]                                  ; $6546: $f0 $f0
    cp b                                          ; $6548: $b8
    ld l, b                                       ; $6549: $68
    jr c, jr_024_6534                             ; $654a: $38 $e8

    ldh a, [$f0]                                  ; $654c: $f0 $f0
    ldh a, [$b0]                                  ; $654e: $f0 $b0

jr_024_6550:
    ld hl, sp+$28                                 ; $6550: $f8 $28
    ld hl, sp+$58                                 ; $6552: $f8 $58
    db $fc                                        ; $6554: $fc
    or h                                          ; $6555: $b4
    db $ec                                        ; $6556: $ec
    xor h                                         ; $6557: $ac
    ldh [$60], a                                  ; $6558: $e0 $60
    ldh [$e0], a                                  ; $655a: $e0 $e0
    ret nz                                        ; $655c: $c0

    ret nz                                        ; $655d: $c0

    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    rlca                                          ; $6560: $07
    rlca                                          ; $6561: $07
    rrca                                          ; $6562: $0f
    dec bc                                        ; $6563: $0b
    rrca                                          ; $6564: $0f
    add hl, bc                                    ; $6565: $09
    rrca                                          ; $6566: $0f
    dec c                                         ; $6567: $0d
    rrca                                          ; $6568: $0f
    dec bc                                        ; $6569: $0b
    dec bc                                        ; $656a: $0b
    ld c, $1f                                     ; $656b: $0e $1f
    inc d                                         ; $656d: $14
    rra                                           ; $656e: $1f
    inc d                                         ; $656f: $14
    rrca                                          ; $6570: $0f
    ld [$090f], sp                                ; $6571: $08 $0f $09
    rra                                           ; $6574: $1f
    ld d, $0f                                     ; $6575: $16 $0f
    inc c                                         ; $6577: $0c
    rrca                                          ; $6578: $0f
    rrca                                          ; $6579: $0f
    rla                                           ; $657a: $17
    rra                                           ; $657b: $1f
    inc de                                        ; $657c: $13
    rra                                           ; $657d: $1f
    inc c                                         ; $657e: $0c
    inc c                                         ; $657f: $0c
    ldh [$e0], a                                  ; $6580: $e0 $e0
    ldh a, [$f0]                                  ; $6582: $f0 $f0
    db $10                                        ; $6584: $10
    ldh a, [rSVBK]                                ; $6585: $f0 $70
    ldh a, [$f0]                                  ; $6587: $f0 $f0
    sub b                                         ; $6589: $90
    ldh a, [$90]                                  ; $658a: $f0 $90
    ldh [rNR41], a                                ; $658c: $e0 $20
    ldh [$60], a                                  ; $658e: $e0 $60
    ldh [$a0], a                                  ; $6590: $e0 $a0
    ldh a, [$50]                                  ; $6592: $f0 $50
    ldh a, [rSVBK]                                ; $6594: $f0 $70
    ldh a, [$50]                                  ; $6596: $f0 $50
    ldh a, [$b0]                                  ; $6598: $f0 $b0
    ret nc                                        ; $659a: $d0

    ldh a, [$f0]                                  ; $659b: $f0 $f0
    ldh a, [$60]                                  ; $659d: $f0 $60
    ld h, b                                       ; $659f: $60
    rrca                                          ; $65a0: $0f
    rrca                                          ; $65a1: $0f
    rra                                           ; $65a2: $1f
    rra                                           ; $65a3: $1f
    rla                                           ; $65a4: $17
    rra                                           ; $65a5: $1f
    db $10                                        ; $65a6: $10
    rra                                           ; $65a7: $1f
    jr c, @+$31                                   ; $65a8: $38 $2f

    jr c, @+$31                                   ; $65aa: $38 $2f

    inc e                                         ; $65ac: $1c
    rra                                           ; $65ad: $1f
    ccf                                           ; $65ae: $3f
    dec hl                                        ; $65af: $2b
    ld a, a                                       ; $65b0: $7f
    ld l, b                                       ; $65b1: $68
    ld a, a                                       ; $65b2: $7f
    ld [hl], h                                    ; $65b3: $74
    rrca                                          ; $65b4: $0f
    dec bc                                        ; $65b5: $0b
    rrca                                          ; $65b6: $0f
    ld [$0c0f], sp                                ; $65b7: $08 $0f $0c
    rrca                                          ; $65ba: $0f
    rrca                                          ; $65bb: $0f
    add hl, bc                                    ; $65bc: $09
    rrca                                          ; $65bd: $0f
    ld b, $06                                     ; $65be: $06 $06
    ldh [$e0], a                                  ; $65c0: $e0 $e0
    ldh a, [$f0]                                  ; $65c2: $f0 $f0
    ret nc                                        ; $65c4: $d0

    ldh a, [rNR10]                                ; $65c5: $f0 $10
    ldh a, [$38]                                  ; $65c7: $f0 $38
    add sp, $38                                   ; $65c9: $e8 $38
    add sp, $70                                   ; $65cb: $e8 $70
    ldh a, [$f0]                                  ; $65cd: $f0 $f0
    or b                                          ; $65cf: $b0
    ld hl, sp+$28                                 ; $65d0: $f8 $28
    ld hl, sp+$58                                 ; $65d2: $f8 $58
    db $fc                                        ; $65d4: $fc
    or h                                          ; $65d5: $b4
    db $ec                                        ; $65d6: $ec
    inc l                                         ; $65d7: $2c
    ldh [$60], a                                  ; $65d8: $e0 $60
    ldh [$e0], a                                  ; $65da: $e0 $e0
    ret nz                                        ; $65dc: $c0

    ret nz                                        ; $65dd: $c0

    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    rlca                                          ; $65e0: $07
    rlca                                          ; $65e1: $07
    rrca                                          ; $65e2: $0f
    rrca                                          ; $65e3: $0f
    ld [$0e0f], sp                                ; $65e4: $08 $0f $0e
    rrca                                          ; $65e7: $0f
    rrca                                          ; $65e8: $0f
    add hl, bc                                    ; $65e9: $09
    rrca                                          ; $65ea: $0f
    add hl, bc                                    ; $65eb: $09
    rlca                                          ; $65ec: $07
    inc b                                         ; $65ed: $04
    rlca                                          ; $65ee: $07
    ld b, $07                                     ; $65ef: $06 $07
    dec b                                         ; $65f1: $05
    rrca                                          ; $65f2: $0f
    ld a, [bc]                                    ; $65f3: $0a
    rrca                                          ; $65f4: $0f
    ld c, $0f                                     ; $65f5: $0e $0f
    ld a, [bc]                                    ; $65f7: $0a
    rrca                                          ; $65f8: $0f
    dec c                                         ; $65f9: $0d
    dec bc                                        ; $65fa: $0b
    rrca                                          ; $65fb: $0f
    rrca                                          ; $65fc: $0f
    rrca                                          ; $65fd: $0f
    ld b, $06                                     ; $65fe: $06 $06
    ldh [$e0], a                                  ; $6600: $e0 $e0
    ldh a, [$d0]                                  ; $6602: $f0 $d0
    ldh a, [$90]                                  ; $6604: $f0 $90
    ldh a, [$b0]                                  ; $6606: $f0 $b0
    ldh a, [$d0]                                  ; $6608: $f0 $d0
    ret nc                                        ; $660a: $d0

    ld [hl], b                                    ; $660b: $70
    ld hl, sp+$28                                 ; $660c: $f8 $28
    ld hl, sp+$28                                 ; $660e: $f8 $28
    ldh a, [rNR10]                                ; $6610: $f0 $10
    ldh a, [$90]                                  ; $6612: $f0 $90
    ld hl, sp+$68                                 ; $6614: $f8 $68
    ldh a, [$30]                                  ; $6616: $f0 $30
    ldh a, [$f0]                                  ; $6618: $f0 $f0
    add sp, -$08                                  ; $661a: $e8 $f8
    ret z                                         ; $661c: $c8

    ld hl, sp+$30                                 ; $661d: $f8 $30
    jr nc, jr_024_6630                            ; $661f: $30 $0f

    rrca                                          ; $6621: $0f
    rra                                           ; $6622: $1f
    ld e, $17                                     ; $6623: $1e $17
    inc e                                         ; $6625: $1c
    rra                                           ; $6626: $1f
    ld e, $3d                                     ; $6627: $1e $3d
    dec hl                                        ; $6629: $2b
    add hl, sp                                    ; $662a: $39
    cpl                                           ; $662b: $2f
    rra                                           ; $662c: $1f
    ld e, $1f                                     ; $662d: $1e $1f
    ld a, [de]                                    ; $662f: $1a

jr_024_6630:
    ccf                                           ; $6630: $3f
    add hl, hl                                    ; $6631: $29
    ccf                                           ; $6632: $3f
    inc [hl]                                      ; $6633: $34

jr_024_6634:
    ld a, a                                       ; $6634: $7f
    ld e, e                                       ; $6635: $5b
    ld l, a                                       ; $6636: $6f
    ld l, d                                       ; $6637: $6a
    rrca                                          ; $6638: $0f
    inc c                                         ; $6639: $0c
    rrca                                          ; $663a: $0f
    rrca                                          ; $663b: $0f
    rlca                                          ; $663c: $07
    rlca                                          ; $663d: $07

jr_024_663e:
    nop                                           ; $663e: $00
    nop                                           ; $663f: $00
    ldh [$e0], a                                  ; $6640: $e0 $e0
    ldh a, [$f0]                                  ; $6642: $f0 $f0
    ret nc                                        ; $6644: $d0

    ld [hl], b                                    ; $6645: $70
    ldh a, [$f0]                                  ; $6646: $f0 $f0
    cp b                                          ; $6648: $b8
    ld l, b                                       ; $6649: $68
    jr c, jr_024_6634                             ; $664a: $38 $e8

    ldh a, [$f0]                                  ; $664c: $f0 $f0
    ld hl, sp-$58                                 ; $664e: $f8 $a8
    db $fc                                        ; $6650: $fc
    inc l                                         ; $6651: $2c
    db $fc                                        ; $6652: $fc
    ld e, h                                       ; $6653: $5c
    ldh [$a0], a                                  ; $6654: $e0 $a0
    ldh [$a0], a                                  ; $6656: $e0 $a0
    ldh [$60], a                                  ; $6658: $e0 $60
    ldh [$e0], a                                  ; $665a: $e0 $e0
    jr nz, jr_024_663e                            ; $665c: $20 $e0

    ret nz                                        ; $665e: $c0

    ret nz                                        ; $665f: $c0

    rlca                                          ; $6660: $07
    rlca                                          ; $6661: $07
    rrca                                          ; $6662: $0f
    dec bc                                        ; $6663: $0b
    rrca                                          ; $6664: $0f
    add hl, bc                                    ; $6665: $09
    rrca                                          ; $6666: $0f
    dec c                                         ; $6667: $0d
    rrca                                          ; $6668: $0f
    dec bc                                        ; $6669: $0b
    dec bc                                        ; $666a: $0b
    ld c, $1f                                     ; $666b: $0e $1f
    inc d                                         ; $666d: $14
    rra                                           ; $666e: $1f
    inc d                                         ; $666f: $14
    rrca                                          ; $6670: $0f
    ld [$090f], sp                                ; $6671: $08 $0f $09
    rlca                                          ; $6674: $07
    ld b, $0f                                     ; $6675: $06 $0f
    add hl, bc                                    ; $6677: $09
    rrca                                          ; $6678: $0f
    rrca                                          ; $6679: $0f
    rla                                           ; $667a: $17
    rra                                           ; $667b: $1f
    rra                                           ; $667c: $1f
    rra                                           ; $667d: $1f
    inc c                                         ; $667e: $0c
    inc c                                         ; $667f: $0c
    ldh [$e0], a                                  ; $6680: $e0 $e0
    ldh a, [$f0]                                  ; $6682: $f0 $f0
    db $10                                        ; $6684: $10
    ldh a, [rSVBK]                                ; $6685: $f0 $70
    ldh a, [$f0]                                  ; $6687: $f0 $f0
    sub b                                         ; $6689: $90
    ldh a, [$90]                                  ; $668a: $f0 $90
    ldh [rNR41], a                                ; $668c: $e0 $20
    ldh [$60], a                                  ; $668e: $e0 $60
    ldh a, [$b0]                                  ; $6690: $f0 $b0
    ld hl, sp-$58                                 ; $6692: $f8 $a8
    ld hl, sp-$48                                 ; $6694: $f8 $b8
    ldh a, [$30]                                  ; $6696: $f0 $30
    ldh [$e0], a                                  ; $6698: $e0 $e0
    ret nc                                        ; $669a: $d0

    ldh a, [$90]                                  ; $669b: $f0 $90
    ldh a, [$60]                                  ; $669d: $f0 $60
    ld h, b                                       ; $669f: $60
    rrca                                          ; $66a0: $0f
    rrca                                          ; $66a1: $0f
    rra                                           ; $66a2: $1f
    rra                                           ; $66a3: $1f
    rla                                           ; $66a4: $17
    rra                                           ; $66a5: $1f
    db $10                                        ; $66a6: $10
    rra                                           ; $66a7: $1f
    jr c, @+$31                                   ; $66a8: $38 $2f

    jr c, @+$31                                   ; $66aa: $38 $2f

    inc e                                         ; $66ac: $1c
    rra                                           ; $66ad: $1f
    rra                                           ; $66ae: $1f
    dec de                                        ; $66af: $1b
    ccf                                           ; $66b0: $3f
    jr z, @+$41                                   ; $66b1: $28 $3f

    inc [hl]                                      ; $66b3: $34
    ld a, a                                       ; $66b4: $7f
    ld e, e                                       ; $66b5: $5b
    ld l, a                                       ; $66b6: $6f
    ld l, b                                       ; $66b7: $68
    rrca                                          ; $66b8: $0f
    inc c                                         ; $66b9: $0c
    rrca                                          ; $66ba: $0f
    rrca                                          ; $66bb: $0f
    rlca                                          ; $66bc: $07
    rlca                                          ; $66bd: $07

jr_024_66be:
    nop                                           ; $66be: $00
    nop                                           ; $66bf: $00
    ldh [$e0], a                                  ; $66c0: $e0 $e0
    ldh a, [$f0]                                  ; $66c2: $f0 $f0
    ret nc                                        ; $66c4: $d0

    ldh a, [rNR10]                                ; $66c5: $f0 $10
    ldh a, [$38]                                  ; $66c7: $f0 $38
    add sp, $38                                   ; $66c9: $e8 $38
    add sp, $70                                   ; $66cb: $e8 $70
    ldh a, [$f8]                                  ; $66cd: $f0 $f8
    xor b                                         ; $66cf: $a8
    db $fc                                        ; $66d0: $fc
    inc l                                         ; $66d1: $2c
    db $fc                                        ; $66d2: $fc
    ld e, h                                       ; $66d3: $5c
    ldh [$a0], a                                  ; $66d4: $e0 $a0
    ldh [rNR41], a                                ; $66d6: $e0 $20
    ldh [$60], a                                  ; $66d8: $e0 $60
    ldh [$e0], a                                  ; $66da: $e0 $e0
    jr nz, jr_024_66be                            ; $66dc: $20 $e0

    ret nz                                        ; $66de: $c0

    ret nz                                        ; $66df: $c0

    nop                                           ; $66e0: $00
    nop                                           ; $66e1: $00
    rlca                                          ; $66e2: $07
    rlca                                          ; $66e3: $07
    rrca                                          ; $66e4: $0f
    rrca                                          ; $66e5: $0f
    ld [$0e0f], sp                                ; $66e6: $08 $0f $0e
    rrca                                          ; $66e9: $0f
    rrca                                          ; $66ea: $0f
    add hl, bc                                    ; $66eb: $09
    rrca                                          ; $66ec: $0f
    add hl, bc                                    ; $66ed: $09
    rlca                                          ; $66ee: $07
    inc b                                         ; $66ef: $04
    rlca                                          ; $66f0: $07
    ld b, $0f                                     ; $66f1: $06 $0f
    dec c                                         ; $66f3: $0d
    rra                                           ; $66f4: $1f
    dec e                                         ; $66f5: $1d
    rrca                                          ; $66f6: $0f
    inc c                                         ; $66f7: $0c
    rlca                                          ; $66f8: $07
    rlca                                          ; $66f9: $07
    dec bc                                        ; $66fa: $0b
    rrca                                          ; $66fb: $0f
    add hl, bc                                    ; $66fc: $09
    rrca                                          ; $66fd: $0f
    ld b, $06                                     ; $66fe: $06 $06
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    ldh [$e0], a                                  ; $6702: $e0 $e0
    ldh a, [$d0]                                  ; $6704: $f0 $d0
    ldh a, [$90]                                  ; $6706: $f0 $90
    ldh a, [$b0]                                  ; $6708: $f0 $b0
    ldh a, [$d0]                                  ; $670a: $f0 $d0
    ret nc                                        ; $670c: $d0

    ld [hl], b                                    ; $670d: $70
    ld hl, sp+$28                                 ; $670e: $f8 $28
    ld hl, sp+$28                                 ; $6710: $f8 $28
    ldh a, [rNR10]                                ; $6712: $f0 $10
    ldh [$60], a                                  ; $6714: $e0 $60
    ldh a, [$90]                                  ; $6716: $f0 $90
    ldh a, [$f0]                                  ; $6718: $f0 $f0
    add sp, -$08                                  ; $671a: $e8 $f8
    ld hl, sp-$08                                 ; $671c: $f8 $f8
    jr nc, jr_024_6750                            ; $671e: $30 $30

    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    rrca                                          ; $6722: $0f
    rrca                                          ; $6723: $0f
    rra                                           ; $6724: $1f
    ld e, $17                                     ; $6725: $1e $17
    inc e                                         ; $6727: $1c
    rra                                           ; $6728: $1f
    ld e, $3d                                     ; $6729: $1e $3d
    dec hl                                        ; $672b: $2b
    add hl, sp                                    ; $672c: $39
    cpl                                           ; $672d: $2f
    rra                                           ; $672e: $1f
    ld e, $3f                                     ; $672f: $1e $3f
    ld a, [hl+]                                   ; $6731: $2a
    ld a, a                                       ; $6732: $7f
    ld l, c                                       ; $6733: $69
    rrca                                          ; $6734: $0f
    dec bc                                        ; $6735: $0b

jr_024_6736:
    rrca                                          ; $6736: $0f
    ld a, [bc]                                    ; $6737: $0a
    rrca                                          ; $6738: $0f
    inc c                                         ; $6739: $0c
    rrca                                          ; $673a: $0f
    rrca                                          ; $673b: $0f
    add hl, bc                                    ; $673c: $09
    rrca                                          ; $673d: $0f
    ld b, $06                                     ; $673e: $06 $06
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    ldh [$e0], a                                  ; $6742: $e0 $e0
    ldh a, [$f0]                                  ; $6744: $f0 $f0
    ret nc                                        ; $6746: $d0

    ld [hl], b                                    ; $6747: $70
    ldh a, [$f0]                                  ; $6748: $f0 $f0
    cp b                                          ; $674a: $b8
    ld l, b                                       ; $674b: $68
    jr c, jr_024_6736                             ; $674c: $38 $e8

    ldh a, [$f0]                                  ; $674e: $f0 $f0

jr_024_6750:
    ldh a, [$b0]                                  ; $6750: $f0 $b0
    ld hl, sp+$28                                 ; $6752: $f8 $28
    db $fc                                        ; $6754: $fc
    or h                                          ; $6755: $b4
    db $ec                                        ; $6756: $ec
    xor h                                         ; $6757: $ac
    ldh [$60], a                                  ; $6758: $e0 $60
    ldh [$e0], a                                  ; $675a: $e0 $e0
    ret nz                                        ; $675c: $c0

    ret nz                                        ; $675d: $c0

    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    rlca                                          ; $6762: $07
    rlca                                          ; $6763: $07
    rrca                                          ; $6764: $0f
    dec bc                                        ; $6765: $0b
    rrca                                          ; $6766: $0f
    add hl, bc                                    ; $6767: $09
    rrca                                          ; $6768: $0f
    dec c                                         ; $6769: $0d
    rrca                                          ; $676a: $0f
    dec bc                                        ; $676b: $0b
    dec bc                                        ; $676c: $0b
    ld c, $1f                                     ; $676d: $0e $1f
    inc d                                         ; $676f: $14
    rra                                           ; $6770: $1f
    inc d                                         ; $6771: $14
    rrca                                          ; $6772: $0f
    ld [$161f], sp                                ; $6773: $08 $1f $16
    rrca                                          ; $6776: $0f
    inc c                                         ; $6777: $0c
    rrca                                          ; $6778: $0f
    rrca                                          ; $6779: $0f
    rla                                           ; $677a: $17
    rra                                           ; $677b: $1f
    inc de                                        ; $677c: $13
    rra                                           ; $677d: $1f
    inc c                                         ; $677e: $0c
    inc c                                         ; $677f: $0c
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    ldh [$e0], a                                  ; $6782: $e0 $e0
    ldh a, [$f0]                                  ; $6784: $f0 $f0
    db $10                                        ; $6786: $10
    ldh a, [rSVBK]                                ; $6787: $f0 $70
    ldh a, [$f0]                                  ; $6789: $f0 $f0
    sub b                                         ; $678b: $90
    ldh a, [$90]                                  ; $678c: $f0 $90
    ldh [rNR41], a                                ; $678e: $e0 $20
    ldh [$60], a                                  ; $6790: $e0 $60
    ldh [$a0], a                                  ; $6792: $e0 $a0
    ldh a, [rSVBK]                                ; $6794: $f0 $70
    ldh a, [$50]                                  ; $6796: $f0 $50
    ldh a, [$b0]                                  ; $6798: $f0 $b0
    ret nc                                        ; $679a: $d0

    ldh a, [$f0]                                  ; $679b: $f0 $f0
    ldh a, [$60]                                  ; $679d: $f0 $60
    ld h, b                                       ; $679f: $60
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    rrca                                          ; $67a2: $0f
    rrca                                          ; $67a3: $0f
    rra                                           ; $67a4: $1f
    rra                                           ; $67a5: $1f
    rla                                           ; $67a6: $17
    rra                                           ; $67a7: $1f
    db $10                                        ; $67a8: $10
    rra                                           ; $67a9: $1f
    jr c, @+$31                                   ; $67aa: $38 $2f

    jr c, jr_024_67dd                             ; $67ac: $38 $2f

    inc e                                         ; $67ae: $1c
    rra                                           ; $67af: $1f
    ccf                                           ; $67b0: $3f
    dec hl                                        ; $67b1: $2b
    ld a, a                                       ; $67b2: $7f
    ld l, b                                       ; $67b3: $68
    rrca                                          ; $67b4: $0f
    dec bc                                        ; $67b5: $0b
    rrca                                          ; $67b6: $0f
    ld [$0c0f], sp                                ; $67b7: $08 $0f $0c
    rrca                                          ; $67ba: $0f
    rrca                                          ; $67bb: $0f
    add hl, bc                                    ; $67bc: $09
    rrca                                          ; $67bd: $0f
    ld b, $06                                     ; $67be: $06 $06
    nop                                           ; $67c0: $00
    nop                                           ; $67c1: $00
    ldh [$e0], a                                  ; $67c2: $e0 $e0
    ldh a, [$f0]                                  ; $67c4: $f0 $f0
    ret nc                                        ; $67c6: $d0

    ldh a, [rNR10]                                ; $67c7: $f0 $10
    ldh a, [$38]                                  ; $67c9: $f0 $38
    add sp, $38                                   ; $67cb: $e8 $38
    add sp, $70                                   ; $67cd: $e8 $70
    ldh a, [$f0]                                  ; $67cf: $f0 $f0
    or b                                          ; $67d1: $b0
    ld hl, sp+$28                                 ; $67d2: $f8 $28
    db $fc                                        ; $67d4: $fc
    or h                                          ; $67d5: $b4
    db $ec                                        ; $67d6: $ec
    inc l                                         ; $67d7: $2c
    ldh [$60], a                                  ; $67d8: $e0 $60
    ldh [$e0], a                                  ; $67da: $e0 $e0
    ret nz                                        ; $67dc: $c0

jr_024_67dd:
    ret nz                                        ; $67dd: $c0

    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    inc bc                                        ; $67e0: $03
    inc bc                                        ; $67e1: $03
    rlca                                          ; $67e2: $07
    rlca                                          ; $67e3: $07
    inc b                                         ; $67e4: $04
    rlca                                          ; $67e5: $07
    rlca                                          ; $67e6: $07
    rlca                                          ; $67e7: $07
    rlca                                          ; $67e8: $07
    inc b                                         ; $67e9: $04
    rlca                                          ; $67ea: $07
    inc b                                         ; $67eb: $04
    inc bc                                        ; $67ec: $03
    ld [bc], a                                    ; $67ed: $02
    inc bc                                        ; $67ee: $03
    inc bc                                        ; $67ef: $03
    rlca                                          ; $67f0: $07
    ld b, $1f                                     ; $67f1: $06 $1f
    dec d                                         ; $67f3: $15
    rra                                           ; $67f4: $1f
    dec e                                         ; $67f5: $1d
    rrca                                          ; $67f6: $0f
    inc c                                         ; $67f7: $0c
    rlca                                          ; $67f8: $07
    rlca                                          ; $67f9: $07
    dec bc                                        ; $67fa: $0b
    rrca                                          ; $67fb: $0f
    add hl, bc                                    ; $67fc: $09
    rrca                                          ; $67fd: $0f
    ld b, $06                                     ; $67fe: $06 $06
    ldh a, [$f0]                                  ; $6800: $f0 $f0
    ld hl, sp-$18                                 ; $6802: $f8 $e8
    ld a, b                                       ; $6804: $78
    ret z                                         ; $6805: $c8

    ld a, b                                       ; $6806: $78
    ret c                                         ; $6807: $d8

    ld hl, sp-$18                                 ; $6808: $f8 $e8
    add sp, -$48                                  ; $680a: $e8 $b8
    db $fc                                        ; $680c: $fc
    inc d                                         ; $680d: $14
    db $fc                                        ; $680e: $fc
    inc d                                         ; $680f: $14
    ld hl, sp-$78                                 ; $6810: $f8 $88
    ldh a, [$90]                                  ; $6812: $f0 $90
    ldh [$60], a                                  ; $6814: $e0 $60
    ldh a, [$90]                                  ; $6816: $f0 $90
    ldh a, [$f0]                                  ; $6818: $f0 $f0
    add sp, -$08                                  ; $681a: $e8 $f8
    ld hl, sp-$08                                 ; $681c: $f8 $f8
    jr nc, jr_024_6850                            ; $681e: $30 $30

    rlca                                          ; $6820: $07
    rlca                                          ; $6821: $07
    rrca                                          ; $6822: $0f
    rrca                                          ; $6823: $0f
    dec bc                                        ; $6824: $0b
    ld c, $0f                                     ; $6825: $0e $0f
    rrca                                          ; $6827: $0f
    ld e, $15                                     ; $6828: $1e $15
    inc e                                         ; $682a: $1c
    rla                                           ; $682b: $17
    rrca                                          ; $682c: $0f
    rrca                                          ; $682d: $0f
    rra                                           ; $682e: $1f
    dec d                                         ; $682f: $15
    ccf                                           ; $6830: $3f
    inc [hl]                                      ; $6831: $34
    ld a, a                                       ; $6832: $7f
    ld [hl], h                                    ; $6833: $74
    rrca                                          ; $6834: $0f
    dec bc                                        ; $6835: $0b
    rrca                                          ; $6836: $0f
    ld a, [bc]                                    ; $6837: $0a
    rrca                                          ; $6838: $0f
    inc c                                         ; $6839: $0c
    rrca                                          ; $683a: $0f
    rrca                                          ; $683b: $0f
    add hl, bc                                    ; $683c: $09
    rrca                                          ; $683d: $0f
    ld b, $06                                     ; $683e: $06 $06
    ldh a, [$f0]                                  ; $6840: $f0 $f0
    ld hl, sp+$78                                 ; $6842: $f8 $78
    add sp, $38                                   ; $6844: $e8 $38
    ld hl, sp+$78                                 ; $6846: $f8 $78
    call c, $9cb4                                 ; $6848: $dc $b4 $9c
    db $f4                                        ; $684b: $f4
    ld hl, sp+$78                                 ; $684c: $f8 $78
    ld hl, sp+$58                                 ; $684e: $f8 $58

jr_024_6850:
    db $fc                                        ; $6850: $fc
    sub h                                         ; $6851: $94
    ld hl, sp+$58                                 ; $6852: $f8 $58
    db $fc                                        ; $6854: $fc
    or h                                          ; $6855: $b4
    db $ec                                        ; $6856: $ec
    xor h                                         ; $6857: $ac
    ldh [$60], a                                  ; $6858: $e0 $60
    ldh [$e0], a                                  ; $685a: $e0 $e0
    ret nz                                        ; $685c: $c0

    ret nz                                        ; $685d: $c0

    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    inc bc                                        ; $6860: $03
    inc bc                                        ; $6861: $03
    rlca                                          ; $6862: $07
    dec b                                         ; $6863: $05
    rlca                                          ; $6864: $07
    inc b                                         ; $6865: $04
    rlca                                          ; $6866: $07
    ld b, $07                                     ; $6867: $06 $07
    dec b                                         ; $6869: $05
    dec b                                         ; $686a: $05
    rlca                                          ; $686b: $07
    rrca                                          ; $686c: $0f
    ld a, [bc]                                    ; $686d: $0a
    rrca                                          ; $686e: $0f
    ld a, [bc]                                    ; $686f: $0a
    rlca                                          ; $6870: $07
    inc b                                         ; $6871: $04
    rrca                                          ; $6872: $0f
    add hl, bc                                    ; $6873: $09
    rra                                           ; $6874: $1f
    ld d, $0f                                     ; $6875: $16 $0f
    inc c                                         ; $6877: $0c
    rrca                                          ; $6878: $0f
    rrca                                          ; $6879: $0f
    rla                                           ; $687a: $17
    rra                                           ; $687b: $1f
    inc de                                        ; $687c: $13
    rra                                           ; $687d: $1f
    inc c                                         ; $687e: $0c
    inc c                                         ; $687f: $0c
    ldh a, [$f0]                                  ; $6880: $f0 $f0
    ld hl, sp-$08                                 ; $6882: $f8 $f8
    adc b                                         ; $6884: $88
    ld hl, sp-$48                                 ; $6885: $f8 $b8
    ld hl, sp-$08                                 ; $6887: $f8 $f8
    ret z                                         ; $6889: $c8

    ld hl, sp+$48                                 ; $688a: $f8 $48
    ldh a, [rNR10]                                ; $688c: $f0 $10
    ldh a, [$30]                                  ; $688e: $f0 $30
    ldh a, [$50]                                  ; $6890: $f0 $50
    ldh a, [$50]                                  ; $6892: $f0 $50
    ldh a, [rSVBK]                                ; $6894: $f0 $70
    ldh a, [$50]                                  ; $6896: $f0 $50
    ldh a, [$b0]                                  ; $6898: $f0 $b0
    ret nc                                        ; $689a: $d0

    ldh a, [$f0]                                  ; $689b: $f0 $f0
    ldh a, [$60]                                  ; $689d: $f0 $60
    ld h, b                                       ; $689f: $60
    rlca                                          ; $68a0: $07
    rlca                                          ; $68a1: $07
    rrca                                          ; $68a2: $0f
    rrca                                          ; $68a3: $0f
    dec bc                                        ; $68a4: $0b
    rrca                                          ; $68a5: $0f
    ld [$1c0f], sp                                ; $68a6: $08 $0f $1c
    rla                                           ; $68a9: $17
    inc e                                         ; $68aa: $1c
    rla                                           ; $68ab: $17
    ld c, $0f                                     ; $68ac: $0e $0f
    rra                                           ; $68ae: $1f
    dec d                                         ; $68af: $15
    ccf                                           ; $68b0: $3f
    inc [hl]                                      ; $68b1: $34
    ld a, a                                       ; $68b2: $7f
    ld [hl], h                                    ; $68b3: $74
    rrca                                          ; $68b4: $0f
    dec bc                                        ; $68b5: $0b
    rrca                                          ; $68b6: $0f
    ld [$0c0f], sp                                ; $68b7: $08 $0f $0c
    rrca                                          ; $68ba: $0f
    rrca                                          ; $68bb: $0f
    add hl, bc                                    ; $68bc: $09
    rrca                                          ; $68bd: $0f
    ld b, $06                                     ; $68be: $06 $06
    ldh a, [$f0]                                  ; $68c0: $f0 $f0
    ld hl, sp-$08                                 ; $68c2: $f8 $f8
    add sp, -$08                                  ; $68c4: $e8 $f8

jr_024_68c6:
    ld [$1cf8], sp                                ; $68c6: $08 $f8 $1c
    db $f4                                        ; $68c9: $f4
    inc e                                         ; $68ca: $1c
    db $f4                                        ; $68cb: $f4
    jr c, jr_024_68c6                             ; $68cc: $38 $f8

    ld hl, sp-$28                                 ; $68ce: $f8 $d8
    db $fc                                        ; $68d0: $fc
    inc d                                         ; $68d1: $14
    ld hl, sp+$58                                 ; $68d2: $f8 $58
    db $fc                                        ; $68d4: $fc
    or h                                          ; $68d5: $b4
    db $ec                                        ; $68d6: $ec
    inc l                                         ; $68d7: $2c
    ldh [$60], a                                  ; $68d8: $e0 $60
    ldh [$e0], a                                  ; $68da: $e0 $e0
    ret nz                                        ; $68dc: $c0

    ret nz                                        ; $68dd: $c0

    nop                                           ; $68de: $00
    nop                                           ; $68df: $00
    rrca                                          ; $68e0: $0f
    rrca                                          ; $68e1: $0f
    rra                                           ; $68e2: $1f
    rra                                           ; $68e3: $1f
    ld de, $1d1f                                  ; $68e4: $11 $1f $1d
    rra                                           ; $68e7: $1f
    rra                                           ; $68e8: $1f
    inc de                                        ; $68e9: $13
    rra                                           ; $68ea: $1f
    ld [de], a                                    ; $68eb: $12
    rrca                                          ; $68ec: $0f
    ld [$0c0f], sp                                ; $68ed: $08 $0f $0c
    rra                                           ; $68f0: $1f
    ld a, [de]                                    ; $68f1: $1a
    rra                                           ; $68f2: $1f
    dec d                                         ; $68f3: $15
    rra                                           ; $68f4: $1f
    dec e                                         ; $68f5: $1d
    rrca                                          ; $68f6: $0f
    inc c                                         ; $68f7: $0c
    rlca                                          ; $68f8: $07
    rlca                                          ; $68f9: $07
    dec bc                                        ; $68fa: $0b
    rrca                                          ; $68fb: $0f
    add hl, bc                                    ; $68fc: $09
    rrca                                          ; $68fd: $0f
    ld b, $06                                     ; $68fe: $06 $06
    ret nz                                        ; $6900: $c0

    ret nz                                        ; $6901: $c0

    ldh [$a0], a                                  ; $6902: $e0 $a0
    ldh [rNR41], a                                ; $6904: $e0 $20
    ldh [$60], a                                  ; $6906: $e0 $60
    ldh [$a0], a                                  ; $6908: $e0 $a0
    and b                                         ; $690a: $a0
    ldh [$f0], a                                  ; $690b: $e0 $f0
    ld d, b                                       ; $690d: $50
    ldh a, [$50]                                  ; $690e: $f0 $50
    ldh [rNR41], a                                ; $6910: $e0 $20
    ldh a, [$90]                                  ; $6912: $f0 $90
    ldh [$60], a                                  ; $6914: $e0 $60
    ldh a, [$90]                                  ; $6916: $f0 $90
    ldh a, [$f0]                                  ; $6918: $f0 $f0
    add sp, -$08                                  ; $691a: $e8 $f8
    ld hl, sp-$08                                 ; $691c: $f8 $f8
    jr nc, jr_024_6950                            ; $691e: $30 $30

    rra                                           ; $6920: $1f
    rra                                           ; $6921: $1f
    ccf                                           ; $6922: $3f
    dec a                                         ; $6923: $3d
    cpl                                           ; $6924: $2f
    jr c, jr_024_6966                             ; $6925: $38 $3f

    dec a                                         ; $6927: $3d
    ld a, e                                       ; $6928: $7b
    ld d, [hl]                                    ; $6929: $56
    ld [hl], d                                    ; $692a: $72
    ld e, a                                       ; $692b: $5f
    ccf                                           ; $692c: $3f
    dec a                                         ; $692d: $3d
    ld a, a                                       ; $692e: $7f
    ld d, l                                       ; $692f: $55
    rst $38                                       ; $6930: $ff
    jp nc, Jump_024_747f                          ; $6931: $d2 $7f $74

    rrca                                          ; $6934: $0f
    dec bc                                        ; $6935: $0b
    rrca                                          ; $6936: $0f
    ld a, [bc]                                    ; $6937: $0a
    rrca                                          ; $6938: $0f
    inc c                                         ; $6939: $0c
    rrca                                          ; $693a: $0f
    rrca                                          ; $693b: $0f
    add hl, bc                                    ; $693c: $09
    rrca                                          ; $693d: $0f
    ld b, $06                                     ; $693e: $06 $06
    ret nz                                        ; $6940: $c0

    ret nz                                        ; $6941: $c0

    ldh [$e0], a                                  ; $6942: $e0 $e0
    and b                                         ; $6944: $a0
    ldh [$e0], a                                  ; $6945: $e0 $e0
    ldh [rSVBK], a                                ; $6947: $e0 $70
    ret nc                                        ; $6949: $d0

    ld [hl], b                                    ; $694a: $70
    ret nc                                        ; $694b: $d0

    ldh [$e0], a                                  ; $694c: $e0 $e0
    ldh [$60], a                                  ; $694e: $e0 $60

jr_024_6950:
    ldh a, [$50]                                  ; $6950: $f0 $50
    ld hl, sp+$58                                 ; $6952: $f8 $58
    db $fc                                        ; $6954: $fc
    or h                                          ; $6955: $b4
    db $ec                                        ; $6956: $ec
    xor h                                         ; $6957: $ac
    ldh [$60], a                                  ; $6958: $e0 $60
    ldh [$e0], a                                  ; $695a: $e0 $e0
    ret nz                                        ; $695c: $c0

    ret nz                                        ; $695d: $c0

    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    rrca                                          ; $6960: $0f
    rrca                                          ; $6961: $0f
    rra                                           ; $6962: $1f
    rla                                           ; $6963: $17
    ld e, $13                                     ; $6964: $1e $13

jr_024_6966:
    ld e, $1b                                     ; $6966: $1e $1b
    rra                                           ; $6968: $1f
    rla                                           ; $6969: $17
    rla                                           ; $696a: $17
    dec e                                         ; $696b: $1d
    ccf                                           ; $696c: $3f
    jr z, jr_024_69ae                             ; $696d: $28 $3f

    jr z, jr_024_6990                             ; $696f: $28 $1f

    ld de, $090f                                  ; $6971: $11 $0f $09
    rra                                           ; $6974: $1f
    ld d, $0f                                     ; $6975: $16 $0f
    inc c                                         ; $6977: $0c
    rrca                                          ; $6978: $0f
    rrca                                          ; $6979: $0f
    rla                                           ; $697a: $17
    rra                                           ; $697b: $1f
    inc de                                        ; $697c: $13
    rra                                           ; $697d: $1f
    inc c                                         ; $697e: $0c
    inc c                                         ; $697f: $0c
    ret nz                                        ; $6980: $c0

    ret nz                                        ; $6981: $c0

    ldh [$e0], a                                  ; $6982: $e0 $e0
    jr nz, jr_024_6966                            ; $6984: $20 $e0

    ldh [$e0], a                                  ; $6986: $e0 $e0
    ldh [rNR41], a                                ; $6988: $e0 $20
    ldh [rNR41], a                                ; $698a: $e0 $20
    ret nz                                        ; $698c: $c0

    ld b, b                                       ; $698d: $40
    ret nz                                        ; $698e: $c0

    ret nz                                        ; $698f: $c0

jr_024_6990:
    ret nz                                        ; $6990: $c0

    ld b, b                                       ; $6991: $40
    ldh a, [$50]                                  ; $6992: $f0 $50
    ldh a, [rSVBK]                                ; $6994: $f0 $70
    ldh a, [$50]                                  ; $6996: $f0 $50
    ldh a, [$b0]                                  ; $6998: $f0 $b0
    ret nc                                        ; $699a: $d0

    ldh a, [$f0]                                  ; $699b: $f0 $f0
    ldh a, [$60]                                  ; $699d: $f0 $60
    ld h, b                                       ; $699f: $60
    rra                                           ; $69a0: $1f
    rra                                           ; $69a1: $1f
    ccf                                           ; $69a2: $3f
    ccf                                           ; $69a3: $3f
    cpl                                           ; $69a4: $2f
    ccf                                           ; $69a5: $3f
    jr nz, jr_024_69e7                            ; $69a6: $20 $3f

    ld [hl], b                                    ; $69a8: $70
    ld e, a                                       ; $69a9: $5f
    ld [hl], b                                    ; $69aa: $70
    ld e, a                                       ; $69ab: $5f
    jr c, jr_024_69ed                             ; $69ac: $38 $3f

jr_024_69ae:
    ld a, a                                       ; $69ae: $7f
    ld d, a                                       ; $69af: $57
    rst $38                                       ; $69b0: $ff
    ret nc                                        ; $69b1: $d0

    ld a, a                                       ; $69b2: $7f
    ld [hl], h                                    ; $69b3: $74
    rrca                                          ; $69b4: $0f
    dec bc                                        ; $69b5: $0b
    rrca                                          ; $69b6: $0f
    ld [$0c0f], sp                                ; $69b7: $08 $0f $0c
    rrca                                          ; $69ba: $0f
    rrca                                          ; $69bb: $0f
    add hl, bc                                    ; $69bc: $09
    rrca                                          ; $69bd: $0f
    ld b, $06                                     ; $69be: $06 $06
    ret nz                                        ; $69c0: $c0

    ret nz                                        ; $69c1: $c0

    ldh [$e0], a                                  ; $69c2: $e0 $e0
    and b                                         ; $69c4: $a0
    ldh [rNR41], a                                ; $69c5: $e0 $20
    ldh [rSVBK], a                                ; $69c7: $e0 $70
    ret nc                                        ; $69c9: $d0

    ld [hl], b                                    ; $69ca: $70
    ret nc                                        ; $69cb: $d0

    ldh [$e0], a                                  ; $69cc: $e0 $e0
    ldh [$60], a                                  ; $69ce: $e0 $60
    ldh a, [$50]                                  ; $69d0: $f0 $50
    ld hl, sp+$58                                 ; $69d2: $f8 $58
    db $fc                                        ; $69d4: $fc
    or h                                          ; $69d5: $b4
    db $ec                                        ; $69d6: $ec
    inc l                                         ; $69d7: $2c
    ldh [$60], a                                  ; $69d8: $e0 $60
    ldh [$e0], a                                  ; $69da: $e0 $e0
    ret nz                                        ; $69dc: $c0

    ret nz                                        ; $69dd: $c0

    nop                                           ; $69de: $00
    nop                                           ; $69df: $00
    nop                                           ; $69e0: $00
    nop                                           ; $69e1: $00
    inc bc                                        ; $69e2: $03
    inc bc                                        ; $69e3: $03
    rlca                                          ; $69e4: $07
    rlca                                          ; $69e5: $07
    inc b                                         ; $69e6: $04

jr_024_69e7:
    rlca                                          ; $69e7: $07
    ld b, $07                                     ; $69e8: $06 $07
    rlca                                          ; $69ea: $07
    dec b                                         ; $69eb: $05
    inc bc                                        ; $69ec: $03

jr_024_69ed:
    nop                                           ; $69ed: $00
    inc bc                                        ; $69ee: $03
    ld [bc], a                                    ; $69ef: $02
    rlca                                          ; $69f0: $07
    dec b                                         ; $69f1: $05
    rrca                                          ; $69f2: $0f
    add hl, bc                                    ; $69f3: $09
    rlca                                          ; $69f4: $07
    inc b                                         ; $69f5: $04
    inc bc                                        ; $69f6: $03
    inc bc                                        ; $69f7: $03
    rlca                                          ; $69f8: $07
    rlca                                          ; $69f9: $07
    dec b                                         ; $69fa: $05
    rlca                                          ; $69fb: $07
    ld [bc], a                                    ; $69fc: $02
    ld [bc], a                                    ; $69fd: $02
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    nop                                           ; $6a00: $00
    nop                                           ; $6a01: $00
    ret nz                                        ; $6a02: $c0

    ret nz                                        ; $6a03: $c0

    ldh [$e0], a                                  ; $6a04: $e0 $e0
    ldh [$a0], a                                  ; $6a06: $e0 $a0
    ldh [$a0], a                                  ; $6a08: $e0 $a0
    ldh [$e0], a                                  ; $6a0a: $e0 $e0
    ldh a, [rNR10]                                ; $6a0c: $f0 $10
    ldh a, [rNR10]                                ; $6a0e: $f0 $10
    ldh [rNR41], a                                ; $6a10: $e0 $20
    ldh [$a0], a                                  ; $6a12: $e0 $a0
    ldh [$a0], a                                  ; $6a14: $e0 $a0
    ldh [$e0], a                                  ; $6a16: $e0 $e0
    ret nc                                        ; $6a18: $d0

    ldh a, [$f0]                                  ; $6a19: $f0 $f0
    ldh a, [rNR41]                                ; $6a1b: $f0 $20
    jr nz, jr_024_6a1f                            ; $6a1d: $20 $00

jr_024_6a1f:
    nop                                           ; $6a1f: $00
    nop                                           ; $6a20: $00
    nop                                           ; $6a21: $00
    rlca                                          ; $6a22: $07
    rlca                                          ; $6a23: $07
    rrca                                          ; $6a24: $0f
    ld c, $0b                                     ; $6a25: $0e $0b
    inc c                                         ; $6a27: $0c
    rrca                                          ; $6a28: $0f
    ld c, $1d                                     ; $6a29: $0e $1d
    rla                                           ; $6a2b: $17
    rrca                                          ; $6a2c: $0f
    ld c, $1f                                     ; $6a2d: $0e $1f
    ld d, $3f                                     ; $6a2f: $16 $3f
    dec [hl]                                      ; $6a31: $35
    ccf                                           ; $6a32: $3f
    jr c, jr_024_6a3c                             ; $6a33: $38 $07

    ld b, $07                                     ; $6a35: $06 $07
    inc b                                         ; $6a37: $04
    rlca                                          ; $6a38: $07
    rlca                                          ; $6a39: $07
    dec b                                         ; $6a3a: $05
    rlca                                          ; $6a3b: $07

jr_024_6a3c:
    ld [bc], a                                    ; $6a3c: $02
    ld [bc], a                                    ; $6a3d: $02
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    nop                                           ; $6a41: $00
    ret nz                                        ; $6a42: $c0

    ret nz                                        ; $6a43: $c0

    ldh [$e0], a                                  ; $6a44: $e0 $e0
    ldh [$60], a                                  ; $6a46: $e0 $60
    ldh [$e0], a                                  ; $6a48: $e0 $e0
    or b                                          ; $6a4a: $b0
    ld d, b                                       ; $6a4b: $50
    ldh [$e0], a                                  ; $6a4c: $e0 $e0
    ldh [$a0], a                                  ; $6a4e: $e0 $a0
    ldh a, [rNR10]                                ; $6a50: $f0 $10
    ldh a, [rSVBK]                                ; $6a52: $f0 $70
    ret c                                         ; $6a54: $d8

    sbc b                                         ; $6a55: $98
    ret nz                                        ; $6a56: $c0

    ld b, b                                       ; $6a57: $40
    ret nz                                        ; $6a58: $c0

    ret nz                                        ; $6a59: $c0

    ret nz                                        ; $6a5a: $c0

    ret nz                                        ; $6a5b: $c0

    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    nop                                           ; $6a60: $00
    nop                                           ; $6a61: $00
    inc bc                                        ; $6a62: $03
    inc bc                                        ; $6a63: $03
    rlca                                          ; $6a64: $07
    rlca                                          ; $6a65: $07
    rlca                                          ; $6a66: $07
    dec b                                         ; $6a67: $05

jr_024_6a68:
    rlca                                          ; $6a68: $07
    dec b                                         ; $6a69: $05
    rlca                                          ; $6a6a: $07
    rlca                                          ; $6a6b: $07
    rrca                                          ; $6a6c: $0f
    ld [$080f], sp                                ; $6a6d: $08 $0f $08
    rlca                                          ; $6a70: $07
    inc b                                         ; $6a71: $04
    rlca                                          ; $6a72: $07
    dec b                                         ; $6a73: $05
    rlca                                          ; $6a74: $07
    inc b                                         ; $6a75: $04
    rlca                                          ; $6a76: $07
    rlca                                          ; $6a77: $07
    dec bc                                        ; $6a78: $0b
    rrca                                          ; $6a79: $0f
    dec bc                                        ; $6a7a: $0b
    rrca                                          ; $6a7b: $0f
    inc b                                         ; $6a7c: $04
    inc b                                         ; $6a7d: $04
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    nop                                           ; $6a80: $00
    nop                                           ; $6a81: $00
    ret nz                                        ; $6a82: $c0

    ret nz                                        ; $6a83: $c0

    ldh [$e0], a                                  ; $6a84: $e0 $e0
    jr nz, jr_024_6a68                            ; $6a86: $20 $e0

    ld h, b                                       ; $6a88: $60
    ldh [$e0], a                                  ; $6a89: $e0 $e0
    and b                                         ; $6a8b: $a0
    ret nz                                        ; $6a8c: $c0

    nop                                           ; $6a8d: $00
    ret nz                                        ; $6a8e: $c0

    ld b, b                                       ; $6a8f: $40
    ret nz                                        ; $6a90: $c0

    add b                                         ; $6a91: $80
    ldh [$60], a                                  ; $6a92: $e0 $60
    ldh [$60], a                                  ; $6a94: $e0 $60
    ldh [$a0], a                                  ; $6a96: $e0 $a0
    ldh [$e0], a                                  ; $6a98: $e0 $e0
    ldh [$e0], a                                  ; $6a9a: $e0 $e0

jr_024_6a9c:
    ld b, b                                       ; $6a9c: $40
    ld b, b                                       ; $6a9d: $40
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    nop                                           ; $6aa0: $00
    nop                                           ; $6aa1: $00
    rlca                                          ; $6aa2: $07
    rlca                                          ; $6aa3: $07
    rrca                                          ; $6aa4: $0f
    rrca                                          ; $6aa5: $0f
    dec bc                                        ; $6aa6: $0b
    rrca                                          ; $6aa7: $0f
    ld [$1c0f], sp                                ; $6aa8: $08 $0f $1c
    rla                                           ; $6aab: $17
    inc c                                         ; $6aac: $0c
    rrca                                          ; $6aad: $0f
    rra                                           ; $6aae: $1f
    rla                                           ; $6aaf: $17
    ccf                                           ; $6ab0: $3f
    inc [hl]                                      ; $6ab1: $34
    ccf                                           ; $6ab2: $3f
    jr c, jr_024_6abc                             ; $6ab3: $38 $07

    inc b                                         ; $6ab5: $04
    rlca                                          ; $6ab6: $07
    inc b                                         ; $6ab7: $04
    rlca                                          ; $6ab8: $07
    rlca                                          ; $6ab9: $07
    dec b                                         ; $6aba: $05
    rlca                                          ; $6abb: $07

jr_024_6abc:
    ld [bc], a                                    ; $6abc: $02
    ld [bc], a                                    ; $6abd: $02
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    nop                                           ; $6ac0: $00
    nop                                           ; $6ac1: $00
    ret nz                                        ; $6ac2: $c0

    ret nz                                        ; $6ac3: $c0

    ldh [$e0], a                                  ; $6ac4: $e0 $e0
    ldh [$e0], a                                  ; $6ac6: $e0 $e0
    jr nz, @-$1e                                  ; $6ac8: $20 $e0

    jr nc, jr_024_6a9c                            ; $6aca: $30 $d0

    ld h, b                                       ; $6acc: $60
    ldh [$e0], a                                  ; $6acd: $e0 $e0
    and b                                         ; $6acf: $a0
    ldh a, [rNR10]                                ; $6ad0: $f0 $10
    ldh a, [rSVBK]                                ; $6ad2: $f0 $70
    ret c                                         ; $6ad4: $d8

    jr @-$3e                                      ; $6ad5: $18 $c0

    ld b, b                                       ; $6ad7: $40
    ret nz                                        ; $6ad8: $c0

    ret nz                                        ; $6ad9: $c0

    ret nz                                        ; $6ada: $c0

    ret nz                                        ; $6adb: $c0

    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00

    db $f2, $6a, $f5, $6a

    ei                                            ; $6ae4: $fb
    ld l, d                                       ; $6ae5: $6a
    cp $6a                                        ; $6ae6: $fe $6a
    add hl, bc                                    ; $6ae8: $09
    ld l, e                                       ; $6ae9: $6b
    db $10                                        ; $6aea: $10
    ld l, e                                       ; $6aeb: $6b
    jr jr_024_6b59                                ; $6aec: $18 $6b

    inc l                                         ; $6aee: $2c
    ld l, e                                       ; $6aef: $6b
    jr c, jr_024_6b5d                             ; $6af0: $38 $6b

    nop                                           ; $6af2: $00
    rst $38                                       ; $6af3: $ff
    db $fd                                        ; $6af4: $fd
    nop                                           ; $6af5: $00
    ld e, $01                                     ; $6af6: $1e $01
    ld e, $ff                                     ; $6af8: $1e $ff
    nop                                           ; $6afa: $00
    ld [bc], a                                    ; $6afb: $02
    rst $38                                       ; $6afc: $ff
    db $fd                                        ; $6afd: $fd
    ld [bc], a                                    ; $6afe: $02
    inc c                                         ; $6aff: $0c
    inc bc                                        ; $6b00: $03
    inc c                                         ; $6b01: $0c
    inc b                                         ; $6b02: $04
    jr jr_024_6b07                                ; $6b03: $18 $02

    inc c                                         ; $6b05: $0c
    dec b                                         ; $6b06: $05

jr_024_6b07:
    inc c                                         ; $6b07: $0c
    db $fd                                        ; $6b08: $fd
    ld [bc], a                                    ; $6b09: $02
    jr @+$05                                      ; $6b0a: $18 $03

    jr jr_024_6b10                                ; $6b0c: $18 $02

    jr @-$01                                      ; $6b0e: $18 $fd

jr_024_6b10:
    nop                                           ; $6b10: $00
    ld a, [bc]                                    ; $6b11: $0a
    ld b, $1e                                     ; $6b12: $06 $1e
    nop                                           ; $6b14: $00
    ld a, [bc]                                    ; $6b15: $0a
    cp $01                                        ; $6b16: $fe $01
    nop                                           ; $6b18: $00
    ld a, [bc]                                    ; $6b19: $0a
    rlca                                          ; $6b1a: $07
    ld a, [bc]                                    ; $6b1b: $0a
    nop                                           ; $6b1c: $00
    inc bc                                        ; $6b1d: $03
    ld [$000a], sp                                ; $6b1e: $08 $0a $00
    inc bc                                        ; $6b21: $03
    rlca                                          ; $6b22: $07
    ld a, [bc]                                    ; $6b23: $0a
    nop                                           ; $6b24: $00
    inc bc                                        ; $6b25: $03
    ld [$000a], sp                                ; $6b26: $08 $0a $00
    ld a, [bc]                                    ; $6b29: $0a
    cp $01                                        ; $6b2a: $fe $01
    nop                                           ; $6b2c: $00
    ld a, [bc]                                    ; $6b2d: $0a
    add hl, bc                                    ; $6b2e: $09
    ld [$0800], sp                                ; $6b2f: $08 $00 $08
    add hl, bc                                    ; $6b32: $09
    ld [$0a00], sp                                ; $6b33: $08 $00 $0a
    cp $01                                        ; $6b36: $fe $01
    ld [bc], a                                    ; $6b38: $02
    ld [de], a                                    ; $6b39: $12
    inc bc                                        ; $6b3a: $03
    ld [de], a                                    ; $6b3b: $12
    ld [bc], a                                    ; $6b3c: $02
    ld e, $05                                     ; $6b3d: $1e $05
    ld [de], a                                    ; $6b3f: $12
    db $fd                                        ; $6b40: $fd

    db $04, $04, $49, $6b, $60, $71, $49, $6b, $60, $6b, $60, $6c, $60, $6c, $60, $6c

    ld h, b                                       ; $6b51: $60
    ld l, h                                       ; $6b52: $6c
    ld h, b                                       ; $6b53: $60
    ld l, h                                       ; $6b54: $6c
    ld h, b                                       ; $6b55: $60
    ld l, l                                       ; $6b56: $6d
    ld h, b                                       ; $6b57: $60
    ld l, [hl]                                    ; $6b58: $6e

jr_024_6b59:
    ld h, b                                       ; $6b59: $60
    ld l, a                                       ; $6b5a: $6f
    ld h, b                                       ; $6b5b: $60
    ld [hl], b                                    ; $6b5c: $70

jr_024_6b5d:
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    ld bc, $0701                                  ; $6b60: $01 $01 $07
    rlca                                          ; $6b63: $07
    rrca                                          ; $6b64: $0f
    rrca                                          ; $6b65: $0f
    rrca                                          ; $6b66: $0f
    rrca                                          ; $6b67: $0f
    rra                                           ; $6b68: $1f
    rra                                           ; $6b69: $1f
    ccf                                           ; $6b6a: $3f
    ccf                                           ; $6b6b: $3f
    ld a, $3f                                     ; $6b6c: $3e $3f
    dec e                                         ; $6b6e: $1d
    rra                                           ; $6b6f: $1f
    ld c, $0f                                     ; $6b70: $0e $0f
    dec bc                                        ; $6b72: $0b
    rrca                                          ; $6b73: $0f
    rlca                                          ; $6b74: $07
    ld b, $03                                     ; $6b75: $06 $03
    ld [bc], a                                    ; $6b77: $02
    rlca                                          ; $6b78: $07
    rlca                                          ; $6b79: $07
    rrca                                          ; $6b7a: $0f
    dec bc                                        ; $6b7b: $0b
    rrca                                          ; $6b7c: $0f
    rrca                                          ; $6b7d: $0f
    ld b, $06                                     ; $6b7e: $06 $06
    ldh [$e0], a                                  ; $6b80: $e0 $e0
    ldh a, [$f0]                                  ; $6b82: $f0 $f0

jr_024_6b84:
    ld hl, sp-$08                                 ; $6b84: $f8 $f8
    ret c                                         ; $6b86: $d8

    ld hl, sp-$70                                 ; $6b87: $f8 $90
    ldh a, [$b0]                                  ; $6b89: $f0 $b0
    ldh a, [$a8]                                  ; $6b8b: $f0 $a8
    ld hl, sp+$08                                 ; $6b8d: $f8 $08
    ld hl, sp+$08                                 ; $6b8f: $f8 $08
    ld hl, sp-$70                                 ; $6b91: $f8 $90
    ldh a, [$f0]                                  ; $6b93: $f0 $f0
    ldh a, [$d8]                                  ; $6b95: $f0 $d8
    ld l, b                                       ; $6b97: $68
    ldh a, [$f0]                                  ; $6b98: $f0 $f0
    jr c, jr_024_6b84                             ; $6b9a: $38 $e8

    ld hl, sp-$28                                 ; $6b9c: $f8 $d8
    ld [hl], b                                    ; $6b9e: $70
    ld [hl], b                                    ; $6b9f: $70
    rlca                                          ; $6ba0: $07
    rlca                                          ; $6ba1: $07
    rrca                                          ; $6ba2: $0f
    rrca                                          ; $6ba3: $0f
    rra                                           ; $6ba4: $1f
    rra                                           ; $6ba5: $1f
    dec e                                         ; $6ba6: $1d
    rra                                           ; $6ba7: $1f
    jr c, jr_024_6be9                             ; $6ba8: $38 $3f

    ld a, d                                       ; $6baa: $7a
    ld a, a                                       ; $6bab: $7f
    ld l, d                                       ; $6bac: $6a
    ld a, a                                       ; $6bad: $7f
    jr nz, jr_024_6bef                            ; $6bae: $20 $3f

    jr jr_024_6bd1                                ; $6bb0: $18 $1f

    inc l                                         ; $6bb2: $2c
    ccf                                           ; $6bb3: $3f
    ccf                                           ; $6bb4: $3f
    dec sp                                        ; $6bb5: $3b
    rla                                           ; $6bb6: $17
    inc e                                         ; $6bb7: $1c
    inc de                                        ; $6bb8: $13
    rra                                           ; $6bb9: $1f
    rrca                                          ; $6bba: $0f
    rrca                                          ; $6bbb: $0f
    rrca                                          ; $6bbc: $0f
    add hl, bc                                    ; $6bbd: $09
    ld b, $06                                     ; $6bbe: $06 $06
    ret nz                                        ; $6bc0: $c0

    ret nz                                        ; $6bc1: $c0

    ldh [$e0], a                                  ; $6bc2: $e0 $e0
    ldh a, [$f0]                                  ; $6bc4: $f0 $f0
    ld [hl], b                                    ; $6bc6: $70
    ldh a, [$38]                                  ; $6bc7: $f0 $38
    ld hl, sp-$44                                 ; $6bc9: $f8 $bc
    db $fc                                        ; $6bcb: $fc
    xor h                                         ; $6bcc: $ac
    db $fc                                        ; $6bcd: $fc
    ld [$30f8], sp                                ; $6bce: $08 $f8 $30

jr_024_6bd1:
    ldh a, [rSVBK]                                ; $6bd1: $f0 $70
    ldh a, [$e8]                                  ; $6bd3: $f0 $e8
    cp b                                          ; $6bd5: $b8
    ld hl, sp+$78                                 ; $6bd6: $f8 $78
    cp b                                          ; $6bd8: $b8
    add sp, -$30                                  ; $6bd9: $e8 $d0
    ret nc                                        ; $6bdb: $d0

    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    rlca                                          ; $6be0: $07
    rlca                                          ; $6be1: $07
    rrca                                          ; $6be2: $0f
    rrca                                          ; $6be3: $0f
    rra                                           ; $6be4: $1f
    rra                                           ; $6be5: $1f
    dec de                                        ; $6be6: $1b
    rra                                           ; $6be7: $1f
    add hl, bc                                    ; $6be8: $09

jr_024_6be9:
    rrca                                          ; $6be9: $0f
    dec c                                         ; $6bea: $0d
    rrca                                          ; $6beb: $0f
    dec d                                         ; $6bec: $15
    rra                                           ; $6bed: $1f
    db $10                                        ; $6bee: $10

jr_024_6bef:
    rra                                           ; $6bef: $1f
    db $10                                        ; $6bf0: $10
    rra                                           ; $6bf1: $1f
    add hl, bc                                    ; $6bf2: $09
    rrca                                          ; $6bf3: $0f
    rla                                           ; $6bf4: $17
    rra                                           ; $6bf5: $1f
    rrca                                          ; $6bf6: $0f
    inc c                                         ; $6bf7: $0c
    dec bc                                        ; $6bf8: $0b
    rrca                                          ; $6bf9: $0f
    ld e, $17                                     ; $6bfa: $1e $17
    rra                                           ; $6bfc: $1f
    rra                                           ; $6bfd: $1f
    ld c, $0e                                     ; $6bfe: $0e $0e
    add b                                         ; $6c00: $80
    add b                                         ; $6c01: $80
    ldh [$e0], a                                  ; $6c02: $e0 $e0
    ldh a, [$f0]                                  ; $6c04: $f0 $f0
    ldh a, [$f0]                                  ; $6c06: $f0 $f0
    ld hl, sp-$08                                 ; $6c08: $f8 $f8
    db $fc                                        ; $6c0a: $fc
    db $fc                                        ; $6c0b: $fc
    ld a, h                                       ; $6c0c: $7c
    db $fc                                        ; $6c0d: $fc
    cp b                                          ; $6c0e: $b8
    ld hl, sp+$70                                 ; $6c0f: $f8 $70
    ldh a, [$e0]                                  ; $6c11: $f0 $e0
    ldh [$c0], a                                  ; $6c13: $e0 $c0
    ld b, b                                       ; $6c15: $40
    and b                                         ; $6c16: $a0
    ldh [$e0], a                                  ; $6c17: $e0 $e0
    and b                                         ; $6c19: $a0
    ld [hl], b                                    ; $6c1a: $70
    ret nc                                        ; $6c1b: $d0

    ldh a, [$90]                                  ; $6c1c: $f0 $90
    ld h, b                                       ; $6c1e: $60
    ld h, b                                       ; $6c1f: $60
    rlca                                          ; $6c20: $07
    rlca                                          ; $6c21: $07
    rrca                                          ; $6c22: $0f
    rrca                                          ; $6c23: $0f
    rra                                           ; $6c24: $1f
    rra                                           ; $6c25: $1f
    rra                                           ; $6c26: $1f
    rra                                           ; $6c27: $1f
    ccf                                           ; $6c28: $3f
    ccf                                           ; $6c29: $3f
    ld a, a                                       ; $6c2a: $7f
    ld a, a                                       ; $6c2b: $7f
    ld a, a                                       ; $6c2c: $7f
    ld a, a                                       ; $6c2d: $7f
    cpl                                           ; $6c2e: $2f
    ccf                                           ; $6c2f: $3f
    rra                                           ; $6c30: $1f
    rra                                           ; $6c31: $1f
    cpl                                           ; $6c32: $2f
    dec sp                                        ; $6c33: $3b
    ccf                                           ; $6c34: $3f
    inc a                                         ; $6c35: $3c
    inc de                                        ; $6c36: $13
    rra                                           ; $6c37: $1f
    db $10                                        ; $6c38: $10
    rra                                           ; $6c39: $1f
    rrca                                          ; $6c3a: $0f
    rrca                                          ; $6c3b: $0f
    rrca                                          ; $6c3c: $0f
    add hl, bc                                    ; $6c3d: $09
    ld b, $06                                     ; $6c3e: $06 $06
    ret nz                                        ; $6c40: $c0

    ret nz                                        ; $6c41: $c0

    ldh [$e0], a                                  ; $6c42: $e0 $e0
    ldh a, [$f0]                                  ; $6c44: $f0 $f0
    ldh a, [$f0]                                  ; $6c46: $f0 $f0
    ld hl, sp-$08                                 ; $6c48: $f8 $f8
    db $fc                                        ; $6c4a: $fc
    db $fc                                        ; $6c4b: $fc
    db $fc                                        ; $6c4c: $fc
    db $fc                                        ; $6c4d: $fc
    add sp, -$08                                  ; $6c4e: $e8 $f8
    ldh a, [$f0]                                  ; $6c50: $f0 $f0
    ldh a, [$b0]                                  ; $6c52: $f0 $b0
    add sp, $78                                   ; $6c54: $e8 $78
    cp b                                          ; $6c56: $b8
    ld hl, sp-$08                                 ; $6c57: $f8 $f8
    add sp, -$30                                  ; $6c59: $e8 $d0
    ret nc                                        ; $6c5b: $d0

    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    ld bc, $0701                                  ; $6c60: $01 $01 $07
    rlca                                          ; $6c63: $07
    rrca                                          ; $6c64: $0f
    rrca                                          ; $6c65: $0f
    rrca                                          ; $6c66: $0f
    rrca                                          ; $6c67: $0f
    rra                                           ; $6c68: $1f

jr_024_6c69:
    rra                                           ; $6c69: $1f
    ccf                                           ; $6c6a: $3f
    ccf                                           ; $6c6b: $3f
    ld a, $3f                                     ; $6c6c: $3e $3f
    dec e                                         ; $6c6e: $1d
    rra                                           ; $6c6f: $1f
    ld c, $0f                                     ; $6c70: $0e $0f
    rlca                                          ; $6c72: $07
    rlca                                          ; $6c73: $07
    inc bc                                        ; $6c74: $03
    ld [bc], a                                    ; $6c75: $02
    dec b                                         ; $6c76: $05
    rlca                                          ; $6c77: $07
    rlca                                          ; $6c78: $07
    dec b                                         ; $6c79: $05
    ld c, $0b                                     ; $6c7a: $0e $0b
    rrca                                          ; $6c7c: $0f
    add hl, bc                                    ; $6c7d: $09
    ld b, $06                                     ; $6c7e: $06 $06
    ldh [$e0], a                                  ; $6c80: $e0 $e0
    ldh a, [$f0]                                  ; $6c82: $f0 $f0
    ld hl, sp-$08                                 ; $6c84: $f8 $f8
    ret c                                         ; $6c86: $d8

    ld hl, sp-$70                                 ; $6c87: $f8 $90
    ldh a, [$b0]                                  ; $6c89: $f0 $b0
    ldh a, [$a8]                                  ; $6c8b: $f0 $a8
    ld hl, sp+$08                                 ; $6c8d: $f8 $08
    ld hl, sp+$08                                 ; $6c8f: $f8 $08
    ld hl, sp-$70                                 ; $6c91: $f8 $90
    ldh a, [$e8]                                  ; $6c93: $f0 $e8
    ld hl, sp-$10                                 ; $6c95: $f8 $f0
    jr nc, jr_024_6c69                            ; $6c97: $30 $d0

    ldh a, [$78]                                  ; $6c99: $f0 $78
    add sp, -$08                                  ; $6c9b: $e8 $f8
    ld hl, sp+$70                                 ; $6c9d: $f8 $70

jr_024_6c9f:
    ld [hl], b                                    ; $6c9f: $70
    rlca                                          ; $6ca0: $07
    rlca                                          ; $6ca1: $07
    rrca                                          ; $6ca2: $0f
    rrca                                          ; $6ca3: $0f
    rra                                           ; $6ca4: $1f
    rra                                           ; $6ca5: $1f
    dec e                                         ; $6ca6: $1d
    rra                                           ; $6ca7: $1f
    jr c, jr_024_6ce9                             ; $6ca8: $38 $3f

    ld a, d                                       ; $6caa: $7a
    ld a, a                                       ; $6cab: $7f
    ld l, d                                       ; $6cac: $6a
    ld a, a                                       ; $6cad: $7f
    jr nz, jr_024_6cef                            ; $6cae: $20 $3f

    jr jr_024_6cd1                                ; $6cb0: $18 $1f

    inc e                                         ; $6cb2: $1c
    rra                                           ; $6cb3: $1f
    cpl                                           ; $6cb4: $2f
    dec sp                                        ; $6cb5: $3b
    ccf                                           ; $6cb6: $3f
    inc a                                         ; $6cb7: $3c
    dec sp                                        ; $6cb8: $3b
    cpl                                           ; $6cb9: $2f
    rla                                           ; $6cba: $17
    rla                                           ; $6cbb: $17
    ld bc, $0001                                  ; $6cbc: $01 $01 $00
    nop                                           ; $6cbf: $00
    ret nz                                        ; $6cc0: $c0

    ret nz                                        ; $6cc1: $c0

    ldh [$e0], a                                  ; $6cc2: $e0 $e0
    ldh a, [$f0]                                  ; $6cc4: $f0 $f0
    ld [hl], b                                    ; $6cc6: $70
    ldh a, [$38]                                  ; $6cc7: $f0 $38
    ld hl, sp-$44                                 ; $6cc9: $f8 $bc
    db $fc                                        ; $6ccb: $fc
    xor h                                         ; $6ccc: $ac
    db $fc                                        ; $6ccd: $fc
    ld [$30f8], sp                                ; $6cce: $08 $f8 $30

jr_024_6cd1:
    ldh a, [rBCPS]                                ; $6cd1: $f0 $68
    ld hl, sp-$08                                 ; $6cd3: $f8 $f8
    cp b                                          ; $6cd5: $b8
    ret nc                                        ; $6cd6: $d0

    ld [hl], b                                    ; $6cd7: $70
    sub b                                         ; $6cd8: $90
    ldh a, [$e0]                                  ; $6cd9: $f0 $e0
    ldh [$e0], a                                  ; $6cdb: $e0 $e0
    jr nz, jr_024_6c9f                            ; $6cdd: $20 $c0

    ret nz                                        ; $6cdf: $c0

    rlca                                          ; $6ce0: $07
    rlca                                          ; $6ce1: $07
    rrca                                          ; $6ce2: $0f
    rrca                                          ; $6ce3: $0f
    rra                                           ; $6ce4: $1f
    rra                                           ; $6ce5: $1f
    dec de                                        ; $6ce6: $1b
    rra                                           ; $6ce7: $1f
    add hl, bc                                    ; $6ce8: $09

jr_024_6ce9:
    rrca                                          ; $6ce9: $0f
    dec c                                         ; $6cea: $0d
    rrca                                          ; $6ceb: $0f
    dec d                                         ; $6cec: $15
    rra                                           ; $6ced: $1f
    db $10                                        ; $6cee: $10

jr_024_6cef:
    rra                                           ; $6cef: $1f
    db $10                                        ; $6cf0: $10
    rra                                           ; $6cf1: $1f
    add hl, bc                                    ; $6cf2: $09
    rrca                                          ; $6cf3: $0f
    rrca                                          ; $6cf4: $0f
    rrca                                          ; $6cf5: $0f
    dec de                                        ; $6cf6: $1b
    ld d, $0f                                     ; $6cf7: $16 $0f
    rrca                                          ; $6cf9: $0f
    inc e                                         ; $6cfa: $1c
    rla                                           ; $6cfb: $17
    rra                                           ; $6cfc: $1f
    dec de                                        ; $6cfd: $1b
    ld c, $0e                                     ; $6cfe: $0e $0e
    add b                                         ; $6d00: $80
    add b                                         ; $6d01: $80
    ldh [$e0], a                                  ; $6d02: $e0 $e0
    ldh a, [$f0]                                  ; $6d04: $f0 $f0
    ldh a, [$f0]                                  ; $6d06: $f0 $f0
    ld hl, sp-$08                                 ; $6d08: $f8 $f8
    db $fc                                        ; $6d0a: $fc
    db $fc                                        ; $6d0b: $fc
    ld a, h                                       ; $6d0c: $7c
    db $fc                                        ; $6d0d: $fc
    cp b                                          ; $6d0e: $b8
    ld hl, sp+$70                                 ; $6d0f: $f8 $70
    ldh a, [$d0]                                  ; $6d11: $f0 $d0
    ldh a, [$e0]                                  ; $6d13: $f0 $e0
    ld h, b                                       ; $6d15: $60
    ret nz                                        ; $6d16: $c0

    ld b, b                                       ; $6d17: $40
    ldh [$e0], a                                  ; $6d18: $e0 $e0
    ldh a, [$d0]                                  ; $6d1a: $f0 $d0
    ldh a, [$f0]                                  ; $6d1c: $f0 $f0
    ld h, b                                       ; $6d1e: $60

jr_024_6d1f:
    ld h, b                                       ; $6d1f: $60
    rlca                                          ; $6d20: $07
    rlca                                          ; $6d21: $07
    rrca                                          ; $6d22: $0f
    rrca                                          ; $6d23: $0f
    rra                                           ; $6d24: $1f
    rra                                           ; $6d25: $1f
    rra                                           ; $6d26: $1f
    rra                                           ; $6d27: $1f
    ccf                                           ; $6d28: $3f
    ccf                                           ; $6d29: $3f
    ld a, a                                       ; $6d2a: $7f
    ld a, a                                       ; $6d2b: $7f
    ld a, a                                       ; $6d2c: $7f
    ld a, a                                       ; $6d2d: $7f
    cpl                                           ; $6d2e: $2f
    ccf                                           ; $6d2f: $3f
    rra                                           ; $6d30: $1f
    rra                                           ; $6d31: $1f
    rra                                           ; $6d32: $1f
    dec de                                        ; $6d33: $1b
    cpl                                           ; $6d34: $2f
    inc a                                         ; $6d35: $3c
    dec sp                                        ; $6d36: $3b
    ccf                                           ; $6d37: $3f
    ld a, $2f                                     ; $6d38: $3e $2f
    rla                                           ; $6d3a: $17
    rla                                           ; $6d3b: $17
    ld bc, $0001                                  ; $6d3c: $01 $01 $00
    nop                                           ; $6d3f: $00
    ret nz                                        ; $6d40: $c0

    ret nz                                        ; $6d41: $c0

    ldh [$e0], a                                  ; $6d42: $e0 $e0
    ldh a, [$f0]                                  ; $6d44: $f0 $f0
    ldh a, [$f0]                                  ; $6d46: $f0 $f0
    ld hl, sp-$08                                 ; $6d48: $f8 $f8
    db $fc                                        ; $6d4a: $fc
    db $fc                                        ; $6d4b: $fc
    db $fc                                        ; $6d4c: $fc
    db $fc                                        ; $6d4d: $fc
    add sp, -$08                                  ; $6d4e: $e8 $f8
    ldh a, [$f0]                                  ; $6d50: $f0 $f0
    add sp, -$48                                  ; $6d52: $e8 $b8
    ld hl, sp+$78                                 ; $6d54: $f8 $78
    sub b                                         ; $6d56: $90
    ldh a, [rNR10]                                ; $6d57: $f0 $10
    ldh a, [$e0]                                  ; $6d59: $f0 $e0
    ldh [$e0], a                                  ; $6d5b: $e0 $e0
    jr nz, jr_024_6d1f                            ; $6d5d: $20 $c0

    ret nz                                        ; $6d5f: $c0

    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    ld bc, $0701                                  ; $6d62: $01 $01 $07
    rlca                                          ; $6d65: $07
    rrca                                          ; $6d66: $0f
    rrca                                          ; $6d67: $0f
    rrca                                          ; $6d68: $0f
    rrca                                          ; $6d69: $0f
    rra                                           ; $6d6a: $1f
    rra                                           ; $6d6b: $1f
    ccf                                           ; $6d6c: $3f
    ccf                                           ; $6d6d: $3f
    ld a, $3f                                     ; $6d6e: $3e $3f
    dec e                                         ; $6d70: $1d
    rra                                           ; $6d71: $1f
    ld c, $0f                                     ; $6d72: $0e $0f
    rlca                                          ; $6d74: $07
    ld b, $03                                     ; $6d75: $06 $03
    ld [bc], a                                    ; $6d77: $02
    rlca                                          ; $6d78: $07
    rlca                                          ; $6d79: $07
    rrca                                          ; $6d7a: $0f
    dec bc                                        ; $6d7b: $0b
    rrca                                          ; $6d7c: $0f
    rrca                                          ; $6d7d: $0f
    ld b, $06                                     ; $6d7e: $06 $06
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    ldh [$e0], a                                  ; $6d82: $e0 $e0

jr_024_6d84:
    ldh a, [$f0]                                  ; $6d84: $f0 $f0
    ld hl, sp-$08                                 ; $6d86: $f8 $f8
    ret c                                         ; $6d88: $d8

    ld hl, sp-$70                                 ; $6d89: $f8 $90
    ldh a, [$b0]                                  ; $6d8b: $f0 $b0
    ldh a, [$a8]                                  ; $6d8d: $f0 $a8
    ld hl, sp+$08                                 ; $6d8f: $f8 $08
    ld hl, sp+$08                                 ; $6d91: $f8 $08
    ld hl, sp-$10                                 ; $6d93: $f8 $f0
    ldh a, [$d8]                                  ; $6d95: $f0 $d8
    ld l, b                                       ; $6d97: $68
    ldh a, [$f0]                                  ; $6d98: $f0 $f0
    jr c, jr_024_6d84                             ; $6d9a: $38 $e8

    ld hl, sp-$28                                 ; $6d9c: $f8 $d8
    ld [hl], b                                    ; $6d9e: $70
    ld [hl], b                                    ; $6d9f: $70
    nop                                           ; $6da0: $00
    nop                                           ; $6da1: $00
    rlca                                          ; $6da2: $07
    rlca                                          ; $6da3: $07
    rrca                                          ; $6da4: $0f
    rrca                                          ; $6da5: $0f
    rra                                           ; $6da6: $1f
    rra                                           ; $6da7: $1f
    dec e                                         ; $6da8: $1d
    rra                                           ; $6da9: $1f
    jr c, jr_024_6deb                             ; $6daa: $38 $3f

    ld a, d                                       ; $6dac: $7a
    ld a, a                                       ; $6dad: $7f
    ld l, d                                       ; $6dae: $6a
    ld a, a                                       ; $6daf: $7f
    jr nz, jr_024_6df1                            ; $6db0: $20 $3f

    jr jr_024_6dd3                                ; $6db2: $18 $1f

    ccf                                           ; $6db4: $3f
    dec sp                                        ; $6db5: $3b
    rla                                           ; $6db6: $17
    inc e                                         ; $6db7: $1c
    inc de                                        ; $6db8: $13
    rra                                           ; $6db9: $1f
    rrca                                          ; $6dba: $0f
    rrca                                          ; $6dbb: $0f
    rrca                                          ; $6dbc: $0f
    add hl, bc                                    ; $6dbd: $09
    ld b, $06                                     ; $6dbe: $06 $06
    nop                                           ; $6dc0: $00
    nop                                           ; $6dc1: $00
    ret nz                                        ; $6dc2: $c0

    ret nz                                        ; $6dc3: $c0

    ldh [$e0], a                                  ; $6dc4: $e0 $e0
    ldh a, [$f0]                                  ; $6dc6: $f0 $f0
    ld [hl], b                                    ; $6dc8: $70
    ldh a, [$38]                                  ; $6dc9: $f0 $38
    ld hl, sp-$44                                 ; $6dcb: $f8 $bc
    db $fc                                        ; $6dcd: $fc
    xor h                                         ; $6dce: $ac
    db $fc                                        ; $6dcf: $fc
    ld [$30f8], sp                                ; $6dd0: $08 $f8 $30

jr_024_6dd3:
    ldh a, [$e8]                                  ; $6dd3: $f0 $e8
    cp b                                          ; $6dd5: $b8
    ld hl, sp+$78                                 ; $6dd6: $f8 $78
    cp b                                          ; $6dd8: $b8
    add sp, -$30                                  ; $6dd9: $e8 $d0
    ret nc                                        ; $6ddb: $d0

    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    rlca                                          ; $6de2: $07
    rlca                                          ; $6de3: $07
    rrca                                          ; $6de4: $0f
    rrca                                          ; $6de5: $0f
    rra                                           ; $6de6: $1f
    rra                                           ; $6de7: $1f
    dec de                                        ; $6de8: $1b
    rra                                           ; $6de9: $1f
    add hl, bc                                    ; $6dea: $09

jr_024_6deb:
    rrca                                          ; $6deb: $0f
    dec c                                         ; $6dec: $0d
    rrca                                          ; $6ded: $0f
    dec d                                         ; $6dee: $15
    rra                                           ; $6def: $1f
    db $10                                        ; $6df0: $10

jr_024_6df1:
    rra                                           ; $6df1: $1f
    db $10                                        ; $6df2: $10
    rra                                           ; $6df3: $1f
    rla                                           ; $6df4: $17
    rra                                           ; $6df5: $1f
    rrca                                          ; $6df6: $0f
    inc c                                         ; $6df7: $0c
    dec bc                                        ; $6df8: $0b
    rrca                                          ; $6df9: $0f
    ld e, $17                                     ; $6dfa: $1e $17
    rra                                           ; $6dfc: $1f
    rra                                           ; $6dfd: $1f
    ld c, $0e                                     ; $6dfe: $0e $0e
    nop                                           ; $6e00: $00
    nop                                           ; $6e01: $00
    add b                                         ; $6e02: $80
    add b                                         ; $6e03: $80
    ldh [$e0], a                                  ; $6e04: $e0 $e0
    ldh a, [$f0]                                  ; $6e06: $f0 $f0
    ldh a, [$f0]                                  ; $6e08: $f0 $f0
    ld hl, sp-$08                                 ; $6e0a: $f8 $f8
    db $fc                                        ; $6e0c: $fc
    db $fc                                        ; $6e0d: $fc
    ld a, h                                       ; $6e0e: $7c
    db $fc                                        ; $6e0f: $fc
    cp b                                          ; $6e10: $b8
    ld hl, sp+$70                                 ; $6e11: $f8 $70
    ldh a, [$c0]                                  ; $6e13: $f0 $c0
    ld b, b                                       ; $6e15: $40
    and b                                         ; $6e16: $a0
    ldh [$e0], a                                  ; $6e17: $e0 $e0
    and b                                         ; $6e19: $a0
    ld [hl], b                                    ; $6e1a: $70
    ret nc                                        ; $6e1b: $d0

    ldh a, [$90]                                  ; $6e1c: $f0 $90
    ld h, b                                       ; $6e1e: $60
    ld h, b                                       ; $6e1f: $60
    nop                                           ; $6e20: $00
    nop                                           ; $6e21: $00
    rlca                                          ; $6e22: $07
    rlca                                          ; $6e23: $07
    rrca                                          ; $6e24: $0f
    rrca                                          ; $6e25: $0f
    rra                                           ; $6e26: $1f
    rra                                           ; $6e27: $1f
    rra                                           ; $6e28: $1f
    rra                                           ; $6e29: $1f
    ccf                                           ; $6e2a: $3f
    ccf                                           ; $6e2b: $3f
    ld a, a                                       ; $6e2c: $7f
    ld a, a                                       ; $6e2d: $7f
    ld a, a                                       ; $6e2e: $7f
    ld a, a                                       ; $6e2f: $7f
    cpl                                           ; $6e30: $2f
    ccf                                           ; $6e31: $3f
    rra                                           ; $6e32: $1f
    rra                                           ; $6e33: $1f
    ccf                                           ; $6e34: $3f
    inc a                                         ; $6e35: $3c
    inc de                                        ; $6e36: $13
    rra                                           ; $6e37: $1f
    db $10                                        ; $6e38: $10
    rra                                           ; $6e39: $1f
    rrca                                          ; $6e3a: $0f
    rrca                                          ; $6e3b: $0f
    rrca                                          ; $6e3c: $0f
    add hl, bc                                    ; $6e3d: $09
    ld b, $06                                     ; $6e3e: $06 $06
    nop                                           ; $6e40: $00
    nop                                           ; $6e41: $00
    ret nz                                        ; $6e42: $c0

    ret nz                                        ; $6e43: $c0

    ldh [$e0], a                                  ; $6e44: $e0 $e0
    ldh a, [$f0]                                  ; $6e46: $f0 $f0
    ldh a, [$f0]                                  ; $6e48: $f0 $f0
    ld hl, sp-$08                                 ; $6e4a: $f8 $f8
    db $fc                                        ; $6e4c: $fc
    db $fc                                        ; $6e4d: $fc
    db $fc                                        ; $6e4e: $fc
    db $fc                                        ; $6e4f: $fc
    add sp, -$08                                  ; $6e50: $e8 $f8
    ldh a, [$f0]                                  ; $6e52: $f0 $f0
    add sp, $78                                   ; $6e54: $e8 $78
    cp b                                          ; $6e56: $b8
    ld hl, sp-$08                                 ; $6e57: $f8 $f8
    add sp, -$30                                  ; $6e59: $e8 $d0
    ret nc                                        ; $6e5b: $d0

    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    nop                                           ; $6e60: $00
    nop                                           ; $6e61: $00
    inc bc                                        ; $6e62: $03
    inc bc                                        ; $6e63: $03
    rlca                                          ; $6e64: $07
    rlca                                          ; $6e65: $07
    rlca                                          ; $6e66: $07
    rlca                                          ; $6e67: $07
    rrca                                          ; $6e68: $0f
    rrca                                          ; $6e69: $0f
    rra                                           ; $6e6a: $1f
    rra                                           ; $6e6b: $1f
    rra                                           ; $6e6c: $1f
    rra                                           ; $6e6d: $1f
    ld c, $0f                                     ; $6e6e: $0e $0f
    rlca                                          ; $6e70: $07
    rlca                                          ; $6e71: $07
    dec bc                                        ; $6e72: $0b
    rrca                                          ; $6e73: $0f
    rlca                                          ; $6e74: $07
    ld b, $03                                     ; $6e75: $06 $03
    ld [bc], a                                    ; $6e77: $02
    rlca                                          ; $6e78: $07
    rlca                                          ; $6e79: $07
    rrca                                          ; $6e7a: $0f
    dec bc                                        ; $6e7b: $0b
    rrca                                          ; $6e7c: $0f
    rrca                                          ; $6e7d: $0f
    ld b, $06                                     ; $6e7e: $06 $06
    ldh a, [$f0]                                  ; $6e80: $f0 $f0
    ld hl, sp-$08                                 ; $6e82: $f8 $f8

jr_024_6e84:
    db $fc                                        ; $6e84: $fc
    db $fc                                        ; $6e85: $fc
    db $ec                                        ; $6e86: $ec
    db $fc                                        ; $6e87: $fc
    ret z                                         ; $6e88: $c8

    ld hl, sp-$28                                 ; $6e89: $f8 $d8
    ld hl, sp+$54                                 ; $6e8b: $f8 $54
    db $fc                                        ; $6e8d: $fc
    add h                                         ; $6e8e: $84
    db $fc                                        ; $6e8f: $fc
    inc b                                         ; $6e90: $04
    db $fc                                        ; $6e91: $fc
    sub b                                         ; $6e92: $90
    ldh a, [$f0]                                  ; $6e93: $f0 $f0
    ldh a, [$d8]                                  ; $6e95: $f0 $d8
    ld l, b                                       ; $6e97: $68
    ldh a, [$f0]                                  ; $6e98: $f0 $f0
    jr c, jr_024_6e84                             ; $6e9a: $38 $e8

    ld hl, sp-$28                                 ; $6e9c: $f8 $d8
    ld [hl], b                                    ; $6e9e: $70
    ld [hl], b                                    ; $6e9f: $70
    inc bc                                        ; $6ea0: $03
    inc bc                                        ; $6ea1: $03
    rlca                                          ; $6ea2: $07
    rlca                                          ; $6ea3: $07
    rrca                                          ; $6ea4: $0f
    rrca                                          ; $6ea5: $0f
    ld c, $0f                                     ; $6ea6: $0e $0f
    inc e                                         ; $6ea8: $1c
    rra                                           ; $6ea9: $1f
    dec a                                         ; $6eaa: $3d
    ccf                                           ; $6eab: $3f
    dec [hl]                                      ; $6eac: $35
    ccf                                           ; $6ead: $3f
    db $10                                        ; $6eae: $10
    rra                                           ; $6eaf: $1f
    inc c                                         ; $6eb0: $0c
    rrca                                          ; $6eb1: $0f
    inc l                                         ; $6eb2: $2c
    ccf                                           ; $6eb3: $3f
    ccf                                           ; $6eb4: $3f
    dec sp                                        ; $6eb5: $3b
    rla                                           ; $6eb6: $17
    inc e                                         ; $6eb7: $1c
    inc de                                        ; $6eb8: $13
    rra                                           ; $6eb9: $1f
    rrca                                          ; $6eba: $0f
    rrca                                          ; $6ebb: $0f
    rrca                                          ; $6ebc: $0f
    add hl, bc                                    ; $6ebd: $09
    ld b, $06                                     ; $6ebe: $06 $06
    ldh [$e0], a                                  ; $6ec0: $e0 $e0
    ldh a, [$f0]                                  ; $6ec2: $f0 $f0
    ld hl, sp-$08                                 ; $6ec4: $f8 $f8
    cp b                                          ; $6ec6: $b8
    ld hl, sp+$1c                                 ; $6ec7: $f8 $1c
    db $fc                                        ; $6ec9: $fc

jr_024_6eca:
    ld e, [hl]                                    ; $6eca: $5e
    cp $56                                        ; $6ecb: $fe $56
    cp $04                                        ; $6ecd: $fe $04
    db $fc                                        ; $6ecf: $fc
    jr jr_024_6eca                                ; $6ed0: $18 $f8

    ld [hl], b                                    ; $6ed2: $70
    ldh a, [$e8]                                  ; $6ed3: $f0 $e8
    cp b                                          ; $6ed5: $b8
    ld hl, sp+$78                                 ; $6ed6: $f8 $78
    cp b                                          ; $6ed8: $b8
    add sp, -$30                                  ; $6ed9: $e8 $d0
    ret nc                                        ; $6edb: $d0

    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    nop                                           ; $6edf: $00
    inc bc                                        ; $6ee0: $03
    inc bc                                        ; $6ee1: $03
    rlca                                          ; $6ee2: $07
    rlca                                          ; $6ee3: $07
    rrca                                          ; $6ee4: $0f
    rrca                                          ; $6ee5: $0f
    dec c                                         ; $6ee6: $0d
    rrca                                          ; $6ee7: $0f
    inc b                                         ; $6ee8: $04
    rlca                                          ; $6ee9: $07
    ld b, $07                                     ; $6eea: $06 $07
    ld a, [bc]                                    ; $6eec: $0a
    rrca                                          ; $6eed: $0f
    ld [$080f], sp                                ; $6eee: $08 $0f $08
    rrca                                          ; $6ef1: $0f
    add hl, bc                                    ; $6ef2: $09
    rrca                                          ; $6ef3: $0f
    rla                                           ; $6ef4: $17
    rra                                           ; $6ef5: $1f
    rrca                                          ; $6ef6: $0f
    inc c                                         ; $6ef7: $0c
    dec bc                                        ; $6ef8: $0b
    rrca                                          ; $6ef9: $0f
    ld e, $17                                     ; $6efa: $1e $17
    rra                                           ; $6efc: $1f
    rra                                           ; $6efd: $1f
    ld c, $0e                                     ; $6efe: $0e $0e
    ret nz                                        ; $6f00: $c0

    ret nz                                        ; $6f01: $c0

    ldh a, [$f0]                                  ; $6f02: $f0 $f0
    ld hl, sp-$08                                 ; $6f04: $f8 $f8
    ld hl, sp-$08                                 ; $6f06: $f8 $f8
    db $fc                                        ; $6f08: $fc
    db $fc                                        ; $6f09: $fc

jr_024_6f0a:
    cp $fe                                        ; $6f0a: $fe $fe
    cp [hl]                                       ; $6f0c: $be
    cp $5c                                        ; $6f0d: $fe $5c
    db $fc                                        ; $6f0f: $fc
    jr c, jr_024_6f0a                             ; $6f10: $38 $f8

    ldh [$e0], a                                  ; $6f12: $e0 $e0
    ret nz                                        ; $6f14: $c0

    ld b, b                                       ; $6f15: $40
    and b                                         ; $6f16: $a0
    ldh [$e0], a                                  ; $6f17: $e0 $e0
    and b                                         ; $6f19: $a0
    ld [hl], b                                    ; $6f1a: $70
    ret nc                                        ; $6f1b: $d0

    ldh a, [$90]                                  ; $6f1c: $f0 $90
    ld h, b                                       ; $6f1e: $60
    ld h, b                                       ; $6f1f: $60
    inc bc                                        ; $6f20: $03
    inc bc                                        ; $6f21: $03
    rlca                                          ; $6f22: $07
    rlca                                          ; $6f23: $07
    rrca                                          ; $6f24: $0f
    rrca                                          ; $6f25: $0f
    rrca                                          ; $6f26: $0f
    rrca                                          ; $6f27: $0f
    rra                                           ; $6f28: $1f
    rra                                           ; $6f29: $1f
    ccf                                           ; $6f2a: $3f
    ccf                                           ; $6f2b: $3f
    ccf                                           ; $6f2c: $3f
    ccf                                           ; $6f2d: $3f
    rla                                           ; $6f2e: $17
    rra                                           ; $6f2f: $1f
    rrca                                          ; $6f30: $0f
    rrca                                          ; $6f31: $0f
    cpl                                           ; $6f32: $2f
    dec sp                                        ; $6f33: $3b
    ccf                                           ; $6f34: $3f
    inc a                                         ; $6f35: $3c
    inc de                                        ; $6f36: $13
    rra                                           ; $6f37: $1f
    db $10                                        ; $6f38: $10
    rra                                           ; $6f39: $1f
    rrca                                          ; $6f3a: $0f
    rrca                                          ; $6f3b: $0f
    rrca                                          ; $6f3c: $0f
    add hl, bc                                    ; $6f3d: $09
    ld b, $06                                     ; $6f3e: $06 $06
    ldh [$e0], a                                  ; $6f40: $e0 $e0
    ldh a, [$f0]                                  ; $6f42: $f0 $f0
    ld hl, sp-$08                                 ; $6f44: $f8 $f8
    ld hl, sp-$08                                 ; $6f46: $f8 $f8
    db $fc                                        ; $6f48: $fc
    db $fc                                        ; $6f49: $fc
    cp $fe                                        ; $6f4a: $fe $fe
    cp $fe                                        ; $6f4c: $fe $fe
    db $f4                                        ; $6f4e: $f4
    db $fc                                        ; $6f4f: $fc
    ld hl, sp-$08                                 ; $6f50: $f8 $f8
    ldh a, [$b0]                                  ; $6f52: $f0 $b0
    add sp, $78                                   ; $6f54: $e8 $78
    cp b                                          ; $6f56: $b8
    ld hl, sp-$08                                 ; $6f57: $f8 $f8
    add sp, -$30                                  ; $6f59: $e8 $d0
    ret nc                                        ; $6f5b: $d0

    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    inc bc                                        ; $6f60: $03
    inc bc                                        ; $6f61: $03
    rrca                                          ; $6f62: $0f
    rrca                                          ; $6f63: $0f
    rra                                           ; $6f64: $1f
    rra                                           ; $6f65: $1f
    rra                                           ; $6f66: $1f
    rra                                           ; $6f67: $1f
    ccf                                           ; $6f68: $3f
    ccf                                           ; $6f69: $3f
    ld a, a                                       ; $6f6a: $7f
    ld a, a                                       ; $6f6b: $7f
    ld a, l                                       ; $6f6c: $7d
    ld a, a                                       ; $6f6d: $7f
    ld a, [hl-]                                   ; $6f6e: $3a
    ccf                                           ; $6f6f: $3f
    inc e                                         ; $6f70: $1c
    rra                                           ; $6f71: $1f
    dec bc                                        ; $6f72: $0b
    rrca                                          ; $6f73: $0f
    rlca                                          ; $6f74: $07
    ld b, $03                                     ; $6f75: $06 $03
    ld [bc], a                                    ; $6f77: $02
    rlca                                          ; $6f78: $07
    rlca                                          ; $6f79: $07
    rrca                                          ; $6f7a: $0f
    dec bc                                        ; $6f7b: $0b
    rrca                                          ; $6f7c: $0f
    rrca                                          ; $6f7d: $0f
    ld b, $06                                     ; $6f7e: $06 $06
    ret nz                                        ; $6f80: $c0

    ret nz                                        ; $6f81: $c0

    ldh [$e0], a                                  ; $6f82: $e0 $e0

jr_024_6f84:
    ldh a, [$f0]                                  ; $6f84: $f0 $f0
    or b                                          ; $6f86: $b0
    ldh a, [rNR41]                                ; $6f87: $f0 $20
    ldh [$60], a                                  ; $6f89: $e0 $60
    ldh [$50], a                                  ; $6f8b: $e0 $50
    ldh a, [rNR10]                                ; $6f8d: $f0 $10
    ldh a, [rNR10]                                ; $6f8f: $f0 $10
    ldh a, [$90]                                  ; $6f91: $f0 $90
    ldh a, [$f0]                                  ; $6f93: $f0 $f0
    ldh a, [$d8]                                  ; $6f95: $f0 $d8
    ld l, b                                       ; $6f97: $68
    ldh a, [$f0]                                  ; $6f98: $f0 $f0
    jr c, jr_024_6f84                             ; $6f9a: $38 $e8

    ld hl, sp-$28                                 ; $6f9c: $f8 $d8
    ld [hl], b                                    ; $6f9e: $70
    ld [hl], b                                    ; $6f9f: $70
    rrca                                          ; $6fa0: $0f
    rrca                                          ; $6fa1: $0f
    rra                                           ; $6fa2: $1f
    rra                                           ; $6fa3: $1f
    ccf                                           ; $6fa4: $3f
    ccf                                           ; $6fa5: $3f
    ld a, [hl-]                                   ; $6fa6: $3a
    ccf                                           ; $6fa7: $3f
    ld [hl], b                                    ; $6fa8: $70
    ld a, a                                       ; $6fa9: $7f
    push af                                       ; $6faa: $f5
    rst $38                                       ; $6fab: $ff
    push de                                       ; $6fac: $d5
    rst $38                                       ; $6fad: $ff
    ld b, b                                       ; $6fae: $40
    ld a, a                                       ; $6faf: $7f
    jr nc, jr_024_6ff1                            ; $6fb0: $30 $3f

    inc l                                         ; $6fb2: $2c
    ccf                                           ; $6fb3: $3f
    ccf                                           ; $6fb4: $3f
    dec sp                                        ; $6fb5: $3b
    rla                                           ; $6fb6: $17
    inc e                                         ; $6fb7: $1c
    inc de                                        ; $6fb8: $13
    rra                                           ; $6fb9: $1f
    rrca                                          ; $6fba: $0f
    rrca                                          ; $6fbb: $0f
    rrca                                          ; $6fbc: $0f
    add hl, bc                                    ; $6fbd: $09
    ld b, $06                                     ; $6fbe: $06 $06
    add b                                         ; $6fc0: $80
    add b                                         ; $6fc1: $80
    ret nz                                        ; $6fc2: $c0

    ret nz                                        ; $6fc3: $c0

    ldh [$e0], a                                  ; $6fc4: $e0 $e0
    ldh [$e0], a                                  ; $6fc6: $e0 $e0
    ld [hl], b                                    ; $6fc8: $70
    ldh a, [$78]                                  ; $6fc9: $f0 $78
    ld hl, sp+$58                                 ; $6fcb: $f8 $58
    ld hl, sp+$10                                 ; $6fcd: $f8 $10
    ldh a, [$60]                                  ; $6fcf: $f0 $60
    ldh [rSVBK], a                                ; $6fd1: $e0 $70
    ldh a, [$e8]                                  ; $6fd3: $f0 $e8
    cp b                                          ; $6fd5: $b8
    ld hl, sp+$78                                 ; $6fd6: $f8 $78
    cp b                                          ; $6fd8: $b8
    add sp, -$30                                  ; $6fd9: $e8 $d0
    ret nc                                        ; $6fdb: $d0

    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    nop                                           ; $6fde: $00
    nop                                           ; $6fdf: $00
    rrca                                          ; $6fe0: $0f
    rrca                                          ; $6fe1: $0f
    rra                                           ; $6fe2: $1f
    rra                                           ; $6fe3: $1f
    ccf                                           ; $6fe4: $3f
    ccf                                           ; $6fe5: $3f
    scf                                           ; $6fe6: $37
    ccf                                           ; $6fe7: $3f
    inc de                                        ; $6fe8: $13
    rra                                           ; $6fe9: $1f
    dec de                                        ; $6fea: $1b
    rra                                           ; $6feb: $1f
    ld a, [hl+]                                   ; $6fec: $2a
    ccf                                           ; $6fed: $3f
    ld hl, $203f                                  ; $6fee: $21 $3f $20

jr_024_6ff1:
    ccf                                           ; $6ff1: $3f
    add hl, bc                                    ; $6ff2: $09
    rrca                                          ; $6ff3: $0f
    rla                                           ; $6ff4: $17
    rra                                           ; $6ff5: $1f
    rrca                                          ; $6ff6: $0f
    inc c                                         ; $6ff7: $0c
    dec bc                                        ; $6ff8: $0b
    rrca                                          ; $6ff9: $0f
    ld e, $17                                     ; $6ffa: $1e $17
    rra                                           ; $6ffc: $1f
    rra                                           ; $6ffd: $1f
    ld c, $0e                                     ; $6ffe: $0e $0e
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    ret nz                                        ; $7002: $c0

    ret nz                                        ; $7003: $c0

    ldh [$e0], a                                  ; $7004: $e0 $e0
    ldh [$e0], a                                  ; $7006: $e0 $e0
    ldh a, [$f0]                                  ; $7008: $f0 $f0
    ld hl, sp-$08                                 ; $700a: $f8 $f8
    ld hl, sp-$08                                 ; $700c: $f8 $f8
    ld [hl], b                                    ; $700e: $70
    ldh a, [$e0]                                  ; $700f: $f0 $e0
    ldh [$e0], a                                  ; $7011: $e0 $e0
    ldh [$c0], a                                  ; $7013: $e0 $c0
    ld b, b                                       ; $7015: $40
    and b                                         ; $7016: $a0
    ldh [$e0], a                                  ; $7017: $e0 $e0
    and b                                         ; $7019: $a0
    ld [hl], b                                    ; $701a: $70
    ret nc                                        ; $701b: $d0

    ldh a, [$90]                                  ; $701c: $f0 $90
    ld h, b                                       ; $701e: $60
    ld h, b                                       ; $701f: $60
    rrca                                          ; $7020: $0f
    rrca                                          ; $7021: $0f
    rra                                           ; $7022: $1f
    rra                                           ; $7023: $1f
    ccf                                           ; $7024: $3f
    ccf                                           ; $7025: $3f
    ccf                                           ; $7026: $3f
    ccf                                           ; $7027: $3f
    ld a, a                                       ; $7028: $7f
    ld a, a                                       ; $7029: $7f
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    ld e, a                                       ; $702e: $5f
    ld a, a                                       ; $702f: $7f
    ccf                                           ; $7030: $3f
    ccf                                           ; $7031: $3f
    cpl                                           ; $7032: $2f
    dec sp                                        ; $7033: $3b
    ccf                                           ; $7034: $3f
    inc a                                         ; $7035: $3c
    inc de                                        ; $7036: $13
    rra                                           ; $7037: $1f
    db $10                                        ; $7038: $10
    rra                                           ; $7039: $1f
    rrca                                          ; $703a: $0f
    rrca                                          ; $703b: $0f
    rrca                                          ; $703c: $0f
    add hl, bc                                    ; $703d: $09
    ld b, $06                                     ; $703e: $06 $06
    add b                                         ; $7040: $80
    add b                                         ; $7041: $80
    ret nz                                        ; $7042: $c0

    ret nz                                        ; $7043: $c0

    ldh [$e0], a                                  ; $7044: $e0 $e0
    ldh [$e0], a                                  ; $7046: $e0 $e0
    ldh a, [$f0]                                  ; $7048: $f0 $f0
    ld hl, sp-$08                                 ; $704a: $f8 $f8
    ld hl, sp-$08                                 ; $704c: $f8 $f8
    ret nc                                        ; $704e: $d0

    ldh a, [$e0]                                  ; $704f: $f0 $e0
    ldh [$f0], a                                  ; $7051: $e0 $f0
    or b                                          ; $7053: $b0
    add sp, $78                                   ; $7054: $e8 $78
    cp b                                          ; $7056: $b8
    ld hl, sp-$08                                 ; $7057: $f8 $f8
    add sp, -$30                                  ; $7059: $e8 $d0
    ret nc                                        ; $705b: $d0

    nop                                           ; $705c: $00
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    ld bc, $0301                                  ; $7062: $01 $01 $03
    inc bc                                        ; $7065: $03
    rlca                                          ; $7066: $07
    rlca                                          ; $7067: $07
    rlca                                          ; $7068: $07
    rlca                                          ; $7069: $07

jr_024_706a:
    rrca                                          ; $706a: $0f
    rrca                                          ; $706b: $0f
    ld e, $1f                                     ; $706c: $1e $1f
    dec c                                         ; $706e: $0d
    rrca                                          ; $706f: $0f
    ld b, $07                                     ; $7070: $06 $07
    rlca                                          ; $7072: $07
    rlca                                          ; $7073: $07
    inc bc                                        ; $7074: $03
    ld [bc], a                                    ; $7075: $02
    inc bc                                        ; $7076: $03
    inc bc                                        ; $7077: $03
    rlca                                          ; $7078: $07
    rlca                                          ; $7079: $07
    rlca                                          ; $707a: $07
    rlca                                          ; $707b: $07
    ld [bc], a                                    ; $707c: $02
    ld [bc], a                                    ; $707d: $02
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    ret nz                                        ; $7082: $c0

    ret nz                                        ; $7083: $c0

    ldh [$e0], a                                  ; $7084: $e0 $e0
    ldh a, [$f0]                                  ; $7086: $f0 $f0
    ldh a, [$f0]                                  ; $7088: $f0 $f0
    and b                                         ; $708a: $a0
    ldh [$90], a                                  ; $708b: $e0 $90
    ldh a, [rNR10]                                ; $708d: $f0 $10
    ldh a, [rNR10]                                ; $708f: $f0 $10
    ldh a, [$a0]                                  ; $7091: $f0 $a0
    ldh [$f0], a                                  ; $7093: $e0 $f0
    ld d, b                                       ; $7095: $50
    ldh [$e0], a                                  ; $7096: $e0 $e0
    jr nc, jr_024_706a                            ; $7098: $30 $d0

    ldh a, [$f0]                                  ; $709a: $f0 $f0
    ld h, b                                       ; $709c: $60
    ld h, b                                       ; $709d: $60
    nop                                           ; $709e: $00
    nop                                           ; $709f: $00
    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    inc bc                                        ; $70a2: $03
    inc bc                                        ; $70a3: $03
    rlca                                          ; $70a4: $07
    rlca                                          ; $70a5: $07
    rrca                                          ; $70a6: $0f
    rrca                                          ; $70a7: $0f
    dec c                                         ; $70a8: $0d
    rrca                                          ; $70a9: $0f
    inc e                                         ; $70aa: $1c
    rra                                           ; $70ab: $1f
    ld [hl], $3f                                  ; $70ac: $36 $3f
    db $10                                        ; $70ae: $10
    rra                                           ; $70af: $1f
    inc c                                         ; $70b0: $0c
    rrca                                          ; $70b1: $0f
    inc d                                         ; $70b2: $14
    rra                                           ; $70b3: $1f
    dec bc                                        ; $70b4: $0b
    inc c                                         ; $70b5: $0c
    dec bc                                        ; $70b6: $0b
    rrca                                          ; $70b7: $0f
    rlca                                          ; $70b8: $07
    rlca                                          ; $70b9: $07
    rlca                                          ; $70ba: $07
    dec b                                         ; $70bb: $05
    ld [bc], a                                    ; $70bc: $02
    ld [bc], a                                    ; $70bd: $02
    nop                                           ; $70be: $00
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    ret nz                                        ; $70c2: $c0

    ret nz                                        ; $70c3: $c0

    ret nz                                        ; $70c4: $c0

    ret nz                                        ; $70c5: $c0

    ldh [$e0], a                                  ; $70c6: $e0 $e0
    ld h, b                                       ; $70c8: $60
    ldh [$30], a                                  ; $70c9: $e0 $30
    ldh a, [$98]                                  ; $70cb: $f0 $98
    ld hl, sp+$10                                 ; $70cd: $f8 $10
    ldh a, [rNR41]                                ; $70cf: $f0 $20
    ldh [$60], a                                  ; $70d1: $e0 $60
    ldh [$f0], a                                  ; $70d3: $e0 $f0
    ld [hl], b                                    ; $70d5: $70
    or b                                          ; $70d6: $b0
    ret nc                                        ; $70d7: $d0

    ldh [$e0], a                                  ; $70d8: $e0 $e0
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    inc bc                                        ; $70e2: $03
    inc bc                                        ; $70e3: $03
    rlca                                          ; $70e4: $07
    rlca                                          ; $70e5: $07
    rrca                                          ; $70e6: $0f
    rrca                                          ; $70e7: $0f
    rrca                                          ; $70e8: $0f
    rrca                                          ; $70e9: $0f
    dec b                                         ; $70ea: $05
    rlca                                          ; $70eb: $07
    add hl, bc                                    ; $70ec: $09
    rrca                                          ; $70ed: $0f
    ld [$080f], sp                                ; $70ee: $08 $0f $08
    rrca                                          ; $70f1: $0f
    dec b                                         ; $70f2: $05
    rlca                                          ; $70f3: $07
    rlca                                          ; $70f4: $07
    inc b                                         ; $70f5: $04
    rlca                                          ; $70f6: $07
    rlca                                          ; $70f7: $07
    ld c, $0b                                     ; $70f8: $0e $0b
    rrca                                          ; $70fa: $0f
    rrca                                          ; $70fb: $0f
    ld b, $06                                     ; $70fc: $06 $06
    nop                                           ; $70fe: $00
    nop                                           ; $70ff: $00
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    add b                                         ; $7102: $80
    add b                                         ; $7103: $80
    ret nz                                        ; $7104: $c0

    ret nz                                        ; $7105: $c0

    ldh [$e0], a                                  ; $7106: $e0 $e0
    ldh [$e0], a                                  ; $7108: $e0 $e0
    ldh a, [$f0]                                  ; $710a: $f0 $f0
    ld a, b                                       ; $710c: $78
    ld hl, sp-$50                                 ; $710d: $f8 $b0
    ldh a, [$60]                                  ; $710f: $f0 $60
    ldh [$c0], a                                  ; $7111: $e0 $c0
    ret nz                                        ; $7113: $c0

    add b                                         ; $7114: $80
    ret nz                                        ; $7115: $c0

    ret nz                                        ; $7116: $c0

    add b                                         ; $7117: $80
    ld h, b                                       ; $7118: $60
    ldh [$e0], a                                  ; $7119: $e0 $e0
    and b                                         ; $711b: $a0
    ld b, b                                       ; $711c: $40
    ld b, b                                       ; $711d: $40
    nop                                           ; $711e: $00
    nop                                           ; $711f: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    inc bc                                        ; $7122: $03
    inc bc                                        ; $7123: $03
    rlca                                          ; $7124: $07
    rlca                                          ; $7125: $07
    rrca                                          ; $7126: $0f
    rrca                                          ; $7127: $0f
    rrca                                          ; $7128: $0f
    rrca                                          ; $7129: $0f
    rra                                           ; $712a: $1f
    rra                                           ; $712b: $1f
    ccf                                           ; $712c: $3f
    ccf                                           ; $712d: $3f
    rla                                           ; $712e: $17
    rra                                           ; $712f: $1f
    rrca                                          ; $7130: $0f
    rrca                                          ; $7131: $0f
    rla                                           ; $7132: $17
    rra                                           ; $7133: $1f
    dec bc                                        ; $7134: $0b
    rrca                                          ; $7135: $0f
    ld [$070f], sp                                ; $7136: $08 $0f $07
    rlca                                          ; $7139: $07
    rlca                                          ; $713a: $07
    dec b                                         ; $713b: $05
    ld [bc], a                                    ; $713c: $02
    ld [bc], a                                    ; $713d: $02
    nop                                           ; $713e: $00
    nop                                           ; $713f: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    ret nz                                        ; $7142: $c0

    ret nz                                        ; $7143: $c0

    ret nz                                        ; $7144: $c0

    ret nz                                        ; $7145: $c0

    ldh [$e0], a                                  ; $7146: $e0 $e0
    ldh [$e0], a                                  ; $7148: $e0 $e0
    ldh a, [$f0]                                  ; $714a: $f0 $f0
    ld hl, sp-$08                                 ; $714c: $f8 $f8
    ret nc                                        ; $714e: $d0

    ldh a, [$e0]                                  ; $714f: $f0 $e0
    ldh [$e0], a                                  ; $7151: $e0 $e0
    and b                                         ; $7153: $a0
    or b                                          ; $7154: $b0
    ldh a, [$f0]                                  ; $7155: $f0 $f0
    ret nc                                        ; $7157: $d0

    ldh [$e0], a                                  ; $7158: $e0 $e0
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00

    db $72, $71, $75, $71

    ld a, e                                       ; $7164: $7b
    ld [hl], c                                    ; $7165: $71
    ld a, [hl]                                    ; $7166: $7e
    ld [hl], c                                    ; $7167: $71
    adc c                                         ; $7168: $89
    ld [hl], c                                    ; $7169: $71
    sub b                                         ; $716a: $90
    ld [hl], c                                    ; $716b: $71
    sbc b                                         ; $716c: $98
    ld [hl], c                                    ; $716d: $71
    xor h                                         ; $716e: $ac
    ld [hl], c                                    ; $716f: $71
    cp b                                          ; $7170: $b8
    ld [hl], c                                    ; $7171: $71
    nop                                           ; $7172: $00
    rst $38                                       ; $7173: $ff
    db $fd                                        ; $7174: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $717b: $02
    rst $38                                       ; $717c: $ff
    db $fd                                        ; $717d: $fd
    ld [bc], a                                    ; $717e: $02
    inc c                                         ; $717f: $0c
    inc bc                                        ; $7180: $03
    inc c                                         ; $7181: $0c
    inc b                                         ; $7182: $04
    jr jr_024_7187                                ; $7183: $18 $02

    inc c                                         ; $7185: $0c
    dec b                                         ; $7186: $05

jr_024_7187:
    inc c                                         ; $7187: $0c
    db $fd                                        ; $7188: $fd
    ld [bc], a                                    ; $7189: $02
    jr @+$05                                      ; $718a: $18 $03

    jr jr_024_7190                                ; $718c: $18 $02

    jr @-$01                                      ; $718e: $18 $fd

jr_024_7190:
    nop                                           ; $7190: $00
    ld a, [bc]                                    ; $7191: $0a
    ld b, $1e                                     ; $7192: $06 $1e
    nop                                           ; $7194: $00
    ld a, [bc]                                    ; $7195: $0a
    cp $01                                        ; $7196: $fe $01
    nop                                           ; $7198: $00
    ld a, [bc]                                    ; $7199: $0a
    rlca                                          ; $719a: $07
    ld a, [bc]                                    ; $719b: $0a
    nop                                           ; $719c: $00
    inc bc                                        ; $719d: $03
    ld [$000a], sp                                ; $719e: $08 $0a $00
    inc bc                                        ; $71a1: $03
    rlca                                          ; $71a2: $07
    ld a, [bc]                                    ; $71a3: $0a
    nop                                           ; $71a4: $00
    inc bc                                        ; $71a5: $03
    ld [$000a], sp                                ; $71a6: $08 $0a $00
    ld a, [bc]                                    ; $71a9: $0a
    cp $01                                        ; $71aa: $fe $01
    nop                                           ; $71ac: $00
    ld a, [bc]                                    ; $71ad: $0a
    add hl, bc                                    ; $71ae: $09
    ld [$0800], sp                                ; $71af: $08 $00 $08
    add hl, bc                                    ; $71b2: $09
    ld [$0a00], sp                                ; $71b3: $08 $00 $0a
    cp $01                                        ; $71b6: $fe $01
    ld [bc], a                                    ; $71b8: $02
    ld [de], a                                    ; $71b9: $12
    inc bc                                        ; $71ba: $03
    ld [de], a                                    ; $71bb: $12
    ld [bc], a                                    ; $71bc: $02
    ld e, $05                                     ; $71bd: $1e $05
    ld [de], a                                    ; $71bf: $12
    db $fd                                        ; $71c0: $fd

    db $06, $04, $c9, $71, $e0, $77, $c9, $71, $e0, $71, $e0, $72, $e0, $72, $e0, $72

    ldh [$72], a                                  ; $71d1: $e0 $72
    ldh [$72], a                                  ; $71d3: $e0 $72
    ldh [$73], a                                  ; $71d5: $e0 $73
    ldh [$74], a                                  ; $71d7: $e0 $74
    ldh [$75], a                                  ; $71d9: $e0 $75
    ldh [rPCM12], a                               ; $71db: $e0 $76
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    rlca                                          ; $71e0: $07
    rlca                                          ; $71e1: $07
    ld [$100f], sp                                ; $71e2: $08 $0f $10
    rra                                           ; $71e5: $1f
    db $10                                        ; $71e6: $10
    rra                                           ; $71e7: $1f
    ld de, $171f                                  ; $71e8: $11 $1f $17
    rra                                           ; $71eb: $1f
    rra                                           ; $71ec: $1f
    add hl, de                                    ; $71ed: $19
    rra                                           ; $71ee: $1f
    ld a, [de]                                    ; $71ef: $1a
    rla                                           ; $71f0: $17
    inc e                                         ; $71f1: $1c
    rrca                                          ; $71f2: $0f
    ld c, $05                                     ; $71f3: $0e $05
    rlca                                          ; $71f5: $07

jr_024_71f6:
    ld c, $0b                                     ; $71f6: $0e $0b
    rra                                           ; $71f8: $1f
    dec de                                        ; $71f9: $1b
    rra                                           ; $71fa: $1f
    ld e, $17                                     ; $71fb: $1e $17
    rra                                           ; $71fd: $1f
    dec c                                         ; $71fe: $0d
    dec c                                         ; $71ff: $0d
    ret nz                                        ; $7200: $c0

    ret nz                                        ; $7201: $c0

    jr nz, @-$1e                                  ; $7202: $20 $e0

    jr nc, jr_024_71f6                            ; $7204: $30 $f0

    ldh a, [$d0]                                  ; $7206: $f0 $d0
    ldh a, [rNR10]                                ; $7208: $f0 $10
    ldh a, [rNR10]                                ; $720a: $f0 $10
    ret nc                                        ; $720c: $d0

    ldh a, [$f8]                                  ; $720d: $f0 $f8
    ld l, b                                       ; $720f: $68
    ldh a, [rNR10]                                ; $7210: $f0 $10
    ldh a, [rNR10]                                ; $7212: $f0 $10
    ldh [rNR41], a                                ; $7214: $e0 $20
    ldh a, [$d0]                                  ; $7216: $f0 $d0
    ldh [$e0], a                                  ; $7218: $e0 $e0
    ret nz                                        ; $721a: $c0

    ret nz                                        ; $721b: $c0

    and b                                         ; $721c: $a0
    ldh [$e0], a                                  ; $721d: $e0 $e0
    ldh [rTAC], a                                 ; $721f: $e0 $07
    rlca                                          ; $7221: $07
    ld [$100f], sp                                ; $7222: $08 $0f $10
    rra                                           ; $7225: $1f
    rla                                           ; $7226: $17
    rra                                           ; $7227: $1f
    rra                                           ; $7228: $1f
    jr jr_024_724a                                ; $7229: $18 $1f

    jr @+$3d                                      ; $722b: $18 $3b

    cpl                                           ; $722d: $2f
    ccf                                           ; $722e: $3f
    ld l, $3f                                     ; $722f: $2e $3f
    add hl, sp                                    ; $7231: $39
    ld a, a                                       ; $7232: $7f
    ld e, b                                       ; $7233: $58
    ld [hl], a                                    ; $7234: $77
    ld a, h                                       ; $7235: $7c
    ld c, a                                       ; $7236: $4f
    ld c, a                                       ; $7237: $4f
    rst $08                                       ; $7238: $cf
    ret                                           ; $7239: $c9


    rst $18                                       ; $723a: $df
    sub $09                                       ; $723b: $d6 $09
    rrca                                          ; $723d: $0f
    ld b, $06                                     ; $723e: $06 $06
    ld b, b                                       ; $7240: $40
    ld b, b                                       ; $7241: $40
    and b                                         ; $7242: $a0
    ldh [$90], a                                  ; $7243: $e0 $90
    ldh a, [$d0]                                  ; $7245: $f0 $d0

jr_024_7247:
    ld [hl], b                                    ; $7247: $70
    ret nc                                        ; $7248: $d0

    ld [hl], b                                    ; $7249: $70

jr_024_724a:
    ldh a, [$30]                                  ; $724a: $f0 $30
    ld a, b                                       ; $724c: $78
    add sp, -$08                                  ; $724d: $e8 $f8
    add sp, -$08                                  ; $724f: $e8 $f8
    jr c, jr_024_7247                             ; $7251: $38 $f4

    inc a                                         ; $7253: $3c
    call c, $fc7c                                 ; $7254: $dc $7c $fc
    db $f4                                        ; $7257: $f4
    add sp, -$58                                  ; $7258: $e8 $a8
    ret nz                                        ; $725a: $c0

    ret nz                                        ; $725b: $c0

    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    inc bc                                        ; $7260: $03
    inc bc                                        ; $7261: $03
    inc b                                         ; $7262: $04
    rlca                                          ; $7263: $07
    add hl, bc                                    ; $7264: $09
    rrca                                          ; $7265: $0f
    rrca                                          ; $7266: $0f
    ld c, $0f                                     ; $7267: $0e $0f
    ld [$080f], sp                                ; $7269: $08 $0f $08
    dec bc                                        ; $726c: $0b
    rrca                                          ; $726d: $0f
    rra                                           ; $726e: $1f
    ld d, $0f                                     ; $726f: $16 $0f
    ld [$080f], sp                                ; $7271: $08 $0f $08
    rlca                                          ; $7274: $07
    inc b                                         ; $7275: $04
    inc bc                                        ; $7276: $03
    inc bc                                        ; $7277: $03
    rlca                                          ; $7278: $07
    inc b                                         ; $7279: $04
    inc bc                                        ; $727a: $03
    inc bc                                        ; $727b: $03
    dec b                                         ; $727c: $05
    rlca                                          ; $727d: $07
    rlca                                          ; $727e: $07
    rlca                                          ; $727f: $07
    ldh [$e0], a                                  ; $7280: $e0 $e0
    sub b                                         ; $7282: $90
    ldh a, [$08]                                  ; $7283: $f0 $08
    ld hl, sp-$78                                 ; $7285: $f8 $88
    ld hl, sp-$78                                 ; $7287: $f8 $88
    ld hl, sp-$18                                 ; $7289: $f8 $e8
    ld hl, sp-$08                                 ; $728b: $f8 $f8
    sbc b                                         ; $728d: $98
    ld hl, sp+$58                                 ; $728e: $f8 $58
    add sp, $38                                   ; $7290: $e8 $38
    ldh a, [rSVBK]                                ; $7292: $f0 $70
    cp b                                          ; $7294: $b8
    ld hl, sp+$58                                 ; $7295: $f8 $58
    ld hl, sp-$10                                 ; $7297: $f8 $f0
    ldh a, [$e8]                                  ; $7299: $f0 $e8
    cp b                                          ; $729b: $b8
    ret z                                         ; $729c: $c8

    ld hl, sp-$50                                 ; $729d: $f8 $b0
    or b                                          ; $729f: $b0
    dec b                                         ; $72a0: $05
    dec b                                         ; $72a1: $05
    ld a, [bc]                                    ; $72a2: $0a
    rrca                                          ; $72a3: $0f

jr_024_72a4:
    ld [de], a                                    ; $72a4: $12
    rra                                           ; $72a5: $1f
    ld [de], a                                    ; $72a6: $12
    rra                                           ; $72a7: $1f
    db $10                                        ; $72a8: $10
    rra                                           ; $72a9: $1f
    db $10                                        ; $72aa: $10
    rra                                           ; $72ab: $1f
    jr c, jr_024_72dd                             ; $72ac: $38 $2f

    jr c, jr_024_72df                             ; $72ae: $38 $2f

    inc a                                         ; $72b0: $3c
    ccf                                           ; $72b1: $3f
    ld [hl], e                                    ; $72b2: $73
    ld e, a                                       ; $72b3: $5f
    ld a, b                                       ; $72b4: $78
    ld a, a                                       ; $72b5: $7f
    rrca                                          ; $72b6: $0f
    rrca                                          ; $72b7: $0f
    rrca                                          ; $72b8: $0f
    add hl, bc                                    ; $72b9: $09
    rra                                           ; $72ba: $1f
    ld d, $09                                     ; $72bb: $16 $09
    rrca                                          ; $72bd: $0f
    ld b, $06                                     ; $72be: $06 $06
    ret nz                                        ; $72c0: $c0

    ret nz                                        ; $72c1: $c0

    jr nz, jr_024_72a4                            ; $72c2: $20 $e0

    db $10                                        ; $72c4: $10
    ldh a, [rNR10]                                ; $72c5: $f0 $10
    ldh a, [rNR10]                                ; $72c7: $f0 $10
    ldh a, [rNR10]                                ; $72c9: $f0 $10
    ldh a, [$38]                                  ; $72cb: $f0 $38
    add sp, $38                                   ; $72cd: $e8 $38
    add sp, $70                                   ; $72cf: $e8 $70
    ldh a, [$ae]                                  ; $72d1: $f0 $ae
    cp $3e                                        ; $72d3: $fe $3e
    or $fc                                        ; $72d5: $f6 $fc
    db $f4                                        ; $72d7: $f4
    add sp, -$58                                  ; $72d8: $e8 $a8
    ret nz                                        ; $72da: $c0

    ret nz                                        ; $72db: $c0

    nop                                           ; $72dc: $00

jr_024_72dd:
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00

jr_024_72df:
    nop                                           ; $72df: $00
    rlca                                          ; $72e0: $07
    rlca                                          ; $72e1: $07
    ld [$100f], sp                                ; $72e2: $08 $0f $10
    rra                                           ; $72e5: $1f
    db $10                                        ; $72e6: $10
    rra                                           ; $72e7: $1f
    ld de, $171f                                  ; $72e8: $11 $1f $17
    rra                                           ; $72eb: $1f
    rra                                           ; $72ec: $1f
    add hl, de                                    ; $72ed: $19
    rra                                           ; $72ee: $1f
    ld a, [de]                                    ; $72ef: $1a
    rla                                           ; $72f0: $17
    inc e                                         ; $72f1: $1c
    rrca                                          ; $72f2: $0f
    ld c, $1d                                     ; $72f3: $0e $1d
    rra                                           ; $72f5: $1f

jr_024_72f6:
    ld a, [de]                                    ; $72f6: $1a
    rra                                           ; $72f7: $1f
    rrca                                          ; $72f8: $0f
    rrca                                          ; $72f9: $0f
    rla                                           ; $72fa: $17
    dec e                                         ; $72fb: $1d
    inc de                                        ; $72fc: $13
    rra                                           ; $72fd: $1f
    dec c                                         ; $72fe: $0d
    dec c                                         ; $72ff: $0d
    ret nz                                        ; $7300: $c0

    ret nz                                        ; $7301: $c0

    jr nz, @-$1e                                  ; $7302: $20 $e0

    jr nc, jr_024_72f6                            ; $7304: $30 $f0

    ldh a, [$d0]                                  ; $7306: $f0 $d0
    ldh a, [rNR10]                                ; $7308: $f0 $10
    ldh a, [rNR10]                                ; $730a: $f0 $10
    ret nc                                        ; $730c: $d0

    ldh a, [$f8]                                  ; $730d: $f0 $f8
    ld l, b                                       ; $730f: $68
    ldh a, [rNR10]                                ; $7310: $f0 $10
    ld hl, sp+$18                                 ; $7312: $f8 $18
    ld hl, sp+$38                                 ; $7314: $f8 $38
    ret nc                                        ; $7316: $d0

    ret nc                                        ; $7317: $d0

    ldh [rNR41], a                                ; $7318: $e0 $20
    ldh [$e0], a                                  ; $731a: $e0 $e0
    and b                                         ; $731c: $a0
    ldh [$e0], a                                  ; $731d: $e0 $e0
    ldh [rTAC], a                                 ; $731f: $e0 $07
    rlca                                          ; $7321: $07
    ld [$100f], sp                                ; $7322: $08 $0f $10
    rra                                           ; $7325: $1f
    rla                                           ; $7326: $17
    rra                                           ; $7327: $1f
    rra                                           ; $7328: $1f
    jr jr_024_734a                                ; $7329: $18 $1f

    jr @+$3d                                      ; $732b: $18 $3b

    cpl                                           ; $732d: $2f
    ccf                                           ; $732e: $3f
    ld l, $ff                                     ; $732f: $2e $ff
    ld sp, hl                                     ; $7331: $f9
    rst $18                                       ; $7332: $df
    ld hl, sp+$77                                 ; $7333: $f8 $77
    ld a, h                                       ; $7335: $7c
    ld a, a                                       ; $7336: $7f
    ld e, a                                       ; $7337: $5f
    cpl                                           ; $7338: $2f
    dec hl                                        ; $7339: $2b
    rlca                                          ; $733a: $07
    ld b, $01                                     ; $733b: $06 $01
    ld bc, $0000                                  ; $733d: $01 $00 $00
    ld b, b                                       ; $7340: $40
    ld b, b                                       ; $7341: $40
    and b                                         ; $7342: $a0
    ldh [$90], a                                  ; $7343: $e0 $90
    ldh a, [$d0]                                  ; $7345: $f0 $d0
    ld [hl], b                                    ; $7347: $70
    ret nc                                        ; $7348: $d0

    ld [hl], b                                    ; $7349: $70

jr_024_734a:
    ldh a, [$30]                                  ; $734a: $f0 $30
    ld a, b                                       ; $734c: $78
    add sp, -$08                                  ; $734d: $e8 $f8

jr_024_734f:
    add sp, -$08                                  ; $734f: $e8 $f8
    jr c, jr_024_734f                             ; $7351: $38 $fc

    inc [hl]                                      ; $7353: $34
    call c, $e07c                                 ; $7354: $dc $7c $e0
    ldh [$e0], a                                  ; $7357: $e0 $e0
    jr nz, @-$0e                                  ; $7359: $20 $f0

    ret nc                                        ; $735b: $d0

    jr nz, @-$1e                                  ; $735c: $20 $e0

    ret nz                                        ; $735e: $c0

    ret nz                                        ; $735f: $c0

    inc bc                                        ; $7360: $03
    inc bc                                        ; $7361: $03
    inc b                                         ; $7362: $04
    rlca                                          ; $7363: $07
    add hl, bc                                    ; $7364: $09
    rrca                                          ; $7365: $0f
    rrca                                          ; $7366: $0f
    ld c, $0f                                     ; $7367: $0e $0f
    ld [$080f], sp                                ; $7369: $08 $0f $08
    dec bc                                        ; $736c: $0b
    rrca                                          ; $736d: $0f
    rra                                           ; $736e: $1f
    ld d, $0f                                     ; $736f: $16 $0f
    ld [$383f], sp                                ; $7371: $08 $3f $38
    scf                                           ; $7374: $37
    inc [hl]                                      ; $7375: $34
    rrca                                          ; $7376: $0f
    dec bc                                        ; $7377: $0b
    rlca                                          ; $7378: $07
    rlca                                          ; $7379: $07
    inc bc                                        ; $737a: $03
    ld [bc], a                                    ; $737b: $02
    dec b                                         ; $737c: $05
    rlca                                          ; $737d: $07
    rlca                                          ; $737e: $07
    rlca                                          ; $737f: $07
    ldh [$e0], a                                  ; $7380: $e0 $e0
    sub b                                         ; $7382: $90
    ldh a, [$08]                                  ; $7383: $f0 $08
    ld hl, sp-$78                                 ; $7385: $f8 $88
    ld hl, sp-$78                                 ; $7387: $f8 $88
    ld hl, sp-$18                                 ; $7389: $f8 $e8
    ld hl, sp-$08                                 ; $738b: $f8 $f8
    sbc b                                         ; $738d: $98
    ld hl, sp+$58                                 ; $738e: $f8 $58
    add sp, $38                                   ; $7390: $e8 $38
    ldh a, [rSVBK]                                ; $7392: $f0 $70
    and b                                         ; $7394: $a0
    ldh [rSVBK], a                                ; $7395: $e0 $70
    ret nc                                        ; $7397: $d0

    ld hl, sp-$28                                 ; $7398: $f8 $d8
    ld hl, sp+$78                                 ; $739a: $f8 $78
    add sp, $78                                   ; $739c: $e8 $78
    or b                                          ; $739e: $b0
    or b                                          ; $739f: $b0
    dec b                                         ; $73a0: $05
    dec b                                         ; $73a1: $05
    ld a, [bc]                                    ; $73a2: $0a
    rrca                                          ; $73a3: $0f

jr_024_73a4:
    ld [de], a                                    ; $73a4: $12
    rra                                           ; $73a5: $1f
    ld [de], a                                    ; $73a6: $12
    rra                                           ; $73a7: $1f
    db $10                                        ; $73a8: $10
    rra                                           ; $73a9: $1f
    db $10                                        ; $73aa: $10
    rra                                           ; $73ab: $1f
    jr c, @+$31                                   ; $73ac: $38 $2f

    jr c, jr_024_73df                             ; $73ae: $38 $2f

    inc e                                         ; $73b0: $1c
    rra                                           ; $73b1: $1f
    dec hl                                        ; $73b2: $2b
    ccf                                           ; $73b3: $3f
    ld a, b                                       ; $73b4: $78
    ld e, a                                       ; $73b5: $5f
    ld a, a                                       ; $73b6: $7f
    ld e, a                                       ; $73b7: $5f
    cpl                                           ; $73b8: $2f
    dec hl                                        ; $73b9: $2b
    rlca                                          ; $73ba: $07
    ld b, $01                                     ; $73bb: $06 $01
    ld bc, $0000                                  ; $73bd: $01 $00 $00
    ret nz                                        ; $73c0: $c0

    ret nz                                        ; $73c1: $c0

    jr nz, jr_024_73a4                            ; $73c2: $20 $e0

    db $10                                        ; $73c4: $10
    ldh a, [rNR10]                                ; $73c5: $f0 $10
    ldh a, [rNR10]                                ; $73c7: $f0 $10
    ldh a, [rNR10]                                ; $73c9: $f0 $10
    ldh a, [$3e]                                  ; $73cb: $f0 $3e
    xor $3e                                       ; $73cd: $ee $3e
    xor $7c                                       ; $73cf: $ee $7c
    db $fc                                        ; $73d1: $fc
    sbc h                                         ; $73d2: $9c
    db $f4                                        ; $73d3: $f4
    inc a                                         ; $73d4: $3c
    db $fc                                        ; $73d5: $fc
    ldh [$e0], a                                  ; $73d6: $e0 $e0
    ldh [rNR41], a                                ; $73d8: $e0 $20
    ldh a, [$d0]                                  ; $73da: $f0 $d0
    jr nz, @-$1e                                  ; $73dc: $20 $e0

    ret nz                                        ; $73de: $c0

jr_024_73df:
    ret nz                                        ; $73df: $c0

    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    rlca                                          ; $73e2: $07
    rlca                                          ; $73e3: $07
    ld [$100f], sp                                ; $73e4: $08 $0f $10
    rra                                           ; $73e7: $1f
    db $10                                        ; $73e8: $10
    rra                                           ; $73e9: $1f
    ld de, $171f                                  ; $73ea: $11 $1f $17
    rra                                           ; $73ed: $1f
    rra                                           ; $73ee: $1f
    add hl, de                                    ; $73ef: $19
    rra                                           ; $73f0: $1f
    ld a, [de]                                    ; $73f1: $1a
    rla                                           ; $73f2: $17
    inc e                                         ; $73f3: $1c
    dec b                                         ; $73f4: $05
    rlca                                          ; $73f5: $07
    ld c, $0b                                     ; $73f6: $0e $0b

jr_024_73f8:
    rra                                           ; $73f8: $1f
    dec de                                        ; $73f9: $1b
    rra                                           ; $73fa: $1f
    ld e, $17                                     ; $73fb: $1e $17
    rra                                           ; $73fd: $1f
    dec c                                         ; $73fe: $0d
    dec c                                         ; $73ff: $0d
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    ret nz                                        ; $7402: $c0

    ret nz                                        ; $7403: $c0

    jr nz, @-$1e                                  ; $7404: $20 $e0

    jr nc, jr_024_73f8                            ; $7406: $30 $f0

    ldh a, [$d0]                                  ; $7408: $f0 $d0
    ldh a, [rNR10]                                ; $740a: $f0 $10
    ldh a, [rNR10]                                ; $740c: $f0 $10
    ret nc                                        ; $740e: $d0

    ldh a, [$f8]                                  ; $740f: $f0 $f8
    ld l, b                                       ; $7411: $68
    ldh a, [rNR10]                                ; $7412: $f0 $10
    ldh [rNR41], a                                ; $7414: $e0 $20
    ldh a, [$d0]                                  ; $7416: $f0 $d0
    ldh [$e0], a                                  ; $7418: $e0 $e0
    ret nz                                        ; $741a: $c0

    ret nz                                        ; $741b: $c0

    and b                                         ; $741c: $a0
    ldh [$e0], a                                  ; $741d: $e0 $e0
    ldh [rP1], a                                  ; $741f: $e0 $00
    nop                                           ; $7421: $00
    rlca                                          ; $7422: $07
    rlca                                          ; $7423: $07
    ld [$100f], sp                                ; $7424: $08 $0f $10
    rra                                           ; $7427: $1f
    rla                                           ; $7428: $17
    rra                                           ; $7429: $1f
    rra                                           ; $742a: $1f
    jr jr_024_744c                                ; $742b: $18 $1f

    jr @+$3d                                      ; $742d: $18 $3b

    cpl                                           ; $742f: $2f
    ccf                                           ; $7430: $3f

jr_024_7431:
    ld l, $3f                                     ; $7431: $2e $3f
    add hl, sp                                    ; $7433: $39
    ld [hl], a                                    ; $7434: $77
    ld a, h                                       ; $7435: $7c
    ld c, a                                       ; $7436: $4f
    ld c, a                                       ; $7437: $4f
    rst $08                                       ; $7438: $cf
    ret                                           ; $7439: $c9


    rst $18                                       ; $743a: $df
    sub $09                                       ; $743b: $d6 $09
    rrca                                          ; $743d: $0f
    ld b, $06                                     ; $743e: $06 $06
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    ld b, b                                       ; $7442: $40
    ld b, b                                       ; $7443: $40
    and b                                         ; $7444: $a0
    ldh [$90], a                                  ; $7445: $e0 $90
    ldh a, [$d0]                                  ; $7447: $f0 $d0
    ld [hl], b                                    ; $7449: $70
    ret nc                                        ; $744a: $d0

    ld [hl], b                                    ; $744b: $70

jr_024_744c:
    ldh a, [$30]                                  ; $744c: $f0 $30
    ld a, b                                       ; $744e: $78
    add sp, -$08                                  ; $744f: $e8 $f8
    add sp, -$08                                  ; $7451: $e8 $f8
    jr c, jr_024_7431                             ; $7453: $38 $dc

    ld a, h                                       ; $7455: $7c
    db $fc                                        ; $7456: $fc
    db $f4                                        ; $7457: $f4
    add sp, -$58                                  ; $7458: $e8 $a8
    ret nz                                        ; $745a: $c0

    ret nz                                        ; $745b: $c0

    nop                                           ; $745c: $00
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    nop                                           ; $745f: $00
    nop                                           ; $7460: $00
    nop                                           ; $7461: $00
    inc bc                                        ; $7462: $03
    inc bc                                        ; $7463: $03
    inc b                                         ; $7464: $04
    rlca                                          ; $7465: $07
    add hl, bc                                    ; $7466: $09
    rrca                                          ; $7467: $0f
    rrca                                          ; $7468: $0f
    ld c, $0f                                     ; $7469: $0e $0f
    ld [$080f], sp                                ; $746b: $08 $0f $08
    dec bc                                        ; $746e: $0b
    rrca                                          ; $746f: $0f
    rra                                           ; $7470: $1f
    ld d, $0f                                     ; $7471: $16 $0f
    ld [$0407], sp                                ; $7473: $08 $07 $04
    inc bc                                        ; $7476: $03
    inc bc                                        ; $7477: $03
    rlca                                          ; $7478: $07
    inc b                                         ; $7479: $04
    inc bc                                        ; $747a: $03
    inc bc                                        ; $747b: $03
    dec b                                         ; $747c: $05
    rlca                                          ; $747d: $07
    rlca                                          ; $747e: $07

Jump_024_747f:
    rlca                                          ; $747f: $07
    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
    ldh [$e0], a                                  ; $7482: $e0 $e0
    sub b                                         ; $7484: $90
    ldh a, [$08]                                  ; $7485: $f0 $08
    ld hl, sp-$78                                 ; $7487: $f8 $88
    ld hl, sp-$78                                 ; $7489: $f8 $88
    ld hl, sp-$18                                 ; $748b: $f8 $e8
    ld hl, sp-$08                                 ; $748d: $f8 $f8
    sbc b                                         ; $748f: $98
    ld hl, sp+$58                                 ; $7490: $f8 $58
    add sp, $38                                   ; $7492: $e8 $38
    cp b                                          ; $7494: $b8
    ld hl, sp+$58                                 ; $7495: $f8 $58
    ld hl, sp-$10                                 ; $7497: $f8 $f0
    ldh a, [$e8]                                  ; $7499: $f0 $e8
    cp b                                          ; $749b: $b8
    ret z                                         ; $749c: $c8

    ld hl, sp-$50                                 ; $749d: $f8 $b0
    or b                                          ; $749f: $b0
    nop                                           ; $74a0: $00
    nop                                           ; $74a1: $00
    dec b                                         ; $74a2: $05
    dec b                                         ; $74a3: $05
    ld a, [bc]                                    ; $74a4: $0a
    rrca                                          ; $74a5: $0f

jr_024_74a6:
    ld [de], a                                    ; $74a6: $12
    rra                                           ; $74a7: $1f
    ld [de], a                                    ; $74a8: $12
    rra                                           ; $74a9: $1f
    db $10                                        ; $74aa: $10
    rra                                           ; $74ab: $1f
    db $10                                        ; $74ac: $10
    rra                                           ; $74ad: $1f
    jr c, jr_024_74df                             ; $74ae: $38 $2f

    jr c, jr_024_74e1                             ; $74b0: $38 $2f

    inc a                                         ; $74b2: $3c
    ccf                                           ; $74b3: $3f
    ld a, b                                       ; $74b4: $78
    ld a, a                                       ; $74b5: $7f
    rrca                                          ; $74b6: $0f
    rrca                                          ; $74b7: $0f
    rrca                                          ; $74b8: $0f
    add hl, bc                                    ; $74b9: $09
    rra                                           ; $74ba: $1f
    ld d, $09                                     ; $74bb: $16 $09
    rrca                                          ; $74bd: $0f
    ld b, $06                                     ; $74be: $06 $06
    nop                                           ; $74c0: $00
    nop                                           ; $74c1: $00
    ret nz                                        ; $74c2: $c0

    ret nz                                        ; $74c3: $c0

    jr nz, jr_024_74a6                            ; $74c4: $20 $e0

    db $10                                        ; $74c6: $10
    ldh a, [rNR10]                                ; $74c7: $f0 $10
    ldh a, [rNR10]                                ; $74c9: $f0 $10
    ldh a, [rNR10]                                ; $74cb: $f0 $10
    ldh a, [$38]                                  ; $74cd: $f0 $38
    add sp, $38                                   ; $74cf: $e8 $38
    add sp, $70                                   ; $74d1: $e8 $70
    ldh a, [$3e]                                  ; $74d3: $f0 $3e
    or $fc                                        ; $74d5: $f6 $fc
    db $f4                                        ; $74d7: $f4
    add sp, -$58                                  ; $74d8: $e8 $a8
    ret nz                                        ; $74da: $c0

    ret nz                                        ; $74db: $c0

    nop                                           ; $74dc: $00
    nop                                           ; $74dd: $00
    nop                                           ; $74de: $00

jr_024_74df:
    nop                                           ; $74df: $00
    inc bc                                        ; $74e0: $03

jr_024_74e1:
    inc bc                                        ; $74e1: $03
    inc b                                         ; $74e2: $04
    rlca                                          ; $74e3: $07
    ld [$080f], sp                                ; $74e4: $08 $0f $08
    rrca                                          ; $74e7: $0f
    ld [$0b0f], sp                                ; $74e8: $08 $0f $0b
    rrca                                          ; $74eb: $0f
    rrca                                          ; $74ec: $0f
    inc c                                         ; $74ed: $0c
    rrca                                          ; $74ee: $0f
    dec c                                         ; $74ef: $0d
    dec bc                                        ; $74f0: $0b
    ld c, $0f                                     ; $74f1: $0e $0f
    ld c, $05                                     ; $74f3: $0e $05
    rlca                                          ; $74f5: $07
    ld c, $0b                                     ; $74f6: $0e $0b
    rra                                           ; $74f8: $1f
    dec de                                        ; $74f9: $1b
    rra                                           ; $74fa: $1f
    ld e, $17                                     ; $74fb: $1e $17
    rra                                           ; $74fd: $1f
    dec c                                         ; $74fe: $0d
    dec c                                         ; $74ff: $0d
    ldh [$e0], a                                  ; $7500: $e0 $e0
    db $10                                        ; $7502: $10
    ldh a, [rNR23]                                ; $7503: $f0 $18
    ld hl, sp+$78                                 ; $7505: $f8 $78
    add sp, -$08                                  ; $7507: $e8 $f8
    adc b                                         ; $7509: $88
    ld hl, sp-$78                                 ; $750a: $f8 $88
    add sp, -$08                                  ; $750c: $e8 $f8
    db $fc                                        ; $750e: $fc
    inc [hl]                                      ; $750f: $34
    ld hl, sp+$08                                 ; $7510: $f8 $08
    ldh a, [rNR10]                                ; $7512: $f0 $10
    ldh [rNR41], a                                ; $7514: $e0 $20
    ldh a, [$d0]                                  ; $7516: $f0 $d0
    ldh [$e0], a                                  ; $7518: $e0 $e0
    ret nz                                        ; $751a: $c0

    ret nz                                        ; $751b: $c0

    and b                                         ; $751c: $a0
    ldh [$e0], a                                  ; $751d: $e0 $e0
    ldh [$03], a                                  ; $751f: $e0 $03
    inc bc                                        ; $7521: $03
    inc b                                         ; $7522: $04
    rlca                                          ; $7523: $07
    ld [$0b0f], sp                                ; $7524: $08 $0f $0b
    rrca                                          ; $7527: $0f
    rrca                                          ; $7528: $0f
    inc c                                         ; $7529: $0c
    rrca                                          ; $752a: $0f
    inc c                                         ; $752b: $0c
    dec e                                         ; $752c: $1d
    rla                                           ; $752d: $17
    rra                                           ; $752e: $1f
    rla                                           ; $752f: $17
    rra                                           ; $7530: $1f
    inc e                                         ; $7531: $1c
    ld a, a                                       ; $7532: $7f
    ld e, b                                       ; $7533: $58
    ld [hl], a                                    ; $7534: $77
    ld a, h                                       ; $7535: $7c
    ld c, a                                       ; $7536: $4f
    ld c, a                                       ; $7537: $4f
    rst $08                                       ; $7538: $cf
    ret                                           ; $7539: $c9


    rst $18                                       ; $753a: $df
    sub $09                                       ; $753b: $d6 $09
    rrca                                          ; $753d: $0f
    ld b, $06                                     ; $753e: $06 $06
    and b                                         ; $7540: $a0
    and b                                         ; $7541: $a0
    ld d, b                                       ; $7542: $50
    ldh a, [rOBP0]                                ; $7543: $f0 $48
    ld hl, sp-$18                                 ; $7545: $f8 $e8
    cp b                                          ; $7547: $b8
    add sp, $38                                   ; $7548: $e8 $38
    ld hl, sp+$18                                 ; $754a: $f8 $18
    cp h                                          ; $754c: $bc
    db $f4                                        ; $754d: $f4
    db $fc                                        ; $754e: $fc
    ld [hl], h                                    ; $754f: $74
    db $fc                                        ; $7550: $fc
    sbc h                                         ; $7551: $9c
    db $f4                                        ; $7552: $f4
    inc a                                         ; $7553: $3c
    call c, $fc7c                                 ; $7554: $dc $7c $fc
    db $f4                                        ; $7557: $f4
    add sp, -$58                                  ; $7558: $e8 $a8
    ret nz                                        ; $755a: $c0

    ret nz                                        ; $755b: $c0

    nop                                           ; $755c: $00
    nop                                           ; $755d: $00
    nop                                           ; $755e: $00
    nop                                           ; $755f: $00
    ld bc, $0201                                  ; $7560: $01 $01 $02
    inc bc                                        ; $7563: $03
    inc b                                         ; $7564: $04
    rlca                                          ; $7565: $07
    rlca                                          ; $7566: $07
    rlca                                          ; $7567: $07
    rlca                                          ; $7568: $07
    inc b                                         ; $7569: $04
    rlca                                          ; $756a: $07
    inc b                                         ; $756b: $04
    dec b                                         ; $756c: $05
    rlca                                          ; $756d: $07
    rrca                                          ; $756e: $0f
    dec bc                                        ; $756f: $0b
    rlca                                          ; $7570: $07
    inc b                                         ; $7571: $04
    rrca                                          ; $7572: $0f
    ld [$0407], sp                                ; $7573: $08 $07 $04
    inc bc                                        ; $7576: $03
    inc bc                                        ; $7577: $03
    rlca                                          ; $7578: $07
    inc b                                         ; $7579: $04
    inc bc                                        ; $757a: $03
    inc bc                                        ; $757b: $03
    dec b                                         ; $757c: $05
    rlca                                          ; $757d: $07
    rlca                                          ; $757e: $07
    rlca                                          ; $757f: $07
    ldh a, [$f0]                                  ; $7580: $f0 $f0
    ld c, b                                       ; $7582: $48
    ld hl, sp-$7c                                 ; $7583: $f8 $84
    db $fc                                        ; $7585: $fc
    call nz, $c47c                                ; $7586: $c4 $7c $c4
    ld a, h                                       ; $7589: $7c
    db $f4                                        ; $758a: $f4
    ld a, h                                       ; $758b: $7c
    db $fc                                        ; $758c: $fc
    call z, $2cfc                                 ; $758d: $cc $fc $2c
    db $f4                                        ; $7590: $f4
    inc e                                         ; $7591: $1c
    ldh a, [rSVBK]                                ; $7592: $f0 $70
    cp b                                          ; $7594: $b8
    ld hl, sp+$58                                 ; $7595: $f8 $58
    ld hl, sp-$10                                 ; $7597: $f8 $f0
    ldh a, [$e8]                                  ; $7599: $f0 $e8
    cp b                                          ; $759b: $b8
    ret z                                         ; $759c: $c8

    ld hl, sp-$50                                 ; $759d: $f8 $b0
    or b                                          ; $759f: $b0
    ld [bc], a                                    ; $75a0: $02
    ld [bc], a                                    ; $75a1: $02
    dec b                                         ; $75a2: $05
    rlca                                          ; $75a3: $07
    add hl, bc                                    ; $75a4: $09
    rrca                                          ; $75a5: $0f
    add hl, bc                                    ; $75a6: $09
    rrca                                          ; $75a7: $0f
    ld [$080f], sp                                ; $75a8: $08 $0f $08
    rrca                                          ; $75ab: $0f
    inc e                                         ; $75ac: $1c
    rla                                           ; $75ad: $17
    inc e                                         ; $75ae: $1c
    rla                                           ; $75af: $17
    ld e, $1f                                     ; $75b0: $1e $1f
    ld [hl], e                                    ; $75b2: $73
    ld e, a                                       ; $75b3: $5f
    ld a, b                                       ; $75b4: $78
    ld a, a                                       ; $75b5: $7f
    rrca                                          ; $75b6: $0f
    rrca                                          ; $75b7: $0f
    rrca                                          ; $75b8: $0f
    add hl, bc                                    ; $75b9: $09
    rra                                           ; $75ba: $1f
    ld d, $09                                     ; $75bb: $16 $09
    rrca                                          ; $75bd: $0f
    ld b, $06                                     ; $75be: $06 $06
    ldh [$e0], a                                  ; $75c0: $e0 $e0
    db $10                                        ; $75c2: $10
    ldh a, [$08]                                  ; $75c3: $f0 $08
    ld hl, sp+$08                                 ; $75c5: $f8 $08
    ld hl, sp+$08                                 ; $75c7: $f8 $08
    ld hl, sp+$08                                 ; $75c9: $f8 $08
    ld hl, sp+$1c                                 ; $75cb: $f8 $1c
    db $f4                                        ; $75cd: $f4
    inc e                                         ; $75ce: $1c
    db $f4                                        ; $75cf: $f4
    jr c, @-$06                                   ; $75d0: $38 $f8

    xor [hl]                                      ; $75d2: $ae
    cp $3e                                        ; $75d3: $fe $3e
    or $fc                                        ; $75d5: $f6 $fc
    db $f4                                        ; $75d7: $f4
    add sp, -$58                                  ; $75d8: $e8 $a8
    ret nz                                        ; $75da: $c0

    ret nz                                        ; $75db: $c0

    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    nop                                           ; $75de: $00
    nop                                           ; $75df: $00
    rrca                                          ; $75e0: $0f
    rrca                                          ; $75e1: $0f
    db $10                                        ; $75e2: $10
    rra                                           ; $75e3: $1f
    jr nz, @+$41                                  ; $75e4: $20 $3f

    ld hl, $233f                                  ; $75e6: $21 $3f $23
    ld a, $2f                                     ; $75e9: $3e $2f
    ld a, $3f                                     ; $75eb: $3e $3f
    inc sp                                        ; $75ed: $33
    ccf                                           ; $75ee: $3f
    inc [hl]                                      ; $75ef: $34
    cpl                                           ; $75f0: $2f
    jr c, jr_024_7602                             ; $75f1: $38 $0f

    ld c, $05                                     ; $75f3: $0e $05
    rlca                                          ; $75f5: $07
    ld c, $0b                                     ; $75f6: $0e $0b
    rra                                           ; $75f8: $1f
    dec de                                        ; $75f9: $1b
    rra                                           ; $75fa: $1f
    ld e, $17                                     ; $75fb: $1e $17
    rra                                           ; $75fd: $1f
    dec c                                         ; $75fe: $0d
    dec c                                         ; $75ff: $0d
    add b                                         ; $7600: $80
    add b                                         ; $7601: $80

jr_024_7602:
    ld b, b                                       ; $7602: $40
    ret nz                                        ; $7603: $c0

    ld h, b                                       ; $7604: $60
    ldh [$e0], a                                  ; $7605: $e0 $e0
    and b                                         ; $7607: $a0
    ldh [rNR41], a                                ; $7608: $e0 $20
    ldh [rNR41], a                                ; $760a: $e0 $20
    and b                                         ; $760c: $a0
    ldh [$f0], a                                  ; $760d: $e0 $f0
    ret nc                                        ; $760f: $d0

    ldh [rNR41], a                                ; $7610: $e0 $20
    ldh a, [rNR10]                                ; $7612: $f0 $10
    ldh [rNR41], a                                ; $7614: $e0 $20
    ldh a, [$d0]                                  ; $7616: $f0 $d0
    ldh [$e0], a                                  ; $7618: $e0 $e0
    ret nz                                        ; $761a: $c0

    ret nz                                        ; $761b: $c0

    and b                                         ; $761c: $a0
    ldh [$e0], a                                  ; $761d: $e0 $e0
    ldh [$0e], a                                  ; $761f: $e0 $0e
    ld c, $11                                     ; $7621: $0e $11
    rra                                           ; $7623: $1f
    ld hl, $2f3f                                  ; $7624: $21 $3f $2f
    ld a, $3f                                     ; $7627: $3e $3f
    jr nc, @+$41                                  ; $7629: $30 $3f

    jr nc, jr_024_76a3                            ; $762b: $30 $76

    ld e, a                                       ; $762d: $5f
    ld a, a                                       ; $762e: $7f
    ld e, l                                       ; $762f: $5d
    ld a, a                                       ; $7630: $7f
    ld [hl], d                                    ; $7631: $72
    ld a, a                                       ; $7632: $7f
    ld e, b                                       ; $7633: $58
    ld [hl], a                                    ; $7634: $77
    ld a, h                                       ; $7635: $7c
    ld c, a                                       ; $7636: $4f
    ld c, a                                       ; $7637: $4f
    rst $08                                       ; $7638: $cf
    ret                                           ; $7639: $c9


    rst $18                                       ; $763a: $df
    sub $09                                       ; $763b: $d6 $09
    rrca                                          ; $763d: $0f
    ld b, $06                                     ; $763e: $06 $06
    add b                                         ; $7640: $80
    add b                                         ; $7641: $80
    ld b, b                                       ; $7642: $40
    ret nz                                        ; $7643: $c0

    jr nz, @-$1e                                  ; $7644: $20 $e0

    and b                                         ; $7646: $a0
    ldh [$a0], a                                  ; $7647: $e0 $a0
    ldh [$e0], a                                  ; $7649: $e0 $e0
    ld h, b                                       ; $764b: $60
    ldh a, [$d0]                                  ; $764c: $f0 $d0
    ldh a, [$d0]                                  ; $764e: $f0 $d0
    ldh a, [rSVBK]                                ; $7650: $f0 $70
    db $f4                                        ; $7652: $f4
    inc a                                         ; $7653: $3c
    call c, $fc7c                                 ; $7654: $dc $7c $fc
    db $f4                                        ; $7657: $f4
    add sp, -$58                                  ; $7658: $e8 $a8
    ret nz                                        ; $765a: $c0

    ret nz                                        ; $765b: $c0

    nop                                           ; $765c: $00
    nop                                           ; $765d: $00
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    rlca                                          ; $7660: $07
    rlca                                          ; $7661: $07
    add hl, bc                                    ; $7662: $09
    rrca                                          ; $7663: $0f

jr_024_7664:
    ld [de], a                                    ; $7664: $12
    rra                                           ; $7665: $1f
    rra                                           ; $7666: $1f
    dec e                                         ; $7667: $1d
    rra                                           ; $7668: $1f
    ld de, $111f                                  ; $7669: $11 $1f $11
    rla                                           ; $766c: $17
    rra                                           ; $766d: $1f
    ccf                                           ; $766e: $3f
    inc l                                         ; $766f: $2c
    rra                                           ; $7670: $1f
    db $10                                        ; $7671: $10
    rrca                                          ; $7672: $0f
    ld [$0407], sp                                ; $7673: $08 $07 $04
    inc bc                                        ; $7676: $03
    inc bc                                        ; $7677: $03
    rlca                                          ; $7678: $07
    inc b                                         ; $7679: $04
    inc bc                                        ; $767a: $03
    inc bc                                        ; $767b: $03
    dec b                                         ; $767c: $05
    rlca                                          ; $767d: $07
    rlca                                          ; $767e: $07

jr_024_767f:
    rlca                                          ; $767f: $07
    ret nz                                        ; $7680: $c0

    ret nz                                        ; $7681: $c0

    jr nz, jr_024_7664                            ; $7682: $20 $e0

    db $10                                        ; $7684: $10
    ldh a, [rNR10]                                ; $7685: $f0 $10
    ldh a, [rNR10]                                ; $7687: $f0 $10
    ldh a, [$d0]                                  ; $7689: $f0 $d0
    ldh a, [$f0]                                  ; $768b: $f0 $f0
    jr nc, jr_024_767f                            ; $768d: $30 $f0

    or b                                          ; $768f: $b0
    ret nc                                        ; $7690: $d0

    ld [hl], b                                    ; $7691: $70
    ldh a, [rSVBK]                                ; $7692: $f0 $70
    cp b                                          ; $7694: $b8
    ld hl, sp+$58                                 ; $7695: $f8 $58
    ld hl, sp-$10                                 ; $7697: $f8 $f0
    ldh a, [$e8]                                  ; $7699: $f0 $e8
    cp b                                          ; $769b: $b8
    ret z                                         ; $769c: $c8

    ld hl, sp-$50                                 ; $769d: $f8 $b0
    or b                                          ; $769f: $b0
    dec bc                                        ; $76a0: $0b
    dec bc                                        ; $76a1: $0b
    inc d                                         ; $76a2: $14

jr_024_76a3:
    rra                                           ; $76a3: $1f
    inc h                                         ; $76a4: $24
    ccf                                           ; $76a5: $3f

jr_024_76a6:
    inc h                                         ; $76a6: $24
    ccf                                           ; $76a7: $3f

jr_024_76a8:
    jr nz, jr_024_76e9                            ; $76a8: $20 $3f

jr_024_76aa:
    jr nz, jr_024_76eb                            ; $76aa: $20 $3f

jr_024_76ac:
    ld [hl], b                                    ; $76ac: $70
    ld e, a                                       ; $76ad: $5f
    ld [hl], b                                    ; $76ae: $70
    ld e, a                                       ; $76af: $5f
    ld a, b                                       ; $76b0: $78
    ld a, a                                       ; $76b1: $7f
    ld [hl], e                                    ; $76b2: $73
    ld e, a                                       ; $76b3: $5f
    ld a, b                                       ; $76b4: $78
    ld a, a                                       ; $76b5: $7f
    rrca                                          ; $76b6: $0f
    rrca                                          ; $76b7: $0f
    rrca                                          ; $76b8: $0f
    add hl, bc                                    ; $76b9: $09
    rra                                           ; $76ba: $1f
    ld d, $09                                     ; $76bb: $16 $09
    rrca                                          ; $76bd: $0f
    ld b, $06                                     ; $76be: $06 $06
    add b                                         ; $76c0: $80
    add b                                         ; $76c1: $80
    ld b, b                                       ; $76c2: $40
    ret nz                                        ; $76c3: $c0

    jr nz, jr_024_76a6                            ; $76c4: $20 $e0

    jr nz, jr_024_76a8                            ; $76c6: $20 $e0

    jr nz, jr_024_76aa                            ; $76c8: $20 $e0

    jr nz, jr_024_76ac                            ; $76ca: $20 $e0

    ld [hl], b                                    ; $76cc: $70
    ret nc                                        ; $76cd: $d0

    ld [hl], b                                    ; $76ce: $70
    ret nc                                        ; $76cf: $d0

    ldh [$e0], a                                  ; $76d0: $e0 $e0
    xor [hl]                                      ; $76d2: $ae
    cp $3e                                        ; $76d3: $fe $3e
    or $fc                                        ; $76d5: $f6 $fc
    db $f4                                        ; $76d7: $f4
    add sp, -$58                                  ; $76d8: $e8 $a8
    ret nz                                        ; $76da: $c0

    ret nz                                        ; $76db: $c0

    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    nop                                           ; $76de: $00
    nop                                           ; $76df: $00
    nop                                           ; $76e0: $00
    nop                                           ; $76e1: $00
    inc bc                                        ; $76e2: $03
    inc bc                                        ; $76e3: $03
    inc b                                         ; $76e4: $04
    rlca                                          ; $76e5: $07
    ld [$080f], sp                                ; $76e6: $08 $0f $08

jr_024_76e9:
    rrca                                          ; $76e9: $0f
    add hl, bc                                    ; $76ea: $09

jr_024_76eb:
    rrca                                          ; $76eb: $0f
    rrca                                          ; $76ec: $0f
    dec c                                         ; $76ed: $0d
    rrca                                          ; $76ee: $0f
    ld c, $0b                                     ; $76ef: $0e $0b
    inc c                                         ; $76f1: $0c
    rlca                                          ; $76f2: $07
    ld b, $06                                     ; $76f3: $06 $06
    rlca                                          ; $76f5: $07
    rrca                                          ; $76f6: $0f
    rrca                                          ; $76f7: $0f
    rrca                                          ; $76f8: $0f
    ld c, $0b                                     ; $76f9: $0e $0b
    rrca                                          ; $76fb: $0f
    dec b                                         ; $76fc: $05
    dec b                                         ; $76fd: $05
    nop                                           ; $76fe: $00
    nop                                           ; $76ff: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    ret nz                                        ; $7702: $c0

    ret nz                                        ; $7703: $c0

    nop                                           ; $7704: $00
    ret nz                                        ; $7705: $c0

    jr nz, @-$1e                                  ; $7706: $20 $e0

    ldh [$e0], a                                  ; $7708: $e0 $e0
    ldh [rNR41], a                                ; $770a: $e0 $20
    ldh [$e0], a                                  ; $770c: $e0 $e0
    ldh a, [$50]                                  ; $770e: $f0 $50
    ldh [rNR41], a                                ; $7710: $e0 $20
    ldh [rNR41], a                                ; $7712: $e0 $20
    ldh [$e0], a                                  ; $7714: $e0 $e0
    ret nz                                        ; $7716: $c0

    ret nz                                        ; $7717: $c0

    ret nz                                        ; $7718: $c0

    ret nz                                        ; $7719: $c0

    add b                                         ; $771a: $80
    ret nz                                        ; $771b: $c0

    ret nz                                        ; $771c: $c0

    ret nz                                        ; $771d: $c0

    nop                                           ; $771e: $00
    nop                                           ; $771f: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    inc bc                                        ; $7722: $03
    inc bc                                        ; $7723: $03
    inc b                                         ; $7724: $04
    rlca                                          ; $7725: $07
    ld [$0b0f], sp                                ; $7726: $08 $0f $0b
    rrca                                          ; $7729: $0f
    rrca                                          ; $772a: $0f
    inc c                                         ; $772b: $0c
    rra                                           ; $772c: $1f
    rla                                           ; $772d: $17
    rra                                           ; $772e: $1f
    ld d, $1f                                     ; $772f: $16 $1f
    dec e                                         ; $7731: $1d
    ccf                                           ; $7732: $3f
    inc l                                         ; $7733: $2c
    daa                                           ; $7734: $27
    daa                                           ; $7735: $27
    ld h, a                                       ; $7736: $67
    ld h, l                                       ; $7737: $65
    ld l, a                                       ; $7738: $6f
    ld l, d                                       ; $7739: $6a
    dec b                                         ; $773a: $05
    rlca                                          ; $773b: $07
    ld [bc], a                                    ; $773c: $02
    ld [bc], a                                    ; $773d: $02
    nop                                           ; $773e: $00
    nop                                           ; $773f: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    ld b, b                                       ; $7742: $40
    ld b, b                                       ; $7743: $40
    add b                                         ; $7744: $80
    ret nz                                        ; $7745: $c0

    and b                                         ; $7746: $a0
    ldh [$e0], a                                  ; $7747: $e0 $e0
    ld h, b                                       ; $7749: $60
    ldh [$60], a                                  ; $774a: $e0 $60
    ld [hl], b                                    ; $774c: $70
    ret nc                                        ; $774d: $d0

    ldh a, [$d0]                                  ; $774e: $f0 $d0
    ldh a, [$30]                                  ; $7750: $f0 $30
    add sp, $38                                   ; $7752: $e8 $38
    ld hl, sp-$18                                 ; $7754: $f8 $e8
    ret nc                                        ; $7756: $d0

    sub b                                         ; $7757: $90
    ret nz                                        ; $7758: $c0

    ret nz                                        ; $7759: $c0

    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    inc bc                                        ; $7762: $03
    inc bc                                        ; $7763: $03
    nop                                           ; $7764: $00
    inc bc                                        ; $7765: $03
    dec b                                         ; $7766: $05
    rlca                                          ; $7767: $07
    rlca                                          ; $7768: $07
    ld b, $07                                     ; $7769: $06 $07
    inc b                                         ; $776b: $04
    rlca                                          ; $776c: $07
    rlca                                          ; $776d: $07
    rrca                                          ; $776e: $0f
    ld a, [bc]                                    ; $776f: $0a
    rlca                                          ; $7770: $07
    inc b                                         ; $7771: $04
    rlca                                          ; $7772: $07

jr_024_7773:
    inc b                                         ; $7773: $04
    inc bc                                        ; $7774: $03
    inc bc                                        ; $7775: $03
    inc bc                                        ; $7776: $03
    nop                                           ; $7777: $00
    inc bc                                        ; $7778: $03
    inc bc                                        ; $7779: $03
    ld bc, $0303                                  ; $777a: $01 $03 $03
    inc bc                                        ; $777d: $03
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    ret nz                                        ; $7782: $c0

    ret nz                                        ; $7783: $c0

    and b                                         ; $7784: $a0
    ldh [rNR10], a                                ; $7785: $e0 $10
    ldh a, [$90]                                  ; $7787: $f0 $90
    ldh a, [$90]                                  ; $7789: $f0 $90
    ldh a, [$f0]                                  ; $778b: $f0 $f0
    or b                                          ; $778d: $b0
    ldh a, [rSVBK]                                ; $778e: $f0 $70
    ret nc                                        ; $7790: $d0

    jr nc, jr_024_7773                            ; $7791: $30 $e0

    ld h, b                                       ; $7793: $60
    ld [hl], b                                    ; $7794: $70
    ldh a, [$e0]                                  ; $7795: $f0 $e0
    ldh [$d0], a                                  ; $7797: $e0 $d0
    or b                                          ; $7799: $b0
    ret nc                                        ; $779a: $d0

    ldh a, [$a0]                                  ; $779b: $f0 $a0
    and b                                         ; $779d: $a0

jr_024_779e:
    nop                                           ; $779e: $00
    nop                                           ; $779f: $00

jr_024_77a0:
    nop                                           ; $77a0: $00
    nop                                           ; $77a1: $00
    ld bc, $0601                                  ; $77a2: $01 $01 $06
    rlca                                          ; $77a5: $07
    ld a, [bc]                                    ; $77a6: $0a
    rrca                                          ; $77a7: $0f

jr_024_77a8:
    ld a, [bc]                                    ; $77a8: $0a
    rrca                                          ; $77a9: $0f

jr_024_77aa:
    ld [$1c0f], sp                                ; $77aa: $08 $0f $1c
    rla                                           ; $77ad: $17
    inc e                                         ; $77ae: $1c
    rla                                           ; $77af: $17
    inc e                                         ; $77b0: $1c
    rra                                           ; $77b1: $1f
    dec sp                                        ; $77b2: $3b
    cpl                                           ; $77b3: $2f
    rlca                                          ; $77b4: $07
    rlca                                          ; $77b5: $07
    rlca                                          ; $77b6: $07
    dec b                                         ; $77b7: $05
    rrca                                          ; $77b8: $0f
    ld a, [bc]                                    ; $77b9: $0a
    dec b                                         ; $77ba: $05
    rlca                                          ; $77bb: $07
    ld [bc], a                                    ; $77bc: $02
    ld [bc], a                                    ; $77bd: $02
    nop                                           ; $77be: $00
    nop                                           ; $77bf: $00
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    ret nz                                        ; $77c2: $c0

    ret nz                                        ; $77c3: $c0

    nop                                           ; $77c4: $00
    ret nz                                        ; $77c5: $c0

    jr nz, jr_024_77a8                            ; $77c6: $20 $e0

    jr nz, jr_024_77aa                            ; $77c8: $20 $e0

    jr nz, @-$1e                                  ; $77ca: $20 $e0

    jr nc, jr_024_779e                            ; $77cc: $30 $d0

    jr nc, jr_024_77a0                            ; $77ce: $30 $d0

    ld h, b                                       ; $77d0: $60
    ldh [$9c], a                                  ; $77d1: $e0 $9c
    db $fc                                        ; $77d3: $fc
    ld hl, sp-$18                                 ; $77d4: $f8 $e8
    ret nc                                        ; $77d6: $d0

    sub b                                         ; $77d7: $90
    ret nz                                        ; $77d8: $c0

    ret nz                                        ; $77d9: $c0

    nop                                           ; $77da: $00
    nop                                           ; $77db: $00
    nop                                           ; $77dc: $00
    nop                                           ; $77dd: $00
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00

    db $f2, $77, $f5, $77

    ei                                            ; $77e4: $fb
    ld [hl], a                                    ; $77e5: $77
    cp $77                                        ; $77e6: $fe $77
    add hl, bc                                    ; $77e8: $09
    ld a, b                                       ; $77e9: $78
    db $10                                        ; $77ea: $10
    ld a, b                                       ; $77eb: $78
    jr jr_024_7866                                ; $77ec: $18 $78

    inc l                                         ; $77ee: $2c
    ld a, b                                       ; $77ef: $78
    jr c, jr_024_786a                             ; $77f0: $38 $78

    nop                                           ; $77f2: $00
    rst $38                                       ; $77f3: $ff
    db $fd                                        ; $77f4: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $77fb: $02
    rst $38                                       ; $77fc: $ff
    db $fd                                        ; $77fd: $fd
    ld [bc], a                                    ; $77fe: $02
    inc c                                         ; $77ff: $0c
    inc bc                                        ; $7800: $03
    inc c                                         ; $7801: $0c
    inc b                                         ; $7802: $04
    jr jr_024_7807                                ; $7803: $18 $02

    inc c                                         ; $7805: $0c
    dec b                                         ; $7806: $05

jr_024_7807:
    inc c                                         ; $7807: $0c
    db $fd                                        ; $7808: $fd
    ld [bc], a                                    ; $7809: $02
    jr @+$05                                      ; $780a: $18 $03

    jr jr_024_7810                                ; $780c: $18 $02

    jr @-$01                                      ; $780e: $18 $fd

jr_024_7810:
    nop                                           ; $7810: $00
    ld a, [bc]                                    ; $7811: $0a
    ld b, $1e                                     ; $7812: $06 $1e
    nop                                           ; $7814: $00
    ld a, [bc]                                    ; $7815: $0a
    cp $01                                        ; $7816: $fe $01
    nop                                           ; $7818: $00
    ld a, [bc]                                    ; $7819: $0a
    rlca                                          ; $781a: $07
    ld a, [bc]                                    ; $781b: $0a
    nop                                           ; $781c: $00
    inc bc                                        ; $781d: $03
    ld [$000a], sp                                ; $781e: $08 $0a $00
    inc bc                                        ; $7821: $03
    rlca                                          ; $7822: $07
    ld a, [bc]                                    ; $7823: $0a
    nop                                           ; $7824: $00
    inc bc                                        ; $7825: $03
    ld [$000a], sp                                ; $7826: $08 $0a $00
    ld a, [bc]                                    ; $7829: $0a
    cp $01                                        ; $782a: $fe $01
    nop                                           ; $782c: $00
    ld a, [bc]                                    ; $782d: $0a
    add hl, bc                                    ; $782e: $09
    ld [$0800], sp                                ; $782f: $08 $00 $08
    add hl, bc                                    ; $7832: $09
    ld [$0a00], sp                                ; $7833: $08 $00 $0a
    cp $01                                        ; $7836: $fe $01
    ld [bc], a                                    ; $7838: $02
    ld [de], a                                    ; $7839: $12
    inc bc                                        ; $783a: $03
    ld [de], a                                    ; $783b: $12
    ld [bc], a                                    ; $783c: $02
    ld e, $05                                     ; $783d: $1e $05
    ld [de], a                                    ; $783f: $12
    db $fd                                        ; $7840: $fd
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

jr_024_7866:
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff

jr_024_786a:
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

Call_024_787f:
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

Call_024_78fc:
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

Call_024_7cd7:
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
