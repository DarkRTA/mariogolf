; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05c", ROMX[$4000], BANK[$5c]

    inc e                                         ; $4000: $1c
    ld b, b                                       ; $4001: $40
    ld b, l                                       ; $4002: $45
    ld b, h                                       ; $4003: $44
    xor h                                         ; $4004: $ac
    ld c, b                                       ; $4005: $48
    scf                                           ; $4006: $37
    ld c, l                                       ; $4007: $4d
    sub [hl]                                      ; $4008: $96
    ld d, c                                       ; $4009: $51
    ld l, $56                                     ; $400a: $2e $56
    call nz, $e05a                                ; $400c: $c4 $5a $e0
    ld e, [hl]                                    ; $400f: $5e
    ld a, [c]                                     ; $4010: $f2
    ld h, d                                       ; $4011: $62
    ld [hl+], a                                   ; $4012: $22
    ld l, b                                       ; $4013: $68
    ld sp, hl                                     ; $4014: $f9
    ld l, h                                       ; $4015: $6c
    and l                                         ; $4016: $a5
    ld [hl], c                                    ; $4017: $71
    ld a, $75                                     ; $4018: $3e $75
    cp l                                          ; $401a: $bd
    ld a, b                                       ; $401b: $78
    inc h                                         ; $401c: $24
    ld b, b                                       ; $401d: $40
    ld d, h                                       ; $401e: $54
    ld b, b                                       ; $401f: $40
    ld c, l                                       ; $4020: $4d
    ld b, d                                       ; $4021: $42
    add hl, de                                    ; $4022: $19
    ld b, h                                       ; $4023: $44
    ret nz                                        ; $4024: $c0

    rra                                           ; $4025: $1f
    adc d                                         ; $4026: $8a
    inc bc                                        ; $4027: $03
    add b                                         ; $4028: $80
    ld [bc], a                                    ; $4029: $02
    ld h, b                                       ; $402a: $60
    ld bc, $03ef                                  ; $402b: $01 $ef $03
    db $f4                                        ; $402e: $f4
    inc bc                                        ; $402f: $03
    adc d                                         ; $4030: $8a
    inc bc                                        ; $4031: $03
    add b                                         ; $4032: $80
    ld [bc], a                                    ; $4033: $02
    rra                                           ; $4034: $1f
    ld a, l                                       ; $4035: $7d
    rst $30                                       ; $4036: $f7
    ld b, h                                       ; $4037: $44
    rrca                                          ; $4038: $0f
    ld bc, $038a                                  ; $4039: $01 $8a $03
    ld [$0825], sp                                ; $403c: $08 $25 $08
    dec h                                         ; $403f: $25
    ld [$0825], sp                                ; $4040: $08 $25 $08
    dec h                                         ; $4043: $25
    ld [$0825], sp                                ; $4044: $08 $25 $08
    dec h                                         ; $4047: $25
    ld [$0825], sp                                ; $4048: $08 $25 $08
    dec h                                         ; $404b: $25
    ld [$0825], sp                                ; $404c: $08 $25 $08
    dec h                                         ; $404f: $25
    ld [$0825], sp                                ; $4050: $08 $25 $08
    dec h                                         ; $4053: $25
    db $ed                                        ; $4054: $ed
    dec bc                                        ; $4055: $0b
    rst $38                                       ; $4056: $ff
    db $ec                                        ; $4057: $ec
    ld c, h                                       ; $4058: $4c
    inc c                                         ; $4059: $0c
    rst $38                                       ; $405a: $ff
    push hl                                       ; $405b: $e5
    ld c, h                                       ; $405c: $4c
    dec bc                                        ; $405d: $0b
    dec bc                                        ; $405e: $0b
    rst $20                                       ; $405f: $e7
    inc c                                         ; $4060: $0c
    inc c                                         ; $4061: $0c
    inc l                                         ; $4062: $2c
    db $fc                                        ; $4063: $fc
    pop hl                                        ; $4064: $e1
    db $ed                                        ; $4065: $ed
    ldh [$2c], a                                  ; $4066: $e0 $2c
    inc l                                         ; $4068: $2c
    ld c, h                                       ; $4069: $4c
    ld b, a                                       ; $406a: $47
    inc c                                         ; $406b: $0c
    ld c, h                                       ; $406c: $4c
    ld c, h                                       ; $406d: $4c
    db $e3                                        ; $406e: $e3

Call_05c_406f:
    rst $20                                       ; $406f: $e7
    jp c, $c0e6                                   ; $4070: $da $e6 $c0

    rst $30                                       ; $4073: $f7
    inc c                                         ; $4074: $0c
    pop bc                                        ; $4075: $c1
    add sp, $38                                   ; $4076: $e8 $38
    ret nz                                        ; $4078: $c0

    ldh [$c5], a                                  ; $4079: $e0 $c5
    rst $28                                       ; $407b: $ef
    ret nz                                        ; $407c: $c0

    rst $20                                       ; $407d: $e7
    ld l, e                                       ; $407e: $6b
    ld l, e                                       ; $407f: $6b
    ld c, e                                       ; $4080: $4b
    rst $38                                       ; $4081: $ff
    pop hl                                        ; $4082: $e1
    ld a, a                                       ; $4083: $7f

Jump_05c_4084:
    and $e0                                       ; $4084: $e6 $e0
    ld a, e                                       ; $4086: $7b
    ld [c], a                                     ; $4087: $e2
    add c                                         ; $4088: $81
    rst $20                                       ; $4089: $e7
    ld l, h                                       ; $408a: $6c
    ldh [$c1], a                                  ; $408b: $e0 $c1
    push af                                       ; $408d: $f5
    add b                                         ; $408e: $80
    ld [c], a                                     ; $408f: $e2
    ld l, e                                       ; $4090: $6b
    ld l, e                                       ; $4091: $6b
    dec hl                                        ; $4092: $2b
    rlca                                          ; $4093: $07
    dec hl                                        ; $4094: $2b
    dec hl                                        ; $4095: $2b
    dec bc                                        ; $4096: $0b
    cp [hl]                                       ; $4097: $be
    push hl                                       ; $4098: $e5
    ld e, d                                       ; $4099: $5a
    push hl                                       ; $409a: $e5
    ld b, c                                       ; $409b: $41
    ld [c], a                                     ; $409c: $e2
    inc sp                                        ; $409d: $33
    and $c0                                       ; $409e: $e6 $c0
    ld hl, sp+$07                                 ; $40a0: $f8 $07
    ld l, e                                       ; $40a2: $6b
    ld l, e                                       ; $40a3: $6b
    dec bc                                        ; $40a4: $0b
    ret nz                                        ; $40a5: $c0

    push hl                                       ; $40a6: $e5
    ld a, l                                       ; $40a7: $7d
    db $e3                                        ; $40a8: $e3
    add hl, bc                                    ; $40a9: $09
    ldh [rNR12], a                                ; $40aa: $e0 $12
    ldh [$7f], a                                  ; $40ac: $e0 $7f
    add sp, $18                                   ; $40ae: $e8 $18
    ld b, h                                       ; $40b0: $44
    ld a, [c]                                     ; $40b1: $f2
    ld l, $e3                                     ; $40b2: $2e $e3
    ld b, h                                       ; $40b4: $44
    ldh [rOCPD], a                                ; $40b5: $e0 $6b
    dec bc                                        ; $40b7: $0b
    ret nz                                        ; $40b8: $c0

    push hl                                       ; $40b9: $e5
    ld a, h                                       ; $40ba: $7c
    ldh [$c0], a                                  ; $40bb: $e0 $c0
    db $e4                                        ; $40bd: $e4
    nop                                           ; $40be: $00
    ret nz                                        ; $40bf: $c0

    call $f6b5                                    ; $40c0: $cd $b5 $f6
    ld b, [hl]                                    ; $40c3: $46
    pop hl                                        ; $40c4: $e1
    add c                                         ; $40c5: $81
    ld [c], a                                     ; $40c6: $e2
    ld b, b                                       ; $40c7: $40
    db $e3                                        ; $40c8: $e3
    ei                                            ; $40c9: $fb
    jp nz, $e452                                  ; $40ca: $c2 $52 $e4

    ccf                                           ; $40cd: $3f
    jp hl                                         ; $40ce: $e9


    ld [bc], a                                    ; $40cf: $02
    ret nz                                        ; $40d0: $c0

    rst $30                                       ; $40d1: $f7
    dec bc                                        ; $40d2: $0b
    ret nz                                        ; $40d3: $c0

    db $e4                                        ; $40d4: $e4
    cp [hl]                                       ; $40d5: $be
    jp nz, $e5bf                                  ; $40d6: $c2 $bf $e5

    ld e, d                                       ; $40d9: $5a
    add sp, $48                                   ; $40da: $e8 $48
    pop bc                                        ; $40dc: $c1
    ld [hl], h                                    ; $40dd: $74
    jp $809a                                      ; $40de: $c3 $9a $80


    db $d3                                        ; $40e1: $d3
    ld c, e                                       ; $40e2: $4b
    ld a, a                                       ; $40e3: $7f
    pop hl                                        ; $40e4: $e1
    dec bc                                        ; $40e5: $0b

Jump_05c_40e6:
    dec hl                                        ; $40e6: $2b
    pop bc                                        ; $40e7: $c1
    db $e3                                        ; $40e8: $e3
    ld a, c                                       ; $40e9: $79
    jp Jump_000_002c                              ; $40ea: $c3 $2c $00


    push bc                                       ; $40ed: $c5
    jp $c20e                                      ; $40ee: $c3 $0e $c2


    ld c, b                                       ; $40f1: $48
    ret z                                         ; $40f2: $c8

    or l                                          ; $40f3: $b5
    db $e4                                        ; $40f4: $e4
    nop                                           ; $40f5: $00
    jp nc, $c07f                                  ; $40f6: $d2 $7f $c0

    cp [hl]                                       ; $40f9: $be
    rst $20                                       ; $40fa: $e7
    inc d                                         ; $40fb: $14
    jp $0e00                                      ; $40fc: $c3 $00 $0e


Jump_05c_40ff:
    res 6, l                                      ; $40ff: $cb $b5
    db $eb                                        ; $4101: $eb
    ret nz                                        ; $4102: $c0

    or b                                          ; $4103: $b0
    dec a                                         ; $4104: $3d
    and $c0                                       ; $4105: $e6 $c0
    di                                            ; $4107: $f3
    add e                                         ; $4108: $83
    jp nc, $aa80                                  ; $4109: $d2 $80 $aa

    dec a                                         ; $410c: $3d
    add $47                                       ; $410d: $c6 $47
    dec hl                                        ; $410f: $2b
    inc l                                         ; $4110: $2c
    ld c, e                                       ; $4111: $4b
    ld d, l                                       ; $4112: $55
    and b                                         ; $4113: $a0
    ld c, $d4                                     ; $4114: $0e $d4
    ld a, b                                       ; $4116: $78
    or c                                          ; $4117: $b1
    inc l                                         ; $4118: $2c
    rrca                                          ; $4119: $0f
    ldh [rP1], a                                  ; $411a: $e0 $00
    ld a, [hl]                                    ; $411c: $7e
    and $ef                                       ; $411d: $e6 $ef
    add b                                         ; $411f: $80
    dec bc                                        ; $4120: $0b
    and c                                         ; $4121: $a1
    rst $38                                       ; $4122: $ff

jr_05c_4123:
    rst $38                                       ; $4123: $ff
    inc hl                                        ; $4124: $23
    jp hl                                         ; $4125: $e9


    cp [hl]                                       ; $4126: $be
    db $e3                                        ; $4127: $e3
    ld a, e                                       ; $4128: $7b
    and c                                         ; $4129: $a1
    inc sp                                        ; $412a: $33

Jump_05c_412b:
    and c                                         ; $412b: $a1
    nop                                           ; $412c: $00
    ret nz                                        ; $412d: $c0

    jp nz, $ca7a                                  ; $412e: $c2 $7a $ca

    cp [hl]                                       ; $4131: $be
    add c                                         ; $4132: $81
    or [hl]                                       ; $4133: $b6
    or a                                          ; $4134: $b7
    cp [hl]                                       ; $4135: $be
    and $f4                                       ; $4136: $e6 $f4
    and c                                         ; $4138: $a1
    ld [hl], d                                    ; $4139: $72
    and b                                         ; $413a: $a0
    adc $83                                       ; $413b: $ce $83
    db $10                                        ; $413d: $10
    sub c                                         ; $413e: $91
    or d                                          ; $413f: $b2
    cp [hl]                                       ; $4140: $be
    db $fc                                        ; $4141: $fc
    ld sp, hl                                     ; $4142: $f9
    add b                                         ; $4143: $80
    ld [hl], d                                    ; $4144: $72
    and b                                         ; $4145: $a0
    inc l                                         ; $4146: $2c
    ld bc, $3ef2                                  ; $4147: $01 $f2 $3e
    add d                                         ; $414a: $82
    ld a, c                                       ; $414b: $79
    adc a                                         ; $414c: $8f
    nop                                           ; $414d: $00
    db $d3                                        ; $414e: $d3
    and d                                         ; $414f: $a2
    ld h, c                                       ; $4150: $61
    add b                                         ; $4151: $80
    ld a, [de]                                    ; $4152: $1a
    add b                                         ; $4153: $80
    db $fd                                        ; $4154: $fd
    db $e3                                        ; $4155: $e3
    sub e                                         ; $4156: $93
    sub d                                         ; $4157: $92
    ld b, c                                       ; $4158: $41
    push de                                       ; $4159: $d5
    push de                                       ; $415a: $d5
    ld [hl], b                                    ; $415b: $70
    ld b, $83                                     ; $415c: $06 $83
    nop                                           ; $415e: $00
    ld bc, $f9ed                                  ; $415f: $01 $ed $f9
    and [hl]                                      ; $4162: $a6
    ld a, [$e073]                                 ; $4163: $fa $73 $e0
    db $dd                                        ; $4166: $dd
    add l                                         ; $4167: $85
    rst $10                                       ; $4168: $d7
    push de                                       ; $4169: $d5
    ld l, [hl]                                    ; $416a: $6e
    ccf                                           ; $416b: $3f
    ld h, b                                       ; $416c: $60
    nop                                           ; $416d: $00
    ret c                                         ; $416e: $d8

    nop                                           ; $416f: $00
    ld a, e                                       ; $4170: $7b
    ld [hl], h                                    ; $4171: $74
    sbc [hl]                                      ; $4172: $9e
    ld l, e                                       ; $4173: $6b
    nop                                           ; $4174: $00
    rst $18                                       ; $4175: $df
    sbc a                                         ; $4176: $9f
    adc e                                         ; $4177: $8b
    push de                                       ; $4178: $d5
    ld l, d                                       ; $4179: $6a
    rst $10                                       ; $417a: $d7
    ld b, b                                       ; $417b: $40
    nop                                           ; $417c: $00
    rst $08                                       ; $417d: $cf
    or l                                          ; $417e: $b5
    ld [hl], a                                    ; $417f: $77
    nop                                           ; $4180: $00
    push de                                       ; $4181: $d5
    ld l, [hl]                                    ; $4182: $6e
    ld d, a                                       ; $4183: $57
    or d                                          ; $4184: $b2
    ld [hl], l                                    ; $4185: $75
    halt                                          ; $4186: $76
    push de                                       ; $4187: $d5
    ld l, a                                       ; $4188: $6f
    sub e                                         ; $4189: $93
    add e                                         ; $418a: $83
    ld d, l                                       ; $418b: $55
    ld c, [hl]                                    ; $418c: $4e
    and b                                         ; $418d: $a0
    rst $18                                       ; $418e: $df
    jr nz, jr_05c_4123                            ; $418f: $20 $92

    nop                                           ; $4191: $00
    ret nz                                        ; $4192: $c0

    db $ec                                        ; $4193: $ec
    nop                                           ; $4194: $00
    sub b                                         ; $4195: $90
    push de                                       ; $4196: $d5
    ld l, a                                       ; $4197: $6f
    sla c                                         ; $4198: $cb $21
    nop                                           ; $419a: $00
    adc $31                                       ; $419b: $ce $31
    sbc c                                         ; $419d: $99
    ld [$75df], sp                                ; $419e: $08 $df $75
    ld e, a                                       ; $41a1: $5f
    nop                                           ; $41a2: $00
    dec de                                        ; $41a3: $1b
    sbc c                                         ; $41a4: $99
    and b                                         ; $41a5: $a0
    pop de                                        ; $41a6: $d1
    jr @+$26                                      ; $41a7: $18 $24

    push de                                       ; $41a9: $d5
    ld l, a                                       ; $41aa: $6f
    add hl, de                                    ; $41ab: $19
    ld sp, $addf                                  ; $41ac: $31 $df $ad
    push de                                       ; $41af: $d5
    cp a                                          ; $41b0: $bf
    and b                                         ; $41b1: $a0
    rst $18                                       ; $41b2: $df
    nop                                           ; $41b3: $00
    ld e, d                                       ; $41b4: $5a
    daa                                           ; $41b5: $27
    push de                                       ; $41b6: $d5
    ld l, l                                       ; $41b7: $6d
    push bc                                       ; $41b8: $c5
    ld l, [hl]                                    ; $41b9: $6e
    ld [hl], l                                    ; $41ba: $75
    ld c, [hl]                                    ; $41bb: $4e
    ld bc, $a0ff                                  ; $41bc: $01 $ff $a0
    rst $18                                       ; $41bf: $df
    push de                                       ; $41c0: $d5
    or l                                          ; $41c1: $b5
    push bc                                       ; $41c2: $c5
    ld [hl], c                                    ; $41c3: $71
    nop                                           ; $41c4: $00
    inc hl                                        ; $41c5: $23
    rst $38                                       ; $41c6: $ff
    sbc [hl]                                      ; $41c7: $9e
    ld a, [$db27]                                 ; $41c8: $fa $27 $db
    ld bc, $fffd                                  ; $41cb: $01 $fd $ff
    rst $38                                       ; $41ce: $ff
    ld hl, $a79f                                  ; $41cf: $21 $9f $a7
    cp c                                          ; $41d2: $b9
    pop de                                        ; $41d3: $d1
    cp $00                                        ; $41d4: $fe $00
    halt                                          ; $41d6: $76
    add hl, sp                                    ; $41d7: $39
    dec d                                         ; $41d8: $15
    ld d, c                                       ; $41d9: $51
    dec c                                         ; $41da: $0d
    ld a, a                                       ; $41db: $7f
    and b                                         ; $41dc: $a0
    rst $38                                       ; $41dd: $ff
    ld [hl], l                                    ; $41de: $75
    ld b, e                                       ; $41df: $43
    push af                                       ; $41e0: $f5
    rst $18                                       ; $41e1: $df
    ld d, $7b                                     ; $41e2: $16 $7b
    halt                                          ; $41e4: $76
    ld [hl], b                                    ; $41e5: $70
    nop                                           ; $41e6: $00
    rst $38                                       ; $41e7: $ff
    rst $38                                       ; $41e8: $ff
    rst $38                                       ; $41e9: $ff
    rst $38                                       ; $41ea: $ff
    rst $08                                       ; $41eb: $cf
    adc b                                         ; $41ec: $88
    and b                                         ; $41ed: $a0
    rst $38                                       ; $41ee: $ff
    rst $38                                       ; $41ef: $ff
    rst $38                                       ; $41f0: $ff
    rst $38                                       ; $41f1: $ff
    rst $38                                       ; $41f2: $ff
    rst $38                                       ; $41f3: $ff
    rst $38                                       ; $41f4: $ff
    rst $38                                       ; $41f5: $ff
    rst $38                                       ; $41f6: $ff
    nop                                           ; $41f7: $00
    rst $38                                       ; $41f8: $ff
    rst $38                                       ; $41f9: $ff
    rst $38                                       ; $41fa: $ff
    rst $38                                       ; $41fb: $ff
    rst $38                                       ; $41fc: $ff
    rst $38                                       ; $41fd: $ff
    rst $38                                       ; $41fe: $ff
    rst $38                                       ; $41ff: $ff
    rst $38                                       ; $4200: $ff
    rst $38                                       ; $4201: $ff
    rst $38                                       ; $4202: $ff
    rst $38                                       ; $4203: $ff
    rst $38                                       ; $4204: $ff
    rst $38                                       ; $4205: $ff
    rst $38                                       ; $4206: $ff
    rst $38                                       ; $4207: $ff
    nop                                           ; $4208: $00
    rst $38                                       ; $4209: $ff
    rst $38                                       ; $420a: $ff
    rst $38                                       ; $420b: $ff
    rst $38                                       ; $420c: $ff
    db $e4                                        ; $420d: $e4
    ld a, a                                       ; $420e: $7f
    rst $38                                       ; $420f: $ff
    rst $38                                       ; $4210: $ff
    rst $38                                       ; $4211: $ff

Jump_05c_4212:
    rst $38                                       ; $4212: $ff
    rst $38                                       ; $4213: $ff
    rst $38                                       ; $4214: $ff
    rst $38                                       ; $4215: $ff
    rst $38                                       ; $4216: $ff
    rst $38                                       ; $4217: $ff
    rst $38                                       ; $4218: $ff
    nop                                           ; $4219: $00
    rst $38                                       ; $421a: $ff
    rst $38                                       ; $421b: $ff
    rst $38                                       ; $421c: $ff
    rst $38                                       ; $421d: $ff
    rst $38                                       ; $421e: $ff
    rst $38                                       ; $421f: $ff
    rst $38                                       ; $4220: $ff
    rst $38                                       ; $4221: $ff
    rst $38                                       ; $4222: $ff
    rst $38                                       ; $4223: $ff
    rst $38                                       ; $4224: $ff
    rst $38                                       ; $4225: $ff
    rst $38                                       ; $4226: $ff
    rst $38                                       ; $4227: $ff
    rst $38                                       ; $4228: $ff
    rst $38                                       ; $4229: $ff
    nop                                           ; $422a: $00
    rst $38                                       ; $422b: $ff
    rst $38                                       ; $422c: $ff
    rst $38                                       ; $422d: $ff
    rst $38                                       ; $422e: $ff
    rst $38                                       ; $422f: $ff
    rst $38                                       ; $4230: $ff
    rst $38                                       ; $4231: $ff
    rst $38                                       ; $4232: $ff
    rst $38                                       ; $4233: $ff
    rst $38                                       ; $4234: $ff
    rst $38                                       ; $4235: $ff
    rst $38                                       ; $4236: $ff
    rst $38                                       ; $4237: $ff
    rst $38                                       ; $4238: $ff
    rst $38                                       ; $4239: $ff
    rst $38                                       ; $423a: $ff
    nop                                           ; $423b: $00
    nop                                           ; $423c: $00
    cp a                                          ; $423d: $bf
    rst $38                                       ; $423e: $ff
    rst $38                                       ; $423f: $ff
    rst $38                                       ; $4240: $ff
    rst $38                                       ; $4241: $ff
    rst $38                                       ; $4242: $ff
    rst $38                                       ; $4243: $ff
    rst $38                                       ; $4244: $ff
    rst $38                                       ; $4245: $ff

Call_05c_4246:
    rst $38                                       ; $4246: $ff
    rst $38                                       ; $4247: $ff
    ret nz                                        ; $4248: $c0

    daa                                           ; $4249: $27
    nop                                           ; $424a: $00
    nop                                           ; $424b: $00
    nop                                           ; $424c: $00
    db $dd                                        ; $424d: $dd
    ld c, e                                       ; $424e: $4b
    rst $38                                       ; $424f: $ff
    pop hl                                        ; $4250: $e1
    ld c, h                                       ; $4251: $4c
    ld c, l                                       ; $4252: $4d
    ld hl, $e5ff                                  ; $4253: $21 $ff $e5
    add hl, bc                                    ; $4256: $09
    nop                                           ; $4257: $00
    add [hl]                                      ; $4258: $86
    rst $38                                       ; $4259: $ff
    and $90                                       ; $425a: $e6 $90
    sub b                                         ; $425c: $90
    ei                                            ; $425d: $fb

jr_05c_425e:
    pop hl                                        ; $425e: $e1
    ldh a, [$e7]                                  ; $425f: $f0 $e7
    or $f2                                        ; $4261: $f6 $f2
    jp nz, Jump_000_21eb                          ; $4263: $c2 $eb $21

    db $e3                                        ; $4266: $e3
    ld hl, $c008                                  ; $4267: $21 $08 $c0
    add sp, -$3f                                  ; $426a: $e8 $c1
    rst $38                                       ; $426c: $ff
    ret nz                                        ; $426d: $c0

    pop hl                                        ; $426e: $e1
    ld d, b                                       ; $426f: $50

jr_05c_4270:
    ld hl, $7f21                                  ; $4270: $21 $21 $7f
    scf                                           ; $4273: $37
    ld [hl], $45                                  ; $4274: $36 $45
    ld b, h                                       ; $4276: $44
    ld b, l                                       ; $4277: $45
    ld [hl], $37                                  ; $4278: $36 $37
    ld a, e                                       ; $427a: $7b
    ld [c], a                                     ; $427b: $e2
    pop af                                        ; $427c: $f1
    inc b                                         ; $427d: $04

jr_05c_427e:
    add c                                         ; $427e: $81
    rst $38                                       ; $427f: $ff
    ld l, l                                       ; $4280: $6d
    jp hl                                         ; $4281: $e9


    ld b, l                                       ; $4282: $45
    pop hl                                        ; $4283: $e1
    daa                                           ; $4284: $27
    ld h, $59                                     ; $4285: $26 $59
    ld e, e                                       ; $4287: $5b
    cp a                                          ; $4288: $bf
    ld e, e                                       ; $4289: $5b
    jr nz, jr_05c_42e9                            ; $428a: $20 $5d

    ld h, $36                                     ; $428c: $26 $36
    dec a                                         ; $428e: $3d
    add hl, sp                                    ; $428f: $39
    pop hl                                        ; $4290: $e1
    jr jr_05c_4304                                ; $4291: $18 $71

    add hl, de                                    ; $4293: $19
    ret nz                                        ; $4294: $c0

    add sp, -$01                                  ; $4295: $e8 $ff
    cp $07                                        ; $4297: $fe $07
    ldh [$37], a                                  ; $4299: $e0 $37
    ld [hl+], a                                   ; $429b: $22
    jr nz, jr_05c_425e                            ; $429c: $20 $c0

    ld [c], a                                     ; $429e: $e2
    sub a                                         ; $429f: $97
    ld e, l                                       ; $42a0: $5d
    ld e, l                                       ; $42a1: $5d
    ld [hl+], a                                   ; $42a2: $22
    cp a                                          ; $42a3: $bf
    ld [c], a                                     ; $42a4: $e2
    ld hl, $ff7f                                  ; $42a5: $21 $7f $ff
    ret nz                                        ; $42a8: $c0

    add sp, $3d                                   ; $42a9: $e8 $3d
    rla                                           ; $42ab: $17
    ld [hl], $26                                  ; $42ac: $36 $26
    jr nz, jr_05c_4270                            ; $42ae: $20 $c0

    push hl                                       ; $42b0: $e5
    jr nz, @-$3f                                  ; $42b1: $20 $bf

    db $e3                                        ; $42b3: $e3
    ret nz                                        ; $42b4: $c0

    ldh a, [$b5]                                  ; $42b5: $f0 $b5
    or $27                                        ; $42b7: $f6 $27
    ld c, [hl]                                    ; $42b9: $4e
    add hl, sp                                    ; $42ba: $39
    jr c, jr_05c_427e                             ; $42bb: $38 $c1

    db $e3                                        ; $42bd: $e3
    add b                                         ; $42be: $80
    pop hl                                        ; $42bf: $e1
    ld d, a                                       ; $42c0: $57
    cp a                                          ; $42c1: $bf
    db $e3                                        ; $42c2: $e3
    add b                                         ; $42c3: $80
    jp hl                                         ; $42c4: $e9


    xor $b4                                       ; $42c5: $ee $b4
    db $dd                                        ; $42c7: $dd
    ld c, a                                       ; $42c8: $4f
    ld hl, $8129                                  ; $42c9: $21 $29 $81
    and $57                                       ; $42cc: $e6 $57
    ld d, a                                       ; $42ce: $57
    ld e, h                                       ; $42cf: $5c
    db $e3                                        ; $42d0: $e3
    jr nz, jr_05c_42f5                            ; $42d1: $20 $22

    cp d                                          ; $42d3: $ba
    ret nz                                        ; $42d4: $c0

    ld c, h                                       ; $42d5: $4c
    ret nc                                        ; $42d6: $d0

    add hl, sp                                    ; $42d7: $39
    sub $4b                                       ; $42d8: $d6 $4b
    ld d, b                                       ; $42da: $50
    dec a                                         ; $42db: $3d
    sbc a                                         ; $42dc: $9f
    ld [hl], $44                                  ; $42dd: $36 $44

jr_05c_42df:
    ld b, h                                       ; $42df: $44
    ld b, l                                       ; $42e0: $45
    ld h, $c1                                     ; $42e1: $26 $c1
    db $e3                                        ; $42e3: $e3
    rst $38                                       ; $42e4: $ff
    ldh [rNR52], a                                ; $42e5: $e0 $26
    db $e3                                        ; $42e7: $e3
    inc l                                         ; $42e8: $2c

jr_05c_42e9:
    ld hl, $dfc5                                  ; $42e9: $21 $c5 $df
    ret nz                                        ; $42ec: $c0

    jp hl                                         ; $42ed: $e9


    push bc                                       ; $42ee: $c5
    and d                                         ; $42ef: $a2
    scf                                           ; $42f0: $37
    ld [hl], $26                                  ; $42f1: $36 $26
    dec a                                         ; $42f3: $3d
    ld e, l                                       ; $42f4: $5d

jr_05c_42f5:
    pop bc                                        ; $42f5: $c1
    ld [c], a                                     ; $42f6: $e2
    ld e, h                                       ; $42f7: $5c
    ld e, h                                       ; $42f8: $5c
    jr c, @+$3b                                   ; $42f9: $38 $39

    jp z, $9bff                                   ; $42fb: $ca $ff $9b

    and a                                         ; $42fe: $a7
    ld sp, $8652                                  ; $42ff: $31 $52 $86
    and l                                         ; $4302: $a5
    ld a, d                                       ; $4303: $7a

jr_05c_4304:
    ret nz                                        ; $4304: $c0

    ret nz                                        ; $4305: $c0

    db $e3                                        ; $4306: $e3
    ld e, h                                       ; $4307: $5c
    add hl, hl                                    ; $4308: $29
    jp z, Jump_05c_40ff                           ; $4309: $ca $ff $40

    jp z, Jump_05c_449a                           ; $430c: $ca $9a $44

    and h                                         ; $430f: $a4
    dec a                                         ; $4310: $3d
    cp a                                          ; $4311: $bf
    db $e4                                        ; $4312: $e4
    jr nz, jr_05c_4358                            ; $4313: $20 $43

    jp z, $1bbf                                   ; $4315: $ca $bf $1b

    and a                                         ; $4318: $a7
    dec de                                        ; $4319: $1b
    halt                                          ; $431a: $76
    rst $38                                       ; $431b: $ff
    ldh [rNR24], a                                ; $431c: $e0 $19
    jr jr_05c_42df                                ; $431e: $18 $bf

    add sp, $20                                   ; $4320: $e8 $20
    jr nz, jr_05c_4397                            ; $4322: $20 $73

    ret nz                                        ; $4324: $c0

    rst $38                                       ; $4325: $ff
    ld a, [c]                                     ; $4326: $f2
    db $eb                                        ; $4327: $eb
    adc h                                         ; $4328: $8c
    ld bc, $e3be                                  ; $4329: $01 $be $e3
    ld a, [hl]                                    ; $432c: $7e
    pop hl                                        ; $432d: $e1
    jr nz, jr_05c_4350                            ; $432e: $20 $20

    ld h, c                                       ; $4330: $61
    ld l, c                                       ; $4331: $69
    ld b, b                                       ; $4332: $40
    add $a2                                       ; $4333: $c6 $a2
    cp h                                          ; $4335: $bc
    adc $b6                                       ; $4336: $ce $b6
    sbc d                                         ; $4338: $9a
    cp [hl]                                       ; $4339: $be
    db $e3                                        ; $433a: $e3
    dec a                                         ; $433b: $3d
    ldh [$c1], a                                  ; $433c: $e0 $c1
    ldh [rSVBK], a                                ; $433e: $e0 $70
    adc a                                         ; $4340: $8f
    rst $38                                       ; $4341: $ff
    ld a, $7c                                     ; $4342: $3e $7c
    push af                                       ; $4344: $f5
    dec a                                         ; $4345: $3d
    ld a, [hl+]                                   ; $4346: $2a
    ld e, [hl]                                    ; $4347: $5e
    ld l, c                                       ; $4348: $69
    ld [hl], b                                    ; $4349: $70
    ret nz                                        ; $434a: $c0

    rst $38                                       ; $434b: $ff
    ld l, c                                       ; $434c: $69
    rst $38                                       ; $434d: $ff
    nop                                           ; $434e: $00
    rst $38                                       ; $434f: $ff

jr_05c_4350:
    rst $38                                       ; $4350: $ff
    cp e                                          ; $4351: $bb
    db $eb                                        ; $4352: $eb
    push de                                       ; $4353: $d5
    adc e                                         ; $4354: $8b
    ld bc, $7bf1                                  ; $4355: $01 $f1 $7b

jr_05c_4358:
    cp $cf                                        ; $4358: $fe $cf
    rst $38                                       ; $435a: $ff
    add c                                         ; $435b: $81
    rst $38                                       ; $435c: $ff
    inc l                                         ; $435d: $2c
    rst $38                                       ; $435e: $ff
    nop                                           ; $435f: $00
    ret nz                                        ; $4360: $c0

    rst $30                                       ; $4361: $f7
    db $ec                                        ; $4362: $ec
    rst $18                                       ; $4363: $df
    ld a, a                                       ; $4364: $7f
    rst $38                                       ; $4365: $ff
    add $68                                       ; $4366: $c6 $68
    rst $38                                       ; $4368: $ff
    rr a                                          ; $4369: $cb $1f
    db $fc                                        ; $436b: $fc
    sub l                                         ; $436c: $95
    ld a, [hl]                                    ; $436d: $7e
    ret nz                                        ; $436e: $c0

    rst $38                                       ; $436f: $ff
    nop                                           ; $4370: $00
    ld e, h                                       ; $4371: $5c
    rst $38                                       ; $4372: $ff
    db $dd                                        ; $4373: $dd
    rst $38                                       ; $4374: $ff
    ret nz                                        ; $4375: $c0

    rst $38                                       ; $4376: $ff
    add [hl]                                      ; $4377: $86
    rst $38                                       ; $4378: $ff
    nop                                           ; $4379: $00
    rst $18                                       ; $437a: $df
    rst $38                                       ; $437b: $ff
    rst $38                                       ; $437c: $ff
    nop                                           ; $437d: $00
    rst $38                                       ; $437e: $ff
    rst $38                                       ; $437f: $ff
    rst $38                                       ; $4380: $ff
    nop                                           ; $4381: $00
    and b                                         ; $4382: $a0
    rst $18                                       ; $4383: $df
    ld [$a0df], a                                 ; $4384: $ea $df $a0
    rst $18                                       ; $4387: $df
    ret nz                                        ; $4388: $c0

    rst $38                                       ; $4389: $ff
    and [hl]                                      ; $438a: $a6
    rst $38                                       ; $438b: $ff
    add c                                         ; $438c: $81
    xor a                                         ; $438d: $af
    xor e                                         ; $438e: $ab
    rst $38                                       ; $438f: $ff
    rst $38                                       ; $4390: $ff
    rst $38                                       ; $4391: $ff
    nop                                           ; $4392: $00
    rst $38                                       ; $4393: $ff
    rst $38                                       ; $4394: $ff
    rst $38                                       ; $4395: $ff
    rst $38                                       ; $4396: $ff

jr_05c_4397:
    rst $38                                       ; $4397: $ff
    rst $38                                       ; $4398: $ff
    rst $38                                       ; $4399: $ff
    rst $38                                       ; $439a: $ff
    daa                                           ; $439b: $27
    rst $18                                       ; $439c: $df
    ld bc, $ffff                                  ; $439d: $01 $ff $ff
    rst $38                                       ; $43a0: $ff
    ld b, d                                       ; $43a1: $42
    rst $18                                       ; $43a2: $df
    nop                                           ; $43a3: $00
    ld b, b                                       ; $43a4: $40
    rst $18                                       ; $43a5: $df
    pop de                                        ; $43a6: $d1
    rst $38                                       ; $43a7: $ff
    ld b, b                                       ; $43a8: $40
    rst $18                                       ; $43a9: $df
    rst $38                                       ; $43aa: $ff
    rst $38                                       ; $43ab: $ff
    rst $38                                       ; $43ac: $ff
    rst $38                                       ; $43ad: $ff
    ld [hl], l                                    ; $43ae: $75
    rst $38                                       ; $43af: $ff
    rst $38                                       ; $43b0: $ff
    rst $38                                       ; $43b1: $ff
    ld h, c                                       ; $43b2: $61
    rst $38                                       ; $43b3: $ff
    nop                                           ; $43b4: $00
    rst $38                                       ; $43b5: $ff
    rst $38                                       ; $43b6: $ff
    rst $38                                       ; $43b7: $ff
    rst $38                                       ; $43b8: $ff
    dec d                                         ; $43b9: $15
    sbc a                                         ; $43ba: $9f
    rst $38                                       ; $43bb: $ff
    rst $38                                       ; $43bc: $ff
    rst $38                                       ; $43bd: $ff
    rst $38                                       ; $43be: $ff
    rst $38                                       ; $43bf: $ff
    rst $38                                       ; $43c0: $ff
    rst $38                                       ; $43c1: $ff
    rst $38                                       ; $43c2: $ff
    rst $38                                       ; $43c3: $ff
    rst $38                                       ; $43c4: $ff
    nop                                           ; $43c5: $00
    rst $38                                       ; $43c6: $ff
    rst $38                                       ; $43c7: $ff
    rst $38                                       ; $43c8: $ff
    rst $38                                       ; $43c9: $ff
    rst $38                                       ; $43ca: $ff
    rst $38                                       ; $43cb: $ff
    rst $38                                       ; $43cc: $ff
    rst $38                                       ; $43cd: $ff
    rst $38                                       ; $43ce: $ff
    rst $38                                       ; $43cf: $ff
    rst $38                                       ; $43d0: $ff
    rst $38                                       ; $43d1: $ff
    rst $38                                       ; $43d2: $ff
    rst $38                                       ; $43d3: $ff
    rst $38                                       ; $43d4: $ff
    rst $38                                       ; $43d5: $ff
    nop                                           ; $43d6: $00
    rst $38                                       ; $43d7: $ff
    rst $38                                       ; $43d8: $ff
    rst $38                                       ; $43d9: $ff
    rst $38                                       ; $43da: $ff
    rst $38                                       ; $43db: $ff
    rst $38                                       ; $43dc: $ff
    rst $38                                       ; $43dd: $ff
    rst $38                                       ; $43de: $ff
    rst $38                                       ; $43df: $ff
    rst $38                                       ; $43e0: $ff
    rst $38                                       ; $43e1: $ff
    rst $38                                       ; $43e2: $ff
    rst $38                                       ; $43e3: $ff
    rst $38                                       ; $43e4: $ff
    rst $38                                       ; $43e5: $ff
    rst $38                                       ; $43e6: $ff
    nop                                           ; $43e7: $00
    rst $38                                       ; $43e8: $ff
    rst $38                                       ; $43e9: $ff
    rst $38                                       ; $43ea: $ff
    rst $38                                       ; $43eb: $ff
    rst $38                                       ; $43ec: $ff
    rst $38                                       ; $43ed: $ff
    rst $38                                       ; $43ee: $ff
    rst $38                                       ; $43ef: $ff
    rst $38                                       ; $43f0: $ff
    rst $38                                       ; $43f1: $ff
    rst $38                                       ; $43f2: $ff
    rst $38                                       ; $43f3: $ff
    rst $38                                       ; $43f4: $ff
    rst $38                                       ; $43f5: $ff
    rst $38                                       ; $43f6: $ff
    rst $38                                       ; $43f7: $ff
    nop                                           ; $43f8: $00
    rst $38                                       ; $43f9: $ff
    rst $38                                       ; $43fa: $ff
    rst $38                                       ; $43fb: $ff
    rst $38                                       ; $43fc: $ff
    rst $38                                       ; $43fd: $ff
    rst $38                                       ; $43fe: $ff

Jump_05c_43ff:
    rst $38                                       ; $43ff: $ff
    rst $38                                       ; $4400: $ff
    rst $38                                       ; $4401: $ff
    rst $38                                       ; $4402: $ff
    rst $38                                       ; $4403: $ff
    rst $38                                       ; $4404: $ff
    rst $38                                       ; $4405: $ff
    rst $38                                       ; $4406: $ff
    rst $38                                       ; $4407: $ff
    rst $38                                       ; $4408: $ff
    nop                                           ; $4409: $00
    rst $38                                       ; $440a: $ff
    rst $38                                       ; $440b: $ff
    rst $38                                       ; $440c: $ff
    rst $38                                       ; $440d: $ff
    rst $38                                       ; $440e: $ff
    rst $38                                       ; $440f: $ff
    rst $38                                       ; $4410: $ff
    rst $38                                       ; $4411: $ff
    rst $38                                       ; $4412: $ff
    rst $38                                       ; $4413: $ff
    rst $38                                       ; $4414: $ff
    ld [$0000], a                                 ; $4415: $ea $00 $00
    nop                                           ; $4418: $00
    call $ff00                                    ; $4419: $cd $00 $ff
    jp hl                                         ; $441c: $e9


    scf                                           ; $441d: $37
    ld [hl-], a                                   ; $441e: $32
    pop af                                        ; $441f: $f1
    ld [$ffff], a                                 ; $4420: $ea $ff $ff
    inc sp                                        ; $4423: $33
    ld sp, $dcfe                                  ; $4424: $31 $fe $dc
    ld a, [c]                                     ; $4427: $f2
    ld [hl], $30                                  ; $4428: $36 $30
    scf                                           ; $442a: $37
    ld h, $20                                     ; $442b: $26 $20
    daa                                           ; $442d: $27
    db $10                                        ; $442e: $10
    ei                                            ; $442f: $fb
    ld d, $17                                     ; $4430: $16 $17
    cp [hl]                                       ; $4432: $be
    or $34                                        ; $4433: $f6 $34
    ld [hl], $32                                  ; $4435: $36 $32
    jr nc, jr_05c_4470                            ; $4437: $30 $37

    rrca                                          ; $4439: $0f
    ld sp, $3133                                  ; $443a: $31 $33 $31
    inc sp                                        ; $443d: $33
    sbc h                                         ; $443e: $9c
    rst $38                                       ; $443f: $ff
    rst $38                                       ; $4440: $ff
    ei                                            ; $4441: $fb
    nop                                           ; $4442: $00
    nop                                           ; $4443: $00
    nop                                           ; $4444: $00

Call_05c_4445:
    ld c, l                                       ; $4445: $4d
    ld b, h                                       ; $4446: $44
    ld a, l                                       ; $4447: $7d
    ld b, h                                       ; $4448: $44
    or l                                          ; $4449: $b5
    ld b, [hl]                                    ; $444a: $46
    ld a, b                                       ; $444b: $78
    ld c, b                                       ; $444c: $48
    ret nz                                        ; $444d: $c0

    rra                                           ; $444e: $1f
    adc d                                         ; $444f: $8a
    inc bc                                        ; $4450: $03
    add b                                         ; $4451: $80
    ld [bc], a                                    ; $4452: $02
    ld h, b                                       ; $4453: $60
    ld bc, $03ef                                  ; $4454: $01 $ef $03
    db $f4                                        ; $4457: $f4
    inc bc                                        ; $4458: $03
    adc d                                         ; $4459: $8a
    inc bc                                        ; $445a: $03
    add b                                         ; $445b: $80
    ld [bc], a                                    ; $445c: $02
    rra                                           ; $445d: $1f
    ld [bc], a                                    ; $445e: $02
    ld c, e                                       ; $445f: $4b
    ld c, $38                                     ; $4460: $0e $38
    ld bc, $038a                                  ; $4462: $01 $8a $03
    ld [$0825], sp                                ; $4465: $08 $25 $08
    dec h                                         ; $4468: $25
    ld [$0825], sp                                ; $4469: $08 $25 $08
    dec h                                         ; $446c: $25
    ld [$0825], sp                                ; $446d: $08 $25 $08

jr_05c_4470:
    dec h                                         ; $4470: $25
    ld [$0825], sp                                ; $4471: $08 $25 $08
    dec h                                         ; $4474: $25
    ld [$0825], sp                                ; $4475: $08 $25 $08
    dec h                                         ; $4478: $25
    ld [$0825], sp                                ; $4479: $08 $25 $08
    dec h                                         ; $447c: $25
    ld e, l                                       ; $447d: $5d
    inc c                                         ; $447e: $0c
    rst $38                                       ; $447f: $ff
    add sp, $0b                                   ; $4480: $e8 $0b
    dec bc                                        ; $4482: $0b
    ld l, e                                       ; $4483: $6b
    cp $e0                                        ; $4484: $fe $e0
    dec bc                                        ; $4486: $0b
    db $ed                                        ; $4487: $ed
    db $e4                                        ; $4488: $e4
    rrca                                          ; $4489: $0f
    ld c, h                                       ; $448a: $4c
    ld c, h                                       ; $448b: $4c
    inc c                                         ; $448c: $0c
    ld c, h                                       ; $448d: $4c
    ld [c], a                                     ; $448e: $e2
    rst $20                                       ; $448f: $e7
    push af                                       ; $4490: $f5
    add sp, -$0a                                  ; $4491: $e8 $f6
    push af                                       ; $4493: $f5
    pop bc                                        ; $4494: $c1
    pop hl                                        ; $4495: $e1
    db $10                                        ; $4496: $10
    cp [hl]                                       ; $4497: $be
    ldh [$cf], a                                  ; $4498: $e0 $cf

Jump_05c_449a:
    rst $20                                       ; $449a: $e7
    cp [hl]                                       ; $449b: $be
    ldh [$a1], a                                  ; $449c: $e0 $a1
    pop hl                                        ; $449e: $e1
    inc l                                         ; $449f: $2c
    ret nz                                        ; $44a0: $c0

    rst $20                                       ; $44a1: $e7
    push af                                       ; $44a2: $f5
    ld [c], a                                     ; $44a3: $e2
    pop bc                                        ; $44a4: $c1
    or $a3                                        ; $44a5: $f6 $a3
    dec bc                                        ; $44a7: $0b
    dec hl                                        ; $44a8: $2b
    db $fc                                        ; $44a9: $fc
    ldh [$95], a                                  ; $44aa: $e0 $95
    and $80                                       ; $44ac: $e6 $80
    ld [c], a                                     ; $44ae: $e2
    inc l                                         ; $44af: $2c
    jp Jump_000_2ce0                              ; $44b0: $c3 $e0 $2c


    ld b, b                                       ; $44b3: $40
    ld a, [$f5e1]                                 ; $44b4: $fa $e1 $f5
    add sp, -$3f                                  ; $44b7: $e8 $c1
    or $fd                                        ; $44b9: $f6 $fd
    pop hl                                        ; $44bb: $e1
    adc d                                         ; $44bc: $8a
    and $40                                       ; $44bd: $e6 $40

jr_05c_44bf:
    ld [c], a                                     ; $44bf: $e2
    inc l                                         ; $44c0: $2c
    ret nz                                        ; $44c1: $c0

    ld [c], a                                     ; $44c2: $e2
    jr c, jr_05c_44bf                             ; $44c3: $38 $fa

    pop hl                                        ; $44c5: $e1
    push af                                       ; $44c6: $f5
    add sp, $43                                   ; $44c7: $e8 $43
    push af                                       ; $44c9: $f5
    ld l, e                                       ; $44ca: $6b
    ld c, e                                       ; $44cb: $4b
    ld c, e                                       ; $44cc: $4b
    inc bc                                        ; $44cd: $03
    and $40                                       ; $44ce: $e6 $40
    db $e4                                        ; $44d0: $e4
    ld b, b                                       ; $44d1: $40
    sub d                                         ; $44d2: $92
    ld [c], a                                     ; $44d3: $e2
    cp e                                          ; $44d4: $bb
    ld [c], a                                     ; $44d5: $e2
    push af                                       ; $44d6: $f5
    add sp, $3b                                   ; $44d7: $e8 $3b
    db $e4                                        ; $44d9: $e4
    inc [hl]                                      ; $44da: $34
    ld [$e2c1], a                                 ; $44db: $ea $c1 $e2
    dec hl                                        ; $44de: $2b
    ld b, b                                       ; $44df: $40
    ldh [rNR41], a                                ; $44e0: $e0 $20
    adc $c8                                       ; $44e2: $ce $c8
    ret nz                                        ; $44e4: $c0

    call nz, $e38c                                ; $44e5: $c4 $8c $e3
    push af                                       ; $44e8: $f5
    add sp, -$7e                                  ; $44e9: $e8 $82
    db $f4                                        ; $44eb: $f4
    dec hl                                        ; $44ec: $2b
    rst $38                                       ; $44ed: $ff
    ldh [$80], a                                  ; $44ee: $e0 $80
    db $ec                                        ; $44f0: $ec
    nop                                           ; $44f1: $00
    ld a, a                                       ; $44f2: $7f
    rst $18                                       ; $44f3: $df
    ld b, e                                       ; $44f4: $43
    add sp, $7f                                   ; $44f5: $e8 $7f
    pop hl                                        ; $44f7: $e1
    add b                                         ; $44f8: $80
    db $ed                                        ; $44f9: $ed
    ret nz                                        ; $44fa: $c0

    pop hl                                        ; $44fb: $e1
    add b                                         ; $44fc: $80
    db $e4                                        ; $44fd: $e4
    push af                                       ; $44fe: $f5
    rst $20                                       ; $44ff: $e7
    inc b                                         ; $4500: $04
    ld a, [c]                                     ; $4501: $f2
    ret nz                                        ; $4502: $c0

    ret nz                                        ; $4503: $c0

    push hl                                       ; $4504: $e5
    jp nz, $c0c5                                  ; $4505: $c2 $c5 $c0

    rst $38                                       ; $4508: $ff
    add $a5                                       ; $4509: $c6 $a5
    ld a, [bc]                                    ; $450b: $0a
    ldh [$c1], a                                  ; $450c: $e0 $c1
    pop hl                                        ; $450e: $e1
    dec hl                                        ; $450f: $2b
    dec bc                                        ; $4510: $0b
    dec b                                         ; $4511: $05
    ld c, e                                       ; $4512: $4b
    add b                                         ; $4513: $80
    pop hl                                        ; $4514: $e1
    inc l                                         ; $4515: $2c
    ld c, l                                       ; $4516: $4d
    push hl                                       ; $4517: $e5
    nop                                           ; $4518: $00
    rst $00                                       ; $4519: $c7
    ret nz                                        ; $451a: $c0

    cp d                                          ; $451b: $ba
    ld c, c                                       ; $451c: $49
    pop bc                                        ; $451d: $c1
    add d                                         ; $451e: $82
    ldh [rSC], a                                  ; $451f: $e0 $02
    inc b                                         ; $4521: $04
    ret nz                                        ; $4522: $c0

    dec hl                                        ; $4523: $2b
    ret nz                                        ; $4524: $c0

    ld [c], a                                     ; $4525: $e2
    ld a, a                                       ; $4526: $7f
    rst $20                                       ; $4527: $e7
    add b                                         ; $4528: $80
    cp d                                          ; $4529: $ba
    or a                                          ; $452a: $b7
    and [hl]                                      ; $452b: $a6
    pop bc                                        ; $452c: $c1
    ld [c], a                                     ; $452d: $e2
    inc b                                         ; $452e: $04
    jp nz, Jump_05c_4212                          ; $452f: $c2 $12 $42

    ret nz                                        ; $4532: $c0

    dec hl                                        ; $4533: $2b
    ccf                                           ; $4534: $3f
    ret nz                                        ; $4535: $c0

    ld a, a                                       ; $4536: $7f
    ld [c], a                                     ; $4537: $e2
    ld c, h                                       ; $4538: $4c
    rst $38                                       ; $4539: $ff
    ld [c], a                                     ; $453a: $e2
    ld c, d                                       ; $453b: $4a
    xor d                                         ; $453c: $aa
    ccf                                           ; $453d: $3f
    or h                                          ; $453e: $b4
    nop                                           ; $453f: $00
    dec c                                         ; $4540: $0d
    ret nz                                        ; $4541: $c0

    add l                                         ; $4542: $85
    jp nz, $e0c0                                  ; $4543: $c2 $c0 $e0

    ld a, a                                       ; $4546: $7f
    jp $c5fe                                      ; $4547: $c3 $fe $c5


    ld b, b                                       ; $454a: $40
    and d                                         ; $454b: $a2
    ret nz                                        ; $454c: $c0

    rst $20                                       ; $454d: $e7
    inc [hl]                                      ; $454e: $34
    jp hl                                         ; $454f: $e9


    inc h                                         ; $4550: $24
    call z, $8a8a                                 ; $4551: $cc $8a $8a
    ldh [$2b], a                                  ; $4554: $e0 $2b
    ld b, h                                       ; $4556: $44
    ret nz                                        ; $4557: $c0

    ccf                                           ; $4558: $3f
    pop hl                                        ; $4559: $e1
    dec hl                                        ; $455a: $2b
    ld a, a                                       ; $455b: $7f
    push hl                                       ; $455c: $e5
    add e                                         ; $455d: $83
    ld [c], a                                     ; $455e: $e2
    nop                                           ; $455f: $00
    add b                                         ; $4560: $80
    ld hl, sp-$07                                 ; $4561: $f8 $f9
    adc b                                         ; $4563: $88
    ld c, b                                       ; $4564: $48
    ldh [$c6], a                                  ; $4565: $e0 $c6
    pop hl                                        ; $4567: $e1
    rst $38                                       ; $4568: $ff
    jp nz, $8081                                  ; $4569: $c2 $81 $80

    cp $c2                                        ; $456c: $fe $c2
    ld c, c                                       ; $456e: $49
    db $e3                                        ; $456f: $e3
    nop                                           ; $4570: $00
    dec a                                         ; $4571: $3d
    db $e4                                        ; $4572: $e4
    add b                                         ; $4573: $80
    pop af                                        ; $4574: $f1
    ld sp, hl                                     ; $4575: $f9
    adc b                                         ; $4576: $88
    rlca                                          ; $4577: $07
    db $e4                                        ; $4578: $e4
    add $81                                       ; $4579: $c6 $81
    ld b, h                                       ; $457b: $44
    add c                                         ; $457c: $81
    cp $c2                                        ; $457d: $fe $c2
    sub a                                         ; $457f: $97
    add [hl]                                      ; $4580: $86
    nop                                           ; $4581: $00
    ret nz                                        ; $4582: $c0

    or $f9                                        ; $4583: $f6 $f9
    add a                                         ; $4585: $87
    ld a, [de]                                    ; $4586: $1a
    jp nz, $e3fb                                  ; $4587: $c2 $fb $e3

    di                                            ; $458a: $f3
    db $eb                                        ; $458b: $eb
    add d                                         ; $458c: $82
    ld [$8c03], a                                 ; $458d: $ea $03 $8c
    cp d                                          ; $4590: $ba
    adc l                                         ; $4591: $8d
    nop                                           ; $4592: $00
    push de                                       ; $4593: $d5
    ld l, l                                       ; $4594: $6d
    db $d3                                        ; $4595: $d3
    ld a, h                                       ; $4596: $7c
    ld a, d                                       ; $4597: $7a
    adc l                                         ; $4598: $8d
    rst $08                                       ; $4599: $cf
    jp $ebfc                                      ; $459a: $c3 $fc $eb


    db $d3                                        ; $459d: $d3
    ld h, a                                       ; $459e: $67
    call z, $b475                                 ; $459f: $cc $75 $b4
    ld l, b                                       ; $45a2: $68
    ld [$c20d], sp                                ; $45a3: $08 $0d $c2
    ret nc                                        ; $45a6: $d0

    add h                                         ; $45a7: $84
    res 0, e                                      ; $45a8: $cb $83
    ld c, h                                       ; $45aa: $4c
    db $d3                                        ; $45ab: $d3
    ld h, a                                       ; $45ac: $67
    call z, $fa6f                                 ; $45ad: $cc $6f $fa
    ld h, e                                       ; $45b0: $63
    ret nz                                        ; $45b1: $c0

    jp hl                                         ; $45b2: $e9


    nop                                           ; $45b3: $00
    ld d, b                                       ; $45b4: $50
    call nz, $e6fb                                ; $45b5: $c4 $fb $e6
    add a                                         ; $45b8: $87
    ld h, b                                       ; $45b9: $60
    db $d3                                        ; $45ba: $d3
    ld h, [hl]                                    ; $45bb: $66
    call z, Call_05c_406f                         ; $45bc: $cc $6f $40
    rst $28                                       ; $45bf: $ef
    jp c, $8dd9                                   ; $45c0: $da $d9 $8d

    halt                                          ; $45c3: $76
    nop                                           ; $45c4: $00
    add b                                         ; $45c5: $80
    db $eb                                        ; $45c6: $eb
    ld c, [hl]                                    ; $45c7: $4e
    and e                                         ; $45c8: $a3
    ld c, c                                       ; $45c9: $49
    and e                                         ; $45ca: $a3
    ret z                                         ; $45cb: $c8

    push hl                                       ; $45cc: $e5
    add c                                         ; $45cd: $81
    di                                            ; $45ce: $f3
    pop bc                                        ; $45cf: $c1
    rst $28                                       ; $45d0: $ef
    cp h                                          ; $45d1: $bc
    ld [$abc8], a                                 ; $45d2: $ea $c8 $ab
    nop                                           ; $45d5: $00
    rst $38                                       ; $45d6: $ff
    rst $38                                       ; $45d7: $ff
    pop de                                        ; $45d8: $d1
    add a                                         ; $45d9: $87
    ld c, c                                       ; $45da: $49
    and e                                         ; $45db: $a3
    adc b                                         ; $45dc: $88
    ld h, l                                       ; $45dd: $65
    ld bc, $eeee                                  ; $45de: $01 $ee $ee
    adc h                                         ; $45e1: $8c
    rst $38                                       ; $45e2: $ff
    call z, $83d3                                 ; $45e3: $cc $d3 $83
    nop                                           ; $45e6: $00
    adc e                                         ; $45e7: $8b
    add e                                         ; $45e8: $83
    inc de                                        ; $45e9: $13
    ld l, c                                       ; $45ea: $69
    add c                                         ; $45eb: $81
    ld l, b                                       ; $45ec: $68
    ld l, [hl]                                    ; $45ed: $6e
    adc h                                         ; $45ee: $8c
    nop                                           ; $45ef: $00
    res 7, l                                      ; $45f0: $cb $bd
    and $de                                       ; $45f2: $e6 $de
    push de                                       ; $45f4: $d5
    dec hl                                        ; $45f5: $2b
    add [hl]                                      ; $45f6: $86
    jr nz, @+$01                                  ; $45f7: $20 $ff

    call nc, $90a3                                ; $45f9: $d4 $a3 $90
    jp c, $bfd1                                   ; $45fc: $da $d1 $bf

    db $d3                                        ; $45ff: $d3
    ld e, h                                       ; $4600: $5c
    ld hl, $560b                                  ; $4601: $21 $0b $56
    ld hl, $23b9                                  ; $4604: $21 $b9 $23
    nop                                           ; $4607: $00
    ret nz                                        ; $4608: $c0

    adc $ee                                       ; $4609: $ce $ee
    sbc d                                         ; $460b: $9a
    rst $20                                       ; $460c: $e7
    call $90c6                                    ; $460d: $cd $c6 $90
    add a                                         ; $4610: $87
    ld [hl], $e7                                  ; $4611: $36 $e7
    ret nc                                        ; $4613: $d0

    jp c, $e7d4                                   ; $4614: $da $d4 $e7

    rst $18                                       ; $4617: $df
    nop                                           ; $4618: $00
    ld [hl-], a                                   ; $4619: $32
    xor c                                         ; $461a: $a9
    rst $38                                       ; $461b: $ff
    rst $38                                       ; $461c: $ff
    rst $20                                       ; $461d: $e7
    ret c                                         ; $461e: $d8

    ret nz                                        ; $461f: $c0

    rst $38                                       ; $4620: $ff
    rst $20                                       ; $4621: $e7
    reti                                          ; $4622: $d9


    jp nz, $e7ff                                  ; $4623: $c2 $ff $e7

    rst $18                                       ; $4626: $df
    rst $38                                       ; $4627: $ff
    rst $38                                       ; $4628: $ff
    nop                                           ; $4629: $00
    rst $38                                       ; $462a: $ff
    rst $38                                       ; $462b: $ff
    rst $38                                       ; $462c: $ff
    rst $38                                       ; $462d: $ff
    rst $38                                       ; $462e: $ff
    rst $38                                       ; $462f: $ff
    ld c, h                                       ; $4630: $4c
    rst $38                                       ; $4631: $ff
    rst $38                                       ; $4632: $ff
    rst $38                                       ; $4633: $ff
    ret nz                                        ; $4634: $c0

    rst $38                                       ; $4635: $ff
    rst $38                                       ; $4636: $ff
    rst $38                                       ; $4637: $ff
    rst $38                                       ; $4638: $ff
    rst $38                                       ; $4639: $ff
    add b                                         ; $463a: $80
    rst $38                                       ; $463b: $ff
    rst $38                                       ; $463c: $ff
    rst $38                                       ; $463d: $ff
    rst $38                                       ; $463e: $ff
    rst $38                                       ; $463f: $ff
    rst $38                                       ; $4640: $ff
    dec sp                                        ; $4641: $3b
    ld a, d                                       ; $4642: $7a
    db $fc                                        ; $4643: $fc

jr_05c_4644:
    rst $20                                       ; $4644: $e7
    jp nc, $e57a                                  ; $4645: $d2 $7a $e5

    sbc $2c                                       ; $4648: $de $2c
    db $10                                        ; $464a: $10
    jp nc, $bf7a                                  ; $464b: $d2 $7a $bf

    sub c                                         ; $464e: $91
    db $eb                                        ; $464f: $eb
    sbc a                                         ; $4650: $9f
    ret nz                                        ; $4651: $c0

    ld [hl], l                                    ; $4652: $75
    inc l                                         ; $4653: $2c
    inc bc                                        ; $4654: $03
    add c                                         ; $4655: $81
    dec d                                         ; $4656: $15
    jr nc, jr_05c_4644                            ; $4657: $30 $eb

    sub b                                         ; $4659: $90
    nop                                           ; $465a: $00
    ret nz                                        ; $465b: $c0

    ld [hl], d                                    ; $465c: $72
    ret z                                         ; $465d: $c8

    inc b                                         ; $465e: $04
    ld d, a                                       ; $465f: $57
    db $eb                                        ; $4660: $eb
    db $eb                                        ; $4661: $eb
    sub e                                         ; $4662: $93
    xor [hl]                                      ; $4663: $ae
    ld [de], a                                    ; $4664: $12
    ld e, $f2                                     ; $4665: $1e $f2
    jp nc, $c070                                  ; $4667: $d2 $70 $c0

    ld [hl], a                                    ; $466a: $77
    nop                                           ; $466b: $00
    call c, Call_000_05df                         ; $466c: $dc $df $05
    ld e, l                                       ; $466f: $5d
    jp c, $81ff                                   ; $4670: $da $ff $81

    rst $18                                       ; $4673: $df
    rst $38                                       ; $4674: $ff
    rst $38                                       ; $4675: $ff
    ret nz                                        ; $4676: $c0

    rst $38                                       ; $4677: $ff
    rst $38                                       ; $4678: $ff
    rst $38                                       ; $4679: $ff
    rst $38                                       ; $467a: $ff
    rst $38                                       ; $467b: $ff
    nop                                           ; $467c: $00
    rst $38                                       ; $467d: $ff
    rst $38                                       ; $467e: $ff
    rst $38                                       ; $467f: $ff
    rst $38                                       ; $4680: $ff
    rst $38                                       ; $4681: $ff
    rst $38                                       ; $4682: $ff
    rst $38                                       ; $4683: $ff
    rst $38                                       ; $4684: $ff
    rst $38                                       ; $4685: $ff
    rst $38                                       ; $4686: $ff
    rst $38                                       ; $4687: $ff
    rst $38                                       ; $4688: $ff
    rst $38                                       ; $4689: $ff
    rst $38                                       ; $468a: $ff
    rst $38                                       ; $468b: $ff
    rst $38                                       ; $468c: $ff
    nop                                           ; $468d: $00
    rst $38                                       ; $468e: $ff
    rst $38                                       ; $468f: $ff
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    rst $38                                       ; $4692: $ff
    rst $38                                       ; $4693: $ff
    rst $38                                       ; $4694: $ff
    rst $38                                       ; $4695: $ff
    rst $38                                       ; $4696: $ff
    rst $38                                       ; $4697: $ff
    rst $38                                       ; $4698: $ff
    rst $38                                       ; $4699: $ff
    rst $38                                       ; $469a: $ff
    rst $38                                       ; $469b: $ff
    rst $38                                       ; $469c: $ff
    rst $38                                       ; $469d: $ff
    nop                                           ; $469e: $00
    rst $38                                       ; $469f: $ff
    rst $38                                       ; $46a0: $ff
    rst $38                                       ; $46a1: $ff
    rst $38                                       ; $46a2: $ff
    cp a                                          ; $46a3: $bf
    ld l, h                                       ; $46a4: $6c
    rst $38                                       ; $46a5: $ff
    rst $38                                       ; $46a6: $ff
    rst $38                                       ; $46a7: $ff
    rst $38                                       ; $46a8: $ff
    rst $38                                       ; $46a9: $ff
    rst $38                                       ; $46aa: $ff
    rst $38                                       ; $46ab: $ff
    rst $38                                       ; $46ac: $ff
    rst $38                                       ; $46ad: $ff
    rst $38                                       ; $46ae: $ff
    nop                                           ; $46af: $00
    db $fd                                        ; $46b0: $fd
    ld [hl], b                                    ; $46b1: $70
    nop                                           ; $46b2: $00
    nop                                           ; $46b3: $00
    nop                                           ; $46b4: $00
    db $fd                                        ; $46b5: $fd
    jr nz, @+$01                                  ; $46b6: $20 $ff

    rst $20                                       ; $46b8: $e7

jr_05c_46b9:
    ld c, $31                                     ; $46b9: $0e $31
    ld sp, $5b60                                  ; $46bb: $31 $60 $5b
    ld e, a                                       ; $46be: $5f
    adc a                                         ; $46bf: $8f
    ld sp, $2931                                  ; $46c0: $31 $31 $29
    nop                                           ; $46c3: $00
    rst $38                                       ; $46c4: $ff
    rst $38                                       ; $46c5: $ff
    rst $20                                       ; $46c6: $e7
    and $c1                                       ; $46c7: $e6 $c1
    db $ec                                        ; $46c9: $ec
    ld e, e                                       ; $46ca: $5b
    rst $08                                       ; $46cb: $cf
    ld e, [hl]                                    ; $46cc: $5e
    ld sp, $2129                                  ; $46cd: $31 $29 $21
    jp z, $c0ff                                   ; $46d0: $ca $ff $c0

    ldh a, [rIF]                                  ; $46d3: $f0 $0f
    ld sp, $818a                                  ; $46d5: $31 $8a $81
    pop hl                                        ; $46d8: $e1
    ld h, b                                       ; $46d9: $60
    pop bc                                        ; $46da: $c1
    ldh [rNR41], a                                ; $46db: $e0 $20
    jp z, $80ff                                   ; $46dd: $ca $ff $80

    rst $28                                       ; $46e0: $ef
    pop bc                                        ; $46e1: $c1
    pop hl                                        ; $46e2: $e1
    ld sp, $31c3                                  ; $46e3: $31 $c3 $31
    ld h, d                                       ; $46e6: $62
    pop bc                                        ; $46e7: $c1
    pop hl                                        ; $46e8: $e1
    ret nz                                        ; $46e9: $c0

    rst $38                                       ; $46ea: $ff
    ld b, b                                       ; $46eb: $40
    rst $28                                       ; $46ec: $ef
    add d                                         ; $46ed: $82
    ldh [rKEY1], a                                ; $46ee: $e0 $4d
    ld b, [hl]                                    ; $46f0: $46
    ccf                                           ; $46f1: $3f
    ld d, h                                       ; $46f2: $54
    inc a                                         ; $46f3: $3c
    ld sp, $2b31                                  ; $46f4: $31 $31 $2b
    jr z, jr_05c_46b9                             ; $46f7: $28 $c0

    rst $38                                       ; $46f9: $ff
    nop                                           ; $46fa: $00
    rst $28                                       ; $46fb: $ef
    ld a, $c5                                     ; $46fc: $3e $c5
    ret nz                                        ; $46fe: $c0

    ld c, l                                       ; $46ff: $4d
    ld [hl-], a                                   ; $4700: $32
    jr nc, @+$32                                  ; $4701: $30 $30

    ld d, e                                       ; $4703: $53
    ret nz                                        ; $4704: $c0

    rst $38                                       ; $4705: $ff
    ret nz                                        ; $4706: $c0

    jp nc, $c130                                  ; $4707: $d2 $30 $c1

    db $e4                                        ; $470a: $e4
    ret nz                                        ; $470b: $c0

    rst $38                                       ; $470c: $ff
    add b                                         ; $470d: $80
    db $d3                                        ; $470e: $d3
    add d                                         ; $470f: $82
    db $e3                                        ; $4710: $e3
    ld h, a                                       ; $4711: $67
    ld l, d                                       ; $4712: $6a
    ret nz                                        ; $4713: $c0

    rst $38                                       ; $4714: $ff
    ld b, b                                       ; $4715: $40
    pop de                                        ; $4716: $d1
    cp e                                          ; $4717: $bb
    ld a, [bc]                                    ; $4718: $0a
    dec bc                                        ; $4719: $0b
    pop bc                                        ; $471a: $c1
    db $e3                                        ; $471b: $e3
    ld l, l                                       ; $471c: $6d
    ld h, a                                       ; $471d: $67
    ld h, l                                       ; $471e: $65
    ret nz                                        ; $471f: $c0

    ldh [rNR22], a                                ; $4720: $e0 $17
    ldh a, [$c0]                                  ; $4722: $f0 $c0
    rst $38                                       ; $4724: $ff
    db $eb                                        ; $4725: $eb
    ld [$e1c2], a                                 ; $4726: $ea $c2 $e1
    add d                                         ; $4729: $82
    ld [c], a                                     ; $472a: $e2
    jr nc, jr_05c_475d                            ; $472b: $30 $30

    ld l, h                                       ; $472d: $6c
    ld l, h                                       ; $472e: $6c
    rra                                           ; $472f: $1f
    ld d, d                                       ; $4730: $52
    ld sp, $1531                                  ; $4731: $31 $31 $15
    ld d, $c0                                     ; $4734: $16 $c0
    rst $38                                       ; $4736: $ff
    ld [$49e9], a                                 ; $4737: $ea $e9 $49
    pop bc                                        ; $473a: $c1
    ld a, [hl]                                    ; $473b: $7e
    push bc                                       ; $473c: $c5
    ret nz                                        ; $473d: $c0

    ld l, d                                       ; $473e: $6a
    ld l, l                                       ; $473f: $6d
    jr nc, jr_05c_4772                            ; $4740: $30 $30

    ld l, l                                       ; $4742: $6d
    ld h, a                                       ; $4743: $67
    ret nz                                        ; $4744: $c0

    ldh [$f0], a                                  ; $4745: $e0 $f0
    ld a, a                                       ; $4747: $7f
    pop hl                                        ; $4748: $e1
    jp z, $c0ff                                   ; $4749: $ca $ff $c0

    ld [$c186], a                                 ; $474c: $ea $86 $c1
    ld l, d                                       ; $474f: $6a
    ld l, d                                       ; $4750: $6a
    ld l, e                                       ; $4751: $6b
    ld l, l                                       ; $4752: $6d
    adc a                                         ; $4753: $8f
    ld h, a                                       ; $4754: $67
    jr nc, jr_05c_47aa                            ; $4755: $30 $53

    xor h                                         ; $4757: $ac
    ld a, a                                       ; $4758: $7f
    ld [c], a                                     ; $4759: $e2
    jp z, $e8ff                                   ; $475a: $ca $ff $e8

jr_05c_475d:
    rst $20                                       ; $475d: $e7
    ld h, d                                       ; $475e: $62
    ld [hl], a                                    ; $475f: $77
    ld sp, $3931                                  ; $4760: $31 $31 $39
    add [hl]                                      ; $4763: $86
    ret nz                                        ; $4764: $c0

    jr nc, jr_05c_47d0                            ; $4765: $30 $69

    ld l, e                                       ; $4767: $6b
    ld a, $e0                                     ; $4768: $3e $e0
    jp $8153                                      ; $476a: $c3 $53 $81


    ld a, a                                       ; $476d: $7f
    ld [c], a                                     ; $476e: $e2
    jp z, $e8ff                                   ; $476f: $ca $ff $e8

jr_05c_4772:
    rst $20                                       ; $4772: $e7
    ld c, [hl]                                    ; $4773: $4e
    and b                                         ; $4774: $a0
    inc a                                         ; $4775: $3c
    ld [hl], $0c                                  ; $4776: $36 $0c
    ret nz                                        ; $4778: $c0

    ld [c], a                                     ; $4779: $e2
    ld b, b                                       ; $477a: $40
    ret nz                                        ; $477b: $c0

    add e                                         ; $477c: $83
    xor c                                         ; $477d: $a9
    ld a, a                                       ; $477e: $7f
    ld [c], a                                     ; $477f: $e2
    jp z, $c0ff                                   ; $4780: $ca $ff $c0

    add sp, $0d                                   ; $4783: $e8 $0d
    and b                                         ; $4785: $a0
    ld [hl], a                                    ; $4786: $77
    ld b, a                                       ; $4787: $47
    ld b, [hl]                                    ; $4788: $46
    ld [hl], $c0                                  ; $4789: $36 $c0
    ld [c], a                                     ; $478b: $e2
    ld [hl], e                                    ; $478c: $73
    ld a, c                                       ; $478d: $79
    add b                                         ; $478e: $80
    ld a, a                                       ; $478f: $7f
    ld [c], a                                     ; $4790: $e2
    call c, $ffca                                 ; $4791: $dc $ca $ff
    ret nz                                        ; $4794: $c0

    jp hl                                         ; $4795: $e9


    ld e, e                                       ; $4796: $5b
    ld e, h                                       ; $4797: $5c
    ld e, l                                       ; $4798: $5d
    cp [hl]                                       ; $4799: $be
    ldh [rHDMA4], a                               ; $479a: $e0 $54
    ld d, h                                       ; $479c: $54
    rra                                           ; $479d: $1f
    ld d, l                                       ; $479e: $55
    ld l, [hl]                                    ; $479f: $6e
    ld a, c                                       ; $47a0: $79
    add b                                         ; $47a1: $80
    add b                                         ; $47a2: $80
    ld a, a                                       ; $47a3: $7f
    ld [c], a                                     ; $47a4: $e2
    jp z, $ffff                                   ; $47a5: $ca $ff $ff

    rst $38                                       ; $47a8: $ff
    nop                                           ; $47a9: $00

jr_05c_47aa:
    rst $38                                       ; $47aa: $ff
    rst $38                                       ; $47ab: $ff
    rst $38                                       ; $47ac: $ff
    rst $38                                       ; $47ad: $ff
    rst $38                                       ; $47ae: $ff
    rst $38                                       ; $47af: $ff
    rst $38                                       ; $47b0: $ff
    rst $38                                       ; $47b1: $ff
    rst $38                                       ; $47b2: $ff
    rst $38                                       ; $47b3: $ff
    rst $38                                       ; $47b4: $ff
    rst $38                                       ; $47b5: $ff
    rst $38                                       ; $47b6: $ff
    rst $38                                       ; $47b7: $ff
    rst $38                                       ; $47b8: $ff
    rst $38                                       ; $47b9: $ff
    nop                                           ; $47ba: $00
    rst $38                                       ; $47bb: $ff
    rst $38                                       ; $47bc: $ff
    rst $38                                       ; $47bd: $ff
    rst $38                                       ; $47be: $ff
    rst $38                                       ; $47bf: $ff
    rst $38                                       ; $47c0: $ff
    rst $38                                       ; $47c1: $ff
    rst $38                                       ; $47c2: $ff
    rst $38                                       ; $47c3: $ff
    rst $38                                       ; $47c4: $ff
    rst $38                                       ; $47c5: $ff
    rst $38                                       ; $47c6: $ff
    rst $38                                       ; $47c7: $ff
    rst $38                                       ; $47c8: $ff
    rst $38                                       ; $47c9: $ff
    rst $38                                       ; $47ca: $ff
    add b                                         ; $47cb: $80
    rst $38                                       ; $47cc: $ff
    rst $38                                       ; $47cd: $ff
    rst $38                                       ; $47ce: $ff
    rst $38                                       ; $47cf: $ff

jr_05c_47d0:
    rst $38                                       ; $47d0: $ff
    rst $38                                       ; $47d1: $ff
    rst $38                                       ; $47d2: $ff
    rst $38                                       ; $47d3: $ff
    rst $38                                       ; $47d4: $ff
    rst $38                                       ; $47d5: $ff
    rst $38                                       ; $47d6: $ff
    rst $38                                       ; $47d7: $ff
    push hl                                       ; $47d8: $e5
    db $e4                                        ; $47d9: $e4
    and l                                         ; $47da: $a5
    ld a, [hl]                                    ; $47db: $7e
    db $dd                                        ; $47dc: $dd
    pop hl                                        ; $47dd: $e1
    xor d                                         ; $47de: $aa
    xor e                                         ; $47df: $ab
    xor h                                         ; $47e0: $ac
    xor l                                         ; $47e1: $ad
    xor [hl]                                      ; $47e2: $ae
    xor a                                         ; $47e3: $af
    db $d3                                        ; $47e4: $d3
    rst $38                                       ; $47e5: $ff
    nop                                           ; $47e6: $00
    rst $38                                       ; $47e7: $ff
    rst $38                                       ; $47e8: $ff
    rst $38                                       ; $47e9: $ff
    rst $38                                       ; $47ea: $ff
    rst $38                                       ; $47eb: $ff
    rst $38                                       ; $47ec: $ff
    rst $38                                       ; $47ed: $ff
    rst $38                                       ; $47ee: $ff
    rst $38                                       ; $47ef: $ff
    rst $38                                       ; $47f0: $ff
    rst $38                                       ; $47f1: $ff
    rst $38                                       ; $47f2: $ff
    rst $38                                       ; $47f3: $ff
    rst $38                                       ; $47f4: $ff
    rst $38                                       ; $47f5: $ff
    rst $38                                       ; $47f6: $ff
    nop                                           ; $47f7: $00
    rst $38                                       ; $47f8: $ff
    rst $38                                       ; $47f9: $ff
    rst $38                                       ; $47fa: $ff
    rst $38                                       ; $47fb: $ff
    rst $38                                       ; $47fc: $ff
    rst $38                                       ; $47fd: $ff
    rst $38                                       ; $47fe: $ff
    rst $38                                       ; $47ff: $ff
    rst $38                                       ; $4800: $ff
    rst $38                                       ; $4801: $ff
    rst $38                                       ; $4802: $ff
    rst $38                                       ; $4803: $ff
    rst $38                                       ; $4804: $ff
    rst $38                                       ; $4805: $ff
    rst $38                                       ; $4806: $ff
    rst $38                                       ; $4807: $ff
    nop                                           ; $4808: $00
    rst $38                                       ; $4809: $ff
    rst $38                                       ; $480a: $ff
    rst $38                                       ; $480b: $ff
    rst $38                                       ; $480c: $ff
    rst $38                                       ; $480d: $ff
    rst $38                                       ; $480e: $ff

Call_05c_480f:
    rst $38                                       ; $480f: $ff
    rst $38                                       ; $4810: $ff
    rst $38                                       ; $4811: $ff
    rst $38                                       ; $4812: $ff
    rst $38                                       ; $4813: $ff
    rst $38                                       ; $4814: $ff
    rst $38                                       ; $4815: $ff
    rst $38                                       ; $4816: $ff
    rst $38                                       ; $4817: $ff
    rst $38                                       ; $4818: $ff
    nop                                           ; $4819: $00
    rst $38                                       ; $481a: $ff
    rst $38                                       ; $481b: $ff
    rst $38                                       ; $481c: $ff
    rst $38                                       ; $481d: $ff
    rst $38                                       ; $481e: $ff
    rst $38                                       ; $481f: $ff
    rst $38                                       ; $4820: $ff
    rst $38                                       ; $4821: $ff
    rst $38                                       ; $4822: $ff
    rst $38                                       ; $4823: $ff
    rst $38                                       ; $4824: $ff
    rst $38                                       ; $4825: $ff
    rst $38                                       ; $4826: $ff
    rst $38                                       ; $4827: $ff
    rst $38                                       ; $4828: $ff
    rst $38                                       ; $4829: $ff
    nop                                           ; $482a: $00
    rst $38                                       ; $482b: $ff
    rst $38                                       ; $482c: $ff
    rst $38                                       ; $482d: $ff
    rst $38                                       ; $482e: $ff
    rst $38                                       ; $482f: $ff
    rst $38                                       ; $4830: $ff
    rst $38                                       ; $4831: $ff
    rst $38                                       ; $4832: $ff
    rst $38                                       ; $4833: $ff
    rst $38                                       ; $4834: $ff
    rst $38                                       ; $4835: $ff
    rst $38                                       ; $4836: $ff
    rst $38                                       ; $4837: $ff
    rst $38                                       ; $4838: $ff
    rst $38                                       ; $4839: $ff
    rst $38                                       ; $483a: $ff
    nop                                           ; $483b: $00
    rst $38                                       ; $483c: $ff
    rst $38                                       ; $483d: $ff
    rst $38                                       ; $483e: $ff
    rst $38                                       ; $483f: $ff
    rst $38                                       ; $4840: $ff
    rst $38                                       ; $4841: $ff
    rst $38                                       ; $4842: $ff
    rst $38                                       ; $4843: $ff
    rst $38                                       ; $4844: $ff
    rst $38                                       ; $4845: $ff
    rst $38                                       ; $4846: $ff
    rst $38                                       ; $4847: $ff
    rst $38                                       ; $4848: $ff
    rst $38                                       ; $4849: $ff
    rst $38                                       ; $484a: $ff
    rst $38                                       ; $484b: $ff
    nop                                           ; $484c: $00
    rst $38                                       ; $484d: $ff
    rst $38                                       ; $484e: $ff
    rst $38                                       ; $484f: $ff
    rst $38                                       ; $4850: $ff
    rst $38                                       ; $4851: $ff
    rst $38                                       ; $4852: $ff
    rst $38                                       ; $4853: $ff
    rst $38                                       ; $4854: $ff
    rst $38                                       ; $4855: $ff
    rst $38                                       ; $4856: $ff
    rst $38                                       ; $4857: $ff
    rst $38                                       ; $4858: $ff
    rst $38                                       ; $4859: $ff
    rst $38                                       ; $485a: $ff
    rst $38                                       ; $485b: $ff
    rst $38                                       ; $485c: $ff
    nop                                           ; $485d: $00
    rst $38                                       ; $485e: $ff
    rst $38                                       ; $485f: $ff
    rst $38                                       ; $4860: $ff
    rst $38                                       ; $4861: $ff
    rst $38                                       ; $4862: $ff
    rst $38                                       ; $4863: $ff
    rst $38                                       ; $4864: $ff
    rst $38                                       ; $4865: $ff
    rst $38                                       ; $4866: $ff
    rst $38                                       ; $4867: $ff
    rst $38                                       ; $4868: $ff
    rst $38                                       ; $4869: $ff
    rst $38                                       ; $486a: $ff
    rst $38                                       ; $486b: $ff
    rst $38                                       ; $486c: $ff
    rst $38                                       ; $486d: $ff
    nop                                           ; $486e: $00
    rst $38                                       ; $486f: $ff
    rst $38                                       ; $4870: $ff
    rst $38                                       ; $4871: $ff
    rst $38                                       ; $4872: $ff
    rst $38                                       ; $4873: $ff
    pop hl                                        ; $4874: $e1
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    and l                                         ; $4878: $a5
    nop                                           ; $4879: $00
    rst $38                                       ; $487a: $ff
    push hl                                       ; $487b: $e5
    ld [hl-], a                                   ; $487c: $32
    or $e6                                        ; $487d: $f6 $e6
    rst $30                                       ; $487f: $f7
    rst $20                                       ; $4880: $e7
    dec [hl]                                      ; $4881: $35
    db $ec                                        ; $4882: $ec
    xor $37                                       ; $4883: $ee $37
    db $ec                                        ; $4885: $ec
    jp c, $c7f0                                   ; $4886: $da $f0 $c7

    add sp, $33                                   ; $4889: $e8 $33
    ld sp, $f2e0                                  ; $488b: $31 $e0 $f2
    ld [hl], $30                                  ; $488e: $36 $30
    scf                                           ; $4890: $37
    cp a                                          ; $4891: $bf
    ld h, $20                                     ; $4892: $26 $20
    daa                                           ; $4894: $27
    db $10                                        ; $4895: $10
    ld d, $17                                     ; $4896: $16 $17
    jp nz, Jump_000_34f6                          ; $4898: $c2 $f6 $34

    rst $38                                       ; $489b: $ff
    ld [hl], $32                                  ; $489c: $36 $32
    jr nc, jr_05c_48d7                            ; $489e: $30 $37

    ld sp, $3133                                  ; $48a0: $31 $33 $31
    inc sp                                        ; $48a3: $33
    nop                                           ; $48a4: $00
    and b                                         ; $48a5: $a0
    ei                                            ; $48a6: $fb
    rst $38                                       ; $48a7: $ff
    rst $28                                       ; $48a8: $ef
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    nop                                           ; $48ab: $00
    or h                                          ; $48ac: $b4
    ld c, b                                       ; $48ad: $48
    db $e4                                        ; $48ae: $e4
    ld c, b                                       ; $48af: $48
    ld e, e                                       ; $48b0: $5b
    ld c, e                                       ; $48b1: $4b
    inc bc                                        ; $48b2: $03
    ld c, l                                       ; $48b3: $4d
    ld a, [c]                                     ; $48b4: $f2
    inc sp                                        ; $48b5: $33
    ld c, e                                       ; $48b6: $4b
    dec de                                        ; $48b7: $1b
    dec h                                         ; $48b8: $25
    ld [bc], a                                    ; $48b9: $02
    ldh [rNR10], a                                ; $48ba: $e0 $10
    ret z                                         ; $48bc: $c8

    ld [bc], a                                    ; $48bd: $02
    ld a, [c]                                     ; $48be: $f2
    inc sp                                        ; $48bf: $33
    ld c, e                                       ; $48c0: $4b
    dec de                                        ; $48c1: $1b
    dec h                                         ; $48c2: $25
    ld [bc], a                                    ; $48c3: $02
    sbc a                                         ; $48c4: $9f
    ld [bc], a                                    ; $48c5: $02
    or $01                                        ; $48c6: $f6 $01
    ld d, e                                       ; $48c8: $53
    ld bc, $1b4b                                  ; $48c9: $01 $4b $1b
    ld [$0825], sp                                ; $48cc: $08 $25 $08
    dec h                                         ; $48cf: $25
    ld [$0825], sp                                ; $48d0: $08 $25 $08
    dec h                                         ; $48d3: $25
    ld [$0825], sp                                ; $48d4: $08 $25 $08

jr_05c_48d7:
    dec h                                         ; $48d7: $25
    ld [$0825], sp                                ; $48d8: $08 $25 $08
    dec h                                         ; $48db: $25
    ld [$0825], sp                                ; $48dc: $08 $25 $08
    dec h                                         ; $48df: $25
    ld [$0825], sp                                ; $48e0: $08 $25 $08
    dec h                                         ; $48e3: $25
    rst $18                                       ; $48e4: $df
    ld a, [hl+]                                   ; $48e5: $2a
    ld c, d                                       ; $48e6: $4a
    ld c, d                                       ; $48e7: $4a
    ld c, d                                       ; $48e8: $4a
    ld a, [bc]                                    ; $48e9: $0a
    rst $38                                       ; $48ea: $ff
    add sp, $6a                                   ; $48eb: $e8 $6a
    ld l, d                                       ; $48ed: $6a
    rra                                           ; $48ee: $1f
    ld l, d                                       ; $48ef: $6a

Jump_05c_48f0:
    ld a, [bc]                                    ; $48f0: $0a
    inc c                                         ; $48f1: $0c
    ld c, h                                       ; $48f2: $4c
    ld c, h                                       ; $48f3: $4c
    db $fd                                        ; $48f4: $fd
    ldh [$fe], a                                  ; $48f5: $e0 $fe
    ldh [$fa], a                                  ; $48f7: $e0 $fa
    ld [c], a                                     ; $48f9: $e2
    ld c, e                                       ; $48fa: $4b
    inc c                                         ; $48fb: $0c
    inc c                                         ; $48fc: $0c
    ldh a, [$e1]                                  ; $48fd: $f0 $e1
    inc l                                         ; $48ff: $2c
    ld hl, sp-$1f                                 ; $4900: $f8 $e1
    db $fd                                        ; $4902: $fd
    ldh a, [rWY]                                  ; $4903: $f0 $4a
    cp a                                          ; $4905: $bf
    ldh [$d2], a                                  ; $4906: $e0 $d2
    ret nz                                        ; $4908: $c0

    db $eb                                        ; $4909: $eb
    ld a, [bc]                                    ; $490a: $0a
    ret nz                                        ; $490b: $c0

    db $e4                                        ; $490c: $e4
    cp l                                          ; $490d: $bd
    pop hl                                        ; $490e: $e1
    inc c                                         ; $490f: $0c
    jp nz, Jump_05c_4ce4                          ; $4910: $c2 $e4 $4c

    inc l                                         ; $4913: $2c
    nop                                           ; $4914: $00
    ret nz                                        ; $4915: $c0

    or $bf                                        ; $4916: $f6 $bf
    ldh [$80], a                                  ; $4918: $e0 $80
    ld [$e073], a                                 ; $491a: $ea $73 $e0
    adc [hl]                                      ; $491d: $8e
    ld [c], a                                     ; $491e: $e2
    add [hl]                                      ; $491f: $86
    ld [c], a                                     ; $4920: $e2
    db $fc                                        ; $4921: $fc
    ld [c], a                                     ; $4922: $e2
    add b                                         ; $4923: $80
    pop hl                                        ; $4924: $e1
    ld [$e4c0], sp                                ; $4925: $08 $c0 $e4
    ld [hl], a                                    ; $4928: $77
    rst $28                                       ; $4929: $ef
    ld b, c                                       ; $492a: $41
    ldh [$2a], a                                  ; $492b: $e0 $2a
    ld b, b                                       ; $492d: $40
    jp hl                                         ; $492e: $e9


    inc [hl]                                      ; $492f: $34
    pop hl                                        ; $4930: $e1
    adc l                                         ; $4931: $8d
    db $e3                                        ; $4932: $e3
    ret nz                                        ; $4933: $c0

    db $e3                                        ; $4934: $e3
    ldh a, [rLCDC]                                ; $4935: $f0 $40
    push hl                                       ; $4937: $e5

jr_05c_4938:
    cp c                                          ; $4938: $b9
    db $e3                                        ; $4939: $e3
    ld [hl], a                                    ; $493a: $77
    rst $28                                       ; $493b: $ef
    ld bc, $6ae0                                  ; $493c: $01 $e0 $6a
    dec bc                                        ; $493f: $0b
    dec bc                                        ; $4940: $0b
    dec bc                                        ; $4941: $0b
    ld a, l                                       ; $4942: $7d
    ld l, e                                       ; $4943: $6b
    db $fc                                        ; $4944: $fc
    ldh [$0b], a                                  ; $4945: $e0 $0b
    ld c, e                                       ; $4947: $4b
    dec hl                                        ; $4948: $2b
    dec hl                                        ; $4949: $2b
    dec bc                                        ; $494a: $0b
    ret nz                                        ; $494b: $c0

    ld [c], a                                     ; $494c: $e2
    and b                                         ; $494d: $a0
    inc d                                         ; $494e: $14
    db $e3                                        ; $494f: $e3
    ld c, $e6                                     ; $4950: $0e $e6
    jr c, jr_05c_4938                             ; $4952: $38 $e4

    rst $30                                       ; $4954: $f7
    jp nz, $e737                                  ; $4955: $c2 $37 $e7

jr_05c_4958:
    inc l                                         ; $4958: $2c
    ld b, b                                       ; $4959: $40
    db $e4                                        ; $495a: $e4
    ld l, d                                       ; $495b: $6a
    ld [hl], a                                    ; $495c: $77
    ld l, e                                       ; $495d: $6b
    dec bc                                        ; $495e: $0b
    ld l, e                                       ; $495f: $6b
    rst $38                                       ; $4960: $ff
    pop hl                                        ; $4961: $e1
    ld c, e                                       ; $4962: $4b
    dec bc                                        ; $4963: $0b
    ld c, e                                       ; $4964: $4b
    db $fd                                        ; $4965: $fd
    ldh [$80], a                                  ; $4966: $e0 $80
    add b                                         ; $4968: $80
    db $e3                                        ; $4969: $e3
    pop bc                                        ; $496a: $c1
    push hl                                       ; $496b: $e5
    ld c, e                                       ; $496c: $4b
    db $e3                                        ; $496d: $e3
    jr c, @-$1b                                   ; $496e: $38 $e3

    rst $08                                       ; $4970: $cf
    pop hl                                        ; $4971: $e1
    jr nc, jr_05c_4958                            ; $4972: $30 $e4

    ret nz                                        ; $4974: $c0

    ret                                           ; $4975: $c9


    ld l, d                                       ; $4976: $6a
    nop                                           ; $4977: $00
    jp nz, $c0e3                                  ; $4978: $c2 $e3 $c0

    pop hl                                        ; $497b: $e1
    cp a                                          ; $497c: $bf
    ldh [$c0], a                                  ; $497d: $e0 $c0
    db $e3                                        ; $497f: $e3
    ret nz                                        ; $4980: $c0

    ret z                                         ; $4981: $c8

    ccf                                           ; $4982: $3f
    rst $20                                       ; $4983: $e7
    adc a                                         ; $4984: $8f
    ldh [rPCM34], a                               ; $4985: $e0 $77
    rst $20                                       ; $4987: $e7
    inc c                                         ; $4988: $0c
    ld [hl], e                                    ; $4989: $73

Call_05c_498a:
    add $43                                       ; $498a: $c6 $43
    ldh [$2b], a                                  ; $498c: $e0 $2b
    dec hl                                        ; $498e: $2b
    cp [hl]                                       ; $498f: $be
    db $e3                                        ; $4990: $e3
    ld a, $e1                                     ; $4991: $3e $e1
    add b                                         ; $4993: $80
    push hl                                       ; $4994: $e5
    add c                                         ; $4995: $81
    add $10                                       ; $4996: $c6 $10
    ld [hl], l                                    ; $4998: $75
    call nz, $e52f                                ; $4999: $c4 $2f $e5
    ld [hl], a                                    ; $499c: $77
    push hl                                       ; $499d: $e5
    inc sp                                        ; $499e: $33
    add $2a                                       ; $499f: $c6 $2a
    ret nz                                        ; $49a1: $c0

    pop hl                                        ; $49a2: $e1
    cp a                                          ; $49a3: $bf
    db $e3                                        ; $49a4: $e3
    ld a, a                                       ; $49a5: $7f
    ldh [$81], a                                  ; $49a6: $e0 $81
    dec bc                                        ; $49a8: $0b
    nop                                           ; $49a9: $00
    db $e3                                        ; $49aa: $e3
    add b                                         ; $49ab: $80
    call nz, $c67c                                ; $49ac: $c4 $7c $c6
    ei                                            ; $49af: $fb
    and d                                         ; $49b0: $a2
    push af                                       ; $49b1: $f5
    push bc                                       ; $49b2: $c5
    ret nz                                        ; $49b3: $c0

    db $ec                                        ; $49b4: $ec
    ld a, [hl+]                                   ; $49b5: $2a
    dec bc                                        ; $49b6: $0b
    dec bc                                        ; $49b7: $0b
    dec hl                                        ; $49b8: $2b
    ld a, [hl]                                    ; $49b9: $7e
    ldh [rWX], a                                  ; $49ba: $e0 $4b
    add b                                         ; $49bc: $80
    pop hl                                        ; $49bd: $e1
    cp a                                          ; $49be: $bf
    pop hl                                        ; $49bf: $e1
    add b                                         ; $49c0: $80
    rst $00                                       ; $49c1: $c7
    cp [hl]                                       ; $49c2: $be
    rst $00                                       ; $49c3: $c7
    jr z, @-$3e                                   ; $49c4: $28 $c0

    push bc                                       ; $49c6: $c5
    ld b, c                                       ; $49c7: $41
    ldh a, [$c0]                                  ; $49c8: $f0 $c0
    ldh [$2a], a                                  ; $49ca: $e0 $2a
    ret z                                         ; $49cc: $c8

    pop bc                                        ; $49cd: $c1
    dec hl                                        ; $49ce: $2b
    cp h                                          ; $49cf: $bc
    ret nz                                        ; $49d0: $c0

    ret nz                                        ; $49d1: $c0

    rst $20                                       ; $49d2: $e7
    nop                                           ; $49d3: $00
    ld b, $c7                                     ; $49d4: $06 $c7
    ld [bc], a                                    ; $49d6: $02
    jp nz, $c4c0                                  ; $49d7: $c2 $c0 $c4

    ld [hl-], a                                   ; $49da: $32
    db $e3                                        ; $49db: $e3
    add e                                         ; $49dc: $83
    ret                                           ; $49dd: $c9


    ret nz                                        ; $49de: $c0

    db $e3                                        ; $49df: $e3
    dec a                                         ; $49e0: $3d
    and $80                                       ; $49e1: $e6 $80
    ret nz                                        ; $49e3: $c0

    nop                                           ; $49e4: $00
    ld b, b                                       ; $49e5: $40
    push hl                                       ; $49e6: $e5
    ld b, [hl]                                    ; $49e7: $46
    and h                                         ; $49e8: $a4
    ret z                                         ; $49e9: $c8

    db $e4                                        ; $49ea: $e4
    rst $38                                       ; $49eb: $ff
    add $c0                                       ; $49ec: $c6 $c0
    rst $08                                       ; $49ee: $cf
    ret nz                                        ; $49ef: $c0

    pop hl                                        ; $49f0: $e1
    dec a                                         ; $49f1: $3d
    ld [c], a                                     ; $49f2: $e2
    ld a, $e1                                     ; $49f3: $3e $e1
    ld [bc], a                                    ; $49f5: $02
    ret nz                                        ; $49f6: $c0

    and $4c                                       ; $49f7: $e6 $4c
    sub h                                         ; $49f9: $94
    pop bc                                        ; $49fa: $c1
    ld a, l                                       ; $49fb: $7d
    add $80                                       ; $49fc: $c6 $80
    rst $20                                       ; $49fe: $e7
    or $c8                                        ; $49ff: $f6 $c8
    ret nz                                        ; $4a01: $c0

    jp hl                                         ; $4a02: $e9


    db $fc                                        ; $4a03: $fc
    ret nz                                        ; $4a04: $c0

    ld b, h                                       ; $4a05: $44
    db $fd                                        ; $4a06: $fd
    call nz, $a5c0                                ; $4a07: $c4 $c0 $a5
    inc l                                         ; $4a0a: $2c
    ld b, c                                       ; $4a0b: $41
    and a                                         ; $4a0c: $a7
    ld b, b                                       ; $4a0d: $40
    add $b7                                       ; $4a0e: $c6 $b7
    xor b                                         ; $4a10: $a8
    inc l                                         ; $4a11: $2c
    rst $38                                       ; $4a12: $ff
    ldh [$0a], a                                  ; $4a13: $e0 $0a
    ret nz                                        ; $4a15: $c0

    jp hl                                         ; $4a16: $e9


    ld a, [hl+]                                   ; $4a17: $2a
    cp h                                          ; $4a18: $bc
    pop bc                                        ; $4a19: $c1
    dec hl                                        ; $4a1a: $2b
    ld a, e                                       ; $4a1b: $7b
    and c                                         ; $4a1c: $a1
    nop                                           ; $4a1d: $00
    rst $20                                       ; $4a1e: $e7
    ret nz                                        ; $4a1f: $c0

    jp hl                                         ; $4a20: $e9


    xor [hl]                                      ; $4a21: $ae
    and [hl]                                      ; $4a22: $a6
    inc h                                         ; $4a23: $24
    halt                                          ; $4a24: $76
    call nz, $eec0                                ; $4a25: $c4 $c0 $ee
    ld a, [hl+]                                   ; $4a28: $2a
    cp h                                          ; $4a29: $bc
    pop bc                                        ; $4a2a: $c1
    cp [hl]                                       ; $4a2b: $be
    and b                                         ; $4a2c: $a0
    ld l, e                                       ; $4a2d: $6b
    ret nz                                        ; $4a2e: $c0

    and a                                         ; $4a2f: $a7
    ld b, b                                       ; $4a30: $40
    sub d                                         ; $4a31: $92
    nop                                           ; $4a32: $00
    ret nz                                        ; $4a33: $c0

    rst $20                                       ; $4a34: $e7
    ld sp, $138c                                  ; $4a35: $31 $8c $13
    add l                                         ; $4a38: $85
    add hl, bc                                    ; $4a39: $09
    add h                                         ; $4a3a: $84
    ld b, b                                       ; $4a3b: $40
    sbc h                                         ; $4a3c: $9c
    ret nz                                        ; $4a3d: $c0

    rst $20                                       ; $4a3e: $e7
    push de                                       ; $4a3f: $d5
    ld [hl], h                                    ; $4a40: $74
    ld b, b                                       ; $4a41: $40
    sub a                                         ; $4a42: $97
    nop                                           ; $4a43: $00
    rst $00                                       ; $4a44: $c7
    add c                                         ; $4a45: $81
    ld a, a                                       ; $4a46: $7f
    xor b                                         ; $4a47: $a8
    push de                                       ; $4a48: $d5
    ld [hl], h                                    ; $4a49: $74
    ld b, b                                       ; $4a4a: $40
    sub d                                         ; $4a4b: $92
    ret nz                                        ; $4a4c: $c0

    rst $20                                       ; $4a4d: $e7
    pop bc                                        ; $4a4e: $c1
    pop bc                                        ; $4a4f: $c1
    ld a, [hl]                                    ; $4a50: $7e
    rst $20                                       ; $4a51: $e7
    push de                                       ; $4a52: $d5
    ld [hl], d                                    ; $4a53: $72
    nop                                           ; $4a54: $00
    ld b, b                                       ; $4a55: $40
    sub b                                         ; $4a56: $90
    jp nz, $c087                                  ; $4a57: $c2 $87 $c0

    add sp, -$2b                                  ; $4a5a: $e8 $d5
    ld [hl], e                                    ; $4a5c: $73
    ld b, b                                       ; $4a5d: $40
    sub e                                         ; $4a5e: $93
    add c                                         ; $4a5f: $81
    and a                                         ; $4a60: $a7
    ld b, b                                       ; $4a61: $40
    add $d5                                       ; $4a62: $c6 $d5
    ld [hl], l                                    ; $4a64: $75
    nop                                           ; $4a65: $00
    ld b, b                                       ; $4a66: $40
    sub c                                         ; $4a67: $91
    cp b                                          ; $4a68: $b8
    ld h, a                                       ; $4a69: $67
    nop                                           ; $4a6a: $00
    rst $00                                       ; $4a6b: $c7
    push de                                       ; $4a6c: $d5
    ld [hl], h                                    ; $4a6d: $74
    ld b, b                                       ; $4a6e: $40
    sub d                                         ; $4a6f: $92
    add c                                         ; $4a70: $81
    or b                                          ; $4a71: $b0
    push de                                       ; $4a72: $d5
    ld [hl], l                                    ; $4a73: $75
    ld b, b                                       ; $4a74: $40
    sub d                                         ; $4a75: $92
    nop                                           ; $4a76: $00
    add b                                         ; $4a77: $80
    di                                            ; $4a78: $f3
    push de                                       ; $4a79: $d5
    ld [hl], h                                    ; $4a7a: $74
    ld b, b                                       ; $4a7b: $40
    sub b                                         ; $4a7c: $90
    ld bc, $c0a7                                  ; $4a7d: $01 $a7 $c0
    db $eb                                        ; $4a80: $eb
    push de                                       ; $4a81: $d5
    ld [hl], c                                    ; $4a82: $71
    ld b, b                                       ; $4a83: $40
    sub c                                         ; $4a84: $91
    ret nz                                        ; $4a85: $c0

    add sp, $00                                   ; $4a86: $e8 $00
    add a                                         ; $4a88: $87
    xor e                                         ; $4a89: $ab
    sub l                                         ; $4a8a: $95
    ldh a, [rLCDC]                                ; $4a8b: $f0 $40
    sub d                                         ; $4a8d: $92
    add b                                         ; $4a8e: $80
    and a                                         ; $4a8f: $a7
    db $ec                                        ; $4a90: $ec
    adc l                                         ; $4a91: $8d
    push de                                       ; $4a92: $d5
    ld l, l                                       ; $4a93: $6d
    ld b, b                                       ; $4a94: $40
    sub e                                         ; $4a95: $93
    add b                                         ; $4a96: $80
    ld [hl], b                                    ; $4a97: $70
    nop                                           ; $4a98: $00
    push de                                       ; $4a99: $d5
    ld [hl], h                                    ; $4a9a: $74
    ld b, b                                       ; $4a9b: $40
    sub e                                         ; $4a9c: $93
    add b                                         ; $4a9d: $80
    ret nc                                        ; $4a9e: $d0

    push de                                       ; $4a9f: $d5
    ld [hl], h                                    ; $4aa0: $74
    db $eb                                        ; $4aa1: $eb
    sub h                                         ; $4aa2: $94
    nop                                           ; $4aa3: $00
    ld l, a                                       ; $4aa4: $6f
    push de                                       ; $4aa5: $d5
    ld a, c                                       ; $4aa6: $79
    ret nz                                        ; $4aa7: $c0

    rrca                                          ; $4aa8: $0f
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    ret nc                                        ; $4aab: $d0

    push de                                       ; $4aac: $d5
    ld [hl], h                                    ; $4aad: $74
    add b                                         ; $4aae: $80
    sbc b                                         ; $4aaf: $98
    ld a, a                                       ; $4ab0: $7f
    ld h, e                                       ; $4ab1: $63
    ret nz                                        ; $4ab2: $c0

    db $fc                                        ; $4ab3: $fc
    db $eb                                        ; $4ab4: $eb
    sub h                                         ; $4ab5: $94
    nop                                           ; $4ab6: $00
    adc a                                         ; $4ab7: $8f
    push de                                       ; $4ab8: $d5
    dec d                                         ; $4ab9: $15
    nop                                           ; $4aba: $00
    add b                                         ; $4abb: $80
    sub d                                         ; $4abc: $92
    ld h, c                                       ; $4abd: $61
    add $81                                       ; $4abe: $c6 $81
    ld l, e                                       ; $4ac0: $6b
    push de                                       ; $4ac1: $d5
    ld de, $91eb                                  ; $4ac2: $11 $eb $91
    add b                                         ; $4ac5: $80
    ld l, b                                       ; $4ac6: $68
    nop                                           ; $4ac7: $00
    cp h                                          ; $4ac8: $bc
    ret nz                                        ; $4ac9: $c0

    rra                                           ; $4aca: $1f
    nop                                           ; $4acb: $00
    ld b, $6c                                     ; $4acc: $06 $6c
    push de                                       ; $4ace: $d5
    dec c                                         ; $4acf: $0d
    ret nz                                        ; $4ad0: $c0

    ld a, [de]                                    ; $4ad1: $1a
    pop bc                                        ; $4ad2: $c1
    ld c, d                                       ; $4ad3: $4a
    sub l                                         ; $4ad4: $95
    sub h                                         ; $4ad5: $94
    ret nz                                        ; $4ad6: $c0

    add hl, de                                    ; $4ad7: $19
    add c                                         ; $4ad8: $81
    ld c, c                                       ; $4ad9: $49
    push de                                       ; $4ada: $d5
    inc d                                         ; $4adb: $14
    nop                                           ; $4adc: $00
    ret nz                                        ; $4add: $c0

    rra                                           ; $4ade: $1f
    nop                                           ; $4adf: $00
    cp d                                          ; $4ae0: $ba
    ret nz                                        ; $4ae1: $c0

    dec e                                         ; $4ae2: $1d
    nop                                           ; $4ae3: $00
    cp l                                          ; $4ae4: $bd
    ret nz                                        ; $4ae5: $c0

    rra                                           ; $4ae6: $1f
    nop                                           ; $4ae7: $00
    cp e                                          ; $4ae8: $bb
    ret nz                                        ; $4ae9: $c0

    rra                                           ; $4aea: $1f
    nop                                           ; $4aeb: $00
    cp e                                          ; $4aec: $bb
    nop                                           ; $4aed: $00
    ret nz                                        ; $4aee: $c0

    inc e                                         ; $4aef: $1c
    nop                                           ; $4af0: $00
    cp [hl]                                       ; $4af1: $be
    ret nz                                        ; $4af2: $c0

    inc e                                         ; $4af3: $1c
    nop                                           ; $4af4: $00
    sbc [hl]                                      ; $4af5: $9e
    rst $08                                       ; $4af6: $cf
    and l                                         ; $4af7: $a5
    rst $30                                       ; $4af8: $f7
    ld [hl], l                                    ; $4af9: $75
    nop                                           ; $4afa: $00
    sbc a                                         ; $4afb: $9f
    cp $c4                                        ; $4afc: $fe $c4
    nop                                           ; $4afe: $00
    ld h, d                                       ; $4aff: $62
    di                                            ; $4b00: $f3
    nop                                           ; $4b01: $00
    sbc [hl]                                      ; $4b02: $9e
    add a                                         ; $4b03: $87
    push hl                                       ; $4b04: $e5
    adc a                                         ; $4b05: $8f
    ld [$0d4e], sp                                ; $4b06: $08 $4e $0d
    nop                                           ; $4b09: $00
    db $fc                                        ; $4b0a: $fc
    add b                                         ; $4b0b: $80
    push hl                                       ; $4b0c: $e5
    rst $38                                       ; $4b0d: $ff
    rst $38                                       ; $4b0e: $ff
    nop                                           ; $4b0f: $00
    and l                                         ; $4b10: $a5
    ld c, h                                       ; $4b11: $4c
    inc h                                         ; $4b12: $24
    inc b                                         ; $4b13: $04
    cp a                                          ; $4b14: $bf
    rst $38                                       ; $4b15: $ff
    dec [hl]                                      ; $4b16: $35
    ld c, [hl]                                    ; $4b17: $4e
    cpl                                           ; $4b18: $2f
    add hl, hl                                    ; $4b19: $29
    ccf                                           ; $4b1a: $3f
    db $ed                                        ; $4b1b: $ed
    rst $38                                       ; $4b1c: $ff
    rst $38                                       ; $4b1d: $ff
    xor $6f                                       ; $4b1e: $ee $6f
    nop                                           ; $4b20: $00
    ret nz                                        ; $4b21: $c0

    rst $38                                       ; $4b22: $ff
    scf                                           ; $4b23: $37
    ei                                            ; $4b24: $fb
    call c, $ffff                                 ; $4b25: $dc $ff $ff
    rst $38                                       ; $4b28: $ff
    rst $38                                       ; $4b29: $ff
    rst $38                                       ; $4b2a: $ff
    rst $38                                       ; $4b2b: $ff
    rst $38                                       ; $4b2c: $ff
    rst $38                                       ; $4b2d: $ff
    rst $38                                       ; $4b2e: $ff
    rst $38                                       ; $4b2f: $ff
    rst $38                                       ; $4b30: $ff
    nop                                           ; $4b31: $00
    rst $38                                       ; $4b32: $ff
    rst $38                                       ; $4b33: $ff
    rst $38                                       ; $4b34: $ff
    rst $38                                       ; $4b35: $ff
    rst $38                                       ; $4b36: $ff
    rst $38                                       ; $4b37: $ff
    rst $38                                       ; $4b38: $ff
    rst $38                                       ; $4b39: $ff
    rst $38                                       ; $4b3a: $ff
    rst $38                                       ; $4b3b: $ff
    rst $38                                       ; $4b3c: $ff
    rst $38                                       ; $4b3d: $ff
    rst $38                                       ; $4b3e: $ff

jr_05c_4b3f:
    rst $38                                       ; $4b3f: $ff
    rst $38                                       ; $4b40: $ff
    rst $38                                       ; $4b41: $ff
    nop                                           ; $4b42: $00
    rst $38                                       ; $4b43: $ff
    rst $38                                       ; $4b44: $ff
    rst $38                                       ; $4b45: $ff

Jump_05c_4b46:
    rst $38                                       ; $4b46: $ff
    rst $38                                       ; $4b47: $ff
    rst $38                                       ; $4b48: $ff
    rst $38                                       ; $4b49: $ff
    rst $38                                       ; $4b4a: $ff
    nop                                           ; $4b4b: $00
    or e                                          ; $4b4c: $b3
    rst $38                                       ; $4b4d: $ff
    rst $38                                       ; $4b4e: $ff
    rst $38                                       ; $4b4f: $ff
    rst $38                                       ; $4b50: $ff
    rst $38                                       ; $4b51: $ff
    rst $38                                       ; $4b52: $ff
    nop                                           ; $4b53: $00
    rst $38                                       ; $4b54: $ff
    rst $38                                       ; $4b55: $ff
    rst $38                                       ; $4b56: $ff
    rst $38                                       ; $4b57: $ff
    nop                                           ; $4b58: $00
    nop                                           ; $4b59: $00
    nop                                           ; $4b5a: $00
    sbc a                                         ; $4b5b: $9f
    adc e                                         ; $4b5c: $8b
    ld c, [hl]                                    ; $4b5d: $4e
    ld c, [hl]                                    ; $4b5e: $4e
    ld c, [hl]                                    ; $4b5f: $4e
    adc b                                         ; $4b60: $88
    rst $38                                       ; $4b61: $ff
    add sp, -$0f                                  ; $4b62: $e8 $f1
    ldh [$2f], a                                  ; $4b64: $e0 $2f
    ret                                           ; $4b66: $c9


    nop                                           ; $4b67: $00
    rst $38                                       ; $4b68: $ff
    rst $38                                       ; $4b69: $ff
    rst $20                                       ; $4b6a: $e7
    and $4e                                       ; $4b6b: $e6 $4e
    cp a                                          ; $4b6d: $bf
    ldh [$c0], a                                  ; $4b6e: $e0 $c0
    db $eb                                        ; $4b70: $eb
    cpl                                           ; $4b71: $2f
    adc d                                         ; $4b72: $8a
    jr nc, jr_05c_4b3f                            ; $4b73: $30 $ca

    rst $38                                       ; $4b75: $ff
    ret nz                                        ; $4b76: $c0

    add sp, -$41                                  ; $4b77: $e8 $bf
    ldh [$80], a                                  ; $4b79: $e0 $80
    ld [$8a2f], a                                 ; $4b7b: $ea $2f $8a
    ret nz                                        ; $4b7e: $c0

    rst $38                                       ; $4b7f: $ff
    ret nz                                        ; $4b80: $c0

    ld [$4ec3], a                                 ; $4b81: $ea $c3 $4e
    adc e                                         ; $4b84: $8b
    ld b, b                                       ; $4b85: $40
    jp hl                                         ; $4b86: $e9


    pop bc                                        ; $4b87: $c1

Jump_05c_4b88:
    ldh [$c0], a                                  ; $4b88: $e0 $c0
    rst $38                                       ; $4b8a: $ff
    ret nz                                        ; $4b8b: $c0

    db $eb                                        ; $4b8c: $eb
    adc h                                         ; $4b8d: $8c
    ld e, h                                       ; $4b8e: $5c
    rst $38                                       ; $4b8f: $ff
    ld e, l                                       ; $4b90: $5d
    ld h, d                                       ; $4b91: $62
    ld b, a                                       ; $4b92: $47
    ld d, a                                       ; $4b93: $57
    ld d, a                                       ; $4b94: $57
    ld d, [hl]                                    ; $4b95: $56
    ld d, [hl]                                    ; $4b96: $56
    ld c, l                                       ; $4b97: $4d
    rst $00                                       ; $4b98: $c7
    ld e, l                                       ; $4b99: $5d
    ld e, h                                       ; $4b9a: $5c
    ld e, e                                       ; $4b9b: $5b
    pop bc                                        ; $4b9c: $c1
    ldh [$c0], a                                  ; $4b9d: $e0 $c0
    rst $38                                       ; $4b9f: $ff
    ld b, b                                       ; $4ba0: $40
    ld [$5f8c], a                                 ; $4ba1: $ea $8c $5f
    rst $38                                       ; $4ba4: $ff
    ld sp, $3b47                                  ; $4ba5: $31 $47 $3b
    ld [hl], $6d                                  ; $4ba8: $36 $6d
    ld l, l                                       ; $4baa: $6d
    jr nc, @+$6f                                  ; $4bab: $30 $6d

    rst $08                                       ; $4bad: $cf
    ld [hl-], a                                   ; $4bae: $32
    ld c, l                                       ; $4baf: $4d
    ld sp, $c05f                                  ; $4bb0: $31 $5f $c0
    rst $38                                       ; $4bb3: $ff
    ret nz                                        ; $4bb4: $c0

    call z, $5b8c                                 ; $4bb5: $cc $8c $5b
    inc hl                                        ; $4bb8: $23
    ld e, [hl]                                    ; $4bb9: $5e
    ld c, c                                       ; $4bba: $49
    jp nz, $c0e0                                  ; $4bbb: $c2 $e0 $c0

    pop hl                                        ; $4bbe: $e1
    cp a                                          ; $4bbf: $bf
    ldh [$5e], a                                  ; $4bc0: $e0 $5e
    ret nz                                        ; $4bc2: $c0

    rst $38                                       ; $4bc3: $ff
    db $ec                                        ; $4bc4: $ec
    db $eb                                        ; $4bc5: $eb
    rra                                           ; $4bc6: $1f
    adc h                                         ; $4bc7: $8c
    ld e, e                                       ; $4bc8: $5b
    ld e, e                                       ; $4bc9: $5b
    ld h, c                                       ; $4bca: $61
    ld d, c                                       ; $4bcb: $51
    pop bc                                        ; $4bcc: $c1
    pop hl                                        ; $4bcd: $e1
    cp a                                          ; $4bce: $bf
    db $e4                                        ; $4bcf: $e4
    ret nz                                        ; $4bd0: $c0

    rst $38                                       ; $4bd1: $ff
    ld a, [hl]                                    ; $4bd2: $7e
    db $ec                                        ; $4bd3: $ec
    db $eb                                        ; $4bd4: $eb
    adc [hl]                                      ; $4bd5: $8e
    ld e, e                                       ; $4bd6: $5b
    ld e, e                                       ; $4bd7: $5b
    ld e, [hl]                                    ; $4bd8: $5e
    ld c, l                                       ; $4bd9: $4d
    ld [hl-], a                                   ; $4bda: $32
    ret nz                                        ; $4bdb: $c0

    push hl                                       ; $4bdc: $e5
    di                                            ; $4bdd: $f3
    ld l, l                                       ; $4bde: $6d
    ld d, c                                       ; $4bdf: $51
    ret nz                                        ; $4be0: $c0

    rst $38                                       ; $4be1: $ff
    db $ec                                        ; $4be2: $ec
    db $eb                                        ; $4be3: $eb
    ld c, a                                       ; $4be4: $4f
    adc [hl]                                      ; $4be5: $8e
    ld e, e                                       ; $4be6: $5b
    ld e, a                                       ; $4be7: $5f
    ld c, a                                       ; $4be8: $4f
    ld sp, $3b4d                                  ; $4be9: $31 $4d $3b
    ld b, d                                       ; $4bec: $42
    ccf                                           ; $4bed: $3f
    pop hl                                        ; $4bee: $e1
    ld a, $e0                                     ; $4bef: $3e $e0
    ld d, b                                       ; $4bf1: $50
    ret nz                                        ; $4bf2: $c0

    rst $38                                       ; $4bf3: $ff
    inc a                                         ; $4bf4: $3c
    ret nz                                        ; $4bf5: $c0

    db $ec                                        ; $4bf6: $ec
    cp a                                          ; $4bf7: $bf
    ldh [$5c], a                                  ; $4bf8: $e0 $5c
    ld e, l                                       ; $4bfa: $5d
    ld sp, $0239                                  ; $4bfb: $31 $39 $02
    ldh [$c0], a                                  ; $4bfe: $e0 $c0
    rst $38                                       ; $4c00: $ff
    ld [$f2c0], sp                                ; $4c01: $08 $c0 $f2
    ld a, [hl]                                    ; $4c04: $7e
    ldh [$bd], a                                  ; $4c05: $e0 $bd
    ret nz                                        ; $4c07: $c0

    ld c, b                                       ; $4c08: $48
    ld a, a                                       ; $4c09: $7f
    db $e3                                        ; $4c0a: $e3
    ret nz                                        ; $4c0b: $c0

    rst $38                                       ; $4c0c: $ff
    ret nz                                        ; $4c0d: $c0

    rst $28                                       ; $4c0e: $ef
    dec a                                         ; $4c0f: $3d
    ld [c], a                                     ; $4c10: $e2
    add b                                         ; $4c11: $80
    ld a, a                                       ; $4c12: $7f
    pop hl                                        ; $4c13: $e1
    dec a                                         ; $4c14: $3d
    ret nz                                        ; $4c15: $c0

    ret nz                                        ; $4c16: $c0

    rst $38                                       ; $4c17: $ff
    ret nz                                        ; $4c18: $c0

    ldh a, [$fc]                                  ; $4c19: $f0 $fc
    ret nz                                        ; $4c1b: $c0

    inc a                                         ; $4c1c: $3c
    ret nz                                        ; $4c1d: $c0

    pop bc                                        ; $4c1e: $c1
    pop bc                                        ; $4c1f: $c1
    ld c, b                                       ; $4c20: $48
    reti                                          ; $4c21: $d9


    ld c, c                                       ; $4c22: $49
    ret nz                                        ; $4c23: $c0

    rst $38                                       ; $4c24: $ff
    ret nz                                        ; $4c25: $c0

    ldh a, [rVBK]                                 ; $4c26: $f0 $4f
    adc [hl]                                      ; $4c28: $8e
    cp h                                          ; $4c29: $bc
    and e                                         ; $4c2a: $a3
    ld [hl], $3c                                  ; $4c2b: $36 $3c
    reti                                          ; $4c2d: $d9


    ld h, c                                       ; $4c2e: $61
    ret nz                                        ; $4c2f: $c0

    rst $38                                       ; $4c30: $ff
    ret nz                                        ; $4c31: $c0

    pop af                                        ; $4c32: $f1
    ld c, a                                       ; $4c33: $4f
    adc [hl]                                      ; $4c34: $8e
    cp h                                          ; $4c35: $bc
    ret nz                                        ; $4c36: $c0

    ld b, a                                       ; $4c37: $47
    ld d, a                                       ; $4c38: $57
    rlca                                          ; $4c39: $07
    ld b, a                                       ; $4c3a: $47
    ld sp, $c060                                  ; $4c3b: $31 $60 $c0
    rst $38                                       ; $4c3e: $ff
    rst $38                                       ; $4c3f: $ff
    rst $38                                       ; $4c40: $ff
    rst $38                                       ; $4c41: $ff
    rst $38                                       ; $4c42: $ff
    rst $38                                       ; $4c43: $ff
    rst $38                                       ; $4c44: $ff
    rst $38                                       ; $4c45: $ff
    rst $38                                       ; $4c46: $ff
    nop                                           ; $4c47: $00
    rst $38                                       ; $4c48: $ff
    rst $38                                       ; $4c49: $ff
    rst $38                                       ; $4c4a: $ff
    rst $38                                       ; $4c4b: $ff
    rst $38                                       ; $4c4c: $ff
    rst $38                                       ; $4c4d: $ff
    rst $38                                       ; $4c4e: $ff
    rst $38                                       ; $4c4f: $ff
    rst $38                                       ; $4c50: $ff
    rst $38                                       ; $4c51: $ff
    rst $38                                       ; $4c52: $ff
    rst $38                                       ; $4c53: $ff
    rst $38                                       ; $4c54: $ff
    rst $38                                       ; $4c55: $ff
    rst $38                                       ; $4c56: $ff
    rst $38                                       ; $4c57: $ff
    nop                                           ; $4c58: $00
    rst $38                                       ; $4c59: $ff
    rst $38                                       ; $4c5a: $ff
    rst $38                                       ; $4c5b: $ff
    rst $38                                       ; $4c5c: $ff
    rst $38                                       ; $4c5d: $ff
    rst $38                                       ; $4c5e: $ff
    rst $38                                       ; $4c5f: $ff
    rst $38                                       ; $4c60: $ff
    rst $38                                       ; $4c61: $ff
    rst $38                                       ; $4c62: $ff
    rst $38                                       ; $4c63: $ff
    rst $38                                       ; $4c64: $ff
    rst $38                                       ; $4c65: $ff
    rst $38                                       ; $4c66: $ff
    rst $38                                       ; $4c67: $ff
    rst $38                                       ; $4c68: $ff
    nop                                           ; $4c69: $00
    rst $38                                       ; $4c6a: $ff
    rst $38                                       ; $4c6b: $ff
    rst $38                                       ; $4c6c: $ff
    rst $38                                       ; $4c6d: $ff
    rst $38                                       ; $4c6e: $ff
    rst $38                                       ; $4c6f: $ff
    rst $38                                       ; $4c70: $ff
    rst $38                                       ; $4c71: $ff
    rst $38                                       ; $4c72: $ff
    rst $38                                       ; $4c73: $ff
    rst $38                                       ; $4c74: $ff
    rst $38                                       ; $4c75: $ff
    rst $38                                       ; $4c76: $ff
    rst $38                                       ; $4c77: $ff
    rst $38                                       ; $4c78: $ff
    rst $38                                       ; $4c79: $ff
    nop                                           ; $4c7a: $00
    rst $38                                       ; $4c7b: $ff
    rst $38                                       ; $4c7c: $ff
    rst $38                                       ; $4c7d: $ff
    rst $38                                       ; $4c7e: $ff
    rst $38                                       ; $4c7f: $ff
    rst $38                                       ; $4c80: $ff
    rst $38                                       ; $4c81: $ff
    rst $38                                       ; $4c82: $ff
    rst $38                                       ; $4c83: $ff
    rst $38                                       ; $4c84: $ff
    rst $38                                       ; $4c85: $ff
    rst $38                                       ; $4c86: $ff
    rst $38                                       ; $4c87: $ff
    rst $38                                       ; $4c88: $ff
    rst $38                                       ; $4c89: $ff
    rst $38                                       ; $4c8a: $ff
    nop                                           ; $4c8b: $00
    rst $38                                       ; $4c8c: $ff
    rst $38                                       ; $4c8d: $ff
    rst $38                                       ; $4c8e: $ff
    rst $38                                       ; $4c8f: $ff
    rst $38                                       ; $4c90: $ff
    rst $38                                       ; $4c91: $ff
    rst $38                                       ; $4c92: $ff
    rst $38                                       ; $4c93: $ff
    rst $38                                       ; $4c94: $ff
    rst $38                                       ; $4c95: $ff
    rst $38                                       ; $4c96: $ff
    rst $38                                       ; $4c97: $ff
    rst $38                                       ; $4c98: $ff
    rst $38                                       ; $4c99: $ff
    rst $38                                       ; $4c9a: $ff
    rst $38                                       ; $4c9b: $ff
    nop                                           ; $4c9c: $00
    rst $38                                       ; $4c9d: $ff
    rst $38                                       ; $4c9e: $ff
    rst $38                                       ; $4c9f: $ff
    rst $38                                       ; $4ca0: $ff
    rst $38                                       ; $4ca1: $ff
    rst $38                                       ; $4ca2: $ff
    rst $38                                       ; $4ca3: $ff
    rst $38                                       ; $4ca4: $ff
    rst $38                                       ; $4ca5: $ff
    rst $38                                       ; $4ca6: $ff
    rst $38                                       ; $4ca7: $ff
    rst $38                                       ; $4ca8: $ff
    rst $38                                       ; $4ca9: $ff
    rst $38                                       ; $4caa: $ff
    rst $38                                       ; $4cab: $ff
    rst $38                                       ; $4cac: $ff
    nop                                           ; $4cad: $00
    rst $38                                       ; $4cae: $ff
    rst $38                                       ; $4caf: $ff
    rst $38                                       ; $4cb0: $ff
    rst $38                                       ; $4cb1: $ff
    rst $38                                       ; $4cb2: $ff
    rst $38                                       ; $4cb3: $ff
    rst $38                                       ; $4cb4: $ff
    rst $38                                       ; $4cb5: $ff
    rst $38                                       ; $4cb6: $ff
    rst $38                                       ; $4cb7: $ff
    rst $38                                       ; $4cb8: $ff
    rst $38                                       ; $4cb9: $ff
    rst $38                                       ; $4cba: $ff
    rst $38                                       ; $4cbb: $ff
    rst $38                                       ; $4cbc: $ff
    rst $38                                       ; $4cbd: $ff
    nop                                           ; $4cbe: $00
    rst $38                                       ; $4cbf: $ff
    rst $38                                       ; $4cc0: $ff
    rst $38                                       ; $4cc1: $ff
    rst $38                                       ; $4cc2: $ff
    rst $38                                       ; $4cc3: $ff
    rst $38                                       ; $4cc4: $ff
    rst $38                                       ; $4cc5: $ff
    rst $38                                       ; $4cc6: $ff
    rst $38                                       ; $4cc7: $ff
    rst $38                                       ; $4cc8: $ff
    rst $38                                       ; $4cc9: $ff
    rst $38                                       ; $4cca: $ff
    rst $38                                       ; $4ccb: $ff
    rst $38                                       ; $4ccc: $ff
    rst $38                                       ; $4ccd: $ff
    rst $38                                       ; $4cce: $ff
    nop                                           ; $4ccf: $00
    rst $38                                       ; $4cd0: $ff
    rst $38                                       ; $4cd1: $ff
    rst $38                                       ; $4cd2: $ff
    rst $38                                       ; $4cd3: $ff
    rst $38                                       ; $4cd4: $ff
    rst $38                                       ; $4cd5: $ff
    rst $38                                       ; $4cd6: $ff
    rst $38                                       ; $4cd7: $ff
    rst $38                                       ; $4cd8: $ff
    rst $38                                       ; $4cd9: $ff
    rst $38                                       ; $4cda: $ff
    rst $38                                       ; $4cdb: $ff
    rst $38                                       ; $4cdc: $ff
    rst $38                                       ; $4cdd: $ff
    rst $38                                       ; $4cde: $ff
    rst $38                                       ; $4cdf: $ff
    nop                                           ; $4ce0: $00
    rst $38                                       ; $4ce1: $ff
    rst $38                                       ; $4ce2: $ff

Jump_05c_4ce3:
    rst $38                                       ; $4ce3: $ff

Jump_05c_4ce4:
    rst $38                                       ; $4ce4: $ff
    rst $38                                       ; $4ce5: $ff
    rst $38                                       ; $4ce6: $ff
    rst $38                                       ; $4ce7: $ff
    rst $38                                       ; $4ce8: $ff
    rst $38                                       ; $4ce9: $ff
    rst $38                                       ; $4cea: $ff
    rst $38                                       ; $4ceb: $ff
    rst $38                                       ; $4cec: $ff
    rst $38                                       ; $4ced: $ff
    rst $38                                       ; $4cee: $ff
    rst $38                                       ; $4cef: $ff
    rst $38                                       ; $4cf0: $ff
    nop                                           ; $4cf1: $00
    rst $38                                       ; $4cf2: $ff
    rst $38                                       ; $4cf3: $ff
    rst $38                                       ; $4cf4: $ff
    rst $38                                       ; $4cf5: $ff
    rst $38                                       ; $4cf6: $ff
    rst $38                                       ; $4cf7: $ff
    rst $38                                       ; $4cf8: $ff
    rst $38                                       ; $4cf9: $ff
    rst $38                                       ; $4cfa: $ff
    rst $38                                       ; $4cfb: $ff
    rst $38                                       ; $4cfc: $ff
    rst $38                                       ; $4cfd: $ff
    rst $38                                       ; $4cfe: $ff
    rst $30                                       ; $4cff: $f7
    nop                                           ; $4d00: $00
    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00
    and l                                         ; $4d03: $a5
    nop                                           ; $4d04: $00
    rst $38                                       ; $4d05: $ff
    push hl                                       ; $4d06: $e5
    ld [hl-], a                                   ; $4d07: $32
    or $e6                                        ; $4d08: $f6 $e6
    rst $30                                       ; $4d0a: $f7
    rst $20                                       ; $4d0b: $e7
    dec [hl]                                      ; $4d0c: $35
    db $ec                                        ; $4d0d: $ec
    xor $37                                       ; $4d0e: $ee $37
    db $ec                                        ; $4d10: $ec
    jp c, $c7f0                                   ; $4d11: $da $f0 $c7

    add sp, $33                                   ; $4d14: $e8 $33
    ld sp, $f2e0                                  ; $4d16: $31 $e0 $f2
    ld [hl], $30                                  ; $4d19: $36 $30
    scf                                           ; $4d1b: $37
    cp a                                          ; $4d1c: $bf
    ld h, $20                                     ; $4d1d: $26 $20
    daa                                           ; $4d1f: $27
    db $10                                        ; $4d20: $10
    ld d, $17                                     ; $4d21: $16 $17
    jp nz, Jump_000_34f6                          ; $4d23: $c2 $f6 $34

    rst $38                                       ; $4d26: $ff
    ld [hl], $32                                  ; $4d27: $36 $32
    jr nc, jr_05c_4d62                            ; $4d29: $30 $37

    ld sp, $3133                                  ; $4d2b: $31 $33 $31
    inc sp                                        ; $4d2e: $33
    nop                                           ; $4d2f: $00
    and b                                         ; $4d30: $a0
    ei                                            ; $4d31: $fb
    rst $38                                       ; $4d32: $ff
    rst $28                                       ; $4d33: $ef
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    ccf                                           ; $4d37: $3f
    ld c, l                                       ; $4d38: $4d
    ld l, a                                       ; $4d39: $6f
    ld c, l                                       ; $4d3a: $4d
    cp b                                          ; $4d3b: $b8
    ld c, a                                       ; $4d3c: $4f
    ld h, d                                       ; $4d3d: $62
    ld d, c                                       ; $4d3e: $51
    ld a, [c]                                     ; $4d3f: $f2
    inc sp                                        ; $4d40: $33
    ld c, e                                       ; $4d41: $4b
    dec de                                        ; $4d42: $1b
    dec h                                         ; $4d43: $25
    ld [bc], a                                    ; $4d44: $02
    ldh [rNR10], a                                ; $4d45: $e0 $10
    ret z                                         ; $4d47: $c8

    ld [bc], a                                    ; $4d48: $02
    ld a, [c]                                     ; $4d49: $f2
    inc sp                                        ; $4d4a: $33
    ld c, e                                       ; $4d4b: $4b
    dec de                                        ; $4d4c: $1b
    dec h                                         ; $4d4d: $25
    ld [bc], a                                    ; $4d4e: $02
    sbc a                                         ; $4d4f: $9f
    ld [bc], a                                    ; $4d50: $02
    or $01                                        ; $4d51: $f6 $01
    ld d, e                                       ; $4d53: $53
    ld bc, $1b4b                                  ; $4d54: $01 $4b $1b
    ld [$0825], sp                                ; $4d57: $08 $25 $08
    dec h                                         ; $4d5a: $25
    ld [$0825], sp                                ; $4d5b: $08 $25 $08
    dec h                                         ; $4d5e: $25
    ld [$0825], sp                                ; $4d5f: $08 $25 $08

jr_05c_4d62:
    dec h                                         ; $4d62: $25
    ld [$0825], sp                                ; $4d63: $08 $25 $08
    dec h                                         ; $4d66: $25
    ld [$0825], sp                                ; $4d67: $08 $25 $08
    dec h                                         ; $4d6a: $25
    ld [$0825], sp                                ; $4d6b: $08 $25 $08
    dec h                                         ; $4d6e: $25
    ld e, l                                       ; $4d6f: $5d
    inc c                                         ; $4d70: $0c
    rst $38                                       ; $4d71: $ff
    ld [c], a                                     ; $4d72: $e2
    inc l                                         ; $4d73: $2c
    ld c, h                                       ; $4d74: $4c
    dec bc                                        ; $4d75: $0b
    rst $38                                       ; $4d76: $ff
    pop hl                                        ; $4d77: $e1
    dec hl                                        ; $4d78: $2b
    ld a, [$1fe2]                                 ; $4d79: $fa $e2 $1f
    dec bc                                        ; $4d7c: $0b
    inc c                                         ; $4d7d: $0c
    inc c                                         ; $4d7e: $0c
    ld c, h                                       ; $4d7f: $4c
    ld c, h                                       ; $4d80: $4c
    db $fd                                        ; $4d81: $fd
    db $e3                                        ; $4d82: $e3
    ld sp, hl                                     ; $4d83: $f9
    ldh [$df], a                                  ; $4d84: $e0 $df
    ldh [rTMA], a                                 ; $4d86: $e0 $06
    ld a, [c]                                     ; $4d88: $f2
    pop hl                                        ; $4d89: $e1
    inc l                                         ; $4d8a: $2c
    inc l                                         ; $4d8b: $2c
    or $e0                                        ; $4d8c: $f6 $e0
    rst $30                                       ; $4d8e: $f7
    and $fe                                       ; $4d8f: $e6 $fe
    xor $c0                                       ; $4d91: $ee $c0
    db $e3                                        ; $4d93: $e3
    cp a                                          ; $4d94: $bf
    ld [c], a                                     ; $4d95: $e2
    ld b, c                                       ; $4d96: $41
    ld a, [bc]                                    ; $4d97: $0a
    ret nz                                        ; $4d98: $c0

    ldh [$be], a                                  ; $4d99: $e0 $be
    pop hl                                        ; $4d9b: $e1
    jp nz, $b7e1                                  ; $4d9c: $c2 $e1 $b7

    pop hl                                        ; $4d9f: $e1
    cp l                                          ; $4da0: $bd
    pop hl                                        ; $4da1: $e1
    ld c, h                                       ; $4da2: $4c
    ret                                           ; $4da3: $c9


    push hl                                       ; $4da4: $e5
    db $fc                                        ; $4da5: $fc
    rst $30                                       ; $4da6: $f7
    and $bc                                       ; $4da7: $e6 $bc
    db $ed                                        ; $4da9: $ed
    dec bc                                        ; $4daa: $0b
    ld l, e                                       ; $4dab: $6b
    ld l, e                                       ; $4dac: $6b
    ld c, e                                       ; $4dad: $4b
    ld c, e                                       ; $4dae: $4b
    dec bc                                        ; $4daf: $0b
    ld bc, $fd0b                                  ; $4db0: $01 $0b $fd
    ldh [$80], a                                  ; $4db3: $e0 $80
    ldh [$82], a                                  ; $4db5: $e0 $82
    and $b9                                       ; $4db7: $e6 $b9
    ld [c], a                                     ; $4db9: $e2
    ld a, [hl]                                    ; $4dba: $7e
    db $e3                                        ; $4dbb: $e3
    halt                                          ; $4dbc: $76
    ld [c], a                                     ; $4dbd: $e2
    rst $30                                       ; $4dbe: $f7
    rst $20                                       ; $4dbf: $e7
    ld [$ecc2], sp                                ; $4dc0: $08 $c2 $ec
    pop bc                                        ; $4dc3: $c1
    ldh [$c3], a                                  ; $4dc4: $e0 $c3
    ldh [rWX], a                                  ; $4dc6: $e0 $4b
    ret nz                                        ; $4dc8: $c0

    db $e4                                        ; $4dc9: $e4
    db $dd                                        ; $4dca: $dd
    db $e4                                        ; $4dcb: $e4
    ld d, a                                       ; $4dcc: $57
    and $38                                       ; $4dcd: $e6 $38
    db $e4                                        ; $4dcf: $e4
    nop                                           ; $4dd0: $00
    rst $30                                       ; $4dd1: $f7
    add sp, $45                                   ; $4dd2: $e8 $45
    jp hl                                         ; $4dd4: $e9


    jp nz, $fee2                                  ; $4dd5: $c2 $e2 $fe

    ldh [$03], a                                  ; $4dd8: $e0 $03
    db $e3                                        ; $4dda: $e3
    nop                                           ; $4ddb: $00
    ld [c], a                                     ; $4ddc: $e2
    pop bc                                        ; $4ddd: $c1
    and $4b                                       ; $4dde: $e6 $4b
    db $e3                                        ; $4de0: $e3
    nop                                           ; $4de1: $00
    jr c, @-$1b                                   ; $4de2: $38 $e3

    jp c, $f7c0                                   ; $4de4: $da $c0 $f7

    push hl                                       ; $4de7: $e5
    call z, $c0c2                                 ; $4de8: $cc $c2 $c0
    rst $20                                       ; $4deb: $e7
    pop bc                                        ; $4dec: $c1
    ld [c], a                                     ; $4ded: $e2
    ld a, [hl]                                    ; $4dee: $7e
    ldh [rSCY], a                                 ; $4def: $e0 $42
    ld [c], a                                     ; $4df1: $e2
    inc bc                                        ; $4df2: $03
    dec bc                                        ; $4df3: $0b
    ld a, [bc]                                    ; $4df4: $0a
    rst $00                                       ; $4df5: $c7
    jp $c4c0                                      ; $4df6: $c3 $c0 $c4


    ccf                                           ; $4df9: $3f
    rst $20                                       ; $4dfa: $e7
    ret                                           ; $4dfb: $c9


    ld [c], a                                     ; $4dfc: $e2
    ret nz                                        ; $4dfd: $c0

    rst $20                                       ; $4dfe: $e7
    add b                                         ; $4dff: $80
    add sp, $01                                   ; $4e00: $e8 $01
    ld l, e                                       ; $4e02: $6b
    ld a, a                                       ; $4e03: $7f
    ld [c], a                                     ; $4e04: $e2
    add b                                         ; $4e05: $80
    rst $20                                       ; $4e06: $e7
    sub l                                         ; $4e07: $95
    call nz, $c281                                ; $4e08: $c4 $81 $c2
    ld [hl], l                                    ; $4e0b: $75
    call nz, $f641                                ; $4e0c: $c4 $41 $f6
    ld b, b                                       ; $4e0f: $40
    ld [c], a                                     ; $4e10: $e2
    inc b                                         ; $4e11: $04
    ld a, $e2                                     ; $4e12: $3e $e2
    ld b, d                                       ; $4e14: $42
    jp $800a                                      ; $4e15: $c3 $0a $80


    ret nz                                        ; $4e18: $c0

    rst $00                                       ; $4e19: $c7
    call nz, $c77c                                ; $4e1a: $c4 $7c $c7
    cp e                                          ; $4e1d: $bb
    jp nz, $c176                                  ; $4e1e: $c2 $76 $c1

    nop                                           ; $4e21: $00
    rst $30                                       ; $4e22: $f7
    db $e4                                        ; $4e23: $e4
    nop                                           ; $4e24: $00
    db $eb                                        ; $4e25: $eb
    add c                                         ; $4e26: $81
    ldh [$bf], a                                  ; $4e27: $e0 $bf
    jp $e700                                      ; $4e29: $c3 $00 $e7


    ld b, $c5                                     ; $4e2c: $06 $c5
    ret nz                                        ; $4e2e: $c0

    rst $18                                       ; $4e2f: $df
    ret nz                                        ; $4e30: $c0

    pop hl                                        ; $4e31: $e1
    add b                                         ; $4e32: $80
    jp $80c9                                      ; $4e33: $c3 $c9 $80


    push bc                                       ; $4e36: $c5
    ld c, l                                       ; $4e37: $4d
    push bc                                       ; $4e38: $c5
    rst $38                                       ; $4e39: $ff
    and l                                         ; $4e3a: $a5
    or a                                          ; $4e3b: $b7
    ret                                           ; $4e3c: $c9


    ld b, e                                       ; $4e3d: $43
    rst $08                                       ; $4e3e: $cf
    add c                                         ; $4e3f: $81
    push bc                                       ; $4e40: $c5
    ld a, [bc]                                    ; $4e41: $0a
    nop                                           ; $4e42: $00
    nop                                           ; $4e43: $00
    push hl                                       ; $4e44: $e5
    ld b, $c4                                     ; $4e45: $06 $c4
    ret z                                         ; $4e47: $c8

    db $e4                                        ; $4e48: $e4
    ld b, b                                       ; $4e49: $40
    adc $be                                       ; $4e4a: $ce $be
    add $56                                       ; $4e4c: $c6 $56
    and b                                         ; $4e4e: $a0
    ld [bc], a                                    ; $4e4f: $02
    db $e3                                        ; $4e50: $e3
    call nz, $02a4                                ; $4e51: $c4 $a4 $02
    ld b, b                                       ; $4e54: $40
    push hl                                       ; $4e55: $e5
    inc l                                         ; $4e56: $2c
    push bc                                       ; $4e57: $c5
    and e                                         ; $4e58: $a3
    halt                                          ; $4e59: $76
    call nz, $f780                                ; $4e5a: $c4 $80 $f7
    push bc                                       ; $4e5d: $c5
    pop bc                                        ; $4e5e: $c1
    ld a, [bc]                                    ; $4e5f: $0a
    and e                                         ; $4e60: $a3
    rst $38                                       ; $4e61: $ff
    and a                                         ; $4e62: $a7
    jp nz, $a14d                                  ; $4e63: $c2 $4d $a1

    inc l                                         ; $4e66: $2c
    ld b, c                                       ; $4e67: $41
    and a                                         ; $4e68: $a7
    ld b, b                                       ; $4e69: $40
    add $7f                                       ; $4e6a: $c6 $7f
    and l                                         ; $4e6c: $a5
    ret nz                                        ; $4e6d: $c0

    db $ec                                        ; $4e6e: $ec
    dec bc                                        ; $4e6f: $0b
    dec hl                                        ; $4e70: $2b
    add b                                         ; $4e71: $80
    ret z                                         ; $4e72: $c8

    add b                                         ; $4e73: $80
    add c                                         ; $4e74: $81
    ret nz                                        ; $4e75: $c0

    jp nz, Jump_05c_4084                          ; $4e76: $c2 $84 $40

    and c                                         ; $4e79: $a1
    ld b, [hl]                                    ; $4e7a: $46
    and e                                         ; $4e7b: $a3
    ret nz                                        ; $4e7c: $c0

    add sp, -$33                                  ; $4e7d: $e8 $cd
    adc h                                         ; $4e7f: $8c
    inc l                                         ; $4e80: $2c
    nop                                           ; $4e81: $00
    rst $38                                       ; $4e82: $ff
    ldh [rDMA], a                                 ; $4e83: $e0 $46
    and [hl]                                      ; $4e85: $a6
    ret nz                                        ; $4e86: $c0

    db $ec                                        ; $4e87: $ec
    ret nz                                        ; $4e88: $c0

    add e                                         ; $4e89: $83
    rst $10                                       ; $4e8a: $d7
    xor $c0                                       ; $4e8b: $ee $c0
    or $48                                        ; $4e8d: $f6 $48
    add d                                         ; $4e8f: $82
    add d                                         ; $4e90: $82
    ldh [rP1], a                                  ; $4e91: $e0 $00
    add b                                         ; $4e93: $80
    db $ec                                        ; $4e94: $ec
    cp $fa                                        ; $4e95: $fe $fa
    xor d                                         ; $4e97: $aa
    rst $20                                       ; $4e98: $e7
    rst $28                                       ; $4e99: $ef
    and l                                         ; $4e9a: $a5
    call nc, Call_000_07c7                        ; $4e9b: $d4 $c7 $07
    sub c                                         ; $4e9e: $91
    ret nz                                        ; $4e9f: $c0

    rst $30                                       ; $4ea0: $f7
    push de                                       ; $4ea1: $d5
    ld a, b                                       ; $4ea2: $78
    nop                                           ; $4ea3: $00
    rlca                                          ; $4ea4: $07
    adc d                                         ; $4ea5: $8a
    ld l, a                                       ; $4ea6: $6f
    ld hl, sp-$2b                                 ; $4ea7: $f8 $d5
    ld [hl], d                                    ; $4ea9: $72
    rlca                                          ; $4eaa: $07
    adc e                                         ; $4eab: $8b
    or a                                          ; $4eac: $b7
    adc l                                         ; $4ead: $8d
    pop bc                                        ; $4eae: $c1
    pop bc                                        ; $4eaf: $c1
    add b                                         ; $4eb0: $80
    add e                                         ; $4eb1: $83
    push de                                       ; $4eb2: $d5
    ld [hl], a                                    ; $4eb3: $77
    nop                                           ; $4eb4: $00
    ld b, a                                       ; $4eb5: $47
    xor c                                         ; $4eb6: $a9
    or a                                          ; $4eb7: $b7
    adc [hl]                                      ; $4eb8: $8e
    ld b, b                                       ; $4eb9: $40
    add a                                         ; $4eba: $87
    push de                                       ; $4ebb: $d5
    ld [hl], h                                    ; $4ebc: $74
    rlca                                          ; $4ebd: $07
    adc h                                         ; $4ebe: $8c
    or a                                          ; $4ebf: $b7
    adc [hl]                                      ; $4ec0: $8e
    inc a                                         ; $4ec1: $3c
    adc l                                         ; $4ec2: $8d
    push de                                       ; $4ec3: $d5
    ld l, l                                       ; $4ec4: $6d
    nop                                           ; $4ec5: $00
    rlca                                          ; $4ec6: $07
    adc h                                         ; $4ec7: $8c
    or a                                          ; $4ec8: $b7
    adc h                                         ; $4ec9: $8c
    ret nz                                        ; $4eca: $c0

    rst $20                                       ; $4ecb: $e7
    push de                                       ; $4ecc: $d5
    ld [hl], l                                    ; $4ecd: $75
    ld d, b                                       ; $4ece: $50
    rst $28                                       ; $4ecf: $ef
    or a                                          ; $4ed0: $b7
    adc c                                         ; $4ed1: $89
    add [hl]                                      ; $4ed2: $86
    ld [$75d5], a                                 ; $4ed3: $ea $d5 $75
    nop                                           ; $4ed6: $00
    rlca                                          ; $4ed7: $07
    adc b                                         ; $4ed8: $88
    or a                                          ; $4ed9: $b7
    adc [hl]                                      ; $4eda: $8e
    ld a, [hl]                                    ; $4edb: $7e
    and b                                         ; $4edc: $a0
    ret nz                                        ; $4edd: $c0

    add sp, -$2b                                  ; $4ede: $e8 $d5
    ld [hl], b                                    ; $4ee0: $70
    ret nz                                        ; $4ee1: $c0

    adc $b7                                       ; $4ee2: $ce $b7
    adc d                                         ; $4ee4: $8a
    ret nz                                        ; $4ee5: $c0

    rst $20                                       ; $4ee6: $e7
    nop                                           ; $4ee7: $00
    push de                                       ; $4ee8: $d5
    halt                                          ; $4ee9: $76
    ld d, b                                       ; $4eea: $50
    db $eb                                        ; $4eeb: $eb
    or a                                          ; $4eec: $b7
    adc a                                         ; $4eed: $8f
    ccf                                           ; $4eee: $3f
    db $eb                                        ; $4eef: $eb
    push de                                       ; $4ef0: $d5
    ld l, a                                       ; $4ef1: $6f
    rlca                                          ; $4ef2: $07
    adc [hl]                                      ; $4ef3: $8e
    ld a, [hl+]                                   ; $4ef4: $2a
    or e                                          ; $4ef5: $b3
    push de                                       ; $4ef6: $d5
    ld [hl], l                                    ; $4ef7: $75
    nop                                           ; $4ef8: $00
    ld d, b                                       ; $4ef9: $50
    rst $28                                       ; $4efa: $ef
    or a                                          ; $4efb: $b7
    sub d                                         ; $4efc: $92
    push de                                       ; $4efd: $d5
    ld a, [hl]                                    ; $4efe: $7e
    or l                                          ; $4eff: $b5
    sbc [hl]                                      ; $4f00: $9e
    push de                                       ; $4f01: $d5
    ld [hl], h                                    ; $4f02: $74
    ld d, b                                       ; $4f03: $50
    push af                                       ; $4f04: $f5
    inc bc                                        ; $4f05: $03
    xor a                                         ; $4f06: $af
    push de                                       ; $4f07: $d5
    ld [hl], e                                    ; $4f08: $73
    nop                                           ; $4f09: $00
    ld d, b                                       ; $4f0a: $50
    rst $30                                       ; $4f0b: $f7
    inc l                                         ; $4f0c: $2c
    sbc b                                         ; $4f0d: $98
    adc $f6                                       ; $4f0e: $ce $f6
    inc [hl]                                      ; $4f10: $34
    ld [hl], e                                    ; $4f11: $73
    jr nc, jr_05c_4f85                            ; $4f12: $30 $71

    ret nz                                        ; $4f14: $c0

    rst $38                                       ; $4f15: $ff
    ld b, e                                       ; $4f16: $43
    adc [hl]                                      ; $4f17: $8e
    pop bc                                        ; $4f18: $c1
    rst $38                                       ; $4f19: $ff
    nop                                           ; $4f1a: $00
    inc [hl]                                      ; $4f1b: $34
    ld a, b                                       ; $4f1c: $78
    db $e3                                        ; $4f1d: $e3
    ld [hl], l                                    ; $4f1e: $75
    ei                                            ; $4f1f: $fb
    ld h, e                                       ; $4f20: $63
    dec hl                                        ; $4f21: $2b
    add l                                         ; $4f22: $85
    add c                                         ; $4f23: $81
    reti                                          ; $4f24: $d9


    nop                                           ; $4f25: $00
    sub l                                         ; $4f26: $95
    add e                                         ; $4f27: $83
    dec h                                         ; $4f28: $25
    cp a                                          ; $4f29: $bf
    cp $00                                        ; $4f2a: $fe $00
    nop                                           ; $4f2c: $00
    sub a                                         ; $4f2d: $97
    ld e, a                                       ; $4f2e: $5f
    ld sp, hl                                     ; $4f2f: $f9
    ld a, d                                       ; $4f30: $7a
    xor a                                         ; $4f31: $af
    adc $6b                                       ; $4f32: $ce $6b
    ret                                           ; $4f34: $c9


    ld h, h                                       ; $4f35: $64
    inc hl                                        ; $4f36: $23
    sub d                                         ; $4f37: $92
    pop bc                                        ; $4f38: $c1
    ld c, d                                       ; $4f39: $4a
    nop                                           ; $4f3a: $00
    sub l                                         ; $4f3b: $95
    nop                                           ; $4f3c: $00
    cp e                                          ; $4f3d: $bb
    db $e3                                        ; $4f3e: $e3
    inc hl                                        ; $4f3f: $23
    sub d                                         ; $4f40: $92
    nop                                           ; $4f41: $00
    sbc a                                         ; $4f42: $9f
    inc hl                                        ; $4f43: $23
    sbc a                                         ; $4f44: $9f
    db $dd                                        ; $4f45: $dd
    rst $38                                       ; $4f46: $ff
    inc hl                                        ; $4f47: $23
    sbc c                                         ; $4f48: $99
    db $dd                                        ; $4f49: $dd
    cp $d8                                        ; $4f4a: $fe $d8
    ld b, [hl]                                    ; $4f4c: $46
    nop                                           ; $4f4d: $00
    inc hl                                        ; $4f4e: $23
    sub c                                         ; $4f4f: $91
    nop                                           ; $4f50: $00
    sbc a                                         ; $4f51: $9f
    dec a                                         ; $4f52: $3d
    ret z                                         ; $4f53: $c8

    inc hl                                        ; $4f54: $23
    sub b                                         ; $4f55: $90
    nop                                           ; $4f56: $00
    sbc a                                         ; $4f57: $9f
    adc a                                         ; $4f58: $8f
    ld b, [hl]                                    ; $4f59: $46
    inc hl                                        ; $4f5a: $23
    sub d                                         ; $4f5b: $92
    nop                                           ; $4f5c: $00
    sbc a                                         ; $4f5d: $9f
    nop                                           ; $4f5e: $00
    ret c                                         ; $4f5f: $d8

    ld h, $23                                     ; $4f60: $26 $23
    sub d                                         ; $4f62: $92
    nop                                           ; $4f63: $00
    sbc a                                         ; $4f64: $9f
    ld a, e                                       ; $4f65: $7b
    ld h, l                                       ; $4f66: $65
    inc hl                                        ; $4f67: $23
    sub e                                         ; $4f68: $93
    nop                                           ; $4f69: $00
    sbc a                                         ; $4f6a: $9f
    call nz, $dd9f                                ; $4f6b: $c4 $9f $dd
    rst $38                                       ; $4f6e: $ff
    nop                                           ; $4f6f: $00
    inc hl                                        ; $4f70: $23
    sbc a                                         ; $4f71: $9f
    db $dd                                        ; $4f72: $dd
    db $fd                                        ; $4f73: $fd
    inc hl                                        ; $4f74: $23
    sbc a                                         ; $4f75: $9f
    and c                                         ; $4f76: $a1
    sbc e                                         ; $4f77: $9b
    add c                                         ; $4f78: $81
    rst $38                                       ; $4f79: $ff
    db $dd                                        ; $4f7a: $dd
    ei                                            ; $4f7b: $fb
    ret nz                                        ; $4f7c: $c0

    rst $38                                       ; $4f7d: $ff
    ldh a, [$da]                                  ; $4f7e: $f0 $da
    nop                                           ; $4f80: $00
    call c, $ffff                                 ; $4f81: $dc $ff $ff
    rst $38                                       ; $4f84: $ff

jr_05c_4f85:
    rst $38                                       ; $4f85: $ff
    rst $38                                       ; $4f86: $ff
    rst $38                                       ; $4f87: $ff
    rst $38                                       ; $4f88: $ff
    rst $38                                       ; $4f89: $ff
    rst $38                                       ; $4f8a: $ff
    rst $38                                       ; $4f8b: $ff
    rst $38                                       ; $4f8c: $ff
    rst $38                                       ; $4f8d: $ff

Jump_05c_4f8e:
    rst $38                                       ; $4f8e: $ff
    rst $38                                       ; $4f8f: $ff
    rst $38                                       ; $4f90: $ff
    nop                                           ; $4f91: $00
    rst $38                                       ; $4f92: $ff
    rst $38                                       ; $4f93: $ff
    rst $38                                       ; $4f94: $ff
    rst $38                                       ; $4f95: $ff
    rst $38                                       ; $4f96: $ff
    rst $38                                       ; $4f97: $ff
    rst $38                                       ; $4f98: $ff
    rst $38                                       ; $4f99: $ff
    rst $38                                       ; $4f9a: $ff
    rst $38                                       ; $4f9b: $ff
    rst $38                                       ; $4f9c: $ff
    rst $38                                       ; $4f9d: $ff
    rst $38                                       ; $4f9e: $ff
    rst $38                                       ; $4f9f: $ff
    rst $38                                       ; $4fa0: $ff
    rst $38                                       ; $4fa1: $ff
    inc b                                         ; $4fa2: $04
    rst $38                                       ; $4fa3: $ff
    rst $38                                       ; $4fa4: $ff
    rst $38                                       ; $4fa5: $ff
    rst $38                                       ; $4fa6: $ff
    inc c                                         ; $4fa7: $0c
    sbc d                                         ; $4fa8: $9a
    cp a                                          ; $4fa9: $bf
    rst $38                                       ; $4faa: $ff
    rst $38                                       ; $4fab: $ff
    rst $38                                       ; $4fac: $ff
    rst $38                                       ; $4fad: $ff
    rst $38                                       ; $4fae: $ff
    rst $38                                       ; $4faf: $ff
    rst $38                                       ; $4fb0: $ff
    rst $38                                       ; $4fb1: $ff
    nop                                           ; $4fb2: $00
    nop                                           ; $4fb3: $00
    sub d                                         ; $4fb4: $92
    nop                                           ; $4fb5: $00
    nop                                           ; $4fb6: $00
    nop                                           ; $4fb7: $00
    db $db                                        ; $4fb8: $db
    inc l                                         ; $4fb9: $2c
    jr nz, @+$01                                  ; $4fba: $20 $ff

    ld [c], a                                     ; $4fbc: $e2
    nop                                           ; $4fbd: $00
    ld sp, $e1ff                                  ; $4fbe: $31 $ff $e1
    ld h, b                                       ; $4fc1: $60
    ld e, e                                       ; $4fc2: $5b
    ld b, d                                       ; $4fc3: $42
    rst $38                                       ; $4fc4: $ff
    ld [c], a                                     ; $4fc5: $e2
    nop                                           ; $4fc6: $00

jr_05c_4fc7:
    rst $38                                       ; $4fc7: $ff
    rst $38                                       ; $4fc8: $ff
    rst $20                                       ; $4fc9: $e7
    and $c0                                       ; $4fca: $e6 $c0
    ld [$e2bf], a                                 ; $4fcc: $ea $bf $e2
    ld e, d                                       ; $4fcf: $5a
    ret nz                                        ; $4fd0: $c0

    rst $38                                       ; $4fd1: $ff
    cp $c0                                        ; $4fd2: $fe $c0
    xor $0a                                       ; $4fd4: $ee $0a
    dec bc                                        ; $4fd6: $0b
    ld sp, $3b4d                                  ; $4fd7: $31 $4d $3b
    ld d, l                                       ; $4fda: $55
    inc a                                         ; $4fdb: $3c
    rst $00                                       ; $4fdc: $c7
    ld sp, $5f31                                  ; $4fdd: $31 $31 $5f
    add b                                         ; $4fe0: $80

jr_05c_4fe1:
    rst $38                                       ; $4fe1: $ff
    add b                                         ; $4fe2: $80
    rst $28                                       ; $4fe3: $ef
    jp nz, Jump_000_31e0                          ; $4fe4: $c2 $e0 $31

    ld b, a                                       ; $4fe7: $47
    ld a, a                                       ; $4fe8: $7f
    ld [hl-], a                                   ; $4fe9: $32
    jr nc, jr_05c_501c                            ; $4fea: $30 $30

    ld c, b                                       ; $4fec: $48
    ld c, c                                       ; $4fed: $49
    ld sp, $c05e                                  ; $4fee: $31 $5e $c0
    rst $38                                       ; $4ff1: $ff
    ld a, h                                       ; $4ff2: $7c
    db $ec                                        ; $4ff3: $ec
    db $eb                                        ; $4ff4: $eb
    inc b                                         ; $4ff5: $04
    db $e3                                        ; $4ff6: $e3
    ld c, l                                       ; $4ff7: $4d
    ld b, [hl]                                    ; $4ff8: $46
    ld [hl], $6d                                  ; $4ff9: $36 $6d
    ld l, l                                       ; $4ffb: $6d
    ret nz                                        ; $4ffc: $c0

    pop hl                                        ; $4ffd: $e1
    ld a, c                                       ; $4ffe: $79
    ld h, c                                       ; $4fff: $61
    ret nz                                        ; $5000: $c0

    rst $38                                       ; $5001: $ff
    ret nz                                        ; $5002: $c0

    ldh a, [rKEY1]                                ; $5003: $f0 $4d
    ld [hl-], a                                   ; $5005: $32
    ld l, d                                       ; $5006: $6a
    ld l, l                                       ; $5007: $6d
    rst $38                                       ; $5008: $ff
    ldh [$cb], a                                  ; $5009: $e0 $cb
    add hl, sp                                    ; $500b: $39
    ld sp, $e280                                  ; $500c: $31 $80 $e2
    ld e, d                                       ; $500f: $5a
    jp z, $80ff                                   ; $5010: $ca $ff $80

    db $ec                                        ; $5013: $ec
    add hl, sp                                    ; $5014: $39
    jr nc, jr_05c_4fc7                            ; $5015: $30 $b0

    ret nz                                        ; $5017: $c0

    pop hl                                        ; $5018: $e1
    ld b, c                                       ; $5019: $41
    ldh [rP1], a                                  ; $501a: $e0 $00

jr_05c_501c:
    rst $38                                       ; $501c: $ff
    ld b, b                                       ; $501d: $40
    ld a, [c]                                     ; $501e: $f2
    ld d, d                                       ; $501f: $52
    jr nc, jr_05c_4fe1                            ; $5020: $30 $bf

    pop hl                                        ; $5022: $e1
    ld d, d                                       ; $5023: $52
    push hl                                       ; $5024: $e5
    ld sp, $e141                                  ; $5025: $31 $41 $e1
    ld e, d                                       ; $5028: $5a
    add b                                         ; $5029: $80
    rst $18                                       ; $502a: $df
    nop                                           ; $502b: $00
    db $ec                                        ; $502c: $ec
    ld [$774d], sp                                ; $502d: $08 $4d $77
    dec e                                         ; $5030: $1d
    ld l, l                                       ; $5031: $6d
    cp a                                          ; $5032: $bf
    ldh [rOCPS], a                                ; $5033: $e0 $6a
    add e                                         ; $5035: $83
    and a                                         ; $5036: $a7
    ld bc, $c0e3                                  ; $5037: $01 $e3 $c0
    rst $38                                       ; $503a: $ff
    ret nz                                        ; $503b: $c0

    swap e                                        ; $503c: $cb $33
    dec d                                         ; $503e: $15
    add hl, sp                                    ; $503f: $39
    ld [bc], a                                    ; $5040: $02
    ldh [$82], a                                  ; $5041: $e0 $82
    ret nz                                        ; $5043: $c0

    add h                                         ; $5044: $84
    and c                                         ; $5045: $a1
    ret nz                                        ; $5046: $c0

    rst $38                                       ; $5047: $ff
    add b                                         ; $5048: $80
    ret nc                                        ; $5049: $d0

    or a                                          ; $504a: $b7
    ld [$5231], sp                                ; $504b: $08 $31 $52
    jp nz, $83c2                                  ; $504e: $c2 $c2 $83

    add b                                         ; $5051: $80
    ret nz                                        ; $5052: $c0

    ldh [$5a], a                                  ; $5053: $e0 $5a
    call c, $ffc0                                 ; $5055: $dc $c0 $ff
    db $ec                                        ; $5058: $ec
    db $eb                                        ; $5059: $eb
    dec b                                         ; $505a: $05
    dec b                                         ; $505b: $05
    dec d                                         ; $505c: $15
    ld bc, $6ae0                                  ; $505d: $01 $e0 $6a
    ld l, d                                       ; $5060: $6a
    add a                                         ; $5061: $87
    ld l, d                                       ; $5062: $6a
    ld c, b                                       ; $5063: $48
    add h                                         ; $5064: $84
    ret nz                                        ; $5065: $c0

    pop hl                                        ; $5066: $e1
    add b                                         ; $5067: $80
    rst $38                                       ; $5068: $ff
    db $ed                                        ; $5069: $ed
    db $ec                                        ; $506a: $ec
    ld [$aca0], sp                                ; $506b: $08 $a0 $ac
    sbc [hl]                                      ; $506e: $9e
    pop bc                                        ; $506f: $c1
    ret nz                                        ; $5070: $c0

    jr nc, jr_05c_50a3                            ; $5071: $30 $30

    add e                                         ; $5073: $83
    add b                                         ; $5074: $80
    ret nz                                        ; $5075: $c0

    rst $38                                       ; $5076: $ff
    ret nz                                        ; $5077: $c0

    di                                            ; $5078: $f3
    add c                                         ; $5079: $81
    call $c083                                    ; $507a: $cd $83 $c0
    ldh [$71], a                                  ; $507d: $e0 $71
    ld a, c                                       ; $507f: $79
    ret nz                                        ; $5080: $c0

    rst $38                                       ; $5081: $ff
    add b                                         ; $5082: $80
    di                                            ; $5083: $f3
    xor h                                         ; $5084: $ac
    xor c                                         ; $5085: $a9
    rrca                                          ; $5086: $0f
    add h                                         ; $5087: $84
    ld [hl], $36                                  ; $5088: $36 $36
    ld l, [hl]                                    ; $508a: $6e
    pop bc                                        ; $508b: $c1
    ldh [$c0], a                                  ; $508c: $e0 $c0
    db $e4                                        ; $508e: $e4
    ld b, b                                       ; $508f: $40
    rst $18                                       ; $5090: $df
    ld b, b                                       ; $5091: $40
    db $eb                                        ; $5092: $eb
    rra                                           ; $5093: $1f
    add c                                         ; $5094: $81
    add b                                         ; $5095: $80
    add b                                         ; $5096: $80
    ld l, a                                       ; $5097: $6f
    ld l, a                                       ; $5098: $6f
    jp nz, $80e0                                  ; $5099: $c2 $e0 $80

    rst $38                                       ; $509c: $ff
    rst $38                                       ; $509d: $ff
    rst $38                                       ; $509e: $ff
    nop                                           ; $509f: $00
    rst $38                                       ; $50a0: $ff
    rst $38                                       ; $50a1: $ff
    rst $38                                       ; $50a2: $ff

jr_05c_50a3:
    rst $38                                       ; $50a3: $ff
    rst $38                                       ; $50a4: $ff
    rst $38                                       ; $50a5: $ff
    rst $38                                       ; $50a6: $ff
    rst $38                                       ; $50a7: $ff
    rst $38                                       ; $50a8: $ff
    rst $38                                       ; $50a9: $ff
    rst $38                                       ; $50aa: $ff
    rst $38                                       ; $50ab: $ff
    rst $38                                       ; $50ac: $ff
    rst $38                                       ; $50ad: $ff
    rst $38                                       ; $50ae: $ff
    rst $38                                       ; $50af: $ff
    nop                                           ; $50b0: $00
    rst $38                                       ; $50b1: $ff
    rst $38                                       ; $50b2: $ff
    rst $38                                       ; $50b3: $ff
    rst $38                                       ; $50b4: $ff
    rst $38                                       ; $50b5: $ff
    rst $38                                       ; $50b6: $ff
    rst $38                                       ; $50b7: $ff
    rst $38                                       ; $50b8: $ff
    rst $38                                       ; $50b9: $ff
    rst $38                                       ; $50ba: $ff
    rst $38                                       ; $50bb: $ff
    rst $38                                       ; $50bc: $ff
    rst $38                                       ; $50bd: $ff
    rst $38                                       ; $50be: $ff
    rst $38                                       ; $50bf: $ff
    rst $38                                       ; $50c0: $ff
    nop                                           ; $50c1: $00
    rst $38                                       ; $50c2: $ff
    rst $38                                       ; $50c3: $ff
    rst $38                                       ; $50c4: $ff
    rst $38                                       ; $50c5: $ff
    rst $38                                       ; $50c6: $ff
    rst $38                                       ; $50c7: $ff
    rst $38                                       ; $50c8: $ff
    rst $38                                       ; $50c9: $ff
    rst $38                                       ; $50ca: $ff
    rst $38                                       ; $50cb: $ff
    rst $38                                       ; $50cc: $ff
    rst $38                                       ; $50cd: $ff
    rst $38                                       ; $50ce: $ff
    rst $38                                       ; $50cf: $ff
    rst $38                                       ; $50d0: $ff
    rst $38                                       ; $50d1: $ff
    nop                                           ; $50d2: $00
    rst $38                                       ; $50d3: $ff
    rst $38                                       ; $50d4: $ff
    rst $38                                       ; $50d5: $ff
    rst $38                                       ; $50d6: $ff
    rst $38                                       ; $50d7: $ff
    rst $38                                       ; $50d8: $ff
    rst $38                                       ; $50d9: $ff
    rst $38                                       ; $50da: $ff
    rst $38                                       ; $50db: $ff
    rst $38                                       ; $50dc: $ff
    rst $38                                       ; $50dd: $ff
    rst $38                                       ; $50de: $ff
    rst $38                                       ; $50df: $ff
    rst $38                                       ; $50e0: $ff
    rst $38                                       ; $50e1: $ff
    rst $38                                       ; $50e2: $ff
    nop                                           ; $50e3: $00
    rst $38                                       ; $50e4: $ff
    rst $38                                       ; $50e5: $ff
    rst $38                                       ; $50e6: $ff
    rst $38                                       ; $50e7: $ff
    rst $38                                       ; $50e8: $ff
    rst $38                                       ; $50e9: $ff
    rst $38                                       ; $50ea: $ff
    rst $38                                       ; $50eb: $ff
    rst $38                                       ; $50ec: $ff
    rst $38                                       ; $50ed: $ff
    rst $38                                       ; $50ee: $ff
    rst $38                                       ; $50ef: $ff
    rst $38                                       ; $50f0: $ff
    rst $38                                       ; $50f1: $ff
    rst $38                                       ; $50f2: $ff
    rst $38                                       ; $50f3: $ff
    nop                                           ; $50f4: $00
    rst $38                                       ; $50f5: $ff
    rst $38                                       ; $50f6: $ff
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    rst $38                                       ; $50f9: $ff
    rst $38                                       ; $50fa: $ff
    rst $38                                       ; $50fb: $ff
    rst $38                                       ; $50fc: $ff
    rst $38                                       ; $50fd: $ff
    rst $38                                       ; $50fe: $ff
    rst $38                                       ; $50ff: $ff
    rst $38                                       ; $5100: $ff
    rst $38                                       ; $5101: $ff
    rst $38                                       ; $5102: $ff
    rst $38                                       ; $5103: $ff
    rst $38                                       ; $5104: $ff
    nop                                           ; $5105: $00
    rst $38                                       ; $5106: $ff
    rst $38                                       ; $5107: $ff
    rst $38                                       ; $5108: $ff
    rst $38                                       ; $5109: $ff
    rst $38                                       ; $510a: $ff
    rst $38                                       ; $510b: $ff
    rst $38                                       ; $510c: $ff
    rst $38                                       ; $510d: $ff
    rst $38                                       ; $510e: $ff
    rst $38                                       ; $510f: $ff
    rst $38                                       ; $5110: $ff
    rst $38                                       ; $5111: $ff
    rst $38                                       ; $5112: $ff
    rst $38                                       ; $5113: $ff
    rst $38                                       ; $5114: $ff
    rst $38                                       ; $5115: $ff
    nop                                           ; $5116: $00
    rst $38                                       ; $5117: $ff
    rst $38                                       ; $5118: $ff
    rst $38                                       ; $5119: $ff
    rst $38                                       ; $511a: $ff
    rst $38                                       ; $511b: $ff
    rst $38                                       ; $511c: $ff
    rst $38                                       ; $511d: $ff
    rst $38                                       ; $511e: $ff
    rst $38                                       ; $511f: $ff
    rst $38                                       ; $5120: $ff
    rst $38                                       ; $5121: $ff
    rst $38                                       ; $5122: $ff
    rst $38                                       ; $5123: $ff
    rst $38                                       ; $5124: $ff
    rst $38                                       ; $5125: $ff
    rst $38                                       ; $5126: $ff
    nop                                           ; $5127: $00
    rst $38                                       ; $5128: $ff
    rst $38                                       ; $5129: $ff
    rst $38                                       ; $512a: $ff
    rst $38                                       ; $512b: $ff
    rst $38                                       ; $512c: $ff
    rst $38                                       ; $512d: $ff
    rst $38                                       ; $512e: $ff
    rst $38                                       ; $512f: $ff
    rst $38                                       ; $5130: $ff
    rst $38                                       ; $5131: $ff
    rst $38                                       ; $5132: $ff
    rst $38                                       ; $5133: $ff
    rst $38                                       ; $5134: $ff
    rst $38                                       ; $5135: $ff
    rst $38                                       ; $5136: $ff
    rst $38                                       ; $5137: $ff
    nop                                           ; $5138: $00
    rst $38                                       ; $5139: $ff
    rst $38                                       ; $513a: $ff
    rst $38                                       ; $513b: $ff
    rst $38                                       ; $513c: $ff
    rst $38                                       ; $513d: $ff
    rst $38                                       ; $513e: $ff
    rst $38                                       ; $513f: $ff
    rst $38                                       ; $5140: $ff
    rst $38                                       ; $5141: $ff
    rst $38                                       ; $5142: $ff
    rst $38                                       ; $5143: $ff
    rst $38                                       ; $5144: $ff
    rst $38                                       ; $5145: $ff
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    rst $38                                       ; $5148: $ff
    nop                                           ; $5149: $00
    rst $38                                       ; $514a: $ff
    rst $38                                       ; $514b: $ff
    rst $38                                       ; $514c: $ff
    rst $38                                       ; $514d: $ff
    rst $38                                       ; $514e: $ff
    rst $38                                       ; $514f: $ff
    rst $38                                       ; $5150: $ff
    rst $38                                       ; $5151: $ff
    rst $38                                       ; $5152: $ff
    rst $38                                       ; $5153: $ff
    rst $38                                       ; $5154: $ff
    rst $38                                       ; $5155: $ff
    rst $38                                       ; $5156: $ff
    rst $38                                       ; $5157: $ff
    rst $38                                       ; $5158: $ff
    rst $38                                       ; $5159: $ff
    nop                                           ; $515a: $00
    rst $38                                       ; $515b: $ff
    rst $38                                       ; $515c: $ff
    rst $38                                       ; $515d: $ff
    db $fd                                        ; $515e: $fd
    nop                                           ; $515f: $00
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    and l                                         ; $5162: $a5
    nop                                           ; $5163: $00
    rst $38                                       ; $5164: $ff
    push hl                                       ; $5165: $e5
    ld [hl-], a                                   ; $5166: $32
    or $e6                                        ; $5167: $f6 $e6
    rst $30                                       ; $5169: $f7
    rst $20                                       ; $516a: $e7
    dec [hl]                                      ; $516b: $35
    db $ec                                        ; $516c: $ec
    xor $37                                       ; $516d: $ee $37
    db $ec                                        ; $516f: $ec
    jp c, $c7f0                                   ; $5170: $da $f0 $c7

    add sp, $33                                   ; $5173: $e8 $33
    ld sp, $f2e0                                  ; $5175: $31 $e0 $f2
    ld [hl], $30                                  ; $5178: $36 $30
    scf                                           ; $517a: $37
    cp a                                          ; $517b: $bf
    ld h, $20                                     ; $517c: $26 $20
    daa                                           ; $517e: $27
    db $10                                        ; $517f: $10
    ld d, $17                                     ; $5180: $16 $17
    jp nz, Jump_000_34f6                          ; $5182: $c2 $f6 $34

    rst $38                                       ; $5185: $ff
    ld [hl], $32                                  ; $5186: $36 $32
    jr nc, jr_05c_51c1                            ; $5188: $30 $37

    ld sp, $3133                                  ; $518a: $31 $33 $31
    inc sp                                        ; $518d: $33
    nop                                           ; $518e: $00
    and b                                         ; $518f: $a0
    ei                                            ; $5190: $fb
    rst $38                                       ; $5191: $ff
    rst $28                                       ; $5192: $ef
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    sbc [hl]                                      ; $5196: $9e
    ld d, c                                       ; $5197: $51
    adc $51                                       ; $5198: $ce $51
    ld c, e                                       ; $519a: $4b
    ld d, h                                       ; $519b: $54
    ld a, [$f255]                                 ; $519c: $fa $55 $f2
    inc sp                                        ; $519f: $33
    ld c, e                                       ; $51a0: $4b
    dec de                                        ; $51a1: $1b
    dec h                                         ; $51a2: $25
    ld [bc], a                                    ; $51a3: $02
    ldh [rNR10], a                                ; $51a4: $e0 $10
    ret z                                         ; $51a6: $c8

    ld [bc], a                                    ; $51a7: $02
    ld a, [c]                                     ; $51a8: $f2
    inc sp                                        ; $51a9: $33
    ld c, e                                       ; $51aa: $4b
    dec de                                        ; $51ab: $1b
    dec h                                         ; $51ac: $25
    ld [bc], a                                    ; $51ad: $02
    sbc a                                         ; $51ae: $9f
    ld [bc], a                                    ; $51af: $02
    or $01                                        ; $51b0: $f6 $01
    ld d, e                                       ; $51b2: $53
    ld bc, $1b4b                                  ; $51b3: $01 $4b $1b
    ld [$0825], sp                                ; $51b6: $08 $25 $08
    dec h                                         ; $51b9: $25
    ld [$0825], sp                                ; $51ba: $08 $25 $08
    dec h                                         ; $51bd: $25
    ld [$0825], sp                                ; $51be: $08 $25 $08

jr_05c_51c1:
    dec h                                         ; $51c1: $25
    ld [$0825], sp                                ; $51c2: $08 $25 $08
    dec h                                         ; $51c5: $25
    ld [$0825], sp                                ; $51c6: $08 $25 $08
    dec h                                         ; $51c9: $25
    ld [$0825], sp                                ; $51ca: $08 $25 $08
    dec h                                         ; $51cd: $25
    rst $18                                       ; $51ce: $df
    ld a, [hl+]                                   ; $51cf: $2a
    ld c, d                                       ; $51d0: $4a
    ld c, d                                       ; $51d1: $4a
    ld c, d                                       ; $51d2: $4a
    ld a, [bc]                                    ; $51d3: $0a
    rst $38                                       ; $51d4: $ff
    add sp, $6a                                   ; $51d5: $e8 $6a
    ld l, d                                       ; $51d7: $6a
    ccf                                           ; $51d8: $3f
    ld l, d                                       ; $51d9: $6a
    ld a, [bc]                                    ; $51da: $0a
    inc c                                         ; $51db: $0c
    ld c, h                                       ; $51dc: $4c
    inc c                                         ; $51dd: $0c
    ld c, h                                       ; $51de: $4c
    db $fd                                        ; $51df: $fd
    pop hl                                        ; $51e0: $e1
    ld sp, hl                                     ; $51e1: $f9
    ldh [rNR31], a                                ; $51e2: $e0 $1b
    inc c                                         ; $51e4: $0c
    inc c                                         ; $51e5: $0c
    push af                                       ; $51e6: $f5
    ld [c], a                                     ; $51e7: $e2
    inc l                                         ; $51e8: $2c
    inc l                                         ; $51e9: $2c
    or $e0                                        ; $51ea: $f6 $e0
    ld hl, sp-$1b                                 ; $51ec: $f8 $e5
    cp $ea                                        ; $51ee: $fe $ea
    add hl, de                                    ; $51f0: $19
    ld c, d                                       ; $51f1: $4a
    cp a                                          ; $51f2: $bf
    ldh [$c0], a                                  ; $51f3: $e0 $c0
    db $eb                                        ; $51f5: $eb
    ld a, [bc]                                    ; $51f6: $0a
    ld l, d                                       ; $51f7: $6a
    call z, $c2e1                                 ; $51f8: $cc $e1 $c2
    pop hl                                        ; $51fb: $e1
    cp d                                          ; $51fc: $ba
    pop hl                                        ; $51fd: $e1
    ld [bc], a                                    ; $51fe: $02
    cp l                                          ; $51ff: $bd
    pop hl                                        ; $5200: $e1
    ld c, h                                       ; $5201: $4c
    ret z                                         ; $5202: $c8

    db $e4                                        ; $5203: $e4
    ld hl, sp-$1b                                 ; $5204: $f8 $e5
    ret nz                                        ; $5206: $c0

    ld [$e0bf], a                                 ; $5207: $ea $bf $e0
    add b                                         ; $520a: $80
    ld [$e07e], a                                 ; $520b: $ea $7e $e0
    ret nz                                        ; $520e: $c0

    add d                                         ; $520f: $82
    push hl                                       ; $5210: $e5
    cp c                                          ; $5211: $b9
    ld [c], a                                     ; $5212: $e2
    ld a, [hl]                                    ; $5213: $7e
    db $e3                                        ; $5214: $e3
    halt                                          ; $5215: $76
    push hl                                       ; $5216: $e5
    ld l, [hl]                                    ; $5217: $6e
    ld [c], a                                     ; $5218: $e2
    ret nz                                        ; $5219: $c0

    db $eb                                        ; $521a: $eb
    ld c, d                                       ; $521b: $4a
    ld a, [hl+]                                   ; $521c: $2a
    add b                                         ; $521d: $80
    ld b, b                                       ; $521e: $40
    jp hl                                         ; $521f: $e9


    ccf                                           ; $5220: $3f
    pop hl                                        ; $5221: $e1
    ld e, l                                       ; $5222: $5d
    db $e3                                        ; $5223: $e3
    ld d, [hl]                                    ; $5224: $56
    and $38                                       ; $5225: $e6 $38
    db $e4                                        ; $5227: $e4
    ld hl, sp-$1a                                 ; $5228: $f8 $e6
    ret nz                                        ; $522a: $c0

    db $ed                                        ; $522b: $ed
    ld c, d                                       ; $522c: $4a
    rst $28                                       ; $522d: $ef
    dec bc                                        ; $522e: $0b
    dec bc                                        ; $522f: $0b
    ld l, e                                       ; $5230: $6b
    dec bc                                        ; $5231: $0b
    rst $38                                       ; $5232: $ff
    db $e3                                        ; $5233: $e3
    ld c, e                                       ; $5234: $4b
    dec hl                                        ; $5235: $2b
    ld c, d                                       ; $5236: $4a
    db $10                                        ; $5237: $10
    ret nz                                        ; $5238: $c0

    push hl                                       ; $5239: $e5
    dec b                                         ; $523a: $05
    ld [c], a                                     ; $523b: $e2
    cp b                                          ; $523c: $b8
    db $e4                                        ; $523d: $e4
    ld a, d                                       ; $523e: $7a
    ld [c], a                                     ; $523f: $e2
    inc l                                         ; $5240: $2c
    ld hl, sp-$1b                                 ; $5241: $f8 $e5
    rst $30                                       ; $5243: $f7
    ldh [$fb], a                                  ; $5244: $e0 $fb
    pop bc                                        ; $5246: $c1
    cp h                                          ; $5247: $bc
    ld sp, hl                                     ; $5248: $f9
    db $e3                                        ; $5249: $e3
    ret nz                                        ; $524a: $c0

    pop hl                                        ; $524b: $e1
    dec hl                                        ; $524c: $2b
    ld l, e                                       ; $524d: $6b
    ld l, e                                       ; $524e: $6b
    ld c, e                                       ; $524f: $4b
    rst $38                                       ; $5250: $ff
    ld [c], a                                     ; $5251: $e2
    dec bc                                        ; $5252: $0b
    pop bc                                        ; $5253: $c1
    ld c, e                                       ; $5254: $4b
    cp a                                          ; $5255: $bf
    ld [c], a                                     ; $5256: $e2
    ret nz                                        ; $5257: $c0

    ret z                                         ; $5258: $c8

    ccf                                           ; $5259: $3f
    rst $20                                       ; $525a: $e7
    ret nz                                        ; $525b: $c0

    rst $20                                       ; $525c: $e7
    add b                                         ; $525d: $80
    xor $2b                                       ; $525e: $ee $2b
    dec hl                                        ; $5260: $2b
    db $ed                                        ; $5261: $ed
    dec hl                                        ; $5262: $2b
    ret nz                                        ; $5263: $c0

    pop hl                                        ; $5264: $e1
    dec hl                                        ; $5265: $2b
    dec hl                                        ; $5266: $2b
    ld a, a                                       ; $5267: $7f
    ldh [rWX], a                                  ; $5268: $e0 $4b
    ld c, e                                       ; $526a: $4b
    ld c, d                                       ; $526b: $4a
    ret nz                                        ; $526c: $c0

    ret nz                                        ; $526d: $c0

    jp nz, $c481                                  ; $526e: $c2 $81 $c4

    ld a, b                                       ; $5271: $78
    jp nz, $e40b                                  ; $5272: $c2 $0b $e4

    ld b, c                                       ; $5275: $41
    pop af                                        ; $5276: $f1
    ld b, b                                       ; $5277: $40
    ld [c], a                                     ; $5278: $e2
    ld c, e                                       ; $5279: $4b
    dec bc                                        ; $527a: $0b
    db $fc                                        ; $527b: $fc
    cp a                                          ; $527c: $bf
    pop hl                                        ; $527d: $e1
    cp d                                          ; $527e: $ba
    ldh [$0b], a                                  ; $527f: $e0 $0b
    dec bc                                        ; $5281: $0b
    dec hl                                        ; $5282: $2b
    dec bc                                        ; $5283: $0b
    ld c, e                                       ; $5284: $4b
    dec bc                                        ; $5285: $0b
    pop bc                                        ; $5286: $c1
    ld c, d                                       ; $5287: $4a
    add b                                         ; $5288: $80
    call nz, $c67c                                ; $5289: $c4 $7c $c6
    cp e                                          ; $528c: $bb
    jp nz, $e579                                  ; $528d: $c2 $79 $e5

    ret nz                                        ; $5290: $c0

    rst $08                                       ; $5291: $cf
    ld a, [bc]                                    ; $5292: $0a
    ld a, [hl+]                                   ; $5293: $2a
    call nz, $e2bf                                ; $5294: $c4 $bf $e2
    ret nz                                        ; $5297: $c0

    and $0b                                       ; $5298: $e6 $0b
    adc $c5                                       ; $529a: $ce $c5
    ret                                           ; $529c: $c9


    rst $20                                       ; $529d: $e7
    ret nz                                        ; $529e: $c0

    reti                                          ; $529f: $d9


    ld a, [bc]                                    ; $52a0: $0a
    ld a, [hl+]                                   ; $52a1: $2a
    dec b                                         ; $52a2: $05
    ld a, [hl+]                                   ; $52a3: $2a
    cp a                                          ; $52a4: $bf
    ld [c], a                                     ; $52a5: $e2
    ld l, e                                       ; $52a6: $6b
    ld a, e                                       ; $52a7: $7b
    ld [c], a                                     ; $52a8: $e2
    or a                                          ; $52a9: $b7
    pop bc                                        ; $52aa: $c1
    ld c, l                                       ; $52ab: $4d
    ret                                           ; $52ac: $c9


    ret nz                                        ; $52ad: $c0

    rst $00                                       ; $52ae: $c7
    ld a, a                                       ; $52af: $7f
    di                                            ; $52b0: $f3
    nop                                           ; $52b1: $00
    pop bc                                        ; $52b2: $c1
    ld [c], a                                     ; $52b3: $e2
    cp a                                          ; $52b4: $bf
    db $e3                                        ; $52b5: $e3
    ret nz                                        ; $52b6: $c0

    db $eb                                        ; $52b7: $eb
    ret nz                                        ; $52b8: $c0

    and l                                         ; $52b9: $a5
    ld b, b                                       ; $52ba: $40
    db $d3                                        ; $52bb: $d3
    cp e                                          ; $52bc: $bb
    add $c1                                       ; $52bd: $c6 $c1
    db $e3                                        ; $52bf: $e3
    ld a, [hl]                                    ; $52c0: $7e
    db $e4                                        ; $52c1: $e4
    ld b, $80                                     ; $52c2: $06 $80
    push hl                                       ; $52c4: $e5
    ld c, h                                       ; $52c5: $4c
    inc l                                         ; $52c6: $2c
    push bc                                       ; $52c7: $c5
    and e                                         ; $52c8: $a3
    ld a, l                                       ; $52c9: $7d
    jp $ed80                                      ; $52ca: $c3 $80 $ed


    ld a, a                                       ; $52cd: $7f
    jp z, $e4c1                                   ; $52ce: $ca $c1 $e4

    ld [$e33d], sp                                ; $52d1: $08 $3d $e3
    ld a, $c0                                     ; $52d4: $3e $c0
    rst $30                                       ; $52d6: $f7
    and b                                         ; $52d7: $a0
    ld a, [bc]                                    ; $52d8: $0a
    inc d                                         ; $52d9: $14
    ret nz                                        ; $52da: $c0

    ld b, c                                       ; $52db: $41
    and a                                         ; $52dc: $a7
    ld b, b                                       ; $52dd: $40
    add $c0                                       ; $52de: $c6 $c0
    db $fc                                        ; $52e0: $fc
    nop                                           ; $52e1: $00
    cp e                                          ; $52e2: $bb
    jp nz, $e2c1                                  ; $52e3: $c2 $c1 $e2

    ret nz                                        ; $52e6: $c0

    ldh [rSTAT], a                                ; $52e7: $e0 $41
    and l                                         ; $52e9: $a5
    adc h                                         ; $52ea: $8c
    db $d3                                        ; $52eb: $d3
    cp h                                          ; $52ec: $bc
    and c                                         ; $52ed: $a1
    cp d                                          ; $52ee: $ba
    and l                                         ; $52ef: $a5
    ret nz                                        ; $52f0: $c0

    rst $20                                       ; $52f1: $e7
    ret nz                                        ; $52f2: $c0

    ld a, d                                       ; $52f3: $7a
    ret nz                                        ; $52f4: $c0

    pop bc                                        ; $52f5: $c1
    db $e3                                        ; $52f6: $e3
    ret nz                                        ; $52f7: $c0

    pop hl                                        ; $52f8: $e1
    reti                                          ; $52f9: $d9


    db $ed                                        ; $52fa: $ed
    ret nz                                        ; $52fb: $c0

    rst $38                                       ; $52fc: $ff
    ld a, d                                       ; $52fd: $7a
    pop bc                                        ; $52fe: $c1
    ld c, e                                       ; $52ff: $4b
    dec bc                                        ; $5300: $0b
    ld bc, $346b                                  ; $5301: $01 $6b $34
    add c                                         ; $5304: $81
    call $81f2                                    ; $5305: $cd $f2 $81
    di                                            ; $5308: $f3
    ld [hl-], a                                   ; $5309: $32
    and [hl]                                      ; $530a: $a6
    ld d, e                                       ; $530b: $53
    and l                                         ; $530c: $a5
    ret z                                         ; $530d: $c8

    jp $ffc0                                      ; $530e: $c3 $c0 $ff


    nop                                           ; $5311: $00
    ld a, [hl-]                                   ; $5312: $3a
    and l                                         ; $5313: $a5
    push de                                       ; $5314: $d5
    ld [hl], h                                    ; $5315: $74
    rrca                                          ; $5316: $0f
    add h                                         ; $5317: $84
    pop bc                                        ; $5318: $c1
    ld l, c                                       ; $5319: $69
    ld l, d                                       ; $531a: $6a
    db $f4                                        ; $531b: $f4
    push de                                       ; $531c: $d5
    ld [hl], d                                    ; $531d: $72
    adc a                                         ; $531e: $8f
    ld h, h                                       ; $531f: $64
    db $ec                                        ; $5320: $ec
    db $eb                                        ; $5321: $eb
    inc b                                         ; $5322: $04
    or a                                          ; $5323: $b7
    and [hl]                                      ; $5324: $a6
    jp nz, Jump_000_2cc1                          ; $5325: $c2 $c1 $2c

    add b                                         ; $5328: $80
    add h                                         ; $5329: $84
    push de                                       ; $532a: $d5
    ld [hl], e                                    ; $532b: $73
    adc b                                         ; $532c: $88
    ld h, l                                       ; $532d: $65
    db $ec                                        ; $532e: $ec
    db $ec                                        ; $532f: $ec
    ret nz                                        ; $5330: $c0

    ldh a, [rP1]                                  ; $5331: $f0 $00
    push de                                       ; $5333: $d5
    ld [hl], e                                    ; $5334: $73
    sbc c                                         ; $5335: $99
    ld l, c                                       ; $5336: $69
    pop bc                                        ; $5337: $c1
    ld h, [hl]                                    ; $5338: $66
    cp a                                          ; $5339: $bf
    db $d3                                        ; $533a: $d3
    push de                                       ; $533b: $d5
    ld [hl], d                                    ; $533c: $72
    ld a, [$c1e4]                                 ; $533d: $fa $e4 $c1
    ld l, h                                       ; $5340: $6c
    ld b, e                                       ; $5341: $43
    and a                                         ; $5342: $a7
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    rst $00                                       ; $5345: $c7
    push de                                       ; $5346: $d5
    ld [hl], e                                    ; $5347: $73
    adc a                                         ; $5348: $8f
    ld h, h                                       ; $5349: $64
    pop bc                                        ; $534a: $c1
    ld l, h                                       ; $534b: $6c
    inc bc                                        ; $534c: $03
    xor [hl]                                      ; $534d: $ae
    rst $38                                       ; $534e: $ff
    ret z                                         ; $534f: $c8

    push de                                       ; $5350: $d5
    ld l, l                                       ; $5351: $6d
    ld h, h                                       ; $5352: $64
    ret z                                         ; $5353: $c8

    nop                                           ; $5354: $00
    ld a, [bc]                                    ; $5355: $0a
    ld [hl], b                                    ; $5356: $70
    ccf                                           ; $5357: $3f
    ret                                           ; $5358: $c9


    push de                                       ; $5359: $d5
    ld [hl], c                                    ; $535a: $71
    adc a                                         ; $535b: $8f
    ld h, h                                       ; $535c: $64
    pop bc                                        ; $535d: $c1
    ld l, e                                       ; $535e: $6b
    ld b, b                                       ; $535f: $40
    or d                                          ; $5360: $b2
    push de                                       ; $5361: $d5
    ld [hl], e                                    ; $5362: $73
    ret nz                                        ; $5363: $c0

    db $d3                                        ; $5364: $d3
    nop                                           ; $5365: $00
    add b                                         ; $5366: $80
    ld h, a                                       ; $5367: $67
    db $fc                                        ; $5368: $fc
    ld c, c                                       ; $5369: $49
    push de                                       ; $536a: $d5
    ld [hl], c                                    ; $536b: $71
    ld c, [hl]                                    ; $536c: $4e
    ld h, [hl]                                    ; $536d: $66
    pop bc                                        ; $536e: $c1
    ld l, c                                       ; $536f: $69
    ld b, b                                       ; $5370: $40
    ld c, b                                       ; $5371: $48
    ret nz                                        ; $5372: $c0

    db $eb                                        ; $5373: $eb
    push de                                       ; $5374: $d5
    ld l, a                                       ; $5375: $6f
    nop                                           ; $5376: $00
    rrca                                          ; $5377: $0f
    ld b, [hl]                                    ; $5378: $46
    ld b, b                                       ; $5379: $40
    set 7, a                                      ; $537a: $cb $ff
    ld d, b                                       ; $537c: $50
    push de                                       ; $537d: $d5
    ld [hl], e                                    ; $537e: $73
    add a                                         ; $537f: $87
    ld h, l                                       ; $5380: $65
    pop bc                                        ; $5381: $c1
    ld l, d                                       ; $5382: $6a
    rst $20                                       ; $5383: $e7
    sub e                                         ; $5384: $93
    push de                                       ; $5385: $d5
    ld [hl], d                                    ; $5386: $72
    nop                                           ; $5387: $00
    ld b, a                                       ; $5388: $47
    ld h, h                                       ; $5389: $64
    db $ec                                        ; $538a: $ec
    db $eb                                        ; $538b: $eb
    di                                            ; $538c: $f3
    ld [hl], h                                    ; $538d: $74
    push de                                       ; $538e: $d5
    ld [hl], a                                    ; $538f: $77
    pop bc                                        ; $5390: $c1
    ld l, [hl]                                    ; $5391: $6e
    or e                                          ; $5392: $b3
    ld [hl], e                                    ; $5393: $73
    push de                                       ; $5394: $d5
    halt                                          ; $5395: $76
    pop bc                                        ; $5396: $c1
    halt                                          ; $5397: $76
    nop                                           ; $5398: $00
    dec sp                                        ; $5399: $3b
    daa                                           ; $539a: $27
    rst $38                                       ; $539b: $ff
    rst $38                                       ; $539c: $ff
    add b                                         ; $539d: $80
    ld [hl], l                                    ; $539e: $75
    push bc                                       ; $539f: $c5
    adc l                                         ; $53a0: $8d
    rst $38                                       ; $53a1: $ff
    rst $38                                       ; $53a2: $ff
    add c                                         ; $53a3: $81
    rst $38                                       ; $53a4: $ff
    rst $38                                       ; $53a5: $ff
    rst $38                                       ; $53a6: $ff
    ret nz                                        ; $53a7: $c0

    xor $00                                       ; $53a8: $ee $00
    sub l                                         ; $53aa: $95
    dec d                                         ; $53ab: $15
    adc b                                         ; $53ac: $88
    sub c                                         ; $53ad: $91
    add b                                         ; $53ae: $80
    ld [hl], h                                    ; $53af: $74
    sub l                                         ; $53b0: $95
    ld de, $0949                                  ; $53b1: $11 $49 $09
    ld hl, $698f                                  ; $53b4: $21 $8f $69
    ld c, c                                       ; $53b7: $49
    ret nz                                        ; $53b8: $c0

    sub e                                         ; $53b9: $93
    nop                                           ; $53ba: $00
    ld c, c                                       ; $53bb: $49
    dec bc                                        ; $53bc: $0b
    ld h, c                                       ; $53bd: $61
    db $ed                                        ; $53be: $ed
    add hl, hl                                    ; $53bf: $29
    ld c, b                                       ; $53c0: $48
    ret nz                                        ; $53c1: $c0

    sub h                                         ; $53c2: $94
    ld c, c                                       ; $53c3: $49
    dec bc                                        ; $53c4: $0b
    ld hl, $3f8d                                  ; $53c5: $21 $8d $3f
    db $ed                                        ; $53c8: $ed
    sub l                                         ; $53c9: $95
    stop                                          ; $53ca: $10 $00
    ld c, c                                       ; $53cc: $49
    add hl, bc                                    ; $53cd: $09
    ld h, c                                       ; $53ce: $61
    xor $7f                                       ; $53cf: $ee $7f
    ld c, [hl]                                    ; $53d1: $4e
    call nc, Call_000_3a91                        ; $53d2: $d4 $91 $3a
    xor b                                         ; $53d5: $a8
    ld h, c                                       ; $53d6: $61
    rst $28                                       ; $53d7: $ef
    ret nz                                        ; $53d8: $c0

    sbc h                                         ; $53d9: $9c
    or h                                          ; $53da: $b4
    rst $28                                       ; $53db: $ef
    nop                                           ; $53dc: $00
    ld h, c                                       ; $53dd: $61
    xor $c0                                       ; $53de: $ee $c0
    sbc e                                         ; $53e0: $9b
    ld [hl], h                                    ; $53e1: $74
    adc d                                         ; $53e2: $8a
    ld hl, $c08f                                  ; $53e3: $21 $8f $c0
    sbc [hl]                                      ; $53e6: $9e
    ld [hl], h                                    ; $53e7: $74
    adc d                                         ; $53e8: $8a
    ld h, c                                       ; $53e9: $61
    ld a, [c]                                     ; $53ea: $f2
    call nc, Call_000_009b                        ; $53eb: $d4 $9b $00
    ld d, [hl]                                    ; $53ee: $56
    adc b                                         ; $53ef: $88
    ld hl, $6090                                  ; $53f0: $21 $90 $60
    cp a                                          ; $53f3: $bf
    and e                                         ; $53f4: $a3
    add hl, hl                                    ; $53f5: $29
    ld hl, $c095                                  ; $53f6: $21 $95 $c0
    sbc a                                         ; $53f9: $9f
    dec [hl]                                      ; $53fa: $35
    sbc a                                         ; $53fb: $9f
    rst $38                                       ; $53fc: $ff
    rst $38                                       ; $53fd: $ff
    db $10                                        ; $53fe: $10
    rst $38                                       ; $53ff: $ff
    rst $38                                       ; $5400: $ff
    rst $38                                       ; $5401: $ff
    rst $38                                       ; $5402: $ff
    ld h, [hl]                                    ; $5403: $66
    ld a, [$f32a]                                 ; $5404: $fa $2a $f3
    ld c, h                                       ; $5407: $4c
    rst $20                                       ; $5408: $e7
    ld b, h                                       ; $5409: $44
    rst $38                                       ; $540a: $ff
    rst $38                                       ; $540b: $ff
    ld l, d                                       ; $540c: $6a
    sub e                                         ; $540d: $93
    nop                                           ; $540e: $00
    ld a, e                                       ; $540f: $7b
    add [hl]                                      ; $5410: $86
    rst $38                                       ; $5411: $ff
    rst $38                                       ; $5412: $ff
    ld a, h                                       ; $5413: $7c
    rst $18                                       ; $5414: $df
    rst $38                                       ; $5415: $ff
    rst $38                                       ; $5416: $ff
    rst $38                                       ; $5417: $ff
    rst $38                                       ; $5418: $ff
    rst $38                                       ; $5419: $ff
    rst $38                                       ; $541a: $ff
    rst $38                                       ; $541b: $ff
    rst $38                                       ; $541c: $ff
    rst $38                                       ; $541d: $ff
    rst $38                                       ; $541e: $ff
    nop                                           ; $541f: $00
    rst $38                                       ; $5420: $ff
    rst $38                                       ; $5421: $ff
    rst $38                                       ; $5422: $ff
    rst $38                                       ; $5423: $ff
    rst $38                                       ; $5424: $ff
    rst $38                                       ; $5425: $ff
    rst $38                                       ; $5426: $ff
    rst $38                                       ; $5427: $ff
    rst $38                                       ; $5428: $ff
    rst $38                                       ; $5429: $ff
    rst $38                                       ; $542a: $ff
    rst $38                                       ; $542b: $ff
    rst $38                                       ; $542c: $ff
    rst $38                                       ; $542d: $ff
    rst $38                                       ; $542e: $ff
    rst $38                                       ; $542f: $ff
    nop                                           ; $5430: $00
    rst $38                                       ; $5431: $ff
    rst $38                                       ; $5432: $ff
    rst $38                                       ; $5433: $ff
    rst $38                                       ; $5434: $ff
    rst $38                                       ; $5435: $ff
    rst $38                                       ; $5436: $ff
    rst $38                                       ; $5437: $ff
    rst $38                                       ; $5438: $ff
    nop                                           ; $5439: $00
    cp a                                          ; $543a: $bf
    rst $38                                       ; $543b: $ff
    rst $38                                       ; $543c: $ff
    rst $38                                       ; $543d: $ff
    rst $38                                       ; $543e: $ff
    rst $38                                       ; $543f: $ff
    rst $38                                       ; $5440: $ff
    nop                                           ; $5441: $00
    rst $38                                       ; $5442: $ff
    rst $38                                       ; $5443: $ff
    rst $38                                       ; $5444: $ff
    rst $38                                       ; $5445: $ff
    rst $38                                       ; $5446: $ff
    ld [$0000], a                                 ; $5447: $ea $00 $00
    nop                                           ; $544a: $00
    sbc a                                         ; $544b: $9f
    adc e                                         ; $544c: $8b
    ld c, [hl]                                    ; $544d: $4e
    ld c, [hl]                                    ; $544e: $4e
    ld c, [hl]                                    ; $544f: $4e
    adc b                                         ; $5450: $88
    rst $38                                       ; $5451: $ff
    add sp, -$0f                                  ; $5452: $e8 $f1
    ldh [$8b], a                                  ; $5454: $e0 $8b
    ret                                           ; $5456: $c9


    nop                                           ; $5457: $00
    rst $38                                       ; $5458: $ff
    rst $38                                       ; $5459: $ff

jr_05c_545a:
    rst $20                                       ; $545a: $e7
    and $4e                                       ; $545b: $e6 $4e
    cp a                                          ; $545d: $bf
    ldh [$c0], a                                  ; $545e: $e0 $c0
    db $eb                                        ; $5460: $eb
    adc e                                         ; $5461: $8b
    ld c, [hl]                                    ; $5462: $4e
    add b                                         ; $5463: $80
    jp z, $c0ff                                   ; $5464: $ca $ff $c0

    add sp, -$41                                  ; $5467: $e8 $bf
    ldh [$80], a                                  ; $5469: $e0 $80
    ld [$e06f], a                                 ; $546b: $ea $6f $e0
    jp z, $c0ff                                   ; $546e: $ca $ff $c0

    jp hl                                         ; $5471: $e9


    ld c, [hl]                                    ; $5472: $4e
    and c                                         ; $5473: $a1
    adc e                                         ; $5474: $8b
    ld b, b                                       ; $5475: $40
    jp hl                                         ; $5476: $e9


    jr nc, jr_05c_545a                            ; $5477: $30 $e1

    jp z, $e8ff                                   ; $5479: $ca $ff $e8

    rst $20                                       ; $547c: $e7
    add a                                         ; $547d: $87
    rst $38                                       ; $547e: $ff
    ldh [$60], a                                  ; $547f: $e0 $60
    rst $28                                       ; $5481: $ef
    ld h, d                                       ; $5482: $62
    ld b, a                                       ; $5483: $47
    ld d, [hl]                                    ; $5484: $56
    ld d, a                                       ; $5485: $57
    cp $e0                                        ; $5486: $fe $e0
    ld d, [hl]                                    ; $5488: $56
    ld d, [hl]                                    ; $5489: $56
    ld b, a                                       ; $548a: $47
    di                                            ; $548b: $f3
    ld h, b                                       ; $548c: $60
    adc h                                         ; $548d: $8c
    ret nz                                        ; $548e: $c0

    rst $38                                       ; $548f: $ff
    ret nz                                        ; $5490: $c0

    xor $61                                       ; $5491: $ee $61
    scf                                           ; $5493: $37
    ld [hl], $30                                  ; $5494: $36 $30
    adc [hl]                                      ; $5496: $8e
    rst $38                                       ; $5497: $ff
    ld [c], a                                     ; $5498: $e2
    ld l, h                                       ; $5499: $6c
    ld [hl], $37                                  ; $549a: $36 $37
    cp a                                          ; $549c: $bf
    pop hl                                        ; $549d: $e1
    jp z, $c0ff                                   ; $549e: $ca $ff $c0

    db $ec                                        ; $54a1: $ec
    ld c, l                                       ; $54a2: $4d
    db $fd                                        ; $54a3: $fd
    ld [hl-], a                                   ; $54a4: $32
    ret nz                                        ; $54a5: $c0

    pop hl                                        ; $54a6: $e1
    ld l, l                                       ; $54a7: $6d
    ld l, l                                       ; $54a8: $6d
    ld l, h                                       ; $54a9: $6c
    ld l, h                                       ; $54aa: $6c
    add hl, sp                                    ; $54ab: $39
    ld h, c                                       ; $54ac: $61
    db $d3                                        ; $54ad: $d3
    ld e, e                                       ; $54ae: $5b
    adc h                                         ; $54af: $8c
    ret nz                                        ; $54b0: $c0

    rst $38                                       ; $54b1: $ff
    ld b, b                                       ; $54b2: $40
    db $ed                                        ; $54b3: $ed
    ld sp, $e1bf                                  ; $54b4: $31 $bf $e1
    ld l, l                                       ; $54b7: $6d
    ld l, l                                       ; $54b8: $6d
    rst $38                                       ; $54b9: $ff
    ld l, l                                       ; $54ba: $6d
    ld l, b                                       ; $54bb: $68
    ld l, b                                       ; $54bc: $68
    ld d, d                                       ; $54bd: $52
    ld sp, $5b5f                                  ; $54be: $31 $5f $5b
    adc h                                         ; $54c1: $8c
    db $ec                                        ; $54c2: $ec
    jp z, Jump_000_00ff                           ; $54c3: $ca $ff $00

    ld [$8e8d], a                                 ; $54c6: $ea $8d $8e
    cp a                                          ; $54c9: $bf
    ld [c], a                                     ; $54ca: $e2
    ld l, l                                       ; $54cb: $6d
    ld l, l                                       ; $54cc: $6d
    ld l, d                                       ; $54cd: $6a
    ld a, a                                       ; $54ce: $7f
    ld l, h                                       ; $54cf: $6c
    ld l, h                                       ; $54d0: $6c
    ld d, e                                       ; $54d1: $53
    ld sp, $5b5e                                  ; $54d2: $31 $5e $5b
    ld e, e                                       ; $54d5: $5b
    jp z, $eeff                                   ; $54d6: $ca $ff $ee

    ret nz                                        ; $54d9: $c0

    ret                                           ; $54da: $c9


    adc l                                         ; $54db: $8d
    ld c, a                                       ; $54dc: $4f
    ld c, a                                       ; $54dd: $4f
    cp a                                          ; $54de: $bf
    ld [c], a                                     ; $54df: $e2
    ld l, e                                       ; $54e0: $6b
    ld l, c                                       ; $54e1: $69
    ld l, e                                       ; $54e2: $6b
    rra                                           ; $54e3: $1f
    jr nc, jr_05c_5516                            ; $54e4: $30 $30

    ld d, d                                       ; $54e6: $52
    ld sp, $c061                                  ; $54e7: $31 $61 $c0
    rst $38                                       ; $54ea: $ff
    add b                                         ; $54eb: $80
    jp z, $e0c1                                   ; $54ec: $ca $c1 $e0

    inc b                                         ; $54ef: $04
    cp a                                          ; $54f0: $bf
    db $e4                                        ; $54f1: $e4
    ret nz                                        ; $54f2: $c0

    pop hl                                        ; $54f3: $e1
    ld d, e                                       ; $54f4: $53
    ret nz                                        ; $54f5: $c0

    rst $38                                       ; $54f6: $ff
    db $ec                                        ; $54f7: $ec
    db $eb                                        ; $54f8: $eb
    pop bc                                        ; $54f9: $c1
    ld [c], a                                     ; $54fa: $e2
    ld a, [hl]                                    ; $54fb: $7e
    db $e4                                        ; $54fc: $e4
    ld b, b                                       ; $54fd: $40
    rst $38                                       ; $54fe: $ff
    cp b                                          ; $54ff: $b8
    ldh a, [$ef]                                  ; $5500: $f0 $ef
    pop bc                                        ; $5502: $c1
    db $e3                                        ; $5503: $e3
    dec a                                         ; $5504: $3d
    db $e4                                        ; $5505: $e4
    ld l, b                                       ; $5506: $68
    ld l, b                                       ; $5507: $68
    add hl, sp                                    ; $5508: $39
    ret nz                                        ; $5509: $c0

    ret nz                                        ; $550a: $c0

    adc [hl]                                      ; $550b: $8e
    ld hl, sp-$36                                 ; $550c: $f8 $ca
    rst $38                                       ; $550e: $ff
    ret nz                                        ; $550f: $c0

    rst $28                                       ; $5510: $ef
    db $fc                                        ; $5511: $fc
    jp nz, Jump_05c_553a                          ; $5512: $c2 $3a $55

    ld c, c                                       ; $5515: $49

jr_05c_5516:
    ld e, [hl]                                    ; $5516: $5e
    ld e, e                                       ; $5517: $5b
    jp Jump_05c_4f8e                              ; $5518: $c3 $8e $4f


    jp z, $c0ff                                   ; $551b: $ca $ff $c0

    ldh a, [$bb]                                  ; $551e: $f0 $bb
    pop bc                                        ; $5520: $c1
    rst $38                                       ; $5521: $ff
    ldh [$5f], a                                  ; $5522: $e0 $5f
    adc [hl]                                      ; $5524: $8e
    ld sp, hl                                     ; $5525: $f9
    ld c, a                                       ; $5526: $4f
    ret nz                                        ; $5527: $c0

    rst $38                                       ; $5528: $ff
    ret nz                                        ; $5529: $c0

    ld a, [c]                                     ; $552a: $f2
    ld c, a                                       ; $552b: $4f
    adc [hl]                                      ; $552c: $8e
    ld e, h                                       ; $552d: $5c
    ld e, l                                       ; $552e: $5d
    ld sp, $6001                                  ; $552f: $31 $01 $60
    pop bc                                        ; $5532: $c1
    ldh [$c0], a                                  ; $5533: $e0 $c0
    rst $38                                       ; $5535: $ff
    rst $38                                       ; $5536: $ff
    rst $38                                       ; $5537: $ff
    rst $38                                       ; $5538: $ff
    rst $38                                       ; $5539: $ff

Jump_05c_553a:
    rst $38                                       ; $553a: $ff
    rst $38                                       ; $553b: $ff
    rst $38                                       ; $553c: $ff
    rst $38                                       ; $553d: $ff
    rst $38                                       ; $553e: $ff
    rst $38                                       ; $553f: $ff
    nop                                           ; $5540: $00
    rst $38                                       ; $5541: $ff
    rst $38                                       ; $5542: $ff
    rst $38                                       ; $5543: $ff
    rst $38                                       ; $5544: $ff
    rst $38                                       ; $5545: $ff
    rst $38                                       ; $5546: $ff
    rst $38                                       ; $5547: $ff
    rst $38                                       ; $5548: $ff
    rst $38                                       ; $5549: $ff
    rst $38                                       ; $554a: $ff
    rst $38                                       ; $554b: $ff
    rst $38                                       ; $554c: $ff
    rst $38                                       ; $554d: $ff
    rst $38                                       ; $554e: $ff
    rst $38                                       ; $554f: $ff
    rst $38                                       ; $5550: $ff
    nop                                           ; $5551: $00
    rst $38                                       ; $5552: $ff
    rst $38                                       ; $5553: $ff
    rst $38                                       ; $5554: $ff
    rst $38                                       ; $5555: $ff
    rst $38                                       ; $5556: $ff
    rst $38                                       ; $5557: $ff
    rst $38                                       ; $5558: $ff
    rst $38                                       ; $5559: $ff
    rst $38                                       ; $555a: $ff
    rst $38                                       ; $555b: $ff
    rst $38                                       ; $555c: $ff
    rst $38                                       ; $555d: $ff
    rst $38                                       ; $555e: $ff
    rst $38                                       ; $555f: $ff
    rst $38                                       ; $5560: $ff
    rst $38                                       ; $5561: $ff
    nop                                           ; $5562: $00
    rst $38                                       ; $5563: $ff
    rst $38                                       ; $5564: $ff
    rst $38                                       ; $5565: $ff
    rst $38                                       ; $5566: $ff
    rst $38                                       ; $5567: $ff
    rst $38                                       ; $5568: $ff
    rst $38                                       ; $5569: $ff
    rst $38                                       ; $556a: $ff
    rst $38                                       ; $556b: $ff
    rst $38                                       ; $556c: $ff
    rst $38                                       ; $556d: $ff
    rst $38                                       ; $556e: $ff
    rst $38                                       ; $556f: $ff
    rst $38                                       ; $5570: $ff
    rst $38                                       ; $5571: $ff
    rst $38                                       ; $5572: $ff
    nop                                           ; $5573: $00
    rst $38                                       ; $5574: $ff
    rst $38                                       ; $5575: $ff
    rst $38                                       ; $5576: $ff
    rst $38                                       ; $5577: $ff
    rst $38                                       ; $5578: $ff
    rst $38                                       ; $5579: $ff
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    rst $38                                       ; $557c: $ff
    rst $38                                       ; $557d: $ff
    rst $38                                       ; $557e: $ff
    rst $38                                       ; $557f: $ff
    rst $38                                       ; $5580: $ff
    rst $38                                       ; $5581: $ff
    rst $38                                       ; $5582: $ff
    rst $38                                       ; $5583: $ff
    nop                                           ; $5584: $00
    rst $38                                       ; $5585: $ff
    rst $38                                       ; $5586: $ff
    rst $38                                       ; $5587: $ff
    rst $38                                       ; $5588: $ff
    rst $38                                       ; $5589: $ff
    rst $38                                       ; $558a: $ff
    rst $38                                       ; $558b: $ff
    rst $38                                       ; $558c: $ff
    rst $38                                       ; $558d: $ff
    rst $38                                       ; $558e: $ff
    rst $38                                       ; $558f: $ff
    rst $38                                       ; $5590: $ff
    rst $38                                       ; $5591: $ff
    rst $38                                       ; $5592: $ff
    rst $38                                       ; $5593: $ff
    rst $38                                       ; $5594: $ff
    nop                                           ; $5595: $00
    rst $38                                       ; $5596: $ff
    rst $38                                       ; $5597: $ff
    rst $38                                       ; $5598: $ff
    rst $38                                       ; $5599: $ff
    rst $38                                       ; $559a: $ff
    rst $38                                       ; $559b: $ff
    rst $38                                       ; $559c: $ff
    rst $38                                       ; $559d: $ff
    rst $38                                       ; $559e: $ff
    rst $38                                       ; $559f: $ff
    rst $38                                       ; $55a0: $ff
    rst $38                                       ; $55a1: $ff
    rst $38                                       ; $55a2: $ff
    rst $38                                       ; $55a3: $ff
    rst $38                                       ; $55a4: $ff
    rst $38                                       ; $55a5: $ff
    nop                                           ; $55a6: $00
    rst $38                                       ; $55a7: $ff
    rst $38                                       ; $55a8: $ff
    rst $38                                       ; $55a9: $ff
    rst $38                                       ; $55aa: $ff
    rst $38                                       ; $55ab: $ff
    rst $38                                       ; $55ac: $ff
    rst $38                                       ; $55ad: $ff
    rst $38                                       ; $55ae: $ff
    rst $38                                       ; $55af: $ff
    rst $38                                       ; $55b0: $ff
    rst $38                                       ; $55b1: $ff
    rst $38                                       ; $55b2: $ff
    rst $38                                       ; $55b3: $ff
    rst $38                                       ; $55b4: $ff
    rst $38                                       ; $55b5: $ff
    rst $38                                       ; $55b6: $ff
    nop                                           ; $55b7: $00
    rst $38                                       ; $55b8: $ff
    rst $38                                       ; $55b9: $ff
    rst $38                                       ; $55ba: $ff
    rst $38                                       ; $55bb: $ff
    rst $38                                       ; $55bc: $ff
    rst $38                                       ; $55bd: $ff
    rst $38                                       ; $55be: $ff
    rst $38                                       ; $55bf: $ff
    rst $38                                       ; $55c0: $ff
    rst $38                                       ; $55c1: $ff
    rst $38                                       ; $55c2: $ff
    rst $38                                       ; $55c3: $ff
    rst $38                                       ; $55c4: $ff
    rst $38                                       ; $55c5: $ff
    rst $38                                       ; $55c6: $ff
    rst $38                                       ; $55c7: $ff
    nop                                           ; $55c8: $00
    rst $38                                       ; $55c9: $ff
    rst $38                                       ; $55ca: $ff
    rst $38                                       ; $55cb: $ff
    rst $38                                       ; $55cc: $ff
    rst $38                                       ; $55cd: $ff
    rst $38                                       ; $55ce: $ff
    rst $38                                       ; $55cf: $ff
    rst $38                                       ; $55d0: $ff
    rst $38                                       ; $55d1: $ff
    rst $38                                       ; $55d2: $ff
    rst $38                                       ; $55d3: $ff
    rst $38                                       ; $55d4: $ff
    rst $38                                       ; $55d5: $ff
    rst $38                                       ; $55d6: $ff
    rst $38                                       ; $55d7: $ff
    rst $38                                       ; $55d8: $ff
    nop                                           ; $55d9: $00
    rst $38                                       ; $55da: $ff
    rst $38                                       ; $55db: $ff
    rst $38                                       ; $55dc: $ff
    rst $38                                       ; $55dd: $ff
    rst $38                                       ; $55de: $ff
    rst $38                                       ; $55df: $ff
    rst $38                                       ; $55e0: $ff
    rst $38                                       ; $55e1: $ff
    rst $38                                       ; $55e2: $ff
    rst $38                                       ; $55e3: $ff
    rst $38                                       ; $55e4: $ff
    rst $38                                       ; $55e5: $ff
    rst $38                                       ; $55e6: $ff
    rst $38                                       ; $55e7: $ff
    rst $38                                       ; $55e8: $ff
    rst $38                                       ; $55e9: $ff
    nop                                           ; $55ea: $00
    rst $38                                       ; $55eb: $ff
    rst $38                                       ; $55ec: $ff
    rst $38                                       ; $55ed: $ff
    rst $38                                       ; $55ee: $ff
    rst $38                                       ; $55ef: $ff
    rst $38                                       ; $55f0: $ff
    rst $38                                       ; $55f1: $ff
    rst $38                                       ; $55f2: $ff
    rst $38                                       ; $55f3: $ff
    rst $38                                       ; $55f4: $ff
    rst $38                                       ; $55f5: $ff
    db $f4                                        ; $55f6: $f4
    nop                                           ; $55f7: $00
    nop                                           ; $55f8: $00
    nop                                           ; $55f9: $00
    and l                                         ; $55fa: $a5
    nop                                           ; $55fb: $00
    rst $38                                       ; $55fc: $ff
    push hl                                       ; $55fd: $e5
    ld [hl-], a                                   ; $55fe: $32
    or $e6                                        ; $55ff: $f6 $e6
    rst $30                                       ; $5601: $f7
    rst $20                                       ; $5602: $e7
    dec [hl]                                      ; $5603: $35
    db $ec                                        ; $5604: $ec
    xor $37                                       ; $5605: $ee $37
    db $ec                                        ; $5607: $ec
    jp c, $c7f0                                   ; $5608: $da $f0 $c7

    add sp, $33                                   ; $560b: $e8 $33
    ld sp, $f2e0                                  ; $560d: $31 $e0 $f2
    ld [hl], $30                                  ; $5610: $36 $30
    scf                                           ; $5612: $37
    cp a                                          ; $5613: $bf
    ld h, $20                                     ; $5614: $26 $20
    daa                                           ; $5616: $27
    db $10                                        ; $5617: $10
    ld d, $17                                     ; $5618: $16 $17
    jp nz, Jump_000_34f6                          ; $561a: $c2 $f6 $34

    rst $38                                       ; $561d: $ff
    ld [hl], $32                                  ; $561e: $36 $32
    jr nc, jr_05c_5659                            ; $5620: $30 $37

    ld sp, $3133                                  ; $5622: $31 $33 $31
    inc sp                                        ; $5625: $33
    nop                                           ; $5626: $00
    and b                                         ; $5627: $a0
    ei                                            ; $5628: $fb
    rst $38                                       ; $5629: $ff
    rst $28                                       ; $562a: $ef
    nop                                           ; $562b: $00
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    ld [hl], $56                                  ; $562e: $36 $56
    ld h, [hl]                                    ; $5630: $66
    ld d, [hl]                                    ; $5631: $56
    or e                                          ; $5632: $b3
    ld e, b                                       ; $5633: $58
    sub b                                         ; $5634: $90
    ld e, d                                       ; $5635: $5a
    ld a, [c]                                     ; $5636: $f2
    inc sp                                        ; $5637: $33
    ld c, e                                       ; $5638: $4b
    dec de                                        ; $5639: $1b
    dec h                                         ; $563a: $25
    ld [bc], a                                    ; $563b: $02
    ldh [rNR10], a                                ; $563c: $e0 $10
    ret z                                         ; $563e: $c8

    ld [bc], a                                    ; $563f: $02
    ld a, [c]                                     ; $5640: $f2
    inc sp                                        ; $5641: $33
    ld c, e                                       ; $5642: $4b
    dec de                                        ; $5643: $1b
    dec h                                         ; $5644: $25
    ld [bc], a                                    ; $5645: $02
    sbc a                                         ; $5646: $9f
    ld [bc], a                                    ; $5647: $02
    or $01                                        ; $5648: $f6 $01
    ld d, e                                       ; $564a: $53
    ld bc, $1b4b                                  ; $564b: $01 $4b $1b
    ld [$0825], sp                                ; $564e: $08 $25 $08
    dec h                                         ; $5651: $25
    ld [$0825], sp                                ; $5652: $08 $25 $08
    dec h                                         ; $5655: $25
    ld [$0825], sp                                ; $5656: $08 $25 $08

jr_05c_5659:
    dec h                                         ; $5659: $25
    ld [$0825], sp                                ; $565a: $08 $25 $08
    dec h                                         ; $565d: $25
    ld [$0825], sp                                ; $565e: $08 $25 $08
    dec h                                         ; $5661: $25
    ld [$0825], sp                                ; $5662: $08 $25 $08
    dec h                                         ; $5665: $25
    dec sp                                        ; $5666: $3b
    ld a, [bc]                                    ; $5667: $0a
    dec bc                                        ; $5668: $0b
    rst $38                                       ; $5669: $ff
    rst $20                                       ; $566a: $e7
    ld c, h                                       ; $566b: $4c
    ld c, h                                       ; $566c: $4c
    inc c                                         ; $566d: $0c
    rst $38                                       ; $566e: $ff
    ld [c], a                                     ; $566f: $e2
    ld hl, sp-$20                                 ; $5670: $f8 $e0
    ret c                                         ; $5672: $d8

    db $fd                                        ; $5673: $fd
    ld [c], a                                     ; $5674: $e2
    ld sp, hl                                     ; $5675: $f9
    ldh [$f2], a                                  ; $5676: $e0 $f2
    db $e4                                        ; $5678: $e4
    inc l                                         ; $5679: $2c
    inc l                                         ; $567a: $2c
    push hl                                       ; $567b: $e5
    pop hl                                        ; $567c: $e1
    inc l                                         ; $567d: $2c
    inc l                                         ; $567e: $2c
    inc c                                         ; $567f: $0c
    ldh [$e3], a                                  ; $5680: $e0 $e3
    ld a, [$0be9]                                 ; $5682: $fa $e9 $0b
    dec bc                                        ; $5685: $0b
    cp [hl]                                       ; $5686: $be
    add sp, -$41                                  ; $5687: $e8 $bf
    db $e4                                        ; $5689: $e4
    call nz, $b3e2                                ; $568a: $c4 $e2 $b3
    pop hl                                        ; $568d: $e1
    ld [hl], b                                    ; $568e: $70
    db $fc                                        ; $568f: $fc
    ld [c], a                                     ; $5690: $e2
    or b                                          ; $5691: $b0
    pop hl                                        ; $5692: $e1
    ret nz                                        ; $5693: $c0

    ld sp, hl                                     ; $5694: $f9
    ld a, a                                       ; $5695: $7f
    ldh [rOCPD], a                                ; $5696: $e0 $6b
    ld l, e                                       ; $5698: $6b
    ld c, e                                       ; $5699: $4b
    rst $38                                       ; $569a: $ff
    ldh [rLCDC], a                                ; $569b: $e0 $40

jr_05c_569d:
    cp a                                          ; $569d: $bf
    add sp, -$7e                                  ; $569e: $e8 $82
    db $e3                                        ; $56a0: $e3
    cp c                                          ; $56a1: $b9
    ld [c], a                                     ; $56a2: $e2
    ld [hl], b                                    ; $56a3: $70
    db $e3                                        ; $56a4: $e3
    halt                                          ; $56a5: $76
    ld [c], a                                     ; $56a6: $e2
    add b                                         ; $56a7: $80
    di                                            ; $56a8: $f3
    ld c, h                                       ; $56a9: $4c
    pop bc                                        ; $56aa: $c1
    ldh [rSB], a                                  ; $56ab: $e0 $01
    dec hl                                        ; $56ad: $2b
    ld a, [hl-]                                   ; $56ae: $3a
    ldh [$be], a                                  ; $56af: $e0 $be
    ld [c], a                                     ; $56b1: $e2
    dec a                                         ; $56b2: $3d
    push hl                                       ; $56b3: $e5

jr_05c_56b4:
    ld a, d                                       ; $56b4: $7a
    ld [c], a                                     ; $56b5: $e2
    rst $30                                       ; $56b6: $f7
    push hl                                       ; $56b7: $e5
    jr c, jr_05c_569d                             ; $56b8: $38 $e3

    db $fd                                        ; $56ba: $fd
    di                                            ; $56bb: $f3
    ccf                                           ; $56bc: $3f
    dec bc                                        ; $56bd: $0b
    ld l, h                                       ; $56be: $6c
    inc c                                         ; $56bf: $0c
    ld c, h                                       ; $56c0: $4c
    dec hl                                        ; $56c1: $2b
    dec bc                                        ; $56c2: $0b
    add h                                         ; $56c3: $84
    pop hl                                        ; $56c4: $e1
    cp [hl]                                       ; $56c5: $be
    pop hl                                        ; $56c6: $e1
    nop                                           ; $56c7: $00
    db $fc                                        ; $56c8: $fc
    pop bc                                        ; $56c9: $c1
    ei                                            ; $56ca: $fb
    push bc                                       ; $56cb: $c5
    cp l                                          ; $56cc: $bd
    push hl                                       ; $56cd: $e5
    jr c, jr_05c_56b4                             ; $56ce: $38 $e4

    ld [bc], a                                    ; $56d0: $02
    ldh [rP1], a                                  ; $56d1: $e0 $00
    db $e4                                        ; $56d3: $e4
    ld a, [$f3c4]                                 ; $56d4: $fa $c4 $f3
    jp $0b71                                      ; $56d7: $c3 $71 $0b


    call $82c0                                    ; $56da: $cd $c0 $82
    pop hl                                        ; $56dd: $e1
    cp a                                          ; $56de: $bf
    db $e3                                        ; $56df: $e3
    dec bc                                        ; $56e0: $0b
    dec bc                                        ; $56e1: $0b
    inc l                                         ; $56e2: $2c
    inc de                                        ; $56e3: $13
    ldh [$e8], a                                  ; $56e4: $e0 $e8
    rst $38                                       ; $56e6: $ff
    jp nz, $c4c0                                  ; $56e7: $c2 $c0 $c4

    or a                                          ; $56ea: $b7
    db $dd                                        ; $56eb: $dd
    ld l, h                                       ; $56ec: $6c
    ret nz                                        ; $56ed: $c0

    pop hl                                        ; $56ee: $e1
    dec hl                                        ; $56ef: $2b
    ld l, e                                       ; $56f0: $6b
    ld l, e                                       ; $56f1: $6b
    ld [c], a                                     ; $56f2: $e2
    ld a, a                                       ; $56f3: $7f
    push hl                                       ; $56f4: $e5
    ld c, e                                       ; $56f5: $4b
    ret nz                                        ; $56f6: $c0

    pop hl                                        ; $56f7: $e1
    pop bc                                        ; $56f8: $c1
    jp hl                                         ; $56f9: $e9


    or a                                          ; $56fa: $b7
    sbc $4c                                       ; $56fb: $de $4c
    inc c                                         ; $56fd: $0c
    dec bc                                        ; $56fe: $0b
    inc de                                        ; $56ff: $13
    dec hl                                        ; $5700: $2b
    dec hl                                        ; $5701: $2b
    rst $38                                       ; $5702: $ff
    jp nz, $e2c0                                  ; $5703: $c2 $c0 $e2

    inc l                                         ; $5706: $2c
    ret nz                                        ; $5707: $c0

    db $e3                                        ; $5708: $e3
    cp $e5                                        ; $5709: $fe $e5
    or a                                          ; $570b: $b7
    db $dd                                        ; $570c: $dd
    adc $0c                                       ; $570d: $ce $0c
    ret nz                                        ; $570f: $c0

    ld l, h                                       ; $5710: $6c
    inc l                                         ; $5711: $2c
    inc l                                         ; $5712: $2c
    cp [hl]                                       ; $5713: $be
    ldh [$c0], a                                  ; $5714: $e0 $c0
    pop bc                                        ; $5716: $c1
    ld c, e                                       ; $5717: $4b
    dec hl                                        ; $5718: $2b
    ld b, b                                       ; $5719: $40
    ld a, d                                       ; $571a: $7a
    ret nz                                        ; $571b: $c0

    adc $c7                                       ; $571c: $ce $c7
    or $c8                                        ; $571e: $f6 $c8
    or a                                          ; $5720: $b7

jr_05c_5721:
    sub $e7                                       ; $5721: $d6 $e7
    and c                                         ; $5723: $a1
    and $c1                                       ; $5724: $e6 $c1
    dec hl                                        ; $5726: $2b
    push bc                                       ; $5727: $c5
    ldh [rDIV], a                                 ; $5728: $e0 $04
    ret nz                                        ; $572a: $c0

    ldh [$37], a                                  ; $572b: $e0 $37
    ret nz                                        ; $572d: $c0

    dec bc                                        ; $572e: $0b
    cp [hl]                                       ; $572f: $be
    db $e4                                        ; $5730: $e4
    pop bc                                        ; $5731: $c1
    jp hl                                         ; $5732: $e9


    or a                                          ; $5733: $b7
    db $d3                                        ; $5734: $d3
    sub d                                         ; $5735: $92
    and c                                         ; $5736: $a1
    db $10                                        ; $5737: $10
    ldh [rP1], a                                  ; $5738: $e0 $00
    ldh [$a2], a                                  ; $573a: $e0 $a2
    cp a                                          ; $573c: $bf
    ld [c], a                                     ; $573d: $e2
    ld sp, hl                                     ; $573e: $f9
    pop bc                                        ; $573f: $c1
    ld a, [hl]                                    ; $5740: $7e
    push hl                                       ; $5741: $e5
    ret nz                                        ; $5742: $c0

    and h                                         ; $5743: $a4
    ld [hl], a                                    ; $5744: $77
    and l                                         ; $5745: $a5
    or $a7                                        ; $5746: $f6 $a7
    ld [hl], a                                    ; $5748: $77
    jp nz, Jump_05c_7604                          ; $5749: $c2 $04 $76

    and [hl]                                      ; $574c: $a6
    db $10                                        ; $574d: $10
    ldh [$4c], a                                  ; $574e: $e0 $4c
    adc h                                         ; $5750: $8c
    pop bc                                        ; $5751: $c1
    dec a                                         ; $5752: $3d
    ldh [$b8], a                                  ; $5753: $e0 $b8
    and b                                         ; $5755: $a0
    ei                                            ; $5756: $fb
    jp $a050                                      ; $5757: $c3 $50 $a0


    jr nz, jr_05c_5721                            ; $575a: $20 $c5

    and e                                         ; $575c: $a3
    ld a, b                                       ; $575d: $78
    call $b0f8                                    ; $575e: $cd $f8 $b0
    ld [$bda3], sp                                ; $5761: $08 $a3 $bd
    ldh [$0b], a                                  ; $5764: $e0 $0b
    cp a                                          ; $5766: $bf
    pop hl                                        ; $5767: $e1
    cp l                                          ; $5768: $bd
    jp Jump_000_2a00                              ; $5769: $c3 $00 $2a


    pop hl                                        ; $576c: $e1
    add c                                         ; $576d: $81
    and $b8                                       ; $576e: $e6 $b8
    push bc                                       ; $5770: $c5
    ld [$fe84], a                                 ; $5771: $ea $84 $fe
    adc l                                         ; $5774: $8d
    ld c, c                                       ; $5775: $49
    and c                                         ; $5776: $a1
    add b                                         ; $5777: $80
    db $e3                                        ; $5778: $e3
    ret nz                                        ; $5779: $c0

    jp hl                                         ; $577a: $e9


    nop                                           ; $577b: $00
    ld b, c                                       ; $577c: $41
    xor b                                         ; $577d: $a8
    or a                                          ; $577e: $b7
    ret                                           ; $577f: $c9


    ld [hl], a                                    ; $5780: $77
    and a                                         ; $5781: $a7
    db $fd                                        ; $5782: $fd
    add $08                                       ; $5783: $c6 $08
    and c                                         ; $5785: $a1
    inc c                                         ; $5786: $0c
    ret nz                                        ; $5787: $c0

    ld a, a                                       ; $5788: $7f
    pop hl                                        ; $5789: $e1
    ret nz                                        ; $578a: $c0

    jp hl                                         ; $578b: $e9


    db $10                                        ; $578c: $10
    sbc l                                         ; $578d: $9d
    and [hl]                                      ; $578e: $a6
    inc b                                         ; $578f: $04
    and l                                         ; $5790: $a5
    or [hl]                                       ; $5791: $b6
    add l                                         ; $5792: $85
    ret nz                                        ; $5793: $c0

    db $ed                                        ; $5794: $ed
    ld a, [bc]                                    ; $5795: $0a
    ld [$ffa1], sp                                ; $5796: $08 $a1 $ff
    add $c0                                       ; $5799: $c6 $c0
    db $ec                                        ; $579b: $ec
    nop                                           ; $579c: $00
    or a                                          ; $579d: $b7
    ret                                           ; $579e: $c9


    add b                                         ; $579f: $80
    db $ed                                        ; $57a0: $ed
    db $e3                                        ; $57a1: $e3
    add a                                         ; $57a2: $87
    adc l                                         ; $57a3: $8d
    adc b                                         ; $57a4: $88
    ei                                            ; $57a5: $fb
    push hl                                       ; $57a6: $e5
    cp h                                          ; $57a7: $bc
    add [hl]                                      ; $57a8: $86
    or a                                          ; $57a9: $b7
    push bc                                       ; $57aa: $c5
    inc bc                                        ; $57ab: $03
    db $e4                                        ; $57ac: $e4
    nop                                           ; $57ad: $00
    add b                                         ; $57ae: $80
    add sp, -$66                                  ; $57af: $e8 $9a
    add [hl]                                      ; $57b1: $86
    push de                                       ; $57b2: $d5
    ld a, d                                       ; $57b3: $7a
    or a                                          ; $57b4: $b7
    add $bc                                       ; $57b5: $c6 $bc
    add e                                         ; $57b7: $83
    cp a                                          ; $57b8: $bf
    ret nc                                        ; $57b9: $d0

    ld e, $bc                                     ; $57ba: $1e $bc
    ret nz                                        ; $57bc: $c0

    db $eb                                        ; $57bd: $eb
    ld [bc], a                                    ; $57be: $02
    adc c                                         ; $57bf: $89
    and a                                         ; $57c0: $a7
    inc l                                         ; $57c1: $2c
    ld a, c                                       ; $57c2: $79
    add h                                         ; $57c3: $84
    ld e, $bf                                     ; $57c4: $1e $bf
    sub c                                         ; $57c6: $91
    call nz, $edef                                ; $57c7: $c4 $ef $ed
    add hl, sp                                    ; $57ca: $39
    add l                                         ; $57cb: $85
    push de                                       ; $57cc: $d5
    ld [hl], l                                    ; $57cd: $75
    nop                                           ; $57ce: $00
    ld hl, sp-$36                                 ; $57cf: $f8 $ca
    ld [$b06e], sp                                ; $57d1: $08 $6e $b0
    ld [$72d5], a                                 ; $57d4: $ea $d5 $72
    ld b, c                                       ; $57d7: $41
    ld h, e                                       ; $57d8: $63
    ret nz                                        ; $57d9: $c0

    cp $1e                                        ; $57da: $fe $1e
    or [hl]                                       ; $57dc: $b6
    dec c                                         ; $57dd: $0d
    xor $00                                       ; $57de: $ee $00
    dec a                                         ; $57e0: $3d
    ld [hl], h                                    ; $57e1: $74
    ld e, $b5                                     ; $57e2: $1e $b5
    ld c, l                                       ; $57e4: $4d
    ld d, a                                       ; $57e5: $57
    ld b, b                                       ; $57e6: $40
    db $eb                                        ; $57e7: $eb
    ld e, $b5                                     ; $57e8: $1e $b5
    ret nz                                        ; $57ea: $c0

    rst $38                                       ; $57eb: $ff
    and e                                         ; $57ec: $a3
    ld c, c                                       ; $57ed: $49
    ld e, $b0                                     ; $57ee: $1e $b0
    nop                                           ; $57f0: $00
    ld c, l                                       ; $57f1: $4d
    ld d, c                                       ; $57f2: $51
    db $e3                                        ; $57f3: $e3
    rst $20                                       ; $57f4: $e7
    ccf                                           ; $57f5: $3f
    ld [$b11e], a                                 ; $57f6: $ea $1e $b1
    inc de                                        ; $57f9: $13
    di                                            ; $57fa: $f3
    ret nz                                        ; $57fb: $c0

    ld a, [c]                                     ; $57fc: $f2
    ld e, $b3                                     ; $57fd: $1e $b3
    add hl, bc                                    ; $57ff: $09
    pop de                                        ; $5800: $d1
    nop                                           ; $5801: $00
    pop bc                                        ; $5802: $c1
    ret nc                                        ; $5803: $d0

    ld e, $b6                                     ; $5804: $1e $b6
    ret nz                                        ; $5806: $c0

    rst $38                                       ; $5807: $ff
    ld e, $bf                                     ; $5808: $1e $bf
    rst $38                                       ; $580a: $ff
    rst $38                                       ; $580b: $ff
    ld e, $b6                                     ; $580c: $1e $b6
    rst $38                                       ; $580e: $ff
    rst $38                                       ; $580f: $ff
    ld e, $bb                                     ; $5810: $1e $bb
    nop                                           ; $5812: $00
    pop de                                        ; $5813: $d1
    db $fd                                        ; $5814: $fd
    call c, $92ff                                 ; $5815: $dc $ff $92
    ei                                            ; $5818: $fb
    sbc d                                         ; $5819: $9a
    dec c                                         ; $581a: $0d
    rst $38                                       ; $581b: $ff
    rst $38                                       ; $581c: $ff
    add c                                         ; $581d: $81
    rst $38                                       ; $581e: $ff
    ldh [$d9], a                                  ; $581f: $e0 $d9
    ld hl, $0099                                  ; $5821: $21 $99 $00
    db $dd                                        ; $5824: $dd
    sbc l                                         ; $5825: $9d
    ccf                                           ; $5826: $3f
    add hl, sp                                    ; $5827: $39
    rst $38                                       ; $5828: $ff
    rst $38                                       ; $5829: $ff
    ccf                                           ; $582a: $3f
    dec sp                                        ; $582b: $3b
    ld b, c                                       ; $582c: $41
    rst $38                                       ; $582d: $ff
    ccf                                           ; $582e: $3f
    ld [hl-], a                                   ; $582f: $32
    add l                                         ; $5830: $85
    ld l, [hl]                                    ; $5831: $6e
    dec c                                         ; $5832: $0d
    or a                                          ; $5833: $b7
    nop                                           ; $5834: $00
    ccf                                           ; $5835: $3f
    dec sp                                        ; $5836: $3b
    add b                                         ; $5837: $80
    rst $38                                       ; $5838: $ff
    ccf                                           ; $5839: $3f
    dec sp                                        ; $583a: $3b
    cp a                                          ; $583b: $bf
    rst $38                                       ; $583c: $ff
    ccf                                           ; $583d: $3f
    ld [hl-], a                                   ; $583e: $32
    rst $38                                       ; $583f: $ff
    rst $38                                       ; $5840: $ff
    ld hl, $ff9f                                  ; $5841: $21 $9f $ff
    rst $38                                       ; $5844: $ff
    nop                                           ; $5845: $00
    ccf                                           ; $5846: $3f
    scf                                           ; $5847: $37
    ld l, e                                       ; $5848: $6b
    sbc h                                         ; $5849: $9c
    call c, Call_000_3f65                         ; $584a: $dc $65 $3f
    ld [hl], $ee                                  ; $584d: $36 $ee
    ld a, a                                       ; $584f: $7f
    dec a                                         ; $5850: $3d
    ld h, e                                       ; $5851: $63
    ld hl, $5d9f                                  ; $5852: $21 $9f $5d
    ld l, [hl]                                    ; $5855: $6e
    nop                                           ; $5856: $00
    ld [hl], d                                    ; $5857: $72
    nop                                           ; $5858: $00
    cp d                                          ; $5859: $ba
    add sp, $21                                   ; $585a: $e8 $21
    sbc a                                         ; $585c: $9f
    sub e                                         ; $585d: $93
    xor a                                         ; $585e: $af
    xor h                                         ; $585f: $ac
    ld b, c                                       ; $5860: $41
    add a                                         ; $5861: $87
    db $e3                                        ; $5862: $e3
    ld hl, $3a9f                                  ; $5863: $21 $9f $3a
    cp $00                                        ; $5866: $fe $00
    rst $38                                       ; $5868: $ff
    rst $38                                       ; $5869: $ff
    push de                                       ; $586a: $d5
    ld [de], a                                    ; $586b: $12
    cp a                                          ; $586c: $bf
    rst $38                                       ; $586d: $ff
    dec [hl]                                      ; $586e: $35
    ld c, a                                       ; $586f: $4f
    ld c, e                                       ; $5870: $4b
    xor c                                         ; $5871: $a9
    ccf                                           ; $5872: $3f
    db $ec                                        ; $5873: $ec
    rst $38                                       ; $5874: $ff
    rst $38                                       ; $5875: $ff
    ld sp, hl                                     ; $5876: $f9
    ret nc                                        ; $5877: $d0

    nop                                           ; $5878: $00
    ret nz                                        ; $5879: $c0

    rst $38                                       ; $587a: $ff
    sbc h                                         ; $587b: $9c
    ld a, a                                       ; $587c: $7f
    rst $38                                       ; $587d: $ff
    rst $38                                       ; $587e: $ff
    rst $38                                       ; $587f: $ff
    rst $38                                       ; $5880: $ff
    rst $38                                       ; $5881: $ff
    rst $38                                       ; $5882: $ff
    rst $38                                       ; $5883: $ff
    rst $38                                       ; $5884: $ff
    rst $38                                       ; $5885: $ff
    rst $38                                       ; $5886: $ff
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    nop                                           ; $5889: $00
    rst $38                                       ; $588a: $ff
    rst $38                                       ; $588b: $ff
    rst $38                                       ; $588c: $ff
    rst $38                                       ; $588d: $ff
    rst $38                                       ; $588e: $ff
    rst $38                                       ; $588f: $ff
    rst $38                                       ; $5890: $ff
    rst $38                                       ; $5891: $ff
    rst $38                                       ; $5892: $ff
    rst $38                                       ; $5893: $ff
    rst $38                                       ; $5894: $ff
    rst $38                                       ; $5895: $ff
    rst $38                                       ; $5896: $ff
    rst $38                                       ; $5897: $ff
    rst $38                                       ; $5898: $ff
    rst $38                                       ; $5899: $ff
    nop                                           ; $589a: $00
    rst $38                                       ; $589b: $ff
    rst $38                                       ; $589c: $ff
    rst $38                                       ; $589d: $ff
    rst $38                                       ; $589e: $ff
    rst $38                                       ; $589f: $ff
    rst $38                                       ; $58a0: $ff
    nop                                           ; $58a1: $00
    cp a                                          ; $58a2: $bf
    rst $38                                       ; $58a3: $ff
    rst $38                                       ; $58a4: $ff
    rst $38                                       ; $58a5: $ff
    rst $38                                       ; $58a6: $ff
    rst $38                                       ; $58a7: $ff
    rst $38                                       ; $58a8: $ff
    rst $38                                       ; $58a9: $ff
    rst $38                                       ; $58aa: $ff
    nop                                           ; $58ab: $00
    rst $38                                       ; $58ac: $ff
    rst $38                                       ; $58ad: $ff
    rst $38                                       ; $58ae: $ff
    xor $00                                       ; $58af: $ee $00
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    cp e                                          ; $58b3: $bb
    ld e, d                                       ; $58b4: $5a
    ld e, e                                       ; $58b5: $5b
    rst $38                                       ; $58b6: $ff
    ldh [$5c], a                                  ; $58b7: $e0 $5c
    ld e, l                                       ; $58b9: $5d
    ld sp, $e1ff                                  ; $58ba: $31 $ff $e1
    add hl, hl                                    ; $58bd: $29
    dec sp                                        ; $58be: $3b
    daa                                           ; $58bf: $27
    jr nz, @+$01                                  ; $58c0: $20 $ff

    ldh [rNR50], a                                ; $58c2: $e0 $24
    inc h                                         ; $58c4: $24
    nop                                           ; $58c5: $00
    rst $38                                       ; $58c6: $ff
    rst $38                                       ; $58c7: $ff
    rst $20                                       ; $58c8: $e7
    and $27                                       ; $58c9: $e6 $27
    ld e, e                                       ; $58cb: $5b
    ld e, e                                       ; $58cc: $5b
    ld e, d                                       ; $58cd: $5a
    jp nz, $bfe4                                  ; $58ce: $c2 $e4 $bf

jr_05c_58d1:
    and $20                                       ; $58d1: $e6 $20
    jp z, $e8ff                                   ; $58d3: $ca $ff $e8

    rst $20                                       ; $58d6: $e7
    rst $38                                       ; $58d7: $ff
    ld h, d                                       ; $58d8: $62
    ld h, d                                       ; $58d9: $62
    ld h, d                                       ; $58da: $62
    ld sp, $4731                                  ; $58db: $31 $31 $47
    dec sp                                        ; $58de: $3b
    ld d, h                                       ; $58df: $54
    rst $00                                       ; $58e0: $c7
    ld d, l                                       ; $58e1: $55
    dec sp                                        ; $58e2: $3b
    ld b, a                                       ; $58e3: $47
    ld a, [hl]                                    ; $58e4: $7e
    and $ca                                       ; $58e5: $e6 $ca
    rst $38                                       ; $58e7: $ff
    add sp, -$19                                  ; $58e8: $e8 $e7
    ld sp, $ff31                                  ; $58ea: $31 $31 $ff
    inc b                                         ; $58ed: $04
    ld sp, $3649                                  ; $58ee: $31 $49 $36
    jr nc, jr_05c_5923                            ; $58f1: $30 $30

    ld l, l                                       ; $58f3: $6d
    ld l, l                                       ; $58f4: $6d
    pop hl                                        ; $58f5: $e1
    ld [hl], $be                                  ; $58f6: $36 $be
    pop hl                                        ; $58f8: $e1
    dec a                                         ; $58f9: $3d
    ld [c], a                                     ; $58fa: $e2
    jp z, $c0ff                                   ; $58fb: $ca $ff $c0

    add sp, $15                                   ; $58fe: $e8 $15
    ld d, $0f                                     ; $5900: $16 $0f
    db $fd                                        ; $5902: $fd
    ld d, c                                       ; $5903: $51
    pop bc                                        ; $5904: $c1
    pop hl                                        ; $5905: $e1
    ld l, l                                       ; $5906: $6d
    ld l, l                                       ; $5907: $6d
    jr nc, @+$38                                  ; $5908: $30 $36

jr_05c_590a:
    ld c, c                                       ; $590a: $49
    ld sp, $31e7                                  ; $590b: $31 $e7 $31
    rla                                           ; $590e: $17
    jr z, jr_05c_58d1                             ; $590f: $28 $c0

    rst $38                                       ; $5911: $ff
    add b                                         ; $5912: $80

jr_05c_5913:
    ld [$2817], a                                 ; $5913: $ea $17 $28
    nop                                           ; $5916: $00
    dec a                                         ; $5917: $3d
    ld d, b                                       ; $5918: $50
    ret nz                                        ; $5919: $c0

    db $e3                                        ; $591a: $e3
    ld l, l                                       ; $591b: $6d
    jr nc, jr_05c_5957                            ; $591c: $30 $39

    ld sp, $e0b1                                  ; $591e: $31 $b1 $e0
    ret nz                                        ; $5921: $c0

    rst $38                                       ; $5922: $ff

jr_05c_5923:
    ld c, h                                       ; $5923: $4c
    ld [$d0e9], a                                 ; $5924: $ea $e9 $d0
    ldh [rP1], a                                  ; $5927: $e0 $00
    scf                                           ; $5929: $37
    ld b, b                                       ; $592a: $40
    ld [c], a                                     ; $592b: $e2
    ld a, l                                       ; $592c: $7d
    ldh [rOBP0], a                                ; $592d: $e0 $48
    ld a, a                                       ; $592f: $7f
    db $e3                                        ; $5930: $e3
    ld a, b                                       ; $5931: $78
    jp z, $e8ff                                   ; $5932: $ca $ff $e8

    rst $20                                       ; $5935: $e7
    pop de                                        ; $5936: $d1
    pop hl                                        ; $5937: $e1
    ld sp, $4647                                  ; $5938: $31 $47 $46
    ld [hl], $ff                                  ; $593b: $36 $ff
    ret nz                                        ; $593d: $c0

    sub a                                         ; $593e: $97
    jr nc, @+$32                                  ; $593f: $30 $30

    ld l, d                                       ; $5941: $6a
    ld a, a                                       ; $5942: $7f
    pop hl                                        ; $5943: $e1
    daa                                           ; $5944: $27
    ret nz                                        ; $5945: $c0

    rst $38                                       ; $5946: $ff
    ret nz                                        ; $5947: $c0

    db $eb                                        ; $5948: $eb
    jr z, jr_05c_590a                             ; $5949: $28 $bf

    ld [de], a                                    ; $594b: $12
    ld de, $4731                                  ; $594c: $11 $31 $47
    ld [hl-], a                                   ; $594f: $32
    jr nc, jr_05c_5913                            ; $5950: $30 $c1

    ldh [$67], a                                  ; $5952: $e0 $67
    ccf                                           ; $5954: $3f
    ld d, d                                       ; $5955: $52
    and l                                         ; $5956: $a5

jr_05c_5957:
    ld [hl], b                                    ; $5957: $70
    ld sp, $0404                                  ; $5958: $31 $04 $04
    jp z, Jump_05c_40ff                           ; $595b: $ca $ff $40

    ld [$20ff], a                                 ; $595e: $ea $ff $20
    ld [hl+], a                                   ; $5961: $22
    ld hl, $1112                                  ; $5962: $21 $12 $11
    ld c, l                                       ; $5965: $4d
    ld [hl-], a                                   ; $5966: $32
    ld l, d                                       ; $5967: $6a
    rst $38                                       ; $5968: $ff
    ld l, d                                       ; $5969: $6a
    ld h, a                                       ; $596a: $67
    ld h, a                                       ; $596b: $67
    ld d, e                                       ; $596c: $53
    add b                                         ; $596d: $80
    xor [hl]                                      ; $596e: $ae
    ld [hl], b                                    ; $596f: $70
    ld sp, $31f1                                  ; $5970: $31 $f1 $31
    jp z, $c0ff                                   ; $5973: $ca $ff $c0

    jp z, $a08b                                   ; $5976: $ca $8b $a0

    ld [hl+], a                                   ; $5979: $22
    ld hl, $4901                                  ; $597a: $21 $01 $49
    ccf                                           ; $597d: $3f
    ld c, b                                       ; $597e: $48
    ld h, a                                       ; $597f: $67
    ld h, a                                       ; $5980: $67
    ld b, d                                       ; $5981: $42
    ld [hl], d                                    ; $5982: $72
    add b                                         ; $5983: $80
    cp a                                          ; $5984: $bf
    pop hl                                        ; $5985: $e1
    jp z, $f6ff                                   ; $5986: $ca $ff $f6

    ld b, b                                       ; $5989: $40
    ret                                           ; $598a: $c9


    inc d                                         ; $598b: $14
    dec b                                         ; $598c: $05
    ld c, d                                       ; $598d: $4a
    and b                                         ; $598e: $a0
    inc l                                         ; $598f: $2c
    ld bc, $3c31                                  ; $5990: $01 $31 $3c
    add e                                         ; $5993: $83
    ld d, h                                       ; $5994: $54
    ld d, h                                       ; $5995: $54
    pop bc                                        ; $5996: $c1
    ldh [$bf], a                                  ; $5997: $e0 $bf
    pop hl                                        ; $5999: $e1
    jp z, $c0ff                                   ; $599a: $ca $ff $c0

    xor c                                         ; $599d: $a9
    inc c                                         ; $599e: $0c
    jp nz, Jump_000_0f16                          ; $599f: $c2 $16 $0f

    dec d                                         ; $59a2: $15
    ld sp, $a131                                  ; $59a3: $31 $31 $a1
    jp nz, $bfe1                                  ; $59a6: $c2 $e1 $bf

    pop hl                                        ; $59a9: $e1
    jp z, $e8ff                                   ; $59aa: $ca $ff $e8

    rst $20                                       ; $59ad: $e7
    inc l                                         ; $59ae: $2c
    push bc                                       ; $59af: $c5
    add c                                         ; $59b0: $81
    inc c                                         ; $59b1: $0c
    ret nz                                        ; $59b2: $c0

    jr z, jr_05c_59cc                             ; $59b3: $28 $17

    ret nz                                        ; $59b5: $c0

    rst $20                                       ; $59b6: $e7
    add b                                         ; $59b7: $80
    jp z, $c0ff                                   ; $59b8: $ca $ff $c0

    adc c                                         ; $59bb: $89
    ld hl, $7f60                                  ; $59bc: $21 $60 $7f
    push hl                                       ; $59bf: $e5
    ret nz                                        ; $59c0: $c0

    rst $38                                       ; $59c1: $ff
    pop af                                        ; $59c2: $f1
    ldh a, [rLCDC]                                ; $59c3: $f0 $40
    add b                                         ; $59c5: $80
    ld h, b                                       ; $59c6: $60
    ld a, a                                       ; $59c7: $7f
    db $e4                                        ; $59c8: $e4
    ret nz                                        ; $59c9: $c0

    rst $38                                       ; $59ca: $ff
    nop                                           ; $59cb: $00

jr_05c_59cc:
    rst $38                                       ; $59cc: $ff
    rst $38                                       ; $59cd: $ff
    rst $38                                       ; $59ce: $ff
    rst $38                                       ; $59cf: $ff
    rst $38                                       ; $59d0: $ff
    rst $38                                       ; $59d1: $ff
    rst $38                                       ; $59d2: $ff
    rst $38                                       ; $59d3: $ff
    rst $38                                       ; $59d4: $ff
    rst $38                                       ; $59d5: $ff
    rst $38                                       ; $59d6: $ff
    rst $38                                       ; $59d7: $ff
    rst $38                                       ; $59d8: $ff
    rst $38                                       ; $59d9: $ff
    rst $38                                       ; $59da: $ff
    rst $38                                       ; $59db: $ff
    nop                                           ; $59dc: $00
    rst $38                                       ; $59dd: $ff
    rst $38                                       ; $59de: $ff
    rst $38                                       ; $59df: $ff
    rst $38                                       ; $59e0: $ff
    rst $38                                       ; $59e1: $ff
    rst $38                                       ; $59e2: $ff
    rst $38                                       ; $59e3: $ff
    rst $38                                       ; $59e4: $ff
    rst $38                                       ; $59e5: $ff
    rst $38                                       ; $59e6: $ff
    rst $38                                       ; $59e7: $ff
    rst $38                                       ; $59e8: $ff
    rst $38                                       ; $59e9: $ff
    rst $38                                       ; $59ea: $ff
    rst $38                                       ; $59eb: $ff
    rst $38                                       ; $59ec: $ff
    nop                                           ; $59ed: $00
    rst $38                                       ; $59ee: $ff
    rst $38                                       ; $59ef: $ff
    rst $38                                       ; $59f0: $ff
    rst $38                                       ; $59f1: $ff
    rst $38                                       ; $59f2: $ff
    rst $38                                       ; $59f3: $ff
    rst $38                                       ; $59f4: $ff
    rst $38                                       ; $59f5: $ff
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    rst $38                                       ; $59f8: $ff
    rst $38                                       ; $59f9: $ff
    rst $38                                       ; $59fa: $ff
    rst $38                                       ; $59fb: $ff
    rst $38                                       ; $59fc: $ff
    rst $38                                       ; $59fd: $ff
    nop                                           ; $59fe: $00
    rst $38                                       ; $59ff: $ff
    rst $38                                       ; $5a00: $ff
    rst $38                                       ; $5a01: $ff
    rst $38                                       ; $5a02: $ff
    rst $38                                       ; $5a03: $ff
    rst $38                                       ; $5a04: $ff
    rst $38                                       ; $5a05: $ff
    rst $38                                       ; $5a06: $ff
    rst $38                                       ; $5a07: $ff
    rst $38                                       ; $5a08: $ff
    rst $38                                       ; $5a09: $ff
    rst $38                                       ; $5a0a: $ff
    rst $38                                       ; $5a0b: $ff
    rst $38                                       ; $5a0c: $ff
    rst $38                                       ; $5a0d: $ff
    rst $38                                       ; $5a0e: $ff
    nop                                           ; $5a0f: $00
    rst $38                                       ; $5a10: $ff
    rst $38                                       ; $5a11: $ff
    rst $38                                       ; $5a12: $ff
    rst $38                                       ; $5a13: $ff
    rst $38                                       ; $5a14: $ff
    rst $38                                       ; $5a15: $ff
    rst $38                                       ; $5a16: $ff
    rst $38                                       ; $5a17: $ff
    rst $38                                       ; $5a18: $ff
    rst $38                                       ; $5a19: $ff
    rst $38                                       ; $5a1a: $ff
    rst $38                                       ; $5a1b: $ff
    rst $38                                       ; $5a1c: $ff
    rst $38                                       ; $5a1d: $ff
    rst $38                                       ; $5a1e: $ff
    rst $38                                       ; $5a1f: $ff
    nop                                           ; $5a20: $00
    rst $38                                       ; $5a21: $ff
    rst $38                                       ; $5a22: $ff
    rst $38                                       ; $5a23: $ff
    rst $38                                       ; $5a24: $ff
    rst $38                                       ; $5a25: $ff
    rst $38                                       ; $5a26: $ff
    rst $38                                       ; $5a27: $ff
    rst $38                                       ; $5a28: $ff
    rst $38                                       ; $5a29: $ff
    rst $38                                       ; $5a2a: $ff
    rst $38                                       ; $5a2b: $ff
    rst $38                                       ; $5a2c: $ff
    rst $38                                       ; $5a2d: $ff
    rst $38                                       ; $5a2e: $ff
    rst $38                                       ; $5a2f: $ff
    rst $38                                       ; $5a30: $ff
    nop                                           ; $5a31: $00
    rst $38                                       ; $5a32: $ff
    rst $38                                       ; $5a33: $ff
    rst $38                                       ; $5a34: $ff
    rst $38                                       ; $5a35: $ff
    rst $38                                       ; $5a36: $ff
    rst $38                                       ; $5a37: $ff
    rst $38                                       ; $5a38: $ff
    rst $38                                       ; $5a39: $ff
    rst $38                                       ; $5a3a: $ff
    rst $38                                       ; $5a3b: $ff
    rst $38                                       ; $5a3c: $ff
    rst $38                                       ; $5a3d: $ff
    rst $38                                       ; $5a3e: $ff
    rst $38                                       ; $5a3f: $ff
    rst $38                                       ; $5a40: $ff
    rst $38                                       ; $5a41: $ff
    nop                                           ; $5a42: $00
    rst $38                                       ; $5a43: $ff
    rst $38                                       ; $5a44: $ff
    rst $38                                       ; $5a45: $ff
    rst $38                                       ; $5a46: $ff
    rst $38                                       ; $5a47: $ff
    rst $38                                       ; $5a48: $ff
    rst $38                                       ; $5a49: $ff
    rst $38                                       ; $5a4a: $ff
    rst $38                                       ; $5a4b: $ff
    rst $38                                       ; $5a4c: $ff
    rst $38                                       ; $5a4d: $ff
    rst $38                                       ; $5a4e: $ff
    rst $38                                       ; $5a4f: $ff
    rst $38                                       ; $5a50: $ff
    rst $38                                       ; $5a51: $ff
    rst $38                                       ; $5a52: $ff
    nop                                           ; $5a53: $00
    rst $38                                       ; $5a54: $ff
    rst $38                                       ; $5a55: $ff
    rst $38                                       ; $5a56: $ff
    rst $38                                       ; $5a57: $ff
    rst $38                                       ; $5a58: $ff
    rst $38                                       ; $5a59: $ff
    rst $38                                       ; $5a5a: $ff
    rst $38                                       ; $5a5b: $ff
    rst $38                                       ; $5a5c: $ff
    rst $38                                       ; $5a5d: $ff
    rst $38                                       ; $5a5e: $ff
    rst $38                                       ; $5a5f: $ff
    rst $38                                       ; $5a60: $ff
    rst $38                                       ; $5a61: $ff
    rst $38                                       ; $5a62: $ff
    rst $38                                       ; $5a63: $ff
    nop                                           ; $5a64: $00
    rst $38                                       ; $5a65: $ff
    rst $38                                       ; $5a66: $ff
    rst $38                                       ; $5a67: $ff
    rst $38                                       ; $5a68: $ff
    rst $38                                       ; $5a69: $ff
    rst $38                                       ; $5a6a: $ff
    rst $38                                       ; $5a6b: $ff
    rst $38                                       ; $5a6c: $ff
    rst $38                                       ; $5a6d: $ff
    rst $38                                       ; $5a6e: $ff
    rst $38                                       ; $5a6f: $ff
    rst $38                                       ; $5a70: $ff
    rst $38                                       ; $5a71: $ff
    rst $38                                       ; $5a72: $ff
    rst $38                                       ; $5a73: $ff
    rst $38                                       ; $5a74: $ff
    nop                                           ; $5a75: $00
    rst $38                                       ; $5a76: $ff
    rst $38                                       ; $5a77: $ff
    rst $38                                       ; $5a78: $ff
    rst $38                                       ; $5a79: $ff
    rst $38                                       ; $5a7a: $ff
    rst $38                                       ; $5a7b: $ff
    rst $38                                       ; $5a7c: $ff
    rst $38                                       ; $5a7d: $ff
    rst $38                                       ; $5a7e: $ff
    rst $38                                       ; $5a7f: $ff
    rst $38                                       ; $5a80: $ff
    rst $38                                       ; $5a81: $ff
    rst $38                                       ; $5a82: $ff
    rst $38                                       ; $5a83: $ff
    rst $38                                       ; $5a84: $ff
    rst $38                                       ; $5a85: $ff
    nop                                           ; $5a86: $00
    rst $38                                       ; $5a87: $ff
    rst $38                                       ; $5a88: $ff
    rst $38                                       ; $5a89: $ff
    rst $38                                       ; $5a8a: $ff
    rst $38                                       ; $5a8b: $ff
    db $fc                                        ; $5a8c: $fc
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    and l                                         ; $5a90: $a5
    nop                                           ; $5a91: $00
    rst $38                                       ; $5a92: $ff
    push hl                                       ; $5a93: $e5
    ld [hl-], a                                   ; $5a94: $32
    or $e6                                        ; $5a95: $f6 $e6
    rst $30                                       ; $5a97: $f7
    rst $20                                       ; $5a98: $e7
    dec [hl]                                      ; $5a99: $35
    db $ec                                        ; $5a9a: $ec
    xor $37                                       ; $5a9b: $ee $37
    db $ec                                        ; $5a9d: $ec
    jp c, $c7f0                                   ; $5a9e: $da $f0 $c7

    add sp, $33                                   ; $5aa1: $e8 $33
    ld sp, $f2e0                                  ; $5aa3: $31 $e0 $f2
    ld [hl], $30                                  ; $5aa6: $36 $30
    scf                                           ; $5aa8: $37
    cp a                                          ; $5aa9: $bf
    ld h, $20                                     ; $5aaa: $26 $20
    daa                                           ; $5aac: $27
    db $10                                        ; $5aad: $10
    ld d, $17                                     ; $5aae: $16 $17
    jp nz, Jump_000_34f6                          ; $5ab0: $c2 $f6 $34

    rst $38                                       ; $5ab3: $ff
    ld [hl], $32                                  ; $5ab4: $36 $32
    jr nc, jr_05c_5aef                            ; $5ab6: $30 $37

    ld sp, $3133                                  ; $5ab8: $31 $33 $31
    inc sp                                        ; $5abb: $33
    nop                                           ; $5abc: $00
    and b                                         ; $5abd: $a0
    ei                                            ; $5abe: $fb
    rst $38                                       ; $5abf: $ff
    rst $28                                       ; $5ac0: $ef
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    call z, $fc5a                                 ; $5ac4: $cc $5a $fc
    ld e, d                                       ; $5ac7: $5a
    inc c                                         ; $5ac8: $0c
    ld e, l                                       ; $5ac9: $5d
    xor h                                         ; $5aca: $ac
    ld e, [hl]                                    ; $5acb: $5e
    ld a, [c]                                     ; $5acc: $f2
    inc sp                                        ; $5acd: $33
    ld c, e                                       ; $5ace: $4b
    dec de                                        ; $5acf: $1b
    dec h                                         ; $5ad0: $25
    ld [bc], a                                    ; $5ad1: $02
    ldh [rNR10], a                                ; $5ad2: $e0 $10
    ret z                                         ; $5ad4: $c8

    ld [bc], a                                    ; $5ad5: $02
    ld a, [c]                                     ; $5ad6: $f2
    inc sp                                        ; $5ad7: $33
    ld c, e                                       ; $5ad8: $4b
    dec de                                        ; $5ad9: $1b
    dec h                                         ; $5ada: $25
    ld [bc], a                                    ; $5adb: $02
    sbc a                                         ; $5adc: $9f
    ld [bc], a                                    ; $5add: $02
    or $01                                        ; $5ade: $f6 $01
    ld d, e                                       ; $5ae0: $53
    ld bc, $1b4b                                  ; $5ae1: $01 $4b $1b
    ld [$0825], sp                                ; $5ae4: $08 $25 $08
    dec h                                         ; $5ae7: $25
    ld [$0825], sp                                ; $5ae8: $08 $25 $08
    dec h                                         ; $5aeb: $25
    ld [$0825], sp                                ; $5aec: $08 $25 $08

jr_05c_5aef:
    dec h                                         ; $5aef: $25
    ld [$0825], sp                                ; $5af0: $08 $25 $08
    dec h                                         ; $5af3: $25
    ld [$0825], sp                                ; $5af4: $08 $25 $08
    dec h                                         ; $5af7: $25
    ld [$0825], sp                                ; $5af8: $08 $25 $08
    dec h                                         ; $5afb: $25
    db $fd                                        ; $5afc: $fd
    ld a, [bc]                                    ; $5afd: $0a
    rst $38                                       ; $5afe: $ff
    ldh a, [$0c]                                  ; $5aff: $f0 $0c
    inc c                                         ; $5b01: $0c
    inc c                                         ; $5b02: $0c
    ld c, h                                       ; $5b03: $4c
    ld c, h                                       ; $5b04: $4c
    inc c                                         ; $5b05: $0c
    ld de, $f94c                                  ; $5b06: $11 $4c $f9
    ldh [rIE], a                                  ; $5b09: $e0 $ff
    rst $38                                       ; $5b0b: $ff
    ret nz                                        ; $5b0c: $c0

    ldh a, [rOCPS]                                ; $5b0d: $f0 $6a
    pop bc                                        ; $5b0f: $c1
    ldh [$be], a                                  ; $5b10: $e0 $be
    ld [c], a                                     ; $5b12: $e2
    cp l                                          ; $5b13: $bd
    rst $38                                       ; $5b14: $ff
    and [hl]                                      ; $5b15: $a6
    ret nz                                        ; $5b16: $c0

    pop af                                        ; $5b17: $f1
    ld l, d                                       ; $5b18: $6a
    ld l, d                                       ; $5b19: $6a
    ret z                                         ; $5b1a: $c8

    ld [c], a                                     ; $5b1b: $e2
    ld a, [hl]                                    ; $5b1c: $7e
    ldh [$2c], a                                  ; $5b1d: $e0 $2c
    ret nz                                        ; $5b1f: $c0

    ld [c], a                                     ; $5b20: $e2
    inc l                                         ; $5b21: $2c
    and c                                         ; $5b22: $a1
    inc l                                         ; $5b23: $2c
    ret nz                                        ; $5b24: $c0

    rst $38                                       ; $5b25: $ff
    pop bc                                        ; $5b26: $c1
    ld [$e080], a                                 ; $5b27: $ea $80 $e0
    ld b, b                                       ; $5b2a: $40
    ld [c], a                                     ; $5b2b: $e2
    inc l                                         ; $5b2c: $2c
    ret nz                                        ; $5b2d: $c0

    ld [c], a                                     ; $5b2e: $e2
    inc l                                         ; $5b2f: $2c
    ld a, d                                       ; $5b30: $7a
    ret nz                                        ; $5b31: $c0

    ei                                            ; $5b32: $fb
    dec bc                                        ; $5b33: $0b
    rst $38                                       ; $5b34: $ff
    ldh [rOCPD], a                                ; $5b35: $e0 $6b
    dec bc                                        ; $5b37: $0b
    dec bc                                        ; $5b38: $0b
    ld c, e                                       ; $5b39: $4b
    ei                                            ; $5b3a: $fb
    ld [c], a                                     ; $5b3b: $e2
    rrca                                          ; $5b3c: $0f
    dec hl                                        ; $5b3d: $2b
    dec hl                                        ; $5b3e: $2b
    dec bc                                        ; $5b3f: $0b
    ld c, d                                       ; $5b40: $4a
    ret nz                                        ; $5b41: $c0

    ld [c], a                                     ; $5b42: $e2
    ld b, b                                       ; $5b43: $40
    ld [c], a                                     ; $5b44: $e2
    ret nz                                        ; $5b45: $c0

    push hl                                       ; $5b46: $e5
    dec sp                                        ; $5b47: $3b
    add sp, -$30                                  ; $5b48: $e8 $d0
    ld [hl], h                                    ; $5b4a: $74
    jp hl                                         ; $5b4b: $e9


    ld l, c                                       ; $5b4c: $69
    db $e3                                        ; $5b4d: $e3
    pop bc                                        ; $5b4e: $c1
    pop hl                                        ; $5b4f: $e1
    ret nz                                        ; $5b50: $c0

    pop hl                                        ; $5b51: $e1
    ld l, e                                       ; $5b52: $6b
    rst $38                                       ; $5b53: $ff
    ldh [rWX], a                                  ; $5b54: $e0 $4b
    ld c, e                                       ; $5b56: $4b
    rlca                                          ; $5b57: $07
    dec bc                                        ; $5b58: $0b
    dec hl                                        ; $5b59: $2b
    ld c, e                                       ; $5b5a: $4b
    cp a                                          ; $5b5b: $bf
    ldh [rLCDC], a                                ; $5b5c: $e0 $40
    push hl                                       ; $5b5e: $e5
    nop                                           ; $5b5f: $00
    ld [c], a                                     ; $5b60: $e2
    call Call_000_34ea                            ; $5b61: $cd $ea $34
    rst $28                                       ; $5b64: $ef
    ld hl, $826b                                  ; $5b65: $21 $6b $82
    pop hl                                        ; $5b68: $e1
    cp l                                          ; $5b69: $bd
    ldh [$fe], a                                  ; $5b6a: $e0 $fe
    ld [c], a                                     ; $5b6c: $e2
    cp a                                          ; $5b6d: $bf
    ldh [rWX], a                                  ; $5b6e: $e0 $4b
    ld a, [hl]                                    ; $5b70: $7e
    ldh [$ca], a                                  ; $5b71: $e0 $ca
    pop bc                                        ; $5b73: $c1
    ret nz                                        ; $5b74: $c0

    ld a, a                                       ; $5b75: $7f
    jp nc, $d0f5                                  ; $5b76: $d2 $f5 $d0

    ret nz                                        ; $5b79: $c0

    db $e3                                        ; $5b7a: $e3
    ld a, [hl-]                                   ; $5b7b: $3a
    ld [c], a                                     ; $5b7c: $e2
    ld a, l                                       ; $5b7d: $7d
    ldh [$37], a                                  ; $5b7e: $e0 $37
    pop hl                                        ; $5b80: $e1
    dec bc                                        ; $5b81: $0b
    ld c, d                                       ; $5b82: $4a
    nop                                           ; $5b83: $00
    ld b, b                                       ; $5b84: $40
    pop bc                                        ; $5b85: $c1
    ld a, a                                       ; $5b86: $7f
    jp $e102                                      ; $5b87: $c3 $02 $e1


    add b                                         ; $5b8a: $80
    ld [$f000], a                                 ; $5b8b: $ea $00 $f0
    adc $e0                                       ; $5b8e: $ce $e0
    cp a                                          ; $5b90: $bf
    and $b5                                       ; $5b91: $e6 $b5
    ld [c], a                                     ; $5b93: $e2
    ld bc, $c50a                                  ; $5b94: $01 $0a $c5
    db $e3                                        ; $5b97: $e3
    ret nz                                        ; $5b98: $c0

    ldh a, [$31]                                  ; $5b99: $f0 $31
    ret nc                                        ; $5b9b: $d0

    dec c                                         ; $5b9c: $0d
    pop hl                                        ; $5b9d: $e1
    ld a, a                                       ; $5b9e: $7f
    and $c1                                       ; $5b9f: $e6 $c1
    db $e3                                        ; $5ba1: $e3
    ret nz                                        ; $5ba2: $c0

    ldh [rNR23], a                                ; $5ba3: $e0 $18
    ret nz                                        ; $5ba5: $c0

    or d                                          ; $5ba6: $b2
    or h                                          ; $5ba7: $b4
    ld a, [c]                                     ; $5ba8: $f2
    call z, Call_05c_6bc0                         ; $5ba9: $cc $c0 $6b
    dec hl                                        ; $5bac: $2b
    ccf                                           ; $5bad: $3f
    db $e4                                        ; $5bae: $e4
    ld [hl], l                                    ; $5baf: $75
    jp nz, $a280                                  ; $5bb0: $c2 $80 $a2

    ld [hl], b                                    ; $5bb3: $70
    add c                                         ; $5bb4: $81
    and c                                         ; $5bb5: $a1
    ret nz                                        ; $5bb6: $c0

    ld a, [$a6ec]                                 ; $5bb7: $fa $ec $a6
    ld b, l                                       ; $5bba: $45
    ret nz                                        ; $5bbb: $c0

    ld c, e                                       ; $5bbc: $4b
    dec hl                                        ; $5bbd: $2b
    ld c, e                                       ; $5bbe: $4b
    rst $38                                       ; $5bbf: $ff
    db $e3                                        ; $5bc0: $e3
    db $10                                        ; $5bc1: $10
    pop bc                                        ; $5bc2: $c1
    db $e4                                        ; $5bc3: $e4
    ld b, b                                       ; $5bc4: $40
    and c                                         ; $5bc5: $a1
    ccf                                           ; $5bc6: $3f
    cp a                                          ; $5bc7: $bf
    ld b, b                                       ; $5bc8: $40
    or h                                          ; $5bc9: $b4
    ld a, [hl+]                                   ; $5bca: $2a
    nop                                           ; $5bcb: $00
    and h                                         ; $5bcc: $a4
    ret nz                                        ; $5bcd: $c0

    call nz, $feff                                ; $5bce: $c4 $ff $fe
    ld bc, $ff2a                                  ; $5bd1: $01 $2a $ff
    db $ec                                        ; $5bd4: $ec
    cp a                                          ; $5bd5: $bf
    pop hl                                        ; $5bd6: $e1
    add b                                         ; $5bd7: $80
    rst $38                                       ; $5bd8: $ff
    ld l, c                                       ; $5bd9: $69
    rst $00                                       ; $5bda: $c7
    ret nz                                        ; $5bdb: $c0

    xor $7e                                       ; $5bdc: $ee $7e
    ldh [$c3], a                                  ; $5bde: $e0 $c3
    add h                                         ; $5be0: $84
    inc c                                         ; $5be1: $0c
    ret nz                                        ; $5be2: $c0

    rst $38                                       ; $5be3: $ff
    ret nz                                        ; $5be4: $c0

    ld a, [c]                                     ; $5be5: $f2
    ld a, [bc]                                    ; $5be6: $0a
    ld a, [hl+]                                   ; $5be7: $2a
    ld b, b                                       ; $5be8: $40
    ret z                                         ; $5be9: $c8

    rst $38                                       ; $5bea: $ff
    cp $99                                        ; $5beb: $fe $99
    push bc                                       ; $5bed: $c5
    adc [hl]                                      ; $5bee: $8e
    jp nz, $fb00                                  ; $5bef: $c2 $00 $fb

    rst $20                                       ; $5bf2: $e7
    rst $00                                       ; $5bf3: $c7
    rst $38                                       ; $5bf4: $ff
    cp [hl]                                       ; $5bf5: $be
    jp hl                                         ; $5bf6: $e9


    ld d, b                                       ; $5bf7: $50
    add h                                         ; $5bf8: $84
    jp z, Jump_05c_7fff                           ; $5bf9: $ca $ff $7f

    pop af                                        ; $5bfc: $f1
    push de                                       ; $5bfd: $d5
    ld h, [hl]                                    ; $5bfe: $66
    adc $7f                                       ; $5bff: $ce $7f
    nop                                           ; $5c01: $00
    di                                            ; $5c02: $f3
    adc e                                         ; $5c03: $8b
    pop bc                                        ; $5c04: $c1
    push hl                                       ; $5c05: $e5
    ld a, [hl]                                    ; $5c06: $7e
    add sp, -$32                                  ; $5c07: $e8 $ce
    ld a, a                                       ; $5c09: $7f
    ld b, b                                       ; $5c0a: $40
    adc l                                         ; $5c0b: $8d
    push de                                       ; $5c0c: $d5
    ld h, h                                       ; $5c0d: $64
    adc $74                                       ; $5c0e: $ce $74
    add h                                         ; $5c10: $84
    ld a, b                                       ; $5c11: $78
    nop                                           ; $5c12: $00
    pop bc                                        ; $5c13: $c1
    and $d5                                       ; $5c14: $e6 $d5
    ld h, d                                       ; $5c16: $62
    adc $73                                       ; $5c17: $ce $73
    add h                                         ; $5c19: $84
    ld a, c                                       ; $5c1a: $79
    ld a, [hl+]                                   ; $5c1b: $2a
    ld h, h                                       ; $5c1c: $64
    ld b, b                                       ; $5c1d: $40
    db $eb                                        ; $5c1e: $eb
    adc $6c                                       ; $5c1f: $ce $6c
    dec b                                         ; $5c21: $05
    ld h, [hl]                                    ; $5c22: $66
    nop                                           ; $5c23: $00
    jp hl                                         ; $5c24: $e9


    jp c, $d77f                                   ; $5c25: $da $7f $d7

    ret nz                                        ; $5c28: $c0

    ld sp, hl                                     ; $5c29: $f9
    xor d                                         ; $5c2a: $aa
    ld b, [hl]                                    ; $5c2b: $46
    ld a, a                                       ; $5c2c: $7f
    rrc [hl]                                      ; $5c2d: $cb $0e
    sub e                                         ; $5c2f: $93
    ret nz                                        ; $5c30: $c0

    rst $30                                       ; $5c31: $f7
    push de                                       ; $5c32: $d5
    ld h, h                                       ; $5c33: $64
    nop                                           ; $5c34: $00
    adc $7f                                       ; $5c35: $ce $7f
    ld bc, $c7d6                                  ; $5c37: $01 $d6 $c7
    and d                                         ; $5c3a: $a2
    adc $73                                       ; $5c3b: $ce $73
    rst $38                                       ; $5c3d: $ff
    rst $38                                       ; $5c3e: $ff
    push de                                       ; $5c3f: $d5
    ld h, [hl]                                    ; $5c40: $66
    ld c, d                                       ; $5c41: $4a
    cp a                                          ; $5c42: $bf
    ret nz                                        ; $5c43: $c0

    rst $18                                       ; $5c44: $df
    nop                                           ; $5c45: $00
    ld a, a                                       ; $5c46: $7f
    rst $38                                       ; $5c47: $ff
    ccf                                           ; $5c48: $3f
    cp a                                          ; $5c49: $bf
    rst $38                                       ; $5c4a: $ff
    rst $38                                       ; $5c4b: $ff
    add b                                         ; $5c4c: $80
    rst $38                                       ; $5c4d: $ff
    rst $38                                       ; $5c4e: $ff
    rst $38                                       ; $5c4f: $ff
    ccf                                           ; $5c50: $3f
    adc h                                         ; $5c51: $8c
    db $fc                                        ; $5c52: $fc
    rst $00                                       ; $5c53: $c7
    rst $38                                       ; $5c54: $ff
    rst $38                                       ; $5c55: $ff
    nop                                           ; $5c56: $00
    nop                                           ; $5c57: $00
    sub c                                         ; $5c58: $91
    ld b, b                                       ; $5c59: $40
    ret                                           ; $5c5a: $c9


    rst $38                                       ; $5c5b: $ff
    rst $38                                       ; $5c5c: $ff
    ret nz                                        ; $5c5d: $c0

    ld [hl], c                                    ; $5c5e: $71
    push bc                                       ; $5c5f: $c5
    rst $38                                       ; $5c60: $ff
    ld a, d                                       ; $5c61: $7a
    sbc e                                         ; $5c62: $9b
    call $ffbf                                    ; $5c63: $cd $bf $ff
    rst $38                                       ; $5c66: $ff
    nop                                           ; $5c67: $00
    rst $38                                       ; $5c68: $ff
    rst $38                                       ; $5c69: $ff
    sbc l                                         ; $5c6a: $9d
    rst $18                                       ; $5c6b: $df
    dec de                                        ; $5c6c: $1b
    ret c                                         ; $5c6d: $d8

    xor e                                         ; $5c6e: $ab
    dec d                                         ; $5c6f: $15
    add a                                         ; $5c70: $87
    rst $18                                       ; $5c71: $df
    ld a, [de]                                    ; $5c72: $1a
    and e                                         ; $5c73: $a3
    db $dd                                        ; $5c74: $dd
    sub [hl]                                      ; $5c75: $96
    ld l, d                                       ; $5c76: $6a
    ld a, [$6800]                                 ; $5c77: $fa $00 $68
    ld b, e                                       ; $5c7a: $43
    xor [hl]                                      ; $5c7b: $ae
    inc b                                         ; $5c7c: $04
    ld b, c                                       ; $5c7d: $41
    pop af                                        ; $5c7e: $f1
    push de                                       ; $5c7f: $d5
    inc a                                         ; $5c80: $3c
    dec hl                                        ; $5c81: $2b
    ld b, c                                       ; $5c82: $41
    db $fc                                        ; $5c83: $fc
    ld [c], a                                     ; $5c84: $e2
    xor e                                         ; $5c85: $ab
    inc d                                         ; $5c86: $14
    rlca                                          ; $5c87: $07
    call c, Call_05c_6400                         ; $5c88: $dc $00 $64
    and l                                         ; $5c8b: $a5
    ld d, [hl]                                    ; $5c8c: $56
    or $05                                        ; $5c8d: $f6 $05
    rst $38                                       ; $5c8f: $ff
    ld a, [hl+]                                   ; $5c90: $2a
    ld b, h                                       ; $5c91: $44
    db $dd                                        ; $5c92: $dd
    sub h                                         ; $5c93: $94
    rlca                                          ; $5c94: $07
    sbc $44                                       ; $5c95: $de $44
    and $40                                       ; $5c97: $e6 $40
    rst $18                                       ; $5c99: $df
    nop                                           ; $5c9a: $00
    ld hl, $6631                                  ; $5c9b: $21 $31 $66
    ld b, b                                       ; $5c9e: $40
    add hl, hl                                    ; $5c9f: $29
    inc h                                         ; $5ca0: $24
    db $dd                                        ; $5ca1: $dd
    sbc a                                         ; $5ca2: $9f
    sub [hl]                                      ; $5ca3: $96
    ld [de], a                                    ; $5ca4: $12
    add c                                         ; $5ca5: $81
    and $dd                                       ; $5ca6: $e6 $dd
    sbc a                                         ; $5ca8: $9f
    jr nc, jr_05c_5ccf                            ; $5ca9: $30 $24

    nop                                           ; $5cab: $00
    call $87e0                                    ; $5cac: $cd $e0 $87
    rst $20                                       ; $5caf: $e7
    ld b, d                                       ; $5cb0: $42
    jp nz, $ff85                                  ; $5cb1: $c2 $85 $ff

    sub [hl]                                      ; $5cb4: $96
    ld c, d                                       ; $5cb5: $4a
    add hl, de                                    ; $5cb6: $19
    ld [c], a                                     ; $5cb7: $e2
    add a                                         ; $5cb8: $87
    db $e3                                        ; $5cb9: $e3
    or [hl]                                       ; $5cba: $b6
    jr z, jr_05c_5cbd                             ; $5cbb: $28 $00

jr_05c_5cbd:
    db $dd                                        ; $5cbd: $dd
    sbc a                                         ; $5cbe: $9f
    rlca                                          ; $5cbf: $07
    pop af                                        ; $5cc0: $f1
    rst $38                                       ; $5cc1: $ff
    rst $38                                       ; $5cc2: $ff
    call z, $ca2e                                 ; $5cc3: $cc $2e $ca
    inc hl                                        ; $5cc6: $23
    cp a                                          ; $5cc7: $bf
    rst $38                                       ; $5cc8: $ff
    ccf                                           ; $5cc9: $3f
    ret c                                         ; $5cca: $d8

    ccf                                           ; $5ccb: $3f
    rst $28                                       ; $5ccc: $ef
    nop                                           ; $5ccd: $00
    rst $38                                       ; $5cce: $ff

jr_05c_5ccf:
    rst $38                                       ; $5ccf: $ff
    ld sp, hl                                     ; $5cd0: $f9
    ret nc                                        ; $5cd1: $d0

    ret nz                                        ; $5cd2: $c0

    rst $38                                       ; $5cd3: $ff
    scf                                           ; $5cd4: $37
    ld a, [$ffdc]                                 ; $5cd5: $fa $dc $ff
    rst $38                                       ; $5cd8: $ff
    rst $38                                       ; $5cd9: $ff
    rst $38                                       ; $5cda: $ff
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    rst $38                                       ; $5cdd: $ff
    nop                                           ; $5cde: $00
    rst $38                                       ; $5cdf: $ff
    rst $38                                       ; $5ce0: $ff
    rst $38                                       ; $5ce1: $ff
    rst $38                                       ; $5ce2: $ff
    rst $38                                       ; $5ce3: $ff
    rst $38                                       ; $5ce4: $ff
    rst $38                                       ; $5ce5: $ff
    rst $38                                       ; $5ce6: $ff
    rst $38                                       ; $5ce7: $ff
    rst $38                                       ; $5ce8: $ff
    rst $38                                       ; $5ce9: $ff
    rst $38                                       ; $5cea: $ff
    rst $38                                       ; $5ceb: $ff
    rst $38                                       ; $5cec: $ff
    rst $38                                       ; $5ced: $ff
    rst $38                                       ; $5cee: $ff
    nop                                           ; $5cef: $00
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    rst $38                                       ; $5cf2: $ff
    rst $38                                       ; $5cf3: $ff
    rst $38                                       ; $5cf4: $ff
    rst $38                                       ; $5cf5: $ff
    rst $38                                       ; $5cf6: $ff
    rst $38                                       ; $5cf7: $ff
    rst $38                                       ; $5cf8: $ff
    rst $38                                       ; $5cf9: $ff
    rst $38                                       ; $5cfa: $ff
    rst $38                                       ; $5cfb: $ff
    ccf                                           ; $5cfc: $3f
    ld a, a                                       ; $5cfd: $7f
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    nop                                           ; $5d00: $00
    rst $38                                       ; $5d01: $ff
    rst $38                                       ; $5d02: $ff
    rst $38                                       ; $5d03: $ff
    rst $38                                       ; $5d04: $ff
    rst $38                                       ; $5d05: $ff
    rst $38                                       ; $5d06: $ff
    ld b, b                                       ; $5d07: $40
    inc de                                        ; $5d08: $13
    nop                                           ; $5d09: $00
    nop                                           ; $5d0a: $00
    nop                                           ; $5d0b: $00
    adc l                                         ; $5d0c: $8d
    adc b                                         ; $5d0d: $88
    rst $38                                       ; $5d0e: $ff
    rst $28                                       ; $5d0f: $ef
    adc e                                         ; $5d10: $8b
    nop                                           ; $5d11: $00
    rst $38                                       ; $5d12: $ff
    rst $38                                       ; $5d13: $ff
    rst $20                                       ; $5d14: $e7
    and $c1                                       ; $5d15: $e6 $c1
    ldh a, [$4e]                                  ; $5d17: $f0 $4e
    inc c                                         ; $5d19: $0c
    jp z, $c0ff                                   ; $5d1a: $ca $ff $c0

    ld hl, sp-$75                                 ; $5d1d: $f8 $8b
    ld c, [hl]                                    ; $5d1f: $4e
    ret nz                                        ; $5d20: $c0

    rst $38                                       ; $5d21: $ff
    add b                                         ; $5d22: $80
    ld hl, sp-$3f                                 ; $5d23: $f8 $c1
    ldh [$c0], a                                  ; $5d25: $e0 $c0
    rst $38                                       ; $5d27: $ff
    cp $e9                                        ; $5d28: $fe $e9
    add sp, $5b                                   ; $5d2a: $e8 $5b
    ld e, e                                       ; $5d2c: $5b
    ld e, h                                       ; $5d2d: $5c
    ld e, l                                       ; $5d2e: $5d
    ld b, a                                       ; $5d2f: $47
    ld d, [hl]                                    ; $5d30: $56
    ld d, [hl]                                    ; $5d31: $56
    rst $38                                       ; $5d32: $ff
    ld b, a                                       ; $5d33: $47
    ld sp, $5647                                  ; $5d34: $31 $47 $56
    ld d, a                                       ; $5d37: $57
    ld c, l                                       ; $5d38: $4d
    ld e, l                                       ; $5d39: $5d
    ld e, h                                       ; $5d3a: $5c
    di                                            ; $5d3b: $f3
    ld e, e                                       ; $5d3c: $5b
    adc h                                         ; $5d3d: $8c
    ret nz                                        ; $5d3e: $c0

    rst $38                                       ; $5d3f: $ff
    ret nz                                        ; $5d40: $c0

    db $eb                                        ; $5d41: $eb
    ld h, b                                       ; $5d42: $60
    ld sp, $363c                                  ; $5d43: $31 $3c $36
    rst $38                                       ; $5d46: $ff
    ld l, l                                       ; $5d47: $6d
    jr nc, jr_05c_5d80                            ; $5d48: $30 $36

    ld d, h                                       ; $5d4a: $54
    ld [hl], $6d                                  ; $5d4b: $36 $6d
    ld l, d                                       ; $5d4d: $6a
    ld [hl-], a                                   ; $5d4e: $32
    rst $00                                       ; $5d4f: $c7
    ld c, l                                       ; $5d50: $4d
    ld sp, $bf60                                  ; $5d51: $31 $60 $bf
    pop hl                                        ; $5d54: $e1
    jp z, $e8ff                                   ; $5d55: $ca $ff $e8

    rst $20                                       ; $5d58: $e7
    ld e, a                                       ; $5d59: $5f
    ld sp, $497f                                  ; $5d5a: $31 $7f $49
    ld b, d                                       ; $5d5d: $42
    ld l, l                                       ; $5d5e: $6d
    ld l, l                                       ; $5d5f: $6d
    jr nc, jr_05c_5d92                            ; $5d60: $30 $30

    ld l, l                                       ; $5d62: $6d
    rst $38                                       ; $5d63: $ff
    ldh [$e2], a                                  ; $5d64: $e0 $e2
    cp a                                          ; $5d66: $bf
    pop hl                                        ; $5d67: $e1
    ld e, a                                       ; $5d68: $5f
    ld a, [hl]                                    ; $5d69: $7e
    ldh [$ca], a                                  ; $5d6a: $e0 $ca
    rst $38                                       ; $5d6c: $ff
    add sp, -$19                                  ; $5d6d: $e8 $e7
    ld e, [hl]                                    ; $5d6f: $5e
    ld sp, $f539                                  ; $5d70: $31 $39 $f5
    ld l, d                                       ; $5d73: $6a
    call nz, Call_000_30e0                        ; $5d74: $c4 $e0 $30
    cp [hl]                                       ; $5d77: $be
    ld [c], a                                     ; $5d78: $e2
    ld l, d                                       ; $5d79: $6a
    ld d, c                                       ; $5d7a: $51
    ld sp, $e75e                                  ; $5d7b: $31 $5e $e7
    ld e, e                                       ; $5d7e: $5b
    ld e, e                                       ; $5d7f: $5b

jr_05c_5d80:
    adc h                                         ; $5d80: $8c
    jp z, $e8ff                                   ; $5d81: $ca $ff $e8

    rst $20                                       ; $5d84: $e7
    ld sp, $5231                                  ; $5d85: $31 $31 $52
    ld e, c                                       ; $5d88: $59
    ld h, a                                       ; $5d89: $67
    cp a                                          ; $5d8a: $bf
    pop hl                                        ; $5d8b: $e1
    ld a, l                                       ; $5d8c: $7d
    ld [c], a                                     ; $5d8d: $e2
    ld l, d                                       ; $5d8e: $6a
    ld d, b                                       ; $5d8f: $50
    ret nz                                        ; $5d90: $c0

    pop hl                                        ; $5d91: $e1

jr_05c_5d92:
    cpl                                           ; $5d92: $2f
    jp z, $b4ff                                   ; $5d93: $ca $ff $b4

    add sp, -$19                                  ; $5d96: $e8 $e7
    ld bc, $4ce0                                  ; $5d98: $01 $e0 $4c
    cp a                                          ; $5d9b: $bf
    db $e4                                        ; $5d9c: $e4
    ld l, l                                       ; $5d9d: $6d
    ld l, l                                       ; $5d9e: $6d
    ld b, b                                       ; $5d9f: $40
    ld [c], a                                     ; $5da0: $e2
    cpl                                           ; $5da1: $2f
    ld a, c                                       ; $5da2: $79
    adc d                                         ; $5da3: $8a
    jp z, $c0ff                                   ; $5da4: $ca $ff $c0

    jp z, Jump_000_323e                           ; $5da7: $ca $3e $32

    ld h, a                                       ; $5daa: $67
    ld l, d                                       ; $5dab: $6a
    inc a                                         ; $5dac: $3c
    ldh [$c5], a                                  ; $5dad: $e0 $c5
    jr nc, @-$3d                                  ; $5daf: $30 $c1

    pop hl                                        ; $5db1: $e1
    ld h, b                                       ; $5db2: $60
    pop bc                                        ; $5db3: $c1
    ldh [$c0], a                                  ; $5db4: $e0 $c0
    rst $38                                       ; $5db6: $ff
    ld b, b                                       ; $5db7: $40
    call z, $564d                                 ; $5db8: $cc $4d $56
    ld b, l                                       ; $5dbb: $45
    ld d, a                                       ; $5dbc: $57
    cp $e1                                        ; $5dbd: $fe $e1
    ld d, a                                       ; $5dbf: $57
    pop bc                                        ; $5dc0: $c1
    db $e4                                        ; $5dc1: $e4
    ret nz                                        ; $5dc2: $c0

    rst $38                                       ; $5dc3: $ff
    jp hl                                         ; $5dc4: $e9


    add sp, $09                                   ; $5dc5: $e8 $09
    rst $38                                       ; $5dc7: $ff
    db $ec                                        ; $5dc8: $ec
    ld c, a                                       ; $5dc9: $4f
    adc a                                         ; $5dca: $8f
    ld c, a                                       ; $5dcb: $4f
    ld c, a                                       ; $5dcc: $4f
    ld c, a                                       ; $5dcd: $4f
    jp z, $e8ff                                   ; $5dce: $ca $ff $e8

    rst $20                                       ; $5dd1: $e7
    adc c                                         ; $5dd2: $89
    rst $38                                       ; $5dd3: $ff
    db $ec                                        ; $5dd4: $ec
    add c                                         ; $5dd5: $81
    ld c, a                                       ; $5dd6: $4f
    cp a                                          ; $5dd7: $bf
    ldh [$ca], a                                  ; $5dd8: $e0 $ca
    rst $38                                       ; $5dda: $ff
    ret nz                                        ; $5ddb: $c0

    ld hl, sp-$41                                 ; $5ddc: $f8 $bf
    ldh [$ca], a                                  ; $5dde: $e0 $ca
    rst $38                                       ; $5de0: $ff
    ret nz                                        ; $5de1: $c0

    ld sp, hl                                     ; $5de2: $f9
    ld c, a                                       ; $5de3: $4f
    ld bc, $ca8f                                  ; $5de4: $01 $8f $ca
    rst $38                                       ; $5de7: $ff
    rst $38                                       ; $5de8: $ff
    rst $38                                       ; $5de9: $ff
    rst $38                                       ; $5dea: $ff
    rst $38                                       ; $5deb: $ff
    rst $38                                       ; $5dec: $ff
    rst $38                                       ; $5ded: $ff
    rst $38                                       ; $5dee: $ff
    rst $38                                       ; $5def: $ff
    rst $38                                       ; $5df0: $ff
    rst $38                                       ; $5df1: $ff
    rst $38                                       ; $5df2: $ff
    rst $38                                       ; $5df3: $ff
    nop                                           ; $5df4: $00
    rst $38                                       ; $5df5: $ff
    rst $38                                       ; $5df6: $ff
    rst $38                                       ; $5df7: $ff
    rst $38                                       ; $5df8: $ff
    rst $38                                       ; $5df9: $ff
    rst $38                                       ; $5dfa: $ff
    rst $38                                       ; $5dfb: $ff
    rst $38                                       ; $5dfc: $ff
    rst $38                                       ; $5dfd: $ff
    rst $38                                       ; $5dfe: $ff
    rst $38                                       ; $5dff: $ff
    rst $38                                       ; $5e00: $ff
    rst $38                                       ; $5e01: $ff
    rst $38                                       ; $5e02: $ff
    rst $38                                       ; $5e03: $ff
    rst $38                                       ; $5e04: $ff
    nop                                           ; $5e05: $00
    rst $38                                       ; $5e06: $ff
    rst $38                                       ; $5e07: $ff
    rst $38                                       ; $5e08: $ff
    rst $38                                       ; $5e09: $ff
    rst $38                                       ; $5e0a: $ff
    rst $38                                       ; $5e0b: $ff
    rst $38                                       ; $5e0c: $ff
    rst $38                                       ; $5e0d: $ff
    rst $38                                       ; $5e0e: $ff
    rst $38                                       ; $5e0f: $ff
    rst $38                                       ; $5e10: $ff
    rst $38                                       ; $5e11: $ff
    rst $38                                       ; $5e12: $ff
    rst $38                                       ; $5e13: $ff
    rst $38                                       ; $5e14: $ff
    rst $38                                       ; $5e15: $ff
    nop                                           ; $5e16: $00
    rst $38                                       ; $5e17: $ff
    rst $38                                       ; $5e18: $ff
    rst $38                                       ; $5e19: $ff
    rst $38                                       ; $5e1a: $ff
    rst $38                                       ; $5e1b: $ff
    rst $38                                       ; $5e1c: $ff
    rst $38                                       ; $5e1d: $ff
    rst $38                                       ; $5e1e: $ff
    rst $38                                       ; $5e1f: $ff
    rst $38                                       ; $5e20: $ff
    rst $38                                       ; $5e21: $ff
    rst $38                                       ; $5e22: $ff
    rst $38                                       ; $5e23: $ff
    rst $38                                       ; $5e24: $ff
    rst $38                                       ; $5e25: $ff
    rst $38                                       ; $5e26: $ff
    nop                                           ; $5e27: $00
    rst $38                                       ; $5e28: $ff
    rst $38                                       ; $5e29: $ff
    rst $38                                       ; $5e2a: $ff
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    rst $38                                       ; $5e2d: $ff
    rst $38                                       ; $5e2e: $ff
    rst $38                                       ; $5e2f: $ff
    rst $38                                       ; $5e30: $ff
    rst $38                                       ; $5e31: $ff
    rst $38                                       ; $5e32: $ff
    rst $38                                       ; $5e33: $ff
    rst $38                                       ; $5e34: $ff
    rst $38                                       ; $5e35: $ff
    rst $38                                       ; $5e36: $ff
    rst $38                                       ; $5e37: $ff
    nop                                           ; $5e38: $00
    rst $38                                       ; $5e39: $ff
    rst $38                                       ; $5e3a: $ff
    rst $38                                       ; $5e3b: $ff
    rst $38                                       ; $5e3c: $ff
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    rst $38                                       ; $5e3f: $ff
    rst $38                                       ; $5e40: $ff
    rst $38                                       ; $5e41: $ff
    rst $38                                       ; $5e42: $ff
    rst $38                                       ; $5e43: $ff
    rst $38                                       ; $5e44: $ff
    rst $38                                       ; $5e45: $ff
    rst $38                                       ; $5e46: $ff
    rst $38                                       ; $5e47: $ff
    rst $38                                       ; $5e48: $ff
    nop                                           ; $5e49: $00
    rst $38                                       ; $5e4a: $ff
    rst $38                                       ; $5e4b: $ff
    rst $38                                       ; $5e4c: $ff
    rst $38                                       ; $5e4d: $ff
    rst $38                                       ; $5e4e: $ff
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    rst $38                                       ; $5e51: $ff
    rst $38                                       ; $5e52: $ff
    rst $38                                       ; $5e53: $ff
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    rst $38                                       ; $5e56: $ff
    rst $38                                       ; $5e57: $ff
    rst $38                                       ; $5e58: $ff
    rst $38                                       ; $5e59: $ff
    nop                                           ; $5e5a: $00
    rst $38                                       ; $5e5b: $ff
    rst $38                                       ; $5e5c: $ff
    rst $38                                       ; $5e5d: $ff
    rst $38                                       ; $5e5e: $ff
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    rst $38                                       ; $5e64: $ff
    rst $38                                       ; $5e65: $ff
    rst $38                                       ; $5e66: $ff
    rst $38                                       ; $5e67: $ff
    rst $38                                       ; $5e68: $ff
    rst $38                                       ; $5e69: $ff
    rst $38                                       ; $5e6a: $ff
    nop                                           ; $5e6b: $00
    rst $38                                       ; $5e6c: $ff
    rst $38                                       ; $5e6d: $ff
    rst $38                                       ; $5e6e: $ff
    rst $38                                       ; $5e6f: $ff
    rst $38                                       ; $5e70: $ff
    rst $38                                       ; $5e71: $ff
    rst $38                                       ; $5e72: $ff
    rst $38                                       ; $5e73: $ff
    rst $38                                       ; $5e74: $ff
    rst $38                                       ; $5e75: $ff
    rst $38                                       ; $5e76: $ff
    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    rst $38                                       ; $5e7a: $ff
    rst $38                                       ; $5e7b: $ff
    nop                                           ; $5e7c: $00
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    rst $38                                       ; $5e80: $ff
    rst $38                                       ; $5e81: $ff
    rst $38                                       ; $5e82: $ff
    rst $38                                       ; $5e83: $ff
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    rst $38                                       ; $5e89: $ff
    rst $38                                       ; $5e8a: $ff
    rst $38                                       ; $5e8b: $ff
    rst $38                                       ; $5e8c: $ff
    nop                                           ; $5e8d: $00
    rst $38                                       ; $5e8e: $ff
    rst $38                                       ; $5e8f: $ff
    rst $38                                       ; $5e90: $ff
    rst $38                                       ; $5e91: $ff
    rst $38                                       ; $5e92: $ff
    rst $38                                       ; $5e93: $ff
    rst $38                                       ; $5e94: $ff
    rst $38                                       ; $5e95: $ff
    rst $38                                       ; $5e96: $ff
    rst $38                                       ; $5e97: $ff
    rst $38                                       ; $5e98: $ff
    rst $38                                       ; $5e99: $ff
    rst $38                                       ; $5e9a: $ff
    rst $38                                       ; $5e9b: $ff
    rst $38                                       ; $5e9c: $ff
    rst $38                                       ; $5e9d: $ff
    nop                                           ; $5e9e: $00
    rst $38                                       ; $5e9f: $ff
    rst $38                                       ; $5ea0: $ff
    rst $38                                       ; $5ea1: $ff
    rst $38                                       ; $5ea2: $ff
    rst $38                                       ; $5ea3: $ff
    rst $38                                       ; $5ea4: $ff
    rst $38                                       ; $5ea5: $ff
    rst $38                                       ; $5ea6: $ff
    rst $38                                       ; $5ea7: $ff
    di                                            ; $5ea8: $f3
    nop                                           ; $5ea9: $00
    nop                                           ; $5eaa: $00
    nop                                           ; $5eab: $00
    and l                                         ; $5eac: $a5
    nop                                           ; $5ead: $00
    rst $38                                       ; $5eae: $ff
    push hl                                       ; $5eaf: $e5
    ld [hl-], a                                   ; $5eb0: $32
    or $e6                                        ; $5eb1: $f6 $e6
    rst $30                                       ; $5eb3: $f7
    rst $20                                       ; $5eb4: $e7
    dec [hl]                                      ; $5eb5: $35
    db $ec                                        ; $5eb6: $ec
    xor $37                                       ; $5eb7: $ee $37
    db $ec                                        ; $5eb9: $ec
    jp c, $c7f0                                   ; $5eba: $da $f0 $c7

    add sp, $33                                   ; $5ebd: $e8 $33
    ld sp, $f2e0                                  ; $5ebf: $31 $e0 $f2
    ld [hl], $30                                  ; $5ec2: $36 $30
    scf                                           ; $5ec4: $37
    cp a                                          ; $5ec5: $bf
    ld h, $20                                     ; $5ec6: $26 $20
    daa                                           ; $5ec8: $27
    db $10                                        ; $5ec9: $10
    ld d, $17                                     ; $5eca: $16 $17
    jp nz, Jump_000_34f6                          ; $5ecc: $c2 $f6 $34

    rst $38                                       ; $5ecf: $ff
    ld [hl], $32                                  ; $5ed0: $36 $32
    jr nc, jr_05c_5f0b                            ; $5ed2: $30 $37

    ld sp, $3133                                  ; $5ed4: $31 $33 $31
    inc sp                                        ; $5ed7: $33
    nop                                           ; $5ed8: $00
    and b                                         ; $5ed9: $a0
    ei                                            ; $5eda: $fb
    rst $38                                       ; $5edb: $ff
    rst $28                                       ; $5edc: $ef
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    nop                                           ; $5edf: $00
    add sp, $5e                                   ; $5ee0: $e8 $5e
    jr @+$61                                      ; $5ee2: $18 $5f

    jr nz, jr_05c_5f47                            ; $5ee4: $20 $61

    add $62                                       ; $5ee6: $c6 $62
    ld a, [c]                                     ; $5ee8: $f2
    inc sp                                        ; $5ee9: $33
    ld c, e                                       ; $5eea: $4b
    dec de                                        ; $5eeb: $1b
    dec h                                         ; $5eec: $25
    ld [bc], a                                    ; $5eed: $02
    ldh [rNR10], a                                ; $5eee: $e0 $10
    ret z                                         ; $5ef0: $c8

    ld [bc], a                                    ; $5ef1: $02
    ld a, [c]                                     ; $5ef2: $f2
    inc sp                                        ; $5ef3: $33
    ld c, e                                       ; $5ef4: $4b
    dec de                                        ; $5ef5: $1b
    dec h                                         ; $5ef6: $25
    ld [bc], a                                    ; $5ef7: $02
    ret nz                                        ; $5ef8: $c0

    ld a, l                                       ; $5ef9: $7d
    ldh [$7f], a                                  ; $5efa: $e0 $7f
    ld l, a                                       ; $5efc: $6f
    ld de, $1b4b                                  ; $5efd: $11 $4b $1b
    ld [$0825], sp                                ; $5f00: $08 $25 $08
    dec h                                         ; $5f03: $25
    ld [$0825], sp                                ; $5f04: $08 $25 $08
    dec h                                         ; $5f07: $25
    ld [$0825], sp                                ; $5f08: $08 $25 $08

jr_05c_5f0b:
    dec h                                         ; $5f0b: $25
    ld [$0825], sp                                ; $5f0c: $08 $25 $08
    dec h                                         ; $5f0f: $25
    ld [$0825], sp                                ; $5f10: $08 $25 $08
    dec h                                         ; $5f13: $25
    ld [$0825], sp                                ; $5f14: $08 $25 $08
    dec h                                         ; $5f17: $25
    db $fd                                        ; $5f18: $fd
    inc c                                         ; $5f19: $0c
    rst $38                                       ; $5f1a: $ff
    rst $20                                       ; $5f1b: $e7
    inc l                                         ; $5f1c: $2c
    dec bc                                        ; $5f1d: $0b
    dec bc                                        ; $5f1e: $0b
    dec bc                                        ; $5f1f: $0b
    ld l, e                                       ; $5f20: $6b
    ld l, e                                       ; $5f21: $6b
    ret z                                         ; $5f22: $c8

    ei                                            ; $5f23: $fb
    ldh [$ec], a                                  ; $5f24: $e0 $ec
    and $f6                                       ; $5f26: $e6 $f6
    ldh [$2c], a                                  ; $5f28: $e0 $2c
    db $fc                                        ; $5f2a: $fc
    pop hl                                        ; $5f2b: $e1
    db $e4                                        ; $5f2c: $e4
    ldh [$2c], a                                  ; $5f2d: $e0 $2c
    ld c, h                                       ; $5f2f: $4c
    adc a                                         ; $5f30: $8f
    inc c                                         ; $5f31: $0c
    ld c, h                                       ; $5f32: $4c
    ld c, h                                       ; $5f33: $4c
    ld c, h                                       ; $5f34: $4c
    jp nc, $f5e8                                  ; $5f35: $d2 $e8 $f5

    pop af                                        ; $5f38: $f1
    pop bc                                        ; $5f39: $c1
    db $e3                                        ; $5f3a: $e3
    dec bc                                        ; $5f3b: $0b
    ldh a, [$d6]                                  ; $5f3c: $f0 $d6
    push hl                                       ; $5f3e: $e5
    or [hl]                                       ; $5f3f: $b6
    pop hl                                        ; $5f40: $e1
    ret nz                                        ; $5f41: $c0

    and $c5                                       ; $5f42: $e6 $c5
    db $fc                                        ; $5f44: $fc
    inc c                                         ; $5f45: $0c
    inc c                                         ; $5f46: $0c

jr_05c_5f47:
    ld l, h                                       ; $5f47: $6c
    ld l, h                                       ; $5f48: $6c
    nop                                           ; $5f49: $00
    pop bc                                        ; $5f4a: $c1
    db $e4                                        ; $5f4b: $e4
    add b                                         ; $5f4c: $80
    and $c0                                       ; $5f4d: $e6 $c0
    ld [c], a                                     ; $5f4f: $e2
    ld h, h                                       ; $5f50: $64
    db $e4                                        ; $5f51: $e4
    jp nz, Jump_05c_43ff                          ; $5f52: $c2 $ff $43

    db $e4                                        ; $5f55: $e4
    ld b, b                                       ; $5f56: $40
    db $e4                                        ; $5f57: $e4
    ld d, b                                       ; $5f58: $50
    pop hl                                        ; $5f59: $e1
    ld a, b                                       ; $5f5a: $78
    ld a, a                                       ; $5f5b: $7f
    add sp, $46                                   ; $5f5c: $e8 $46
    db $fd                                        ; $5f5e: $fd
    add h                                         ; $5f5f: $84
    pop hl                                        ; $5f60: $e1
    ld c, e                                       ; $5f61: $4b
    ld l, e                                       ; $5f62: $6b
    ld c, e                                       ; $5f63: $4b
    dec hl                                        ; $5f64: $2b
    ret nz                                        ; $5f65: $c0

    rst $20                                       ; $5f66: $e7
    and d                                         ; $5f67: $a2
    rst $20                                       ; $5f68: $e7
    ret nz                                        ; $5f69: $c0

    ld c, h                                       ; $5f6a: $4c
    ccf                                           ; $5f6b: $3f
    add sp, $06                                   ; $5f6c: $e8 $06
    rst $28                                       ; $5f6e: $ef
    ld l, $ea                                     ; $5f6f: $2e $ea
    ld l, h                                       ; $5f71: $6c
    pop bc                                        ; $5f72: $c1
    ldh [rWX], a                                  ; $5f73: $e0 $4b
    rra                                           ; $5f75: $1f
    ld l, e                                       ; $5f76: $6b
    ld l, e                                       ; $5f77: $6b
    dec hl                                        ; $5f78: $2b
    dec hl                                        ; $5f79: $2b
    ld c, e                                       ; $5f7a: $4b
    ret nz                                        ; $5f7b: $c0

    jp nz, $c4d6                                  ; $5f7c: $c2 $d6 $c4

    ccf                                           ; $5f7f: $3f
    and $14                                       ; $5f80: $e6 $14
    or a                                          ; $5f82: $b7
    ld a, [$e381]                                 ; $5f83: $fa $81 $e3
    ld c, e                                       ; $5f86: $4b
    ret nz                                        ; $5f87: $c0

    pop hl                                        ; $5f88: $e1
    ld l, e                                       ; $5f89: $6b
    pop bc                                        ; $5f8a: $c1
    pop hl                                        ; $5f8b: $e1
    add b                                         ; $5f8c: $80
    rst $00                                       ; $5f8d: $c7
    ld l, c                                       ; $5f8e: $69
    jp $8614                                      ; $5f8f: $c3 $14 $86


    ret nz                                        ; $5f92: $c0

    ret nz                                        ; $5f93: $c0

    rst $38                                       ; $5f94: $ff
    dec bc                                        ; $5f95: $0b
    ret nz                                        ; $5f96: $c0

    ld [c], a                                     ; $5f97: $e2
    dec hl                                        ; $5f98: $2b
    ccf                                           ; $5f99: $3f
    ld [c], a                                     ; $5f9a: $e2
    push bc                                       ; $5f9b: $c5
    add $4c                                       ; $5f9c: $c6 $4c
    jp nz, $86e8                                  ; $5f9e: $c2 $e8 $86

    pop bc                                        ; $5fa1: $c1
    or [hl]                                       ; $5fa2: $b6
    ret z                                         ; $5fa3: $c8

    dec a                                         ; $5fa4: $3d
    jp nc, $c12c                                  ; $5fa5: $d2 $2c $c1

    pop hl                                        ; $5fa8: $e1
    ld c, e                                       ; $5fa9: $4b
    dec hl                                        ; $5faa: $2b
    dec hl                                        ; $5fab: $2b
    add e                                         ; $5fac: $83
    dec hl                                        ; $5fad: $2b
    ld l, e                                       ; $5fae: $6b
    inc bc                                        ; $5faf: $03
    jp $c352                                      ; $5fb0: $c3 $52 $c3


    ld c, h                                       ; $5fb3: $4c
    call z, $a2fd                                 ; $5fb4: $cc $fd $a2
    ret nz                                        ; $5fb7: $c0

    push af                                       ; $5fb8: $f5
    dec hl                                        ; $5fb9: $2b
    ret nz                                        ; $5fba: $c0

    ret nz                                        ; $5fbb: $c0

    db $e3                                        ; $5fbc: $e3
    jp $14a2                                      ; $5fbd: $c3 $a2 $14


    push bc                                       ; $5fc0: $c5
    inc c                                         ; $5fc1: $0c
    rst $00                                       ; $5fc2: $c7
    ld [hl], a                                    ; $5fc3: $77
    and $bf                                       ; $5fc4: $e6 $bf
    or h                                          ; $5fc6: $b4
    ld c, h                                       ; $5fc7: $4c
    inc l                                         ; $5fc8: $2c
    ld l, b                                       ; $5fc9: $68
    add $c0                                       ; $5fca: $c6 $c0
    add b                                         ; $5fcc: $80
    ldh [$84], a                                  ; $5fcd: $e0 $84
    and b                                         ; $5fcf: $a0
    ld l, h                                       ; $5fd0: $6c
    ld b, h                                       ; $5fd1: $44
    pop bc                                        ; $5fd2: $c1
    ld c, e                                       ; $5fd3: $4b
    ld c, e                                       ; $5fd4: $4b
    sub e                                         ; $5fd5: $93
    and b                                         ; $5fd6: $a0
    inc [hl]                                      ; $5fd7: $34
    sub d                                         ; $5fd8: $92
    cp c                                          ; $5fd9: $b9
    or c                                          ; $5fda: $b1
    xor h                                         ; $5fdb: $ac
    ld c, h                                       ; $5fdc: $4c
    ld a, a                                       ; $5fdd: $7f
    ldh [$2b], a                                  ; $5fde: $e0 $2b
    dec bc                                        ; $5fe0: $0b
    ld b, d                                       ; $5fe1: $42
    pop bc                                        ; $5fe2: $c1
    ret nz                                        ; $5fe3: $c0

    ld [c], a                                     ; $5fe4: $e2
    ret c                                         ; $5fe5: $d8

    add [hl]                                      ; $5fe6: $86
    and d                                         ; $5fe7: $a2
    rst $00                                       ; $5fe8: $c7
    rst $38                                       ; $5fe9: $ff
    add b                                         ; $5fea: $80
    add sp, $4c                                   ; $5feb: $e8 $4c
    inc l                                         ; $5fed: $2c
    ld [bc], a                                    ; $5fee: $02
    and b                                         ; $5fef: $a0
    dec hl                                        ; $5ff0: $2b
    dec hl                                        ; $5ff1: $2b
    nop                                           ; $5ff2: $00
    ld a, d                                       ; $5ff3: $7a
    and c                                         ; $5ff4: $a1
    pop de                                        ; $5ff5: $d1
    and d                                         ; $5ff6: $a2
    ei                                            ; $5ff7: $fb
    add c                                         ; $5ff8: $81
    cp e                                          ; $5ff9: $bb
    rst $30                                       ; $5ffa: $f7
    ret nz                                        ; $5ffb: $c0

    ldh a, [$be]                                  ; $5ffc: $f0 $be
    pop hl                                        ; $5ffe: $e1
    jp nz, Jump_05c_4ce3                          ; $5fff: $c2 $e3 $4c

    or c                                          ; $6002: $b1
    nop                                           ; $6003: $00
    ld bc, $bddc                                  ; $6004: $01 $dc $bd
    push hl                                       ; $6007: $e5
    ld [hl], a                                    ; $6008: $77
    add l                                         ; $6009: $85
    ld bc, $f7ee                                  ; $600a: $01 $ee $f7
    add [hl]                                      ; $600d: $86
    cp c                                          ; $600e: $b9
    sbc a                                         ; $600f: $9f
    scf                                           ; $6010: $37
    add e                                         ; $6011: $83
    ld d, b                                       ; $6012: $50
    or c                                          ; $6013: $b1
    jr nz, @+$40                                  ; $6014: $20 $3e

    add c                                         ; $6016: $81
    ret nz                                        ; $6017: $c0

    db $f4                                        ; $6018: $f4
    ld h, c                                       ; $6019: $61
    add b                                         ; $601a: $80
    dec de                                        ; $601b: $1b
    add c                                         ; $601c: $81
    sub c                                         ; $601d: $91
    add h                                         ; $601e: $84
    inc l                                         ; $601f: $2c
    ld bc, $41ef                                  ; $6020: $01 $ef $41
    db $db                                        ; $6023: $db
    nop                                           ; $6024: $00
    rla                                           ; $6025: $17
    rst $38                                       ; $6026: $ff
    sub a                                         ; $6027: $97
    rst $00                                       ; $6028: $c7
    add $cf                                       ; $6029: $c6 $cf
    ld sp, hl                                     ; $602b: $f9
    add sp, $18                                   ; $602c: $e8 $18
    cp l                                          ; $602e: $bd
    add c                                         ; $602f: $81
    cp $c4                                        ; $6030: $fe $c4
    rst $38                                       ; $6032: $ff
    rst $20                                       ; $6033: $e7
    db $d3                                        ; $6034: $d3
    nop                                           ; $6035: $00
    adc $6f                                       ; $6036: $ce $6f
    rst $38                                       ; $6038: $ff
    rst $38                                       ; $6039: $ff
    rst $30                                       ; $603a: $f7
    ld l, h                                       ; $603b: $6c
    adc $79                                       ; $603c: $ce $79
    or a                                          ; $603e: $b7
    ld [hl], a                                    ; $603f: $77
    nop                                           ; $6040: $00
    db $eb                                        ; $6041: $eb
    ld d, a                                       ; $6042: $57
    sub l                                         ; $6043: $95
    ld [hl], a                                    ; $6044: $77
    ld [hl], a                                    ; $6045: $77
    ld hl, $f94b                                  ; $6046: $21 $4b $f9
    ld [$e92f], a                                 ; $6049: $ea $2f $e9
    cp b                                          ; $604c: $b8
    ld l, c                                       ; $604d: $69
    jr c, jr_05c_60c7                             ; $604e: $38 $77

    dec bc                                        ; $6050: $0b
    ld e, d                                       ; $6051: $5a
    ld b, l                                       ; $6052: $45
    adc $6c                                       ; $6053: $ce $6c
    inc b                                         ; $6055: $04
    rlca                                          ; $6056: $07
    ld l, e                                       ; $6057: $6b
    cp b                                          ; $6058: $b8
    ld d, a                                       ; $6059: $57
    dec bc                                        ; $605a: $0b
    sub $c3                                       ; $605b: $d6 $c3
    ld sp, hl                                     ; $605d: $f9
    db $e4                                        ; $605e: $e4
    ret                                           ; $605f: $c9


    ret                                           ; $6060: $c9


    ret nz                                        ; $6061: $c0

    db $ed                                        ; $6062: $ed
    or a                                          ; $6063: $b7
    rst $18                                       ; $6064: $df
    nop                                           ; $6065: $00
    ret nz                                        ; $6066: $c0

    db $ec                                        ; $6067: $ec
    nop                                           ; $6068: $00
    rst $38                                       ; $6069: $ff
    ld e, h                                       ; $606a: $5c
    ld b, c                                       ; $606b: $41
    push de                                       ; $606c: $d5
    ld h, e                                       ; $606d: $63
    adc $6e                                       ; $606e: $ce $6e
    ld b, [hl]                                    ; $6070: $46
    ld c, e                                       ; $6071: $4b
    scf                                           ; $6072: $37
    ld e, b                                       ; $6073: $58
    ld de, $0024                                  ; $6074: $11 $24 $00
    adc d                                         ; $6077: $8a
    ld c, l                                       ; $6078: $4d
    ret nz                                        ; $6079: $c0

    ldh a, [rLYC]                                 ; $607a: $f0 $45
    ld [hl], h                                    ; $607c: $74
    push de                                       ; $607d: $d5
    ld h, d                                       ; $607e: $62
    adc $6e                                       ; $607f: $ce $6e
    jp z, $c030                                   ; $6081: $ca $30 $c0

    ld e, c                                       ; $6084: $59
    ld a, [de]                                    ; $6085: $1a
    ld [hl-], a                                   ; $6086: $32
    nop                                           ; $6087: $00
    ld b, $46                                     ; $6088: $06 $46
    ret nz                                        ; $608a: $c0

    ld e, b                                       ; $608b: $58
    sub $44                                       ; $608c: $d6 $44
    rst $08                                       ; $608e: $cf
    ld c, a                                       ; $608f: $4f
    adc a                                         ; $6090: $8f
    ld c, c                                       ; $6091: $49
    add h                                         ; $6092: $84
    ret c                                         ; $6093: $d8

    ld bc, $cbf4                                  ; $6094: $01 $f4 $cb
    ld e, a                                       ; $6097: $5f
    ld [bc], a                                    ; $6098: $02
    ld bc, $0bea                                  ; $6099: $01 $ea $0b
    rst $08                                       ; $609c: $cf
    ld d, [hl]                                    ; $609d: $56
    scf                                           ; $609e: $37
    ld e, l                                       ; $609f: $5d
    xor a                                         ; $60a0: $af
    ld a, a                                       ; $60a1: $7f
    rst $38                                       ; $60a2: $ff
    rst $38                                       ; $60a3: $ff
    xor $7d                                       ; $60a4: $ee $7d
    scf                                           ; $60a6: $37
    ld e, a                                       ; $60a7: $5f
    nop                                           ; $60a8: $00
    ld l, d                                       ; $60a9: $6a
    cp a                                          ; $60aa: $bf
    rst $38                                       ; $60ab: $ff
    rst $38                                       ; $60ac: $ff
    add hl, hl                                    ; $60ad: $29
    ld e, [hl]                                    ; $60ae: $5e
    rst $38                                       ; $60af: $ff
    rst $38                                       ; $60b0: $ff
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    ld l, a                                       ; $60b5: $6f
    ld c, a                                       ; $60b6: $4f
    ld bc, $00fa                                  ; $60b7: $01 $fa $00
    db $e4                                        ; $60ba: $e4
    rst $18                                       ; $60bb: $df
    ld de, $0031                                  ; $60bc: $11 $31 $00
    adc $cc                                       ; $60bf: $ce $cc
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff

jr_05c_60c7:
    rst $38                                       ; $60c7: $ff
    rst $38                                       ; $60c8: $ff
    rst $38                                       ; $60c9: $ff
    nop                                           ; $60ca: $00
    rst $38                                       ; $60cb: $ff
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    rst $38                                       ; $60d2: $ff
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    rst $38                                       ; $60d7: $ff
    rst $38                                       ; $60d8: $ff
    rst $38                                       ; $60d9: $ff
    rst $38                                       ; $60da: $ff
    nop                                           ; $60db: $00
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    db $e3                                        ; $60de: $e3
    sbc a                                         ; $60df: $9f
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    rst $38                                       ; $60e9: $ff
    rst $38                                       ; $60ea: $ff
    rst $38                                       ; $60eb: $ff
    nop                                           ; $60ec: $00
    rst $38                                       ; $60ed: $ff
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    rst $38                                       ; $60f0: $ff
    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    rst $38                                       ; $60f4: $ff
    rst $38                                       ; $60f5: $ff
    rst $38                                       ; $60f6: $ff
    rst $38                                       ; $60f7: $ff
    rst $38                                       ; $60f8: $ff
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    nop                                           ; $60fd: $00
    rst $38                                       ; $60fe: $ff
    rst $38                                       ; $60ff: $ff
    rst $38                                       ; $6100: $ff
    rst $38                                       ; $6101: $ff
    rst $38                                       ; $6102: $ff
    rst $38                                       ; $6103: $ff
    rst $38                                       ; $6104: $ff
    rst $38                                       ; $6105: $ff
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff

jr_05c_6108:
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    rst $38                                       ; $610c: $ff
    rst $38                                       ; $610d: $ff
    nop                                           ; $610e: $00
    nop                                           ; $610f: $00
    cp a                                          ; $6110: $bf
    rst $38                                       ; $6111: $ff
    rst $38                                       ; $6112: $ff
    rst $38                                       ; $6113: $ff
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    rst $38                                       ; $6116: $ff
    rst $38                                       ; $6117: $ff
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    rst $38                                       ; $611a: $ff
    nop                                           ; $611b: $00
    ld b, b                                       ; $611c: $40
    nop                                           ; $611d: $00
    nop                                           ; $611e: $00
    nop                                           ; $611f: $00
    db $fd                                        ; $6120: $fd
    nop                                           ; $6121: $00
    rst $38                                       ; $6122: $ff
    rst $20                                       ; $6123: $e7
    ld e, $21                                     ; $6124: $1e $21
    ld hl, $6021                                  ; $6126: $21 $21 $60
    sbc [hl]                                      ; $6129: $9e
    rla                                           ; $612a: $17
    ld [hl], b                                    ; $612b: $70
    ld [hl], b                                    ; $612c: $70
    ld [hl], b                                    ; $612d: $70
    db $ec                                        ; $612e: $ec
    and $90                                       ; $612f: $e6 $90
    db $fc                                        ; $6131: $fc
    db $e4                                        ; $6132: $e4
    rst $38                                       ; $6133: $ff
    rst $38                                       ; $6134: $ff
    cp c                                          ; $6135: $b9
    pop hl                                        ; $6136: $e1
    sub e                                         ; $6137: $93
    ld bc, $c11f                                  ; $6138: $01 $1f $c1
    db $e3                                        ; $613b: $e3
    ret nz                                        ; $613c: $c0

    and $90                                       ; $613d: $e6 $90
    ret nz                                        ; $613f: $c0

    rst $38                                       ; $6140: $ff
    jp nz, $19e8                                  ; $6141: $c2 $e8 $19

    ld b, c                                       ; $6144: $41
    jr jr_05c_6108                                ; $6145: $18 $c1

    db $e4                                        ; $6147: $e4
    ret nz                                        ; $6148: $c0

    db $eb                                        ; $6149: $eb
    rst $38                                       ; $614a: $ff
    rst $38                                       ; $614b: $ff
    jp nz, $c1e5                                  ; $614c: $c2 $e5 $c1

    push hl                                       ; $614f: $e5
    sbc [hl]                                      ; $6150: $9e
    ld b, b                                       ; $6151: $40
    rst $20                                       ; $6152: $e7
    db $fc                                        ; $6153: $fc
    ld a, a                                       ; $6154: $7f
    rst $38                                       ; $6155: $ff
    nop                                           ; $6156: $00
    db $e4                                        ; $6157: $e4
    add hl, bc                                    ; $6158: $09
    ld hl, $2a3d                                  ; $6159: $21 $3d $2a
    ld b, h                                       ; $615c: $44
    ld b, h                                       ; $615d: $44
    bit 3, [hl]                                   ; $615e: $cb $5e
    ld l, c                                       ; $6160: $69
    pop bc                                        ; $6161: $c1
    pop hl                                        ; $6162: $e1
    ld h, b                                       ; $6163: $60
    ret nz                                        ; $6164: $c0

    rst $38                                       ; $6165: $ff
    dec b                                         ; $6166: $05
    xor $08                                       ; $6167: $ee $08
    dec a                                         ; $6169: $3d
    ld a, a                                       ; $616a: $7f
    ld [hl+], a                                   ; $616b: $22
    ld e, l                                       ; $616c: $5d
    ld e, h                                       ; $616d: $5c
    ld e, l                                       ; $616e: $5d
    ld e, l                                       ; $616f: $5d
    ld h, c                                       ; $6170: $61
    ld l, c                                       ; $6171: $69
    pop bc                                        ; $6172: $c1
    ldh [$f1], a                                  ; $6173: $e0 $f1
    ld hl, $ebc0                                  ; $6175: $21 $c0 $eb
    or a                                          ; $6178: $b7
    rst $38                                       ; $6179: $ff
    add c                                         ; $617a: $81
    pop hl                                        ; $617b: $e1
    add hl, hl                                    ; $617c: $29
    ld e, l                                       ; $617d: $5d
    ld e, d                                       ; $617e: $5a
    ld e, b                                       ; $617f: $58
    rrca                                          ; $6180: $0f
    ld e, d                                       ; $6181: $5a
    ld e, l                                       ; $6182: $5d
    ld e, l                                       ; $6183: $5d
    ld [hl], e                                    ; $6184: $73
    pop bc                                        ; $6185: $c1
    ldh [$c0], a                                  ; $6186: $e0 $c0
    rst $20                                       ; $6188: $e7
    ld [hl], a                                    ; $6189: $77
    rst $38                                       ; $618a: $ff
    ld b, c                                       ; $618b: $41
    call nz, Call_000_08ef                        ; $618c: $c4 $ef $08
    ld hl, $5a43                                  ; $618f: $21 $43 $5a
    add b                                         ; $6192: $80
    ldh [$5a], a                                  ; $6193: $e0 $5a
    ld e, e                                       ; $6195: $5b
    ld b, e                                       ; $6196: $43
    ldh [$c1], a                                  ; $6197: $e0 $c1
    ldh [$80], a                                  ; $6199: $e0 $80
    pop hl                                        ; $619b: $e1
    push bc                                       ; $619c: $c5
    call z, $ddb6                                 ; $619d: $cc $b6 $dd
    ret nz                                        ; $61a0: $c0

    ldh [$5d], a                                  ; $61a1: $e0 $5d
    jr nz, jr_05c_61c5                            ; $61a3: $20 $20

    rst $38                                       ; $61a5: $ff
    ld e, e                                       ; $61a6: $5b
    ld e, c                                       ; $61a7: $59
    ld e, e                                       ; $61a8: $5b
    ld b, e                                       ; $61a9: $43
    ld hl, $1b08                                  ; $61aa: $21 $08 $1b
    dec de                                        ; $61ad: $1b
    ld [hl], h                                    ; $61ae: $74
    db $10                                        ; $61af: $10
    rst $38                                       ; $61b0: $ff
    ld b, b                                       ; $61b1: $40
    ldh a, [rNR41]                                ; $61b2: $f0 $20
    ret nz                                        ; $61b4: $c0

    ld [c], a                                     ; $61b5: $e2
    add hl, hl                                    ; $61b6: $29

jr_05c_61b7:
    ld hl, $d209                                  ; $61b7: $21 $09 $d2
    rst $38                                       ; $61ba: $ff
    inc a                                         ; $61bb: $3c
    ret nz                                        ; $61bc: $c0

    db $d3                                        ; $61bd: $d3
    add b                                         ; $61be: $80
    pop hl                                        ; $61bf: $e1
    ld [hl+], a                                   ; $61c0: $22
    dec a                                         ; $61c1: $3d
    ld [$5001], sp                                ; $61c2: $08 $01 $50

jr_05c_61c5:
    rst $38                                       ; $61c5: $ff
    ld b, b                                       ; $61c6: $40
    sub $e3                                       ; $61c7: $d6 $e3
    ld a, [hl+]                                   ; $61c9: $2a
    dec a                                         ; $61ca: $3d
    add c                                         ; $61cb: $81
    db $e4                                        ; $61cc: $e4
    ret nz                                        ; $61cd: $c0

    rst $38                                       ; $61ce: $ff
    ret nz                                        ; $61cf: $c0

    or c                                          ; $61d0: $b1
    ld hl, $1821                                  ; $61d1: $21 $21 $18
    ld bc, $8119                                  ; $61d4: $01 $19 $81
    ld [c], a                                     ; $61d7: $e2
    adc a                                         ; $61d8: $8f
    jp $ffbb                                      ; $61d9: $c3 $bb $ff


    ld b, b                                       ; $61dc: $40
    xor h                                         ; $61dd: $ac
    jp nz, Jump_05c_40e6                          ; $61de: $c2 $e6 $40

    rst $08                                       ; $61e1: $cf
    cp b                                          ; $61e2: $b8
    cp a                                          ; $61e3: $bf
    nop                                           ; $61e4: $00
    ld d, c                                       ; $61e5: $51
    jp c, $ffc4                                   ; $61e6: $da $c4 $ff

    ld de, $ffdf                                  ; $61e9: $11 $df $ff
    rst $38                                       ; $61ec: $ff
    sub b                                         ; $61ed: $90
    xor e                                         ; $61ee: $ab
    cp e                                          ; $61ef: $bb
    rst $38                                       ; $61f0: $ff
    rla                                           ; $61f1: $17
    rst $38                                       ; $61f2: $ff
    rst $38                                       ; $61f3: $ff
    rst $38                                       ; $61f4: $ff
    nop                                           ; $61f5: $00
    jr jr_05c_61b7                                ; $61f6: $18 $bf

    rst $38                                       ; $61f8: $ff
    rst $38                                       ; $61f9: $ff
    rlca                                          ; $61fa: $07
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    rst $38                                       ; $61fd: $ff
    ld a, a                                       ; $61fe: $7f
    rst $38                                       ; $61ff: $ff
    rst $38                                       ; $6200: $ff
    rst $38                                       ; $6201: $ff
    ret nz                                        ; $6202: $c0

    rst $30                                       ; $6203: $f7
    xor c                                         ; $6204: $a9
    rst $38                                       ; $6205: $ff
    ld b, b                                       ; $6206: $40
    ccf                                           ; $6207: $3f
    ei                                            ; $6208: $fb
    ret nz                                        ; $6209: $c0

    rst $30                                       ; $620a: $f7
    xor e                                         ; $620b: $ab
    db $e4                                        ; $620c: $e4
    and h                                         ; $620d: $a4
    ldh a, [$f4]                                  ; $620e: $f0 $f4
    ret                                           ; $6210: $c9


    add c                                         ; $6211: $81
    rst $30                                       ; $6212: $f7
    sub b                                         ; $6213: $90
    ld h, h                                       ; $6214: $64
    push hl                                       ; $6215: $e5
    nop                                           ; $6216: $00
    push bc                                       ; $6217: $c5
    rst $08                                       ; $6218: $cf
    ret nz                                        ; $6219: $c0

    rst $38                                       ; $621a: $ff
    add b                                         ; $621b: $80
    ld a, [$edc0]                                 ; $621c: $fa $c0 $ed
    rst $38                                       ; $621f: $ff
    rst $38                                       ; $6220: $ff
    xor c                                         ; $6221: $a9
    rst $18                                       ; $6222: $df
    adc $d7                                       ; $6223: $ce $d7
    ld b, $cd                                     ; $6225: $06 $cd
    nop                                           ; $6227: $00
    adc a                                         ; $6228: $8f
    set 0, b                                      ; $6229: $cb $c0
    rst $38                                       ; $622b: $ff
    ret nz                                        ; $622c: $c0

    rst $38                                       ; $622d: $ff
    call nc, $cd9a                                ; $622e: $d4 $9a $cd
    adc [hl]                                      ; $6231: $8e
    ld c, $ff                                     ; $6232: $0e $ff
    rst $38                                       ; $6234: $ff
    rst $38                                       ; $6235: $ff
    ld l, $bf                                     ; $6236: $2e $bf
    nop                                           ; $6238: $00
    ld b, c                                       ; $6239: $41
    or $ff                                        ; $623a: $f6 $ff
    rst $38                                       ; $623c: $ff
    ret nz                                        ; $623d: $c0

    rst $38                                       ; $623e: $ff
    rst $38                                       ; $623f: $ff
    rst $38                                       ; $6240: $ff
    push de                                       ; $6241: $d5
    ld l, b                                       ; $6242: $68
    adc $75                                       ; $6243: $ce $75
    xor b                                         ; $6245: $a8
    rst $38                                       ; $6246: $ff
    xor a                                         ; $6247: $af
    ld a, a                                       ; $6248: $7f
    nop                                           ; $6249: $00
    rst $38                                       ; $624a: $ff
    rst $38                                       ; $624b: $ff
    ld [hl], $7f                                  ; $624c: $36 $7f
    rst $38                                       ; $624e: $ff
    rst $38                                       ; $624f: $ff
    rst $38                                       ; $6250: $ff
    rst $38                                       ; $6251: $ff
    rst $38                                       ; $6252: $ff
    rst $38                                       ; $6253: $ff
    rst $38                                       ; $6254: $ff
    rst $38                                       ; $6255: $ff
    rst $38                                       ; $6256: $ff
    rst $38                                       ; $6257: $ff
    rst $38                                       ; $6258: $ff
    rst $38                                       ; $6259: $ff
    nop                                           ; $625a: $00
    rst $38                                       ; $625b: $ff
    rst $38                                       ; $625c: $ff
    ld b, [hl]                                    ; $625d: $46
    adc d                                         ; $625e: $8a
    ld bc, $e4fa                                  ; $625f: $01 $fa $e4
    rst $18                                       ; $6262: $df
    sbc a                                         ; $6263: $9f
    rst $18                                       ; $6264: $df
    cp e                                          ; $6265: $bb
    rst $38                                       ; $6266: $ff
    rst $38                                       ; $6267: $ff
    rst $38                                       ; $6268: $ff
    rst $38                                       ; $6269: $ff
    rst $38                                       ; $626a: $ff
    nop                                           ; $626b: $00
    rst $38                                       ; $626c: $ff
    rst $38                                       ; $626d: $ff
    rst $38                                       ; $626e: $ff
    rst $38                                       ; $626f: $ff
    rst $38                                       ; $6270: $ff
    rst $38                                       ; $6271: $ff
    rst $38                                       ; $6272: $ff
    rst $38                                       ; $6273: $ff
    rst $38                                       ; $6274: $ff
    rst $38                                       ; $6275: $ff
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    rst $38                                       ; $6278: $ff
    rst $38                                       ; $6279: $ff
    rst $38                                       ; $627a: $ff
    rst $38                                       ; $627b: $ff
    nop                                           ; $627c: $00
    rst $38                                       ; $627d: $ff
    rst $38                                       ; $627e: $ff
    rst $38                                       ; $627f: $ff
    rst $38                                       ; $6280: $ff
    rst $38                                       ; $6281: $ff
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    rst $38                                       ; $6284: $ff
    rst $38                                       ; $6285: $ff
    rst $38                                       ; $6286: $ff
    rst $38                                       ; $6287: $ff
    rst $38                                       ; $6288: $ff
    rst $38                                       ; $6289: $ff
    rst $38                                       ; $628a: $ff
    rst $38                                       ; $628b: $ff
    rst $38                                       ; $628c: $ff
    nop                                           ; $628d: $00
    rst $38                                       ; $628e: $ff
    rst $38                                       ; $628f: $ff
    rst $38                                       ; $6290: $ff
    rst $38                                       ; $6291: $ff
    rst $38                                       ; $6292: $ff
    rst $38                                       ; $6293: $ff
    rst $38                                       ; $6294: $ff
    rst $38                                       ; $6295: $ff
    rst $38                                       ; $6296: $ff
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    rst $38                                       ; $629a: $ff
    rst $38                                       ; $629b: $ff
    rst $38                                       ; $629c: $ff
    rst $38                                       ; $629d: $ff
    nop                                           ; $629e: $00
    rst $38                                       ; $629f: $ff
    rst $38                                       ; $62a0: $ff
    rst $38                                       ; $62a1: $ff
    rst $38                                       ; $62a2: $ff
    rst $38                                       ; $62a3: $ff
    rst $38                                       ; $62a4: $ff
    rst $38                                       ; $62a5: $ff
    rst $38                                       ; $62a6: $ff
    rst $38                                       ; $62a7: $ff
    rst $38                                       ; $62a8: $ff
    rst $38                                       ; $62a9: $ff
    rst $38                                       ; $62aa: $ff
    rst $38                                       ; $62ab: $ff
    rst $38                                       ; $62ac: $ff
    rst $38                                       ; $62ad: $ff
    rst $38                                       ; $62ae: $ff
    nop                                           ; $62af: $00
    rst $38                                       ; $62b0: $ff
    rst $38                                       ; $62b1: $ff
    rst $38                                       ; $62b2: $ff
    rst $38                                       ; $62b3: $ff
    rst $38                                       ; $62b4: $ff
    rst $38                                       ; $62b5: $ff
    rst $38                                       ; $62b6: $ff
    rst $38                                       ; $62b7: $ff
    rst $38                                       ; $62b8: $ff
    rst $38                                       ; $62b9: $ff
    rst $38                                       ; $62ba: $ff
    rst $38                                       ; $62bb: $ff
    rst $38                                       ; $62bc: $ff
    rst $38                                       ; $62bd: $ff
    rst $38                                       ; $62be: $ff
    rst $38                                       ; $62bf: $ff
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    ld b, e                                       ; $62c2: $43
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    nop                                           ; $62c5: $00
    call $ff00                                    ; $62c6: $cd $00 $ff
    jp hl                                         ; $62c9: $e9


    scf                                           ; $62ca: $37
    ld [hl-], a                                   ; $62cb: $32
    pop af                                        ; $62cc: $f1
    ld [$ffff], a                                 ; $62cd: $ea $ff $ff
    inc sp                                        ; $62d0: $33
    ld sp, $dcfe                                  ; $62d1: $31 $fe $dc
    ld a, [c]                                     ; $62d4: $f2
    ld [hl], $30                                  ; $62d5: $36 $30
    scf                                           ; $62d7: $37
    ld h, $20                                     ; $62d8: $26 $20
    daa                                           ; $62da: $27
    db $10                                        ; $62db: $10
    ei                                            ; $62dc: $fb
    ld d, $17                                     ; $62dd: $16 $17
    cp [hl]                                       ; $62df: $be
    or $34                                        ; $62e0: $f6 $34
    ld [hl], $32                                  ; $62e2: $36 $32
    jr nc, jr_05c_631d                            ; $62e4: $30 $37

    rrca                                          ; $62e6: $0f
    ld sp, $3133                                  ; $62e7: $31 $33 $31
    inc sp                                        ; $62ea: $33
    sbc h                                         ; $62eb: $9c
    rst $38                                       ; $62ec: $ff
    rst $38                                       ; $62ed: $ff
    ei                                            ; $62ee: $fb
    nop                                           ; $62ef: $00
    nop                                           ; $62f0: $00
    nop                                           ; $62f1: $00
    ld a, [$2a62]                                 ; $62f2: $fa $62 $2a
    ld h, e                                       ; $62f5: $63
    dec h                                         ; $62f6: $25
    ld h, [hl]                                    ; $62f7: $66
    xor $67                                       ; $62f8: $ee $67
    ld a, [c]                                     ; $62fa: $f2
    inc sp                                        ; $62fb: $33
    ld c, e                                       ; $62fc: $4b
    dec de                                        ; $62fd: $1b
    dec h                                         ; $62fe: $25
    ld [bc], a                                    ; $62ff: $02
    ldh [rNR10], a                                ; $6300: $e0 $10
    ret z                                         ; $6302: $c8

    ld [bc], a                                    ; $6303: $02
    ld a, [c]                                     ; $6304: $f2
    inc sp                                        ; $6305: $33
    ld c, e                                       ; $6306: $4b
    dec de                                        ; $6307: $1b
    dec h                                         ; $6308: $25
    ld [bc], a                                    ; $6309: $02
    sbc a                                         ; $630a: $9f
    ld [bc], a                                    ; $630b: $02
    or $01                                        ; $630c: $f6 $01
    ld d, e                                       ; $630e: $53
    ld bc, $1b4b                                  ; $630f: $01 $4b $1b
    ld [$0825], sp                                ; $6312: $08 $25 $08
    dec h                                         ; $6315: $25
    ld [$0825], sp                                ; $6316: $08 $25 $08
    dec h                                         ; $6319: $25
    ld [$0825], sp                                ; $631a: $08 $25 $08

jr_05c_631d:
    dec h                                         ; $631d: $25
    ld [$0825], sp                                ; $631e: $08 $25 $08
    dec h                                         ; $6321: $25
    ld [$0825], sp                                ; $6322: $08 $25 $08
    dec h                                         ; $6325: $25
    ld [$0825], sp                                ; $6326: $08 $25 $08
    dec h                                         ; $6329: $25
    db $fd                                        ; $632a: $fd
    inc c                                         ; $632b: $0c
    rst $38                                       ; $632c: $ff
    ldh [$2b], a                                  ; $632d: $e0 $2b
    ld l, e                                       ; $632f: $6b
    ld l, e                                       ; $6330: $6b
    ld c, e                                       ; $6331: $4b
    ld c, e                                       ; $6332: $4b
    dec hl                                        ; $6333: $2b
    rst $10                                       ; $6334: $d7
    dec bc                                        ; $6335: $0b
    dec hl                                        ; $6336: $2b
    dec bc                                        ; $6337: $0b
    rst $38                                       ; $6338: $ff
    ldh [$0a], a                                  ; $6339: $e0 $0a
    ei                                            ; $633b: $fb
    ldh [$0c], a                                  ; $633c: $e0 $0c
    ld c, h                                       ; $633e: $4c
    add c                                         ; $633f: $81
    ld c, h                                       ; $6340: $4c
    db $fd                                        ; $6341: $fd
    ldh [$fe], a                                  ; $6342: $e0 $fe
    ldh [$fa], a                                  ; $6344: $e0 $fa
    ld [c], a                                     ; $6346: $e2
    sbc $e1                                       ; $6347: $de $e1
    db $fc                                        ; $6349: $fc
    ei                                            ; $634a: $fb
    pop bc                                        ; $634b: $c1
    ldh [$0b], a                                  ; $634c: $e0 $0b
    rrca                                          ; $634e: $0f
    dec hl                                        ; $634f: $2b
    ld c, e                                       ; $6350: $4b
    dec hl                                        ; $6351: $2b
    dec hl                                        ; $6352: $2b
    cp a                                          ; $6353: $bf
    ld [c], a                                     ; $6354: $e2
    ret nz                                        ; $6355: $c0

    jp hl                                         ; $6356: $e9


    cp c                                          ; $6357: $b9
    ldh [$a0], a                                  ; $6358: $e0 $a0
    ldh [$c6], a                                  ; $635a: $e0 $c6
    or l                                          ; $635c: $b5
    cp $2b                                        ; $635d: $fe $2b
    dec bc                                        ; $635f: $0b
    ret nz                                        ; $6360: $c0

    ldh [$bf], a                                  ; $6361: $e0 $bf
    ldh [$7e], a                                  ; $6363: $e0 $7e
    ld [c], a                                     ; $6365: $e2
    dec hl                                        ; $6366: $2b
    dec bc                                        ; $6367: $0b
    dec b                                         ; $6368: $05
    ld a, [bc]                                    ; $6369: $0a
    call z, Call_000_2ce1                         ; $636a: $cc $e1 $2c
    add h                                         ; $636d: $84
    db $e3                                        ; $636e: $e3
    add d                                         ; $636f: $82
    ldh [$bd], a                                  ; $6370: $e0 $bd
    db $e4                                        ; $6372: $e4
    or l                                          ; $6373: $b5
    db $e4                                        ; $6374: $e4
    ld [hl], d                                    ; $6375: $72
    db $ed                                        ; $6376: $ed
    ret c                                         ; $6377: $d8

    ld h, c                                       ; $6378: $61
    pop hl                                        ; $6379: $e1
    ld b, a                                       ; $637a: $47
    ldh [$83], a                                  ; $637b: $e0 $83
    ldh [$2b], a                                  ; $637d: $e0 $2b
    ld c, e                                       ; $637f: $4b
    add c                                         ; $6380: $81
    db $e3                                        ; $6381: $e3
    dec hl                                        ; $6382: $2b
    dec bc                                        ; $6383: $0b
    add d                                         ; $6384: $82
    call z, Call_000_2ce1                         ; $6385: $cc $e1 $2c
    ld b, [hl]                                    ; $6388: $46
    ld [c], a                                     ; $6389: $e2
    ld b, b                                       ; $638a: $40
    db $e4                                        ; $638b: $e4
    push af                                       ; $638c: $f5
    db $e3                                        ; $638d: $e3
    or l                                          ; $638e: $b5
    db $e3                                        ; $638f: $e3
    ld sp, $6cec                                  ; $6390: $31 $ec $6c
    ld a, b                                       ; $6393: $78
    add b                                         ; $6394: $80
    ld [c], a                                     ; $6395: $e2
    ld b, h                                       ; $6396: $44
    pop hl                                        ; $6397: $e1
    cp $c0                                        ; $6398: $fe $c0
    dec bc                                        ; $639a: $0b
    dec bc                                        ; $639b: $0b
    ld l, h                                       ; $639c: $6c
    ld c, h                                       ; $639d: $4c
    ld a, [hl]                                    ; $639e: $7e
    ldh [$38], a                                  ; $639f: $e0 $38
    adc l                                         ; $63a1: $8d
    and $cf                                       ; $63a2: $e6 $cf
    db $e4                                        ; $63a4: $e4
    or l                                          ; $63a5: $b5
    ld [$0c0c], a                                 ; $63a6: $ea $0c $0c
    inc l                                         ; $63a9: $2c
    xor $c3                                       ; $63aa: $ee $c3
    ld sp, hl                                     ; $63ac: $f9
    db $e4                                        ; $63ad: $e4
    db $10                                        ; $63ae: $10
    cp a                                          ; $63af: $bf
    ldh [$83], a                                  ; $63b0: $e0 $83
    pop hl                                        ; $63b2: $e1
    dec a                                         ; $63b3: $3d
    pop hl                                        ; $63b4: $e1
    push bc                                       ; $63b5: $c5
    pop bc                                        ; $63b6: $c1
    inc c                                         ; $63b7: $0c
    cp a                                          ; $63b8: $bf
    ldh [$5d], a                                  ; $63b9: $e0 $5d
    rst $28                                       ; $63bb: $ef
    cp e                                          ; $63bc: $bb
    add $0e                                       ; $63bd: $c6 $0e
    or d                                          ; $63bf: $b2
    adc $6c                                       ; $63c0: $ce $6c
    ld l, h                                       ; $63c2: $6c
    inc c                                         ; $63c3: $0c
    add a                                         ; $63c4: $87
    ret nz                                        ; $63c5: $c0

    push bc                                       ; $63c6: $c5
    jp nz, $c080                                  ; $63c7: $c2 $80 $c0

    ld [hl], d                                    ; $63ca: $72
    ldh [$03], a                                  ; $63cb: $e0 $03
    ld c, h                                       ; $63cd: $4c
    ld c, h                                       ; $63ce: $4c
    add b                                         ; $63cf: $80
    pop bc                                        ; $63d0: $c1
    ld a, a                                       ; $63d1: $7f
    res 0, a                                      ; $63d2: $cb $87
    db $e4                                        ; $63d4: $e4
    ccf                                           ; $63d5: $3f
    pop af                                        ; $63d6: $f1
    ld d, l                                       ; $63d7: $55
    ret nz                                        ; $63d8: $c0

    call nz, Call_000_07c0                        ; $63d9: $c4 $c0 $07
    ld l, e                                       ; $63dc: $6b
    ld l, e                                       ; $63dd: $6b
    ld l, e                                       ; $63de: $6b
    ret nz                                        ; $63df: $c0

    ld [c], a                                     ; $63e0: $e2
    ld c, b                                       ; $63e1: $48
    push hl                                       ; $63e2: $e5
    rst $10                                       ; $63e3: $d7
    jp $c33e                                      ; $63e4: $c3 $3e $c3


    ld [hl-], a                                   ; $63e7: $32
    call nz, $b500                                ; $63e8: $c4 $00 $b5
    add sp, $2e                                   ; $63eb: $e8 $2e
    ret                                           ; $63ed: $c9


    call $bfc4                                    ; $63ee: $cd $c4 $bf
    pop hl                                        ; $63f1: $e1
    ret nz                                        ; $63f2: $c0

    push hl                                       ; $63f3: $e5
    dec c                                         ; $63f4: $0d
    db $e4                                        ; $63f5: $e4
    ld a, $c4                                     ; $63f6: $3e $c4
    pop bc                                        ; $63f8: $c1
    and $cc                                       ; $63f9: $e6 $cc
    or l                                          ; $63fb: $b5
    db $e4                                        ; $63fc: $e4
    pop af                                        ; $63fd: $f1
    xor h                                         ; $63fe: $ac
    ld c, e                                       ; $63ff: $4b

Call_05c_6400:
    ld c, e                                       ; $6400: $4b
    adc c                                         ; $6401: $89
    ret nz                                        ; $6402: $c0

    ld b, $c0                                     ; $6403: $06 $c0
    ld l, e                                       ; $6405: $6b
    dec hl                                        ; $6406: $2b
    dec b                                         ; $6407: $05
    ld l, e                                       ; $6408: $6b
    add b                                         ; $6409: $80
    db $e4                                        ; $640a: $e4
    inc c                                         ; $640b: $0c
    add b                                         ; $640c: $80
    pop bc                                        ; $640d: $c1
    ld b, $c4                                     ; $640e: $06 $c4
    ld e, h                                       ; $6410: $5c
    push hl                                       ; $6411: $e5
    or l                                          ; $6412: $b5
    rst $20                                       ; $6413: $e7
    or d                                          ; $6414: $b2
    xor l                                         ; $6415: $ad
    nop                                           ; $6416: $00
    ld [$7ee3], sp                                ; $6417: $08 $e3 $7e
    jp nz, $e340                                  ; $641a: $c2 $40 $e3

    ld l, [hl]                                    ; $641d: $6e
    ldh [$0a], a                                  ; $641e: $e0 $0a
    jp nz, $e709                                  ; $6420: $c2 $09 $e7

    ld b, $e9                                     ; $6423: $06 $e9
    ld h, [hl]                                    ; $6425: $66
    and b                                         ; $6426: $a0
    ret z                                         ; $6427: $c8

    add c                                         ; $6428: $81
    jp nz, $c47c                                  ; $6429: $c2 $7c $c4

    ld b, b                                       ; $642c: $40
    ldh [$0a], a                                  ; $642d: $e0 $0a
    ret nz                                        ; $642f: $c0

    ld [c], a                                     ; $6430: $e2
    rst $38                                       ; $6431: $ff
    ld [c], a                                     ; $6432: $e2
    dec bc                                        ; $6433: $0b
    dec bc                                        ; $6434: $0b
    ld b, $f2                                     ; $6435: $06 $f2
    pop bc                                        ; $6437: $c1
    dec bc                                        ; $6438: $0b
    ld l, e                                       ; $6439: $6b
    ccf                                           ; $643a: $3f
    push hl                                       ; $643b: $e5
    inc sp                                        ; $643c: $33
    and $b5                                       ; $643d: $e6 $b5
    db $eb                                        ; $643f: $eb
    nop                                           ; $6440: $00
    xor $c7                                       ; $6441: $ee $c7
    and c                                         ; $6443: $a1
    ld b, $43                                     ; $6444: $06 $43
    and [hl]                                      ; $6446: $a6
    dec bc                                        ; $6447: $0b
    ld l, e                                       ; $6448: $6b
    ret nz                                        ; $6449: $c0

    and c                                         ; $644a: $a1
    add c                                         ; $644b: $81
    and l                                         ; $644c: $a5
    cp [hl]                                       ; $644d: $be
    add $e8                                       ; $644e: $c6 $e8
    add $c0                                       ; $6450: $c6 $c0
    pop de                                        ; $6452: $d1
    inc e                                         ; $6453: $1c
    add [hl]                                      ; $6454: $86
    and h                                         ; $6455: $a4
    or [hl]                                       ; $6456: $b6
    ldh [rWX], a                                  ; $6457: $e0 $4b
    ld c, e                                       ; $6459: $4b
    ld l, e                                       ; $645a: $6b
    ld b, b                                       ; $645b: $40
    and b                                         ; $645c: $a0
    add c                                         ; $645d: $81
    and a                                         ; $645e: $a7
    add h                                         ; $645f: $84
    and l                                         ; $6460: $a5
    add b                                         ; $6461: $80
    or l                                          ; $6462: $b5
    and $c4                                       ; $6463: $e6 $c4
    and h                                         ; $6465: $a4
    rst $38                                       ; $6466: $ff
    ldh [$80], a                                  ; $6467: $e0 $80
    add $8d                                       ; $6469: $c6 $8d
    add b                                         ; $646b: $80
    cp d                                          ; $646c: $ba
    ret nz                                        ; $646d: $c0

    db $fd                                        ; $646e: $fd
    pop hl                                        ; $646f: $e1
    ld l, e                                       ; $6470: $6b
    nop                                           ; $6471: $00
    cp l                                          ; $6472: $bd
    add e                                         ; $6473: $83
    nop                                           ; $6474: $00
    db $e3                                        ; $6475: $e3
    ret nz                                        ; $6476: $c0

    jp hl                                         ; $6477: $e9


    dec a                                         ; $6478: $3d
    xor c                                         ; $6479: $a9
    ld l, [hl]                                    ; $647a: $6e
    add c                                         ; $647b: $81
    ret nz                                        ; $647c: $c0

    rst $20                                       ; $647d: $e7
    ld d, b                                       ; $647e: $50
    add c                                         ; $647f: $81
    db $fd                                        ; $6480: $fd
    add sp, $00                                   ; $6481: $e8 $00
    pop af                                        ; $6483: $f1
    ld [c], a                                     ; $6484: $e2
    ld c, [hl]                                    ; $6485: $4e
    add a                                         ; $6486: $87
    sbc b                                         ; $6487: $98
    db $e4                                        ; $6488: $e4
    ld [hl], l                                    ; $6489: $75
    add sp, $6e                                   ; $648a: $e8 $6e
    add d                                         ; $648c: $82
    add c                                         ; $648d: $81
    rst $20                                       ; $648e: $e7
    xor [hl]                                      ; $648f: $ae
    add [hl]                                      ; $6490: $86
    inc de                                        ; $6491: $13
    add l                                         ; $6492: $85
    ld b, b                                       ; $6493: $40
    add hl, bc                                    ; $6494: $09
    add h                                         ; $6495: $84
    ld c, e                                       ; $6496: $4b
    adc a                                         ; $6497: $8f
    call z, $c0e8                                 ; $6498: $cc $e8 $c0
    db $ec                                        ; $649b: $ec
    push de                                       ; $649c: $d5
    ld h, b                                       ; $649d: $60
    ld d, d                                       ; $649e: $52
    add l                                         ; $649f: $85
    inc l                                         ; $64a0: $2c
    ld c, b                                       ; $64a1: $48
    adc b                                         ; $64a2: $88
    nop                                           ; $64a3: $00
    ld c, e                                       ; $64a4: $4b
    sub [hl]                                      ; $64a5: $96
    xor [hl]                                      ; $64a6: $ae
    ld l, d                                       ; $64a7: $6a
    ld e, l                                       ; $64a8: $5d
    and e                                         ; $64a9: $a3
    ld d, d                                       ; $64aa: $52
    add h                                         ; $64ab: $84
    and l                                         ; $64ac: $a5
    add b                                         ; $64ad: $80
    or $e5                                        ; $64ae: $f6 $e5
    rst $38                                       ; $64b0: $ff
    ret z                                         ; $64b1: $c8

    call z, Call_000_00cc                         ; $64b2: $cc $cc $00
    ld bc, $3ee5                                  ; $64b5: $01 $e5 $3e
    rst $20                                       ; $64b8: $e7
    pop de                                        ; $64b9: $d1
    add $53                                       ; $64ba: $c6 $53
    add a                                         ; $64bc: $87
    rst $00                                       ; $64bd: $c7
    ld h, h                                       ; $64be: $64
    ld b, b                                       ; $64bf: $40
    ld [hl], b                                    ; $64c0: $70
    xor [hl]                                      ; $64c1: $ae
    ld h, c                                       ; $64c2: $61
    ret nz                                        ; $64c3: $c0

    jp hl                                         ; $64c4: $e9


    nop                                           ; $64c5: $00
    ld e, e                                       ; $64c6: $5b
    ld h, h                                       ; $64c7: $64
    xor c                                         ; $64c8: $a9
    ld [hl], b                                    ; $64c9: $70
    ld c, e                                       ; $64ca: $4b
    adc b                                         ; $64cb: $88
    db $fc                                        ; $64cc: $fc
    adc l                                         ; $64cd: $8d
    ld b, b                                       ; $64ce: $40
    rst $00                                       ; $64cf: $c7
    ld l, c                                       ; $64d0: $69
    add h                                         ; $64d1: $84
    ld [de], a                                    ; $64d2: $12
    ld h, l                                       ; $64d3: $65
    rst $00                                       ; $64d4: $c7
    ld b, l                                       ; $64d5: $45
    nop                                           ; $64d6: $00
    cp l                                          ; $64d7: $bd
    jp hl                                         ; $64d8: $e9


    ld a, b                                       ; $64d9: $78
    ld h, h                                       ; $64da: $64
    db $fc                                        ; $64db: $fc
    adc c                                         ; $64dc: $89
    or e                                          ; $64dd: $b3
    ret                                           ; $64de: $c9


    ld d, d                                       ; $64df: $52
    adc b                                         ; $64e0: $88
    ld d, c                                       ; $64e1: $51
    ld h, [hl]                                    ; $64e2: $66
    rla                                           ; $64e3: $17
    call nz, $8600                                ; $64e4: $c4 $00 $86
    nop                                           ; $64e7: $00
    or c                                          ; $64e8: $b1
    adc h                                         ; $64e9: $8c
    ret nz                                        ; $64ea: $c0

    call z, $a753                                 ; $64eb: $cc $53 $a7
    di                                            ; $64ee: $f3
    add sp, $7b                                   ; $64ef: $e8 $7b
    add h                                         ; $64f1: $84
    ld b, d                                       ; $64f2: $42
    xor b                                         ; $64f3: $a8
    or c                                          ; $64f4: $b1
    adc b                                         ; $64f5: $88
    inc sp                                        ; $64f6: $33
    ret                                           ; $64f7: $c9


    nop                                           ; $64f8: $00
    call nc, Call_000_2249                        ; $64f9: $d4 $49 $22
    ld h, c                                       ; $64fc: $61
    add d                                         ; $64fd: $82
    rst $20                                       ; $64fe: $e7

Jump_05c_64ff:
    ld c, e                                       ; $64ff: $4b
    adc b                                         ; $6500: $88
    or c                                          ; $6501: $b1
    adc h                                         ; $6502: $8c
    ret nz                                        ; $6503: $c0

    db $eb                                        ; $6504: $eb
    call nc, Call_05c_4246                        ; $6505: $d4 $46 $42
    add sp, $00                                   ; $6508: $e8 $00
    sub h                                         ; $650a: $94
    and [hl]                                      ; $650b: $a6
    rst $38                                       ; $650c: $ff
    ld [hl+], a                                   ; $650d: $22
    or c                                          ; $650e: $b1
    adc h                                         ; $650f: $8c
    ld b, c                                       ; $6510: $41
    add a                                         ; $6511: $87
    db $ec                                        ; $6512: $ec
    ld [hl], d                                    ; $6513: $72
    adc d                                         ; $6514: $8a
    add $c3                                       ; $6515: $c6 $c3
    ld b, [hl]                                    ; $6517: $46
    or c                                          ; $6518: $b1
    adc e                                         ; $6519: $8b
    nop                                           ; $651a: $00
    ld bc, $df88                                  ; $651b: $01 $88 $df
    inc hl                                        ; $651e: $23
    ld d, e                                       ; $651f: $53
    dec h                                         ; $6520: $25
    rst $00                                       ; $6521: $c7
    ld c, b                                       ; $6522: $48
    db $fd                                        ; $6523: $fd
    and h                                         ; $6524: $a4
    ld a, a                                       ; $6525: $7f
    ret z                                         ; $6526: $c8

    ld sp, hl                                     ; $6527: $f9
    ld [hl], $82                                  ; $6528: $36 $82
    ret z                                         ; $652a: $c8

    nop                                           ; $652b: $00
    jp nz, Jump_05c_4b46                          ; $652c: $c2 $46 $4b

    sub c                                         ; $652f: $91
    ld c, c                                       ; $6530: $49
    adc $7f                                       ; $6531: $ce $7f
    inc hl                                        ; $6533: $23
    push de                                       ; $6534: $d5
    ld l, l                                       ; $6535: $6d
    dec d                                         ; $6536: $15
    adc b                                         ; $6537: $88
    inc c                                         ; $6538: $0c
    ld [hl], h                                    ; $6539: $74
    ld b, b                                       ; $653a: $40
    jp z, $d500                                   ; $653b: $ca $00 $d5

    ld l, l                                       ; $653e: $6d
    add hl, de                                    ; $653f: $19
    jp hl                                         ; $6540: $e9


    dec bc                                        ; $6541: $0b
    adc c                                         ; $6542: $89
    jr c, @+$4a                                   ; $6543: $38 $48

    and e                                         ; $6545: $a3
    dec l                                         ; $6546: $2d
    ret nz                                        ; $6547: $c0

    or $cc                                        ; $6548: $f6 $cc
    add a                                         ; $654a: $87
    or a                                          ; $654b: $b7
    ld l, e                                       ; $654c: $6b
    nop                                           ; $654d: $00
    ld a, a                                       ; $654e: $7f
    ld h, c                                       ; $654f: $61
    add hl, hl                                    ; $6550: $29
    dec c                                         ; $6551: $0d
    db $ec                                        ; $6552: $ec
    ld l, b                                       ; $6553: $68
    add hl, de                                    ; $6554: $19
    rst $28                                       ; $6555: $ef
    ret nz                                        ; $6556: $c0

    db $ed                                        ; $6557: $ed
    ret nz                                        ; $6558: $c0

    ld l, b                                       ; $6559: $68
    ld b, d                                       ; $655a: $42
    call nc, Call_000_2c14                        ; $655b: $d4 $14 $2c
    nop                                           ; $655e: $00
    rrca                                          ; $655f: $0f
    ld h, h                                       ; $6560: $64
    ld [$0265], sp                                ; $6561: $08 $65 $02
    xor c                                         ; $6564: $a9
    db $e4                                        ; $6565: $e4
    jr z, @+$0b                                   ; $6566: $28 $09

    adc l                                         ; $6568: $8d
    db $e4                                        ; $6569: $e4
    or [hl]                                       ; $656a: $b6
    jp nz, Jump_05c_4b88                          ; $656b: $c2 $88 $4b

    push bc                                       ; $656e: $c5
    nop                                           ; $656f: $00
    call nz, Call_05c_498a                        ; $6570: $c4 $8a $49
    ld h, l                                       ; $6573: $65
    ld a, [$14e9]                                 ; $6574: $fa $e9 $14
    sub e                                         ; $6577: $93
    sbc $ed                                       ; $6578: $de $ed
    ld d, h                                       ; $657a: $54
    db $10                                        ; $657b: $10
    scf                                           ; $657c: $37
    adc e                                         ; $657d: $8b
    ld sp, hl                                     ; $657e: $f9
    or c                                          ; $657f: $b1
    nop                                           ; $6580: $00
    dec d                                         ; $6581: $15
    adc d                                         ; $6582: $8a
    db $eb                                        ; $6583: $eb
    ld l, e                                       ; $6584: $6b
    add d                                         ; $6585: $82
    dec bc                                        ; $6586: $0b
    ld [bc], a                                    ; $6587: $02
    adc a                                         ; $6588: $8f
    ld h, b                                       ; $6589: $60
    rrca                                          ; $658a: $0f
    jp nc, $82e9                                  ; $658b: $d2 $e9 $82

    ld c, $55                                     ; $658e: $0e $55
    ld [hl], c                                    ; $6590: $71
    nop                                           ; $6591: $00
    sbc $ec                                       ; $6592: $de $ec
    jp nc, Jump_000_37eb                          ; $6594: $d2 $eb $37

    dec c                                         ; $6597: $0d
    ret nz                                        ; $6598: $c0

    pop af                                        ; $6599: $f1
    sbc $eb                                       ; $659a: $de $eb
    ld d, h                                       ; $659c: $54
    ld a, [bc]                                    ; $659d: $0a
    add [hl]                                      ; $659e: $86
    ld l, [hl]                                    ; $659f: $6e
    ld a, $0e                                     ; $65a0: $3e $0e
    nop                                           ; $65a2: $00
    ld h, h                                       ; $65a3: $64
    ld [hl], b                                    ; $65a4: $70
    add hl, bc                                    ; $65a5: $09
    add l                                         ; $65a6: $85
    ld b, a                                       ; $65a7: $47
    daa                                           ; $65a8: $27
    ld a, [c]                                     ; $65a9: $f2
    ld [$4e71], a                                 ; $65aa: $ea $71 $4e
    ld h, h                                       ; $65ad: $64
    ld l, c                                       ; $65ae: $69
    db $f4                                        ; $65af: $f4
    ld [$6e86], a                                 ; $65b0: $ea $86 $6e
    nop                                           ; $65b3: $00
    rst $38                                       ; $65b4: $ff
    call nc, Call_000_0960                        ; $65b5: $d4 $60 $09
    ld e, b                                       ; $65b8: $58
    ld l, d                                       ; $65b9: $6a
    scf                                           ; $65ba: $37
    dec c                                         ; $65bb: $0d
    ld [hl], d                                    ; $65bc: $72
    sub b                                         ; $65bd: $90
    ld b, b                                       ; $65be: $40
    adc a                                         ; $65bf: $8f
    ld e, b                                       ; $65c0: $58
    ld h, [hl]                                    ; $65c1: $66
    inc [hl]                                      ; $65c2: $34
    jr nz, jr_05c_65c5                            ; $65c3: $20 $00

jr_05c_65c5:
    add [hl]                                      ; $65c5: $86
    ld l, l                                       ; $65c6: $6d
    or c                                          ; $65c7: $b1
    jr nc, jr_05c_660a                            ; $65c8: $30 $40

    adc h                                         ; $65ca: $8c
    db $f4                                        ; $65cb: $f4
    ld [$0d37], a                                 ; $65cc: $ea $37 $0d
    sub a                                         ; $65cf: $97
    ld [hl-], a                                   ; $65d0: $32
    ret nz                                        ; $65d1: $c0

    rst $30                                       ; $65d2: $f7
    ld h, d                                       ; $65d3: $62
    sub d                                         ; $65d4: $92
    nop                                           ; $65d5: $00
    db $ed                                        ; $65d6: $ed
    sub [hl]                                      ; $65d7: $96
    ld h, b                                       ; $65d8: $60
    ld c, $03                                     ; $65d9: $0e $03
    cpl                                           ; $65db: $2f
    ld e, e                                       ; $65dc: $5b
    sbc e                                         ; $65dd: $9b
    and a                                         ; $65de: $a7
    db $d3                                        ; $65df: $d3
    cp l                                          ; $65e0: $bd
    db $fc                                        ; $65e1: $fc
    ld l, c                                       ; $65e2: $69
    ld a, [c]                                     ; $65e3: $f2
    inc e                                         ; $65e4: $1c
    ld b, d                                       ; $65e5: $42
    nop                                           ; $65e6: $00
    jp nz, Jump_05c_69ff                          ; $65e7: $c2 $ff $69

    ei                                            ; $65ea: $fb
    ret nz                                        ; $65eb: $c0

    rst $38                                       ; $65ec: $ff
    rst $28                                       ; $65ed: $ef
    call c, $ffdc                                 ; $65ee: $dc $dc $ff
    rst $38                                       ; $65f1: $ff
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    rst $38                                       ; $65f4: $ff
    rst $38                                       ; $65f5: $ff
    rst $38                                       ; $65f6: $ff
    nop                                           ; $65f7: $00
    rst $38                                       ; $65f8: $ff
    rst $38                                       ; $65f9: $ff
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    rst $38                                       ; $65ff: $ff
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    rst $38                                       ; $6602: $ff
    rst $38                                       ; $6603: $ff
    rst $38                                       ; $6604: $ff
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    nop                                           ; $6608: $00
    rst $38                                       ; $6609: $ff

jr_05c_660a:
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
    rst $38                                       ; $6614: $ff
    nop                                           ; $6615: $00
    or e                                          ; $6616: $b3
    rst $38                                       ; $6617: $ff
    rst $38                                       ; $6618: $ff
    nop                                           ; $6619: $00
    rst $38                                       ; $661a: $ff
    rst $38                                       ; $661b: $ff
    rst $38                                       ; $661c: $ff
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    rst $38                                       ; $661f: $ff
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    rst $38                                       ; $6625: $ff
    jr nz, jr_05c_6648                            ; $6626: $20 $20

    jr nz, jr_05c_662a                            ; $6628: $20 $00

jr_05c_662a:
    ld sp, $4647                                  ; $662a: $31 $47 $46
    ld d, h                                       ; $662d: $54
    ld e, a                                       ; $662e: $5f
    inc a                                         ; $662f: $3c
    ld sp, $6031                                  ; $6630: $31 $31 $60
    ld e, e                                       ; $6633: $5b
    rst $38                                       ; $6634: $ff
    ldh [$5a], a                                  ; $6635: $e0 $5a

jr_05c_6637:
    ei                                            ; $6637: $fb
    ldh [$f1], a                                  ; $6638: $e0 $f1
    nop                                           ; $663a: $00
    rst $38                                       ; $663b: $ff
    rst $38                                       ; $663c: $ff
    rst $20                                       ; $663d: $e7
    and $c0                                       ; $663e: $e6 $c0
    pop hl                                        ; $6640: $e1
    scf                                           ; $6641: $37
    ld [hl], $30                                  ; $6642: $36 $30
    jr nc, jr_05c_6637                            ; $6644: $30 $f1

    ld b, d                                       ; $6646: $42
    cp a                                          ; $6647: $bf

jr_05c_6648:
    push hl                                       ; $6648: $e5
    ret nz                                        ; $6649: $c0

    rst $38                                       ; $664a: $ff

jr_05c_664b:
    ret nz                                        ; $664b: $c0

    xor $50                                       ; $664c: $ee $50
    jr nc, jr_05c_6680                            ; $664e: $30 $30

    jr nc, @-$01                                  ; $6650: $30 $fd

    ld l, l                                       ; $6652: $6d
    cp a                                          ; $6653: $bf
    ld [c], a                                     ; $6654: $e2
    ld h, b                                       ; $6655: $60
    ld h, d                                       ; $6656: $62
    ld h, d                                       ; $6657: $62
    ld h, b                                       ; $6658: $60
    ld e, e                                       ; $6659: $5b
    ld e, d                                       ; $665a: $5a
    inc [hl]                                      ; $665b: $34

jr_05c_665c:
    jp z, $80ff                                   ; $665c: $ca $ff $80

    db $eb                                        ; $665f: $eb
    ld d, c                                       ; $6660: $51
    pop bc                                        ; $6661: $c1
    ldh [$6d], a                                  ; $6662: $e0 $6d
    ld l, d                                       ; $6664: $6a
    ld a, [hl]                                    ; $6665: $7e
    pop hl                                        ; $6666: $e1
    cp $e1                                        ; $6667: $fe $e1
    reti                                          ; $6669: $d9


    ld h, b                                       ; $666a: $60
    add b                                         ; $666b: $80
    rst $38                                       ; $666c: $ff
    ld b, b                                       ; $666d: $40
    db $eb                                        ; $666e: $eb
    ld [$c150], sp                                ; $666f: $08 $50 $c1
    pop hl                                        ; $6672: $e1
    jr nc, jr_05c_66e2                            ; $6673: $30 $6d

    adc l                                         ; $6675: $8d
    ld d, d                                       ; $6676: $52
    ret nz                                        ; $6677: $c0

    ldh [$15], a                                  ; $6678: $e0 $15
    rrca                                          ; $667a: $0f
    ld hl, sp-$40                                 ; $667b: $f8 $c0
    jp z, Jump_000_00ff                           ; $667d: $ca $ff $00

jr_05c_6680:
    ld [$7f1a], a                                 ; $6680: $ea $1a $7f
    ld d, c                                       ; $6683: $51
    ld l, e                                       ; $6684: $6b
    ld l, e                                       ; $6685: $6b
    ld l, c                                       ; $6686: $69
    jr nc, @+$6f                                  ; $6687: $30 $6d

    jr nc, jr_05c_664b                            ; $6689: $30 $c0

    pop hl                                        ; $668b: $e1
    sbc a                                         ; $668c: $9f
    rla                                           ; $668d: $17
    jr z, jr_05c_669e                             ; $668e: $28 $0e

    ld sp, $ca31                                  ; $6690: $31 $31 $ca
    rst $38                                       ; $6693: $ff
    ret nz                                        ; $6694: $c0

    ret                                           ; $6695: $c9


jr_05c_6696:
    ld [$31d7], sp                                ; $6696: $08 $d7 $31
    ld d, b                                       ; $6699: $50
    jr nc, jr_05c_665c                            ; $669a: $30 $c0

    ld [c], a                                     ; $669c: $e2
    ld d, e                                       ; $669d: $53

jr_05c_669e:
    add c                                         ; $669e: $81
    ldh [rNR21], a                                ; $669f: $e0 $16
    jr nz, jr_05c_6696                            ; $66a1: $20 $f3

    jr nz, @+$11                                  ; $66a3: $20 $0f

    ret nz                                        ; $66a5: $c0

    rst $38                                       ; $66a6: $ff
    jp hl                                         ; $66a7: $e9


    add sp, $05                                   ; $66a8: $e8 $05
    dec b                                         ; $66aa: $05
    dec d                                         ; $66ab: $15
    ld sp, $495b                                  ; $66ac: $31 $5b $49
    ld c, b                                       ; $66af: $48
    ld b, b                                       ; $66b0: $40
    push hl                                       ; $66b1: $e5
    rla                                           ; $66b2: $17
    jr z, jr_05c_66e5                             ; $66b3: $28 $30

    ret nz                                        ; $66b5: $c0

    rrca                                          ; $66b6: $0f
    jp z, Jump_05c_64ff                           ; $66b7: $ca $ff $64

    add sp, -$19                                  ; $66ba: $e8 $e7
    call z, Call_000_39c2                         ; $66bc: $cc $c2 $39
    rst $38                                       ; $66bf: $ff
    jp nz, $e080                                  ; $66c0: $c2 $80 $e0

    dec hl                                        ; $66c3: $2b
    inc l                                         ; $66c4: $2c
    ret nz                                        ; $66c5: $c0

    rst $38                                       ; $66c6: $ff
    sbc $ec                                       ; $66c7: $de $ec
    db $eb                                        ; $66c9: $eb
    ld h, d                                       ; $66ca: $62
    ld h, d                                       ; $66cb: $62
    ld h, d                                       ; $66cc: $62
    ld sp, $e07f                                  ; $66cd: $31 $7f $e0
    jr nc, jr_05c_673f                            ; $66d0: $30 $6d

    add e                                         ; $66d2: $83
    ld l, e                                       ; $66d3: $6b
    ld l, d                                       ; $66d4: $6a
    ret nz                                        ; $66d5: $c0

    ret nz                                        ; $66d6: $c0

    ret nz                                        ; $66d7: $c0

    pop hl                                        ; $66d8: $e1
    ld b, b                                       ; $66d9: $40
    rst $38                                       ; $66da: $ff
    ld [$8ce9], a                                 ; $66db: $ea $e9 $8c
    and b                                         ; $66de: $a0
    ld e, [hl]                                    ; $66df: $5e
    ret nz                                        ; $66e0: $c0

    ld a, a                                       ; $66e1: $7f

jr_05c_66e2:
    pop hl                                        ; $66e2: $e1
    cp l                                          ; $66e3: $bd
    ret nz                                        ; $66e4: $c0

jr_05c_66e5:
    add b                                         ; $66e5: $80
    db $e3                                        ; $66e6: $e3
    ld a, a                                       ; $66e7: $7f
    ret nz                                        ; $66e8: $c0

    jp z, $c0ff                                   ; $66e9: $ca $ff $c0

    add sp, $5a                                   ; $66ec: $e8 $5a
    ld e, e                                       ; $66ee: $5b
    cp a                                          ; $66ef: $bf
    ld e, a                                       ; $66f0: $5f
    ld sp, $4d31                                  ; $66f1: $31 $31 $4d
    ld b, [hl]                                    ; $66f4: $46
    ld [hl], $c0                                  ; $66f5: $36 $c0
    ld [c], a                                     ; $66f7: $e2
    add hl, hl                                    ; $66f8: $29
    add hl, de                                    ; $66f9: $19
    daa                                           ; $66fa: $27
    ld b, b                                       ; $66fb: $40
    rst $18                                       ; $66fc: $df
    add b                                         ; $66fd: $80
    xor $5b                                       ; $66fe: $ee $5b
    ld h, b                                       ; $6700: $60
    rst $00                                       ; $6701: $c7
    and b                                         ; $6702: $a0
    db $fd                                        ; $6703: $fd
    add e                                         ; $6704: $83
    ret nz                                        ; $6705: $c0

    cp a                                          ; $6706: $bf
    add b                                         ; $6707: $80
    ret nz                                        ; $6708: $c0

    pop af                                        ; $6709: $f1
    cp a                                          ; $670a: $bf
    ld [c], a                                     ; $670b: $e2
    jp $f2e2                                      ; $670c: $c3 $e2 $f2


    ret nz                                        ; $670f: $c0

    ld b, b                                       ; $6710: $40
    cp a                                          ; $6711: $bf
    nop                                           ; $6712: $00
    db $ed                                        ; $6713: $ed
    adc l                                         ; $6714: $8d
    add b                                         ; $6715: $80
    ld e, h                                       ; $6716: $5c
    ld bc, $b85d                                  ; $6717: $01 $5d $b8
    ret nz                                        ; $671a: $c0

    call nz, $c0e1                                ; $671b: $c4 $e1 $c0
    sbc a                                         ; $671e: $9f
    db $ed                                        ; $671f: $ed
    db $ec                                        ; $6720: $ec
    ld d, b                                       ; $6721: $50
    add c                                         ; $6722: $81
    db $fd                                        ; $6723: $fd
    add sp, -$0f                                  ; $6724: $e8 $f1
    ld [c], a                                     ; $6726: $e2
    nop                                           ; $6727: $00
    jp z, $ffff                                   ; $6728: $ca $ff $ff

    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    rst $38                                       ; $6737: $ff
    nop                                           ; $6738: $00
    rst $38                                       ; $6739: $ff
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff

jr_05c_673f:
    rst $38                                       ; $673f: $ff
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    nop                                           ; $6749: $00
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    rst $38                                       ; $6751: $ff
    rst $38                                       ; $6752: $ff
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    rst $38                                       ; $6759: $ff
    nop                                           ; $675a: $00
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    nop                                           ; $676b: $00
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    rst $38                                       ; $6771: $ff
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    nop                                           ; $677c: $00
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    nop                                           ; $678d: $00
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    rst $38                                       ; $679c: $ff
    rst $38                                       ; $679d: $ff
    nop                                           ; $679e: $00
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    rst $38                                       ; $67a3: $ff
    rst $38                                       ; $67a4: $ff
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    nop                                           ; $67af: $00
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    nop                                           ; $67c0: $00
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    rst $38                                       ; $67c6: $ff
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    nop                                           ; $67d1: $00
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    nop                                           ; $67e2: $00
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    rst $38                                       ; $67e8: $ff
    rst $38                                       ; $67e9: $ff
    di                                            ; $67ea: $f3
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    nop                                           ; $67ed: $00
    and l                                         ; $67ee: $a5
    nop                                           ; $67ef: $00
    rst $38                                       ; $67f0: $ff
    push hl                                       ; $67f1: $e5
    ld [hl-], a                                   ; $67f2: $32
    or $e6                                        ; $67f3: $f6 $e6
    rst $30                                       ; $67f5: $f7
    rst $20                                       ; $67f6: $e7
    dec [hl]                                      ; $67f7: $35
    db $ec                                        ; $67f8: $ec
    xor $37                                       ; $67f9: $ee $37
    db $ec                                        ; $67fb: $ec
    jp c, $c7f0                                   ; $67fc: $da $f0 $c7

    add sp, $33                                   ; $67ff: $e8 $33
    ld sp, $f2e0                                  ; $6801: $31 $e0 $f2
    ld [hl], $30                                  ; $6804: $36 $30
    scf                                           ; $6806: $37
    cp a                                          ; $6807: $bf
    ld h, $20                                     ; $6808: $26 $20
    daa                                           ; $680a: $27
    db $10                                        ; $680b: $10
    ld d, $17                                     ; $680c: $16 $17
    jp nz, Jump_000_34f6                          ; $680e: $c2 $f6 $34

    rst $38                                       ; $6811: $ff
    ld [hl], $32                                  ; $6812: $36 $32
    jr nc, jr_05c_684d                            ; $6814: $30 $37

    ld sp, $3133                                  ; $6816: $31 $33 $31
    inc sp                                        ; $6819: $33
    nop                                           ; $681a: $00
    and b                                         ; $681b: $a0
    ei                                            ; $681c: $fb
    rst $38                                       ; $681d: $ff
    rst $28                                       ; $681e: $ef
    nop                                           ; $681f: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    ld a, [hl+]                                   ; $6822: $2a
    ld l, b                                       ; $6823: $68
    ld e, d                                       ; $6824: $5a
    ld l, b                                       ; $6825: $68
    pop hl                                        ; $6826: $e1
    ld l, d                                       ; $6827: $6a
    push bc                                       ; $6828: $c5
    ld l, h                                       ; $6829: $6c
    ld a, [c]                                     ; $682a: $f2
    inc sp                                        ; $682b: $33
    ld c, e                                       ; $682c: $4b
    dec de                                        ; $682d: $1b
    dec h                                         ; $682e: $25
    ld [bc], a                                    ; $682f: $02
    ldh [rNR10], a                                ; $6830: $e0 $10
    ret z                                         ; $6832: $c8

    ld [bc], a                                    ; $6833: $02
    ld a, [c]                                     ; $6834: $f2
    inc sp                                        ; $6835: $33
    ld c, e                                       ; $6836: $4b
    dec de                                        ; $6837: $1b
    dec h                                         ; $6838: $25
    ld [bc], a                                    ; $6839: $02
    sbc a                                         ; $683a: $9f
    ld [bc], a                                    ; $683b: $02
    or $01                                        ; $683c: $f6 $01
    ld d, e                                       ; $683e: $53
    ld bc, $1b4b                                  ; $683f: $01 $4b $1b
    ld [$0825], sp                                ; $6842: $08 $25 $08
    dec h                                         ; $6845: $25
    ld [$0825], sp                                ; $6846: $08 $25 $08
    dec h                                         ; $6849: $25
    ld [$0825], sp                                ; $684a: $08 $25 $08

jr_05c_684d:
    dec h                                         ; $684d: $25
    ld [$0825], sp                                ; $684e: $08 $25 $08
    dec h                                         ; $6851: $25
    ld [$0825], sp                                ; $6852: $08 $25 $08
    dec h                                         ; $6855: $25
    ld [$0825], sp                                ; $6856: $08 $25 $08
    dec h                                         ; $6859: $25
    ld e, a                                       ; $685a: $5f
    dec bc                                        ; $685b: $0b
    dec bc                                        ; $685c: $0b
    dec bc                                        ; $685d: $0b
    ld c, e                                       ; $685e: $4b
    ld c, e                                       ; $685f: $4b
    ei                                            ; $6860: $fb
    ldh [$0c], a                                  ; $6861: $e0 $0c
    rst $38                                       ; $6863: $ff
    and $7f                                       ; $6864: $e6 $7f
    inc l                                         ; $6866: $2c
    inc l                                         ; $6867: $2c
    inc c                                         ; $6868: $0c
    inc c                                         ; $6869: $0c
    ld c, h                                       ; $686a: $4c
    inc c                                         ; $686b: $0c
    ld c, h                                       ; $686c: $4c
    db $fd                                        ; $686d: $fd
    pop hl                                        ; $686e: $e1
    ld bc, $f64c                                  ; $686f: $01 $4c $f6
    ldh [$fa], a                                  ; $6872: $e0 $fa
    ld [c], a                                     ; $6874: $e2
    ld sp, hl                                     ; $6875: $f9
    rst $20                                       ; $6876: $e7
    db $fc                                        ; $6877: $fc
    db $e3                                        ; $6878: $e3
    jp nc, $c0e7                                  ; $6879: $d2 $e7 $c0

    ldh [$bf], a                                  ; $687c: $e0 $bf
    ld [c], a                                     ; $687e: $e2
    nop                                           ; $687f: $00
    ret nz                                        ; $6880: $c0

    db $eb                                        ; $6881: $eb
    cp a                                          ; $6882: $bf
    ldh [$af], a                                  ; $6883: $e0 $af
    pop hl                                        ; $6885: $e1
    sub $e6                                       ; $6886: $d6 $e6
    call z, $c1e4                                 ; $6888: $cc $e4 $c1
    rst $28                                       ; $688b: $ef
    ret nz                                        ; $688c: $c0

    ld [c], a                                     ; $688d: $e2
    ld a, [hl]                                    ; $688e: $7e
    pop hl                                        ; $688f: $e1
    nop                                           ; $6890: $00
    sbc b                                         ; $6891: $98
    db $e4                                        ; $6892: $e4
    db $e4                                        ; $6893: $e4
    ld [$e287], a                                 ; $6894: $ea $87 $e2
    cp b                                          ; $6897: $b8
    db $e4                                        ; $6898: $e4
    db $f4                                        ; $6899: $f4
    db $e4                                        ; $689a: $e4
    ld l, l                                       ; $689b: $6d
    ld [c], a                                     ; $689c: $e2
    ret nz                                        ; $689d: $c0

    xor $3d                                       ; $689e: $ee $3d

jr_05c_68a0:
    ld [c], a                                     ; $68a0: $e2
    add b                                         ; $68a1: $80
    ld d, [hl]                                    ; $68a2: $56
    pop hl                                        ; $68a3: $e1
    sbc b                                         ; $68a4: $98
    and $41                                       ; $68a5: $e6 $41
    ld [c], a                                     ; $68a7: $e2
    ld a, $e2                                     ; $68a8: $3e $e2
    ccf                                           ; $68aa: $3f
    db $ec                                        ; $68ab: $ec
    ld l, d                                       ; $68ac: $6a
    jp hl                                         ; $68ad: $e9


    ret nz                                        ; $68ae: $c0

    rst $20                                       ; $68af: $e7
    dec bc                                        ; $68b0: $0b
    rrca                                          ; $68b1: $0f
    dec hl                                        ; $68b2: $2b
    dec bc                                        ; $68b3: $0b
    dec bc                                        ; $68b4: $0b
    ld l, e                                       ; $68b5: $6b
    ld sp, hl                                     ; $68b6: $f9
    ld [c], a                                     ; $68b7: $e2
    ld b, e                                       ; $68b8: $43
    pop hl                                        ; $68b9: $e1
    sub [hl]                                      ; $68ba: $96
    push hl                                       ; $68bb: $e5
    cp d                                          ; $68bc: $ba
    ld [c], a                                     ; $68bd: $e2
    ldh [$f6], a                                  ; $68be: $e0 $f6
    jp $e4b5                                      ; $68c0: $c3 $b5 $e4


    db $ed                                        ; $68c3: $ed
    db $e4                                        ; $68c4: $e4
    ret c                                         ; $68c5: $d8

    jp $e880                                      ; $68c6: $c3 $80 $e8


    ld l, e                                       ; $68c9: $6b
    ld c, e                                       ; $68ca: $4b
    ld c, e                                       ; $68cb: $4b
    rrca                                          ; $68cc: $0f
    ld c, e                                       ; $68cd: $4b
    dec hl                                        ; $68ce: $2b
    dec bc                                        ; $68cf: $0b
    ld c, e                                       ; $68d0: $4b
    ld sp, hl                                     ; $68d1: $f9
    ldh [$c0], a                                  ; $68d2: $e0 $c0
    add sp, -$02                                  ; $68d4: $e8 $fe
    db $e4                                        ; $68d6: $e4
    or l                                          ; $68d7: $b5
    db $e4                                        ; $68d8: $e4
    ret nc                                        ; $68d9: $d0

    xor [hl]                                      ; $68da: $ae
    rst $20                                       ; $68db: $e7
    ret nz                                        ; $68dc: $c0

    jp z, $e087                                   ; $68dd: $ca $87 $e0

    ld a, l                                       ; $68e0: $7d
    jp Jump_05c_792b                              ; $68e1: $c3 $2b $79


    pop bc                                        ; $68e4: $c1
    dec hl                                        ; $68e5: $2b
    ld c, e                                       ; $68e6: $4b
    add b                                         ; $68e7: $80
    ld a, a                                       ; $68e8: $7f
    db $e4                                        ; $68e9: $e4
    add b                                         ; $68ea: $80
    jp nz, $c7be                                  ; $68eb: $c2 $be $c7

    ret nz                                        ; $68ee: $c0

    ret c                                         ; $68ef: $d8

    adc b                                         ; $68f0: $88
    ldh [$82], a                                  ; $68f1: $e0 $82
    pop hl                                        ; $68f3: $e1
    dec sp                                        ; $68f4: $3b
    jp nz, Jump_05c_412b                          ; $68f5: $c2 $2b $41

    dec hl                                        ; $68f8: $2b
    ccf                                           ; $68f9: $3f

jr_05c_68fa:
    db $eb                                        ; $68fa: $eb
    jp z, $c7c6                                   ; $68fb: $ca $c6 $c7

    add $c0                                       ; $68fe: $c6 $c0
    adc $14                                       ; $6900: $ce $14
    ret nz                                        ; $6902: $c0

    ld c, e                                       ; $6903: $4b
    add l                                         ; $6904: $85
    ldh [$0e], a                                  ; $6905: $e0 $0e
    pop bc                                        ; $6907: $c1
    push hl                                       ; $6908: $e5
    dec hl                                        ; $6909: $2b
    dec bc                                        ; $690a: $0b
    ld l, h                                       ; $690b: $6c
    ld d, c                                       ; $690c: $51
    push bc                                       ; $690d: $c5
    ld b, h                                       ; $690e: $44
    and $40                                       ; $690f: $e6 $40
    jp c, $a0d0                                   ; $6911: $da $d0 $a0

    jr jr_05c_68a0                                ; $6914: $18 $8a

    ldh [$81], a                                  ; $6916: $e0 $81
    rst $20                                       ; $6918: $e7
    or a                                          ; $6919: $b7
    and l                                         ; $691a: $a5
    ld c, h                                       ; $691b: $4c
    inc l                                         ; $691c: $2c
    ld a, d                                       ; $691d: $7a
    push bc                                       ; $691e: $c5
    inc bc                                        ; $691f: $03
    add sp, $40                                   ; $6920: $e8 $40
    ret nc                                        ; $6922: $d0

    rrca                                          ; $6923: $0f
    ld l, h                                       ; $6924: $6c
    ld l, h                                       ; $6925: $6c
    inc l                                         ; $6926: $2c
    ld c, h                                       ; $6927: $4c
    inc b                                         ; $6928: $04
    pop hl                                        ; $6929: $e1
    ret nz                                        ; $692a: $c0

    pop bc                                        ; $692b: $c1
    pop bc                                        ; $692c: $c1
    pop hl                                        ; $692d: $e1
    add c                                         ; $692e: $81
    pop hl                                        ; $692f: $e1
    ld c, $a5                                     ; $6930: $0e $a5
    ret nz                                        ; $6932: $c0

    ld c, h                                       ; $6933: $4c
    inc c                                         ; $6934: $0c
    inc l                                         ; $6935: $2c
    add c                                         ; $6936: $81
    and $47                                       ; $6937: $e6 $47
    call nz, $ca40                                ; $6939: $c4 $40 $ca
    jp c, Jump_000_00c4                           ; $693c: $da $c4 $00

    ld d, b                                       ; $693f: $50
    and e                                         ; $6940: $a3
    dec a                                         ; $6941: $3d
    call nz, $c2b5                                ; $6942: $c4 $b5 $c2
    ld b, a                                       ; $6945: $47
    add $41                                       ; $6946: $c6 $41
    and l                                         ; $6948: $a5
    add e                                         ; $6949: $83
    xor d                                         ; $694a: $aa
    cp $f1                                        ; $694b: $fe $f1
    ld d, [hl]                                    ; $694d: $56
    ldh [rP1], a                                  ; $694e: $e0 $00
    cp d                                          ; $6950: $ba
    and $01                                       ; $6951: $e6 $01
    and [hl]                                      ; $6953: $a6
    ld a, [c]                                     ; $6954: $f2
    adc b                                         ; $6955: $88
    jr nc, jr_05c_68fa                            ; $6956: $30 $a2

    add hl, hl                                    ; $6958: $29
    and h                                         ; $6959: $a4
    jp nz, Jump_05c_48f0                          ; $695a: $c2 $f0 $48

    and h                                         ; $695d: $a4
    ret c                                         ; $695e: $d8

    push hl                                       ; $695f: $e5
    pop hl                                        ; $6960: $e1
    ld c, h                                       ; $6961: $4c
    pop bc                                        ; $6962: $c1
    add d                                         ; $6963: $82
    sub h                                         ; $6964: $94
    push af                                       ; $6965: $f5

jr_05c_6966:
    xor d                                         ; $6966: $aa
    xor $c0                                       ; $6967: $ee $c0
    rst $28                                       ; $6969: $ef
    ld c, h                                       ; $696a: $4c
    inc c                                         ; $696b: $0c
    dec hl                                        ; $696c: $2b
    nop                                           ; $696d: $00
    xor e                                         ; $696e: $ab
    and $c0                                       ; $696f: $e6 $c0
    rst $38                                       ; $6971: $ff
    add b                                         ; $6972: $80
    add b                                         ; $6973: $80
    rst $00                                       ; $6974: $c7
    adc h                                         ; $6975: $8c
    ret nz                                        ; $6976: $c0

    db $e3                                        ; $6977: $e3
    add c                                         ; $6978: $81
    rst $38                                       ; $6979: $ff
    ld h, [hl]                                    ; $697a: $66
    adc e                                         ; $697b: $8b
    db $10                                        ; $697c: $10
    add h                                         ; $697d: $84
    nop                                           ; $697e: $00
    ei                                            ; $697f: $fb
    and $c0                                       ; $6980: $e6 $c0
    rst $38                                       ; $6982: $ff
    ld e, e                                       ; $6983: $5b
    add a                                         ; $6984: $87
    push de                                       ; $6985: $d5
    ld l, [hl]                                    ; $6986: $6e
    bit 5, e                                      ; $6987: $cb $6b
    push bc                                       ; $6989: $c5
    ld l, c                                       ; $698a: $69
    dec [hl]                                      ; $698b: $35
    add [hl]                                      ; $698c: $86
    ld a, [de]                                    ; $698d: $1a
    adc h                                         ; $698e: $8c
    jr nz, jr_05c_6966                            ; $698f: $20 $d5

    ld l, a                                       ; $6991: $6f
    adc $e7                                       ; $6992: $ce $e7
    ld h, b                                       ; $6994: $60
    add sp, -$4b                                  ; $6995: $e8 $b5
    ld h, h                                       ; $6997: $64
    ld l, h                                       ; $6998: $6c
    pop bc                                        ; $6999: $c1
    inc l                                         ; $699a: $2c
    db $fd                                        ; $699b: $fd
    xor c                                         ; $699c: $a9
    push de                                       ; $699d: $d5
    ld l, l                                       ; $699e: $6d
    nop                                           ; $699f: $00
    bit 4, [hl]                                   ; $69a0: $cb $66
    cp [hl]                                       ; $69a2: $be
    ld l, d                                       ; $69a3: $6a
    ld [hl], l                                    ; $69a4: $75
    and [hl]                                      ; $69a5: $a6
    ret nz                                        ; $69a6: $c0

    jp hl                                         ; $69a7: $e9


    push de                                       ; $69a8: $d5
    ld [hl], d                                    ; $69a9: $72
    jp nc, $e967                                  ; $69aa: $d2 $67 $e9

    db $eb                                        ; $69ad: $eb
    ld a, h                                       ; $69ae: $7c
    and [hl]                                      ; $69af: $a6
    nop                                           ; $69b0: $00
    cp a                                          ; $69b1: $bf
    ret                                           ; $69b2: $c9


    push de                                       ; $69b3: $d5
    ld l, a                                       ; $69b4: $6f
    bit 5, c                                      ; $69b5: $cb $69
    cp [hl]                                       ; $69b7: $be
    ld l, c                                       ; $69b8: $69
    call nz, Call_05c_4445                        ; $69b9: $c4 $45 $44
    ldh [$c0], a                                  ; $69bc: $e0 $c0
    db $ec                                        ; $69be: $ec
    push de                                       ; $69bf: $d5
    ld l, e                                       ; $69c0: $6b
    nop                                           ; $69c1: $00
    or $ea                                        ; $69c2: $f6 $ea
    cp [hl]                                       ; $69c4: $be
    ld h, a                                       ; $69c5: $67
    res 5, c                                      ; $69c6: $cb $a9
    ld a, l                                       ; $69c8: $7d
    xor e                                         ; $69c9: $ab
    push de                                       ; $69ca: $d5
    ld l, h                                       ; $69cb: $6c
    bit 5, d                                      ; $69cc: $cb $6a
    cp [hl]                                       ; $69ce: $be

jr_05c_69cf:
    ld l, e                                       ; $69cf: $6b
    ld [hl], d                                    ; $69d0: $72
    ld b, l                                       ; $69d1: $45
    nop                                           ; $69d2: $00
    ccf                                           ; $69d3: $3f
    jp z, Jump_05c_6dd5                           ; $69d4: $ca $d5 $6d

    or $e9                                        ; $69d7: $f6 $e9
    jp hl                                         ; $69d9: $e9


    db $eb                                        ; $69da: $eb
    call z, $7587                                 ; $69db: $cc $87 $75
    ld [$6dd5], a                                 ; $69de: $ea $d5 $6d
    bit 4, [hl]                                   ; $69e1: $cb $66
    nop                                           ; $69e3: $00
    cp [hl]                                       ; $69e4: $be
    ld l, [hl]                                    ; $69e5: $6e
    inc c                                         ; $69e6: $0c
    jp z, $75d5                                   ; $69e7: $ca $d5 $75

    bit 5, b                                      ; $69ea: $cb $68
    jp hl                                         ; $69ec: $e9


    ld [$a88d], a                                 ; $69ed: $ea $8d $a8
    ld d, d                                       ; $69f0: $52
    daa                                           ; $69f1: $27
    push de                                       ; $69f2: $d5
    ld [hl], b                                    ; $69f3: $70
    nop                                           ; $69f4: $00
    or $e8                                        ; $69f5: $f6 $e8
    ld c, c                                       ; $69f7: $49
    bit 4, b                                      ; $69f8: $cb $60
    and a                                         ; $69fa: $a7
    ld b, b                                       ; $69fb: $40
    adc c                                         ; $69fc: $89
    push de                                       ; $69fd: $d5
    ld l, [hl]                                    ; $69fe: $6e

Jump_05c_69ff:
    ld [$0d68], sp                                ; $69ff: $08 $68 $0d
    dec hl                                        ; $6a02: $2b
    or [hl]                                       ; $6a03: $b6
    ld [hl], b                                    ; $6a04: $70
    nop                                           ; $6a05: $00
    push de                                       ; $6a06: $d5
    ld [hl], c                                    ; $6a07: $71
    ldh [$8a], a                                  ; $6a08: $e0 $8a
    cp [hl]                                       ; $6a0a: $be
    ld l, c                                       ; $6a0b: $69
    and e                                         ; $6a0c: $a3
    daa                                           ; $6a0d: $27
    add b                                         ; $6a0e: $80
    db $eb                                        ; $6a0f: $eb
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    adc h                                         ; $6a12: $8c
    ld l, h                                       ; $6a13: $6c
    add b                                         ; $6a14: $80
    ld l, a                                       ; $6a15: $6f
    nop                                           ; $6a16: $00
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    xor c                                         ; $6a19: $a9
    add hl, bc                                    ; $6a1a: $09
    ld e, d                                       ; $6a1b: $5a
    ld h, d                                       ; $6a1c: $62
    ld [$7e5a], a                                 ; $6a1d: $ea $5a $7e
    db $fc                                        ; $6a20: $fc
    ret nz                                        ; $6a21: $c0

    rst $38                                       ; $6a22: $ff
    cp [hl]                                       ; $6a23: $be
    ld a, h                                       ; $6a24: $7c
    ld de, $008a                                  ; $6a25: $11 $8a $00
    pop de                                        ; $6a28: $d1
    ld l, e                                       ; $6a29: $6b
    ld de, $d089                                  ; $6a2a: $11 $89 $d0
    inc c                                         ; $6a2d: $0c
    ld [hl], d                                    ; $6a2e: $72
    ld b, a                                       ; $6a2f: $47
    ccf                                           ; $6a30: $3f
    ld c, [hl]                                    ; $6a31: $4e
    cp d                                          ; $6a32: $ba
    xor a                                         ; $6a33: $af
    and d                                         ; $6a34: $a2
    db $eb                                        ; $6a35: $eb
    ld [hl], a                                    ; $6a36: $77
    or $00                                        ; $6a37: $f6 $00
    sub l                                         ; $6a39: $95
    ld hl, $328f                                  ; $6a3a: $21 $8f $32
    push bc                                       ; $6a3d: $c5
    rlca                                          ; $6a3e: $07
    push bc                                       ; $6a3f: $c5
    cpl                                           ; $6a40: $2f
    ld b, b                                       ; $6a41: $40
    add sp, $06                                   ; $6a42: $e8 $06
    ld h, [hl]                                    ; $6a44: $66
    cp d                                          ; $6a45: $ba
    xor [hl]                                      ; $6a46: $ae
    cp d                                          ; $6a47: $ba
    dec b                                         ; $6a48: $05
    nop                                           ; $6a49: $00
    add a                                         ; $6a4a: $87
    jr nc, jr_05c_69cf                            ; $6a4b: $30 $82

    adc c                                         ; $6a4d: $89
    cp d                                          ; $6a4e: $ba
    or h                                          ; $6a4f: $b4
    jp z, Jump_05c_7266                           ; $6a50: $ca $66 $72

    ld e, d                                       ; $6a53: $5a
    sub [hl]                                      ; $6a54: $96
    ld b, [hl]                                    ; $6a55: $46
    ret c                                         ; $6a56: $d8

    or e                                          ; $6a57: $b3
    and l                                         ; $6a58: $a5
    ld h, [hl]                                    ; $6a59: $66
    nop                                           ; $6a5a: $00
    ld a, l                                       ; $6a5b: $7d
    rlca                                          ; $6a5c: $07
    ld b, b                                       ; $6a5d: $40
    ld sp, $358f                                  ; $6a5e: $31 $8f $35
    rst $20                                       ; $6a61: $e7
    ld l, b                                       ; $6a62: $68
    and h                                         ; $6a63: $a4
    ld l, e                                       ; $6a64: $6b
    ld [hl], h                                    ; $6a65: $74
    xor h                                         ; $6a66: $ac
    and h                                         ; $6a67: $a4
    ld de, $c6c3                                  ; $6a68: $11 $c3 $c6
    nop                                           ; $6a6b: $00
    or h                                          ; $6a6c: $b4
    set 0, b                                      ; $6a6d: $cb $c0
    rst $38                                       ; $6a6f: $ff
    ld a, $ef                                     ; $6a70: $3e $ef
    xor [hl]                                      ; $6a72: $ae
    ld l, c                                       ; $6a73: $69
    di                                            ; $6a74: $f3
    sbc c                                         ; $6a75: $99
    rlca                                          ; $6a76: $07
    db $eb                                        ; $6a77: $eb
    or e                                          ; $6a78: $b3
    ld h, a                                       ; $6a79: $67
    xor [hl]                                      ; $6a7a: $ae
    ld l, c                                       ; $6a7b: $69
    nop                                           ; $6a7c: $00
    nop                                           ; $6a7d: $00
    jp nc, Jump_05c_6cc0                          ; $6a7e: $d2 $c0 $6c

    or e                                          ; $6a81: $b3
    ld l, e                                       ; $6a82: $6b
    db $e4                                        ; $6a83: $e4
    db $ed                                        ; $6a84: $ed
    add b                                         ; $6a85: $80
    rst $08                                       ; $6a86: $cf
    ret nz                                        ; $6a87: $c0

    ld l, l                                       ; $6a88: $6d
    ld sp, hl                                     ; $6a89: $f9
    xor [hl]                                      ; $6a8a: $ae
    add l                                         ; $6a8b: $85
    ld a, [c]                                     ; $6a8c: $f2
    nop                                           ; $6a8d: $00
    ret nz                                        ; $6a8e: $c0

    ld [hl], a                                    ; $6a8f: $77
    cp l                                          ; $6a90: $bd
    ld l, l                                       ; $6a91: $6d
    pop af                                        ; $6a92: $f1
    xor $00                                       ; $6a93: $ee $00
    call $ffff                                    ; $6a95: $cd $ff $ff
    ret nz                                        ; $6a98: $c0

    cp b                                          ; $6a99: $b8
    cp a                                          ; $6a9a: $bf
    rst $38                                       ; $6a9b: $ff
    ld [hl], h                                    ; $6a9c: $74
    ld a, a                                       ; $6a9d: $7f
    nop                                           ; $6a9e: $00
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    ret nz                                        ; $6aa1: $c0

    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    call $dcca                                    ; $6aa7: $cd $ca $dc
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    nop                                           ; $6aaf: $00
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    nop                                           ; $6ac0: $00
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    halt                                          ; $6acf: $76
    ld a, [hl+]                                   ; $6ad0: $2a
    nop                                           ; $6ad1: $00
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    add b                                         ; $6adc: $80
    add [hl]                                      ; $6add: $86

jr_05c_6ade:
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    nop                                           ; $6ae0: $00
    rst $38                                       ; $6ae1: $ff
    add b                                         ; $6ae2: $80
    add b                                         ; $6ae3: $80
    add b                                         ; $6ae4: $80
    xor [hl]                                      ; $6ae5: $ae
    ld [hl], b                                    ; $6ae6: $70
    ld sp, $3131                                  ; $6ae7: $31 $31 $31
    ld [hl], a                                    ; $6aea: $77
    dec hl                                        ; $6aeb: $2b
    inc l                                         ; $6aec: $2c
    jr nz, @+$01                                  ; $6aed: $20 $ff

    db $e4                                        ; $6aef: $e4
    ld [hl+], a                                   ; $6af0: $22
    ld hl, $ff00                                  ; $6af1: $21 $00 $ff
    rst $38                                       ; $6af4: $ff
    jr nc, jr_05c_6ade                            ; $6af5: $30 $e7

    and $c0                                       ; $6af7: $e6 $c0
    ldh [$bf], a                                  ; $6af9: $e0 $bf
    ld [c], a                                     ; $6afb: $e2
    ret nz                                        ; $6afc: $c0

    rst $20                                       ; $6afd: $e7
    jr nz, jr_05c_6b10                            ; $6afe: $20 $10

    jp z, $c0ff                                   ; $6b00: $ca $ff $c0

    db $eb                                        ; $6b03: $eb
    ld e, $7e                                     ; $6b04: $1e $7e
    pop hl                                        ; $6b06: $e1
    ld de, $2112                                  ; $6b07: $11 $12 $21
    jr z, @+$80                                   ; $6b0a: $28 $7e

    push hl                                       ; $6b0c: $e5
    jp z, $c0ff                                   ; $6b0d: $ca $ff $c0

jr_05c_6b10:
    db $ec                                        ; $6b10: $ec
    ld a, [hl]                                    ; $6b11: $7e
    dec a                                         ; $6b12: $3d
    ld [c], a                                     ; $6b13: $e2
    ld de, $2712                                  ; $6b14: $11 $12 $27
    dec b                                         ; $6b17: $05
    dec b                                         ; $6b18: $05
    dec b                                         ; $6b19: $05
    ret nz                                        ; $6b1a: $c0

    rst $38                                       ; $6b1b: $ff
    cp $c0                                        ; $6b1c: $fe $c0
    pop af                                        ; $6b1e: $f1
    add b                                         ; $6b1f: $80
    and b                                         ; $6b20: $a0
    ld sp, $9731                                  ; $6b21: $31 $31 $97
    ld d, [hl]                                    ; $6b24: $56
    ld d, [hl]                                    ; $6b25: $56
    rst $08                                       ; $6b26: $cf
    ld d, a                                       ; $6b27: $57
    ld c, e                                       ; $6b28: $4b
    ld sp, $c00c                                  ; $6b29: $31 $0c $c0
    rst $38                                       ; $6b2c: $ff
    ld b, b                                       ; $6b2d: $40
    rst $28                                       ; $6b2e: $ef
    ld a, c                                       ; $6b2f: $79
    ld l, [hl]                                    ; $6b30: $6e
    rst $38                                       ; $6b31: $ff
    ld a, [hl-]                                   ; $6b32: $3a
    sbc h                                         ; $6b33: $9c
    sbc h                                         ; $6b34: $9c
    sub h                                         ; $6b35: $94
    jr nc, jr_05c_6b68                            ; $6b36: $30 $30

    jr nc, jr_05c_6b70                            ; $6b38: $30 $36

    or e                                          ; $6b3a: $b3
    ld c, c                                       ; $6b3b: $49
    dec c                                         ; $6b3c: $0d
    ret nz                                        ; $6b3d: $c0

    rst $38                                       ; $6b3e: $ff
    db $eb                                        ; $6b3f: $eb
    ld [$aa58], a                                 ; $6b40: $ea $58 $aa
    pop bc                                        ; $6b43: $c1
    ldh [$71], a                                  ; $6b44: $e0 $71
    rst $18                                       ; $6b46: $df
    ld l, l                                       ; $6b47: $6d
    ld l, l                                       ; $6b48: $6d
    sub h                                         ; $6b49: $94
    sub h                                         ; $6b4a: $94
    ld l, d                                       ; $6b4b: $6a
    ret nz                                        ; $6b4c: $c0

    ldh [rOCPS], a                                ; $6b4d: $e0 $6a
    add hl, sp                                    ; $6b4f: $39
    di                                            ; $6b50: $f3
    ld sp, $c008                                  ; $6b51: $31 $08 $c0
    rst $38                                       ; $6b54: $ff
    ld [$31e9], a                                 ; $6b55: $ea $e9 $31
    xor e                                         ; $6b58: $ab
    ld e, b                                       ; $6b59: $58
    xor d                                         ; $6b5a: $aa
    di                                            ; $6b5b: $f3
    add e                                         ; $6b5c: $83
    ld l, l                                       ; $6b5d: $6d
    rst $38                                       ; $6b5e: $ff
    ldh [$c1], a                                  ; $6b5f: $e0 $c1
    ld [c], a                                     ; $6b61: $e2
    ld l, l                                       ; $6b62: $6d
    ld d, d                                       ; $6b63: $52
    ld sp, $7c15                                  ; $6b64: $31 $15 $7c
    ret nz                                        ; $6b67: $c0

jr_05c_6b68:
    rst $38                                       ; $6b68: $ff
    ld [$14e9], a                                 ; $6b69: $ea $e9 $14
    inc d                                         ; $6b6c: $14
    dec d                                         ; $6b6d: $15
    xor e                                         ; $6b6e: $ab
    add hl, sp                                    ; $6b6f: $39

jr_05c_6b70:
    ret nz                                        ; $6b70: $c0

    pop hl                                        ; $6b71: $e1
    ld a, a                                       ; $6b72: $7f
    ld l, c                                       ; $6b73: $69
    jr nc, jr_05c_6ba6                            ; $6b74: $30 $30

    ld l, c                                       ; $6b76: $69
    ld l, l                                       ; $6b77: $6d
    ld l, l                                       ; $6b78: $6d
    ld d, e                                       ; $6b79: $53
    ret nz                                        ; $6b7a: $c0

    rst $38                                       ; $6b7b: $ff
    ld a, [hl]                                    ; $6b7c: $7e
    db $ec                                        ; $6b7d: $ec
    db $eb                                        ; $6b7e: $eb
    inc h                                         ; $6b7f: $24
    inc h                                         ; $6b80: $24
    rla                                           ; $6b81: $17
    ld sp, $324d                                  ; $6b82: $31 $4d $32
    ret nz                                        ; $6b85: $c0

    and $e7                                       ; $6b86: $e6 $e7
    add hl, sp                                    ; $6b88: $39
    ld sp, $c017                                  ; $6b89: $31 $17 $c0
    rst $38                                       ; $6b8c: $ff
    ld [$20e9], a                                 ; $6b8d: $ea $e9 $20
    jr nz, jr_05c_6ba8                            ; $6b90: $20 $16

    rst $38                                       ; $6b92: $ff
    dec d                                         ; $6b93: $15
    ld sp, $564d                                  ; $6b94: $31 $4d $56
    ld d, a                                       ; $6b97: $57
    ld d, [hl]                                    ; $6b98: $56
    ld d, [hl]                                    ; $6b99: $56
    ld [hl-], a                                   ; $6b9a: $32
    sbc [hl]                                      ; $6b9b: $9e
    add b                                         ; $6b9c: $80
    ldh [$36], a                                  ; $6b9d: $e0 $36
    ld c, c                                       ; $6b9f: $49
    dec d                                         ; $6ba0: $15

Call_05c_6ba1:
jr_05c_6ba1:
    ld d, $c0                                     ; $6ba1: $16 $c0
    rst $38                                       ; $6ba3: $ff
    ret nz                                        ; $6ba4: $c0

    db $eb                                        ; $6ba5: $eb

jr_05c_6ba6:
    jr z, jr_05c_6ba1                             ; $6ba6: $28 $f9

jr_05c_6ba8:
    rla                                           ; $6ba8: $17
    ld b, c                                       ; $6ba9: $41
    and b                                         ; $6baa: $a0
    ld a, $a0                                     ; $6bab: $3e $a0
    ld c, l                                       ; $6bad: $4d
    ld b, [hl]                                    ; $6bae: $46
    ld d, h                                       ; $6baf: $54
    ld b, [hl]                                    ; $6bb0: $46
    ld b, a                                       ; $6bb1: $47
    db $e3                                        ; $6bb2: $e3
    ld sp, $ba17                                  ; $6bb3: $31 $17 $ba
    and b                                         ; $6bb6: $a0
    jp z, $80ff                                   ; $6bb7: $ca $ff $80

    jp hl                                         ; $6bba: $e9


    jr nz, @+$18                                  ; $6bbb: $20 $16

    inc d                                         ; $6bbd: $14
    or [hl]                                       ; $6bbe: $b6
    rst $38                                       ; $6bbf: $ff

Call_05c_6bc0:
    ldh [rNR12], a                                ; $6bc0: $e0 $12
    ld de, $e1ba                                  ; $6bc2: $11 $ba $e1
    ld de, $8112                                  ; $6bc5: $11 $12 $81
    ldh [$0c], a                                  ; $6bc8: $e0 $0c
    ld a, h                                       ; $6bca: $7c
    jp z, $e8ff                                   ; $6bcb: $ca $ff $e8

    rst $20                                       ; $6bce: $e7
    ld hl, $1022                                  ; $6bcf: $21 $22 $10
    jr nz, @+$26                                  ; $6bd2: $20 $24

    rst $38                                       ; $6bd4: $ff
    ldh [$af], a                                  ; $6bd5: $e0 $af
    ld [hl+], a                                   ; $6bd7: $22
    ld hl, $1112                                  ; $6bd8: $21 $12 $11
    inc a                                         ; $6bdb: $3c
    and b                                         ; $6bdc: $a0
    ld [hl+], a                                   ; $6bdd: $22
    cp d                                          ; $6bde: $ba
    add b                                         ; $6bdf: $80
    dec c                                         ; $6be0: $0d
    or b                                          ; $6be1: $b0
    jp z, $e8ff                                   ; $6be2: $ca $ff $e8

    rst $20                                       ; $6be5: $e7
    call z, $cae4                                 ; $6be6: $cc $e4 $ca
    add b                                         ; $6be9: $80
    ld [hl+], a                                   ; $6bea: $22
    ld hl, $e1b4                                  ; $6beb: $21 $b4 $e1
    jr nz, jr_05c_6bf7                            ; $6bee: $20 $07

    jr nz, jr_05c_6bfa                            ; $6bf0: $20 $08

    ld sp, $ffca                                  ; $6bf2: $31 $ca $ff
    nop                                           ; $6bf5: $00
    ret z                                         ; $6bf6: $c8

jr_05c_6bf7:
    add $80                                       ; $6bf7: $c6 $80
    cp a                                          ; $6bf9: $bf

jr_05c_6bfa:
    db $e3                                        ; $6bfa: $e3
    ld b, b                                       ; $6bfb: $40
    add l                                         ; $6bfc: $85
    ld bc, $c015                                  ; $6bfd: $01 $15 $c0
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
    nop                                           ; $6c0d: $00
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
    nop                                           ; $6c1e: $00
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
    nop                                           ; $6c2f: $00
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
    nop                                           ; $6c40: $00
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
    nop                                           ; $6c51: $00
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
    nop                                           ; $6c62: $00
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
    nop                                           ; $6c73: $00
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
    nop                                           ; $6c84: $00
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
    nop                                           ; $6c95: $00
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
    nop                                           ; $6ca6: $00
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
    nop                                           ; $6cb7: $00
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff

Jump_05c_6cc0:
    rst $38                                       ; $6cc0: $ff
    db $f4                                        ; $6cc1: $f4
    nop                                           ; $6cc2: $00
    nop                                           ; $6cc3: $00
    nop                                           ; $6cc4: $00
    and l                                         ; $6cc5: $a5
    nop                                           ; $6cc6: $00
    rst $38                                       ; $6cc7: $ff
    push hl                                       ; $6cc8: $e5
    ld [hl-], a                                   ; $6cc9: $32
    or $e6                                        ; $6cca: $f6 $e6
    rst $30                                       ; $6ccc: $f7
    rst $20                                       ; $6ccd: $e7
    dec [hl]                                      ; $6cce: $35
    db $ec                                        ; $6ccf: $ec
    xor $37                                       ; $6cd0: $ee $37
    db $ec                                        ; $6cd2: $ec
    jp c, $c7f0                                   ; $6cd3: $da $f0 $c7

    add sp, $33                                   ; $6cd6: $e8 $33
    ld sp, $f2e0                                  ; $6cd8: $31 $e0 $f2
    ld [hl], $30                                  ; $6cdb: $36 $30
    scf                                           ; $6cdd: $37
    cp a                                          ; $6cde: $bf
    ld h, $20                                     ; $6cdf: $26 $20
    daa                                           ; $6ce1: $27
    db $10                                        ; $6ce2: $10
    ld d, $17                                     ; $6ce3: $16 $17
    jp nz, Jump_000_34f6                          ; $6ce5: $c2 $f6 $34

    rst $38                                       ; $6ce8: $ff
    ld [hl], $32                                  ; $6ce9: $36 $32
    jr nc, jr_05c_6d24                            ; $6ceb: $30 $37

    ld sp, $3133                                  ; $6ced: $31 $33 $31
    inc sp                                        ; $6cf0: $33
    nop                                           ; $6cf1: $00
    and b                                         ; $6cf2: $a0
    ei                                            ; $6cf3: $fb
    rst $38                                       ; $6cf4: $ff
    rst $28                                       ; $6cf5: $ef
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    nop                                           ; $6cf8: $00
    ld bc, $316d                                  ; $6cf9: $01 $6d $31
    ld l, l                                       ; $6cfc: $6d
    ld d, d                                       ; $6cfd: $52
    ld l, a                                       ; $6cfe: $6f
    ld a, c                                       ; $6cff: $79
    ld [hl], c                                    ; $6d00: $71
    ld a, [c]                                     ; $6d01: $f2
    inc sp                                        ; $6d02: $33
    ld c, e                                       ; $6d03: $4b
    dec de                                        ; $6d04: $1b
    dec h                                         ; $6d05: $25
    ld [bc], a                                    ; $6d06: $02

Jump_05c_6d07:
    ldh [rNR10], a                                ; $6d07: $e0 $10
    ret z                                         ; $6d09: $c8

    ld [bc], a                                    ; $6d0a: $02
    ld a, [c]                                     ; $6d0b: $f2
    inc sp                                        ; $6d0c: $33
    ld c, e                                       ; $6d0d: $4b
    dec de                                        ; $6d0e: $1b
    dec h                                         ; $6d0f: $25
    ld [bc], a                                    ; $6d10: $02
    ret nz                                        ; $6d11: $c0

    ld a, l                                       ; $6d12: $7d
    ldh [$7f], a                                  ; $6d13: $e0 $7f
    ld l, a                                       ; $6d15: $6f
    ld de, $1b4b                                  ; $6d16: $11 $4b $1b
    ld [$0825], sp                                ; $6d19: $08 $25 $08
    dec h                                         ; $6d1c: $25
    ld [$0825], sp                                ; $6d1d: $08 $25 $08
    dec h                                         ; $6d20: $25
    ld [$0825], sp                                ; $6d21: $08 $25 $08

jr_05c_6d24:
    dec h                                         ; $6d24: $25
    ld [$0825], sp                                ; $6d25: $08 $25 $08
    dec h                                         ; $6d28: $25
    ld [$0825], sp                                ; $6d29: $08 $25 $08
    dec h                                         ; $6d2c: $25
    ld [$0825], sp                                ; $6d2d: $08 $25 $08
    dec h                                         ; $6d30: $25
    db $dd                                        ; $6d31: $dd
    dec bc                                        ; $6d32: $0b
    rst $38                                       ; $6d33: $ff
    ld [c], a                                     ; $6d34: $e2
    ld l, e                                       ; $6d35: $6b
    ld l, e                                       ; $6d36: $6b
    ld c, e                                       ; $6d37: $4b
    rst $38                                       ; $6d38: $ff
    ldh [$0b], a                                  ; $6d39: $e0 $0b
    dec bc                                        ; $6d3b: $0b
    ccf                                           ; $6d3c: $3f
    dec hl                                        ; $6d3d: $2b
    dec hl                                        ; $6d3e: $2b
    inc c                                         ; $6d3f: $0c
    inc c                                         ; $6d40: $0c
    inc c                                         ; $6d41: $0c
    inc l                                         ; $6d42: $2c
    db $fc                                        ; $6d43: $fc
    ldh [$f9], a                                  ; $6d44: $e0 $f9
    ldh [$c7], a                                  ; $6d46: $e0 $c7
    ld c, h                                       ; $6d48: $4c
    dec bc                                        ; $6d49: $0b
    dec bc                                        ; $6d4a: $0b
    db $f4                                        ; $6d4b: $f4
    ldh [$fc], a                                  ; $6d4c: $e0 $fc
    pop hl                                        ; $6d4e: $e1
    ldh a, [$e1]                                  ; $6d4f: $f0 $e1
    inc l                                         ; $6d51: $2c
    ld c, h                                       ; $6d52: $4c
    adc a                                         ; $6d53: $8f
    inc c                                         ; $6d54: $0c
    ld c, h                                       ; $6d55: $4c
    ld c, h                                       ; $6d56: $4c
    ld c, h                                       ; $6d57: $4c
    and $e3                                       ; $6d58: $e6 $e3
    ld a, [$c1e9]                                 ; $6d5a: $fa $e9 $c1
    db $e4                                        ; $6d5d: $e4
    dec hl                                        ; $6d5e: $2b
    inc h                                         ; $6d5f: $24
    cp b                                          ; $6d60: $b8
    ldh [$be], a                                  ; $6d61: $e0 $be
    pop hl                                        ; $6d63: $e1
    dec hl                                        ; $6d64: $2b
    db $dd                                        ; $6d65: $dd
    ldh [$c0], a                                  ; $6d66: $e0 $c0
    db $e4                                        ; $6d68: $e4
    inc c                                         ; $6d69: $0c
    pop bc                                        ; $6d6a: $c1
    jp hl                                         ; $6d6b: $e9


    db $eb                                        ; $6d6c: $eb
    and $00                                       ; $6d6d: $e6 $00
    ret nz                                        ; $6d6f: $c0

    pop af                                        ; $6d70: $f1
    pop bc                                        ; $6d71: $c1
    ldh [$c0], a                                  ; $6d72: $e0 $c0
    pop hl                                        ; $6d74: $e1
    cp [hl]                                       ; $6d75: $be
    ldh [$8d], a                                  ; $6d76: $e0 $8d
    pop hl                                        ; $6d78: $e1
    add b                                         ; $6d79: $80
    ldh [$98], a                                  ; $6d7a: $e0 $98
    ld [c], a                                     ; $6d7c: $e2
    add c                                         ; $6d7d: $81
    rst $20                                       ; $6d7e: $e7
    inc e                                         ; $6d7f: $1c
    adc c                                         ; $6d80: $89
    ldh a, [$80]                                  ; $6d81: $f0 $80
    add sp, $2b                                   ; $6d83: $e8 $2b
    dec bc                                        ; $6d85: $0b
    ld l, e                                       ; $6d86: $6b
    ccf                                           ; $6d87: $3f
    ldh [rSTAT], a                                ; $6d88: $e0 $41
    ld [c], a                                     ; $6d8a: $e2

jr_05c_6d8b:
    dec a                                         ; $6d8b: $3d
    ldh [rP1], a                                  ; $6d8c: $e0 $00
    add b                                         ; $6d8e: $80
    rst $20                                       ; $6d8f: $e7
    ld b, c                                       ; $6d90: $41
    ld [c], a                                     ; $6d91: $e2
    add $f8                                       ; $6d92: $c6 $f8
    ret nz                                        ; $6d94: $c0

    rst $20                                       ; $6d95: $e7
    add l                                         ; $6d96: $85
    ld [c], a                                     ; $6d97: $e2
    ld [bc], a                                    ; $6d98: $02
    ldh [$7f], a                                  ; $6d99: $e0 $7f
    pop hl                                        ; $6d9b: $e1
    ld b, b                                       ; $6d9c: $40
    db $e3                                        ; $6d9d: $e3
    add b                                         ; $6d9e: $80
    ld [de], a                                    ; $6d9f: $12
    pop hl                                        ; $6da0: $e1
    ld a, a                                       ; $6da1: $7f
    add sp, $44                                   ; $6da2: $e8 $44
    ld a, [c]                                     ; $6da4: $f2
    reti                                          ; $6da5: $d9


    jp $e180                                      ; $6da6: $c3 $80 $e1


    ld b, e                                       ; $6da9: $43
    db $e3                                        ; $6daa: $e3
    or [hl]                                       ; $6dab: $b6
    pop bc                                        ; $6dac: $c1
    dec hl                                        ; $6dad: $2b
    nop                                           ; $6dae: $00
    ld b, b                                       ; $6daf: $40
    db $e3                                        ; $6db0: $e3
    cp l                                          ; $6db1: $bd
    jp nz, $cbc0                                  ; $6db2: $c2 $c0 $cb

    or l                                          ; $6db5: $b5
    push af                                       ; $6db6: $f5
    dec bc                                        ; $6db7: $0b
    pop hl                                        ; $6db8: $e1
    ld [bc], a                                    ; $6db9: $02
    db $e3                                        ; $6dba: $e3
    cp l                                          ; $6dbb: $bd
    pop bc                                        ; $6dbc: $c1
    ret nz                                        ; $6dbd: $c0

    ld [c], a                                     ; $6dbe: $e2
    ld hl, $0f6c                                  ; $6dbf: $21 $6c $0f
    db $e4                                        ; $6dc2: $e4
    ccf                                           ; $6dc3: $3f
    db $ec                                        ; $6dc4: $ec
    ret nz                                        ; $6dc5: $c0

    push af                                       ; $6dc6: $f5
    cp a                                          ; $6dc7: $bf
    db $e3                                        ; $6dc8: $e3
    ld c, e                                       ; $6dc9: $4b
    cp l                                          ; $6dca: $bd
    call nz, $e1c0                                ; $6dcb: $c4 $c0 $e1
    jr nz, jr_05c_6d8b                            ; $6dce: $20 $bb

    pop bc                                        ; $6dd0: $c1
    ld e, d                                       ; $6dd1: $5a
    and $48                                       ; $6dd2: $e6 $48
    pop bc                                        ; $6dd4: $c1

Jump_05c_6dd5:
    ld a, [hl]                                    ; $6dd5: $7e
    jp c, $c10e                                   ; $6dd6: $da $0e $c1

    inc l                                         ; $6dd9: $2c
    ld a, [hl-]                                   ; $6dda: $3a
    db $e3                                        ; $6ddb: $e3
    or a                                          ; $6ddc: $b7
    ret nz                                        ; $6ddd: $c0

    ret nz                                        ; $6dde: $c0

    ld a, [c]                                     ; $6ddf: $f2
    db $e3                                        ; $6de0: $e3
    adc c                                         ; $6de1: $89
    call nz, $c00e                                ; $6de2: $c4 $0e $c0
    ld a, a                                       ; $6de5: $7f
    jp hl                                         ; $6de6: $e9


    or l                                          ; $6de7: $b5
    and $f9                                       ; $6de8: $e6 $f9
    xor [hl]                                      ; $6dea: $ae
    ld c, h                                       ; $6deb: $4c
    ld c, h                                       ; $6dec: $4c
    rlca                                          ; $6ded: $07
    dec hl                                        ; $6dee: $2b
    dec hl                                        ; $6def: $2b
    dec hl                                        ; $6df0: $2b
    cp [hl]                                       ; $6df1: $be
    jp nz, $e2b2                                  ; $6df2: $c2 $b2 $e2

    ld c, $d0                                     ; $6df5: $0e $d0
    or l                                          ; $6df7: $b5
    db $eb                                        ; $6df8: $eb
    or e                                          ; $6df9: $b3
    rst $08                                       ; $6dfa: $cf
    ld b, b                                       ; $6dfb: $40
    add h                                         ; $6dfc: $84
    and b                                         ; $6dfd: $a0
    ld a, [hl]                                    ; $6dfe: $7e
    jp nz, $a1c0                                  ; $6dff: $c2 $c0 $a1

    adc $bb                                       ; $6e02: $ce $bb
    or c                                          ; $6e04: $b1
    xor e                                         ; $6e05: $ab
    ld e, l                                       ; $6e06: $5d
    db $e4                                        ; $6e07: $e4
    ld c, h                                       ; $6e08: $4c
    ld c, h                                       ; $6e09: $4c
    ldh [$0a], a                                  ; $6e0a: $e0 $0a
    ld bc, $6ce2                                  ; $6e0c: $01 $e2 $6c
    ld [hl-], a                                   ; $6e0f: $32
    pop hl                                        ; $6e10: $e1
    ld c, e                                       ; $6e11: $4b
    ld d, l                                       ; $6e12: $55
    and b                                         ; $6e13: $a0
    res 6, h                                      ; $6e14: $cb $b4
    ld a, b                                       ; $6e16: $78
    xor l                                         ; $6e17: $ad
    adc l                                         ; $6e18: $8d
    pop hl                                        ; $6e19: $e1
    nop                                           ; $6e1a: $00
    ld d, d                                       ; $6e1b: $52
    jp nz, $a307                                  ; $6e1c: $c2 $07 $a3

    pop bc                                        ; $6e1f: $c1
    ldh [$f2], a                                  ; $6e20: $e0 $f2
    pop bc                                        ; $6e22: $c1
    ret                                           ; $6e23: $c9


    cp [hl]                                       ; $6e24: $be
    rst $30                                       ; $6e25: $f7
    add [hl]                                      ; $6e26: $86
    jp z, $e981                                   ; $6e27: $ca $81 $e9

    adc h                                         ; $6e2a: $8c
    ld bc, $c06c                                  ; $6e2b: $01 $6c $c0
    jp nz, $a235                                  ; $6e2e: $c2 $35 $a2

    ld e, $ea                                     ; $6e31: $1e $ea
    ei                                            ; $6e33: $fb
    sub d                                         ; $6e34: $92
    dec bc                                        ; $6e35: $0b
    and c                                         ; $6e36: $a1
    rst $08                                       ; $6e37: $cf
    call nz, $aba6                                ; $6e38: $c4 $a6 $ab
    ldh a, [$cf]                                  ; $6e3b: $f0 $cf
    adc l                                         ; $6e3d: $8d
    cp c                                          ; $6e3e: $b9
    sub h                                         ; $6e3f: $94
    ld c, e                                       ; $6e40: $4b
    and e                                         ; $6e41: $a3
    rst $38                                       ; $6e42: $ff
    add sp, $6c                                   ; $6e43: $e8 $6c
    ld l, h                                       ; $6e45: $6c
    dec bc                                        ; $6e46: $0b
    inc l                                         ; $6e47: $2c
    nop                                           ; $6e48: $00
    ld bc, $3ef2                                  ; $6e49: $01 $f2 $3e
    add d                                         ; $6e4c: $82
    ld a, a                                       ; $6e4d: $7f
    or b                                          ; $6e4e: $b0
    rst $38                                       ; $6e4f: $ff
    and e                                         ; $6e50: $a3
    ld c, d                                       ; $6e51: $4a
    and h                                         ; $6e52: $a4
    add l                                         ; $6e53: $85
    ld a, [c]                                     ; $6e54: $f2
    ld e, $c3                                     ; $6e55: $1e $c3
    or h                                          ; $6e57: $b4
    sbc b                                         ; $6e58: $98
    ret nz                                        ; $6e59: $c0

    push de                                       ; $6e5a: $d5
    ld l, h                                       ; $6e5b: $6c
    ld a, [$0181]                                 ; $6e5c: $fa $81 $01
    db $ed                                        ; $6e5f: $ed
    rst $10                                       ; $6e60: $d7
    and [hl]                                      ; $6e61: $a6
    xor l                                         ; $6e62: $ad
    rst $18                                       ; $6e63: $df
    add c                                         ; $6e64: $81
    ld h, c                                       ; $6e65: $61
    ld a, [bc]                                    ; $6e66: $0a
    ld a, [bc]                                    ; $6e67: $0a
    ld bc, $db08                                  ; $6e68: $01 $08 $db
    rst $38                                       ; $6e6b: $ff
    ld e, d                                       ; $6e6c: $5a
    ld h, d                                       ; $6e6d: $62
    ld e, $9c                                     ; $6e6e: $1e $9c
    ld c, e                                       ; $6e70: $4b
    cp b                                          ; $6e71: $b8
    cp e                                          ; $6e72: $bb
    db $ec                                        ; $6e73: $ec
    dec sp                                        ; $6e74: $3b
    add [hl]                                      ; $6e75: $86
    ld [hl-], a                                   ; $6e76: $32
    add h                                         ; $6e77: $84
    jr nc, jr_05c_6e7a                            ; $6e78: $30 $00

jr_05c_6e7a:
    xor [hl]                                      ; $6e7a: $ae
    sbc a                                         ; $6e7b: $9f
    rst $30                                       ; $6e7c: $f7
    or $47                                        ; $6e7d: $f6 $47
    or $66                                        ; $6e7f: $f6 $66
    ld a, [bc]                                    ; $6e81: $0a
    ld a, [bc]                                    ; $6e82: $0a
    ccf                                           ; $6e83: $3f
    adc $70                                       ; $6e84: $ce $70
    ld [hl], e                                    ; $6e86: $73
    nop                                           ; $6e87: $00
    and d                                         ; $6e88: $a2
    ld b, [hl]                                    ; $6e89: $46
    call nz, $6be8                                ; $6e8a: $c4 $e8 $6b
    ld b, d                                       ; $6e8d: $42
    ret nz                                        ; $6e8e: $c0

    rst $38                                       ; $6e8f: $ff
    nop                                           ; $6e90: $00
    rst $20                                       ; $6e91: $e7
    sub b                                         ; $6e92: $90
    ld l, a                                       ; $6e93: $6f
    ld d, h                                       ; $6e94: $54
    ld c, [hl]                                    ; $6e95: $4e
    ld [hl], $78                                  ; $6e96: $36 $78
    nop                                           ; $6e98: $00
    sub b                                         ; $6e99: $90
    ld [hl], e                                    ; $6e9a: $73
    ret nz                                        ; $6e9b: $c0

    ld a, [c]                                     ; $6e9c: $f2
    cp $2e                                        ; $6e9d: $fe $2e
    sbc d                                         ; $6e9f: $9a
    ld c, l                                       ; $6ea0: $4d
    sub b                                         ; $6ea1: $90
    ld h, a                                       ; $6ea2: $67
    nop                                           ; $6ea3: $00
    xor l                                         ; $6ea4: $ad
    dec sp                                        ; $6ea5: $3b
    ld e, d                                       ; $6ea6: $5a
    sub b                                         ; $6ea7: $90
    ld [hl], c                                    ; $6ea8: $71
    nop                                           ; $6ea9: $00
    ccf                                           ; $6eaa: $3f
    rst $38                                       ; $6eab: $ff
    sbc a                                         ; $6eac: $9f
    rst $38                                       ; $6ead: $ff
    ret nz                                        ; $6eae: $c0

    cp $d5                                        ; $6eaf: $fe $d5
    ld h, a                                       ; $6eb1: $67
    ret nz                                        ; $6eb2: $c0

    cp $40                                        ; $6eb3: $fe $40
    inc sp                                        ; $6eb5: $33
    cp e                                          ; $6eb6: $bb
    db $eb                                        ; $6eb7: $eb
    ld [hl], l                                    ; $6eb8: $75
    cp a                                          ; $6eb9: $bf
    nop                                           ; $6eba: $00
    ret nz                                        ; $6ebb: $c0

    ret nc                                        ; $6ebc: $d0

    call nc, $c094                                ; $6ebd: $d4 $94 $c0
    ld e, a                                       ; $6ec0: $5f
    jp $bb47                                      ; $6ec1: $c3 $47 $bb


    ei                                            ; $6ec4: $fb
    ld b, l                                       ; $6ec5: $45
    sbc c                                         ; $6ec6: $99
    ld bc, $e5ff                                  ; $6ec7: $01 $ff $e5
    rst $18                                       ; $6eca: $df
    nop                                           ; $6ecb: $00
    ld bc, $40ff                                  ; $6ecc: $01 $ff $40
    rla                                           ; $6ecf: $17
    ld bc, $ffff                                  ; $6ed0: $01 $ff $ff
    rst $38                                       ; $6ed3: $ff
    cp e                                          ; $6ed4: $bb
    db $fd                                        ; $6ed5: $fd
    sbc a                                         ; $6ed6: $9f
    ld hl, sp+$45                                 ; $6ed7: $f8 $45
    rst $18                                       ; $6ed9: $df
    add l                                         ; $6eda: $85
    cp $00                                        ; $6edb: $fe $00
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    dec b                                         ; $6edf: $05
    cp h                                          ; $6ee0: $bc
    call nc, $1d53                                ; $6ee1: $d4 $53 $1d
    ld hl, $dfe5                                  ; $6ee4: $21 $e5 $df
    ld h, $1b                                     ; $6ee7: $26 $1b
    ld h, a                                       ; $6ee9: $67
    ld b, d                                       ; $6eea: $42
    cp e                                          ; $6eeb: $bb
    ld a, [$0100]                                 ; $6eec: $fa $00 $01
    rst $38                                       ; $6eef: $ff
    adc e                                         ; $6ef0: $8b
    ld e, a                                       ; $6ef1: $5f
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    ld b, l                                       ; $6ef4: $45
    rst $18                                       ; $6ef5: $df
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    nop                                           ; $6efe: $00
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
    nop                                           ; $6f0f: $00
    add e                                         ; $6f10: $83
    cp a                                          ; $6f11: $bf
    db $dd                                        ; $6f12: $dd
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
    nop                                           ; $6f20: $00
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
    nop                                           ; $6f31: $00
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
    nop                                           ; $6f40: $00
    cp a                                          ; $6f41: $bf
    nop                                           ; $6f42: $00
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
    nop                                           ; $6f4d: $00
    ld b, e                                       ; $6f4e: $43
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    db $fd                                        ; $6f52: $fd
    ld c, e                                       ; $6f53: $4b
    rst $38                                       ; $6f54: $ff
    ldh [$50], a                                  ; $6f55: $e0 $50
    ld hl, $2a3d                                  ; $6f57: $21 $3d $2a
    ld b, l                                       ; $6f5a: $45
    ld b, h                                       ; $6f5b: $44
    rst $38                                       ; $6f5c: $ff
    dec hl                                        ; $6f5d: $2b
    scf                                           ; $6f5e: $37
    ld hl, $5021                                  ; $6f5f: $21 $21 $50
    ld c, e                                       ; $6f62: $4b
    ld e, $00                                     ; $6f63: $1e $00
    add hl, de                                    ; $6f65: $19
    nop                                           ; $6f66: $00
    db $fd                                        ; $6f67: $fd
    ldh [$fe], a                                  ; $6f68: $e0 $fe
    ld [c], a                                     ; $6f6a: $e2
    sub b                                         ; $6f6b: $90
    sub b                                         ; $6f6c: $90
    ei                                            ; $6f6d: $fb
    pop hl                                        ; $6f6e: $e1
    di                                            ; $6f6f: $f3
    db $e4                                        ; $6f70: $e4
    ld sp, hl                                     ; $6f71: $f9
    push af                                       ; $6f72: $f5
    cp $c1                                        ; $6f73: $fe $c1
    db $e3                                        ; $6f75: $e3
    ld [hl+], a                                   ; $6f76: $22
    ld e, e                                       ; $6f77: $5b
    jr nz, jr_05c_6f9a                            ; $6f78: $20 $20

    ld e, e                                       ; $6f7a: $5b
    ld h, $36                                     ; $6f7b: $26 $36
    add a                                         ; $6f7d: $87
    dec a                                         ; $6f7e: $3d
    ld hl, $c050                                  ; $6f7f: $21 $50 $c0
    jp hl                                         ; $6f82: $e9


    pop bc                                        ; $6f83: $c1
    rst $38                                       ; $6f84: $ff
    ret nz                                        ; $6f85: $c0

    pop hl                                        ; $6f86: $e1
    pop bc                                        ; $6f87: $c1
    pop hl                                        ; $6f88: $e1
    ld e, c                                       ; $6f89: $59
    ld a, $c0                                     ; $6f8a: $3e $c0
    pop hl                                        ; $6f8c: $e1
    ld e, c                                       ; $6f8d: $59
    jr nz, @+$2b                                  ; $6f8e: $20 $29

    ld hl, $8021                                  ; $6f90: $21 $21 $80
    rst $20                                       ; $6f93: $e7
    add c                                         ; $6f94: $81
    rst $38                                       ; $6f95: $ff
    cp $80                                        ; $6f96: $fe $80
    db $e3                                        ; $6f98: $e3
    ld d, c                                       ; $6f99: $51

jr_05c_6f9a:
    ld hl, $2029                                  ; $6f9a: $21 $29 $20
    jr nz, jr_05c_6ff9                            ; $6f9d: $20 $5a

    ld e, h                                       ; $6f9f: $5c
    ccf                                           ; $6fa0: $3f
    ld e, h                                       ; $6fa1: $5c
    ld e, d                                       ; $6fa2: $5a
    jr nz, jr_05c_6fc5                            ; $6fa3: $20 $20

    jr c, @+$3b                                   ; $6fa5: $38 $39

    ret nz                                        ; $6fa7: $c0

jr_05c_6fa8:
    db $ed                                        ; $6fa8: $ed
    rst $38                                       ; $6fa9: $ff
    cp $be                                        ; $6faa: $fe $be
    ret nz                                        ; $6fac: $c0

    pop hl                                        ; $6fad: $e1
    ld b, d                                       ; $6fae: $42
    ld e, b                                       ; $6faf: $58
    jr nz, @+$22                                  ; $6fb0: $20 $20

    ld e, b                                       ; $6fb2: $58
    db $fc                                        ; $6fb3: $fc
    ldh [rNR41], a                                ; $6fb4: $e0 $20
    jr nz, @+$81                                  ; $6fb6: $20 $7f

    ldh [rP1], a                                  ; $6fb8: $e0 $00
    rst $38                                       ; $6fba: $ff
    add b                                         ; $6fbb: $80
    ldh a, [$84]                                  ; $6fbc: $f0 $84
    pop hl                                        ; $6fbe: $e1
    cp l                                          ; $6fbf: $bd
    ld [c], a                                     ; $6fc0: $e2
    ld b, d                                       ; $6fc1: $42
    ret nz                                        ; $6fc2: $c0

    ld sp, hl                                     ; $6fc3: $f9
    or l                                          ; $6fc4: $b5

jr_05c_6fc5:
    ld a, [c]                                     ; $6fc5: $f2
    ld h, $82                                     ; $6fc6: $26 $82
    pop bc                                        ; $6fc8: $c1
    daa                                           ; $6fc9: $27
    ld h, $04                                     ; $6fca: $26 $04
    ldh [$3d], a                                  ; $6fcc: $e0 $3d
    ld [c], a                                     ; $6fce: $e2
    ld b, e                                       ; $6fcf: $43
    add b                                         ; $6fd0: $80
    xor $81                                       ; $6fd1: $ee $81
    ret z                                         ; $6fd3: $c8

    inc a                                         ; $6fd4: $3c
    ret nz                                        ; $6fd5: $c0

    db $f4                                        ; $6fd6: $f4
    ld b, c                                       ; $6fd7: $41
    ret nz                                        ; $6fd8: $c0

    scf                                           ; $6fd9: $37
    ld [hl], $44                                  ; $6fda: $36 $44
    ld [hl-], a                                   ; $6fdc: $32
    cp l                                          ; $6fdd: $bd
    jp nz, $e340                                  ; $6fde: $c2 $40 $e3

    inc [hl]                                      ; $6fe1: $34
    rlca                                          ; $6fe2: $07
    rst $38                                       ; $6fe3: $ff
    dec hl                                        ; $6fe4: $2b
    rst $00                                       ; $6fe5: $c7
    dec de                                        ; $6fe6: $1b
    rst $38                                       ; $6fe7: $ff
    pop hl                                        ; $6fe8: $e1
    add hl, de                                    ; $6fe9: $19
    jr jr_05c_6fa8                                ; $6fea: $18 $bc

    ret nz                                        ; $6fec: $c0

    dec a                                         ; $6fed: $3d
    ret nz                                        ; $6fee: $c0

    pop af                                        ; $6fef: $f1
    ld [hl-], a                                   ; $6ff0: $32
    ret nz                                        ; $6ff1: $c0

    call nz, $dfc5                                ; $6ff2: $c4 $c5 $df
    ld [$01ac], a                                 ; $6ff5: $ea $ac $01
    ld a, [bc]                                    ; $6ff8: $0a

jr_05c_6ff9:
    dec a                                         ; $6ff9: $3d
    ld [hl], $8f                                  ; $6ffa: $36 $8f
    ld h, $5c                                     ; $6ffc: $26 $5c
    ld h, $2c                                     ; $6ffe: $26 $2c
    ld b, b                                       ; $7000: $40
    ret                                           ; $7001: $c9


    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    and l                                         ; $7004: $a5
    xor b                                         ; $7005: $a8
    add hl, bc                                    ; $7006: $09
    adc a                                         ; $7007: $8f
    ld hl, $3721                                  ; $7008: $21 $21 $37
    ld b, [hl]                                    ; $700b: $46
    ld a, a                                       ; $700c: $7f
    and b                                         ; $700d: $a0
    ret nz                                        ; $700e: $c0

    rst $38                                       ; $700f: $ff
    ld b, b                                       ; $7010: $40
    rst $28                                       ; $7011: $ef
    ld bc, $7f12                                  ; $7012: $01 $12 $7f
    pop hl                                        ; $7015: $e1
    inc bc                                        ; $7016: $03
    call nz, $c1e0                                ; $7017: $c4 $e0 $c1
    ldh [$03], a                                  ; $701a: $e0 $03
    di                                            ; $701c: $f3
    ldh [rLCDC], a                                ; $701d: $e0 $40
    ldh [$c8], a                                  ; $701f: $e0 $c8
    rst $38                                       ; $7021: $ff
    inc l                                         ; $7022: $2c
    add hl, hl                                    ; $7023: $29
    and l                                         ; $7024: $a5
    call z, Call_000_00e4                         ; $7025: $cc $e4 $00
    ld bc, $c1f9                                  ; $7028: $01 $f9 $c1
    add hl, de                                    ; $702b: $19
    or h                                          ; $702c: $b4
    ld [c], a                                     ; $702d: $e2
    ret nz                                        ; $702e: $c0

    rst $38                                       ; $702f: $ff
    ld a, $ec                                     ; $7030: $3e $ec
    adc b                                         ; $7032: $88
    ld d, d                                       ; $7033: $52
    ld d, d                                       ; $7034: $52
    ld hl, $0921                                  ; $7035: $21 $21 $09
    inc [hl]                                      ; $7038: $34
    db $ec                                        ; $7039: $ec
    add $a2                                       ; $703a: $c6 $a2
    ld [$cebc], sp                                ; $703c: $08 $bc $ce
    or [hl]                                       ; $703f: $b6
    or e                                          ; $7040: $b3
    add d                                         ; $7041: $82
    add c                                         ; $7042: $81
    ld a, [bc]                                    ; $7043: $0a
    ld a, $e1                                     ; $7044: $3e $e1
    or h                                          ; $7046: $b4
    ret z                                         ; $7047: $c8

    adc d                                         ; $7048: $8a
    rst $38                                       ; $7049: $ff
    add b                                         ; $704a: $80
    adc h                                         ; $704b: $8c
    inc bc                                        ; $704c: $03
    jr jr_05c_7068                                ; $704d: $18 $19

    add hl, sp                                    ; $704f: $39
    jp nz, $c534                                  ; $7050: $c2 $34 $c5

    jp z, Jump_05c_69ff                           ; $7053: $ca $ff $69

    cp $ff                                        ; $7056: $fe $ff
    rst $38                                       ; $7058: $ff
    cp e                                          ; $7059: $bb
    db $eb                                        ; $705a: $eb
    ld hl, sp-$2b                                 ; $705b: $f8 $d5
    adc d                                         ; $705d: $8a
    ld bc, $fff2                                  ; $705e: $01 $f2 $ff
    rst $38                                       ; $7061: $ff
    ld bc, $0302                                  ; $7062: $01 $02 $03
    inc b                                         ; $7065: $04
    dec b                                         ; $7066: $05
    rst $38                                       ; $7067: $ff

jr_05c_7068:
    ld b, $07                                     ; $7068: $06 $07
    ld [$0a09], sp                                ; $706a: $08 $09 $0a
    dec bc                                        ; $706d: $0b
    inc c                                         ; $706e: $0c
    dec c                                         ; $706f: $0d
    di                                            ; $7070: $f3
    ld c, $0f                                     ; $7071: $0e $0f
    rst $08                                       ; $7073: $cf
    rst $38                                       ; $7074: $ff
    push hl                                       ; $7075: $e5
    rl b                                          ; $7076: $cb $10
    ld de, $1312                                  ; $7078: $11 $12 $13
    rst $38                                       ; $707b: $ff
    inc d                                         ; $707c: $14
    dec d                                         ; $707d: $15
    ld d, $17                                     ; $707e: $16 $17
    jr jr_05c_709b                                ; $7080: $18 $19

    ld a, [de]                                    ; $7082: $1a
    dec de                                        ; $7083: $1b
    rst $08                                       ; $7084: $cf
    inc e                                         ; $7085: $1c
    dec e                                         ; $7086: $1d
    ld e, $1f                                     ; $7087: $1e $1f
    adc $ff                                       ; $7089: $ce $ff
    and l                                         ; $708b: $a5
    sla b                                         ; $708c: $cb $20
    ld hl, $22ff                                  ; $708e: $21 $ff $22
    inc hl                                        ; $7091: $23
    inc h                                         ; $7092: $24
    dec h                                         ; $7093: $25
    ld h, $27                                     ; $7094: $26 $27
    jr z, jr_05c_70c1                             ; $7096: $28 $29

    ccf                                           ; $7098: $3f
    ld a, [hl+]                                   ; $7099: $2a
    dec hl                                        ; $709a: $2b

jr_05c_709b:
    inc l                                         ; $709b: $2c
    dec l                                         ; $709c: $2d
    ld l, $2f                                     ; $709d: $2e $2f
    adc $ff                                       ; $709f: $ce $ff
    ld h, l                                       ; $70a1: $65
    set 7, a                                      ; $70a2: $cb $ff
    jr nc, @+$33                                  ; $70a4: $30 $31

    ld [hl-], a                                   ; $70a6: $32
    inc sp                                        ; $70a7: $33
    inc [hl]                                      ; $70a8: $34
    dec [hl]                                      ; $70a9: $35
    ld [hl], $37                                  ; $70aa: $36 $37
    rst $38                                       ; $70ac: $ff
    jr c, jr_05c_70e8                             ; $70ad: $38 $39

    ld a, [hl-]                                   ; $70af: $3a
    dec sp                                        ; $70b0: $3b
    inc a                                         ; $70b1: $3c
    dec a                                         ; $70b2: $3d
    ld a, $3f                                     ; $70b3: $3e $3f
    db $fc                                        ; $70b5: $fc
    sub [hl]                                      ; $70b6: $96
    rst $18                                       ; $70b7: $df
    dec h                                         ; $70b8: $25
    bit 0, b                                      ; $70b9: $cb $40
    ld b, c                                       ; $70bb: $41
    ld b, d                                       ; $70bc: $42
    ld b, e                                       ; $70bd: $43
    ld b, h                                       ; $70be: $44
    ld b, l                                       ; $70bf: $45
    rst $38                                       ; $70c0: $ff

jr_05c_70c1:
    ld b, [hl]                                    ; $70c1: $46
    ld b, a                                       ; $70c2: $47
    ld c, b                                       ; $70c3: $48
    ld c, c                                       ; $70c4: $49
    ld c, d                                       ; $70c5: $4a
    ld c, e                                       ; $70c6: $4b
    ld c, h                                       ; $70c7: $4c
    ld c, l                                       ; $70c8: $4d
    inc bc                                        ; $70c9: $03
    ld c, [hl]                                    ; $70ca: $4e
    ld c, a                                       ; $70cb: $4f
    ret nz                                        ; $70cc: $c0

    rst $38                                       ; $70cd: $ff
    ld a, e                                       ; $70ce: $7b
    jp c, $ffc1                                   ; $70cf: $da $c1 $ff

    dec sp                                        ; $70d2: $3b
    jp nc, $bfd7                                  ; $70d3: $d2 $d7 $bf

    set 7, a                                      ; $70d6: $cb $ff
    nop                                           ; $70d8: $00
    sub b                                         ; $70d9: $90
    rst $38                                       ; $70da: $ff
    cp e                                          ; $70db: $bb
    rst $38                                       ; $70dc: $ff
    xor a                                         ; $70dd: $af
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    ret nz                                        ; $70e1: $c0

    rst $38                                       ; $70e2: $ff
    xor e                                         ; $70e3: $ab
    rst $38                                       ; $70e4: $ff
    xor e                                         ; $70e5: $ab
    rst $38                                       ; $70e6: $ff
    cp e                                          ; $70e7: $bb

jr_05c_70e8:
    rst $38                                       ; $70e8: $ff
    nop                                           ; $70e9: $00
    ld c, e                                       ; $70ea: $4b
    db $dd                                        ; $70eb: $dd
    ld bc, $bbff                                  ; $70ec: $01 $ff $bb
    rst $38                                       ; $70ef: $ff
    cp e                                          ; $70f0: $bb
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    nop                                           ; $70fa: $00
    add b                                         ; $70fb: $80
    adc $46                                       ; $70fc: $ce $46
    rst $38                                       ; $70fe: $ff
    cp e                                          ; $70ff: $bb
    rst $38                                       ; $7100: $ff
    cp e                                          ; $7101: $bb
    ei                                            ; $7102: $fb
    dec sp                                        ; $7103: $3b
    jr @-$7a                                      ; $7104: $18 $84

    rst $38                                       ; $7106: $ff
    nop                                           ; $7107: $00
    rst $18                                       ; $7108: $df
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    nop                                           ; $710b: $00
    ld b, l                                       ; $710c: $45
    rst $18                                       ; $710d: $df
    rst $20                                       ; $710e: $e7
    sbc a                                         ; $710f: $9f
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    and c                                         ; $7112: $a1
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    nop                                           ; $711c: $00
    ld b, l                                       ; $711d: $45
    rst $18                                       ; $711e: $df
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
    nop                                           ; $712d: $00
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
    nop                                           ; $713e: $00
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
    nop                                           ; $714f: $00
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
    nop                                           ; $7160: $00
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
    nop                                           ; $7171: $00
    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    push af                                       ; $7175: $f5
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    nop                                           ; $7178: $00
    call $ff00                                    ; $7179: $cd $00 $ff
    jp hl                                         ; $717c: $e9


    scf                                           ; $717d: $37
    ld [hl-], a                                   ; $717e: $32
    pop af                                        ; $717f: $f1
    ld [$ffff], a                                 ; $7180: $ea $ff $ff
    inc sp                                        ; $7183: $33
    ld sp, $dcfe                                  ; $7184: $31 $fe $dc
    ld a, [c]                                     ; $7187: $f2
    ld [hl], $30                                  ; $7188: $36 $30
    scf                                           ; $718a: $37
    ld h, $20                                     ; $718b: $26 $20
    daa                                           ; $718d: $27
    db $10                                        ; $718e: $10
    ei                                            ; $718f: $fb
    ld d, $17                                     ; $7190: $16 $17
    cp [hl]                                       ; $7192: $be
    or $34                                        ; $7193: $f6 $34
    ld [hl], $32                                  ; $7195: $36 $32
    jr nc, @+$39                                  ; $7197: $30 $37

    rrca                                          ; $7199: $0f
    ld sp, $3133                                  ; $719a: $31 $33 $31
    inc sp                                        ; $719d: $33
    sbc h                                         ; $719e: $9c
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    ei                                            ; $71a1: $fb
    nop                                           ; $71a2: $00
    nop                                           ; $71a3: $00
    nop                                           ; $71a4: $00
    xor l                                         ; $71a5: $ad
    ld [hl], c                                    ; $71a6: $71
    db $dd                                        ; $71a7: $dd
    ld [hl], c                                    ; $71a8: $71
    ld l, [hl]                                    ; $71a9: $6e
    ld [hl], e                                    ; $71aa: $73
    ld [de], a                                    ; $71ab: $12
    ld [hl], l                                    ; $71ac: $75
    ld [$c503], a                                 ; $71ad: $ea $03 $c5
    ld b, $e2                                     ; $71b0: $06 $e2
    ld bc, $00a0                                  ; $71b2: $01 $a0 $00
    ld [$f003], a                                 ; $71b5: $ea $03 $f0
    inc bc                                        ; $71b8: $03
    push bc                                       ; $71b9: $c5
    ld b, $e2                                     ; $71ba: $06 $e2
    ld bc, $7d40                                  ; $71bc: $01 $40 $7d
    ret nz                                        ; $71bf: $c0

    ld a, [hl]                                    ; $71c0: $7e
    ld [$c503], a                                 ; $71c1: $ea $03 $c5
    ld b, $08                                     ; $71c4: $06 $08
    dec h                                         ; $71c6: $25
    ld [$0825], sp                                ; $71c7: $08 $25 $08
    dec h                                         ; $71ca: $25
    ld [$0825], sp                                ; $71cb: $08 $25 $08
    dec h                                         ; $71ce: $25
    ld [$0825], sp                                ; $71cf: $08 $25 $08
    dec h                                         ; $71d2: $25
    ld [$0825], sp                                ; $71d3: $08 $25 $08
    dec h                                         ; $71d6: $25
    ld [$0825], sp                                ; $71d7: $08 $25 $08
    dec h                                         ; $71da: $25
    ld [$df25], sp                                ; $71db: $08 $25 $df
    inc c                                         ; $71de: $0c
    inc c                                         ; $71df: $0c
    inc c                                         ; $71e0: $0c
    ld l, h                                       ; $71e1: $6c
    dec bc                                        ; $71e2: $0b
    rst $38                                       ; $71e3: $ff
    add sp, $4c                                   ; $71e4: $e8 $4c
    inc l                                         ; $71e6: $2c
    jp $2c2c                                      ; $71e7: $c3 $2c $2c


    db $ec                                        ; $71ea: $ec
    ldh [rIE], a                                  ; $71eb: $e0 $ff
    rst $38                                       ; $71ed: $ff
    rst $20                                       ; $71ee: $e7
    and $c1                                       ; $71ef: $e6 $c1
    ld [$2b0b], a                                 ; $71f1: $ea $0b $2b
    ld hl, sp-$41                                 ; $71f4: $f8 $bf
    ldh [$cc], a                                  ; $71f6: $e0 $cc
    rst $38                                       ; $71f8: $ff
    pop bc                                        ; $71f9: $c1
    rst $28                                       ; $71fa: $ef
    ld c, e                                       ; $71fb: $4b
    dec bc                                        ; $71fc: $0b
    ld l, e                                       ; $71fd: $6b
    ld l, e                                       ; $71fe: $6b
    ld c, e                                       ; $71ff: $4b
    pop hl                                        ; $7200: $e1
    ld c, e                                       ; $7201: $4b
    ret nz                                        ; $7202: $c0

    ldh [$bf], a                                  ; $7203: $e0 $bf
    ldh [$cb], a                                  ; $7205: $e0 $cb
    rst $38                                       ; $7207: $ff
    add d                                         ; $7208: $82
    rst $28                                       ; $7209: $ef
    ld l, e                                       ; $720a: $6b
    ld l, e                                       ; $720b: $6b
    ld l, e                                       ; $720c: $6b
    inc c                                         ; $720d: $0c
    cp e                                          ; $720e: $bb
    ldh [$be], a                                  ; $720f: $e0 $be
    pop hl                                        ; $7211: $e1

jr_05c_7212:
    dec bc                                        ; $7212: $0b
    ld c, h                                       ; $7213: $4c
    jp z, $e8ff                                   ; $7214: $ca $ff $e8

    rst $20                                       ; $7217: $e7
    add $e1                                       ; $7218: $c6 $e1
    ret                                           ; $721a: $c9


    ldh [rIF], a                                  ; $721b: $e0 $0f
    ld c, e                                       ; $721d: $4b
    ld l, e                                       ; $721e: $6b
    dec hl                                        ; $721f: $2b
    dec hl                                        ; $7220: $2b
    ld a, c                                       ; $7221: $79
    ld [c], a                                     ; $7222: $e2
    cp a                                          ; $7223: $bf
    pop hl                                        ; $7224: $e1
    jp z, $c0ff                                   ; $7225: $ca $ff $c0

    add sp, $00                                   ; $7228: $e8 $00
    adc b                                         ; $722a: $88
    pop hl                                        ; $722b: $e1
    ld [$c0e1], sp                                ; $722c: $08 $e1 $c0
    db $e3                                        ; $722f: $e3
    jr c, jr_05c_7212                             ; $7230: $38 $e0

    ret nz                                        ; $7232: $c0

    rst $38                                       ; $7233: $ff
    ld [$c1e9], a                                 ; $7234: $ea $e9 $c1

jr_05c_7237:
    db $e4                                        ; $7237: $e4
    ret nz                                        ; $7238: $c0

    and $01                                       ; $7239: $e6 $01
    dec hl                                        ; $723b: $2b
    db $fc                                        ; $723c: $fc
    ret nz                                        ; $723d: $c0

    jp z, $c0ff                                   ; $723e: $ca $ff $c0

    add sp, -$78                                  ; $7241: $e8 $88
    push bc                                       ; $7243: $c5
    add b                                         ; $7244: $80
    db $e4                                        ; $7245: $e4
    ld a, a                                       ; $7246: $7f
    pop hl                                        ; $7247: $e1
    jp z, Jump_05c_40ff                           ; $7248: $ca $ff $40

    add sp, -$19                                  ; $724b: $e8 $e7
    sub b                                         ; $724d: $90
    pop hl                                        ; $724e: $e1
    ret                                           ; $724f: $c9


    pop bc                                        ; $7250: $c1
    ret nz                                        ; $7251: $c0

    and $40                                       ; $7252: $e6 $40
    rst $38                                       ; $7254: $ff
    ret nz                                        ; $7255: $c0

    db $eb                                        ; $7256: $eb
    dec hl                                        ; $7257: $2b
    jp nz, Jump_000_00c1                          ; $7258: $c2 $c1 $00

    add b                                         ; $725b: $80
    jp nz, $c2f7                                  ; $725c: $c2 $f7 $c2

    ld a, [c]                                     ; $725f: $f2
    pop bc                                        ; $7260: $c1
    jp z, $80ff                                   ; $7261: $ca $ff $80

    ret z                                         ; $7264: $c8

    cp a                                          ; $7265: $bf

Jump_05c_7266:
    pop hl                                        ; $7266: $e1
    ccf                                           ; $7267: $3f
    call nz, $e2b6                                ; $7268: $c4 $b6 $e2
    nop                                           ; $726b: $00
    ld b, b                                       ; $726c: $40
    rst $38                                       ; $726d: $ff
    ld b, b                                       ; $726e: $40
    call z, $c447                                 ; $726f: $cc $47 $c4
    jr c, jr_05c_7237                             ; $7272: $38 $c3

    ld b, b                                       ; $7274: $40
    rst $38                                       ; $7275: $ff
    db $ed                                        ; $7276: $ed
    db $ec                                        ; $7277: $ec
    adc $e3                                       ; $7278: $ce $e3
    ret nz                                        ; $727a: $c0

    and b                                         ; $727b: $a0
    ccf                                           ; $727c: $3f
    dec hl                                        ; $727d: $2b
    ld c, e                                       ; $727e: $4b
    ld l, e                                       ; $727f: $6b
    ld c, e                                       ; $7280: $4b
    ld l, e                                       ; $7281: $6b
    dec bc                                        ; $7282: $0b
    ei                                            ; $7283: $fb
    and c                                         ; $7284: $a1
    set 7, a                                      ; $7285: $cb $ff
    ld h, b                                       ; $7287: $60
    ret nz                                        ; $7288: $c0

    xor c                                         ; $7289: $a9
    cp a                                          ; $728a: $bf
    push hl                                       ; $728b: $e5
    cp [hl]                                       ; $728c: $be
    ldh [$3b], a                                  ; $728d: $e0 $3b
    and b                                         ; $728f: $a0
    add hl, sp                                    ; $7290: $39
    and b                                         ; $7291: $a0
    inc c                                         ; $7292: $0c
    ld l, h                                       ; $7293: $6c
    jp z, $9cff                                   ; $7294: $ca $ff $9c

    ld b, b                                       ; $7297: $40
    ld [$8ac0], a                                 ; $7298: $ea $c0 $8a
    dec bc                                        ; $729b: $0b
    inc c                                         ; $729c: $0c
    ld l, h                                       ; $729d: $6c
    ret nz                                        ; $729e: $c0

    rst $38                                       ; $729f: $ff
    jp hl                                         ; $72a0: $e9


    add sp, $0a                                   ; $72a1: $e8 $0a
    nop                                           ; $72a3: $00
    ret nz                                        ; $72a4: $c0

    db $ec                                        ; $72a5: $ec
    pop bc                                        ; $72a6: $c1
    ldh [$c0], a                                  ; $72a7: $e0 $c0
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
    nop                                           ; $72b4: $00
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
    nop                                           ; $72c5: $00
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
    nop                                           ; $72d6: $00
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
    nop                                           ; $72e7: $00
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
    nop                                           ; $72f8: $00
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
    nop                                           ; $7309: $00
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
    nop                                           ; $731a: $00
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
    nop                                           ; $732b: $00
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
    nop                                           ; $733c: $00
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
    nop                                           ; $734d: $00
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
    nop                                           ; $735e: $00
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
    db $f4                                        ; $736a: $f4
    nop                                           ; $736b: $00
    nop                                           ; $736c: $00
    nop                                           ; $736d: $00
    ld e, a                                       ; $736e: $5f
    nop                                           ; $736f: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    inc bc                                        ; $7372: $03
    ld hl, $e8ff                                  ; $7373: $21 $ff $e8
    inc bc                                        ; $7376: $03
    rst $28                                       ; $7377: $ef
    ldh [$e0], a                                  ; $7378: $e0 $e0
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff

jr_05c_737c:
    ld [$c1e9], a                                 ; $737c: $ea $e9 $c1
    ld [$ffbf], a                                 ; $737f: $ea $bf $ff
    pop bc                                        ; $7382: $c1
    or $33                                        ; $7383: $f6 $33
    dec hl                                        ; $7385: $2b
    dec hl                                        ; $7386: $2b
    ld sp, hl                                     ; $7387: $f9
    dec a                                         ; $7388: $3d
    cp a                                          ; $7389: $bf
    rst $38                                       ; $738a: $ff
    add d                                         ; $738b: $82
    push af                                       ; $738c: $f5
    dec a                                         ; $738d: $3d
    dec [hl]                                      ; $738e: $35
    inc [hl]                                      ; $738f: $34
    ld e, d                                       ; $7390: $5a
    ld e, d                                       ; $7391: $5a
    jp Jump_000_3534                              ; $7392: $c3 $34 $35


    cp [hl]                                       ; $7395: $be
    pop hl                                        ; $7396: $e1
    cp a                                          ; $7397: $bf
    rst $38                                       ; $7398: $ff
    jp hl                                         ; $7399: $e9


    add sp, -$3a                                  ; $739a: $e8 $c6
    ldh [$2b], a                                  ; $739c: $e0 $2b
    ld b, h                                       ; $739e: $44
    rst $38                                       ; $739f: $ff
    ld b, l                                       ; $73a0: $45
    ld b, l                                       ; $73a1: $45
    ld b, h                                       ; $73a2: $44
    inc [hl]                                      ; $73a3: $34
    ld e, c                                       ; $73a4: $59
    ld e, c                                       ; $73a5: $59

jr_05c_73a6:
    jr nz, jr_05c_7402                            ; $73a6: $20 $5a

    ld [c], a                                     ; $73a8: $e2
    cp [hl]                                       ; $73a9: $be
    ldh [$39], a                                  ; $73aa: $e0 $39
    inc [hl]                                      ; $73ac: $34
    ldh [$ca], a                                  ; $73ad: $e0 $ca
    rst $38                                       ; $73af: $ff
    ret nz                                        ; $73b0: $c0

    add sp, $3d                                   ; $73b1: $e8 $3d
    ld [hl+], a                                   ; $73b3: $22
    jr nz, @+$27                                  ; $73b4: $20 $25

    jr nz, jr_05c_737c                            ; $73b6: $20 $c4

    ldh [$59], a                                  ; $73b8: $e0 $59
    ret nz                                        ; $73ba: $c0

    ldh [$bf], a                                  ; $73bb: $e0 $bf
    pop hl                                        ; $73bd: $e1
    add hl, hl                                    ; $73be: $29
    ret nz                                        ; $73bf: $c0

    rst $38                                       ; $73c0: $ff
    db $eb                                        ; $73c1: $eb
    ld [$c188], a                                 ; $73c2: $ea $88 $c1
    pop hl                                        ; $73c5: $e1
    ret nz                                        ; $73c6: $c0

    and $7e                                       ; $73c7: $e6 $7e
    ldh [$32], a                                  ; $73c9: $e0 $32
    ld a, a                                       ; $73cb: $7f
    ldh [$ca], a                                  ; $73cc: $e0 $ca
    rst $38                                       ; $73ce: $ff
    add sp, -$19                                  ; $73cf: $e8 $e7
    add hl, hl                                    ; $73d1: $29
    nop                                           ; $73d2: $00
    pop bc                                        ; $73d3: $c1
    ldh [$c0], a                                  ; $73d4: $e0 $c0
    rst $20                                       ; $73d6: $e7
    dec a                                         ; $73d7: $3d
    ldh [$7f], a                                  ; $73d8: $e0 $7f
    ldh [$ca], a                                  ; $73da: $e0 $ca
    rst $38                                       ; $73dc: $ff
    ret nz                                        ; $73dd: $c0

    db $eb                                        ; $73de: $eb
    ld [$c0e0], sp                                ; $73df: $08 $e0 $c0
    push hl                                       ; $73e2: $e5
    adc c                                         ; $73e3: $89
    jr nz, jr_05c_73a6                            ; $73e4: $20 $c0

    rst $38                                       ; $73e6: $ff
    ld b, b                                       ; $73e7: $40
    db $ed                                        ; $73e8: $ed
    ld e, b                                       ; $73e9: $58
    pop bc                                        ; $73ea: $c1
    pop hl                                        ; $73eb: $e1
    call nz, $fac1                                ; $73ec: $c4 $c1 $fa
    ldh [rNR41], a                                ; $73ef: $e0 $20
    ld hl, $4020                                  ; $73f1: $21 $20 $40
    rst $38                                       ; $73f4: $ff
    ret nz                                        ; $73f5: $c0

    adc $c7                                       ; $73f6: $ce $c7
    db $e3                                        ; $73f8: $e3
    add e                                         ; $73f9: $83
    ret nz                                        ; $73fa: $c0

    ld e, b                                       ; $73fb: $58
    rst $38                                       ; $73fc: $ff
    ldh [$c0], a                                  ; $73fd: $e0 $c0
    rst $18                                       ; $73ff: $df
    ld a, [hl]                                    ; $7400: $7e
    ld b, b                                       ; $7401: $40

jr_05c_7402:
    adc $35                                       ; $7402: $ce $35
    ld b, h                                       ; $7404: $44
    ld b, h                                       ; $7405: $44
    ld b, l                                       ; $7406: $45
    ld b, h                                       ; $7407: $44
    ld [hl-], a                                   ; $7408: $32
    ld b, d                                       ; $7409: $42
    ret nz                                        ; $740a: $c0

    and [hl]                                      ; $740b: $a6
    ret nz                                        ; $740c: $c0

    ldh [$2d], a                                  ; $740d: $e0 $2d
    inc sp                                        ; $740f: $33
    ret nz                                        ; $7410: $c0

    rst $38                                       ; $7411: $ff
    db $eb                                        ; $7412: $eb
    ld [$4450], a                                 ; $7413: $ea $50 $44
    and b                                         ; $7416: $a0
    sub b                                         ; $7417: $90
    rst $38                                       ; $7418: $ff
    ld [hl], b                                    ; $7419: $70
    ld [hl], b                                    ; $741a: $70
    ld [hl], b                                    ; $741b: $70
    ld h, h                                       ; $741c: $64
    ld l, [hl]                                    ; $741d: $6e
    ld [hl-], a                                   ; $741e: $32
    ld e, d                                       ; $741f: $5a
    ld e, b                                       ; $7420: $58
    daa                                           ; $7421: $27
    ld [hl-], a                                   ; $7422: $32
    ld l, [hl]                                    ; $7423: $6e
    sbc a                                         ; $7424: $9f
    ret nz                                        ; $7425: $c0

    cp a                                          ; $7426: $bf
    db $ec                                        ; $7427: $ec
    db $eb                                        ; $7428: $eb
    ld c, e                                       ; $7429: $4b
    cp a                                          ; $742a: $bf
    ldh [$c0], a                                  ; $742b: $e0 $c0
    pop hl                                        ; $742d: $e1
    sbc [hl]                                      ; $742e: $9e
    cp [hl]                                       ; $742f: $be
    pop hl                                        ; $7430: $e1
    ld l, [hl]                                    ; $7431: $6e
    ld h, h                                       ; $7432: $64
    sbc [hl]                                      ; $7433: $9e
    sub a                                         ; $7434: $97
    pop bc                                        ; $7435: $c1
    rst $38                                       ; $7436: $ff
    ret nz                                        ; $7437: $c0

    db $ec                                        ; $7438: $ec
    ld c, e                                       ; $7439: $4b
    sbc c                                         ; $743a: $99
    ld c, [hl]                                    ; $743b: $4e
    ret nz                                        ; $743c: $c0

    db $e4                                        ; $743d: $e4
    ld a, e                                       ; $743e: $7b
    ldh [$9e], a                                  ; $743f: $e0 $9e
    ld h, b                                       ; $7441: $60
    pop bc                                        ; $7442: $c1
    rst $38                                       ; $7443: $ff
    db $ed                                        ; $7444: $ed
    db $ec                                        ; $7445: $ec
    ld c, d                                       ; $7446: $4a
    inc bc                                        ; $7447: $03
    ld c, e                                       ; $7448: $4b
    ld c, a                                       ; $7449: $4f
    ret nz                                        ; $744a: $c0

    and $c1                                       ; $744b: $e6 $c1
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    nop                                           ; $7456: $00
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
    nop                                           ; $7467: $00
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
    nop                                           ; $7478: $00
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
    nop                                           ; $7489: $00
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
    nop                                           ; $749a: $00
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
    nop                                           ; $74ab: $00
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
    nop                                           ; $74bc: $00
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
    nop                                           ; $74cd: $00
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
    nop                                           ; $74de: $00
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
    nop                                           ; $74ef: $00
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
    nop                                           ; $7500: $00
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
    ei                                            ; $750e: $fb
    nop                                           ; $750f: $00
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    call $ff00                                    ; $7512: $cd $00 $ff
    jp hl                                         ; $7515: $e9


    scf                                           ; $7516: $37
    ld [hl-], a                                   ; $7517: $32
    pop af                                        ; $7518: $f1
    ld [$ffff], a                                 ; $7519: $ea $ff $ff
    inc sp                                        ; $751c: $33
    ld sp, $dcfe                                  ; $751d: $31 $fe $dc
    ld a, [c]                                     ; $7520: $f2
    ld [hl], $30                                  ; $7521: $36 $30
    scf                                           ; $7523: $37
    ld h, $20                                     ; $7524: $26 $20
    daa                                           ; $7526: $27
    db $10                                        ; $7527: $10
    ei                                            ; $7528: $fb
    ld d, $17                                     ; $7529: $16 $17
    cp [hl]                                       ; $752b: $be
    or $34                                        ; $752c: $f6 $34
    ld [hl], $32                                  ; $752e: $36 $32
    jr nc, jr_05c_7569                            ; $7530: $30 $37

    rrca                                          ; $7532: $0f
    ld sp, $3133                                  ; $7533: $31 $33 $31
    inc sp                                        ; $7536: $33
    sbc h                                         ; $7537: $9c
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    ei                                            ; $753a: $fb
    nop                                           ; $753b: $00
    nop                                           ; $753c: $00
    nop                                           ; $753d: $00
    ld b, [hl]                                    ; $753e: $46
    ld [hl], l                                    ; $753f: $75
    halt                                          ; $7540: $76
    ld [hl], l                                    ; $7541: $75
    sbc $76                                       ; $7542: $de $76
    adc c                                         ; $7544: $89
    ld a, b                                       ; $7545: $78
    ld [$c503], a                                 ; $7546: $ea $03 $c5
    ld b, $e2                                     ; $7549: $06 $e2
    ld bc, $00a0                                  ; $754b: $01 $a0 $00
    ld [$f003], a                                 ; $754e: $ea $03 $f0
    inc bc                                        ; $7551: $03
    push bc                                       ; $7552: $c5
    ld b, $e2                                     ; $7553: $06 $e2
    ld bc, $023f                                  ; $7555: $01 $3f $02
    xor e                                         ; $7558: $ab
    nop                                           ; $7559: $00
    inc sp                                        ; $755a: $33
    ld bc, $06c5                                  ; $755b: $01 $c5 $06
    ld [$0825], sp                                ; $755e: $08 $25 $08
    dec h                                         ; $7561: $25
    ld [$0825], sp                                ; $7562: $08 $25 $08
    dec h                                         ; $7565: $25
    ld [$0825], sp                                ; $7566: $08 $25 $08

jr_05c_7569:
    dec h                                         ; $7569: $25
    ld [$0825], sp                                ; $756a: $08 $25 $08
    dec h                                         ; $756d: $25
    ld [$0825], sp                                ; $756e: $08 $25 $08
    dec h                                         ; $7571: $25
    ld [$0825], sp                                ; $7572: $08 $25 $08
    dec h                                         ; $7575: $25
    ccf                                           ; $7576: $3f
    dec bc                                        ; $7577: $0b
    dec bc                                        ; $7578: $0b
    dec bc                                        ; $7579: $0b
    ld l, e                                       ; $757a: $6b
    ld l, e                                       ; $757b: $6b
    ld c, e                                       ; $757c: $4b
    rst $38                                       ; $757d: $ff
    add sp, -$11                                  ; $757e: $e8 $ef
    ldh [rSB], a                                  ; $7580: $e0 $01
    inc c                                         ; $7582: $0c
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $20                                       ; $7585: $e7
    and $c1                                       ; $7586: $e6 $c1
    pop hl                                        ; $7588: $e1
    cp $e1                                        ; $7589: $fe $e1
    cp b                                          ; $758b: $b8
    ldh [$fd], a                                  ; $758c: $e0 $fd
    ld [c], a                                     ; $758e: $e2
    cp a                                          ; $758f: $bf
    pop hl                                        ; $7590: $e1
    db $10                                        ; $7591: $10
    jp z, $c0ff                                   ; $7592: $ca $ff $c0

    add sp, -$7e                                  ; $7595: $e8 $82
    ldh [$c0], a                                  ; $7597: $e0 $c0
    jp hl                                         ; $7599: $e9


    dec hl                                        ; $759a: $2b
    ld a, [hl]                                    ; $759b: $7e
    ldh [$ca], a                                  ; $759c: $e0 $ca
    rst $38                                       ; $759e: $ff
    add sp, -$19                                  ; $759f: $e8 $e7
    nop                                           ; $75a1: $00
    ld b, e                                       ; $75a2: $43
    ldh [$7e], a                                  ; $75a3: $e0 $7e
    ld [c], a                                     ; $75a5: $e2
    ret nz                                        ; $75a6: $c0

    and $7e                                       ; $75a7: $e6 $7e
    ldh [$ca], a                                  ; $75a9: $e0 $ca
    rst $38                                       ; $75ab: $ff
    ret nz                                        ; $75ac: $c0

    add sp, -$01                                  ; $75ad: $e8 $ff
    jp nz, $e9c0                                  ; $75af: $c2 $c0 $e9

    sub c                                         ; $75b2: $91
    dec bc                                        ; $75b3: $0b
    ret nz                                        ; $75b4: $c0

    rst $38                                       ; $75b5: $ff
    nop                                           ; $75b6: $00
    ld [$eec0], a                                 ; $75b7: $ea $c0 $ee
    dec hl                                        ; $75ba: $2b
    jp z, $c0ff                                   ; $75bb: $ca $ff $c0

    db $eb                                        ; $75be: $eb
    dec hl                                        ; $75bf: $2b
    nop                                           ; $75c0: $00
    rst $38                                       ; $75c1: $ff
    ldh [$c0], a                                  ; $75c2: $e0 $c0
    rst $38                                       ; $75c4: $ff
    add b                                         ; $75c5: $80
    ei                                            ; $75c6: $fb
    ld a, a                                       ; $75c7: $7f
    ret nz                                        ; $75c8: $c0

    ld a, [hl-]                                   ; $75c9: $3a
    jp nz, $e1b7                                  ; $75ca: $c2 $b7 $e1

    jp z, Jump_05c_40ff                           ; $75cd: $ca $ff $40

    db $eb                                        ; $75d0: $eb

jr_05c_75d1:
    add b                                         ; $75d1: $80
    dec a                                         ; $75d2: $3d
    jp nz, $a3fc                                  ; $75d3: $c2 $fc $a3

    ld [hl], a                                    ; $75d6: $77
    ld [c], a                                     ; $75d7: $e2
    jp z, $c0ff                                   ; $75d8: $ca $ff $c0

    db $ec                                        ; $75db: $ec
    db $fc                                        ; $75dc: $fc
    and c                                         ; $75dd: $a1
    pop bc                                        ; $75de: $c1
    push hl                                       ; $75df: $e5
    ld l, e                                       ; $75e0: $6b
    nop                                           ; $75e1: $00
    ret nz                                        ; $75e2: $c0

    rst $18                                       ; $75e3: $df
    ret nz                                        ; $75e4: $c0

    rst $28                                       ; $75e5: $ef
    ld a, h                                       ; $75e6: $7c
    and h                                         ; $75e7: $a4
    pop bc                                        ; $75e8: $c1
    ld [c], a                                     ; $75e9: $e2
    add b                                         ; $75ea: $80
    rst $38                                       ; $75eb: $ff
    ld [$c7e9], a                                 ; $75ec: $ea $e9 $c7
    add $41                                       ; $75ef: $c6 $41
    add $18                                       ; $75f1: $c6 $18
    ret nz                                        ; $75f3: $c0

    rst $38                                       ; $75f4: $ff
    ld [$0fe9], a                                 ; $75f5: $ea $e9 $0f
    and d                                         ; $75f8: $a2
    dec hl                                        ; $75f9: $2b
    ld l, e                                       ; $75fa: $6b
    cp c                                          ; $75fb: $b9
    jp hl                                         ; $75fc: $e9


    set 7, a                                      ; $75fd: $cb $ff
    nop                                           ; $75ff: $00
    xor c                                         ; $7600: $a9
    jr nz, jr_05c_75d1                            ; $7601: $20 $ce

    add c                                         ; $7603: $81

Jump_05c_7604:
    ld bc, $c2a7                                  ; $7604: $01 $a7 $c2
    rst $38                                       ; $7607: $ff
    add b                                         ; $7608: $80
    db $ed                                        ; $7609: $ed
    adc $80                                       ; $760a: $ce $80
    ld l, e                                       ; $760c: $6b
    add c                                         ; $760d: $81
    ld [c], a                                     ; $760e: $e2
    call nc, $22ff                                ; $760f: $d4 $ff $22
    ld b, b                                       ; $7612: $40
    db $f4                                        ; $7613: $f4
    ld c, e                                       ; $7614: $4b
    call z, $ffdf                                 ; $7615: $cc $df $ff
    rst $38                                       ; $7618: $ff
    jp hl                                         ; $7619: $e9


    add sp, $4c                                   ; $761a: $e8 $4c
    db $dd                                        ; $761c: $dd
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    nop                                           ; $7620: $00
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
    nop                                           ; $7631: $00
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
    nop                                           ; $7642: $00
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
    nop                                           ; $7653: $00
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
    nop                                           ; $7664: $00
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
    nop                                           ; $7675: $00
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
    nop                                           ; $7686: $00
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
    nop                                           ; $7697: $00
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
    nop                                           ; $76a8: $00
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
    nop                                           ; $76b9: $00
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
    nop                                           ; $76ca: $00
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
    rst $30                                       ; $76da: $f7
    nop                                           ; $76db: $00
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    rst $38                                       ; $76de: $ff
    ld sp, $3131                                  ; $76df: $31 $31 $31
    ld c, l                                       ; $76e2: $4d
    ld a, [hl-]                                   ; $76e3: $3a
    ld d, h                                       ; $76e4: $54
    ld d, h                                       ; $76e5: $54
    ld d, l                                       ; $76e6: $55
    ld e, l                                       ; $76e7: $5d
    ld d, h                                       ; $76e8: $54
    db $fc                                        ; $76e9: $fc
    ld [c], a                                     ; $76ea: $e2
    ld d, l                                       ; $76eb: $55
    dec sp                                        ; $76ec: $3b
    ld c, l                                       ; $76ed: $4d
    rst $28                                       ; $76ee: $ef
    ldh [rP1], a                                  ; $76ef: $e0 $00
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    inc l                                         ; $76f3: $2c
    rst $20                                       ; $76f4: $e7
    and $c1                                       ; $76f5: $e6 $c1
    ldh [$32], a                                  ; $76f7: $e0 $32
    ld l, c                                       ; $76f9: $69
    rst $38                                       ; $76fa: $ff
    ldh [$30], a                                  ; $76fb: $e0 $30
    rst $38                                       ; $76fd: $ff
    ldh [$f8], a                                  ; $76fe: $e0 $f8
    pop hl                                        ; $7700: $e1
    ld sp, $bf32                                  ; $7701: $31 $32 $bf
    ldh [$ca], a                                  ; $7704: $e0 $ca
    rst $38                                       ; $7706: $ff
    ret nz                                        ; $7707: $c0

    add sp, $4d                                   ; $7708: $e8 $4d
    ld [hl-], a                                   ; $770a: $32
    ret z                                         ; $770b: $c8

    ld [c], a                                     ; $770c: $e2
    ret nz                                        ; $770d: $c0

    push hl                                       ; $770e: $e5
    ldh [$bf], a                                  ; $770f: $e0 $bf
    pop hl                                        ; $7711: $e1
    jp z, $e8ff                                   ; $7712: $ca $ff $e8

    rst $20                                       ; $7715: $e7
    pop bc                                        ; $7716: $c1
    ldh [$c0], a                                  ; $7717: $e0 $c0
    db $eb                                        ; $7719: $eb
    jr nc, jr_05c_774e                            ; $771a: $30 $32

    ld c, l                                       ; $771c: $4d
    ld h, h                                       ; $771d: $64
    jp z, $e8ff                                   ; $771e: $ca $ff $e8

    rst $20                                       ; $7721: $e7
    add hl, sp                                    ; $7722: $39
    ld b, [hl]                                    ; $7723: $46
    ldh [$c0], a                                  ; $7724: $e0 $c0
    db $eb                                        ; $7726: $eb
    ld l, c                                       ; $7727: $69
    add hl, sp                                    ; $7728: $39
    jp z, $0aff                                   ; $7729: $ca $ff $0a

    add sp, -$19                                  ; $772c: $e8 $e7
    ld d, e                                       ; $772e: $53
    ret nz                                        ; $772f: $c0

Jump_05c_7730:
    rst $28                                       ; $7730: $ef
    ld d, d                                       ; $7731: $52
    jp z, $c0ff                                   ; $7732: $ca $ff $c0

    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    db $e4                                        ; $7738: $e4
    db $e3                                        ; $7739: $e3
    dec b                                         ; $773a: $05
    ld d, d                                       ; $773b: $52
    add [hl]                                      ; $773c: $86
    ret nz                                        ; $773d: $c0

    ld l, d                                       ; $773e: $6a
    rst $38                                       ; $773f: $ff
    pop hl                                        ; $7740: $e1
    ld sp, hl                                     ; $7741: $f9
    db $e4                                        ; $7742: $e4
    ld b, b                                       ; $7743: $40
    rst $38                                       ; $7744: $ff
    add b                                         ; $7745: $80
    rst $28                                       ; $7746: $ef
    cp a                                          ; $7747: $bf
    ld [c], a                                     ; $7748: $e2
    dec bc                                        ; $7749: $0b
    ld l, b                                       ; $774a: $68
    ld l, b                                       ; $774b: $68
    cp c                                          ; $774c: $b9
    ld [c], a                                     ; $774d: $e2

jr_05c_774e:
    ld l, d                                       ; $774e: $6a
    ret nz                                        ; $774f: $c0

    rst $18                                       ; $7750: $df
    add b                                         ; $7751: $80
    xor $7e                                       ; $7752: $ee $7e
    ld [c], a                                     ; $7754: $e2
    ret nz                                        ; $7755: $c0

    db $e4                                        ; $7756: $e4
    jp Jump_05c_7730                              ; $7757: $c3 $30 $77


    ld b, b                                       ; $775a: $40
    rst $18                                       ; $775b: $df
    add b                                         ; $775c: $80
    xor $3d                                       ; $775d: $ee $3d
    pop hl                                        ; $775f: $e1
    add b                                         ; $7760: $80
    db $e3                                        ; $7761: $e3
    jr nc, jr_05c_77a6                            ; $7762: $30 $42

    jp hl                                         ; $7764: $e9


    inc a                                         ; $7765: $3c
    ret nz                                        ; $7766: $c0

    cp a                                          ; $7767: $bf
    ld [$83e9], a                                 ; $7768: $ea $e9 $83
    ld b, $e1                                     ; $776b: $06 $e1
    jr nc, jr_05c_779f                            ; $776d: $30 $30

    ld b, h                                       ; $776f: $44
    call nz, $a03e                                ; $7770: $c4 $3e $a0
    ld b, b                                       ; $7773: $40
    and c                                         ; $7774: $a1
    ld d, l                                       ; $7775: $55
    pop bc                                        ; $7776: $c1
    ldh [$c0], a                                  ; $7777: $e0 $c0
    rst $38                                       ; $7779: $ff
    jp hl                                         ; $777a: $e9


    add sp, $79                                   ; $777b: $e8 $79
    ld [hl], c                                    ; $777d: $71
    ld h, $c5                                     ; $777e: $26 $c5
    pop bc                                        ; $7780: $c1
    ld [hl], c                                    ; $7781: $71
    xor a                                         ; $7782: $af
    ld hl, sp-$80                                 ; $7783: $f8 $80
    db $fd                                        ; $7785: $fd
    push hl                                       ; $7786: $e5
    ld de, $ffca                                  ; $7787: $11 $ca $ff
    add sp, -$19                                  ; $778a: $e8 $e7
    rst $38                                       ; $778c: $ff
    add b                                         ; $778d: $80
    ld a, c                                       ; $778e: $79
    ld [hl], a                                    ; $778f: $77
    ld l, d                                       ; $7790: $6a
    ld l, d                                       ; $7791: $6a
    ld [hl], a                                    ; $7792: $77
    ld a, c                                       ; $7793: $79
    and c                                         ; $7794: $a1
    and $c2                                       ; $7795: $e6 $c2
    rst $20                                       ; $7797: $e7
    ld [de], a                                    ; $7798: $12
    ld hl, $ffca                                  ; $7799: $21 $ca $ff
    ret nz                                        ; $779c: $c0

    add sp, -$80                                  ; $779d: $e8 $80

jr_05c_779f:
    ld [hl], d                                    ; $779f: $72
    ld b, d                                       ; $77a0: $42
    xor a                                         ; $77a1: $af
    ld b, d                                       ; $77a2: $42
    ld [hl], d                                    ; $77a3: $72
    xor b                                         ; $77a4: $a8
    xor h                                         ; $77a5: $ac

jr_05c_77a6:
    rst $00                                       ; $77a6: $c7
    pop hl                                        ; $77a7: $e1
    inc d                                         ; $77a8: $14
    rst $38                                       ; $77a9: $ff
    pop hl                                        ; $77aa: $e1
    ld hl, $22f3                                  ; $77ab: $21 $f3 $22
    inc h                                         ; $77ae: $24
    jp z, $c0ff                                   ; $77af: $ca $ff $c0

    jp hl                                         ; $77b2: $e9


    add b                                         ; $77b3: $80
    ld [hl], d                                    ; $77b4: $72
    ld [hl], d                                    ; $77b5: $72
    xor [hl]                                      ; $77b6: $ae
    db $ed                                        ; $77b7: $ed
    ld [hl], b                                    ; $77b8: $70
    adc c                                         ; $77b9: $89
    pop hl                                        ; $77ba: $e1
    ld [hl+], a                                   ; $77bb: $22
    inc h                                         ; $77bc: $24
    rst $38                                       ; $77bd: $ff
    pop hl                                        ; $77be: $e1
    jr nz, jr_05c_77e1                            ; $77bf: $20 $20

    jr nz, jr_05c_77c3                            ; $77c1: $20 $00

jr_05c_77c3:
    jp z, $ffff                                   ; $77c3: $ca $ff $ff

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
    nop                                           ; $77d3: $00
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

jr_05c_77e1:
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    nop                                           ; $77e4: $00
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
    nop                                           ; $77f5: $00
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
    nop                                           ; $7806: $00
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
    nop                                           ; $7817: $00
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
    nop                                           ; $7828: $00
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
    nop                                           ; $7839: $00
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
    nop                                           ; $784a: $00
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
    nop                                           ; $785b: $00
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
    nop                                           ; $786c: $00
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
    nop                                           ; $787d: $00
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    di                                            ; $7885: $f3
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    and l                                         ; $7889: $a5
    nop                                           ; $788a: $00
    rst $38                                       ; $788b: $ff
    push hl                                       ; $788c: $e5
    ld [hl-], a                                   ; $788d: $32
    or $e6                                        ; $788e: $f6 $e6
    rst $30                                       ; $7890: $f7
    rst $20                                       ; $7891: $e7
    dec [hl]                                      ; $7892: $35
    db $ec                                        ; $7893: $ec
    xor $37                                       ; $7894: $ee $37
    db $ec                                        ; $7896: $ec
    jp c, $c7f0                                   ; $7897: $da $f0 $c7

    add sp, $33                                   ; $789a: $e8 $33
    ld sp, $f2e0                                  ; $789c: $31 $e0 $f2
    ld [hl], $30                                  ; $789f: $36 $30
    scf                                           ; $78a1: $37
    cp a                                          ; $78a2: $bf
    ld h, $20                                     ; $78a3: $26 $20
    daa                                           ; $78a5: $27
    db $10                                        ; $78a6: $10
    ld d, $17                                     ; $78a7: $16 $17
    jp nz, Jump_000_34f6                          ; $78a9: $c2 $f6 $34

    rst $38                                       ; $78ac: $ff
    ld [hl], $32                                  ; $78ad: $36 $32
    jr nc, jr_05c_78e8                            ; $78af: $30 $37

    ld sp, $3133                                  ; $78b1: $31 $33 $31
    inc sp                                        ; $78b4: $33
    nop                                           ; $78b5: $00
    and b                                         ; $78b6: $a0
    ei                                            ; $78b7: $fb
    rst $38                                       ; $78b8: $ff
    rst $28                                       ; $78b9: $ef
    nop                                           ; $78ba: $00
    nop                                           ; $78bb: $00
    nop                                           ; $78bc: $00
    push bc                                       ; $78bd: $c5
    ld a, b                                       ; $78be: $78
    push af                                       ; $78bf: $f5
    ld a, b                                       ; $78c0: $78
    add b                                         ; $78c1: $80
    ld a, d                                       ; $78c2: $7a
    inc l                                         ; $78c3: $2c
    ld a, h                                       ; $78c4: $7c
    ld [$c503], a                                 ; $78c5: $ea $03 $c5
    ld b, $e2                                     ; $78c8: $06 $e2
    ld bc, $00a0                                  ; $78ca: $01 $a0 $00
    ld [$f003], a                                 ; $78cd: $ea $03 $f0
    inc bc                                        ; $78d0: $03
    push bc                                       ; $78d1: $c5
    ld b, $e2                                     ; $78d2: $06 $e2
    ld bc, $023f                                  ; $78d4: $01 $3f $02
    xor e                                         ; $78d7: $ab
    nop                                           ; $78d8: $00
    inc sp                                        ; $78d9: $33
    ld bc, $06c5                                  ; $78da: $01 $c5 $06
    ld [$0825], sp                                ; $78dd: $08 $25 $08
    dec h                                         ; $78e0: $25
    ld [$0825], sp                                ; $78e1: $08 $25 $08
    dec h                                         ; $78e4: $25
    ld [$0825], sp                                ; $78e5: $08 $25 $08

jr_05c_78e8:
    dec h                                         ; $78e8: $25
    ld [$0825], sp                                ; $78e9: $08 $25 $08
    dec h                                         ; $78ec: $25
    ld [$0825], sp                                ; $78ed: $08 $25 $08
    dec h                                         ; $78f0: $25
    ld [$0825], sp                                ; $78f1: $08 $25 $08
    dec h                                         ; $78f4: $25
    db $fd                                        ; $78f5: $fd
    dec bc                                        ; $78f6: $0b
    rst $38                                       ; $78f7: $ff
    db $eb                                        ; $78f8: $eb
    dec hl                                        ; $78f9: $2b
    dec bc                                        ; $78fa: $0b
    dec bc                                        ; $78fb: $0b
    ld a, [bc]                                    ; $78fc: $0a
    dec bc                                        ; $78fd: $0b
    inc c                                         ; $78fe: $0c
    db $fc                                        ; $78ff: $fc
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $20                                       ; $7902: $e7
    and $0a                                       ; $7903: $e6 $0a
    ld l, e                                       ; $7905: $6b
    dec bc                                        ; $7906: $0b
    ld l, e                                       ; $7907: $6b
    ld l, e                                       ; $7908: $6b
    ld c, e                                       ; $7909: $4b
    ld d, $ff                                     ; $790a: $16 $ff
    push hl                                       ; $790c: $e5
    dec bc                                        ; $790d: $0b
    ld c, e                                       ; $790e: $4b
    pop bc                                        ; $790f: $c1
    ldh [$2b], a                                  ; $7910: $e0 $2b
    jp z, $e8ff                                   ; $7912: $ca $ff $e8

    rst $20                                       ; $7915: $e7
    jp nz, $1be0                                  ; $7916: $c2 $e0 $1b

    ld l, e                                       ; $7919: $6b
    dec hl                                        ; $791a: $2b
    rst $38                                       ; $791b: $ff
    ld [c], a                                     ; $791c: $e2
    dec bc                                        ; $791d: $0b
    dec bc                                        ; $791e: $0b
    cp a                                          ; $791f: $bf
    pop hl                                        ; $7920: $e1
    ld hl, sp-$1f                                 ; $7921: $f8 $e1
    jp z, Jump_000_10ff                           ; $7923: $ca $ff $10

    add sp, -$19                                  ; $7926: $e8 $e7
    add c                                         ; $7928: $81
    ldh [$c1], a                                  ; $7929: $e0 $c1

Jump_05c_792b:
    db $e3                                        ; $792b: $e3
    ret nz                                        ; $792c: $c0

    db $e4                                        ; $792d: $e4
    ld c, e                                       ; $792e: $4b
    or e                                          ; $792f: $b3
    ldh [$ca], a                                  ; $7930: $e0 $ca
    rst $38                                       ; $7932: $ff
    ret nz                                        ; $7933: $c0

    jp hl                                         ; $7934: $e9


    ld b, b                                       ; $7935: $40
    adc l                                         ; $7936: $8d
    ldh [$80], a                                  ; $7937: $e0 $80
    and $f2                                       ; $7939: $e6 $f2
    ldh [rIE], a                                  ; $793b: $e0 $ff
    ret nz                                        ; $793d: $c0

    jp z, $e8ff                                   ; $793e: $ca $ff $e8

    rst $20                                       ; $7941: $e7
    dec hl                                        ; $7942: $2b
    pop bc                                        ; $7943: $c1
    ld [c], a                                     ; $7944: $e2
    add b                                         ; $7945: $80
    cp e                                          ; $7946: $bb
    pop hl                                        ; $7947: $e1
    ld b, b                                       ; $7948: $40
    pop hl                                        ; $7949: $e1

jr_05c_794a:
    pop bc                                        ; $794a: $c1
    jp nz, $ff40                                  ; $794b: $c2 $40 $ff

    ret nz                                        ; $794e: $c0

    ldh a, [$78]                                  ; $794f: $f0 $78
    ret nz                                        ; $7951: $c0

    ret nz                                        ; $7952: $c0

    pop bc                                        ; $7953: $c1
    dec bc                                        ; $7954: $0b
    nop                                           ; $7955: $00
    ld a, [hl]                                    ; $7956: $7e
    pop hl                                        ; $7957: $e1
    jp z, $c0ff                                   ; $7958: $ca $ff $c0

    ret z                                         ; $795b: $c8

    call $c0c1                                    ; $795c: $cd $c1 $c0
    ld [c], a                                     ; $795f: $e2
    pop bc                                        ; $7960: $c1
    ld [c], a                                     ; $7961: $e2
    ccf                                           ; $7962: $3f
    pop bc                                        ; $7963: $c1
    ret nz                                        ; $7964: $c0

    rst $38                                       ; $7965: $ff
    nop                                           ; $7966: $00
    ld b, b                                       ; $7967: $40
    ret                                           ; $7968: $c9


    cp a                                          ; $7969: $bf
    ld [c], a                                     ; $796a: $e2
    ld b, c                                       ; $796b: $41
    rst $00                                       ; $796c: $c7
    cp $a1                                        ; $796d: $fe $a1
    jp z, Jump_05c_40ff                           ; $796f: $ca $ff $40

    ret z                                         ; $7972: $c8

    ld c, c                                       ; $7973: $49
    ret nz                                        ; $7974: $c0

    ccf                                           ; $7975: $3f
    ret nz                                        ; $7976: $c0

    nop                                           ; $7977: $00
    ld [bc], a                                    ; $7978: $02
    jp $e1c0                                      ; $7979: $c3 $c0 $e1


    ret nz                                        ; $797c: $c0

    cp a                                          ; $797d: $bf
    ret nz                                        ; $797e: $c0

    db $ec                                        ; $797f: $ec
    ld a, [hl]                                    ; $7980: $7e
    ldh [rIE], a                                  ; $7981: $e0 $ff
    and b                                         ; $7983: $a0
    ret nz                                        ; $7984: $c0

    db $e3                                        ; $7985: $e3
    ld b, c                                       ; $7986: $41
    ld [c], a                                     ; $7987: $e2
    jr z, jr_05c_794a                             ; $7988: $28 $c0

    rst $38                                       ; $798a: $ff
    ld b, b                                       ; $798b: $40
    ld [$c1c6], a                                 ; $798c: $ea $c6 $c1
    dec hl                                        ; $798f: $2b
    call nz, Call_05c_6ba1                        ; $7990: $c4 $a1 $6b
    inc [hl]                                      ; $7993: $34
    pop bc                                        ; $7994: $c1
    ret nz                                        ; $7995: $c0

    rst $38                                       ; $7996: $ff
    ld d, $c0                                     ; $7997: $16 $c0
    rst $28                                       ; $7999: $ef
    dec hl                                        ; $799a: $2b
    ld l, e                                       ; $799b: $6b
    ret nz                                        ; $799c: $c0

    ldh [$2b], a                                  ; $799d: $e0 $2b
    add l                                         ; $799f: $85
    jp nz, $ffc0                                  ; $79a0: $c2 $c0 $ff

    nop                                           ; $79a3: $00
    rst $28                                       ; $79a4: $ef
    ld b, e                                       ; $79a5: $43
    ld a, [bc]                                    ; $79a6: $0a
    dec hl                                        ; $79a7: $2b
    cp $80                                        ; $79a8: $fe $80
    ret nz                                        ; $79aa: $c0

    add a                                         ; $79ab: $87
    ret nz                                        ; $79ac: $c0

    rst $38                                       ; $79ad: $ff
    ret nz                                        ; $79ae: $c0

    call z, $8a2b                                 ; $79af: $cc $2b $8a
    and d                                         ; $79b2: $a2
    nop                                           ; $79b3: $00
    ret nz                                        ; $79b4: $c0

    rst $38                                       ; $79b5: $ff
    nop                                           ; $79b6: $00
    push af                                       ; $79b7: $f5
    add c                                         ; $79b8: $81
    add sp, -$40                                  ; $79b9: $e8 $c0
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    nop                                           ; $79c4: $00
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
    nop                                           ; $79d5: $00
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
    nop                                           ; $79e6: $00
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
    nop                                           ; $79f7: $00
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
    nop                                           ; $7a08: $00
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
    nop                                           ; $7a19: $00
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
    nop                                           ; $7a2a: $00
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
    nop                                           ; $7a3b: $00
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
    nop                                           ; $7a4c: $00
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
    nop                                           ; $7a5d: $00
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
    nop                                           ; $7a6e: $00
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
    ld sp, hl                                     ; $7a7c: $f9
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    rst $28                                       ; $7a80: $ef
    ld e, e                                       ; $7a81: $5b
    ld e, e                                       ; $7a82: $5b
    ld h, b                                       ; $7a83: $60
    ld sp, $e8ff                                  ; $7a84: $31 $ff $e8
    ld h, b                                       ; $7a87: $60
    ld e, e                                       ; $7a88: $5b
    ld e, e                                       ; $7a89: $5b
    rst $20                                       ; $7a8a: $e7
    ld e, d                                       ; $7a8b: $5a
    ld e, e                                       ; $7a8c: $5b
    nop                                           ; $7a8d: $00
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $20                                       ; $7a90: $e7
    and $5a                                       ; $7a91: $e6 $5a
    ld e, a                                       ; $7a93: $5f
    ld sp, $4def                                  ; $7a94: $31 $ef $4d
    ld a, [hl-]                                   ; $7a97: $3a
    ld d, l                                       ; $7a98: $55
    ld d, h                                       ; $7a99: $54
    cp $e2                                        ; $7a9a: $fe $e2
    ld a, [hl-]                                   ; $7a9c: $3a
    ld c, l                                       ; $7a9d: $4d
    ld sp, $61f1                                  ; $7a9e: $31 $f1 $61
    pop bc                                        ; $7aa1: $c1
    ldh [$c0], a                                  ; $7aa2: $e0 $c0
    rst $38                                       ; $7aa4: $ff
    jp hl                                         ; $7aa5: $e9


    add sp, $5b                                   ; $7aa6: $e8 $5b
    ld e, [hl]                                    ; $7aa8: $5e
    ld c, l                                       ; $7aa9: $4d
    ld [hl-], a                                   ; $7aaa: $32
    db $fd                                        ; $7aab: $fd
    ld l, l                                       ; $7aac: $6d
    rst $38                                       ; $7aad: $ff
    pop hl                                        ; $7aae: $e1
    ld l, c                                       ; $7aaf: $69
    jr nc, jr_05c_7ae2                            ; $7ab0: $30 $30

    ld l, l                                       ; $7ab2: $6d
    ld [hl-], a                                   ; $7ab3: $32
    ld c, l                                       ; $7ab4: $4d
    jr c, jr_05c_7b36                             ; $7ab5: $38 $7f

    pop hl                                        ; $7ab7: $e1
    ret nz                                        ; $7ab8: $c0

    rst $38                                       ; $7ab9: $ff
    jp hl                                         ; $7aba: $e9


    add sp, $5f                                   ; $7abb: $e8 $5f
    ld sp, $c139                                  ; $7abd: $31 $39 $c1
    ld [c], a                                     ; $7ac0: $e2
    ret nz                                        ; $7ac1: $c0

    ld [c], a                                     ; $7ac2: $e2
    db $e3                                        ; $7ac3: $e3
    ld l, l                                       ; $7ac4: $6d
    add hl, sp                                    ; $7ac5: $39
    ld a, a                                       ; $7ac6: $7f
    ldh [$c0], a                                  ; $7ac7: $e0 $c0
    rst $38                                       ; $7ac9: $ff
    ld [$5ee9], a                                 ; $7aca: $ea $e9 $5e
    ld sp, $2a53                                  ; $7acd: $31 $53 $2a
    ret nz                                        ; $7ad0: $c0

    db $e3                                        ; $7ad1: $e3
    ld l, d                                       ; $7ad2: $6a
    ret nz                                        ; $7ad3: $c0

    pop hl                                        ; $7ad4: $e1
    ld d, d                                       ; $7ad5: $52
    ret nz                                        ; $7ad6: $c0

    pop hl                                        ; $7ad7: $e1
    ld e, d                                       ; $7ad8: $5a
    jp z, $c0ff                                   ; $7ad9: $ca $ff $c0

    jp hl                                         ; $7adc: $e9


    ld c, $80                                     ; $7add: $0e $80
    pop hl                                        ; $7adf: $e1
    ld l, b                                       ; $7ae0: $68
    ld l, b                                       ; $7ae1: $68

jr_05c_7ae2:
    ld l, d                                       ; $7ae2: $6a
    ret nz                                        ; $7ae3: $c0

    push hl                                       ; $7ae4: $e5
    nop                                           ; $7ae5: $00
    rst $38                                       ; $7ae6: $ff
    ld b, b                                       ; $7ae7: $40
    db $ec                                        ; $7ae8: $ec
    nop                                           ; $7ae9: $00
    ldh [rOBP0], a                                ; $7aea: $e0 $48
    inc b                                         ; $7aec: $04
    ldh [$fe], a                                  ; $7aed: $e0 $fe
    ldh [$f9], a                                  ; $7aef: $e0 $f9
    ret nz                                        ; $7af1: $c0

    add hl, sp                                    ; $7af2: $39
    nop                                           ; $7af3: $00
    rst $38                                       ; $7af4: $ff
    ret nz                                        ; $7af5: $c0

    call $bf60                                    ; $7af6: $cd $60 $bf
    ldh [$0c], a                                  ; $7af9: $e0 $0c
    ret nz                                        ; $7afb: $c0

    ld [c], a                                     ; $7afc: $e2
    cp d                                          ; $7afd: $ba
    ret nz                                        ; $7afe: $c0

    ld c, b                                       ; $7aff: $48
    scf                                           ; $7b00: $37
    ret nz                                        ; $7b01: $c0

    rst $38                                       ; $7b02: $ff
    ld b, b                                       ; $7b03: $40
    call $e2bf                                    ; $7b04: $cd $bf $e2
    cp l                                          ; $7b07: $bd
    jp Jump_05c_6d07                              ; $7b08: $c3 $07 $6d


    add e                                         ; $7b0b: $83
    ld [hl], b                                    ; $7b0c: $70
    cp $a2                                        ; $7b0d: $fe $a2
    jp z, Jump_05c_40ff                           ; $7b0f: $ca $ff $40

    ret z                                         ; $7b12: $c8

    cp a                                          ; $7b13: $bf
    and c                                         ; $7b14: $a1
    dec a                                         ; $7b15: $3d
    call nz, Call_05c_480f                        ; $7b16: $c4 $0f $48
    halt                                          ; $7b19: $76
    xor [hl]                                      ; $7b1a: $ae
    and a                                         ; $7b1b: $a7
    rst $38                                       ; $7b1c: $ff
    pop bc                                        ; $7b1d: $c1
    jp z, $c0ff                                   ; $7b1e: $ca $ff $c0

    jp hl                                         ; $7b21: $e9


    ld a, [hl]                                    ; $7b22: $7e
    rst $20                                       ; $7b23: $e7
    rrca                                          ; $7b24: $0f
    add e                                         ; $7b25: $83
    add b                                         ; $7b26: $80
    add b                                         ; $7b27: $80
    add c                                         ; $7b28: $81
    ccf                                           ; $7b29: $3f
    pop bc                                        ; $7b2a: $c1
    jp z, Jump_05c_40ff                           ; $7b2b: $ca $ff $40

    jp hl                                         ; $7b2e: $e9


    ld a, [hl]                                    ; $7b2f: $7e
    ld [c], a                                     ; $7b30: $e2
    rst $38                                       ; $7b31: $ff
    xor a                                         ; $7b32: $af
    ld [hl], c                                    ; $7b33: $71
    ld l, l                                       ; $7b34: $6d
    ld l, l                                       ; $7b35: $6d

jr_05c_7b36:
    ld [hl], c                                    ; $7b36: $71
    ld a, c                                       ; $7b37: $79
    add b                                         ; $7b38: $80
    add b                                         ; $7b39: $80
    ld sp, hl                                     ; $7b3a: $f9
    and b                                         ; $7b3b: $a0
    ret nz                                        ; $7b3c: $c0

    rst $38                                       ; $7b3d: $ff
    ret nz                                        ; $7b3e: $c0

    ldh a, [$5f]                                  ; $7b3f: $f0 $5f
    ld sp, $7981                                  ; $7b41: $31 $81 $79
    ld a, [hl]                                    ; $7b44: $7e
    pop af                                        ; $7b45: $f1
    ld a, [hl]                                    ; $7b46: $7e
    pop bc                                        ; $7b47: $c1
    ldh [$c0], a                                  ; $7b48: $e0 $c0
    rst $38                                       ; $7b4a: $ff
    nop                                           ; $7b4b: $00
    ldh a, [$5a]                                  ; $7b4c: $f0 $5a
    ld e, e                                       ; $7b4e: $5b
    ld e, [hl]                                    ; $7b4f: $5e
    xor h                                         ; $7b50: $ac
    ld bc, $c4a8                                  ; $7b51: $01 $a8 $c4
    ldh [$fd], a                                  ; $7b54: $e0 $fd
    pop hl                                        ; $7b56: $e1
    ret nz                                        ; $7b57: $c0

    rst $38                                       ; $7b58: $ff
    ret nz                                        ; $7b59: $c0

    rst $08                                       ; $7b5a: $cf
    add c                                         ; $7b5b: $81
    pop hl                                        ; $7b5c: $e1
    pop bc                                        ; $7b5d: $c1
    db $e4                                        ; $7b5e: $e4
    ret nz                                        ; $7b5f: $c0

    rst $38                                       ; $7b60: $ff
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    pop af                                        ; $7b63: $f1
    add c                                         ; $7b64: $81
    rst $20                                       ; $7b65: $e7
    ret nz                                        ; $7b66: $c0

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
    nop                                           ; $7b72: $00
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
    nop                                           ; $7b83: $00
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
    nop                                           ; $7b94: $00
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
    nop                                           ; $7ba5: $00
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
    nop                                           ; $7bb6: $00
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
    nop                                           ; $7bc7: $00
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
    nop                                           ; $7bd8: $00
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
    nop                                           ; $7be9: $00
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
    nop                                           ; $7bfa: $00
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
    nop                                           ; $7c0b: $00
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
    nop                                           ; $7c1c: $00
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
    ld sp, hl                                     ; $7c28: $f9
    nop                                           ; $7c29: $00
    nop                                           ; $7c2a: $00
    nop                                           ; $7c2b: $00
    and l                                         ; $7c2c: $a5
    nop                                           ; $7c2d: $00
    rst $38                                       ; $7c2e: $ff
    push hl                                       ; $7c2f: $e5
    ld [hl-], a                                   ; $7c30: $32
    or $e6                                        ; $7c31: $f6 $e6
    rst $30                                       ; $7c33: $f7
    rst $20                                       ; $7c34: $e7
    dec [hl]                                      ; $7c35: $35
    db $ec                                        ; $7c36: $ec
    xor $37                                       ; $7c37: $ee $37
    db $ec                                        ; $7c39: $ec
    jp c, $c7f0                                   ; $7c3a: $da $f0 $c7

    add sp, $33                                   ; $7c3d: $e8 $33
    ld sp, $f2e0                                  ; $7c3f: $31 $e0 $f2
    ld [hl], $30                                  ; $7c42: $36 $30
    scf                                           ; $7c44: $37
    cp a                                          ; $7c45: $bf
    ld h, $20                                     ; $7c46: $26 $20
    daa                                           ; $7c48: $27
    db $10                                        ; $7c49: $10
    ld d, $17                                     ; $7c4a: $16 $17
    jp nz, Jump_000_34f6                          ; $7c4c: $c2 $f6 $34

    rst $38                                       ; $7c4f: $ff
    ld [hl], $32                                  ; $7c50: $36 $32
    jr nc, jr_05c_7c8b                            ; $7c52: $30 $37

    ld sp, $3133                                  ; $7c54: $31 $33 $31
    inc sp                                        ; $7c57: $33
    nop                                           ; $7c58: $00
    and b                                         ; $7c59: $a0
    ei                                            ; $7c5a: $fb
    rst $38                                       ; $7c5b: $ff
    rst $28                                       ; $7c5c: $ef
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
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

jr_05c_7c8b:
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

Jump_05c_7fff:
    rst $38                                       ; $7fff: $ff
