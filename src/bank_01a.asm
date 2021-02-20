; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    db $20, $7b

    jr z, jr_01a_407f                             ; $4002: $28 $7b

    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    ld e, e                                       ; $4006: $5b
    nop                                           ; $4007: $00
    sub d                                         ; $4008: $92
    nop                                           ; $4009: $00
    cp [hl]                                       ; $400a: $be
    nop                                           ; $400b: $00
    ld [c], a                                     ; $400c: $e2
    nop                                           ; $400d: $00
    inc d                                         ; $400e: $14
    ld bc, HeaderTitle                            ; $400f: $01 $34 $01
    ld h, h                                       ; $4012: $64
    ld bc, $0194                                  ; $4013: $01 $94 $01
    jp nz, $f801                                  ; $4016: $c2 $01 $f8

    ld bc, $0226                                  ; $4019: $01 $26 $02
    ld d, e                                       ; $401c: $53
    ld [bc], a                                    ; $401d: $02
    ld a, [hl]                                    ; $401e: $7e
    ld [bc], a                                    ; $401f: $02
    and [hl]                                      ; $4020: $a6
    ld [bc], a                                    ; $4021: $02
    push de                                       ; $4022: $d5
    ld [bc], a                                    ; $4023: $02
    db $f4                                        ; $4024: $f4
    ld [bc], a                                    ; $4025: $02
    ld d, d                                       ; $4026: $52
    inc bc                                        ; $4027: $03
    adc h                                         ; $4028: $8c
    inc bc                                        ; $4029: $03
    cp b                                          ; $402a: $b8
    inc bc                                        ; $402b: $03
    inc bc                                        ; $402c: $03
    inc b                                         ; $402d: $04
    ld e, $04                                     ; $402e: $1e $04
    ld c, a                                       ; $4030: $4f
    inc b                                         ; $4031: $04
    ld a, d                                       ; $4032: $7a
    inc b                                         ; $4033: $04
    xor h                                         ; $4034: $ac
    inc b                                         ; $4035: $04
    ret nc                                        ; $4036: $d0

    inc b                                         ; $4037: $04
    ld [$2304], a                                 ; $4038: $ea $04 $23
    dec b                                         ; $403b: $05
    adc [hl]                                      ; $403c: $8e
    dec b                                         ; $403d: $05
    pop bc                                        ; $403e: $c1
    dec b                                         ; $403f: $05
    ld sp, hl                                     ; $4040: $f9
    dec b                                         ; $4041: $05
    ld e, h                                       ; $4042: $5c
    ld b, $bf                                     ; $4043: $06 $bf
    ld b, $29                                     ; $4045: $06 $29
    rlca                                          ; $4047: $07
    add a                                         ; $4048: $87
    rlca                                          ; $4049: $07
    cp c                                          ; $404a: $b9
    rlca                                          ; $404b: $07
    ld [hl+], a                                   ; $404c: $22
    ld [$0890], sp                                ; $404d: $08 $90 $08
    jp nz, $f908                                  ; $4050: $c2 $08 $f9

    ld [$0959], sp                                ; $4053: $08 $59 $09
    xor h                                         ; $4056: $ac
    add hl, bc                                    ; $4057: $09
    ldh [$09], a                                  ; $4058: $e0 $09
    dec de                                        ; $405a: $1b
    ld a, [bc]                                    ; $405b: $0a
    ld a, c                                       ; $405c: $79
    ld a, [bc]                                    ; $405d: $0a
    db $dd                                        ; $405e: $dd
    ld a, [bc]                                    ; $405f: $0a
    ld c, $0b                                     ; $4060: $0e $0b
    dec [hl]                                      ; $4062: $35
    dec bc                                        ; $4063: $0b
    ld c, b                                       ; $4064: $48
    dec bc                                        ; $4065: $0b
    ld a, e                                       ; $4066: $7b
    dec bc                                        ; $4067: $0b
    and d                                         ; $4068: $a2
    dec bc                                        ; $4069: $0b
    call $f90b                                    ; $406a: $cd $0b $f9
    dec bc                                        ; $406d: $0b
    inc hl                                        ; $406e: $23
    inc c                                         ; $406f: $0c
    ld d, b                                       ; $4070: $50
    inc c                                         ; $4071: $0c
    ld a, b                                       ; $4072: $78
    inc c                                         ; $4073: $0c
    and l                                         ; $4074: $a5
    inc c                                         ; $4075: $0c
    call z, Call_000_040c                         ; $4076: $cc $0c $04
    dec c                                         ; $4079: $0d
    ld a, [hl-]                                   ; $407a: $3a
    dec c                                         ; $407b: $0d
    ld l, l                                       ; $407c: $6d
    dec c                                         ; $407d: $0d
    sub a                                         ; $407e: $97

jr_01a_407f:
    dec c                                         ; $407f: $0d
    jp $d00d                                      ; $4080: $c3 $0d $d0


    dec c                                         ; $4083: $0d
    nop                                           ; $4084: $00
    ld c, $34                                     ; $4085: $0e $34
    ld c, $87                                     ; $4087: $0e $87
    ld c, $db                                     ; $4089: $0e $db
    ld c, $31                                     ; $408b: $0e $31
    rrca                                          ; $408d: $0f

    db $88, $0f, $ac, $0f, $c5, $0f, $d4, $0f, $ee, $0f, $05, $10, $19, $10

    ld c, a                                       ; $409c: $4f
    db $10                                        ; $409d: $10
    ld h, d                                       ; $409e: $62
    db $10                                        ; $409f: $10
    ld [hl], e                                    ; $40a0: $73
    db $10                                        ; $40a1: $10
    adc e                                         ; $40a2: $8b
    db $10                                        ; $40a3: $10
    sbc d                                         ; $40a4: $9a
    db $10                                        ; $40a5: $10
    xor c                                         ; $40a6: $a9
    db $10                                        ; $40a7: $10
    or h                                          ; $40a8: $b4
    db $10                                        ; $40a9: $10
    adc $10                                       ; $40aa: $ce $10
    rst $10                                       ; $40ac: $d7
    db $10                                        ; $40ad: $10
    ld [c], a                                     ; $40ae: $e2
    db $10                                        ; $40af: $10
    di                                            ; $40b0: $f3
    db $10                                        ; $40b1: $10
    ld b, $11                                     ; $40b2: $06 $11
    dec h                                         ; $40b4: $25
    ld de, $1198                                  ; $40b5: $11 $98 $11
    db $d3                                        ; $40b8: $d3
    ld de, $11e1                                  ; $40b9: $11 $e1 $11
    dec bc                                        ; $40bc: $0b
    ld [de], a                                    ; $40bd: $12
    ld h, [hl]                                    ; $40be: $66
    ld [de], a                                    ; $40bf: $12

jr_01a_40c0:
    cp a                                          ; $40c0: $bf
    ld [de], a                                    ; $40c1: $12
    ret c                                         ; $40c2: $d8

    ld [de], a                                    ; $40c3: $12
    ld b, b                                       ; $40c4: $40
    inc de                                        ; $40c5: $13
    ld a, c                                       ; $40c6: $79
    inc de                                        ; $40c7: $13
    sub h                                         ; $40c8: $94
    inc de                                        ; $40c9: $13
    push hl                                       ; $40ca: $e5
    inc de                                        ; $40cb: $13
    ld b, d                                       ; $40cc: $42
    inc d                                         ; $40cd: $14

jr_01a_40ce:
    pop bc                                        ; $40ce: $c1
    inc d                                         ; $40cf: $14
    ld [c], a                                     ; $40d0: $e2
    inc d                                         ; $40d1: $14
    ld b, c                                       ; $40d2: $41
    dec d                                         ; $40d3: $15
    ld [hl], d                                    ; $40d4: $72
    dec d                                         ; $40d5: $15
    add c                                         ; $40d6: $81
    dec d                                         ; $40d7: $15
    jp nc, Jump_000_1115                          ; $40d8: $d2 $15 $11

    db $16                                        ; $40db: $16

    db $36, $16

    ld h, d                                       ; $40de: $62
    ld d, $d1                                     ; $40df: $16 $d1
    ld d, $09                                     ; $40e1: $16 $09
    rla                                           ; $40e3: $17
    inc h                                         ; $40e4: $24
    rla                                           ; $40e5: $17
    sbc b                                         ; $40e6: $98
    rla                                           ; $40e7: $17
    cp $17                                        ; $40e8: $fe $17

    db $76, $18, $a8, $18

    inc de                                        ; $40ee: $13
    add hl, de                                    ; $40ef: $19
    ld c, b                                       ; $40f0: $48
    add hl, de                                    ; $40f1: $19
    ld e, h                                       ; $40f2: $5c
    add hl, de                                    ; $40f3: $19
    xor h                                         ; $40f4: $ac
    add hl, de                                    ; $40f5: $19
    dec c                                         ; $40f6: $0d
    ld a, [de]                                    ; $40f7: $1a
    jr nc, jr_01a_4114                            ; $40f8: $30 $1a

    ld l, b                                       ; $40fa: $68
    ld a, [de]                                    ; $40fb: $1a
    push de                                       ; $40fc: $d5
    ld a, [de]                                    ; $40fd: $1a
    db $08                                        ; $40fe: $08
    dec de                                        ; $40ff: $1b

    db $17, $1b

jr_01a_4102:
    ld b, e                                       ; $4102: $43
    dec de                                        ; $4103: $1b
    ld [hl], l                                    ; $4104: $75
    dec de                                        ; $4105: $1b
    db $d3                                        ; $4106: $d3
    dec de                                        ; $4107: $1b
    db $10                                        ; $4108: $10
    inc e                                         ; $4109: $1c
    ld c, b                                       ; $410a: $48
    inc e                                         ; $410b: $1c
    xor a                                         ; $410c: $af
    inc e                                         ; $410d: $1c
    ld hl, sp+$1c                                 ; $410e: $f8 $1c
    ld d, [hl]                                    ; $4110: $56
    dec e                                         ; $4111: $1d
    ld a, d                                       ; $4112: $7a
    dec e                                         ; $4113: $1d

jr_01a_4114:
    xor h                                         ; $4114: $ac
    dec e                                         ; $4115: $1d
    ld [bc], a                                    ; $4116: $02
    ld e, $5d                                     ; $4117: $1e $5d
    ld e, $83                                     ; $4119: $1e $83
    ld e, $b6                                     ; $411b: $1e $b6
    ld e, $08                                     ; $411d: $1e $08
    rra                                           ; $411f: $1f
    ld h, [hl]                                    ; $4120: $66
    rra                                           ; $4121: $1f
    or l                                          ; $4122: $b5
    rra                                           ; $4123: $1f
    rst $18                                       ; $4124: $df
    rra                                           ; $4125: $1f
    ld a, $20                                     ; $4126: $3e $20
    ld [hl], c                                    ; $4128: $71
    jr nz, jr_01a_40c0                            ; $4129: $20 $95

    jr nz, jr_01a_40ce                            ; $412b: $20 $a1

    jr nz, @-$4b                                  ; $412d: $20 $b3

    jr nz, jr_01a_4102                            ; $412f: $20 $d1

    jr nz, @-$01                                  ; $4131: $20 $fd

    jr nz, jr_01a_4156                            ; $4133: $20 $21

    ld hl, $2156                                  ; $4135: $21 $56 $21
    and c                                         ; $4138: $a1
    ld hl, $21d3                                  ; $4139: $21 $d3 $21
    dec b                                         ; $413c: $05

jr_01a_413d:
    ld [hl+], a                                   ; $413d: $22
    ld c, c                                       ; $413e: $49
    ld [hl+], a                                   ; $413f: $22
    ld a, c                                       ; $4140: $79
    ld [hl+], a                                   ; $4141: $22
    xor [hl]                                      ; $4142: $ae
    ld [hl+], a                                   ; $4143: $22
    adc $22                                       ; $4144: $ce $22
    rst $38                                       ; $4146: $ff
    ld [hl+], a                                   ; $4147: $22
    ld sp, $5523                                  ; $4148: $31 $23 $55
    inc hl                                        ; $414b: $23
    adc d                                         ; $414c: $8a
    inc hl                                        ; $414d: $23
    or b                                          ; $414e: $b0
    inc hl                                        ; $414f: $23
    call nc, Call_000_0623                        ; $4150: $d4 $23 $06
    inc h                                         ; $4153: $24
    dec hl                                        ; $4154: $2b
    inc h                                         ; $4155: $24

jr_01a_4156:
    dec [hl]                                      ; $4156: $35
    inc h                                         ; $4157: $24
    ld d, b                                       ; $4158: $50
    inc h                                         ; $4159: $24
    ld [hl], a                                    ; $415a: $77
    inc h                                         ; $415b: $24
    sbc a                                         ; $415c: $9f
    inc h                                         ; $415d: $24
    push de                                       ; $415e: $d5
    inc h                                         ; $415f: $24
    cp $24                                        ; $4160: $fe $24
    ld h, $25                                     ; $4162: $26 $25
    ld e, e                                       ; $4164: $5b
    dec h                                         ; $4165: $25
    sub b                                         ; $4166: $90
    dec h                                         ; $4167: $25
    pop bc                                        ; $4168: $c1
    dec h                                         ; $4169: $25
    rst $28                                       ; $416a: $ef
    dec h                                         ; $416b: $25
    inc c                                         ; $416c: $0c
    ld h, $30                                     ; $416d: $26 $30
    ld h, $5e                                     ; $416f: $26 $5e
    ld h, $82                                     ; $4171: $26 $82
    ld h, $ac                                     ; $4173: $26 $ac
    ld h, $e4                                     ; $4175: $26 $e4

jr_01a_4177:
    ld h, $16                                     ; $4177: $26 $16
    daa                                           ; $4179: $27
    ld a, b                                       ; $417a: $78
    daa                                           ; $417b: $27
    pop de                                        ; $417c: $d1
    daa                                           ; $417d: $27
    ld d, $28                                     ; $417e: $16 $28
    ld l, [hl]                                    ; $4180: $6e
    jr z, jr_01a_413d                             ; $4181: $28 $ba

jr_01a_4183:
    jr z, jr_01a_4177                             ; $4183: $28 $f2

    jr z, jr_01a_41df                             ; $4185: $28 $58

    add hl, hl                                    ; $4187: $29
    sub b                                         ; $4188: $90
    add hl, hl                                    ; $4189: $29
    db $ed                                        ; $418a: $ed
    add hl, hl                                    ; $418b: $29
    inc hl                                        ; $418c: $23
    ld a, [hl+]                                   ; $418d: $2a
    ld l, a                                       ; $418e: $6f
    ld a, [hl+]                                   ; $418f: $2a
    ret z                                         ; $4190: $c8

    ld a, [hl+]                                   ; $4191: $2a
    nop                                           ; $4192: $00
    dec hl                                        ; $4193: $2b
    ld b, [hl]                                    ; $4194: $46
    dec hl                                        ; $4195: $2b
    ld a, b                                       ; $4196: $78

jr_01a_4197:
    dec hl                                        ; $4197: $2b
    xor e                                         ; $4198: $ab
    dec hl                                        ; $4199: $2b
    add hl, bc                                    ; $419a: $09
    inc l                                         ; $419b: $2c
    ld b, [hl]                                    ; $419c: $46
    inc l                                         ; $419d: $2c
    xor a                                         ; $419e: $af
    inc l                                         ; $419f: $2c
    jp hl                                         ; $41a0: $e9


    inc l                                         ; $41a1: $2c
    rra                                           ; $41a2: $1f
    dec l                                         ; $41a3: $2d
    adc h                                         ; $41a4: $8c
    dec l                                         ; $41a5: $2d
    jp $f32d                                      ; $41a6: $c3 $2d $f3


    dec l                                         ; $41a9: $2d
    dec l                                         ; $41aa: $2d
    ld l, $66                                     ; $41ab: $2e $66
    ld l, $c2                                     ; $41ad: $2e $c2
    ld l, $21                                     ; $41af: $2e $21
    cpl                                           ; $41b1: $2f
    ld e, c                                       ; $41b2: $59
    cpl                                           ; $41b3: $2f
    sub e                                         ; $41b4: $93

jr_01a_41b5:
    cpl                                           ; $41b5: $2f
    pop bc                                        ; $41b6: $c1
    cpl                                           ; $41b7: $2f
    ld a, [$4e2f]                                 ; $41b8: $fa $2f $4e
    jr nc, jr_01a_4235                            ; $41bb: $30 $78

    jr nc, jr_01a_4197                            ; $41bd: $30 $d8

    jr nc, @+$08                                  ; $41bf: $30 $06

    ld sp, $3150                                  ; $41c1: $31 $50 $31
    and e                                         ; $41c4: $a3
    ld sp, $31d0                                  ; $41c5: $31 $d0 $31
    nop                                           ; $41c8: $00
    ld [hl-], a                                   ; $41c9: $32
    ccf                                           ; $41ca: $3f
    ld [hl-], a                                   ; $41cb: $32
    ld a, d                                       ; $41cc: $7a
    ld [hl-], a                                   ; $41cd: $32
    xor b                                         ; $41ce: $a8
    ld [hl-], a                                   ; $41cf: $32
    db $db                                        ; $41d0: $db
    ld [hl-], a                                   ; $41d1: $32
    ld l, $33                                     ; $41d2: $2e $33
    ld h, h                                       ; $41d4: $64
    inc sp                                        ; $41d5: $33
    sbc b                                         ; $41d6: $98
    inc sp                                        ; $41d7: $33
    db $fd                                        ; $41d8: $fd
    inc sp                                        ; $41d9: $33
    ld l, c                                       ; $41da: $69
    inc [hl]                                      ; $41db: $34
    ret nz                                        ; $41dc: $c0

    inc [hl]                                      ; $41dd: $34
    ld a, [hl+]                                   ; $41de: $2a

jr_01a_41df:
    dec [hl]                                      ; $41df: $35
    inc a                                         ; $41e0: $3c
    dec [hl]                                      ; $41e1: $35
    xor c                                         ; $41e2: $a9
    dec [hl]                                      ; $41e3: $35

jr_01a_41e4:
    dec c                                         ; $41e4: $0d
    ld [hl], $5f                                  ; $41e5: $36 $5f
    ld [hl], $92                                  ; $41e7: $36 $92
    ld [hl], $f6                                  ; $41e9: $36 $f6
    ld [hl], $1f                                  ; $41eb: $36 $1f
    scf                                           ; $41ed: $37
    ld l, l                                       ; $41ee: $6d
    scf                                           ; $41ef: $37
    ret nz                                        ; $41f0: $c0

    scf                                           ; $41f1: $37
    db $f4                                        ; $41f2: $f4
    scf                                           ; $41f3: $37
    ld d, d                                       ; $41f4: $52
    jr c, jr_01a_4183                             ; $41f5: $38 $8c

    jr c, jr_01a_41b5                             ; $41f7: $38 $bc

    jr c, jr_01a_41e4                             ; $41f9: $38 $e9

    jr c, @+$09                                   ; $41fb: $38 $07

    inc l                                         ; $41fd: $2c
    jr nz, jr_01a_4277                            ; $41fe: $20 $77

    ld l, b                                       ; $4200: $68
    ld h, l                                       ; $4201: $65
    ld l, [hl]                                    ; $4202: $6e
    ld bc, $6874                                  ; $4203: $01 $74 $68
    ld h, l                                       ; $4206: $65
    jr nz, @+$69                                  ; $4207: $20 $67

    ld l, a                                       ; $4209: $6f
    ld l, h                                       ; $420a: $6c
    ld h, [hl]                                    ; $420b: $66
    ld h, l                                       ; $420c: $65
    ld [hl], d                                    ; $420d: $72
    ld [hl], e                                    ; $420e: $73
    jr nz, @+$6a                                  ; $420f: $20 $68

    ld h, l                                       ; $4211: $65
    ld h, c                                       ; $4212: $61
    ld [hl], d                                    ; $4213: $72
    ld bc, $666f                                  ; $4214: $01 $6f $66
    jr nz, jr_01a_4292                            ; $4217: $20 $79

    ld l, a                                       ; $4219: $6f
    ld [hl], l                                    ; $421a: $75
    ld [hl], d                                    ; $421b: $72
    jr nz, jr_01a_4294                            ; $421c: $20 $76

    ld l, c                                       ; $421e: $69
    ld h, e                                       ; $421f: $63
    ld [hl], h                                    ; $4220: $74
    ld l, a                                       ; $4221: $6f
    ld [hl], d                                    ; $4222: $72
    ld a, c                                       ; $4223: $79
    inc l                                         ; $4224: $2c
    ld [bc], a                                    ; $4225: $02
    ld a, c                                       ; $4226: $79
    ld l, a                                       ; $4227: $6f
    ld [hl], l                                    ; $4228: $75
    daa                                           ; $4229: $27
    ld l, h                                       ; $422a: $6c
    ld l, h                                       ; $422b: $6c
    jr nz, jr_01a_4290                            ; $422c: $20 $62

    ld h, l                                       ; $422e: $65
    jr nz, jr_01a_4292                            ; $422f: $20 $61

    jr nz, jr_01a_429b                            ; $4231: $20 $68

    ld h, l                                       ; $4233: $65
    ld [hl], d                                    ; $4234: $72

jr_01a_4235:
    ld l, a                                       ; $4235: $6f
    ld hl, $5401                                  ; $4236: $21 $01 $54
    ld l, b                                       ; $4239: $68
    ld h, c                                       ; $423a: $61
    ld [hl], h                                    ; $423b: $74
    jr nz, jr_01a_42a2                            ; $423c: $20 $64

    ld h, c                                       ; $423e: $61
    ld a, c                                       ; $423f: $79
    jr nz, jr_01a_42b9                            ; $4240: $20 $77

    ld l, c                                       ; $4242: $69
    ld l, h                                       ; $4243: $6c
    ld l, h                                       ; $4244: $6c
    ld bc, $6f63                                  ; $4245: $01 $63 $6f
    ld l, l                                       ; $4248: $6d
    ld h, l                                       ; $4249: $65
    jr nz, jr_01a_42c2                            ; $424a: $20 $76

    ld h, l                                       ; $424c: $65
    ld [hl], d                                    ; $424d: $72
    ld a, c                                       ; $424e: $79
    jr nz, jr_01a_42c4                            ; $424f: $20 $73

    ld l, a                                       ; $4251: $6f
    ld l, a                                       ; $4252: $6f
    ld l, [hl]                                    ; $4253: $6e
    ld l, $03                                     ; $4254: $2e $03
    nop                                           ; $4256: $00
    ld b, l                                       ; $4257: $45
    halt                                          ; $4258: $76
    ld h, l                                       ; $4259: $65
    ld l, [hl]                                    ; $425a: $6e
    jr nz, @+$63                                  ; $425b: $20 $61

    jr nz, jr_01a_42cf                            ; $425d: $20 $70

    ld [hl], d                                    ; $425f: $72
    ld l, a                                       ; $4260: $6f
    jr nz, jr_01a_42cf                            ; $4261: $20 $6c

    ld l, c                                       ; $4263: $69
    ld l, e                                       ; $4264: $6b
    ld h, l                                       ; $4265: $65
    jr nz, jr_01a_42d5                            ; $4266: $20 $6d

    ld h, l                                       ; $4268: $65
    ld bc, $6163                                  ; $4269: $01 $63 $61
    ld l, [hl]                                    ; $426c: $6e
    daa                                           ; $426d: $27
    ld [hl], h                                    ; $426e: $74
    jr nz, @+$64                                  ; $426f: $20 $62

    ld h, l                                       ; $4271: $65
    ld h, c                                       ; $4272: $61
    ld [hl], h                                    ; $4273: $74
    jr nz, jr_01a_42ea                            ; $4274: $20 $74

    ld l, b                                       ; $4276: $68

jr_01a_4277:
    ld h, l                                       ; $4277: $65
    jr nz, jr_01a_42e9                            ; $4278: $20 $6f

    ld l, [hl]                                    ; $427a: $6e
    ld h, l                                       ; $427b: $65
    ld bc, $6877                                  ; $427c: $01 $77 $68
    ld l, a                                       ; $427f: $6f
    jr nz, jr_01a_42e4                            ; $4280: $20 $62

    ld h, l                                       ; $4282: $65
    ld h, c                                       ; $4283: $61
    ld [hl], h                                    ; $4284: $74
    jr nz, @+$4f                                  ; $4285: $20 $4d

    ld h, c                                       ; $4287: $61
    ld [hl], d                                    ; $4288: $72
    ld l, c                                       ; $4289: $69
    ld l, a                                       ; $428a: $6f
    ld hl, $0003                                  ; $428b: $21 $03 $00
    ld d, b                                       ; $428e: $50
    ld h, l                                       ; $428f: $65

jr_01a_4290:
    ld [hl], d                                    ; $4290: $72
    ld l, b                                       ; $4291: $68

jr_01a_4292:
    ld h, c                                       ; $4292: $61
    ld [hl], b                                    ; $4293: $70

jr_01a_4294:
    ld [hl], e                                    ; $4294: $73
    jr nz, jr_01a_4310                            ; $4295: $20 $79

    ld l, a                                       ; $4297: $6f
    ld [hl], l                                    ; $4298: $75
    daa                                           ; $4299: $27
    ld l, h                                       ; $429a: $6c

jr_01a_429b:
    ld l, h                                       ; $429b: $6c
    ld bc, $6562                                  ; $429c: $01 $62 $65
    ld h, e                                       ; $429f: $63
    ld l, a                                       ; $42a0: $6f
    ld l, l                                       ; $42a1: $6d

jr_01a_42a2:
    ld h, l                                       ; $42a2: $65
    jr nz, jr_01a_430a                            ; $42a3: $20 $65

    halt                                          ; $42a5: $76
    ld h, l                                       ; $42a6: $65
    ld [hl], d                                    ; $42a7: $72
    ld a, c                                       ; $42a8: $79
    ld bc, $6f67                                  ; $42a9: $01 $67 $6f
    ld l, h                                       ; $42ac: $6c
    ld h, [hl]                                    ; $42ad: $66
    ld h, l                                       ; $42ae: $65
    ld [hl], d                                    ; $42af: $72
    daa                                           ; $42b0: $27
    ld [hl], e                                    ; $42b1: $73
    jr nz, @+$6b                                  ; $42b2: $20 $69

    ld h, h                                       ; $42b4: $64
    ld l, a                                       ; $42b5: $6f
    ld l, h                                       ; $42b6: $6c
    ld l, $03                                     ; $42b7: $2e $03

jr_01a_42b9:
    nop                                           ; $42b9: $00
    ld d, h                                       ; $42ba: $54
    ld l, b                                       ; $42bb: $68
    ld h, l                                       ; $42bc: $65
    jr nz, jr_01a_4323                            ; $42bd: $20 $64

    ld l, c                                       ; $42bf: $69
    ld [hl], d                                    ; $42c0: $72
    ld h, l                                       ; $42c1: $65

jr_01a_42c2:
    ld h, e                                       ; $42c2: $63
    ld [hl], h                                    ; $42c3: $74

jr_01a_42c4:
    ld l, a                                       ; $42c4: $6f
    ld [hl], d                                    ; $42c5: $72
    daa                                           ; $42c6: $27
    ld [hl], e                                    ; $42c7: $73
    ld bc, $6f63                                  ; $42c8: $01 $63 $6f
    ld l, a                                       ; $42cb: $6f
    ld l, e                                       ; $42cc: $6b
    ld h, d                                       ; $42cd: $62
    ld l, a                                       ; $42ce: $6f

jr_01a_42cf:
    ld l, a                                       ; $42cf: $6f
    ld l, e                                       ; $42d0: $6b
    ld [hl], e                                    ; $42d1: $73
    ld bc, $7261                                  ; $42d2: $01 $61 $72

jr_01a_42d5:
    ld h, l                                       ; $42d5: $65
    jr nz, @+$6a                                  ; $42d6: $20 $68

    ld h, l                                       ; $42d8: $65
    ld [hl], d                                    ; $42d9: $72
    ld h, l                                       ; $42da: $65
    ld l, $03                                     ; $42db: $2e $03
    nop                                           ; $42dd: $00
    ld d, h                                       ; $42de: $54
    ld l, b                                       ; $42df: $68
    ld h, l                                       ; $42e0: $65
    jr nz, jr_01a_4347                            ; $42e1: $20 $64

    ld l, c                                       ; $42e3: $69

jr_01a_42e4:
    ld [hl], d                                    ; $42e4: $72
    ld h, l                                       ; $42e5: $65
    ld h, e                                       ; $42e6: $63
    ld [hl], h                                    ; $42e7: $74
    ld l, a                                       ; $42e8: $6f

jr_01a_42e9:
    ld [hl], d                                    ; $42e9: $72

jr_01a_42ea:
    daa                                           ; $42ea: $27
    ld [hl], e                                    ; $42eb: $73
    ld bc, $6f6d                                  ; $42ec: $01 $6d $6f
    ld [hl], l                                    ; $42ef: $75
    ld l, [hl]                                    ; $42f0: $6e
    ld [hl], h                                    ; $42f1: $74
    ld h, c                                       ; $42f2: $61
    ld l, c                                       ; $42f3: $69
    ld l, [hl]                                    ; $42f4: $6e
    jr nz, jr_01a_435a                            ; $42f5: $20 $63

    ld l, h                                       ; $42f7: $6c
    ld l, c                                       ; $42f8: $69
    ld l, l                                       ; $42f9: $6d
    ld h, d                                       ; $42fa: $62
    ld l, c                                       ; $42fb: $69
    ld l, [hl]                                    ; $42fc: $6e
    ld h, a                                       ; $42fd: $67
    ld bc, $6f62                                  ; $42fe: $01 $62 $6f
    ld l, a                                       ; $4301: $6f
    ld l, e                                       ; $4302: $6b
    ld [hl], e                                    ; $4303: $73
    jr nz, jr_01a_4367                            ; $4304: $20 $61

    ld [hl], d                                    ; $4306: $72
    ld h, l                                       ; $4307: $65
    jr nz, jr_01a_4372                            ; $4308: $20 $68

jr_01a_430a:
    ld h, l                                       ; $430a: $65
    ld [hl], d                                    ; $430b: $72
    ld h, l                                       ; $430c: $65
    ld l, $01                                     ; $430d: $2e $01
    nop                                           ; $430f: $00

jr_01a_4310:
    rlca                                          ; $4310: $07
    jr nz, jr_01a_4387                            ; $4311: $20 $74

    ld l, b                                       ; $4313: $68
    ld l, a                                       ; $4314: $6f
    ld [hl], l                                    ; $4315: $75
    ld h, a                                       ; $4316: $67
    ld l, b                                       ; $4317: $68
    ld [hl], h                                    ; $4318: $74
    ld bc, $666f                                  ; $4319: $01 $6f $66
    jr nz, @+$63                                  ; $431c: $20 $61

    jr nz, jr_01a_4390                            ; $431e: $20 $70

    ld h, l                                       ; $4320: $65
    ld l, [hl]                                    ; $4321: $6e
    ld h, h                                       ; $4322: $64

jr_01a_4323:
    ld [hl], l                                    ; $4323: $75
    ld l, h                                       ; $4324: $6c
    ld [hl], l                                    ; $4325: $75
    ld l, l                                       ; $4326: $6d
    ld bc, $7773                                  ; $4327: $01 $73 $77
    ld l, c                                       ; $432a: $69
    ld l, [hl]                                    ; $432b: $6e
    ld h, a                                       ; $432c: $67
    ld hl, $0003                                  ; $432d: $21 $03 $00
    ld d, h                                       ; $4330: $54
    ld l, b                                       ; $4331: $68
    ld h, l                                       ; $4332: $65
    ld [hl], d                                    ; $4333: $72
    ld h, l                                       ; $4334: $65
    daa                                           ; $4335: $27
    ld [hl], e                                    ; $4336: $73
    jr nz, @+$63                                  ; $4337: $20 $61

    jr nz, jr_01a_439d                            ; $4339: $20 $62

    ld l, a                                       ; $433b: $6f
    ld l, a                                       ; $433c: $6f
    ld l, e                                       ; $433d: $6b
    ld a, [hl-]                                   ; $433e: $3a
    ld bc, $5422                                  ; $433f: $01 $22 $54
    ld l, b                                       ; $4342: $68
    ld h, l                                       ; $4343: $65
    jr nz, @+$49                                  ; $4344: $20 $47

    ld [hl], d                                    ; $4346: $72

jr_01a_4347:
    ld h, l                                       ; $4347: $65
    ld h, c                                       ; $4348: $61
    ld [hl], h                                    ; $4349: $74
    jr nz, jr_01a_4393                            ; $434a: $20 $47

    ld l, a                                       ; $434c: $6f
    ld l, h                                       ; $434d: $6c
    ld h, [hl]                                    ; $434e: $66
    ld bc, $6e45                                  ; $434f: $01 $45 $6e
    ld h, e                                       ; $4352: $63
    ld a, c                                       ; $4353: $79
    ld h, e                                       ; $4354: $63
    ld l, h                                       ; $4355: $6c
    ld l, a                                       ; $4356: $6f
    ld [hl], b                                    ; $4357: $70
    ld h, l                                       ; $4358: $65
    ld h, h                                       ; $4359: $64

jr_01a_435a:
    ld l, c                                       ; $435a: $69
    ld h, c                                       ; $435b: $61
    ld l, $22                                     ; $435c: $2e $22
    inc bc                                        ; $435e: $03
    nop                                           ; $435f: $00
    ld d, h                                       ; $4360: $54
    ld l, b                                       ; $4361: $68
    ld h, l                                       ; $4362: $65
    ld [hl], d                                    ; $4363: $72
    ld h, l                                       ; $4364: $65
    daa                                           ; $4365: $27
    ld [hl], e                                    ; $4366: $73

jr_01a_4367:
    jr nz, jr_01a_43ca                            ; $4367: $20 $61

    jr nz, jr_01a_43cd                            ; $4369: $20 $62

    ld l, a                                       ; $436b: $6f
    ld l, a                                       ; $436c: $6f
    ld l, e                                       ; $436d: $6b
    ld a, [hl-]                                   ; $436e: $3a
    ld bc, $4422                                  ; $436f: $01 $22 $44

jr_01a_4372:
    ld l, c                                       ; $4372: $69
    ld h, e                                       ; $4373: $63
    ld [hl], h                                    ; $4374: $74
    ld l, c                                       ; $4375: $69
    ld l, a                                       ; $4376: $6f
    ld l, [hl]                                    ; $4377: $6e
    ld h, c                                       ; $4378: $61
    ld [hl], d                                    ; $4379: $72
    ld a, c                                       ; $437a: $79
    jr nz, jr_01a_43ec                            ; $437b: $20 $6f

    ld h, [hl]                                    ; $437d: $66
    ld bc, $6f43                                  ; $437e: $01 $43 $6f
    ld [hl], l                                    ; $4381: $75
    ld [hl], d                                    ; $4382: $72
    ld [hl], e                                    ; $4383: $73
    ld h, l                                       ; $4384: $65
    jr nz, jr_01a_43d3                            ; $4385: $20 $4c

jr_01a_4387:
    ld h, c                                       ; $4387: $61
    ld a, c                                       ; $4388: $79
    ld l, a                                       ; $4389: $6f
    ld [hl], l                                    ; $438a: $75
    ld [hl], h                                    ; $438b: $74
    ld l, $22                                     ; $438c: $2e $22
    inc bc                                        ; $438e: $03
    nop                                           ; $438f: $00

jr_01a_4390:
    ld d, h                                       ; $4390: $54
    ld l, b                                       ; $4391: $68
    ld h, l                                       ; $4392: $65

jr_01a_4393:
    ld [hl], d                                    ; $4393: $72
    ld h, l                                       ; $4394: $65
    daa                                           ; $4395: $27
    ld [hl], e                                    ; $4396: $73
    jr nz, jr_01a_43fa                            ; $4397: $20 $61

    jr nz, jr_01a_43fd                            ; $4399: $20 $62

    ld l, a                                       ; $439b: $6f
    ld l, a                                       ; $439c: $6f

jr_01a_439d:
    ld l, e                                       ; $439d: $6b
    ld a, [hl-]                                   ; $439e: $3a
    ld bc, $4322                                  ; $439f: $01 $22 $43
    ld l, a                                       ; $43a2: $6f
    ld l, l                                       ; $43a3: $6d
    ld [hl], b                                    ; $43a4: $70
    ld l, h                                       ; $43a5: $6c
    ld h, l                                       ; $43a6: $65
    ld [hl], h                                    ; $43a7: $74
    ld h, l                                       ; $43a8: $65
    ld bc, $614d                                  ; $43a9: $01 $4d $61
    ld l, [hl]                                    ; $43ac: $6e
    ld h, c                                       ; $43ad: $61
    ld h, a                                       ; $43ae: $67
    ld h, l                                       ; $43af: $65
    ld l, l                                       ; $43b0: $6d
    ld h, l                                       ; $43b1: $65
    ld l, [hl]                                    ; $43b2: $6e
    ld [hl], h                                    ; $43b3: $74
    jr nz, jr_01a_43fd                            ; $43b4: $20 $47

    ld [hl], l                                    ; $43b6: $75
    ld l, c                                       ; $43b7: $69
    ld h, h                                       ; $43b8: $64
    ld h, l                                       ; $43b9: $65
    ld l, $22                                     ; $43ba: $2e $22
    inc bc                                        ; $43bc: $03
    nop                                           ; $43bd: $00
    ld d, h                                       ; $43be: $54
    ld l, b                                       ; $43bf: $68
    ld h, l                                       ; $43c0: $65
    ld [hl], d                                    ; $43c1: $72
    ld h, l                                       ; $43c2: $65
    daa                                           ; $43c3: $27
    ld [hl], e                                    ; $43c4: $73
    jr nz, jr_01a_4428                            ; $43c5: $20 $61

    jr nz, jr_01a_442b                            ; $43c7: $20 $62

    ld l, a                                       ; $43c9: $6f

jr_01a_43ca:
    ld l, a                                       ; $43ca: $6f
    ld l, e                                       ; $43cb: $6b
    ld a, [hl-]                                   ; $43cc: $3a

jr_01a_43cd:
    ld bc, $4822                                  ; $43cd: $01 $22 $48
    ld l, c                                       ; $43d0: $69
    ld [hl], e                                    ; $43d1: $73
    ld [hl], h                                    ; $43d2: $74

jr_01a_43d3:
    ld l, a                                       ; $43d3: $6f
    ld [hl], d                                    ; $43d4: $72
    ld a, c                                       ; $43d5: $79
    jr nz, jr_01a_4447                            ; $43d6: $20 $6f

    ld h, [hl]                                    ; $43d8: $66
    jr nz, jr_01a_4428                            ; $43d9: $20 $4d

    ld h, c                                       ; $43db: $61
    ld [hl], d                                    ; $43dc: $72
    ld l, c                                       ; $43dd: $69
    ld l, a                                       ; $43de: $6f
    ld l, [hl]                                    ; $43df: $6e
    ld bc, $6c43                                  ; $43e0: $01 $43 $6c
    ld [hl], l                                    ; $43e3: $75
    ld h, d                                       ; $43e4: $62
    jr nz, jr_01a_443b                            ; $43e5: $20 $54

    ld l, a                                       ; $43e7: $6f
    ld [hl], l                                    ; $43e8: $75
    ld [hl], d                                    ; $43e9: $72
    ld l, [hl]                                    ; $43ea: $6e
    ld h, c                                       ; $43eb: $61

jr_01a_43ec:
    ld l, l                                       ; $43ec: $6d
    ld h, l                                       ; $43ed: $65
    ld l, [hl]                                    ; $43ee: $6e
    ld [hl], h                                    ; $43ef: $74
    ld l, $22                                     ; $43f0: $2e $22
    inc bc                                        ; $43f2: $03
    nop                                           ; $43f3: $00
    ld d, h                                       ; $43f4: $54
    ld l, b                                       ; $43f5: $68
    ld h, l                                       ; $43f6: $65
    ld [hl], d                                    ; $43f7: $72
    ld h, l                                       ; $43f8: $65
    daa                                           ; $43f9: $27

jr_01a_43fa:
    ld [hl], e                                    ; $43fa: $73
    jr nz, jr_01a_445e                            ; $43fb: $20 $61

jr_01a_43fd:
    jr nz, jr_01a_4461                            ; $43fd: $20 $62

    ld l, a                                       ; $43ff: $6f
    ld l, a                                       ; $4400: $6f
    ld l, e                                       ; $4401: $6b
    ld a, [hl-]                                   ; $4402: $3a
    ld bc, $4222                                  ; $4403: $01 $22 $42
    ld [hl], d                                    ; $4406: $72
    ld h, l                                       ; $4407: $65
    ld h, c                                       ; $4408: $61
    ld l, e                                       ; $4409: $6b
    ld l, c                                       ; $440a: $69
    ld l, [hl]                                    ; $440b: $6e
    ld h, a                                       ; $440c: $67
    jr nz, jr_01a_4483                            ; $440d: $20 $74

    ld l, b                                       ; $440f: $68
    ld h, l                                       ; $4410: $65
    ld bc, $3031                                  ; $4411: $01 $31 $30
    jr nc, jr_01a_4436                            ; $4414: $30 $20

    ld b, d                                       ; $4416: $42
    ld h, c                                       ; $4417: $61
    ld [hl], d                                    ; $4418: $72
    ld [hl], d                                    ; $4419: $72
    ld l, c                                       ; $441a: $69
    ld h, l                                       ; $441b: $65
    ld [hl], d                                    ; $441c: $72
    ld [hl], e                                    ; $441d: $73
    ld hl, $0322                                  ; $441e: $21 $22 $03
    nop                                           ; $4421: $00
    ld d, h                                       ; $4422: $54
    ld l, b                                       ; $4423: $68
    ld h, l                                       ; $4424: $65
    ld [hl], d                                    ; $4425: $72
    ld h, l                                       ; $4426: $65
    daa                                           ; $4427: $27

jr_01a_4428:
    ld [hl], e                                    ; $4428: $73
    jr nz, jr_01a_448c                            ; $4429: $20 $61

jr_01a_442b:
    jr nz, jr_01a_448f                            ; $442b: $20 $62

    ld l, a                                       ; $442d: $6f
    ld l, a                                       ; $442e: $6f
    ld l, e                                       ; $442f: $6b
    ld a, [hl-]                                   ; $4430: $3a
    ld bc, $4722                                  ; $4431: $01 $22 $47
    ld l, a                                       ; $4434: $6f
    ld l, h                                       ; $4435: $6c

jr_01a_4436:
    ld h, [hl]                                    ; $4436: $66
    jr nz, @+$54                                  ; $4437: $20 $52

    ld [hl], l                                    ; $4439: $75
    ld l, h                                       ; $443a: $6c

jr_01a_443b:
    ld h, l                                       ; $443b: $65
    ld [hl], e                                    ; $443c: $73
    ld bc, $6f66                                  ; $443d: $01 $66 $6f
    ld [hl], d                                    ; $4440: $72
    jr nz, jr_01a_4485                            ; $4441: $20 $42

    ld h, l                                       ; $4443: $65
    ld h, a                                       ; $4444: $67
    ld l, c                                       ; $4445: $69
    ld l, [hl]                                    ; $4446: $6e

jr_01a_4447:
    ld l, [hl]                                    ; $4447: $6e
    ld h, l                                       ; $4448: $65
    ld [hl], d                                    ; $4449: $72
    ld [hl], e                                    ; $444a: $73
    ld l, $22                                     ; $444b: $2e $22
    inc bc                                        ; $444d: $03
    nop                                           ; $444e: $00
    ld d, h                                       ; $444f: $54
    ld l, b                                       ; $4450: $68
    ld h, l                                       ; $4451: $65
    ld [hl], d                                    ; $4452: $72
    ld h, l                                       ; $4453: $65
    daa                                           ; $4454: $27
    ld [hl], e                                    ; $4455: $73
    jr nz, jr_01a_44b9                            ; $4456: $20 $61

    jr nz, jr_01a_44bc                            ; $4458: $20 $62

    ld l, a                                       ; $445a: $6f
    ld l, a                                       ; $445b: $6f
    ld l, e                                       ; $445c: $6b
    ld a, [hl-]                                   ; $445d: $3a

jr_01a_445e:
    ld bc, $4d22                                  ; $445e: $01 $22 $4d

jr_01a_4461:
    ld l, a                                       ; $4461: $6f
    ld h, h                                       ; $4462: $64
    ld h, l                                       ; $4463: $65
    ld [hl], d                                    ; $4464: $72
    ld l, [hl]                                    ; $4465: $6e
    jr nz, jr_01a_44af                            ; $4466: $20 $47

    ld l, a                                       ; $4468: $6f
    ld l, h                                       ; $4469: $6c
    ld h, [hl]                                    ; $446a: $66
    ld bc, $7250                                  ; $446b: $01 $50 $72
    ld l, c                                       ; $446e: $69
    ld l, [hl]                                    ; $446f: $6e
    ld h, e                                       ; $4470: $63
    ld l, c                                       ; $4471: $69
    ld [hl], b                                    ; $4472: $70
    ld l, h                                       ; $4473: $6c
    ld h, l                                       ; $4474: $65
    ld [hl], e                                    ; $4475: $73
    ld l, $22                                     ; $4476: $2e $22
    inc bc                                        ; $4478: $03
    nop                                           ; $4479: $00
    ld d, h                                       ; $447a: $54
    ld l, b                                       ; $447b: $68
    ld h, l                                       ; $447c: $65
    ld [hl], d                                    ; $447d: $72
    ld h, l                                       ; $447e: $65
    daa                                           ; $447f: $27
    ld [hl], e                                    ; $4480: $73
    jr nz, jr_01a_44e4                            ; $4481: $20 $61

jr_01a_4483:
    jr nz, jr_01a_44e7                            ; $4483: $20 $62

jr_01a_4485:
    ld l, a                                       ; $4485: $6f
    ld l, a                                       ; $4486: $6f
    ld l, e                                       ; $4487: $6b
    ld a, [hl-]                                   ; $4488: $3a
    ld bc, $5222                                  ; $4489: $01 $22 $52

jr_01a_448c:
    ld l, a                                       ; $448c: $6f
    ld h, c                                       ; $448d: $61
    ld h, h                                       ; $448e: $64

jr_01a_448f:
    jr nz, jr_01a_4505                            ; $448f: $20 $74

    ld l, a                                       ; $4491: $6f
    jr nz, jr_01a_4508                            ; $4492: $20 $74

    ld l, b                                       ; $4494: $68
    ld h, l                                       ; $4495: $65
    ld bc, $6953                                  ; $4496: $01 $53 $69
    ld l, [hl]                                    ; $4499: $6e
    ld h, a                                       ; $449a: $67
    ld l, h                                       ; $449b: $6c
    ld h, l                                       ; $449c: $65
    ld [hl], e                                    ; $449d: $73
    ld l, $22                                     ; $449e: $2e $22
    inc bc                                        ; $44a0: $03
    nop                                           ; $44a1: $00
    ld c, c                                       ; $44a2: $49
    ld [hl], h                                    ; $44a3: $74
    daa                                           ; $44a4: $27
    ld [hl], e                                    ; $44a5: $73
    jr nz, @+$63                                  ; $44a6: $20 $61

    jr nz, jr_01a_451a                            ; $44a8: $20 $70

    ld l, c                                       ; $44aa: $69
    ld h, e                                       ; $44ab: $63
    ld [hl], h                                    ; $44ac: $74
    ld [hl], l                                    ; $44ad: $75
    ld [hl], d                                    ; $44ae: $72

jr_01a_44af:
    ld h, l                                       ; $44af: $65
    jr nz, @+$71                                  ; $44b0: $20 $6f

    ld h, [hl]                                    ; $44b2: $66
    ld bc, $7665                                  ; $44b3: $01 $65 $76
    ld h, l                                       ; $44b6: $65
    ld [hl], d                                    ; $44b7: $72
    ld a, c                                       ; $44b8: $79

jr_01a_44b9:
    jr nz, jr_01a_4522                            ; $44b9: $20 $67

    ld l, a                                       ; $44bb: $6f

jr_01a_44bc:
    ld l, h                                       ; $44bc: $6c
    ld h, [hl]                                    ; $44bd: $66
    ld h, l                                       ; $44be: $65
    ld [hl], d                                    ; $44bf: $72
    daa                                           ; $44c0: $27
    ld [hl], e                                    ; $44c1: $73
    ld bc, $6469                                  ; $44c2: $01 $69 $64
    ld l, a                                       ; $44c5: $6f
    ld l, h                                       ; $44c6: $6c
    inc l                                         ; $44c7: $2c
    jr nz, jr_01a_4517                            ; $44c8: $20 $4d

    ld h, c                                       ; $44ca: $61
    ld [hl], d                                    ; $44cb: $72
    ld l, c                                       ; $44cc: $69
    ld l, a                                       ; $44cd: $6f
    ld l, $03                                     ; $44ce: $2e $03
    nop                                           ; $44d0: $00
    ld c, l                                       ; $44d1: $4d
    ld h, c                                       ; $44d2: $61
    ld [hl], d                                    ; $44d3: $72
    ld l, c                                       ; $44d4: $69
    ld l, a                                       ; $44d5: $6f
    ld l, [hl]                                    ; $44d6: $6e
    jr nz, jr_01a_451c                            ; $44d7: $20 $43

    ld l, h                                       ; $44d9: $6c
    ld [hl], l                                    ; $44da: $75
    ld h, d                                       ; $44db: $62
    ld bc, $6944                                  ; $44dc: $01 $44 $69
    ld [hl], d                                    ; $44df: $72
    ld h, l                                       ; $44e0: $65
    ld h, e                                       ; $44e1: $63
    ld [hl], h                                    ; $44e2: $74
    ld l, a                                       ; $44e3: $6f

jr_01a_44e4:
    ld [hl], d                                    ; $44e4: $72
    daa                                           ; $44e5: $27
    ld [hl], e                                    ; $44e6: $73

jr_01a_44e7:
    jr nz, jr_01a_4538                            ; $44e7: $20 $4f

    ld h, [hl]                                    ; $44e9: $66
    ld h, [hl]                                    ; $44ea: $66
    ld l, c                                       ; $44eb: $69
    ld h, e                                       ; $44ec: $63
    ld h, l                                       ; $44ed: $65
    inc bc                                        ; $44ee: $03
    nop                                           ; $44ef: $00
    ld c, c                                       ; $44f0: $49
    ld h, [hl]                                    ; $44f1: $66
    jr nz, jr_01a_456d                            ; $44f2: $20 $79

    ld l, a                                       ; $44f4: $6f
    ld [hl], l                                    ; $44f5: $75
    ld [hl], d                                    ; $44f6: $72
    jr nz, jr_01a_4565                            ; $44f7: $20 $6c

    ld h, l                                       ; $44f9: $65
    halt                                          ; $44fa: $76
    ld h, l                                       ; $44fb: $65
    ld l, h                                       ; $44fc: $6c
    ld bc, $6e69                                  ; $44fd: $01 $69 $6e
    ld h, e                                       ; $4500: $63
    ld [hl], d                                    ; $4501: $72
    ld h, l                                       ; $4502: $65
    ld h, c                                       ; $4503: $61
    ld [hl], e                                    ; $4504: $73

jr_01a_4505:
    ld h, l                                       ; $4505: $65
    ld [hl], e                                    ; $4506: $73
    inc l                                         ; $4507: $2c

jr_01a_4508:
    jr nz, jr_01a_456f                            ; $4508: $20 $65

    ld a, b                                       ; $450a: $78
    ld [hl], h                                    ; $450b: $74
    ld h, l                                       ; $450c: $65
    ld l, [hl]                                    ; $450d: $6e
    ld h, h                                       ; $450e: $64
    ld bc, $6f79                                  ; $450f: $01 $79 $6f
    ld [hl], l                                    ; $4512: $75
    ld [hl], d                                    ; $4513: $72
    jr nz, jr_01a_457a                            ; $4514: $20 $64

    ld [hl], d                                    ; $4516: $72

jr_01a_4517:
    ld l, c                                       ; $4517: $69
    halt                                          ; $4518: $76
    ld h, l                                       ; $4519: $65

jr_01a_451a:
    jr nz, jr_01a_4582                            ; $451a: $20 $66

jr_01a_451c:
    ld l, c                                       ; $451c: $69
    ld [hl], d                                    ; $451d: $72
    ld [hl], e                                    ; $451e: $73
    ld [hl], h                                    ; $451f: $74
    ld l, $02                                     ; $4520: $2e $02

jr_01a_4522:
    ld c, h                                       ; $4522: $4c
    ld l, a                                       ; $4523: $6f
    ld l, [hl]                                    ; $4524: $6e
    ld h, a                                       ; $4525: $67
    jr nz, jr_01a_458c                            ; $4526: $20 $64

    ld [hl], d                                    ; $4528: $72
    ld l, c                                       ; $4529: $69
    halt                                          ; $452a: $76
    ld h, l                                       ; $452b: $65
    ld [hl], e                                    ; $452c: $73
    jr nz, jr_01a_4590                            ; $452d: $20 $61

    ld [hl], d                                    ; $452f: $72
    ld h, l                                       ; $4530: $65
    jr nz, jr_01a_45a2                            ; $4531: $20 $6f

    ld l, [hl]                                    ; $4533: $6e
    ld h, l                                       ; $4534: $65
    jr nz, jr_01a_45a6                            ; $4535: $20 $6f

    ld h, [hl]                                    ; $4537: $66

jr_01a_4538:
    ld bc, $6f67                                  ; $4538: $01 $67 $6f
    ld l, h                                       ; $453b: $6c
    ld h, [hl]                                    ; $453c: $66
    daa                                           ; $453d: $27
    ld [hl], e                                    ; $453e: $73
    jr nz, jr_01a_45ae                            ; $453f: $20 $6d

    ld h, c                                       ; $4541: $61
    ld l, [hl]                                    ; $4542: $6e
    ld a, c                                       ; $4543: $79
    jr nz, jr_01a_45a9                            ; $4544: $20 $63

    ld l, b                                       ; $4546: $68
    ld h, c                                       ; $4547: $61
    ld [hl], d                                    ; $4548: $72
    ld l, l                                       ; $4549: $6d
    ld [hl], e                                    ; $454a: $73
    ld l, $03                                     ; $454b: $2e $03
    nop                                           ; $454d: $00
    ld c, l                                       ; $454e: $4d
    ld h, c                                       ; $454f: $61
    ld l, c                                       ; $4550: $69
    ld l, [hl]                                    ; $4551: $6e
    ld [hl], h                                    ; $4552: $74
    ld h, c                                       ; $4553: $61
    ld l, c                                       ; $4554: $69
    ld l, [hl]                                    ; $4555: $6e
    jr nz, jr_01a_45ba                            ; $4556: $20 $62

    ld h, c                                       ; $4558: $61
    ld l, h                                       ; $4559: $6c
    ld h, c                                       ; $455a: $61
    ld l, [hl]                                    ; $455b: $6e
    ld h, e                                       ; $455c: $63
    ld h, l                                       ; $455d: $65
    ld l, $01                                     ; $455e: $2e $01
    ld b, h                                       ; $4560: $44
    ld [hl], d                                    ; $4561: $72
    ld l, c                                       ; $4562: $69
    halt                                          ; $4563: $76
    ld h, l                                       ; $4564: $65

jr_01a_4565:
    jr nz, jr_01a_45d0                            ; $4565: $20 $69

    ld [hl], e                                    ; $4567: $73
    jr nz, jr_01a_45d3                            ; $4568: $20 $69

    ld l, l                                       ; $456a: $6d
    ld [hl], b                                    ; $456b: $70
    ld l, a                                       ; $456c: $6f

jr_01a_456d:
    ld [hl], d                                    ; $456d: $72
    ld [hl], h                                    ; $456e: $74

jr_01a_456f:
    ld h, c                                       ; $456f: $61
    ld l, [hl]                                    ; $4570: $6e
    ld [hl], h                                    ; $4571: $74
    inc l                                         ; $4572: $2c
    ld bc, $7562                                  ; $4573: $01 $62 $75
    ld [hl], h                                    ; $4576: $74
    jr nz, @+$75                                  ; $4577: $20 $73

    ld l, a                                       ; $4579: $6f

jr_01a_457a:
    jr nz, jr_01a_45e5                            ; $457a: $20 $69

    ld [hl], e                                    ; $457c: $73
    jr nz, jr_01a_45e2                            ; $457d: $20 $63

    ld l, a                                       ; $457f: $6f
    ld l, [hl]                                    ; $4580: $6e
    ld [hl], h                                    ; $4581: $74

jr_01a_4582:
    ld [hl], d                                    ; $4582: $72
    ld l, a                                       ; $4583: $6f
    ld l, h                                       ; $4584: $6c
    ld l, $03                                     ; $4585: $2e $03
    nop                                           ; $4587: $00
    ld b, c                                       ; $4588: $41
    jr nz, jr_01a_4602                            ; $4589: $20 $77

    ld l, c                                       ; $458b: $69

jr_01a_458c:
    ld h, h                                       ; $458c: $64
    ld h, l                                       ; $458d: $65
    jr nz, @+$6f                                  ; $458e: $20 $6d

jr_01a_4590:
    ld h, l                                       ; $4590: $65
    ld h, l                                       ; $4591: $65
    ld [hl], h                                    ; $4592: $74
    jr nz, jr_01a_45f6                            ; $4593: $20 $61

    ld [hl], d                                    ; $4595: $72
    ld h, l                                       ; $4596: $65
    ld h, c                                       ; $4597: $61
    ld bc, $656d                                  ; $4598: $01 $6d $65
    ld h, c                                       ; $459b: $61
    ld l, [hl]                                    ; $459c: $6e
    ld [hl], e                                    ; $459d: $73
    jr nz, jr_01a_4606                            ; $459e: $20 $66

    ld h, l                                       ; $45a0: $65
    ld [hl], a                                    ; $45a1: $77

jr_01a_45a2:
    ld h, l                                       ; $45a2: $65
    ld [hl], d                                    ; $45a3: $72
    jr nz, @+$6f                                  ; $45a4: $20 $6d

jr_01a_45a6:
    ld l, c                                       ; $45a6: $69
    ld [hl], e                                    ; $45a7: $73
    ld [hl], e                                    ; $45a8: $73

jr_01a_45a9:
    ld h, l                                       ; $45a9: $65
    ld h, h                                       ; $45aa: $64
    ld bc, $6873                                  ; $45ab: $01 $73 $68

jr_01a_45ae:
    ld l, a                                       ; $45ae: $6f
    ld [hl], h                                    ; $45af: $74
    ld [hl], e                                    ; $45b0: $73
    ld l, $03                                     ; $45b1: $2e $03
    nop                                           ; $45b3: $00
    ld d, h                                       ; $45b4: $54
    ld l, b                                       ; $45b5: $68
    ld h, l                                       ; $45b6: $65
    jr nz, jr_01a_4620                            ; $45b7: $20 $67

    ld l, a                                       ; $45b9: $6f

jr_01a_45ba:
    ld l, h                                       ; $45ba: $6c
    ld h, [hl]                                    ; $45bb: $66
    jr nz, jr_01a_462b                            ; $45bc: $20 $6d

    ld h, c                                       ; $45be: $61
    ld [hl], e                                    ; $45bf: $73
    ld [hl], h                                    ; $45c0: $74
    ld h, l                                       ; $45c1: $65
    ld [hl], d                                    ; $45c2: $72
    inc l                                         ; $45c3: $2c
    ld bc, $614d                                  ; $45c4: $01 $4d $61
    ld [hl], d                                    ; $45c7: $72
    ld l, c                                       ; $45c8: $69
    ld l, a                                       ; $45c9: $6f
    inc l                                         ; $45ca: $2c
    jr nz, @+$6b                                  ; $45cb: $20 $69

    ld [hl], e                                    ; $45cd: $73
    jr nz, @+$6f                                  ; $45ce: $20 $6d

jr_01a_45d0:
    ld a, c                                       ; $45d0: $79
    jr nz, jr_01a_463c                            ; $45d1: $20 $69

jr_01a_45d3:
    ld h, h                                       ; $45d3: $64
    ld l, a                                       ; $45d4: $6f
    ld l, h                                       ; $45d5: $6c
    ld hl, $4d02                                  ; $45d6: $21 $02 $4d
    ld a, c                                       ; $45d9: $79
    jr nz, @+$66                                  ; $45da: $20 $64

    ld [hl], d                                    ; $45dc: $72
    ld h, l                                       ; $45dd: $65
    ld h, c                                       ; $45de: $61
    ld l, l                                       ; $45df: $6d
    jr nz, jr_01a_464b                            ; $45e0: $20 $69

jr_01a_45e2:
    ld [hl], e                                    ; $45e2: $73
    jr nz, jr_01a_4659                            ; $45e3: $20 $74

jr_01a_45e5:
    ld l, a                                       ; $45e5: $6f
    jr nz, @+$72                                  ; $45e6: $20 $70

    ld l, h                                       ; $45e8: $6c
    ld h, c                                       ; $45e9: $61
    ld a, c                                       ; $45ea: $79
    ld bc, $2061                                  ; $45eb: $01 $61 $20
    ld [hl], d                                    ; $45ee: $72
    ld l, a                                       ; $45ef: $6f
    ld [hl], l                                    ; $45f0: $75
    ld l, [hl]                                    ; $45f1: $6e
    ld h, h                                       ; $45f2: $64
    jr nz, jr_01a_466c                            ; $45f3: $20 $77

    ld l, c                                       ; $45f5: $69

jr_01a_45f6:
    ld [hl], h                                    ; $45f6: $74
    ld l, b                                       ; $45f7: $68
    jr nz, @+$6a                                  ; $45f8: $20 $68

    ld l, c                                       ; $45fa: $69
    ld l, l                                       ; $45fb: $6d
    ld l, $03                                     ; $45fc: $2e $03
    nop                                           ; $45fe: $00
    ld d, h                                       ; $45ff: $54
    ld l, b                                       ; $4600: $68
    ld h, c                                       ; $4601: $61

jr_01a_4602:
    ld [hl], h                                    ; $4602: $74
    jr nz, jr_01a_4678                            ; $4603: $20 $73

    ld [hl], h                                    ; $4605: $74

jr_01a_4606:
    ld [hl], l                                    ; $4606: $75
    ld [hl], b                                    ; $4607: $70
    ld l, c                                       ; $4608: $69
    ld h, h                                       ; $4609: $64
    ld bc, $7562                                  ; $460a: $01 $62 $75
    ld l, [hl]                                    ; $460d: $6e
    ld l, e                                       ; $460e: $6b
    ld h, l                                       ; $460f: $65
    ld [hl], d                                    ; $4610: $72
    ld hl, $4820                                  ; $4611: $21 $20 $48
    ld l, l                                       ; $4614: $6d
    ld [hl], b                                    ; $4615: $70
    ld l, b                                       ; $4616: $68
    ld hl, $0003                                  ; $4617: $21 $03 $00
    ld c, a                                       ; $461a: $4f
    ld l, [hl]                                    ; $461b: $6e
    jr nz, @+$63                                  ; $461c: $20 $61

    jr nz, jr_01a_4684                            ; $461e: $20 $64

jr_01a_4620:
    ld [hl], l                                    ; $4620: $75
    ld h, [hl]                                    ; $4621: $66
    ld h, [hl]                                    ; $4622: $66
    jr nz, jr_01a_468e                            ; $4623: $20 $69

    ld [hl], h                                    ; $4625: $74
    daa                                           ; $4626: $27
    ld [hl], e                                    ; $4627: $73
    ld bc, $4e22                                  ; $4628: $01 $22 $4e

jr_01a_462b:
    ld l, c                                       ; $462b: $69
    ld h, e                                       ; $462c: $63
    ld h, l                                       ; $462d: $65
    jr nz, jr_01a_4683                            ; $462e: $20 $53

    ld l, b                                       ; $4630: $68
    ld h, c                                       ; $4631: $61
    ld l, [hl]                                    ; $4632: $6e
    ld l, e                                       ; $4633: $6b
    ld hl, $0122                                  ; $4634: $21 $22 $01
    ld l, $2e                                     ; $4637: $2e $2e
    ld l, $6f                                     ; $4639: $2e $6f
    ld [hl], d                                    ; $463b: $72

jr_01a_463c:
    jr nz, jr_01a_46b1                            ; $463c: $20 $73

    ld l, a                                       ; $463e: $6f
    jr nz, @+$76                                  ; $463f: $20 $74

    ld l, b                                       ; $4641: $68
    ld h, l                                       ; $4642: $65
    ld a, c                                       ; $4643: $79
    jr nz, jr_01a_46b9                            ; $4644: $20 $73

    ld h, c                                       ; $4646: $61
    ld a, c                                       ; $4647: $79
    ld l, $03                                     ; $4648: $2e $03
    nop                                           ; $464a: $00

jr_01a_464b:
    ld d, h                                       ; $464b: $54
    ld l, b                                       ; $464c: $68
    ld [hl], d                                    ; $464d: $72
    ld h, l                                       ; $464e: $65
    ld h, l                                       ; $464f: $65
    jr nz, jr_01a_46c2                            ; $4650: $20 $70

    ld [hl], l                                    ; $4652: $75
    ld [hl], h                                    ; $4653: $74
    ld [hl], h                                    ; $4654: $74
    ld [hl], e                                    ; $4655: $73
    ld bc, $6961                                  ; $4656: $01 $61 $69

jr_01a_4659:
    ld l, [hl]                                    ; $4659: $6e
    daa                                           ; $465a: $27
    ld [hl], h                                    ; $465b: $74
    jr nz, jr_01a_46ce                            ; $465c: $20 $70

    ld h, c                                       ; $465e: $61
    ld [hl], d                                    ; $465f: $72
    ld hl, $2e01                                  ; $4660: $21 $01 $2e
    ld l, $2e                                     ; $4663: $2e $2e
    ld l, a                                       ; $4665: $6f
    ld [hl], d                                    ; $4666: $72
    jr nz, @+$75                                  ; $4667: $20 $73

    ld l, a                                       ; $4669: $6f
    jr nz, jr_01a_46e0                            ; $466a: $20 $74

jr_01a_466c:
    ld l, b                                       ; $466c: $68
    ld h, l                                       ; $466d: $65
    ld a, c                                       ; $466e: $79
    jr nz, @+$75                                  ; $466f: $20 $73

    ld h, c                                       ; $4671: $61
    ld a, c                                       ; $4672: $79
    ld l, $03                                     ; $4673: $2e $03
    nop                                           ; $4675: $00
    ld c, c                                       ; $4676: $49
    daa                                           ; $4677: $27

jr_01a_4678:
    ld l, l                                       ; $4678: $6d
    jr nz, @+$6c                                  ; $4679: $20 $6a

    ld [hl], l                                    ; $467b: $75
    ld [hl], e                                    ; $467c: $73
    ld [hl], h                                    ; $467d: $74
    jr nz, jr_01a_46e1                            ; $467e: $20 $61

    jr nz, jr_01a_46f0                            ; $4680: $20 $6e

    ld l, a                                       ; $4682: $6f

jr_01a_4683:
    halt                                          ; $4683: $76

jr_01a_4684:
    ld l, c                                       ; $4684: $69
    ld h, e                                       ; $4685: $63
    ld h, l                                       ; $4686: $65
    ld bc, $6f67                                  ; $4687: $01 $67 $6f
    ld l, h                                       ; $468a: $6c
    ld h, [hl]                                    ; $468b: $66
    ld h, l                                       ; $468c: $65
    ld [hl], d                                    ; $468d: $72

jr_01a_468e:
    ld l, $20                                     ; $468e: $2e $20
    ld c, c                                       ; $4690: $49
    jr nz, jr_01a_46f7                            ; $4691: $20 $64

    ld l, a                                       ; $4693: $6f
    ld l, [hl]                                    ; $4694: $6e
    daa                                           ; $4695: $27
    ld [hl], h                                    ; $4696: $74
    ld bc, $6e6b                                  ; $4697: $01 $6b $6e
    ld l, a                                       ; $469a: $6f
    ld [hl], a                                    ; $469b: $77
    jr nz, jr_01a_46ff                            ; $469c: $20 $61

    ld l, [hl]                                    ; $469e: $6e
    ld a, c                                       ; $469f: $79
    ld [hl], h                                    ; $46a0: $74
    ld l, b                                       ; $46a1: $68
    ld l, c                                       ; $46a2: $69
    ld l, [hl]                                    ; $46a3: $6e
    ld h, a                                       ; $46a4: $67
    ld l, $03                                     ; $46a5: $2e $03
    nop                                           ; $46a7: $00
    ld c, c                                       ; $46a8: $49
    daa                                           ; $46a9: $27
    ld l, l                                       ; $46aa: $6d
    jr nz, jr_01a_470e                            ; $46ab: $20 $61

    ld h, d                                       ; $46ad: $62
    ld l, a                                       ; $46ae: $6f
    ld [hl], l                                    ; $46af: $75
    ld [hl], h                                    ; $46b0: $74

jr_01a_46b1:
    jr nz, @+$76                                  ; $46b1: $20 $74

    ld l, a                                       ; $46b3: $6f
    ld bc, $6863                                  ; $46b4: $01 $63 $68
    ld h, c                                       ; $46b7: $61
    ld l, [hl]                                    ; $46b8: $6e

jr_01a_46b9:
    ld h, a                                       ; $46b9: $67
    ld h, l                                       ; $46ba: $65
    ld l, $20                                     ; $46bb: $2e $20
    ld b, c                                       ; $46bd: $41
    ld [hl], e                                    ; $46be: $73
    ld l, e                                       ; $46bf: $6b
    jr nz, jr_01a_472f                            ; $46c0: $20 $6d

jr_01a_46c2:
    ld h, l                                       ; $46c2: $65
    ld bc, $616c                                  ; $46c3: $01 $6c $61
    ld [hl], h                                    ; $46c6: $74
    ld h, l                                       ; $46c7: $65
    ld [hl], d                                    ; $46c8: $72
    ld l, $03                                     ; $46c9: $2e $03
    nop                                           ; $46cb: $00
    ld c, h                                       ; $46cc: $4c
    ld b, l                                       ; $46cd: $45

jr_01a_46ce:
    ld b, c                                       ; $46ce: $41
    ld d, [hl]                                    ; $46cf: $56
    ld b, l                                       ; $46d0: $45
    jr nz, jr_01a_4720                            ; $46d1: $20 $4d

    ld b, l                                       ; $46d3: $45
    jr nz, jr_01a_4717                            ; $46d4: $20 $41

    ld c, h                                       ; $46d6: $4c
    ld c, a                                       ; $46d7: $4f
    ld c, [hl]                                    ; $46d8: $4e
    ld b, l                                       ; $46d9: $45
    ld hl, $4801                                  ; $46da: $21 $01 $48
    ld h, l                                       ; $46dd: $65
    ld h, l                                       ; $46de: $65
    dec l                                         ; $46df: $2d

jr_01a_46e0:
    ld a, c                                       ; $46e0: $79

jr_01a_46e1:
    ld h, c                                       ; $46e1: $61
    ld l, b                                       ; $46e2: $68
    ld hl, $0003                                  ; $46e3: $21 $03 $00
    rlca                                          ; $46e6: $07
    jr nz, @+$76                                  ; $46e7: $20 $74

    ld l, a                                       ; $46e9: $6f
    ld l, a                                       ; $46ea: $6f
    ld l, e                                       ; $46eb: $6b
    ld bc, $3635                                  ; $46ec: $01 $35 $36
    ld [hl-], a                                   ; $46ef: $32

jr_01a_46f0:
    jr nz, jr_01a_4762                            ; $46f0: $20 $70

    ld l, a                                       ; $46f2: $6f
    ld l, c                                       ; $46f3: $69
    ld l, [hl]                                    ; $46f4: $6e
    ld [hl], h                                    ; $46f5: $74
    ld [hl], e                                    ; $46f6: $73

jr_01a_46f7:
    jr nz, jr_01a_4768                            ; $46f7: $20 $6f

    ld h, [hl]                                    ; $46f9: $66
    ld bc, $6164                                  ; $46fa: $01 $64 $61
    ld l, l                                       ; $46fd: $6d
    ld h, c                                       ; $46fe: $61

jr_01a_46ff:
    ld h, a                                       ; $46ff: $67
    ld h, l                                       ; $4700: $65
    ld hl, $2e02                                  ; $4701: $21 $02 $2e
    ld l, $2e                                     ; $4704: $2e $2e
    ld d, h                                       ; $4706: $54
    ld l, b                                       ; $4707: $68
    ld h, c                                       ; $4708: $61
    ld [hl], h                                    ; $4709: $74
    daa                                           ; $470a: $27
    ld [hl], e                                    ; $470b: $73
    jr nz, @+$6a                                  ; $470c: $20 $68

jr_01a_470e:
    ld l, a                                       ; $470e: $6f
    ld [hl], a                                    ; $470f: $77
    jr nz, jr_01a_4774                            ; $4710: $20 $62

    ld h, c                                       ; $4712: $61
    ld h, h                                       ; $4713: $64
    ld bc, $7469                                  ; $4714: $01 $69 $74

jr_01a_4717:
    jr nz, jr_01a_4781                            ; $4717: $20 $68

    ld [hl], l                                    ; $4719: $75
    ld [hl], d                                    ; $471a: $72
    ld [hl], h                                    ; $471b: $74
    ld l, $03                                     ; $471c: $2e $03
    nop                                           ; $471e: $00
    ld c, l                                       ; $471f: $4d

jr_01a_4720:
    ld h, c                                       ; $4720: $61
    ld [hl], d                                    ; $4721: $72
    ld l, c                                       ; $4722: $69
    ld l, a                                       ; $4723: $6f
    daa                                           ; $4724: $27
    ld [hl], e                                    ; $4725: $73
    jr nz, jr_01a_479c                            ; $4726: $20 $74

    ld l, b                                       ; $4728: $68
    ld h, l                                       ; $4729: $65
    jr nz, @+$6a                                  ; $472a: $20 $68

    ld h, l                                       ; $472c: $65
    ld [hl], d                                    ; $472d: $72
    ld l, a                                       ; $472e: $6f

jr_01a_472f:
    ld bc, $666f                                  ; $472f: $01 $6f $66
    jr nz, jr_01a_47a8                            ; $4732: $20 $74

    ld l, b                                       ; $4734: $68
    ld h, l                                       ; $4735: $65
    jr nz, @+$69                                  ; $4736: $20 $67

    ld l, a                                       ; $4738: $6f
    ld l, h                                       ; $4739: $6c
    ld h, [hl]                                    ; $473a: $66
    jr nz, jr_01a_47b4                            ; $473b: $20 $77

    ld l, a                                       ; $473d: $6f
    ld [hl], d                                    ; $473e: $72
    ld l, h                                       ; $473f: $6c
    ld h, h                                       ; $4740: $64
    inc l                                         ; $4741: $2c
    ld bc, $7562                                  ; $4742: $01 $62 $75
    ld [hl], h                                    ; $4745: $74
    jr nz, jr_01a_4798                            ; $4746: $20 $50

    ld h, l                                       ; $4748: $65
    ld h, c                                       ; $4749: $61
    ld h, e                                       ; $474a: $63
    ld l, b                                       ; $474b: $68
    inc l                                         ; $474c: $2c
    jr nz, jr_01a_4791                            ; $474d: $20 $42

    ld l, a                                       ; $474f: $6f
    ld [hl], a                                    ; $4750: $77
    ld [hl], e                                    ; $4751: $73
    ld h, l                                       ; $4752: $65
    ld [hl], d                                    ; $4753: $72
    inc l                                         ; $4754: $2c
    ld [bc], a                                    ; $4755: $02
    ld e, c                                       ; $4756: $59
    ld l, a                                       ; $4757: $6f
    ld [hl], e                                    ; $4758: $73
    ld l, b                                       ; $4759: $68
    ld l, c                                       ; $475a: $69
    inc l                                         ; $475b: $2c
    jr nz, jr_01a_47a2                            ; $475c: $20 $44

    ld c, e                                       ; $475e: $4b
    inc l                                         ; $475f: $2c
    jr nz, jr_01a_47a4                            ; $4760: $20 $42

jr_01a_4762:
    ld h, c                                       ; $4762: $61
    ld h, d                                       ; $4763: $62
    ld a, c                                       ; $4764: $79
    ld bc, $614d                                  ; $4765: $01 $4d $61

jr_01a_4768:
    ld [hl], d                                    ; $4768: $72
    ld l, c                                       ; $4769: $69
    ld l, a                                       ; $476a: $6f
    jr nz, jr_01a_47ce                            ; $476b: $20 $61

    ld l, [hl]                                    ; $476d: $6e
    ld h, h                                       ; $476e: $64
    jr nz, jr_01a_47bd                            ; $476f: $20 $4c

    ld [hl], l                                    ; $4771: $75
    ld l, c                                       ; $4772: $69
    ld h, a                                       ; $4773: $67

jr_01a_4774:
    ld l, c                                       ; $4774: $69
    ld bc, $7261                                  ; $4775: $01 $61 $72
    ld h, l                                       ; $4778: $65
    jr nz, jr_01a_47dc                            ; $4779: $20 $61

    ld l, h                                       ; $477b: $6c
    ld l, h                                       ; $477c: $6c
    jr nz, jr_01a_47e6                            ; $477d: $20 $67

    ld l, a                                       ; $477f: $6f
    ld l, a                                       ; $4780: $6f

jr_01a_4781:
    ld h, h                                       ; $4781: $64
    inc l                                         ; $4782: $2c
    jr nz, jr_01a_47f9                            ; $4783: $20 $74

    ld l, a                                       ; $4785: $6f
    ld l, a                                       ; $4786: $6f
    ld l, $03                                     ; $4787: $2e $03
    nop                                           ; $4789: $00
    ld d, a                                       ; $478a: $57
    ld l, b                                       ; $478b: $68
    ld l, a                                       ; $478c: $6f
    jr nz, jr_01a_47f2                            ; $478d: $20 $63

    ld h, c                                       ; $478f: $61
    ld [hl], d                                    ; $4790: $72

jr_01a_4791:
    ld h, l                                       ; $4791: $65
    ld [hl], e                                    ; $4792: $73
    jr nz, jr_01a_47f6                            ; $4793: $20 $61

    ld h, d                                       ; $4795: $62
    ld l, a                                       ; $4796: $6f
    ld [hl], l                                    ; $4797: $75

jr_01a_4798:
    ld [hl], h                                    ; $4798: $74
    ld bc, $6961                                  ; $4799: $01 $61 $69

jr_01a_479c:
    ld l, l                                       ; $479c: $6d
    ccf                                           ; $479d: $3f
    jr nz, @+$4b                                  ; $479e: $20 $49

    jr nz, jr_01a_480c                            ; $47a0: $20 $6a

jr_01a_47a2:
    ld [hl], l                                    ; $47a2: $75
    ld [hl], e                                    ; $47a3: $73

jr_01a_47a4:
    ld [hl], h                                    ; $47a4: $74
    jr nz, jr_01a_4813                            ; $47a5: $20 $6c

    ld l, a                                       ; $47a7: $6f

jr_01a_47a8:
    halt                                          ; $47a8: $76
    ld h, l                                       ; $47a9: $65
    ld bc, $6f74                                  ; $47aa: $01 $74 $6f
    jr nz, jr_01a_4817                            ; $47ad: $20 $68

    ld h, c                                       ; $47af: $61
    ld l, l                                       ; $47b0: $6d
    ld l, l                                       ; $47b1: $6d
    ld h, l                                       ; $47b2: $65
    ld [hl], d                                    ; $47b3: $72

jr_01a_47b4:
    jr nz, @+$64                                  ; $47b4: $20 $62

    ld h, c                                       ; $47b6: $61
    ld l, h                                       ; $47b7: $6c
    ld l, h                                       ; $47b8: $6c
    ld [hl], e                                    ; $47b9: $73
    ld hl, $0003                                  ; $47ba: $21 $03 $00

jr_01a_47bd:
    ld d, e                                       ; $47bd: $53
    ld l, b                                       ; $47be: $68
    ld l, a                                       ; $47bf: $6f
    ld l, a                                       ; $47c0: $6f
    ld [hl], h                                    ; $47c1: $74
    ld l, c                                       ; $47c2: $69
    ld l, [hl]                                    ; $47c3: $6e
    ld h, a                                       ; $47c4: $67
    jr nz, jr_01a_482d                            ; $47c5: $20 $66

    ld [hl], d                                    ; $47c7: $72
    ld l, a                                       ; $47c8: $6f
    ld l, l                                       ; $47c9: $6d
    jr nz, jr_01a_4840                            ; $47ca: $20 $74

    ld l, b                                       ; $47cc: $68
    ld h, l                                       ; $47cd: $65

jr_01a_47ce:
    ld bc, $6f72                                  ; $47ce: $01 $72 $6f
    ld [hl], l                                    ; $47d1: $75
    ld h, a                                       ; $47d2: $67
    ld l, b                                       ; $47d3: $68
    jr nz, jr_01a_483f                            ; $47d4: $20 $69

    ld [hl], e                                    ; $47d6: $73
    jr nz, jr_01a_483e                            ; $47d7: $20 $65

    ld h, c                                       ; $47d9: $61
    ld [hl], e                                    ; $47da: $73
    ld a, c                                       ; $47db: $79

jr_01a_47dc:
    jr nz, jr_01a_4855                            ; $47dc: $20 $77

    ld l, c                                       ; $47de: $69
    ld [hl], h                                    ; $47df: $74
    ld l, b                                       ; $47e0: $68
    ld bc, $2061                                  ; $47e1: $01 $61 $20
    ld [hl], a                                    ; $47e4: $77
    ld l, c                                       ; $47e5: $69

jr_01a_47e6:
    ld h, h                                       ; $47e6: $64
    ld h, l                                       ; $47e7: $65
    jr nz, @+$6f                                  ; $47e8: $20 $6d

    ld h, l                                       ; $47ea: $65
    ld h, l                                       ; $47eb: $65
    ld [hl], h                                    ; $47ec: $74
    jr nz, jr_01a_4850                            ; $47ed: $20 $61

    ld [hl], d                                    ; $47ef: $72
    ld h, l                                       ; $47f0: $65
    ld h, c                                       ; $47f1: $61

jr_01a_47f2:
    ld l, $03                                     ; $47f2: $2e $03
    nop                                           ; $47f4: $00
    ld c, c                                       ; $47f5: $49

jr_01a_47f6:
    jr nz, jr_01a_486f                            ; $47f6: $20 $77

    ld l, c                                       ; $47f8: $69

jr_01a_47f9:
    ld [hl], e                                    ; $47f9: $73
    ld l, b                                       ; $47fa: $68
    jr nz, jr_01a_4846                            ; $47fb: $20 $49

    jr nz, jr_01a_4862                            ; $47fd: $20 $63

    ld l, a                                       ; $47ff: $6f
    ld [hl], l                                    ; $4800: $75
    ld l, h                                       ; $4801: $6c
    ld h, h                                       ; $4802: $64
    jr nz, jr_01a_486c                            ; $4803: $20 $67

    ld h, l                                       ; $4805: $65
    ld [hl], h                                    ; $4806: $74
    ld bc, $2061                                  ; $4807: $01 $61 $20
    ld l, b                                       ; $480a: $68
    ld l, c                                       ; $480b: $69

jr_01a_480c:
    ld h, a                                       ; $480c: $67
    ld l, b                                       ; $480d: $68
    inc l                                         ; $480e: $2c
    jr nz, @+$75                                  ; $480f: $20 $73

    ld l, a                                       ; $4811: $6f
    ld h, c                                       ; $4812: $61

jr_01a_4813:
    ld [hl], d                                    ; $4813: $72
    ld l, c                                       ; $4814: $69
    ld l, [hl]                                    ; $4815: $6e
    ld h, a                                       ; $4816: $67

jr_01a_4817:
    ld bc, $6873                                  ; $4817: $01 $73 $68
    ld l, a                                       ; $481a: $6f
    ld [hl], h                                    ; $481b: $74
    jr nz, jr_01a_488d                            ; $481c: $20 $6f

    ld l, [hl]                                    ; $481e: $6e
    jr nz, jr_01a_4882                            ; $481f: $20 $61

    ld [hl], b                                    ; $4821: $70
    ld [hl], b                                    ; $4822: $70
    ld [hl], d                                    ; $4823: $72
    ld l, a                                       ; $4824: $6f
    ld h, c                                       ; $4825: $61
    ld h, e                                       ; $4826: $63
    ld l, b                                       ; $4827: $68
    ld [bc], a                                    ; $4828: $02
    ld [hl], a                                    ; $4829: $77
    ld l, c                                       ; $482a: $69
    ld [hl], h                                    ; $482b: $74
    ld l, b                                       ; $482c: $68

jr_01a_482d:
    jr nz, jr_01a_489c                            ; $482d: $20 $6d

    ld a, c                                       ; $482f: $79
    jr nz, jr_01a_4885                            ; $4830: $20 $53

    ld d, a                                       ; $4832: $57
    ld l, $20                                     ; $4833: $2e $20
    ld c, c                                       ; $4835: $49
    ld bc, $6e6b                                  ; $4836: $01 $6b $6e
    ld l, a                                       ; $4839: $6f
    ld [hl], a                                    ; $483a: $77
    inc l                                         ; $483b: $2c
    jr nz, jr_01a_4887                            ; $483c: $20 $49

jr_01a_483e:
    daa                                           ; $483e: $27

jr_01a_483f:
    ld l, h                                       ; $483f: $6c

jr_01a_4840:
    ld l, h                                       ; $4840: $6c
    jr nz, jr_01a_48b5                            ; $4841: $20 $72

    ld h, c                                       ; $4843: $61
    ld l, c                                       ; $4844: $69
    ld [hl], e                                    ; $4845: $73

jr_01a_4846:
    ld h, l                                       ; $4846: $65
    ld bc, $796d                                  ; $4847: $01 $6d $79
    jr nz, jr_01a_48c0                            ; $484a: $20 $74

    ld [hl], d                                    ; $484c: $72
    ld h, c                                       ; $484d: $61
    ld l, d                                       ; $484e: $6a
    ld h, l                                       ; $484f: $65

jr_01a_4850:
    ld h, e                                       ; $4850: $63
    ld [hl], h                                    ; $4851: $74
    ld l, a                                       ; $4852: $6f
    ld [hl], d                                    ; $4853: $72
    ld a, c                                       ; $4854: $79

jr_01a_4855:
    ld hl, $0003                                  ; $4855: $21 $03 $00
    ld c, c                                       ; $4858: $49
    ld h, [hl]                                    ; $4859: $66
    jr nz, jr_01a_48d5                            ; $485a: $20 $79

    ld l, a                                       ; $485c: $6f
    ld [hl], l                                    ; $485d: $75
    jr nz, @+$71                                  ; $485e: $20 $6f

    ld l, [hl]                                    ; $4860: $6e
    ld l, h                                       ; $4861: $6c

jr_01a_4862:
    ld a, c                                       ; $4862: $79
    jr nz, jr_01a_48cb                            ; $4863: $20 $66

    ld l, a                                       ; $4865: $6f
    ld h, e                                       ; $4866: $63
    ld [hl], l                                    ; $4867: $75
    ld [hl], e                                    ; $4868: $73
    ld bc, $6e6f                                  ; $4869: $01 $6f $6e

jr_01a_486c:
    jr nz, @+$6b                                  ; $486c: $20 $69

    ld l, [hl]                                    ; $486e: $6e

jr_01a_486f:
    ld h, e                                       ; $486f: $63
    ld [hl], d                                    ; $4870: $72
    ld h, l                                       ; $4871: $65
    ld h, c                                       ; $4872: $61
    ld [hl], e                                    ; $4873: $73
    ld l, c                                       ; $4874: $69
    ld l, [hl]                                    ; $4875: $6e
    ld h, a                                       ; $4876: $67
    ld bc, $6f79                                  ; $4877: $01 $79 $6f
    ld [hl], l                                    ; $487a: $75
    ld [hl], d                                    ; $487b: $72
    jr nz, jr_01a_48e2                            ; $487c: $20 $64

    ld [hl], d                                    ; $487e: $72
    ld l, c                                       ; $487f: $69
    halt                                          ; $4880: $76
    ld h, l                                       ; $4881: $65

jr_01a_4882:
    inc l                                         ; $4882: $2c
    jr nz, jr_01a_48fe                            ; $4883: $20 $79

jr_01a_4885:
    ld l, a                                       ; $4885: $6f
    ld [hl], l                                    ; $4886: $75

jr_01a_4887:
    daa                                           ; $4887: $27
    ld l, h                                       ; $4888: $6c
    ld l, h                                       ; $4889: $6c
    ld [bc], a                                    ; $488a: $02
    ld [hl], d                                    ; $488b: $72
    ld [hl], l                                    ; $488c: $75

jr_01a_488d:
    ld l, c                                       ; $488d: $69
    ld l, [hl]                                    ; $488e: $6e
    jr nz, jr_01a_490a                            ; $488f: $20 $79

    ld l, a                                       ; $4891: $6f
    ld [hl], l                                    ; $4892: $75
    ld [hl], d                                    ; $4893: $72
    jr nz, jr_01a_48fc                            ; $4894: $20 $66

    ld l, a                                       ; $4896: $6f
    ld [hl], d                                    ; $4897: $72
    ld l, l                                       ; $4898: $6d
    ld l, $01                                     ; $4899: $2e $01
    ld d, h                                       ; $489b: $54

jr_01a_489c:
    ld l, b                                       ; $489c: $68
    ld h, c                                       ; $489d: $61
    ld [hl], h                                    ; $489e: $74
    daa                                           ; $489f: $27
    ld [hl], e                                    ; $48a0: $73
    jr nz, jr_01a_491a                            ; $48a1: $20 $77

    ld l, b                                       ; $48a3: $68
    ld a, c                                       ; $48a4: $79
    jr nz, jr_01a_490a                            ; $48a5: $20 $63

    ld l, a                                       ; $48a7: $6f
    ld l, [hl]                                    ; $48a8: $6e
    ld [hl], h                                    ; $48a9: $74
    ld [hl], d                                    ; $48aa: $72
    ld l, a                                       ; $48ab: $6f
    ld l, h                                       ; $48ac: $6c
    ld bc, $6567                                  ; $48ad: $01 $67 $65
    ld [hl], h                                    ; $48b0: $74
    ld [hl], e                                    ; $48b1: $73
    jr nz, @+$79                                  ; $48b2: $20 $77

    ld l, a                                       ; $48b4: $6f

jr_01a_48b5:
    ld [hl], d                                    ; $48b5: $72
    ld [hl], e                                    ; $48b6: $73
    ld h, l                                       ; $48b7: $65
    ld hl, $0003                                  ; $48b8: $21 $03 $00
    ld c, b                                       ; $48bb: $48
    ld h, c                                       ; $48bc: $61
    halt                                          ; $48bd: $76
    ld l, c                                       ; $48be: $69
    ld l, [hl]                                    ; $48bf: $6e

jr_01a_48c0:
    ld h, a                                       ; $48c0: $67
    jr nz, jr_01a_4937                            ; $48c1: $20 $74

    ld l, b                                       ; $48c3: $68
    ld h, l                                       ; $48c4: $65
    jr nz, @+$6e                                  ; $48c5: $20 $6c

    ld l, a                                       ; $48c7: $6f
    ld l, [hl]                                    ; $48c8: $6e
    ld h, a                                       ; $48c9: $67
    ld h, l                                       ; $48ca: $65

jr_01a_48cb:
    ld [hl], e                                    ; $48cb: $73
    ld [hl], h                                    ; $48cc: $74
    ld bc, $7264                                  ; $48cd: $01 $64 $72
    ld l, c                                       ; $48d0: $69
    halt                                          ; $48d1: $76
    ld h, l                                       ; $48d2: $65
    jr nz, jr_01a_493e                            ; $48d3: $20 $69

jr_01a_48d5:
    ld [hl], e                                    ; $48d5: $73
    jr nz, @+$63                                  ; $48d6: $20 $61

    jr nz, @+$6a                                  ; $48d8: $20 $68

    ld [hl], l                                    ; $48da: $75
    ld h, a                                       ; $48db: $67
    ld h, l                                       ; $48dc: $65
    ld bc, $6461                                  ; $48dd: $01 $61 $64
    halt                                          ; $48e0: $76
    ld h, c                                       ; $48e1: $61

jr_01a_48e2:
    ld l, [hl]                                    ; $48e2: $6e
    ld [hl], h                                    ; $48e3: $74
    ld h, c                                       ; $48e4: $61
    ld h, a                                       ; $48e5: $67
    ld h, l                                       ; $48e6: $65
    ld l, $20                                     ; $48e7: $2e $20
    ld b, d                                       ; $48e9: $42
    ld [hl], l                                    ; $48ea: $75
    ld [hl], h                                    ; $48eb: $74
    jr nz, @+$6b                                  ; $48ec: $20 $69

    ld h, [hl]                                    ; $48ee: $66
    ld [bc], a                                    ; $48ef: $02
    ld h, c                                       ; $48f0: $61
    ld l, c                                       ; $48f1: $69
    ld l, l                                       ; $48f2: $6d
    jr nz, jr_01a_4958                            ; $48f3: $20 $63

    ld l, a                                       ; $48f5: $6f
    ld l, [hl]                                    ; $48f6: $6e
    ld h, e                                       ; $48f7: $63
    ld h, l                                       ; $48f8: $65
    ld [hl], d                                    ; $48f9: $72
    ld l, [hl]                                    ; $48fa: $6e
    ld [hl], e                                    ; $48fb: $73

jr_01a_48fc:
    jr nz, jr_01a_4977                            ; $48fc: $20 $79

jr_01a_48fe:
    ld l, a                                       ; $48fe: $6f
    ld [hl], l                                    ; $48ff: $75
    inc l                                         ; $4900: $2c
    ld bc, $6874                                  ; $4901: $01 $74 $68
    ld h, l                                       ; $4904: $65
    ld l, [hl]                                    ; $4905: $6e
    jr nz, jr_01a_4969                            ; $4906: $20 $61

    jr nz, jr_01a_4976                            ; $4908: $20 $6c

jr_01a_490a:
    ld l, a                                       ; $490a: $6f
    ld l, [hl]                                    ; $490b: $6e
    ld h, a                                       ; $490c: $67
    jr nz, jr_01a_4973                            ; $490d: $20 $64

    ld [hl], d                                    ; $490f: $72
    ld l, c                                       ; $4910: $69
    halt                                          ; $4911: $76
    ld h, l                                       ; $4912: $65
    ld bc, $7369                                  ; $4913: $01 $69 $73
    jr nz, @+$70                                  ; $4916: $20 $6e

    ld l, a                                       ; $4918: $6f
    ld [hl], h                                    ; $4919: $74

jr_01a_491a:
    jr nz, @+$68                                  ; $491a: $20 $66

    ld l, a                                       ; $491c: $6f
    ld [hl], d                                    ; $491d: $72
    jr nz, jr_01a_4999                            ; $491e: $20 $79

    ld l, a                                       ; $4920: $6f
    ld [hl], l                                    ; $4921: $75
    ld l, $03                                     ; $4922: $2e $03
    nop                                           ; $4924: $00
    ld d, h                                       ; $4925: $54
    ld l, b                                       ; $4926: $68
    ld h, l                                       ; $4927: $65
    ld [hl], d                                    ; $4928: $72
    ld h, l                                       ; $4929: $65
    jr nz, jr_01a_498d                            ; $492a: $20 $61

    ld [hl], d                                    ; $492c: $72
    ld h, l                                       ; $492d: $65
    jr nz, jr_01a_4961                            ; $492e: $20 $31

    inc [hl]                                      ; $4930: $34
    ld bc, $7264                                  ; $4931: $01 $64 $72
    ld l, c                                       ; $4934: $69
    halt                                          ; $4935: $76
    ld h, l                                       ; $4936: $65

jr_01a_4937:
    ld [hl], d                                    ; $4937: $72
    jr nz, @+$75                                  ; $4938: $20 $73

    ld l, b                                       ; $493a: $68
    ld l, a                                       ; $493b: $6f
    ld [hl], h                                    ; $493c: $74
    ld [hl], e                                    ; $493d: $73

jr_01a_493e:
    jr nz, jr_01a_49a9                            ; $493e: $20 $69

    ld l, [hl]                                    ; $4940: $6e
    jr nz, jr_01a_49a4                            ; $4941: $20 $61

    ld bc, $6f72                                  ; $4943: $01 $72 $6f
    ld [hl], l                                    ; $4946: $75
    ld l, [hl]                                    ; $4947: $6e
    ld h, h                                       ; $4948: $64
    jr nz, @+$64                                  ; $4949: $20 $62

    ld [hl], l                                    ; $494b: $75
    ld [hl], h                                    ; $494c: $74
    jr nz, jr_01a_49b0                            ; $494d: $20 $61

    ld [hl], h                                    ; $494f: $74
    ld [bc], a                                    ; $4950: $02
    ld l, h                                       ; $4951: $6c
    ld h, l                                       ; $4952: $65
    ld h, c                                       ; $4953: $61
    ld [hl], e                                    ; $4954: $73
    ld [hl], h                                    ; $4955: $74
    jr nz, jr_01a_498a                            ; $4956: $20 $32

jr_01a_4958:
    ld [hl-], a                                   ; $4958: $32
    jr nz, jr_01a_49c4                            ; $4959: $20 $69

    ld [hl], d                                    ; $495b: $72
    ld l, a                                       ; $495c: $6f
    ld l, [hl]                                    ; $495d: $6e
    ld bc, $6873                                  ; $495e: $01 $73 $68

jr_01a_4961:
    ld l, a                                       ; $4961: $6f
    ld [hl], h                                    ; $4962: $74
    ld [hl], e                                    ; $4963: $73
    ld l, $20                                     ; $4964: $2e $20
    ld e, c                                       ; $4966: $59
    ld l, a                                       ; $4967: $6f
    ld [hl], l                                    ; $4968: $75

jr_01a_4969:
    jr nz, jr_01a_49d6                            ; $4969: $20 $6b

    ld l, [hl]                                    ; $496b: $6e
    ld l, a                                       ; $496c: $6f
    ld [hl], a                                    ; $496d: $77
    ld bc, $6877                                  ; $496e: $01 $77 $68
    ld l, c                                       ; $4971: $69
    ld h, e                                       ; $4972: $63

jr_01a_4973:
    ld l, b                                       ; $4973: $68
    jr nz, jr_01a_49ea                            ; $4974: $20 $74

jr_01a_4976:
    ld l, a                                       ; $4976: $6f

jr_01a_4977:
    jr nz, jr_01a_49e9                            ; $4977: $20 $70

    ld [hl], d                                    ; $4979: $72
    ld h, c                                       ; $497a: $61
    ld h, e                                       ; $497b: $63
    ld [hl], h                                    ; $497c: $74
    ld l, c                                       ; $497d: $69
    ld h, e                                       ; $497e: $63
    ld h, l                                       ; $497f: $65
    ld hl, $0003                                  ; $4980: $21 $03 $00
    ld d, h                                       ; $4983: $54
    ld l, a                                       ; $4984: $6f
    jr nz, @+$6f                                  ; $4985: $20 $6d

    ld h, c                                       ; $4987: $61
    ld l, e                                       ; $4988: $6b
    ld h, l                                       ; $4989: $65

jr_01a_498a:
    jr nz, jr_01a_49f3                            ; $498a: $20 $67

    ld l, a                                       ; $498c: $6f

jr_01a_498d:
    ld l, a                                       ; $498d: $6f
    ld h, h                                       ; $498e: $64
    jr nz, jr_01a_49fa                            ; $498f: $20 $69

    ld [hl], d                                    ; $4991: $72
    ld l, a                                       ; $4992: $6f
    ld l, [hl]                                    ; $4993: $6e
    ld bc, $6873                                  ; $4994: $01 $73 $68
    ld l, a                                       ; $4997: $6f
    ld [hl], h                                    ; $4998: $74

jr_01a_4999:
    ld [hl], e                                    ; $4999: $73
    inc l                                         ; $499a: $2c
    jr nz, jr_01a_4a16                            ; $499b: $20 $79

    ld l, a                                       ; $499d: $6f
    ld [hl], l                                    ; $499e: $75
    jr nz, jr_01a_4a0f                            ; $499f: $20 $6e

    ld h, l                                       ; $49a1: $65
    ld h, l                                       ; $49a2: $65
    ld h, h                                       ; $49a3: $64

jr_01a_49a4:
    jr nz, jr_01a_4a07                            ; $49a4: $20 $61

    ld bc, $6166                                  ; $49a6: $01 $66 $61

jr_01a_49a9:
    ld h, h                                       ; $49a9: $64
    ld h, l                                       ; $49aa: $65
    inc l                                         ; $49ab: $2c
    jr nz, jr_01a_4a20                            ; $49ac: $20 $72

    ld l, c                                       ; $49ae: $69
    ld h, a                                       ; $49af: $67

jr_01a_49b0:
    ld l, b                                       ; $49b0: $68
    ld [hl], h                                    ; $49b1: $74
    ccf                                           ; $49b2: $3f
    inc bc                                        ; $49b3: $03
    nop                                           ; $49b4: $00
    ld d, h                                       ; $49b5: $54
    ld l, b                                       ; $49b6: $68
    ld h, l                                       ; $49b7: $65
    jr nz, @+$6e                                  ; $49b8: $20 $6c

    ld l, a                                       ; $49ba: $6f
    ld l, [hl]                                    ; $49bb: $6e
    ld h, a                                       ; $49bc: $67
    ld h, l                                       ; $49bd: $65
    ld [hl], d                                    ; $49be: $72
    jr nz, jr_01a_4a3a                            ; $49bf: $20 $79

    ld l, a                                       ; $49c1: $6f
    ld [hl], l                                    ; $49c2: $75
    ld [hl], d                                    ; $49c3: $72

jr_01a_49c4:
    ld bc, $7264                                  ; $49c4: $01 $64 $72
    ld l, c                                       ; $49c7: $69
    halt                                          ; $49c8: $76
    ld h, l                                       ; $49c9: $65
    inc l                                         ; $49ca: $2c
    jr nz, jr_01a_4a41                            ; $49cb: $20 $74

    ld l, b                                       ; $49cd: $68
    ld h, l                                       ; $49ce: $65
    jr nz, jr_01a_4a39                            ; $49cf: $20 $68

    ld l, c                                       ; $49d1: $69
    ld h, a                                       ; $49d2: $67
    ld l, b                                       ; $49d3: $68
    ld h, l                                       ; $49d4: $65
    ld [hl], d                                    ; $49d5: $72

jr_01a_49d6:
    ld bc, $6f79                                  ; $49d6: $01 $79 $6f
    ld [hl], l                                    ; $49d9: $75
    ld [hl], d                                    ; $49da: $72
    jr nz, jr_01a_4a50                            ; $49db: $20 $73

    ld l, b                                       ; $49dd: $68
    ld l, a                                       ; $49de: $6f
    ld [hl], h                                    ; $49df: $74
    jr nz, jr_01a_4a4b                            ; $49e0: $20 $69

    ld [hl], e                                    ; $49e2: $73
    ld l, $20                                     ; $49e3: $2e $20
    ld c, b                                       ; $49e5: $48
    ld l, c                                       ; $49e6: $69
    ld h, a                                       ; $49e7: $67
    ld l, b                                       ; $49e8: $68

jr_01a_49e9:
    ld [bc], a                                    ; $49e9: $02

jr_01a_49ea:
    ld h, d                                       ; $49ea: $62
    ld h, c                                       ; $49eb: $61
    ld l, h                                       ; $49ec: $6c
    ld l, h                                       ; $49ed: $6c
    ld [hl], e                                    ; $49ee: $73
    jr nz, jr_01a_4a52                            ; $49ef: $20 $61

    ld [hl], d                                    ; $49f1: $72
    ld h, l                                       ; $49f2: $65

jr_01a_49f3:
    jr nz, jr_01a_4a68                            ; $49f3: $20 $73

    ld [hl], l                                    ; $49f5: $75
    ld [hl], e                                    ; $49f6: $73
    ld h, e                                       ; $49f7: $63
    ld h, l                                       ; $49f8: $65
    ld [hl], b                                    ; $49f9: $70

jr_01a_49fa:
    dec l                                         ; $49fa: $2d
    ld bc, $6974                                  ; $49fb: $01 $74 $69
    ld h, d                                       ; $49fe: $62
    ld l, h                                       ; $49ff: $6c
    ld h, l                                       ; $4a00: $65
    jr nz, @+$76                                  ; $4a01: $20 $74

    ld l, a                                       ; $4a03: $6f
    jr nz, jr_01a_4a7d                            ; $4a04: $20 $77

    ld l, c                                       ; $4a06: $69

jr_01a_4a07:
    ld l, [hl]                                    ; $4a07: $6e
    ld h, h                                       ; $4a08: $64
    ld bc, $202d                                  ; $4a09: $01 $2d $20
    ld h, c                                       ; $4a0c: $61
    jr nz, jr_01a_4a7c                            ; $4a0d: $20 $6d

jr_01a_4a0f:
    ld h, c                                       ; $4a0f: $61
    ld l, d                                       ; $4a10: $6a
    ld l, a                                       ; $4a11: $6f
    ld [hl], d                                    ; $4a12: $72
    jr nz, jr_01a_4a85                            ; $4a13: $20 $70

    ld [hl], d                                    ; $4a15: $72

jr_01a_4a16:
    ld l, a                                       ; $4a16: $6f
    ld h, d                                       ; $4a17: $62
    ld l, h                                       ; $4a18: $6c
    ld h, l                                       ; $4a19: $65
    ld l, l                                       ; $4a1a: $6d
    ld l, $03                                     ; $4a1b: $2e $03
    nop                                           ; $4a1d: $00
    ld d, h                                       ; $4a1e: $54
    ld l, b                                       ; $4a1f: $68

jr_01a_4a20:
    ld h, l                                       ; $4a20: $65
    ld [hl], d                                    ; $4a21: $72
    ld h, l                                       ; $4a22: $65
    daa                                           ; $4a23: $27
    ld [hl], e                                    ; $4a24: $73
    jr nz, jr_01a_4a88                            ; $4a25: $20 $61

    jr nz, jr_01a_4a95                            ; $4a27: $20 $6c

    ld l, c                                       ; $4a29: $69
    ld l, l                                       ; $4a2a: $6d
    ld l, c                                       ; $4a2b: $69
    ld [hl], h                                    ; $4a2c: $74
    jr nz, @+$76                                  ; $4a2d: $20 $74

    ld l, a                                       ; $4a2f: $6f
    ld bc, $6877                                  ; $4a30: $01 $77 $68
    ld h, c                                       ; $4a33: $61
    ld [hl], h                                    ; $4a34: $74
    jr nz, jr_01a_4aaa                            ; $4a35: $20 $73

    ld [hl], b                                    ; $4a37: $70
    ld l, c                                       ; $4a38: $69

jr_01a_4a39:
    ld l, [hl]                                    ; $4a39: $6e

jr_01a_4a3a:
    jr nz, jr_01a_4a9f                            ; $4a3a: $20 $63

    ld h, c                                       ; $4a3c: $61
    ld l, [hl]                                    ; $4a3d: $6e
    jr nz, jr_01a_4aa4                            ; $4a3e: $20 $64

    ld l, a                                       ; $4a40: $6f

jr_01a_4a41:
    jr nz, @+$76                                  ; $4a41: $20 $74

    ld l, a                                       ; $4a43: $6f
    ld bc, $6f79                                  ; $4a44: $01 $79 $6f
    ld [hl], l                                    ; $4a47: $75
    ld [hl], d                                    ; $4a48: $72
    jr nz, jr_01a_4abf                            ; $4a49: $20 $74

jr_01a_4a4b:
    ld [hl], d                                    ; $4a4b: $72
    ld h, c                                       ; $4a4c: $61
    ld l, d                                       ; $4a4d: $6a
    ld h, l                                       ; $4a4e: $65
    ld h, e                                       ; $4a4f: $63

jr_01a_4a50:
    ld [hl], h                                    ; $4a50: $74
    ld l, a                                       ; $4a51: $6f

jr_01a_4a52:
    ld [hl], d                                    ; $4a52: $72
    ld a, c                                       ; $4a53: $79
    ld l, $02                                     ; $4a54: $2e $02
    ld e, c                                       ; $4a56: $59
    ld l, a                                       ; $4a57: $6f
    ld [hl], l                                    ; $4a58: $75
    jr nz, jr_01a_4ace                            ; $4a59: $20 $73

    ld l, b                                       ; $4a5b: $68
    ld l, a                                       ; $4a5c: $6f
    ld [hl], l                                    ; $4a5d: $75
    ld l, h                                       ; $4a5e: $6c
    ld h, h                                       ; $4a5f: $64
    jr nz, @+$72                                  ; $4a60: $20 $70

    ld h, c                                       ; $4a62: $61
    ld a, c                                       ; $4a63: $79
    ld bc, $7461                                  ; $4a64: $01 $61 $74
    ld [hl], h                                    ; $4a67: $74

jr_01a_4a68:
    ld h, l                                       ; $4a68: $65
    ld l, [hl]                                    ; $4a69: $6e
    ld [hl], h                                    ; $4a6a: $74
    ld l, c                                       ; $4a6b: $69
    ld l, a                                       ; $4a6c: $6f
    ld l, [hl]                                    ; $4a6d: $6e
    jr nz, jr_01a_4ae4                            ; $4a6e: $20 $74

    ld l, a                                       ; $4a70: $6f
    jr nz, @+$7b                                  ; $4a71: $20 $79

    ld l, a                                       ; $4a73: $6f
    ld [hl], l                                    ; $4a74: $75
    ld [hl], d                                    ; $4a75: $72
    ld bc, $6873                                  ; $4a76: $01 $73 $68
    ld l, a                                       ; $4a79: $6f
    ld [hl], h                                    ; $4a7a: $74
    daa                                           ; $4a7b: $27

jr_01a_4a7c:
    ld [hl], e                                    ; $4a7c: $73

jr_01a_4a7d:
    jr nz, @+$6a                                  ; $4a7d: $20 $68

    ld h, l                                       ; $4a7f: $65
    ld l, c                                       ; $4a80: $69
    ld h, a                                       ; $4a81: $67
    ld l, b                                       ; $4a82: $68
    ld [hl], h                                    ; $4a83: $74
    inc l                                         ; $4a84: $2c

jr_01a_4a85:
    jr nz, jr_01a_4afb                            ; $4a85: $20 $74

    ld l, a                                       ; $4a87: $6f

jr_01a_4a88:
    ld l, a                                       ; $4a88: $6f
    ld l, $03                                     ; $4a89: $2e $03
    nop                                           ; $4a8b: $00
    ld b, [hl]                                    ; $4a8c: $46
    ld l, a                                       ; $4a8d: $6f
    ld [hl], d                                    ; $4a8e: $72
    jr nz, @+$76                                  ; $4a8f: $20 $74

    ld l, b                                       ; $4a91: $68
    ld l, a                                       ; $4a92: $6f
    ld [hl], e                                    ; $4a93: $73
    ld h, l                                       ; $4a94: $65

jr_01a_4a95:
    jr nz, jr_01a_4b0a                            ; $4a95: $20 $73

    ld [hl], h                                    ; $4a97: $74
    ld [hl], d                                    ; $4a98: $72
    ld l, a                                       ; $4a99: $6f
    ld l, [hl]                                    ; $4a9a: $6e
    ld h, a                                       ; $4a9b: $67
    ld bc, $6977                                  ; $4a9c: $01 $77 $69

jr_01a_4a9f:
    ld l, [hl]                                    ; $4a9f: $6e
    ld h, h                                       ; $4aa0: $64
    ld [hl], e                                    ; $4aa1: $73
    jr nz, @+$63                                  ; $4aa2: $20 $61

jr_01a_4aa4:
    ld [hl], h                                    ; $4aa4: $74
    jr nz, @+$4e                                  ; $4aa5: $20 $4c

    ld l, c                                       ; $4aa7: $69
    ld l, [hl]                                    ; $4aa8: $6e
    ld l, e                                       ; $4aa9: $6b

jr_01a_4aaa:
    ld [hl], e                                    ; $4aaa: $73
    inc l                                         ; $4aab: $2c
    ld bc, $7375                                  ; $4aac: $01 $75 $73
    ld h, l                                       ; $4aaf: $65
    jr nz, jr_01a_4b13                            ; $4ab0: $20 $61

    jr nz, jr_01a_4b20                            ; $4ab2: $20 $6c

    ld l, a                                       ; $4ab4: $6f
    ld [hl], a                                    ; $4ab5: $77
    jr nz, @+$75                                  ; $4ab6: $20 $73

    ld l, b                                       ; $4ab8: $68
    ld l, a                                       ; $4ab9: $6f
    ld [hl], h                                    ; $4aba: $74
    ld l, $03                                     ; $4abb: $2e $03
    nop                                           ; $4abd: $00
    ld d, e                                       ; $4abe: $53

jr_01a_4abf:
    ld [hl], h                                    ; $4abf: $74
    ld [hl], d                                    ; $4ac0: $72
    ld l, a                                       ; $4ac1: $6f
    ld l, [hl]                                    ; $4ac2: $6e
    ld h, a                                       ; $4ac3: $67
    jr nz, jr_01a_4b35                            ; $4ac4: $20 $6f

    ld h, e                                       ; $4ac6: $63
    ld h, l                                       ; $4ac7: $65
    ld h, c                                       ; $4ac8: $61
    ld l, [hl]                                    ; $4ac9: $6e
    jr nz, @+$79                                  ; $4aca: $20 $77

    ld l, c                                       ; $4acc: $69
    ld l, [hl]                                    ; $4acd: $6e

jr_01a_4ace:
    ld h, h                                       ; $4ace: $64
    ld [hl], e                                    ; $4acf: $73
    ld bc, $7261                                  ; $4ad0: $01 $61 $72
    ld h, l                                       ; $4ad3: $65
    jr nz, jr_01a_4b37                            ; $4ad4: $20 $61

    jr nz, jr_01a_4b4b                            ; $4ad6: $20 $73

    ld l, b                                       ; $4ad8: $68
    ld l, a                                       ; $4ad9: $6f
    ld h, e                                       ; $4ada: $63
    ld l, e                                       ; $4adb: $6b
    jr nz, jr_01a_4b52                            ; $4adc: $20 $74

    ld l, b                                       ; $4ade: $68
    ld h, l                                       ; $4adf: $65
    ld bc, $6966                                  ; $4ae0: $01 $66 $69
    ld [hl], d                                    ; $4ae3: $72

jr_01a_4ae4:
    ld [hl], e                                    ; $4ae4: $73
    ld [hl], h                                    ; $4ae5: $74
    jr nz, jr_01a_4b5c                            ; $4ae6: $20 $74

    ld l, c                                       ; $4ae8: $69
    ld l, l                                       ; $4ae9: $6d
    ld h, l                                       ; $4aea: $65
    jr nz, jr_01a_4b4e                            ; $4aeb: $20 $61

    ld [hl], d                                    ; $4aed: $72
    ld l, a                                       ; $4aee: $6f
    ld [hl], l                                    ; $4aef: $75
    ld l, [hl]                                    ; $4af0: $6e
    ld h, h                                       ; $4af1: $64
    ld l, $03                                     ; $4af2: $2e $03
    nop                                           ; $4af4: $00
    ld e, c                                       ; $4af5: $59
    ld l, a                                       ; $4af6: $6f
    ld [hl], l                                    ; $4af7: $75
    daa                                           ; $4af8: $27
    halt                                          ; $4af9: $76
    ld h, l                                       ; $4afa: $65

jr_01a_4afb:
    jr nz, @+$6b                                  ; $4afb: $20 $69

    ld l, l                                       ; $4afd: $6d
    ld [hl], b                                    ; $4afe: $70
    ld [hl], d                                    ; $4aff: $72
    ld l, a                                       ; $4b00: $6f
    halt                                          ; $4b01: $76
    ld h, l                                       ; $4b02: $65
    ld h, h                                       ; $4b03: $64
    ld bc, $2061                                  ; $4b04: $01 $61 $20
    ld l, h                                       ; $4b07: $6c
    ld l, a                                       ; $4b08: $6f
    ld [hl], h                                    ; $4b09: $74

jr_01a_4b0a:
    inc l                                         ; $4b0a: $2c
    jr nz, @+$09                                  ; $4b0b: $20 $07

    ld l, $01                                     ; $4b0d: $2e $01
    ld c, [hl]                                    ; $4b0f: $4e
    ld l, a                                       ; $4b10: $6f
    ld [hl], a                                    ; $4b11: $77
    inc l                                         ; $4b12: $2c

jr_01a_4b13:
    jr nz, jr_01a_4b7e                            ; $4b13: $20 $69

    ld l, l                                       ; $4b15: $6d
    ld [hl], b                                    ; $4b16: $70
    ld [hl], d                                    ; $4b17: $72
    ld l, a                                       ; $4b18: $6f
    halt                                          ; $4b19: $76
    ld h, l                                       ; $4b1a: $65
    jr nz, @+$7b                                  ; $4b1b: $20 $79

    ld l, a                                       ; $4b1d: $6f
    ld [hl], l                                    ; $4b1e: $75
    ld [hl], d                                    ; $4b1f: $72

jr_01a_4b20:
    ld [bc], a                                    ; $4b20: $02
    ld h, h                                       ; $4b21: $64
    ld [hl], d                                    ; $4b22: $72
    ld l, c                                       ; $4b23: $69
    halt                                          ; $4b24: $76
    ld h, l                                       ; $4b25: $65
    jr nz, jr_01a_4b89                            ; $4b26: $20 $61

    ld l, [hl]                                    ; $4b28: $6e
    ld h, h                                       ; $4b29: $64
    jr nz, jr_01a_4b9b                            ; $4b2a: $20 $6f

    ld [hl], h                                    ; $4b2c: $74
    ld l, b                                       ; $4b2d: $68
    ld h, l                                       ; $4b2e: $65
    ld [hl], d                                    ; $4b2f: $72
    ld bc, $6b73                                  ; $4b30: $01 $73 $6b
    ld l, c                                       ; $4b33: $69
    ld l, h                                       ; $4b34: $6c

jr_01a_4b35:
    ld l, h                                       ; $4b35: $6c
    ld [hl], e                                    ; $4b36: $73

jr_01a_4b37:
    jr nz, jr_01a_4bad                            ; $4b37: $20 $74

    ld l, a                                       ; $4b39: $6f
    jr nz, jr_01a_4b9e                            ; $4b3a: $20 $62

    ld h, l                                       ; $4b3c: $65
    ld h, e                                       ; $4b3d: $63
    ld l, a                                       ; $4b3e: $6f
    ld l, l                                       ; $4b3f: $6d
    ld h, l                                       ; $4b40: $65
    ld bc, $2061                                  ; $4b41: $01 $61 $20
    ld [hl], b                                    ; $4b44: $70
    ld h, l                                       ; $4b45: $65
    ld [hl], d                                    ; $4b46: $72
    ld h, [hl]                                    ; $4b47: $66
    ld h, l                                       ; $4b48: $65
    ld h, e                                       ; $4b49: $63
    ld [hl], h                                    ; $4b4a: $74

jr_01a_4b4b:
    jr nz, jr_01a_4bb4                            ; $4b4b: $20 $67

    ld l, a                                       ; $4b4d: $6f

jr_01a_4b4e:
    ld l, h                                       ; $4b4e: $6c
    ld h, [hl]                                    ; $4b4f: $66
    ld h, l                                       ; $4b50: $65
    ld [hl], d                                    ; $4b51: $72

jr_01a_4b52:
    ld l, $03                                     ; $4b52: $2e $03
    nop                                           ; $4b54: $00
    ld b, e                                       ; $4b55: $43
    ld l, b                                       ; $4b56: $68
    ld h, c                                       ; $4b57: $61
    ld l, [hl]                                    ; $4b58: $6e
    ld h, a                                       ; $4b59: $67
    ld l, c                                       ; $4b5a: $69
    ld l, [hl]                                    ; $4b5b: $6e

jr_01a_4b5c:
    ld h, a                                       ; $4b5c: $67
    jr nz, @+$76                                  ; $4b5d: $20 $74

    ld [hl], d                                    ; $4b5f: $72
    ld h, c                                       ; $4b60: $61
    ld l, d                                       ; $4b61: $6a
    ld h, l                                       ; $4b62: $65
    ld h, e                                       ; $4b63: $63
    dec l                                         ; $4b64: $2d
    ld bc, $6f74                                  ; $4b65: $01 $74 $6f
    ld [hl], d                                    ; $4b68: $72
    ld l, c                                       ; $4b69: $69
    ld h, l                                       ; $4b6a: $65
    ld [hl], e                                    ; $4b6b: $73
    jr nz, jr_01a_4bd0                            ; $4b6c: $20 $62

    ld h, c                                       ; $4b6e: $61
    ld [hl], e                                    ; $4b6f: $73
    ld h, l                                       ; $4b70: $65
    ld h, h                                       ; $4b71: $64
    jr nz, @+$71                                  ; $4b72: $20 $6f

    ld l, [hl]                                    ; $4b74: $6e
    ld bc, $6874                                  ; $4b75: $01 $74 $68
    ld h, l                                       ; $4b78: $65
    jr nz, jr_01a_4bde                            ; $4b79: $20 $63

    ld l, a                                       ; $4b7b: $6f
    ld [hl], l                                    ; $4b7c: $75
    ld [hl], d                                    ; $4b7d: $72

jr_01a_4b7e:
    ld [hl], e                                    ; $4b7e: $73
    ld h, l                                       ; $4b7f: $65
    jr nz, jr_01a_4bfb                            ; $4b80: $20 $79

    ld l, a                                       ; $4b82: $6f
    ld [hl], l                                    ; $4b83: $75
    ld [hl], d                                    ; $4b84: $72
    ld [bc], a                                    ; $4b85: $02
    ld [hl], b                                    ; $4b86: $70
    ld l, h                                       ; $4b87: $6c
    ld h, c                                       ; $4b88: $61

jr_01a_4b89:
    ld a, c                                       ; $4b89: $79
    ld l, c                                       ; $4b8a: $69
    ld l, [hl]                                    ; $4b8b: $6e
    ld h, a                                       ; $4b8c: $67
    jr nz, jr_01a_4bf8                            ; $4b8d: $20 $69

    ld [hl], e                                    ; $4b8f: $73
    jr nz, jr_01a_4c06                            ; $4b90: $20 $74

    ld l, b                                       ; $4b92: $68
    ld h, l                                       ; $4b93: $65
    ld bc, $7566                                  ; $4b94: $01 $66 $75
    ld l, [hl]                                    ; $4b97: $6e
    jr nz, jr_01a_4c09                            ; $4b98: $20 $6f

    ld h, [hl]                                    ; $4b9a: $66

jr_01a_4b9b:
    jr nz, jr_01a_4c06                            ; $4b9b: $20 $69

    ld l, l                                       ; $4b9d: $6d

jr_01a_4b9e:
    ld [hl], b                                    ; $4b9e: $70
    ld [hl], d                                    ; $4b9f: $72
    ld l, a                                       ; $4ba0: $6f
    halt                                          ; $4ba1: $76
    ld l, c                                       ; $4ba2: $69
    ld l, [hl]                                    ; $4ba3: $6e
    ld h, a                                       ; $4ba4: $67
    ld l, $03                                     ; $4ba5: $2e $03
    nop                                           ; $4ba7: $00
    ld b, h                                       ; $4ba8: $44
    ld l, a                                       ; $4ba9: $6f
    ld h, l                                       ; $4baa: $65
    ld [hl], e                                    ; $4bab: $73
    ld l, [hl]                                    ; $4bac: $6e

jr_01a_4bad:
    daa                                           ; $4bad: $27
    ld [hl], h                                    ; $4bae: $74
    jr nz, @+$77                                  ; $4baf: $20 $75

    ld [hl], e                                    ; $4bb1: $73
    ld l, c                                       ; $4bb2: $69
    ld l, [hl]                                    ; $4bb3: $6e

jr_01a_4bb4:
    ld h, a                                       ; $4bb4: $67
    jr nz, jr_01a_4c2a                            ; $4bb5: $20 $73

    ld [hl], b                                    ; $4bb7: $70
    ld l, c                                       ; $4bb8: $69
    ld l, [hl]                                    ; $4bb9: $6e
    ld bc, $7865                                  ; $4bba: $01 $65 $78
    ld [hl], b                                    ; $4bbd: $70
    ld l, a                                       ; $4bbe: $6f
    ld [hl], e                                    ; $4bbf: $73
    ld h, l                                       ; $4bc0: $65
    jr nz, jr_01a_4c37                            ; $4bc1: $20 $74

    ld l, b                                       ; $4bc3: $68
    ld h, l                                       ; $4bc4: $65
    jr nz, jr_01a_4c29                            ; $4bc5: $20 $62

    ld h, c                                       ; $4bc7: $61
    ld l, h                                       ; $4bc8: $6c
    ld l, h                                       ; $4bc9: $6c
    ld bc, $6f74                                  ; $4bca: $01 $74 $6f
    jr nz, @+$79                                  ; $4bcd: $20 $77

    ld l, c                                       ; $4bcf: $69

jr_01a_4bd0:
    ld l, [hl]                                    ; $4bd0: $6e
    ld h, h                                       ; $4bd1: $64
    jr nz, jr_01a_4c47                            ; $4bd2: $20 $73

    ld l, b                                       ; $4bd4: $68
    ld l, c                                       ; $4bd5: $69
    ld h, [hl]                                    ; $4bd6: $66
    ld [hl], h                                    ; $4bd7: $74
    ld [hl], e                                    ; $4bd8: $73
    ccf                                           ; $4bd9: $3f
    inc bc                                        ; $4bda: $03
    nop                                           ; $4bdb: $00
    ld c, c                                       ; $4bdc: $49
    ld h, [hl]                                    ; $4bdd: $66

jr_01a_4bde:
    jr nz, jr_01a_4c59                            ; $4bde: $20 $79

    ld l, a                                       ; $4be0: $6f
    ld [hl], l                                    ; $4be1: $75
    jr nz, jr_01a_4c59                            ; $4be2: $20 $75

    ld [hl], e                                    ; $4be4: $73
    ld h, l                                       ; $4be5: $65
    jr nz, @+$74                                  ; $4be6: $20 $72

    ld [hl], l                                    ; $4be8: $75
    ld l, [hl]                                    ; $4be9: $6e
    jr nz, @+$76                                  ; $4bea: $20 $74

    ld l, a                                       ; $4bec: $6f
    ld bc, $7461                                  ; $4bed: $01 $61 $74
    ld [hl], h                                    ; $4bf0: $74
    ld h, c                                       ; $4bf1: $61
    ld h, e                                       ; $4bf2: $63
    ld l, e                                       ; $4bf3: $6b
    jr nz, jr_01a_4c6a                            ; $4bf4: $20 $74

    ld l, b                                       ; $4bf6: $68
    ld h, l                                       ; $4bf7: $65

jr_01a_4bf8:
    jr nz, jr_01a_4c61                            ; $4bf8: $20 $67

    ld [hl], d                                    ; $4bfa: $72

jr_01a_4bfb:
    ld h, l                                       ; $4bfb: $65
    ld h, l                                       ; $4bfc: $65
    ld l, [hl]                                    ; $4bfd: $6e
    inc l                                         ; $4bfe: $2c
    jr nz, jr_01a_4c76                            ; $4bff: $20 $75

    ld [hl], e                                    ; $4c01: $73
    ld h, l                                       ; $4c02: $65
    ld bc, $2061                                  ; $4c03: $01 $61 $20

jr_01a_4c06:
    ld l, h                                       ; $4c06: $6c
    ld l, a                                       ; $4c07: $6f
    ld [hl], a                                    ; $4c08: $77

jr_01a_4c09:
    jr nz, jr_01a_4c7f                            ; $4c09: $20 $74

    ld [hl], d                                    ; $4c0b: $72
    ld h, c                                       ; $4c0c: $61
    ld l, d                                       ; $4c0d: $6a
    ld h, l                                       ; $4c0e: $65
    ld h, e                                       ; $4c0f: $63
    ld [hl], h                                    ; $4c10: $74
    ld l, a                                       ; $4c11: $6f
    ld [hl], d                                    ; $4c12: $72
    ld a, c                                       ; $4c13: $79
    ld l, $03                                     ; $4c14: $2e $03
    nop                                           ; $4c16: $00
    ld b, a                                       ; $4c17: $47
    ld [hl], d                                    ; $4c18: $72
    ld h, c                                       ; $4c19: $61
    ld l, [hl]                                    ; $4c1a: $6e
    ld h, h                                       ; $4c1b: $64
    jr nz, jr_01a_4c61                            ; $4c1c: $20 $43

    ld l, b                                       ; $4c1e: $68
    ld h, c                                       ; $4c1f: $61
    ld l, l                                       ; $4c20: $6d
    ld [hl], b                                    ; $4c21: $70
    ld bc, $2c07                                  ; $4c22: $01 $07 $2c
    jr nz, jr_01a_4ca0                            ; $4c25: $20 $79

    ld l, a                                       ; $4c27: $6f
    ld [hl], l                                    ; $4c28: $75

jr_01a_4c29:
    daa                                           ; $4c29: $27

jr_01a_4c2a:
    ld [hl], d                                    ; $4c2a: $72
    ld h, l                                       ; $4c2b: $65
    ld bc, $6f67                                  ; $4c2c: $01 $67 $6f
    ld l, a                                       ; $4c2f: $6f
    ld h, h                                       ; $4c30: $64
    jr nz, @+$67                                  ; $4c31: $20 $65

    ld l, [hl]                                    ; $4c33: $6e
    ld l, a                                       ; $4c34: $6f
    ld [hl], l                                    ; $4c35: $75
    ld h, a                                       ; $4c36: $67

jr_01a_4c37:
    ld l, b                                       ; $4c37: $68
    jr nz, jr_01a_4ca8                            ; $4c38: $20 $6e

    ld l, a                                       ; $4c3a: $6f
    ld [hl], a                                    ; $4c3b: $77
    ld hl, $5402                                  ; $4c3c: $21 $02 $54
    ld l, a                                       ; $4c3f: $6f
    jr nz, jr_01a_4ca4                            ; $4c40: $20 $62

    ld h, l                                       ; $4c42: $65
    ld h, c                                       ; $4c43: $61
    ld [hl], h                                    ; $4c44: $74
    jr nz, jr_01a_4c94                            ; $4c45: $20 $4d

jr_01a_4c47:
    ld h, c                                       ; $4c47: $61
    ld [hl], d                                    ; $4c48: $72
    ld l, c                                       ; $4c49: $69
    ld l, a                                       ; $4c4a: $6f
    inc l                                         ; $4c4b: $2c
    jr nz, jr_01a_4caf                            ; $4c4c: $20 $61

    ld l, h                                       ; $4c4e: $6c
    ld l, h                                       ; $4c4f: $6c
    ld bc, $6f79                                  ; $4c50: $01 $79 $6f
    ld [hl], l                                    ; $4c53: $75
    jr nz, jr_01a_4cc4                            ; $4c54: $20 $6e

    ld h, l                                       ; $4c56: $65
    ld h, l                                       ; $4c57: $65
    ld h, h                                       ; $4c58: $64

jr_01a_4c59:
    jr nz, jr_01a_4ccf                            ; $4c59: $20 $74

    ld l, a                                       ; $4c5b: $6f
    jr nz, @+$66                                  ; $4c5c: $20 $64

    ld l, a                                       ; $4c5e: $6f
    jr nz, jr_01a_4cca                            ; $4c5f: $20 $69

jr_01a_4c61:
    ld [hl], e                                    ; $4c61: $73
    ld bc, $6e6b                                  ; $4c62: $01 $6b $6e
    ld l, a                                       ; $4c65: $6f
    ld [hl], a                                    ; $4c66: $77
    jr nz, jr_01a_4cdd                            ; $4c67: $20 $74

    ld l, b                                       ; $4c69: $68

jr_01a_4c6a:
    ld h, l                                       ; $4c6a: $65
    jr nz, jr_01a_4cd0                            ; $4c6b: $20 $63

    ld l, a                                       ; $4c6d: $6f
    ld [hl], l                                    ; $4c6e: $75
    ld [hl], d                                    ; $4c6f: $72
    ld [hl], e                                    ; $4c70: $73
    ld h, l                                       ; $4c71: $65
    ld l, $03                                     ; $4c72: $2e $03
    nop                                           ; $4c74: $00
    ld c, c                                       ; $4c75: $49

jr_01a_4c76:
    jr nz, jr_01a_4ce0                            ; $4c76: $20 $68

    ld h, l                                       ; $4c78: $65
    ld h, c                                       ; $4c79: $61
    ld [hl], d                                    ; $4c7a: $72
    jr nz, jr_01a_4cde                            ; $4c7b: $20 $61

    ld l, h                                       ; $4c7d: $6c
    ld l, h                                       ; $4c7e: $6c

jr_01a_4c7f:
    jr nz, jr_01a_4cf5                            ; $4c7f: $20 $74

    ld l, b                                       ; $4c81: $68
    ld h, l                                       ; $4c82: $65
    ld bc, $6c70                                  ; $4c83: $01 $70 $6c
    ld h, c                                       ; $4c86: $61
    ld a, c                                       ; $4c87: $79
    ld h, l                                       ; $4c88: $65
    ld [hl], d                                    ; $4c89: $72
    ld [hl], e                                    ; $4c8a: $73
    jr nz, jr_01a_4cee                            ; $4c8b: $20 $61

    ld [hl], h                                    ; $4c8d: $74
    jr nz, jr_01a_4ce0                            ; $4c8e: $20 $50

    ld h, l                                       ; $4c90: $65
    ld h, c                                       ; $4c91: $61
    ld h, e                                       ; $4c92: $63
    ld l, b                                       ; $4c93: $68

jr_01a_4c94:
    daa                                           ; $4c94: $27
    ld [hl], e                                    ; $4c95: $73
    ld bc, $6143                                  ; $4c96: $01 $43 $61
    ld [hl], e                                    ; $4c99: $73
    ld [hl], h                                    ; $4c9a: $74
    ld l, h                                       ; $4c9b: $6c
    ld h, l                                       ; $4c9c: $65
    jr nz, jr_01a_4d00                            ; $4c9d: $20 $61

    ld [hl], d                                    ; $4c9f: $72

jr_01a_4ca0:
    ld h, l                                       ; $4ca0: $65
    jr nz, jr_01a_4d10                            ; $4ca1: $20 $6d

    ld h, c                                       ; $4ca3: $61

jr_01a_4ca4:
    ld [hl], e                                    ; $4ca4: $73
    ld [hl], h                                    ; $4ca5: $74
    ld h, l                                       ; $4ca6: $65
    ld [hl], d                                    ; $4ca7: $72

jr_01a_4ca8:
    ld [hl], e                                    ; $4ca8: $73
    ld l, $02                                     ; $4ca9: $2e $02
    ld c, c                                       ; $4cab: $49
    jr nz, @+$79                                  ; $4cac: $20 $77

    ld l, a                                       ; $4cae: $6f

jr_01a_4caf:
    ld l, [hl]                                    ; $4caf: $6e
    ld h, h                                       ; $4cb0: $64
    ld h, l                                       ; $4cb1: $65
    ld [hl], d                                    ; $4cb2: $72
    jr nz, jr_01a_4d1e                            ; $4cb3: $20 $69

    ld h, [hl]                                    ; $4cb5: $66
    jr nz, jr_01a_4d2c                            ; $4cb6: $20 $74

    ld l, b                                       ; $4cb8: $68
    ld h, l                                       ; $4cb9: $65
    ld bc, $4722                                  ; $4cba: $01 $22 $47
    ld [hl], d                                    ; $4cbd: $72
    ld h, c                                       ; $4cbe: $61
    ld l, [hl]                                    ; $4cbf: $6e
    ld h, h                                       ; $4cc0: $64
    jr nz, jr_01a_4d06                            ; $4cc1: $20 $43

    ld l, b                                       ; $4cc3: $68

jr_01a_4cc4:
    ld h, c                                       ; $4cc4: $61
    ld l, l                                       ; $4cc5: $6d
    ld [hl], b                                    ; $4cc6: $70
    ld [hl+], a                                   ; $4cc7: $22
    jr nz, jr_01a_4d2d                            ; $4cc8: $20 $63

jr_01a_4cca:
    ld h, c                                       ; $4cca: $61
    ld l, [hl]                                    ; $4ccb: $6e
    ld bc, $6562                                  ; $4ccc: $01 $62 $65

jr_01a_4ccf:
    ld h, c                                       ; $4ccf: $61

jr_01a_4cd0:
    ld [hl], h                                    ; $4cd0: $74
    jr nz, jr_01a_4d47                            ; $4cd1: $20 $74

    ld l, b                                       ; $4cd3: $68
    ld h, l                                       ; $4cd4: $65
    ld l, l                                       ; $4cd5: $6d
    ccf                                           ; $4cd6: $3f
    inc bc                                        ; $4cd7: $03
    nop                                           ; $4cd8: $00
    ld c, c                                       ; $4cd9: $49
    jr nz, jr_01a_4d53                            ; $4cda: $20 $77

    ld l, a                                       ; $4cdc: $6f

jr_01a_4cdd:
    ld l, [hl]                                    ; $4cdd: $6e

jr_01a_4cde:
    ld h, h                                       ; $4cde: $64
    ld h, l                                       ; $4cdf: $65

jr_01a_4ce0:
    ld [hl], d                                    ; $4ce0: $72
    jr nz, jr_01a_4d5a                            ; $4ce1: $20 $77

    ld l, b                                       ; $4ce3: $68
    ld h, c                                       ; $4ce4: $61
    ld [hl], h                                    ; $4ce5: $74
    ld bc, $696b                                  ; $4ce6: $01 $6b $69
    ld l, [hl]                                    ; $4ce9: $6e
    ld h, h                                       ; $4cea: $64
    jr nz, jr_01a_4d5c                            ; $4ceb: $20 $6f

    ld h, [hl]                                    ; $4ced: $66

jr_01a_4cee:
    jr nz, jr_01a_4d53                            ; $4cee: $20 $63

    ld l, a                                       ; $4cf0: $6f
    ld [hl], l                                    ; $4cf1: $75
    ld [hl], d                                    ; $4cf2: $72
    ld [hl], e                                    ; $4cf3: $73
    ld h, l                                       ; $4cf4: $65

jr_01a_4cf5:
    ld bc, $6550                                  ; $4cf5: $01 $50 $65
    ld h, c                                       ; $4cf8: $61
    ld h, e                                       ; $4cf9: $63
    ld l, b                                       ; $4cfa: $68
    daa                                           ; $4cfb: $27
    ld [hl], e                                    ; $4cfc: $73
    jr nz, @+$45                                  ; $4cfd: $20 $43

    ld h, c                                       ; $4cff: $61

jr_01a_4d00:
    ld [hl], e                                    ; $4d00: $73
    ld [hl], h                                    ; $4d01: $74
    ld l, h                                       ; $4d02: $6c
    ld h, l                                       ; $4d03: $65
    jr nz, jr_01a_4d6f                            ; $4d04: $20 $69

jr_01a_4d06:
    ld [hl], e                                    ; $4d06: $73
    ccf                                           ; $4d07: $3f
    inc bc                                        ; $4d08: $03
    nop                                           ; $4d09: $00
    ld c, c                                       ; $4d0a: $49
    daa                                           ; $4d0b: $27
    ld l, l                                       ; $4d0c: $6d
    jr nz, @+$75                                  ; $4d0d: $20 $73

    ld l, a                                       ; $4d0f: $6f

jr_01a_4d10:
    jr nz, @+$6c                                  ; $4d10: $20 $6a

    ld h, l                                       ; $4d12: $65
    ld h, c                                       ; $4d13: $61
    ld l, h                                       ; $4d14: $6c
    ld l, a                                       ; $4d15: $6f
    ld [hl], l                                    ; $4d16: $75
    ld [hl], e                                    ; $4d17: $73
    ld hl, $4901                                  ; $4d18: $21 $01 $49
    jr nz, jr_01a_4d94                            ; $4d1b: $20 $77

    ld h, c                                       ; $4d1d: $61

jr_01a_4d1e:
    ld l, [hl]                                    ; $4d1e: $6e
    ld [hl], h                                    ; $4d1f: $74
    jr nz, jr_01a_4d96                            ; $4d20: $20 $74

    ld l, a                                       ; $4d22: $6f
    ld bc, $6c70                                  ; $4d23: $01 $70 $6c
    ld h, c                                       ; $4d26: $61
    ld a, c                                       ; $4d27: $79
    jr nz, jr_01a_4d77                            ; $4d28: $20 $4d

    ld h, c                                       ; $4d2a: $61
    ld [hl], d                                    ; $4d2b: $72

jr_01a_4d2c:
    ld l, c                                       ; $4d2c: $69

jr_01a_4d2d:
    ld l, a                                       ; $4d2d: $6f
    ld hl, $0003                                  ; $4d2e: $21 $03 $00
    ld c, c                                       ; $4d31: $49
    ld [hl], h                                    ; $4d32: $74
    daa                                           ; $4d33: $27
    ld [hl], e                                    ; $4d34: $73
    jr nz, jr_01a_4d9a                            ; $4d35: $20 $63

    ld l, a                                       ; $4d37: $6f
    ld l, h                                       ; $4d38: $6c
    ld h, h                                       ; $4d39: $64
    jr nz, @+$6b                                  ; $4d3a: $20 $69

    ld l, [hl]                                    ; $4d3c: $6e
    ld [hl], e                                    ; $4d3d: $73
    ld l, c                                       ; $4d3e: $69
    ld h, h                                       ; $4d3f: $64
    ld h, l                                       ; $4d40: $65
    ld l, $03                                     ; $4d41: $2e $03
    nop                                           ; $4d43: $00
    ld e, c                                       ; $4d44: $59
    ld l, a                                       ; $4d45: $6f
    ld [hl], l                                    ; $4d46: $75

jr_01a_4d47:
    jr nz, jr_01a_4daf                            ; $4d47: $20 $66

    ld l, a                                       ; $4d49: $6f
    ld [hl], l                                    ; $4d4a: $75
    ld l, [hl]                                    ; $4d4b: $6e
    ld h, h                                       ; $4d4c: $64
    jr nz, @+$4f                                  ; $4d4d: $20 $4d

    ld h, c                                       ; $4d4f: $61
    ld [hl], d                                    ; $4d50: $72
    ld l, c                                       ; $4d51: $69
    ld l, a                                       ; $4d52: $6f

jr_01a_4d53:
    ld bc, $6f47                                  ; $4d53: $01 $47 $6f
    ld l, h                                       ; $4d56: $6c
    ld h, [hl]                                    ; $4d57: $66
    jr nz, @+$68                                  ; $4d58: $20 $66

jr_01a_4d5a:
    ld l, a                                       ; $4d5a: $6f
    ld [hl], d                                    ; $4d5b: $72

jr_01a_4d5c:
    jr nz, jr_01a_4dd2                            ; $4d5c: $20 $74

    ld l, b                                       ; $4d5e: $68
    ld h, l                                       ; $4d5f: $65
    jr nz, @+$50                                  ; $4d60: $20 $4e

    ld [hl], $34                                  ; $4d62: $36 $34
    ld hl, $4701                                  ; $4d64: $21 $01 $47
    ld l, c                                       ; $4d67: $69
    halt                                          ; $4d68: $76
    ld h, l                                       ; $4d69: $65
    jr nz, jr_01a_4dd5                            ; $4d6a: $20 $69

    ld [hl], h                                    ; $4d6c: $74
    jr nz, jr_01a_4dd0                            ; $4d6d: $20 $61

jr_01a_4d6f:
    jr nz, jr_01a_4de4                            ; $4d6f: $20 $73

    ld l, b                                       ; $4d71: $68
    ld l, a                                       ; $4d72: $6f
    ld [hl], h                                    ; $4d73: $74
    ld hl, $0003                                  ; $4d74: $21 $03 $00

jr_01a_4d77:
    ld c, c                                       ; $4d77: $49
    ld [hl], h                                    ; $4d78: $74
    daa                                           ; $4d79: $27
    ld [hl], e                                    ; $4d7a: $73
    jr nz, jr_01a_4dd1                            ; $4d7b: $20 $54

    ld l, a                                       ; $4d7d: $6f
    ld h, c                                       ; $4d7e: $61
    ld h, h                                       ; $4d7f: $64
    ld hl, $4f02                                  ; $4d80: $21 $02 $4f
    ld l, b                                       ; $4d83: $68
    inc l                                         ; $4d84: $2c
    jr nz, jr_01a_4df0                            ; $4d85: $20 $69

    ld [hl], h                                    ; $4d87: $74
    daa                                           ; $4d88: $27
    ld [hl], e                                    ; $4d89: $73
    jr nz, jr_01a_4df6                            ; $4d8a: $20 $6a

    ld [hl], l                                    ; $4d8c: $75
    ld [hl], e                                    ; $4d8d: $73
    ld [hl], h                                    ; $4d8e: $74
    jr nz, jr_01a_4df2                            ; $4d8f: $20 $61

    ld bc, $6f74                                  ; $4d91: $01 $74 $6f

jr_01a_4d94:
    ld h, c                                       ; $4d94: $61
    ld h, h                                       ; $4d95: $64

jr_01a_4d96:
    ld [hl], e                                    ; $4d96: $73
    ld [hl], h                                    ; $4d97: $74
    ld l, a                                       ; $4d98: $6f
    ld l, a                                       ; $4d99: $6f

jr_01a_4d9a:
    ld l, h                                       ; $4d9a: $6c
    ld l, $03                                     ; $4d9b: $2e $03
    nop                                           ; $4d9d: $00
    ld c, c                                       ; $4d9e: $49
    ld [hl], h                                    ; $4d9f: $74
    daa                                           ; $4da0: $27
    ld [hl], e                                    ; $4da1: $73
    jr nz, jr_01a_4e05                            ; $4da2: $20 $61

    jr nz, @+$72                                  ; $4da4: $20 $70

    ld l, c                                       ; $4da6: $69
    ld h, e                                       ; $4da7: $63
    ld [hl], h                                    ; $4da8: $74
    ld [hl], l                                    ; $4da9: $75
    ld [hl], d                                    ; $4daa: $72
    ld h, l                                       ; $4dab: $65
    jr nz, @+$71                                  ; $4dac: $20 $6f

    ld h, [hl]                                    ; $4dae: $66

jr_01a_4daf:
    ld bc, $6550                                  ; $4daf: $01 $50 $65
    ld h, c                                       ; $4db2: $61
    ld h, e                                       ; $4db3: $63
    ld l, b                                       ; $4db4: $68
    ld hl, $4101                                  ; $4db5: $21 $01 $41
    ld l, [hl]                                    ; $4db8: $6e
    ld h, h                                       ; $4db9: $64
    jr nz, jr_01a_4e25                            ; $4dba: $20 $69

    ld [hl], h                                    ; $4dbc: $74
    daa                                           ; $4dbd: $27
    ld [hl], e                                    ; $4dbe: $73
    jr nz, jr_01a_4e34                            ; $4dbf: $20 $73

    ld l, c                                       ; $4dc1: $69
    ld h, a                                       ; $4dc2: $67
    ld l, [hl]                                    ; $4dc3: $6e
    ld h, l                                       ; $4dc4: $65
    ld h, h                                       ; $4dc5: $64
    ld hl, $0003                                  ; $4dc6: $21 $03 $00
    ld b, c                                       ; $4dc9: $41
    jr nz, jr_01a_4e32                            ; $4dca: $20 $66

    ld l, c                                       ; $4dcc: $69
    ld [hl], e                                    ; $4dcd: $73
    ld l, b                                       ; $4dce: $68
    ld l, c                                       ; $4dcf: $69

jr_01a_4dd0:
    ld l, [hl]                                    ; $4dd0: $6e

jr_01a_4dd1:
    ld h, a                                       ; $4dd1: $67

jr_01a_4dd2:
    jr nz, jr_01a_4e46                            ; $4dd2: $20 $72

    ld l, a                                       ; $4dd4: $6f

jr_01a_4dd5:
    ld h, h                                       ; $4dd5: $64
    ccf                                           ; $4dd6: $3f
    ld hl, HeaderManufacturerCode                 ; $4dd7: $21 $3f $01
    ld c, a                                       ; $4dda: $4f
    ld l, b                                       ; $4ddb: $68
    ld hl, $4920                                  ; $4ddc: $21 $20 $49
    ld [hl], h                                    ; $4ddf: $74
    daa                                           ; $4de0: $27
    ld [hl], e                                    ; $4de1: $73
    jr nz, jr_01a_4e30                            ; $4de2: $20 $4c

jr_01a_4de4:
    ld h, c                                       ; $4de4: $61
    ld l, e                                       ; $4de5: $6b
    ld l, c                                       ; $4de6: $69
    ld [hl], h                                    ; $4de7: $74
    ld [hl], l                                    ; $4de8: $75
    daa                                           ; $4de9: $27
    ld [hl], e                                    ; $4dea: $73
    ld bc, $6f4c                                  ; $4deb: $01 $4c $6f
    ld h, e                                       ; $4dee: $63
    ld l, e                                       ; $4def: $6b

jr_01a_4df0:
    ld h, l                                       ; $4df0: $65
    ld [hl], d                                    ; $4df1: $72

jr_01a_4df2:
    ld l, $03                                     ; $4df2: $2e $03
    nop                                           ; $4df4: $00
    ld c, c                                       ; $4df5: $49

jr_01a_4df6:
    ld [hl], h                                    ; $4df6: $74
    daa                                           ; $4df7: $27
    ld [hl], e                                    ; $4df8: $73
    jr nz, jr_01a_4e3d                            ; $4df9: $20 $42

    ld h, c                                       ; $4dfb: $61
    ld h, d                                       ; $4dfc: $62
    ld a, c                                       ; $4dfd: $79
    jr nz, jr_01a_4e4d                            ; $4dfe: $20 $4d

    ld h, c                                       ; $4e00: $61
    ld [hl], d                                    ; $4e01: $72
    ld l, c                                       ; $4e02: $69
    ld l, a                                       ; $4e03: $6f
    daa                                           ; $4e04: $27

jr_01a_4e05:
    ld [hl], e                                    ; $4e05: $73
    ld bc, $6964                                  ; $4e06: $01 $64 $69
    ld h, c                                       ; $4e09: $61
    ld [hl], b                                    ; $4e0a: $70
    ld h, l                                       ; $4e0b: $65
    ld [hl], d                                    ; $4e0c: $72
    ld hl, $4501                                  ; $4e0d: $21 $01 $45
    ld [hl], a                                    ; $4e10: $77
    ld hl, $4920                                  ; $4e11: $21 $20 $49
    ld [hl], h                                    ; $4e14: $74
    jr nz, jr_01a_4e8a                            ; $4e15: $20 $73

    ld [hl], h                                    ; $4e17: $74
    ld l, c                                       ; $4e18: $69
    ld l, [hl]                                    ; $4e19: $6e
    ld l, e                                       ; $4e1a: $6b
    ld [hl], e                                    ; $4e1b: $73
    ld hl, $0003                                  ; $4e1c: $21 $03 $00
    ld e, c                                       ; $4e1f: $59
    ld l, a                                       ; $4e20: $6f
    ld [hl], l                                    ; $4e21: $75
    jr nz, jr_01a_4e8a                            ; $4e22: $20 $66

    ld l, a                                       ; $4e24: $6f

jr_01a_4e25:
    ld [hl], l                                    ; $4e25: $75
    ld l, [hl]                                    ; $4e26: $6e
    ld h, h                                       ; $4e27: $64
    jr nz, jr_01a_4e8b                            ; $4e28: $20 $61

    ld bc, $6f59                                  ; $4e2a: $01 $59 $6f
    ld [hl], e                                    ; $4e2d: $73
    ld l, b                                       ; $4e2e: $68
    ld l, c                                       ; $4e2f: $69

jr_01a_4e30:
    jr nz, jr_01a_4e97                            ; $4e30: $20 $65

jr_01a_4e32:
    ld h, a                                       ; $4e32: $67
    ld h, a                                       ; $4e33: $67

jr_01a_4e34:
    ld hl, $4920                                  ; $4e34: $21 $20 $49
    ld [hl], h                                    ; $4e37: $74
    daa                                           ; $4e38: $27
    ld [hl], e                                    ; $4e39: $73
    ld bc, $6261                                  ; $4e3a: $01 $61 $62

jr_01a_4e3d:
    ld l, a                                       ; $4e3d: $6f
    ld [hl], l                                    ; $4e3e: $75
    ld [hl], h                                    ; $4e3f: $74
    jr nz, jr_01a_4eb6                            ; $4e40: $20 $74

    ld l, a                                       ; $4e42: $6f
    jr nz, jr_01a_4ead                            ; $4e43: $20 $68

    ld h, c                                       ; $4e45: $61

jr_01a_4e46:
    ld [hl], h                                    ; $4e46: $74
    ld h, e                                       ; $4e47: $63
    ld l, b                                       ; $4e48: $68
    ld hl, $0003                                  ; $4e49: $21 $03 $00
    ld e, c                                       ; $4e4c: $59

jr_01a_4e4d:
    ld l, a                                       ; $4e4d: $6f
    ld [hl], l                                    ; $4e4e: $75
    jr nz, jr_01a_4eb7                            ; $4e4f: $20 $66

    ld l, a                                       ; $4e51: $6f
    ld [hl], l                                    ; $4e52: $75
    ld l, [hl]                                    ; $4e53: $6e
    ld h, h                                       ; $4e54: $64
    jr nz, jr_01a_4eb8                            ; $4e55: $20 $61

    jr nz, jr_01a_4eac                            ; $4e57: $20 $53

    ld l, b                                       ; $4e59: $68
    ld a, c                                       ; $4e5a: $79
    ld bc, $7547                                  ; $4e5b: $01 $47 $75
    ld a, c                                       ; $4e5e: $79
    jr nz, jr_01a_4ece                            ; $4e5f: $20 $6d

    ld h, c                                       ; $4e61: $61
    ld [hl], e                                    ; $4e62: $73
    ld l, e                                       ; $4e63: $6b
    ld l, $01                                     ; $4e64: $2e $01
    ld d, [hl]                                    ; $4e66: $56
    ld h, l                                       ; $4e67: $65
    ld [hl], d                                    ; $4e68: $72
    ld a, c                                       ; $4e69: $79
    jr nz, @+$70                                  ; $4e6a: $20 $6e

    ld l, c                                       ; $4e6c: $69
    ld h, e                                       ; $4e6d: $63
    ld h, l                                       ; $4e6e: $65
    ld l, $2e                                     ; $4e6f: $2e $2e
    ld l, $03                                     ; $4e71: $2e $03
    nop                                           ; $4e73: $00
    ld e, c                                       ; $4e74: $59
    ld l, a                                       ; $4e75: $6f
    ld [hl], l                                    ; $4e76: $75
    jr nz, jr_01a_4edf                            ; $4e77: $20 $66

    ld l, a                                       ; $4e79: $6f
    ld [hl], l                                    ; $4e7a: $75
    ld l, [hl]                                    ; $4e7b: $6e
    ld h, h                                       ; $4e7c: $64
    jr nz, @+$4d                                  ; $4e7d: $20 $4b

    ld l, a                                       ; $4e7f: $6f
    ld l, a                                       ; $4e80: $6f
    ld [hl], b                                    ; $4e81: $70
    ld h, c                                       ; $4e82: $61
    daa                                           ; $4e83: $27
    ld [hl], e                                    ; $4e84: $73
    ld bc, $6873                                  ; $4e85: $01 $73 $68
    ld h, l                                       ; $4e88: $65
    ld l, h                                       ; $4e89: $6c

jr_01a_4e8a:
    ld l, h                                       ; $4e8a: $6c

jr_01a_4e8b:
    inc l                                         ; $4e8b: $2c
    jr nz, jr_01a_4ef0                            ; $4e8c: $20 $62

    ld [hl], l                                    ; $4e8e: $75
    ld [hl], h                                    ; $4e8f: $74
    jr nz, jr_01a_4f09                            ; $4e90: $20 $77

    ld l, b                                       ; $4e92: $68
    ld h, l                                       ; $4e93: $65
    ld [hl], d                                    ; $4e94: $72
    ld h, l                                       ; $4e95: $65
    daa                                           ; $4e96: $27

jr_01a_4e97:
    ld [hl], e                                    ; $4e97: $73
    ld bc, $6f4b                                  ; $4e98: $01 $4b $6f
    ld l, a                                       ; $4e9b: $6f
    ld [hl], b                                    ; $4e9c: $70
    ld h, c                                       ; $4e9d: $61
    ccf                                           ; $4e9e: $3f
    inc bc                                        ; $4e9f: $03
    nop                                           ; $4ea0: $00
    ld b, c                                       ; $4ea1: $41
    jr nz, jr_01a_4ef4                            ; $4ea2: $20 $50

    ld l, c                                       ; $4ea4: $69
    ld [hl], d                                    ; $4ea5: $72
    ld h, c                                       ; $4ea6: $61
    ld l, [hl]                                    ; $4ea7: $6e
    ld l, b                                       ; $4ea8: $68
    ld h, c                                       ; $4ea9: $61
    jr nz, jr_01a_4efc                            ; $4eaa: $20 $50

jr_01a_4eac:
    ld l, h                                       ; $4eac: $6c

jr_01a_4ead:
    ld h, c                                       ; $4ead: $61
    ld l, [hl]                                    ; $4eae: $6e
    ld [hl], h                                    ; $4eaf: $74
    ld bc, $6f62                                  ; $4eb0: $01 $62 $6f
    ld [hl], l                                    ; $4eb3: $75
    ld [hl], c                                    ; $4eb4: $71
    ld [hl], l                                    ; $4eb5: $75

jr_01a_4eb6:
    ld h, l                                       ; $4eb6: $65

jr_01a_4eb7:
    ld [hl], h                                    ; $4eb7: $74

jr_01a_4eb8:
    ld hl, $4401                                  ; $4eb8: $21 $01 $44
    ld l, a                                       ; $4ebb: $6f
    ld l, [hl]                                    ; $4ebc: $6e
    daa                                           ; $4ebd: $27
    ld [hl], h                                    ; $4ebe: $74
    jr nz, jr_01a_4f35                            ; $4ebf: $20 $74

    ld l, a                                       ; $4ec1: $6f
    ld [hl], l                                    ; $4ec2: $75
    ld h, e                                       ; $4ec3: $63
    ld l, b                                       ; $4ec4: $68
    ld hl, $0003                                  ; $4ec5: $21 $03 $00
    ld b, c                                       ; $4ec8: $41
    jr nz, jr_01a_4f44                            ; $4ec9: $20 $79

    ld h, l                                       ; $4ecb: $65
    ld l, h                                       ; $4ecc: $6c
    ld l, h                                       ; $4ecd: $6c

jr_01a_4ece:
    ld l, a                                       ; $4ece: $6f
    ld [hl], a                                    ; $4ecf: $77
    jr nz, jr_01a_4f35                            ; $4ed0: $20 $63

    ld h, c                                       ; $4ed2: $61
    ld [hl], b                                    ; $4ed3: $70
    jr nz, jr_01a_4f37                            ; $4ed4: $20 $61

    ld l, [hl]                                    ; $4ed6: $6e
    ld h, h                                       ; $4ed7: $64
    ld bc, $2061                                  ; $4ed8: $01 $61 $20
    ld h, [hl]                                    ; $4edb: $66
    ld h, c                                       ; $4edc: $61
    ld l, e                                       ; $4edd: $6b
    ld h, l                                       ; $4ede: $65

jr_01a_4edf:
    jr nz, jr_01a_4f4e                            ; $4edf: $20 $6d

    ld l, a                                       ; $4ee1: $6f
    ld [hl], l                                    ; $4ee2: $75
    ld [hl], e                                    ; $4ee3: $73
    ld [hl], h                                    ; $4ee4: $74
    ld h, c                                       ; $4ee5: $61
    ld h, e                                       ; $4ee6: $63
    ld l, b                                       ; $4ee7: $68
    ld h, l                                       ; $4ee8: $65
    ld l, $2e                                     ; $4ee9: $2e $2e
    ld l, $01                                     ; $4eeb: $2e $01
    ld b, e                                       ; $4eed: $43
    ld l, a                                       ; $4eee: $6f
    ld [hl], l                                    ; $4eef: $75

jr_01a_4ef0:
    ld l, h                                       ; $4ef0: $6c
    ld h, h                                       ; $4ef1: $64
    jr nz, jr_01a_4f5d                            ; $4ef2: $20 $69

jr_01a_4ef4:
    ld [hl], h                                    ; $4ef4: $74
    jr nz, @+$64                                  ; $4ef5: $20 $62

    ld h, l                                       ; $4ef7: $65
    ld l, $2e                                     ; $4ef8: $2e $2e
    ld l, $3f                                     ; $4efa: $2e $3f

jr_01a_4efc:
    ld hl, $033f                                  ; $4efc: $21 $3f $03
    nop                                           ; $4eff: $00
    ld c, c                                       ; $4f00: $49
    ld [hl], h                                    ; $4f01: $74
    daa                                           ; $4f02: $27
    ld [hl], e                                    ; $4f03: $73
    jr nz, @+$63                                  ; $4f04: $20 $61

    jr nz, jr_01a_4f7f                            ; $4f06: $20 $77

    ld l, c                                       ; $4f08: $69

jr_01a_4f09:
    ld l, [hl]                                    ; $4f09: $6e
    ld h, h                                       ; $4f0a: $64
    dec l                                         ; $4f0b: $2d
    ld [hl], l                                    ; $4f0c: $75
    ld [hl], b                                    ; $4f0d: $70
    ld bc, $6f42                                  ; $4f0e: $01 $42 $6f
    ld h, d                                       ; $4f11: $62
    dec l                                         ; $4f12: $2d
    ld l, a                                       ; $4f13: $6f
    ld l, l                                       ; $4f14: $6d
    ld h, d                                       ; $4f15: $62
    ld hl, $4902                                  ; $4f16: $21 $02 $49
    jr nz, @+$79                                  ; $4f19: $20 $77

    ld h, c                                       ; $4f1b: $61
    ld l, [hl]                                    ; $4f1c: $6e
    ld [hl], h                                    ; $4f1d: $74
    jr nz, jr_01a_4f94                            ; $4f1e: $20 $74

    ld l, a                                       ; $4f20: $6f
    jr nz, @+$79                                  ; $4f21: $20 $77

    ld l, c                                       ; $4f23: $69
    ld l, [hl]                                    ; $4f24: $6e
    ld h, h                                       ; $4f25: $64
    ld bc, $7469                                  ; $4f26: $01 $69 $74
    jr nz, @+$77                                  ; $4f29: $20 $75

    ld [hl], b                                    ; $4f2b: $70
    inc l                                         ; $4f2c: $2c
    jr nz, @+$64                                  ; $4f2d: $20 $62

    ld [hl], l                                    ; $4f2f: $75
    ld [hl], h                                    ; $4f30: $74
    ld l, $2e                                     ; $4f31: $2e $2e
    ld l, $03                                     ; $4f33: $2e $03

jr_01a_4f35:
    nop                                           ; $4f35: $00
    ld c, c                                       ; $4f36: $49

jr_01a_4f37:
    ld [hl], h                                    ; $4f37: $74
    daa                                           ; $4f38: $27
    ld [hl], e                                    ; $4f39: $73
    jr nz, @+$46                                  ; $4f3a: $20 $44

    ld l, a                                       ; $4f3c: $6f
    ld l, [hl]                                    ; $4f3d: $6e
    ld l, e                                       ; $4f3e: $6b
    ld h, l                                       ; $4f3f: $65
    ld a, c                                       ; $4f40: $79
    jr nz, jr_01a_4f8e                            ; $4f41: $20 $4b

    ld l, a                                       ; $4f43: $6f

jr_01a_4f44:
    ld l, [hl]                                    ; $4f44: $6e
    ld h, a                                       ; $4f45: $67
    ld hl, $4f02                                  ; $4f46: $21 $02 $4f
    ld l, b                                       ; $4f49: $68
    inc l                                         ; $4f4a: $2c
    jr nz, @+$6b                                  ; $4f4b: $20 $69

    ld [hl], h                                    ; $4f4d: $74

jr_01a_4f4e:
    daa                                           ; $4f4e: $27
    ld [hl], e                                    ; $4f4f: $73
    jr nz, jr_01a_4fbc                            ; $4f50: $20 $6a

    ld [hl], l                                    ; $4f52: $75
    ld [hl], e                                    ; $4f53: $73
    ld [hl], h                                    ; $4f54: $74
    jr nz, jr_01a_4fb8                            ; $4f55: $20 $61

    ld bc, $6f77                                  ; $4f57: $01 $77 $6f
    ld l, a                                       ; $4f5a: $6f
    ld h, h                                       ; $4f5b: $64
    ld h, l                                       ; $4f5c: $65

jr_01a_4f5d:
    ld l, [hl]                                    ; $4f5d: $6e
    jr nz, jr_01a_4fc7                            ; $4f5e: $20 $67

    ld l, a                                       ; $4f60: $6f
    ld [hl], d                                    ; $4f61: $72
    ld l, c                                       ; $4f62: $69
    ld l, h                                       ; $4f63: $6c
    ld l, h                                       ; $4f64: $6c
    ld h, c                                       ; $4f65: $61
    ld l, $03                                     ; $4f66: $2e $03
    nop                                           ; $4f68: $00
    ld b, c                                       ; $4f69: $41
    ld c, b                                       ; $4f6a: $48
    ld c, b                                       ; $4f6b: $48
    ld c, b                                       ; $4f6c: $48
    ld hl, $2121                                  ; $4f6d: $21 $21 $21
    jr nz, jr_01a_4fbb                            ; $4f70: $20 $49

    ld [hl], h                                    ; $4f72: $74
    daa                                           ; $4f73: $27
    ld [hl], e                                    ; $4f74: $73
    jr nz, jr_01a_4fb9                            ; $4f75: $20 $42

    ld l, a                                       ; $4f77: $6f
    ld l, a                                       ; $4f78: $6f
    ld hl, $4802                                  ; $4f79: $21 $02 $48
    ld [hl], l                                    ; $4f7c: $75
    ld l, b                                       ; $4f7d: $68
    ccf                                           ; $4f7e: $3f

jr_01a_4f7f:
    ld hl, HeaderManufacturerCode                 ; $4f7f: $21 $3f $01
    ld c, c                                       ; $4f82: $49
    ld [hl], h                                    ; $4f83: $74
    jr nz, @+$66                                  ; $4f84: $20 $64

    ld l, c                                       ; $4f86: $69
    ld [hl], e                                    ; $4f87: $73
    ld h, c                                       ; $4f88: $61
    ld [hl], b                                    ; $4f89: $70
    ld [hl], b                                    ; $4f8a: $70
    ld h, l                                       ; $4f8b: $65
    ld h, c                                       ; $4f8c: $61
    ld [hl], d                                    ; $4f8d: $72

jr_01a_4f8e:
    ld h, l                                       ; $4f8e: $65
    ld h, h                                       ; $4f8f: $64
    ld hl, $0003                                  ; $4f90: $21 $03 $00
    ld e, c                                       ; $4f93: $59

jr_01a_4f94:
    ld l, c                                       ; $4f94: $69
    ld l, e                                       ; $4f95: $6b
    ld h, l                                       ; $4f96: $65
    ld [hl], e                                    ; $4f97: $73
    ld hl, $4920                                  ; $4f98: $21 $20 $49
    ld [hl], h                                    ; $4f9b: $74
    daa                                           ; $4f9c: $27
    ld [hl], e                                    ; $4f9d: $73
    ld bc, $6843                                  ; $4f9e: $01 $43 $68
    ld h, c                                       ; $4fa1: $61
    ld l, c                                       ; $4fa2: $69
    ld l, [hl]                                    ; $4fa3: $6e
    jr nz, jr_01a_4fe9                            ; $4fa4: $20 $43

    ld l, b                                       ; $4fa6: $68
    ld l, a                                       ; $4fa7: $6f
    ld l, l                                       ; $4fa8: $6d
    ld [hl], b                                    ; $4fa9: $70
    ld hl, $5302                                  ; $4faa: $21 $02 $53
    ld l, b                                       ; $4fad: $68
    ld l, b                                       ; $4fae: $68
    ld hl, $4920                                  ; $4faf: $21 $20 $49
    ld [hl], h                                    ; $4fb2: $74
    daa                                           ; $4fb3: $27
    ld [hl], e                                    ; $4fb4: $73
    jr nz, jr_01a_5018                            ; $4fb5: $20 $61

    ld [hl], e                                    ; $4fb7: $73

jr_01a_4fb8:
    ld l, h                                       ; $4fb8: $6c

jr_01a_4fb9:
    ld h, l                                       ; $4fb9: $65
    ld h, l                                       ; $4fba: $65

jr_01a_4fbb:
    ld [hl], b                                    ; $4fbb: $70

jr_01a_4fbc:
    ld hl, $0003                                  ; $4fbc: $21 $03 $00
    ld c, c                                       ; $4fbf: $49
    ld [hl], h                                    ; $4fc0: $74
    daa                                           ; $4fc1: $27
    ld [hl], e                                    ; $4fc2: $73
    jr nz, jr_01a_502a                            ; $4fc3: $20 $65

    ld l, l                                       ; $4fc5: $6d
    ld [hl], b                                    ; $4fc6: $70

jr_01a_4fc7:
    ld [hl], h                                    ; $4fc7: $74
    ld a, c                                       ; $4fc8: $79
    ld l, $03                                     ; $4fc9: $2e $03
    nop                                           ; $4fcb: $00
    ld c, c                                       ; $4fcc: $49
    ld [hl], h                                    ; $4fcd: $74
    daa                                           ; $4fce: $27
    ld [hl], e                                    ; $4fcf: $73
    jr nz, jr_01a_5046                            ; $4fd0: $20 $74

    ld l, b                                       ; $4fd2: $68
    ld h, l                                       ; $4fd3: $65
    jr nz, @+$78                                  ; $4fd4: $20 $76

    ld l, c                                       ; $4fd6: $69
    ld h, e                                       ; $4fd7: $63
    ld [hl], h                                    ; $4fd8: $74
    ld l, a                                       ; $4fd9: $6f
    ld [hl], d                                    ; $4fda: $72
    ld a, c                                       ; $4fdb: $79
    ld bc, $7274                                  ; $4fdc: $01 $74 $72
    ld l, a                                       ; $4fdf: $6f
    ld [hl], b                                    ; $4fe0: $70
    ld l, b                                       ; $4fe1: $68
    ld a, c                                       ; $4fe2: $79
    jr nz, @+$68                                  ; $4fe3: $20 $66

    ld l, a                                       ; $4fe5: $6f
    ld [hl], d                                    ; $4fe6: $72
    jr nz, jr_01a_4ff4                            ; $4fe7: $20 $0b

jr_01a_4fe9:
    ld bc, $6c43                                  ; $4fe9: $01 $43 $6c
    ld [hl], l                                    ; $4fec: $75
    ld h, d                                       ; $4fed: $62
    jr nz, jr_01a_5044                            ; $4fee: $20 $54

    ld l, a                                       ; $4ff0: $6f
    ld [hl], l                                    ; $4ff1: $75
    ld [hl], d                                    ; $4ff2: $72
    ld l, [hl]                                    ; $4ff3: $6e

jr_01a_4ff4:
    ld h, c                                       ; $4ff4: $61
    ld l, l                                       ; $4ff5: $6d
    ld h, l                                       ; $4ff6: $65
    ld l, [hl]                                    ; $4ff7: $6e
    ld [hl], h                                    ; $4ff8: $74
    ld hl, $0003                                  ; $4ff9: $21 $03 $00
    ld c, c                                       ; $4ffc: $49
    ld [hl], h                                    ; $4ffd: $74
    daa                                           ; $4ffe: $27
    ld [hl], e                                    ; $4fff: $73
    jr nz, jr_01a_5076                            ; $5000: $20 $74

    ld l, b                                       ; $5002: $68
    ld h, l                                       ; $5003: $65
    jr nz, jr_01a_5056                            ; $5004: $20 $50

    ld h, l                                       ; $5006: $65
    ld h, c                                       ; $5007: $61
    ld h, e                                       ; $5008: $63
    ld l, b                                       ; $5009: $68
    daa                                           ; $500a: $27
    ld [hl], e                                    ; $500b: $73
    ld bc, $6143                                  ; $500c: $01 $43 $61
    ld [hl], e                                    ; $500f: $73
    ld [hl], h                                    ; $5010: $74
    ld l, h                                       ; $5011: $6c
    ld h, l                                       ; $5012: $65
    jr nz, jr_01a_5069                            ; $5013: $20 $54

    ld l, a                                       ; $5015: $6f
    ld [hl], l                                    ; $5016: $75
    ld [hl], d                                    ; $5017: $72

jr_01a_5018:
    ld l, [hl]                                    ; $5018: $6e
    ld h, c                                       ; $5019: $61
    ld l, l                                       ; $501a: $6d
    ld h, l                                       ; $501b: $65
    ld l, [hl]                                    ; $501c: $6e
    ld [hl], h                                    ; $501d: $74
    ld bc, $6976                                  ; $501e: $01 $76 $69
    ld h, e                                       ; $5021: $63
    ld [hl], h                                    ; $5022: $74
    ld l, a                                       ; $5023: $6f
    ld [hl], d                                    ; $5024: $72
    ld a, c                                       ; $5025: $79
    jr nz, @+$76                                  ; $5026: $20 $74

    ld [hl], d                                    ; $5028: $72
    ld l, a                                       ; $5029: $6f

jr_01a_502a:
    ld [hl], b                                    ; $502a: $70
    ld l, b                                       ; $502b: $68
    ld a, c                                       ; $502c: $79
    ld hl, $0003                                  ; $502d: $21 $03 $00
    ld c, c                                       ; $5030: $49
    ld [hl], h                                    ; $5031: $74
    daa                                           ; $5032: $27
    ld [hl], e                                    ; $5033: $73
    jr nz, jr_01a_50aa                            ; $5034: $20 $74

    ld l, b                                       ; $5036: $68
    ld h, l                                       ; $5037: $65
    jr nz, jr_01a_5045                            ; $5038: $20 $0b

    ld bc, $6c43                                  ; $503a: $01 $43 $6c
    ld [hl], l                                    ; $503d: $75
    ld h, d                                       ; $503e: $62
    jr nz, jr_01a_5095                            ; $503f: $20 $54

    ld l, a                                       ; $5041: $6f
    ld [hl], l                                    ; $5042: $75
    ld [hl], d                                    ; $5043: $72

jr_01a_5044:
    ld l, [hl]                                    ; $5044: $6e

jr_01a_5045:
    ld h, c                                       ; $5045: $61

jr_01a_5046:
    ld l, l                                       ; $5046: $6d
    ld h, l                                       ; $5047: $65
    ld l, [hl]                                    ; $5048: $6e
    ld [hl], h                                    ; $5049: $74
    ld bc, $200f                                  ; $504a: $01 $0f $20
    ld [hl], b                                    ; $504d: $70
    ld l, h                                       ; $504e: $6c
    ld h, c                                       ; $504f: $61
    ld h, e                                       ; $5050: $63
    ld h, l                                       ; $5051: $65
    jr nz, jr_01a_50c8                            ; $5052: $20 $74

    ld [hl], d                                    ; $5054: $72
    ld l, a                                       ; $5055: $6f

jr_01a_5056:
    ld [hl], b                                    ; $5056: $70
    ld l, b                                       ; $5057: $68
    ld a, c                                       ; $5058: $79
    ld l, $02                                     ; $5059: $2e $02
    rlca                                          ; $505b: $07
    daa                                           ; $505c: $27
    ld [hl], e                                    ; $505d: $73
    jr nz, jr_01a_50c8                            ; $505e: $20 $68

    ld h, l                                       ; $5060: $65
    ld h, c                                       ; $5061: $61
    ld [hl], d                                    ; $5062: $72
    ld [hl], h                                    ; $5063: $74
    ld bc, $7369                                  ; $5064: $01 $69 $73
    jr nz, @+$75                                  ; $5067: $20 $73

jr_01a_5069:
    ld h, l                                       ; $5069: $65
    ld [hl], h                                    ; $506a: $74
    jr nz, @+$71                                  ; $506b: $20 $6f

    ld l, [hl]                                    ; $506d: $6e
    jr nz, @+$79                                  ; $506e: $20 $77

    ld l, c                                       ; $5070: $69
    ld l, [hl]                                    ; $5071: $6e
    ld l, [hl]                                    ; $5072: $6e
    ld l, c                                       ; $5073: $69
    ld l, [hl]                                    ; $5074: $6e
    ld h, a                                       ; $5075: $67

jr_01a_5076:
    ld bc, $656e                                  ; $5076: $01 $6e $65
    ld a, b                                       ; $5079: $78
    ld [hl], h                                    ; $507a: $74
    jr nz, jr_01a_50f1                            ; $507b: $20 $74

    ld l, c                                       ; $507d: $69
    ld l, l                                       ; $507e: $6d
    ld h, l                                       ; $507f: $65
    ld l, $03                                     ; $5080: $2e $03
    nop                                           ; $5082: $00
    ld c, c                                       ; $5083: $49
    ld [hl], h                                    ; $5084: $74
    daa                                           ; $5085: $27
    ld [hl], e                                    ; $5086: $73
    jr nz, jr_01a_50fd                            ; $5087: $20 $74

    ld l, b                                       ; $5089: $68
    ld h, l                                       ; $508a: $65
    ld bc, $200f                                  ; $508b: $01 $0f $20
    ld [hl], b                                    ; $508e: $70
    ld l, h                                       ; $508f: $6c
    ld h, c                                       ; $5090: $61
    ld h, e                                       ; $5091: $63
    ld h, l                                       ; $5092: $65
    jr nz, @+$76                                  ; $5093: $20 $74

jr_01a_5095:
    ld [hl], d                                    ; $5095: $72
    ld l, a                                       ; $5096: $6f
    ld [hl], b                                    ; $5097: $70
    ld l, b                                       ; $5098: $68
    ld a, c                                       ; $5099: $79
    ld bc, $6f66                                  ; $509a: $01 $66 $6f
    ld [hl], d                                    ; $509d: $72
    jr nz, jr_01a_50f0                            ; $509e: $20 $50

    ld h, l                                       ; $50a0: $65
    ld h, c                                       ; $50a1: $61
    ld h, e                                       ; $50a2: $63
    ld l, b                                       ; $50a3: $68
    daa                                           ; $50a4: $27
    ld [hl], e                                    ; $50a5: $73
    jr nz, jr_01a_50eb                            ; $50a6: $20 $43

    ld h, c                                       ; $50a8: $61
    ld [hl], e                                    ; $50a9: $73

jr_01a_50aa:
    ld [hl], h                                    ; $50aa: $74
    ld l, h                                       ; $50ab: $6c
    ld h, l                                       ; $50ac: $65
    ld hl, $0702                                  ; $50ad: $21 $02 $07
    daa                                           ; $50b0: $27
    ld [hl], e                                    ; $50b1: $73
    jr nz, jr_01a_511c                            ; $50b2: $20 $68

    ld h, l                                       ; $50b4: $65
    ld h, c                                       ; $50b5: $61
    ld [hl], d                                    ; $50b6: $72
    ld [hl], h                                    ; $50b7: $74
    ld bc, $7369                                  ; $50b8: $01 $69 $73
    jr nz, jr_01a_5130                            ; $50bb: $20 $73

    ld h, l                                       ; $50bd: $65
    ld [hl], h                                    ; $50be: $74
    jr nz, jr_01a_5130                            ; $50bf: $20 $6f

    ld l, [hl]                                    ; $50c1: $6e
    jr nz, jr_01a_513b                            ; $50c2: $20 $77

    ld l, c                                       ; $50c4: $69
    ld l, [hl]                                    ; $50c5: $6e
    ld l, [hl]                                    ; $50c6: $6e
    ld l, c                                       ; $50c7: $69

jr_01a_50c8:
    ld l, [hl]                                    ; $50c8: $6e
    ld h, a                                       ; $50c9: $67
    ld bc, $656e                                  ; $50ca: $01 $6e $65
    ld a, b                                       ; $50cd: $78
    ld [hl], h                                    ; $50ce: $74
    jr nz, @+$76                                  ; $50cf: $20 $74

    ld l, c                                       ; $50d1: $69
    ld l, l                                       ; $50d2: $6d
    ld h, l                                       ; $50d3: $65
    ld l, $03                                     ; $50d4: $2e $03
    nop                                           ; $50d6: $00
    ld c, c                                       ; $50d7: $49
    ld [hl], h                                    ; $50d8: $74
    daa                                           ; $50d9: $27
    ld [hl], e                                    ; $50da: $73
    jr nz, @+$76                                  ; $50db: $20 $74

    ld l, b                                       ; $50dd: $68
    ld h, l                                       ; $50de: $65
    jr nz, jr_01a_50ec                            ; $50df: $20 $0b

    ld bc, $6c43                                  ; $50e1: $01 $43 $6c
    ld [hl], l                                    ; $50e4: $75
    ld h, d                                       ; $50e5: $62
    jr nz, jr_01a_513c                            ; $50e6: $20 $54

    ld l, a                                       ; $50e8: $6f
    ld [hl], l                                    ; $50e9: $75
    ld [hl], d                                    ; $50ea: $72

jr_01a_50eb:
    ld l, [hl]                                    ; $50eb: $6e

jr_01a_50ec:
    ld h, c                                       ; $50ec: $61
    ld l, l                                       ; $50ed: $6d
    ld h, l                                       ; $50ee: $65
    ld l, [hl]                                    ; $50ef: $6e

jr_01a_50f0:
    ld [hl], h                                    ; $50f0: $74

jr_01a_50f1:
    ld bc, $200f                                  ; $50f1: $01 $0f $20
    ld [hl], b                                    ; $50f4: $70
    ld l, h                                       ; $50f5: $6c
    ld h, c                                       ; $50f6: $61
    ld h, e                                       ; $50f7: $63
    ld h, l                                       ; $50f8: $65
    jr nz, jr_01a_516f                            ; $50f9: $20 $74

    ld [hl], d                                    ; $50fb: $72
    ld l, a                                       ; $50fc: $6f

jr_01a_50fd:
    ld [hl], b                                    ; $50fd: $70
    ld l, b                                       ; $50fe: $68
    ld a, c                                       ; $50ff: $79
    ld hl, $0702                                  ; $5100: $21 $02 $07
    daa                                           ; $5103: $27
    ld [hl], e                                    ; $5104: $73
    jr nz, jr_01a_5176                            ; $5105: $20 $6f

    ld l, [hl]                                    ; $5107: $6e
    ld bc, $6966                                  ; $5108: $01 $66 $69
    ld [hl], d                                    ; $510b: $72
    ld h, l                                       ; $510c: $65
    inc l                                         ; $510d: $2c
    jr nz, @+$66                                  ; $510e: $20 $64

    ld h, l                                       ; $5110: $65
    ld [hl], h                                    ; $5111: $74
    ld h, l                                       ; $5112: $65
    ld [hl], d                                    ; $5113: $72
    ld l, l                                       ; $5114: $6d
    ld l, c                                       ; $5115: $69
    ld l, [hl]                                    ; $5116: $6e
    ld h, l                                       ; $5117: $65
    ld h, h                                       ; $5118: $64
    ld bc, $6f74                                  ; $5119: $01 $74 $6f

jr_01a_511c:
    jr nz, @+$79                                  ; $511c: $20 $77

    ld l, c                                       ; $511e: $69
    ld l, [hl]                                    ; $511f: $6e
    jr nz, @+$70                                  ; $5120: $20 $6e

    ld h, l                                       ; $5122: $65
    ld a, b                                       ; $5123: $78
    ld [hl], h                                    ; $5124: $74
    jr nz, @+$76                                  ; $5125: $20 $74

    ld l, c                                       ; $5127: $69
    ld l, l                                       ; $5128: $6d
    ld h, l                                       ; $5129: $65
    ld hl, $0003                                  ; $512a: $21 $03 $00
    ld c, c                                       ; $512d: $49
    ld [hl], h                                    ; $512e: $74
    daa                                           ; $512f: $27

jr_01a_5130:
    ld [hl], e                                    ; $5130: $73
    jr nz, @+$76                                  ; $5131: $20 $74

    ld l, b                                       ; $5133: $68
    ld h, l                                       ; $5134: $65
    ld bc, $200f                                  ; $5135: $01 $0f $20
    ld [hl], b                                    ; $5138: $70
    ld l, h                                       ; $5139: $6c
    ld h, c                                       ; $513a: $61

jr_01a_513b:
    ld h, e                                       ; $513b: $63

jr_01a_513c:
    ld h, l                                       ; $513c: $65
    jr nz, @+$76                                  ; $513d: $20 $74

    ld [hl], d                                    ; $513f: $72
    ld l, a                                       ; $5140: $6f
    ld [hl], b                                    ; $5141: $70
    ld l, b                                       ; $5142: $68
    ld a, c                                       ; $5143: $79
    ld bc, $6f66                                  ; $5144: $01 $66 $6f
    ld [hl], d                                    ; $5147: $72
    jr nz, @+$52                                  ; $5148: $20 $50

    ld h, l                                       ; $514a: $65
    ld h, c                                       ; $514b: $61
    ld h, e                                       ; $514c: $63
    ld l, b                                       ; $514d: $68
    daa                                           ; $514e: $27
    ld [hl], e                                    ; $514f: $73
    jr nz, @+$45                                  ; $5150: $20 $43

    ld h, c                                       ; $5152: $61
    ld [hl], e                                    ; $5153: $73
    ld [hl], h                                    ; $5154: $74
    ld l, h                                       ; $5155: $6c
    ld h, l                                       ; $5156: $65
    ld hl, $0702                                  ; $5157: $21 $02 $07
    daa                                           ; $515a: $27
    ld [hl], e                                    ; $515b: $73
    jr nz, @+$71                                  ; $515c: $20 $6f

    ld l, [hl]                                    ; $515e: $6e
    ld bc, $6966                                  ; $515f: $01 $66 $69
    ld [hl], d                                    ; $5162: $72
    ld h, l                                       ; $5163: $65
    inc l                                         ; $5164: $2c
    jr nz, @+$66                                  ; $5165: $20 $64

    ld h, l                                       ; $5167: $65
    ld [hl], h                                    ; $5168: $74
    ld h, l                                       ; $5169: $65
    ld [hl], d                                    ; $516a: $72
    ld l, l                                       ; $516b: $6d
    ld l, c                                       ; $516c: $69
    ld l, [hl]                                    ; $516d: $6e
    ld h, l                                       ; $516e: $65

jr_01a_516f:
    ld h, h                                       ; $516f: $64
    ld bc, $6f74                                  ; $5170: $01 $74 $6f
    jr nz, @+$79                                  ; $5173: $20 $77

    ld l, c                                       ; $5175: $69

jr_01a_5176:
    ld l, [hl]                                    ; $5176: $6e
    jr nz, @+$70                                  ; $5177: $20 $6e

    ld h, l                                       ; $5179: $65
    ld a, b                                       ; $517a: $78
    ld [hl], h                                    ; $517b: $74
    jr nz, @+$76                                  ; $517c: $20 $74

    ld l, c                                       ; $517e: $69
    ld l, l                                       ; $517f: $6d
    ld h, l                                       ; $5180: $65
    ld hl, $0003                                  ; $5181: $21 $03 $00

    db $53, $74, $61, $72, $74, $20, $62, $79, $20, $63, $72, $65, $61, $74, $69, $6e
    db $67, $01, $61, $20, $6e, $65, $77, $20, $63, $68, $61, $72, $61, $63, $74, $65
    db $72, $2e, $03, $00, $46, $69, $72, $73, $74, $2c, $20, $73, $65, $6c, $65, $63
    db $74, $20, $61, $20, $70, $6c, $61, $79, $65, $72, $2e, $03, $00, $57, $68, $69
    db $63, $68, $20, $61, $72, $65, $20, $79, $6f, $75, $3f, $00, $4e, $65, $78, $74
    db $2c, $20, $63, $68, $6f, $6f, $73, $65, $01, $61, $20, $63, $68, $61, $72, $61
    db $63, $74, $65, $72, $2e, $00, $4c, $65, $66, $74, $2d, $20, $6f, $72, $01, $72
    db $69, $67, $68, $74, $2d, $68, $61, $6e, $64, $65, $64, $3f, $00, $57, $68, $61
    db $74, $20, $69, $73, $20, $79, $6f, $75, $72, $20, $6e, $61, $6d, $65, $3f, $03
    db $00, $4f, $4b, $2c, $20, $07, $2e, $01, $47, $6f, $6f, $64, $20, $6c, $75, $63
    db $6b, $21, $02, $49, $20, $61, $77, $61, $69, $74, $20, $74, $68, $65, $20, $64
    db $61, $79, $01, $79, $6f, $75, $20, $72, $65, $61, $63, $68, $20, $74, $68, $65
    db $20, $74, $6f, $70, $21, $03, $00, $53, $74, $61, $72, $74, $20, $62, $79, $20
    db $63, $72, $65, $61, $74, $69, $6e, $67, $20, $00, $61, $20, $6e, $65, $77, $20
    db $63, $68, $61, $72, $61, $63, $74, $65, $72, $2e, $00, $46, $69, $72, $73, $74
    db $2c, $20, $73, $65, $6c, $65, $63, $74, $20, $61, $20, $70, $6c, $61, $79, $65
    db $72, $2e, $00, $57, $68, $69, $63, $68, $20, $61, $72, $65, $20, $79, $6f, $75
    db $3f, $00, $4e, $65, $78, $74, $2c, $20, $63, $68, $6f, $6f, $73, $65, $20, $61
    db $00, $63, $68, $61, $72, $61, $63, $74, $65, $72, $2e, $00, $50, $6c, $65, $61
    db $73, $65, $20, $74, $65, $6c, $6c, $20, $6d, $65, $20, $79, $6f, $75, $72, $20
    db $6e, $61, $6d, $65, $2e, $00, $57, $65, $6c, $6c, $2c, $20, $07, $2e, $00, $47
    db $6f, $6f, $64, $20, $6c, $75, $63, $6b, $21, $00, $49, $20, $61, $77, $61, $69
    db $74, $20, $74, $68, $65, $20, $64, $61, $79, $01, $00, $79, $6f, $75, $20, $72
    db $65, $61, $63, $68, $20, $74, $68, $65, $20, $74, $6f, $70, $21, $00, $57, $61
    db $6e, $74, $20, $74, $6f, $20, $6c, $65, $61, $72, $6e, $01, $73, $6f, $6d, $65
    db $20, $67, $6f, $6c, $66, $20, $6c, $69, $6e, $67, $6f, $3f, $00, $54, $61, $6c
    db $6b, $20, $74, $6f, $20, $74, $68, $65, $20, $70, $65, $6f, $70, $6c, $65, $01
    db $69, $6e, $20, $62, $61, $63, $6b, $2c, $20, $62, $75, $74, $20, $61, $73, $6b
    db $20, $6d, $65, $01, $69, $66, $20, $69, $74, $27, $73, $20, $6e, $6f, $74, $20
    db $63, $6c, $65, $61, $72, $21, $02, $4f, $68, $2c, $20, $63, $61, $72, $72, $79
    db $27, $73, $20, $68, $6f, $77, $20, $66, $61, $72, $01, $74, $68, $65, $20, $62
    db $61, $6c, $6c, $20, $67, $6f, $65, $73, $20, $75, $6e, $74, $69, $6c, $01, $69
    db $74, $73, $20, $31, $73, $74, $20, $62, $6f, $75, $6e, $63, $65, $2e, $03, $00
    db $54

    ld h, c                                       ; $5395: $61
    ld l, h                                       ; $5396: $6c
    ld l, e                                       ; $5397: $6b
    jr nz, jr_01a_540e                            ; $5398: $20 $74

    ld l, a                                       ; $539a: $6f
    jr nz, jr_01a_5411                            ; $539b: $20 $74

    ld l, b                                       ; $539d: $68
    ld h, l                                       ; $539e: $65
    jr nz, jr_01a_5411                            ; $539f: $20 $70

    ld h, l                                       ; $53a1: $65
    ld l, a                                       ; $53a2: $6f
    ld [hl], b                                    ; $53a3: $70
    ld l, h                                       ; $53a4: $6c
    ld h, l                                       ; $53a5: $65
    ld bc, $6e69                                  ; $53a6: $01 $69 $6e
    jr nz, @+$64                                  ; $53a9: $20 $62

    ld h, c                                       ; $53ab: $61
    ld h, e                                       ; $53ac: $63
    ld l, e                                       ; $53ad: $6b
    inc l                                         ; $53ae: $2c
    jr nz, jr_01a_5412                            ; $53af: $20 $61

    ld l, [hl]                                    ; $53b1: $6e
    ld h, h                                       ; $53b2: $64
    jr nz, @+$63                                  ; $53b3: $20 $61

    ld [hl], e                                    ; $53b5: $73
    ld l, e                                       ; $53b6: $6b
    ld bc, $656d                                  ; $53b7: $01 $6d $65
    jr nz, jr_01a_5425                            ; $53ba: $20 $69

    ld h, [hl]                                    ; $53bc: $66
    jr nz, @+$6b                                  ; $53bd: $20 $69

    ld [hl], h                                    ; $53bf: $74
    daa                                           ; $53c0: $27
    ld [hl], e                                    ; $53c1: $73
    jr nz, @+$70                                  ; $53c2: $20 $6e

    ld l, a                                       ; $53c4: $6f
    ld [hl], h                                    ; $53c5: $74
    jr nz, jr_01a_542b                            ; $53c6: $20 $63

    ld l, h                                       ; $53c8: $6c
    ld h, l                                       ; $53c9: $65
    ld h, c                                       ; $53ca: $61
    ld [hl], d                                    ; $53cb: $72
    ld hl, $0003                                  ; $53cc: $21 $03 $00
    ld h, [hl]                                    ; $53cf: $66
    ld [hl], d                                    ; $53d0: $72
    ld l, a                                       ; $53d1: $6f
    ld l, [hl]                                    ; $53d2: $6e
    ld [hl], h                                    ; $53d3: $74
    ld bc, $6e6f                                  ; $53d4: $01 $6f $6e
    ld bc, $696c                                  ; $53d7: $01 $6c $69
    ld l, [hl]                                    ; $53da: $6e
    ld h, l                                       ; $53db: $65
    nop                                           ; $53dc: $00
    ld d, h                                       ; $53dd: $54
    ld l, b                                       ; $53de: $68
    ld h, l                                       ; $53df: $65
    jr nz, jr_01a_5448                            ; $53e0: $20 $66

    ld l, c                                       ; $53e2: $69
    ld [hl], d                                    ; $53e3: $72
    ld [hl], e                                    ; $53e4: $73
    ld [hl], h                                    ; $53e5: $74
    jr nz, jr_01a_5421                            ; $53e6: $20 $39

    ld bc, $6f68                                  ; $53e8: $01 $68 $6f
    ld l, h                                       ; $53eb: $6c
    ld h, l                                       ; $53ec: $65
    ld [hl], e                                    ; $53ed: $73
    jr nz, @+$71                                  ; $53ee: $20 $6f

    ld l, [hl]                                    ; $53f0: $6e
    jr nz, @+$63                                  ; $53f1: $20 $61

    ld l, [hl]                                    ; $53f3: $6e
    jr nz, jr_01a_5427                            ; $53f4: $20 $31

    jr c, jr_01a_5425                             ; $53f6: $38 $2d

    ld bc, $6f68                                  ; $53f8: $01 $68 $6f
    ld l, h                                       ; $53fb: $6c
    ld h, l                                       ; $53fc: $65
    jr nz, jr_01a_5462                            ; $53fd: $20 $63

    ld l, a                                       ; $53ff: $6f
    ld [hl], l                                    ; $5400: $75
    ld [hl], d                                    ; $5401: $72
    ld [hl], e                                    ; $5402: $73
    ld h, l                                       ; $5403: $65
    ld l, $03                                     ; $5404: $2e $03
    nop                                           ; $5406: $00
    ld d, h                                       ; $5407: $54
    ld l, a                                       ; $5408: $6f
    jr nz, jr_01a_546d                            ; $5409: $20 $62

    ld h, l                                       ; $540b: $65
    jr nz, jr_01a_546f                            ; $540c: $20 $61

jr_01a_540e:
    ld [hl], h                                    ; $540e: $74
    jr nz, jr_01a_5483                            ; $540f: $20 $72

jr_01a_5411:
    ld h, l                                       ; $5411: $65

jr_01a_5412:
    ld [hl], e                                    ; $5412: $73
    ld [hl], h                                    ; $5413: $74
    ld bc, $7075                                  ; $5414: $01 $75 $70
    ld l, a                                       ; $5417: $6f
    ld l, [hl]                                    ; $5418: $6e
    jr nz, jr_01a_548f                            ; $5419: $20 $74

    ld l, b                                       ; $541b: $68
    ld h, l                                       ; $541c: $65
    jr nz, jr_01a_5486                            ; $541d: $20 $67

    ld [hl], d                                    ; $541f: $72
    ld h, l                                       ; $5420: $65

jr_01a_5421:
    ld h, l                                       ; $5421: $65
    ld l, [hl]                                    ; $5422: $6e
    ld l, $01                                     ; $5423: $2e $01

jr_01a_5425:
    ld c, c                                       ; $5425: $49
    ld h, [hl]                                    ; $5426: $66

jr_01a_5427:
    jr nz, @+$76                                  ; $5427: $20 $74

    ld l, b                                       ; $5429: $68
    ld h, l                                       ; $542a: $65

jr_01a_542b:
    jr nz, jr_01a_5494                            ; $542b: $20 $67

    ld [hl], d                                    ; $542d: $72
    ld h, l                                       ; $542e: $65
    ld h, l                                       ; $542f: $65
    ld l, [hl]                                    ; $5430: $6e
    jr nz, jr_01a_549c                            ; $5431: $20 $69

    ld [hl], e                                    ; $5433: $73
    ld [bc], a                                    ; $5434: $02
    ld [hl], d                                    ; $5435: $72
    ld h, l                                       ; $5436: $65
    ld h, c                                       ; $5437: $61
    ld h, e                                       ; $5438: $63
    ld l, b                                       ; $5439: $68
    ld h, l                                       ; $543a: $65
    ld h, h                                       ; $543b: $64
    jr nz, @+$6b                                  ; $543c: $20 $69

    ld l, [hl]                                    ; $543e: $6e
    jr nz, jr_01a_54b0                            ; $543f: $20 $6f

    ld l, [hl]                                    ; $5441: $6e
    ld h, l                                       ; $5442: $65
    ld bc, $7473                                  ; $5443: $01 $73 $74
    ld [hl], d                                    ; $5446: $72
    ld l, a                                       ; $5447: $6f

jr_01a_5448:
    ld l, e                                       ; $5448: $6b
    ld h, l                                       ; $5449: $65
    inc l                                         ; $544a: $2c
    jr nz, jr_01a_54c1                            ; $544b: $20 $74

    ld l, b                                       ; $544d: $68
    ld h, c                                       ; $544e: $61
    ld [hl], h                                    ; $544f: $74
    jr nz, jr_01a_54bb                            ; $5450: $20 $69

    ld [hl], e                                    ; $5452: $73
    ld bc, $6f22                                  ; $5453: $01 $22 $6f
    ld l, [hl]                                    ; $5456: $6e
    jr nz, jr_01a_54c2                            ; $5457: $20 $69

    ld l, [hl]                                    ; $5459: $6e
    jr nz, jr_01a_54cb                            ; $545a: $20 $6f

    ld l, [hl]                                    ; $545c: $6e
    ld h, l                                       ; $545d: $65
    ld l, $22                                     ; $545e: $2e $22
    inc bc                                        ; $5460: $03
    nop                                           ; $5461: $00

jr_01a_5462:
    ld d, h                                       ; $5462: $54
    ld l, b                                       ; $5463: $68
    ld h, l                                       ; $5464: $65
    jr nz, jr_01a_54d7                            ; $5465: $20 $70

    ld h, c                                       ; $5467: $61
    ld [hl], h                                    ; $5468: $74
    ld l, b                                       ; $5469: $68
    jr nz, jr_01a_54db                            ; $546a: $20 $6f

    ld h, [hl]                                    ; $546c: $66

jr_01a_546d:
    jr nz, @+$76                                  ; $546d: $20 $74

jr_01a_546f:
    ld l, b                                       ; $546f: $68
    ld h, l                                       ; $5470: $65
    ld bc, $6162                                  ; $5471: $01 $62 $61
    ld l, h                                       ; $5474: $6c
    ld l, h                                       ; $5475: $6c
    inc l                                         ; $5476: $2c
    jr nz, jr_01a_54ee                            ; $5477: $20 $75

    ld [hl], e                                    ; $5479: $73
    ld h, l                                       ; $547a: $65
    ld h, h                                       ; $547b: $64
    jr nz, jr_01a_54eb                            ; $547c: $20 $6d

    ld l, a                                       ; $547e: $6f
    ld [hl], e                                    ; $547f: $73
    ld [hl], h                                    ; $5480: $74
    ld l, h                                       ; $5481: $6c
    ld a, c                                       ; $5482: $79

jr_01a_5483:
    ld bc, $6e69                                  ; $5483: $01 $69 $6e

jr_01a_5486:
    jr nz, jr_01a_54fa                            ; $5486: $20 $72

    ld h, l                                       ; $5488: $65
    ld h, [hl]                                    ; $5489: $66
    ld h, l                                       ; $548a: $65
    ld [hl], d                                    ; $548b: $72
    ld h, l                                       ; $548c: $65
    ld l, [hl]                                    ; $548d: $6e
    ld h, e                                       ; $548e: $63

jr_01a_548f:
    ld h, l                                       ; $548f: $65
    jr nz, jr_01a_5506                            ; $5490: $20 $74

    ld l, a                                       ; $5492: $6f
    ld [bc], a                                    ; $5493: $02

jr_01a_5494:
    ld [hl], b                                    ; $5494: $70
    ld [hl], l                                    ; $5495: $75
    ld [hl], h                                    ; $5496: $74
    ld [hl], h                                    ; $5497: $74
    ld l, c                                       ; $5498: $69
    ld l, [hl]                                    ; $5499: $6e
    ld h, a                                       ; $549a: $67
    inc l                                         ; $549b: $2c

jr_01a_549c:
    jr nz, @+$63                                  ; $549c: $20 $61

    ld [hl], e                                    ; $549e: $73
    jr nz, jr_01a_550a                            ; $549f: $20 $69

    ld l, [hl]                                    ; $54a1: $6e
    inc l                                         ; $54a2: $2c
    ld bc, $4922                                  ; $54a3: $01 $22 $49
    jr nz, @+$65                                  ; $54a6: $20 $63

    ld h, c                                       ; $54a8: $61
    ld l, [hl]                                    ; $54a9: $6e
    jr nz, @+$75                                  ; $54aa: $20 $73

    ld h, l                                       ; $54ac: $65
    ld h, l                                       ; $54ad: $65
    jr nz, jr_01a_5524                            ; $54ae: $20 $74

jr_01a_54b0:
    ld l, b                                       ; $54b0: $68
    ld h, l                                       ; $54b1: $65
    ld bc, $696c                                  ; $54b2: $01 $6c $69
    ld l, [hl]                                    ; $54b5: $6e
    ld h, l                                       ; $54b6: $65
    ld hl, $0322                                  ; $54b7: $21 $22 $03
    nop                                           ; $54ba: $00

jr_01a_54bb:
    ld d, a                                       ; $54bb: $57
    ld h, c                                       ; $54bc: $61
    ld l, [hl]                                    ; $54bd: $6e
    ld [hl], h                                    ; $54be: $74
    jr nz, @+$76                                  ; $54bf: $20 $74

jr_01a_54c1:
    ld l, a                                       ; $54c1: $6f

jr_01a_54c2:
    jr nz, @+$6d                                  ; $54c2: $20 $6b

    ld l, [hl]                                    ; $54c4: $6e
    ld l, a                                       ; $54c5: $6f
    ld [hl], a                                    ; $54c6: $77
    jr nz, jr_01a_5530                            ; $54c7: $20 $67

    ld l, a                                       ; $54c9: $6f
    ld l, h                                       ; $54ca: $6c

jr_01a_54cb:
    ld h, [hl]                                    ; $54cb: $66
    jr nz, jr_01a_5540                            ; $54cc: $20 $72

    ld [hl], l                                    ; $54ce: $75
    ld l, h                                       ; $54cf: $6c
    ld h, l                                       ; $54d0: $65
    ld [hl], e                                    ; $54d1: $73
    ccf                                           ; $54d2: $3f
    nop                                           ; $54d3: $00
    ld b, a                                       ; $54d4: $47
    ld l, a                                       ; $54d5: $6f
    ld l, h                                       ; $54d6: $6c

jr_01a_54d7:
    ld h, [hl]                                    ; $54d7: $66
    jr nz, jr_01a_554c                            ; $54d8: $20 $72

    ld [hl], l                                    ; $54da: $75

jr_01a_54db:
    ld l, h                                       ; $54db: $6c
    ld h, l                                       ; $54dc: $65
    ld [hl], e                                    ; $54dd: $73
    jr nz, @+$63                                  ; $54de: $20 $61

    ld [hl], d                                    ; $54e0: $72
    ld h, l                                       ; $54e1: $65
    jr nz, jr_01a_554c                            ; $54e2: $20 $68

    ld h, c                                       ; $54e4: $61
    ld [hl], d                                    ; $54e5: $72
    ld h, h                                       ; $54e6: $64
    ld l, $01                                     ; $54e7: $2e $01
    ld c, c                                       ; $54e9: $49
    ld h, [hl]                                    ; $54ea: $66

jr_01a_54eb:
    jr nz, @+$76                                  ; $54eb: $20 $74

    ld l, b                                       ; $54ed: $68

jr_01a_54ee:
    ld h, l                                       ; $54ee: $65
    ld a, c                                       ; $54ef: $79
    daa                                           ; $54f0: $27
    ld [hl], d                                    ; $54f1: $72
    ld h, l                                       ; $54f2: $65
    jr nz, jr_01a_5563                            ; $54f3: $20 $6e

    ld l, a                                       ; $54f5: $6f
    ld [hl], h                                    ; $54f6: $74
    ld bc, $6c63                                  ; $54f7: $01 $63 $6c

jr_01a_54fa:
    ld h, l                                       ; $54fa: $65
    ld h, c                                       ; $54fb: $61
    ld [hl], d                                    ; $54fc: $72
    inc l                                         ; $54fd: $2c
    jr nz, jr_01a_5563                            ; $54fe: $20 $63

    ld l, a                                       ; $5500: $6f
    ld l, l                                       ; $5501: $6d
    ld h, l                                       ; $5502: $65
    jr nz, jr_01a_5566                            ; $5503: $20 $61

    ld [hl], e                                    ; $5505: $73

jr_01a_5506:
    ld l, e                                       ; $5506: $6b
    jr nz, jr_01a_5576                            ; $5507: $20 $6d

    ld h, l                                       ; $5509: $65

jr_01a_550a:
    ld hl, $4602                                  ; $550a: $21 $02 $46
    ld l, c                                       ; $550d: $69
    ld [hl], d                                    ; $550e: $72
    ld [hl], e                                    ; $550f: $73
    ld [hl], h                                    ; $5510: $74
    jr nz, jr_01a_5582                            ; $5511: $20 $6f

    ld h, [hl]                                    ; $5513: $66
    ld h, [hl]                                    ; $5514: $66
    inc l                                         ; $5515: $2c
    jr nz, @+$69                                  ; $5516: $20 $67

    ld l, a                                       ; $5518: $6f
    ld l, h                                       ; $5519: $6c
    ld h, [hl]                                    ; $551a: $66
    daa                                           ; $551b: $27
    ld [hl], e                                    ; $551c: $73
    ld bc, $2061                                  ; $551d: $01 $61 $20
    ld h, a                                       ; $5520: $67
    ld h, c                                       ; $5521: $61
    ld l, l                                       ; $5522: $6d
    ld h, l                                       ; $5523: $65

jr_01a_5524:
    jr nz, jr_01a_559f                            ; $5524: $20 $79

    ld l, a                                       ; $5526: $6f
    ld [hl], l                                    ; $5527: $75
    jr nz, jr_01a_559a                            ; $5528: $20 $70

    ld l, h                                       ; $552a: $6c
    ld h, c                                       ; $552b: $61
    ld a, c                                       ; $552c: $79
    ld bc, $6977                                  ; $552d: $01 $77 $69

jr_01a_5530:
    ld [hl], h                                    ; $5530: $74
    ld l, b                                       ; $5531: $68
    jr nz, jr_01a_5595                            ; $5532: $20 $61

    jr nz, @+$64                                  ; $5534: $20 $62

    ld h, c                                       ; $5536: $61
    ld l, h                                       ; $5537: $6c
    ld l, h                                       ; $5538: $6c
    ld l, $03                                     ; $5539: $2e $03
    nop                                           ; $553b: $00
    ld b, a                                       ; $553c: $47
    ld l, a                                       ; $553d: $6f
    ld l, h                                       ; $553e: $6c
    ld h, [hl]                                    ; $553f: $66

jr_01a_5540:
    jr nz, @+$74                                  ; $5540: $20 $72

    ld [hl], l                                    ; $5542: $75
    ld l, h                                       ; $5543: $6c
    ld h, l                                       ; $5544: $65
    ld [hl], e                                    ; $5545: $73
    jr nz, jr_01a_55a9                            ; $5546: $20 $61

    ld [hl], d                                    ; $5548: $72
    ld h, l                                       ; $5549: $65
    jr nz, @+$6a                                  ; $554a: $20 $68

jr_01a_554c:
    ld h, c                                       ; $554c: $61
    ld [hl], d                                    ; $554d: $72
    ld h, h                                       ; $554e: $64
    ld l, $01                                     ; $554f: $2e $01
    ld c, c                                       ; $5551: $49
    ld h, [hl]                                    ; $5552: $66
    jr nz, jr_01a_55c9                            ; $5553: $20 $74

    ld l, b                                       ; $5555: $68
    ld h, l                                       ; $5556: $65
    ld a, c                                       ; $5557: $79
    daa                                           ; $5558: $27
    ld [hl], d                                    ; $5559: $72
    ld h, l                                       ; $555a: $65
    jr nz, jr_01a_55cb                            ; $555b: $20 $6e

    ld l, a                                       ; $555d: $6f
    ld [hl], h                                    ; $555e: $74
    ld bc, $6c63                                  ; $555f: $01 $63 $6c
    ld h, l                                       ; $5562: $65

jr_01a_5563:
    ld h, c                                       ; $5563: $61
    ld [hl], d                                    ; $5564: $72
    inc l                                         ; $5565: $2c

jr_01a_5566:
    jr nz, jr_01a_55cb                            ; $5566: $20 $63

    ld l, a                                       ; $5568: $6f
    ld l, l                                       ; $5569: $6d
    ld h, l                                       ; $556a: $65
    jr nz, jr_01a_55ce                            ; $556b: $20 $61

    ld [hl], e                                    ; $556d: $73
    ld l, e                                       ; $556e: $6b
    jr nz, jr_01a_55de                            ; $556f: $20 $6d

    ld h, l                                       ; $5571: $65
    ld hl, $0003                                  ; $5572: $21 $03 $00
    ld [hl], l                                    ; $5575: $75

jr_01a_5576:
    ld l, [hl]                                    ; $5576: $6e
    ld h, h                                       ; $5577: $64
    ld h, l                                       ; $5578: $65
    ld [hl], d                                    ; $5579: $72
    jr nz, jr_01a_55ec                            ; $557a: $20 $70

    ld h, c                                       ; $557c: $61
    ld [hl], d                                    ; $557d: $72
    ld bc, $6e75                                  ; $557e: $01 $75 $6e
    ld [hl], b                                    ; $5581: $70

jr_01a_5582:
    ld l, h                                       ; $5582: $6c
    ld h, c                                       ; $5583: $61
    ld a, c                                       ; $5584: $79
    ld h, c                                       ; $5585: $61
    ld h, d                                       ; $5586: $62
    ld l, h                                       ; $5587: $6c
    ld h, l                                       ; $5588: $65
    ld bc, $6967                                  ; $5589: $01 $67 $69
    ld l, l                                       ; $558c: $6d
    ld l, l                                       ; $558d: $6d
    ld h, l                                       ; $558e: $65
    nop                                           ; $558f: $00
    ld d, e                                       ; $5590: $53
    ld h, e                                       ; $5591: $63
    ld l, a                                       ; $5592: $6f
    ld [hl], d                                    ; $5593: $72
    ld l, c                                       ; $5594: $69

jr_01a_5595:
    ld l, [hl]                                    ; $5595: $6e
    ld h, a                                       ; $5596: $67
    jr nz, jr_01a_5605                            ; $5597: $20 $6c

    ld h, l                                       ; $5599: $65

jr_01a_559a:
    ld [hl], e                                    ; $559a: $73
    ld [hl], e                                    ; $559b: $73
    ld bc, $6874                                  ; $559c: $01 $74 $68

jr_01a_559f:
    ld h, c                                       ; $559f: $61
    ld l, [hl]                                    ; $55a0: $6e
    jr nz, @+$76                                  ; $55a1: $20 $74

    ld l, b                                       ; $55a3: $68
    ld h, l                                       ; $55a4: $65
    jr nz, @+$72                                  ; $55a5: $20 $70

    ld h, c                                       ; $55a7: $61
    ld [hl], d                                    ; $55a8: $72

jr_01a_55a9:
    ld bc, $6373                                  ; $55a9: $01 $73 $63
    ld l, a                                       ; $55ac: $6f
    ld [hl], d                                    ; $55ad: $72
    ld h, l                                       ; $55ae: $65
    jr nz, @+$68                                  ; $55af: $20 $66

    ld l, a                                       ; $55b1: $6f
    ld [hl], d                                    ; $55b2: $72
    jr nz, jr_01a_5616                            ; $55b3: $20 $61

    ld [bc], a                                    ; $55b5: $02
    ld l, b                                       ; $55b6: $68
    ld l, a                                       ; $55b7: $6f
    ld l, h                                       ; $55b8: $6c
    ld h, l                                       ; $55b9: $65
    jr nz, @+$71                                  ; $55ba: $20 $6f

    ld [hl], d                                    ; $55bc: $72
    jr nz, jr_01a_5622                            ; $55bd: $20 $63

    ld l, a                                       ; $55bf: $6f
    ld [hl], l                                    ; $55c0: $75
    ld [hl], d                                    ; $55c1: $72
    ld [hl], e                                    ; $55c2: $73
    ld h, l                                       ; $55c3: $65
    ld bc, $7369                                  ; $55c4: $01 $69 $73
    jr nz, @+$65                                  ; $55c7: $20 $63

jr_01a_55c9:
    ld h, c                                       ; $55c9: $61
    ld l, h                                       ; $55ca: $6c

jr_01a_55cb:
    ld l, h                                       ; $55cb: $6c
    ld h, l                                       ; $55cc: $65
    ld h, h                                       ; $55cd: $64

jr_01a_55ce:
    jr nz, jr_01a_5632                            ; $55ce: $20 $62

    ld h, l                                       ; $55d0: $65
    ld l, c                                       ; $55d1: $69
    ld l, [hl]                                    ; $55d2: $6e
    ld h, a                                       ; $55d3: $67
    ld bc, $6e75                                  ; $55d4: $01 $75 $6e
    ld h, h                                       ; $55d7: $64
    ld h, l                                       ; $55d8: $65
    ld [hl], d                                    ; $55d9: $72
    jr nz, jr_01a_564c                            ; $55da: $20 $70

    ld h, c                                       ; $55dc: $61
    ld [hl], d                                    ; $55dd: $72

jr_01a_55de:
    ld l, $03                                     ; $55de: $2e $03
    nop                                           ; $55e0: $00
    ld b, c                                       ; $55e1: $41
    jr nz, @+$64                                  ; $55e2: $20 $62

    ld h, c                                       ; $55e4: $61
    ld l, h                                       ; $55e5: $6c
    ld l, h                                       ; $55e6: $6c
    jr nz, @+$76                                  ; $55e7: $20 $74

    ld l, b                                       ; $55e9: $68
    ld h, c                                       ; $55ea: $61
    ld [hl], h                                    ; $55eb: $74

jr_01a_55ec:
    jr nz, jr_01a_5651                            ; $55ec: $20 $63

    ld h, c                                       ; $55ee: $61
    ld l, [hl]                                    ; $55ef: $6e
    ld bc, $6f6e                                  ; $55f0: $01 $6e $6f
    ld [hl], h                                    ; $55f3: $74
    jr nz, jr_01a_5658                            ; $55f4: $20 $62

    ld h, l                                       ; $55f6: $65
    jr nz, jr_01a_5669                            ; $55f7: $20 $70

    ld l, h                                       ; $55f9: $6c
    ld h, c                                       ; $55fa: $61
    ld a, c                                       ; $55fb: $79
    ld h, l                                       ; $55fc: $65
    ld h, h                                       ; $55fd: $64
    ld bc, $7564                                  ; $55fe: $01 $64 $75
    ld h, l                                       ; $5601: $65
    jr nz, jr_01a_5678                            ; $5602: $20 $74

    ld l, a                                       ; $5604: $6f

jr_01a_5605:
    jr nz, jr_01a_567b                            ; $5605: $20 $74

    ld h, l                                       ; $5607: $65
    ld [hl], d                                    ; $5608: $72
    ld [hl], d                                    ; $5609: $72
    ld h, c                                       ; $560a: $61
    ld l, c                                       ; $560b: $69
    ld l, [hl]                                    ; $560c: $6e
    ld l, $02                                     ; $560d: $2e $02
    ld d, h                                       ; $560f: $54
    ld l, b                                       ; $5610: $68
    ld h, l                                       ; $5611: $65
    ld [hl], d                                    ; $5612: $72
    ld h, l                                       ; $5613: $65
    daa                                           ; $5614: $27
    ld [hl], e                                    ; $5615: $73

jr_01a_5616:
    jr nz, @+$63                                  ; $5616: $20 $61

    jr nz, jr_01a_564b                            ; $5618: $20 $31

    dec l                                         ; $561a: $2d
    ld bc, $7473                                  ; $561b: $01 $73 $74
    ld [hl], d                                    ; $561e: $72
    ld l, a                                       ; $561f: $6f
    ld l, e                                       ; $5620: $6b
    ld h, l                                       ; $5621: $65

jr_01a_5622:
    jr nz, jr_01a_5694                            ; $5622: $20 $70

    ld h, l                                       ; $5624: $65
    ld l, [hl]                                    ; $5625: $6e
    ld h, c                                       ; $5626: $61
    ld l, h                                       ; $5627: $6c
    ld [hl], h                                    ; $5628: $74
    ld a, c                                       ; $5629: $79
    ld bc, $6f74                                  ; $562a: $01 $74 $6f
    jr nz, jr_01a_5693                            ; $562d: $20 $64

    ld [hl], d                                    ; $562f: $72
    ld l, a                                       ; $5630: $6f
    ld [hl], b                                    ; $5631: $70

jr_01a_5632:
    jr nz, jr_01a_56a8                            ; $5632: $20 $74

    ld l, b                                       ; $5634: $68
    ld h, l                                       ; $5635: $65
    jr nz, jr_01a_569a                            ; $5636: $20 $62

    ld h, c                                       ; $5638: $61
    ld l, h                                       ; $5639: $6c
    ld l, h                                       ; $563a: $6c
    ld l, $03                                     ; $563b: $2e $03
    nop                                           ; $563d: $00
    ld d, a                                       ; $563e: $57
    ld l, b                                       ; $563f: $68
    ld h, l                                       ; $5640: $65
    ld l, [hl]                                    ; $5641: $6e
    jr nz, jr_01a_56a5                            ; $5642: $20 $61

    ld l, [hl]                                    ; $5644: $6e
    jr nz, @+$71                                  ; $5645: $20 $6f

    ld [hl], b                                    ; $5647: $70
    ld [hl], b                                    ; $5648: $70
    ld l, a                                       ; $5649: $6f
    ld l, [hl]                                    ; $564a: $6e

jr_01a_564b:
    ld h, l                                       ; $564b: $65

jr_01a_564c:
    ld l, [hl]                                    ; $564c: $6e
    ld [hl], h                                    ; $564d: $74
    ld bc, $6461                                  ; $564e: $01 $61 $64

jr_01a_5651:
    ld l, l                                       ; $5651: $6d
    ld l, c                                       ; $5652: $69
    ld [hl], h                                    ; $5653: $74
    ld [hl], e                                    ; $5654: $73
    jr nz, jr_01a_56d0                            ; $5655: $20 $79

    ld l, a                                       ; $5657: $6f

jr_01a_5658:
    ld [hl], l                                    ; $5658: $75
    daa                                           ; $5659: $27
    ld l, h                                       ; $565a: $6c
    ld l, h                                       ; $565b: $6c
    ld bc, $616d                                  ; $565c: $01 $6d $61
    ld l, e                                       ; $565f: $6b
    ld h, l                                       ; $5660: $65
    jr nz, jr_01a_56dc                            ; $5661: $20 $79

    ld l, a                                       ; $5663: $6f
    ld [hl], l                                    ; $5664: $75
    ld [hl], d                                    ; $5665: $72
    jr nz, jr_01a_56d6                            ; $5666: $20 $6e

    ld h, l                                       ; $5668: $65

jr_01a_5669:
    ld a, b                                       ; $5669: $78
    ld [hl], h                                    ; $566a: $74
    ld [bc], a                                    ; $566b: $02
    ld [hl], e                                    ; $566c: $73
    ld l, b                                       ; $566d: $68
    ld l, a                                       ; $566e: $6f
    ld [hl], h                                    ; $566f: $74
    jr nz, jr_01a_56e9                            ; $5670: $20 $77

    ld l, c                                       ; $5672: $69
    ld [hl], h                                    ; $5673: $74
    ld l, b                                       ; $5674: $68
    ld l, a                                       ; $5675: $6f
    ld [hl], l                                    ; $5676: $75
    ld [hl], h                                    ; $5677: $74

jr_01a_5678:
    jr nz, jr_01a_56f3                            ; $5678: $20 $79

    ld l, a                                       ; $567a: $6f

jr_01a_567b:
    ld [hl], l                                    ; $567b: $75
    ld bc, $6174                                  ; $567c: $01 $74 $61
    ld l, e                                       ; $567f: $6b
    ld l, c                                       ; $5680: $69
    ld l, [hl]                                    ; $5681: $6e
    ld h, a                                       ; $5682: $67
    jr nz, jr_01a_56ee                            ; $5683: $20 $69

    ld [hl], h                                    ; $5685: $74
    ld l, $20                                     ; $5686: $2e $20
    ld c, c                                       ; $5688: $49
    ld h, [hl]                                    ; $5689: $66
    ld bc, $7469                                  ; $568a: $01 $69 $74
    daa                                           ; $568d: $27
    ld [hl], e                                    ; $568e: $73
    jr nz, jr_01a_56f2                            ; $568f: $20 $61

    jr nz, jr_01a_56fa                            ; $5691: $20 $67

jr_01a_5693:
    ld l, c                                       ; $5693: $69

jr_01a_5694:
    ld l, l                                       ; $5694: $6d
    ld l, l                                       ; $5695: $6d
    ld h, l                                       ; $5696: $65
    jr nz, jr_01a_5708                            ; $5697: $20 $6f

    ld l, [hl]                                    ; $5699: $6e

jr_01a_569a:
    ld [bc], a                                    ; $569a: $02
    ld [hl], h                                    ; $569b: $74
    ld l, b                                       ; $569c: $68
    ld h, l                                       ; $569d: $65
    jr nz, @+$35                                  ; $569e: $20 $33

    ld [hl], d                                    ; $56a0: $72
    ld h, h                                       ; $56a1: $64
    jr nz, jr_01a_5717                            ; $56a2: $20 $73

    ld [hl], h                                    ; $56a4: $74

jr_01a_56a5:
    ld [hl], d                                    ; $56a5: $72
    ld l, a                                       ; $56a6: $6f
    ld l, e                                       ; $56a7: $6b

jr_01a_56a8:
    ld h, l                                       ; $56a8: $65
    inc l                                         ; $56a9: $2c
    ld bc, $6f79                                  ; $56aa: $01 $79 $6f
    ld [hl], l                                    ; $56ad: $75
    ld [hl], d                                    ; $56ae: $72
    jr nz, @+$75                                  ; $56af: $20 $73

    ld h, e                                       ; $56b1: $63
    ld l, a                                       ; $56b2: $6f
    ld [hl], d                                    ; $56b3: $72
    ld h, l                                       ; $56b4: $65
    jr nz, jr_01a_5720                            ; $56b5: $20 $69

    ld [hl], e                                    ; $56b7: $73
    jr nz, jr_01a_56ee                            ; $56b8: $20 $34

    ld hl, $0003                                  ; $56ba: $21 $03 $00
    ld d, a                                       ; $56bd: $57
    ld h, c                                       ; $56be: $61
    ld l, [hl]                                    ; $56bf: $6e
    ld l, [hl]                                    ; $56c0: $6e
    ld h, c                                       ; $56c1: $61
    jr nz, jr_01a_572f                            ; $56c2: $20 $6b

    ld l, [hl]                                    ; $56c4: $6e
    ld l, a                                       ; $56c5: $6f
    ld [hl], a                                    ; $56c6: $77
    jr nz, jr_01a_572a                            ; $56c7: $20 $61

    ld h, d                                       ; $56c9: $62
    ld l, a                                       ; $56ca: $6f
    ld [hl], l                                    ; $56cb: $75
    ld [hl], h                                    ; $56cc: $74
    ld bc, $6f67                                  ; $56cd: $01 $67 $6f

jr_01a_56d0:
    ld l, h                                       ; $56d0: $6c
    ld h, [hl]                                    ; $56d1: $66
    jr nz, jr_01a_5739                            ; $56d2: $20 $65

    ld [hl], c                                    ; $56d4: $71
    ld [hl], l                                    ; $56d5: $75

jr_01a_56d6:
    ld l, c                                       ; $56d6: $69
    ld [hl], b                                    ; $56d7: $70
    ld l, l                                       ; $56d8: $6d
    ld h, l                                       ; $56d9: $65
    ld l, [hl]                                    ; $56da: $6e
    ld [hl], h                                    ; $56db: $74

jr_01a_56dc:
    ccf                                           ; $56dc: $3f
    nop                                           ; $56dd: $00
    ld c, e                                       ; $56de: $4b
    ld l, [hl]                                    ; $56df: $6e
    ld l, a                                       ; $56e0: $6f
    ld [hl], a                                    ; $56e1: $77
    ld l, c                                       ; $56e2: $69
    ld l, [hl]                                    ; $56e3: $6e
    ld h, a                                       ; $56e4: $67
    jr nz, jr_01a_574c                            ; $56e5: $20 $65

    ld [hl], c                                    ; $56e7: $71
    ld [hl], l                                    ; $56e8: $75

jr_01a_56e9:
    ld l, c                                       ; $56e9: $69
    ld [hl], b                                    ; $56ea: $70
    ld l, l                                       ; $56eb: $6d
    ld h, l                                       ; $56ec: $65
    ld l, [hl]                                    ; $56ed: $6e

jr_01a_56ee:
    ld [hl], h                                    ; $56ee: $74
    ld bc, $6163                                  ; $56ef: $01 $63 $61

jr_01a_56f2:
    ld l, [hl]                                    ; $56f2: $6e

jr_01a_56f3:
    jr nz, @+$6a                                  ; $56f3: $20 $68

    ld h, l                                       ; $56f5: $65
    ld l, h                                       ; $56f6: $6c
    ld [hl], b                                    ; $56f7: $70
    jr nz, @+$7b                                  ; $56f8: $20 $79

jr_01a_56fa:
    ld l, a                                       ; $56fa: $6f
    ld [hl], l                                    ; $56fb: $75
    ld [hl], d                                    ; $56fc: $72
    jr nz, jr_01a_5766                            ; $56fd: $20 $67

    ld h, c                                       ; $56ff: $61
    ld l, l                                       ; $5700: $6d
    ld h, l                                       ; $5701: $65
    ld l, $01                                     ; $5702: $2e $01
    ld d, e                                       ; $5704: $53
    ld [hl], h                                    ; $5705: $74
    ld [hl], l                                    ; $5706: $75
    ld h, h                                       ; $5707: $64

jr_01a_5708:
    ld a, c                                       ; $5708: $79
    jr nz, jr_01a_5780                            ; $5709: $20 $75

    ld [hl], b                                    ; $570b: $70
    ld hl, $4c02                                  ; $570c: $21 $02 $4c
    ld h, l                                       ; $570f: $65
    ld h, c                                       ; $5710: $61
    ld [hl], d                                    ; $5711: $72
    ld l, [hl]                                    ; $5712: $6e
    jr nz, jr_01a_5789                            ; $5713: $20 $74

    ld l, b                                       ; $5715: $68
    ld h, l                                       ; $5716: $65

jr_01a_5717:
    jr nz, jr_01a_577d                            ; $5717: $20 $64

    ld l, c                                       ; $5719: $69
    ld h, [hl]                                    ; $571a: $66
    ld h, [hl]                                    ; $571b: $66
    ld h, l                                       ; $571c: $65
    ld [hl], d                                    ; $571d: $72
    ld h, l                                       ; $571e: $65
    ld l, [hl]                                    ; $571f: $6e

jr_01a_5720:
    ld h, e                                       ; $5720: $63
    ld h, l                                       ; $5721: $65
    ld bc, $6562                                  ; $5722: $01 $62 $65
    ld [hl], h                                    ; $5725: $74
    ld [hl], a                                    ; $5726: $77
    ld h, l                                       ; $5727: $65
    ld h, l                                       ; $5728: $65
    ld l, [hl]                                    ; $5729: $6e

jr_01a_572a:
    jr nz, jr_01a_57a3                            ; $572a: $20 $77

    ld l, a                                       ; $572c: $6f
    ld l, a                                       ; $572d: $6f
    ld h, h                                       ; $572e: $64

jr_01a_572f:
    ld [hl], e                                    ; $572f: $73
    jr nz, jr_01a_5793                            ; $5730: $20 $61

    ld l, [hl]                                    ; $5732: $6e
    ld h, h                                       ; $5733: $64
    ld bc, $7269                                  ; $5734: $01 $69 $72
    ld l, a                                       ; $5737: $6f
    ld l, [hl]                                    ; $5738: $6e

jr_01a_5739:
    ld [hl], e                                    ; $5739: $73
    ld hl, $0003                                  ; $573a: $21 $03 $00
    ld c, e                                       ; $573d: $4b
    ld l, [hl]                                    ; $573e: $6e
    ld l, a                                       ; $573f: $6f
    ld [hl], a                                    ; $5740: $77
    ld l, c                                       ; $5741: $69
    ld l, [hl]                                    ; $5742: $6e
    ld h, a                                       ; $5743: $67
    jr nz, @+$67                                  ; $5744: $20 $65

    ld [hl], c                                    ; $5746: $71
    ld [hl], l                                    ; $5747: $75
    ld l, c                                       ; $5748: $69
    ld [hl], b                                    ; $5749: $70
    ld l, l                                       ; $574a: $6d
    ld h, l                                       ; $574b: $65

jr_01a_574c:
    ld l, [hl]                                    ; $574c: $6e
    ld [hl], h                                    ; $574d: $74
    ld bc, $6163                                  ; $574e: $01 $63 $61
    ld l, [hl]                                    ; $5751: $6e
    jr nz, jr_01a_57bc                            ; $5752: $20 $68

    ld h, l                                       ; $5754: $65
    ld l, h                                       ; $5755: $6c
    ld [hl], b                                    ; $5756: $70
    jr nz, @+$7b                                  ; $5757: $20 $79

    ld l, a                                       ; $5759: $6f
    ld [hl], l                                    ; $575a: $75
    ld [hl], d                                    ; $575b: $72
    jr nz, @+$69                                  ; $575c: $20 $67

    ld h, c                                       ; $575e: $61
    ld l, l                                       ; $575f: $6d
    ld h, l                                       ; $5760: $65
    ld l, $01                                     ; $5761: $2e $01
    ld d, e                                       ; $5763: $53
    ld [hl], h                                    ; $5764: $74
    ld [hl], l                                    ; $5765: $75

jr_01a_5766:
    ld h, h                                       ; $5766: $64
    ld a, c                                       ; $5767: $79
    jr nz, jr_01a_57df                            ; $5768: $20 $75

    ld [hl], b                                    ; $576a: $70
    ld hl, $0003                                  ; $576b: $21 $03 $00
    ld l, c                                       ; $576e: $69
    ld [hl], d                                    ; $576f: $72
    ld l, a                                       ; $5770: $6f
    ld l, [hl]                                    ; $5771: $6e
    ld bc, $6166                                  ; $5772: $01 $66 $61
    ld h, e                                       ; $5775: $63
    ld h, l                                       ; $5776: $65
    ld bc, $6f6c                                  ; $5777: $01 $6c $6f
    ld h, [hl]                                    ; $577a: $66
    ld [hl], h                                    ; $577b: $74
    nop                                           ; $577c: $00

jr_01a_577d:
    ld b, c                                       ; $577d: $41
    jr nz, @+$6f                                  ; $577e: $20 $6d

jr_01a_5780:
    ld h, l                                       ; $5780: $65
    ld [hl], h                                    ; $5781: $74
    ld h, c                                       ; $5782: $61
    ld l, h                                       ; $5783: $6c
    jr nz, jr_01a_57e9                            ; $5784: $20 $63

    ld l, h                                       ; $5786: $6c
    ld [hl], l                                    ; $5787: $75
    ld h, d                                       ; $5788: $62

jr_01a_5789:
    jr nz, jr_01a_5800                            ; $5789: $20 $75

    ld [hl], e                                    ; $578b: $73
    ld h, l                                       ; $578c: $65
    ld h, h                                       ; $578d: $64
    ld bc, $6f74                                  ; $578e: $01 $74 $6f
    jr nz, jr_01a_57fb                            ; $5791: $20 $68

jr_01a_5793:
    ld l, c                                       ; $5793: $69
    ld [hl], h                                    ; $5794: $74
    jr nz, @+$76                                  ; $5795: $20 $74

    ld l, b                                       ; $5797: $68
    ld h, l                                       ; $5798: $65
    jr nz, jr_01a_57fd                            ; $5799: $20 $62

    ld h, c                                       ; $579b: $61
    ld l, h                                       ; $579c: $6c
    ld l, h                                       ; $579d: $6c
    ld l, $02                                     ; $579e: $2e $02
    ld d, h                                       ; $57a0: $54
    ld l, b                                       ; $57a1: $68
    ld h, l                                       ; $57a2: $65

jr_01a_57a3:
    jr nz, jr_01a_580d                            ; $57a3: $20 $68

    ld l, c                                       ; $57a5: $69
    ld h, a                                       ; $57a6: $67
    ld l, b                                       ; $57a7: $68
    ld h, l                                       ; $57a8: $65
    ld [hl], d                                    ; $57a9: $72
    jr nz, @+$6b                                  ; $57aa: $20 $69

    ld [hl], h                                    ; $57ac: $74
    ld [hl], e                                    ; $57ad: $73
    ld bc, $756e                                  ; $57ae: $01 $6e $75
    ld l, l                                       ; $57b1: $6d
    ld h, d                                       ; $57b2: $62
    ld h, l                                       ; $57b3: $65
    ld [hl], d                                    ; $57b4: $72
    inc l                                         ; $57b5: $2c
    jr nz, jr_01a_582c                            ; $57b6: $20 $74

    ld l, b                                       ; $57b8: $68
    ld h, l                                       ; $57b9: $65
    jr nz, jr_01a_5829                            ; $57ba: $20 $6d

jr_01a_57bc:
    ld l, a                                       ; $57bc: $6f
    ld [hl], d                                    ; $57bd: $72
    ld h, l                                       ; $57be: $65
    ld bc, $6f6c                                  ; $57bf: $01 $6c $6f
    ld h, [hl]                                    ; $57c2: $66
    ld [hl], h                                    ; $57c3: $74
    jr nz, jr_01a_582f                            ; $57c4: $20 $69

    ld [hl], h                                    ; $57c6: $74
    jr nz, jr_01a_5831                            ; $57c7: $20 $68

    ld h, c                                       ; $57c9: $61
    ld [hl], e                                    ; $57ca: $73
    ld l, $03                                     ; $57cb: $2e $03
    nop                                           ; $57cd: $00
    ld d, h                                       ; $57ce: $54
    ld l, b                                       ; $57cf: $68
    ld h, l                                       ; $57d0: $65
    jr nz, @+$68                                  ; $57d1: $20 $66

    ld [hl], d                                    ; $57d3: $72
    ld l, a                                       ; $57d4: $6f
    ld l, [hl]                                    ; $57d5: $6e
    ld [hl], h                                    ; $57d6: $74
    jr nz, @+$72                                  ; $57d7: $20 $70

    ld h, c                                       ; $57d9: $61
    ld [hl], d                                    ; $57da: $72
    ld [hl], h                                    ; $57db: $74
    ld bc, $666f                                  ; $57dc: $01 $6f $66

jr_01a_57df:
    jr nz, @+$63                                  ; $57df: $20 $61

    jr nz, @+$65                                  ; $57e1: $20 $63

    ld l, h                                       ; $57e3: $6c
    ld [hl], l                                    ; $57e4: $75
    ld h, d                                       ; $57e5: $62
    jr nz, @+$6a                                  ; $57e6: $20 $68

    ld h, l                                       ; $57e8: $65

jr_01a_57e9:
    ld h, c                                       ; $57e9: $61
    ld h, h                                       ; $57ea: $64
    ld bc, $6874                                  ; $57eb: $01 $74 $68
    ld h, c                                       ; $57ee: $61
    ld [hl], h                                    ; $57ef: $74
    jr nz, @+$66                                  ; $57f0: $20 $64

    ld l, c                                       ; $57f2: $69
    ld [hl], d                                    ; $57f3: $72
    ld h, l                                       ; $57f4: $65
    ld h, e                                       ; $57f5: $63
    ld [hl], h                                    ; $57f6: $74
    ld l, h                                       ; $57f7: $6c
    ld a, c                                       ; $57f8: $79
    ld [bc], a                                    ; $57f9: $02
    ld l, c                                       ; $57fa: $69

jr_01a_57fb:
    ld l, l                                       ; $57fb: $6d
    ld [hl], b                                    ; $57fc: $70

jr_01a_57fd:
    ld h, c                                       ; $57fd: $61
    ld h, e                                       ; $57fe: $63
    ld [hl], h                                    ; $57ff: $74

jr_01a_5800:
    ld [hl], e                                    ; $5800: $73
    jr nz, @+$76                                  ; $5801: $20 $74

    ld l, b                                       ; $5803: $68
    ld h, l                                       ; $5804: $65
    ld bc, $6162                                  ; $5805: $01 $62 $61
    ld l, h                                       ; $5808: $6c
    ld l, h                                       ; $5809: $6c
    ld l, $03                                     ; $580a: $2e $03
    nop                                           ; $580c: $00

jr_01a_580d:
    ld c, h                                       ; $580d: $4c
    ld l, a                                       ; $580e: $6f
    ld h, [hl]                                    ; $580f: $66
    ld [hl], h                                    ; $5810: $74
    jr nz, @+$6b                                  ; $5811: $20 $69

    ld [hl], e                                    ; $5813: $73
    jr nz, @+$76                                  ; $5814: $20 $74

    ld l, b                                       ; $5816: $68
    ld h, l                                       ; $5817: $65
    ld bc, $6e61                                  ; $5818: $01 $61 $6e
    ld h, a                                       ; $581b: $67
    ld l, h                                       ; $581c: $6c
    ld h, l                                       ; $581d: $65
    jr nz, @+$71                                  ; $581e: $20 $6f

    ld h, [hl]                                    ; $5820: $66
    jr nz, @+$63                                  ; $5821: $20 $61

    ld bc, $6c63                                  ; $5823: $01 $63 $6c
    ld [hl], l                                    ; $5826: $75
    ld h, d                                       ; $5827: $62
    daa                                           ; $5828: $27

jr_01a_5829:
    ld [hl], e                                    ; $5829: $73
    jr nz, @+$68                                  ; $582a: $20 $66

jr_01a_582c:
    ld h, c                                       ; $582c: $61
    ld h, e                                       ; $582d: $63
    ld h, l                                       ; $582e: $65

jr_01a_582f:
    ld l, $03                                     ; $582f: $2e $03

jr_01a_5831:
    nop                                           ; $5831: $00

    db $57, $61, $6e, $74, $20, $74, $6f, $20, $6b, $6e, $6f, $77, $20, $74, $68, $65
    db $01, $62, $61, $73, $69, $63, $73, $20, $6f, $66, $20, $67, $6f, $6c, $66, $01
    db $74, $65, $63, $68, $6e, $69, $71, $75, $65, $73, $3f, $00, $47, $6f, $6c, $66
    db $20, $74, $65, $63, $68, $6e, $69, $71, $75, $65, $20, $69, $73, $01, $64, $65
    db $65, $70, $2e, $20, $4c, $65, $61, $72, $6e, $20, $69, $74, $20, $74, $6f, $01
    db $69, $6d, $70, $72, $6f, $76, $65, $20, $79, $6f, $75, $72, $20, $67, $61, $6d
    db $65, $2e, $02, $45, $76, $65, $6e, $20, $74, $68, $65, $20, $73, $68, $6f, $72
    db $74, $20, $67, $61, $6d, $65, $2c, $01, $6f, $72, $20, $61, $70, $70, $72, $6f
    db $61, $63, $68, $2c, $20, $68, $61, $73, $01, $6d, $61, $6e, $79, $20, $74, $65
    db $63, $68, $6e, $69, $71, $75, $65, $73, $2e, $03, $00, $47, $6f, $6c, $66, $20
    db $74, $65, $63, $68, $6e, $69, $71, $75, $65, $20, $69, $73, $01, $64, $65, $65
    db $70, $2e, $20, $4c, $65, $61, $72, $6e, $20, $69, $74, $20, $74, $6f, $01, $69
    db $6d, $70, $72, $6f, $76, $65, $20, $79, $6f, $75, $72, $20, $67, $61, $6d, $65
    db $2e, $03, $00, $79, $69, $70, $73, $01, $69, $6e, $74, $65, $6e, $74, $69, $6f
    db $6e, $61, $6c, $01, $63, $68, $69, $70, $20, $73, $68, $6f, $74, $00, $49, $6e
    db $61, $62, $69, $6c, $69, $74, $79, $20, $74, $6f, $01, $68, $69, $74, $20, $74
    db $68, $65, $20, $62, $61, $6c, $6c, $01, $70, $72, $6f, $70, $65, $72, $6c, $79
    db $20, $64, $75, $65, $20, $74, $6f, $02, $6e, $65, $72, $76, $65, $73, $2e, $20
    db $59, $69, $70, $73, $01, $75, $73, $75, $61, $6c, $6c, $79, $20, $6f, $63, $63
    db $75, $72, $01, $77, $68, $65, $6e, $20, $70, $75, $74, $74, $69, $6e, $67, $02
    db $62, $75, $74, $20, $6d, $61, $79, $20, $6f, $63, $63, $75, $72, $01, $65, $6c
    db $73, $65, $77, $68, $65, $72, $65, $01, $61, $73, $20, $77, $65, $6c, $6c, $2e
    db $03, $00, $50, $75, $72, $70, $6f, $73, $65, $6c, $79, $20, $68, $69, $74, $74
    db $69, $6e, $67, $01, $74, $68, $65, $20, $62, $61, $6c, $6c, $20, $6c, $65, $66

    ld [hl], h                                    ; $59b2: $74
    jr nz, jr_01a_5a24                            ; $59b3: $20 $6f

    ld [hl], d                                    ; $59b5: $72
    ld bc, $6972                                  ; $59b6: $01 $72 $69
    ld h, a                                       ; $59b9: $67
    ld l, b                                       ; $59ba: $68
    ld [hl], h                                    ; $59bb: $74
    jr nz, jr_01a_5a35                            ; $59bc: $20 $77

    ld l, c                                       ; $59be: $69
    ld [hl], h                                    ; $59bf: $74
    ld l, b                                       ; $59c0: $68
    jr nz, jr_01a_5a24                            ; $59c1: $20 $61

    ld [bc], a                                    ; $59c3: $02
    ld l, b                                       ; $59c4: $68
    ld l, a                                       ; $59c5: $6f
    ld l, a                                       ; $59c6: $6f
    ld l, e                                       ; $59c7: $6b
    jr nz, jr_01a_5a39                            ; $59c8: $20 $6f

    ld [hl], d                                    ; $59ca: $72
    jr nz, @+$75                                  ; $59cb: $20 $73

    ld l, h                                       ; $59cd: $6c
    ld l, c                                       ; $59ce: $69
    ld h, e                                       ; $59cf: $63
    ld h, l                                       ; $59d0: $65
    jr nz, jr_01a_5a47                            ; $59d1: $20 $74

    ld l, a                                       ; $59d3: $6f
    ld bc, $7661                                  ; $59d4: $01 $61 $76
    ld l, a                                       ; $59d7: $6f
    ld l, c                                       ; $59d8: $69
    ld h, h                                       ; $59d9: $64
    jr nz, jr_01a_5a3d                            ; $59da: $20 $61

    ld l, [hl]                                    ; $59dc: $6e
    jr nz, jr_01a_5a4e                            ; $59dd: $20 $6f

    ld h, d                                       ; $59df: $62
    ld [hl], e                                    ; $59e0: $73
    ld [hl], h                                    ; $59e1: $74
    ld h, c                                       ; $59e2: $61
    ld h, e                                       ; $59e3: $63
    ld l, h                                       ; $59e4: $6c
    ld h, l                                       ; $59e5: $65
    ld bc, $6e61                                  ; $59e6: $01 $61 $6e
    ld h, h                                       ; $59e9: $64
    jr nz, jr_01a_5a53                            ; $59ea: $20 $67

    ld h, l                                       ; $59ec: $65
    ld [hl], h                                    ; $59ed: $74
    jr nz, jr_01a_5a5f                            ; $59ee: $20 $6f

    ld l, [hl]                                    ; $59f0: $6e
    jr nz, jr_01a_5a5a                            ; $59f1: $20 $67

    ld [hl], d                                    ; $59f3: $72
    ld h, l                                       ; $59f4: $65
    ld h, l                                       ; $59f5: $65
    ld l, [hl]                                    ; $59f6: $6e
    ld l, $03                                     ; $59f7: $2e $03
    nop                                           ; $59f9: $00
    ld b, c                                       ; $59fa: $41
    ld l, [hl]                                    ; $59fb: $6e
    jr nz, jr_01a_5a5f                            ; $59fc: $20 $61

    ld [hl], b                                    ; $59fe: $70
    ld [hl], b                                    ; $59ff: $70
    ld [hl], d                                    ; $5a00: $72
    ld l, a                                       ; $5a01: $6f
    ld h, c                                       ; $5a02: $61
    ld h, e                                       ; $5a03: $63
    ld l, b                                       ; $5a04: $68
    ld bc, $6873                                  ; $5a05: $01 $73 $68
    ld l, a                                       ; $5a08: $6f
    ld [hl], h                                    ; $5a09: $74
    jr nz, @+$6b                                  ; $5a0a: $20 $69

    ld l, [hl]                                    ; $5a0c: $6e
    jr nz, @+$79                                  ; $5a0d: $20 $77

    ld l, b                                       ; $5a0f: $68
    ld l, c                                       ; $5a10: $69
    ld h, e                                       ; $5a11: $63
    ld l, b                                       ; $5a12: $68
    ld bc, $6874                                  ; $5a13: $01 $74 $68
    ld h, l                                       ; $5a16: $65
    jr nz, @+$64                                  ; $5a17: $20 $62

    ld h, c                                       ; $5a19: $61
    ld l, h                                       ; $5a1a: $6c
    ld l, h                                       ; $5a1b: $6c
    jr nz, @+$6b                                  ; $5a1c: $20 $69

    ld [hl], e                                    ; $5a1e: $73
    ld [bc], a                                    ; $5a1f: $02
    ld [hl], e                                    ; $5a20: $73
    ld l, b                                       ; $5a21: $68
    ld l, a                                       ; $5a22: $6f
    ld [hl], h                                    ; $5a23: $74

jr_01a_5a24:
    jr nz, @+$71                                  ; $5a24: $20 $6f

    ld l, [hl]                                    ; $5a26: $6e
    jr nz, @+$63                                  ; $5a27: $20 $61

    jr nz, @+$6a                                  ; $5a29: $20 $68

    ld l, c                                       ; $5a2b: $69
    ld h, a                                       ; $5a2c: $67
    ld l, b                                       ; $5a2d: $68
    ld bc, $7274                                  ; $5a2e: $01 $74 $72
    ld h, c                                       ; $5a31: $61
    ld l, d                                       ; $5a32: $6a
    ld h, l                                       ; $5a33: $65
    ld h, e                                       ; $5a34: $63

jr_01a_5a35:
    ld [hl], h                                    ; $5a35: $74
    ld l, a                                       ; $5a36: $6f
    ld [hl], d                                    ; $5a37: $72
    ld a, c                                       ; $5a38: $79

jr_01a_5a39:
    inc l                                         ; $5a39: $2c
    ld bc, $6874                                  ; $5a3a: $01 $74 $68

jr_01a_5a3d:
    ld h, l                                       ; $5a3d: $65
    ld l, [hl]                                    ; $5a3e: $6e
    jr nz, @+$74                                  ; $5a3f: $20 $72

    ld l, a                                       ; $5a41: $6f
    ld l, h                                       ; $5a42: $6c
    ld l, h                                       ; $5a43: $6c
    ld [hl], e                                    ; $5a44: $73
    ld [bc], a                                    ; $5a45: $02
    ld [hl], h                                    ; $5a46: $74

jr_01a_5a47:
    ld l, a                                       ; $5a47: $6f
    ld [hl], a                                    ; $5a48: $77
    ld h, c                                       ; $5a49: $61
    ld [hl], d                                    ; $5a4a: $72
    ld h, h                                       ; $5a4b: $64
    jr nz, @+$76                                  ; $5a4c: $20 $74

jr_01a_5a4e:
    ld l, b                                       ; $5a4e: $68
    ld h, l                                       ; $5a4f: $65
    jr nz, @+$65                                  ; $5a50: $20 $63

    ld [hl], l                                    ; $5a52: $75

jr_01a_5a53:
    ld [hl], b                                    ; $5a53: $70
    ld bc, $6661                                  ; $5a54: $01 $61 $66
    ld [hl], h                                    ; $5a57: $74
    ld h, l                                       ; $5a58: $65
    ld [hl], d                                    ; $5a59: $72

jr_01a_5a5a:
    jr nz, @+$6e                                  ; $5a5a: $20 $6c

    ld h, c                                       ; $5a5c: $61
    ld l, [hl]                                    ; $5a5d: $6e
    ld h, h                                       ; $5a5e: $64

jr_01a_5a5f:
    ld l, c                                       ; $5a5f: $69
    ld l, [hl]                                    ; $5a60: $6e
    ld h, a                                       ; $5a61: $67
    ld bc, $6e6f                                  ; $5a62: $01 $6f $6e
    jr nz, @+$76                                  ; $5a65: $20 $74

    ld l, b                                       ; $5a67: $68
    ld h, l                                       ; $5a68: $65
    jr nz, @+$69                                  ; $5a69: $20 $67

    ld [hl], d                                    ; $5a6b: $72
    ld h, l                                       ; $5a6c: $65
    ld h, l                                       ; $5a6d: $65
    ld l, [hl]                                    ; $5a6e: $6e
    ld l, $03                                     ; $5a6f: $2e $03
    nop                                           ; $5a71: $00

    db $57, $61, $6e, $74, $20, $74, $6f, $20, $68, $65, $61, $72, $20, $61, $62, $6f
    db $75, $74, $01, $67, $6f, $6c, $66, $20, $66, $61, $63, $69, $6c, $69, $74, $69
    db $65, $73, $20, $61, $6e, $64, $01, $65, $71, $75, $69, $70, $6d, $65, $6e, $74
    db $3f, $00, $47, $6f, $6c, $66, $27, $73, $20, $63, $68, $61, $72, $6d, $20, $6c
    db $69, $65, $73, $01, $69, $6e, $20, $73, $74, $72, $61, $74, $65, $67, $79, $2c
    db $20, $73, $6f, $01, $6c, $65, $61, $72, $6e, $20, $74, $68, $65, $20, $63, $6f
    db $75, $72, $73, $65, $21, $02, $49, $66, $20, $79, $6f, $75, $20, $6b, $6e, $6f
    db $77, $20, $74, $68, $65, $01, $66, $61, $63, $69, $6c, $69, $74, $69, $65, $73
    db $2c, $20, $69, $74, $27, $6c, $6c, $20, $68, $65, $6c, $70, $01, $6f, $6e, $20
    db $74, $68, $65, $20, $63, $6f, $75, $72, $73, $65, $2e, $03, $00, $47, $6f, $6c
    db $66, $27, $73, $20, $63, $68, $61, $72, $6d, $20, $6c, $69, $65, $73, $01, $69
    db $6e, $20, $73, $74, $72, $61, $74, $65, $67, $79, $2c, $20, $73, $6f, $01, $6c
    db $65, $61, $72, $6e, $20, $74, $68, $65, $20, $63, $6f, $75, $72, $73, $65, $21
    db $03, $00, $4f, $42, $01, $63, $75, $70, $01, $67, $75, $61, $72, $64, $20, $62
    db $75, $6e, $6b, $65, $72, $00, $4f, $42, $20, $73, $74, $61, $6e, $64, $73, $20
    db $66, $6f, $72, $01, $6f, $75, $74, $20, $6f, $66, $20, $62, $6f, $75, $6e, $64
    db $73, $2e, $01, $54, $68, $65, $72, $65, $27, $73, $20, $61, $20, $31, $2d, $02
    db $73, $74, $72, $6f, $6b, $65, $20, $70, $65, $6e, $61, $6c, $74, $79, $2c, $20
    db $61, $6e, $64, $01, $79, $6f, $75, $20, $6d, $75, $73, $74, $20, $72, $65, $2d
    db $68, $69, $74, $2e, $03, $00, $54, $68, $65, $20, $68, $6f, $6c, $65, $20, $69
    db $6e, $20, $74, $68, $65, $01, $67, $72, $65, $65, $6e, $20, $74, $68, $61, $74
    db $01, $67, $6f, $6c, $66, $65, $72, $73, $20, $61, $69, $6d, $20, $66, $6f, $72
    db $2e, $02, $41, $20, $66, $6c, $61, $67, $20, $6d, $61, $72, $6b, $73, $20, $69
    db $74, $2c, $01, $73, $6f, $20, $79, $6f, $75, $20, $63, $61, $6e, $20, $73, $65
    db $65, $20, $69, $74, $01, $66, $72, $6f, $6d, $20, $61, $20, $64, $69, $73, $74
    db $61, $6e, $63, $65, $2e, $03, $00, $41, $20, $62, $75, $6e, $6b, $65, $72, $20
    db $74, $68, $61, $74, $01, $70, $72, $6f, $74, $65, $63, $74, $73, $20, $74, $68
    db $65, $01

    ld h, a                                       ; $5c24: $67
    ld [hl], d                                    ; $5c25: $72
    ld h, l                                       ; $5c26: $65
    ld h, l                                       ; $5c27: $65
    ld l, [hl]                                    ; $5c28: $6e
    ld l, $03                                     ; $5c29: $2e $03
    nop                                           ; $5c2b: $00
    ld d, e                                       ; $5c2c: $53
    ld l, b                                       ; $5c2d: $68
    ld h, c                                       ; $5c2e: $61
    ld l, h                                       ; $5c2f: $6c
    ld l, h                                       ; $5c30: $6c
    jr nz, @+$4b                                  ; $5c31: $20 $49

    jr nz, jr_01a_5ca9                            ; $5c33: $20 $74

    ld h, l                                       ; $5c35: $65
    ld l, h                                       ; $5c36: $6c
    ld l, h                                       ; $5c37: $6c
    jr nz, jr_01a_5ca2                            ; $5c38: $20 $68

    ld l, a                                       ; $5c3a: $6f
    ld [hl], a                                    ; $5c3b: $77
    jr nz, jr_01a_5cb2                            ; $5c3c: $20 $74

    ld l, a                                       ; $5c3e: $6f
    ld bc, $6966                                  ; $5c3f: $01 $66 $69
    ld l, [hl]                                    ; $5c42: $6e
    ld h, h                                       ; $5c43: $64
    jr nz, jr_01a_5cba                            ; $5c44: $20 $74

    ld l, b                                       ; $5c46: $68
    ld h, l                                       ; $5c47: $65
    jr nz, jr_01a_5cc1                            ; $5c48: $20 $77

    ld l, a                                       ; $5c4a: $6f
    ld [hl], d                                    ; $5c4b: $72
    ld h, h                                       ; $5c4c: $64
    ld [hl], e                                    ; $5c4d: $73
    jr nz, jr_01a_5cc9                            ; $5c4e: $20 $79

    ld l, a                                       ; $5c50: $6f
    ld [hl], l                                    ; $5c51: $75
    ld bc, $6177                                  ; $5c52: $01 $77 $61
    ld l, [hl]                                    ; $5c55: $6e
    ld [hl], h                                    ; $5c56: $74
    jr nz, jr_01a_5ccd                            ; $5c57: $20 $74

    ld l, a                                       ; $5c59: $6f
    jr nz, jr_01a_5cc8                            ; $5c5a: $20 $6c

    ld l, a                                       ; $5c5c: $6f
    ld l, a                                       ; $5c5d: $6f
    ld l, e                                       ; $5c5e: $6b
    dec l                                         ; $5c5f: $2d
    ld [hl], l                                    ; $5c60: $75
    ld [hl], b                                    ; $5c61: $70
    ccf                                           ; $5c62: $3f
    nop                                           ; $5c63: $00
    ld d, h                                       ; $5c64: $54
    ld l, b                                       ; $5c65: $68
    ld h, l                                       ; $5c66: $65
    jr nz, jr_01a_5cd6                            ; $5c67: $20 $6d

    ld l, a                                       ; $5c69: $6f
    ld [hl], d                                    ; $5c6a: $72
    ld h, l                                       ; $5c6b: $65
    jr nz, jr_01a_5ce7                            ; $5c6c: $20 $79

    ld l, a                                       ; $5c6e: $6f
    ld [hl], l                                    ; $5c6f: $75
    jr nz, jr_01a_5cdd                            ; $5c70: $20 $6b

    ld l, [hl]                                    ; $5c72: $6e
    ld l, a                                       ; $5c73: $6f
    ld [hl], a                                    ; $5c74: $77
    ld bc, $6261                                  ; $5c75: $01 $61 $62
    ld l, a                                       ; $5c78: $6f
    ld [hl], l                                    ; $5c79: $75
    ld [hl], h                                    ; $5c7a: $74
    jr nz, @+$69                                  ; $5c7b: $20 $67

    ld l, a                                       ; $5c7d: $6f
    ld l, h                                       ; $5c7e: $6c
    ld h, [hl]                                    ; $5c7f: $66
    inc l                                         ; $5c80: $2c
    jr nz, jr_01a_5cf7                            ; $5c81: $20 $74

    ld l, b                                       ; $5c83: $68
    ld h, l                                       ; $5c84: $65
    jr nz, @+$6f                                  ; $5c85: $20 $6d

    ld l, a                                       ; $5c87: $6f
    ld [hl], d                                    ; $5c88: $72
    ld h, l                                       ; $5c89: $65
    ld bc, $7566                                  ; $5c8a: $01 $66 $75
    ld l, [hl]                                    ; $5c8d: $6e
    jr nz, jr_01a_5cf9                            ; $5c8e: $20 $69

    ld [hl], h                                    ; $5c90: $74
    jr nz, @+$6b                                  ; $5c91: $20 $69

    ld [hl], e                                    ; $5c93: $73
    ld l, $02                                     ; $5c94: $2e $02
    ld b, d                                       ; $5c96: $42
    ld [hl], l                                    ; $5c97: $75
    ld [hl], h                                    ; $5c98: $74
    jr nz, jr_01a_5d06                            ; $5c99: $20 $6b

    ld l, [hl]                                    ; $5c9b: $6e
    ld l, a                                       ; $5c9c: $6f
    ld [hl], a                                    ; $5c9d: $77
    ld l, h                                       ; $5c9e: $6c
    ld h, l                                       ; $5c9f: $65
    ld h, h                                       ; $5ca0: $64
    ld h, a                                       ; $5ca1: $67

jr_01a_5ca2:
    ld h, l                                       ; $5ca2: $65
    jr nz, jr_01a_5d06                            ; $5ca3: $20 $61

    ld l, h                                       ; $5ca5: $6c
    ld l, a                                       ; $5ca6: $6f
    ld l, [hl]                                    ; $5ca7: $6e
    ld h, l                                       ; $5ca8: $65

jr_01a_5ca9:
    ld bc, $7369                                  ; $5ca9: $01 $69 $73
    ld l, [hl]                                    ; $5cac: $6e
    daa                                           ; $5cad: $27
    ld [hl], h                                    ; $5cae: $74
    jr nz, @+$67                                  ; $5caf: $20 $65

    ld l, [hl]                                    ; $5cb1: $6e

jr_01a_5cb2:
    ld l, a                                       ; $5cb2: $6f
    ld [hl], l                                    ; $5cb3: $75
    ld h, a                                       ; $5cb4: $67
    ld l, b                                       ; $5cb5: $68
    ld l, $20                                     ; $5cb6: $2e $20
    ld b, [hl]                                    ; $5cb8: $46
    ld l, a                                       ; $5cb9: $6f

jr_01a_5cba:
    ld [hl], d                                    ; $5cba: $72
    ld l, l                                       ; $5cbb: $6d
    ld bc, $7369                                  ; $5cbc: $01 $69 $73
    jr nz, @+$6b                                  ; $5cbf: $20 $69

jr_01a_5cc1:
    ld l, l                                       ; $5cc1: $6d
    ld [hl], b                                    ; $5cc2: $70
    ld l, a                                       ; $5cc3: $6f
    ld [hl], d                                    ; $5cc4: $72
    ld [hl], h                                    ; $5cc5: $74
    ld h, c                                       ; $5cc6: $61
    ld l, [hl]                                    ; $5cc7: $6e

jr_01a_5cc8:
    ld [hl], h                                    ; $5cc8: $74

jr_01a_5cc9:
    inc l                                         ; $5cc9: $2c
    jr nz, @+$76                                  ; $5cca: $20 $74

    ld l, a                                       ; $5ccc: $6f

jr_01a_5ccd:
    ld l, a                                       ; $5ccd: $6f
    ld l, $03                                     ; $5cce: $2e $03
    nop                                           ; $5cd0: $00
    ld d, h                                       ; $5cd1: $54
    ld l, b                                       ; $5cd2: $68
    ld h, l                                       ; $5cd3: $65
    jr nz, @+$6f                                  ; $5cd4: $20 $6d

jr_01a_5cd6:
    ld l, a                                       ; $5cd6: $6f
    ld [hl], d                                    ; $5cd7: $72
    ld h, l                                       ; $5cd8: $65
    jr nz, @+$7b                                  ; $5cd9: $20 $79

    ld l, a                                       ; $5cdb: $6f
    ld [hl], l                                    ; $5cdc: $75

jr_01a_5cdd:
    jr nz, @+$6d                                  ; $5cdd: $20 $6b

    ld l, [hl]                                    ; $5cdf: $6e
    ld l, a                                       ; $5ce0: $6f
    ld [hl], a                                    ; $5ce1: $77
    ld bc, $6261                                  ; $5ce2: $01 $61 $62
    ld l, a                                       ; $5ce5: $6f
    ld [hl], l                                    ; $5ce6: $75

jr_01a_5ce7:
    ld [hl], h                                    ; $5ce7: $74
    jr nz, @+$69                                  ; $5ce8: $20 $67

    ld l, a                                       ; $5cea: $6f
    ld l, h                                       ; $5ceb: $6c
    ld h, [hl]                                    ; $5cec: $66
    inc l                                         ; $5ced: $2c
    jr nz, @+$76                                  ; $5cee: $20 $74

    ld l, b                                       ; $5cf0: $68
    ld h, l                                       ; $5cf1: $65
    ld bc, $6f6d                                  ; $5cf2: $01 $6d $6f
    ld [hl], d                                    ; $5cf5: $72
    ld h, l                                       ; $5cf6: $65

jr_01a_5cf7:
    jr nz, @+$68                                  ; $5cf7: $20 $66

jr_01a_5cf9:
    ld [hl], l                                    ; $5cf9: $75
    ld l, [hl]                                    ; $5cfa: $6e
    jr nz, @+$6b                                  ; $5cfb: $20 $69

    ld [hl], h                                    ; $5cfd: $74
    jr nz, @+$6b                                  ; $5cfe: $20 $69

    ld [hl], e                                    ; $5d00: $73
    ld l, $03                                     ; $5d01: $2e $03
    nop                                           ; $5d03: $00
    ld c, e                                       ; $5d04: $4b
    ld h, l                                       ; $5d05: $65

jr_01a_5d06:
    ld h, l                                       ; $5d06: $65
    ld [hl], b                                    ; $5d07: $70
    jr nz, @+$65                                  ; $5d08: $20 $63

    ld l, b                                       ; $5d0a: $68
    ld h, l                                       ; $5d0b: $65
    ld h, e                                       ; $5d0c: $63
    ld l, e                                       ; $5d0d: $6b
    ld l, c                                       ; $5d0e: $69
    ld l, [hl]                                    ; $5d0f: $6e
    ld h, a                                       ; $5d10: $67
    ccf                                           ; $5d11: $3f
    nop                                           ; $5d12: $00

    db $59, $6f, $75, $27, $6c, $6c, $20, $67, $61, $69, $6e, $20, $31, $01, $6c, $65
    db $76, $65, $6c, $20, $77, $69, $74, $68, $20, $09, $20, $6d, $6f, $72, $65, $01
    db $70, $6f, $69, $6e, $74, $73, $2c, $20, $07, $2e, $03, $00, $59, $6f, $75, $72
    db $20, $6c, $65, $76, $65, $6c, $27, $73, $20, $68, $69, $67, $68, $01, $65, $6e
    db $6f, $75, $67, $68, $2c, $20, $07, $2e, $01, $59, $6f, $75, $27, $76, $65, $20
    db $77, $6f, $72, $6b, $65, $64, $20, $68, $61, $72, $64, $21, $03, $00, $49, $74
    db $20, $73, $65, $65, $6d, $73, $20, $79, $6f, $75, $01, $70, $6c, $61, $63, $65
    db $64, $20, $69, $6e, $20, $74, $68, $65, $20, $4d, $61, $72, $69, $6f, $6e, $01
    db $43, $6c, $75, $62, $20, $54, $6f, $75, $72, $6e, $61, $6d, $65, $6e, $74, $2e
    db $02, $57, $69, $6c, $6c, $20, $79, $6f, $75, $20, $73, $68, $6f, $6f, $74, $01
    db $66, $6f, $72, $20, $74, $68, $65, $20, $43, $6c, $75, $62, $01, $43, $68, $61
    db $6d, $70, $69, $6f, $6e, $20, $6e, $65, $78, $74, $3f, $00, $53, $75, $72, $65
    db $6c, $79, $20, $07, $01, $63, $61, $6e, $20, $77, $69, $6e, $20, $74, $68, $65
    db $20, $43, $6c, $75, $62, $01, $54, $6f, $75, $72, $6e, $61, $6d, $65, $6e, $74
    db $20, $61, $6e, $64, $02, $62, $65, $63, $6f, $6d, $65, $20, $43, $6c, $75, $62
    db $20, $43, $68, $61, $6d, $70, $2e, $03, $00, $54, $61, $6b, $65, $20, $6f, $6e
    db $20, $64, $69, $66, $66, $65, $72, $65, $6e, $74, $01, $63, $68, $61, $6c, $6c
    db $65, $6e, $67, $65, $73, $20, $74, $6f, $20, $69, $6d, $2d, $01, $70, $72, $6f
    db $76, $65, $20, $79, $6f, $75, $72, $20, $73, $6b, $69, $6c, $6c, $73, $2e, $03
    db $00, $53, $6f, $20, $79, $6f, $75, $20, $77, $6f, $6e, $20, $4d, $61, $72, $69
    db $6f, $6e, $27, $73, $01, $43, $6c, $75, $62, $20, $54, $6f, $75, $72, $6e, $61
    db $6d, $65, $6e, $74, $2c, $01, $65, $68, $2c, $20, $07, $3f, $20, $47, $72, $65
    db $61, $74, $21, $02, $42, $75, $74, $20, $64, $6f, $6e, $27, $74, $20, $73, $74
    db $6f, $70, $20, $74, $68, $65, $72, $65, $21, $01, $4b, $65, $65, $70, $20, $79

    ld l, a                                       ; $5e93: $6f
    ld [hl], l                                    ; $5e94: $75
    ld [hl], d                                    ; $5e95: $72
    jr nz, @+$67                                  ; $5e96: $20 $65

    ld a, c                                       ; $5e98: $79
    ld h, l                                       ; $5e99: $65
    ld [hl], e                                    ; $5e9a: $73
    jr nz, jr_01a_5f0c                            ; $5e9b: $20 $6f

    ld l, [hl]                                    ; $5e9d: $6e
    ld bc, $6874                                  ; $5e9e: $01 $74 $68
    ld h, l                                       ; $5ea1: $65
    jr nz, jr_01a_5f14                            ; $5ea2: $20 $70

    ld [hl], d                                    ; $5ea4: $72
    ld l, c                                       ; $5ea5: $69
    ld a, d                                       ; $5ea6: $7a
    ld h, l                                       ; $5ea7: $65
    ld hl, $0003                                  ; $5ea8: $21 $03 $00
    ld c, c                                       ; $5eab: $49
    ld [hl], h                                    ; $5eac: $74
    daa                                           ; $5ead: $27
    ld [hl], e                                    ; $5eae: $73
    jr nz, jr_01a_5f25                            ; $5eaf: $20 $74

    ld l, a                                       ; $5eb1: $6f
    ld l, a                                       ; $5eb2: $6f
    jr nz, @+$64                                  ; $5eb3: $20 $62

    ld h, c                                       ; $5eb5: $61
    ld h, h                                       ; $5eb6: $64
    jr nz, jr_01a_5f2d                            ; $5eb7: $20 $74

    ld l, b                                       ; $5eb9: $68
    ld h, c                                       ; $5eba: $61
    ld [hl], h                                    ; $5ebb: $74
    ld bc, $6f79                                  ; $5ebc: $01 $79 $6f
    ld [hl], l                                    ; $5ebf: $75
    jr nz, jr_01a_5f25                            ; $5ec0: $20 $63

    ld l, a                                       ; $5ec2: $6f
    ld [hl], l                                    ; $5ec3: $75
    ld l, h                                       ; $5ec4: $6c
    ld h, h                                       ; $5ec5: $64
    ld l, [hl]                                    ; $5ec6: $6e
    daa                                           ; $5ec7: $27
    ld [hl], h                                    ; $5ec8: $74
    jr nz, jr_01a_5f3b                            ; $5ec9: $20 $70

    ld l, h                                       ; $5ecb: $6c
    ld h, c                                       ; $5ecc: $61
    ld h, e                                       ; $5ecd: $63
    ld h, l                                       ; $5ece: $65
    ld l, $02                                     ; $5ecf: $2e $02
    ld b, a                                       ; $5ed1: $47
    ld l, a                                       ; $5ed2: $6f
    ld l, a                                       ; $5ed3: $6f
    ld h, h                                       ; $5ed4: $64
    jr nz, @+$6e                                  ; $5ed5: $20 $6c

    ld [hl], l                                    ; $5ed7: $75
    ld h, e                                       ; $5ed8: $63
    ld l, e                                       ; $5ed9: $6b
    jr nz, jr_01a_5f45                            ; $5eda: $20 $69

    ld l, [hl]                                    ; $5edc: $6e
    ld bc, $6874                                  ; $5edd: $01 $74 $68
    ld h, l                                       ; $5ee0: $65
    jr nz, jr_01a_5f51                            ; $5ee1: $20 $6e

    ld h, l                                       ; $5ee3: $65
    ld a, b                                       ; $5ee4: $78
    ld [hl], h                                    ; $5ee5: $74
    ld bc, $6f74                                  ; $5ee6: $01 $74 $6f
    ld [hl], l                                    ; $5ee9: $75
    ld [hl], d                                    ; $5eea: $72
    ld l, [hl]                                    ; $5eeb: $6e
    ld h, c                                       ; $5eec: $61
    ld l, l                                       ; $5eed: $6d
    ld h, l                                       ; $5eee: $65
    ld l, [hl]                                    ; $5eef: $6e
    ld [hl], h                                    ; $5ef0: $74
    ld l, $03                                     ; $5ef1: $2e $03
    nop                                           ; $5ef3: $00
    ld c, c                                       ; $5ef4: $49
    ld [hl], h                                    ; $5ef5: $74
    jr nz, @+$75                                  ; $5ef6: $20 $73

    ld h, l                                       ; $5ef8: $65
    ld h, l                                       ; $5ef9: $65
    ld l, l                                       ; $5efa: $6d
    ld [hl], e                                    ; $5efb: $73
    jr nz, jr_01a_5f77                            ; $5efc: $20 $79

    ld l, a                                       ; $5efe: $6f
    ld [hl], l                                    ; $5eff: $75
    ld bc, $6c70                                  ; $5f00: $01 $70 $6c
    ld h, c                                       ; $5f03: $61
    ld h, e                                       ; $5f04: $63
    ld h, l                                       ; $5f05: $65
    ld h, h                                       ; $5f06: $64
    jr nz, jr_01a_5f72                            ; $5f07: $20 $69

    ld l, [hl]                                    ; $5f09: $6e
    jr nz, @+$76                                  ; $5f0a: $20 $74

jr_01a_5f0c:
    ld l, b                                       ; $5f0c: $68
    ld h, l                                       ; $5f0d: $65
    jr nz, jr_01a_5f5d                            ; $5f0e: $20 $4d

    ld h, c                                       ; $5f10: $61
    ld [hl], d                                    ; $5f11: $72
    ld l, c                                       ; $5f12: $69
    ld l, a                                       ; $5f13: $6f

jr_01a_5f14:
    ld l, [hl]                                    ; $5f14: $6e
    ld bc, $6c43                                  ; $5f15: $01 $43 $6c
    ld [hl], l                                    ; $5f18: $75
    ld h, d                                       ; $5f19: $62
    jr nz, @+$56                                  ; $5f1a: $20 $54

    ld l, a                                       ; $5f1c: $6f
    ld [hl], l                                    ; $5f1d: $75
    ld [hl], d                                    ; $5f1e: $72
    ld l, [hl]                                    ; $5f1f: $6e
    ld h, c                                       ; $5f20: $61
    ld l, l                                       ; $5f21: $6d
    ld h, l                                       ; $5f22: $65
    ld l, [hl]                                    ; $5f23: $6e
    ld [hl], h                                    ; $5f24: $74

jr_01a_5f25:
    ld l, $02                                     ; $5f25: $2e $02
    ld d, a                                       ; $5f27: $57
    ld l, c                                       ; $5f28: $69
    ld l, h                                       ; $5f29: $6c
    ld l, h                                       ; $5f2a: $6c
    jr nz, @+$7b                                  ; $5f2b: $20 $79

jr_01a_5f2d:
    ld l, a                                       ; $5f2d: $6f
    ld [hl], l                                    ; $5f2e: $75
    jr nz, jr_01a_5fa4                            ; $5f2f: $20 $73

    ld l, b                                       ; $5f31: $68
    ld l, a                                       ; $5f32: $6f
    ld l, a                                       ; $5f33: $6f
    ld [hl], h                                    ; $5f34: $74
    ld bc, $6f66                                  ; $5f35: $01 $66 $6f
    ld [hl], d                                    ; $5f38: $72
    jr nz, jr_01a_5faf                            ; $5f39: $20 $74

jr_01a_5f3b:
    ld l, b                                       ; $5f3b: $68
    ld h, l                                       ; $5f3c: $65
    jr nz, jr_01a_5f82                            ; $5f3d: $20 $43

    ld l, h                                       ; $5f3f: $6c
    ld [hl], l                                    ; $5f40: $75
    ld h, d                                       ; $5f41: $62
    ld bc, $6843                                  ; $5f42: $01 $43 $68

jr_01a_5f45:
    ld h, c                                       ; $5f45: $61
    ld l, l                                       ; $5f46: $6d
    ld [hl], b                                    ; $5f47: $70
    ld l, c                                       ; $5f48: $69
    ld l, a                                       ; $5f49: $6f
    ld l, [hl]                                    ; $5f4a: $6e
    jr nz, jr_01a_5fbb                            ; $5f4b: $20 $6e

    ld h, l                                       ; $5f4d: $65
    ld a, b                                       ; $5f4e: $78
    ld [hl], h                                    ; $5f4f: $74
    ccf                                           ; $5f50: $3f

jr_01a_5f51:
    nop                                           ; $5f51: $00
    ld c, $04                                     ; $5f52: $0e $04
    jr nz, jr_01a_5fbf                            ; $5f54: $20 $69

    ld [hl], e                                    ; $5f56: $73
    jr nz, jr_01a_5fbf                            ; $5f57: $20 $66

    ld l, a                                       ; $5f59: $6f
    ld h, e                                       ; $5f5a: $63
    ld [hl], l                                    ; $5f5b: $75
    ld [hl], e                                    ; $5f5c: $73

jr_01a_5f5d:
    ld h, l                                       ; $5f5d: $65
    ld h, h                                       ; $5f5e: $64
    inc l                                         ; $5f5f: $2c
    ld bc, $7562                                  ; $5f60: $01 $62 $75
    ld [hl], h                                    ; $5f63: $74
    jr nz, jr_01a_5f6d                            ; $5f64: $20 $07

    ld bc, $6163                                  ; $5f66: $01 $63 $61
    ld l, [hl]                                    ; $5f69: $6e
    jr nz, jr_01a_5fce                            ; $5f6a: $20 $62

    ld h, l                                       ; $5f6c: $65

jr_01a_5f6d:
    ld h, c                                       ; $5f6d: $61
    ld [hl], h                                    ; $5f6e: $74
    jr nz, @+$6a                                  ; $5f6f: $20 $68

    ld l, c                                       ; $5f71: $69

jr_01a_5f72:
    ld l, l                                       ; $5f72: $6d
    ld hl, $0003                                  ; $5f73: $21 $03 $00
    ld c, l                                       ; $5f76: $4d

jr_01a_5f77:
    ld h, c                                       ; $5f77: $61
    ld a, c                                       ; $5f78: $79
    ld h, d                                       ; $5f79: $62
    ld h, l                                       ; $5f7a: $65
    jr nz, jr_01a_5ff6                            ; $5f7b: $20 $79

    ld l, a                                       ; $5f7d: $6f
    ld [hl], l                                    ; $5f7e: $75
    jr nz, jr_01a_5ff4                            ; $5f7f: $20 $73

    ld l, b                                       ; $5f81: $68

jr_01a_5f82:
    ld l, a                                       ; $5f82: $6f
    ld [hl], l                                    ; $5f83: $75
    ld l, h                                       ; $5f84: $6c
    ld h, h                                       ; $5f85: $64
    ld bc, $6e65                                  ; $5f86: $01 $65 $6e
    ld [hl], h                                    ; $5f89: $74
    ld h, l                                       ; $5f8a: $65
    ld [hl], d                                    ; $5f8b: $72
    jr nz, jr_01a_6002                            ; $5f8c: $20 $74

    ld l, b                                       ; $5f8e: $68
    ld h, l                                       ; $5f8f: $65
    jr nz, jr_01a_5fe2                            ; $5f90: $20 $50

    ld h, c                                       ; $5f92: $61
    ld l, h                                       ; $5f93: $6c
    ld l, l                                       ; $5f94: $6d
    ld bc, $6c43                                  ; $5f95: $01 $43 $6c
    ld [hl], l                                    ; $5f98: $75
    ld h, d                                       ; $5f99: $62
    jr nz, @+$56                                  ; $5f9a: $20 $54

    ld l, a                                       ; $5f9c: $6f
    ld [hl], l                                    ; $5f9d: $75
    ld [hl], d                                    ; $5f9e: $72
    ld l, [hl]                                    ; $5f9f: $6e
    ld h, c                                       ; $5fa0: $61
    ld l, l                                       ; $5fa1: $6d
    ld h, l                                       ; $5fa2: $65
    ld l, [hl]                                    ; $5fa3: $6e

jr_01a_5fa4:
    ld [hl], h                                    ; $5fa4: $74
    ld l, $03                                     ; $5fa5: $2e $03
    nop                                           ; $5fa7: $00
    ld c, c                                       ; $5fa8: $49
    jr nz, jr_01a_6013                            ; $5fa9: $20 $68

    ld h, l                                       ; $5fab: $65
    ld h, c                                       ; $5fac: $61
    ld [hl], d                                    ; $5fad: $72
    ld h, h                                       ; $5fae: $64

jr_01a_5faf:
    jr nz, jr_01a_602a                            ; $5faf: $20 $79

    ld l, a                                       ; $5fb1: $6f
    ld [hl], l                                    ; $5fb2: $75
    jr nz, jr_01a_602c                            ; $5fb3: $20 $77

    ld l, a                                       ; $5fb5: $6f
    ld l, [hl]                                    ; $5fb6: $6e
    ld bc, $6874                                  ; $5fb7: $01 $74 $68
    ld h, l                                       ; $5fba: $65

jr_01a_5fbb:
    jr nz, jr_01a_600d                            ; $5fbb: $20 $50

    ld h, c                                       ; $5fbd: $61
    ld l, h                                       ; $5fbe: $6c

jr_01a_5fbf:
    ld l, l                                       ; $5fbf: $6d
    jr nz, jr_01a_6005                            ; $5fc0: $20 $43

    ld l, h                                       ; $5fc2: $6c
    ld [hl], l                                    ; $5fc3: $75
    ld h, d                                       ; $5fc4: $62
    ld bc, $6f54                                  ; $5fc5: $01 $54 $6f
    ld [hl], l                                    ; $5fc8: $75
    ld [hl], d                                    ; $5fc9: $72
    ld l, [hl]                                    ; $5fca: $6e
    ld h, c                                       ; $5fcb: $61
    ld l, l                                       ; $5fcc: $6d
    ld h, l                                       ; $5fcd: $65

jr_01a_5fce:
    ld l, [hl]                                    ; $5fce: $6e
    ld [hl], h                                    ; $5fcf: $74
    ld l, $02                                     ; $5fd0: $2e $02
    ld b, a                                       ; $5fd2: $47
    ld [hl], d                                    ; $5fd3: $72
    ld h, l                                       ; $5fd4: $65
    ld h, c                                       ; $5fd5: $61
    ld [hl], h                                    ; $5fd6: $74
    inc l                                         ; $5fd7: $2c
    jr nz, @+$09                                  ; $5fd8: $20 $07

    ld hl, $4e01                                  ; $5fda: $21 $01 $4e
    ld h, l                                       ; $5fdd: $65
    ld a, b                                       ; $5fde: $78
    ld [hl], h                                    ; $5fdf: $74
    jr nz, jr_01a_6055                            ; $5fe0: $20 $73

jr_01a_5fe2:
    ld [hl], h                                    ; $5fe2: $74
    ld l, a                                       ; $5fe3: $6f
    ld [hl], b                                    ; $5fe4: $70
    inc l                                         ; $5fe5: $2c
    jr nz, @+$78                                  ; $5fe6: $20 $76

    ld l, c                                       ; $5fe8: $69
    ld h, e                                       ; $5fe9: $63
    ld [hl], h                                    ; $5fea: $74
    ld l, a                                       ; $5feb: $6f
    ld [hl], d                                    ; $5fec: $72
    ld a, c                                       ; $5fed: $79
    ld bc, $7461                                  ; $5fee: $01 $61 $74
    jr nz, @+$46                                  ; $5ff1: $20 $44

    ld [hl], l                                    ; $5ff3: $75

jr_01a_5ff4:
    ld l, [hl]                                    ; $5ff4: $6e
    ld h, l                                       ; $5ff5: $65

jr_01a_5ff6:
    jr nz, jr_01a_603b                            ; $5ff6: $20 $43

    ld l, h                                       ; $5ff8: $6c
    ld [hl], l                                    ; $5ff9: $75
    ld h, d                                       ; $5ffa: $62
    ld hl, $0003                                  ; $5ffb: $21 $03 $00
    ld c, c                                       ; $5ffe: $49
    jr nz, jr_01a_6069                            ; $5fff: $20 $68

    ld h, l                                       ; $6001: $65

jr_01a_6002:
    ld h, c                                       ; $6002: $61
    ld [hl], d                                    ; $6003: $72
    ld h, h                                       ; $6004: $64

jr_01a_6005:
    jr nz, jr_01a_6080                            ; $6005: $20 $79

    ld l, a                                       ; $6007: $6f
    ld [hl], l                                    ; $6008: $75
    jr nz, @+$72                                  ; $6009: $20 $70

    ld l, h                                       ; $600b: $6c
    ld h, c                                       ; $600c: $61

jr_01a_600d:
    ld h, e                                       ; $600d: $63
    ld h, l                                       ; $600e: $65
    ld h, h                                       ; $600f: $64
    ld bc, $6e69                                  ; $6010: $01 $69 $6e

jr_01a_6013:
    jr nz, @+$76                                  ; $6013: $20 $74

    ld l, b                                       ; $6015: $68
    ld h, l                                       ; $6016: $65
    jr nz, jr_01a_605d                            ; $6017: $20 $44

    ld [hl], l                                    ; $6019: $75
    ld l, [hl]                                    ; $601a: $6e
    ld h, l                                       ; $601b: $65
    jr nz, jr_01a_6061                            ; $601c: $20 $43

    ld l, h                                       ; $601e: $6c
    ld [hl], l                                    ; $601f: $75
    ld h, d                                       ; $6020: $62
    ld bc, $6f54                                  ; $6021: $01 $54 $6f
    ld [hl], l                                    ; $6024: $75
    ld [hl], d                                    ; $6025: $72
    ld l, [hl]                                    ; $6026: $6e
    ld h, c                                       ; $6027: $61
    ld l, l                                       ; $6028: $6d
    ld h, l                                       ; $6029: $65

jr_01a_602a:
    ld l, [hl]                                    ; $602a: $6e
    ld [hl], h                                    ; $602b: $74

jr_01a_602c:
    ld l, $02                                     ; $602c: $2e $02
    ld d, a                                       ; $602e: $57
    ld l, c                                       ; $602f: $69
    ld l, h                                       ; $6030: $6c
    ld l, h                                       ; $6031: $6c
    jr nz, jr_01a_60ad                            ; $6032: $20 $79

    ld l, a                                       ; $6034: $6f
    ld [hl], l                                    ; $6035: $75
    jr nz, jr_01a_60ab                            ; $6036: $20 $73

    ld l, b                                       ; $6038: $68
    ld l, a                                       ; $6039: $6f
    ld l, a                                       ; $603a: $6f

jr_01a_603b:
    ld [hl], h                                    ; $603b: $74
    jr nz, jr_01a_60a4                            ; $603c: $20 $66

    ld l, a                                       ; $603e: $6f
    ld [hl], d                                    ; $603f: $72
    ld bc, $6874                                  ; $6040: $01 $74 $68
    ld h, l                                       ; $6043: $65
    jr nz, @+$45                                  ; $6044: $20 $43

    ld l, h                                       ; $6046: $6c
    ld [hl], l                                    ; $6047: $75
    ld h, d                                       ; $6048: $62
    jr nz, jr_01a_608e                            ; $6049: $20 $43

    ld l, b                                       ; $604b: $68
    ld h, c                                       ; $604c: $61
    ld l, l                                       ; $604d: $6d
    ld [hl], b                                    ; $604e: $70
    ld l, c                                       ; $604f: $69
    ld l, a                                       ; $6050: $6f
    ld l, [hl]                                    ; $6051: $6e
    ld bc, $656e                                  ; $6052: $01 $6e $65

jr_01a_6055:
    ld a, b                                       ; $6055: $78
    ld [hl], h                                    ; $6056: $74
    ccf                                           ; $6057: $3f
    nop                                           ; $6058: $00
    ld c, $06                                     ; $6059: $0e $06
    daa                                           ; $605b: $27
    ld [hl], e                                    ; $605c: $73

jr_01a_605d:
    jr nz, jr_01a_60c0                            ; $605d: $20 $61

    jr nz, @+$72                                  ; $605f: $20 $70

jr_01a_6061:
    ld l, a                                       ; $6061: $6f
    ld [hl], a                                    ; $6062: $77
    ld h, l                                       ; $6063: $65
    ld [hl], d                                    ; $6064: $72
    ld bc, $6968                                  ; $6065: $01 $68 $69
    ld [hl], h                                    ; $6068: $74

jr_01a_6069:
    ld [hl], h                                    ; $6069: $74
    ld h, l                                       ; $606a: $65
    ld [hl], d                                    ; $606b: $72
    inc l                                         ; $606c: $2c
    jr nz, jr_01a_60e2                            ; $606d: $20 $73

    ld l, a                                       ; $606f: $6f
    jr nz, jr_01a_60e9                            ; $6070: $20 $77

    ld h, c                                       ; $6072: $61
    ld [hl], h                                    ; $6073: $74
    ld h, e                                       ; $6074: $63
    ld l, b                                       ; $6075: $68
    ld bc, $7469                                  ; $6076: $01 $69 $74
    inc l                                         ; $6079: $2c
    jr nz, jr_01a_6083                            ; $607a: $20 $07

    ld hl, $0003                                  ; $607c: $21 $03 $00
    ld c, l                                       ; $607f: $4d

jr_01a_6080:
    ld h, c                                       ; $6080: $61
    ld a, c                                       ; $6081: $79
    ld h, d                                       ; $6082: $62

jr_01a_6083:
    ld h, l                                       ; $6083: $65
    jr nz, jr_01a_60ff                            ; $6084: $20 $79

    ld l, a                                       ; $6086: $6f
    ld [hl], l                                    ; $6087: $75
    jr nz, jr_01a_60fd                            ; $6088: $20 $73

    ld l, b                                       ; $608a: $68
    ld l, a                                       ; $608b: $6f
    ld [hl], l                                    ; $608c: $75
    ld l, h                                       ; $608d: $6c

jr_01a_608e:
    ld h, h                                       ; $608e: $64
    ld bc, $6e65                                  ; $608f: $01 $65 $6e
    ld [hl], h                                    ; $6092: $74
    ld h, l                                       ; $6093: $65
    ld [hl], d                                    ; $6094: $72
    jr nz, jr_01a_610b                            ; $6095: $20 $74

    ld l, b                                       ; $6097: $68
    ld h, l                                       ; $6098: $65
    jr nz, jr_01a_60e7                            ; $6099: $20 $4c

    ld l, c                                       ; $609b: $69
    ld l, [hl]                                    ; $609c: $6e
    ld l, e                                       ; $609d: $6b
    ld [hl], e                                    ; $609e: $73
    ld bc, $6c43                                  ; $609f: $01 $43 $6c
    ld [hl], l                                    ; $60a2: $75
    ld h, d                                       ; $60a3: $62

jr_01a_60a4:
    jr nz, jr_01a_60fa                            ; $60a4: $20 $54

    ld l, a                                       ; $60a6: $6f
    ld [hl], l                                    ; $60a7: $75
    ld [hl], d                                    ; $60a8: $72
    ld l, [hl]                                    ; $60a9: $6e
    ld h, c                                       ; $60aa: $61

jr_01a_60ab:
    ld l, l                                       ; $60ab: $6d
    ld h, l                                       ; $60ac: $65

jr_01a_60ad:
    ld l, [hl]                                    ; $60ad: $6e
    ld [hl], h                                    ; $60ae: $74
    ld l, $03                                     ; $60af: $2e $03
    nop                                           ; $60b1: $00
    ld c, c                                       ; $60b2: $49
    jr nz, jr_01a_611d                            ; $60b3: $20 $68

    ld h, l                                       ; $60b5: $65
    ld h, c                                       ; $60b6: $61
    ld [hl], d                                    ; $60b7: $72
    ld h, h                                       ; $60b8: $64
    jr nz, jr_01a_6134                            ; $60b9: $20 $79

    ld l, a                                       ; $60bb: $6f
    ld [hl], l                                    ; $60bc: $75
    jr nz, jr_01a_6136                            ; $60bd: $20 $77

    ld l, a                                       ; $60bf: $6f

jr_01a_60c0:
    ld l, [hl]                                    ; $60c0: $6e
    ld bc, $6874                                  ; $60c1: $01 $74 $68
    ld h, l                                       ; $60c4: $65
    jr nz, jr_01a_610b                            ; $60c5: $20 $44

    ld [hl], l                                    ; $60c7: $75
    ld l, [hl]                                    ; $60c8: $6e
    ld h, l                                       ; $60c9: $65
    jr nz, jr_01a_610f                            ; $60ca: $20 $43

    ld l, h                                       ; $60cc: $6c
    ld [hl], l                                    ; $60cd: $75
    ld h, d                                       ; $60ce: $62
    ld bc, $6f54                                  ; $60cf: $01 $54 $6f
    ld [hl], l                                    ; $60d2: $75
    ld [hl], d                                    ; $60d3: $72
    ld l, [hl]                                    ; $60d4: $6e
    ld h, c                                       ; $60d5: $61
    ld l, l                                       ; $60d6: $6d
    ld h, l                                       ; $60d7: $65
    ld l, [hl]                                    ; $60d8: $6e
    ld [hl], h                                    ; $60d9: $74
    ld l, $02                                     ; $60da: $2e $02
    ld b, a                                       ; $60dc: $47
    ld [hl], d                                    ; $60dd: $72
    ld h, l                                       ; $60de: $65
    ld h, c                                       ; $60df: $61
    ld [hl], h                                    ; $60e0: $74
    inc l                                         ; $60e1: $2c

jr_01a_60e2:
    jr nz, @+$09                                  ; $60e2: $20 $07

    ld hl, $4e01                                  ; $60e4: $21 $01 $4e

jr_01a_60e7:
    ld h, l                                       ; $60e7: $65
    ld a, b                                       ; $60e8: $78

jr_01a_60e9:
    ld [hl], h                                    ; $60e9: $74
    jr nz, jr_01a_615f                            ; $60ea: $20 $73

    ld [hl], h                                    ; $60ec: $74
    ld l, a                                       ; $60ed: $6f
    ld [hl], b                                    ; $60ee: $70
    inc l                                         ; $60ef: $2c
    ld bc, $6976                                  ; $60f0: $01 $76 $69
    ld h, e                                       ; $60f3: $63
    ld [hl], h                                    ; $60f4: $74
    ld l, a                                       ; $60f5: $6f
    ld [hl], d                                    ; $60f6: $72
    ld a, c                                       ; $60f7: $79
    jr nz, jr_01a_615b                            ; $60f8: $20 $61

jr_01a_60fa:
    ld [hl], h                                    ; $60fa: $74
    jr nz, @+$4e                                  ; $60fb: $20 $4c

jr_01a_60fd:
    ld l, c                                       ; $60fd: $69
    ld l, [hl]                                    ; $60fe: $6e

jr_01a_60ff:
    ld l, e                                       ; $60ff: $6b
    ld [hl], e                                    ; $6100: $73
    ld hl, $0003                                  ; $6101: $21 $03 $00
    ld c, c                                       ; $6104: $49
    ld [hl], h                                    ; $6105: $74
    jr nz, jr_01a_617b                            ; $6106: $20 $73

    ld h, l                                       ; $6108: $65
    ld h, l                                       ; $6109: $65
    ld l, l                                       ; $610a: $6d

jr_01a_610b:
    ld [hl], e                                    ; $610b: $73
    jr nz, @+$7b                                  ; $610c: $20 $79

    ld l, a                                       ; $610e: $6f

jr_01a_610f:
    ld [hl], l                                    ; $610f: $75
    jr nz, jr_01a_6182                            ; $6110: $20 $70

    ld l, h                                       ; $6112: $6c
    ld h, c                                       ; $6113: $61
    ld h, e                                       ; $6114: $63
    ld h, l                                       ; $6115: $65
    ld h, h                                       ; $6116: $64
    ld bc, $6e69                                  ; $6117: $01 $69 $6e
    jr nz, jr_01a_6190                            ; $611a: $20 $74

    ld l, b                                       ; $611c: $68

jr_01a_611d:
    ld h, l                                       ; $611d: $65
    jr nz, jr_01a_616c                            ; $611e: $20 $4c

    ld l, c                                       ; $6120: $69
    ld l, [hl]                                    ; $6121: $6e
    ld l, e                                       ; $6122: $6b
    ld [hl], e                                    ; $6123: $73
    ld bc, $6c43                                  ; $6124: $01 $43 $6c
    ld [hl], l                                    ; $6127: $75
    ld h, d                                       ; $6128: $62
    jr nz, jr_01a_617f                            ; $6129: $20 $54

    ld l, a                                       ; $612b: $6f
    ld [hl], l                                    ; $612c: $75
    ld [hl], d                                    ; $612d: $72
    ld l, [hl]                                    ; $612e: $6e
    ld h, c                                       ; $612f: $61
    ld l, l                                       ; $6130: $6d
    ld h, l                                       ; $6131: $65
    ld l, [hl]                                    ; $6132: $6e
    ld [hl], h                                    ; $6133: $74

jr_01a_6134:
    ld l, $02                                     ; $6134: $2e $02

jr_01a_6136:
    ld d, a                                       ; $6136: $57
    ld l, c                                       ; $6137: $69
    ld l, h                                       ; $6138: $6c
    ld l, h                                       ; $6139: $6c
    jr nz, jr_01a_61b5                            ; $613a: $20 $79

    ld l, a                                       ; $613c: $6f
    ld [hl], l                                    ; $613d: $75
    jr nz, jr_01a_61b3                            ; $613e: $20 $73

    ld l, b                                       ; $6140: $68
    ld l, a                                       ; $6141: $6f
    ld l, a                                       ; $6142: $6f
    ld [hl], h                                    ; $6143: $74
    jr nz, jr_01a_61ac                            ; $6144: $20 $66

    ld l, a                                       ; $6146: $6f
    ld [hl], d                                    ; $6147: $72
    ld bc, $6874                                  ; $6148: $01 $74 $68
    ld h, l                                       ; $614b: $65
    jr nz, jr_01a_6195                            ; $614c: $20 $47

    ld [hl], d                                    ; $614e: $72
    ld h, c                                       ; $614f: $61
    ld l, [hl]                                    ; $6150: $6e
    ld h, h                                       ; $6151: $64
    jr nz, @+$45                                  ; $6152: $20 $43

    ld l, b                                       ; $6154: $68
    ld h, c                                       ; $6155: $61
    ld l, l                                       ; $6156: $6d
    ld [hl], b                                    ; $6157: $70
    ld l, c                                       ; $6158: $69
    ld l, a                                       ; $6159: $6f
    ld l, [hl]                                    ; $615a: $6e

jr_01a_615b:
    ld bc, $656e                                  ; $615b: $01 $6e $65
    ld a, b                                       ; $615e: $78

jr_01a_615f:
    ld [hl], h                                    ; $615f: $74
    ccf                                           ; $6160: $3f
    nop                                           ; $6161: $00
    ld d, h                                       ; $6162: $54
    ld l, b                                       ; $6163: $68
    ld h, l                                       ; $6164: $65
    ld a, c                                       ; $6165: $79
    jr nz, jr_01a_61db                            ; $6166: $20 $73

    ld h, c                                       ; $6168: $61
    ld a, c                                       ; $6169: $79
    jr nz, jr_01a_61e0                            ; $616a: $20 $74

jr_01a_616c:
    ld l, b                                       ; $616c: $68
    ld h, l                                       ; $616d: $65
    jr nz, jr_01a_61bc                            ; $616e: $20 $4c

    ld l, c                                       ; $6170: $69
    ld l, [hl]                                    ; $6171: $6e
    ld l, e                                       ; $6172: $6b
    ld [hl], e                                    ; $6173: $73
    ld bc, $7369                                  ; $6174: $01 $69 $73
    jr nz, jr_01a_61da                            ; $6177: $20 $61

    jr nz, jr_01a_61dd                            ; $6179: $20 $62

jr_01a_617b:
    ld h, c                                       ; $617b: $61
    ld [hl], h                                    ; $617c: $74
    ld [hl], h                                    ; $617d: $74
    ld l, h                                       ; $617e: $6c

jr_01a_617f:
    ld h, l                                       ; $617f: $65
    jr nz, jr_01a_61f9                            ; $6180: $20 $77

jr_01a_6182:
    ld l, c                                       ; $6182: $69
    ld [hl], h                                    ; $6183: $74
    ld l, b                                       ; $6184: $68
    ld bc, $6874                                  ; $6185: $01 $74 $68
    ld h, l                                       ; $6188: $65
    jr nz, jr_01a_6202                            ; $6189: $20 $77

    ld l, c                                       ; $618b: $69
    ld l, [hl]                                    ; $618c: $6e
    ld h, h                                       ; $618d: $64
    ld l, $02                                     ; $618e: $2e $02

jr_01a_6190:
    ld c, c                                       ; $6190: $49
    jr nz, @+$6a                                  ; $6191: $20 $68

    ld h, l                                       ; $6193: $65
    ld h, c                                       ; $6194: $61

jr_01a_6195:
    ld [hl], d                                    ; $6195: $72
    jr nz, jr_01a_6201                            ; $6196: $20 $69

    ld [hl], h                                    ; $6198: $74
    daa                                           ; $6199: $27
    ld [hl], e                                    ; $619a: $73
    jr nz, @+$6a                                  ; $619b: $20 $68

    ld h, c                                       ; $619d: $61
    ld [hl], d                                    ; $619e: $72
    ld h, h                                       ; $619f: $64
    inc l                                         ; $61a0: $2c
    ld bc, $6f73                                  ; $61a1: $01 $73 $6f
    jr nz, jr_01a_620d                            ; $61a4: $20 $67

    ld l, a                                       ; $61a6: $6f
    ld l, a                                       ; $61a7: $6f
    ld h, h                                       ; $61a8: $64
    jr nz, @+$6e                                  ; $61a9: $20 $6c

    ld [hl], l                                    ; $61ab: $75

jr_01a_61ac:
    ld h, e                                       ; $61ac: $63
    ld l, e                                       ; $61ad: $6b
    ld hl, $0003                                  ; $61ae: $21 $03 $00
    ld b, c                                       ; $61b1: $41
    ld l, b                                       ; $61b2: $68

jr_01a_61b3:
    ld l, $2e                                     ; $61b3: $2e $2e

jr_01a_61b5:
    ld l, $54                                     ; $61b5: $2e $54
    ld [hl], d                                    ; $61b7: $72
    ld h, c                                       ; $61b8: $61
    ld l, c                                       ; $61b9: $69
    ld l, [hl]                                    ; $61ba: $6e
    ld l, c                                       ; $61bb: $69

jr_01a_61bc:
    ld l, [hl]                                    ; $61bc: $6e
    ld h, a                                       ; $61bd: $67
    ld bc, $766f                                  ; $61be: $01 $6f $76
    ld h, l                                       ; $61c1: $65
    ld [hl], d                                    ; $61c2: $72
    jr nz, jr_01a_6239                            ; $61c3: $20 $74

    ld l, c                                       ; $61c5: $69
    ld [hl], h                                    ; $61c6: $74
    ld l, h                                       ; $61c7: $6c
    ld h, l                                       ; $61c8: $65
    ld [hl], e                                    ; $61c9: $73
    ld l, $01                                     ; $61ca: $2e $01
    ld c, c                                       ; $61cc: $49
    jr nz, jr_01a_6244                            ; $61cd: $20 $75

    ld l, [hl]                                    ; $61cf: $6e
    ld h, h                                       ; $61d0: $64
    ld h, l                                       ; $61d1: $65
    ld [hl], d                                    ; $61d2: $72
    ld [hl], e                                    ; $61d3: $73
    ld [hl], h                                    ; $61d4: $74
    ld h, c                                       ; $61d5: $61
    ld l, [hl]                                    ; $61d6: $6e
    ld h, h                                       ; $61d7: $64
    ld l, $03                                     ; $61d8: $2e $03

jr_01a_61da:
    nop                                           ; $61da: $00

jr_01a_61db:
    ld b, e                                       ; $61db: $43
    ld l, a                                       ; $61dc: $6f

jr_01a_61dd:
    ld l, [hl]                                    ; $61dd: $6e
    ld h, a                                       ; $61de: $67
    ld [hl], d                                    ; $61df: $72

jr_01a_61e0:
    ld h, c                                       ; $61e0: $61
    ld [hl], h                                    ; $61e1: $74
    ld [hl], l                                    ; $61e2: $75
    ld l, h                                       ; $61e3: $6c
    ld h, c                                       ; $61e4: $61
    ld [hl], h                                    ; $61e5: $74
    ld l, c                                       ; $61e6: $69
    ld l, a                                       ; $61e7: $6f
    ld l, [hl]                                    ; $61e8: $6e
    ld [hl], e                                    ; $61e9: $73
    ld bc, $6e6f                                  ; $61ea: $01 $6f $6e
    jr nz, jr_01a_6268                            ; $61ed: $20 $79

    ld l, a                                       ; $61ef: $6f
    ld [hl], l                                    ; $61f0: $75
    ld [hl], d                                    ; $61f1: $72
    jr nz, jr_01a_626a                            ; $61f2: $20 $76

    ld l, c                                       ; $61f4: $69
    ld h, e                                       ; $61f5: $63
    ld [hl], h                                    ; $61f6: $74
    ld l, a                                       ; $61f7: $6f
    ld [hl], d                                    ; $61f8: $72

jr_01a_61f9:
    ld a, c                                       ; $61f9: $79
    ld bc, $7461                                  ; $61fa: $01 $61 $74
    jr nz, jr_01a_624b                            ; $61fd: $20 $4c

    ld l, c                                       ; $61ff: $69
    ld l, [hl]                                    ; $6200: $6e

jr_01a_6201:
    ld l, e                                       ; $6201: $6b

jr_01a_6202:
    ld [hl], e                                    ; $6202: $73
    ld hl, $4202                                  ; $6203: $21 $02 $42
    ld [hl], l                                    ; $6206: $75
    ld [hl], h                                    ; $6207: $74
    jr nz, jr_01a_626e                            ; $6208: $20 $64

    ld l, a                                       ; $620a: $6f
    ld l, [hl]                                    ; $620b: $6e
    daa                                           ; $620c: $27

jr_01a_620d:
    ld [hl], h                                    ; $620d: $74
    jr nz, jr_01a_6277                            ; $620e: $20 $67

    ld h, l                                       ; $6210: $65
    ld [hl], h                                    ; $6211: $74
    jr nz, jr_01a_6288                            ; $6212: $20 $74

    ld l, a                                       ; $6214: $6f
    ld l, a                                       ; $6215: $6f
    ld bc, $6968                                  ; $6216: $01 $68 $69
    ld h, a                                       ; $6219: $67
    ld l, b                                       ; $621a: $68
    jr nz, @+$63                                  ; $621b: $20 $61

    ld l, [hl]                                    ; $621d: $6e
    ld h, h                                       ; $621e: $64
    jr nz, jr_01a_628e                            ; $621f: $20 $6d

    ld l, c                                       ; $6221: $69
    ld h, a                                       ; $6222: $67
    ld l, b                                       ; $6223: $68
    ld [hl], h                                    ; $6224: $74
    ld a, c                                       ; $6225: $79
    ld l, $01                                     ; $6226: $2e $01
    ld b, d                                       ; $6228: $42
    ld h, l                                       ; $6229: $65
    jr nz, @+$63                                  ; $622a: $20 $61

    jr nz, jr_01a_62a0                            ; $622c: $20 $72

    ld l, a                                       ; $622e: $6f
    ld l, h                                       ; $622f: $6c
    ld h, l                                       ; $6230: $65
    jr nz, jr_01a_62a0                            ; $6231: $20 $6d

    ld l, a                                       ; $6233: $6f
    ld h, h                                       ; $6234: $64
    ld h, l                                       ; $6235: $65
    ld l, h                                       ; $6236: $6c
    ld l, $03                                     ; $6237: $2e $03

jr_01a_6239:
    nop                                           ; $6239: $00
    ld d, b                                       ; $623a: $50
    ld h, l                                       ; $623b: $65
    ld [hl], d                                    ; $623c: $72
    ld l, b                                       ; $623d: $68
    ld h, c                                       ; $623e: $61
    ld [hl], b                                    ; $623f: $70
    ld [hl], e                                    ; $6240: $73
    jr nz, jr_01a_62bc                            ; $6241: $20 $79

    ld l, a                                       ; $6243: $6f

jr_01a_6244:
    ld [hl], l                                    ; $6244: $75
    jr nz, @+$75                                  ; $6245: $20 $73

    ld l, b                                       ; $6247: $68
    ld h, c                                       ; $6248: $61
    ld l, h                                       ; $6249: $6c
    ld l, h                                       ; $624a: $6c

jr_01a_624b:
    ld bc, $6562                                  ; $624b: $01 $62 $65
    ld h, e                                       ; $624e: $63
    ld l, a                                       ; $624f: $6f
    ld l, l                                       ; $6250: $6d
    ld h, l                                       ; $6251: $65
    jr nz, jr_01a_62c8                            ; $6252: $20 $74

    ld l, b                                       ; $6254: $68
    ld h, l                                       ; $6255: $65
    jr nz, jr_01a_62bd                            ; $6256: $20 $65

    ld l, [hl]                                    ; $6258: $6e
    halt                                          ; $6259: $76
    ld a, c                                       ; $625a: $79
    ld bc, $666f                                  ; $625b: $01 $6f $66
    jr nz, jr_01a_62c1                            ; $625e: $20 $61

    ld l, h                                       ; $6260: $6c
    ld l, h                                       ; $6261: $6c
    jr nz, @+$69                                  ; $6262: $20 $67

    ld l, a                                       ; $6264: $6f
    ld l, h                                       ; $6265: $6c
    ld h, [hl]                                    ; $6266: $66
    ld h, l                                       ; $6267: $65

jr_01a_6268:
    ld [hl], d                                    ; $6268: $72
    ld [hl], e                                    ; $6269: $73

jr_01a_626a:
    ld hl, $0003                                  ; $626a: $21 $03 $00
    ld b, e                                       ; $626d: $43

jr_01a_626e:
    ld l, h                                       ; $626e: $6c
    ld [hl], l                                    ; $626f: $75
    ld h, d                                       ; $6270: $62
    jr nz, jr_01a_62c7                            ; $6271: $20 $54

    ld l, a                                       ; $6273: $6f
    ld [hl], l                                    ; $6274: $75
    ld [hl], d                                    ; $6275: $72
    ld l, [hl]                                    ; $6276: $6e

jr_01a_6277:
    ld h, c                                       ; $6277: $61
    ld l, l                                       ; $6278: $6d
    ld h, l                                       ; $6279: $65
    ld l, [hl]                                    ; $627a: $6e
    ld [hl], h                                    ; $627b: $74
    ld bc, $7250                                  ; $627c: $01 $50 $72
    ld h, c                                       ; $627f: $61
    ld h, e                                       ; $6280: $63
    ld [hl], h                                    ; $6281: $74
    ld l, c                                       ; $6282: $69
    ld h, e                                       ; $6283: $63
    ld h, l                                       ; $6284: $65
    jr nz, jr_01a_62d9                            ; $6285: $20 $52

    ld l, a                                       ; $6287: $6f

jr_01a_6288:
    ld [hl], l                                    ; $6288: $75
    ld l, [hl]                                    ; $6289: $6e
    ld h, h                                       ; $628a: $64
    ld bc, $7551                                  ; $628b: $01 $51 $75

jr_01a_628e:
    ld l, c                                       ; $628e: $69
    ld [hl], h                                    ; $628f: $74
    nop                                           ; $6290: $00
    ld e, c                                       ; $6291: $59
    ld l, a                                       ; $6292: $6f
    ld [hl], l                                    ; $6293: $75
    jr nz, jr_01a_630a                            ; $6294: $20 $74

    ld l, b                                       ; $6296: $68
    ld h, l                                       ; $6297: $65
    ld [hl], d                                    ; $6298: $72
    ld h, l                                       ; $6299: $65
    ld hl, $0003                                  ; $629a: $21 $03 $00
    ld d, e                                       ; $629d: $53
    ld [hl], h                                    ; $629e: $74
    ld h, c                                       ; $629f: $61

jr_01a_62a0:
    ld [hl], d                                    ; $62a0: $72
    ld [hl], h                                    ; $62a1: $74
    ld l, c                                       ; $62a2: $69
    ld l, [hl]                                    ; $62a3: $6e
    ld h, a                                       ; $62a4: $67
    jr nz, @+$63                                  ; $62a5: $20 $61

    jr nz, jr_01a_631b                            ; $62a7: $20 $72

    ld l, a                                       ; $62a9: $6f
    ld [hl], l                                    ; $62aa: $75
    ld l, [hl]                                    ; $62ab: $6e
    ld h, h                                       ; $62ac: $64
    ccf                                           ; $62ad: $3f
    nop                                           ; $62ae: $00
    ld b, e                                       ; $62af: $43
    ld h, c                                       ; $62b0: $61
    ld l, h                                       ; $62b1: $6c
    ld l, h                                       ; $62b2: $6c
    jr nz, jr_01a_6322                            ; $62b3: $20 $6d

    ld h, l                                       ; $62b5: $65
    jr nz, jr_01a_6321                            ; $62b6: $20 $69

    ld h, [hl]                                    ; $62b8: $66
    jr nz, jr_01a_6334                            ; $62b9: $20 $79

    ld l, a                                       ; $62bb: $6f

jr_01a_62bc:
    ld [hl], l                                    ; $62bc: $75

jr_01a_62bd:
    ld bc, $6177                                  ; $62bd: $01 $77 $61
    ld l, [hl]                                    ; $62c0: $6e

jr_01a_62c1:
    ld [hl], h                                    ; $62c1: $74
    jr nz, jr_01a_6338                            ; $62c2: $20 $74

    ld l, a                                       ; $62c4: $6f
    jr nz, jr_01a_6337                            ; $62c5: $20 $70

jr_01a_62c7:
    ld l, h                                       ; $62c7: $6c

jr_01a_62c8:
    ld h, c                                       ; $62c8: $61
    ld a, c                                       ; $62c9: $79
    ld l, $03                                     ; $62ca: $2e $03
    nop                                           ; $62cc: $00
    ld d, a                                       ; $62cd: $57
    ld h, l                                       ; $62ce: $65
    ld l, h                                       ; $62cf: $6c
    ld l, h                                       ; $62d0: $6c
    jr nz, jr_01a_6347                            ; $62d1: $20 $74

    ld l, b                                       ; $62d3: $68
    ld h, l                                       ; $62d4: $65
    ld l, [hl]                                    ; $62d5: $6e
    inc l                                         ; $62d6: $2c
    jr nz, jr_01a_6340                            ; $62d7: $20 $67

jr_01a_62d9:
    ld l, a                                       ; $62d9: $6f
    ld bc, $6861                                  ; $62da: $01 $61 $68
    ld h, l                                       ; $62dd: $65
    ld h, c                                       ; $62de: $61
    ld h, h                                       ; $62df: $64
    jr nz, @+$63                                  ; $62e0: $20 $61

    ld l, [hl]                                    ; $62e2: $6e
    ld h, h                                       ; $62e3: $64
    jr nz, jr_01a_6359                            ; $62e4: $20 $73

    ld [hl], h                                    ; $62e6: $74
    ld h, c                                       ; $62e7: $61
    ld [hl], d                                    ; $62e8: $72
    ld [hl], h                                    ; $62e9: $74
    ld bc, $7266                                  ; $62ea: $01 $66 $72
    ld l, a                                       ; $62ed: $6f
    ld l, l                                       ; $62ee: $6d
    jr nz, @+$4a                                  ; $62ef: $20 $48

    ld l, a                                       ; $62f1: $6f
    ld l, h                                       ; $62f2: $6c
    ld h, l                                       ; $62f3: $65
    jr nz, @+$33                                  ; $62f4: $20 $31

    ld l, $03                                     ; $62f6: $2e $03
    nop                                           ; $62f8: $00
    ld d, h                                       ; $62f9: $54
    ld l, b                                       ; $62fa: $68
    ld l, c                                       ; $62fb: $69
    ld [hl], e                                    ; $62fc: $73
    jr nz, jr_01a_6368                            ; $62fd: $20 $69

    ld [hl], e                                    ; $62ff: $73
    jr nz, jr_01a_630d                            ; $6300: $20 $0b

    jr nz, jr_01a_6347                            ; $6302: $20 $43

    ld l, h                                       ; $6304: $6c
    ld [hl], l                                    ; $6305: $75
    ld h, d                                       ; $6306: $62
    ld l, $01                                     ; $6307: $2e $01
    ld d, a                                       ; $6309: $57

jr_01a_630a:
    ld h, c                                       ; $630a: $61
    ld l, [hl]                                    ; $630b: $6e
    ld [hl], h                                    ; $630c: $74

jr_01a_630d:
    jr nz, jr_01a_6383                            ; $630d: $20 $74

    ld l, a                                       ; $630f: $6f
    jr nz, jr_01a_6382                            ; $6310: $20 $70

    ld l, h                                       ; $6312: $6c
    ld h, c                                       ; $6313: $61
    ld a, c                                       ; $6314: $79
    jr nz, jr_01a_637e                            ; $6315: $20 $67

    ld l, a                                       ; $6317: $6f
    ld l, h                                       ; $6318: $6c
    ld h, [hl]                                    ; $6319: $66
    ccf                                           ; $631a: $3f

jr_01a_631b:
    inc bc                                        ; $631b: $03
    nop                                           ; $631c: $00
    ld c, c                                       ; $631d: $49
    ld h, [hl]                                    ; $631e: $66
    jr nz, jr_01a_639a                            ; $631f: $20 $79

jr_01a_6321:
    ld l, a                                       ; $6321: $6f

jr_01a_6322:
    ld [hl], l                                    ; $6322: $75
    daa                                           ; $6323: $27
    ld [hl], d                                    ; $6324: $72
    ld h, l                                       ; $6325: $65
    jr nz, @+$70                                  ; $6326: $20 $6e

    ld l, a                                       ; $6328: $6f
    ld [hl], h                                    ; $6329: $74
    jr nz, @+$63                                  ; $632a: $20 $61

    ld bc, $6c70                                  ; $632c: $01 $70 $6c
    ld h, c                                       ; $632f: $61
    ld a, c                                       ; $6330: $79
    ld h, l                                       ; $6331: $65
    ld [hl], d                                    ; $6332: $72
    inc l                                         ; $6333: $2c

jr_01a_6334:
    jr nz, jr_01a_63af                            ; $6334: $20 $79

    ld l, a                                       ; $6336: $6f

jr_01a_6337:
    ld [hl], l                                    ; $6337: $75

jr_01a_6338:
    jr nz, jr_01a_639d                            ; $6338: $20 $63

    ld h, c                                       ; $633a: $61
    ld l, [hl]                                    ; $633b: $6e
    daa                                           ; $633c: $27
    ld [hl], h                                    ; $633d: $74
    jr nz, jr_01a_63a7                            ; $633e: $20 $67

jr_01a_6340:
    ld l, a                                       ; $6340: $6f
    ld bc, $6e6f                                  ; $6341: $01 $6f $6e
    jr nz, jr_01a_63ba                            ; $6344: $20 $74

    ld l, b                                       ; $6346: $68

jr_01a_6347:
    ld h, l                                       ; $6347: $65
    jr nz, @+$65                                  ; $6348: $20 $63

    ld l, a                                       ; $634a: $6f
    ld [hl], l                                    ; $634b: $75
    ld [hl], d                                    ; $634c: $72
    ld [hl], e                                    ; $634d: $73
    ld h, l                                       ; $634e: $65
    ld l, $03                                     ; $634f: $2e $03
    nop                                           ; $6351: $00
    ld d, e                                       ; $6352: $53
    ld l, c                                       ; $6353: $69
    ld l, [hl]                                    ; $6354: $6e
    ld h, e                                       ; $6355: $63
    ld h, l                                       ; $6356: $65
    jr nz, jr_01a_63d2                            ; $6357: $20 $79

jr_01a_6359:
    ld l, a                                       ; $6359: $6f
    ld [hl], l                                    ; $635a: $75
    daa                                           ; $635b: $27
    ld [hl], d                                    ; $635c: $72
    ld h, l                                       ; $635d: $65
    jr nz, jr_01a_63ce                            ; $635e: $20 $6e

    ld l, a                                       ; $6360: $6f
    ld [hl], h                                    ; $6361: $74
    ld bc, $7571                                  ; $6362: $01 $71 $75
    ld h, c                                       ; $6365: $61
    ld l, h                                       ; $6366: $6c
    ld l, c                                       ; $6367: $69

jr_01a_6368:
    ld h, [hl]                                    ; $6368: $66
    ld l, c                                       ; $6369: $69
    ld h, l                                       ; $636a: $65
    ld h, h                                       ; $636b: $64
    jr nz, jr_01a_63d4                            ; $636c: $20 $66

    ld l, a                                       ; $636e: $6f
    ld [hl], d                                    ; $636f: $72
    jr nz, jr_01a_63e6                            ; $6370: $20 $74

    ld l, b                                       ; $6372: $68
    ld h, l                                       ; $6373: $65
    jr nz, jr_01a_63ea                            ; $6374: $20 $74

    ld l, a                                       ; $6376: $6f
    ld [hl], l                                    ; $6377: $75
    ld [hl], d                                    ; $6378: $72
    ld l, [hl]                                    ; $6379: $6e
    ld h, c                                       ; $637a: $61
    ld l, l                                       ; $637b: $6d
    ld h, l                                       ; $637c: $65
    ld l, [hl]                                    ; $637d: $6e

jr_01a_637e:
    ld [hl], h                                    ; $637e: $74
    inc l                                         ; $637f: $2c
    ld [bc], a                                    ; $6380: $02
    ld l, b                                       ; $6381: $68

jr_01a_6382:
    ld l, a                                       ; $6382: $6f

jr_01a_6383:
    ld [hl], a                                    ; $6383: $77
    jr nz, jr_01a_63e7                            ; $6384: $20 $61

    ld h, d                                       ; $6386: $62
    ld l, a                                       ; $6387: $6f
    ld [hl], l                                    ; $6388: $75
    ld [hl], h                                    ; $6389: $74
    jr nz, jr_01a_63ed                            ; $638a: $20 $61

    ld bc, $7270                                  ; $638c: $01 $70 $72
    ld h, c                                       ; $638f: $61
    ld h, e                                       ; $6390: $63
    ld [hl], h                                    ; $6391: $74
    ld l, c                                       ; $6392: $69
    ld h, e                                       ; $6393: $63
    ld h, l                                       ; $6394: $65
    jr nz, @+$74                                  ; $6395: $20 $72

    ld l, a                                       ; $6397: $6f
    ld [hl], l                                    ; $6398: $75
    ld l, [hl]                                    ; $6399: $6e

jr_01a_639a:
    ld h, h                                       ; $639a: $64
    ccf                                           ; $639b: $3f
    nop                                           ; $639c: $00

jr_01a_639d:
    ld c, a                                       ; $639d: $4f
    ld l, [hl]                                    ; $639e: $6e
    ld l, h                                       ; $639f: $6c
    ld a, c                                       ; $63a0: $79
    jr nz, jr_01a_6414                            ; $63a1: $20 $71

    ld [hl], l                                    ; $63a3: $75
    ld h, c                                       ; $63a4: $61
    ld l, h                                       ; $63a5: $6c
    ld l, c                                       ; $63a6: $69

jr_01a_63a7:
    ld h, [hl]                                    ; $63a7: $66
    ld l, c                                       ; $63a8: $69
    ld h, l                                       ; $63a9: $65
    ld h, h                                       ; $63aa: $64
    ld bc, $6f67                                  ; $63ab: $01 $67 $6f
    ld l, h                                       ; $63ae: $6c

jr_01a_63af:
    ld h, [hl]                                    ; $63af: $66
    ld h, l                                       ; $63b0: $65
    ld [hl], d                                    ; $63b1: $72
    ld [hl], e                                    ; $63b2: $73
    jr nz, jr_01a_6418                            ; $63b3: $20 $63

    ld h, c                                       ; $63b5: $61
    ld l, [hl]                                    ; $63b6: $6e
    jr nz, jr_01a_641e                            ; $63b7: $20 $65

    ld l, [hl]                                    ; $63b9: $6e

jr_01a_63ba:
    ld [hl], h                                    ; $63ba: $74
    ld h, l                                       ; $63bb: $65
    ld [hl], d                                    ; $63bc: $72
    ld bc, $6874                                  ; $63bd: $01 $74 $68
    ld h, l                                       ; $63c0: $65
    jr nz, jr_01a_6437                            ; $63c1: $20 $74

    ld l, a                                       ; $63c3: $6f
    ld [hl], l                                    ; $63c4: $75
    ld [hl], d                                    ; $63c5: $72
    ld l, [hl]                                    ; $63c6: $6e
    ld h, c                                       ; $63c7: $61
    ld l, l                                       ; $63c8: $6d
    ld h, l                                       ; $63c9: $65
    ld l, [hl]                                    ; $63ca: $6e
    ld [hl], h                                    ; $63cb: $74
    ld l, $03                                     ; $63cc: $2e $03

jr_01a_63ce:
    nop                                           ; $63ce: $00
    ld e, c                                       ; $63cf: $59
    ld l, a                                       ; $63d0: $6f
    ld [hl], l                                    ; $63d1: $75

jr_01a_63d2:
    jr nz, jr_01a_6437                            ; $63d2: $20 $63

jr_01a_63d4:
    ld h, c                                       ; $63d4: $61
    ld l, [hl]                                    ; $63d5: $6e
    jr nz, @+$72                                  ; $63d6: $20 $70

    ld l, h                                       ; $63d8: $6c
    ld h, c                                       ; $63d9: $61
    ld a, c                                       ; $63da: $79
    jr nz, jr_01a_643e                            ; $63db: $20 $61

    ld bc, $6f72                                  ; $63dd: $01 $72 $6f
    ld [hl], l                                    ; $63e0: $75
    ld l, [hl]                                    ; $63e1: $6e
    ld h, h                                       ; $63e2: $64
    jr nz, jr_01a_6446                            ; $63e3: $20 $61

    ld l, [hl]                                    ; $63e5: $6e

jr_01a_63e6:
    ld a, c                                       ; $63e6: $79

jr_01a_63e7:
    ld [hl], h                                    ; $63e7: $74
    ld l, c                                       ; $63e8: $69
    ld l, l                                       ; $63e9: $6d

jr_01a_63ea:
    ld h, l                                       ; $63ea: $65
    ld l, $01                                     ; $63eb: $2e $01

jr_01a_63ed:
    ld d, a                                       ; $63ed: $57
    ld l, c                                       ; $63ee: $69
    ld l, h                                       ; $63ef: $6c
    ld l, h                                       ; $63f0: $6c
    jr nz, jr_01a_646c                            ; $63f1: $20 $79

    ld l, a                                       ; $63f3: $6f
    ld [hl], l                                    ; $63f4: $75
    jr nz, jr_01a_646a                            ; $63f5: $20 $73

    ld [hl], h                                    ; $63f7: $74
    ld h, c                                       ; $63f8: $61
    ld [hl], d                                    ; $63f9: $72
    ld [hl], h                                    ; $63fa: $74
    jr nz, jr_01a_646b                            ; $63fb: $20 $6e

    ld l, a                                       ; $63fd: $6f
    ld [hl], a                                    ; $63fe: $77
    ccf                                           ; $63ff: $3f
    nop                                           ; $6400: $00
    ld e, c                                       ; $6401: $59
    ld l, a                                       ; $6402: $6f
    ld [hl], l                                    ; $6403: $75
    jr nz, jr_01a_6469                            ; $6404: $20 $63

    ld h, c                                       ; $6406: $61
    ld l, [hl]                                    ; $6407: $6e
    jr nz, jr_01a_647a                            ; $6408: $20 $70

    ld l, h                                       ; $640a: $6c
    ld h, c                                       ; $640b: $61
    ld a, c                                       ; $640c: $79
    jr nz, jr_01a_6470                            ; $640d: $20 $61

    ld bc, $7270                                  ; $640f: $01 $70 $72
    ld h, c                                       ; $6412: $61
    ld h, e                                       ; $6413: $63

jr_01a_6414:
    ld [hl], h                                    ; $6414: $74
    ld l, c                                       ; $6415: $69
    ld h, e                                       ; $6416: $63
    ld h, l                                       ; $6417: $65

jr_01a_6418:
    jr nz, @+$74                                  ; $6418: $20 $72

    ld l, a                                       ; $641a: $6f
    ld [hl], l                                    ; $641b: $75
    ld l, [hl]                                    ; $641c: $6e
    ld h, h                                       ; $641d: $64

jr_01a_641e:
    ld bc, $6661                                  ; $641e: $01 $61 $66
    ld [hl], h                                    ; $6421: $74
    ld h, l                                       ; $6422: $65
    ld [hl], d                                    ; $6423: $72
    jr nz, @+$76                                  ; $6424: $20 $74

    ld l, b                                       ; $6426: $68
    ld h, l                                       ; $6427: $65
    ld a, c                                       ; $6428: $79
    jr nz, @+$75                                  ; $6429: $20 $73

    ld [hl], h                                    ; $642b: $74
    ld h, c                                       ; $642c: $61
    ld [hl], d                                    ; $642d: $72
    ld [hl], h                                    ; $642e: $74
    ld l, $02                                     ; $642f: $2e $02
    ld d, a                                       ; $6431: $57
    ld l, c                                       ; $6432: $69
    ld l, h                                       ; $6433: $6c
    ld l, h                                       ; $6434: $6c
    jr nz, jr_01a_64b0                            ; $6435: $20 $79

jr_01a_6437:
    ld l, a                                       ; $6437: $6f
    ld [hl], l                                    ; $6438: $75
    jr nz, jr_01a_64ae                            ; $6439: $20 $73

    ld [hl], h                                    ; $643b: $74
    ld h, c                                       ; $643c: $61
    ld [hl], d                                    ; $643d: $72

jr_01a_643e:
    ld [hl], h                                    ; $643e: $74
    jr nz, jr_01a_64af                            ; $643f: $20 $6e

    ld l, a                                       ; $6441: $6f
    ld [hl], a                                    ; $6442: $77
    ccf                                           ; $6443: $3f
    nop                                           ; $6444: $00
    ld c, a                                       ; $6445: $4f

jr_01a_6446:
    ld c, e                                       ; $6446: $4b
    ld l, $20                                     ; $6447: $2e $20
    ld c, a                                       ; $6449: $4f
    ld l, [hl]                                    ; $644a: $6e
    ld h, e                                       ; $644b: $63
    ld h, l                                       ; $644c: $65
    jr nz, @+$76                                  ; $644d: $20 $74

    ld l, b                                       ; $644f: $68
    ld h, l                                       ; $6450: $65
    ld a, c                                       ; $6451: $79
    ld bc, $6966                                  ; $6452: $01 $66 $69
    ld l, [hl]                                    ; $6455: $6e
    ld l, c                                       ; $6456: $69
    ld [hl], e                                    ; $6457: $73
    ld l, b                                       ; $6458: $68
    jr nz, jr_01a_64a3                            ; $6459: $20 $48

    ld l, a                                       ; $645b: $6f
    ld l, h                                       ; $645c: $6c
    ld h, l                                       ; $645d: $65
    jr nz, jr_01a_6491                            ; $645e: $20 $31

    inc l                                         ; $6460: $2c
    ld bc, $7473                                  ; $6461: $01 $73 $74
    ld h, c                                       ; $6464: $61
    ld [hl], d                                    ; $6465: $72
    ld [hl], h                                    ; $6466: $74
    jr nz, @+$7b                                  ; $6467: $20 $79

jr_01a_6469:
    ld l, a                                       ; $6469: $6f

jr_01a_646a:
    ld [hl], l                                    ; $646a: $75

jr_01a_646b:
    ld [hl], d                                    ; $646b: $72

jr_01a_646c:
    jr nz, @+$74                                  ; $646c: $20 $72

    ld l, a                                       ; $646e: $6f
    ld [hl], l                                    ; $646f: $75

jr_01a_6470:
    ld l, [hl]                                    ; $6470: $6e
    ld h, h                                       ; $6471: $64
    ld l, $03                                     ; $6472: $2e $03
    nop                                           ; $6474: $00
    ld e, c                                       ; $6475: $59
    ld l, a                                       ; $6476: $6f
    ld [hl], l                                    ; $6477: $75
    daa                                           ; $6478: $27
    ld [hl], d                                    ; $6479: $72

jr_01a_647a:
    ld h, l                                       ; $647a: $65
    jr nz, jr_01a_64ee                            ; $647b: $20 $71

    ld [hl], l                                    ; $647d: $75
    ld h, c                                       ; $647e: $61
    ld l, h                                       ; $647f: $6c
    ld l, c                                       ; $6480: $69
    ld h, [hl]                                    ; $6481: $66
    ld l, c                                       ; $6482: $69
    ld h, l                                       ; $6483: $65
    ld h, h                                       ; $6484: $64
    inc l                                         ; $6485: $2c
    jr nz, jr_01a_64ea                            ; $6486: $20 $62

    ld [hl], l                                    ; $6488: $75
    ld [hl], h                                    ; $6489: $74
    ld bc, $6977                                  ; $648a: $01 $77 $69
    ld l, h                                       ; $648d: $6c
    ld l, h                                       ; $648e: $6c
    jr nz, jr_01a_650a                            ; $648f: $20 $79

jr_01a_6491:
    ld l, a                                       ; $6491: $6f
    ld [hl], l                                    ; $6492: $75
    jr nz, jr_01a_64fa                            ; $6493: $20 $65

    ld l, [hl]                                    ; $6495: $6e
    ld [hl], h                                    ; $6496: $74
    ld h, l                                       ; $6497: $65
    ld [hl], d                                    ; $6498: $72
    jr nz, jr_01a_650a                            ; $6499: $20 $6f

    ld [hl], l                                    ; $649b: $75
    ld [hl], d                                    ; $649c: $72
    ld bc, $6f74                                  ; $649d: $01 $74 $6f
    ld [hl], l                                    ; $64a0: $75
    ld [hl], d                                    ; $64a1: $72
    ld l, [hl]                                    ; $64a2: $6e

jr_01a_64a3:
    ld h, c                                       ; $64a3: $61
    ld l, l                                       ; $64a4: $6d
    ld h, l                                       ; $64a5: $65
    ld l, [hl]                                    ; $64a6: $6e
    ld [hl], h                                    ; $64a7: $74
    ccf                                           ; $64a8: $3f
    nop                                           ; $64a9: $00
    ld c, a                                       ; $64aa: $4f
    ld l, b                                       ; $64ab: $68
    ld l, $20                                     ; $64ac: $2e $20

jr_01a_64ae:
    ld c, b                                       ; $64ae: $48

jr_01a_64af:
    ld l, a                                       ; $64af: $6f

jr_01a_64b0:
    ld [hl], a                                    ; $64b0: $77
    jr nz, jr_01a_6514                            ; $64b1: $20 $61

    ld h, d                                       ; $64b3: $62
    ld l, a                                       ; $64b4: $6f
    ld [hl], l                                    ; $64b5: $75
    ld [hl], h                                    ; $64b6: $74
    ld bc, $2061                                  ; $64b7: $01 $61 $20
    ld [hl], b                                    ; $64ba: $70
    ld [hl], d                                    ; $64bb: $72
    ld h, c                                       ; $64bc: $61
    ld h, e                                       ; $64bd: $63
    ld [hl], h                                    ; $64be: $74
    ld l, c                                       ; $64bf: $69
    ld h, e                                       ; $64c0: $63
    ld h, l                                       ; $64c1: $65
    jr nz, jr_01a_6536                            ; $64c2: $20 $72

    ld l, a                                       ; $64c4: $6f
    ld [hl], l                                    ; $64c5: $75
    ld l, [hl]                                    ; $64c6: $6e
    ld h, h                                       ; $64c7: $64
    ccf                                           ; $64c8: $3f
    nop                                           ; $64c9: $00
    ld d, a                                       ; $64ca: $57
    ld h, l                                       ; $64cb: $65
    ld l, h                                       ; $64cc: $6c
    ld l, h                                       ; $64cd: $6c
    inc l                                         ; $64ce: $2c
    jr nz, jr_01a_6545                            ; $64cf: $20 $74

    ld l, b                                       ; $64d1: $68
    ld h, l                                       ; $64d2: $65
    jr nz, jr_01a_6541                            ; $64d3: $20 $6c

    ld h, c                                       ; $64d5: $61
    ld [hl], e                                    ; $64d6: $73
    ld [hl], h                                    ; $64d7: $74
    jr nz, jr_01a_6541                            ; $64d8: $20 $67

    ld [hl], d                                    ; $64da: $72
    ld l, a                                       ; $64db: $6f
    ld [hl], l                                    ; $64dc: $75
    ld [hl], b                                    ; $64dd: $70
    ld bc, $7369                                  ; $64de: $01 $69 $73
    jr nz, jr_01a_654d                            ; $64e1: $20 $6a

    ld [hl], l                                    ; $64e3: $75
    ld [hl], e                                    ; $64e4: $73
    ld [hl], h                                    ; $64e5: $74
    jr nz, @+$69                                  ; $64e6: $20 $67

    ld h, l                                       ; $64e8: $65
    ld [hl], h                                    ; $64e9: $74

jr_01a_64ea:
    ld [hl], h                                    ; $64ea: $74
    ld l, c                                       ; $64eb: $69
    ld l, [hl]                                    ; $64ec: $6e
    ld h, a                                       ; $64ed: $67

jr_01a_64ee:
    ld bc, $7473                                  ; $64ee: $01 $73 $74
    ld h, c                                       ; $64f1: $61
    ld [hl], d                                    ; $64f2: $72
    ld [hl], h                                    ; $64f3: $74
    ld h, l                                       ; $64f4: $65
    ld h, h                                       ; $64f5: $64
    ld l, $2e                                     ; $64f6: $2e $2e
    ld l, $03                                     ; $64f8: $2e $03

jr_01a_64fa:
    nop                                           ; $64fa: $00
    ld d, h                                       ; $64fb: $54
    ld l, b                                       ; $64fc: $68
    ld h, l                                       ; $64fd: $65
    jr nz, jr_01a_6566                            ; $64fe: $20 $66

    ld l, c                                       ; $6500: $69
    ld l, [hl]                                    ; $6501: $6e
    ld h, c                                       ; $6502: $61
    ld l, h                                       ; $6503: $6c
    jr nz, jr_01a_656d                            ; $6504: $20 $67

    ld [hl], d                                    ; $6506: $72
    ld l, a                                       ; $6507: $6f
    ld [hl], l                                    ; $6508: $75
    ld [hl], b                                    ; $6509: $70

jr_01a_650a:
    ld bc, $7369                                  ; $650a: $01 $69 $73
    jr nz, jr_01a_657d                            ; $650d: $20 $6e

    ld l, a                                       ; $650f: $6f
    ld [hl], a                                    ; $6510: $77
    jr nz, @+$64                                  ; $6511: $20 $62

    ld h, l                                       ; $6513: $65

jr_01a_6514:
    ld h, a                                       ; $6514: $67
    ld l, c                                       ; $6515: $69
    ld l, [hl]                                    ; $6516: $6e
    ld l, [hl]                                    ; $6517: $6e
    ld l, c                                       ; $6518: $69
    ld l, [hl]                                    ; $6519: $6e
    ld h, a                                       ; $651a: $67
    ld bc, $6874                                  ; $651b: $01 $74 $68
    ld h, l                                       ; $651e: $65
    jr nz, jr_01a_6595                            ; $651f: $20 $74

    ld l, a                                       ; $6521: $6f
    ld [hl], l                                    ; $6522: $75
    ld [hl], d                                    ; $6523: $72
    ld l, [hl]                                    ; $6524: $6e
    ld h, c                                       ; $6525: $61
    ld l, l                                       ; $6526: $6d
    ld h, l                                       ; $6527: $65
    ld l, [hl]                                    ; $6528: $6e
    ld [hl], h                                    ; $6529: $74
    ld l, $03                                     ; $652a: $2e $03
    nop                                           ; $652c: $00
    ld d, h                                       ; $652d: $54
    ld l, b                                       ; $652e: $68
    ld h, l                                       ; $652f: $65
    ld a, c                                       ; $6530: $79
    daa                                           ; $6531: $27
    ld [hl], d                                    ; $6532: $72
    ld h, l                                       ; $6533: $65
    jr nz, @+$63                                  ; $6534: $20 $61

jr_01a_6536:
    ld h, d                                       ; $6536: $62
    ld l, a                                       ; $6537: $6f
    ld [hl], l                                    ; $6538: $75
    ld [hl], h                                    ; $6539: $74
    jr nz, jr_01a_65b0                            ; $653a: $20 $74

    ld l, a                                       ; $653c: $6f
    ld bc, $7473                                  ; $653d: $01 $73 $74
    ld h, c                                       ; $6540: $61

jr_01a_6541:
    ld [hl], d                                    ; $6541: $72
    ld [hl], h                                    ; $6542: $74
    ld l, $20                                     ; $6543: $2e $20

jr_01a_6545:
    ld b, a                                       ; $6545: $47
    ld l, a                                       ; $6546: $6f
    ld l, a                                       ; $6547: $6f
    ld h, h                                       ; $6548: $64
    jr nz, jr_01a_65b7                            ; $6549: $20 $6c

    ld [hl], l                                    ; $654b: $75
    ld h, e                                       ; $654c: $63

jr_01a_654d:
    ld l, e                                       ; $654d: $6b
    ld hl, $0003                                  ; $654e: $21 $03 $00
    ld d, h                                       ; $6551: $54
    ld l, b                                       ; $6552: $68
    ld h, c                                       ; $6553: $61
    ld l, [hl]                                    ; $6554: $6e
    ld l, e                                       ; $6555: $6b
    jr nz, jr_01a_65d1                            ; $6556: $20 $79

    ld l, a                                       ; $6558: $6f
    ld [hl], l                                    ; $6559: $75
    jr nz, @+$63                                  ; $655a: $20 $61

    ld l, h                                       ; $655c: $6c
    ld l, h                                       ; $655d: $6c
    jr nz, jr_01a_65c6                            ; $655e: $20 $66

    ld l, a                                       ; $6560: $6f
    ld [hl], d                                    ; $6561: $72
    ld bc, $6177                                  ; $6562: $01 $77 $61
    ld l, c                                       ; $6565: $69

jr_01a_6566:
    ld [hl], h                                    ; $6566: $74
    ld l, c                                       ; $6567: $69
    ld l, [hl]                                    ; $6568: $6e
    ld h, a                                       ; $6569: $67
    ld l, $20                                     ; $656a: $2e $20
    ld b, c                                       ; $656c: $41

jr_01a_656d:
    ld [hl], h                                    ; $656d: $74
    jr nz, jr_01a_65dc                            ; $656e: $20 $6c

    ld h, c                                       ; $6570: $61
    ld [hl], e                                    ; $6571: $73
    ld [hl], h                                    ; $6572: $74
    inc l                                         ; $6573: $2c
    ld bc, $7469                                  ; $6574: $01 $69 $74
    daa                                           ; $6577: $27
    ld [hl], e                                    ; $6578: $73
    jr nz, jr_01a_65ef                            ; $6579: $20 $74

    ld l, b                                       ; $657b: $68
    ld h, l                                       ; $657c: $65

jr_01a_657d:
    jr nz, @+$75                                  ; $657d: $20 $73

    ld [hl], h                                    ; $657f: $74
    ld h, c                                       ; $6580: $61
    ld [hl], d                                    ; $6581: $72
    ld [hl], h                                    ; $6582: $74
    ld l, $03                                     ; $6583: $2e $03
    nop                                           ; $6585: $00
    ld d, a                                       ; $6586: $57
    ld l, c                                       ; $6587: $69
    ld l, h                                       ; $6588: $6c
    ld l, h                                       ; $6589: $6c
    jr nz, jr_01a_6605                            ; $658a: $20 $79

    ld l, a                                       ; $658c: $6f
    ld [hl], l                                    ; $658d: $75
    jr nz, jr_01a_6600                            ; $658e: $20 $70

    ld l, h                                       ; $6590: $6c
    ld h, c                                       ; $6591: $61
    ld a, c                                       ; $6592: $79
    jr nz, jr_01a_65f6                            ; $6593: $20 $61

jr_01a_6595:
    ld bc, $614d                                  ; $6595: $01 $4d $61
    ld [hl], h                                    ; $6598: $74
    ld h, e                                       ; $6599: $63
    ld l, b                                       ; $659a: $68
    jr nz, jr_01a_65e4                            ; $659b: $20 $47

    ld h, c                                       ; $659d: $61
    ld l, l                                       ; $659e: $6d
    ld h, l                                       ; $659f: $65
    jr nz, jr_01a_6603                            ; $65a0: $20 $61

    ld [hl], h                                    ; $65a2: $74
    ld bc, $200b                                  ; $65a3: $01 $0b $20
    ld b, e                                       ; $65a6: $43
    ld l, h                                       ; $65a7: $6c
    ld [hl], l                                    ; $65a8: $75
    ld h, d                                       ; $65a9: $62
    ccf                                           ; $65aa: $3f
    nop                                           ; $65ab: $00
    ld c, a                                       ; $65ac: $4f
    ld l, [hl]                                    ; $65ad: $6e
    ld l, h                                       ; $65ae: $6c
    ld a, c                                       ; $65af: $79

jr_01a_65b0:
    jr nz, jr_01a_6622                            ; $65b0: $20 $70

    ld l, h                                       ; $65b2: $6c
    ld h, c                                       ; $65b3: $61
    ld a, c                                       ; $65b4: $79
    ld h, l                                       ; $65b5: $65
    ld [hl], d                                    ; $65b6: $72

jr_01a_65b7:
    ld [hl], e                                    ; $65b7: $73
    jr nz, @+$65                                  ; $65b8: $20 $63

    ld h, c                                       ; $65ba: $61
    ld l, [hl]                                    ; $65bb: $6e
    ld bc, $6f67                                  ; $65bc: $01 $67 $6f
    jr nz, @+$71                                  ; $65bf: $20 $6f

    ld l, [hl]                                    ; $65c1: $6e
    jr nz, jr_01a_6638                            ; $65c2: $20 $74

    ld l, b                                       ; $65c4: $68
    ld h, l                                       ; $65c5: $65

jr_01a_65c6:
    jr nz, jr_01a_662b                            ; $65c6: $20 $63

    ld l, a                                       ; $65c8: $6f
    ld [hl], l                                    ; $65c9: $75
    ld [hl], d                                    ; $65ca: $72
    ld [hl], e                                    ; $65cb: $73
    ld h, l                                       ; $65cc: $65
    ld l, $03                                     ; $65cd: $2e $03
    nop                                           ; $65cf: $00
    ld e, c                                       ; $65d0: $59

jr_01a_65d1:
    ld l, a                                       ; $65d1: $6f
    ld [hl], l                                    ; $65d2: $75
    jr nz, jr_01a_6638                            ; $65d3: $20 $63

    ld h, c                                       ; $65d5: $61
    ld l, [hl]                                    ; $65d6: $6e
    jr nz, jr_01a_6649                            ; $65d7: $20 $70

    ld l, h                                       ; $65d9: $6c
    ld h, c                                       ; $65da: $61
    ld a, c                                       ; $65db: $79

jr_01a_65dc:
    jr nz, jr_01a_663f                            ; $65dc: $20 $61

    ld bc, $614d                                  ; $65de: $01 $4d $61
    ld [hl], h                                    ; $65e1: $74
    ld h, e                                       ; $65e2: $63
    ld l, b                                       ; $65e3: $68

jr_01a_65e4:
    jr nz, @+$49                                  ; $65e4: $20 $47

    ld h, c                                       ; $65e6: $61
    ld l, l                                       ; $65e7: $6d
    ld h, l                                       ; $65e8: $65
    jr nz, jr_01a_664c                            ; $65e9: $20 $61

    ld l, [hl]                                    ; $65eb: $6e
    ld a, c                                       ; $65ec: $79
    ld [hl], h                                    ; $65ed: $74
    ld l, c                                       ; $65ee: $69

jr_01a_65ef:
    ld l, l                                       ; $65ef: $6d
    ld h, l                                       ; $65f0: $65
    ld l, $01                                     ; $65f1: $2e $01
    ld d, a                                       ; $65f3: $57
    ld l, c                                       ; $65f4: $69
    ld l, h                                       ; $65f5: $6c

jr_01a_65f6:
    ld l, h                                       ; $65f6: $6c
    jr nz, jr_01a_6672                            ; $65f7: $20 $79

    ld l, a                                       ; $65f9: $6f
    ld [hl], l                                    ; $65fa: $75
    jr nz, jr_01a_666d                            ; $65fb: $20 $70

    ld l, h                                       ; $65fd: $6c
    ld h, c                                       ; $65fe: $61
    ld a, c                                       ; $65ff: $79

jr_01a_6600:
    ccf                                           ; $6600: $3f
    nop                                           ; $6601: $00
    ld d, a                                       ; $6602: $57

jr_01a_6603:
    ld l, b                                       ; $6603: $68
    ld h, l                                       ; $6604: $65

jr_01a_6605:
    ld l, [hl]                                    ; $6605: $6e
    jr nz, jr_01a_6681                            ; $6606: $20 $79

    ld l, a                                       ; $6608: $6f
    ld [hl], l                                    ; $6609: $75
    jr nz, jr_01a_6683                            ; $660a: $20 $77

    ld h, c                                       ; $660c: $61
    ld l, [hl]                                    ; $660d: $6e
    ld [hl], h                                    ; $660e: $74
    jr nz, jr_01a_6685                            ; $660f: $20 $74

    ld l, a                                       ; $6611: $6f
    ld bc, $6c70                                  ; $6612: $01 $70 $6c
    ld h, c                                       ; $6615: $61
    ld a, c                                       ; $6616: $79
    inc l                                         ; $6617: $2c
    jr nz, jr_01a_6686                            ; $6618: $20 $6c

    ld h, l                                       ; $661a: $65
    ld [hl], h                                    ; $661b: $74
    jr nz, jr_01a_668b                            ; $661c: $20 $6d

    ld h, l                                       ; $661e: $65
    jr nz, jr_01a_668c                            ; $661f: $20 $6b

    ld l, [hl]                                    ; $6621: $6e

jr_01a_6622:
    ld l, a                                       ; $6622: $6f
    ld [hl], a                                    ; $6623: $77
    ld l, $03                                     ; $6624: $2e $03
    nop                                           ; $6626: $00
    ld b, e                                       ; $6627: $43
    ld l, b                                       ; $6628: $68
    ld h, c                                       ; $6629: $61
    ld l, l                                       ; $662a: $6d

jr_01a_662b:
    ld [hl], b                                    ; $662b: $70
    jr nz, jr_01a_6635                            ; $662c: $20 $07

    ld hl, $0003                                  ; $662e: $21 $03 $00
    ld d, b                                       ; $6631: $50
    ld l, h                                       ; $6632: $6c
    ld h, c                                       ; $6633: $61
    ld a, c                                       ; $6634: $79

jr_01a_6635:
    ld l, c                                       ; $6635: $69
    ld l, [hl]                                    ; $6636: $6e
    ld h, a                                       ; $6637: $67

jr_01a_6638:
    jr nz, jr_01a_669b                            ; $6638: $20 $61

    jr nz, jr_01a_66ae                            ; $663a: $20 $72

    ld l, a                                       ; $663c: $6f
    ld [hl], l                                    ; $663d: $75
    ld l, [hl]                                    ; $663e: $6e

jr_01a_663f:
    ld h, h                                       ; $663f: $64
    ld bc, $7461                                  ; $6640: $01 $61 $74
    jr nz, @+$0d                                  ; $6643: $20 $0b

    jr nz, jr_01a_668a                            ; $6645: $20 $43

    ld l, h                                       ; $6647: $6c
    ld [hl], l                                    ; $6648: $75

jr_01a_6649:
    ld h, d                                       ; $6649: $62
    ccf                                           ; $664a: $3f
    nop                                           ; $664b: $00

jr_01a_664c:
    ld e, c                                       ; $664c: $59
    ld l, a                                       ; $664d: $6f
    ld [hl], l                                    ; $664e: $75
    jr nz, jr_01a_66b4                            ; $664f: $20 $63

    ld h, c                                       ; $6651: $61
    ld l, [hl]                                    ; $6652: $6e
    jr nz, jr_01a_66c8                            ; $6653: $20 $73

    ld [hl], h                                    ; $6655: $74
    ld h, c                                       ; $6656: $61
    ld [hl], d                                    ; $6657: $72
    ld [hl], h                                    ; $6658: $74
    jr nz, jr_01a_66cd                            ; $6659: $20 $72

    ld l, c                                       ; $665b: $69
    ld h, a                                       ; $665c: $67
    ld l, b                                       ; $665d: $68
    ld [hl], h                                    ; $665e: $74
    ld bc, $6661                                  ; $665f: $01 $61 $66
    ld [hl], h                                    ; $6662: $74
    ld h, l                                       ; $6663: $65
    ld [hl], d                                    ; $6664: $72
    jr nz, jr_01a_66db                            ; $6665: $20 $74

    ld l, b                                       ; $6667: $68
    ld h, c                                       ; $6668: $61
    ld [hl], h                                    ; $6669: $74
    jr nz, jr_01a_66d3                            ; $666a: $20 $67

    ld [hl], d                                    ; $666c: $72

jr_01a_666d:
    ld l, a                                       ; $666d: $6f
    ld [hl], l                                    ; $666e: $75
    ld [hl], b                                    ; $666f: $70
    ld l, $03                                     ; $6670: $2e $03

jr_01a_6672:
    nop                                           ; $6672: $00
    ld d, a                                       ; $6673: $57
    ld l, b                                       ; $6674: $68
    ld h, l                                       ; $6675: $65
    ld l, [hl]                                    ; $6676: $6e
    jr nz, jr_01a_6680                            ; $6677: $20 $07

    daa                                           ; $6679: $27
    ld [hl], e                                    ; $667a: $73
    ld bc, $6568                                  ; $667b: $01 $68 $65
    ld [hl], d                                    ; $667e: $72
    ld h, l                                       ; $667f: $65

jr_01a_6680:
    inc l                                         ; $6680: $2c

jr_01a_6681:
    jr nz, @+$67                                  ; $6681: $20 $65

jr_01a_6683:
    halt                                          ; $6683: $76
    ld h, l                                       ; $6684: $65

jr_01a_6685:
    ld [hl], d                                    ; $6685: $72

jr_01a_6686:
    ld a, c                                       ; $6686: $79
    ld l, a                                       ; $6687: $6f
    ld l, [hl]                                    ; $6688: $6e
    ld h, l                                       ; $6689: $65

jr_01a_668a:
    daa                                           ; $668a: $27

jr_01a_668b:
    ld [hl], e                                    ; $668b: $73

jr_01a_668c:
    ld bc, $6f73                                  ; $668c: $01 $73 $6f
    jr nz, jr_01a_66fa                            ; $668f: $20 $69

    ld l, [hl]                                    ; $6691: $6e
    ld [hl], e                                    ; $6692: $73
    ld [hl], b                                    ; $6693: $70
    ld l, c                                       ; $6694: $69
    ld [hl], d                                    ; $6695: $72
    ld h, l                                       ; $6696: $65
    ld h, h                                       ; $6697: $64
    ld hl, $0003                                  ; $6698: $21 $03 $00

jr_01a_669b:
    ld d, a                                       ; $669b: $57
    ld h, l                                       ; $669c: $65
    ld l, h                                       ; $669d: $6c
    ld l, h                                       ; $669e: $6c
    jr nz, jr_01a_670a                            ; $669f: $20 $69

    ld h, [hl]                                    ; $66a1: $66
    jr nz, jr_01a_671d                            ; $66a2: $20 $79

    ld l, a                                       ; $66a4: $6f
    ld [hl], l                                    ; $66a5: $75
    jr nz, jr_01a_6710                            ; $66a6: $20 $68

    ld h, c                                       ; $66a8: $61
    halt                                          ; $66a9: $76
    ld h, l                                       ; $66aa: $65
    ld l, [hl]                                    ; $66ab: $6e
    daa                                           ; $66ac: $27
    ld [hl], h                                    ; $66ad: $74

jr_01a_66ae:
    ld bc, $6e61                                  ; $66ae: $01 $61 $6e
    ld a, c                                       ; $66b1: $79
    jr nz, @+$63                                  ; $66b2: $20 $61

jr_01a_66b4:
    ld [hl], b                                    ; $66b4: $70
    ld [hl], b                                    ; $66b5: $70
    ld l, a                                       ; $66b6: $6f
    ld l, c                                       ; $66b7: $69
    ld l, [hl]                                    ; $66b8: $6e
    ld [hl], h                                    ; $66b9: $74
    ld l, l                                       ; $66ba: $6d
    ld h, l                                       ; $66bb: $65
    ld l, [hl]                                    ; $66bc: $6e
    ld [hl], h                                    ; $66bd: $74
    ld [hl], e                                    ; $66be: $73
    inc l                                         ; $66bf: $2c
    ld bc, $6572                                  ; $66c0: $01 $72 $65
    ld l, h                                       ; $66c3: $6c
    ld h, c                                       ; $66c4: $61
    ld a, b                                       ; $66c5: $78
    jr nz, jr_01a_6729                            ; $66c6: $20 $61

jr_01a_66c8:
    jr nz, jr_01a_6741                            ; $66c8: $20 $77

    ld l, b                                       ; $66ca: $68
    ld l, c                                       ; $66cb: $69
    ld l, h                                       ; $66cc: $6c

jr_01a_66cd:
    ld h, l                                       ; $66cd: $65
    ld l, $03                                     ; $66ce: $2e $03
    nop                                           ; $66d0: $00
    ld e, c                                       ; $66d1: $59
    ld l, a                                       ; $66d2: $6f

jr_01a_66d3:
    ld [hl], l                                    ; $66d3: $75
    daa                                           ; $66d4: $27
    ld [hl], d                                    ; $66d5: $72
    ld h, l                                       ; $66d6: $65
    jr nz, jr_01a_671c                            ; $66d7: $20 $43

    ld l, h                                       ; $66d9: $6c
    ld [hl], l                                    ; $66da: $75

jr_01a_66db:
    ld h, d                                       ; $66db: $62
    jr nz, @+$45                                  ; $66dc: $20 $43

    ld l, b                                       ; $66de: $68
    ld h, c                                       ; $66df: $61
    ld l, l                                       ; $66e0: $6d
    ld [hl], b                                    ; $66e1: $70
    ld hl, $5901                                  ; $66e2: $21 $01 $59
    ld l, a                                       ; $66e5: $6f
    ld [hl], l                                    ; $66e6: $75
    jr nz, jr_01a_674c                            ; $66e7: $20 $63

    ld h, c                                       ; $66e9: $61
    ld l, [hl]                                    ; $66ea: $6e
    jr nz, jr_01a_6751                            ; $66eb: $20 $64

    ld l, a                                       ; $66ed: $6f
    jr nz, jr_01a_6751                            ; $66ee: $20 $61

    ld l, [hl]                                    ; $66f0: $6e
    ld a, c                                       ; $66f1: $79
    ld [hl], h                                    ; $66f2: $74
    ld l, b                                       ; $66f3: $68
    ld l, c                                       ; $66f4: $69
    ld l, [hl]                                    ; $66f5: $6e
    ld h, a                                       ; $66f6: $67
    ld hl, $0003                                  ; $66f7: $21 $03 $00

jr_01a_66fa:
    ld d, a                                       ; $66fa: $57
    ld l, b                                       ; $66fb: $68
    ld h, l                                       ; $66fc: $65
    ld l, [hl]                                    ; $66fd: $6e
    jr nz, jr_01a_6707                            ; $66fe: $20 $07

    daa                                           ; $6700: $27
    ld [hl], e                                    ; $6701: $73
    ld bc, $6568                                  ; $6702: $01 $68 $65
    ld [hl], d                                    ; $6705: $72
    ld h, l                                       ; $6706: $65

jr_01a_6707:
    inc l                                         ; $6707: $2c
    jr nz, @+$67                                  ; $6708: $20 $65

jr_01a_670a:
    halt                                          ; $670a: $76
    ld h, l                                       ; $670b: $65
    ld [hl], d                                    ; $670c: $72
    ld a, c                                       ; $670d: $79
    ld l, a                                       ; $670e: $6f
    ld l, [hl]                                    ; $670f: $6e

jr_01a_6710:
    ld h, l                                       ; $6710: $65
    daa                                           ; $6711: $27
    ld [hl], e                                    ; $6712: $73
    ld bc, $6f73                                  ; $6713: $01 $73 $6f
    jr nz, jr_01a_6781                            ; $6716: $20 $69

    ld l, [hl]                                    ; $6718: $6e
    ld [hl], e                                    ; $6719: $73
    ld [hl], b                                    ; $671a: $70
    ld l, c                                       ; $671b: $69

jr_01a_671c:
    ld [hl], d                                    ; $671c: $72

jr_01a_671d:
    ld h, l                                       ; $671d: $65
    ld h, h                                       ; $671e: $64
    ld hl, $0003                                  ; $671f: $21 $03 $00
    ld b, d                                       ; $6722: $42
    ld h, l                                       ; $6723: $65
    ld h, c                                       ; $6724: $61
    ld [hl], h                                    ; $6725: $74
    ld l, c                                       ; $6726: $69
    ld l, [hl]                                    ; $6727: $6e
    ld h, a                                       ; $6728: $67

jr_01a_6729:
    jr nz, jr_01a_6739                            ; $6729: $20 $0e

    ld b, $20                                     ; $672b: $06 $20
    ld l, l                                       ; $672d: $6d
    ld h, c                                       ; $672e: $61
    ld h, h                                       ; $672f: $64
    ld h, l                                       ; $6730: $65
    ld bc, $6f79                                  ; $6731: $01 $79 $6f
    ld [hl], l                                    ; $6734: $75
    jr nz, @+$71                                  ; $6735: $20 $6f

    ld [hl], l                                    ; $6737: $75
    ld [hl], d                                    ; $6738: $72

jr_01a_6739:
    jr nz, jr_01a_67a9                            ; $6739: $20 $6e

    ld h, l                                       ; $673b: $65
    ld [hl], a                                    ; $673c: $77
    jr nz, @+$45                                  ; $673d: $20 $43

    ld l, b                                       ; $673f: $68
    ld h, c                                       ; $6740: $61

jr_01a_6741:
    ld l, l                                       ; $6741: $6d
    ld [hl], b                                    ; $6742: $70
    ld hl, $5301                                  ; $6743: $21 $01 $53
    ld [hl], h                                    ; $6746: $74
    ld l, a                                       ; $6747: $6f
    ld [hl], b                                    ; $6748: $70
    jr nz, jr_01a_67ad                            ; $6749: $20 $62

    ld a, c                                       ; $674b: $79

jr_01a_674c:
    jr nz, jr_01a_67af                            ; $674c: $20 $61

    ld l, [hl]                                    ; $674e: $6e
    ld a, c                                       ; $674f: $79
    ld [hl], h                                    ; $6750: $74

jr_01a_6751:
    ld l, c                                       ; $6751: $69
    ld l, l                                       ; $6752: $6d
    ld h, l                                       ; $6753: $65
    ld hl, $0003                                  ; $6754: $21 $03 $00
    ld b, d                                       ; $6757: $42
    ld h, l                                       ; $6758: $65
    ld h, c                                       ; $6759: $61
    ld [hl], h                                    ; $675a: $74
    ld l, c                                       ; $675b: $69
    ld l, [hl]                                    ; $675c: $6e
    ld h, a                                       ; $675d: $67
    jr nz, jr_01a_676e                            ; $675e: $20 $0e

    ld b, $20                                     ; $6760: $06 $20
    ld l, l                                       ; $6762: $6d
    ld h, c                                       ; $6763: $61
    ld h, h                                       ; $6764: $64
    ld h, l                                       ; $6765: $65
    ld bc, $6f79                                  ; $6766: $01 $79 $6f
    ld [hl], l                                    ; $6769: $75
    jr nz, @+$71                                  ; $676a: $20 $6f

    ld [hl], l                                    ; $676c: $75
    ld [hl], d                                    ; $676d: $72

jr_01a_676e:
    jr nz, jr_01a_67de                            ; $676e: $20 $6e

    ld h, l                                       ; $6770: $65
    ld [hl], a                                    ; $6771: $77
    jr nz, jr_01a_67b7                            ; $6772: $20 $43

    ld l, b                                       ; $6774: $68
    ld h, c                                       ; $6775: $61
    ld l, l                                       ; $6776: $6d
    ld [hl], b                                    ; $6777: $70
    ld hl, $5301                                  ; $6778: $21 $01 $53
    ld [hl], h                                    ; $677b: $74
    ld l, a                                       ; $677c: $6f
    ld [hl], b                                    ; $677d: $70
    jr nz, @+$64                                  ; $677e: $20 $62

    ld a, c                                       ; $6780: $79

jr_01a_6781:
    jr nz, jr_01a_67e4                            ; $6781: $20 $61

    ld l, [hl]                                    ; $6783: $6e
    ld a, c                                       ; $6784: $79
    ld [hl], h                                    ; $6785: $74
    ld l, c                                       ; $6786: $69
    ld l, l                                       ; $6787: $6d
    ld h, l                                       ; $6788: $65
    ld hl, $0003                                  ; $6789: $21 $03 $00
    ld c, b                                       ; $678c: $48
    ld h, l                                       ; $678d: $65
    ld a, c                                       ; $678e: $79
    inc l                                         ; $678f: $2c
    jr nz, @+$49                                  ; $6790: $20 $47

    ld [hl], d                                    ; $6792: $72
    ld h, c                                       ; $6793: $61
    ld l, [hl]                                    ; $6794: $6e
    ld h, h                                       ; $6795: $64
    jr nz, @+$45                                  ; $6796: $20 $43

    ld l, b                                       ; $6798: $68
    ld h, c                                       ; $6799: $61
    ld l, l                                       ; $679a: $6d
    ld [hl], b                                    ; $679b: $70
    ld hl, $5901                                  ; $679c: $21 $01 $59
    ld l, a                                       ; $679f: $6f
    ld [hl], l                                    ; $67a0: $75
    jr nz, jr_01a_6806                            ; $67a1: $20 $63

    ld h, c                                       ; $67a3: $61
    ld l, [hl]                                    ; $67a4: $6e
    jr nz, @+$72                                  ; $67a5: $20 $70

    ld l, h                                       ; $67a7: $6c
    ld h, c                                       ; $67a8: $61

jr_01a_67a9:
    ld a, c                                       ; $67a9: $79
    ld bc, $2061                                  ; $67aa: $01 $61 $20

jr_01a_67ad:
    ld [hl], d                                    ; $67ad: $72
    ld l, a                                       ; $67ae: $6f

jr_01a_67af:
    ld [hl], l                                    ; $67af: $75
    ld l, [hl]                                    ; $67b0: $6e
    ld h, h                                       ; $67b1: $64
    jr nz, jr_01a_6815                            ; $67b2: $20 $61

    ld l, [hl]                                    ; $67b4: $6e
    ld a, c                                       ; $67b5: $79
    ld [hl], h                                    ; $67b6: $74

jr_01a_67b7:
    ld l, c                                       ; $67b7: $69
    ld l, l                                       ; $67b8: $6d
    ld h, l                                       ; $67b9: $65
    ld hl, $0003                                  ; $67ba: $21 $03 $00
    ld c, b                                       ; $67bd: $48
    ld h, l                                       ; $67be: $65
    ld a, c                                       ; $67bf: $79
    inc l                                         ; $67c0: $2c
    jr nz, jr_01a_680a                            ; $67c1: $20 $47

    ld [hl], d                                    ; $67c3: $72
    ld h, c                                       ; $67c4: $61
    ld l, [hl]                                    ; $67c5: $6e
    ld h, h                                       ; $67c6: $64
    jr nz, @+$45                                  ; $67c7: $20 $43

    ld l, b                                       ; $67c9: $68
    ld h, c                                       ; $67ca: $61
    ld l, l                                       ; $67cb: $6d
    ld [hl], b                                    ; $67cc: $70
    ld hl, $4301                                  ; $67cd: $21 $01 $43
    ld l, a                                       ; $67d0: $6f
    ld l, l                                       ; $67d1: $6d
    ld h, l                                       ; $67d2: $65
    jr nz, jr_01a_6845                            ; $67d3: $20 $70

    ld l, h                                       ; $67d5: $6c
    ld h, c                                       ; $67d6: $61
    ld a, c                                       ; $67d7: $79
    jr nz, @+$63                                  ; $67d8: $20 $61

    jr nz, jr_01a_684e                            ; $67da: $20 $72

    ld l, a                                       ; $67dc: $6f
    ld [hl], l                                    ; $67dd: $75

jr_01a_67de:
    ld l, [hl]                                    ; $67de: $6e
    ld h, h                                       ; $67df: $64
    ld bc, $6e61                                  ; $67e0: $01 $61 $6e
    ld a, c                                       ; $67e3: $79

jr_01a_67e4:
    ld [hl], h                                    ; $67e4: $74
    ld l, c                                       ; $67e5: $69
    ld l, l                                       ; $67e6: $6d
    ld h, l                                       ; $67e7: $65
    ld hl, $0003                                  ; $67e8: $21 $03 $00
    ld d, h                                       ; $67eb: $54
    ld l, b                                       ; $67ec: $68
    ld h, l                                       ; $67ed: $65
    jr nz, @+$75                                  ; $67ee: $20 $73

    ld l, c                                       ; $67f0: $69
    ld h, a                                       ; $67f1: $67
    ld l, [hl]                                    ; $67f2: $6e
    jr nz, jr_01a_6868                            ; $67f3: $20 $73

    ld h, c                                       ; $67f5: $61
    ld a, c                                       ; $67f6: $79
    ld [hl], e                                    ; $67f7: $73
    ld a, [hl-]                                   ; $67f8: $3a
    ld bc, $5422                                  ; $67f9: $01 $22 $54
    ld l, a                                       ; $67fc: $6f
    jr nz, jr_01a_6847                            ; $67fd: $20 $48

    ld l, a                                       ; $67ff: $6f
    ld l, h                                       ; $6800: $6c
    ld h, l                                       ; $6801: $65
    jr nz, @+$33                                  ; $6802: $20 $31

    ld l, $22                                     ; $6804: $2e $22

jr_01a_6806:
    inc bc                                        ; $6806: $03
    nop                                           ; $6807: $00
    ld d, h                                       ; $6808: $54
    ld l, b                                       ; $6809: $68

jr_01a_680a:
    ld h, l                                       ; $680a: $65
    jr nz, jr_01a_6880                            ; $680b: $20 $73

    ld l, c                                       ; $680d: $69
    ld h, a                                       ; $680e: $67
    ld l, [hl]                                    ; $680f: $6e
    jr nz, jr_01a_6885                            ; $6810: $20 $73

    ld h, c                                       ; $6812: $61
    ld a, c                                       ; $6813: $79
    ld [hl], e                                    ; $6814: $73

jr_01a_6815:
    ld a, [hl-]                                   ; $6815: $3a
    ld bc, $5422                                  ; $6816: $01 $22 $54
    ld l, a                                       ; $6819: $6f
    jr nz, jr_01a_6860                            ; $681a: $20 $44

    ld [hl], d                                    ; $681c: $72
    ld l, c                                       ; $681d: $69
    halt                                          ; $681e: $76
    ld l, c                                       ; $681f: $69
    ld l, [hl]                                    ; $6820: $6e
    ld h, a                                       ; $6821: $67
    jr nz, jr_01a_6876                            ; $6822: $20 $52

    ld h, c                                       ; $6824: $61
    ld l, [hl]                                    ; $6825: $6e
    ld h, a                                       ; $6826: $67
    ld h, l                                       ; $6827: $65
    ld l, $22                                     ; $6828: $2e $22
    inc bc                                        ; $682a: $03
    nop                                           ; $682b: $00
    ld d, h                                       ; $682c: $54
    ld l, b                                       ; $682d: $68
    ld h, l                                       ; $682e: $65
    jr nz, jr_01a_68a4                            ; $682f: $20 $73

    ld l, c                                       ; $6831: $69
    ld h, a                                       ; $6832: $67
    ld l, [hl]                                    ; $6833: $6e
    jr nz, jr_01a_68a9                            ; $6834: $20 $73

    ld h, c                                       ; $6836: $61
    ld a, c                                       ; $6837: $79
    ld [hl], e                                    ; $6838: $73
    ld a, [hl-]                                   ; $6839: $3a
    ld bc, $5422                                  ; $683a: $01 $22 $54
    ld l, a                                       ; $683d: $6f
    jr nz, jr_01a_6881                            ; $683e: $20 $41

    ld [hl], b                                    ; $6840: $70
    ld [hl], b                                    ; $6841: $70
    ld [hl], d                                    ; $6842: $72
    ld l, a                                       ; $6843: $6f
    ld h, c                                       ; $6844: $61

jr_01a_6845:
    ld h, e                                       ; $6845: $63
    ld l, b                                       ; $6846: $68

jr_01a_6847:
    ld bc, $7250                                  ; $6847: $01 $50 $72
    ld h, c                                       ; $684a: $61
    ld h, e                                       ; $684b: $63
    ld [hl], h                                    ; $684c: $74
    ld l, c                                       ; $684d: $69

jr_01a_684e:
    ld h, e                                       ; $684e: $63
    ld h, l                                       ; $684f: $65
    jr nz, jr_01a_68a4                            ; $6850: $20 $52

    ld h, c                                       ; $6852: $61
    ld l, [hl]                                    ; $6853: $6e
    ld h, a                                       ; $6854: $67
    ld h, l                                       ; $6855: $65
    ld l, $22                                     ; $6856: $2e $22
    inc bc                                        ; $6858: $03
    nop                                           ; $6859: $00
    ld d, h                                       ; $685a: $54
    ld l, b                                       ; $685b: $68
    ld h, l                                       ; $685c: $65
    jr nz, jr_01a_68d2                            ; $685d: $20 $73

    ld l, c                                       ; $685f: $69

jr_01a_6860:
    ld h, a                                       ; $6860: $67
    ld l, [hl]                                    ; $6861: $6e
    jr nz, jr_01a_68d7                            ; $6862: $20 $73

    ld h, c                                       ; $6864: $61
    ld a, c                                       ; $6865: $79
    ld [hl], e                                    ; $6866: $73
    ld a, [hl-]                                   ; $6867: $3a

jr_01a_6868:
    ld bc, $5422                                  ; $6868: $01 $22 $54
    ld l, a                                       ; $686b: $6f
    jr nz, jr_01a_68be                            ; $686c: $20 $50

    ld [hl], l                                    ; $686e: $75
    ld [hl], h                                    ; $686f: $74
    ld [hl], h                                    ; $6870: $74
    ld l, c                                       ; $6871: $69
    ld l, [hl]                                    ; $6872: $6e
    ld h, a                                       ; $6873: $67
    jr nz, jr_01a_68c8                            ; $6874: $20 $52

jr_01a_6876:
    ld h, c                                       ; $6876: $61
    ld l, [hl]                                    ; $6877: $6e
    ld h, a                                       ; $6878: $67
    ld h, l                                       ; $6879: $65
    ld l, $22                                     ; $687a: $2e $22
    inc bc                                        ; $687c: $03
    nop                                           ; $687d: $00
    ld d, a                                       ; $687e: $57
    ld h, c                                       ; $687f: $61

jr_01a_6880:
    ld [hl], h                                    ; $6880: $74

jr_01a_6881:
    ld h, e                                       ; $6881: $63
    ld l, b                                       ; $6882: $68
    jr nz, jr_01a_68f4                            ; $6883: $20 $6f

jr_01a_6885:
    ld [hl], l                                    ; $6885: $75
    ld [hl], h                                    ; $6886: $74
    jr nz, jr_01a_68ef                            ; $6887: $20 $66

    ld l, a                                       ; $6889: $6f
    ld [hl], d                                    ; $688a: $72
    ld bc, $6150                                  ; $688b: $01 $50 $61
    ld l, h                                       ; $688e: $6c
    ld l, l                                       ; $688f: $6d
    daa                                           ; $6890: $27
    ld [hl], e                                    ; $6891: $73
    jr nz, jr_01a_68d7                            ; $6892: $20 $43

    ld l, b                                       ; $6894: $68
    ld h, c                                       ; $6895: $61
    ld l, l                                       ; $6896: $6d
    ld [hl], b                                    ; $6897: $70
    ld l, $01                                     ; $6898: $2e $01
    ld d, e                                       ; $689a: $53
    ld l, b                                       ; $689b: $68
    ld h, l                                       ; $689c: $65
    daa                                           ; $689d: $27
    ld [hl], e                                    ; $689e: $73
    jr nz, jr_01a_6915                            ; $689f: $20 $74

    ld l, a                                       ; $68a1: $6f
    ld [hl], l                                    ; $68a2: $75
    ld h, a                                       ; $68a3: $67

jr_01a_68a4:
    ld l, b                                       ; $68a4: $68
    ld hl, $0003                                  ; $68a5: $21 $03 $00
    ld d, h                                       ; $68a8: $54

jr_01a_68a9:
    ld l, a                                       ; $68a9: $6f
    ld h, h                                       ; $68aa: $64
    ld h, c                                       ; $68ab: $61
    ld a, c                                       ; $68ac: $79
    jr nz, jr_01a_6918                            ; $68ad: $20 $69

    ld [hl], e                                    ; $68af: $73
    jr nz, @+$76                                  ; $68b0: $20 $74

    ld l, b                                       ; $68b2: $68
    ld h, l                                       ; $68b3: $65
    jr nz, jr_01a_6906                            ; $68b4: $20 $50

    ld h, c                                       ; $68b6: $61
    ld l, h                                       ; $68b7: $6c
    ld l, l                                       ; $68b8: $6d
    ld bc, $6c43                                  ; $68b9: $01 $43 $6c
    ld [hl], l                                    ; $68bc: $75
    ld h, d                                       ; $68bd: $62

jr_01a_68be:
    jr nz, jr_01a_6914                            ; $68be: $20 $54

    ld l, a                                       ; $68c0: $6f
    ld [hl], l                                    ; $68c1: $75
    ld [hl], d                                    ; $68c2: $72
    ld l, [hl]                                    ; $68c3: $6e
    ld h, c                                       ; $68c4: $61
    ld l, l                                       ; $68c5: $6d
    ld h, l                                       ; $68c6: $65
    ld l, [hl]                                    ; $68c7: $6e

jr_01a_68c8:
    ld [hl], h                                    ; $68c8: $74
    ld l, $20                                     ; $68c9: $2e $20
    ld c, a                                       ; $68cb: $4f
    ld c, b                                       ; $68cc: $48
    ld hl, $4901                                  ; $68cd: $21 $01 $49
    daa                                           ; $68d0: $27
    ld l, l                                       ; $68d1: $6d

jr_01a_68d2:
    jr nz, jr_01a_6947                            ; $68d2: $20 $73

    ld l, a                                       ; $68d4: $6f
    jr nz, jr_01a_693c                            ; $68d5: $20 $65

jr_01a_68d7:
    ld a, b                                       ; $68d7: $78
    ld h, e                                       ; $68d8: $63
    ld l, c                                       ; $68d9: $69
    ld [hl], h                                    ; $68da: $74
    ld h, l                                       ; $68db: $65
    ld h, h                                       ; $68dc: $64
    ld hl, $0003                                  ; $68dd: $21 $03 $00
    ld b, h                                       ; $68e0: $44
    ld h, c                                       ; $68e1: $61
    ld l, [hl]                                    ; $68e2: $6e
    ld h, a                                       ; $68e3: $67
    ld hl, $4920                                  ; $68e4: $21 $20 $49
    ld h, [hl]                                    ; $68e7: $66
    jr nz, jr_01a_6959                            ; $68e8: $20 $6f

    ld l, [hl]                                    ; $68ea: $6e
    ld l, h                                       ; $68eb: $6c
    ld a, c                                       ; $68ec: $79
    jr nz, @+$4b                                  ; $68ed: $20 $49

jr_01a_68ef:
    ld bc, $6168                                  ; $68ef: $01 $68 $61
    ld h, h                                       ; $68f2: $64
    ld l, [hl]                                    ; $68f3: $6e

jr_01a_68f4:
    daa                                           ; $68f4: $27
    ld [hl], h                                    ; $68f5: $74
    jr nz, jr_01a_695f                            ; $68f6: $20 $67

    ld l, a                                       ; $68f8: $6f
    ld [hl], h                                    ; $68f9: $74
    ld [hl], h                                    ; $68fa: $74
    ld h, l                                       ; $68fb: $65
    ld l, [hl]                                    ; $68fc: $6e
    ld bc, $6874                                  ; $68fd: $01 $74 $68
    ld h, c                                       ; $6900: $61
    ld [hl], h                                    ; $6901: $74
    jr nz, jr_01a_6968                            ; $6902: $20 $64

    ld l, a                                       ; $6904: $6f
    ld [hl], l                                    ; $6905: $75

jr_01a_6906:
    ld h, d                                       ; $6906: $62
    ld l, h                                       ; $6907: $6c
    ld h, l                                       ; $6908: $65
    jr nz, jr_01a_696d                            ; $6909: $20 $62

    ld l, a                                       ; $690b: $6f
    ld h, a                                       ; $690c: $67
    ld h, l                                       ; $690d: $65
    ld a, c                                       ; $690e: $79
    ld hl, $0003                                  ; $690f: $21 $03 $00
    ld e, c                                       ; $6912: $59
    ld l, a                                       ; $6913: $6f

jr_01a_6914:
    ld [hl], l                                    ; $6914: $75

jr_01a_6915:
    jr nz, @+$6f                                  ; $6915: $20 $6d

    ld [hl], l                                    ; $6917: $75

jr_01a_6918:
    ld [hl], e                                    ; $6918: $73
    ld [hl], h                                    ; $6919: $74
    jr nz, jr_01a_697e                            ; $691a: $20 $62

    ld h, l                                       ; $691c: $65
    jr nz, jr_01a_6986                            ; $691d: $20 $67

    ld l, a                                       ; $691f: $6f
    ld l, a                                       ; $6920: $6f
    ld h, h                                       ; $6921: $64
    ld bc, $6669                                  ; $6922: $01 $69 $66
    jr nz, jr_01a_69a0                            ; $6925: $20 $79

    ld l, a                                       ; $6927: $6f
    ld [hl], l                                    ; $6928: $75
    jr nz, @+$72                                  ; $6929: $20 $70

    ld l, h                                       ; $692b: $6c
    ld h, c                                       ; $692c: $61
    ld h, e                                       ; $692d: $63
    ld h, l                                       ; $692e: $65
    ld h, h                                       ; $692f: $64
    jr nz, @+$6b                                  ; $6930: $20 $69

    ld l, [hl]                                    ; $6932: $6e
    ld bc, $6874                                  ; $6933: $01 $74 $68
    ld h, l                                       ; $6936: $65
    jr nz, jr_01a_69ad                            ; $6937: $20 $74

    ld l, a                                       ; $6939: $6f
    ld [hl], l                                    ; $693a: $75
    ld [hl], d                                    ; $693b: $72

jr_01a_693c:
    ld l, [hl]                                    ; $693c: $6e
    ld h, c                                       ; $693d: $61
    ld l, l                                       ; $693e: $6d
    ld h, l                                       ; $693f: $65
    ld l, [hl]                                    ; $6940: $6e
    ld [hl], h                                    ; $6941: $74
    ld l, $02                                     ; $6942: $2e $02
    ld d, e                                       ; $6944: $53
    ld l, a                                       ; $6945: $6f
    ld l, l                                       ; $6946: $6d

jr_01a_6947:
    ld h, l                                       ; $6947: $65
    ld h, h                                       ; $6948: $64
    ld h, c                                       ; $6949: $61
    ld a, c                                       ; $694a: $79
    inc l                                         ; $694b: $2c
    jr nz, @+$4b                                  ; $694c: $20 $49

    daa                                           ; $694e: $27
    ld l, l                                       ; $694f: $6d
    jr nz, jr_01a_69b9                            ; $6950: $20 $67

    ld l, a                                       ; $6952: $6f
    ld l, [hl]                                    ; $6953: $6e
    ld l, [hl]                                    ; $6954: $6e
    ld h, c                                       ; $6955: $61
    ld bc, $6c70                                  ; $6956: $01 $70 $6c

jr_01a_6959:
    ld h, c                                       ; $6959: $61
    ld h, e                                       ; $695a: $63
    ld h, l                                       ; $695b: $65
    inc l                                         ; $695c: $2c
    jr nz, jr_01a_69d3                            ; $695d: $20 $74

jr_01a_695f:
    ld l, a                                       ; $695f: $6f
    ld l, a                                       ; $6960: $6f
    jr nz, jr_01a_6990                            ; $6961: $20 $2d

    ld bc, $756a                                  ; $6963: $01 $6a $75
    ld [hl], e                                    ; $6966: $73
    ld [hl], h                                    ; $6967: $74

jr_01a_6968:
    jr nz, jr_01a_69d6                            ; $6968: $20 $6c

    ld l, c                                       ; $696a: $69
    ld l, e                                       ; $696b: $6b
    ld h, l                                       ; $696c: $65

jr_01a_696d:
    jr nz, @+$7b                                  ; $696d: $20 $79

    ld l, a                                       ; $696f: $6f
    ld [hl], l                                    ; $6970: $75
    ld hl, $0003                                  ; $6971: $21 $03 $00
    ld b, e                                       ; $6974: $43
    ld l, a                                       ; $6975: $6f
    ld l, [hl]                                    ; $6976: $6e
    ld h, a                                       ; $6977: $67
    ld [hl], d                                    ; $6978: $72
    ld h, c                                       ; $6979: $61
    ld [hl], h                                    ; $697a: $74
    ld [hl], l                                    ; $697b: $75
    ld l, h                                       ; $697c: $6c
    ld h, c                                       ; $697d: $61

jr_01a_697e:
    ld [hl], h                                    ; $697e: $74
    ld l, c                                       ; $697f: $69
    ld l, a                                       ; $6980: $6f
    ld l, [hl]                                    ; $6981: $6e
    ld [hl], e                                    ; $6982: $73
    ld hl, $5901                                  ; $6983: $21 $01 $59

jr_01a_6986:
    ld l, a                                       ; $6986: $6f
    ld [hl], l                                    ; $6987: $75
    jr nz, jr_01a_6a01                            ; $6988: $20 $77

    ld l, a                                       ; $698a: $6f
    ld l, [hl]                                    ; $698b: $6e
    jr nz, jr_01a_6a02                            ; $698c: $20 $74

    ld l, b                                       ; $698e: $68
    ld h, l                                       ; $698f: $65

jr_01a_6990:
    jr nz, jr_01a_69e2                            ; $6990: $20 $50

    ld h, c                                       ; $6992: $61
    ld l, h                                       ; $6993: $6c
    ld l, l                                       ; $6994: $6d
    ld bc, $6c43                                  ; $6995: $01 $43 $6c
    ld [hl], l                                    ; $6998: $75
    ld h, d                                       ; $6999: $62
    jr nz, jr_01a_69f0                            ; $699a: $20 $54

    ld l, a                                       ; $699c: $6f
    ld [hl], l                                    ; $699d: $75
    ld [hl], d                                    ; $699e: $72
    ld l, [hl]                                    ; $699f: $6e

jr_01a_69a0:
    ld h, c                                       ; $69a0: $61
    ld l, l                                       ; $69a1: $6d
    ld h, l                                       ; $69a2: $65
    ld l, [hl]                                    ; $69a3: $6e
    ld [hl], h                                    ; $69a4: $74
    ld hl, $4202                                  ; $69a5: $21 $02 $42
    ld h, l                                       ; $69a8: $65
    ld h, c                                       ; $69a9: $61
    ld [hl], h                                    ; $69aa: $74
    ld l, c                                       ; $69ab: $69
    ld l, [hl]                                    ; $69ac: $6e

jr_01a_69ad:
    ld h, a                                       ; $69ad: $67
    jr nz, jr_01a_69be                            ; $69ae: $20 $0e

    dec b                                         ; $69b0: $05
    jr nz, jr_01a_6a1c                            ; $69b1: $20 $69

    ld [hl], e                                    ; $69b3: $73
    jr nz, jr_01a_6a17                            ; $69b4: $20 $61

    ld bc, $6572                                  ; $69b6: $01 $72 $65

jr_01a_69b9:
    ld h, c                                       ; $69b9: $61
    ld l, h                                       ; $69ba: $6c
    jr nz, @+$63                                  ; $69bb: $20 $61

    ld h, e                                       ; $69bd: $63

jr_01a_69be:
    ld h, e                                       ; $69be: $63
    ld l, a                                       ; $69bf: $6f
    ld l, l                                       ; $69c0: $6d
    ld [hl], b                                    ; $69c1: $70
    ld l, h                                       ; $69c2: $6c
    ld l, c                                       ; $69c3: $69
    ld [hl], e                                    ; $69c4: $73
    ld l, b                                       ; $69c5: $68
    ld l, l                                       ; $69c6: $6d
    ld h, l                                       ; $69c7: $65
    ld l, [hl]                                    ; $69c8: $6e
    ld [hl], h                                    ; $69c9: $74
    ld hl, $0003                                  ; $69ca: $21 $03 $00
    ld b, c                                       ; $69cd: $41
    jr nz, jr_01a_6a40                            ; $69ce: $20 $70

    ld [hl], d                                    ; $69d0: $72
    ld h, c                                       ; $69d1: $61
    ld h, e                                       ; $69d2: $63

jr_01a_69d3:
    ld [hl], h                                    ; $69d3: $74
    ld l, c                                       ; $69d4: $69
    ld h, e                                       ; $69d5: $63

jr_01a_69d6:
    ld h, l                                       ; $69d6: $65
    jr nz, jr_01a_6a4b                            ; $69d7: $20 $72

    ld l, a                                       ; $69d9: $6f
    ld [hl], l                                    ; $69da: $75
    ld l, [hl]                                    ; $69db: $6e
    ld h, h                                       ; $69dc: $64
    ccf                                           ; $69dd: $3f
    ld bc, $6c50                                  ; $69de: $01 $50 $6c
    ld h, c                                       ; $69e1: $61

jr_01a_69e2:
    ld a, c                                       ; $69e2: $79
    jr nz, jr_01a_6a46                            ; $69e3: $20 $61

    ld l, h                                       ; $69e5: $6c
    ld l, h                                       ; $69e6: $6c
    jr nz, jr_01a_6a62                            ; $69e7: $20 $79

    ld l, a                                       ; $69e9: $6f
    ld [hl], l                                    ; $69ea: $75
    jr nz, jr_01a_6a59                            ; $69eb: $20 $6c

    ld l, c                                       ; $69ed: $69
    ld l, e                                       ; $69ee: $6b
    ld h, l                                       ; $69ef: $65

jr_01a_69f0:
    inc l                                         ; $69f0: $2c
    ld bc, $2e07                                  ; $69f1: $01 $07 $2e
    ld [bc], a                                    ; $69f4: $02
    ld e, c                                       ; $69f5: $59
    ld l, a                                       ; $69f6: $6f
    ld [hl], l                                    ; $69f7: $75
    daa                                           ; $69f8: $27
    ld [hl], d                                    ; $69f9: $72
    ld h, l                                       ; $69fa: $65
    jr nz, @+$63                                  ; $69fb: $20 $61

    ld l, h                                       ; $69fd: $6c
    ld [hl], a                                    ; $69fe: $77
    ld h, c                                       ; $69ff: $61
    ld a, c                                       ; $6a00: $79

jr_01a_6a01:
    ld [hl], e                                    ; $6a01: $73

jr_01a_6a02:
    ld bc, $6577                                  ; $6a02: $01 $77 $65
    ld l, h                                       ; $6a05: $6c
    ld h, e                                       ; $6a06: $63
    ld l, a                                       ; $6a07: $6f
    ld l, l                                       ; $6a08: $6d
    ld h, l                                       ; $6a09: $65
    jr nz, jr_01a_6a74                            ; $6a0a: $20 $68

    ld h, l                                       ; $6a0c: $65
    ld [hl], d                                    ; $6a0d: $72
    ld h, l                                       ; $6a0e: $65
    ld hl, $0003                                  ; $6a0f: $21 $03 $00
    ld c, c                                       ; $6a12: $49
    jr nz, jr_01a_6a7d                            ; $6a13: $20 $68

    ld h, l                                       ; $6a15: $65
    ld h, c                                       ; $6a16: $61

jr_01a_6a17:
    ld [hl], d                                    ; $6a17: $72
    jr nz, @+$46                                  ; $6a18: $20 $44

    ld [hl], l                                    ; $6a1a: $75
    ld l, [hl]                                    ; $6a1b: $6e

jr_01a_6a1c:
    ld h, l                                       ; $6a1c: $65
    jr nz, jr_01a_6a62                            ; $6a1d: $20 $43

    ld l, h                                       ; $6a1f: $6c
    ld [hl], l                                    ; $6a20: $75
    ld h, d                                       ; $6a21: $62
    daa                                           ; $6a22: $27
    ld [hl], e                                    ; $6a23: $73
    ld bc, $616c                                  ; $6a24: $01 $6c $61
    ld a, c                                       ; $6a27: $79
    ld l, a                                       ; $6a28: $6f
    ld [hl], l                                    ; $6a29: $75
    ld [hl], h                                    ; $6a2a: $74
    jr nz, jr_01a_6a96                            ; $6a2b: $20 $69

    ld [hl], e                                    ; $6a2d: $73
    jr nz, jr_01a_6aa2                            ; $6a2e: $20 $72

    ld h, l                                       ; $6a30: $65
    ld h, c                                       ; $6a31: $61
    ld l, h                                       ; $6a32: $6c
    ld l, h                                       ; $6a33: $6c
    ld a, c                                       ; $6a34: $79
    ld bc, $6f74                                  ; $6a35: $01 $74 $6f
    ld [hl], l                                    ; $6a38: $75
    ld h, a                                       ; $6a39: $67
    ld l, b                                       ; $6a3a: $68
    ld l, $02                                     ; $6a3b: $2e $02
    ld e, c                                       ; $6a3d: $59
    ld l, a                                       ; $6a3e: $6f
    ld [hl], l                                    ; $6a3f: $75

jr_01a_6a40:
    jr nz, jr_01a_6aa9                            ; $6a40: $20 $67

    ld l, a                                       ; $6a42: $6f
    ld [hl], h                                    ; $6a43: $74
    ld [hl], h                                    ; $6a44: $74
    ld h, c                                       ; $6a45: $61

jr_01a_6a46:
    jr nz, jr_01a_6ab3                            ; $6a46: $20 $6b

    ld l, [hl]                                    ; $6a48: $6e
    ld l, a                                       ; $6a49: $6f
    ld [hl], a                                    ; $6a4a: $77

jr_01a_6a4b:
    ld bc, $6874                                  ; $6a4b: $01 $74 $68
    ld h, l                                       ; $6a4e: $65
    jr nz, @+$65                                  ; $6a4f: $20 $63

    ld l, a                                       ; $6a51: $6f
    ld [hl], l                                    ; $6a52: $75
    ld [hl], d                                    ; $6a53: $72
    ld [hl], e                                    ; $6a54: $73
    ld h, l                                       ; $6a55: $65
    jr nz, jr_01a_6ac1                            ; $6a56: $20 $69

    ld h, [hl]                                    ; $6a58: $66

jr_01a_6a59:
    jr nz, jr_01a_6ad4                            ; $6a59: $20 $79

    ld l, a                                       ; $6a5b: $6f
    ld [hl], l                                    ; $6a5c: $75
    ld bc, $6177                                  ; $6a5d: $01 $77 $61
    ld l, [hl]                                    ; $6a60: $6e
    ld l, [hl]                                    ; $6a61: $6e

jr_01a_6a62:
    ld h, c                                       ; $6a62: $61
    jr nz, @+$79                                  ; $6a63: $20 $77

    ld l, c                                       ; $6a65: $69
    ld l, [hl]                                    ; $6a66: $6e
    ld hl, $0003                                  ; $6a67: $21 $03 $00
    ld d, a                                       ; $6a6a: $57
    ld l, b                                       ; $6a6b: $68
    ld a, c                                       ; $6a6c: $79
    jr nz, @+$66                                  ; $6a6d: $20 $64

    ld l, a                                       ; $6a6f: $6f
    jr nz, @+$4b                                  ; $6a70: $20 $49

    jr nz, @+$69                                  ; $6a72: $20 $67

jr_01a_6a74:
    ld h, l                                       ; $6a74: $65
    ld [hl], h                                    ; $6a75: $74
    jr nz, jr_01a_6aeb                            ; $6a76: $20 $73

    ld l, a                                       ; $6a78: $6f
    ld bc, $656e                                  ; $6a79: $01 $6e $65
    ld [hl], d                                    ; $6a7c: $72

jr_01a_6a7d:
    halt                                          ; $6a7d: $76
    ld l, a                                       ; $6a7e: $6f
    ld [hl], l                                    ; $6a7f: $75
    ld [hl], e                                    ; $6a80: $73
    jr nz, jr_01a_6ae5                            ; $6a81: $20 $62

    ld h, l                                       ; $6a83: $65
    ld h, [hl]                                    ; $6a84: $66
    ld l, a                                       ; $6a85: $6f
    ld [hl], d                                    ; $6a86: $72
    ld h, l                                       ; $6a87: $65
    jr nz, jr_01a_6afe                            ; $6a88: $20 $74

    ld l, b                                       ; $6a8a: $68
    ld h, l                                       ; $6a8b: $65
    ld bc, $6c43                                  ; $6a8c: $01 $43 $6c
    ld [hl], l                                    ; $6a8f: $75
    ld h, d                                       ; $6a90: $62
    jr nz, jr_01a_6ae7                            ; $6a91: $20 $54

    ld l, a                                       ; $6a93: $6f
    ld [hl], l                                    ; $6a94: $75
    ld [hl], d                                    ; $6a95: $72

jr_01a_6a96:
    ld l, [hl]                                    ; $6a96: $6e
    ld h, c                                       ; $6a97: $61
    ld l, l                                       ; $6a98: $6d
    ld h, l                                       ; $6a99: $65
    ld l, [hl]                                    ; $6a9a: $6e
    ld [hl], h                                    ; $6a9b: $74
    ccf                                           ; $6a9c: $3f
    ld [bc], a                                    ; $6a9d: $02
    ld c, l                                       ; $6a9e: $4d
    ld a, c                                       ; $6a9f: $79
    jr nz, jr_01a_6b0a                            ; $6aa0: $20 $68

jr_01a_6aa2:
    ld h, l                                       ; $6aa2: $65
    ld h, c                                       ; $6aa3: $61
    ld [hl], d                                    ; $6aa4: $72
    ld [hl], h                                    ; $6aa5: $74
    jr nz, jr_01a_6b11                            ; $6aa6: $20 $69

    ld [hl], e                                    ; $6aa8: $73

jr_01a_6aa9:
    ld bc, $7274                                  ; $6aa9: $01 $74 $72
    ld h, l                                       ; $6aac: $65
    ld l, l                                       ; $6aad: $6d
    ld h, d                                       ; $6aae: $62
    ld l, h                                       ; $6aaf: $6c
    ld l, c                                       ; $6ab0: $69
    ld l, [hl]                                    ; $6ab1: $6e
    ld h, a                                       ; $6ab2: $67

jr_01a_6ab3:
    ld hl, $0003                                  ; $6ab3: $21 $03 $00
    ld c, a                                       ; $6ab6: $4f
    ld l, [hl]                                    ; $6ab7: $6e
    ld h, e                                       ; $6ab8: $63
    ld h, l                                       ; $6ab9: $65
    jr nz, jr_01a_6b05                            ; $6aba: $20 $49

    jr nz, @+$6d                                  ; $6abc: $20 $6b

    ld l, [hl]                                    ; $6abe: $6e
    ld h, l                                       ; $6abf: $65
    ld [hl], a                                    ; $6ac0: $77

jr_01a_6ac1:
    jr nz, jr_01a_6b0c                            ; $6ac1: $20 $49

    jr nz, jr_01a_6b28                            ; $6ac3: $20 $63

    ld l, a                                       ; $6ac5: $6f
    ld [hl], l                                    ; $6ac6: $75
    ld l, h                                       ; $6ac7: $6c
    ld h, h                                       ; $6ac8: $64
    ld bc, $6c70                                  ; $6ac9: $01 $70 $6c
    ld h, c                                       ; $6acc: $61
    ld h, e                                       ; $6acd: $63
    ld h, l                                       ; $6ace: $65
    inc l                                         ; $6acf: $2c
    jr nz, @+$4b                                  ; $6ad0: $20 $49

    jr nz, @+$6f                                  ; $6ad2: $20 $6d

jr_01a_6ad4:
    ld l, c                                       ; $6ad4: $69
    ld [hl], e                                    ; $6ad5: $73
    dec l                                         ; $6ad6: $2d
    ld l, b                                       ; $6ad7: $68
    ld l, c                                       ; $6ad8: $69
    ld [hl], h                                    ; $6ad9: $74
    ld hl, $4901                                  ; $6ada: $21 $01 $49
    jr nz, jr_01a_6b4d                            ; $6add: $20 $6e

    ld h, l                                       ; $6adf: $65
    ld h, l                                       ; $6ae0: $65
    ld h, h                                       ; $6ae1: $64
    jr nz, jr_01a_6b54                            ; $6ae2: $20 $70

    ld [hl], d                                    ; $6ae4: $72

jr_01a_6ae5:
    ld h, c                                       ; $6ae5: $61
    ld h, e                                       ; $6ae6: $63

jr_01a_6ae7:
    ld [hl], h                                    ; $6ae7: $74
    ld l, c                                       ; $6ae8: $69
    ld h, e                                       ; $6ae9: $63
    ld h, l                                       ; $6aea: $65

jr_01a_6aeb:
    ld hl, $0003                                  ; $6aeb: $21 $03 $00
    ld d, a                                       ; $6aee: $57
    ld l, b                                       ; $6aef: $68
    ld l, c                                       ; $6af0: $69
    ld l, h                                       ; $6af1: $6c
    ld h, l                                       ; $6af2: $65
    jr nz, jr_01a_6b3e                            ; $6af3: $20 $49

    jr nz, jr_01a_6b6e                            ; $6af5: $20 $77

    ld h, c                                       ; $6af7: $61
    ld [hl], e                                    ; $6af8: $73
    jr nz, @+$6f                                  ; $6af9: $20 $6d

    ld l, c                                       ; $6afb: $69
    ld [hl], e                                    ; $6afc: $73
    ld [hl], e                                    ; $6afd: $73

jr_01a_6afe:
    ld l, c                                       ; $6afe: $69
    ld l, [hl]                                    ; $6aff: $6e
    ld h, a                                       ; $6b00: $67
    inc l                                         ; $6b01: $2c
    ld bc, $6f79                                  ; $6b02: $01 $79 $6f

jr_01a_6b05:
    ld [hl], l                                    ; $6b05: $75
    jr nz, jr_01a_6b6d                            ; $6b06: $20 $65

    ld a, b                                       ; $6b08: $78
    ld [hl], h                                    ; $6b09: $74

jr_01a_6b0a:
    ld h, l                                       ; $6b0a: $65
    ld l, [hl]                                    ; $6b0b: $6e

jr_01a_6b0c:
    ld h, h                                       ; $6b0c: $64
    ld h, l                                       ; $6b0d: $65
    ld h, h                                       ; $6b0e: $64
    jr nz, @+$7b                                  ; $6b0f: $20 $79

jr_01a_6b11:
    ld l, a                                       ; $6b11: $6f
    ld [hl], l                                    ; $6b12: $75
    ld [hl], d                                    ; $6b13: $72
    jr nz, jr_01a_6b82                            ; $6b14: $20 $6c

    ld h, l                                       ; $6b16: $65
    ld h, c                                       ; $6b17: $61
    ld h, h                                       ; $6b18: $64
    ld hl, $4902                                  ; $6b19: $21 $02 $49
    ld h, [hl]                                    ; $6b1c: $66
    jr nz, jr_01a_6b93                            ; $6b1d: $20 $74

    ld l, b                                       ; $6b1f: $68
    ld h, c                                       ; $6b20: $61
    ld [hl], h                                    ; $6b21: $74
    daa                                           ; $6b22: $27
    ld [hl], e                                    ; $6b23: $73
    jr nz, jr_01a_6b9a                            ; $6b24: $20 $74

    ld l, b                                       ; $6b26: $68
    ld h, l                                       ; $6b27: $65

jr_01a_6b28:
    jr nz, jr_01a_6b8d                            ; $6b28: $20 $63

    ld h, c                                       ; $6b2a: $61
    ld [hl], e                                    ; $6b2b: $73
    ld h, l                                       ; $6b2c: $65
    inc l                                         ; $6b2d: $2c
    ld bc, $2049                                  ; $6b2e: $01 $49 $20
    ld l, b                                       ; $6b31: $68
    ld h, c                                       ; $6b32: $61
    halt                                          ; $6b33: $76
    ld h, l                                       ; $6b34: $65
    jr nz, jr_01a_6b98                            ; $6b35: $20 $61

    jr nz, jr_01a_6bb0                            ; $6b37: $20 $77

    ld h, c                                       ; $6b39: $61
    ld a, c                                       ; $6b3a: $79
    ld [hl], e                                    ; $6b3b: $73
    jr nz, jr_01a_6bb2                            ; $6b3c: $20 $74

jr_01a_6b3e:
    ld l, a                                       ; $6b3e: $6f
    ld bc, $6f67                                  ; $6b3f: $01 $67 $6f
    jr nz, @+$64                                  ; $6b42: $20 $62

    ld h, l                                       ; $6b44: $65
    ld h, [hl]                                    ; $6b45: $66
    ld l, a                                       ; $6b46: $6f
    ld [hl], d                                    ; $6b47: $72
    ld h, l                                       ; $6b48: $65
    jr nz, jr_01a_6b94                            ; $6b49: $20 $49

    jr nz, jr_01a_6bbd                            ; $6b4b: $20 $70

jr_01a_6b4d:
    ld l, h                                       ; $6b4d: $6c
    ld h, c                                       ; $6b4e: $61
    ld h, e                                       ; $6b4f: $63
    ld h, l                                       ; $6b50: $65
    ld l, $03                                     ; $6b51: $2e $03
    nop                                           ; $6b53: $00

jr_01a_6b54:
    ld e, c                                       ; $6b54: $59
    ld l, a                                       ; $6b55: $6f
    ld [hl], l                                    ; $6b56: $75
    jr nz, jr_01a_6bbb                            ; $6b57: $20 $62

    ld h, l                                       ; $6b59: $65
    ld h, c                                       ; $6b5a: $61
    ld [hl], h                                    ; $6b5b: $74
    jr nz, jr_01a_6b6c                            ; $6b5c: $20 $0e

    ld b, $20                                     ; $6b5e: $06 $20
    ld h, [hl]                                    ; $6b60: $66
    ld l, a                                       ; $6b61: $6f
    ld [hl], d                                    ; $6b62: $72
    ld bc, $6874                                  ; $6b63: $01 $74 $68
    ld h, l                                       ; $6b66: $65
    jr nz, jr_01a_6bac                            ; $6b67: $20 $43

    ld l, b                                       ; $6b69: $68
    ld h, c                                       ; $6b6a: $61
    ld l, l                                       ; $6b6b: $6d

jr_01a_6b6c:
    ld [hl], b                                    ; $6b6c: $70

jr_01a_6b6d:
    ld l, c                                       ; $6b6d: $69

jr_01a_6b6e:
    ld l, a                                       ; $6b6e: $6f
    ld l, [hl]                                    ; $6b6f: $6e
    ld [hl], e                                    ; $6b70: $73
    ld l, b                                       ; $6b71: $68
    ld l, c                                       ; $6b72: $69
    ld [hl], b                                    ; $6b73: $70
    ld hl, $5401                                  ; $6b74: $21 $01 $54
    ld l, b                                       ; $6b77: $68
    ld h, c                                       ; $6b78: $61
    ld [hl], h                                    ; $6b79: $74
    daa                                           ; $6b7a: $27
    ld [hl], e                                    ; $6b7b: $73
    jr nz, jr_01a_6bdf                            ; $6b7c: $20 $61

    ld l, l                                       ; $6b7e: $6d
    ld h, c                                       ; $6b7f: $61
    ld a, d                                       ; $6b80: $7a
    ld l, c                                       ; $6b81: $69

jr_01a_6b82:
    ld l, [hl]                                    ; $6b82: $6e
    ld h, a                                       ; $6b83: $67
    jr nz, jr_01a_6bed                            ; $6b84: $20 $67

    ld l, a                                       ; $6b86: $6f
    ld l, h                                       ; $6b87: $6c
    ld h, [hl]                                    ; $6b88: $66
    ld hl, $0003                                  ; $6b89: $21 $03 $00
    rlca                                          ; $6b8c: $07

jr_01a_6b8d:
    inc l                                         ; $6b8d: $2c
    jr nz, @+$7b                                  ; $6b8e: $20 $79

    ld l, a                                       ; $6b90: $6f
    ld [hl], l                                    ; $6b91: $75
    daa                                           ; $6b92: $27

jr_01a_6b93:
    ld h, h                                       ; $6b93: $64

jr_01a_6b94:
    ld bc, $6562                                  ; $6b94: $01 $62 $65
    ld [hl], h                                    ; $6b97: $74

jr_01a_6b98:
    ld [hl], h                                    ; $6b98: $74
    ld h, l                                       ; $6b99: $65

jr_01a_6b9a:
    ld [hl], d                                    ; $6b9a: $72
    jr nz, jr_01a_6c14                            ; $6b9b: $20 $77

    ld h, c                                       ; $6b9d: $61
    ld [hl], h                                    ; $6b9e: $74
    ld h, e                                       ; $6b9f: $63
    ld l, b                                       ; $6ba0: $68
    jr nz, jr_01a_6c12                            ; $6ba1: $20 $6f

    ld [hl], l                                    ; $6ba3: $75
    ld [hl], h                                    ; $6ba4: $74
    ld hl, $4901                                  ; $6ba5: $21 $01 $49
    daa                                           ; $6ba8: $27
    ld l, l                                       ; $6ba9: $6d
    jr nz, jr_01a_6c13                            ; $6baa: $20 $67

jr_01a_6bac:
    ld l, a                                       ; $6bac: $6f
    ld l, [hl]                                    ; $6bad: $6e
    ld l, [hl]                                    ; $6bae: $6e
    ld h, c                                       ; $6baf: $61

jr_01a_6bb0:
    jr nz, jr_01a_6c14                            ; $6bb0: $20 $62

jr_01a_6bb2:
    ld h, l                                       ; $6bb2: $65
    jr nz, jr_01a_6bf8                            ; $6bb3: $20 $43

    ld l, h                                       ; $6bb5: $6c
    ld [hl], l                                    ; $6bb6: $75
    ld h, d                                       ; $6bb7: $62
    ld [bc], a                                    ; $6bb8: $02
    ld b, e                                       ; $6bb9: $43
    ld l, b                                       ; $6bba: $68

jr_01a_6bbb:
    ld h, c                                       ; $6bbb: $61
    ld l, l                                       ; $6bbc: $6d

jr_01a_6bbd:
    ld [hl], b                                    ; $6bbd: $70
    inc l                                         ; $6bbe: $2c
    jr nz, jr_01a_6c35                            ; $6bbf: $20 $74

    ld l, a                                       ; $6bc1: $6f
    ld l, a                                       ; $6bc2: $6f
    ld l, $20                                     ; $6bc3: $2e $20
    ld c, c                                       ; $6bc5: $49
    daa                                           ; $6bc6: $27
    ld l, h                                       ; $6bc7: $6c
    ld l, h                                       ; $6bc8: $6c
    ld bc, $6163                                  ; $6bc9: $01 $63 $61
    ld [hl], h                                    ; $6bcc: $74
    ld h, e                                       ; $6bcd: $63
    ld l, b                                       ; $6bce: $68
    jr nz, @+$7b                                  ; $6bcf: $20 $79

    ld l, a                                       ; $6bd1: $6f
    ld [hl], l                                    ; $6bd2: $75
    jr nz, jr_01a_6c48                            ; $6bd3: $20 $73

    ld l, a                                       ; $6bd5: $6f
    ld l, l                                       ; $6bd6: $6d
    ld h, l                                       ; $6bd7: $65
    ld h, h                                       ; $6bd8: $64
    ld h, c                                       ; $6bd9: $61
    ld a, c                                       ; $6bda: $79
    inc l                                         ; $6bdb: $2c
    ld bc, $756a                                  ; $6bdc: $01 $6a $75

jr_01a_6bdf:
    ld [hl], e                                    ; $6bdf: $73
    ld [hl], h                                    ; $6be0: $74
    jr nz, jr_01a_6c5a                            ; $6be1: $20 $77

    ld h, c                                       ; $6be3: $61
    ld l, c                                       ; $6be4: $69
    ld [hl], h                                    ; $6be5: $74
    ld hl, $0003                                  ; $6be6: $21 $03 $00
    ld e, c                                       ; $6be9: $59
    ld l, a                                       ; $6bea: $6f
    ld [hl], l                                    ; $6beb: $75
    daa                                           ; $6bec: $27

jr_01a_6bed:
    ld l, h                                       ; $6bed: $6c
    ld l, h                                       ; $6bee: $6c
    jr nz, jr_01a_6c5f                            ; $6bef: $20 $6e

    ld h, l                                       ; $6bf1: $65
    ld h, l                                       ; $6bf2: $65
    ld h, h                                       ; $6bf3: $64
    jr nz, jr_01a_6c57                            ; $6bf4: $20 $61

    ld l, h                                       ; $6bf6: $6c
    ld l, h                                       ; $6bf7: $6c

jr_01a_6bf8:
    ld bc, $6f79                                  ; $6bf8: $01 $79 $6f
    ld [hl], l                                    ; $6bfb: $75
    ld [hl], d                                    ; $6bfc: $72
    jr nz, jr_01a_6c73                            ; $6bfd: $20 $74

    ld h, l                                       ; $6bff: $65
    ld h, e                                       ; $6c00: $63
    ld l, b                                       ; $6c01: $68
    ld l, [hl]                                    ; $6c02: $6e
    ld l, c                                       ; $6c03: $69
    ld [hl], c                                    ; $6c04: $71
    ld [hl], l                                    ; $6c05: $75
    ld h, l                                       ; $6c06: $65
    ld [hl], e                                    ; $6c07: $73
    jr nz, jr_01a_6c79                            ; $6c08: $20 $6f

    ld l, [hl]                                    ; $6c0a: $6e
    ld bc, $6874                                  ; $6c0b: $01 $74 $68
    ld h, l                                       ; $6c0e: $65
    jr nz, jr_01a_6c5d                            ; $6c0f: $20 $4c

    ld l, c                                       ; $6c11: $69

jr_01a_6c12:
    ld l, [hl]                                    ; $6c12: $6e

jr_01a_6c13:
    ld l, e                                       ; $6c13: $6b

jr_01a_6c14:
    ld [hl], e                                    ; $6c14: $73
    jr nz, jr_01a_6c5a                            ; $6c15: $20 $43

    ld l, a                                       ; $6c17: $6f
    ld [hl], l                                    ; $6c18: $75
    ld [hl], d                                    ; $6c19: $72
    ld [hl], e                                    ; $6c1a: $73
    ld h, l                                       ; $6c1b: $65
    ld l, $03                                     ; $6c1c: $2e $03
    nop                                           ; $6c1e: $00
    ld d, h                                       ; $6c1f: $54
    ld l, b                                       ; $6c20: $68
    ld h, l                                       ; $6c21: $65
    ld [hl], d                                    ; $6c22: $72
    ld h, l                                       ; $6c23: $65
    jr nz, @+$63                                  ; $6c24: $20 $61

    ld [hl], d                                    ; $6c26: $72
    ld h, l                                       ; $6c27: $65
    jr nz, jr_01a_6c91                            ; $6c28: $20 $67

    ld [hl], d                                    ; $6c2a: $72
    ld h, l                                       ; $6c2b: $65
    ld h, c                                       ; $6c2c: $61
    ld [hl], h                                    ; $6c2d: $74
    ld bc, $6f67                                  ; $6c2e: $01 $67 $6f
    ld l, h                                       ; $6c31: $6c
    ld h, [hl]                                    ; $6c32: $66
    ld h, l                                       ; $6c33: $65
    ld [hl], d                                    ; $6c34: $72

jr_01a_6c35:
    ld [hl], e                                    ; $6c35: $73
    jr nz, jr_01a_6c9d                            ; $6c36: $20 $65

    halt                                          ; $6c38: $76
    ld h, l                                       ; $6c39: $65
    ld [hl], d                                    ; $6c3a: $72
    ld a, c                                       ; $6c3b: $79
    ld [hl], a                                    ; $6c3c: $77
    ld l, b                                       ; $6c3d: $68
    ld h, l                                       ; $6c3e: $65
    ld [hl], d                                    ; $6c3f: $72
    ld h, l                                       ; $6c40: $65
    ld hl, $5402                                  ; $6c41: $21 $02 $54
    ld l, b                                       ; $6c44: $68
    ld h, c                                       ; $6c45: $61
    ld [hl], h                                    ; $6c46: $74
    daa                                           ; $6c47: $27

jr_01a_6c48:
    ld [hl], e                                    ; $6c48: $73
    jr nz, jr_01a_6cbf                            ; $6c49: $20 $74

    ld l, b                                       ; $6c4b: $68
    ld h, l                                       ; $6c4c: $65
    jr nz, jr_01a_6c96                            ; $6c4d: $20 $47

    ld [hl], d                                    ; $6c4f: $72
    ld h, c                                       ; $6c50: $61
    ld l, [hl]                                    ; $6c51: $6e
    ld h, h                                       ; $6c52: $64
    ld bc, $6843                                  ; $6c53: $01 $43 $68
    ld h, c                                       ; $6c56: $61

jr_01a_6c57:
    ld l, l                                       ; $6c57: $6d
    ld [hl], b                                    ; $6c58: $70
    ld l, c                                       ; $6c59: $69

jr_01a_6c5a:
    ld l, a                                       ; $6c5a: $6f
    ld l, [hl]                                    ; $6c5b: $6e
    ld [hl], e                                    ; $6c5c: $73

jr_01a_6c5d:
    ld l, b                                       ; $6c5d: $68
    ld l, c                                       ; $6c5e: $69

jr_01a_6c5f:
    ld [hl], b                                    ; $6c5f: $70
    ld bc, $6f66                                  ; $6c60: $01 $66 $6f
    ld [hl], d                                    ; $6c63: $72
    jr nz, jr_01a_6cdf                            ; $6c64: $20 $79

    ld l, a                                       ; $6c66: $6f
    ld [hl], l                                    ; $6c67: $75
    ld hl, $0003                                  ; $6c68: $21 $03 $00
    ld d, a                                       ; $6c6b: $57
    ld h, l                                       ; $6c6c: $65
    ld l, h                                       ; $6c6d: $6c
    ld l, h                                       ; $6c6e: $6c
    jr nz, jr_01a_6cba                            ; $6c6f: $20 $49

    jr nz, @+$75                                  ; $6c71: $20 $73

jr_01a_6c73:
    ld [hl], l                                    ; $6c73: $75
    ld [hl], d                                    ; $6c74: $72
    ld h, l                                       ; $6c75: $65
    jr nz, jr_01a_6cdc                            ; $6c76: $20 $64

    ld l, c                                       ; $6c78: $69

jr_01a_6c79:
    ld h, h                                       ; $6c79: $64
    ld l, [hl]                                    ; $6c7a: $6e
    daa                                           ; $6c7b: $27
    ld [hl], h                                    ; $6c7c: $74
    ld bc, $6977                                  ; $6c7d: $01 $77 $69
    ld l, [hl]                                    ; $6c80: $6e
    inc l                                         ; $6c81: $2c
    jr nz, @+$64                                  ; $6c82: $20 $62

    ld [hl], l                                    ; $6c84: $75
    ld [hl], h                                    ; $6c85: $74
    jr nz, jr_01a_6cf6                            ; $6c86: $20 $6e

    ld h, l                                       ; $6c88: $65
    ld l, c                                       ; $6c89: $69
    ld [hl], h                                    ; $6c8a: $74
    ld l, b                                       ; $6c8b: $68
    ld h, l                                       ; $6c8c: $65
    ld [hl], d                                    ; $6c8d: $72
    jr nz, jr_01a_6cf4                            ; $6c8e: $20 $64

    ld l, c                                       ; $6c90: $69

jr_01a_6c91:
    ld h, h                                       ; $6c91: $64
    ld bc, $6f79                                  ; $6c92: $01 $79 $6f
    ld [hl], l                                    ; $6c95: $75

jr_01a_6c96:
    ld l, $02                                     ; $6c96: $2e $02
    ld c, c                                       ; $6c98: $49
    jr nz, jr_01a_6d08                            ; $6c99: $20 $6d

    ld h, c                                       ; $6c9b: $61
    ld a, c                                       ; $6c9c: $79

jr_01a_6c9d:
    jr nz, jr_01a_6d0b                            ; $6c9d: $20 $6c

    ld l, a                                       ; $6c9f: $6f
    ld [hl], e                                    ; $6ca0: $73
    ld h, l                                       ; $6ca1: $65
    jr nz, @+$76                                  ; $6ca2: $20 $74

    ld l, a                                       ; $6ca4: $6f
    ld bc, $070e                                  ; $6ca5: $01 $0e $07
    inc l                                         ; $6ca8: $2c
    jr nz, @+$64                                  ; $6ca9: $20 $62

    ld [hl], l                                    ; $6cab: $75
    ld [hl], h                                    ; $6cac: $74
    jr nz, jr_01a_6cf8                            ; $6cad: $20 $49

    ld bc, $6f77                                  ; $6caf: $01 $77 $6f
    ld l, [hl]                                    ; $6cb2: $6e
    daa                                           ; $6cb3: $27
    ld [hl], h                                    ; $6cb4: $74
    jr nz, jr_01a_6d23                            ; $6cb5: $20 $6c

    ld l, a                                       ; $6cb7: $6f
    ld [hl], e                                    ; $6cb8: $73
    ld h, l                                       ; $6cb9: $65

jr_01a_6cba:
    jr nz, @+$76                                  ; $6cba: $20 $74

    ld l, a                                       ; $6cbc: $6f
    jr nz, @+$7b                                  ; $6cbd: $20 $79

jr_01a_6cbf:
    ld l, a                                       ; $6cbf: $6f
    ld [hl], l                                    ; $6cc0: $75
    ld hl, $0003                                  ; $6cc1: $21 $03 $00
    ld e, c                                       ; $6cc4: $59
    ld l, a                                       ; $6cc5: $6f
    ld [hl], l                                    ; $6cc6: $75
    jr nz, jr_01a_6d2d                            ; $6cc7: $20 $64

    ld l, c                                       ; $6cc9: $69
    ld h, h                                       ; $6cca: $64
    ld l, [hl]                                    ; $6ccb: $6e
    daa                                           ; $6ccc: $27
    ld [hl], h                                    ; $6ccd: $74
    ld bc, $6562                                  ; $6cce: $01 $62 $65
    ld h, c                                       ; $6cd1: $61
    ld [hl], h                                    ; $6cd2: $74
    jr nz, jr_01a_6d42                            ; $6cd3: $20 $6d

    ld h, l                                       ; $6cd5: $65
    ld l, $2e                                     ; $6cd6: $2e $2e
    ld l, $02                                     ; $6cd8: $2e $02
    ld d, h                                       ; $6cda: $54
    ld l, b                                       ; $6cdb: $68

jr_01a_6cdc:
    ld h, l                                       ; $6cdc: $65
    jr nz, jr_01a_6d42                            ; $6cdd: $20 $63

jr_01a_6cdf:
    ld l, a                                       ; $6cdf: $6f
    ld [hl], l                                    ; $6ce0: $75
    ld [hl], d                                    ; $6ce1: $72
    ld [hl], e                                    ; $6ce2: $73
    ld h, l                                       ; $6ce3: $65
    ld bc, $6e61                                  ; $6ce4: $01 $61 $6e
    ld h, h                                       ; $6ce7: $64
    jr nz, jr_01a_6d5e                            ; $6ce8: $20 $74

    ld l, b                                       ; $6cea: $68
    ld h, l                                       ; $6ceb: $65
    jr nz, @+$79                                  ; $6cec: $20 $77

    ld l, c                                       ; $6cee: $69
    ld l, [hl]                                    ; $6cef: $6e
    ld h, h                                       ; $6cf0: $64
    ld bc, $6562                                  ; $6cf1: $01 $62 $65

jr_01a_6cf4:
    ld h, c                                       ; $6cf4: $61
    ld [hl], h                                    ; $6cf5: $74

jr_01a_6cf6:
    jr nz, @+$6f                                  ; $6cf6: $20 $6d

jr_01a_6cf8:
    ld h, l                                       ; $6cf8: $65
    ld l, $03                                     ; $6cf9: $2e $03
    nop                                           ; $6cfb: $00
    ld c, c                                       ; $6cfc: $49
    ld [hl], h                                    ; $6cfd: $74
    daa                                           ; $6cfe: $27
    ld [hl], e                                    ; $6cff: $73
    jr nz, jr_01a_6d70                            ; $6d00: $20 $6e

    ld l, a                                       ; $6d02: $6f
    ld [hl], h                                    ; $6d03: $74
    jr nz, @+$76                                  ; $6d04: $20 $74

    ld l, b                                       ; $6d06: $68
    ld h, c                                       ; $6d07: $61

jr_01a_6d08:
    ld [hl], h                                    ; $6d08: $74
    jr nz, jr_01a_6d54                            ; $6d09: $20 $49

jr_01a_6d0b:
    ld bc, $6f6c                                  ; $6d0b: $01 $6c $6f
    ld [hl], e                                    ; $6d0e: $73
    ld [hl], h                                    ; $6d0f: $74
    jr nz, jr_01a_6d86                            ; $6d10: $20 $74

    ld l, a                                       ; $6d12: $6f
    jr nz, jr_01a_6d8e                            ; $6d13: $20 $79

    ld l, a                                       ; $6d15: $6f
    ld [hl], l                                    ; $6d16: $75
    ld l, $2e                                     ; $6d17: $2e $2e
    ld l, $02                                     ; $6d19: $2e $02
    ld c, c                                       ; $6d1b: $49
    jr nz, jr_01a_6d8a                            ; $6d1c: $20 $6c

    ld l, a                                       ; $6d1e: $6f
    ld [hl], e                                    ; $6d1f: $73
    ld [hl], h                                    ; $6d20: $74
    jr nz, @+$76                                  ; $6d21: $20 $74

jr_01a_6d23:
    ld l, a                                       ; $6d23: $6f
    jr nz, jr_01a_6d9a                            ; $6d24: $20 $74

    ld l, b                                       ; $6d26: $68
    ld h, l                                       ; $6d27: $65
    ld bc, $6f63                                  ; $6d28: $01 $63 $6f
    ld [hl], l                                    ; $6d2b: $75
    ld [hl], d                                    ; $6d2c: $72

jr_01a_6d2d:
    ld [hl], e                                    ; $6d2d: $73
    ld h, l                                       ; $6d2e: $65
    jr nz, jr_01a_6d92                            ; $6d2f: $20 $61

    ld l, [hl]                                    ; $6d31: $6e
    ld h, h                                       ; $6d32: $64
    jr nz, jr_01a_6da9                            ; $6d33: $20 $74

    ld l, a                                       ; $6d35: $6f
    ld bc, $6874                                  ; $6d36: $01 $74 $68
    ld h, l                                       ; $6d39: $65
    jr nz, jr_01a_6db3                            ; $6d3a: $20 $77

    ld l, c                                       ; $6d3c: $69
    ld l, [hl]                                    ; $6d3d: $6e
    ld h, h                                       ; $6d3e: $64
    ld l, $03                                     ; $6d3f: $2e $03
    nop                                           ; $6d41: $00

jr_01a_6d42:
    ld b, h                                       ; $6d42: $44
    ld h, c                                       ; $6d43: $61
    ld l, [hl]                                    ; $6d44: $6e
    ld h, a                                       ; $6d45: $67
    ld hl, $4920                                  ; $6d46: $21 $20 $49
    ld h, [hl]                                    ; $6d49: $66
    jr nz, jr_01a_6dbb                            ; $6d4a: $20 $6f

    ld l, [hl]                                    ; $6d4c: $6e
    ld l, h                                       ; $6d4d: $6c
    ld a, c                                       ; $6d4e: $79
    jr nz, jr_01a_6d9a                            ; $6d4f: $20 $49

    ld bc, $6168                                  ; $6d51: $01 $68 $61

jr_01a_6d54:
    ld h, h                                       ; $6d54: $64
    ld l, [hl]                                    ; $6d55: $6e
    daa                                           ; $6d56: $27
    ld [hl], h                                    ; $6d57: $74
    jr nz, jr_01a_6dc1                            ; $6d58: $20 $67

    ld l, a                                       ; $6d5a: $6f
    ld [hl], h                                    ; $6d5b: $74
    ld [hl], h                                    ; $6d5c: $74
    ld h, l                                       ; $6d5d: $65

jr_01a_6d5e:
    ld l, [hl]                                    ; $6d5e: $6e
    jr nz, jr_01a_6dd5                            ; $6d5f: $20 $74

    ld l, b                                       ; $6d61: $68
    ld h, c                                       ; $6d62: $61
    ld [hl], h                                    ; $6d63: $74
    ld bc, $6f64                                  ; $6d64: $01 $64 $6f
    ld [hl], l                                    ; $6d67: $75
    ld h, d                                       ; $6d68: $62
    ld l, h                                       ; $6d69: $6c
    ld h, l                                       ; $6d6a: $65
    jr nz, jr_01a_6dcf                            ; $6d6b: $20 $62

    ld l, a                                       ; $6d6d: $6f
    ld h, a                                       ; $6d6e: $67
    ld h, l                                       ; $6d6f: $65

jr_01a_6d70:
    ld a, c                                       ; $6d70: $79
    ld hl, $0003                                  ; $6d71: $21 $03 $00
    ld c, $05                                     ; $6d74: $0e $05
    jr nz, jr_01a_6de1                            ; $6d76: $20 $69

    ld [hl], e                                    ; $6d78: $73
    jr nz, @+$73                                  ; $6d79: $20 $71

    ld [hl], l                                    ; $6d7b: $75
    ld l, c                                       ; $6d7c: $69
    ld [hl], h                                    ; $6d7d: $74
    ld h, l                                       ; $6d7e: $65
    jr nz, jr_01a_6df5                            ; $6d7f: $20 $74

    ld l, b                                       ; $6d81: $68
    ld h, l                                       ; $6d82: $65
    ld bc, $6166                                  ; $6d83: $01 $66 $61

jr_01a_6d86:
    halt                                          ; $6d86: $76
    ld l, a                                       ; $6d87: $6f
    ld [hl], d                                    ; $6d88: $72
    ld l, c                                       ; $6d89: $69

jr_01a_6d8a:
    ld [hl], h                                    ; $6d8a: $74
    ld h, l                                       ; $6d8b: $65
    jr nz, jr_01a_6def                            ; $6d8c: $20 $61

jr_01a_6d8e:
    ld l, l                                       ; $6d8e: $6d
    ld l, a                                       ; $6d8f: $6f
    ld l, [hl]                                    ; $6d90: $6e
    ld h, a                                       ; $6d91: $67

jr_01a_6d92:
    jr nz, jr_01a_6e08                            ; $6d92: $20 $74

    ld l, b                                       ; $6d94: $68
    ld h, l                                       ; $6d95: $65
    ld bc, $6f77                                  ; $6d96: $01 $77 $6f
    ld l, l                                       ; $6d99: $6d

jr_01a_6d9a:
    ld h, l                                       ; $6d9a: $65
    ld l, [hl]                                    ; $6d9b: $6e
    jr nz, jr_01a_6e05                            ; $6d9c: $20 $67

    ld l, a                                       ; $6d9e: $6f
    ld l, h                                       ; $6d9f: $6c
    ld h, [hl]                                    ; $6da0: $66
    ld h, l                                       ; $6da1: $65
    ld [hl], d                                    ; $6da2: $72
    ld [hl], e                                    ; $6da3: $73
    ld l, $03                                     ; $6da4: $2e $03
    nop                                           ; $6da6: $00
    ld d, h                                       ; $6da7: $54
    ld l, b                                       ; $6da8: $68

jr_01a_6da9:
    ld h, c                                       ; $6da9: $61
    ld [hl], h                                    ; $6daa: $74
    jr nz, @+$6e                                  ; $6dab: $20 $6c

    ld h, c                                       ; $6dad: $61
    ld [hl], e                                    ; $6dae: $73
    ld [hl], h                                    ; $6daf: $74
    jr nz, @+$69                                  ; $6db0: $20 $67

    ld [hl], d                                    ; $6db2: $72

jr_01a_6db3:
    ld l, a                                       ; $6db3: $6f
    ld [hl], l                                    ; $6db4: $75
    ld [hl], b                                    ; $6db5: $70
    ld bc, $6f74                                  ; $6db6: $01 $74 $6f
    jr nz, jr_01a_6e2e                            ; $6db9: $20 $73

jr_01a_6dbb:
    ld [hl], h                                    ; $6dbb: $74
    ld h, c                                       ; $6dbc: $61
    ld [hl], d                                    ; $6dbd: $72
    ld [hl], h                                    ; $6dbe: $74
    jr nz, jr_01a_6e2e                            ; $6dbf: $20 $6d

jr_01a_6dc1:
    ld l, a                                       ; $6dc1: $6f
    halt                                          ; $6dc2: $76
    ld l, c                                       ; $6dc3: $69
    ld l, [hl]                                    ; $6dc4: $6e
    ld h, a                                       ; $6dc5: $67
    ld bc, $7369                                  ; $6dc6: $01 $69 $73
    jr nz, jr_01a_6e3d                            ; $6dc9: $20 $72

    ld h, l                                       ; $6dcb: $65
    ld h, c                                       ; $6dcc: $61
    ld l, h                                       ; $6dcd: $6c
    ld l, h                                       ; $6dce: $6c

jr_01a_6dcf:
    ld a, c                                       ; $6dcf: $79
    jr nz, jr_01a_6e45                            ; $6dd0: $20 $73

    ld l, h                                       ; $6dd2: $6c
    ld l, a                                       ; $6dd3: $6f
    ld [hl], a                                    ; $6dd4: $77

jr_01a_6dd5:
    ld l, $02                                     ; $6dd5: $2e $02
    ld c, c                                       ; $6dd7: $49
    ld h, [hl]                                    ; $6dd8: $66
    jr nz, jr_01a_6e4f                            ; $6dd9: $20 $74

    ld l, b                                       ; $6ddb: $68
    ld h, l                                       ; $6ddc: $65
    ld a, c                                       ; $6ddd: $79
    jr nz, jr_01a_6e47                            ; $6dde: $20 $67

    ld l, a                                       ; $6de0: $6f

jr_01a_6de1:
    jr nz, jr_01a_6e57                            ; $6de1: $20 $74

    ld l, a                                       ; $6de3: $6f
    ld l, a                                       ; $6de4: $6f
    ld bc, $6c73                                  ; $6de5: $01 $73 $6c
    ld l, a                                       ; $6de8: $6f
    ld [hl], a                                    ; $6de9: $77
    inc l                                         ; $6dea: $2c
    jr nz, jr_01a_6e61                            ; $6deb: $20 $74

    ld l, b                                       ; $6ded: $68
    ld h, l                                       ; $6dee: $65

jr_01a_6def:
    ld a, c                                       ; $6def: $79
    daa                                           ; $6df0: $27
    ld l, h                                       ; $6df1: $6c
    ld l, h                                       ; $6df2: $6c
    jr nz, jr_01a_6e57                            ; $6df3: $20 $62

jr_01a_6df5:
    ld l, h                                       ; $6df5: $6c
    ld l, a                                       ; $6df6: $6f
    ld [hl], a                                    ; $6df7: $77
    ld bc, $796d                                  ; $6df8: $01 $6d $79
    jr nz, jr_01a_6e6f                            ; $6dfb: $20 $72

    ld l, b                                       ; $6dfd: $68
    ld a, c                                       ; $6dfe: $79
    ld [hl], h                                    ; $6dff: $74
    ld l, b                                       ; $6e00: $68
    ld l, l                                       ; $6e01: $6d
    ld hl, $0003                                  ; $6e02: $21 $03 $00

jr_01a_6e05:
    ld d, a                                       ; $6e05: $57
    ld h, l                                       ; $6e06: $65
    ld l, h                                       ; $6e07: $6c

jr_01a_6e08:
    ld l, h                                       ; $6e08: $6c
    inc l                                         ; $6e09: $2c
    jr nz, jr_01a_6e83                            ; $6e0a: $20 $77

    ld h, l                                       ; $6e0c: $65
    daa                                           ; $6e0d: $27
    ld [hl], d                                    ; $6e0e: $72
    ld h, l                                       ; $6e0f: $65
    jr nz, jr_01a_6e73                            ; $6e10: $20 $61

    jr nz, jr_01a_6e87                            ; $6e12: $20 $73

    ld l, a                                       ; $6e14: $6f
    ld [hl], d                                    ; $6e15: $72
    ld [hl], d                                    ; $6e16: $72
    ld a, c                                       ; $6e17: $79
    ld bc, $6f63                                  ; $6e18: $01 $63 $6f
    ld [hl], l                                    ; $6e1b: $75
    ld [hl], b                                    ; $6e1c: $70
    ld l, h                                       ; $6e1d: $6c
    ld h, l                                       ; $6e1e: $65
    jr nz, jr_01a_6e90                            ; $6e1f: $20 $6f

    ld h, [hl]                                    ; $6e21: $66
    jr nz, jr_01a_6e90                            ; $6e22: $20 $6c

    ld l, a                                       ; $6e24: $6f
    ld [hl], e                                    ; $6e25: $73
    ld h, l                                       ; $6e26: $65
    ld [hl], d                                    ; $6e27: $72
    ld [hl], e                                    ; $6e28: $73
    ld hl, $4201                                  ; $6e29: $21 $01 $42
    ld [hl], l                                    ; $6e2c: $75
    ld [hl], h                                    ; $6e2d: $74

jr_01a_6e2e:
    jr nz, jr_01a_6e9f                            ; $6e2e: $20 $6f

    ld [hl], l                                    ; $6e30: $75
    ld [hl], d                                    ; $6e31: $72
    jr nz, jr_01a_6ea8                            ; $6e32: $20 $74

    ld l, c                                       ; $6e34: $69
    ld l, l                                       ; $6e35: $6d
    ld h, l                                       ; $6e36: $65
    daa                                           ; $6e37: $27
    ld l, h                                       ; $6e38: $6c
    ld l, h                                       ; $6e39: $6c
    jr nz, jr_01a_6e9f                            ; $6e3a: $20 $63

    ld l, a                                       ; $6e3c: $6f

jr_01a_6e3d:
    ld l, l                                       ; $6e3d: $6d
    ld h, l                                       ; $6e3e: $65
    ld hl, $0003                                  ; $6e3f: $21 $03 $00
    ld e, c                                       ; $6e42: $59
    ld l, a                                       ; $6e43: $6f
    ld [hl], l                                    ; $6e44: $75

jr_01a_6e45:
    jr nz, jr_01a_6eb7                            ; $6e45: $20 $70

jr_01a_6e47:
    ld l, h                                       ; $6e47: $6c
    ld h, c                                       ; $6e48: $61
    ld h, e                                       ; $6e49: $63
    ld h, l                                       ; $6e4a: $65
    ld h, h                                       ; $6e4b: $64
    jr nz, jr_01a_6e75                            ; $6e4c: $20 $27

    ld h, e                                       ; $6e4e: $63

jr_01a_6e4f:
    ld h, c                                       ; $6e4f: $61
    ld [hl], l                                    ; $6e50: $75
    ld [hl], e                                    ; $6e51: $73
    ld h, l                                       ; $6e52: $65
    ld bc, $6f79                                  ; $6e53: $01 $79 $6f
    ld [hl], l                                    ; $6e56: $75

jr_01a_6e57:
    jr nz, jr_01a_6ebd                            ; $6e57: $20 $64

    ld l, c                                       ; $6e59: $69
    ld h, h                                       ; $6e5a: $64
    ld l, [hl]                                    ; $6e5b: $6e
    daa                                           ; $6e5c: $27
    ld [hl], h                                    ; $6e5d: $74
    jr nz, jr_01a_6ecc                            ; $6e5e: $20 $6c

    ld h, l                                       ; $6e60: $65

jr_01a_6e61:
    ld [hl], h                                    ; $6e61: $74
    jr nz, jr_01a_6ed8                            ; $6e62: $20 $74

    ld l, b                                       ; $6e64: $68
    ld h, l                                       ; $6e65: $65
    ld bc, $6f74                                  ; $6e66: $01 $74 $6f
    ld [hl], l                                    ; $6e69: $75
    ld [hl], d                                    ; $6e6a: $72
    ld l, [hl]                                    ; $6e6b: $6e
    ld h, c                                       ; $6e6c: $61
    ld l, l                                       ; $6e6d: $6d
    ld h, l                                       ; $6e6e: $65

jr_01a_6e6f:
    ld l, [hl]                                    ; $6e6f: $6e
    ld [hl], h                                    ; $6e70: $74
    jr nz, jr_01a_6ed9                            ; $6e71: $20 $66

jr_01a_6e73:
    ld h, c                                       ; $6e73: $61
    ld a, d                                       ; $6e74: $7a

jr_01a_6e75:
    ld h, l                                       ; $6e75: $65
    ld [bc], a                                    ; $6e76: $02
    ld a, c                                       ; $6e77: $79
    ld l, a                                       ; $6e78: $6f
    ld [hl], l                                    ; $6e79: $75
    ld l, $20                                     ; $6e7a: $2e $20
    ld c, c                                       ; $6e7c: $49
    jr nz, jr_01a_6ee6                            ; $6e7d: $20 $67

    ld l, a                                       ; $6e7f: $6f
    ld [hl], h                                    ; $6e80: $74
    jr nz, jr_01a_6ef3                            ; $6e81: $20 $70

jr_01a_6e83:
    ld [hl], e                                    ; $6e83: $73
    ld a, c                                       ; $6e84: $79
    ld h, e                                       ; $6e85: $63
    ld l, b                                       ; $6e86: $68

jr_01a_6e87:
    ld h, l                                       ; $6e87: $65
    ld h, h                                       ; $6e88: $64
    dec l                                         ; $6e89: $2d
    ld bc, $756f                                  ; $6e8a: $01 $6f $75
    ld [hl], h                                    ; $6e8d: $74
    jr nz, jr_01a_6ef1                            ; $6e8e: $20 $61

jr_01a_6e90:
    ld l, [hl]                                    ; $6e90: $6e
    ld h, h                                       ; $6e91: $64
    jr nz, jr_01a_6ef7                            ; $6e92: $20 $63

    ld l, a                                       ; $6e94: $6f
    ld [hl], l                                    ; $6e95: $75
    ld l, h                                       ; $6e96: $6c
    ld h, h                                       ; $6e97: $64
    ld l, [hl]                                    ; $6e98: $6e
    daa                                           ; $6e99: $27
    ld [hl], h                                    ; $6e9a: $74
    ld bc, $6c70                                  ; $6e9b: $01 $70 $6c
    ld h, c                                       ; $6e9e: $61

jr_01a_6e9f:
    ld a, c                                       ; $6e9f: $79
    jr nz, jr_01a_6f0f                            ; $6ea0: $20 $6d

    ld a, c                                       ; $6ea2: $79
    jr nz, jr_01a_6f07                            ; $6ea3: $20 $62

    ld h, l                                       ; $6ea5: $65
    ld [hl], e                                    ; $6ea6: $73
    ld [hl], h                                    ; $6ea7: $74

jr_01a_6ea8:
    ld hl, $0003                                  ; $6ea8: $21 $03 $00
    ld d, h                                       ; $6eab: $54
    ld [hl], d                                    ; $6eac: $72
    ld h, c                                       ; $6ead: $61
    ld l, c                                       ; $6eae: $69
    ld l, [hl]                                    ; $6eaf: $6e
    ld l, c                                       ; $6eb0: $69
    ld l, [hl]                                    ; $6eb1: $6e
    ld h, a                                       ; $6eb2: $67
    daa                                           ; $6eb3: $27
    ld [hl], e                                    ; $6eb4: $73
    jr nz, @+$76                                  ; $6eb5: $20 $74

jr_01a_6eb7:
    ld l, b                                       ; $6eb7: $68
    ld h, l                                       ; $6eb8: $65
    jr nz, @+$6d                                  ; $6eb9: $20 $6b

    ld h, l                                       ; $6ebb: $65
    ld a, c                                       ; $6ebc: $79

jr_01a_6ebd:
    ld bc, $6f74                                  ; $6ebd: $01 $74 $6f
    jr nz, jr_01a_6f35                            ; $6ec0: $20 $73

    ld [hl], l                                    ; $6ec2: $75
    ld h, e                                       ; $6ec3: $63
    ld h, e                                       ; $6ec4: $63
    ld h, l                                       ; $6ec5: $65
    ld [hl], e                                    ; $6ec6: $73
    ld [hl], e                                    ; $6ec7: $73
    inc l                                         ; $6ec8: $2c
    jr nz, jr_01a_6f3d                            ; $6ec9: $20 $72

    ld l, c                                       ; $6ecb: $69

jr_01a_6ecc:
    ld h, a                                       ; $6ecc: $67
    ld l, b                                       ; $6ecd: $68
    ld [hl], h                                    ; $6ece: $74
    ccf                                           ; $6ecf: $3f
    ld bc, $2749                                  ; $6ed0: $01 $49 $27
    ld l, l                                       ; $6ed3: $6d
    jr nz, jr_01a_6f4a                            ; $6ed4: $20 $74

    ld [hl], d                                    ; $6ed6: $72
    ld h, c                                       ; $6ed7: $61

jr_01a_6ed8:
    ld l, c                                       ; $6ed8: $69

jr_01a_6ed9:
    ld l, [hl]                                    ; $6ed9: $6e
    ld l, c                                       ; $6eda: $69
    ld l, [hl]                                    ; $6edb: $6e
    ld h, a                                       ; $6edc: $67
    inc l                                         ; $6edd: $2c
    jr nz, jr_01a_6f54                            ; $6ede: $20 $74

    ld l, a                                       ; $6ee0: $6f
    ld l, a                                       ; $6ee1: $6f
    ld hl, $0003                                  ; $6ee2: $21 $03 $00
    ld b, l                                       ; $6ee5: $45

jr_01a_6ee6:
    halt                                          ; $6ee6: $76
    ld h, l                                       ; $6ee7: $65
    ld [hl], d                                    ; $6ee8: $72
    ld a, c                                       ; $6ee9: $79
    ld l, a                                       ; $6eea: $6f
    ld l, [hl]                                    ; $6eeb: $6e
    ld h, l                                       ; $6eec: $65
    daa                                           ; $6eed: $27
    ld [hl], e                                    ; $6eee: $73
    jr nz, jr_01a_6f58                            ; $6eef: $20 $67

jr_01a_6ef1:
    ld h, l                                       ; $6ef1: $65
    ld [hl], h                                    ; $6ef2: $74

jr_01a_6ef3:
    ld [hl], h                                    ; $6ef3: $74
    ld l, c                                       ; $6ef4: $69
    ld l, [hl]                                    ; $6ef5: $6e
    ld h, a                                       ; $6ef6: $67

jr_01a_6ef7:
    ld bc, $6e69                                  ; $6ef7: $01 $69 $6e
    ld [hl], h                                    ; $6efa: $74
    ld l, a                                       ; $6efb: $6f
    jr nz, jr_01a_6f65                            ; $6efc: $20 $67

    ld l, a                                       ; $6efe: $6f
    ld l, h                                       ; $6eff: $6c
    ld h, [hl]                                    ; $6f00: $66
    jr nz, jr_01a_6f76                            ; $6f01: $20 $73

    ld l, c                                       ; $6f03: $69
    ld l, [hl]                                    ; $6f04: $6e
    ld h, e                                       ; $6f05: $63
    ld h, l                                       ; $6f06: $65

jr_01a_6f07:
    ld bc, $6f79                                  ; $6f07: $01 $79 $6f
    ld [hl], l                                    ; $6f0a: $75
    jr nz, @+$64                                  ; $6f0b: $20 $62

    ld h, l                                       ; $6f0d: $65
    ld h, e                                       ; $6f0e: $63

jr_01a_6f0f:
    ld h, c                                       ; $6f0f: $61
    ld l, l                                       ; $6f10: $6d
    ld h, l                                       ; $6f11: $65
    jr nz, @+$45                                  ; $6f12: $20 $43

    ld l, b                                       ; $6f14: $68
    ld h, c                                       ; $6f15: $61
    ld l, l                                       ; $6f16: $6d
    ld [hl], b                                    ; $6f17: $70
    ld l, $03                                     ; $6f18: $2e $03
    nop                                           ; $6f1a: $00
    ld b, a                                       ; $6f1b: $47
    ld h, l                                       ; $6f1c: $65
    ld [hl], h                                    ; $6f1d: $74
    ld [hl], h                                    ; $6f1e: $74
    ld l, c                                       ; $6f1f: $69
    ld l, [hl]                                    ; $6f20: $6e
    ld h, a                                       ; $6f21: $67
    jr nz, jr_01a_6f93                            ; $6f22: $20 $6f

    ld l, [hl]                                    ; $6f24: $6e
    jr nz, @+$6b                                  ; $6f25: $20 $69

    ld l, [hl]                                    ; $6f27: $6e
    jr nz, jr_01a_6f5c                            ; $6f28: $20 $32

    jr nz, jr_01a_6f9b                            ; $6f2a: $20 $6f

    ld l, [hl]                                    ; $6f2c: $6e
    ld bc, $6874                                  ; $6f2d: $01 $74 $68
    ld h, l                                       ; $6f30: $65
    jr nz, jr_01a_6f9f                            ; $6f31: $20 $6c

    ld l, a                                       ; $6f33: $6f
    ld l, [hl]                                    ; $6f34: $6e

jr_01a_6f35:
    ld h, a                                       ; $6f35: $67
    jr nz, jr_01a_6fa0                            ; $6f36: $20 $68

    ld l, a                                       ; $6f38: $6f
    ld l, h                                       ; $6f39: $6c
    ld h, l                                       ; $6f3a: $65
    jr nz, jr_01a_6fa6                            ; $6f3b: $20 $69

jr_01a_6f3d:
    ld [hl], e                                    ; $6f3d: $73
    ld bc, $796d                                  ; $6f3e: $01 $6d $79
    jr nz, jr_01a_6fac                            ; $6f41: $20 $69

    ld l, l                                       ; $6f43: $6d
    ld [hl], b                                    ; $6f44: $70
    ld l, a                                       ; $6f45: $6f
    ld [hl], e                                    ; $6f46: $73
    ld [hl], e                                    ; $6f47: $73
    ld l, c                                       ; $6f48: $69
    ld h, d                                       ; $6f49: $62

jr_01a_6f4a:
    ld l, h                                       ; $6f4a: $6c
    ld h, l                                       ; $6f4b: $65
    jr nz, jr_01a_6fb2                            ; $6f4c: $20 $64

    ld [hl], d                                    ; $6f4e: $72
    ld h, l                                       ; $6f4f: $65
    ld h, c                                       ; $6f50: $61
    ld l, l                                       ; $6f51: $6d
    ld l, $02                                     ; $6f52: $2e $02

jr_01a_6f54:
    ld c, c                                       ; $6f54: $49
    ld h, [hl]                                    ; $6f55: $66
    jr nz, jr_01a_6fa1                            ; $6f56: $20 $49

jr_01a_6f58:
    jr nz, @+$65                                  ; $6f58: $20 $63

    ld l, a                                       ; $6f5a: $6f
    ld [hl], l                                    ; $6f5b: $75

jr_01a_6f5c:
    ld l, h                                       ; $6f5c: $6c
    ld h, h                                       ; $6f5d: $64
    jr nz, jr_01a_6fc8                            ; $6f5e: $20 $68

    ld l, c                                       ; $6f60: $69
    ld [hl], h                                    ; $6f61: $74
    jr nz, jr_01a_6fc5                            ; $6f62: $20 $61

    ld [hl], e                                    ; $6f64: $73

jr_01a_6f65:
    ld bc, $6166                                  ; $6f65: $01 $66 $61
    ld [hl], d                                    ; $6f68: $72
    jr nz, jr_01a_6fcc                            ; $6f69: $20 $61

    ld [hl], e                                    ; $6f6b: $73
    jr nz, jr_01a_6f7c                            ; $6f6c: $20 $0e

    ld b, $2c                                     ; $6f6e: $06 $2c
    jr nz, jr_01a_6fbb                            ; $6f70: $20 $49

    ld bc, $6f63                                  ; $6f72: $01 $63 $6f
    ld [hl], l                                    ; $6f75: $75

jr_01a_6f76:
    ld l, h                                       ; $6f76: $6c
    ld h, h                                       ; $6f77: $64
    jr nz, jr_01a_6fe1                            ; $6f78: $20 $67

    ld h, l                                       ; $6f7a: $65
    ld [hl], h                                    ; $6f7b: $74

jr_01a_6f7c:
    jr nz, jr_01a_6fdf                            ; $6f7c: $20 $61

    ld l, [hl]                                    ; $6f7e: $6e
    jr nz, @+$67                                  ; $6f7f: $20 $65

    ld h, c                                       ; $6f81: $61
    ld h, a                                       ; $6f82: $67
    ld l, h                                       ; $6f83: $6c
    ld h, l                                       ; $6f84: $65
    ld hl, $0003                                  ; $6f85: $21 $03 $00
    ld c, a                                       ; $6f88: $4f
    ld l, b                                       ; $6f89: $68
    inc l                                         ; $6f8a: $2c
    jr nz, jr_01a_6ffa                            ; $6f8b: $20 $6d

    ld h, c                                       ; $6f8d: $61
    ld l, [hl]                                    ; $6f8e: $6e
    ld hl, $5320                                  ; $6f8f: $21 $20 $53
    ld l, a                                       ; $6f92: $6f

jr_01a_6f93:
    ld l, l                                       ; $6f93: $6d
    ld h, l                                       ; $6f94: $65
    ld h, d                                       ; $6f95: $62
    ld l, a                                       ; $6f96: $6f
    ld h, h                                       ; $6f97: $64
    ld a, c                                       ; $6f98: $79
    daa                                           ; $6f99: $27
    ld [hl], e                                    ; $6f9a: $73

jr_01a_6f9b:
    ld bc, $7274                                  ; $6f9b: $01 $74 $72
    ld l, a                                       ; $6f9e: $6f

jr_01a_6f9f:
    ld [hl], l                                    ; $6f9f: $75

jr_01a_6fa0:
    ld h, d                                       ; $6fa0: $62

jr_01a_6fa1:
    ld l, h                                       ; $6fa1: $6c
    ld h, l                                       ; $6fa2: $65
    jr nz, @+$75                                  ; $6fa3: $20 $73

    ld l, b                                       ; $6fa5: $68

jr_01a_6fa6:
    ld l, a                                       ; $6fa6: $6f
    ld [hl], h                                    ; $6fa7: $74
    daa                                           ; $6fa8: $27
    ld [hl], e                                    ; $6fa9: $73
    jr nz, jr_01a_7010                            ; $6faa: $20 $64

jr_01a_6fac:
    ld h, l                                       ; $6fac: $65
    ld l, h                                       ; $6fad: $6c
    ld h, c                                       ; $6fae: $61
    ld a, c                                       ; $6faf: $79
    ld h, l                                       ; $6fb0: $65
    ld h, h                                       ; $6fb1: $64

jr_01a_6fb2:
    ld bc, $756f                                  ; $6fb2: $01 $6f $75
    ld [hl], d                                    ; $6fb5: $72
    jr nz, jr_01a_702b                            ; $6fb6: $20 $73

    ld [hl], h                                    ; $6fb8: $74
    ld h, c                                       ; $6fb9: $61
    ld [hl], d                                    ; $6fba: $72

jr_01a_6fbb:
    ld [hl], h                                    ; $6fbb: $74
    ld hl, $0003                                  ; $6fbc: $21 $03 $00
    ld d, a                                       ; $6fbf: $57
    ld l, b                                       ; $6fc0: $68
    ld h, l                                       ; $6fc1: $65
    ld l, [hl]                                    ; $6fc2: $6e
    jr nz, @+$6f                                  ; $6fc3: $20 $6d

jr_01a_6fc5:
    ld a, c                                       ; $6fc5: $79
    jr nz, jr_01a_703b                            ; $6fc6: $20 $73

jr_01a_6fc8:
    ld [hl], h                                    ; $6fc8: $74
    ld h, c                                       ; $6fc9: $61
    ld [hl], d                                    ; $6fca: $72
    ld [hl], h                                    ; $6fcb: $74

jr_01a_6fcc:
    jr nz, @+$79                                  ; $6fcc: $20 $77

    ld h, c                                       ; $6fce: $61
    ld [hl], e                                    ; $6fcf: $73
    ld bc, $6564                                  ; $6fd0: $01 $64 $65
    ld l, h                                       ; $6fd3: $6c
    ld h, c                                       ; $6fd4: $61
    ld a, c                                       ; $6fd5: $79
    ld h, l                                       ; $6fd6: $65
    ld h, h                                       ; $6fd7: $64
    inc l                                         ; $6fd8: $2c
    jr nz, jr_01a_7024                            ; $6fd9: $20 $49

    ld bc, $696d                                  ; $6fdb: $01 $6d $69
    ld [hl], e                                    ; $6fde: $73

jr_01a_6fdf:
    ld [hl], e                                    ; $6fdf: $73
    ld h, l                                       ; $6fe0: $65

jr_01a_6fe1:
    ld h, h                                       ; $6fe1: $64
    jr nz, jr_01a_7051                            ; $6fe2: $20 $6d

    ld a, c                                       ; $6fe4: $79
    jr nz, jr_01a_7059                            ; $6fe5: $20 $72

    ld l, b                                       ; $6fe7: $68
    ld a, c                                       ; $6fe8: $79
    ld [hl], h                                    ; $6fe9: $74
    ld l, b                                       ; $6fea: $68
    ld l, l                                       ; $6feb: $6d
    ld hl, $0003                                  ; $6fec: $21 $03 $00
    ld c, c                                       ; $6fef: $49
    jr nz, jr_01a_7069                            ; $6ff0: $20 $77

    ld h, c                                       ; $6ff2: $61
    ld [hl], e                                    ; $6ff3: $73
    jr nz, jr_01a_706d                            ; $6ff4: $20 $77

    ld h, c                                       ; $6ff6: $61
    ld [hl], h                                    ; $6ff7: $74
    ld h, e                                       ; $6ff8: $63
    ld l, b                                       ; $6ff9: $68

jr_01a_6ffa:
    ld l, c                                       ; $6ffa: $69
    ld l, [hl]                                    ; $6ffb: $6e
    ld h, a                                       ; $6ffc: $67
    jr nz, jr_01a_7078                            ; $6ffd: $20 $79

    ld l, a                                       ; $6fff: $6f
    ld [hl], l                                    ; $7000: $75
    ld [hl], d                                    ; $7001: $72
    ld bc, $6c70                                  ; $7002: $01 $70 $6c
    ld h, c                                       ; $7005: $61
    ld a, c                                       ; $7006: $79
    ld l, $2e                                     ; $7007: $2e $2e
    ld l, $59                                     ; $7009: $2e $59
    ld l, a                                       ; $700b: $6f
    ld [hl], l                                    ; $700c: $75
    daa                                           ; $700d: $27
    ld [hl], d                                    ; $700e: $72
    ld h, l                                       ; $700f: $65

jr_01a_7010:
    jr nz, @+$75                                  ; $7010: $20 $73

    ld l, l                                       ; $7012: $6d
    ld l, a                                       ; $7013: $6f
    ld l, a                                       ; $7014: $6f
    ld [hl], h                                    ; $7015: $74
    ld l, b                                       ; $7016: $68
    ld hl, $5901                                  ; $7017: $21 $01 $59
    ld l, a                                       ; $701a: $6f
    ld [hl], l                                    ; $701b: $75
    jr nz, jr_01a_7081                            ; $701c: $20 $63

    ld h, c                                       ; $701e: $61
    ld l, [hl]                                    ; $701f: $6e
    jr nz, jr_01a_7092                            ; $7020: $20 $70

    ld l, h                                       ; $7022: $6c
    ld h, c                                       ; $7023: $61

jr_01a_7024:
    ld h, e                                       ; $7024: $63
    ld h, l                                       ; $7025: $65
    ld hl, $0003                                  ; $7026: $21 $03 $00
    ld d, b                                       ; $7029: $50
    ld l, h                                       ; $702a: $6c

jr_01a_702b:
    ld h, c                                       ; $702b: $61
    ld a, c                                       ; $702c: $79
    jr nz, jr_01a_70a3                            ; $702d: $20 $74

    ld l, b                                       ; $702f: $68
    ld h, l                                       ; $7030: $65
    jr nz, jr_01a_7096                            ; $7031: $20 $63

    ld l, a                                       ; $7033: $6f
    ld [hl], l                                    ; $7034: $75
    ld [hl], d                                    ; $7035: $72
    ld [hl], e                                    ; $7036: $73
    ld h, l                                       ; $7037: $65
    ld bc, $2031                                  ; $7038: $01 $31 $20

jr_01a_703b:
    ld l, b                                       ; $703b: $68
    ld l, a                                       ; $703c: $6f
    ld l, h                                       ; $703d: $6c
    ld h, l                                       ; $703e: $65
    jr nz, @+$63                                  ; $703f: $20 $61

    ld [hl], h                                    ; $7041: $74
    jr nz, jr_01a_70a5                            ; $7042: $20 $61

    jr nz, jr_01a_70ba                            ; $7044: $20 $74

    ld l, c                                       ; $7046: $69
    ld l, l                                       ; $7047: $6d
    ld h, l                                       ; $7048: $65
    ld l, $2e                                     ; $7049: $2e $2e
    ld l, $01                                     ; $704b: $2e $01
    ld d, h                                       ; $704d: $54
    ld l, b                                       ; $704e: $68
    ld h, c                                       ; $704f: $61
    ld [hl], h                                    ; $7050: $74

jr_01a_7051:
    daa                                           ; $7051: $27
    ld [hl], e                                    ; $7052: $73
    jr nz, jr_01a_70bd                            ; $7053: $20 $68

    ld l, a                                       ; $7055: $6f
    ld [hl], a                                    ; $7056: $77
    jr nz, @+$7b                                  ; $7057: $20 $79

jr_01a_7059:
    ld l, a                                       ; $7059: $6f
    ld [hl], l                                    ; $705a: $75
    jr nz, @+$79                                  ; $705b: $20 $77

    ld l, c                                       ; $705d: $69
    ld l, [hl]                                    ; $705e: $6e
    ld hl, $0003                                  ; $705f: $21 $03 $00
    ld d, h                                       ; $7062: $54
    ld l, b                                       ; $7063: $68
    ld h, l                                       ; $7064: $65
    jr nz, jr_01a_70aa                            ; $7065: $20 $43

    ld l, h                                       ; $7067: $6c
    ld [hl], l                                    ; $7068: $75

jr_01a_7069:
    ld h, d                                       ; $7069: $62
    jr nz, jr_01a_70af                            ; $706a: $20 $43

    ld l, b                                       ; $706c: $68

jr_01a_706d:
    ld h, c                                       ; $706d: $61
    ld l, l                                       ; $706e: $6d
    ld [hl], b                                    ; $706f: $70
    ld l, c                                       ; $7070: $69
    ld l, a                                       ; $7071: $6f
    ld l, [hl]                                    ; $7072: $6e
    ld bc, $7369                                  ; $7073: $01 $69 $73
    jr nz, jr_01a_70ec                            ; $7076: $20 $74

jr_01a_7078:
    ld l, b                                       ; $7078: $68
    ld h, l                                       ; $7079: $65
    jr nz, jr_01a_70ec                            ; $707a: $20 $70

    ld h, l                                       ; $707c: $65
    ld h, c                                       ; $707d: $61
    ld l, e                                       ; $707e: $6b
    jr nz, jr_01a_70e7                            ; $707f: $20 $66

jr_01a_7081:
    ld l, a                                       ; $7081: $6f
    ld [hl], d                                    ; $7082: $72
    ld bc, $6e61                                  ; $7083: $01 $61 $6e
    ld a, c                                       ; $7086: $79
    jr nz, @+$72                                  ; $7087: $20 $70

    ld l, h                                       ; $7089: $6c
    ld h, c                                       ; $708a: $61
    ld a, c                                       ; $708b: $79
    ld h, l                                       ; $708c: $65
    ld [hl], d                                    ; $708d: $72
    ld hl, $5402                                  ; $708e: $21 $02 $54
    ld l, b                                       ; $7091: $68

jr_01a_7092:
    ld h, l                                       ; $7092: $65
    jr nz, jr_01a_7100                            ; $7093: $20 $6b

    ld l, c                                       ; $7095: $69

jr_01a_7096:
    ld l, [hl]                                    ; $7096: $6e
    ld h, a                                       ; $7097: $67
    jr nz, @+$71                                  ; $7098: $20 $6f

    ld h, [hl]                                    ; $709a: $66
    jr nz, jr_01a_7111                            ; $709b: $20 $74

    ld l, b                                       ; $709d: $68
    ld h, c                                       ; $709e: $61
    ld [hl], h                                    ; $709f: $74
    ld bc, $7263                                  ; $70a0: $01 $63 $72

jr_01a_70a3:
    ld h, l                                       ; $70a3: $65
    ld [hl], a                                    ; $70a4: $77

jr_01a_70a5:
    jr nz, jr_01a_7110                            ; $70a5: $20 $69

    ld [hl], e                                    ; $70a7: $73
    jr nz, jr_01a_711e                            ; $70a8: $20 $74

jr_01a_70aa:
    ld l, b                                       ; $70aa: $68
    ld h, l                                       ; $70ab: $65
    ld bc, $7247                                  ; $70ac: $01 $47 $72

jr_01a_70af:
    ld h, c                                       ; $70af: $61
    ld l, [hl]                                    ; $70b0: $6e
    ld h, h                                       ; $70b1: $64
    jr nz, jr_01a_70f7                            ; $70b2: $20 $43

    ld l, b                                       ; $70b4: $68
    ld h, c                                       ; $70b5: $61
    ld l, l                                       ; $70b6: $6d
    ld [hl], b                                    ; $70b7: $70
    ld l, c                                       ; $70b8: $69
    ld l, a                                       ; $70b9: $6f

jr_01a_70ba:
    ld l, [hl]                                    ; $70ba: $6e
    ld l, $03                                     ; $70bb: $2e $03

jr_01a_70bd:
    nop                                           ; $70bd: $00
    ld d, h                                       ; $70be: $54
    ld l, b                                       ; $70bf: $68
    ld h, l                                       ; $70c0: $65
    jr nz, jr_01a_710f                            ; $70c1: $20 $4c

    ld l, c                                       ; $70c3: $69
    ld l, [hl]                                    ; $70c4: $6e
    ld l, e                                       ; $70c5: $6b
    ld [hl], e                                    ; $70c6: $73
    jr nz, @+$45                                  ; $70c7: $20 $43

    ld l, b                                       ; $70c9: $68
    ld h, c                                       ; $70ca: $61
    ld l, l                                       ; $70cb: $6d
    ld [hl], b                                    ; $70cc: $70
    ld l, c                                       ; $70cd: $69
    ld l, a                                       ; $70ce: $6f
    ld l, [hl]                                    ; $70cf: $6e
    ld bc, $7369                                  ; $70d0: $01 $69 $73
    jr nz, jr_01a_7149                            ; $70d3: $20 $74

    ld l, b                                       ; $70d5: $68
    ld h, l                                       ; $70d6: $65
    jr nz, jr_01a_714b                            ; $70d7: $20 $72

    ld h, l                                       ; $70d9: $65
    ld h, c                                       ; $70da: $61
    ld l, h                                       ; $70db: $6c
    jr nz, jr_01a_7141                            ; $70dc: $20 $63

    ld l, b                                       ; $70de: $68
    ld h, c                                       ; $70df: $61
    ld l, l                                       ; $70e0: $6d
    ld [hl], b                                    ; $70e1: $70
    ld l, c                                       ; $70e2: $69
    ld l, a                                       ; $70e3: $6f
    ld l, [hl]                                    ; $70e4: $6e
    ld l, $02                                     ; $70e5: $2e $02

jr_01a_70e7:
    ld c, b                                       ; $70e7: $48
    ld h, l                                       ; $70e8: $65
    jr nz, jr_01a_715a                            ; $70e9: $20 $6f

    ld [hl], d                                    ; $70eb: $72

jr_01a_70ec:
    jr nz, jr_01a_7161                            ; $70ec: $20 $73

    ld l, b                                       ; $70ee: $68
    ld h, l                                       ; $70ef: $65
    jr nz, @+$69                                  ; $70f0: $20 $67

    ld h, l                                       ; $70f2: $65
    ld [hl], h                                    ; $70f3: $74
    ld [hl], e                                    ; $70f4: $73
    jr nz, jr_01a_716b                            ; $70f5: $20 $74

jr_01a_70f7:
    ld l, a                                       ; $70f7: $6f
    ld bc, $6c63                                  ; $70f8: $01 $63 $6c
    ld h, c                                       ; $70fb: $61
    ld l, c                                       ; $70fc: $69
    ld l, l                                       ; $70fd: $6d
    jr nz, jr_01a_7174                            ; $70fe: $20 $74

jr_01a_7100:
    ld l, b                                       ; $7100: $68
    ld h, l                                       ; $7101: $65
    jr nz, @+$76                                  ; $7102: $20 $74

    ld l, c                                       ; $7104: $69
    ld [hl], h                                    ; $7105: $74
    ld l, h                                       ; $7106: $6c
    ld h, l                                       ; $7107: $65
    jr nz, jr_01a_7179                            ; $7108: $20 $6f

    ld h, [hl]                                    ; $710a: $66
    ld bc, $7247                                  ; $710b: $01 $47 $72
    ld h, c                                       ; $710e: $61

jr_01a_710f:
    ld l, [hl]                                    ; $710f: $6e

jr_01a_7110:
    ld h, h                                       ; $7110: $64

jr_01a_7111:
    jr nz, jr_01a_7156                            ; $7111: $20 $43

    ld l, b                                       ; $7113: $68
    ld h, c                                       ; $7114: $61
    ld l, l                                       ; $7115: $6d
    ld [hl], b                                    ; $7116: $70
    ld l, c                                       ; $7117: $69
    ld l, a                                       ; $7118: $6f
    ld l, [hl]                                    ; $7119: $6e
    ld l, $03                                     ; $711a: $2e $03
    nop                                           ; $711c: $00
    ld b, l                                       ; $711d: $45

jr_01a_711e:
    halt                                          ; $711e: $76
    ld h, l                                       ; $711f: $65
    ld l, [hl]                                    ; $7120: $6e
    jr nz, jr_01a_7184                            ; $7121: $20 $61

    ld h, [hl]                                    ; $7123: $66
    ld [hl], h                                    ; $7124: $74
    ld h, l                                       ; $7125: $65
    ld [hl], d                                    ; $7126: $72
    jr nz, jr_01a_7199                            ; $7127: $20 $70

    ld l, h                                       ; $7129: $6c
    ld h, c                                       ; $712a: $61
    ld a, c                                       ; $712b: $79
    ld l, c                                       ; $712c: $69
    ld l, [hl]                                    ; $712d: $6e
    ld h, a                                       ; $712e: $67
    ld bc, $7469                                  ; $712f: $01 $69 $74
    jr nz, jr_01a_71a1                            ; $7132: $20 $6d

    ld h, c                                       ; $7134: $61
    ld l, [hl]                                    ; $7135: $6e
    ld a, c                                       ; $7136: $79
    jr nz, jr_01a_71ad                            ; $7137: $20 $74

    ld l, c                                       ; $7139: $69
    ld l, l                                       ; $713a: $6d
    ld h, l                                       ; $713b: $65
    ld [hl], e                                    ; $713c: $73
    inc l                                         ; $713d: $2c
    ld bc, $694c                                  ; $713e: $01 $4c $69

jr_01a_7141:
    ld l, [hl]                                    ; $7141: $6e
    ld l, e                                       ; $7142: $6b
    ld [hl], e                                    ; $7143: $73
    jr nz, @+$6b                                  ; $7144: $20 $69

    ld [hl], e                                    ; $7146: $73
    jr nz, jr_01a_71bc                            ; $7147: $20 $73

jr_01a_7149:
    ld [hl], h                                    ; $7149: $74
    ld l, c                                       ; $714a: $69

jr_01a_714b:
    ld l, h                                       ; $714b: $6c
    ld l, h                                       ; $714c: $6c
    jr nz, jr_01a_71b7                            ; $714d: $20 $68

    ld h, c                                       ; $714f: $61
    ld [hl], d                                    ; $7150: $72
    ld h, h                                       ; $7151: $64
    ld l, $03                                     ; $7152: $2e $03
    nop                                           ; $7154: $00
    ld b, c                                       ; $7155: $41

jr_01a_7156:
    ld [hl], a                                    ; $7156: $77
    ld hl, $4320                                  ; $7157: $21 $20 $43

jr_01a_715a:
    ld l, b                                       ; $715a: $68
    ld h, l                                       ; $715b: $65
    ld h, e                                       ; $715c: $63
    ld l, e                                       ; $715d: $6b
    jr nz, jr_01a_71cf                            ; $715e: $20 $6f

    ld [hl], l                                    ; $7160: $75

jr_01a_7161:
    ld [hl], h                                    ; $7161: $74
    jr nz, jr_01a_71d1                            ; $7162: $20 $6d

    ld a, c                                       ; $7164: $79
    ld bc, $6373                                  ; $7165: $01 $73 $63
    ld l, a                                       ; $7168: $6f
    ld [hl], d                                    ; $7169: $72
    ld h, l                                       ; $716a: $65

jr_01a_716b:
    ld hl, $5920                                  ; $716b: $21 $20 $59
    ld h, l                                       ; $716e: $65
    ld h, c                                       ; $716f: $61
    ld l, b                                       ; $7170: $68
    inc l                                         ; $7171: $2c
    jr nz, jr_01a_71dd                            ; $7172: $20 $69

jr_01a_7174:
    ld [hl], h                                    ; $7174: $74
    daa                                           ; $7175: $27
    ld [hl], e                                    ; $7176: $73
    jr nz, jr_01a_71da                            ; $7177: $20 $61

jr_01a_7179:
    ld bc, $6168                                  ; $7179: $01 $68 $61
    ld [hl], d                                    ; $717c: $72
    ld h, h                                       ; $717d: $64
    jr nz, jr_01a_71e3                            ; $717e: $20 $63

    ld l, a                                       ; $7180: $6f
    ld [hl], l                                    ; $7181: $75
    ld [hl], d                                    ; $7182: $72
    ld [hl], e                                    ; $7183: $73

jr_01a_7184:
    ld h, l                                       ; $7184: $65
    inc l                                         ; $7185: $2c
    jr nz, jr_01a_71ea                            ; $7186: $20 $62

    ld [hl], l                                    ; $7188: $75
    ld [hl], h                                    ; $7189: $74
    ld l, $2e                                     ; $718a: $2e $2e
    ld l, $03                                     ; $718c: $2e $03
    nop                                           ; $718e: $00
    ld c, c                                       ; $718f: $49
    jr nz, jr_01a_7204                            ; $7190: $20 $72

    ld [hl], l                                    ; $7192: $75
    ld [hl], e                                    ; $7193: $73
    ld l, b                                       ; $7194: $68
    ld h, l                                       ; $7195: $65
    ld h, h                                       ; $7196: $64
    jr nz, jr_01a_7206                            ; $7197: $20 $6d

jr_01a_7199:
    ld a, c                                       ; $7199: $79
    ld [hl], e                                    ; $719a: $73
    ld h, l                                       ; $719b: $65
    ld l, h                                       ; $719c: $6c
    ld h, [hl]                                    ; $719d: $66
    ld bc, $7274                                  ; $719e: $01 $74 $72

jr_01a_71a1:
    ld a, c                                       ; $71a1: $79
    ld l, c                                       ; $71a2: $69
    ld l, [hl]                                    ; $71a3: $6e
    ld h, a                                       ; $71a4: $67
    jr nz, jr_01a_721b                            ; $71a5: $20 $74

    ld l, a                                       ; $71a7: $6f
    jr nz, jr_01a_7217                            ; $71a8: $20 $6d

    ld h, c                                       ; $71aa: $61
    ld [hl], h                                    ; $71ab: $74
    ld h, e                                       ; $71ac: $63

jr_01a_71ad:
    ld l, b                                       ; $71ad: $68
    ld bc, $6f79                                  ; $71ae: $01 $79 $6f
    ld [hl], l                                    ; $71b1: $75
    ld [hl], d                                    ; $71b2: $72
    jr nz, jr_01a_7225                            ; $71b3: $20 $70

    ld h, c                                       ; $71b5: $61
    ld h, e                                       ; $71b6: $63

jr_01a_71b7:
    ld h, l                                       ; $71b7: $65
    ld l, $2e                                     ; $71b8: $2e $2e
    ld l, $03                                     ; $71ba: $2e $03

jr_01a_71bc:
    nop                                           ; $71bc: $00
    ld d, b                                       ; $71bd: $50
    ld l, h                                       ; $71be: $6c
    ld h, c                                       ; $71bf: $61
    ld a, c                                       ; $71c0: $79
    jr nz, jr_01a_7237                            ; $71c1: $20 $74

    ld l, b                                       ; $71c3: $68
    ld h, l                                       ; $71c4: $65
    jr nz, jr_01a_722a                            ; $71c5: $20 $63

    ld l, a                                       ; $71c7: $6f
    ld [hl], l                                    ; $71c8: $75
    ld [hl], d                                    ; $71c9: $72
    ld [hl], e                                    ; $71ca: $73
    ld h, l                                       ; $71cb: $65
    ld bc, $2031                                  ; $71cc: $01 $31 $20

jr_01a_71cf:
    ld l, b                                       ; $71cf: $68
    ld l, a                                       ; $71d0: $6f

jr_01a_71d1:
    ld l, h                                       ; $71d1: $6c
    ld h, l                                       ; $71d2: $65
    jr nz, jr_01a_7236                            ; $71d3: $20 $61

    ld [hl], h                                    ; $71d5: $74
    jr nz, jr_01a_7239                            ; $71d6: $20 $61

    jr nz, jr_01a_724e                            ; $71d8: $20 $74

jr_01a_71da:
    ld l, c                                       ; $71da: $69
    ld l, l                                       ; $71db: $6d
    ld h, l                                       ; $71dc: $65

jr_01a_71dd:
    ld l, $2e                                     ; $71dd: $2e $2e
    ld l, $01                                     ; $71df: $2e $01
    ld d, h                                       ; $71e1: $54
    ld l, b                                       ; $71e2: $68

jr_01a_71e3:
    ld h, c                                       ; $71e3: $61
    ld [hl], h                                    ; $71e4: $74
    daa                                           ; $71e5: $27
    ld [hl], e                                    ; $71e6: $73
    jr nz, @+$6a                                  ; $71e7: $20 $68

    ld l, a                                       ; $71e9: $6f

jr_01a_71ea:
    ld [hl], a                                    ; $71ea: $77
    jr nz, jr_01a_7266                            ; $71eb: $20 $79

    ld l, a                                       ; $71ed: $6f
    ld [hl], l                                    ; $71ee: $75
    jr nz, jr_01a_7268                            ; $71ef: $20 $77

    ld l, c                                       ; $71f1: $69
    ld l, [hl]                                    ; $71f2: $6e
    ld hl, $0003                                  ; $71f3: $21 $03 $00
    ld c, c                                       ; $71f6: $49
    daa                                           ; $71f7: $27
    ld l, l                                       ; $71f8: $6d
    jr nz, jr_01a_7262                            ; $71f9: $20 $67

    ld l, a                                       ; $71fb: $6f
    ld l, [hl]                                    ; $71fc: $6e
    ld l, [hl]                                    ; $71fd: $6e
    ld h, c                                       ; $71fe: $61
    jr nz, jr_01a_7263                            ; $71ff: $20 $62

    ld h, l                                       ; $7201: $65
    jr nz, jr_01a_724b                            ; $7202: $20 $47

jr_01a_7204:
    ld [hl], d                                    ; $7204: $72
    ld h, c                                       ; $7205: $61

jr_01a_7206:
    ld l, [hl]                                    ; $7206: $6e
    ld h, h                                       ; $7207: $64
    ld bc, $6843                                  ; $7208: $01 $43 $68
    ld h, c                                       ; $720b: $61
    ld l, l                                       ; $720c: $6d
    ld [hl], b                                    ; $720d: $70
    jr nz, jr_01a_7283                            ; $720e: $20 $73

    ld l, a                                       ; $7210: $6f
    ld l, l                                       ; $7211: $6d
    ld h, l                                       ; $7212: $65
    ld h, h                                       ; $7213: $64
    ld h, c                                       ; $7214: $61
    ld a, c                                       ; $7215: $79
    inc l                                         ; $7216: $2c

jr_01a_7217:
    jr nz, jr_01a_7283                            ; $7217: $20 $6a

    ld [hl], l                                    ; $7219: $75
    ld [hl], e                                    ; $721a: $73

jr_01a_721b:
    ld [hl], h                                    ; $721b: $74
    ld bc, $6f73                                  ; $721c: $01 $73 $6f
    jr nz, jr_01a_726a                            ; $721f: $20 $49

    jr nz, jr_01a_7286                            ; $7221: $20 $63

    ld h, c                                       ; $7223: $61
    ld l, [hl]                                    ; $7224: $6e

jr_01a_7225:
    jr nz, jr_01a_7294                            ; $7225: $20 $6d

    ld h, l                                       ; $7227: $65
    ld h, l                                       ; $7228: $65
    ld [hl], h                                    ; $7229: $74

jr_01a_722a:
    ld [bc], a                                    ; $722a: $02
    ld [hl], h                                    ; $722b: $74
    ld l, b                                       ; $722c: $68
    ld h, c                                       ; $722d: $61
    ld [hl], h                                    ; $722e: $74
    jr nz, jr_01a_729d                            ; $722f: $20 $6c

    ld h, l                                       ; $7231: $65
    ld h, a                                       ; $7232: $67
    ld h, l                                       ; $7233: $65
    ld l, [hl]                                    ; $7234: $6e
    ld h, h                                       ; $7235: $64

jr_01a_7236:
    ld h, c                                       ; $7236: $61

jr_01a_7237:
    ld [hl], d                                    ; $7237: $72
    ld a, c                                       ; $7238: $79

jr_01a_7239:
    ld bc, $6f67                                  ; $7239: $01 $67 $6f
    ld l, h                                       ; $723c: $6c
    ld h, [hl]                                    ; $723d: $66
    ld h, l                                       ; $723e: $65
    ld [hl], d                                    ; $723f: $72
    inc l                                         ; $7240: $2c
    jr nz, jr_01a_7290                            ; $7241: $20 $4d

    ld h, c                                       ; $7243: $61
    ld [hl], d                                    ; $7244: $72
    ld l, c                                       ; $7245: $69
    ld l, a                                       ; $7246: $6f
    ld l, $03                                     ; $7247: $2e $03
    nop                                           ; $7249: $00
    ld c, c                                       ; $724a: $49

jr_01a_724b:
    jr nz, @+$79                                  ; $724b: $20 $77

    ld h, c                                       ; $724d: $61

jr_01a_724e:
    ld l, [hl]                                    ; $724e: $6e
    ld [hl], h                                    ; $724f: $74
    jr nz, jr_01a_72c6                            ; $7250: $20 $74

    ld l, a                                       ; $7252: $6f
    jr nz, @+$64                                  ; $7253: $20 $62

    ld h, l                                       ; $7255: $65
    ld h, c                                       ; $7256: $61
    ld [hl], h                                    ; $7257: $74
    jr nz, jr_01a_7268                            ; $7258: $20 $0e

    dec b                                         ; $725a: $05
    ld bc, $6e61                                  ; $725b: $01 $61 $6e
    ld h, h                                       ; $725e: $64
    jr nz, jr_01a_72c3                            ; $725f: $20 $62

    ld h, l                                       ; $7261: $65

jr_01a_7262:
    ld h, e                                       ; $7262: $63

jr_01a_7263:
    ld l, a                                       ; $7263: $6f
    ld l, l                                       ; $7264: $6d
    ld h, l                                       ; $7265: $65

jr_01a_7266:
    jr nz, jr_01a_72ab                            ; $7266: $20 $43

jr_01a_7268:
    ld l, h                                       ; $7268: $6c
    ld [hl], l                                    ; $7269: $75

jr_01a_726a:
    ld h, d                                       ; $726a: $62
    jr nz, @+$45                                  ; $726b: $20 $43

    ld l, b                                       ; $726d: $68
    ld h, c                                       ; $726e: $61
    ld l, l                                       ; $726f: $6d
    ld [hl], b                                    ; $7270: $70
    ld hl, $0003                                  ; $7271: $21 $03 $00
    ld c, $05                                     ; $7274: $0e $05
    inc l                                         ; $7276: $2c
    jr nz, @+$52                                  ; $7277: $20 $50

    ld h, c                                       ; $7279: $61
    ld l, h                                       ; $727a: $6c
    ld l, l                                       ; $727b: $6d
    jr nz, jr_01a_72c1                            ; $727c: $20 $43

    ld l, h                                       ; $727e: $6c
    ld [hl], l                                    ; $727f: $75
    ld h, d                                       ; $7280: $62
    daa                                           ; $7281: $27
    ld [hl], e                                    ; $7282: $73

jr_01a_7283:
    ld bc, $6843                                  ; $7283: $01 $43 $68

jr_01a_7286:
    ld h, c                                       ; $7286: $61
    ld l, l                                       ; $7287: $6d
    ld [hl], b                                    ; $7288: $70
    inc l                                         ; $7289: $2c
    jr nz, jr_01a_72f5                            ; $728a: $20 $69

    ld [hl], e                                    ; $728c: $73
    jr nz, jr_01a_72f4                            ; $728d: $20 $65

    halt                                          ; $728f: $76

jr_01a_7290:
    ld h, l                                       ; $7290: $65
    ld [hl], d                                    ; $7291: $72
    ld a, c                                       ; $7292: $79
    ld l, a                                       ; $7293: $6f

jr_01a_7294:
    ld l, [hl]                                    ; $7294: $6e
    ld h, l                                       ; $7295: $65
    daa                                           ; $7296: $27
    ld [hl], e                                    ; $7297: $73
    ld bc, $6166                                  ; $7298: $01 $66 $61
    halt                                          ; $729b: $76
    ld l, a                                       ; $729c: $6f

jr_01a_729d:
    ld [hl], d                                    ; $729d: $72
    ld l, c                                       ; $729e: $69
    ld [hl], h                                    ; $729f: $74
    ld h, l                                       ; $72a0: $65
    ld l, $02                                     ; $72a1: $2e $02
    ld b, h                                       ; $72a3: $44
    ld l, a                                       ; $72a4: $6f
    jr nz, jr_01a_7320                            ; $72a5: $20 $79

    ld l, a                                       ; $72a7: $6f
    ld [hl], l                                    ; $72a8: $75
    jr nz, @+$76                                  ; $72a9: $20 $74

jr_01a_72ab:
    ld l, b                                       ; $72ab: $68
    ld l, c                                       ; $72ac: $69
    ld l, [hl]                                    ; $72ad: $6e
    ld l, e                                       ; $72ae: $6b
    ld bc, $6873                                  ; $72af: $01 $73 $68
    ld h, l                                       ; $72b2: $65
    daa                                           ; $72b3: $27
    ld l, h                                       ; $72b4: $6c
    ld l, h                                       ; $72b5: $6c
    jr nz, jr_01a_731a                            ; $72b6: $20 $62

    ld h, l                                       ; $72b8: $65
    jr nz, jr_01a_7328                            ; $72b9: $20 $6d

    ld a, c                                       ; $72bb: $79
    jr nz, jr_01a_7324                            ; $72bc: $20 $66

    ld [hl], d                                    ; $72be: $72
    ld l, c                                       ; $72bf: $69
    ld h, l                                       ; $72c0: $65

jr_01a_72c1:
    ld l, [hl]                                    ; $72c1: $6e
    ld h, h                                       ; $72c2: $64

jr_01a_72c3:
    ld bc, $6669                                  ; $72c3: $01 $69 $66

jr_01a_72c6:
    jr nz, @+$4b                                  ; $72c6: $20 $49

    jr nz, @+$64                                  ; $72c8: $20 $62

    ld h, l                                       ; $72ca: $65
    ld h, c                                       ; $72cb: $61
    ld [hl], h                                    ; $72cc: $74
    jr nz, @+$6a                                  ; $72cd: $20 $68

    ld h, l                                       ; $72cf: $65
    ld [hl], d                                    ; $72d0: $72
    ccf                                           ; $72d1: $3f
    inc bc                                        ; $72d2: $03
    nop                                           ; $72d3: $00
    ld d, a                                       ; $72d4: $57
    ld h, l                                       ; $72d5: $65
    ld l, h                                       ; $72d6: $6c
    ld l, h                                       ; $72d7: $6c
    inc l                                         ; $72d8: $2c
    jr nz, jr_01a_72e9                            ; $72d9: $20 $0e

    dec b                                         ; $72db: $05
    jr nz, jr_01a_7355                            ; $72dc: $20 $77

    ld l, a                                       ; $72de: $6f
    ld l, [hl]                                    ; $72df: $6e
    jr nz, jr_01a_7343                            ; $72e0: $20 $61

    ld h, a                                       ; $72e2: $67
    ld h, c                                       ; $72e3: $61
    ld l, c                                       ; $72e4: $69
    ld l, [hl]                                    ; $72e5: $6e
    ld l, $01                                     ; $72e6: $2e $01
    ld d, e                                       ; $72e8: $53

jr_01a_72e9:
    ld l, b                                       ; $72e9: $68
    ld h, l                                       ; $72ea: $65
    daa                                           ; $72eb: $27
    ld [hl], e                                    ; $72ec: $73
    jr nz, jr_01a_7350                            ; $72ed: $20 $61

    ld l, [hl]                                    ; $72ef: $6e
    jr nz, jr_01a_7353                            ; $72f0: $20 $61

    ld [hl], a                                    ; $72f2: $77
    ld h, l                                       ; $72f3: $65

jr_01a_72f4:
    ld [hl], e                                    ; $72f4: $73

jr_01a_72f5:
    ld l, a                                       ; $72f5: $6f
    ld l, l                                       ; $72f6: $6d
    ld h, l                                       ; $72f7: $65
    ld bc, $6f67                                  ; $72f8: $01 $67 $6f
    ld l, h                                       ; $72fb: $6c
    ld h, [hl]                                    ; $72fc: $66
    ld h, l                                       ; $72fd: $65
    ld [hl], d                                    ; $72fe: $72
    ld l, $03                                     ; $72ff: $2e $03
    nop                                           ; $7301: $00
    ld c, c                                       ; $7302: $49
    jr nz, jr_01a_7369                            ; $7303: $20 $64

    ld l, c                                       ; $7305: $69
    ld h, h                                       ; $7306: $64
    ld l, [hl]                                    ; $7307: $6e
    daa                                           ; $7308: $27
    ld [hl], h                                    ; $7309: $74
    jr nz, @+$6d                                  ; $730a: $20 $6b

    ld l, [hl]                                    ; $730c: $6e
    ld l, a                                       ; $730d: $6f
    ld [hl], a                                    ; $730e: $77
    ld bc, $6877                                  ; $730f: $01 $77 $68
    ld h, c                                       ; $7312: $61
    ld [hl], h                                    ; $7313: $74
    jr nz, jr_01a_735f                            ; $7314: $20 $49

    daa                                           ; $7316: $27
    ld h, h                                       ; $7317: $64
    jr nz, jr_01a_737e                            ; $7318: $20 $64

jr_01a_731a:
    ld l, a                                       ; $731a: $6f
    ld bc, $6669                                  ; $731b: $01 $69 $66
    jr nz, jr_01a_7399                            ; $731e: $20 $79

jr_01a_7320:
    ld l, a                                       ; $7320: $6f
    ld [hl], l                                    ; $7321: $75
    daa                                           ; $7322: $27
    ld h, h                                       ; $7323: $64

jr_01a_7324:
    jr nz, @+$79                                  ; $7324: $20 $77

    ld l, a                                       ; $7326: $6f
    ld l, [hl]                                    ; $7327: $6e

jr_01a_7328:
    ld hl, $4902                                  ; $7328: $21 $02 $49
    jr nz, @+$6a                                  ; $732b: $20 $68

    ld h, c                                       ; $732d: $61
    halt                                          ; $732e: $76
    ld h, l                                       ; $732f: $65
    jr nz, jr_01a_73a6                            ; $7330: $20 $74

    ld l, a                                       ; $7332: $6f
    jr nz, jr_01a_7397                            ; $7333: $20 $62

    ld h, l                                       ; $7335: $65
    jr nz, jr_01a_73ac                            ; $7336: $20 $74

    ld l, b                                       ; $7338: $68
    ld h, l                                       ; $7339: $65
    ld bc, $6e6f                                  ; $733a: $01 $6f $6e
    ld h, l                                       ; $733d: $65
    jr nz, jr_01a_73b4                            ; $733e: $20 $74

    ld l, a                                       ; $7340: $6f
    jr nz, jr_01a_73a5                            ; $7341: $20 $62

jr_01a_7343:
    ld h, l                                       ; $7343: $65
    ld h, c                                       ; $7344: $61
    ld [hl], h                                    ; $7345: $74
    ld bc, $050e                                  ; $7346: $01 $0e $05
    ld hl, $0003                                  ; $7349: $21 $03 $00
    ld c, c                                       ; $734c: $49
    jr nz, jr_01a_73b2                            ; $734d: $20 $63

    ld h, c                                       ; $734f: $61

jr_01a_7350:
    ld l, [hl]                                    ; $7350: $6e
    daa                                           ; $7351: $27
    ld [hl], h                                    ; $7352: $74

jr_01a_7353:
    jr nz, @+$64                                  ; $7353: $20 $62

jr_01a_7355:
    ld h, l                                       ; $7355: $65
    ld l, h                                       ; $7356: $6c
    ld l, c                                       ; $7357: $69
    ld h, l                                       ; $7358: $65
    halt                                          ; $7359: $76
    ld h, l                                       ; $735a: $65
    ld bc, $6f79                                  ; $735b: $01 $79 $6f
    ld [hl], l                                    ; $735e: $75

jr_01a_735f:
    jr nz, jr_01a_73d8                            ; $735f: $20 $77

    ld l, a                                       ; $7361: $6f
    ld l, [hl]                                    ; $7362: $6e
    ld hl, $4920                                  ; $7363: $21 $20 $49
    ld [hl], h                                    ; $7366: $74
    daa                                           ; $7367: $27
    ld [hl], e                                    ; $7368: $73

jr_01a_7369:
    ld bc, $6f73                                  ; $7369: $01 $73 $6f
    jr nz, jr_01a_73e3                            ; $736c: $20 $75

    ld l, [hl]                                    ; $736e: $6e
    ld h, [hl]                                    ; $736f: $66
    ld h, c                                       ; $7370: $61
    ld l, c                                       ; $7371: $69
    ld [hl], d                                    ; $7372: $72
    ld hl, $4902                                  ; $7373: $21 $02 $49
    jr nz, jr_01a_73ef                            ; $7376: $20 $77

    ld h, c                                       ; $7378: $61
    ld [hl], e                                    ; $7379: $73
    jr nz, jr_01a_73ef                            ; $737a: $20 $73

    ld [hl], l                                    ; $737c: $75
    ld [hl], b                                    ; $737d: $70

jr_01a_737e:
    ld [hl], b                                    ; $737e: $70
    ld l, a                                       ; $737f: $6f
    ld [hl], e                                    ; $7380: $73
    ld h, l                                       ; $7381: $65
    ld h, h                                       ; $7382: $64
    jr nz, jr_01a_73f9                            ; $7383: $20 $74

    ld l, a                                       ; $7385: $6f
    ld bc, $6562                                  ; $7386: $01 $62 $65
    jr nz, @+$76                                  ; $7389: $20 $74

    ld l, b                                       ; $738b: $68
    ld h, l                                       ; $738c: $65
    jr nz, jr_01a_73fe                            ; $738d: $20 $6f

    ld l, [hl]                                    ; $738f: $6e
    ld h, l                                       ; $7390: $65
    jr nz, @+$76                                  ; $7391: $20 $74

    ld l, a                                       ; $7393: $6f
    ld bc, $6562                                  ; $7394: $01 $62 $65

jr_01a_7397:
    ld h, c                                       ; $7397: $61
    ld [hl], h                                    ; $7398: $74

jr_01a_7399:
    jr nz, jr_01a_73a9                            ; $7399: $20 $0e

    dec b                                         ; $739b: $05
    ld hl, $0003                                  ; $739c: $21 $03 $00
    ld e, c                                       ; $739f: $59
    ld l, a                                       ; $73a0: $6f
    ld [hl], l                                    ; $73a1: $75
    jr nz, jr_01a_741b                            ; $73a2: $20 $77

    ld h, l                                       ; $73a4: $65

jr_01a_73a5:
    ld [hl], d                                    ; $73a5: $72

jr_01a_73a6:
    ld h, l                                       ; $73a6: $65
    jr nz, jr_01a_740a                            ; $73a7: $20 $61

jr_01a_73a9:
    ld l, l                                       ; $73a9: $6d
    ld h, c                                       ; $73aa: $61
    ld a, d                                       ; $73ab: $7a

jr_01a_73ac:
    ld l, c                                       ; $73ac: $69
    ld l, [hl]                                    ; $73ad: $6e
    ld h, a                                       ; $73ae: $67
    ld bc, $6e69                                  ; $73af: $01 $69 $6e

jr_01a_73b2:
    jr nz, jr_01a_7428                            ; $73b2: $20 $74

jr_01a_73b4:
    ld l, b                                       ; $73b4: $68
    ld h, l                                       ; $73b5: $65
    jr nz, jr_01a_742c                            ; $73b6: $20 $74

    ld l, a                                       ; $73b8: $6f
    ld [hl], l                                    ; $73b9: $75
    ld [hl], d                                    ; $73ba: $72
    ld l, [hl]                                    ; $73bb: $6e
    ld h, c                                       ; $73bc: $61
    ld l, l                                       ; $73bd: $6d
    ld h, l                                       ; $73be: $65
    ld l, [hl]                                    ; $73bf: $6e
    ld [hl], h                                    ; $73c0: $74
    inc l                                         ; $73c1: $2c
    ld bc, $2107                                  ; $73c2: $01 $07 $21
    jr nz, jr_01a_741e                            ; $73c5: $20 $57

    ld c, a                                       ; $73c7: $4f
    ld d, a                                       ; $73c8: $57
    ld hl, $0003                                  ; $73c9: $21 $03 $00
    ld c, a                                       ; $73cc: $4f
    ld l, [hl]                                    ; $73cd: $6e
    ld h, e                                       ; $73ce: $63
    ld h, l                                       ; $73cf: $65
    jr nz, jr_01a_744b                            ; $73d0: $20 $79

    ld l, a                                       ; $73d2: $6f
    ld [hl], l                                    ; $73d3: $75
    jr nz, jr_01a_7449                            ; $73d4: $20 $73

    ld h, l                                       ; $73d6: $65
    ld h, l                                       ; $73d7: $65

jr_01a_73d8:
    jr nz, jr_01a_73e8                            ; $73d8: $20 $0e

    ld b, $27                                     ; $73da: $06 $27
    ld [hl], e                                    ; $73dc: $73
    ld bc, $6f70                                  ; $73dd: $01 $70 $6f
    ld [hl], a                                    ; $73e0: $77
    ld h, l                                       ; $73e1: $65
    ld [hl], d                                    ; $73e2: $72

jr_01a_73e3:
    inc l                                         ; $73e3: $2c
    jr nz, jr_01a_745f                            ; $73e4: $20 $79

    ld l, a                                       ; $73e6: $6f
    ld [hl], l                                    ; $73e7: $75

jr_01a_73e8:
    daa                                           ; $73e8: $27
    ld l, h                                       ; $73e9: $6c
    ld l, h                                       ; $73ea: $6c
    jr nz, jr_01a_7459                            ; $73eb: $20 $6c

    ld l, a                                       ; $73ed: $6f
    ld [hl], e                                    ; $73ee: $73

jr_01a_73ef:
    ld h, l                                       ; $73ef: $65
    ld bc, $6c61                                  ; $73f0: $01 $61 $6c
    ld l, h                                       ; $73f3: $6c
    jr nz, jr_01a_745e                            ; $73f4: $20 $68

    ld l, a                                       ; $73f6: $6f
    ld [hl], b                                    ; $73f7: $70
    ld h, l                                       ; $73f8: $65

jr_01a_73f9:
    ld hl, $0003                                  ; $73f9: $21 $03 $00
    ld b, c                                       ; $73fc: $41
    ld [hl], e                                    ; $73fd: $73

jr_01a_73fe:
    jr nz, @+$6e                                  ; $73fe: $20 $6c

    ld l, a                                       ; $7400: $6f
    ld l, [hl]                                    ; $7401: $6e
    ld h, a                                       ; $7402: $67
    jr nz, jr_01a_7466                            ; $7403: $20 $61

    ld [hl], e                                    ; $7405: $73
    jr nz, jr_01a_7451                            ; $7406: $20 $49

    jr nz, jr_01a_747a                            ; $7408: $20 $70

jr_01a_740a:
    ld l, h                                       ; $740a: $6c
    ld h, c                                       ; $740b: $61
    ld a, c                                       ; $740c: $79
    jr nz, jr_01a_747c                            ; $740d: $20 $6d

    ld a, c                                       ; $740f: $79
    ld bc, $6562                                  ; $7410: $01 $62 $65
    ld [hl], e                                    ; $7413: $73
    ld [hl], h                                    ; $7414: $74
    inc l                                         ; $7415: $2c
    jr nz, @+$4b                                  ; $7416: $20 $49

    daa                                           ; $7418: $27
    ld l, h                                       ; $7419: $6c
    ld l, h                                       ; $741a: $6c

jr_01a_741b:
    jr nz, jr_01a_748d                            ; $741b: $20 $70

    ld l, h                                       ; $741d: $6c

jr_01a_741e:
    ld h, c                                       ; $741e: $61
    ld h, e                                       ; $741f: $63
    ld h, l                                       ; $7420: $65
    jr nz, jr_01a_748c                            ; $7421: $20 $69

    ld l, [hl]                                    ; $7423: $6e
    jr nz, jr_01a_749a                            ; $7424: $20 $74

    ld l, b                                       ; $7426: $68
    ld h, l                                       ; $7427: $65

jr_01a_7428:
    ld bc, $7544                                  ; $7428: $01 $44 $75
    ld l, [hl]                                    ; $742b: $6e

jr_01a_742c:
    ld h, l                                       ; $742c: $65
    jr nz, @+$56                                  ; $742d: $20 $54

    ld l, a                                       ; $742f: $6f
    ld [hl], l                                    ; $7430: $75
    ld [hl], d                                    ; $7431: $72
    ld l, [hl]                                    ; $7432: $6e
    ld h, c                                       ; $7433: $61
    ld l, l                                       ; $7434: $6d
    ld h, l                                       ; $7435: $65
    ld l, [hl]                                    ; $7436: $6e
    ld [hl], h                                    ; $7437: $74
    ld l, $03                                     ; $7438: $2e $03
    nop                                           ; $743a: $00
    ld c, l                                       ; $743b: $4d
    ld a, c                                       ; $743c: $79
    jr nz, jr_01a_74af                            ; $743d: $20 $70

    ld l, h                                       ; $743f: $6c
    ld h, c                                       ; $7440: $61
    ld l, [hl]                                    ; $7441: $6e
    jr nz, jr_01a_74bb                            ; $7442: $20 $77

    ld h, c                                       ; $7444: $61
    ld [hl], e                                    ; $7445: $73
    jr nz, jr_01a_74bc                            ; $7446: $20 $74

    ld l, a                                       ; $7448: $6f

jr_01a_7449:
    jr nz, jr_01a_74bb                            ; $7449: $20 $70

jr_01a_744b:
    ld l, h                                       ; $744b: $6c
    ld h, c                                       ; $744c: $61
    ld a, c                                       ; $744d: $79
    ld bc, $796d                                  ; $744e: $01 $6d $79

jr_01a_7451:
    jr nz, @+$64                                  ; $7451: $20 $62

    ld h, l                                       ; $7453: $65
    ld [hl], e                                    ; $7454: $73
    ld [hl], h                                    ; $7455: $74
    jr nz, jr_01a_74bf                            ; $7456: $20 $67

    ld h, c                                       ; $7458: $61

jr_01a_7459:
    ld l, l                                       ; $7459: $6d
    ld h, l                                       ; $745a: $65
    inc l                                         ; $745b: $2c
    jr nz, jr_01a_74c0                            ; $745c: $20 $62

jr_01a_745e:
    ld [hl], l                                    ; $745e: $75

jr_01a_745f:
    ld [hl], h                                    ; $745f: $74
    ld bc, $2049                                  ; $7460: $01 $49 $20
    ld h, e                                       ; $7463: $63
    ld l, a                                       ; $7464: $6f
    ld [hl], l                                    ; $7465: $75

jr_01a_7466:
    ld l, h                                       ; $7466: $6c
    ld h, h                                       ; $7467: $64
    ld l, [hl]                                    ; $7468: $6e
    daa                                           ; $7469: $27
    ld [hl], h                                    ; $746a: $74
    jr nz, jr_01a_74d8                            ; $746b: $20 $6b

    ld h, l                                       ; $746d: $65
    ld h, l                                       ; $746e: $65
    ld [hl], b                                    ; $746f: $70
    jr nz, jr_01a_74e7                            ; $7470: $20 $75

    ld [hl], b                                    ; $7472: $70
    ld hl, $0003                                  ; $7473: $21 $03 $00
    ld e, c                                       ; $7476: $59
    ld l, a                                       ; $7477: $6f
    ld [hl], l                                    ; $7478: $75
    daa                                           ; $7479: $27

jr_01a_747a:
    ld [hl], d                                    ; $747a: $72
    ld h, l                                       ; $747b: $65

jr_01a_747c:
    jr nz, jr_01a_74e5                            ; $747c: $20 $67

    ld l, a                                       ; $747e: $6f
    ld l, a                                       ; $747f: $6f
    ld h, h                                       ; $7480: $64
    ld hl, $4901                                  ; $7481: $21 $01 $49
    jr nz, jr_01a_74fd                            ; $7484: $20 $77

    ld l, a                                       ; $7486: $6f
    ld l, [hl]                                    ; $7487: $6e
    daa                                           ; $7488: $27
    ld [hl], h                                    ; $7489: $74
    jr nz, jr_01a_74f1                            ; $748a: $20 $65

jr_01a_748c:
    halt                                          ; $748c: $76

jr_01a_748d:
    ld h, l                                       ; $748d: $65
    ld l, [hl]                                    ; $748e: $6e
    ld bc, $6f63                                  ; $748f: $01 $63 $6f
    ld l, l                                       ; $7492: $6d
    ld [hl], b                                    ; $7493: $70
    ld h, c                                       ; $7494: $61
    ld [hl], d                                    ; $7495: $72
    ld h, l                                       ; $7496: $65
    jr nz, jr_01a_7508                            ; $7497: $20 $6f

    ld [hl], l                                    ; $7499: $75

jr_01a_749a:
    ld [hl], d                                    ; $749a: $72
    jr nz, jr_01a_7504                            ; $749b: $20 $67

    ld h, c                                       ; $749d: $61
    ld l, l                                       ; $749e: $6d
    ld h, l                                       ; $749f: $65
    ld [hl], e                                    ; $74a0: $73
    ld hl, $0003                                  ; $74a1: $21 $03 $00
    ld b, [hl]                                    ; $74a4: $46
    ld [hl], d                                    ; $74a5: $72
    ld l, a                                       ; $74a6: $6f
    ld l, l                                       ; $74a7: $6d
    jr nz, jr_01a_751e                            ; $74a8: $20 $74

    ld h, l                                       ; $74aa: $65
    ld h, l                                       ; $74ab: $65
    jr nz, jr_01a_7522                            ; $74ac: $20 $74

    ld l, a                                       ; $74ae: $6f

jr_01a_74af:
    jr nz, @+$65                                  ; $74af: $20 $63

    ld [hl], l                                    ; $74b1: $75
    ld [hl], b                                    ; $74b2: $70
    inc l                                         ; $74b3: $2c
    ld bc, $6f79                                  ; $74b4: $01 $79 $6f
    ld [hl], l                                    ; $74b7: $75
    jr nz, jr_01a_7531                            ; $74b8: $20 $77

    ld h, l                                       ; $74ba: $65

jr_01a_74bb:
    ld [hl], d                                    ; $74bb: $72

jr_01a_74bc:
    ld h, l                                       ; $74bc: $65
    jr nz, jr_01a_752f                            ; $74bd: $20 $70

jr_01a_74bf:
    ld h, l                                       ; $74bf: $65

jr_01a_74c0:
    ld [hl], d                                    ; $74c0: $72
    ld h, [hl]                                    ; $74c1: $66
    ld h, l                                       ; $74c2: $65
    ld h, e                                       ; $74c3: $63
    ld [hl], h                                    ; $74c4: $74
    ld hl, $5501                                  ; $74c5: $21 $01 $55
    ld l, [hl]                                    ; $74c8: $6e
    ld h, [hl]                                    ; $74c9: $66
    ld l, a                                       ; $74ca: $6f
    ld [hl], d                                    ; $74cb: $72
    ld h, a                                       ; $74cc: $67
    ld h, l                                       ; $74cd: $65
    ld [hl], h                                    ; $74ce: $74
    ld [hl], h                                    ; $74cf: $74
    ld h, c                                       ; $74d0: $61
    ld h, d                                       ; $74d1: $62
    ld l, h                                       ; $74d2: $6c
    ld h, l                                       ; $74d3: $65
    ld hl, $0003                                  ; $74d4: $21 $03 $00
    ld d, a                                       ; $74d7: $57

jr_01a_74d8:
    ld l, c                                       ; $74d8: $69
    ld l, [hl]                                    ; $74d9: $6e
    ld l, [hl]                                    ; $74da: $6e
    ld l, c                                       ; $74db: $69
    ld l, [hl]                                    ; $74dc: $6e
    ld h, a                                       ; $74dd: $67
    jr nz, jr_01a_7554                            ; $74de: $20 $74

    ld l, b                                       ; $74e0: $68
    ld h, l                                       ; $74e1: $65
    jr nz, jr_01a_7527                            ; $74e2: $20 $43

    ld l, h                                       ; $74e4: $6c

jr_01a_74e5:
    ld [hl], l                                    ; $74e5: $75
    ld h, d                                       ; $74e6: $62

jr_01a_74e7:
    ld bc, $6f54                                  ; $74e7: $01 $54 $6f
    ld [hl], l                                    ; $74ea: $75
    ld [hl], d                                    ; $74eb: $72
    ld l, [hl]                                    ; $74ec: $6e
    ld h, c                                       ; $74ed: $61
    ld l, l                                       ; $74ee: $6d
    ld h, l                                       ; $74ef: $65
    ld l, [hl]                                    ; $74f0: $6e

jr_01a_74f1:
    ld [hl], h                                    ; $74f1: $74
    jr nz, jr_01a_7568                            ; $74f2: $20 $74

    ld h, c                                       ; $74f4: $61
    ld l, e                                       ; $74f5: $6b
    ld h, l                                       ; $74f6: $65
    ld [hl], e                                    ; $74f7: $73
    ld bc, $6570                                  ; $74f8: $01 $70 $65
    ld [hl], d                                    ; $74fb: $72
    ld h, [hl]                                    ; $74fc: $66

jr_01a_74fd:
    ld h, l                                       ; $74fd: $65
    ld h, e                                       ; $74fe: $63
    ld [hl], h                                    ; $74ff: $74
    jr nz, jr_01a_7572                            ; $7500: $20 $70

    ld l, h                                       ; $7502: $6c
    ld h, c                                       ; $7503: $61

jr_01a_7504:
    ld a, c                                       ; $7504: $79
    ld l, $02                                     ; $7505: $2e $02
    ld b, c                                       ; $7507: $41

jr_01a_7508:
    ld l, [hl]                                    ; $7508: $6e
    ld h, h                                       ; $7509: $64
    jr nz, @+$7b                                  ; $750a: $20 $79

    ld l, a                                       ; $750c: $6f
    ld [hl], l                                    ; $750d: $75
    jr nz, jr_01a_7587                            ; $750e: $20 $77

    ld h, l                                       ; $7510: $65
    ld [hl], d                                    ; $7511: $72
    ld h, l                                       ; $7512: $65
    ld bc, $6562                                  ; $7513: $01 $62 $65
    ld [hl], h                                    ; $7516: $74
    ld [hl], h                                    ; $7517: $74
    ld h, l                                       ; $7518: $65
    ld [hl], d                                    ; $7519: $72
    jr nz, jr_01a_7590                            ; $751a: $20 $74

    ld l, b                                       ; $751c: $68
    ld h, c                                       ; $751d: $61

jr_01a_751e:
    ld l, [hl]                                    ; $751e: $6e
    jr nz, jr_01a_7591                            ; $751f: $20 $70

    ld h, l                                       ; $7521: $65

jr_01a_7522:
    ld [hl], d                                    ; $7522: $72
    ld h, [hl]                                    ; $7523: $66
    ld h, l                                       ; $7524: $65
    ld h, e                                       ; $7525: $63
    ld [hl], h                                    ; $7526: $74

jr_01a_7527:
    ld hl, $0003                                  ; $7527: $21 $03 $00
    ld d, h                                       ; $752a: $54
    ld l, b                                       ; $752b: $68
    ld h, l                                       ; $752c: $65
    jr nz, jr_01a_757b                            ; $752d: $20 $4c

jr_01a_752f:
    ld l, c                                       ; $752f: $69
    ld l, [hl]                                    ; $7530: $6e

jr_01a_7531:
    ld l, e                                       ; $7531: $6b
    ld [hl], e                                    ; $7532: $73
    jr nz, jr_01a_7578                            ; $7533: $20 $43

    ld l, b                                       ; $7535: $68
    ld h, c                                       ; $7536: $61
    ld l, l                                       ; $7537: $6d
    ld [hl], b                                    ; $7538: $70
    inc l                                         ; $7539: $2c
    ld bc, $070e                                  ; $753a: $01 $0e $07
    inc l                                         ; $753d: $2c
    jr nz, jr_01a_75a9                            ; $753e: $20 $69

    ld [hl], e                                    ; $7540: $73
    jr nz, @+$63                                  ; $7541: $20 $61

    jr nz, jr_01a_75b5                            ; $7543: $20 $70

    ld l, h                                       ; $7545: $6c
    ld h, c                                       ; $7546: $61
    ld a, c                                       ; $7547: $79
    ld h, l                                       ; $7548: $65
    ld [hl], d                                    ; $7549: $72
    ld bc, $6977                                  ; $754a: $01 $77 $69
    ld [hl], h                                    ; $754d: $74
    ld l, b                                       ; $754e: $68
    jr nz, jr_01a_75bf                            ; $754f: $20 $6e

    ld l, a                                       ; $7551: $6f
    jr nz, @+$79                                  ; $7552: $20 $77

jr_01a_7554:
    ld h, l                                       ; $7554: $65
    ld h, c                                       ; $7555: $61
    ld l, e                                       ; $7556: $6b
    ld l, [hl]                                    ; $7557: $6e
    ld h, l                                       ; $7558: $65
    ld [hl], e                                    ; $7559: $73
    ld [hl], e                                    ; $755a: $73
    ld h, l                                       ; $755b: $65
    ld [hl], e                                    ; $755c: $73
    ld l, $03                                     ; $755d: $2e $03
    nop                                           ; $755f: $00
    ld c, c                                       ; $7560: $49
    ld h, [hl]                                    ; $7561: $66
    jr nz, jr_01a_75dd                            ; $7562: $20 $79

    ld l, a                                       ; $7564: $6f
    ld [hl], l                                    ; $7565: $75
    jr nz, @+$65                                  ; $7566: $20 $63

jr_01a_7568:
    ld h, c                                       ; $7568: $61
    ld l, [hl]                                    ; $7569: $6e
    daa                                           ; $756a: $27
    ld [hl], h                                    ; $756b: $74
    jr nz, @+$6f                                  ; $756c: $20 $6d

    ld h, c                                       ; $756e: $61
    ld [hl], e                                    ; $756f: $73
    ld [hl], h                                    ; $7570: $74
    ld h, l                                       ; $7571: $65

jr_01a_7572:
    ld [hl], d                                    ; $7572: $72
    ld bc, $694c                                  ; $7573: $01 $4c $69
    ld l, [hl]                                    ; $7576: $6e
    ld l, e                                       ; $7577: $6b

jr_01a_7578:
    ld [hl], e                                    ; $7578: $73
    jr nz, @+$45                                  ; $7579: $20 $43

jr_01a_757b:
    ld l, h                                       ; $757b: $6c
    ld [hl], l                                    ; $757c: $75
    ld h, d                                       ; $757d: $62
    inc l                                         ; $757e: $2c
    jr nz, jr_01a_75fa                            ; $757f: $20 $79

    ld l, a                                       ; $7581: $6f
    ld [hl], l                                    ; $7582: $75
    ld bc, $6f77                                  ; $7583: $01 $77 $6f
    ld l, [hl]                                    ; $7586: $6e

jr_01a_7587:
    daa                                           ; $7587: $27
    ld [hl], h                                    ; $7588: $74
    jr nz, jr_01a_75ed                            ; $7589: $20 $62

    ld h, l                                       ; $758b: $65
    ld h, c                                       ; $758c: $61
    ld [hl], h                                    ; $758d: $74
    jr nz, jr_01a_759e                            ; $758e: $20 $0e

jr_01a_7590:
    rlca                                          ; $7590: $07

jr_01a_7591:
    ld l, $03                                     ; $7591: $2e $03
    nop                                           ; $7593: $00
    ld c, c                                       ; $7594: $49
    jr nz, jr_01a_75fb                            ; $7595: $20 $64

    ld l, c                                       ; $7597: $69
    ld h, h                                       ; $7598: $64
    ld l, [hl]                                    ; $7599: $6e
    daa                                           ; $759a: $27
    ld [hl], h                                    ; $759b: $74
    jr nz, jr_01a_760e                            ; $759c: $20 $70

jr_01a_759e:
    ld l, h                                       ; $759e: $6c
    ld h, c                                       ; $759f: $61
    ld h, e                                       ; $75a0: $63
    ld h, l                                       ; $75a1: $65
    inc l                                         ; $75a2: $2c
    ld bc, $7562                                  ; $75a3: $01 $62 $75
    ld [hl], h                                    ; $75a6: $74
    jr nz, @+$4b                                  ; $75a7: $20 $49

jr_01a_75a9:
    jr nz, jr_01a_7622                            ; $75a9: $20 $77

    ld l, a                                       ; $75ab: $6f
    ld l, [hl]                                    ; $75ac: $6e
    daa                                           ; $75ad: $27
    ld [hl], h                                    ; $75ae: $74
    jr nz, jr_01a_761d                            ; $75af: $20 $6c

    ld h, l                                       ; $75b1: $65
    ld [hl], h                                    ; $75b2: $74
    jr nz, jr_01a_761e                            ; $75b3: $20 $69

jr_01a_75b5:
    ld [hl], h                                    ; $75b5: $74
    ld bc, $6567                                  ; $75b6: $01 $67 $65
    ld [hl], h                                    ; $75b9: $74
    jr nz, jr_01a_7629                            ; $75ba: $20 $6d

    ld h, l                                       ; $75bc: $65
    jr nz, jr_01a_7623                            ; $75bd: $20 $64

jr_01a_75bf:
    ld l, a                                       ; $75bf: $6f
    ld [hl], a                                    ; $75c0: $77
    ld l, [hl]                                    ; $75c1: $6e
    ld l, $02                                     ; $75c2: $2e $02
    ld c, a                                       ; $75c4: $4f
    ld l, [hl]                                    ; $75c5: $6e
    ld h, e                                       ; $75c6: $63
    ld h, l                                       ; $75c7: $65
    jr nz, jr_01a_7613                            ; $75c8: $20 $49

    jr nz, jr_01a_7637                            ; $75ca: $20 $6b

    ld l, [hl]                                    ; $75cc: $6e
    ld l, a                                       ; $75cd: $6f
    ld [hl], a                                    ; $75ce: $77
    jr nz, jr_01a_7645                            ; $75cf: $20 $74

    ld l, b                                       ; $75d1: $68
    ld h, l                                       ; $75d2: $65
    ld bc, $6f63                                  ; $75d3: $01 $63 $6f
    ld [hl], l                                    ; $75d6: $75
    ld [hl], d                                    ; $75d7: $72
    ld [hl], e                                    ; $75d8: $73
    ld h, l                                       ; $75d9: $65
    jr nz, jr_01a_7648                            ; $75da: $20 $6c

    ld h, c                                       ; $75dc: $61

jr_01a_75dd:
    ld a, c                                       ; $75dd: $79
    ld l, a                                       ; $75de: $6f
    ld [hl], l                                    ; $75df: $75
    ld [hl], h                                    ; $75e0: $74
    inc l                                         ; $75e1: $2c
    jr nz, @+$4b                                  ; $75e2: $20 $49

    daa                                           ; $75e4: $27
    ld l, h                                       ; $75e5: $6c
    ld l, h                                       ; $75e6: $6c
    ld bc, $6c70                                  ; $75e7: $01 $70 $6c
    ld h, c                                       ; $75ea: $61
    ld h, e                                       ; $75eb: $63
    ld h, l                                       ; $75ec: $65

jr_01a_75ed:
    jr nz, @+$68                                  ; $75ed: $20 $66

    ld l, a                                       ; $75ef: $6f
    ld [hl], d                                    ; $75f0: $72
    jr nz, jr_01a_7666                            ; $75f1: $20 $73

    ld [hl], l                                    ; $75f3: $75
    ld [hl], d                                    ; $75f4: $72
    ld h, l                                       ; $75f5: $65
    ld l, $03                                     ; $75f6: $2e $03
    nop                                           ; $75f8: $00
    ld c, l                                       ; $75f9: $4d

jr_01a_75fa:
    ld a, c                                       ; $75fa: $79

jr_01a_75fb:
    jr nz, jr_01a_7674                            ; $75fb: $20 $77

    ld h, l                                       ; $75fd: $65
    ld h, h                                       ; $75fe: $64
    ld h, a                                       ; $75ff: $67
    ld h, l                                       ; $7600: $65
    jr nz, @+$79                                  ; $7601: $20 $77

    ld h, c                                       ; $7603: $61
    ld [hl], e                                    ; $7604: $73
    jr nz, jr_01a_7676                            ; $7605: $20 $6f

    ld h, [hl]                                    ; $7607: $66
    ld h, [hl]                                    ; $7608: $66
    ld bc, $6f74                                  ; $7609: $01 $74 $6f
    ld h, h                                       ; $760c: $64
    ld h, c                                       ; $760d: $61

jr_01a_760e:
    ld a, c                                       ; $760e: $79
    inc l                                         ; $760f: $2c
    jr nz, @+$63                                  ; $7610: $20 $61

    ld l, [hl]                                    ; $7612: $6e

jr_01a_7613:
    ld h, h                                       ; $7613: $64
    jr nz, @+$4b                                  ; $7614: $20 $49

    jr nz, jr_01a_767b                            ; $7616: $20 $63

    ld l, a                                       ; $7618: $6f
    ld [hl], l                                    ; $7619: $75
    ld l, h                                       ; $761a: $6c
    ld h, h                                       ; $761b: $64
    ld l, [hl]                                    ; $761c: $6e

jr_01a_761d:
    daa                                           ; $761d: $27

jr_01a_761e:
    ld [hl], h                                    ; $761e: $74
    ld bc, $6573                                  ; $761f: $01 $73 $65

jr_01a_7622:
    ld h, l                                       ; $7622: $65

jr_01a_7623:
    ld l, l                                       ; $7623: $6d
    jr nz, @+$76                                  ; $7624: $20 $74

    ld l, a                                       ; $7626: $6f
    jr nz, @+$6f                                  ; $7627: $20 $6d

jr_01a_7629:
    ld h, c                                       ; $7629: $61
    ld l, e                                       ; $762a: $6b
    ld h, l                                       ; $762b: $65
    jr nz, jr_01a_76a1                            ; $762c: $20 $73

    ld h, e                                       ; $762e: $63
    ld l, a                                       ; $762f: $6f
    ld [hl], d                                    ; $7630: $72
    ld h, l                                       ; $7631: $65
    ld l, $02                                     ; $7632: $2e $02
    ld b, d                                       ; $7634: $42
    ld [hl], l                                    ; $7635: $75
    ld [hl], h                                    ; $7636: $74

jr_01a_7637:
    jr nz, jr_01a_76a8                            ; $7637: $20 $6f

    ld l, [hl]                                    ; $7639: $6e
    ld h, e                                       ; $763a: $63
    ld h, l                                       ; $763b: $65
    jr nz, jr_01a_7687                            ; $763c: $20 $49

    jr nz, jr_01a_76a7                            ; $763e: $20 $67

    ld h, l                                       ; $7640: $65
    ld [hl], h                                    ; $7641: $74
    jr nz, @+$6f                                  ; $7642: $20 $6d

    ld a, c                                       ; $7644: $79

jr_01a_7645:
    ld bc, $5753                                  ; $7645: $01 $53 $57

jr_01a_7648:
    jr nz, jr_01a_76bd                            ; $7648: $20 $73

    ld [hl], a                                    ; $764a: $77
    ld l, c                                       ; $764b: $69
    ld l, [hl]                                    ; $764c: $6e
    ld h, a                                       ; $764d: $67
    jr nz, jr_01a_76b2                            ; $764e: $20 $62

    ld h, c                                       ; $7650: $61
    ld h, e                                       ; $7651: $63
    ld l, e                                       ; $7652: $6b
    inc l                                         ; $7653: $2c
    ld bc, $2749                                  ; $7654: $01 $49 $27
    ld l, h                                       ; $7657: $6c
    ld l, h                                       ; $7658: $6c
    jr nz, jr_01a_76bd                            ; $7659: $20 $62

    ld h, l                                       ; $765b: $65
    ld h, c                                       ; $765c: $61
    ld [hl], h                                    ; $765d: $74
    jr nz, jr_01a_76d9                            ; $765e: $20 $79

    ld l, a                                       ; $7660: $6f
    ld [hl], l                                    ; $7661: $75
    ld hl, $0003                                  ; $7662: $21 $03 $00
    ld c, c                                       ; $7665: $49

jr_01a_7666:
    jr nz, jr_01a_76d6                            ; $7666: $20 $6e

    ld h, l                                       ; $7668: $65
    halt                                          ; $7669: $76
    ld h, l                                       ; $766a: $65
    ld [hl], d                                    ; $766b: $72
    jr nz, jr_01a_76d3                            ; $766c: $20 $65

    halt                                          ; $766e: $76
    ld h, l                                       ; $766f: $65
    ld l, [hl]                                    ; $7670: $6e
    ld bc, $7264                                  ; $7671: $01 $64 $72

jr_01a_7674:
    ld h, l                                       ; $7674: $65
    ld h, c                                       ; $7675: $61

jr_01a_7676:
    ld l, l                                       ; $7676: $6d
    ld h, l                                       ; $7677: $65
    ld h, h                                       ; $7678: $64
    jr nz, jr_01a_76f4                            ; $7679: $20 $79

jr_01a_767b:
    ld l, a                                       ; $767b: $6f
    ld [hl], l                                    ; $767c: $75
    daa                                           ; $767d: $27
    ld h, h                                       ; $767e: $64
    jr nz, jr_01a_76f8                            ; $767f: $20 $77

    ld l, c                                       ; $7681: $69
    ld l, [hl]                                    ; $7682: $6e
    ld bc, $6562                                  ; $7683: $01 $62 $65
    ld h, [hl]                                    ; $7686: $66

jr_01a_7687:
    ld l, a                                       ; $7687: $6f
    ld [hl], d                                    ; $7688: $72
    ld h, l                                       ; $7689: $65
    jr nz, jr_01a_76f9                            ; $768a: $20 $6d

    ld h, l                                       ; $768c: $65
    ld hl, $4f02                                  ; $768d: $21 $02 $4f
    ld l, [hl]                                    ; $7690: $6e
    ld h, e                                       ; $7691: $63
    ld h, l                                       ; $7692: $65
    jr nz, jr_01a_76de                            ; $7693: $20 $49

    jr nz, jr_01a_76fe                            ; $7695: $20 $67

    ld h, l                                       ; $7697: $65
    ld [hl], h                                    ; $7698: $74
    jr nz, jr_01a_7708                            ; $7699: $20 $6d

    ld a, c                                       ; $769b: $79
    ld bc, $5731                                  ; $769c: $01 $31 $57
    jr nz, jr_01a_7714                            ; $769f: $20 $73

jr_01a_76a1:
    ld [hl], a                                    ; $76a1: $77
    ld l, c                                       ; $76a2: $69
    ld l, [hl]                                    ; $76a3: $6e
    ld h, a                                       ; $76a4: $67
    jr nz, jr_01a_7709                            ; $76a5: $20 $62

jr_01a_76a7:
    ld h, c                                       ; $76a7: $61

jr_01a_76a8:
    ld h, e                                       ; $76a8: $63
    ld l, e                                       ; $76a9: $6b
    inc l                                         ; $76aa: $2c
    ld bc, $2749                                  ; $76ab: $01 $49 $27
    ld l, h                                       ; $76ae: $6c
    ld l, h                                       ; $76af: $6c
    jr nz, @+$75                                  ; $76b0: $20 $73

jr_01a_76b2:
    ld l, b                                       ; $76b2: $68
    ld l, a                                       ; $76b3: $6f
    ld [hl], a                                    ; $76b4: $77
    jr nz, jr_01a_7730                            ; $76b5: $20 $79

    ld l, a                                       ; $76b7: $6f
    ld [hl], l                                    ; $76b8: $75
    ld hl, $0003                                  ; $76b9: $21 $03 $00
    ld b, a                                       ; $76bc: $47

jr_01a_76bd:
    ld l, a                                       ; $76bd: $6f
    ld l, h                                       ; $76be: $6c
    ld h, [hl]                                    ; $76bf: $66
    jr nz, jr_01a_772b                            ; $76c0: $20 $69

    ld [hl], e                                    ; $76c2: $73
    jr nz, @+$6a                                  ; $76c3: $20 $68

    ld h, c                                       ; $76c5: $61
    ld [hl], d                                    ; $76c6: $72
    ld h, h                                       ; $76c7: $64
    ld l, $2e                                     ; $76c8: $2e $2e
    ld l, $20                                     ; $76ca: $2e $20
    ld c, c                                       ; $76cc: $49
    ld h, [hl]                                    ; $76cd: $66
    ld bc, $796d                                  ; $76ce: $01 $6d $79
    jr nz, jr_01a_774a                            ; $76d1: $20 $77

jr_01a_76d3:
    ld l, a                                       ; $76d3: $6f
    ld l, a                                       ; $76d4: $6f
    ld h, h                                       ; $76d5: $64

jr_01a_76d6:
    jr nz, @+$75                                  ; $76d6: $20 $73

    ld [hl], a                                    ; $76d8: $77

jr_01a_76d9:
    ld l, c                                       ; $76d9: $69
    ld l, [hl]                                    ; $76da: $6e
    ld h, a                                       ; $76db: $67
    jr nz, jr_01a_7747                            ; $76dc: $20 $69

jr_01a_76de:
    ld [hl], e                                    ; $76de: $73
    ld bc, $6e6f                                  ; $76df: $01 $6f $6e
    inc l                                         ; $76e2: $2c
    jr nz, jr_01a_7752                            ; $76e3: $20 $6d

    ld a, c                                       ; $76e5: $79
    jr nz, jr_01a_7751                            ; $76e6: $20 $69

    ld [hl], d                                    ; $76e8: $72
    ld l, a                                       ; $76e9: $6f
    ld l, [hl]                                    ; $76ea: $6e
    daa                                           ; $76eb: $27
    ld [hl], e                                    ; $76ec: $73
    jr nz, @+$71                                  ; $76ed: $20 $6f

    ld h, [hl]                                    ; $76ef: $66
    ld h, [hl]                                    ; $76f0: $66
    ld [bc], a                                    ; $76f1: $02
    ld h, c                                       ; $76f2: $61
    ld l, [hl]                                    ; $76f3: $6e

jr_01a_76f4:
    ld h, h                                       ; $76f4: $64
    jr nz, @+$78                                  ; $76f5: $20 $76

    ld l, c                                       ; $76f7: $69

jr_01a_76f8:
    ld h, e                                       ; $76f8: $63

jr_01a_76f9:
    ld h, l                                       ; $76f9: $65
    jr nz, jr_01a_7772                            ; $76fa: $20 $76

    ld h, l                                       ; $76fc: $65
    ld [hl], d                                    ; $76fd: $72

jr_01a_76fe:
    ld [hl], e                                    ; $76fe: $73
    ld h, c                                       ; $76ff: $61
    ld l, $20                                     ; $7700: $2e $20
    ld b, c                                       ; $7702: $41
    ld [hl], h                                    ; $7703: $74
    ld bc, $6874                                  ; $7704: $01 $74 $68
    ld l, c                                       ; $7707: $69

jr_01a_7708:
    ld [hl], e                                    ; $7708: $73

jr_01a_7709:
    jr nz, jr_01a_777b                            ; $7709: $20 $70

    ld h, c                                       ; $770b: $61
    ld h, e                                       ; $770c: $63
    ld h, l                                       ; $770d: $65
    inc l                                         ; $770e: $2c
    jr nz, jr_01a_775a                            ; $770f: $20 $49

    daa                                           ; $7711: $27
    ld l, h                                       ; $7712: $6c
    ld l, h                                       ; $7713: $6c

jr_01a_7714:
    ld bc, $656e                                  ; $7714: $01 $6e $65
    halt                                          ; $7717: $76
    ld h, l                                       ; $7718: $65
    ld [hl], d                                    ; $7719: $72
    jr nz, jr_01a_777e                            ; $771a: $20 $62

    ld h, l                                       ; $771c: $65
    ld h, c                                       ; $771d: $61
    ld [hl], h                                    ; $771e: $74
    jr nz, @+$7b                                  ; $771f: $20 $79

    ld l, a                                       ; $7721: $6f
    ld [hl], l                                    ; $7722: $75
    ld hl, $0003                                  ; $7723: $21 $03 $00
    ld c, $05                                     ; $7726: $0e $05
    jr nz, jr_01a_7793                            ; $7728: $20 $69

    ld [hl], e                                    ; $772a: $73

jr_01a_772b:
    ld bc, $6f77                                  ; $772b: $01 $77 $6f
    ld l, [hl]                                    ; $772e: $6e
    ld h, h                                       ; $772f: $64

jr_01a_7730:
    ld h, l                                       ; $7730: $65
    ld [hl], d                                    ; $7731: $72
    ld h, [hl]                                    ; $7732: $66
    ld [hl], l                                    ; $7733: $75
    ld l, h                                       ; $7734: $6c
    ld hl, $0003                                  ; $7735: $21 $03 $00
    ld c, c                                       ; $7738: $49
    ld h, [hl]                                    ; $7739: $66
    jr nz, jr_01a_77b5                            ; $773a: $20 $79

    ld l, a                                       ; $773c: $6f
    ld [hl], l                                    ; $773d: $75
    jr nz, @+$72                                  ; $773e: $20 $70

    ld l, h                                       ; $7740: $6c
    ld h, c                                       ; $7741: $61
    ld h, e                                       ; $7742: $63
    ld h, l                                       ; $7743: $65
    jr nz, jr_01a_77ae                            ; $7744: $20 $68

    ld h, l                                       ; $7746: $65

jr_01a_7747:
    ld [hl], d                                    ; $7747: $72
    ld h, l                                       ; $7748: $65
    inc l                                         ; $7749: $2c

jr_01a_774a:
    ld bc, $6f79                                  ; $774a: $01 $79 $6f
    ld [hl], l                                    ; $774d: $75
    jr nz, jr_01a_77b3                            ; $774e: $20 $63

    ld h, c                                       ; $7750: $61

jr_01a_7751:
    ld l, [hl]                                    ; $7751: $6e

jr_01a_7752:
    jr nz, jr_01a_77b9                            ; $7752: $20 $65

    ld l, [hl]                                    ; $7754: $6e
    ld [hl], h                                    ; $7755: $74
    ld h, l                                       ; $7756: $65
    ld [hl], d                                    ; $7757: $72
    jr nz, jr_01a_77ce                            ; $7758: $20 $74

jr_01a_775a:
    ld l, b                                       ; $775a: $68
    ld h, l                                       ; $775b: $65
    ld bc, $7544                                  ; $775c: $01 $44 $75
    ld l, [hl]                                    ; $775f: $6e
    ld h, l                                       ; $7760: $65
    jr nz, @+$56                                  ; $7761: $20 $54

    ld l, a                                       ; $7763: $6f
    ld [hl], l                                    ; $7764: $75
    ld [hl], d                                    ; $7765: $72
    ld l, [hl]                                    ; $7766: $6e
    ld h, c                                       ; $7767: $61
    ld l, l                                       ; $7768: $6d
    ld h, l                                       ; $7769: $65
    ld l, [hl]                                    ; $776a: $6e
    ld [hl], h                                    ; $776b: $74
    ld l, $02                                     ; $776c: $2e $02
    ld d, a                                       ; $776e: $57
    ld l, c                                       ; $776f: $69
    ld l, [hl]                                    ; $7770: $6e
    ld l, [hl]                                    ; $7771: $6e

jr_01a_7772:
    ld l, c                                       ; $7772: $69
    ld l, [hl]                                    ; $7773: $6e
    ld h, a                                       ; $7774: $67
    daa                                           ; $7775: $27
    ld [hl], e                                    ; $7776: $73
    jr nz, jr_01a_77e2                            ; $7777: $20 $69

    ld l, l                                       ; $7779: $6d
    ld [hl], b                                    ; $777a: $70

jr_01a_777b:
    ld l, a                                       ; $777b: $6f
    ld [hl], e                                    ; $777c: $73
    ld [hl], e                                    ; $777d: $73

jr_01a_777e:
    ld l, c                                       ; $777e: $69
    ld h, d                                       ; $777f: $62
    ld l, h                                       ; $7780: $6c
    ld h, l                                       ; $7781: $65
    ld l, $2e                                     ; $7782: $2e $2e
    ld l, $01                                     ; $7784: $2e $01
    ld c, c                                       ; $7786: $49
    jr nz, jr_01a_7800                            ; $7787: $20 $77

    ld l, a                                       ; $7789: $6f
    ld l, [hl]                                    ; $778a: $6e
    ld h, h                                       ; $778b: $64
    ld h, l                                       ; $778c: $65
    ld [hl], d                                    ; $778d: $72
    jr nz, @+$79                                  ; $778e: $20 $77

    ld l, b                                       ; $7790: $68
    ld h, c                                       ; $7791: $61
    ld [hl], h                                    ; $7792: $74

jr_01a_7793:
    jr nz, jr_01a_7805                            ; $7793: $20 $70

    ld l, h                                       ; $7795: $6c
    ld h, c                                       ; $7796: $61
    ld h, e                                       ; $7797: $63
    ld h, l                                       ; $7798: $65
    ld bc, $2749                                  ; $7799: $01 $49 $27
    ld l, h                                       ; $779c: $6c
    ld l, h                                       ; $779d: $6c
    jr nz, @+$69                                  ; $779e: $20 $67

    ld h, l                                       ; $77a0: $65
    ld [hl], h                                    ; $77a1: $74
    ld l, $03                                     ; $77a2: $2e $03
    nop                                           ; $77a4: $00
    ld c, c                                       ; $77a5: $49
    jr nz, jr_01a_781c                            ; $77a6: $20 $74

    ld [hl], d                                    ; $77a8: $72
    ld l, c                                       ; $77a9: $69
    ld h, l                                       ; $77aa: $65
    ld h, h                                       ; $77ab: $64
    jr nz, jr_01a_7821                            ; $77ac: $20 $73

jr_01a_77ae:
    ld l, a                                       ; $77ae: $6f
    jr nz, jr_01a_7819                            ; $77af: $20 $68

    ld h, c                                       ; $77b1: $61
    ld [hl], d                                    ; $77b2: $72

jr_01a_77b3:
    ld h, h                                       ; $77b3: $64
    inc l                                         ; $77b4: $2c

jr_01a_77b5:
    ld bc, $7562                                  ; $77b5: $01 $62 $75
    ld [hl], h                                    ; $77b8: $74

jr_01a_77b9:
    jr nz, jr_01a_7804                            ; $77b9: $20 $49

    jr nz, jr_01a_7830                            ; $77bb: $20 $73

    ld [hl], h                                    ; $77bd: $74
    ld l, c                                       ; $77be: $69
    ld l, h                                       ; $77bf: $6c
    ld l, h                                       ; $77c0: $6c
    ld bc, $6f63                                  ; $77c1: $01 $63 $6f
    ld [hl], l                                    ; $77c4: $75
    ld l, h                                       ; $77c5: $6c
    ld h, h                                       ; $77c6: $64
    ld l, [hl]                                    ; $77c7: $6e
    daa                                           ; $77c8: $27
    ld [hl], h                                    ; $77c9: $74
    jr nz, jr_01a_783c                            ; $77ca: $20 $70

    ld l, h                                       ; $77cc: $6c
    ld h, c                                       ; $77cd: $61

jr_01a_77ce:
    ld h, e                                       ; $77ce: $63
    ld h, l                                       ; $77cf: $65
    ld l, $02                                     ; $77d0: $2e $02
    ld c, c                                       ; $77d2: $49
    jr nz, jr_01a_783c                            ; $77d3: $20 $67

    ld [hl], l                                    ; $77d5: $75
    ld h, l                                       ; $77d6: $65
    ld [hl], e                                    ; $77d7: $73
    ld [hl], e                                    ; $77d8: $73
    jr nz, jr_01a_784f                            ; $77d9: $20 $74

    ld l, b                                       ; $77db: $68
    ld h, l                                       ; $77dc: $65
    jr nz, jr_01a_782f                            ; $77dd: $20 $50

    ld h, c                                       ; $77df: $61
    ld l, h                                       ; $77e0: $6c
    ld l, l                                       ; $77e1: $6d

jr_01a_77e2:
    ld bc, $6f54                                  ; $77e2: $01 $54 $6f
    ld [hl], l                                    ; $77e5: $75
    ld [hl], d                                    ; $77e6: $72
    ld l, [hl]                                    ; $77e7: $6e
    ld h, c                                       ; $77e8: $61
    ld l, l                                       ; $77e9: $6d
    ld h, l                                       ; $77ea: $65
    ld l, [hl]                                    ; $77eb: $6e
    ld [hl], h                                    ; $77ec: $74
    jr nz, jr_01a_7861                            ; $77ed: $20 $72

    ld h, l                                       ; $77ef: $65
    ld h, c                                       ; $77f0: $61
    ld l, h                                       ; $77f1: $6c
    ld l, h                                       ; $77f2: $6c
    ld a, c                                       ; $77f3: $79
    ld bc, $7369                                  ; $77f4: $01 $69 $73
    jr nz, jr_01a_785a                            ; $77f7: $20 $61

    jr nz, jr_01a_7863                            ; $77f9: $20 $68

    ld l, c                                       ; $77fb: $69
    ld h, a                                       ; $77fc: $67
    ld l, b                                       ; $77fd: $68
    ld h, l                                       ; $77fe: $65
    ld [hl], d                                    ; $77ff: $72

jr_01a_7800:
    jr nz, jr_01a_786e                            ; $7800: $20 $6c

    ld h, l                                       ; $7802: $65
    halt                                          ; $7803: $76

jr_01a_7804:
    ld h, l                                       ; $7804: $65

jr_01a_7805:
    ld l, h                                       ; $7805: $6c
    ld hl, $0003                                  ; $7806: $21 $03 $00
    ld c, c                                       ; $7809: $49
    ld h, [hl]                                    ; $780a: $66
    jr nz, jr_01a_7886                            ; $780b: $20 $79

    ld l, a                                       ; $780d: $6f
    ld [hl], l                                    ; $780e: $75
    daa                                           ; $780f: $27
    ld h, h                                       ; $7810: $64
    jr nz, jr_01a_7886                            ; $7811: $20 $73

    ld [hl], h                                    ; $7813: $74
    ld h, l                                       ; $7814: $65
    ld [hl], b                                    ; $7815: $70
    ld [hl], b                                    ; $7816: $70
    ld h, l                                       ; $7817: $65
    ld h, h                                       ; $7818: $64

jr_01a_7819:
    jr nz, jr_01a_7890                            ; $7819: $20 $75

    ld [hl], b                                    ; $781b: $70

jr_01a_781c:
    ld bc, $6f79                                  ; $781c: $01 $79 $6f
    ld [hl], l                                    ; $781f: $75
    ld [hl], d                                    ; $7820: $72

jr_01a_7821:
    jr nz, jr_01a_788a                            ; $7821: $20 $67

    ld h, c                                       ; $7823: $61
    ld l, l                                       ; $7824: $6d
    ld h, l                                       ; $7825: $65
    inc l                                         ; $7826: $2c
    jr nz, @+$7b                                  ; $7827: $20 $79

    ld l, a                                       ; $7829: $6f
    ld [hl], l                                    ; $782a: $75
    jr nz, jr_01a_7890                            ; $782b: $20 $63

    ld l, a                                       ; $782d: $6f
    ld [hl], l                                    ; $782e: $75

jr_01a_782f:
    ld l, h                                       ; $782f: $6c

jr_01a_7830:
    ld h, h                                       ; $7830: $64
    ld bc, $6168                                  ; $7831: $01 $68 $61
    halt                                          ; $7834: $76
    ld h, l                                       ; $7835: $65
    jr nz, @+$79                                  ; $7836: $20 $77

    ld l, a                                       ; $7838: $6f
    ld l, [hl]                                    ; $7839: $6e
    ld l, $2e                                     ; $783a: $2e $2e

jr_01a_783c:
    ld l, $02                                     ; $783c: $2e $02
    ld c, $05                                     ; $783e: $0e $05
    jr nz, jr_01a_78b5                            ; $7840: $20 $73

    ld [hl], l                                    ; $7842: $75
    ld [hl], d                                    ; $7843: $72
    ld h, l                                       ; $7844: $65
    jr nz, @+$6b                                  ; $7845: $20 $69

    ld [hl], e                                    ; $7847: $73
    jr nz, @+$63                                  ; $7848: $20 $61

    ld bc, $7473                                  ; $784a: $01 $73 $74
    ld [hl], d                                    ; $784d: $72
    ld l, a                                       ; $784e: $6f

jr_01a_784f:
    ld l, [hl]                                    ; $784f: $6e
    ld h, a                                       ; $7850: $67
    jr nz, jr_01a_78ba                            ; $7851: $20 $67

    ld l, a                                       ; $7853: $6f
    ld l, h                                       ; $7854: $6c
    ld h, [hl]                                    ; $7855: $66
    ld h, l                                       ; $7856: $65
    ld [hl], d                                    ; $7857: $72
    ld l, $03                                     ; $7858: $2e $03

jr_01a_785a:
    nop                                           ; $785a: $00
    ld c, [hl]                                    ; $785b: $4e
    ld l, c                                       ; $785c: $69
    ld h, e                                       ; $785d: $63
    ld h, l                                       ; $785e: $65
    jr nz, jr_01a_78cb                            ; $785f: $20 $6a

jr_01a_7861:
    ld l, a                                       ; $7861: $6f
    ld h, d                                       ; $7862: $62

jr_01a_7863:
    ld hl, $4920                                  ; $7863: $21 $20 $49
    jr nz, jr_01a_78d3                            ; $7866: $20 $6b

    ld l, [hl]                                    ; $7868: $6e
    ld h, l                                       ; $7869: $65
    ld [hl], a                                    ; $786a: $77
    ld bc, $6f79                                  ; $786b: $01 $79 $6f

jr_01a_786e:
    ld [hl], l                                    ; $786e: $75
    daa                                           ; $786f: $27
    ld h, h                                       ; $7870: $64
    jr nz, jr_01a_78ea                            ; $7871: $20 $77

    ld l, c                                       ; $7873: $69
    ld l, [hl]                                    ; $7874: $6e
    jr nz, jr_01a_78d8                            ; $7875: $20 $61

    ld h, [hl]                                    ; $7877: $66
    ld [hl], h                                    ; $7878: $74
    ld h, l                                       ; $7879: $65
    ld [hl], d                                    ; $787a: $72
    ld bc, $6573                                  ; $787b: $01 $73 $65
    ld h, l                                       ; $787e: $65
    ld l, c                                       ; $787f: $69
    ld l, [hl]                                    ; $7880: $6e
    ld h, a                                       ; $7881: $67
    jr nz, jr_01a_78fd                            ; $7882: $20 $79

    ld l, a                                       ; $7884: $6f
    ld [hl], l                                    ; $7885: $75

jr_01a_7886:
    jr nz, jr_01a_78f8                            ; $7886: $20 $70

    ld l, h                                       ; $7888: $6c
    ld h, c                                       ; $7889: $61

jr_01a_788a:
    ld a, c                                       ; $788a: $79
    ld l, $03                                     ; $788b: $2e $03
    nop                                           ; $788d: $00
    ld b, e                                       ; $788e: $43
    ld l, b                                       ; $788f: $68

jr_01a_7890:
    ld h, c                                       ; $7890: $61
    ld l, l                                       ; $7891: $6d
    ld [hl], b                                    ; $7892: $70
    inc l                                         ; $7893: $2c
    jr nz, @+$4b                                  ; $7894: $20 $49

    daa                                           ; $7896: $27
    ld l, l                                       ; $7897: $6d
    jr nz, jr_01a_7901                            ; $7898: $20 $67

    ld l, a                                       ; $789a: $6f
    ld l, c                                       ; $789b: $69
    ld l, [hl]                                    ; $789c: $6e
    ld h, a                                       ; $789d: $67
    ld bc, $6f74                                  ; $789e: $01 $74 $6f
    jr nz, jr_01a_7905                            ; $78a1: $20 $62

    ld h, l                                       ; $78a3: $65
    ld h, c                                       ; $78a4: $61
    ld [hl], h                                    ; $78a5: $74
    jr nz, jr_01a_7921                            ; $78a6: $20 $79

    ld l, a                                       ; $78a8: $6f
    ld [hl], l                                    ; $78a9: $75
    jr nz, jr_01a_790d                            ; $78aa: $20 $61

    ld l, [hl]                                    ; $78ac: $6e
    ld h, h                                       ; $78ad: $64
    ld bc, $6562                                  ; $78ae: $01 $62 $65
    ld h, e                                       ; $78b1: $63
    ld l, a                                       ; $78b2: $6f
    ld l, l                                       ; $78b3: $6d
    ld h, l                                       ; $78b4: $65

jr_01a_78b5:
    jr nz, jr_01a_78fe                            ; $78b5: $20 $47

    ld [hl], d                                    ; $78b7: $72
    ld h, c                                       ; $78b8: $61
    ld l, [hl]                                    ; $78b9: $6e

jr_01a_78ba:
    ld h, h                                       ; $78ba: $64
    jr nz, @+$45                                  ; $78bb: $20 $43

    ld l, b                                       ; $78bd: $68
    ld h, c                                       ; $78be: $61
    ld l, l                                       ; $78bf: $6d
    ld [hl], b                                    ; $78c0: $70
    ld hl, $4902                                  ; $78c1: $21 $02 $49
    daa                                           ; $78c4: $27
    ld l, l                                       ; $78c5: $6d
    jr nz, @+$67                                  ; $78c6: $20 $65

    ld a, b                                       ; $78c8: $78
    ld [hl], h                                    ; $78c9: $74
    ld h, l                                       ; $78ca: $65

jr_01a_78cb:
    ld l, [hl]                                    ; $78cb: $6e
    ld h, h                                       ; $78cc: $64
    ld l, c                                       ; $78cd: $69
    ld l, [hl]                                    ; $78ce: $6e
    ld h, a                                       ; $78cf: $67
    jr nz, jr_01a_793f                            ; $78d0: $20 $6d

    ld a, c                                       ; $78d2: $79

jr_01a_78d3:
    ld bc, $7264                                  ; $78d3: $01 $64 $72
    ld l, c                                       ; $78d6: $69
    halt                                          ; $78d7: $76

jr_01a_78d8:
    ld h, l                                       ; $78d8: $65
    jr nz, @+$6c                                  ; $78d9: $20 $6a

    ld [hl], l                                    ; $78db: $75
    ld [hl], e                                    ; $78dc: $73
    ld [hl], h                                    ; $78dd: $74
    jr nz, jr_01a_7946                            ; $78de: $20 $66

    ld l, a                                       ; $78e0: $6f
    ld [hl], d                                    ; $78e1: $72
    ld bc, $6874                                  ; $78e2: $01 $74 $68
    ld h, c                                       ; $78e5: $61
    ld [hl], h                                    ; $78e6: $74
    jr nz, jr_01a_7959                            ; $78e7: $20 $70

    ld [hl], l                                    ; $78e9: $75

jr_01a_78ea:
    ld [hl], d                                    ; $78ea: $72
    ld [hl], b                                    ; $78eb: $70
    ld l, a                                       ; $78ec: $6f
    ld [hl], e                                    ; $78ed: $73
    ld h, l                                       ; $78ee: $65
    ld hl, $0003                                  ; $78ef: $21 $03 $00
    ld c, h                                       ; $78f2: $4c
    ld l, a                                       ; $78f3: $6f
    ld l, a                                       ; $78f4: $6f
    ld l, e                                       ; $78f5: $6b
    jr nz, jr_01a_7959                            ; $78f6: $20 $61

jr_01a_78f8:
    ld [hl], h                                    ; $78f8: $74
    jr nz, jr_01a_7909                            ; $78f9: $20 $0e

    ld b, $27                                     ; $78fb: $06 $27

jr_01a_78fd:
    ld [hl], e                                    ; $78fd: $73

jr_01a_78fe:
    ld bc, $6870                                  ; $78fe: $01 $70 $68

jr_01a_7901:
    ld a, c                                       ; $7901: $79
    ld [hl], e                                    ; $7902: $73
    ld l, c                                       ; $7903: $69
    ld [hl], c                                    ; $7904: $71

jr_01a_7905:
    ld [hl], l                                    ; $7905: $75
    ld h, l                                       ; $7906: $65
    ld l, $2e                                     ; $7907: $2e $2e

jr_01a_7909:
    ld l, $01                                     ; $7909: $2e $01
    ld c, b                                       ; $790b: $48
    ld h, l                                       ; $790c: $65

jr_01a_790d:
    daa                                           ; $790d: $27
    ld [hl], e                                    ; $790e: $73
    jr nz, jr_01a_7984                            ; $790f: $20 $73

    ld l, a                                       ; $7911: $6f
    jr nz, jr_01a_7981                            ; $7912: $20 $6d

    ld h, c                                       ; $7914: $61
    ld h, e                                       ; $7915: $63
    ld l, b                                       ; $7916: $68
    ld l, a                                       ; $7917: $6f
    ld hl, $0003                                  ; $7918: $21 $03 $00
    ld c, $06                                     ; $791b: $0e $06
    daa                                           ; $791d: $27
    ld [hl], e                                    ; $791e: $73
    jr nz, jr_01a_7995                            ; $791f: $20 $74

jr_01a_7921:
    ld h, l                                       ; $7921: $65
    ld h, l                                       ; $7922: $65
    jr nz, @+$75                                  ; $7923: $20 $73

    ld l, b                                       ; $7925: $68
    ld l, a                                       ; $7926: $6f
    ld [hl], h                                    ; $7927: $74
    ld bc, $6177                                  ; $7928: $01 $77 $61
    ld [hl], e                                    ; $792b: $73
    jr nz, jr_01a_798f                            ; $792c: $20 $61

    ld l, l                                       ; $792e: $6d
    ld h, c                                       ; $792f: $61
    ld a, d                                       ; $7930: $7a
    ld l, c                                       ; $7931: $69
    ld l, [hl]                                    ; $7932: $6e
    ld h, a                                       ; $7933: $67
    ld hl, $5402                                  ; $7934: $21 $02 $54
    ld l, a                                       ; $7937: $6f
    ld h, h                                       ; $7938: $64
    ld h, c                                       ; $7939: $61
    ld a, c                                       ; $793a: $79
    daa                                           ; $793b: $27
    ld [hl], e                                    ; $793c: $73
    jr nz, jr_01a_79b6                            ; $793d: $20 $77

jr_01a_793f:
    ld l, c                                       ; $793f: $69
    ld l, [hl]                                    ; $7940: $6e
    ld l, [hl]                                    ; $7941: $6e
    ld h, l                                       ; $7942: $65
    ld [hl], d                                    ; $7943: $72
    jr nz, jr_01a_79bd                            ; $7944: $20 $77

jr_01a_7946:
    ld l, c                                       ; $7946: $69
    ld l, h                                       ; $7947: $6c
    ld l, h                                       ; $7948: $6c
    ld bc, $6168                                  ; $7949: $01 $68 $61
    halt                                          ; $794c: $76
    ld h, l                                       ; $794d: $65
    jr nz, @+$76                                  ; $794e: $20 $74

    ld l, a                                       ; $7950: $6f
    jr nz, jr_01a_79ba                            ; $7951: $20 $67

    ld l, a                                       ; $7953: $6f
    jr nz, jr_01a_79ca                            ; $7954: $20 $74

    ld l, b                                       ; $7956: $68
    ld [hl], d                                    ; $7957: $72
    ld l, a                                       ; $7958: $6f

jr_01a_7959:
    ld [hl], l                                    ; $7959: $75
    ld h, a                                       ; $795a: $67
    ld l, b                                       ; $795b: $68
    ld bc, $6968                                  ; $795c: $01 $68 $69
    ld l, l                                       ; $795f: $6d
    jr nz, @+$68                                  ; $7960: $20 $66

    ld l, c                                       ; $7962: $69
    ld [hl], d                                    ; $7963: $72
    ld [hl], e                                    ; $7964: $73
    ld [hl], h                                    ; $7965: $74
    ld hl, $0003                                  ; $7966: $21 $03 $00
    ld d, a                                       ; $7969: $57
    ld l, b                                       ; $796a: $68
    ld h, c                                       ; $796b: $61
    ld [hl], h                                    ; $796c: $74
    jr nz, jr_01a_79d8                            ; $796d: $20 $69

    ld [hl], e                                    ; $796f: $73
    jr nz, jr_01a_79db                            ; $7970: $20 $69

    ld [hl], h                                    ; $7972: $74
    jr nz, @+$63                                  ; $7973: $20 $61

    ld h, d                                       ; $7975: $62
    ld l, a                                       ; $7976: $6f
    ld [hl], l                                    ; $7977: $75
    ld [hl], h                                    ; $7978: $74
    ld bc, $060e                                  ; $7979: $01 $0e $06
    daa                                           ; $797c: $27
    ld [hl], e                                    ; $797d: $73
    jr nz, jr_01a_79e7                            ; $797e: $20 $67

    ld l, a                                       ; $7980: $6f

jr_01a_7981:
    ld l, h                                       ; $7981: $6c
    ld h, [hl]                                    ; $7982: $66
    ccf                                           ; $7983: $3f

jr_01a_7984:
    ld [bc], a                                    ; $7984: $02
    ld b, e                                       ; $7985: $43
    ld h, c                                       ; $7986: $61
    ld l, [hl]                                    ; $7987: $6e
    jr nz, jr_01a_7a03                            ; $7988: $20 $79

    ld l, a                                       ; $798a: $6f
    ld [hl], l                                    ; $798b: $75
    jr nz, jr_01a_7a00                            ; $798c: $20 $72

    ld h, l                                       ; $798e: $65

jr_01a_798f:
    ld h, c                                       ; $798f: $61
    ld l, h                                       ; $7990: $6c
    ld l, h                                       ; $7991: $6c
    ld a, c                                       ; $7992: $79
    jr nz, @+$69                                  ; $7993: $20 $67

jr_01a_7995:
    ld h, l                                       ; $7995: $65
    ld [hl], h                                    ; $7996: $74
    ld bc, $6874                                  ; $7997: $01 $74 $68
    ld h, c                                       ; $799a: $61
    ld [hl], h                                    ; $799b: $74
    jr nz, jr_01a_7a11                            ; $799c: $20 $73

    ld h, e                                       ; $799e: $63
    ld l, a                                       ; $799f: $6f
    ld [hl], d                                    ; $79a0: $72
    ld h, l                                       ; $79a1: $65
    jr nz, jr_01a_7a1b                            ; $79a2: $20 $77

    ld l, c                                       ; $79a4: $69
    ld [hl], h                                    ; $79a5: $74
    ld l, b                                       ; $79a6: $68
    jr nz, @+$6c                                  ; $79a7: $20 $6a

    ld [hl], l                                    ; $79a9: $75
    ld [hl], e                                    ; $79aa: $73
    ld [hl], h                                    ; $79ab: $74
    ld bc, $2061                                  ; $79ac: $01 $61 $20
    ld l, h                                       ; $79af: $6c
    ld l, a                                       ; $79b0: $6f
    ld l, [hl]                                    ; $79b1: $6e
    ld h, a                                       ; $79b2: $67
    jr nz, @+$66                                  ; $79b3: $20 $64

    ld [hl], d                                    ; $79b5: $72

jr_01a_79b6:
    ld l, c                                       ; $79b6: $69
    halt                                          ; $79b7: $76
    ld h, l                                       ; $79b8: $65
    ccf                                           ; $79b9: $3f

jr_01a_79ba:
    inc bc                                        ; $79ba: $03
    nop                                           ; $79bb: $00
    ld c, c                                       ; $79bc: $49

jr_01a_79bd:
    jr nz, jr_01a_7a22                            ; $79bd: $20 $63

    ld h, c                                       ; $79bf: $61
    ld l, [hl]                                    ; $79c0: $6e
    daa                                           ; $79c1: $27
    ld [hl], h                                    ; $79c2: $74
    jr nz, jr_01a_7a2d                            ; $79c3: $20 $68

    ld l, c                                       ; $79c5: $69
    ld [hl], h                                    ; $79c6: $74
    jr nz, jr_01a_7a35                            ; $79c7: $20 $6c

    ld l, c                                       ; $79c9: $69

jr_01a_79ca:
    ld l, e                                       ; $79ca: $6b
    ld h, l                                       ; $79cb: $65
    ld bc, $6954                                  ; $79cc: $01 $54 $69
    ld l, [hl]                                    ; $79cf: $6e
    ld a, c                                       ; $79d0: $79
    inc l                                         ; $79d1: $2c
    jr nz, jr_01a_7a47                            ; $79d2: $20 $73

    ld l, a                                       ; $79d4: $6f
    jr nz, @+$6f                                  ; $79d5: $20 $6d

    ld a, c                                       ; $79d7: $79

jr_01a_79d8:
    jr nz, jr_01a_7a40                            ; $79d8: $20 $66

    ld l, a                                       ; $79da: $6f

jr_01a_79db:
    ld h, e                                       ; $79db: $63
    ld [hl], l                                    ; $79dc: $75
    ld [hl], e                                    ; $79dd: $73
    ld bc, $7369                                  ; $79de: $01 $69 $73
    jr nz, jr_01a_7a52                            ; $79e1: $20 $6f

    ld l, [hl]                                    ; $79e3: $6e
    jr nz, jr_01a_7a47                            ; $79e4: $20 $61

    ld h, e                                       ; $79e6: $63

jr_01a_79e7:
    ld h, e                                       ; $79e7: $63
    ld [hl], l                                    ; $79e8: $75
    ld [hl], d                                    ; $79e9: $72
    ld h, c                                       ; $79ea: $61
    ld h, e                                       ; $79eb: $63
    ld a, c                                       ; $79ec: $79
    ld l, $03                                     ; $79ed: $2e $03
    nop                                           ; $79ef: $00
    ld b, a                                       ; $79f0: $47
    ld h, l                                       ; $79f1: $65
    ld [hl], h                                    ; $79f2: $74
    ld [hl], h                                    ; $79f3: $74
    ld l, c                                       ; $79f4: $69
    ld l, [hl]                                    ; $79f5: $6e
    ld h, a                                       ; $79f6: $67
    jr nz, jr_01a_7a6d                            ; $79f7: $20 $74

    ld l, b                                       ; $79f9: $68
    ld h, l                                       ; $79fa: $65
    ld bc, $6f6c                                  ; $79fb: $01 $6c $6f
    ld l, [hl]                                    ; $79fe: $6e
    ld h, a                                       ; $79ff: $67

jr_01a_7a00:
    ld h, l                                       ; $7a00: $65
    ld [hl], e                                    ; $7a01: $73
    ld [hl], h                                    ; $7a02: $74

jr_01a_7a03:
    jr nz, jr_01a_7a69                            ; $7a03: $20 $64

    ld [hl], d                                    ; $7a05: $72
    ld l, c                                       ; $7a06: $69
    halt                                          ; $7a07: $76
    ld h, l                                       ; $7a08: $65
    jr nz, jr_01a_7a74                            ; $7a09: $20 $69

    ld [hl], e                                    ; $7a0b: $73
    ld bc, $6168                                  ; $7a0c: $01 $68 $61
    ld [hl], d                                    ; $7a0f: $72
    ld h, h                                       ; $7a10: $64

jr_01a_7a11:
    inc l                                         ; $7a11: $2c
    jr nz, jr_01a_7a76                            ; $7a12: $20 $62

    ld [hl], l                                    ; $7a14: $75
    ld [hl], h                                    ; $7a15: $74
    jr nz, jr_01a_7a61                            ; $7a16: $20 $49

    jr nz, @+$75                                  ; $7a18: $20 $73

    ld l, b                                       ; $7a1a: $68

jr_01a_7a1b:
    ld l, a                                       ; $7a1b: $6f
    ld [hl], l                                    ; $7a1c: $75
    ld l, h                                       ; $7a1d: $6c
    ld h, h                                       ; $7a1e: $64
    ld [bc], a                                    ; $7a1f: $02
    ld l, b                                       ; $7a20: $68
    ld h, c                                       ; $7a21: $61

jr_01a_7a22:
    halt                                          ; $7a22: $76
    ld h, l                                       ; $7a23: $65
    jr nz, jr_01a_7a87                            ; $7a24: $20 $61

    jr nz, jr_01a_7a8b                            ; $7a26: $20 $63

    ld l, b                                       ; $7a28: $68
    ld h, c                                       ; $7a29: $61
    ld l, [hl]                                    ; $7a2a: $6e
    ld h, e                                       ; $7a2b: $63
    ld h, l                                       ; $7a2c: $65

jr_01a_7a2d:
    jr nz, jr_01a_7a90                            ; $7a2d: $20 $61

    ld [hl], h                                    ; $7a2f: $74
    ld bc, $6567                                  ; $7a30: $01 $67 $65
    ld [hl], h                                    ; $7a33: $74
    ld [hl], h                                    ; $7a34: $74

jr_01a_7a35:
    ld l, c                                       ; $7a35: $69
    ld l, [hl]                                    ; $7a36: $6e
    ld h, a                                       ; $7a37: $67
    jr nz, jr_01a_7a9d                            ; $7a38: $20 $63

    ld l, h                                       ; $7a3a: $6c
    ld l, a                                       ; $7a3b: $6f
    ld [hl], e                                    ; $7a3c: $73
    ld h, l                                       ; $7a3d: $65
    ld [hl], e                                    ; $7a3e: $73
    ld [hl], h                                    ; $7a3f: $74

jr_01a_7a40:
    ld bc, $6f74                                  ; $7a40: $01 $74 $6f
    jr nz, jr_01a_7ab9                            ; $7a43: $20 $74

    ld l, b                                       ; $7a45: $68
    ld h, l                                       ; $7a46: $65

jr_01a_7a47:
    jr nz, jr_01a_7ab9                            ; $7a47: $20 $70

    ld l, c                                       ; $7a49: $69
    ld l, [hl]                                    ; $7a4a: $6e
    ld l, $03                                     ; $7a4b: $2e $03
    nop                                           ; $7a4d: $00
    ld d, h                                       ; $7a4e: $54
    ld l, b                                       ; $7a4f: $68
    ld h, l                                       ; $7a50: $65
    ld a, c                                       ; $7a51: $79

jr_01a_7a52:
    jr nz, jr_01a_7ac7                            ; $7a52: $20 $73

    ld h, c                                       ; $7a54: $61
    ld a, c                                       ; $7a55: $79
    jr nz, jr_01a_7ad1                            ; $7a56: $20 $79

    ld l, a                                       ; $7a58: $6f
    ld [hl], l                                    ; $7a59: $75
    jr nz, jr_01a_7abf                            ; $7a5a: $20 $63

    ld h, c                                       ; $7a5c: $61
    ld l, [hl]                                    ; $7a5d: $6e
    ld bc, $656d                                  ; $7a5e: $01 $6d $65

jr_01a_7a61:
    ld h, l                                       ; $7a61: $65
    ld [hl], h                                    ; $7a62: $74
    jr nz, jr_01a_7ab2                            ; $7a63: $20 $4d

    ld h, c                                       ; $7a65: $61
    ld [hl], d                                    ; $7a66: $72
    ld l, c                                       ; $7a67: $69
    ld l, a                                       ; $7a68: $6f

jr_01a_7a69:
    jr nz, jr_01a_7ae2                            ; $7a69: $20 $77

    ld l, b                                       ; $7a6b: $68
    ld h, l                                       ; $7a6c: $65

jr_01a_7a6d:
    ld l, [hl]                                    ; $7a6d: $6e
    ld bc, $6f79                                  ; $7a6e: $01 $79 $6f
    ld [hl], l                                    ; $7a71: $75
    jr nz, jr_01a_7ad6                            ; $7a72: $20 $62

jr_01a_7a74:
    ld h, l                                       ; $7a74: $65
    ld h, e                                       ; $7a75: $63

jr_01a_7a76:
    ld l, a                                       ; $7a76: $6f
    ld l, l                                       ; $7a77: $6d
    ld h, l                                       ; $7a78: $65
    jr nz, jr_01a_7ac2                            ; $7a79: $20 $47

    ld [hl], d                                    ; $7a7b: $72
    ld h, c                                       ; $7a7c: $61
    ld l, [hl]                                    ; $7a7d: $6e
    ld h, h                                       ; $7a7e: $64
    jr nz, @+$45                                  ; $7a7f: $20 $43

    ld l, b                                       ; $7a81: $68
    ld h, c                                       ; $7a82: $61
    ld l, l                                       ; $7a83: $6d
    ld [hl], b                                    ; $7a84: $70
    ld l, $03                                     ; $7a85: $2e $03

jr_01a_7a87:
    nop                                           ; $7a87: $00
    ld d, a                                       ; $7a88: $57
    ld l, b                                       ; $7a89: $68
    ld h, l                                       ; $7a8a: $65

jr_01a_7a8b:
    ld l, [hl]                                    ; $7a8b: $6e
    jr nz, jr_01a_7b07                            ; $7a8c: $20 $79

    ld l, a                                       ; $7a8e: $6f
    ld [hl], l                                    ; $7a8f: $75

jr_01a_7a90:
    daa                                           ; $7a90: $27
    ld [hl], d                                    ; $7a91: $72
    ld h, l                                       ; $7a92: $65
    jr nz, jr_01a_7adc                            ; $7a93: $20 $47

    ld [hl], d                                    ; $7a95: $72
    ld h, c                                       ; $7a96: $61
    ld l, [hl]                                    ; $7a97: $6e
    ld h, h                                       ; $7a98: $64
    ld bc, $6843                                  ; $7a99: $01 $43 $68
    ld h, c                                       ; $7a9c: $61

jr_01a_7a9d:
    ld l, l                                       ; $7a9d: $6d
    ld [hl], b                                    ; $7a9e: $70
    inc l                                         ; $7a9f: $2c
    jr nz, jr_01a_7b1b                            ; $7aa0: $20 $79

    ld l, a                                       ; $7aa2: $6f
    ld [hl], l                                    ; $7aa3: $75
    jr nz, jr_01a_7b09                            ; $7aa4: $20 $63

    ld h, c                                       ; $7aa6: $61
    ld l, [hl]                                    ; $7aa7: $6e
    jr nz, jr_01a_7b17                            ; $7aa8: $20 $6d

    ld h, l                                       ; $7aaa: $65
    ld h, l                                       ; $7aab: $65
    ld [hl], h                                    ; $7aac: $74
    ld bc, $614d                                  ; $7aad: $01 $4d $61
    ld [hl], d                                    ; $7ab0: $72
    ld l, c                                       ; $7ab1: $69

jr_01a_7ab2:
    ld l, a                                       ; $7ab2: $6f
    ld l, $2e                                     ; $7ab3: $2e $2e
    ld l, $03                                     ; $7ab5: $2e $03
    nop                                           ; $7ab7: $00
    ld c, c                                       ; $7ab8: $49

jr_01a_7ab9:
    daa                                           ; $7ab9: $27
    ld l, h                                       ; $7aba: $6c
    ld l, h                                       ; $7abb: $6c
    jr nz, jr_01a_7b20                            ; $7abc: $20 $62

    ld h, l                                       ; $7abe: $65

jr_01a_7abf:
    jr nz, @+$76                                  ; $7abf: $20 $74

    ld l, b                                       ; $7ac1: $68

jr_01a_7ac2:
    ld h, l                                       ; $7ac2: $65
    jr nz, @+$71                                  ; $7ac3: $20 $6f

    ld l, [hl]                                    ; $7ac5: $6e
    ld h, l                                       ; $7ac6: $65

jr_01a_7ac7:
    ld bc, $6f74                                  ; $7ac7: $01 $74 $6f
    jr nz, jr_01a_7b2e                            ; $7aca: $20 $62

    ld h, l                                       ; $7acc: $65
    ld h, c                                       ; $7acd: $61
    ld [hl], h                                    ; $7ace: $74
    jr nz, jr_01a_7adf                            ; $7acf: $20 $0e

jr_01a_7ad1:
    rlca                                          ; $7ad1: $07
    jr nz, @+$63                                  ; $7ad2: $20 $61

    ld l, [hl]                                    ; $7ad4: $6e
    ld h, h                                       ; $7ad5: $64

jr_01a_7ad6:
    ld bc, $6f6e                                  ; $7ad6: $01 $6e $6f
    ld h, d                                       ; $7ad9: $62
    ld l, a                                       ; $7ada: $6f
    ld h, h                                       ; $7adb: $64

jr_01a_7adc:
    ld a, c                                       ; $7adc: $79
    jr nz, @+$67                                  ; $7add: $20 $65

jr_01a_7adf:
    ld l, h                                       ; $7adf: $6c
    ld [hl], e                                    ; $7ae0: $73
    ld h, l                                       ; $7ae1: $65

jr_01a_7ae2:
    ld hl, $0003                                  ; $7ae2: $21 $03 $00
    ld c, c                                       ; $7ae5: $49
    ld h, [hl]                                    ; $7ae6: $66
    jr nz, jr_01a_7b62                            ; $7ae7: $20 $79

    ld l, a                                       ; $7ae9: $6f
    ld [hl], l                                    ; $7aea: $75
    jr nz, jr_01a_7b5d                            ; $7aeb: $20 $70

    ld l, h                                       ; $7aed: $6c
    ld h, c                                       ; $7aee: $61
    ld a, c                                       ; $7aef: $79
    jr nz, jr_01a_7b69                            ; $7af0: $20 $77

    ld h, l                                       ; $7af2: $65
    ld l, h                                       ; $7af3: $6c
    ld l, h                                       ; $7af4: $6c
    jr nz, jr_01a_7b59                            ; $7af5: $20 $62

    ld [hl], l                                    ; $7af7: $75
    ld [hl], h                                    ; $7af8: $74
    ld bc, $6f64                                  ; $7af9: $01 $64 $6f
    ld l, [hl]                                    ; $7afc: $6e
    daa                                           ; $7afd: $27
    ld [hl], h                                    ; $7afe: $74
    jr nz, jr_01a_7b6e                            ; $7aff: $20 $6d

    ld h, c                                       ; $7b01: $61
    ld l, e                                       ; $7b02: $6b
    ld h, l                                       ; $7b03: $65
    jr nz, jr_01a_7b76                            ; $7b04: $20 $70

    ld h, c                                       ; $7b06: $61

jr_01a_7b07:
    ld [hl], d                                    ; $7b07: $72
    inc l                                         ; $7b08: $2c

jr_01a_7b09:
    ld bc, $7469                                  ; $7b09: $01 $69 $74
    daa                                           ; $7b0c: $27
    ld [hl], e                                    ; $7b0d: $73
    jr nz, jr_01a_7b89                            ; $7b0e: $20 $79

    ld l, a                                       ; $7b10: $6f
    ld [hl], l                                    ; $7b11: $75
    ld [hl], d                                    ; $7b12: $72
    jr nz, jr_01a_7b89                            ; $7b13: $20 $74

    ld h, l                                       ; $7b15: $65
    ld h, e                                       ; $7b16: $63

jr_01a_7b17:
    ld l, b                                       ; $7b17: $68
    ld l, [hl]                                    ; $7b18: $6e
    ld l, c                                       ; $7b19: $69
    ld [hl], c                                    ; $7b1a: $71

jr_01a_7b1b:
    ld [hl], l                                    ; $7b1b: $75
    ld h, l                                       ; $7b1c: $65
    ld l, $03                                     ; $7b1d: $2e $03
    nop                                           ; $7b1f: $00

jr_01a_7b20:
    push af                                       ; $7b20: $f5
    ld a, $00                                     ; $7b21: $3e $00
    call Call_01a_7b30                            ; $7b23: $cd $30 $7b
    pop af                                        ; $7b26: $f1
    ret                                           ; $7b27: $c9


    push af                                       ; $7b28: $f5
    ld a, $01                                     ; $7b29: $3e $01
    call Call_01a_7b30                            ; $7b2b: $cd $30 $7b

jr_01a_7b2e:
    pop af                                        ; $7b2e: $f1
    ret                                           ; $7b2f: $c9


Call_01a_7b30:
    push bc                                       ; $7b30: $c5
    push de                                       ; $7b31: $d5
    push hl                                       ; $7b32: $e5
    ld hl, $4004                                  ; $7b33: $21 $04 $40
    sla e                                         ; $7b36: $cb $23
    rl d                                          ; $7b38: $cb $12
    add hl, de                                    ; $7b3a: $19
    ld e, [hl]                                    ; $7b3b: $5e
    inc hl                                        ; $7b3c: $23
    ld d, [hl]                                    ; $7b3d: $56
    ld hl, $41fc                                  ; $7b3e: $21 $fc $41
    add hl, de                                    ; $7b41: $19
    or a                                          ; $7b42: $b7
    jr nz, jr_01a_7b4d                            ; $7b43: $20 $08

    ld de, $c600                                  ; $7b45: $11 $00 $c6
    ld bc, $0180                                  ; $7b48: $01 $80 $01
    jr jr_01a_7b53                                ; $7b4b: $18 $06

jr_01a_7b4d:
    ld de, $d880                                  ; $7b4d: $11 $80 $d8
    ld bc, $0020                                  ; $7b50: $01 $20 $00

jr_01a_7b53:
    call Call_000_03d3                            ; $7b53: $cd $d3 $03
    pop hl                                        ; $7b56: $e1
    pop de                                        ; $7b57: $d1
    pop bc                                        ; $7b58: $c1

jr_01a_7b59:
    ret                                           ; $7b59: $c9


    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff

jr_01a_7b5d:
    rst $38                                       ; $7b5d: $ff
    rst $38                                       ; $7b5e: $ff
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff

jr_01a_7b62:
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff

jr_01a_7b69:
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff

jr_01a_7b6e:
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff

jr_01a_7b76:
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

jr_01a_7b89:
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
