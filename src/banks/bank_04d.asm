; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04d", ROMX[$4000], BANK[$4d]

    add h                                         ; $4000: $84
    ld e, b                                       ; $4001: $58
    jp Jump_000_0563                              ; $4002: $c3 $63 $05


    ld h, l                                       ; $4005: $65
    ld a, a                                       ; $4006: $7f
    ld h, [hl]                                    ; $4007: $66
    db $10                                        ; $4008: $10
    ld l, b                                       ; $4009: $68
    sub c                                         ; $400a: $91
    ld l, c                                       ; $400b: $69
    rrca                                          ; $400c: $0f
    ld l, e                                       ; $400d: $6b
    sub c                                         ; $400e: $91
    ld l, h                                       ; $400f: $6c
    sbc $6d                                       ; $4010: $de $6d

    db $52, $6f, $d4, $70

    ld b, h                                       ; $4016: $44
    ld [hl], d                                    ; $4017: $72

    db $da, $73

    xor b                                         ; $401a: $a8
    ld [hl], h                                    ; $401b: $74
    ld l, a                                       ; $401c: $6f
    ld a, e                                       ; $401d: $7b
    or h                                          ; $401e: $b4
    ld a, e                                       ; $401f: $7b
    inc sp                                        ; $4020: $33
    ld a, h                                       ; $4021: $7c
    ld e, [hl]                                    ; $4022: $5e
    ld a, h                                       ; $4023: $7c
    or d                                          ; $4024: $b2
    ld a, h                                       ; $4025: $7c
    add sp, $7c                                   ; $4026: $e8 $7c
    rst $38                                       ; $4028: $ff
    nop                                           ; $4029: $00
    rst $38                                       ; $402a: $ff
    nop                                           ; $402b: $00
    rst $38                                       ; $402c: $ff
    nop                                           ; $402d: $00
    rst $38                                       ; $402e: $ff
    nop                                           ; $402f: $00
    rst $38                                       ; $4030: $ff
    nop                                           ; $4031: $00
    rst $38                                       ; $4032: $ff
    nop                                           ; $4033: $00
    rst $38                                       ; $4034: $ff
    nop                                           ; $4035: $00
    rst $38                                       ; $4036: $ff
    nop                                           ; $4037: $00
    add sp, $68                                   ; $4038: $e8 $68
    ldh [$60], a                                  ; $403a: $e0 $60
    ld [c], a                                     ; $403c: $e2
    ld h, d                                       ; $403d: $62
    ldh [$60], a                                  ; $403e: $e0 $60
    add sp, $68                                   ; $4040: $e8 $68
    ldh [$60], a                                  ; $4042: $e0 $60
    ld [c], a                                     ; $4044: $e2
    ld h, d                                       ; $4045: $62
    ldh [$60], a                                  ; $4046: $e0 $60
    adc b                                         ; $4048: $88
    adc b                                         ; $4049: $88
    nop                                           ; $404a: $00
    nop                                           ; $404b: $00
    ld [hl+], a                                   ; $404c: $22
    ld [hl+], a                                   ; $404d: $22
    ld [$9c08], sp                                ; $404e: $08 $08 $9c
    sbc h                                         ; $4051: $9c
    ld [$2208], sp                                ; $4052: $08 $08 $22
    ld [hl+], a                                   ; $4055: $22
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    and a                                         ; $4058: $a7
    and [hl]                                      ; $4059: $a6
    rlca                                          ; $405a: $07
    ld b, $27                                     ; $405b: $06 $27
    ld h, $07                                     ; $405d: $26 $07
    ld b, $af                                     ; $405f: $06 $af
    xor [hl]                                      ; $4061: $ae
    daa                                           ; $4062: $27

jr_04d_4063:
    ld h, $27                                     ; $4063: $26 $27
    ld h, $27                                     ; $4065: $26 $27

jr_04d_4067:
    ld h, $f8                                     ; $4067: $26 $f8
    jr jr_04d_4063                                ; $4069: $18 $f8

    jr jr_04d_4067                                ; $406b: $18 $fa

    ld a, [de]                                    ; $406d: $1a

jr_04d_406e:
    ld hl, sp+$18                                 ; $406e: $f8 $18
    ld hl, sp+$18                                 ; $4070: $f8 $18
    ld hl, sp+$18                                 ; $4072: $f8 $18
    ld a, [$f81a]                                 ; $4074: $fa $1a $f8
    jr @-$5f                                      ; $4077: $18 $9f

    sbc b                                         ; $4079: $98
    rra                                           ; $407a: $1f
    jr jr_04d_40dc                                ; $407b: $18 $5f

Jump_04d_407d:
    ld e, b                                       ; $407d: $58
    rra                                           ; $407e: $1f
    jr jr_04d_40e0                                ; $407f: $18 $5f

    ld e, b                                       ; $4081: $58
    ld e, a                                       ; $4082: $5f
    ld e, b                                       ; $4083: $58
    ld a, a                                       ; $4084: $7f
    ld a, b                                       ; $4085: $78
    ld e, a                                       ; $4086: $5f
    ld e, b                                       ; $4087: $58
    db $fc                                        ; $4088: $fc
    inc c                                         ; $4089: $0c
    db $fc                                        ; $408a: $fc
    inc c                                         ; $408b: $0c
    db $fc                                        ; $408c: $fc
    inc c                                         ; $408d: $0c
    db $fc                                        ; $408e: $fc
    inc c                                         ; $408f: $0c
    db $fd                                        ; $4090: $fd
    dec c                                         ; $4091: $0d
    db $fc                                        ; $4092: $fc
    inc c                                         ; $4093: $0c
    db $fc                                        ; $4094: $fc
    inc c                                         ; $4095: $0c
    db $fc                                        ; $4096: $fc
    inc c                                         ; $4097: $0c
    adc b                                         ; $4098: $88
    adc b                                         ; $4099: $88
    nop                                           ; $409a: $00
    nop                                           ; $409b: $00
    ld [hl+], a                                   ; $409c: $22
    ld [hl+], a                                   ; $409d: $22
    add b                                         ; $409e: $80
    add b                                         ; $409f: $80

Jump_04d_40a0:
    ret                                           ; $40a0: $c9


    ret                                           ; $40a1: $c9


    add b                                         ; $40a2: $80
    add b                                         ; $40a3: $80
    ld [hl+], a                                   ; $40a4: $22
    ld [hl+], a                                   ; $40a5: $22
    nop                                           ; $40a6: $00
    nop                                           ; $40a7: $00
    cp a                                          ; $40a8: $bf
    or b                                          ; $40a9: $b0
    ccf                                           ; $40aa: $3f
    jr nc, jr_04d_40ec                            ; $40ab: $30 $3f

    jr nc, jr_04d_406e                            ; $40ad: $30 $bf

    or b                                          ; $40af: $b0
    rst $38                                       ; $40b0: $ff
    ldh a, [$bf]                                  ; $40b1: $f0 $bf
    or b                                          ; $40b3: $b0
    ccf                                           ; $40b4: $3f
    jr nc, @-$3f                                  ; $40b5: $30 $bf

    or b                                          ; $40b7: $b0
    rst $38                                       ; $40b8: $ff
    inc bc                                        ; $40b9: $03
    rst $38                                       ; $40ba: $ff
    inc bc                                        ; $40bb: $03
    rst $38                                       ; $40bc: $ff
    inc bc                                        ; $40bd: $03
    rst $38                                       ; $40be: $ff
    inc bc                                        ; $40bf: $03
    rst $38                                       ; $40c0: $ff
    inc bc                                        ; $40c1: $03
    rst $38                                       ; $40c2: $ff
    inc bc                                        ; $40c3: $03
    rst $38                                       ; $40c4: $ff
    inc bc                                        ; $40c5: $03
    rst $38                                       ; $40c6: $ff
    inc bc                                        ; $40c7: $03
    adc b                                         ; $40c8: $88
    adc b                                         ; $40c9: $88
    nop                                           ; $40ca: $00
    nop                                           ; $40cb: $00
    ld [hl+], a                                   ; $40cc: $22
    ld [hl+], a                                   ; $40cd: $22
    add b                                         ; $40ce: $80
    add b                                         ; $40cf: $80
    ret z                                         ; $40d0: $c8

    ret z                                         ; $40d1: $c8

    add b                                         ; $40d2: $80
    add b                                         ; $40d3: $80
    ld [hl+], a                                   ; $40d4: $22
    ld [hl+], a                                   ; $40d5: $22
    nop                                           ; $40d6: $00
    nop                                           ; $40d7: $00
    rst $38                                       ; $40d8: $ff
    ldh [$7f], a                                  ; $40d9: $e0 $7f
    ld h, b                                       ; $40db: $60

jr_04d_40dc:
    ld a, a                                       ; $40dc: $7f
    ld h, b                                       ; $40dd: $60
    ld a, a                                       ; $40de: $7f
    ld h, b                                       ; $40df: $60

jr_04d_40e0:
    rst $38                                       ; $40e0: $ff
    ldh [$7f], a                                  ; $40e1: $e0 $7f
    ld h, b                                       ; $40e3: $60
    ld a, a                                       ; $40e4: $7f
    ld h, b                                       ; $40e5: $60
    ld a, a                                       ; $40e6: $7f
    ld h, b                                       ; $40e7: $60
    add sp, $68                                   ; $40e8: $e8 $68
    ldh [$60], a                                  ; $40ea: $e0 $60

jr_04d_40ec:
    ld [c], a                                     ; $40ec: $e2
    ld h, d                                       ; $40ed: $62
    ldh [$60], a                                  ; $40ee: $e0 $60
    add sp, $68                                   ; $40f0: $e8 $68
    ldh a, [rSVBK]                                ; $40f2: $f0 $70
    ld [c], a                                     ; $40f4: $e2
    ld h, d                                       ; $40f5: $62
    ldh a, [rSVBK]                                ; $40f6: $f0 $70
    xor a                                         ; $40f8: $af
    xor [hl]                                      ; $40f9: $ae
    daa                                           ; $40fa: $27
    ld h, $27                                     ; $40fb: $26 $27
    ld h, $27                                     ; $40fd: $26 $27
    ld h, $af                                     ; $40ff: $26 $af
    xor [hl]                                      ; $4101: $ae
    ld h, a                                       ; $4102: $67
    ld h, [hl]                                    ; $4103: $66
    cpl                                           ; $4104: $2f
    ld l, $6f                                     ; $4105: $2e $6f
    ld l, [hl]                                    ; $4107: $6e
    ld hl, sp+$18                                 ; $4108: $f8 $18
    db $fc                                        ; $410a: $fc
    inc e                                         ; $410b: $1c
    ld a, [$f81a]                                 ; $410c: $fa $1a $f8
    jr @-$02                                      ; $410f: $18 $fc

    inc e                                         ; $4111: $1c
    ld hl, sp+$18                                 ; $4112: $f8 $18
    db $fc                                        ; $4114: $fc
    inc e                                         ; $4115: $1c
    ld a, [$df1a]                                 ; $4116: $fa $1a $df
    ret c                                         ; $4119: $d8

    ld e, a                                       ; $411a: $5f
    ld e, b                                       ; $411b: $58
    ld a, a                                       ; $411c: $7f
    ld a, b                                       ; $411d: $78
    rst $18                                       ; $411e: $df
    ret c                                         ; $411f: $d8

    ld e, a                                       ; $4120: $5f
    ld e, b                                       ; $4121: $58
    rst $18                                       ; $4122: $df
    ret c                                         ; $4123: $d8

    rst $38                                       ; $4124: $ff
    ld hl, sp-$21                                 ; $4125: $f8 $df
    ret c                                         ; $4127: $d8

    db $fc                                        ; $4128: $fc
    inc c                                         ; $4129: $0c
    cp $0e                                        ; $412a: $fe $0e
    db $fc                                        ; $412c: $fc
    inc c                                         ; $412d: $0c
    cp $06                                        ; $412e: $fe $06
    rst $38                                       ; $4130: $ff
    rlca                                          ; $4131: $07
    cp $06                                        ; $4132: $fe $06
    cp $06                                        ; $4134: $fe $06
    cp $06                                        ; $4136: $fe $06
    adc b                                         ; $4138: $88
    adc b                                         ; $4139: $88
    nop                                           ; $413a: $00
    nop                                           ; $413b: $00
    ld [hl+], a                                   ; $413c: $22
    ld [hl+], a                                   ; $413d: $22
    add c                                         ; $413e: $81
    add c                                         ; $413f: $81
    ret                                           ; $4140: $c9


    ret                                           ; $4141: $c9


    add c                                         ; $4142: $81
    add c                                         ; $4143: $81
    inc hl                                        ; $4144: $23
    inc hl                                        ; $4145: $23
    ld bc, $bf01                                  ; $4146: $01 $01 $bf
    or b                                          ; $4149: $b0
    rst $38                                       ; $414a: $ff
    ldh a, [$bf]                                  ; $414b: $f0 $bf
    or b                                          ; $414d: $b0
    rst $38                                       ; $414e: $ff
    ldh [$7f], a                                  ; $414f: $e0 $7f
    ld h, b                                       ; $4151: $60
    ld a, a                                       ; $4152: $7f
    ld h, b                                       ; $4153: $60
    ld a, a                                       ; $4154: $7f
    ld h, b                                       ; $4155: $60
    ld a, a                                       ; $4156: $7f
    ld h, b                                       ; $4157: $60
    rst $38                                       ; $4158: $ff
    inc bc                                        ; $4159: $03
    rst $38                                       ; $415a: $ff
    inc bc                                        ; $415b: $03
    rst $38                                       ; $415c: $ff
    ld bc, $01ff                                  ; $415d: $01 $ff $01
    rst $38                                       ; $4160: $ff
    ld bc, $01ff                                  ; $4161: $01 $ff $01
    rst $38                                       ; $4164: $ff
    ld bc, $01ff                                  ; $4165: $01 $ff $01
    adc b                                         ; $4168: $88
    adc b                                         ; $4169: $88
    nop                                           ; $416a: $00
    nop                                           ; $416b: $00
    and d                                         ; $416c: $a2
    and d                                         ; $416d: $a2
    add b                                         ; $416e: $80
    add b                                         ; $416f: $80
    jp z, $82ca                                   ; $4170: $ca $ca $82

    add d                                         ; $4173: $82
    and d                                         ; $4174: $a2
    and d                                         ; $4175: $a2
    add d                                         ; $4176: $82
    add d                                         ; $4177: $82
    rst $38                                       ; $4178: $ff
    ldh [$7f], a                                  ; $4179: $e0 $7f
    ld h, b                                       ; $417b: $60
    rst $38                                       ; $417c: $ff
    ret nz                                        ; $417d: $c0

    rst $38                                       ; $417e: $ff
    ret nz                                        ; $417f: $c0

    rst $38                                       ; $4180: $ff
    ret nz                                        ; $4181: $c0

    rst $38                                       ; $4182: $ff
    ret nz                                        ; $4183: $c0

    rst $38                                       ; $4184: $ff
    ret nz                                        ; $4185: $c0

    rst $38                                       ; $4186: $ff
    ret nz                                        ; $4187: $c0

    ldh a, [rSVBK]                                ; $4188: $f0 $70
    ld hl, sp+$38                                 ; $418a: $f8 $38
    ld a, [c]                                     ; $418c: $f2
    ld [hl-], a                                   ; $418d: $32
    ldh a, [$30]                                  ; $418e: $f0 $30
    ld hl, sp+$38                                 ; $4190: $f8 $38
    ldh a, [$30]                                  ; $4192: $f0 $30
    ld a, [c]                                     ; $4194: $f2
    ld [hl-], a                                   ; $4195: $32
    ldh a, [$30]                                  ; $4196: $f0 $30
    ld l, a                                       ; $4198: $6f
    ld l, [hl]                                    ; $4199: $6e
    rst $28                                       ; $419a: $ef
    db $ec                                        ; $419b: $ec
    ld l, a                                       ; $419c: $6f
    ld l, h                                       ; $419d: $6c
    ld l, a                                       ; $419e: $6f
    ld l, h                                       ; $419f: $6c
    ld l, a                                       ; $41a0: $6f
    ld l, h                                       ; $41a1: $6c
    rst $28                                       ; $41a2: $ef
    db $ec                                        ; $41a3: $ec
    ld l, a                                       ; $41a4: $6f
    ld l, h                                       ; $41a5: $6c
    rst $28                                       ; $41a6: $ef
    db $ec                                        ; $41a7: $ec
    db $fc                                        ; $41a8: $fc
    inc c                                         ; $41a9: $0c
    db $fc                                        ; $41aa: $fc
    inc c                                         ; $41ab: $0c
    cp $0e                                        ; $41ac: $fe $0e
    db $fc                                        ; $41ae: $fc
    inc c                                         ; $41af: $0c
    db $fc                                        ; $41b0: $fc
    inc c                                         ; $41b1: $0c
    db $fc                                        ; $41b2: $fc
    inc c                                         ; $41b3: $0c
    cp $0e                                        ; $41b4: $fe $0e
    db $fc                                        ; $41b6: $fc
    inc c                                         ; $41b7: $0c
    adc b                                         ; $41b8: $88
    adc b                                         ; $41b9: $88
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    ld [hl+], a                                   ; $41bc: $22
    ld [hl+], a                                   ; $41bd: $22
    add hl, bc                                    ; $41be: $09
    add hl, bc                                    ; $41bf: $09
    sbc h                                         ; $41c0: $9c
    sbc h                                         ; $41c1: $9c
    add hl, bc                                    ; $41c2: $09
    add hl, bc                                    ; $41c3: $09
    ld [hl+], a                                   ; $41c4: $22
    ld [hl+], a                                   ; $41c5: $22
    ld bc, $bf01                                  ; $41c6: $01 $01 $bf
    or b                                          ; $41c9: $b0
    cp a                                          ; $41ca: $bf
    or b                                          ; $41cb: $b0
    rst $38                                       ; $41cc: $ff
    ldh a, [$bf]                                  ; $41cd: $f0 $bf
    or b                                          ; $41cf: $b0
    cp a                                          ; $41d0: $bf

jr_04d_41d1:
    or b                                          ; $41d1: $b0
    cp a                                          ; $41d2: $bf
    or b                                          ; $41d3: $b0
    rst $38                                       ; $41d4: $ff
    ldh a, [$bf]                                  ; $41d5: $f0 $bf
    or b                                          ; $41d7: $b0
    cp $06                                        ; $41d8: $fe $06
    cp $06                                        ; $41da: $fe $06
    cp $06                                        ; $41dc: $fe $06
    cp $06                                        ; $41de: $fe $06
    rst $38                                       ; $41e0: $ff
    rlca                                          ; $41e1: $07
    cp $06                                        ; $41e2: $fe $06
    rst $38                                       ; $41e4: $ff
    rlca                                          ; $41e5: $07
    cp $06                                        ; $41e6: $fe $06
    adc c                                         ; $41e8: $89
    adc c                                         ; $41e9: $89
    ld bc, $2301                                  ; $41ea: $01 $01 $23
    inc hl                                        ; $41ed: $23
    add c                                         ; $41ee: $81
    add c                                         ; $41ef: $81
    ret                                           ; $41f0: $c9


    ret                                           ; $41f1: $c9


    add c                                         ; $41f2: $81
    add c                                         ; $41f3: $81
    inc hl                                        ; $41f4: $23
    inc hl                                        ; $41f5: $23
    ld bc, $7f01                                  ; $41f6: $01 $01 $7f
    ld h, b                                       ; $41f9: $60
    ld a, a                                       ; $41fa: $7f
    ld h, b                                       ; $41fb: $60
    ld a, a                                       ; $41fc: $7f
    ld h, b                                       ; $41fd: $60
    ld a, a                                       ; $41fe: $7f
    ld h, b                                       ; $41ff: $60
    ld a, a                                       ; $4200: $7f
    ld h, b                                       ; $4201: $60
    ld a, a                                       ; $4202: $7f
    ld h, b                                       ; $4203: $60
    rst $38                                       ; $4204: $ff
    ldh [$7f], a                                  ; $4205: $e0 $7f
    ld h, b                                       ; $4207: $60
    rst $38                                       ; $4208: $ff
    ld bc, $01ff                                  ; $4209: $01 $ff $01
    rst $38                                       ; $420c: $ff
    ld bc, $01ff                                  ; $420d: $01 $ff $01
    rst $38                                       ; $4210: $ff
    ld bc, $01ff                                  ; $4211: $01 $ff $01
    rst $38                                       ; $4214: $ff
    nop                                           ; $4215: $00
    rst $38                                       ; $4216: $ff
    nop                                           ; $4217: $00
    adc d                                         ; $4218: $8a
    adc d                                         ; $4219: $8a
    add d                                         ; $421a: $82
    add d                                         ; $421b: $82
    and d                                         ; $421c: $a2
    and d                                         ; $421d: $a2
    add d                                         ; $421e: $82
    add d                                         ; $421f: $82
    set 1, e                                      ; $4220: $cb $cb
    add [hl]                                      ; $4222: $86
    add [hl]                                      ; $4223: $86
    db $e3                                        ; $4224: $e3
    db $e3                                        ; $4225: $e3
    push bc                                       ; $4226: $c5
    push bc                                       ; $4227: $c5
    rst $38                                       ; $4228: $ff
    ret nz                                        ; $4229: $c0

    rst $38                                       ; $422a: $ff
    ret nz                                        ; $422b: $c0

    rst $38                                       ; $422c: $ff
    ret nz                                        ; $422d: $c0

    rst $38                                       ; $422e: $ff
    ret nz                                        ; $422f: $c0

    rst $38                                       ; $4230: $ff
    ret nz                                        ; $4231: $c0

    rst $38                                       ; $4232: $ff
    ret nz                                        ; $4233: $c0

    rst $38                                       ; $4234: $ff
    add b                                         ; $4235: $80
    rst $38                                       ; $4236: $ff
    add b                                         ; $4237: $80
    ld hl, sp+$38                                 ; $4238: $f8 $38
    ldh a, [$30]                                  ; $423a: $f0 $30
    ld a, [c]                                     ; $423c: $f2
    ld [hl-], a                                   ; $423d: $32
    ldh a, [$30]                                  ; $423e: $f0 $30
    db $f4                                        ; $4240: $f4
    inc [hl]                                      ; $4241: $34
    ldh a, [$30]                                  ; $4242: $f0 $30
    ld a, [$f03a]                                 ; $4244: $fa $3a $f0
    jr nc, jr_04d_41d1                            ; $4247: $30 $88

    adc b                                         ; $4249: $88
    nop                                           ; $424a: $00
    nop                                           ; $424b: $00
    ld [hl+], a                                   ; $424c: $22
    ld [hl+], a                                   ; $424d: $22
    ld [$9d08], sp                                ; $424e: $08 $08 $9d
    sbc l                                         ; $4251: $9d
    ld [$2008], sp                                ; $4252: $08 $08 $20
    jr nz, @+$03                                  ; $4255: $20 $01

    ld bc, $ecef                                  ; $4257: $01 $ef $ec
    rst $08                                       ; $425a: $cf
    call z, $ecef                                 ; $425b: $cc $ef $ec
    rst $08                                       ; $425e: $cf
    call z, $cccf                                 ; $425f: $cc $cf $cc
    rst $28                                       ; $4262: $ef
    db $ec                                        ; $4263: $ec
    rst $08                                       ; $4264: $cf
    call z, $cccf                                 ; $4265: $cc $cf $cc
    adc c                                         ; $4268: $89
    adc c                                         ; $4269: $89
    ld bc, $2301                                  ; $426a: $01 $01 $23
    inc hl                                        ; $426d: $23
    add hl, bc                                    ; $426e: $09
    add hl, bc                                    ; $426f: $09
    sbc l                                         ; $4270: $9d
    sbc l                                         ; $4271: $9d
    add hl, bc                                    ; $4272: $09
    add hl, bc                                    ; $4273: $09
    inc hl                                        ; $4274: $23
    inc hl                                        ; $4275: $23
    ld bc, $bf01                                  ; $4276: $01 $01 $bf
    or b                                          ; $4279: $b0
    cp a                                          ; $427a: $bf
    or b                                          ; $427b: $b0
    cp a                                          ; $427c: $bf
    or b                                          ; $427d: $b0
    cp a                                          ; $427e: $bf
    or b                                          ; $427f: $b0
    rst $38                                       ; $4280: $ff
    ldh a, [$bf]                                  ; $4281: $f0 $bf
    or b                                          ; $4283: $b0
    cp a                                          ; $4284: $bf
    or b                                          ; $4285: $b0
    cp a                                          ; $4286: $bf
    or b                                          ; $4287: $b0
    dec bc                                        ; $4288: $0b
    dec bc                                        ; $4289: $0b
    ld [bc], a                                    ; $428a: $02
    ld [bc], a                                    ; $428b: $02
    ld [hl+], a                                   ; $428c: $22
    ld [hl+], a                                   ; $428d: $22
    inc bc                                        ; $428e: $03
    inc bc                                        ; $428f: $03
    ld c, d                                       ; $4290: $4a
    ld c, d                                       ; $4291: $4a
    ld [bc], a                                    ; $4292: $02
    ld [bc], a                                    ; $4293: $02
    inc hl                                        ; $4294: $23
    inc hl                                        ; $4295: $23
    ld [bc], a                                    ; $4296: $02
    ld [bc], a                                    ; $4297: $02
    rst $38                                       ; $4298: $ff
    ret nz                                        ; $4299: $c0

    rst $38                                       ; $429a: $ff
    ret nz                                        ; $429b: $c0

    rst $38                                       ; $429c: $ff
    ret nz                                        ; $429d: $c0

    rst $38                                       ; $429e: $ff
    ret nz                                        ; $429f: $c0

    rst $38                                       ; $42a0: $ff
    ret nz                                        ; $42a1: $c0

    rst $38                                       ; $42a2: $ff
    ret nz                                        ; $42a3: $c0

    rst $38                                       ; $42a4: $ff
    ret nz                                        ; $42a5: $c0

    rst $38                                       ; $42a6: $ff
    ret nz                                        ; $42a7: $c0

    call $c5cd                                    ; $42a8: $cd $cd $c5
    push bc                                       ; $42ab: $c5
    push hl                                       ; $42ac: $e5
    push hl                                       ; $42ad: $e5
    db $dd                                        ; $42ae: $dd
    db $dd                                        ; $42af: $dd
    call $e3cd                                    ; $42b0: $cd $cd $e3
    db $e3                                        ; $42b3: $e3
    rst $38                                       ; $42b4: $ff
    ld a, a                                       ; $42b5: $7f
    rst $38                                       ; $42b6: $ff
    ld a, $ff                                     ; $42b7: $3e $ff
    add b                                         ; $42b9: $80
    rst $38                                       ; $42ba: $ff
    add b                                         ; $42bb: $80
    rst $38                                       ; $42bc: $ff
    add b                                         ; $42bd: $80
    rst $38                                       ; $42be: $ff
    add b                                         ; $42bf: $80
    rst $38                                       ; $42c0: $ff
    add b                                         ; $42c1: $80
    rst $38                                       ; $42c2: $ff

Jump_04d_42c3:
    add b                                         ; $42c3: $80
    rst $38                                       ; $42c4: $ff
    nop                                           ; $42c5: $00
    rst $38                                       ; $42c6: $ff
    nop                                           ; $42c7: $00
    ld hl, sp+$38                                 ; $42c8: $f8 $38
    db $f4                                        ; $42ca: $f4

jr_04d_42cb:
    inc [hl]                                      ; $42cb: $34
    ld a, [$f83a]                                 ; $42cc: $fa $3a $f8

jr_04d_42cf:
    jr @-$06                                      ; $42cf: $18 $f8

    jr jr_04d_42cb                                ; $42d1: $18 $f8

    jr jr_04d_42cf                                ; $42d3: $18 $fa

    ld a, [de]                                    ; $42d5: $1a
    ld hl, sp+$18                                 ; $42d6: $f8 $18
    adc b                                         ; $42d8: $88
    adc b                                         ; $42d9: $88
    ld bc, $2301                                  ; $42da: $01 $01 $23
    inc hl                                        ; $42dd: $23
    add hl, bc                                    ; $42de: $09

Jump_04d_42df:
    add hl, bc                                    ; $42df: $09
    sbc l                                         ; $42e0: $9d
    sbc l                                         ; $42e1: $9d
    add hl, bc                                    ; $42e2: $09
    add hl, bc                                    ; $42e3: $09
    inc hl                                        ; $42e4: $23
    inc hl                                        ; $42e5: $23
    ld bc, $df01                                  ; $42e6: $01 $01 $df
    call c, $cccf                                 ; $42e9: $dc $cf $cc
    rst $18                                       ; $42ec: $df
    call c, $d8df                                 ; $42ed: $dc $df $d8
    sbc a                                         ; $42f0: $9f
    sbc b                                         ; $42f1: $98
    rst $18                                       ; $42f2: $df
    ret c                                         ; $42f3: $d8

    cp a                                          ; $42f4: $bf
    cp b                                          ; $42f5: $b8
    sbc a                                         ; $42f6: $9f
    sbc b                                         ; $42f7: $98
    cp $06                                        ; $42f8: $fe $06
    cp $06                                        ; $42fa: $fe $06
    cp $06                                        ; $42fc: $fe $06
    cp $06                                        ; $42fe: $fe $06
    cp $06                                        ; $4300: $fe $06
    cp $06                                        ; $4302: $fe $06
    cp $06                                        ; $4304: $fe $06
    cp $06                                        ; $4306: $fe $06
    adc e                                         ; $4308: $8b
    adc e                                         ; $4309: $8b
    inc bc                                        ; $430a: $03
    inc bc                                        ; $430b: $03
    inc hl                                        ; $430c: $23
    inc hl                                        ; $430d: $23
    dec bc                                        ; $430e: $0b
    dec bc                                        ; $430f: $0b
    sbc a                                         ; $4310: $9f
    sbc a                                         ; $4311: $9f
    dec bc                                        ; $4312: $0b
    dec bc                                        ; $4313: $0b
    inc hl                                        ; $4314: $23
    inc hl                                        ; $4315: $23
    inc bc                                        ; $4316: $03
    inc bc                                        ; $4317: $03
    ld a, a                                       ; $4318: $7f
    ld h, b                                       ; $4319: $60
    ld a, a                                       ; $431a: $7f
    ld h, b                                       ; $431b: $60
    ld a, a                                       ; $431c: $7f
    ld h, b                                       ; $431d: $60
    ld a, a                                       ; $431e: $7f
    ld h, b                                       ; $431f: $60
    rst $38                                       ; $4320: $ff
    ldh [$7f], a                                  ; $4321: $e0 $7f
    ld h, b                                       ; $4323: $60
    ld a, a                                       ; $4324: $7f
    ld h, b                                       ; $4325: $60
    ld a, a                                       ; $4326: $7f
    ld h, b                                       ; $4327: $60
    rst $38                                       ; $4328: $ff
    inc bc                                        ; $4329: $03
    rst $38                                       ; $432a: $ff
    inc bc                                        ; $432b: $03
    rst $38                                       ; $432c: $ff
    inc bc                                        ; $432d: $03
    rst $38                                       ; $432e: $ff
    inc bc                                        ; $432f: $03
    rst $38                                       ; $4330: $ff
    inc bc                                        ; $4331: $03
    rst $38                                       ; $4332: $ff
    inc bc                                        ; $4333: $03
    rst $38                                       ; $4334: $ff
    ld bc, $00ff                                  ; $4335: $01 $ff $00
    ld a, [bc]                                    ; $4338: $0a
    ld a, [bc]                                    ; $4339: $0a
    ld b, $06                                     ; $433a: $06 $06
    daa                                           ; $433c: $27
    daa                                           ; $433d: $27
    inc e                                         ; $433e: $1c
    inc e                                         ; $433f: $1c
    ld c, b                                       ; $4340: $48
    ld c, b                                       ; $4341: $48
    add c                                         ; $4342: $81
    add c                                         ; $4343: $81
    rst $38                                       ; $4344: $ff
    rst $38                                       ; $4345: $ff
    rst $38                                       ; $4346: $ff
    rst $38                                       ; $4347: $ff
    rst $38                                       ; $4348: $ff
    ret nz                                        ; $4349: $c0

    rst $38                                       ; $434a: $ff
    ret nz                                        ; $434b: $c0

    rst $38                                       ; $434c: $ff
    ret nz                                        ; $434d: $c0

    rst $38                                       ; $434e: $ff
    ret nz                                        ; $434f: $c0

    rst $38                                       ; $4350: $ff
    ret nz                                        ; $4351: $c0

    rst $38                                       ; $4352: $ff
    ret nz                                        ; $4353: $c0

    rst $38                                       ; $4354: $ff
    add b                                         ; $4355: $80
    rst $38                                       ; $4356: $ff
    nop                                           ; $4357: $00
    adc c                                         ; $4358: $89
    adc c                                         ; $4359: $89
    ld bc, $2101                                  ; $435a: $01 $01 $21
    ld hl, $0b0b                                  ; $435d: $21 $0b $0b
    sbc l                                         ; $4360: $9d
    sbc l                                         ; $4361: $9d
    dec bc                                        ; $4362: $0b
    dec bc                                        ; $4363: $0b
    inc hl                                        ; $4364: $23
    inc hl                                        ; $4365: $23
    rlca                                          ; $4366: $07
    rlca                                          ; $4367: $07
    sbc a                                         ; $4368: $9f
    sbc b                                         ; $4369: $98
    sbc a                                         ; $436a: $9f
    sbc b                                         ; $436b: $98
    cp a                                          ; $436c: $bf
    cp b                                          ; $436d: $b8
    sbc a                                         ; $436e: $9f
    sbc b                                         ; $436f: $98
    sbc a                                         ; $4370: $9f
    sbc b                                         ; $4371: $98
    sbc a                                         ; $4372: $9f
    sbc b                                         ; $4373: $98
    cp a                                          ; $4374: $bf
    cp b                                          ; $4375: $b8
    sbc a                                         ; $4376: $9f
    sbc b                                         ; $4377: $98
    adc c                                         ; $4378: $89
    adc c                                         ; $4379: $89
    ld bc, $2101                                  ; $437a: $01 $01 $21
    ld hl, $0b0b                                  ; $437d: $21 $0b $0b
    sbc l                                         ; $4380: $9d
    sbc l                                         ; $4381: $9d
    dec bc                                        ; $4382: $0b
    dec bc                                        ; $4383: $0b
    inc hl                                        ; $4384: $23
    inc hl                                        ; $4385: $23
    inc bc                                        ; $4386: $03
    inc bc                                        ; $4387: $03
    cp $06                                        ; $4388: $fe $06
    cp $06                                        ; $438a: $fe $06
    cp $06                                        ; $438c: $fe $06
    cp $06                                        ; $438e: $fe $06
    cp $06                                        ; $4390: $fe $06

jr_04d_4392:
    rst $38                                       ; $4392: $ff
    rlca                                          ; $4393: $07
    rst $38                                       ; $4394: $ff
    inc bc                                        ; $4395: $03
    rst $38                                       ; $4396: $ff
    nop                                           ; $4397: $00
    adc e                                         ; $4398: $8b
    adc e                                         ; $4399: $8b
    rlca                                          ; $439a: $07
    rlca                                          ; $439b: $07
    daa                                           ; $439c: $27
    daa                                           ; $439d: $27
    ld c, $0e                                     ; $439e: $0e $0e
    sbc h                                         ; $43a0: $9c
    sbc h                                         ; $43a1: $9c
    nop                                           ; $43a2: $00
    nop                                           ; $43a3: $00
    rst $38                                       ; $43a4: $ff
    rst $38                                       ; $43a5: $ff
    rst $38                                       ; $43a6: $ff
    rst $38                                       ; $43a7: $ff
    rst $38                                       ; $43a8: $ff
    ldh [$7f], a                                  ; $43a9: $e0 $7f
    ld h, b                                       ; $43ab: $60
    ld a, a                                       ; $43ac: $7f
    ld h, b                                       ; $43ad: $60
    ld a, a                                       ; $43ae: $7f
    ld h, b                                       ; $43af: $60
    ld a, a                                       ; $43b0: $7f
    ld h, b                                       ; $43b1: $60
    rst $38                                       ; $43b2: $ff
    ldh [rIE], a                                  ; $43b3: $e0 $ff
    ret nz                                        ; $43b5: $c0

    rst $38                                       ; $43b6: $ff
    nop                                           ; $43b7: $00
    adc b                                         ; $43b8: $88
    adc b                                         ; $43b9: $88
    add b                                         ; $43ba: $80
    add b                                         ; $43bb: $80
    and d                                         ; $43bc: $a2
    and d                                         ; $43bd: $a2
    adc b                                         ; $43be: $88
    adc b                                         ; $43bf: $88
    sbc h                                         ; $43c0: $9c
    sbc h                                         ; $43c1: $9c

Jump_04d_43c2:
    adc b                                         ; $43c2: $88
    adc b                                         ; $43c3: $88
    and d                                         ; $43c4: $a2
    and d                                         ; $43c5: $a2
    add h                                         ; $43c6: $84
    add h                                         ; $43c7: $84
    rst $38                                       ; $43c8: $ff
    add b                                         ; $43c9: $80
    rst $38                                       ; $43ca: $ff
    add b                                         ; $43cb: $80
    rst $38                                       ; $43cc: $ff
    add b                                         ; $43cd: $80
    rst $38                                       ; $43ce: $ff
    add b                                         ; $43cf: $80
    rst $38                                       ; $43d0: $ff
    add b                                         ; $43d1: $80
    rst $38                                       ; $43d2: $ff
    add b                                         ; $43d3: $80
    rst $38                                       ; $43d4: $ff
    add b                                         ; $43d5: $80
    rst $38                                       ; $43d6: $ff
    add b                                         ; $43d7: $80
    adc e                                         ; $43d8: $8b
    adc e                                         ; $43d9: $8b
    inc bc                                        ; $43da: $03
    inc bc                                        ; $43db: $03
    inc hl                                        ; $43dc: $23
    inc hl                                        ; $43dd: $23
    dec bc                                        ; $43de: $0b
    dec bc                                        ; $43df: $0b
    sbc a                                         ; $43e0: $9f
    sbc a                                         ; $43e1: $9f
    dec bc                                        ; $43e2: $0b
    dec bc                                        ; $43e3: $0b
    daa                                           ; $43e4: $27
    daa                                           ; $43e5: $27
    rlca                                          ; $43e6: $07
    rlca                                          ; $43e7: $07
    sbc a                                         ; $43e8: $9f
    sbc b                                         ; $43e9: $98
    sbc a                                         ; $43ea: $9f
    sbc b                                         ; $43eb: $98
    cp a                                          ; $43ec: $bf
    cp b                                          ; $43ed: $b8
    sbc a                                         ; $43ee: $9f
    sbc b                                         ; $43ef: $98
    rra                                           ; $43f0: $1f

jr_04d_43f1:
    jr jr_04d_4392                                ; $43f1: $18 $9f

    sbc b                                         ; $43f3: $98
    ccf                                           ; $43f4: $3f

Jump_04d_43f5:
    jr c, jr_04d_4416                             ; $43f5: $38 $1f

jr_04d_43f7:
    jr jr_04d_43f1                                ; $43f7: $18 $f8

    jr jr_04d_43f7                                ; $43f9: $18 $fc

    inc e                                         ; $43fb: $1c
    ld a, [$fc1a]                                 ; $43fc: $fa $1a $fc

Jump_04d_43ff:
    inc e                                         ; $43ff: $1c
    cp $1e                                        ; $4400: $fe $1e
    rst $38                                       ; $4402: $ff
    rrca                                          ; $4403: $0f
    rst $38                                       ; $4404: $ff
    rlca                                          ; $4405: $07
    rst $38                                       ; $4406: $ff
    ld bc, $8f8f                                  ; $4407: $01 $8f $8f
    rlca                                          ; $440a: $07
    rlca                                          ; $440b: $07
    cpl                                           ; $440c: $2f
    cpl                                           ; $440d: $2f
    ld e, $1e                                     ; $440e: $1e $1e
    add b                                         ; $4410: $80
    add b                                         ; $4411: $80
    adc c                                         ; $4412: $89
    adc c                                         ; $4413: $89
    rst $38                                       ; $4414: $ff
    rst $38                                       ; $4415: $ff

jr_04d_4416:
    rst $38                                       ; $4416: $ff
    rst $38                                       ; $4417: $ff
    rra                                           ; $4418: $1f
    jr @+$41                                      ; $4419: $18 $3f

    jr c, jr_04d_443c                             ; $441b: $38 $1f

    jr @+$41                                      ; $441d: $18 $3f

    jr c, jr_04d_44a0                             ; $441f: $38 $7f

    ld a, b                                       ; $4421: $78
    rst $38                                       ; $4422: $ff
    ldh a, [rIE]                                  ; $4423: $f0 $ff
    ldh [rIE], a                                  ; $4425: $e0 $ff
    add b                                         ; $4427: $80
    sub e                                         ; $4428: $93
    sub d                                         ; $4429: $92
    adc e                                         ; $442a: $8b
    adc d                                         ; $442b: $8a
    rst $08                                       ; $442c: $cf
    adc $9b                                       ; $442d: $ce $9b
    sbc d                                         ; $442f: $9a
    cp e                                          ; $4430: $bb
    cp d                                          ; $4431: $ba
    rst $18                                       ; $4432: $df
    sbc $8b                                       ; $4433: $de $8b
    adc d                                         ; $4435: $8a
    rst $08                                       ; $4436: $cf
    ld c, h                                       ; $4437: $4c
    add h                                         ; $4438: $84
    add h                                         ; $4439: $84
    ret                                           ; $443a: $c9


    ret                                           ; $443b: $c9


jr_04d_443c:
    add h                                         ; $443c: $84
    add h                                         ; $443d: $84
    call $dd4d                                    ; $443e: $cd $4d $dd
    ld e, l                                       ; $4441: $5d
    call $e54d                                    ; $4442: $cd $4d $e5
    ld h, l                                       ; $4445: $65

jr_04d_4446:
    push bc                                       ; $4446: $c5
    ld b, l                                       ; $4447: $45
    rst $38                                       ; $4448: $ff
    add b                                         ; $4449: $80

jr_04d_444a:
    rst $38                                       ; $444a: $ff
    add b                                         ; $444b: $80
    rst $38                                       ; $444c: $ff
    add b                                         ; $444d: $80

jr_04d_444e:
    rst $38                                       ; $444e: $ff
    nop                                           ; $444f: $00

jr_04d_4450:
    rst $38                                       ; $4450: $ff
    nop                                           ; $4451: $00
    rst $38                                       ; $4452: $ff
    nop                                           ; $4453: $00

jr_04d_4454:
    rst $38                                       ; $4454: $ff
    nop                                           ; $4455: $00
    rst $38                                       ; $4456: $ff
    nop                                           ; $4457: $00
    rst $28                                       ; $4458: $ef
    jr z, jr_04d_444a                             ; $4459: $28 $ef

    jr z, @+$01                                   ; $445b: $28 $ff

    jr c, jr_04d_444e                             ; $445d: $38 $ef

    jr z, jr_04d_4450                             ; $445f: $28 $ef

    jr z, @+$01                                   ; $4461: $28 $ff

    jr c, jr_04d_4454                             ; $4463: $38 $ef

    jr z, @+$01                                   ; $4465: $28 $ff

    db $10                                        ; $4467: $10
    rst $18                                       ; $4468: $df
    ld e, h                                       ; $4469: $5c
    rst $08                                       ; $446a: $cf
    ld c, h                                       ; $446b: $4c
    rst $08                                       ; $446c: $cf
    ld c, h                                       ; $446d: $4c
    rst $18                                       ; $446e: $df
    ld e, h                                       ; $446f: $5c
    rst $38                                       ; $4470: $ff
    ld a, h                                       ; $4471: $7c
    rst $18                                       ; $4472: $df
    ld e, h                                       ; $4473: $5c
    rst $08                                       ; $4474: $cf
    ld c, h                                       ; $4475: $4c
    rst $38                                       ; $4476: $ff
    jr c, jr_04d_4446                             ; $4477: $38 $cd

    ld c, l                                       ; $4479: $4d
    push bc                                       ; $447a: $c5
    ld b, l                                       ; $447b: $45
    push hl                                       ; $447c: $e5
    ld h, l                                       ; $447d: $65
    call $dd4d                                    ; $447e: $cd $4d $dd
    ld e, l                                       ; $4481: $5d
    ret                                           ; $4482: $c9


    ld c, c                                       ; $4483: $49
    db $e3                                        ; $4484: $e3
    ld h, e                                       ; $4485: $63
    rst $38                                       ; $4486: $ff
    ld a, $43                                     ; $4487: $3e $43
    ld b, b                                       ; $4489: $40
    ld b, h                                       ; $448a: $44
    nop                                           ; $448b: $00
    add hl, sp                                    ; $448c: $39
    ld a, [hl-]                                   ; $448d: $3a
    nop                                           ; $448e: $00
    ld b, c                                       ; $448f: $41
    ld b, d                                       ; $4490: $42
    nop                                           ; $4491: $00
    ld b, l                                       ; $4492: $45
    nop                                           ; $4493: $00
    add hl, bc                                    ; $4494: $09
    ld a, [bc]                                    ; $4495: $0a
    dec bc                                        ; $4496: $0b
    inc de                                        ; $4497: $13
    inc d                                         ; $4498: $14
    dec d                                         ; $4499: $15
    ld e, $1f                                     ; $449a: $1e $1f
    jr nz, jr_04d_449e                            ; $449c: $20 $00

jr_04d_449e:
    jr z, jr_04d_44c9                             ; $449e: $28 $29

jr_04d_44a0:
    ld b, $07                                     ; $44a0: $06 $07
    ld [$1110], sp                                ; $44a2: $08 $10 $11
    ld [de], a                                    ; $44a5: $12
    dec de                                        ; $44a6: $1b
    inc e                                         ; $44a7: $1c
    dec e                                         ; $44a8: $1d
    add hl, bc                                    ; $44a9: $09
    ld h, $27                                     ; $44aa: $26 $27
    jr nc, jr_04d_44df                            ; $44ac: $30 $31

    ld [hl-], a                                   ; $44ae: $32
    inc b                                         ; $44af: $04
    ld [bc], a                                    ; $44b0: $02
    dec b                                         ; $44b1: $05
    ld c, $02                                     ; $44b2: $0e $02
    rrca                                          ; $44b4: $0f
    jr jr_04d_44d0                                ; $44b5: $18 $19

    ld a, [de]                                    ; $44b7: $1a
    jr jr_04d_44de                                ; $44b8: $18 $24

    dec h                                         ; $44ba: $25
    dec l                                         ; $44bb: $2d
    ld l, $2f                                     ; $44bc: $2e $2f
    ld [hl], $37                                  ; $44be: $36 $37
    jr c, jr_04d_44c3                             ; $44c0: $38 $01

    ld [bc], a                                    ; $44c2: $02

jr_04d_44c3:
    inc bc                                        ; $44c3: $03
    inc c                                         ; $44c4: $0c
    ld [bc], a                                    ; $44c5: $02
    dec c                                         ; $44c6: $0d
    ld d, $02                                     ; $44c7: $16 $02

jr_04d_44c9:
    rla                                           ; $44c9: $17
    ld hl, $2322                                  ; $44ca: $21 $22 $23
    ld a, [hl+]                                   ; $44cd: $2a
    dec hl                                        ; $44ce: $2b
    inc l                                         ; $44cf: $2c

jr_04d_44d0:
    inc b                                         ; $44d0: $04
    dec [hl]                                      ; $44d1: $35
    inc [hl]                                      ; $44d2: $34
    dec a                                         ; $44d3: $3d
    ld a, $3f                                     ; $44d4: $3e $3f
    ld bc, $0302                                  ; $44d6: $01 $02 $03
    inc c                                         ; $44d9: $0c
    ld [bc], a                                    ; $44da: $02
    dec c                                         ; $44db: $0d
    ld d, $02                                     ; $44dc: $16 $02

jr_04d_44de:
    rla                                           ; $44de: $17

jr_04d_44df:
    ld hl, $2322                                  ; $44df: $21 $22 $23
    ld a, [hl+]                                   ; $44e2: $2a
    dec hl                                        ; $44e3: $2b
    inc l                                         ; $44e4: $2c
    inc b                                         ; $44e5: $04
    inc sp                                        ; $44e6: $33
    inc [hl]                                      ; $44e7: $34
    inc b                                         ; $44e8: $04
    dec sp                                        ; $44e9: $3b
    inc a                                         ; $44ea: $3c
    dec a                                         ; $44eb: $3d
    ld a, $3f                                     ; $44ec: $3e $3f
    nop                                           ; $44ee: $00
    nop                                           ; $44ef: $00
    nop                                           ; $44f0: $00
    nop                                           ; $44f1: $00
    nop                                           ; $44f2: $00
    nop                                           ; $44f3: $00
    nop                                           ; $44f4: $00
    nop                                           ; $44f5: $00
    nop                                           ; $44f6: $00
    nop                                           ; $44f7: $00
    nop                                           ; $44f8: $00
    nop                                           ; $44f9: $00
    nop                                           ; $44fa: $00
    nop                                           ; $44fb: $00
    nop                                           ; $44fc: $00
    nop                                           ; $44fd: $00
    ld l, d                                       ; $44fe: $6a
    ld e, [hl]                                    ; $44ff: $5e
    ld h, d                                       ; $4500: $62
    ld e, [hl]                                    ; $4501: $5e
    ld h, d                                       ; $4502: $62
    ld e, [hl]                                    ; $4503: $5e
    ld l, d                                       ; $4504: $6a
    ld e, [hl]                                    ; $4505: $5e
    ld a, [hl]                                    ; $4506: $7e
    ld e, [hl]                                    ; $4507: $5e
    ld c, d                                       ; $4508: $4a
    ld a, [hl]                                    ; $4509: $7e
    ld h, d                                       ; $450a: $62
    ld e, [hl]                                    ; $450b: $5e
    ld b, d                                       ; $450c: $42
    ld a, [hl]                                    ; $450d: $7e
    jp hl                                         ; $450e: $e9


    sbc a                                         ; $450f: $9f
    ret nz                                        ; $4510: $c0

    cp a                                          ; $4511: $bf
    ld [c], a                                     ; $4512: $e2
    cp a                                          ; $4513: $bf
    ret z                                         ; $4514: $c8

    cp a                                          ; $4515: $bf
    db $fc                                        ; $4516: $fc
    sbc a                                         ; $4517: $9f
    ret z                                         ; $4518: $c8

    cp a                                          ; $4519: $bf
    ld [c], a                                     ; $451a: $e2
    cp a                                          ; $451b: $bf
    ret nz                                        ; $451c: $c0

    cp a                                          ; $451d: $bf
    adc [hl]                                      ; $451e: $8e
    adc [hl]                                      ; $451f: $8e
    sub c                                         ; $4520: $91
    sbc a                                         ; $4521: $9f
    sub e                                         ; $4522: $93
    sbc a                                         ; $4523: $9f
    sbc c                                         ; $4524: $99
    sub a                                         ; $4525: $97
    sbc h                                         ; $4526: $9c
    sub a                                         ; $4527: $97
    sbc b                                         ; $4528: $98
    sub a                                         ; $4529: $97
    sbc d                                         ; $452a: $9a
    sub a                                         ; $452b: $97
    ld e, b                                       ; $452c: $58
    rst $10                                       ; $452d: $d7
    nop                                           ; $452e: $00
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    add b                                         ; $4536: $80
    add b                                         ; $4537: $80
    add b                                         ; $4538: $80
    add b                                         ; $4539: $80
    add b                                         ; $453a: $80
    add b                                         ; $453b: $80
    add b                                         ; $453c: $80
    add b                                         ; $453d: $80
    inc bc                                        ; $453e: $03
    inc bc                                        ; $453f: $03
    inc bc                                        ; $4540: $03
    inc bc                                        ; $4541: $03
    inc bc                                        ; $4542: $03
    inc bc                                        ; $4543: $03
    inc bc                                        ; $4544: $03
    inc bc                                        ; $4545: $03
    inc bc                                        ; $4546: $03
    inc bc                                        ; $4547: $03
    inc bc                                        ; $4548: $03
    inc bc                                        ; $4549: $03
    inc bc                                        ; $454a: $03
    inc bc                                        ; $454b: $03
    inc bc                                        ; $454c: $03
    inc bc                                        ; $454d: $03
    ld [$00ff], sp                                ; $454e: $08 $ff $00
    rst $38                                       ; $4551: $ff
    ld [hl+], a                                   ; $4552: $22
    rst $38                                       ; $4553: $ff
    ld [$9cff], sp                                ; $4554: $08 $ff $9c
    rst $38                                       ; $4557: $ff
    ld [$22ff], sp                                ; $4558: $08 $ff $22
    rst $38                                       ; $455b: $ff
    nop                                           ; $455c: $00
    rst $38                                       ; $455d: $ff
    adc c                                         ; $455e: $89
    rst $38                                       ; $455f: $ff
    ld bc, $21ff                                  ; $4560: $01 $ff $21
    rst $38                                       ; $4563: $ff
    add hl, bc                                    ; $4564: $09
    rst $38                                       ; $4565: $ff
    sbc l                                         ; $4566: $9d
    rst $38                                       ; $4567: $ff
    dec bc                                        ; $4568: $0b
    rst $38                                       ; $4569: $ff
    ld hl, $03ff                                  ; $456a: $21 $ff $03
    rst $38                                       ; $456d: $ff
    jp $c3c3                                      ; $456e: $c3 $c3 $c3


    jp $c3c3                                      ; $4571: $c3 $c3 $c3


    jp $c3c3                                      ; $4574: $c3 $c3 $c3


    jp $c3c3                                      ; $4577: $c3 $c3 $c3


    jp $c3c3                                      ; $457a: $c3 $c3 $c3


    jp $ff88                                      ; $457d: $c3 $88 $ff


    nop                                           ; $4580: $00
    rst $38                                       ; $4581: $ff
    ld [hl+], a                                   ; $4582: $22
    rst $38                                       ; $4583: $ff
    ld [$9cff], sp                                ; $4584: $08 $ff $9c
    rst $38                                       ; $4587: $ff
    ld [$22ff], sp                                ; $4588: $08 $ff $22
    rst $38                                       ; $458b: $ff
    nop                                           ; $458c: $00
    rst $38                                       ; $458d: $ff
    ldh [$e0], a                                  ; $458e: $e0 $e0
    ld h, b                                       ; $4590: $60
    ldh [$60], a                                  ; $4591: $e0 $60
    ldh [$60], a                                  ; $4593: $e0 $60
    ldh [$e0], a                                  ; $4595: $e0 $e0
    ldh [$60], a                                  ; $4597: $e0 $60
    ldh [$60], a                                  ; $4599: $e0 $60
    ldh [$60], a                                  ; $459b: $e0 $60
    ldh [$c8], a                                  ; $459d: $e0 $c8
    rst $30                                       ; $459f: $f7
    ret c                                         ; $45a0: $d8

    rst $20                                       ; $45a1: $e7
    ld a, [c]                                     ; $45a2: $f2
    rst $28                                       ; $45a3: $ef
    ret c                                         ; $45a4: $d8

    rst $20                                       ; $45a5: $e7
    call c, $d8ef                                 ; $45a6: $dc $ef $d8
    rst $20                                       ; $45a9: $e7
    ld a, [c]                                     ; $45aa: $f2
    rst $28                                       ; $45ab: $ef
    ret nc                                        ; $45ac: $d0

    rst $28                                       ; $45ad: $ef
    ld c, e                                       ; $45ae: $4b
    ld a, a                                       ; $45af: $7f
    ld b, e                                       ; $45b0: $43
    ld a, a                                       ; $45b1: $7f
    ld h, e                                       ; $45b2: $63
    ld a, a                                       ; $45b3: $7f
    dec hl                                        ; $45b4: $2b
    ccf                                           ; $45b5: $3f
    ccf                                           ; $45b6: $3f
    ccf                                           ; $45b7: $3f
    add hl, hl                                    ; $45b8: $29
    ccf                                           ; $45b9: $3f
    inc de                                        ; $45ba: $13
    rra                                           ; $45bb: $1f
    ld de, $c81f                                  ; $45bc: $11 $1f $c8
    cp a                                          ; $45bf: $bf
    ret nz                                        ; $45c0: $c0

    cp a                                          ; $45c1: $bf
    ld [c], a                                     ; $45c2: $e2
    cp a                                          ; $45c3: $bf
    ret z                                         ; $45c4: $c8

    cp a                                          ; $45c5: $bf
    call c, Call_04d_48bf                         ; $45c6: $dc $bf $48
    cp a                                          ; $45c9: $bf
    ld [c], a                                     ; $45ca: $e2
    ccf                                           ; $45cb: $3f
    ld b, b                                       ; $45cc: $40
    cp a                                          ; $45cd: $bf
    ret c                                         ; $45ce: $d8

    rst $18                                       ; $45cf: $df
    ld h, b                                       ; $45d0: $60
    rst $38                                       ; $45d1: $ff
    ld [hl], d                                    ; $45d2: $72
    rst $38                                       ; $45d3: $ff
    ld l, c                                       ; $45d4: $69
    rst $38                                       ; $45d5: $ff
    db $fc                                        ; $45d6: $fc
    rst $38                                       ; $45d7: $ff
    ld l, c                                       ; $45d8: $69
    rst $38                                       ; $45d9: $ff
    ld h, e                                       ; $45da: $63
    rst $38                                       ; $45db: $ff
    ld h, c                                       ; $45dc: $61
    rst $38                                       ; $45dd: $ff
    add b                                         ; $45de: $80
    add b                                         ; $45df: $80
    add b                                         ; $45e0: $80
    add b                                         ; $45e1: $80
    add b                                         ; $45e2: $80
    add b                                         ; $45e3: $80
    add b                                         ; $45e4: $80
    add b                                         ; $45e5: $80
    add b                                         ; $45e6: $80
    add b                                         ; $45e7: $80
    nop                                           ; $45e8: $00
    nop                                           ; $45e9: $00
    nop                                           ; $45ea: $00
    nop                                           ; $45eb: $00
    nop                                           ; $45ec: $00
    nop                                           ; $45ed: $00
    inc bc                                        ; $45ee: $03
    inc bc                                        ; $45ef: $03
    inc bc                                        ; $45f0: $03
    inc bc                                        ; $45f1: $03
    inc bc                                        ; $45f2: $03
    inc bc                                        ; $45f3: $03
    inc bc                                        ; $45f4: $03
    inc bc                                        ; $45f5: $03
    inc bc                                        ; $45f6: $03
    inc bc                                        ; $45f7: $03
    inc bc                                        ; $45f8: $03
    inc bc                                        ; $45f9: $03
    inc bc                                        ; $45fa: $03
    inc bc                                        ; $45fb: $03
    ld bc, $8801                                  ; $45fc: $01 $01 $88
    rst $38                                       ; $45ff: $ff
    nop                                           ; $4600: $00
    rst $38                                       ; $4601: $ff
    ld [hl+], a                                   ; $4602: $22
    rst $38                                       ; $4603: $ff
    ld [$9cff], sp                                ; $4604: $08 $ff $9c
    rst $38                                       ; $4607: $ff
    ld [$22ff], sp                                ; $4608: $08 $ff $22
    rst $38                                       ; $460b: $ff
    add b                                         ; $460c: $80
    rst $38                                       ; $460d: $ff
    adc e                                         ; $460e: $8b
    rst $38                                       ; $460f: $ff
    inc bc                                        ; $4610: $03
    rst $38                                       ; $4611: $ff
    inc hl                                        ; $4612: $23
    rst $38                                       ; $4613: $ff
    dec bc                                        ; $4614: $0b
    rst $38                                       ; $4615: $ff
    sbc a                                         ; $4616: $9f
    rst $38                                       ; $4617: $ff
    dec bc                                        ; $4618: $0b
    rst $38                                       ; $4619: $ff
    inc hl                                        ; $461a: $23
    rst $38                                       ; $461b: $ff
    inc bc                                        ; $461c: $03
    rst $38                                       ; $461d: $ff
    pop hl                                        ; $461e: $e1
    pop hl                                        ; $461f: $e1
    ld h, c                                       ; $4620: $61
    pop hl                                        ; $4621: $e1
    ld h, c                                       ; $4622: $61
    pop hl                                        ; $4623: $e1
    ld h, c                                       ; $4624: $61
    pop hl                                        ; $4625: $e1
    pop hl                                        ; $4626: $e1
    pop hl                                        ; $4627: $e1
    ld h, c                                       ; $4628: $61
    pop hl                                        ; $4629: $e1
    ld h, c                                       ; $462a: $61
    pop hl                                        ; $462b: $e1
    ld h, c                                       ; $462c: $61
    pop hl                                        ; $462d: $e1
    ret c                                         ; $462e: $d8

    rst $28                                       ; $462f: $ef
    ret nc                                        ; $4630: $d0

    rst $28                                       ; $4631: $ef
    ld a, [c]                                     ; $4632: $f2
    rst $28                                       ; $4633: $ef
    ret c                                         ; $4634: $d8

    rst $28                                       ; $4635: $ef
    call c, $d8ff                                 ; $4636: $dc $ff $d8
    rst $28                                       ; $4639: $ef
    ld [c], a                                     ; $463a: $e2
    rst $38                                       ; $463b: $ff
    add b                                         ; $463c: $80
    rst $38                                       ; $463d: $ff
    ld bc, $0201                                  ; $463e: $01 $01 $02
    inc bc                                        ; $4641: $03
    inc bc                                        ; $4642: $03
    ld [bc], a                                    ; $4643: $02
    inc bc                                        ; $4644: $03
    ld [bc], a                                    ; $4645: $02
    dec b                                         ; $4646: $05
    ld b, $05                                     ; $4647: $06 $05
    ld b, $07                                     ; $4649: $06 $07
    ld b, $05                                     ; $464b: $06 $05
    ld b, $c9                                     ; $464d: $06 $c9
    rst $08                                       ; $464f: $cf
    and l                                         ; $4650: $a5
    ld h, a                                       ; $4651: $67
    and e                                         ; $4652: $a3
    ld h, e                                       ; $4653: $63
    ld de, $91f1                                  ; $4654: $11 $f1 $91
    pop af                                        ; $4657: $f1
    ld de, $31f1                                  ; $4658: $11 $f1 $31
    pop af                                        ; $465b: $f1
    ld de, $88f1                                  ; $465c: $11 $f1 $88
    ld a, a                                       ; $465f: $7f
    add b                                         ; $4660: $80
    ld a, a                                       ; $4661: $7f
    and d                                         ; $4662: $a2
    ld a, a                                       ; $4663: $7f
    adc b                                         ; $4664: $88
    ld a, a                                       ; $4665: $7f
    sbc h                                         ; $4666: $9c
    ld a, a                                       ; $4667: $7f
    adc b                                         ; $4668: $88
    ld a, a                                       ; $4669: $7f
    and d                                         ; $466a: $a2
    ld a, a                                       ; $466b: $7f
    add b                                         ; $466c: $80
    ld a, a                                       ; $466d: $7f
    jp hl                                         ; $466e: $e9


    rst $38                                       ; $466f: $ff
    ld h, e                                       ; $4670: $63
    rst $38                                       ; $4671: $ff
    ld h, c                                       ; $4672: $61
    rst $38                                       ; $4673: $ff
    ld l, d                                       ; $4674: $6a
    cp $de                                        ; $4675: $fe $de
    cp $4a                                        ; $4677: $fe $4a
    cp $64                                        ; $4679: $fe $64
    db $fc                                        ; $467b: $fc
    ld b, h                                       ; $467c: $44
    db $fc                                        ; $467d: $fc
    ld bc, $0101                                  ; $467e: $01 $01 $01
    ld bc, $0101                                  ; $4681: $01 $01 $01
    ld bc, $0101                                  ; $4684: $01 $01 $01
    ld bc, $0000                                  ; $4687: $01 $00 $00
    nop                                           ; $468a: $00
    nop                                           ; $468b: $00
    nop                                           ; $468c: $00
    nop                                           ; $468d: $00
    adc b                                         ; $468e: $88
    rst $38                                       ; $468f: $ff
    add b                                         ; $4690: $80
    rst $38                                       ; $4691: $ff
    and d                                         ; $4692: $a2
    rst $38                                       ; $4693: $ff
    adc b                                         ; $4694: $88
    rst $38                                       ; $4695: $ff
    call c, $c8ff                                 ; $4696: $dc $ff $c8
    rst $38                                       ; $4699: $ff
    ld [c], a                                     ; $469a: $e2
    rst $38                                       ; $469b: $ff
    ret nz                                        ; $469c: $c0

    rst $38                                       ; $469d: $ff
    adc d                                         ; $469e: $8a
    rst $38                                       ; $469f: $ff
    inc bc                                        ; $46a0: $03
    rst $38                                       ; $46a1: $ff
    ld [hl+], a                                   ; $46a2: $22
    rst $38                                       ; $46a3: $ff
    ld a, [bc]                                    ; $46a4: $0a
    rst $38                                       ; $46a5: $ff
    sbc [hl]                                      ; $46a6: $9e
    rst $38                                       ; $46a7: $ff
    ld a, [bc]                                    ; $46a8: $0a
    rst $38                                       ; $46a9: $ff
    ld [hl+], a                                   ; $46aa: $22
    rst $38                                       ; $46ab: $ff
    ld [bc], a                                    ; $46ac: $02
    rst $38                                       ; $46ad: $ff
    jp $c3c3                                      ; $46ae: $c3 $c3 $c3


    jp $c3c3                                      ; $46b1: $c3 $c3 $c3


    jp $c3c3                                      ; $46b4: $c3 $c3 $c3


    jp $c3c3                                      ; $46b7: $c3 $c3 $c3


    jp $e3c3                                      ; $46ba: $c3 $c3 $e3


    db $e3                                        ; $46bd: $e3
    adc b                                         ; $46be: $88
    rst $38                                       ; $46bf: $ff
    nop                                           ; $46c0: $00
    rst $38                                       ; $46c1: $ff
    ld [hl+], a                                   ; $46c2: $22
    rst $38                                       ; $46c3: $ff
    adc b                                         ; $46c4: $88
    rst $38                                       ; $46c5: $ff
    inc e                                         ; $46c6: $1c

Jump_04d_46c7:
    rst $38                                       ; $46c7: $ff
    adc b                                         ; $46c8: $88
    rst $38                                       ; $46c9: $ff
    and d                                         ; $46ca: $a2
    rst $38                                       ; $46cb: $ff
    add b                                         ; $46cc: $80
    rst $38                                       ; $46cd: $ff
    pop hl                                        ; $46ce: $e1
    pop hl                                        ; $46cf: $e1
    ld h, c                                       ; $46d0: $61
    pop hl                                        ; $46d1: $e1
    ld h, c                                       ; $46d2: $61
    pop hl                                        ; $46d3: $e1
    ld h, c                                       ; $46d4: $61
    pop hl                                        ; $46d5: $e1
    pop hl                                        ; $46d6: $e1
    pop hl                                        ; $46d7: $e1
    ld h, c                                       ; $46d8: $61
    pop hl                                        ; $46d9: $e1
    db $e3                                        ; $46da: $e3
    db $e3                                        ; $46db: $e3
    db $e3                                        ; $46dc: $e3
    db $e3                                        ; $46dd: $e3
    adc b                                         ; $46de: $88
    rst $38                                       ; $46df: $ff
    add b                                         ; $46e0: $80

Call_04d_46e1:
    rst $38                                       ; $46e1: $ff
    and d                                         ; $46e2: $a2
    rst $38                                       ; $46e3: $ff
    adc b                                         ; $46e4: $88
    rst $38                                       ; $46e5: $ff
    sbc h                                         ; $46e6: $9c
    rst $38                                       ; $46e7: $ff
    adc b                                         ; $46e8: $88
    rst $38                                       ; $46e9: $ff
    and d                                         ; $46ea: $a2
    rst $38                                       ; $46eb: $ff
    add b                                         ; $46ec: $80
    rst $38                                       ; $46ed: $ff
    adc d                                         ; $46ee: $8a
    rst $38                                       ; $46ef: $ff
    nop                                           ; $46f0: $00
    rst $38                                       ; $46f1: $ff
    ld [hl+], a                                   ; $46f2: $22
    rst $38                                       ; $46f3: $ff
    ld a, [bc]                                    ; $46f4: $0a
    rst $38                                       ; $46f5: $ff
    sbc h                                         ; $46f6: $9c
    rst $38                                       ; $46f7: $ff
    ld a, [bc]                                    ; $46f8: $0a
    rst $38                                       ; $46f9: $ff
    ld [hl+], a                                   ; $46fa: $22
    rst $38                                       ; $46fb: $ff
    ld [bc], a                                    ; $46fc: $02
    rst $38                                       ; $46fd: $ff
    ldh [$e0], a                                  ; $46fe: $e0 $e0
    ld h, b                                       ; $4700: $60
    ldh [$60], a                                  ; $4701: $e0 $60
    ldh [$e0], a                                  ; $4703: $e0 $e0
    ldh [$60], a                                  ; $4705: $e0 $60
    ldh [$60], a                                  ; $4707: $e0 $60
    ldh [$e0], a                                  ; $4709: $e0 $e0
    ldh [$e0], a                                  ; $470b: $e0 $e0
    ldh [rTMA], a                                 ; $470d: $e0 $06
    dec b                                         ; $470f: $05
    rlca                                          ; $4710: $07
    inc b                                         ; $4711: $04
    ld b, $05                                     ; $4712: $06 $05
    ld b, $05                                     ; $4714: $06 $05
    ld b, $05                                     ; $4716: $06 $05
    ld b, $05                                     ; $4718: $06 $05
    ld b, $05                                     ; $471a: $06 $05
    ld b, $05                                     ; $471c: $06 $05
    sub d                                         ; $471e: $92
    di                                            ; $471f: $f3
    ld [de], a                                    ; $4720: $12
    di                                            ; $4721: $f3
    ld [hl-], a                                   ; $4722: $32
    di                                            ; $4723: $f3
    ld a, [bc]                                    ; $4724: $0a
    ei                                            ; $4725: $fb
    sbc d                                         ; $4726: $9a
    ei                                            ; $4727: $fb
    ld a, [bc]                                    ; $4728: $0a
    ei                                            ; $4729: $fb
    ld a, [hl+]                                   ; $472a: $2a
    ei                                            ; $472b: $fb
    ld a, [bc]                                    ; $472c: $0a
    ei                                            ; $472d: $fb
    adc b                                         ; $472e: $88
    ld a, a                                       ; $472f: $7f
    nop                                           ; $4730: $00
    rst $38                                       ; $4731: $ff
    and d                                         ; $4732: $a2
    ld a, a                                       ; $4733: $7f
    ld [$9cff], sp                                ; $4734: $08 $ff $9c
    rst $38                                       ; $4737: $ff
    ld [$22ff], sp                                ; $4738: $08 $ff $22
    rst $38                                       ; $473b: $ff
    nop                                           ; $473c: $00
    rst $38                                       ; $473d: $ff
    xor b                                         ; $473e: $a8
    ld hl, sp+$31                                 ; $473f: $f8 $31
    pop af                                        ; $4741: $f1
    ld [hl+], a                                   ; $4742: $22
    db $e3                                        ; $4743: $e3
    inc hl                                        ; $4744: $23
    ld [c], a                                     ; $4745: $e2
    and l                                         ; $4746: $a5
    and $27                                       ; $4747: $e6 $27
    db $e4                                        ; $4749: $e4
    dec h                                         ; $474a: $25
    and $26                                       ; $474b: $e6 $26
    push hl                                       ; $474d: $e5
    nop                                           ; $474e: $00
    nop                                           ; $474f: $00
    ret nz                                        ; $4750: $c0

    ret nz                                        ; $4751: $c0

    and b                                         ; $4752: $a0
    ld h, b                                       ; $4753: $60
    jr nz, @-$1e                                  ; $4754: $20 $e0

    sub b                                         ; $4756: $90
    ldh a, [rNR10]                                ; $4757: $f0 $10
    ldh a, [$30]                                  ; $4759: $f0 $30
    ldh a, [rNR10]                                ; $475b: $f0 $10
    ldh a, [$c8]                                  ; $475d: $f0 $c8
    rst $38                                       ; $475f: $ff
    ldh [rIE], a                                  ; $4760: $e0 $ff
    ld h, d                                       ; $4762: $62
    ld a, a                                       ; $4763: $7f
    ld l, b                                       ; $4764: $68
    ld a, a                                       ; $4765: $7f
    ld a, h                                       ; $4766: $7c
    ld a, a                                       ; $4767: $7f
    ld a, b                                       ; $4768: $78
    ld a, a                                       ; $4769: $7f
    ld [hl], d                                    ; $476a: $72
    ld a, a                                       ; $476b: $7f
    jr c, @+$41                                   ; $476c: $38 $3f

    adc d                                         ; $476e: $8a
    rst $38                                       ; $476f: $ff
    ld bc, $23ff                                  ; $4770: $01 $ff $23
    rst $38                                       ; $4773: $ff
    add hl, bc                                    ; $4774: $09
    rst $38                                       ; $4775: $ff
    sbc l                                         ; $4776: $9d
    rst $38                                       ; $4777: $ff
    add hl, bc                                    ; $4778: $09
    rst $38                                       ; $4779: $ff
    inc hl                                        ; $477a: $23
    rst $38                                       ; $477b: $ff
    ld bc, $e3ff                                  ; $477c: $01 $ff $e3
    db $e3                                        ; $477f: $e3
    ld h, e                                       ; $4780: $63
    db $e3                                        ; $4781: $e3
    ld h, e                                       ; $4782: $63
    db $e3                                        ; $4783: $e3
    ld [hl], e                                    ; $4784: $73
    di                                            ; $4785: $f3
    di                                            ; $4786: $f3
    di                                            ; $4787: $f3
    ld sp, $b1f1                                  ; $4788: $31 $f1 $b1
    pop af                                        ; $478b: $f1
    cp c                                          ; $478c: $b9
    ld sp, hl                                     ; $478d: $f9
    adc b                                         ; $478e: $88
    rst $38                                       ; $478f: $ff
    add b                                         ; $4790: $80
    rst $38                                       ; $4791: $ff
    and d                                         ; $4792: $a2
    rst $38                                       ; $4793: $ff
    ret z                                         ; $4794: $c8

    rst $38                                       ; $4795: $ff
    sbc h                                         ; $4796: $9c
    rst $38                                       ; $4797: $ff
    adc b                                         ; $4798: $88
    rst $38                                       ; $4799: $ff
    and d                                         ; $479a: $a2
    rst $38                                       ; $479b: $ff
    ret nz                                        ; $479c: $c0

    rst $38                                       ; $479d: $ff
    adc b                                         ; $479e: $88
    rst $38                                       ; $479f: $ff
    nop                                           ; $47a0: $00
    rst $38                                       ; $47a1: $ff
    ld [hl+], a                                   ; $47a2: $22
    rst $38                                       ; $47a3: $ff
    add hl, bc                                    ; $47a4: $09
    rst $38                                       ; $47a5: $ff
    sbc h                                         ; $47a6: $9c
    rst $38                                       ; $47a7: $ff
    ld [$22ff], sp                                ; $47a8: $08 $ff $22
    rst $38                                       ; $47ab: $ff
    ld bc, $e3ff                                  ; $47ac: $01 $ff $e3
    db $e3                                        ; $47af: $e3
    db $e3                                        ; $47b0: $e3
    db $e3                                        ; $47b1: $e3
    db $e3                                        ; $47b2: $e3
    db $e3                                        ; $47b3: $e3
    db $e3                                        ; $47b4: $e3
    db $e3                                        ; $47b5: $e3
    db $e3                                        ; $47b6: $e3
    db $e3                                        ; $47b7: $e3
    db $e3                                        ; $47b8: $e3
    db $e3                                        ; $47b9: $e3
    jp $c3c3                                      ; $47ba: $c3 $c3 $c3


    jp $ff88                                      ; $47bd: $c3 $88 $ff


    add b                                         ; $47c0: $80
    rst $38                                       ; $47c1: $ff
    and d                                         ; $47c2: $a2

Jump_04d_47c3:
    rst $38                                       ; $47c3: $ff
    ld [$9cff], sp                                ; $47c4: $08 $ff $9c
    rst $38                                       ; $47c7: $ff
    ld [$22ff], sp                                ; $47c8: $08 $ff $22
    rst $38                                       ; $47cb: $ff
    nop                                           ; $47cc: $00
    rst $38                                       ; $47cd: $ff
    adc d                                         ; $47ce: $8a
    rst $38                                       ; $47cf: $ff
    ld [bc], a                                    ; $47d0: $02
    rst $38                                       ; $47d1: $ff
    ld [hl+], a                                   ; $47d2: $22
    rst $38                                       ; $47d3: $ff
    ld a, [bc]                                    ; $47d4: $0a
    rst $38                                       ; $47d5: $ff
    sbc [hl]                                      ; $47d6: $9e
    rst $38                                       ; $47d7: $ff
    ld a, [bc]                                    ; $47d8: $0a
    rst $38                                       ; $47d9: $ff
    inc h                                         ; $47da: $24
    rst $38                                       ; $47db: $ff
    dec b                                         ; $47dc: $05
    rst $38                                       ; $47dd: $ff
    ldh [$e0], a                                  ; $47de: $e0 $e0

Call_04d_47e0:
    ret nz                                        ; $47e0: $c0

    ret nz                                        ; $47e1: $c0

    ret nz                                        ; $47e2: $c0

    ret nz                                        ; $47e3: $c0

    ret nz                                        ; $47e4: $c0

    ret nz                                        ; $47e5: $c0

    ret nz                                        ; $47e6: $c0

    ret nz                                        ; $47e7: $c0

    ret nz                                        ; $47e8: $c0

    ret nz                                        ; $47e9: $c0

    ret nz                                        ; $47ea: $c0

    ret nz                                        ; $47eb: $c0

    ret nz                                        ; $47ec: $c0

    ret nz                                        ; $47ed: $c0

    ld b, $05                                     ; $47ee: $06 $05
    inc b                                         ; $47f0: $04
    rlca                                          ; $47f1: $07
    ld b, $05                                     ; $47f2: $06 $05
    inc b                                         ; $47f4: $04
    rlca                                          ; $47f5: $07
    inc b                                         ; $47f6: $04
    rlca                                          ; $47f7: $07
    inc b                                         ; $47f8: $04
    rlca                                          ; $47f9: $07
    ld b, $07                                     ; $47fa: $06 $07
    inc b                                         ; $47fc: $04
    rlca                                          ; $47fd: $07
    adc d                                         ; $47fe: $8a

Jump_04d_47ff:
    ei                                            ; $47ff: $fb
    ld a, [bc]                                    ; $4800: $0a
    ei                                            ; $4801: $fb
    ld a, [hl+]                                   ; $4802: $2a
    ei                                            ; $4803: $fb
    ld a, [bc]                                    ; $4804: $0a
    ei                                            ; $4805: $fb
    sbc d                                         ; $4806: $9a
    ei                                            ; $4807: $fb
    ld a, [bc]                                    ; $4808: $0a
    ei                                            ; $4809: $fb
    ld a, [hl+]                                   ; $480a: $2a
    ei                                            ; $480b: $fb
    ld a, [bc]                                    ; $480c: $0a
    ei                                            ; $480d: $fb
    and [hl]                                      ; $480e: $a6
    push hl                                       ; $480f: $e5
    ld h, $e5                                     ; $4810: $26 $e5
    ld h, $e7                                     ; $4812: $26 $e7
    ld h, $e5                                     ; $4814: $26 $e5
    and [hl]                                      ; $4816: $a6
    push hl                                       ; $4817: $e5
    ld h, $e5                                     ; $4818: $26 $e5
    ld a, [hl+]                                   ; $481a: $2a
    rst $28                                       ; $481b: $ef
    inc l                                         ; $481c: $2c
    db $eb                                        ; $481d: $eb
    sub b                                         ; $481e: $90
    ldh a, [rNR10]                                ; $481f: $f0 $10
    ldh a, [$30]                                  ; $4821: $f0 $30
    ldh a, [rNR10]                                ; $4823: $f0 $10
    ldh a, [$90]                                  ; $4825: $f0 $90
    ldh a, [rNR10]                                ; $4827: $f0 $10
    ldh a, [$30]                                  ; $4829: $f0 $30
    ldh a, [rNR10]                                ; $482b: $f0 $10
    ldh a, [$38]                                  ; $482d: $f0 $38
    ccf                                           ; $482f: $3f
    inc e                                         ; $4830: $1c
    rra                                           ; $4831: $1f
    inc e                                         ; $4832: $1c
    rra                                           ; $4833: $1f
    ld c, $0f                                     ; $4834: $0e $0f
    ld b, $07                                     ; $4836: $06 $07
    rlca                                          ; $4838: $07
    rlca                                          ; $4839: $07
    inc bc                                        ; $483a: $03
    inc bc                                        ; $483b: $03
    ld bc, $8801                                  ; $483c: $01 $01 $88
    rst $38                                       ; $483f: $ff
    ld bc, $22ff                                  ; $4840: $01 $ff $22
    rst $38                                       ; $4843: $ff
    ld [$9cff], sp                                ; $4844: $08 $ff $9c
    rst $38                                       ; $4847: $ff
    ld [$a2ff], sp                                ; $4848: $08 $ff $a2
    rst $38                                       ; $484b: $ff
    add b                                         ; $484c: $80
    rst $38                                       ; $484d: $ff
    sbc c                                         ; $484e: $99
    ld sp, hl                                     ; $484f: $f9
    db $dd                                        ; $4850: $dd
    db $fd                                        ; $4851: $fd
    rst $08                                       ; $4852: $cf
    rst $38                                       ; $4853: $ff
    ld l, a                                       ; $4854: $6f
    rst $38                                       ; $4855: $ff
    ld [hl], a                                    ; $4856: $77
    rst $38                                       ; $4857: $ff
    dec sp                                        ; $4858: $3b
    rst $38                                       ; $4859: $ff
    inc e                                         ; $485a: $1c
    rst $38                                       ; $485b: $ff
    inc c                                         ; $485c: $0c
    rst $38                                       ; $485d: $ff
    adc b                                         ; $485e: $88
    rst $38                                       ; $485f: $ff
    ret nz                                        ; $4860: $c0

    rst $38                                       ; $4861: $ff
    ld [c], a                                     ; $4862: $e2
    rst $38                                       ; $4863: $ff
    ret z                                         ; $4864: $c8

    rst $38                                       ; $4865: $ff
    call c, $c8ff                                 ; $4866: $dc $ff $c8
    rst $38                                       ; $4869: $ff
    jp nz, $e0ff                                  ; $486a: $c2 $ff $e0

    rst $38                                       ; $486d: $ff
    adc b                                         ; $486e: $88
    rst $38                                       ; $486f: $ff
    ld bc, $23ff                                  ; $4870: $01 $ff $23
    rst $38                                       ; $4873: $ff
    add hl, bc                                    ; $4874: $09
    rst $38                                       ; $4875: $ff
    sbc l                                         ; $4876: $9d
    rst $38                                       ; $4877: $ff
    add hl, bc                                    ; $4878: $09
    rst $38                                       ; $4879: $ff
    ld hl, $03ff                                  ; $487a: $21 $ff $03
    rst $38                                       ; $487d: $ff
    jp $c7c3                                      ; $487e: $c3 $c3 $c7


    rst $00                                       ; $4881: $c7
    rst $00                                       ; $4882: $c7
    rst $00                                       ; $4883: $c7
    add $c7                                       ; $4884: $c6 $c7
    rst $00                                       ; $4886: $c7
    rst $00                                       ; $4887: $c7
    add $c7                                       ; $4888: $c6 $c7
    adc $cf                                       ; $488a: $ce $cf
    adc [hl]                                      ; $488c: $8e
    adc a                                         ; $488d: $8f
    adc l                                         ; $488e: $8d
    rst $38                                       ; $488f: $ff
    dec b                                         ; $4890: $05
    rst $38                                       ; $4891: $ff
    dec h                                         ; $4892: $25
    rst $38                                       ; $4893: $ff
    dec b                                         ; $4894: $05
    rst $38                                       ; $4895: $ff
    sbc c                                         ; $4896: $99
    rst $38                                       ; $4897: $ff
    dec bc                                        ; $4898: $0b
    rst $38                                       ; $4899: $ff
    dec hl                                        ; $489a: $2b
    rst $38                                       ; $489b: $ff
    inc de                                        ; $489c: $13
    rst $38                                       ; $489d: $ff
    inc b                                         ; $489e: $04
    rlca                                          ; $489f: $07
    inc b                                         ; $48a0: $04
    rlca                                          ; $48a1: $07
    ld b, $07                                     ; $48a2: $06 $07
    inc b                                         ; $48a4: $04
    rlca                                          ; $48a5: $07
    inc b                                         ; $48a6: $04
    rlca                                          ; $48a7: $07
    inc b                                         ; $48a8: $04
    rlca                                          ; $48a9: $07
    ld [bc], a                                    ; $48aa: $02
    inc bc                                        ; $48ab: $03
    ld [bc], a                                    ; $48ac: $02
    inc bc                                        ; $48ad: $03
    sbc d                                         ; $48ae: $9a
    ei                                            ; $48af: $fb
    ld a, [bc]                                    ; $48b0: $0a

jr_04d_48b1:
    ei                                            ; $48b1: $fb
    ld a, [hl-]                                   ; $48b2: $3a
    ei                                            ; $48b3: $fb
    ld a, [de]                                    ; $48b4: $1a

jr_04d_48b5:
    ei                                            ; $48b5: $fb
    sbc c                                         ; $48b6: $99
    ld sp, hl                                     ; $48b7: $f9
    add hl, de                                    ; $48b8: $19
    ld sp, hl                                     ; $48b9: $f9
    add hl, sp                                    ; $48ba: $39
    ld sp, hl                                     ; $48bb: $f9
    add hl, de                                    ; $48bc: $19
    ld sp, hl                                     ; $48bd: $f9
    xor h                                         ; $48be: $ac

Call_04d_48bf:
    db $eb                                        ; $48bf: $eb
    jr z, jr_04d_48b1                             ; $48c0: $28 $ef

    ld l, $eb                                     ; $48c2: $2e $eb
    jr z, jr_04d_48b5                             ; $48c4: $28 $ef

    call z, $48cf                                 ; $48c6: $cc $cf $48
    rst $08                                       ; $48c9: $cf
    ld c, d                                       ; $48ca: $4a
    rst $08                                       ; $48cb: $cf
    ld c, b                                       ; $48cc: $48
    rst $08                                       ; $48cd: $cf
    ld bc, $0001                                  ; $48ce: $01 $01 $00
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    nop                                           ; $48d3: $00
    nop                                           ; $48d4: $00
    nop                                           ; $48d5: $00
    nop                                           ; $48d6: $00
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    nop                                           ; $48db: $00
    nop                                           ; $48dc: $00
    nop                                           ; $48dd: $00
    ret z                                         ; $48de: $c8

    rst $38                                       ; $48df: $ff
    ldh [rIE], a                                  ; $48e0: $e0 $ff
    ld [hl], d                                    ; $48e2: $72
    ld a, a                                       ; $48e3: $7f
    inc a                                         ; $48e4: $3c
    ccf                                           ; $48e5: $3f
    ld e, $1f                                     ; $48e6: $1e $1f
    rrca                                          ; $48e8: $0f
    rrca                                          ; $48e9: $0f
    rlca                                          ; $48ea: $07
    rlca                                          ; $48eb: $07
    inc bc                                        ; $48ec: $03
    inc bc                                        ; $48ed: $03
    add h                                         ; $48ee: $84
    rst $38                                       ; $48ef: $ff
    nop                                           ; $48f0: $00
    rst $38                                       ; $48f1: $ff
    ld [hl+], a                                   ; $48f2: $22
    rst $38                                       ; $48f3: $ff
    ld [$9cff], sp                                ; $48f4: $08 $ff $9c
    rst $38                                       ; $48f7: $ff
    ld [$a2ff], sp                                ; $48f8: $08 $ff $a2
    rst $38                                       ; $48fb: $ff
    ldh [rIE], a                                  ; $48fc: $e0 $ff
    ret z                                         ; $48fe: $c8

    rst $38                                       ; $48ff: $ff
    ldh [rIE], a                                  ; $4900: $e0 $ff
    ld [c], a                                     ; $4902: $e2
    rst $38                                       ; $4903: $ff
    add sp, -$01                                  ; $4904: $e8 $ff
    db $fc                                        ; $4906: $fc
    rst $38                                       ; $4907: $ff
    add sp, -$01                                  ; $4908: $e8 $ff
    ld [c], a                                     ; $490a: $e2
    rst $38                                       ; $490b: $ff
    ldh [rIE], a                                  ; $490c: $e0 $ff
    adc c                                         ; $490e: $89
    rst $38                                       ; $490f: $ff
    inc bc                                        ; $4910: $03
    rst $38                                       ; $4911: $ff
    inc hl                                        ; $4912: $23
    rst $38                                       ; $4913: $ff
    dec bc                                        ; $4914: $0b
    rst $38                                       ; $4915: $ff
    sbc a                                         ; $4916: $9f
    rst $38                                       ; $4917: $ff
    dec bc                                        ; $4918: $0b
    rst $38                                       ; $4919: $ff
    inc hl                                        ; $491a: $23
    rst $38                                       ; $491b: $ff
    inc bc                                        ; $491c: $03
    rst $38                                       ; $491d: $ff
    adc [hl]                                      ; $491e: $8e
    adc a                                         ; $491f: $8f
    adc [hl]                                      ; $4920: $8e
    adc a                                         ; $4921: $8f
    sbc h                                         ; $4922: $9c
    sbc a                                         ; $4923: $9f
    sbc h                                         ; $4924: $9c
    sbc a                                         ; $4925: $9f
    sbc h                                         ; $4926: $9c
    sbc a                                         ; $4927: $9f
    cp b                                          ; $4928: $b8
    cp a                                          ; $4929: $bf
    cp d                                          ; $492a: $ba
    cp a                                          ; $492b: $bf
    ldh a, [rIE]                                  ; $492c: $f0 $ff
    adc b                                         ; $492e: $88
    rst $38                                       ; $492f: $ff
    nop                                           ; $4930: $00
    rst $38                                       ; $4931: $ff
    ld [hl+], a                                   ; $4932: $22
    rst $38                                       ; $4933: $ff
    ld [$9cff], sp                                ; $4934: $08 $ff $9c
    rst $38                                       ; $4937: $ff
    ld [$22ff], sp                                ; $4938: $08 $ff $22
    rst $38                                       ; $493b: $ff
    ld bc, $97ff                                  ; $493c: $01 $ff $97
    rst $38                                       ; $493f: $ff
    ld h, $fe                                     ; $4940: $26 $fe
    ld h, $fe                                     ; $4942: $26 $fe
    ld c, h                                       ; $4944: $4c
    db $fc                                        ; $4945: $fc
    ld c, h                                       ; $4946: $4c
    db $fc                                        ; $4947: $fc
    sbc h                                         ; $4948: $9c
    db $fc                                        ; $4949: $fc
    sbc b                                         ; $494a: $98
    ld hl, sp+$30                                 ; $494b: $f8 $30
    ldh a, [rSC]                                  ; $494d: $f0 $02
    inc bc                                        ; $494f: $03
    ld bc, $0101                                  ; $4950: $01 $01 $01
    ld bc, $0101                                  ; $4953: $01 $01 $01
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495a: $00
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    sbc l                                         ; $495e: $9d
    db $fd                                        ; $495f: $fd
    dec d                                         ; $4960: $15
    db $fd                                        ; $4961: $fd
    cpl                                           ; $4962: $2f
    rst $38                                       ; $4963: $ff
    dec bc                                        ; $4964: $0b
    rst $38                                       ; $4965: $ff
    add l                                         ; $4966: $85
    rst $38                                       ; $4967: $ff
    and e                                         ; $4968: $a3
    rst $38                                       ; $4969: $ff
    ld b, c                                       ; $496a: $41
    ld a, a                                       ; $496b: $7f
    add hl, hl                                    ; $496c: $29
    ccf                                           ; $496d: $3f
    ret z                                         ; $496e: $c8

    rst $08                                       ; $496f: $cf
    ld c, b                                       ; $4970: $48
    rst $08                                       ; $4971: $cf
    ld c, d                                       ; $4972: $4a
    rst $08                                       ; $4973: $cf
    ld c, b                                       ; $4974: $48
    rst $08                                       ; $4975: $cf
    ret z                                         ; $4976: $c8

    rst $08                                       ; $4977: $cf
    ld d, b                                       ; $4978: $50
    rst $18                                       ; $4979: $df
    ld e, d                                       ; $497a: $5a
    rst $18                                       ; $497b: $df
    ld d, b                                       ; $497c: $50
    rst $18                                       ; $497d: $df
    sub b                                         ; $497e: $90
    ldh a, [rNR10]                                ; $497f: $f0 $10
    ldh a, [$50]                                  ; $4981: $f0 $50
    ldh a, [rNR10]                                ; $4983: $f0 $10
    ldh a, [$d0]                                  ; $4985: $f0 $d0
    ldh a, [$50]                                  ; $4987: $f0 $50
    ldh a, [$a0]                                  ; $4989: $f0 $a0
    ldh [$a0], a                                  ; $498b: $e0 $a0
    ldh [$f8], a                                  ; $498d: $e0 $f8
    rst $38                                       ; $498f: $ff
    ld a, a                                       ; $4990: $7f
    ld a, a                                       ; $4991: $7f
    rra                                           ; $4992: $1f
    rra                                           ; $4993: $1f
    inc bc                                        ; $4994: $03
    inc bc                                        ; $4995: $03
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    nop                                           ; $499b: $00
    nop                                           ; $499c: $00
    nop                                           ; $499d: $00
    add sp, -$01                                  ; $499e: $e8 $ff
    ldh [rIE], a                                  ; $49a0: $e0 $ff
    ld a, [c]                                     ; $49a2: $f2
    rst $38                                       ; $49a3: $ff
    add sp, -$01                                  ; $49a4: $e8 $ff
    db $fc                                        ; $49a6: $fc
    rst $38                                       ; $49a7: $ff
    ld l, b                                       ; $49a8: $68
    ld a, a                                       ; $49a9: $7f
    ld [hl], d                                    ; $49aa: $72
    ld a, a                                       ; $49ab: $7f
    ld h, b                                       ; $49ac: $60
    ld a, a                                       ; $49ad: $7f
    adc e                                         ; $49ae: $8b
    rst $38                                       ; $49af: $ff
    inc bc                                        ; $49b0: $03
    rst $38                                       ; $49b1: $ff
    daa                                           ; $49b2: $27
    rst $38                                       ; $49b3: $ff
    dec bc                                        ; $49b4: $0b
    rst $38                                       ; $49b5: $ff
    sbc a                                         ; $49b6: $9f
    rst $38                                       ; $49b7: $ff
    dec bc                                        ; $49b8: $0b
    rst $38                                       ; $49b9: $ff
    daa                                           ; $49ba: $27
    rst $38                                       ; $49bb: $ff
    inc bc                                        ; $49bc: $03
    rst $38                                       ; $49bd: $ff
    ld hl, sp-$01                                 ; $49be: $f8 $ff
    ldh [rIE], a                                  ; $49c0: $e0 $ff
    jp nz, $88ff                                  ; $49c2: $c2 $ff $88

    rst $38                                       ; $49c5: $ff
    inc e                                         ; $49c6: $1c
    rst $38                                       ; $49c7: $ff
    ld [$22ff], sp                                ; $49c8: $08 $ff $22
    rst $38                                       ; $49cb: $ff
    ld bc, $89ff                                  ; $49cc: $01 $ff $89
    rst $38                                       ; $49cf: $ff

jr_04d_49d0:
    ld [bc], a                                    ; $49d0: $02
    rst $38                                       ; $49d1: $ff
    ld h, $ff                                     ; $49d2: $26 $ff
    inc c                                         ; $49d4: $0c
    rst $38                                       ; $49d5: $ff
    sbc c                                         ; $49d6: $99
    rst $38                                       ; $49d7: $ff
    inc sp                                        ; $49d8: $33
    rst $38                                       ; $49d9: $ff
    ld h, a                                       ; $49da: $67
    rst $38                                       ; $49db: $ff
    adc $fe                                       ; $49dc: $ce $fe
    jr nc, jr_04d_49d0                            ; $49de: $30 $f0

    ld h, b                                       ; $49e0: $60
    ldh [$e0], a                                  ; $49e1: $e0 $e0
    ldh [$c0], a                                  ; $49e3: $e0 $c0
    ret nz                                        ; $49e5: $c0

    ret nz                                        ; $49e6: $c0

    ret nz                                        ; $49e7: $c0

    add b                                         ; $49e8: $80
    add b                                         ; $49e9: $80
    nop                                           ; $49ea: $00
    nop                                           ; $49eb: $00
    nop                                           ; $49ec: $00
    nop                                           ; $49ed: $00
    ld de, $0d1f                                  ; $49ee: $11 $1f $0d
    rrca                                          ; $49f1: $0f
    inc bc                                        ; $49f2: $03
    inc bc                                        ; $49f3: $03
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    nop                                           ; $49f6: $00
    nop                                           ; $49f7: $00
    nop                                           ; $49f8: $00
    nop                                           ; $49f9: $00
    nop                                           ; $49fa: $00
    nop                                           ; $49fb: $00
    nop                                           ; $49fc: $00
    nop                                           ; $49fd: $00
    adc b                                         ; $49fe: $88
    rst $38                                       ; $49ff: $ff
    nop                                           ; $4a00: $00
    rst $38                                       ; $4a01: $ff
    ld [hl+], a                                   ; $4a02: $22
    rst $38                                       ; $4a03: $ff
    adc b                                         ; $4a04: $88
    rst $38                                       ; $4a05: $ff
    sbc h                                         ; $4a06: $9c
    rst $38                                       ; $4a07: $ff
    adc b                                         ; $4a08: $88
    rst $38                                       ; $4a09: $ff
    and d                                         ; $4a0a: $a2
    rst $38                                       ; $4a0b: $ff
    add b                                         ; $4a0c: $80
    rst $38                                       ; $4a0d: $ff
    add sp, -$01                                  ; $4a0e: $e8 $ff
    ld b, c                                       ; $4a10: $41
    rst $38                                       ; $4a11: $ff
    ld h, l                                       ; $4a12: $65
    rst $38                                       ; $4a13: $ff
    add d                                         ; $4a14: $82
    rst $38                                       ; $4a15: $ff
    cp l                                          ; $4a16: $bd
    rst $38                                       ; $4a17: $ff
    or d                                          ; $4a18: $b2
    cp $8c                                        ; $4a19: $fe $8c
    db $fc                                        ; $4a1b: $fc
    ldh a, [$f0]                                  ; $4a1c: $f0 $f0
    and b                                         ; $4a1e: $a0
    ldh [rLCDC], a                                ; $4a1f: $e0 $40
    ret nz                                        ; $4a21: $c0

    ld b, b                                       ; $4a22: $40
    ret nz                                        ; $4a23: $c0

    add b                                         ; $4a24: $80
    add b                                         ; $4a25: $80
    nop                                           ; $4a26: $00
    nop                                           ; $4a27: $00
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    nop                                           ; $4a2a: $00
    nop                                           ; $4a2b: $00
    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    ld l, b                                       ; $4a2e: $68
    ld a, a                                       ; $4a2f: $7f
    ld [hl], b                                    ; $4a30: $70
    ld a, a                                       ; $4a31: $7f
    ld h, d                                       ; $4a32: $62
    ld a, a                                       ; $4a33: $7f
    ld l, b                                       ; $4a34: $68
    ld a, a                                       ; $4a35: $7f
    ld a, h                                       ; $4a36: $7c
    ld a, a                                       ; $4a37: $7f
    ld l, b                                       ; $4a38: $68
    ld a, a                                       ; $4a39: $7f
    ld [hl], d                                    ; $4a3a: $72
    ld a, a                                       ; $4a3b: $7f
    ld [hl], b                                    ; $4a3c: $70
    ld a, a                                       ; $4a3d: $7f
    adc e                                         ; $4a3e: $8b
    rst $38                                       ; $4a3f: $ff
    rlca                                          ; $4a40: $07
    rst $38                                       ; $4a41: $ff
    inc hl                                        ; $4a42: $23
    rst $38                                       ; $4a43: $ff
    dec bc                                        ; $4a44: $0b
    rst $38                                       ; $4a45: $ff
    sbc a                                         ; $4a46: $9f
    rst $38                                       ; $4a47: $ff
    dec bc                                        ; $4a48: $0b
    rst $38                                       ; $4a49: $ff
    daa                                           ; $4a4a: $27
    rst $38                                       ; $4a4b: $ff
    rlca                                          ; $4a4c: $07
    rst $38                                       ; $4a4d: $ff
    adc a                                         ; $4a4e: $8f
    rst $38                                       ; $4a4f: $ff
    ld a, [hl]                                    ; $4a50: $7e
    rst $38                                       ; $4a51: $ff
    ld a, b                                       ; $4a52: $78
    rst $38                                       ; $4a53: $ff
    ld h, c                                       ; $4a54: $61
    rst $38                                       ; $4a55: $ff
    add a                                         ; $4a56: $87
    rst $38                                       ; $4a57: $ff
    ccf                                           ; $4a58: $3f
    rst $38                                       ; $4a59: $ff

jr_04d_4a5a:
    db $fc                                        ; $4a5a: $fc
    db $fc                                        ; $4a5b: $fc
    ld hl, sp-$08                                 ; $4a5c: $f8 $f8
    sbc h                                         ; $4a5e: $9c
    db $fc                                        ; $4a5f: $fc
    jr c, jr_04d_4a5a                             ; $4a60: $38 $f8

    ld [hl], b                                    ; $4a62: $70
    ldh a, [$e0]                                  ; $4a63: $f0 $e0
    ldh [$c0], a                                  ; $4a65: $e0 $c0
    ret nz                                        ; $4a67: $c0

    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    nop                                           ; $4a6d: $00
    inc e                                         ; $4a6e: $1c
    inc e                                         ; $4a6f: $1c
    ld a, $3e                                     ; $4a70: $3e $3e
    ld l, e                                       ; $4a72: $6b
    ld [hl], a                                    ; $4a73: $77
    ld e, l                                       ; $4a74: $5d
    ld h, e                                       ; $4a75: $63
    jp hl                                         ; $4a76: $e9


    rst $10                                       ; $4a77: $d7
    pop af                                        ; $4a78: $f1
    rst $08                                       ; $4a79: $cf
    db $e3                                        ; $4a7a: $e3
    rst $18                                       ; $4a7b: $df
    pop af                                        ; $4a7c: $f1
    rst $08                                       ; $4a7d: $cf
    ld l, a                                       ; $4a7e: $6f
    ld a, [hl]                                    ; $4a7f: $7e
    ld a, h                                       ; $4a80: $7c
    ld a, a                                       ; $4a81: $7f
    ccf                                           ; $4a82: $3f
    ld a, $0d                                     ; $4a83: $3e $0d
    ld c, $8d                                     ; $4a85: $0e $8d
    adc [hl]                                      ; $4a87: $8e
    adc l                                         ; $4a88: $8d
    adc [hl]                                      ; $4a89: $8e
    adc a                                         ; $4a8a: $8f
    adc [hl]                                      ; $4a8b: $8e
    adc l                                         ; $4a8c: $8d
    adc [hl]                                      ; $4a8d: $8e
    adc b                                         ; $4a8e: $88
    rst $38                                       ; $4a8f: $ff
    nop                                           ; $4a90: $00
    rst $38                                       ; $4a91: $ff
    ld [hl+], a                                   ; $4a92: $22
    rst $38                                       ; $4a93: $ff
    add b                                         ; $4a94: $80
    rst $38                                       ; $4a95: $ff
    ret                                           ; $4a96: $c9


    rst $38                                       ; $4a97: $ff
    add b                                         ; $4a98: $80
    rst $38                                       ; $4a99: $ff
    ld [hl+], a                                   ; $4a9a: $22
    rst $38                                       ; $4a9b: $ff
    nop                                           ; $4a9c: $00
    rst $38                                       ; $4a9d: $ff
    cp b                                          ; $4a9e: $b8
    rst $38                                       ; $4a9f: $ff
    jr @+$01                                      ; $4aa0: $18 $ff

    ld a, [hl-]                                   ; $4aa2: $3a
    rst $38                                       ; $4aa3: $ff
    sbc b                                         ; $4aa4: $98
    rst $38                                       ; $4aa5: $ff
    reti                                          ; $4aa6: $d9


    rst $38                                       ; $4aa7: $ff
    sbc b                                         ; $4aa8: $98
    rst $38                                       ; $4aa9: $ff
    ld a, [hl-]                                   ; $4aaa: $3a
    rst $38                                       ; $4aab: $ff
    add hl, de                                    ; $4aac: $19
    rst $38                                       ; $4aad: $ff
    ld hl, sp-$08                                 ; $4aae: $f8 $f8
    ld e, b                                       ; $4ab0: $58
    ld hl, sp+$58                                 ; $4ab1: $f8 $58
    ld hl, sp-$68                                 ; $4ab3: $f8 $98
    ld hl, sp-$10                                 ; $4ab5: $f8 $f0
    ldh a, [$b0]                                  ; $4ab7: $f0 $b0
    ldh a, [$b0]                                  ; $4ab9: $f0 $b0
    ldh a, [$60]                                  ; $4abb: $f0 $60
    ldh [rTMA], a                                 ; $4abd: $e0 $06
    rlca                                          ; $4abf: $07
    ld b, $07                                     ; $4ac0: $06 $07
    ld b, $07                                     ; $4ac2: $06 $07
    ld b, $07                                     ; $4ac4: $06 $07
    rlca                                          ; $4ac6: $07
    rlca                                          ; $4ac7: $07
    ld b, $07                                     ; $4ac8: $06 $07
    rlca                                          ; $4aca: $07
    rlca                                          ; $4acb: $07
    ld b, $07                                     ; $4acc: $06 $07
    adc b                                         ; $4ace: $88
    ld a, a                                       ; $4acf: $7f
    add b                                         ; $4ad0: $80
    ld a, a                                       ; $4ad1: $7f
    ld [hl+], a                                   ; $4ad2: $22
    rst $38                                       ; $4ad3: $ff
    adc b                                         ; $4ad4: $88
    ld a, a                                       ; $4ad5: $7f
    sbc h                                         ; $4ad6: $9c
    rst $38                                       ; $4ad7: $ff
    ld [$22ff], sp                                ; $4ad8: $08 $ff $22
    rst $38                                       ; $4adb: $ff
    nop                                           ; $4adc: $00
    rst $38                                       ; $4add: $ff
    sbc b                                         ; $4ade: $98
    ld hl, sp+$18                                 ; $4adf: $f8 $18
    ld hl, sp+$38                                 ; $4ae1: $f8 $38
    ld hl, sp+$18                                 ; $4ae3: $f8 $18
    ld hl, sp-$68                                 ; $4ae5: $f8 $98
    ld hl, sp+$18                                 ; $4ae7: $f8 $18
    ld hl, sp+$38                                 ; $4ae9: $f8 $38
    ld hl, sp+$18                                 ; $4aeb: $f8 $18
    ld hl, sp-$28                                 ; $4aed: $f8 $d8
    rst $28                                       ; $4aef: $ef
    ret nc                                        ; $4af0: $d0

    rst $28                                       ; $4af1: $ef
    jp nz, $d8ff                                  ; $4af2: $c2 $ff $d8

    rst $28                                       ; $4af5: $ef
    call c, $c8ff                                 ; $4af6: $dc $ff $c8
    rst $38                                       ; $4af9: $ff
    ld [c], a                                     ; $4afa: $e2
    rst $38                                       ; $4afb: $ff
    ret nz                                        ; $4afc: $c0

    rst $38                                       ; $4afd: $ff
    adc c                                         ; $4afe: $89
    rst $38                                       ; $4aff: $ff
    ld bc, $23ff                                  ; $4b00: $01 $ff $23
    rst $38                                       ; $4b03: $ff
    add hl, bc                                    ; $4b04: $09
    rst $38                                       ; $4b05: $ff
    sbc l                                         ; $4b06: $9d
    rst $38                                       ; $4b07: $ff
    add hl, bc                                    ; $4b08: $09
    rst $38                                       ; $4b09: $ff
    inc hl                                        ; $4b0a: $23
    rst $38                                       ; $4b0b: $ff
    ld bc, $86ff                                  ; $4b0c: $01 $ff $86
    add a                                         ; $4b0f: $87
    add a                                         ; $4b10: $87
    add a                                         ; $4b11: $87
    add [hl]                                      ; $4b12: $86
    add a                                         ; $4b13: $87
    add [hl]                                      ; $4b14: $86
    add a                                         ; $4b15: $87
    add [hl]                                      ; $4b16: $86
    add a                                         ; $4b17: $87
    add [hl]                                      ; $4b18: $86
    add a                                         ; $4b19: $87
    add [hl]                                      ; $4b1a: $86
    add a                                         ; $4b1b: $87
    adc h                                         ; $4b1c: $8c
    adc a                                         ; $4b1d: $8f
    ret z                                         ; $4b1e: $c8

    cp a                                          ; $4b1f: $bf
    ldh [$1f], a                                  ; $4b20: $e0 $1f
    ld h, d                                       ; $4b22: $62
    cp a                                          ; $4b23: $bf
    ret z                                         ; $4b24: $c8

    ccf                                           ; $4b25: $3f
    call c, $883f                                 ; $4b26: $dc $3f $88
    ld a, a                                       ; $4b29: $7f
    ld [c], a                                     ; $4b2a: $e2
    ccf                                           ; $4b2b: $3f
    add b                                         ; $4b2c: $80
    ld a, a                                       ; $4b2d: $7f
    or b                                          ; $4b2e: $b0
    ldh a, [rSVBK]                                ; $4b2f: $f0 $70
    ldh a, [$30]                                  ; $4b31: $f0 $30
    ldh a, [$30]                                  ; $4b33: $f0 $30
    ldh a, [$b0]                                  ; $4b35: $f0 $b0
    ldh a, [$30]                                  ; $4b37: $f0 $30
    ldh a, [$30]                                  ; $4b39: $f0 $30
    ldh a, [$30]                                  ; $4b3b: $f0 $30
    ldh a, [rSB]                                  ; $4b3d: $f0 $01
    ld bc, $0101                                  ; $4b3f: $01 $01 $01
    ld bc, $0101                                  ; $4b42: $01 $01 $01
    ld bc, $0101                                  ; $4b45: $01 $01 $01
    ld bc, $0101                                  ; $4b48: $01 $01 $01
    ld bc, $0101                                  ; $4b4b: $01 $01 $01
    xor b                                         ; $4b4e: $a8
    rst $18                                       ; $4b4f: $df
    pop hl                                        ; $4b50: $e1
    rst $18                                       ; $4b51: $df
    jp nz, $e0bf                                  ; $4b52: $c2 $bf $e0

    sbc a                                         ; $4b55: $9f
    ret                                           ; $4b56: $c9


    cp a                                          ; $4b57: $bf
    ret nz                                        ; $4b58: $c0

    cp a                                          ; $4b59: $bf
    ld [c], a                                     ; $4b5a: $e2
    cp a                                          ; $4b5b: $bf
    ret nz                                        ; $4b5c: $c0

    cp a                                          ; $4b5d: $bf
    adc l                                         ; $4b5e: $8d
    adc [hl]                                      ; $4b5f: $8e
    call $cfce                                    ; $4b60: $cd $ce $cf
    adc $cd                                       ; $4b63: $ce $cd
    adc $cf                                       ; $4b65: $ce $cf
    call $cccf                                    ; $4b67: $cd $cf $cc
    adc $cd                                       ; $4b6a: $ce $cd
    adc $cd                                       ; $4b6c: $ce $cd
    sbc c                                         ; $4b6e: $99
    rst $38                                       ; $4b6f: $ff
    ld a, [de]                                    ; $4b70: $1a
    rst $38                                       ; $4b71: $ff
    ld a, $ff                                     ; $4b72: $3e $ff
    sbc l                                         ; $4b74: $9d
    rst $38                                       ; $4b75: $ff
    db $db                                        ; $4b76: $db
    rst $38                                       ; $4b77: $ff
    sbc a                                         ; $4b78: $9f
    rst $38                                       ; $4b79: $ff
    ld a, $fe                                     ; $4b7a: $3e $fe
    inc e                                         ; $4b7c: $1c
    db $fc                                        ; $4b7d: $fc
    ld h, b                                       ; $4b7e: $60
    ldh [$c0], a                                  ; $4b7f: $e0 $c0
    ret nz                                        ; $4b81: $c0

    ret nz                                        ; $4b82: $c0

    ret nz                                        ; $4b83: $c0

    add b                                         ; $4b84: $80
    add b                                         ; $4b85: $80
    sbc h                                         ; $4b86: $9c
    sbc h                                         ; $4b87: $9c
    ld a, $3e                                     ; $4b88: $3e $3e
    ld l, e                                       ; $4b8a: $6b
    ld [hl], a                                    ; $4b8b: $77
    ld d, l                                       ; $4b8c: $55
    ld l, e                                       ; $4b8d: $6b
    rlca                                          ; $4b8e: $07
    rlca                                          ; $4b8f: $07
    ld b, $07                                     ; $4b90: $06 $07
    ld b, $07                                     ; $4b92: $06 $07
    ld b, $07                                     ; $4b94: $06 $07
    ld b, $07                                     ; $4b96: $06 $07
    ld b, $07                                     ; $4b98: $06 $07
    ld b, $07                                     ; $4b9a: $06 $07
    ld b, $07                                     ; $4b9c: $06 $07
    sbc b                                         ; $4b9e: $98
    ld hl, sp+$18                                 ; $4b9f: $f8 $18
    ld hl, sp+$38                                 ; $4ba1: $f8 $38
    ld hl, sp+$18                                 ; $4ba3: $f8 $18
    ld hl, sp-$68                                 ; $4ba5: $f8 $98
    ld hl, sp+$18                                 ; $4ba7: $f8 $18
    ld hl, sp+$18                                 ; $4ba9: $f8 $18
    ld hl, sp+$38                                 ; $4bab: $f8 $38
    ld hl, sp-$38                                 ; $4bad: $f8 $c8
    rst $38                                       ; $4baf: $ff
    ret nz                                        ; $4bb0: $c0

    rst $38                                       ; $4bb1: $ff
    ld [c], a                                     ; $4bb2: $e2
    rst $38                                       ; $4bb3: $ff
    ret z                                         ; $4bb4: $c8

    rst $38                                       ; $4bb5: $ff
    call c, $c8ff                                 ; $4bb6: $dc $ff $c8
    rst $38                                       ; $4bb9: $ff
    ld [c], a                                     ; $4bba: $e2
    rst $38                                       ; $4bbb: $ff
    ret nz                                        ; $4bbc: $c0

    rst $38                                       ; $4bbd: $ff
    adc [hl]                                      ; $4bbe: $8e
    adc a                                         ; $4bbf: $8f
    adc l                                         ; $4bc0: $8d
    adc [hl]                                      ; $4bc1: $8e
    adc a                                         ; $4bc2: $8f
    adc [hl]                                      ; $4bc3: $8e
    adc l                                         ; $4bc4: $8d
    adc [hl]                                      ; $4bc5: $8e
    adc l                                         ; $4bc6: $8d
    adc [hl]                                      ; $4bc7: $8e
    adc l                                         ; $4bc8: $8d
    adc [hl]                                      ; $4bc9: $8e
    adc a                                         ; $4bca: $8f
    adc [hl]                                      ; $4bcb: $8e
    adc l                                         ; $4bcc: $8d
    adc [hl]                                      ; $4bcd: $8e
    adc b                                         ; $4bce: $88
    ld a, a                                       ; $4bcf: $7f
    add b                                         ; $4bd0: $80
    ld a, a                                       ; $4bd1: $7f
    and d                                         ; $4bd2: $a2
    ld a, a                                       ; $4bd3: $7f
    ld [$9cff], sp                                ; $4bd4: $08 $ff $9c
    ld a, a                                       ; $4bd7: $7f
    ld [$a2ff], sp                                ; $4bd8: $08 $ff $a2
    ld a, a                                       ; $4bdb: $7f
    nop                                           ; $4bdc: $00
    rst $38                                       ; $4bdd: $ff
    or b                                          ; $4bde: $b0
    ldh a, [$30]                                  ; $4bdf: $f0 $30
    ldh a, [$30]                                  ; $4be1: $f0 $30
    ldh a, [$30]                                  ; $4be3: $f0 $30
    ldh a, [$b0]                                  ; $4be5: $f0 $b0
    ldh a, [$30]                                  ; $4be7: $f0 $30
    ldh a, [$30]                                  ; $4be9: $f0 $30
    ldh a, [$30]                                  ; $4beb: $f0 $30
    ldh a, [$c8]                                  ; $4bed: $f0 $c8
    cp a                                          ; $4bef: $bf
    ret nz                                        ; $4bf0: $c0

    cp a                                          ; $4bf1: $bf
    ld [c], a                                     ; $4bf2: $e2
    cp a                                          ; $4bf3: $bf
    ret nz                                        ; $4bf4: $c0

    cp a                                          ; $4bf5: $bf
    ret                                           ; $4bf6: $c9


    cp a                                          ; $4bf7: $bf
    ret nz                                        ; $4bf8: $c0

    cp a                                          ; $4bf9: $bf
    ld [c], a                                     ; $4bfa: $e2
    cp a                                          ; $4bfb: $bf
    ret nz                                        ; $4bfc: $c0

    cp a                                          ; $4bfd: $bf
    adc $cd                                       ; $4bfe: $ce $cd
    adc $cd                                       ; $4c00: $ce $cd
    adc $cd                                       ; $4c02: $ce $cd
    adc $cd                                       ; $4c04: $ce $cd
    rst $08                                       ; $4c06: $cf
    call $cfcc                                    ; $4c07: $cd $cc $cf
    adc $cd                                       ; $4c0a: $ce $cd
    adc $cd                                       ; $4c0c: $ce $cd
    sbc b                                         ; $4c0e: $98
    ld hl, sp+$18                                 ; $4c0f: $f8 $18
    ld hl, sp+$38                                 ; $4c11: $f8 $38
    ld hl, sp-$68                                 ; $4c13: $f8 $98
    ld hl, sp-$28                                 ; $4c15: $f8 $d8
    ld hl, sp-$67                                 ; $4c17: $f8 $99
    ld sp, hl                                     ; $4c19: $f9
    add hl, sp                                    ; $4c1a: $39
    ld sp, hl                                     ; $4c1b: $f9
    add hl, de                                    ; $4c1c: $19
    ld sp, hl                                     ; $4c1d: $f9
    reti                                          ; $4c1e: $d9


    rst $28                                       ; $4c1f: $ef
    pop de                                        ; $4c20: $d1
    rst $28                                       ; $4c21: $ef
    db $e3                                        ; $4c22: $e3
    rst $18                                       ; $4c23: $df
    pop hl                                        ; $4c24: $e1
    rst $18                                       ; $4c25: $df
    jp hl                                         ; $4c26: $e9


    rst $18                                       ; $4c27: $df
    and b                                         ; $4c28: $a0
    rst $18                                       ; $4c29: $df
    pop hl                                        ; $4c2a: $e1
    rst $18                                       ; $4c2b: $df
    and b                                         ; $4c2c: $a0
    rst $18                                       ; $4c2d: $df
    add b                                         ; $4c2e: $80
    add b                                         ; $4c2f: $80
    add b                                         ; $4c30: $80
    add b                                         ; $4c31: $80
    add b                                         ; $4c32: $80
    add b                                         ; $4c33: $80
    add b                                         ; $4c34: $80
    add b                                         ; $4c35: $80
    add b                                         ; $4c36: $80
    add b                                         ; $4c37: $80
    ret nz                                        ; $4c38: $c0

    ret nz                                        ; $4c39: $c0

    ret nz                                        ; $4c3a: $c0

    ret nz                                        ; $4c3b: $c0

    ret nz                                        ; $4c3c: $c0

    ret nz                                        ; $4c3d: $c0

    ld b, $07                                     ; $4c3e: $06 $07
    ld b, $07                                     ; $4c40: $06 $07
    ld b, $07                                     ; $4c42: $06 $07
    ld b, $07                                     ; $4c44: $06 $07
    ld b, $07                                     ; $4c46: $06 $07
    rlca                                          ; $4c48: $07
    rlca                                          ; $4c49: $07
    ld b, $07                                     ; $4c4a: $06 $07
    rlca                                          ; $4c4c: $07
    rlca                                          ; $4c4d: $07
    cp b                                          ; $4c4e: $b8
    ld hl, sp+$18                                 ; $4c4f: $f8 $18
    ld hl, sp+$38                                 ; $4c51: $f8 $38
    ld hl, sp+$18                                 ; $4c53: $f8 $18
    ld hl, sp-$44                                 ; $4c55: $f8 $bc
    db $fc                                        ; $4c57: $fc
    inc a                                         ; $4c58: $3c
    db $fc                                        ; $4c59: $fc
    inc a                                         ; $4c5a: $3c
    db $fc                                        ; $4c5b: $fc
    inc a                                         ; $4c5c: $3c
    db $fc                                        ; $4c5d: $fc
    adc l                                         ; $4c5e: $8d
    adc [hl]                                      ; $4c5f: $8e
    adc l                                         ; $4c60: $8d
    adc [hl]                                      ; $4c61: $8e
    adc a                                         ; $4c62: $8f
    adc [hl]                                      ; $4c63: $8e
    adc l                                         ; $4c64: $8d
    adc [hl]                                      ; $4c65: $8e
    adc h                                         ; $4c66: $8c
    adc a                                         ; $4c67: $8f
    adc l                                         ; $4c68: $8d
    adc [hl]                                      ; $4c69: $8e
    adc [hl]                                      ; $4c6a: $8e
    adc a                                         ; $4c6b: $8f
    adc h                                         ; $4c6c: $8c
    adc a                                         ; $4c6d: $8f
    adc b                                         ; $4c6e: $88
    rst $38                                       ; $4c6f: $ff
    ret nz                                        ; $4c70: $c0

    cp a                                          ; $4c71: $bf
    and d                                         ; $4c72: $a2
    rst $38                                       ; $4c73: $ff
    add b                                         ; $4c74: $80
    rst $38                                       ; $4c75: $ff
    ret                                           ; $4c76: $c9


    rst $38                                       ; $4c77: $ff
    add b                                         ; $4c78: $80
    rst $38                                       ; $4c79: $ff
    and d                                         ; $4c7a: $a2
    rst $38                                       ; $4c7b: $ff
    add b                                         ; $4c7c: $80
    rst $38                                       ; $4c7d: $ff
    call z, $cccf                                 ; $4c7e: $cc $cf $cc
    rst $08                                       ; $4c81: $cf
    adc $cf                                       ; $4c82: $ce $cf
    call z, $cdcf                                 ; $4c84: $cc $cf $cd
    rst $08                                       ; $4c87: $cf
    call z, $cecf                                 ; $4c88: $cc $cf $ce
    rst $08                                       ; $4c8b: $cf
    call z, $99cf                                 ; $4c8c: $cc $cf $99
    ld sp, hl                                     ; $4c8f: $f9
    add hl, de                                    ; $4c90: $19
    ld sp, hl                                     ; $4c91: $f9
    add hl, sp                                    ; $4c92: $39
    ld sp, hl                                     ; $4c93: $f9
    sbc c                                         ; $4c94: $99
    ld sp, hl                                     ; $4c95: $f9
    reti                                          ; $4c96: $d9


    ld sp, hl                                     ; $4c97: $f9
    sbc c                                         ; $4c98: $99
    ld sp, hl                                     ; $4c99: $f9
    add hl, sp                                    ; $4c9a: $39
    ld sp, hl                                     ; $4c9b: $f9
    add hl, de                                    ; $4c9c: $19
    ld sp, hl                                     ; $4c9d: $f9
    xor b                                         ; $4c9e: $a8
    rst $18                                       ; $4c9f: $df
    ret nz                                        ; $4ca0: $c0

    cp a                                          ; $4ca1: $bf
    ld [c], a                                     ; $4ca2: $e2
    cp a                                          ; $4ca3: $bf
    ret nz                                        ; $4ca4: $c0

    cp a                                          ; $4ca5: $bf
    ret                                           ; $4ca6: $c9


    cp a                                          ; $4ca7: $bf
    ret nz                                        ; $4ca8: $c0

    cp a                                          ; $4ca9: $bf
    ld [c], a                                     ; $4caa: $e2
    cp a                                          ; $4cab: $bf
    ld b, b                                       ; $4cac: $40
    cp a                                          ; $4cad: $bf
    ret nz                                        ; $4cae: $c0

    ret nz                                        ; $4caf: $c0

    ret nz                                        ; $4cb0: $c0

    ret nz                                        ; $4cb1: $c0

    ret nz                                        ; $4cb2: $c0

    ret nz                                        ; $4cb3: $c0

    ret nz                                        ; $4cb4: $c0

    ret nz                                        ; $4cb5: $c0

    ret nz                                        ; $4cb6: $c0

    ret nz                                        ; $4cb7: $c0

    ret nz                                        ; $4cb8: $c0

    ret nz                                        ; $4cb9: $c0

    ret nz                                        ; $4cba: $c0

    ret nz                                        ; $4cbb: $c0

    ret nz                                        ; $4cbc: $c0

    ret nz                                        ; $4cbd: $c0

    inc bc                                        ; $4cbe: $03
    inc bc                                        ; $4cbf: $03
    inc bc                                        ; $4cc0: $03
    inc bc                                        ; $4cc1: $03
    inc bc                                        ; $4cc2: $03
    inc bc                                        ; $4cc3: $03
    inc bc                                        ; $4cc4: $03
    inc bc                                        ; $4cc5: $03
    ld bc, $0101                                  ; $4cc6: $01 $01 $01
    ld bc, $0101                                  ; $4cc9: $01 $01 $01
    ld bc, $bc01                                  ; $4ccc: $01 $01 $bc
    db $fc                                        ; $4ccf: $fc
    inc a                                         ; $4cd0: $3c
    db $fc                                        ; $4cd1: $fc
    inc a                                         ; $4cd2: $3c
    db $fc                                        ; $4cd3: $fc
    inc a                                         ; $4cd4: $3c
    db $fc                                        ; $4cd5: $fc
    cp [hl]                                       ; $4cd6: $be
    cp $3e                                        ; $4cd7: $fe $3e
    cp $36                                        ; $4cd9: $fe $36
    cp $36                                        ; $4cdb: $fe $36
    cp $68                                        ; $4cdd: $fe $68
    ld a, a                                       ; $4cdf: $7f
    ld h, b                                       ; $4ce0: $60
    ld a, a                                       ; $4ce1: $7f
    ld h, d                                       ; $4ce2: $62
    ld a, a                                       ; $4ce3: $7f
    ld l, b                                       ; $4ce4: $68
    ld a, a                                       ; $4ce5: $7f
    ld a, h                                       ; $4ce6: $7c
    ld a, a                                       ; $4ce7: $7f
    ld l, b                                       ; $4ce8: $68
    ld a, a                                       ; $4ce9: $7f
    ld h, d                                       ; $4cea: $62
    ld a, a                                       ; $4ceb: $7f
    ld h, b                                       ; $4cec: $60
    ld a, a                                       ; $4ced: $7f
    inc c                                         ; $4cee: $0c
    rrca                                          ; $4cef: $0f
    inc c                                         ; $4cf0: $0c
    rrca                                          ; $4cf1: $0f
    ld c, $0f                                     ; $4cf2: $0e $0f
    inc c                                         ; $4cf4: $0c
    rrca                                          ; $4cf5: $0f
    inc c                                         ; $4cf6: $0c
    rrca                                          ; $4cf7: $0f
    inc c                                         ; $4cf8: $0c
    rrca                                          ; $4cf9: $0f
    ld e, $1f                                     ; $4cfa: $1e $1f
    jr jr_04d_4d1d                                ; $4cfc: $18 $1f

Jump_04d_4cfe:
    ld bc, $0101                                  ; $4cfe: $01 $01 $01
    ld bc, $0101                                  ; $4d01: $01 $01 $01
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
    adc b                                         ; $4d0e: $88
    rst $38                                       ; $4d0f: $ff
    ret nz                                        ; $4d10: $c0

    rst $38                                       ; $4d11: $ff
    and d                                         ; $4d12: $a2
    rst $38                                       ; $4d13: $ff
    ret nz                                        ; $4d14: $c0

    rst $38                                       ; $4d15: $ff
    ret                                           ; $4d16: $c9


    rst $38                                       ; $4d17: $ff
    ret nz                                        ; $4d18: $c0

    rst $38                                       ; $4d19: $ff
    ld [c], a                                     ; $4d1a: $e2
    rst $38                                       ; $4d1b: $ff
    ret nz                                        ; $4d1c: $c0

jr_04d_4d1d:
    rst $38                                       ; $4d1d: $ff
    call z, $cccf                                 ; $4d1e: $cc $cf $cc
    rst $08                                       ; $4d21: $cf
    adc $cf                                       ; $4d22: $ce $cf
    db $ec                                        ; $4d24: $ec
    rst $28                                       ; $4d25: $ef
    db $ed                                        ; $4d26: $ed
    rst $28                                       ; $4d27: $ef
    ld l, [hl]                                    ; $4d28: $6e
    rst $28                                       ; $4d29: $ef
    db $ec                                        ; $4d2a: $ec
    rst $28                                       ; $4d2b: $ef
    ld h, [hl]                                    ; $4d2c: $66
    rst $20                                       ; $4d2d: $e7
    sbc e                                         ; $4d2e: $9b
    ei                                            ; $4d2f: $fb
    dec de                                        ; $4d30: $1b
    ei                                            ; $4d31: $fb
    dec sp                                        ; $4d32: $3b
    ei                                            ; $4d33: $fb
    sbc e                                         ; $4d34: $9b
    ei                                            ; $4d35: $fb
    db $db                                        ; $4d36: $db
    ei                                            ; $4d37: $fb
    cp e                                          ; $4d38: $bb
    ei                                            ; $4d39: $fb
    inc de                                        ; $4d3a: $13
    di                                            ; $4d3b: $f3
    inc sp                                        ; $4d3c: $33
    di                                            ; $4d3d: $f3
    ret z                                         ; $4d3e: $c8

    cp a                                          ; $4d3f: $bf
    nop                                           ; $4d40: $00
    rst $38                                       ; $4d41: $ff
    ld h, d                                       ; $4d42: $62
    cp a                                          ; $4d43: $bf
    add b                                         ; $4d44: $80
    rst $38                                       ; $4d45: $ff
    ret                                           ; $4d46: $c9


    rst $38                                       ; $4d47: $ff
    add b                                         ; $4d48: $80
    rst $38                                       ; $4d49: $ff
    ld [hl+], a                                   ; $4d4a: $22
    rst $38                                       ; $4d4b: $ff
    ld bc, $c8ff                                  ; $4d4c: $01 $ff $c8
    rst $38                                       ; $4d4f: $ff
    ret nz                                        ; $4d50: $c0

    rst $38                                       ; $4d51: $ff
    jp nz, $c8ff                                  ; $4d52: $c2 $ff $c8

    rst $38                                       ; $4d55: $ff
    db $fc                                        ; $4d56: $fc
    rst $38                                       ; $4d57: $ff
    ld l, b                                       ; $4d58: $68
    ld a, a                                       ; $4d59: $7f
    ld [hl], d                                    ; $4d5a: $72
    ld a, a                                       ; $4d5b: $7f
    jr nc, @+$41                                  ; $4d5c: $30 $3f

    sub [hl]                                      ; $4d5e: $96
    cp $16                                        ; $4d5f: $fe $16
    cp $37                                        ; $4d61: $fe $37
    rst $38                                       ; $4d63: $ff
    inc de                                        ; $4d64: $13
    rst $38                                       ; $4d65: $ff
    sbc e                                         ; $4d66: $9b
    rst $38                                       ; $4d67: $ff
    add hl, de                                    ; $4d68: $19
    rst $38                                       ; $4d69: $ff
    dec l                                         ; $4d6a: $2d
    rst $38                                       ; $4d6b: $ff
    inc c                                         ; $4d6c: $0c
    rst $38                                       ; $4d6d: $ff
    ld l, b                                       ; $4d6e: $68
    ld a, a                                       ; $4d6f: $7f
    ld h, b                                       ; $4d70: $60
    ld a, a                                       ; $4d71: $7f
    ld h, d                                       ; $4d72: $62
    ld a, a                                       ; $4d73: $7f
    ld l, b                                       ; $4d74: $68
    ld a, a                                       ; $4d75: $7f
    db $fc                                        ; $4d76: $fc
    rst $38                                       ; $4d77: $ff
    add sp, -$01                                  ; $4d78: $e8 $ff
    ld [c], a                                     ; $4d7a: $e2
    rst $38                                       ; $4d7b: $ff
    ldh a, [rIE]                                  ; $4d7c: $f0 $ff
    adc e                                         ; $4d7e: $8b
    rst $38                                       ; $4d7f: $ff
    inc bc                                        ; $4d80: $03
    rst $38                                       ; $4d81: $ff
    inc hl                                        ; $4d82: $23
    rst $38                                       ; $4d83: $ff
    dec bc                                        ; $4d84: $0b
    rst $38                                       ; $4d85: $ff
    sbc a                                         ; $4d86: $9f
    rst $38                                       ; $4d87: $ff
    dec bc                                        ; $4d88: $0b
    rst $38                                       ; $4d89: $ff
    ld h, $fe                                     ; $4d8a: $26 $fe
    ld b, $fe                                     ; $4d8c: $06 $fe
    inc e                                         ; $4d8e: $1c
    rra                                           ; $4d8f: $1f
    jr jr_04d_4db1                                ; $4d90: $18 $1f

    ld a, [de]                                    ; $4d92: $1a
    rra                                           ; $4d93: $1f
    jr jr_04d_4db5                                ; $4d94: $18 $1f

    inc e                                         ; $4d96: $1c
    rra                                           ; $4d97: $1f
    jr jr_04d_4db9                                ; $4d98: $18 $1f

    ld a, [de]                                    ; $4d9a: $1a
    rra                                           ; $4d9b: $1f
    jr c, @+$41                                   ; $4d9c: $38 $3f

    adc b                                         ; $4d9e: $88
    rst $38                                       ; $4d9f: $ff
    nop                                           ; $4da0: $00
    rst $38                                       ; $4da1: $ff
    ld [hl+], a                                   ; $4da2: $22
    rst $38                                       ; $4da3: $ff
    ld [$9cff], sp                                ; $4da4: $08 $ff $9c
    rst $38                                       ; $4da7: $ff
    ld a, [bc]                                    ; $4da8: $0a
    rst $38                                       ; $4da9: $ff
    ld [hl+], a                                   ; $4daa: $22
    rst $38                                       ; $4dab: $ff
    nop                                           ; $4dac: $00
    rst $38                                       ; $4dad: $ff
    or b                                          ; $4dae: $b0
    ldh a, [rSVBK]                                ; $4daf: $f0 $70

jr_04d_4db1:
    ldh a, [$30]                                  ; $4db1: $f0 $30
    ldh a, [rSVBK]                                ; $4db3: $f0 $70

jr_04d_4db5:
    ldh a, [$60]                                  ; $4db5: $f0 $60
    ldh [$60], a                                  ; $4db7: $e0 $60

jr_04d_4db9:
    ldh [$60], a                                  ; $4db9: $e0 $60
    ldh [$60], a                                  ; $4dbb: $e0 $60
    ldh [rBCPS], a                                ; $4dbd: $e0 $68
    ld a, a                                       ; $4dbf: $7f
    ld h, b                                       ; $4dc0: $60
    ld a, a                                       ; $4dc1: $7f
    ld [hl], d                                    ; $4dc2: $72
    ld a, a                                       ; $4dc3: $7f
    ld h, b                                       ; $4dc4: $60
    ld a, a                                       ; $4dc5: $7f
    ld sp, $383f                                  ; $4dc6: $31 $3f $38
    ccf                                           ; $4dc9: $3f
    ld [hl-], a                                   ; $4dca: $32
    ccf                                           ; $4dcb: $3f
    jr jr_04d_4ded                                ; $4dcc: $18 $1f

    and $e7                                       ; $4dce: $e6 $e7
    and $e7                                       ; $4dd0: $e6 $e7
    or [hl]                                       ; $4dd2: $b6
    rst $30                                       ; $4dd3: $f7
    or [hl]                                       ; $4dd4: $b6
    rst $30                                       ; $4dd5: $f7
    or a                                          ; $4dd6: $b7
    rst $30                                       ; $4dd7: $f7
    ld e, [hl]                                    ; $4dd8: $5e
    rst $38                                       ; $4dd9: $ff
    ld e, [hl]                                    ; $4dda: $5e
    rst $38                                       ; $4ddb: $ff
    ld l, $ff                                     ; $4ddc: $2e $ff
    or e                                          ; $4dde: $b3
    di                                            ; $4ddf: $f3
    inc sp                                        ; $4de0: $33
    di                                            ; $4de1: $f3
    inc sp                                        ; $4de2: $33
    di                                            ; $4de3: $f3
    or e                                          ; $4de4: $b3
    di                                            ; $4de5: $f3
    di                                            ; $4de6: $f3
    di                                            ; $4de7: $f3
    or e                                          ; $4de8: $b3
    di                                            ; $4de9: $f3
    inc sp                                        ; $4dea: $33
    di                                            ; $4deb: $f3
    inc sp                                        ; $4dec: $33

jr_04d_4ded:
    di                                            ; $4ded: $f3
    adc b                                         ; $4dee: $88
    rst $38                                       ; $4def: $ff
    ld bc, $23ff                                  ; $4df0: $01 $ff $23
    rst $38                                       ; $4df3: $ff
    add c                                         ; $4df4: $81
    rst $38                                       ; $4df5: $ff
    ret                                           ; $4df6: $c9


    rst $38                                       ; $4df7: $ff
    add l                                         ; $4df8: $85
    rst $38                                       ; $4df9: $ff
    ld hl, $05ff                                  ; $4dfa: $21 $ff $05
    rst $38                                       ; $4dfd: $ff
    ret nz                                        ; $4dfe: $c0

    ret nz                                        ; $4dff: $c0

    add b                                         ; $4e00: $80
    add b                                         ; $4e01: $80
    add b                                         ; $4e02: $80
    add b                                         ; $4e03: $80
    add b                                         ; $4e04: $80
    add b                                         ; $4e05: $80
    add b                                         ; $4e06: $80
    add b                                         ; $4e07: $80
    add b                                         ; $4e08: $80
    add b                                         ; $4e09: $80
    add b                                         ; $4e0a: $80
    add b                                         ; $4e0b: $80
    add b                                         ; $4e0c: $80
    add b                                         ; $4e0d: $80
    jr c, jr_04d_4e4f                             ; $4e0e: $38 $3f

    jr jr_04d_4e31                                ; $4e10: $18 $1f

    ld e, $1f                                     ; $4e12: $1e $1f
    inc c                                         ; $4e14: $0c
    rrca                                          ; $4e15: $0f
    ld c, $0f                                     ; $4e16: $0e $0f
    rlca                                          ; $4e18: $07
    rlca                                          ; $4e19: $07
    inc bc                                        ; $4e1a: $03
    inc bc                                        ; $4e1b: $03
    ld bc, $8601                                  ; $4e1c: $01 $01 $86
    rst $38                                       ; $4e1f: $ff
    rlca                                          ; $4e20: $07
    rst $38                                       ; $4e21: $ff
    inc hl                                        ; $4e22: $23
    rst $38                                       ; $4e23: $ff
    add hl, bc                                    ; $4e24: $09
    rst $38                                       ; $4e25: $ff
    sbc h                                         ; $4e26: $9c
    rst $38                                       ; $4e27: $ff
    ld [$a2ff], sp                                ; $4e28: $08 $ff $a2
    rst $38                                       ; $4e2b: $ff
    ret nz                                        ; $4e2c: $c0

    rst $38                                       ; $4e2d: $ff
    ld hl, sp-$01                                 ; $4e2e: $f8 $ff
    ld [hl], b                                    ; $4e30: $70

jr_04d_4e31:
    rst $38                                       ; $4e31: $ff
    or d                                          ; $4e32: $b2
    rst $38                                       ; $4e33: $ff
    cp b                                          ; $4e34: $b8
    rst $38                                       ; $4e35: $ff
    cp h                                          ; $4e36: $bc
    rst $38                                       ; $4e37: $ff
    jr c, @+$01                                   ; $4e38: $38 $ff

    ld [hl-], a                                   ; $4e3a: $32
    rst $38                                       ; $4e3b: $ff
    jr nc, @+$01                                  ; $4e3c: $30 $ff

    adc [hl]                                      ; $4e3e: $8e
    cp $06                                        ; $4e3f: $fe $06
    cp $26                                        ; $4e41: $fe $26
    cp $0e                                        ; $4e43: $fe $0e
    cp $9e                                        ; $4e45: $fe $9e
    cp $0e                                        ; $4e47: $fe $0e
    cp $26                                        ; $4e49: $fe $26
    cp $06                                        ; $4e4b: $fe $06
    cp $30                                        ; $4e4d: $fe $30

jr_04d_4e4f:
    ccf                                           ; $4e4f: $3f
    jr c, @+$41                                   ; $4e50: $38 $3f

    ld [hl-], a                                   ; $4e52: $32
    ccf                                           ; $4e53: $3f
    jr c, @+$41                                   ; $4e54: $38 $3f

    inc a                                         ; $4e56: $3c
    ccf                                           ; $4e57: $3f
    ld a, b                                       ; $4e58: $78
    ld a, a                                       ; $4e59: $7f
    ld h, d                                       ; $4e5a: $62
    ld a, a                                       ; $4e5b: $7f
    ldh [rIE], a                                  ; $4e5c: $e0 $ff
    adc d                                         ; $4e5e: $8a
    rst $38                                       ; $4e5f: $ff
    ld [bc], a                                    ; $4e60: $02
    rst $38                                       ; $4e61: $ff
    ld [hl+], a                                   ; $4e62: $22
    rst $38                                       ; $4e63: $ff
    inc b                                         ; $4e64: $04
    rst $38                                       ; $4e65: $ff
    sub l                                         ; $4e66: $95
    rst $38                                       ; $4e67: $ff
    dec c                                         ; $4e68: $0d
    rst $38                                       ; $4e69: $ff
    add hl, hl                                    ; $4e6a: $29
    rst $38                                       ; $4e6b: $ff
    dec bc                                        ; $4e6c: $0b
    rst $38                                       ; $4e6d: $ff
    ldh [$e0], a                                  ; $4e6e: $e0 $e0
    ret nz                                        ; $4e70: $c0

    ret nz                                        ; $4e71: $c0

    ret nz                                        ; $4e72: $c0

    ret nz                                        ; $4e73: $c0

    ret nz                                        ; $4e74: $c0

    ret nz                                        ; $4e75: $c0

    add b                                         ; $4e76: $80
    add b                                         ; $4e77: $80
    add b                                         ; $4e78: $80
    add b                                         ; $4e79: $80
    add b                                         ; $4e7a: $80
    add b                                         ; $4e7b: $80
    nop                                           ; $4e7c: $00
    nop                                           ; $4e7d: $00
    inc e                                         ; $4e7e: $1c
    rra                                           ; $4e7f: $1f
    inc c                                         ; $4e80: $0c
    rrca                                          ; $4e81: $0f
    ld c, $0f                                     ; $4e82: $0e $0f
    rlca                                          ; $4e84: $07
    rlca                                          ; $4e85: $07
    inc bc                                        ; $4e86: $03
    inc bc                                        ; $4e87: $03
    ld bc, $0001                                  ; $4e88: $01 $01 $00
    nop                                           ; $4e8b: $00
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    or [hl]                                       ; $4e8e: $b6
    rst $38                                       ; $4e8f: $ff
    ld d, $ff                                     ; $4e90: $16 $ff
    ld h, $ff                                     ; $4e92: $26 $ff
    ld b, $ff                                     ; $4e94: $06 $ff
    adc a                                         ; $4e96: $8f
    rst $38                                       ; $4e97: $ff
    add $ff                                       ; $4e98: $c6 $ff
    rst $30                                       ; $4e9a: $f7
    rst $38                                       ; $4e9b: $ff
    ld a, $3f                                     ; $4e9c: $3e $3f
    or e                                          ; $4e9e: $b3
    di                                            ; $4e9f: $f3
    inc sp                                        ; $4ea0: $33
    di                                            ; $4ea1: $f3
    scf                                           ; $4ea2: $37
    rst $30                                       ; $4ea3: $f7
    or [hl]                                       ; $4ea4: $b6
    rst $30                                       ; $4ea5: $f7
    rst $30                                       ; $4ea6: $f7
    rst $30                                       ; $4ea7: $f7
    cp [hl]                                       ; $4ea8: $be
    rst $38                                       ; $4ea9: $ff
    ld a, h                                       ; $4eaa: $7c
    rst $38                                       ; $4eab: $ff
    jr c, @+$01                                   ; $4eac: $38 $ff

    dec c                                         ; $4eae: $0d
    rst $38                                       ; $4eaf: $ff
    dec b                                         ; $4eb0: $05
    rst $38                                       ; $4eb1: $ff
    dec h                                         ; $4eb2: $25
    rst $38                                       ; $4eb3: $ff
    adc e                                         ; $4eb4: $8b
    rst $38                                       ; $4eb5: $ff
    set 7, a                                      ; $4eb6: $cb $ff
    adc d                                         ; $4eb8: $8a
    cp $36                                        ; $4eb9: $fe $36
    cp $16                                        ; $4ebb: $fe $16
    cp $e8                                        ; $4ebd: $fe $e8
    rst $38                                       ; $4ebf: $ff
    ld [hl], b                                    ; $4ec0: $70
    ld a, a                                       ; $4ec1: $7f
    inc a                                         ; $4ec2: $3c
    ccf                                           ; $4ec3: $3f
    rrca                                          ; $4ec4: $0f
    rrca                                          ; $4ec5: $0f
    inc bc                                        ; $4ec6: $03
    inc bc                                        ; $4ec7: $03
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00
    cp b                                          ; $4ece: $b8
    rst $38                                       ; $4ecf: $ff
    jr nc, @+$01                                  ; $4ed0: $30 $ff

    ld [hl-], a                                   ; $4ed2: $32
    rst $38                                       ; $4ed3: $ff
    cp b                                          ; $4ed4: $b8
    rst $38                                       ; $4ed5: $ff
    db $fc                                        ; $4ed6: $fc
    rst $38                                       ; $4ed7: $ff
    ld a, b                                       ; $4ed8: $78
    ld a, a                                       ; $4ed9: $7f
    ld a, [de]                                    ; $4eda: $1a
    rra                                           ; $4edb: $1f
    jr jr_04d_4efd                                ; $4edc: $18 $1f

    adc a                                         ; $4ede: $8f
    rst $38                                       ; $4edf: $ff
    rlca                                          ; $4ee0: $07
    rst $38                                       ; $4ee1: $ff
    daa                                           ; $4ee2: $27
    rst $38                                       ; $4ee3: $ff
    ld c, $ff                                     ; $4ee4: $0e $ff
    sbc h                                         ; $4ee6: $9c
    rst $38                                       ; $4ee7: $ff
    inc c                                         ; $4ee8: $0c
    rst $38                                       ; $4ee9: $ff
    ld l, $ff                                     ; $4eea: $2e $ff
    inc c                                         ; $4eec: $0c
    rst $38                                       ; $4eed: $ff
    ret z                                         ; $4eee: $c8

    rst $38                                       ; $4eef: $ff
    ret nz                                        ; $4ef0: $c0

    rst $38                                       ; $4ef1: $ff
    and d                                         ; $4ef2: $a2
    rst $38                                       ; $4ef3: $ff
    ld [$9cff], sp                                ; $4ef4: $08 $ff $9c
    rst $38                                       ; $4ef7: $ff
    ld [$21ff], sp                                ; $4ef8: $08 $ff $21
    rst $38                                       ; $4efb: $ff
    inc bc                                        ; $4efc: $03

jr_04d_4efd:
    rst $38                                       ; $4efd: $ff
    sbc e                                         ; $4efe: $9b
    rst $38                                       ; $4eff: $ff
    inc de                                        ; $4f00: $13
    rst $38                                       ; $4f01: $ff
    ld [hl], $fe                                  ; $4f02: $36 $fe
    ld h, $fe                                     ; $4f04: $26 $fe
    ld l, h                                       ; $4f06: $6c
    db $fc                                        ; $4f07: $fc
    call c, $98fc                                 ; $4f08: $dc $fc $98
    ld hl, sp+$38                                 ; $4f0b: $f8 $38
    ld hl, sp+$1f                                 ; $4f0d: $f8 $1f
    rra                                           ; $4f0f: $1f
    rlca                                          ; $4f10: $07
    rlca                                          ; $4f11: $07
    inc bc                                        ; $4f12: $03
    inc bc                                        ; $4f13: $03
    inc bc                                        ; $4f14: $03
    inc bc                                        ; $4f15: $03
    inc bc                                        ; $4f16: $03
    inc bc                                        ; $4f17: $03
    inc bc                                        ; $4f18: $03
    inc bc                                        ; $4f19: $03
    inc bc                                        ; $4f1a: $03
    inc bc                                        ; $4f1b: $03
    inc bc                                        ; $4f1c: $03
    inc bc                                        ; $4f1d: $03
    db $e4                                        ; $4f1e: $e4
    rst $38                                       ; $4f1f: $ff
    ld h, b                                       ; $4f20: $60
    rst $38                                       ; $4f21: $ff
    ld h, b                                       ; $4f22: $60
    rst $38                                       ; $4f23: $ff
    rst $28                                       ; $4f24: $ef
    rst $38                                       ; $4f25: $ff
    xor $ff                                       ; $4f26: $ee $ff
    pop hl                                        ; $4f28: $e1
    rst $38                                       ; $4f29: $ff
    ld a, a                                       ; $4f2a: $7f
    rst $38                                       ; $4f2b: $ff
    ld a, [hl]                                    ; $4f2c: $7e
    cp $ac                                        ; $4f2d: $fe $ac
    db $fc                                        ; $4f2f: $fc
    ld l, h                                       ; $4f30: $6c
    db $fc                                        ; $4f31: $fc
    ret c                                         ; $4f32: $d8

    ld hl, sp-$50                                 ; $4f33: $f8 $b0
    ldh a, [$60]                                  ; $4f35: $f0 $60
    ldh [$c0], a                                  ; $4f37: $e0 $c0
    ret nz                                        ; $4f39: $c0

    add b                                         ; $4f3a: $80
    add b                                         ; $4f3b: $80
    nop                                           ; $4f3c: $00
    nop                                           ; $4f3d: $00
    jr jr_04d_4f5f                                ; $4f3e: $18 $1f

    jr jr_04d_4f61                                ; $4f40: $18 $1f

    ld a, [de]                                    ; $4f42: $1a
    rra                                           ; $4f43: $1f
    jr jr_04d_4f65                                ; $4f44: $18 $1f

    inc e                                         ; $4f46: $1c
    rra                                           ; $4f47: $1f
    jr @+$21                                      ; $4f48: $18 $1f

    ld a, [de]                                    ; $4f4a: $1a
    rra                                           ; $4f4b: $1f
    jr @+$21                                      ; $4f4c: $18 $1f

    adc h                                         ; $4f4e: $8c
    rst $38                                       ; $4f4f: $ff
    inc c                                         ; $4f50: $0c
    rst $38                                       ; $4f51: $ff
    ld l, $ff                                     ; $4f52: $2e $ff
    dec c                                         ; $4f54: $0d
    rst $38                                       ; $4f55: $ff
    sbc l                                         ; $4f56: $9d
    rst $38                                       ; $4f57: $ff
    inc c                                         ; $4f58: $0c
    rst $38                                       ; $4f59: $ff
    cpl                                           ; $4f5a: $2f
    rst $38                                       ; $4f5b: $ff
    rrca                                          ; $4f5c: $0f
    rst $38                                       ; $4f5d: $ff
    add [hl]                                      ; $4f5e: $86

jr_04d_4f5f:
    rst $38                                       ; $4f5f: $ff
    inc c                                         ; $4f60: $0c

jr_04d_4f61:
    rst $38                                       ; $4f61: $ff
    add hl, sp                                    ; $4f62: $39
    rst $38                                       ; $4f63: $ff
    di                                            ; $4f64: $f3

jr_04d_4f65:
    rst $38                                       ; $4f65: $ff
    rst $08                                       ; $4f66: $cf
    rst $38                                       ; $4f67: $ff
    ld a, $fe                                     ; $4f68: $3e $fe
    ld hl, sp-$08                                 ; $4f6a: $f8 $f8
    ldh [$e0], a                                  ; $4f6c: $e0 $e0
    ld [hl], b                                    ; $4f6e: $70
    ldh a, [$e0]                                  ; $4f6f: $f0 $e0
    ldh [$c0], a                                  ; $4f71: $e0 $c0
    ret nz                                        ; $4f73: $c0

    add b                                         ; $4f74: $80
    add b                                         ; $4f75: $80
    nop                                           ; $4f76: $00
    nop                                           ; $4f77: $00
    nop                                           ; $4f78: $00
    nop                                           ; $4f79: $00
    nop                                           ; $4f7a: $00
    nop                                           ; $4f7b: $00
    nop                                           ; $4f7c: $00
    nop                                           ; $4f7d: $00
    nop                                           ; $4f7e: $00
    nop                                           ; $4f7f: $00
    ld bc, $0301                                  ; $4f80: $01 $01 $03
    ld [bc], a                                    ; $4f83: $02
    ld [bc], a                                    ; $4f84: $02
    inc bc                                        ; $4f85: $03
    ld [bc], a                                    ; $4f86: $02
    inc bc                                        ; $4f87: $03
    ld [bc], a                                    ; $4f88: $02
    inc bc                                        ; $4f89: $03
    ld [bc], a                                    ; $4f8a: $02
    inc bc                                        ; $4f8b: $03
    ld bc, $2001                                  ; $4f8c: $01 $01 $20
    jr nz, jr_04d_5001                            ; $4f8f: $20 $70

    ld d, b                                       ; $4f91: $50
    db $f4                                        ; $4f92: $f4
    call nc, $fede                                ; $4f93: $d4 $de $fe
    sbc $fa                                       ; $4f96: $de $fa
    jp c, $fafe                                   ; $4f98: $da $fe $fa

    cp $da                                        ; $4f9b: $fe $da
    cp $00                                        ; $4f9d: $fe $00
    nop                                           ; $4f9f: $00
    nop                                           ; $4fa0: $00
    nop                                           ; $4fa1: $00
    ld b, $06                                     ; $4fa2: $06 $06
    dec bc                                        ; $4fa4: $0b
    dec c                                         ; $4fa5: $0d
    dec c                                         ; $4fa6: $0d
    dec bc                                        ; $4fa7: $0b
    dec c                                         ; $4fa8: $0d
    dec bc                                        ; $4fa9: $0b
    add hl, bc                                    ; $4faa: $09
    rrca                                          ; $4fab: $0f
    dec c                                         ; $4fac: $0d
    dec bc                                        ; $4fad: $0b
    jr c, jr_04d_4fe8                             ; $4fae: $38 $38

    ld d, h                                       ; $4fb0: $54
    ld l, h                                       ; $4fb1: $6c
    ld h, h                                       ; $4fb2: $64
    ld e, h                                       ; $4fb3: $5c
    ld [hl], h                                    ; $4fb4: $74
    ld e, h                                       ; $4fb5: $5c
    ld a, h                                       ; $4fb6: $7c
    ld e, h                                       ; $4fb7: $5c
    ld [hl], h                                    ; $4fb8: $74
    ld e, h                                       ; $4fb9: $5c
    ld h, h                                       ; $4fba: $64
    ld e, h                                       ; $4fbb: $5c
    and d                                         ; $4fbc: $a2
    sbc $00                                       ; $4fbd: $de $00
    nop                                           ; $4fbf: $00
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00

Jump_04d_4fc6:
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    nop                                           ; $4fc9: $00
    ld h, b                                       ; $4fca: $60
    ld h, b                                       ; $4fcb: $60
    or b                                          ; $4fcc: $b0
    ret nc                                        ; $4fcd: $d0

    inc e                                         ; $4fce: $1c
    dec de                                        ; $4fcf: $1b
    ld a, [de]                                    ; $4fd0: $1a
    dec e                                         ; $4fd1: $1d
    ld [hl], $3b                                  ; $4fd2: $36 $3b
    jr c, jr_04d_5015                             ; $4fd4: $38 $3f

    inc a                                         ; $4fd6: $3c
    ccf                                           ; $4fd7: $3f
    jr c, jr_04d_5019                             ; $4fd8: $38 $3f

    ld [hl-], a                                   ; $4fda: $32
    ccf                                           ; $4fdb: $3f
    jr nc, jr_04d_501d                            ; $4fdc: $30 $3f

    adc [hl]                                      ; $4fde: $8e
    cp $06                                        ; $4fdf: $fe $06
    cp $23                                        ; $4fe1: $fe $23
    rst $38                                       ; $4fe3: $ff
    rrca                                          ; $4fe4: $0f
    rst $38                                       ; $4fe5: $ff
    sbc a                                         ; $4fe6: $9f
    rst $38                                       ; $4fe7: $ff

jr_04d_4fe8:
    dec bc                                        ; $4fe8: $0b
    rst $38                                       ; $4fe9: $ff
    inc hl                                        ; $4fea: $23
    rst $38                                       ; $4feb: $ff
    inc bc                                        ; $4fec: $03
    rst $38                                       ; $4fed: $ff
    inc a                                         ; $4fee: $3c
    dec sp                                        ; $4fef: $3b
    inc [hl]                                      ; $4ff0: $34
    dec sp                                        ; $4ff1: $3b
    ld [hl], $3b                                  ; $4ff2: $36 $3b
    inc a                                         ; $4ff4: $3c
    dec sp                                        ; $4ff5: $3b
    inc a                                         ; $4ff6: $3c
    dec sp                                        ; $4ff7: $3b
    inc a                                         ; $4ff8: $3c
    dec sp                                        ; $4ff9: $3b
    ld [hl], $3b                                  ; $4ffa: $36 $3b
    inc [hl]                                      ; $4ffc: $34
    dec sp                                        ; $4ffd: $3b
    adc a                                         ; $4ffe: $8f

Call_04d_4fff:
Jump_04d_4fff:
    rst $38                                       ; $4fff: $ff
    rlca                                          ; $5000: $07

jr_04d_5001:
    rst $38                                       ; $5001: $ff
    daa                                           ; $5002: $27
    rst $38                                       ; $5003: $ff
    ld c, $fe                                     ; $5004: $0e $fe
    sbc [hl]                                      ; $5006: $9e
    cp $0e                                        ; $5007: $fe $0e
    cp $26                                        ; $5009: $fe $26
    cp $06                                        ; $500b: $fe $06
    cp $c3                                        ; $500d: $fe $c3
    jp $8787                                      ; $500f: $c3 $87 $87


    ld c, $0f                                     ; $5012: $0e $0f
    dec c                                         ; $5014: $0d

jr_04d_5015:
    ld c, $1f                                     ; $5015: $0e $1f
    inc e                                         ; $5017: $1c
    dec de                                        ; $5018: $1b

jr_04d_5019:
    inc e                                         ; $5019: $1c
    ld e, $1d                                     ; $501a: $1e $1d

jr_04d_501c:
    dec de                                        ; $501c: $1b

jr_04d_501d:
    inc e                                         ; $501d: $1c
    ldh [$e0], a                                  ; $501e: $e0 $e0
    ldh a, [$f0]                                  ; $5020: $f0 $f0
    jr c, jr_04d_501c                             ; $5022: $38 $f8

    sbc b                                         ; $5024: $98
    ld a, b                                       ; $5025: $78
    sbc h                                         ; $5026: $9c
    db $fc                                        ; $5027: $fc
    inc c                                         ; $5028: $0c
    db $fc                                        ; $5029: $fc
    inc l                                         ; $502a: $2c
    db $fc                                        ; $502b: $fc
    inc c                                         ; $502c: $0c
    db $fc                                        ; $502d: $fc
    ld [bc], a                                    ; $502e: $02
    ld [bc], a                                    ; $502f: $02
    rlca                                          ; $5030: $07
    dec b                                         ; $5031: $05
    dec b                                         ; $5032: $05
    rlca                                          ; $5033: $07
    dec b                                         ; $5034: $05
    rlca                                          ; $5035: $07
    rlca                                          ; $5036: $07
    rlca                                          ; $5037: $07
    dec b                                         ; $5038: $05
    rlca                                          ; $5039: $07
    dec b                                         ; $503a: $05
    rlca                                          ; $503b: $07
    dec b                                         ; $503c: $05
    rlca                                          ; $503d: $07
    jp c, Jump_04d_4cfe                           ; $503e: $da $fe $4c

    ld a, h                                       ; $5041: $7c
    ld l, h                                       ; $5042: $6c
    ld a, h                                       ; $5043: $7c
    ld c, b                                       ; $5044: $48
    ld a, b                                       ; $5045: $78
    ld e, c                                       ; $5046: $59
    ld a, c                                       ; $5047: $79
    ld c, e                                       ; $5048: $4b
    ld a, d                                       ; $5049: $7a
    ld l, d                                       ; $504a: $6a
    ld a, e                                       ; $504b: $7b
    ld c, e                                       ; $504c: $4b
    ld a, e                                       ; $504d: $7b
    nop                                           ; $504e: $00
    nop                                           ; $504f: $00
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    add b                                         ; $5058: $80
    add b                                         ; $5059: $80
    add b                                         ; $505a: $80
    add b                                         ; $505b: $80
    add b                                         ; $505c: $80
    add b                                         ; $505d: $80
    add hl, bc                                    ; $505e: $09
    rrca                                          ; $505f: $0f

Jump_04d_5060:
    add hl, bc                                    ; $5060: $09
    rrca                                          ; $5061: $0f
    dec c                                         ; $5062: $0d
    rrca                                          ; $5063: $0f
    ld [$090f], sp                                ; $5064: $08 $0f $09
    rrca                                          ; $5067: $0f
    add hl, bc                                    ; $5068: $09
    rrca                                          ; $5069: $0f
    inc b                                         ; $506a: $04
    rlca                                          ; $506b: $07
    inc b                                         ; $506c: $04
    rlca                                          ; $506d: $07
    or d                                          ; $506e: $b2
    sbc $c3                                       ; $506f: $de $c3
    cp a                                          ; $5071: $bf
    rst $20                                       ; $5072: $e7
    sbc a                                         ; $5073: $9f
    db $d3                                        ; $5074: $d3
    cp a                                          ; $5075: $bf
    ei                                            ; $5076: $fb
    cp a                                          ; $5077: $bf

jr_04d_5078:
    db $d3                                        ; $5078: $d3
    cp a                                          ; $5079: $bf
    rst $00                                       ; $507a: $c7
    cp a                                          ; $507b: $bf
    jp $d0bf                                      ; $507c: $c3 $bf $d0


    or b                                          ; $507f: $b0
    ld d, b                                       ; $5080: $50
    or b                                          ; $5081: $b0
    ret nc                                        ; $5082: $d0

    ld [hl], b                                    ; $5083: $70
    sub b                                         ; $5084: $90
    ld [hl], b                                    ; $5085: $70
    jr nc, jr_04d_5078                            ; $5086: $30 $f0

    db $10                                        ; $5088: $10
    ldh a, [$50]                                  ; $5089: $f0 $50
    ldh a, [rNR10]                                ; $508b: $f0 $10
    ldh a, [$38]                                  ; $508d: $f0 $38
    ccf                                           ; $508f: $3f
    jr nc, jr_04d_50d1                            ; $5090: $30 $3f

    ld [hl-], a                                   ; $5092: $32
    ccf                                           ; $5093: $3f
    jr c, jr_04d_50d5                             ; $5094: $38 $3f

    inc a                                         ; $5096: $3c
    ccf                                           ; $5097: $3f
    jr c, @+$41                                   ; $5098: $38 $3f

    ld [hl-], a                                   ; $509a: $32
    ccf                                           ; $509b: $3f
    jr nc, jr_04d_50dd                            ; $509c: $30 $3f

    inc a                                         ; $509e: $3c
    dec sp                                        ; $509f: $3b
    inc [hl]                                      ; $50a0: $34
    dec sp                                        ; $50a1: $3b
    ld [hl], $3b                                  ; $50a2: $36 $3b
    inc a                                         ; $50a4: $3c
    dec sp                                        ; $50a5: $3b
    inc a                                         ; $50a6: $3c
    ccf                                           ; $50a7: $3f
    inc a                                         ; $50a8: $3c
    dec sp                                        ; $50a9: $3b
    ld [hl-], a                                   ; $50aa: $32
    ccf                                           ; $50ab: $3f
    jr nc, jr_04d_50ed                            ; $50ac: $30 $3f

    ld a, [de]                                    ; $50ae: $1a
    dec e                                         ; $50af: $1d
    ld e, $19                                     ; $50b0: $1e $19
    ld a, $39                                     ; $50b2: $3e $39
    inc a                                         ; $50b4: $3c
    dec sp                                        ; $50b5: $3b
    ld [hl], $39                                  ; $50b6: $36 $39
    inc a                                         ; $50b8: $3c
    dec sp                                        ; $50b9: $3b
    ld [hl], $3b                                  ; $50ba: $36 $3b
    inc [hl]                                      ; $50bc: $34
    dec sp                                        ; $50bd: $3b
    add h                                         ; $50be: $84
    db $fc                                        ; $50bf: $fc
    inc c                                         ; $50c0: $0c
    db $fc                                        ; $50c1: $fc
    ld h, $fe                                     ; $50c2: $26 $fe
    ld c, $fe                                     ; $50c4: $0e $fe
    sbc [hl]                                      ; $50c6: $9e
    cp $0e                                        ; $50c7: $fe $0e
    cp $26                                        ; $50c9: $fe $26
    cp $06                                        ; $50cb: $fe $06
    cp $07                                        ; $50cd: $fe $07
    rlca                                          ; $50cf: $07
    dec b                                         ; $50d0: $05

jr_04d_50d1:
    rlca                                          ; $50d1: $07
    inc b                                         ; $50d2: $04
    rlca                                          ; $50d3: $07
    ld [bc], a                                    ; $50d4: $02

jr_04d_50d5:
    inc bc                                        ; $50d5: $03
    ld [bc], a                                    ; $50d6: $02
    inc bc                                        ; $50d7: $03
    ld bc, $0001                                  ; $50d8: $01 $01 $00
    nop                                           ; $50db: $00
    nop                                           ; $50dc: $00

jr_04d_50dd:
    nop                                           ; $50dd: $00
    ld e, d                                       ; $50de: $5a
    ld a, e                                       ; $50df: $7b
    ld c, d                                       ; $50e0: $4a
    ld a, e                                       ; $50e1: $7b
    db $ec                                        ; $50e2: $ec
    rst $38                                       ; $50e3: $ff
    call Call_04d_59ff                            ; $50e4: $cd $ff $59
    rst $38                                       ; $50e7: $ff
    ld c, d                                       ; $50e8: $4a
    cp $ea                                        ; $50e9: $fe $ea
    cp $4c                                        ; $50eb: $fe $4c

jr_04d_50ed:
    ld a, h                                       ; $50ed: $7c
    add b                                         ; $50ee: $80
    add b                                         ; $50ef: $80
    add b                                         ; $50f0: $80
    add b                                         ; $50f1: $80
    add b                                         ; $50f2: $80
    add b                                         ; $50f3: $80
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    nop                                           ; $50f8: $00
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    nop                                           ; $50fb: $00
    nop                                           ; $50fc: $00
    nop                                           ; $50fd: $00
    inc bc                                        ; $50fe: $03
    inc bc                                        ; $50ff: $03
    add hl, sp                                    ; $5100: $39
    add hl, sp                                    ; $5101: $39
    ld d, h                                       ; $5102: $54
    ld l, h                                       ; $5103: $6c
    ld [hl], h                                    ; $5104: $74
    ld e, h                                       ; $5105: $5c
    ld a, h                                       ; $5106: $7c
    ld a, h                                       ; $5107: $7c
    ld [hl], l                                    ; $5108: $75
    ld e, l                                       ; $5109: $5d
    ld h, l                                       ; $510a: $65
    ld e, l                                       ; $510b: $5d
    ld b, l                                       ; $510c: $45
    ld a, l                                       ; $510d: $7d
    db $d3                                        ; $510e: $d3
    cp a                                          ; $510f: $bf

jr_04d_5110:
    jp nz, $c7bf                                  ; $5110: $c2 $bf $c7

    cp a                                          ; $5113: $bf
    jp nc, $fbbf                                  ; $5114: $d2 $bf $fb

    cp a                                          ; $5117: $bf
    ld d, c                                       ; $5118: $51
    cp a                                          ; $5119: $bf
    add l                                         ; $511a: $85
    ld a, a                                       ; $511b: $7f
    pop bc                                        ; $511c: $c1
    ccf                                           ; $511d: $3f
    jr nc, jr_04d_5110                            ; $511e: $30 $f0

    db $10                                        ; $5120: $10
    ldh a, [$60]                                  ; $5121: $f0 $60
    ldh [rNR41], a                                ; $5123: $e0 $20
    ldh [rLCDC], a                                ; $5125: $e0 $40
    ret nz                                        ; $5127: $c0

    ret nz                                        ; $5128: $c0

    ret nz                                        ; $5129: $c0

    add b                                         ; $512a: $80
    add b                                         ; $512b: $80
    jr c, jr_04d_5166                             ; $512c: $38 $38

    adc e                                         ; $512e: $8b
    rst $38                                       ; $512f: $ff
    inc bc                                        ; $5130: $03
    rst $38                                       ; $5131: $ff
    inc hl                                        ; $5132: $23
    rst $38                                       ; $5133: $ff
    dec bc                                        ; $5134: $0b
    rst $38                                       ; $5135: $ff
    sbc a                                         ; $5136: $9f
    rst $38                                       ; $5137: $ff
    dec bc                                        ; $5138: $0b
    rst $38                                       ; $5139: $ff
    daa                                           ; $513a: $27
    rst $38                                       ; $513b: $ff
    inc bc                                        ; $513c: $03
    rst $38                                       ; $513d: $ff
    inc a                                         ; $513e: $3c
    dec sp                                        ; $513f: $3b
    ld [hl], h                                    ; $5140: $74
    ld a, e                                       ; $5141: $7b
    ld h, [hl]                                    ; $5142: $66
    ld a, e                                       ; $5143: $7b
    ld a, b                                       ; $5144: $78
    ld [hl], a                                    ; $5145: $77
    ld l, h                                       ; $5146: $6c
    ld [hl], a                                    ; $5147: $77
    ld l, h                                       ; $5148: $6c
    ld [hl], e                                    ; $5149: $73
    ld l, d                                       ; $514a: $6a
    ld [hl], a                                    ; $514b: $77
    ld l, b                                       ; $514c: $68
    ld [hl], a                                    ; $514d: $77
    ld a, l                                       ; $514e: $7d
    ld e, l                                       ; $514f: $5d
    ld c, l                                       ; $5150: $4d
    ld a, l                                       ; $5151: $7d
    ld b, l                                       ; $5152: $45
    ld a, l                                       ; $5153: $7d
    ld d, l                                       ; $5154: $55
    ld a, l                                       ; $5155: $7d
    ld a, l                                       ; $5156: $7d
    ld a, l                                       ; $5157: $7d
    ld d, l                                       ; $5158: $55
    ld a, l                                       ; $5159: $7d
    ld b, l                                       ; $515a: $45
    ld a, l                                       ; $515b: $7d
    ld b, l                                       ; $515c: $45
    ld a, l                                       ; $515d: $7d
    sub c                                         ; $515e: $91
    ld a, a                                       ; $515f: $7f
    add c                                         ; $5160: $81
    ld a, a                                       ; $5161: $7f
    ld b, l                                       ; $5162: $45
    rst $38                                       ; $5163: $ff
    sub c                                         ; $5164: $91
    ld a, a                                       ; $5165: $7f

jr_04d_5166:
    add hl, sp                                    ; $5166: $39
    rst $38                                       ; $5167: $ff
    ld de, $45ff                                  ; $5168: $11 $ff $45
    rst $38                                       ; $516b: $ff
    ld bc, $54ff                                  ; $516c: $01 $ff $54
    ld l, h                                       ; $516f: $6c
    ld h, h                                       ; $5170: $64
    ld e, h                                       ; $5171: $5c
    ld h, h                                       ; $5172: $64
    ld e, h                                       ; $5173: $5c
    ld [hl], h                                    ; $5174: $74
    ld e, h                                       ; $5175: $5c
    ld e, h                                       ; $5176: $5c
    ld a, h                                       ; $5177: $7c
    ld [hl], h                                    ; $5178: $74
    ld e, h                                       ; $5179: $5c
    ld b, h                                       ; $517a: $44
    ld a, h                                       ; $517b: $7c
    ld b, h                                       ; $517c: $44
    ld a, h                                       ; $517d: $7c
    jr c, jr_04d_51bf                             ; $517e: $38 $3f

    jr nc, jr_04d_51c1                            ; $5180: $30 $3f

    ld a, [hl-]                                   ; $5182: $3a
    ccf                                           ; $5183: $3f
    jr @+$21                                      ; $5184: $18 $1f

    inc e                                         ; $5186: $1c
    rra                                           ; $5187: $1f
    jr jr_04d_51a9                                ; $5188: $18 $1f

    ld a, [de]                                    ; $518a: $1a
    rra                                           ; $518b: $1f
    jr jr_04d_51ad                                ; $518c: $18 $1f

    adc e                                         ; $518e: $8b
    rst $38                                       ; $518f: $ff
    inc bc                                        ; $5190: $03
    rst $38                                       ; $5191: $ff
    inc hl                                        ; $5192: $23
    rst $38                                       ; $5193: $ff
    dec bc                                        ; $5194: $0b
    rst $38                                       ; $5195: $ff
    sbc a                                         ; $5196: $9f
    rst $38                                       ; $5197: $ff
    dec bc                                        ; $5198: $0b
    rst $38                                       ; $5199: $ff
    daa                                           ; $519a: $27
    rst $38                                       ; $519b: $ff
    rlca                                          ; $519c: $07
    rst $38                                       ; $519d: $ff
    jr c, jr_04d_51df                             ; $519e: $38 $3f

    jr nc, @+$41                                  ; $51a0: $30 $3f

    ld [hl-], a                                   ; $51a2: $32
    ccf                                           ; $51a3: $3f
    jr c, jr_04d_51e5                             ; $51a4: $38 $3f

    inc a                                         ; $51a6: $3c
    ccf                                           ; $51a7: $3f
    cp b                                          ; $51a8: $b8

jr_04d_51a9:
    cp a                                          ; $51a9: $bf
    sbc d                                         ; $51aa: $9a
    sbc a                                         ; $51ab: $9f
    sbc b                                         ; $51ac: $98

jr_04d_51ad:
    sbc a                                         ; $51ad: $9f
    adc [hl]                                      ; $51ae: $8e
    cp $06                                        ; $51af: $fe $06
    cp $26                                        ; $51b1: $fe $26
    cp $0e                                        ; $51b3: $fe $0e
    cp $9e                                        ; $51b5: $fe $9e
    cp $0e                                        ; $51b7: $fe $0e
    cp $2c                                        ; $51b9: $fe $2c
    db $fc                                        ; $51bb: $fc
    inc c                                         ; $51bc: $0c
    db $fc                                        ; $51bd: $fc
    ld h, b                                       ; $51be: $60

jr_04d_51bf:
    ld a, a                                       ; $51bf: $7f
    ld l, b                                       ; $51c0: $68

jr_04d_51c1:
    ld [hl], a                                    ; $51c1: $77
    ld h, d                                       ; $51c2: $62
    ld a, a                                       ; $51c3: $7f
    ld l, b                                       ; $51c4: $68
    ld a, a                                       ; $51c5: $7f
    ld a, h                                       ; $51c6: $7c
    ld a, a                                       ; $51c7: $7f
    ld l, b                                       ; $51c8: $68
    ld a, a                                       ; $51c9: $7f
    ld h, d                                       ; $51ca: $62
    ld a, a                                       ; $51cb: $7f
    ld h, b                                       ; $51cc: $60
    ld a, a                                       ; $51cd: $7f
    ld d, l                                       ; $51ce: $55
    ld a, l                                       ; $51cf: $7d
    ld b, l                                       ; $51d0: $45
    ld a, l                                       ; $51d1: $7d
    ld b, l                                       ; $51d2: $45
    ld a, l                                       ; $51d3: $7d
    ld d, h                                       ; $51d4: $54
    ld a, h                                       ; $51d5: $7c
    ld a, [hl-]                                   ; $51d6: $3a
    ld a, $32                                     ; $51d7: $3e $32
    ld a, $25                                     ; $51d9: $3e $25
    ccf                                           ; $51db: $3f
    ld de, $111f                                  ; $51dc: $11 $1f $11

jr_04d_51df:
    rst $38                                       ; $51df: $ff
    ld bc, $45ff                                  ; $51e0: $01 $ff $45
    rst $38                                       ; $51e3: $ff
    sub d                                         ; $51e4: $92

jr_04d_51e5:
    cp $ba                                        ; $51e5: $fe $ba
    cp $92                                        ; $51e7: $fe $92
    cp $c6                                        ; $51e9: $fe $c6
    cp $82                                        ; $51eb: $fe $82
    cp $54                                        ; $51ed: $fe $54
    ld a, h                                       ; $51ef: $7c
    ld b, h                                       ; $51f0: $44
    ld a, h                                       ; $51f1: $7c
    ld b, h                                       ; $51f2: $44
    ld a, h                                       ; $51f3: $7c
    ld d, h                                       ; $51f4: $54
    ld a, h                                       ; $51f5: $7c
    cp h                                          ; $51f6: $bc
    db $fc                                        ; $51f7: $fc
    sub h                                         ; $51f8: $94
    db $fc                                        ; $51f9: $fc
    call nz, $88fc                                ; $51fa: $c4 $fc $88
    ld hl, sp+$18                                 ; $51fd: $f8 $18
    rra                                           ; $51ff: $1f
    inc c                                         ; $5200: $0c
    rrca                                          ; $5201: $0f
    ld c, $0f                                     ; $5202: $0e $0f
    inc c                                         ; $5204: $0c
    rrca                                          ; $5205: $0f
    inc c                                         ; $5206: $0c
    rrca                                          ; $5207: $0f
    inc c                                         ; $5208: $0c
    rrca                                          ; $5209: $0f
    ld b, $07                                     ; $520a: $06 $07
    ld b, $07                                     ; $520c: $06 $07
    adc l                                         ; $520e: $8d
    rst $38                                       ; $520f: $ff
    dec b                                         ; $5210: $05
    rst $38                                       ; $5211: $ff
    daa                                           ; $5212: $27
    rst $38                                       ; $5213: $ff
    dec c                                         ; $5214: $0d
    rst $38                                       ; $5215: $ff
    sbc l                                         ; $5216: $9d
    rst $38                                       ; $5217: $ff
    ld a, [bc]                                    ; $5218: $0a
    rst $38                                       ; $5219: $ff
    ld [hl+], a                                   ; $521a: $22
    rst $38                                       ; $521b: $ff
    ld [bc], a                                    ; $521c: $02
    rst $38                                       ; $521d: $ff
    sbc b                                         ; $521e: $98
    sbc a                                         ; $521f: $9f
    sbc b                                         ; $5220: $98
    sbc a                                         ; $5221: $9f
    sbc d                                         ; $5222: $9a
    sbc a                                         ; $5223: $9f
    sbc b                                         ; $5224: $98
    sbc a                                         ; $5225: $9f
    call c, $d8df                                 ; $5226: $dc $df $d8
    rst $18                                       ; $5229: $df
    jp c, $d8df                                   ; $522a: $da $df $d8

    rst $18                                       ; $522d: $df
    adc h                                         ; $522e: $8c
    db $fc                                        ; $522f: $fc
    inc c                                         ; $5230: $0c
    db $fc                                        ; $5231: $fc
    inc l                                         ; $5232: $2c
    db $fc                                        ; $5233: $fc
    inc c                                         ; $5234: $0c
    db $fc                                        ; $5235: $fc
    sbc h                                         ; $5236: $9c
    db $fc                                        ; $5237: $fc
    inc c                                         ; $5238: $0c
    db $fc                                        ; $5239: $fc
    inc l                                         ; $523a: $2c
    db $fc                                        ; $523b: $fc
    inc c                                         ; $523c: $0c
    db $fc                                        ; $523d: $fc
    adc [hl]                                      ; $523e: $8e
    cp $06                                        ; $523f: $fe $06
    cp $26                                        ; $5241: $fe $26
    cp $0e                                        ; $5243: $fe $0e
    cp $9e                                        ; $5245: $fe $9e
    cp $0e                                        ; $5247: $fe $0e
    cp $26                                        ; $5249: $fe $26
    cp $0c                                        ; $524b: $fe $0c
    db $fc                                        ; $524d: $fc
    inc de                                        ; $524e: $13
    rra                                           ; $524f: $1f
    ld [$0a0f], sp                                ; $5250: $08 $0f $0a
    rrca                                          ; $5253: $0f
    inc b                                         ; $5254: $04
    rlca                                          ; $5255: $07
    ld [bc], a                                    ; $5256: $02
    inc bc                                        ; $5257: $03
    ld bc, $0001                                  ; $5258: $01 $01 $00
    nop                                           ; $525b: $00
    nop                                           ; $525c: $00
    nop                                           ; $525d: $00
    sub d                                         ; $525e: $92
    cp $82                                        ; $525f: $fe $82
    cp $c7                                        ; $5261: $fe $c7
    rst $38                                       ; $5263: $ff
    sub d                                         ; $5264: $92
    rst $38                                       ; $5265: $ff
    cp d                                          ; $5266: $ba
    rst $38                                       ; $5267: $ff
    sub d                                         ; $5268: $92
    rst $38                                       ; $5269: $ff
    add $ff                                       ; $526a: $c6 $ff
    add e                                         ; $526c: $83
    rst $38                                       ; $526d: $ff
    xor b                                         ; $526e: $a8
    ld hl, sp-$78                                 ; $526f: $f8 $88
    ld hl, sp+$48                                 ; $5271: $f8 $48

Jump_04d_5273:
    ld hl, sp+$10                                 ; $5273: $f8 $10
    ldh a, [$50]                                  ; $5275: $f0 $50
    ldh a, [rNR41]                                ; $5277: $f0 $20
    ldh [rLCDC], a                                ; $5279: $e0 $40
    ret nz                                        ; $527b: $c0

    add b                                         ; $527c: $80
    add b                                         ; $527d: $80
    ld b, $07                                     ; $527e: $06 $07
    ld b, $07                                     ; $5280: $06 $07
    inc bc                                        ; $5282: $03
    inc bc                                        ; $5283: $03
    inc bc                                        ; $5284: $03
    inc bc                                        ; $5285: $03
    ld bc, $0101                                  ; $5286: $01 $01 $01
    ld bc, $0000                                  ; $5289: $01 $00 $00
    nop                                           ; $528c: $00
    nop                                           ; $528d: $00
    adc d                                         ; $528e: $8a
    rst $38                                       ; $528f: $ff
    ld [bc], a                                    ; $5290: $02
    rst $38                                       ; $5291: $ff
    ld hl, $09ff                                  ; $5292: $21 $ff $09
    rst $38                                       ; $5295: $ff
    sbc h                                         ; $5296: $9c
    rst $38                                       ; $5297: $ff
    adc b                                         ; $5298: $88
    rst $38                                       ; $5299: $ff
    jp nz, $e0ff                                  ; $529a: $c2 $ff $e0

    rst $38                                       ; $529d: $ff
    call c, Call_04d_78df                         ; $529e: $dc $df $78
    rst $38                                       ; $52a1: $ff
    ld a, h                                       ; $52a2: $7c
    rst $38                                       ; $52a3: $ff
    jr c, @+$01                                   ; $52a4: $38 $ff

    sbc h                                         ; $52a6: $9c
    rst $38                                       ; $52a7: $ff
    call z, Call_04d_6eff                         ; $52a8: $cc $ff $6e
    rst $38                                       ; $52ab: $ff
    inc l                                         ; $52ac: $2c
    rst $38                                       ; $52ad: $ff
    adc h                                         ; $52ae: $8c
    db $fc                                        ; $52af: $fc
    inc e                                         ; $52b0: $1c
    db $fc                                        ; $52b1: $fc
    inc l                                         ; $52b2: $2c
    db $fc                                        ; $52b3: $fc
    inc e                                         ; $52b4: $1c
    db $fc                                        ; $52b5: $fc
    sbc b                                         ; $52b6: $98
    ld hl, sp+$18                                 ; $52b7: $f8 $18
    ld hl, sp+$39                                 ; $52b9: $f8 $39
    ld sp, hl                                     ; $52bb: $f9
    add hl, de                                    ; $52bc: $19
    ld sp, hl                                     ; $52bd: $f9
    ld l, b                                       ; $52be: $68
    ld a, a                                       ; $52bf: $7f
    ld h, b                                       ; $52c0: $60
    ld a, a                                       ; $52c1: $7f
    ld [c], a                                     ; $52c2: $e2
    rst $38                                       ; $52c3: $ff
    ret z                                         ; $52c4: $c8

    rst $38                                       ; $52c5: $ff
    call c, $c8ff                                 ; $52c6: $dc $ff $c8
    rst $38                                       ; $52c9: $ff

Jump_04d_52ca:
    and d                                         ; $52ca: $a2
    rst $38                                       ; $52cb: $ff
    add b                                         ; $52cc: $80
    rst $38                                       ; $52cd: $ff
    adc h                                         ; $52ce: $8c
    db $fc                                        ; $52cf: $fc
    inc l                                         ; $52d0: $2c
    db $fc                                        ; $52d1: $fc
    inc l                                         ; $52d2: $2c
    db $fc                                        ; $52d3: $fc
    inc l                                         ; $52d4: $2c
    db $fc                                        ; $52d5: $fc
    ret c                                         ; $52d6: $d8

    ld hl, sp+$58                                 ; $52d7: $f8 $58
    ld hl, sp+$58                                 ; $52d9: $f8 $58
    ld hl, sp+$58                                 ; $52db: $f8 $58
    ld hl, sp+$74                                 ; $52dd: $f8 $74
    ld a, a                                       ; $52df: $7f
    jr c, jr_04d_5321                             ; $52e0: $38 $3f

    inc e                                         ; $52e2: $1c
    rra                                           ; $52e3: $1f
    ld c, $0f                                     ; $52e4: $0e $0f
    rlca                                          ; $52e6: $07
    rlca                                          ; $52e7: $07
    inc bc                                        ; $52e8: $03
    inc bc                                        ; $52e9: $03
    nop                                           ; $52ea: $00
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    adc h                                         ; $52ee: $8c
    rst $38                                       ; $52ef: $ff
    inc c                                         ; $52f0: $0c
    rst $38                                       ; $52f1: $ff
    ld l, $ff                                     ; $52f2: $2e $ff
    inc c                                         ; $52f4: $0c
    rst $38                                       ; $52f5: $ff
    inc e                                         ; $52f6: $1c
    rst $38                                       ; $52f7: $ff
    call z, $feff                                 ; $52f8: $cc $ff $fe
    rst $38                                       ; $52fb: $ff
    inc a                                         ; $52fc: $3c
    ccf                                           ; $52fd: $3f
    sbc c                                         ; $52fe: $99
    ld sp, hl                                     ; $52ff: $f9
    add hl, de                                    ; $5300: $19
    ld sp, hl                                     ; $5301: $f9
    dec sp                                        ; $5302: $3b
    ei                                            ; $5303: $fb
    rra                                           ; $5304: $1f
    rst $38                                       ; $5305: $ff
    sbc [hl]                                      ; $5306: $9e
    rst $38                                       ; $5307: $ff
    inc e                                         ; $5308: $1c
    rst $38                                       ; $5309: $ff
    ld a, [hl-]                                   ; $530a: $3a
    rst $38                                       ; $530b: $ff
    jr @+$01                                      ; $530c: $18 $ff

    adc b                                         ; $530e: $88
    rst $38                                       ; $530f: $ff
    add b                                         ; $5310: $80
    rst $38                                       ; $5311: $ff
    ld [hl+], a                                   ; $5312: $22
    rst $38                                       ; $5313: $ff
    add hl, bc                                    ; $5314: $09
    rst $38                                       ; $5315: $ff
    sbc l                                         ; $5316: $9d
    rst $38                                       ; $5317: $ff
    ld a, [bc]                                    ; $5318: $0a
    rst $38                                       ; $5319: $ff
    ld [hl+], a                                   ; $531a: $22
    rst $38                                       ; $531b: $ff
    dec b                                         ; $531c: $05
    rst $38                                       ; $531d: $ff
    or b                                          ; $531e: $b0
    ldh a, [$b0]                                  ; $531f: $f0 $b0

jr_04d_5321:
    ldh a, [$b0]                                  ; $5321: $f0 $b0
    ldh a, [$60]                                  ; $5323: $f0 $60
    ldh [$60], a                                  ; $5325: $e0 $60
    ldh [$60], a                                  ; $5327: $e0 $60
    ldh [$c0], a                                  ; $5329: $e0 $c0
    ret nz                                        ; $532b: $c0

    ret nz                                        ; $532c: $c0

    ret nz                                        ; $532d: $c0

    inc c                                         ; $532e: $0c
    rrca                                          ; $532f: $0f
    inc c                                         ; $5330: $0c
    rrca                                          ; $5331: $0f
    ld c, $0f                                     ; $5332: $0e $0f
    inc c                                         ; $5334: $0c
    rrca                                          ; $5335: $0f
    inc c                                         ; $5336: $0c
    rrca                                          ; $5337: $0f
    inc c                                         ; $5338: $0c
    rrca                                          ; $5339: $0f
    ld c, $0f                                     ; $533a: $0e $0f
    inc c                                         ; $533c: $0c
    rrca                                          ; $533d: $0f
    sbc b                                         ; $533e: $98
    rst $38                                       ; $533f: $ff
    jr @+$01                                      ; $5340: $18 $ff

    ld a, [hl-]                                   ; $5342: $3a
    rst $38                                       ; $5343: $ff
    dec de                                        ; $5344: $1b
    rst $38                                       ; $5345: $ff
    sbc e                                         ; $5346: $9b
    rst $38                                       ; $5347: $ff
    jr @+$01                                      ; $5348: $18 $ff

    dec a                                         ; $534a: $3d
    rst $38                                       ; $534b: $ff
    rra                                           ; $534c: $1f
    rst $38                                       ; $534d: $ff
    adc c                                         ; $534e: $89
    rst $38                                       ; $534f: $ff
    inc de                                        ; $5350: $13
    rst $38                                       ; $5351: $ff
    ld h, a                                       ; $5352: $67
    rst $38                                       ; $5353: $ff
    adc $fe                                       ; $5354: $ce $fe
    inc e                                         ; $5356: $1c
    db $fc                                        ; $5357: $fc
    ld a, b                                       ; $5358: $78
    ld hl, sp-$10                                 ; $5359: $f8 $f0
    ldh a, [$c0]                                  ; $535b: $f0 $c0
    ret nz                                        ; $535d: $c0

    add b                                         ; $535e: $80
    add b                                         ; $535f: $80
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    xor c                                         ; $536e: $a9
    xor d                                         ; $536f: $aa
    nop                                           ; $5370: $00
    or h                                          ; $5371: $b4
    or l                                          ; $5372: $b5
    or [hl]                                       ; $5373: $b6
    cp [hl]                                       ; $5374: $be
    cp a                                          ; $5375: $bf
    ret nz                                        ; $5376: $c0

    xor e                                         ; $5377: $ab
    xor h                                         ; $5378: $ac
    xor l                                         ; $5379: $ad
    or a                                          ; $537a: $b7
    cp b                                          ; $537b: $b8
    cp c                                          ; $537c: $b9
    pop bc                                        ; $537d: $c1
    jp nz, $c6c3                                  ; $537e: $c2 $c3 $c6

    rst $00                                       ; $5381: $c7
    ret z                                         ; $5382: $c8

    adc $cf                                       ; $5383: $ce $cf
    ret nc                                        ; $5385: $d0

    sub $d7                                       ; $5386: $d6 $d7
    ret c                                         ; $5388: $d8

    nop                                           ; $5389: $00
    ld bc, $0302                                  ; $538a: $01 $02 $03
    inc b                                         ; $538d: $04
    nop                                           ; $538e: $00
    inc c                                         ; $538f: $0c
    dec c                                         ; $5390: $0d
    ld c, $0f                                     ; $5391: $0e $0f
    dec d                                         ; $5393: $15
    ld d, $17                                     ; $5394: $16 $17
    jr jr_04d_5398                                ; $5396: $18 $00

jr_04d_5398:
    ld [hl+], a                                   ; $5398: $22
    inc hl                                        ; $5399: $23
    inc h                                         ; $539a: $24
    dec h                                         ; $539b: $25
    ld h, $30                                     ; $539c: $26 $30
    ld sp, $3209                                  ; $539e: $31 $09 $32
    inc sp                                        ; $53a1: $33
    dec sp                                        ; $53a2: $3b
    inc a                                         ; $53a3: $3c
    add hl, bc                                    ; $53a4: $09
    dec a                                         ; $53a5: $3d
    inc sp                                        ; $53a6: $33
    ld b, [hl]                                    ; $53a7: $46
    ld b, a                                       ; $53a8: $47
    add hl, bc                                    ; $53a9: $09
    ld c, b                                       ; $53aa: $48
    ld c, c                                       ; $53ab: $49
    nop                                           ; $53ac: $00
    ld d, b                                       ; $53ad: $50
    ld d, c                                       ; $53ae: $51
    ld d, d                                       ; $53af: $52
    ld d, e                                       ; $53b0: $53
    nop                                           ; $53b1: $00
    ld e, b                                       ; $53b2: $58
    ld e, c                                       ; $53b3: $59
    ld e, d                                       ; $53b4: $5a
    ld e, e                                       ; $53b5: $5b
    ld e, h                                       ; $53b6: $5c
    nop                                           ; $53b7: $00
    ld h, l                                       ; $53b8: $65
    ld h, [hl]                                    ; $53b9: $66
    ld h, a                                       ; $53ba: $67
    ld e, d                                       ; $53bb: $5a
    ld l, b                                       ; $53bc: $68
    ld l, c                                       ; $53bd: $69
    nop                                           ; $53be: $00
    ld h, l                                       ; $53bf: $65
    ld [hl], b                                    ; $53c0: $70
    ld [hl], c                                    ; $53c1: $71
    ld e, d                                       ; $53c2: $5a
    ld [hl], d                                    ; $53c3: $72
    ld [hl], e                                    ; $53c4: $73
    ld [hl], h                                    ; $53c5: $74
    ld h, l                                       ; $53c6: $65
    ld a, b                                       ; $53c7: $78
    ld a, c                                       ; $53c8: $79
    ld e, d                                       ; $53c9: $5a
    ld a, d                                       ; $53ca: $7a
    ld a, e                                       ; $53cb: $7b
    ld a, h                                       ; $53cc: $7c
    add c                                         ; $53cd: $81
    add d                                         ; $53ce: $82
    add e                                         ; $53cf: $83
    ld e, d                                       ; $53d0: $5a
    add h                                         ; $53d1: $84
    add l                                         ; $53d2: $85
    ld a, h                                       ; $53d3: $7c
    nop                                           ; $53d4: $00
    adc l                                         ; $53d5: $8d
    adc [hl]                                      ; $53d6: $8e
    ld e, d                                       ; $53d7: $5a
    adc a                                         ; $53d8: $8f
    sub b                                         ; $53d9: $90
    sub c                                         ; $53da: $91
    nop                                           ; $53db: $00
    sbc c                                         ; $53dc: $99
    sbc d                                         ; $53dd: $9a
    ld e, d                                       ; $53de: $5a
    sbc e                                         ; $53df: $9b
    sbc h                                         ; $53e0: $9c
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    and d                                         ; $53e4: $a2
    ld e, d                                       ; $53e5: $5a
    and e                                         ; $53e6: $a3
    and h                                         ; $53e7: $a4
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    xor [hl]                                      ; $53ea: $ae
    xor a                                         ; $53eb: $af
    or b                                          ; $53ec: $b0
    add hl, bc                                    ; $53ed: $09
    or c                                          ; $53ee: $b1
    or d                                          ; $53ef: $b2
    or e                                          ; $53f0: $b3
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00
    cp d                                          ; $53f3: $ba
    ld [de], a                                    ; $53f4: $12
    cp e                                          ; $53f5: $bb
    add hl, bc                                    ; $53f6: $09
    sub l                                         ; $53f7: $95
    cp h                                          ; $53f8: $bc
    cp l                                          ; $53f9: $bd
    nop                                           ; $53fa: $00
    nop                                           ; $53fb: $00
    cp d                                          ; $53fc: $ba
    call nz, $09ba                                ; $53fd: $c4 $ba $09
    sub l                                         ; $5400: $95
    push bc                                       ; $5401: $c5
    sub l                                         ; $5402: $95
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    ret                                           ; $5405: $c9


    jp z, $09cb                                   ; $5406: $ca $cb $09

    call z, $95cd                                 ; $5409: $cc $cd $95
    nop                                           ; $540c: $00
    nop                                           ; $540d: $00
    pop de                                        ; $540e: $d1
    jp nc, $09d3                                  ; $540f: $d2 $d3 $09

    call nc, $d57f                                ; $5412: $d4 $7f $d5
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    reti                                          ; $5417: $d9


    jp c, $09db                                   ; $5418: $da $db $09

    call c, $dedd                                 ; $541b: $dc $dd $de
    nop                                           ; $541e: $00
    nop                                           ; $541f: $00
    nop                                           ; $5420: $00
    rst $18                                       ; $5421: $df
    ldh [$09], a                                  ; $5422: $e0 $09
    pop hl                                        ; $5424: $e1
    ld [c], a                                     ; $5425: $e2
    db $e3                                        ; $5426: $e3
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    db $e4                                        ; $542b: $e4
    add hl, bc                                    ; $542c: $09
    push hl                                       ; $542d: $e5
    and $e7                                       ; $542e: $e6 $e7
    nop                                           ; $5430: $00
    ld e, l                                       ; $5431: $5d
    ld e, [hl]                                    ; $5432: $5e
    ld e, a                                       ; $5433: $5f
    ld h, b                                       ; $5434: $60
    add hl, bc                                    ; $5435: $09
    ld h, c                                       ; $5436: $61
    ld h, d                                       ; $5437: $62
    ld h, e                                       ; $5438: $63
    ld h, h                                       ; $5439: $64
    ld l, d                                       ; $543a: $6a
    add hl, bc                                    ; $543b: $09
    ld l, e                                       ; $543c: $6b
    ld l, h                                       ; $543d: $6c
    add hl, bc                                    ; $543e: $09
    ld h, c                                       ; $543f: $61
    ld l, l                                       ; $5440: $6d
    ld l, [hl]                                    ; $5441: $6e
    ld l, a                                       ; $5442: $6f
    ld [hl], l                                    ; $5443: $75
    add hl, bc                                    ; $5444: $09
    halt                                          ; $5445: $76
    ld l, h                                       ; $5446: $6c
    add hl, bc                                    ; $5447: $09
    ld h, c                                       ; $5448: $61
    ld [hl], a                                    ; $5449: $77
    add hl, bc                                    ; $544a: $09
    ld l, a                                       ; $544b: $6f
    ld a, l                                       ; $544c: $7d
    ld d, c                                       ; $544d: $51
    ld a, [hl]                                    ; $544e: $7e
    ld a, a                                       ; $544f: $7f
    add hl, bc                                    ; $5450: $09
    ld [de], a                                    ; $5451: $12
    add b                                         ; $5452: $80
    add hl, bc                                    ; $5453: $09
    ld l, a                                       ; $5454: $6f
    nop                                           ; $5455: $00
    add [hl]                                      ; $5456: $86

Jump_04d_5457:
    add a                                         ; $5457: $87
    adc b                                         ; $5458: $88
    add hl, bc                                    ; $5459: $09
    adc c                                         ; $545a: $89
    adc d                                         ; $545b: $8a
    adc e                                         ; $545c: $8b
    adc h                                         ; $545d: $8c
    nop                                           ; $545e: $00
    sub d                                         ; $545f: $92
    sub e                                         ; $5460: $93
    sub h                                         ; $5461: $94
    add hl, bc                                    ; $5462: $09
    sub l                                         ; $5463: $95
    sub [hl]                                      ; $5464: $96
    sub a                                         ; $5465: $97
    sbc b                                         ; $5466: $98
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    sbc l                                         ; $5469: $9d
    sbc [hl]                                      ; $546a: $9e
    add hl, bc                                    ; $546b: $09
    sbc a                                         ; $546c: $9f
    and b                                         ; $546d: $a0
    and c                                         ; $546e: $a1
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    and l                                         ; $5473: $a5
    add hl, bc                                    ; $5474: $09
    and [hl]                                      ; $5475: $a6
    and a                                         ; $5476: $a7
    xor b                                         ; $5477: $a8
    nop                                           ; $5478: $00
    dec b                                         ; $5479: $05
    ld b, $07                                     ; $547a: $06 $07
    ld [$0909], sp                                ; $547c: $08 $09 $09
    add hl, bc                                    ; $547f: $09
    ld a, [bc]                                    ; $5480: $0a
    dec bc                                        ; $5481: $0b
    add hl, bc                                    ; $5482: $09
    ld a, [bc]                                    ; $5483: $0a
    db $10                                        ; $5484: $10
    ld de, $0812                                  ; $5485: $11 $12 $08
    add hl, bc                                    ; $5488: $09
    add hl, bc                                    ; $5489: $09
    add hl, bc                                    ; $548a: $09
    inc de                                        ; $548b: $13
    inc d                                         ; $548c: $14
    add hl, bc                                    ; $548d: $09
    ld a, [bc]                                    ; $548e: $0a
    add hl, de                                    ; $548f: $19
    ld a, [de]                                    ; $5490: $1a
    dec de                                        ; $5491: $1b
    inc e                                         ; $5492: $1c
    dec e                                         ; $5493: $1d
    add hl, bc                                    ; $5494: $09
    add hl, bc                                    ; $5495: $09
    ld e, $1f                                     ; $5496: $1e $1f
    jr nz, jr_04d_54bb                            ; $5498: $20 $21

    nop                                           ; $549a: $00
    daa                                           ; $549b: $27
    jr z, jr_04d_54c7                             ; $549c: $28 $29

    ld a, [hl+]                                   ; $549e: $2a
    add hl, bc                                    ; $549f: $09
    dec hl                                        ; $54a0: $2b
    inc l                                         ; $54a1: $2c
    dec l                                         ; $54a2: $2d
    ld l, $2f                                     ; $54a3: $2e $2f
    nop                                           ; $54a5: $00
    inc [hl]                                      ; $54a6: $34
    dec [hl]                                      ; $54a7: $35
    ld [hl], $37                                  ; $54a8: $36 $37
    add hl, bc                                    ; $54aa: $09
    jr c, jr_04d_54e6                             ; $54ab: $38 $39

    add hl, bc                                    ; $54ad: $09
    ld a, [hl-]                                   ; $54ae: $3a
    rrca                                          ; $54af: $0f
    nop                                           ; $54b0: $00
    ld a, $3f                                     ; $54b1: $3e $3f
    ld b, b                                       ; $54b3: $40
    ld b, c                                       ; $54b4: $41
    add hl, bc                                    ; $54b5: $09
    ld b, d                                       ; $54b6: $42
    ld b, e                                       ; $54b7: $43
    ld b, h                                       ; $54b8: $44
    ld b, l                                       ; $54b9: $45
    nop                                           ; $54ba: $00

jr_04d_54bb:
    nop                                           ; $54bb: $00
    nop                                           ; $54bc: $00
    nop                                           ; $54bd: $00
    ld c, d                                       ; $54be: $4a
    ld c, e                                       ; $54bf: $4b
    add hl, bc                                    ; $54c0: $09
    ld c, h                                       ; $54c1: $4c
    ld c, l                                       ; $54c2: $4d
    ld c, [hl]                                    ; $54c3: $4e
    ld c, a                                       ; $54c4: $4f
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00

jr_04d_54c7:
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    ld d, h                                       ; $54ca: $54
    add hl, bc                                    ; $54cb: $09
    ld d, l                                       ; $54cc: $55
    ld d, [hl]                                    ; $54cd: $56
    ld d, a                                       ; $54ce: $57
    nop                                           ; $54cf: $00
    nop                                           ; $54d0: $00
    dec b                                         ; $54d1: $05
    ld b, $07                                     ; $54d2: $06 $07
    ld [$0909], sp                                ; $54d4: $08 $09 $09
    add hl, bc                                    ; $54d7: $09
    ld a, [bc]                                    ; $54d8: $0a
    dec bc                                        ; $54d9: $0b
    add hl, bc                                    ; $54da: $09
    ld a, [bc]                                    ; $54db: $0a
    db $10                                        ; $54dc: $10
    ld de, $0812                                  ; $54dd: $11 $12 $08
    add hl, bc                                    ; $54e0: $09
    add hl, bc                                    ; $54e1: $09
    add hl, bc                                    ; $54e2: $09
    inc de                                        ; $54e3: $13
    inc d                                         ; $54e4: $14
    add hl, bc                                    ; $54e5: $09

jr_04d_54e6:
    ld a, [bc]                                    ; $54e6: $0a
    add hl, de                                    ; $54e7: $19
    ld a, [de]                                    ; $54e8: $1a
    dec de                                        ; $54e9: $1b
    inc e                                         ; $54ea: $1c
    dec e                                         ; $54eb: $1d
    add hl, bc                                    ; $54ec: $09
    add hl, bc                                    ; $54ed: $09
    ld e, $1f                                     ; $54ee: $1e $1f
    jr nz, jr_04d_5513                            ; $54f0: $20 $21

    nop                                           ; $54f2: $00
    daa                                           ; $54f3: $27
    jr z, jr_04d_551f                             ; $54f4: $28 $29

    ld a, [hl+]                                   ; $54f6: $2a
    add hl, bc                                    ; $54f7: $09
    dec hl                                        ; $54f8: $2b
    inc l                                         ; $54f9: $2c
    dec l                                         ; $54fa: $2d
    ld l, $2f                                     ; $54fb: $2e $2f
    nop                                           ; $54fd: $00
    inc [hl]                                      ; $54fe: $34
    dec [hl]                                      ; $54ff: $35
    ld [hl], $37                                  ; $5500: $36 $37
    add hl, bc                                    ; $5502: $09
    jr c, @+$3b                                   ; $5503: $38 $39

    add hl, bc                                    ; $5505: $09
    ld a, [hl-]                                   ; $5506: $3a
    rrca                                          ; $5507: $0f
    nop                                           ; $5508: $00
    ld a, $3f                                     ; $5509: $3e $3f
    ld b, b                                       ; $550b: $40
    ld b, c                                       ; $550c: $41
    add hl, bc                                    ; $550d: $09
    ld b, d                                       ; $550e: $42
    ld b, e                                       ; $550f: $43
    ld b, h                                       ; $5510: $44
    ld b, l                                       ; $5511: $45
    nop                                           ; $5512: $00

jr_04d_5513:
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    ld c, d                                       ; $5516: $4a
    ld c, e                                       ; $5517: $4b
    add hl, bc                                    ; $5518: $09
    ld c, h                                       ; $5519: $4c
    ld c, l                                       ; $551a: $4d
    ld c, [hl]                                    ; $551b: $4e
    ld c, a                                       ; $551c: $4f
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00

jr_04d_551f:
    nop                                           ; $551f: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    ld d, h                                       ; $5522: $54
    add hl, bc                                    ; $5523: $09
    ld d, l                                       ; $5524: $55
    ld d, [hl]                                    ; $5525: $56
    ld d, a                                       ; $5526: $57
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    ld sp, hl                                     ; $5530: $f9
    nop                                           ; $5531: $00
    rst $38                                       ; $5532: $ff
    rst $38                                       ; $5533: $ff
    db $eb                                        ; $5534: $eb
    ld [$0055], a                                 ; $5535: $ea $55 $00
    nop                                           ; $5538: $00
    db $fc                                        ; $5539: $fc
    db $fc                                        ; $553a: $fc
    ld a, a                                       ; $553b: $7f
    ld [bc], a                                    ; $553c: $02
    cp $01                                        ; $553d: $fe $01
    inc b                                         ; $553f: $04
    xor d                                         ; $5540: $aa
    nop                                           ; $5541: $00
    db $fc                                        ; $5542: $fc
    db $f4                                        ; $5543: $f4
    ldh [$aa], a                                  ; $5544: $e0 $aa
    ldh a, [$e0]                                  ; $5546: $f0 $e0
    adc b                                         ; $5548: $88
    db $ec                                        ; $5549: $ec
    ldh [rNR43], a                                ; $554a: $e0 $22
    ld hl, sp-$18                                 ; $554c: $f8 $e8
    xor d                                         ; $554e: $aa
    db $fc                                        ; $554f: $fc
    db $e4                                        ; $5550: $e4
    xor e                                         ; $5551: $ab
    rst $38                                       ; $5552: $ff
    nop                                           ; $5553: $00
    ld d, a                                       ; $5554: $57
    nop                                           ; $5555: $00
    xor a                                         ; $5556: $af
    nop                                           ; $5557: $00
    rst $18                                       ; $5558: $df
    nop                                           ; $5559: $00
    xor [hl]                                      ; $555a: $ae
    rst $38                                       ; $555b: $ff
    ld bc, $027c                                  ; $555c: $01 $7c $02
    xor b                                         ; $555f: $a8
    dec b                                         ; $5560: $05
    ret nc                                        ; $5561: $d0

    ld a, [bc]                                    ; $5562: $0a
    or b                                          ; $5563: $b0
    rst $38                                       ; $5564: $ff
    rlca                                          ; $5565: $07
    ld [hl], b                                    ; $5566: $70
    ld a, [bc]                                    ; $5567: $0a
    ldh a, [$0d]                                  ; $5568: $f0 $0d
    or b                                          ; $556a: $b0
    ld [hl-], a                                   ; $556b: $32
    ld a, b                                       ; $556c: $78
    rst $38                                       ; $556d: $ff
    call $94cc                                    ; $556e: $cd $cc $94
    xor [hl]                                      ; $5571: $ae
    ld [hl], e                                    ; $5572: $73
    ld h, e                                       ; $5573: $63
    ld a, l                                       ; $5574: $7d
    db $fd                                        ; $5575: $fd
    rst $18                                       ; $5576: $df
    cp $dd                                        ; $5577: $fe $dd
    db $fd                                        ; $5579: $fd
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    adc [hl]                                      ; $557c: $8e
    xor $0f                                       ; $557d: $ee $0f
    rrca                                          ; $557f: $0f
    rst $30                                       ; $5580: $f7
    jr nc, @+$41                                  ; $5581: $30 $3f

    ld b, b                                       ; $5583: $40
    cp $e1                                        ; $5584: $fe $e1
    nop                                           ; $5586: $00
    ccf                                           ; $5587: $3f
    nop                                           ; $5588: $00
    rrca                                          ; $5589: $0f
    db $f4                                        ; $558a: $f4
    add b                                         ; $558b: $80
    ld a, [c]                                     ; $558c: $f2
    db $fc                                        ; $558d: $fc
    db $e4                                        ; $558e: $e4
    ld bc, $e0a0                                  ; $558f: $01 $a0 $e0
    rlca                                          ; $5592: $07
    nop                                           ; $5593: $00
    ld e, a                                       ; $5594: $5f
    nop                                           ; $5595: $00
    push af                                       ; $5596: $f5
    adc a                                         ; $5597: $8f
    db $fc                                        ; $5598: $fc
    ldh [$2f], a                                  ; $5599: $e0 $2f
    ld hl, sp-$20                                 ; $559b: $f8 $e0
    sbc [hl]                                      ; $559d: $9e
    ld bc, $017c                                  ; $559e: $01 $7c $01
    cp a                                          ; $55a1: $bf
    ld a, b                                       ; $55a2: $78
    rlca                                          ; $55a3: $07
    ldh a, [$0a]                                  ; $55a4: $f0 $0a
    ldh a, [rIF]                                  ; $55a6: $f0 $0f
    db $fc                                        ; $55a8: $fc
    db $e3                                        ; $55a9: $e3
    ldh [rIE], a                                  ; $55aa: $e0 $ff
    rra                                           ; $55ac: $1f
    ret nz                                        ; $55ad: $c0

    ld a, [hl+]                                   ; $55ae: $2a
    add b                                         ; $55af: $80
    ld a, a                                       ; $55b0: $7f
    ld bc, $03aa                                  ; $55b1: $01 $aa $03
    rst $38                                       ; $55b4: $ff
    ld [hl], h                                    ; $55b5: $74
    rlca                                          ; $55b6: $07
    xor b                                         ; $55b7: $a8
    rrca                                          ; $55b8: $0f
    ret nc                                        ; $55b9: $d0

    ld e, $a0                                     ; $55ba: $1e $a0
    inc a                                         ; $55bc: $3c
    rst $38                                       ; $55bd: $ff
    ld b, e                                       ; $55be: $43
    ld a, b                                       ; $55bf: $78
    add d                                         ; $55c0: $82
    ldh a, [$0d]                                  ; $55c1: $f0 $0d
    ldh [rSC], a                                  ; $55c3: $e0 $02
    call z, Call_000_1dff                         ; $55c5: $cc $ff $1d
    sbc h                                         ; $55c8: $9c
    ld [de], a                                    ; $55c9: $12
    or e                                          ; $55ca: $b3
    db $ed                                        ; $55cb: $ed
    push hl                                       ; $55cc: $e5
    ld d, [hl]                                    ; $55cd: $56
    ld e, h                                       ; $55ce: $5c
    rlca                                          ; $55cf: $07
    cp a                                          ; $55d0: $bf
    sbc l                                         ; $55d1: $9d
    db $dd                                        ; $55d2: $dd
    add b                                         ; $55d3: $80
    ldh a, [$6d]                                  ; $55d4: $f0 $6d
    ldh [$fe], a                                  ; $55d6: $e0 $fe
    db $e3                                        ; $55d8: $e3
    ei                                            ; $55d9: $fb
    db $e3                                        ; $55da: $e3
    add b                                         ; $55db: $80
    rst $30                                       ; $55dc: $f7
    rst $38                                       ; $55dd: $ff
    nop                                           ; $55de: $00
    add b                                         ; $55df: $80
    dec d                                         ; $55e0: $15
    ret nz                                        ; $55e1: $c0

jr_04d_55e2:
    nop                                           ; $55e2: $00
    ldh [rTIMA], a                                ; $55e3: $e0 $05
    ld [hl], b                                    ; $55e5: $70
    rst $38                                       ; $55e6: $ff
    ld [$05f0], sp                                ; $55e7: $08 $f0 $05
    ret nc                                        ; $55ea: $d0

    ld [bc], a                                    ; $55eb: $02
    ldh a, [rTIMA]                                ; $55ec: $f0 $05
    ld [hl], b                                    ; $55ee: $70
    rst $38                                       ; $55ef: $ff
    jr jr_04d_55e2                                ; $55f0: $18 $f0

    dec d                                         ; $55f2: $15
    ldh a, [$72]                                  ; $55f3: $f0 $72
    ldh a, [$a5]                                  ; $55f5: $f0 $a5
    ldh a, [$fd]                                  ; $55f7: $f0 $fd
    ld a, [$eafc]                                 ; $55f9: $fa $fc $ea
    dec b                                         ; $55fc: $05
    xor b                                         ; $55fd: $a8
    ld [bc], a                                    ; $55fe: $02
    db $f4                                        ; $55ff: $f4
    add c                                         ; $5600: $81
    ld [$c0ff], a                                 ; $5601: $ea $ff $c0
    db $fd                                        ; $5604: $fd
    xor d                                         ; $5605: $aa
    rst $38                                       ; $5606: $ff
    ld [hl], a                                    ; $5607: $77
    ld a, a                                       ; $5608: $7f
    ld a, [hl+]                                   ; $5609: $2a
    cp a                                          ; $560a: $bf
    rst $38                                       ; $560b: $ff
    dec e                                         ; $560c: $1d
    rst $18                                       ; $560d: $df
    ld [hl-], a                                   ; $560e: $32
    ccf                                           ; $560f: $3f
    ld a, l                                       ; $5610: $7d

jr_04d_5611:
    ld c, a                                       ; $5611: $4f
    call z, Call_04d_7d97                         ; $5612: $cc $97 $7d
    xor a                                         ; $5615: $af
    nop                                           ; $5616: $00
    rst $30                                       ; $5617: $f7
    ldh a, [$f0]                                  ; $5618: $f0 $f0
    inc c                                         ; $561a: $0c
    db $fc                                        ; $561b: $fc
    ld [bc], a                                    ; $561c: $02
    cp $e1                                        ; $561d: $fe $e1
    rrca                                          ; $561f: $0f
    nop                                           ; $5620: $00
    db $fc                                        ; $5621: $fc
    nop                                           ; $5622: $00
    ldh a, [$80]                                  ; $5623: $f0 $80
    ld a, [$c4f4]                                 ; $5625: $fa $f4 $c4
    add b                                         ; $5628: $80
    call $c388                                    ; $5629: $cd $88 $c3
    ccf                                           ; $562c: $3f
    ld e, [hl]                                    ; $562d: $5e
    nop                                           ; $562e: $00
    cp h                                          ; $562f: $bc
    inc bc                                        ; $5630: $03
    ld a, b                                       ; $5631: $78
    ld [bc], a                                    ; $5632: $02
    db $f4                                        ; $5633: $f4
    jp nz, $c1ec                                  ; $5634: $c2 $ec $c1

    ld a, a                                       ; $5637: $7f

jr_04d_5638:
    dec c                                         ; $5638: $0d
    pop hl                                        ; $5639: $e1
    ld a, [bc]                                    ; $563a: $0a
    jp $8734                                      ; $563b: $c3 $34 $87


    jr z, jr_04d_5638                             ; $563e: $28 $f8

    ret nz                                        ; $5640: $c0

    rra                                           ; $5641: $1f
    jr nz, @+$2e                                  ; $5642: $20 $2c

    ld e, l                                       ; $5644: $5d
    ld e, h                                       ; $5645: $5c
    sub d                                         ; $5646: $92
    nop                                           ; $5647: $00
    ld hl, sp+$00                                 ; $5648: $f8 $00
    rst $18                                       ; $564a: $df
    ld a, h                                       ; $564b: $7c
    call nz, Call_000_03bd                        ; $564c: $c4 $bd $03
    jr nz, jr_04d_5611                            ; $564f: $20 $c0

    rrca                                          ; $5651: $0f
    nop                                           ; $5652: $00
    ld e, [hl]                                    ; $5653: $5e
    ld bc, $e098                                  ; $5654: $01 $98 $e0
    dec b                                         ; $5657: $05
    ld a, [$c08c]                                 ; $5658: $fa $8c $c0
    rlca                                          ; $565b: $07
    adc b                                         ; $565c: $88
    ret nz                                        ; $565d: $c0

    dec c                                         ; $565e: $0d
    ldh a, [rIF]                                  ; $565f: $f0 $0f
    ldh [$0b], a                                  ; $5661: $e0 $0b
    rst $38                                       ; $5663: $ff
    jp $823f                                      ; $5664: $c3 $3f $82


    cpl                                           ; $5667: $2f
    rrca                                          ; $5668: $0f
    rst $38                                       ; $5669: $ff
    ld a, [bc]                                    ; $566a: $0a
    cp a                                          ; $566b: $bf
    rst $38                                       ; $566c: $ff
    ld a, $ff                                     ; $566d: $3e $ff

jr_04d_566f:
    jr z, jr_04d_566f                             ; $566f: $28 $fe

    ld hl, sp-$01                                 ; $5671: $f8 $ff
    xor b                                         ; $5673: $a8
    ld a, [c]                                     ; $5674: $f2
    rst $38                                       ; $5675: $ff
    ld l, h                                       ; $5676: $6c
    di                                            ; $5677: $f3
    adc [hl]                                      ; $5678: $8e
    ldh [$8f], a                                  ; $5679: $e0 $8f
    ret nc                                        ; $567b: $d0

    nop                                           ; $567c: $00

jr_04d_567d:
    cp d                                          ; $567d: $ba
    rst $38                                       ; $567e: $ff
    jr nc, @+$79                                  ; $567f: $30 $77

    jr nz, jr_04d_567d                            ; $5681: $20 $fa

    pop de                                        ; $5683: $d1
    db $fc                                        ; $5684: $fc
    inc sp                                        ; $5685: $33
    ldh a, [$c7]                                  ; $5686: $f0 $c7
    ld a, a                                       ; $5688: $7f
    ret z                                         ; $5689: $c8

    call $d900                                    ; $568a: $cd $00 $d9
    add b                                         ; $568d: $80
    rst $38                                       ; $568e: $ff
    db $fc                                        ; $568f: $fc
    and e                                         ; $5690: $a3
    add b                                         ; $5691: $80
    nop                                           ; $5692: $00
    rst $38                                       ; $5693: $ff
    ret nz                                        ; $5694: $c0

    dec d                                         ; $5695: $15
    ldh [rP1], a                                  ; $5696: $e0 $00
    ldh a, [$15]                                  ; $5698: $f0 $15
    ld [hl], b                                    ; $569a: $70
    jr c, @+$01                                   ; $569b: $38 $ff

    ldh a, [rHDMA5]                               ; $569d: $f0 $55
    ldh a, [$f2]                                  ; $569f: $f0 $f2
    ldh a, [$75]                                  ; $56a1: $f0 $75
    ldh a, [$f0]                                  ; $56a3: $f0 $f0
    rst $38                                       ; $56a5: $ff
    db $fc                                        ; $56a6: $fc
    pop de                                        ; $56a7: $d1
    db $fc                                        ; $56a8: $fc
    ldh a, [rIE]                                  ; $56a9: $f0 $ff
    and b                                         ; $56ab: $a0
    ld a, [$ffe0]                                 ; $56ac: $fa $e0 $ff
    rst $38                                       ; $56af: $ff
    add b                                         ; $56b0: $80
    ld [$ff81], a                                 ; $56b1: $ea $81 $ff
    ld [bc], a                                    ; $56b4: $02
    xor e                                         ; $56b5: $ab
    rlca                                          ; $56b6: $07
    rst $38                                       ; $56b7: $ff
    rst $38                                       ; $56b8: $ff
    ld a, [bc]                                    ; $56b9: $0a
    xor a                                         ; $56ba: $af
    rra                                           ; $56bb: $1f
    rst $38                                       ; $56bc: $ff
    ld a, [hl+]                                   ; $56bd: $2a
    cp [hl]                                       ; $56be: $be
    ld [hl], h                                    ; $56bf: $74
    rst $38                                       ; $56c0: $ff
    ld a, a                                       ; $56c1: $7f
    xor b                                         ; $56c2: $a8
    ld a, [$fdd0]                                 ; $56c3: $fa $d0 $fd
    jr nz, @-$13                                  ; $56c6: $20 $eb

    ld b, e                                       ; $56c8: $43
    rst $38                                       ; $56c9: $ff
    scf                                           ; $56ca: $37
    jp nz, $cd2f                                  ; $56cb: $c2 $2f $cd

    rra                                           ; $56ce: $1f
    jp nz, $9d3f                                  ; $56cf: $c2 $3f $9d

    rlca                                          ; $56d2: $07
    ld a, a                                       ; $56d3: $7f
    inc e                                         ; $56d4: $1c
    or e                                          ; $56d5: $b3
    nop                                           ; $56d6: $00
    rst $38                                       ; $56d7: $ff
    nop                                           ; $56d8: $00
    rst $38                                       ; $56d9: $ff
    add b                                         ; $56da: $80
    push de                                       ; $56db: $d5
    nop                                           ; $56dc: $00
    and l                                         ; $56dd: $a5
    ld hl, sp-$7d                                 ; $56de: $f8 $83
    rst $38                                       ; $56e0: $ff
    ld e, l                                       ; $56e1: $5d
    add b                                         ; $56e2: $80
    dec hl                                        ; $56e3: $2b
    ld b, b                                       ; $56e4: $40
    rla                                           ; $56e5: $17
    and b                                         ; $56e6: $a0
    rrca                                          ; $56e7: $0f
    ret nc                                        ; $56e8: $d0

    rst $38                                       ; $56e9: $ff
    xor a                                         ; $56ea: $af
    ldh a, [$7f]                                  ; $56eb: $f0 $7f
    ldh a, [$af]                                  ; $56ed: $f0 $af
    ldh a, [$df]                                  ; $56ef: $f0 $df
    ldh a, [$cf]                                  ; $56f1: $f0 $cf
    ccf                                           ; $56f3: $3f
    ldh a, [$7b]                                  ; $56f4: $f0 $7b
    call z, $ff00                                 ; $56f6: $cc $00 $ff
    db $eb                                        ; $56f9: $eb
    ld [$0707], a                                 ; $56fa: $ea $07 $07
    rst $38                                       ; $56fd: $ff
    jr jr_04d_571f                                ; $56fe: $18 $1f

    jr nz, jr_04d_5721                            ; $5700: $20 $1f

    jr nz, jr_04d_5704                            ; $5702: $20 $00

jr_04d_5704:
    rra                                           ; $5704: $1f
    nop                                           ; $5705: $00
    pop af                                        ; $5706: $f1
    dec b                                         ; $5707: $05
    add b                                         ; $5708: $80
    rst $38                                       ; $5709: $ff
    add b                                         ; $570a: $80
    db $ed                                        ; $570b: $ed
    add b                                         ; $570c: $80
    and b                                         ; $570d: $a0
    ld [hl], h                                    ; $570e: $74
    ld bc, $00aa                                  ; $570f: $01 $aa $00
    rst $38                                       ; $5712: $ff
    db $dd                                        ; $5713: $dd
    add b                                         ; $5714: $80
    dec hl                                        ; $5715: $2b
    jp $e237                                      ; $5716: $c3 $37 $e2


    rrca                                          ; $5719: $0f
    db $fd                                        ; $571a: $fd
    ld a, a                                       ; $571b: $7f
    rrca                                          ; $571c: $0f
    ld a, [c]                                     ; $571d: $f2
    rrca                                          ; $571e: $0f

jr_04d_571f:
    db $ed                                        ; $571f: $ed
    rra                                           ; $5720: $1f

jr_04d_5721:
    call c, Call_000_0013                         ; $5721: $dc $13 $00
    rst $38                                       ; $5724: $ff
    and h                                         ; $5725: $a4
    xor $8f                                       ; $5726: $ee $8f
    jp hl                                         ; $5728: $e9


    add b                                         ; $5729: $80
    db $dd                                        ; $572a: $dd
    add b                                         ; $572b: $80
    rst $38                                       ; $572c: $ff
    nop                                           ; $572d: $00
    db $ed                                        ; $572e: $ed
    db $dd                                        ; $572f: $dd
    ldh a, [$60]                                  ; $5730: $f0 $60
    ld [hl], a                                    ; $5732: $77
    ld a, d                                       ; $5733: $7a
    ld hl, sp-$1e                                 ; $5734: $f8 $e2
    xor e                                         ; $5736: $ab

jr_04d_5737:
    ld hl, sp-$20                                 ; $5737: $f8 $e0
    xor a                                         ; $5739: $af
    nop                                           ; $573a: $00
    or [hl]                                       ; $573b: $b6
    jr nc, jr_04d_573e                            ; $573c: $30 $00

jr_04d_573e:
    sbc h                                         ; $573e: $9c
    cp $f0                                        ; $573f: $fe $f0
    rst $28                                       ; $5741: $ef
    ldh [$e0], a                                  ; $5742: $e0 $e0
    jr jr_04d_573e                                ; $5744: $18 $f8

    inc b                                         ; $5746: $04
    ld hl, sp+$04                                 ; $5747: $f8 $04
    xor a                                         ; $5749: $af
    nop                                           ; $574a: $00
    ld hl, sp+$00                                 ; $574b: $f8 $00
    ret nz                                        ; $574d: $c0

    add b                                         ; $574e: $80
    ld sp, hl                                     ; $574f: $f9
    adc c                                         ; $5750: $89
    sub b                                         ; $5751: $90
    ld h, b                                       ; $5752: $60
    daa                                           ; $5753: $27
    ld a, [hl+]                                   ; $5754: $2a
    ldh a, [$60]                                  ; $5755: $f0 $60
    xor a                                         ; $5757: $af
    db $fc                                        ; $5758: $fc
    db $e4                                        ; $5759: $e4
    cp [hl]                                       ; $575a: $be
    adc b                                         ; $575b: $88
    ld h, b                                       ; $575c: $60
    ld hl, sp-$10                                 ; $575d: $f8 $f0
    ld h, c                                       ; $575f: $61
    nop                                           ; $5760: $00
    cp a                                          ; $5761: $bf
    db $ec                                        ; $5762: $ec
    rst $38                                       ; $5763: $ff
    rst $38                                       ; $5764: $ff
    nop                                           ; $5765: $00
    rst $18                                       ; $5766: $df
    nop                                           ; $5767: $00
    ld [$60f0], sp                                ; $5768: $08 $f0 $60
    ld [bc], a                                    ; $576b: $02
    ldh [rTIMA], a                                ; $576c: $e0 $05
    rst $30                                       ; $576e: $f7
    and b                                         ; $576f: $a0
    ld a, [bc]                                    ; $5770: $0a
    ldh a, [$fc]                                  ; $5771: $f0 $fc
    db $e3                                        ; $5773: $e3
    ld a, [de]                                    ; $5774: $1a
    ldh a, [rNR51]                                ; $5775: $f0 $25
    or b                                          ; $5777: $b0
    rst $38                                       ; $5778: $ff
    ld a, d                                       ; $5779: $7a
    ldh a, [$ad]                                  ; $577a: $f0 $ad
    ldh a, [$7a]                                  ; $577c: $f0 $7a
    ldh a, [$a7]                                  ; $577e: $f0 $a7
    ldh a, [rIE]                                  ; $5780: $f0 $ff
    jp c, $0df0                                   ; $5782: $da $f0 $0d

    and b                                         ; $5785: $a0
    ld [bc], a                                    ; $5786: $02
    ldh a, [$83]                                  ; $5787: $f0 $83
    add sp, $3f                                   ; $5789: $e8 $3f
    ret nz                                        ; $578b: $c0

    db $fc                                        ; $578c: $fc
    jr nc, @-$0c                                  ; $578d: $30 $f2

    ld a, b                                       ; $578f: $78
    ld c, l                                       ; $5790: $4d
    nop                                           ; $5791: $00
    rst $38                                       ; $5792: $ff
    add b                                         ; $5793: $80
    rst $38                                       ; $5794: $ff
    ld a, h                                       ; $5795: $7c
    add b                                         ; $5796: $80
    rst $18                                       ; $5797: $df
    add b                                         ; $5798: $80
    db $d3                                        ; $5799: $d3
    rst $38                                       ; $579a: $ff
    nop                                           ; $579b: $00
    db $ed                                        ; $579c: $ed
    inc e                                         ; $579d: $1c
    call c, Call_04d_7900                         ; $579e: $dc $00 $79
    ld hl, sp-$80                                 ; $57a1: $f8 $80
    rst $38                                       ; $57a3: $ff
    add b                                         ; $57a4: $80
    ld a, a                                       ; $57a5: $7f
    add b                                         ; $57a6: $80
    ld [hl], b                                    ; $57a7: $70
    ldh a, [$0a]                                  ; $57a8: $f0 $0a
    pop hl                                        ; $57aa: $e1
    ld d, $c3                                     ; $57ab: $16 $c3
    rlca                                          ; $57ad: $07
    jr z, jr_04d_5737                             ; $57ae: $28 $87

    ld e, b                                       ; $57b0: $58
    nop                                           ; $57b1: $00
    ret nz                                        ; $57b2: $c0

    nop                                           ; $57b3: $00
    rst $38                                       ; $57b4: $ff
    add b                                         ; $57b5: $80
    rst $38                                       ; $57b6: $ff
    add b                                         ; $57b7: $80
    ld a, a                                       ; $57b8: $7f
    add b                                         ; $57b9: $80
    ld [hl], d                                    ; $57ba: $72
    ld a, [hl]                                    ; $57bb: $7e
    ld hl, sp+$60                                 ; $57bc: $f8 $60
    ld a, [c]                                     ; $57be: $f2
    ld e, h                                       ; $57bf: $5c
    db $fd                                        ; $57c0: $fd
    sbc h                                         ; $57c1: $9c
    ld a, [c]                                     ; $57c2: $f2
    di                                            ; $57c3: $f3
    nop                                           ; $57c4: $00
    rst $38                                       ; $57c5: $ff
    ld hl, sp-$80                                 ; $57c6: $f8 $80
    ld a, a                                       ; $57c8: $7f
    add b                                         ; $57c9: $80
    ld a, a                                       ; $57ca: $7f
    add b                                         ; $57cb: $80
    ld l, d                                       ; $57cc: $6a
    inc hl                                        ; $57cd: $23
    ld d, a                                       ; $57ce: $57
    ld h, d                                       ; $57cf: $62
    adc a                                         ; $57d0: $8f
    db $ed                                        ; $57d1: $ed
    rra                                           ; $57d2: $1f
    rra                                           ; $57d3: $1f
    or d                                          ; $57d4: $b2
    ccf                                           ; $57d5: $3f
    ld a, l                                       ; $57d6: $7d
    rst $08                                       ; $57d7: $cf
    nop                                           ; $57d8: $00
    ld e, d                                       ; $57d9: $5a
    nop                                           ; $57da: $00
    ccf                                           ; $57db: $3f
    nop                                           ; $57dc: $00
    rst $18                                       ; $57dd: $df
    jp c, Jump_04d_6a80                           ; $57de: $da $80 $6a

    ld a, [hl+]                                   ; $57e1: $2a
    add b                                         ; $57e2: $80
    ld h, b                                       ; $57e3: $60
    ld a, [bc]                                    ; $57e4: $0a
    ret nc                                        ; $57e5: $d0

    ld a, b                                       ; $57e6: $78
    and l                                         ; $57e7: $a5
    cpl                                           ; $57e8: $2f
    ldh a, [$83]                                  ; $57e9: $f0 $83
    ld e, h                                       ; $57eb: $5c
    db $fc                                        ; $57ec: $fc
    nop                                           ; $57ed: $00
    ld a, [$3f00]                                 ; $57ee: $fa $00 $3f
    add b                                         ; $57f1: $80
    rst $38                                       ; $57f2: $ff
    add b                                         ; $57f3: $80
    or d                                          ; $57f4: $b2
    ld hl, sp+$63                                 ; $57f5: $f8 $63
    or a                                          ; $57f7: $b7
    rst $20                                       ; $57f8: $e7
    jr nc, jr_04d_5875                            ; $57f9: $30 $7a

    ld c, h                                       ; $57fb: $4c
    nop                                           ; $57fc: $00
    ld a, d                                       ; $57fd: $7a
    nop                                           ; $57fe: $00
    ccf                                           ; $57ff: $3f
    ccf                                           ; $5800: $3f
    ccf                                           ; $5801: $3f
    add b                                         ; $5802: $80
    db $eb                                        ; $5803: $eb
    ld a, a                                       ; $5804: $7f

jr_04d_5805:
    add b                                         ; $5805: $80
    dec e                                         ; $5806: $1d
    and b                                         ; $5807: $a0
    ccf                                           ; $5808: $3f
    add b                                         ; $5809: $80
    rst $38                                       ; $580a: $ff
    xor d                                         ; $580b: $aa
    nop                                           ; $580c: $00
    ret nc                                        ; $580d: $d0

    rst $28                                       ; $580e: $ef
    ld a, [bc]                                    ; $580f: $0a
    or b                                          ; $5810: $b0
    rlca                                          ; $5811: $07
    ld [hl], b                                    ; $5812: $70
    nop                                           ; $5813: $00
    add b                                         ; $5814: $80
    ld hl, sp+$02                                 ; $5815: $f8 $02
    db $fc                                        ; $5817: $fc
    db $e3                                        ; $5818: $e3
    inc bc                                        ; $5819: $03
    cp $26                                        ; $581a: $fe $26
    ld [c], a                                     ; $581c: $e2
    nop                                           ; $581d: $00
    cp a                                          ; $581e: $bf
    nop                                           ; $581f: $00
    call c, $c5c0                                 ; $5820: $dc $c0 $c5
    jr nz, jr_04d_5864                            ; $5823: $20 $3f

    ldh [rNR10], a                                ; $5825: $e0 $10
    dec b                                         ; $5827: $05
    and b                                         ; $5828: $a0
    nop                                           ; $5829: $00
    ret nz                                        ; $582a: $c0

    add b                                         ; $582b: $80
    rst $38                                       ; $582c: $ff
    add b                                         ; $582d: $80
    rst $00                                       ; $582e: $c7
    rst $18                                       ; $582f: $df
    dec c                                         ; $5830: $0d
    or b                                          ; $5831: $b0
    dec sp                                        ; $5832: $3b
    ld [hl], b                                    ; $5833: $70
    daa                                           ; $5834: $27
    nop                                           ; $5835: $00
    ld b, b                                       ; $5836: $40
    ld [hl], $f0                                  ; $5837: $36 $f0
    ldh [rP1], a                                  ; $5839: $e0 $00
    ld a, a                                       ; $583b: $7f
    add b                                         ; $583c: $80
    cp a                                          ; $583d: $bf
    nop                                           ; $583e: $00
    ld a, a                                       ; $583f: $7f
    nop                                           ; $5840: $00
    ld h, a                                       ; $5841: $67
    adc b                                         ; $5842: $88
    add e                                         ; $5843: $83
    ld [$10aa], sp                                ; $5844: $08 $aa $10
    ld a, a                                       ; $5847: $7f
    ld a, a                                       ; $5848: $7f

jr_04d_5849:
    jr z, jr_04d_5805                             ; $5849: $28 $ba

    ld e, b                                       ; $584b: $58
    db $fd                                        ; $584c: $fd
    jr nz, jr_04d_5849                            ; $584d: $20 $fa

    nop                                           ; $584f: $00
    xor e                                         ; $5850: $ab
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    rst $18                                       ; $5854: $df
    nop                                           ; $5855: $00
    ld e, a                                       ; $5856: $5f
    ld [bc], a                                    ; $5857: $02
    ld [de], a                                    ; $5858: $12
    ld [bc], a                                    ; $5859: $02
    ld h, e                                       ; $585a: $63
    db $10                                        ; $585b: $10
    ld [de], a                                    ; $585c: $12
    ld [bc], a                                    ; $585d: $02
    ld e, d                                       ; $585e: $5a
    ld a, h                                       ; $585f: $7c
    ld [$6303], a                                 ; $5860: $ea $03 $63
    db $10                                        ; $5863: $10

jr_04d_5864:
    ld [de], a                                    ; $5864: $12
    ld [bc], a                                    ; $5865: $02
    call nz, $df02                                ; $5866: $c4 $02 $df
    ld [bc], a                                    ; $5869: $02
    ld h, e                                       ; $586a: $63
    db $10                                        ; $586b: $10
    ld a, [c]                                     ; $586c: $f2
    ld bc, $02df                                  ; $586d: $01 $df $02
    ld [$6303], a                                 ; $5870: $ea $03 $63
    db $10                                        ; $5873: $10
    ld [de], a                                    ; $5874: $12

jr_04d_5875:
    ld [bc], a                                    ; $5875: $02
    ld [$c403], a                                 ; $5876: $ea $03 $c4
    ld [bc], a                                    ; $5879: $02
    ld h, e                                       ; $587a: $63
    db $10                                        ; $587b: $10
    ld [$0825], sp                                ; $587c: $08 $25 $08
    dec h                                         ; $587f: $25
    ld [$0825], sp                                ; $5880: $08 $25 $08
    dec h                                         ; $5883: $25
    jr jr_04d_5886                                ; $5884: $18 $00

jr_04d_5886:
    call Call_04d_5991                            ; $5886: $cd $91 $59
    call Call_04d_58bc                            ; $5889: $cd $bc $58
    ld a, $01                                     ; $588c: $3e $01
    ldh [rVBK], a                                 ; $588e: $e0 $4f
    ld hl, $d000                                  ; $5890: $21 $00 $d0
    ld de, $9000                                  ; $5893: $11 $00 $90
    ld c, $80                                     ; $5896: $0e $80
    call Call_000_2096                            ; $5898: $cd $96 $20
    ld hl, $d800                                  ; $589b: $21 $00 $d8
    ld de, $8800                                  ; $589e: $11 $00 $88
    ld c, $20                                     ; $58a1: $0e $20
    call Call_000_2096                            ; $58a3: $cd $96 $20
    ld hl, $5530                                  ; $58a6: $21 $30 $55
    ld de, $d000                                  ; $58a9: $11 $00 $d0
    call Call_000_1f2f                            ; $58ac: $cd $2f $1f
    call Call_04d_62c8                            ; $58af: $cd $c8 $62
    ld hl, $5854                                  ; $58b2: $21 $54 $58
    ld de, $0205                                  ; $58b5: $11 $05 $02
    call Call_000_0595                            ; $58b8: $cd $95 $05
    ret                                           ; $58bb: $c9


Call_04d_58bc:
    ld hl, $da00                                  ; $58bc: $21 $00 $da

jr_04d_58bf:
    ld a, [hl+]                                   ; $58bf: $2a
    cp $ff                                        ; $58c0: $fe $ff
    jr z, jr_04d_58e5                             ; $58c2: $28 $21

    ld e, a                                       ; $58c4: $5f
    ld a, [hl+]                                   ; $58c5: $2a
    ld d, a                                       ; $58c6: $57
    ld a, [hl+]                                   ; $58c7: $2a
    ld c, a                                       ; $58c8: $4f
    ld a, e                                       ; $58c9: $7b
    cp $03                                        ; $58ca: $fe $03
    jr z, jr_04d_58d2                             ; $58cc: $28 $04

    cp $02                                        ; $58ce: $fe $02
    jr nz, jr_04d_58e3                            ; $58d0: $20 $11

jr_04d_58d2:
    ld a, c                                       ; $58d2: $79
    and a                                         ; $58d3: $a7
    jr z, jr_04d_58e3                             ; $58d4: $28 $0d

    ld a, c                                       ; $58d6: $79
    rrca                                          ; $58d7: $0f
    rrca                                          ; $58d8: $0f
    rrca                                          ; $58d9: $0f
    and $07                                       ; $58da: $e6 $07
    ld e, $00                                     ; $58dc: $1e $00
    push hl                                       ; $58de: $e5
    call Call_04d_58e6                            ; $58df: $cd $e6 $58
    pop hl                                        ; $58e2: $e1

jr_04d_58e3:
    jr jr_04d_58bf                                ; $58e3: $18 $da

jr_04d_58e5:
    ret                                           ; $58e5: $c9


Call_04d_58e6:
    add a                                         ; $58e6: $87
    add a                                         ; $58e7: $87
    add a                                         ; $58e8: $87
    ld hl, $5951                                  ; $58e9: $21 $51 $59
    add l                                         ; $58ec: $85
    ld l, a                                       ; $58ed: $6f
    jr nc, jr_04d_58f1                            ; $58ee: $30 $01

    inc h                                         ; $58f0: $24

jr_04d_58f1:
    ld a, [hl+]                                   ; $58f1: $2a
    add d                                         ; $58f2: $82
    ld d, a                                       ; $58f3: $57
    ld a, [hl+]                                   ; $58f4: $2a
    add e                                         ; $58f5: $83
    ld b, a                                       ; $58f6: $47
    ld a, [hl+]                                   ; $58f7: $2a
    ld e, a                                       ; $58f8: $5f
    ld a, [hl+]                                   ; $58f9: $2a
    ld a, [hl+]                                   ; $58fa: $2a
    ld h, [hl]                                    ; $58fb: $66
    ld l, a                                       ; $58fc: $6f

jr_04d_58fd:
    push de                                       ; $58fd: $d5

jr_04d_58fe:
    ld a, [hl]                                    ; $58fe: $7e
    and a                                         ; $58ff: $a7
    jr z, jr_04d_5941                             ; $5900: $28 $3f

    bit 7, d                                      ; $5902: $cb $7a
    jr nz, jr_04d_5941                            ; $5904: $20 $3b

    ld a, d                                       ; $5906: $7a
    cp $14                                        ; $5907: $fe $14
    jr nc, jr_04d_5941                            ; $5909: $30 $36

    push bc                                       ; $590b: $c5
    push de                                       ; $590c: $d5
    push hl                                       ; $590d: $e5
    ld a, d                                       ; $590e: $7a
    ld l, [hl]                                    ; $590f: $6e
    ld h, $00                                     ; $5910: $26 $00
    add hl, hl                                    ; $5912: $29
    add hl, hl                                    ; $5913: $29
    add hl, hl                                    ; $5914: $29
    add hl, hl                                    ; $5915: $29
    ld de, $4028                                  ; $5916: $11 $28 $40
    add hl, de                                    ; $5919: $19
    ld e, l                                       ; $591a: $5d
    ld d, h                                       ; $591b: $54
    add a                                         ; $591c: $87
    add a                                         ; $591d: $87
    add a                                         ; $591e: $87
    add b                                         ; $591f: $80
    ld l, a                                       ; $5920: $6f
    ld h, $00                                     ; $5921: $26 $00
    add hl, hl                                    ; $5923: $29
    add hl, hl                                    ; $5924: $29
    add hl, hl                                    ; $5925: $29
    add hl, hl                                    ; $5926: $29
    ld a, $00                                     ; $5927: $3e $00
    add l                                         ; $5929: $85
    ld l, a                                       ; $592a: $6f
    ld a, h                                       ; $592b: $7c
    adc $d0                                       ; $592c: $ce $d0
    ld h, a                                       ; $592e: $67
    ld a, c                                       ; $592f: $79
    cp $08                                        ; $5930: $fe $08
    jr c, jr_04d_5936                             ; $5932: $38 $02

    ld c, $08                                     ; $5934: $0e $08

jr_04d_5936:
    push bc                                       ; $5936: $c5
    call Call_04d_639b                            ; $5937: $cd $9b $63
    pop bc                                        ; $593a: $c1
    dec c                                         ; $593b: $0d
    jr nz, jr_04d_5936                            ; $593c: $20 $f8

    pop hl                                        ; $593e: $e1
    pop de                                        ; $593f: $d1
    pop bc                                        ; $5940: $c1

jr_04d_5941:
    inc hl                                        ; $5941: $23
    inc d                                         ; $5942: $14
    dec e                                         ; $5943: $1d
    jr nz, jr_04d_58fe                            ; $5944: $20 $b8

    pop de                                        ; $5946: $d1
    inc b                                         ; $5947: $04
    ld a, c                                       ; $5948: $79
    sub $08                                       ; $5949: $d6 $08
    ld c, a                                       ; $594b: $4f
    jr z, jr_04d_5950                             ; $594c: $28 $02

    jr nc, jr_04d_58fd                            ; $594e: $30 $ad

jr_04d_5950:
    ret                                           ; $5950: $c9


    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    ld bc, $8801                                  ; $5953: $01 $01 $88
    ld b, h                                       ; $5956: $44
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595a: $00
    ld bc, $8902                                  ; $595b: $01 $02 $89
    ld b, h                                       ; $595e: $44
    nop                                           ; $595f: $00
    nop                                           ; $5960: $00
    rst $38                                       ; $5961: $ff
    nop                                           ; $5962: $00
    inc bc                                        ; $5963: $03
    inc bc                                        ; $5964: $03
    adc e                                         ; $5965: $8b
    ld b, h                                       ; $5966: $44
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    rst $38                                       ; $5969: $ff
    nop                                           ; $596a: $00
    inc bc                                        ; $596b: $03
    inc b                                         ; $596c: $04
    sub h                                         ; $596d: $94
    ld b, h                                       ; $596e: $44
    nop                                           ; $596f: $00
    nop                                           ; $5970: $00
    rst $38                                       ; $5971: $ff
    nop                                           ; $5972: $00
    inc bc                                        ; $5973: $03
    dec b                                         ; $5974: $05
    and b                                         ; $5975: $a0
    ld b, h                                       ; $5976: $44
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    rst $38                                       ; $5979: $ff
    nop                                           ; $597a: $00
    inc bc                                        ; $597b: $03
    ld b, $af                                     ; $597c: $06 $af
    ld b, h                                       ; $597e: $44

Call_04d_597f:
    nop                                           ; $597f: $00
    nop                                           ; $5980: $00
    rst $38                                       ; $5981: $ff
    nop                                           ; $5982: $00
    inc bc                                        ; $5983: $03
    rlca                                          ; $5984: $07
    pop bc                                        ; $5985: $c1
    ld b, h                                       ; $5986: $44
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    rst $38                                       ; $5989: $ff
    nop                                           ; $598a: $00
    inc bc                                        ; $598b: $03
    ld [$44d6], sp                                ; $598c: $08 $d6 $44
    nop                                           ; $598f: $00
    nop                                           ; $5990: $00

Call_04d_5991:
    ld hl, $da00                                  ; $5991: $21 $00 $da

jr_04d_5994:
    ld a, [hl+]                                   ; $5994: $2a
    cp $ff                                        ; $5995: $fe $ff
    jr z, jr_04d_59b7                             ; $5997: $28 $1e

    ld e, a                                       ; $5999: $5f
    ld a, [hl+]                                   ; $599a: $2a
    ld d, a                                       ; $599b: $57
    ld a, [hl+]                                   ; $599c: $2a
    ld b, a                                       ; $599d: $47
    ld a, e                                       ; $599e: $7b
    cp $01                                        ; $599f: $fe $01
    jr nz, jr_04d_59b5                            ; $59a1: $20 $12

    ld a, b                                       ; $59a3: $78
    rrca                                          ; $59a4: $0f
    rrca                                          ; $59a5: $0f
    rrca                                          ; $59a6: $0f
    and $07                                       ; $59a7: $e6 $07
    jr z, jr_04d_59b5                             ; $59a9: $28 $0a

    cp $07                                        ; $59ab: $fe $07
    jr z, jr_04d_59b5                             ; $59ad: $28 $06

    ld e, b                                       ; $59af: $58
    push hl                                       ; $59b0: $e5
    call Call_04d_59c8                            ; $59b1: $cd $c8 $59
    pop hl                                        ; $59b4: $e1

jr_04d_59b5:
    jr jr_04d_5994                                ; $59b5: $18 $dd

jr_04d_59b7:
    ld a, [$c3b7]                                 ; $59b7: $fa $b7 $c3
    cp $0c                                        ; $59ba: $fe $0c
    jr nz, jr_04d_59c7                            ; $59bc: $20 $09

    ld a, $07                                     ; $59be: $3e $07
    ld d, $0a                                     ; $59c0: $16 $0a
    ld e, $3f                                     ; $59c2: $1e $3f
    call Call_04d_59c8                            ; $59c4: $cd $c8 $59

jr_04d_59c7:
    ret                                           ; $59c7: $c9


Call_04d_59c8:
    add a                                         ; $59c8: $87
    add a                                         ; $59c9: $87
    add a                                         ; $59ca: $87
    ld hl, $6288                                  ; $59cb: $21 $88 $62
    add l                                         ; $59ce: $85
    ld l, a                                       ; $59cf: $6f
    jr nc, jr_04d_59d3                            ; $59d0: $30 $01

    inc h                                         ; $59d2: $24

jr_04d_59d3:
    ld a, [hl+]                                   ; $59d3: $2a
    add d                                         ; $59d4: $82
    ld d, a                                       ; $59d5: $57
    ld a, [hl+]                                   ; $59d6: $2a
    add e                                         ; $59d7: $83
    ld b, a                                       ; $59d8: $47
    ld a, [hl+]                                   ; $59d9: $2a
    ld e, a                                       ; $59da: $5f
    ld a, [hl+]                                   ; $59db: $2a
    ld c, a                                       ; $59dc: $4f
    ld a, [hl+]                                   ; $59dd: $2a
    ld h, [hl]                                    ; $59de: $66
    ld l, a                                       ; $59df: $6f

jr_04d_59e0:
    push de                                       ; $59e0: $d5

jr_04d_59e1:
    ld a, [hl]                                    ; $59e1: $7e
    and a                                         ; $59e2: $a7
    jr z, jr_04d_5a2c                             ; $59e3: $28 $47

    bit 7, d                                      ; $59e5: $cb $7a
    jr nz, jr_04d_5a2c                            ; $59e7: $20 $43

    ld a, d                                       ; $59e9: $7a
    cp $14                                        ; $59ea: $fe $14
    jr nc, jr_04d_5a2c                            ; $59ec: $30 $3e

    push bc                                       ; $59ee: $c5
    push de                                       ; $59ef: $d5
    push hl                                       ; $59f0: $e5
    ld c, d                                       ; $59f1: $4a
    ld l, [hl]                                    ; $59f2: $6e
    ld h, $00                                     ; $59f3: $26 $00
    add hl, hl                                    ; $59f5: $29
    add hl, hl                                    ; $59f6: $29
    add hl, hl                                    ; $59f7: $29
    add hl, hl                                    ; $59f8: $29
    ld de, $5a3a                                  ; $59f9: $11 $3a $5a
    add hl, de                                    ; $59fc: $19
    ld e, l                                       ; $59fd: $5d
    ld d, h                                       ; $59fe: $54

Call_04d_59ff:
    ld h, c                                       ; $59ff: $61
    ld l, $00                                     ; $5a00: $2e $00
    srl h                                         ; $5a02: $cb $3c
    rr l                                          ; $5a04: $cb $1d
    ld a, b                                       ; $5a06: $78
    add a                                         ; $5a07: $87
    add l                                         ; $5a08: $85
    ld l, a                                       ; $5a09: $6f
    jr nc, jr_04d_5a0d                            ; $5a0a: $30 $01

    inc h                                         ; $5a0c: $24

jr_04d_5a0d:
    ld bc, $d000                                  ; $5a0d: $01 $00 $d0
    add hl, bc                                    ; $5a10: $09
    call Call_04d_639b                            ; $5a11: $cd $9b $63
    call Call_04d_639b                            ; $5a14: $cd $9b $63
    call Call_04d_639b                            ; $5a17: $cd $9b $63
    call Call_04d_639b                            ; $5a1a: $cd $9b $63
    call Call_04d_639b                            ; $5a1d: $cd $9b $63
    call Call_04d_639b                            ; $5a20: $cd $9b $63
    call Call_04d_639b                            ; $5a23: $cd $9b $63
    call Call_04d_639b                            ; $5a26: $cd $9b $63
    pop hl                                        ; $5a29: $e1
    pop de                                        ; $5a2a: $d1
    pop bc                                        ; $5a2b: $c1

jr_04d_5a2c:
    inc hl                                        ; $5a2c: $23
    inc d                                         ; $5a2d: $14
    dec e                                         ; $5a2e: $1d
    jr nz, jr_04d_59e1                            ; $5a2f: $20 $b0

    pop de                                        ; $5a31: $d1
    ld a, b                                       ; $5a32: $78
    add $08                                       ; $5a33: $c6 $08
    ld b, a                                       ; $5a35: $47
    dec c                                         ; $5a36: $0d
    jr nz, jr_04d_59e0                            ; $5a37: $20 $a7

    ret                                           ; $5a39: $c9


    rst $38                                       ; $5a3a: $ff
    nop                                           ; $5a3b: $00
    rst $38                                       ; $5a3c: $ff
    ld bc, $73ff                                  ; $5a3d: $01 $ff $73
    rst $38                                       ; $5a40: $ff
    ei                                            ; $5a41: $fb
    rst $08                                       ; $5a42: $cf
    rst $08                                       ; $5a43: $cf
    rst $00                                       ; $5a44: $c7
    rst $00                                       ; $5a45: $c7
    rst $20                                       ; $5a46: $e7
    ld h, a                                       ; $5a47: $67
    di                                            ; $5a48: $f3
    inc sp                                        ; $5a49: $33
    rst $38                                       ; $5a4a: $ff
    nop                                           ; $5a4b: $00
    rst $38                                       ; $5a4c: $ff
    pop hl                                        ; $5a4d: $e1
    rst $38                                       ; $5a4e: $ff
    pop af                                        ; $5a4f: $f1
    ccf                                           ; $5a50: $3f
    inc sp                                        ; $5a51: $33
    ccf                                           ; $5a52: $3f
    dec sp                                        ; $5a53: $3b
    rra                                           ; $5a54: $1f
    dec de                                        ; $5a55: $1b
    sbc [hl]                                      ; $5a56: $9e
    sbc [hl]                                      ; $5a57: $9e
    sbc [hl]                                      ; $5a58: $9e
    sbc [hl]                                      ; $5a59: $9e
    rst $38                                       ; $5a5a: $ff
    ldh a, [rIE]                                  ; $5a5b: $f0 $ff
    ld hl, sp-$61                                 ; $5a5d: $f8 $9f
    sbc c                                         ; $5a5f: $99
    rra                                           ; $5a60: $1f
    dec de                                        ; $5a61: $1b
    ccf                                           ; $5a62: $3f
    dec sp                                        ; $5a63: $3b
    ccf                                           ; $5a64: $3f
    scf                                           ; $5a65: $37
    ld a, $36                                     ; $5a66: $3e $36
    ld a, [hl]                                    ; $5a68: $7e
    ld a, [hl]                                    ; $5a69: $7e
    rst $38                                       ; $5a6a: $ff
    nop                                           ; $5a6b: $00
    rst $38                                       ; $5a6c: $ff
    ldh a, [rIE]                                  ; $5a6d: $f0 $ff
    ld hl, sp-$61                                 ; $5a6f: $f8 $9f
    sbc e                                         ; $5a71: $9b
    rra                                           ; $5a72: $1f
    rra                                           ; $5a73: $1f
    ld a, $36                                     ; $5a74: $3e $36
    ld a, $36                                     ; $5a76: $3e $36
    ld a, [hl]                                    ; $5a78: $7e
    ld a, [hl]                                    ; $5a79: $7e
    rst $38                                       ; $5a7a: $ff
    nop                                           ; $5a7b: $00
    rst $38                                       ; $5a7c: $ff
    nop                                           ; $5a7d: $00
    rst $38                                       ; $5a7e: $ff
    ld bc, $81ff                                  ; $5a7f: $01 $ff $81
    rst $38                                       ; $5a82: $ff
    jp $efff                                      ; $5a83: $c3 $ff $ef


    ld a, a                                       ; $5a86: $7f
    ld a, a                                       ; $5a87: $7f
    dec sp                                        ; $5a88: $3b
    dec sp                                        ; $5a89: $3b
    rst $38                                       ; $5a8a: $ff
    nop                                           ; $5a8b: $00
    rst $38                                       ; $5a8c: $ff
    ldh [rIE], a                                  ; $5a8d: $e0 $ff
    pop af                                        ; $5a8f: $f1
    cp a                                          ; $5a90: $bf
    or e                                          ; $5a91: $b3
    rra                                           ; $5a92: $1f
    dec de                                        ; $5a93: $1b
    ld e, $1e                                     ; $5a94: $1e $1e
    sbc [hl]                                      ; $5a96: $9e
    sbc [hl]                                      ; $5a97: $9e
    adc [hl]                                      ; $5a98: $8e
    adc [hl]                                      ; $5a99: $8e
    rst $38                                       ; $5a9a: $ff
    ld [hl], b                                    ; $5a9b: $70
    rst $38                                       ; $5a9c: $ff
    ld hl, sp-$61                                 ; $5a9d: $f8 $9f
    sbc b                                         ; $5a9f: $98
    rra                                           ; $5aa0: $1f
    jr jr_04d_5ae2                                ; $5aa1: $18 $3f

    jr nc, @+$41                                  ; $5aa3: $30 $3f

    jr nc, jr_04d_5b26                            ; $5aa5: $30 $7f

    ld h, b                                       ; $5aa7: $60
    ld a, a                                       ; $5aa8: $7f
    ld h, b                                       ; $5aa9: $60
    rst $38                                       ; $5aaa: $ff
    nop                                           ; $5aab: $00
    rst $38                                       ; $5aac: $ff
    nop                                           ; $5aad: $00
    rst $38                                       ; $5aae: $ff
    nop                                           ; $5aaf: $00
    rst $38                                       ; $5ab0: $ff
    nop                                           ; $5ab1: $00
    rst $38                                       ; $5ab2: $ff
    nop                                           ; $5ab3: $00
    rst $38                                       ; $5ab4: $ff
    inc bc                                        ; $5ab5: $03
    rst $38                                       ; $5ab6: $ff
    rlca                                          ; $5ab7: $07
    db $fc                                        ; $5ab8: $fc
    inc b                                         ; $5ab9: $04
    rst $38                                       ; $5aba: $ff
    nop                                           ; $5abb: $00
    rst $38                                       ; $5abc: $ff
    nop                                           ; $5abd: $00
    rst $38                                       ; $5abe: $ff
    nop                                           ; $5abf: $00
    rst $38                                       ; $5ac0: $ff
    nop                                           ; $5ac1: $00
    rst $38                                       ; $5ac2: $ff
    jr @+$01                                      ; $5ac3: $18 $ff

    inc a                                         ; $5ac5: $3c
    rst $20                                       ; $5ac6: $e7
    and h                                         ; $5ac7: $a4
    rst $20                                       ; $5ac8: $e7
    and $ff                                       ; $5ac9: $e6 $ff
    nop                                           ; $5acb: $00
    rst $38                                       ; $5acc: $ff
    nop                                           ; $5acd: $00
    rst $38                                       ; $5ace: $ff
    nop                                           ; $5acf: $00
    rst $38                                       ; $5ad0: $ff
    jr @+$01                                      ; $5ad1: $18 $ff

    inc a                                         ; $5ad3: $3c
    rst $20                                       ; $5ad4: $e7
    inc h                                         ; $5ad5: $24
    rst $20                                       ; $5ad6: $e7
    ld h, h                                       ; $5ad7: $64
    rst $08                                       ; $5ad8: $cf
    ld c, h                                       ; $5ad9: $4c
    rst $38                                       ; $5ada: $ff
    nop                                           ; $5adb: $00
    rst $38                                       ; $5adc: $ff
    nop                                           ; $5add: $00
    rst $38                                       ; $5ade: $ff
    nop                                           ; $5adf: $00
    rst $38                                       ; $5ae0: $ff
    nop                                           ; $5ae1: $00

jr_04d_5ae2:
    rst $38                                       ; $5ae2: $ff
    jr nc, @+$01                                  ; $5ae3: $30 $ff

    ld a, b                                       ; $5ae5: $78
    rst $08                                       ; $5ae6: $cf
    ret z                                         ; $5ae7: $c8

    adc a                                         ; $5ae8: $8f
    adc b                                         ; $5ae9: $88
    rst $38                                       ; $5aea: $ff
    nop                                           ; $5aeb: $00
    rst $38                                       ; $5aec: $ff
    nop                                           ; $5aed: $00
    rst $38                                       ; $5aee: $ff
    nop                                           ; $5aef: $00
    rst $38                                       ; $5af0: $ff
    nop                                           ; $5af1: $00
    rst $38                                       ; $5af2: $ff
    nop                                           ; $5af3: $00
    rst $38                                       ; $5af4: $ff
    ld bc, $03ff                                  ; $5af5: $01 $ff $03
    cp $c2                                        ; $5af8: $fe $c2
    rst $38                                       ; $5afa: $ff
    nop                                           ; $5afb: $00
    rst $38                                       ; $5afc: $ff
    nop                                           ; $5afd: $00
    rst $38                                       ; $5afe: $ff
    nop                                           ; $5aff: $00
    rst $38                                       ; $5b00: $ff
    ld bc, $03ff                                  ; $5b01: $01 $ff $03
    cp $86                                        ; $5b04: $fe $86
    db $fc                                        ; $5b06: $fc
    call nz, Call_04d_6c7c                        ; $5b07: $c4 $7c $6c
    rst $38                                       ; $5b0a: $ff
    nop                                           ; $5b0b: $00
    rst $38                                       ; $5b0c: $ff
    nop                                           ; $5b0d: $00
    rst $38                                       ; $5b0e: $ff
    nop                                           ; $5b0f: $00
    rst $38                                       ; $5b10: $ff
    add b                                         ; $5b11: $80
    rst $38                                       ; $5b12: $ff
    ret nz                                        ; $5b13: $c0

    ld a, a                                       ; $5b14: $7f
    ld b, b                                       ; $5b15: $40
    ld a, a                                       ; $5b16: $7f
    ld b, b                                       ; $5b17: $40
    rst $38                                       ; $5b18: $ff
    ret nz                                        ; $5b19: $c0

    nop                                           ; $5b1a: $00
    nop                                           ; $5b1b: $00
    nop                                           ; $5b1c: $00
    nop                                           ; $5b1d: $00
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    nop                                           ; $5b20: $00
    nop                                           ; $5b21: $00
    nop                                           ; $5b22: $00
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00

jr_04d_5b26:
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    nop                                           ; $5b35: $00
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    nop                                           ; $5b38: $00
    nop                                           ; $5b39: $00
    di                                            ; $5b3a: $f3
    inc sp                                        ; $5b3b: $33
    ld sp, hl                                     ; $5b3c: $f9
    add hl, de                                    ; $5b3d: $19
    ld sp, hl                                     ; $5b3e: $f9
    ld a, c                                       ; $5b3f: $79
    db $fc                                        ; $5b40: $fc
    db $fc                                        ; $5b41: $fc
    call z, $c4cc                                 ; $5b42: $cc $cc $c4
    call nz, $e6e6                                ; $5b45: $c4 $e6 $e6
    ld [c], a                                     ; $5b48: $e2
    ld h, d                                       ; $5b49: $62
    adc [hl]                                      ; $5b4a: $8e
    adc [hl]                                      ; $5b4b: $8e
    call z, $cccc                                 ; $5b4c: $cc $cc $cc
    call z, $cccc                                 ; $5b4f: $cc $cc $cc
    ret z                                         ; $5b52: $c8

    ret z                                         ; $5b53: $c8

    ld c, b                                       ; $5b54: $48
    ld c, b                                       ; $5b55: $48
    ld b, b                                       ; $5b56: $40
    ld b, b                                       ; $5b57: $40
    nop                                           ; $5b58: $00
    nop                                           ; $5b59: $00
    ld a, [hl]                                    ; $5b5a: $7e
    ld a, [hl]                                    ; $5b5b: $7e
    ld [hl], e                                    ; $5b5c: $73
    ld [hl], e                                    ; $5b5d: $73
    ld h, e                                       ; $5b5e: $63
    ld h, e                                       ; $5b5f: $63
    db $e3                                        ; $5b60: $e3
    db $e3                                        ; $5b61: $e3
    rst $00                                       ; $5b62: $c7
    rst $00                                       ; $5b63: $c7
    rst $00                                       ; $5b64: $c7
    rst $00                                       ; $5b65: $c7
    adc h                                         ; $5b66: $8c
    adc h                                         ; $5b67: $8c
    adc b                                         ; $5b68: $88
    adc b                                         ; $5b69: $88
    ld a, a                                       ; $5b6a: $7f
    ld a, a                                       ; $5b6b: $7f
    ld [hl], e                                    ; $5b6c: $73
    ld [hl], e                                    ; $5b6d: $73
    ld h, e                                       ; $5b6e: $63
    ld h, e                                       ; $5b6f: $63
    db $e3                                        ; $5b70: $e3
    db $e3                                        ; $5b71: $e3
    rst $00                                       ; $5b72: $c7
    rst $00                                       ; $5b73: $c7
    rst $00                                       ; $5b74: $c7
    rst $00                                       ; $5b75: $c7
    adc h                                         ; $5b76: $8c
    adc h                                         ; $5b77: $8c
    adc b                                         ; $5b78: $88
    adc b                                         ; $5b79: $88
    ld sp, $3131                                  ; $5b7a: $31 $31 $31
    ld sp, $1919                                  ; $5b7d: $31 $19 $19
    sbc b                                         ; $5b80: $98
    sbc b                                         ; $5b81: $98
    sbc b                                         ; $5b82: $98
    sbc b                                         ; $5b83: $98
    adc b                                         ; $5b84: $88
    adc b                                         ; $5b85: $88
    adc h                                         ; $5b86: $8c
    adc h                                         ; $5b87: $8c
    adc h                                         ; $5b88: $8c
    adc h                                         ; $5b89: $8c
    adc h                                         ; $5b8a: $8c
    adc h                                         ; $5b8b: $8c
    adc h                                         ; $5b8c: $8c
    adc h                                         ; $5b8d: $8c
    adc h                                         ; $5b8e: $8c
    adc h                                         ; $5b8f: $8c
    call z, $cccc                                 ; $5b90: $cc $cc $cc
    call z, $c8c8                                 ; $5b93: $cc $c8 $c8
    ld c, b                                       ; $5b96: $48
    ld c, b                                       ; $5b97: $48
    ld [$7f08], sp                                ; $5b98: $08 $08 $7f
    ld l, [hl]                                    ; $5b9b: $6e
    ld a, a                                       ; $5b9c: $7f
    ld e, a                                       ; $5b9d: $5f
    di                                            ; $5b9e: $f3
    di                                            ; $5b9f: $f3
    db $e3                                        ; $5ba0: $e3
    db $e3                                        ; $5ba1: $e3
    rst $20                                       ; $5ba2: $e7
    rst $20                                       ; $5ba3: $e7
    rst $00                                       ; $5ba4: $c7
    add $cf                                       ; $5ba5: $c6 $cf
    call z, $8c8f                                 ; $5ba7: $cc $8f $8c
    db $fc                                        ; $5baa: $fc
    inc b                                         ; $5bab: $04
    cp $06                                        ; $5bac: $fe $06
    rst $38                                       ; $5bae: $ff
    inc bc                                        ; $5baf: $03
    rst $38                                       ; $5bb0: $ff
    ld bc, $03ff                                  ; $5bb1: $01 $ff $03
    rst $38                                       ; $5bb4: $ff
    rlca                                          ; $5bb5: $07
    db $fc                                        ; $5bb6: $fc
    inc b                                         ; $5bb7: $04
    db $fc                                        ; $5bb8: $fc
    inc b                                         ; $5bb9: $04
    ld h, e                                       ; $5bba: $63
    ld h, d                                       ; $5bbb: $62
    inc sp                                        ; $5bbc: $33
    inc sp                                        ; $5bbd: $33
    ld sp, $1931                                  ; $5bbe: $31 $31 $19
    add hl, de                                    ; $5bc1: $19
    sbc c                                         ; $5bc2: $99
    sbc c                                         ; $5bc3: $99
    sbc c                                         ; $5bc4: $99
    sbc c                                         ; $5bc5: $99
    ret                                           ; $5bc6: $c9


    ret                                           ; $5bc7: $c9


    ld c, c                                       ; $5bc8: $49
    ld c, c                                       ; $5bc9: $49
    rst $08                                       ; $5bca: $cf
    ld c, c                                       ; $5bcb: $49
    rst $08                                       ; $5bcc: $cf
    ret                                           ; $5bcd: $c9


    sbc a                                         ; $5bce: $9f
    sbc a                                         ; $5bcf: $9f
    sbc l                                         ; $5bd0: $9d
    sbc l                                         ; $5bd1: $9d
    sbc b                                         ; $5bd2: $98
    sbc b                                         ; $5bd3: $98
    cp c                                          ; $5bd4: $b9
    cp c                                          ; $5bd5: $b9
    ld sp, $3331                                  ; $5bd6: $31 $31 $33
    inc sp                                        ; $5bd9: $33
    sbc a                                         ; $5bda: $9f
    sbc c                                         ; $5bdb: $99
    rra                                           ; $5bdc: $1f
    ld de, $bfbf                                  ; $5bdd: $11 $bf $bf
    cp e                                          ; $5be0: $bb
    cp e                                          ; $5be1: $bb
    pop af                                        ; $5be2: $f1
    pop af                                        ; $5be3: $f1
    di                                            ; $5be4: $f3
    di                                            ; $5be5: $f3
    db $e3                                        ; $5be6: $e3
    db $e3                                        ; $5be7: $e3
    ld h, [hl]                                    ; $5be8: $66
    ld h, [hl]                                    ; $5be9: $66
    cp $ee                                        ; $5bea: $fe $ee
    ld a, $3e                                     ; $5bec: $3e $3e
    inc sp                                        ; $5bee: $33
    inc sp                                        ; $5bef: $33
    ld sp, $1931                                  ; $5bf0: $31 $31 $19
    add hl, de                                    ; $5bf3: $19
    sbc c                                         ; $5bf4: $99
    sbc c                                         ; $5bf5: $99
    sbc c                                         ; $5bf6: $99
    sbc c                                         ; $5bf7: $99
    adc b                                         ; $5bf8: $88
    adc b                                         ; $5bf9: $88
    inc a                                         ; $5bfa: $3c
    inc l                                         ; $5bfb: $2c
    add hl, sp                                    ; $5bfc: $39
    add hl, sp                                    ; $5bfd: $39
    add hl, sp                                    ; $5bfe: $39
    add hl, sp                                    ; $5bff: $39
    add hl, de                                    ; $5c00: $19
    add hl, de                                    ; $5c01: $19
    add hl, de                                    ; $5c02: $19
    add hl, de                                    ; $5c03: $19
    sbc e                                         ; $5c04: $9b
    sbc e                                         ; $5c05: $9b
    sbc e                                         ; $5c06: $9b
    sbc e                                         ; $5c07: $9b
    sub e                                         ; $5c08: $93
    sub e                                         ; $5c09: $93
    rst $38                                       ; $5c0a: $ff
    add b                                         ; $5c0b: $80
    rst $38                                       ; $5c0c: $ff
    add b                                         ; $5c0d: $80
    rst $38                                       ; $5c0e: $ff
    jr nc, @+$01                                  ; $5c0f: $30 $ff

    ld a, b                                       ; $5c11: $78
    rst $08                                       ; $5c12: $cf
    ret z                                         ; $5c13: $c8

    adc a                                         ; $5c14: $8f
    adc b                                         ; $5c15: $88
    sbc a                                         ; $5c16: $9f
    sbc b                                         ; $5c17: $98
    rra                                           ; $5c18: $1f
    stop                                          ; $5c19: $10 $00
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    nop                                           ; $5c20: $00
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    nop                                           ; $5c28: $00
    nop                                           ; $5c29: $00
    nop                                           ; $5c2a: $00
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    nop                                           ; $5c33: $00
    nop                                           ; $5c34: $00
    nop                                           ; $5c35: $00
    nop                                           ; $5c36: $00
    nop                                           ; $5c37: $00
    nop                                           ; $5c38: $00
    nop                                           ; $5c39: $00
    ldh a, [$30]                                  ; $5c3a: $f0 $30
    ld hl, sp+$38                                 ; $5c3c: $f8 $38
    ld hl, sp+$18                                 ; $5c3e: $f8 $18
    ld hl, sp+$18                                 ; $5c40: $f8 $18
    db $fc                                        ; $5c42: $fc
    inc c                                         ; $5c43: $0c
    db $fc                                        ; $5c44: $fc
    inc c                                         ; $5c45: $0c
    rst $38                                       ; $5c46: $ff
    rrca                                          ; $5c47: $0f
    rst $38                                       ; $5c48: $ff
    rlca                                          ; $5c49: $07
    nop                                           ; $5c4a: $00
    nop                                           ; $5c4b: $00
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    nop                                           ; $5c4e: $00
    nop                                           ; $5c4f: $00
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    nop                                           ; $5c53: $00
    ld h, e                                       ; $5c54: $63
    ld h, e                                       ; $5c55: $63
    rst $38                                       ; $5c56: $ff
    rst $38                                       ; $5c57: $ff
    rst $38                                       ; $5c58: $ff
    cp h                                          ; $5c59: $bc
    ld [$0008], sp                                ; $5c5a: $08 $08 $00
    nop                                           ; $5c5d: $00
    nop                                           ; $5c5e: $00
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    sbc a                                         ; $5c64: $9f
    sbc a                                         ; $5c65: $9f
    rst $38                                       ; $5c66: $ff
    rst $38                                       ; $5c67: $ff
    rst $38                                       ; $5c68: $ff
    ld [hl], b                                    ; $5c69: $70
    ld [$0008], sp                                ; $5c6a: $08 $08 $00
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    nop                                           ; $5c6f: $00
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00

jr_04d_5c73:
    nop                                           ; $5c73: $00
    sbc a                                         ; $5c74: $9f
    sbc a                                         ; $5c75: $9f
    rst $38                                       ; $5c76: $ff
    rst $38                                       ; $5c77: $ff
    rst $38                                       ; $5c78: $ff
    pop af                                        ; $5c79: $f1
    inc b                                         ; $5c7a: $04
    inc b                                         ; $5c7b: $04
    nop                                           ; $5c7c: $00
    nop                                           ; $5c7d: $00
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    inc a                                         ; $5c84: $3c
    inc a                                         ; $5c85: $3c
    rst $38                                       ; $5c86: $ff
    rst $38                                       ; $5c87: $ff
    rst $38                                       ; $5c88: $ff
    rst $20                                       ; $5c89: $e7
    nop                                           ; $5c8a: $00
    nop                                           ; $5c8b: $00
    nop                                           ; $5c8c: $00
    nop                                           ; $5c8d: $00
    nop                                           ; $5c8e: $00
    nop                                           ; $5c8f: $00
    nop                                           ; $5c90: $00
    nop                                           ; $5c91: $00
    nop                                           ; $5c92: $00
    nop                                           ; $5c93: $00
    and $e6                                       ; $5c94: $e6 $e6
    rst $38                                       ; $5c96: $ff
    rst $38                                       ; $5c97: $ff
    rst $38                                       ; $5c98: $ff
    cp l                                          ; $5c99: $bd
    rrca                                          ; $5c9a: $0f
    inc c                                         ; $5c9b: $0c
    rra                                           ; $5c9c: $1f
    jr jr_04d_5cbe                                ; $5c9d: $18 $1f

    jr jr_04d_5cc0                                ; $5c9f: $18 $1f

    jr jr_04d_5ce2                                ; $5ca1: $18 $3f

    jr nc, jr_04d_5ce4                            ; $5ca3: $30 $3f

    jr nc, @+$01                                  ; $5ca5: $30 $ff

    ldh a, [rIE]                                  ; $5ca7: $f0 $ff
    ldh [$fe], a                                  ; $5ca9: $e0 $fe
    ld b, $ff                                     ; $5cab: $06 $ff
    inc bc                                        ; $5cad: $03
    rst $38                                       ; $5cae: $ff
    ld bc, $01ff                                  ; $5caf: $01 $ff $01
    rst $38                                       ; $5cb2: $ff
    nop                                           ; $5cb3: $00
    rst $38                                       ; $5cb4: $ff
    nop                                           ; $5cb5: $00
    rst $38                                       ; $5cb6: $ff
    nop                                           ; $5cb7: $00
    rst $38                                       ; $5cb8: $ff
    nop                                           ; $5cb9: $00
    ld c, b                                       ; $5cba: $48
    ld c, b                                       ; $5cbb: $48
    nop                                           ; $5cbc: $00
    nop                                           ; $5cbd: $00

jr_04d_5cbe:
    nop                                           ; $5cbe: $00
    nop                                           ; $5cbf: $00

jr_04d_5cc0:
    add b                                         ; $5cc0: $80
    add b                                         ; $5cc1: $80
    add b                                         ; $5cc2: $80
    add b                                         ; $5cc3: $80
    call z, $ffcc                                 ; $5cc4: $cc $cc $ff
    ld a, a                                       ; $5cc7: $7f
    rst $38                                       ; $5cc8: $ff
    inc sp                                        ; $5cc9: $33
    ld [hl+], a                                   ; $5cca: $22
    ld [hl+], a                                   ; $5ccb: $22
    ld [bc], a                                    ; $5ccc: $02
    ld [bc], a                                    ; $5ccd: $02
    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    nop                                           ; $5cd0: $00
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00
    nop                                           ; $5cd3: $00
    ld h, a                                       ; $5cd4: $67
    ld h, a                                       ; $5cd5: $67
    rst $38                                       ; $5cd6: $ff
    rst $38                                       ; $5cd7: $ff
    rst $38                                       ; $5cd8: $ff
    sbc b                                         ; $5cd9: $98
    ld b, h                                       ; $5cda: $44
    ld b, h                                       ; $5cdb: $44
    inc b                                         ; $5cdc: $04
    inc b                                         ; $5cdd: $04
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    nop                                           ; $5ce0: $00
    nop                                           ; $5ce1: $00

jr_04d_5ce2:
    nop                                           ; $5ce2: $00
    nop                                           ; $5ce3: $00

jr_04d_5ce4:
    rst $08                                       ; $5ce4: $cf
    rst $08                                       ; $5ce5: $cf
    rst $38                                       ; $5ce6: $ff
    rst $38                                       ; $5ce7: $ff
    rst $38                                       ; $5ce8: $ff
    jr nc, jr_04d_5c73                            ; $5ce9: $30 $88

    adc b                                         ; $5ceb: $88
    ld [$0008], sp                                ; $5cec: $08 $08 $00
    nop                                           ; $5cef: $00
    nop                                           ; $5cf0: $00
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    nop                                           ; $5cf3: $00
    add hl, sp                                    ; $5cf4: $39
    add hl, sp                                    ; $5cf5: $39
    rst $38                                       ; $5cf6: $ff
    rst $38                                       ; $5cf7: $ff
    rst $38                                       ; $5cf8: $ff
    add $93                                       ; $5cf9: $c6 $93
    sub e                                         ; $5cfb: $93
    nop                                           ; $5cfc: $00
    nop                                           ; $5cfd: $00
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    nop                                           ; $5d00: $00
    nop                                           ; $5d01: $00
    nop                                           ; $5d02: $00
    nop                                           ; $5d03: $00
    call z, $ffcc                                 ; $5d04: $cc $cc $ff
    rst $38                                       ; $5d07: $ff
    rst $38                                       ; $5d08: $ff
    inc sp                                        ; $5d09: $33
    ccf                                           ; $5d0a: $3f
    jr nc, @+$41                                  ; $5d0b: $30 $3f

    jr nz, jr_04d_5d8e                            ; $5d0d: $20 $7f

    ld h, b                                       ; $5d0f: $60
    ld a, a                                       ; $5d10: $7f
    ld h, b                                       ; $5d11: $60
    ld a, a                                       ; $5d12: $7f
    ld b, b                                       ; $5d13: $40
    rst $38                                       ; $5d14: $ff
    ret nz                                        ; $5d15: $c0

    rst $38                                       ; $5d16: $ff
    ret nz                                        ; $5d17: $c0

    rst $38                                       ; $5d18: $ff
    add b                                         ; $5d19: $80
    nop                                           ; $5d1a: $00
    nop                                           ; $5d1b: $00
    nop                                           ; $5d1c: $00
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    nop                                           ; $5d20: $00
    nop                                           ; $5d21: $00
    nop                                           ; $5d22: $00
    nop                                           ; $5d23: $00
    nop                                           ; $5d24: $00
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    nop                                           ; $5d2b: $00
    nop                                           ; $5d2c: $00
    nop                                           ; $5d2d: $00
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    nop                                           ; $5d33: $00
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    nop                                           ; $5d39: $00
    rst $38                                       ; $5d3a: $ff
    inc bc                                        ; $5d3b: $03
    db $fc                                        ; $5d3c: $fc
    inc b                                         ; $5d3d: $04
    db $fc                                        ; $5d3e: $fc
    ld [hl], h                                    ; $5d3f: $74
    sbc h                                         ; $5d40: $9c
    sbc h                                         ; $5d41: $9c
    adc h                                         ; $5d42: $8c
    adc h                                         ; $5d43: $8c
    add $c6                                       ; $5d44: $c6 $c6

jr_04d_5d46:
    and $66                                       ; $5d46: $e6 $66
    ld a, [c]                                     ; $5d48: $f2
    ld [hl-], a                                   ; $5d49: $32
    rst $38                                       ; $5d4a: $ff
    ld b, $f9                                     ; $5d4b: $06 $f9
    adc c                                         ; $5d4d: $89
    ld sp, hl                                     ; $5d4e: $f9
    adc c                                         ; $5d4f: $89
    ld sp, hl                                     ; $5d50: $f9
    reti                                          ; $5d51: $d9


    ld [hl], e                                    ; $5d52: $73
    ld d, e                                       ; $5d53: $53
    ld [hl], e                                    ; $5d54: $73
    ld d, d                                       ; $5d55: $52
    ld h, a                                       ; $5d56: $67
    ld h, a                                       ; $5d57: $67
    ld h, [hl]                                    ; $5d58: $66
    ld h, [hl]                                    ; $5d59: $66
    rst $38                                       ; $5d5a: $ff
    nop                                           ; $5d5b: $00
    rst $38                                       ; $5d5c: $ff
    jr jr_04d_5d46                                ; $5d5d: $18 $e7

    inc h                                         ; $5d5f: $24
    rst $20                                       ; $5d60: $e7
    ld h, h                                       ; $5d61: $64
    rst $08                                       ; $5d62: $cf
    ld c, h                                       ; $5d63: $4c
    rst $08                                       ; $5d64: $cf
    ret                                           ; $5d65: $c9


    rst $18                                       ; $5d66: $df
    rst $18                                       ; $5d67: $df
    ld e, c                                       ; $5d68: $59
    ld e, c                                       ; $5d69: $59
    rst $38                                       ; $5d6a: $ff
    nop                                           ; $5d6b: $00
    rst $38                                       ; $5d6c: $ff
    inc bc                                        ; $5d6d: $03
    db $fc                                        ; $5d6e: $fc
    inc b                                         ; $5d6f: $04
    db $fc                                        ; $5d70: $fc
    inc b                                         ; $5d71: $04
    db $fc                                        ; $5d72: $fc
    inc b                                         ; $5d73: $04
    db $fc                                        ; $5d74: $fc
    call nz, Call_000_3e3e                        ; $5d75: $c4 $3e $3e
    ld h, $26                                     ; $5d78: $26 $26
    rst $38                                       ; $5d7a: $ff
    ld b, $f9                                     ; $5d7b: $06 $f9
    add hl, bc                                    ; $5d7d: $09
    ld sp, hl                                     ; $5d7e: $f9
    adc c                                         ; $5d7f: $89
    di                                            ; $5d80: $f3
    sub e                                         ; $5d81: $93
    di                                            ; $5d82: $f3
    sub d                                         ; $5d83: $92
    rst $20                                       ; $5d84: $e7
    and $67                                       ; $5d85: $e6 $67
    ld h, h                                       ; $5d87: $64
    ld h, a                                       ; $5d88: $67
    ld h, h                                       ; $5d89: $64
    rst $38                                       ; $5d8a: $ff
    nop                                           ; $5d8b: $00
    rst $38                                       ; $5d8c: $ff
    nop                                           ; $5d8d: $00

jr_04d_5d8e:
    rst $38                                       ; $5d8e: $ff
    ld bc, $19ff                                  ; $5d8f: $01 $ff $19
    rst $30                                       ; $5d92: $f7
    dec d                                         ; $5d93: $15
    di                                            ; $5d94: $f3
    inc de                                        ; $5d95: $13
    ld sp, hl                                     ; $5d96: $f9
    add hl, bc                                    ; $5d97: $09
    ld sp, hl                                     ; $5d98: $f9
    add hl, bc                                    ; $5d99: $09
    rst $38                                       ; $5d9a: $ff
    nop                                           ; $5d9b: $00
    rst $38                                       ; $5d9c: $ff
    ld b, $fb                                     ; $5d9d: $06 $fb
    adc d                                         ; $5d9f: $8a
    ld [hl], e                                    ; $5da0: $73
    ld d, d                                       ; $5da1: $52
    ld [hl], a                                    ; $5da2: $77
    ld d, h                                       ; $5da3: $54
    ld [hl], a                                    ; $5da4: $77
    ld d, h                                       ; $5da5: $54
    daa                                           ; $5da6: $27
    daa                                           ; $5da7: $27

jr_04d_5da8:
    dec h                                         ; $5da8: $25
    dec h                                         ; $5da9: $25
    rst $38                                       ; $5daa: $ff
    nop                                           ; $5dab: $00
    rst $38                                       ; $5dac: $ff
    nop                                           ; $5dad: $00
    rst $38                                       ; $5dae: $ff
    jr nc, @-$1f                                  ; $5daf: $30 $df

    ld d, b                                       ; $5db1: $50
    rst $18                                       ; $5db2: $df
    ld d, d                                       ; $5db3: $52
    sbc l                                         ; $5db4: $9d
    sub l                                         ; $5db5: $95
    cp h                                          ; $5db6: $bc
    cp h                                          ; $5db7: $bc
    inc h                                         ; $5db8: $24
    inc h                                         ; $5db9: $24
    rst $38                                       ; $5dba: $ff
    nop                                           ; $5dbb: $00
    rst $38                                       ; $5dbc: $ff
    nop                                           ; $5dbd: $00
    rst $38                                       ; $5dbe: $ff
    jr jr_04d_5da8                                ; $5dbf: $18 $e7

    dec h                                         ; $5dc1: $25
    rst $20                                       ; $5dc2: $e7
    dec h                                         ; $5dc3: $25
    or $76                                        ; $5dc4: $f6 $76
    sub d                                         ; $5dc6: $92
    sub d                                         ; $5dc7: $92
    sub d                                         ; $5dc8: $92
    sub d                                         ; $5dc9: $92
    rst $38                                       ; $5dca: $ff
    nop                                           ; $5dcb: $00
    rst $38                                       ; $5dcc: $ff
    ld b, b                                       ; $5dcd: $40
    cp a                                          ; $5dce: $bf
    and b                                         ; $5dcf: $a0
    ccf                                           ; $5dd0: $3f
    jr nz, jr_04d_5e52                            ; $5dd1: $20 $7f

    ld b, b                                       ; $5dd3: $40
    ld a, a                                       ; $5dd4: $7f
    ld b, b                                       ; $5dd5: $40
    ld a, a                                       ; $5dd6: $7f
    ld e, b                                       ; $5dd7: $58
    rst $28                                       ; $5dd8: $ef
    xor b                                         ; $5dd9: $a8
    rst $38                                       ; $5dda: $ff
    nop                                           ; $5ddb: $00
    rst $38                                       ; $5ddc: $ff
    nop                                           ; $5ddd: $00
    rst $38                                       ; $5dde: $ff
    nop                                           ; $5ddf: $00
    rst $38                                       ; $5de0: $ff
    nop                                           ; $5de1: $00
    rst $38                                       ; $5de2: $ff
    nop                                           ; $5de3: $00
    rst $38                                       ; $5de4: $ff
    inc bc                                        ; $5de5: $03
    cp $02                                        ; $5de6: $fe $02
    rst $38                                       ; $5de8: $ff
    ld bc, $00ff                                  ; $5de9: $01 $ff $00
    rst $38                                       ; $5dec: $ff
    nop                                           ; $5ded: $00
    rst $38                                       ; $5dee: $ff
    nop                                           ; $5def: $00
    rst $38                                       ; $5df0: $ff
    nop                                           ; $5df1: $00
    rst $38                                       ; $5df2: $ff
    ld bc, $62fe                                  ; $5df3: $01 $fe $62
    db $dd                                        ; $5df6: $dd
    push de                                       ; $5df7: $d5
    ld c, l                                       ; $5df8: $4d
    ld c, l                                       ; $5df9: $4d
    rst $38                                       ; $5dfa: $ff
    nop                                           ; $5dfb: $00
    rst $38                                       ; $5dfc: $ff
    nop                                           ; $5dfd: $00
    rst $38                                       ; $5dfe: $ff
    nop                                           ; $5dff: $00
    rst $38                                       ; $5e00: $ff
    nop                                           ; $5e01: $00
    rst $38                                       ; $5e02: $ff
    add b                                         ; $5e03: $80
    rst $38                                       ; $5e04: $ff
    or b                                          ; $5e05: $b0
    rst $28                                       ; $5e06: $ef
    xor $dd                                       ; $5e07: $ee $dd
    ld d, l                                       ; $5e09: $55
    rst $38                                       ; $5e0a: $ff
    nop                                           ; $5e0b: $00
    rst $38                                       ; $5e0c: $ff
    nop                                           ; $5e0d: $00
    rst $38                                       ; $5e0e: $ff
    nop                                           ; $5e0f: $00
    rst $38                                       ; $5e10: $ff
    nop                                           ; $5e11: $00
    rst $38                                       ; $5e12: $ff
    ld bc, $62fe                                  ; $5e13: $01 $fe $62
    db $dd                                        ; $5e16: $dd
    ld d, l                                       ; $5e17: $55
    db $ed                                        ; $5e18: $ed
    ld l, l                                       ; $5e19: $6d
    rst $38                                       ; $5e1a: $ff
    nop                                           ; $5e1b: $00
    rst $38                                       ; $5e1c: $ff
    nop                                           ; $5e1d: $00
    rst $38                                       ; $5e1e: $ff
    nop                                           ; $5e1f: $00
    rst $38                                       ; $5e20: $ff
    nop                                           ; $5e21: $00
    rst $38                                       ; $5e22: $ff
    add b                                         ; $5e23: $80
    rst $38                                       ; $5e24: $ff
    add b                                         ; $5e25: $80
    rst $38                                       ; $5e26: $ff
    nop                                           ; $5e27: $00
    rst $38                                       ; $5e28: $ff
    nop                                           ; $5e29: $00
    nop                                           ; $5e2a: $00
    nop                                           ; $5e2b: $00
    nop                                           ; $5e2c: $00
    nop                                           ; $5e2d: $00
    nop                                           ; $5e2e: $00
    nop                                           ; $5e2f: $00
    nop                                           ; $5e30: $00
    nop                                           ; $5e31: $00
    nop                                           ; $5e32: $00
    nop                                           ; $5e33: $00
    nop                                           ; $5e34: $00
    nop                                           ; $5e35: $00
    nop                                           ; $5e36: $00
    nop                                           ; $5e37: $00
    nop                                           ; $5e38: $00
    nop                                           ; $5e39: $00
    di                                            ; $5e3a: $f3
    ld [hl], e                                    ; $5e3b: $73
    sbc e                                         ; $5e3c: $9b
    sbc e                                         ; $5e3d: $9b
    adc c                                         ; $5e3e: $89
    adc c                                         ; $5e3f: $89
    ret nz                                        ; $5e40: $c0

    ret nz                                        ; $5e41: $c0

    ldh [$60], a                                  ; $5e42: $e0 $60
    ldh [rNR41], a                                ; $5e44: $e0 $20
    pop af                                        ; $5e46: $f1
    ld sp, $1fff                                  ; $5e47: $31 $ff $1f
    ld b, h                                       ; $5e4a: $44
    ld b, h                                       ; $5e4b: $44
    ld c, h                                       ; $5e4c: $4c
    ld c, h                                       ; $5e4d: $4c
    ld c, c                                       ; $5e4e: $49
    ld c, c                                       ; $5e4f: $49
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00

jr_04d_5e52:
    nop                                           ; $5e52: $00
    nop                                           ; $5e53: $00
    nop                                           ; $5e54: $00
    nop                                           ; $5e55: $00
    sbc c                                         ; $5e56: $99
    sbc c                                         ; $5e57: $99
    rst $38                                       ; $5e58: $ff
    rst $38                                       ; $5e59: $ff
    or e                                          ; $5e5a: $b3
    or e                                          ; $5e5b: $b3
    db $e3                                        ; $5e5c: $e3
    db $e3                                        ; $5e5d: $e3
    inc h                                         ; $5e5e: $24
    inc h                                         ; $5e5f: $24
    nop                                           ; $5e60: $00
    nop                                           ; $5e61: $00
    nop                                           ; $5e62: $00
    nop                                           ; $5e63: $00
    nop                                           ; $5e64: $00
    nop                                           ; $5e65: $00
    rst $20                                       ; $5e66: $e7
    rst $20                                       ; $5e67: $e7
    rst $38                                       ; $5e68: $ff
    rst $38                                       ; $5e69: $ff
    ld [hl+], a                                   ; $5e6a: $22
    ld [hl+], a                                   ; $5e6b: $22
    ld [de], a                                    ; $5e6c: $12
    ld [de], a                                    ; $5e6d: $12
    sub d                                         ; $5e6e: $92
    sub d                                         ; $5e6f: $92
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    nop                                           ; $5e73: $00
    nop                                           ; $5e74: $00
    nop                                           ; $5e75: $00
    dec sp                                        ; $5e76: $3b
    dec sp                                        ; $5e77: $3b
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    ld c, a                                       ; $5e7a: $4f
    ld c, h                                       ; $5e7b: $4c
    ld c, a                                       ; $5e7c: $4f
    ld c, [hl]                                    ; $5e7d: $4e
    ld c, c                                       ; $5e7e: $49
    ld c, c                                       ; $5e7f: $49
    ld bc, $0301                                  ; $5e80: $01 $01 $03
    inc bc                                        ; $5e83: $03
    inc bc                                        ; $5e84: $03
    ld [bc], a                                    ; $5e85: $02
    or a                                          ; $5e86: $b7
    or [hl]                                       ; $5e87: $b6
    rst $38                                       ; $5e88: $ff
    db $fc                                        ; $5e89: $fc
    db $fc                                        ; $5e8a: $fc
    inc a                                         ; $5e8b: $3c
    db $e4                                        ; $5e8c: $e4
    inc h                                         ; $5e8d: $24
    ld a, [c]                                     ; $5e8e: $f2
    ld [de], a                                    ; $5e8f: $12
    ld hl, sp+$08                                 ; $5e90: $f8 $08
    ld hl, sp+$08                                 ; $5e92: $f8 $08
    db $fc                                        ; $5e94: $fc
    inc b                                         ; $5e95: $04
    db $fd                                        ; $5e96: $fd
    dec b                                         ; $5e97: $05
    rst $38                                       ; $5e98: $ff
    inc bc                                        ; $5e99: $03
    xor c                                         ; $5e9a: $a9
    xor c                                         ; $5e9b: $a9
    xor c                                         ; $5e9c: $a9
    xor c                                         ; $5e9d: $a9
    adc c                                         ; $5e9e: $89
    adc c                                         ; $5e9f: $89
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    nop                                           ; $5ea4: $00
    nop                                           ; $5ea5: $00
    sub e                                         ; $5ea6: $93
    sub e                                         ; $5ea7: $93
    rst $38                                       ; $5ea8: $ff
    rst $38                                       ; $5ea9: $ff
    ld c, [hl]                                    ; $5eaa: $4e
    ld c, [hl]                                    ; $5eab: $4e
    jp z, Jump_04d_52ca                           ; $5eac: $ca $ca $52

    ld d, d                                       ; $5eaf: $52
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    nop                                           ; $5eb2: $00
    nop                                           ; $5eb3: $00
    nop                                           ; $5eb4: $00
    nop                                           ; $5eb5: $00
    ld [hl-], a                                   ; $5eb6: $32
    ld [hl-], a                                   ; $5eb7: $32
    rst $38                                       ; $5eb8: $ff
    rst $38                                       ; $5eb9: $ff
    ld c, d                                       ; $5eba: $4a
    ld c, d                                       ; $5ebb: $4a
    ld c, d                                       ; $5ebc: $4a
    ld c, d                                       ; $5ebd: $4a
    ld c, d                                       ; $5ebe: $4a
    ld c, d                                       ; $5ebf: $4a
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    nop                                           ; $5ec2: $00
    nop                                           ; $5ec3: $00
    nop                                           ; $5ec4: $00
    nop                                           ; $5ec5: $00
    ld h, [hl]                                    ; $5ec6: $66
    ld h, [hl]                                    ; $5ec7: $66
    rst $38                                       ; $5ec8: $ff
    rst $38                                       ; $5ec9: $ff
    rst $08                                       ; $5eca: $cf
    ret z                                         ; $5ecb: $c8

    sbc a                                         ; $5ecc: $9f
    sub b                                         ; $5ecd: $90
    sbc a                                         ; $5ece: $9f
    sub b                                         ; $5ecf: $90
    cp a                                          ; $5ed0: $bf
    and b                                         ; $5ed1: $a0
    ccf                                           ; $5ed2: $3f
    jr nz, @+$41                                  ; $5ed3: $20 $3f

    jr nz, @+$41                                  ; $5ed5: $20 $3f

    jr nz, @+$01                                  ; $5ed7: $20 $ff

    ret nz                                        ; $5ed9: $c0

    rst $38                                       ; $5eda: $ff
    ld bc, $03ff                                  ; $5edb: $01 $ff $03
    cp $02                                        ; $5ede: $fe $02
    rst $38                                       ; $5ee0: $ff
    inc bc                                        ; $5ee1: $03
    rst $38                                       ; $5ee2: $ff
    ld bc, $00ff                                  ; $5ee3: $01 $ff $00
    rst $38                                       ; $5ee6: $ff
    nop                                           ; $5ee7: $00
    rst $38                                       ; $5ee8: $ff
    nop                                           ; $5ee9: $00
    ld l, c                                       ; $5eea: $69
    ld l, c                                       ; $5eeb: $69
    xor e                                         ; $5eec: $ab
    xor e                                         ; $5eed: $ab
    xor d                                         ; $5eee: $aa
    xor d                                         ; $5eef: $aa
    ld b, d                                       ; $5ef0: $42
    ld b, d                                       ; $5ef1: $42
    nop                                           ; $5ef2: $00
    nop                                           ; $5ef3: $00
    add b                                         ; $5ef4: $80
    add b                                         ; $5ef5: $80
    sub c                                         ; $5ef6: $91
    sub c                                         ; $5ef7: $91
    rst $38                                       ; $5ef8: $ff
    ld a, a                                       ; $5ef9: $7f
    db $dd                                        ; $5efa: $dd
    db $dd                                        ; $5efb: $dd
    ld d, h                                       ; $5efc: $54
    ld d, h                                       ; $5efd: $54
    xor $ee                                       ; $5efe: $ee $ee
    xor d                                         ; $5f00: $aa
    xor d                                         ; $5f01: $aa
    nop                                           ; $5f02: $00
    nop                                           ; $5f03: $00
    nop                                           ; $5f04: $00
    nop                                           ; $5f05: $00
    adc e                                         ; $5f06: $8b
    adc e                                         ; $5f07: $8b
    rst $38                                       ; $5f08: $ff
    rst $38                                       ; $5f09: $ff
    xor c                                         ; $5f0a: $a9
    xor c                                         ; $5f0b: $a9
    xor e                                         ; $5f0c: $ab
    xor e                                         ; $5f0d: $ab
    xor d                                         ; $5f0e: $aa
    xor d                                         ; $5f0f: $aa
    adc d                                         ; $5f10: $8a
    adc d                                         ; $5f11: $8a
    ld bc, $0101                                  ; $5f12: $01 $01 $01
    ld bc, $1919                                  ; $5f15: $01 $19 $19
    rst $38                                       ; $5f18: $ff
    cp $ff                                        ; $5f19: $fe $ff
    ret nz                                        ; $5f1b: $c0

    ld a, a                                       ; $5f1c: $7f
    ld b, b                                       ; $5f1d: $40
    rst $38                                       ; $5f1e: $ff
    add b                                         ; $5f1f: $80
    rst $38                                       ; $5f20: $ff
    add b                                         ; $5f21: $80
    rst $38                                       ; $5f22: $ff
    nop                                           ; $5f23: $00
    rst $38                                       ; $5f24: $ff
    nop                                           ; $5f25: $00
    rst $38                                       ; $5f26: $ff
    nop                                           ; $5f27: $00
    rst $38                                       ; $5f28: $ff
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00

jr_04d_5f2c:
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    nop                                           ; $5f33: $00
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    nop                                           ; $5f37: $00
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    rst $38                                       ; $5f3a: $ff
    dec h                                         ; $5f3b: $25
    jp c, $eb5a                                   ; $5f3c: $da $5a $eb

    dec hl                                        ; $5f3f: $2b
    db $ed                                        ; $5f40: $ed
    dec l                                         ; $5f41: $2d
    push de                                       ; $5f42: $d5
    ld d, l                                       ; $5f43: $55
    ldh [rNR41], a                                ; $5f44: $e0 $20
    ldh a, [rNR10]                                ; $5f46: $f0 $10
    rst $38                                       ; $5f48: $ff
    rrca                                          ; $5f49: $0f
    rst $38                                       ; $5f4a: $ff
    jr nz, jr_04d_5f2c                            ; $5f4b: $20 $df

    push de                                       ; $5f4d: $d5
    ld e, d                                       ; $5f4e: $5a
    ld e, d                                       ; $5f4f: $5a
    ld d, l                                       ; $5f50: $55
    ld d, l                                       ; $5f51: $55
    dec b                                         ; $5f52: $05
    dec b                                         ; $5f53: $05
    nop                                           ; $5f54: $00
    nop                                           ; $5f55: $00
    nop                                           ; $5f56: $00
    nop                                           ; $5f57: $00
    rst $38                                       ; $5f58: $ff
    rst $38                                       ; $5f59: $ff
    rst $38                                       ; $5f5a: $ff
    sub b                                         ; $5f5b: $90
    ld l, a                                       ; $5f5c: $6f
    ld l, b                                       ; $5f5d: $68
    xor a                                         ; $5f5e: $af
    xor h                                         ; $5f5f: $ac
    db $db                                        ; $5f60: $db
    jp c, Jump_04d_5457                           ; $5f61: $da $57 $54

    rlca                                          ; $5f64: $07
    inc b                                         ; $5f65: $04
    rrca                                          ; $5f66: $0f
    ld [$f0ff], sp                                ; $5f67: $08 $ff $f0
    rst $38                                       ; $5f6a: $ff
    nop                                           ; $5f6b: $00
    rst $38                                       ; $5f6c: $ff
    nop                                           ; $5f6d: $00
    rst $38                                       ; $5f6e: $ff
    nop                                           ; $5f6f: $00
    rst $38                                       ; $5f70: $ff
    ld [bc], a                                    ; $5f71: $02
    db $fd                                        ; $5f72: $fd
    dec b                                         ; $5f73: $05
    db $fd                                        ; $5f74: $fd
    dec b                                         ; $5f75: $05
    cp $02                                        ; $5f76: $fe $02
    rst $38                                       ; $5f78: $ff
    ld bc, $00ff                                  ; $5f79: $01 $ff $00
    rst $38                                       ; $5f7c: $ff
    nop                                           ; $5f7d: $00
    rst $38                                       ; $5f7e: $ff
    ld b, b                                       ; $5f7f: $40
    cp a                                          ; $5f80: $bf
    xor l                                         ; $5f81: $ad
    ld a, d                                       ; $5f82: $7a
    ld a, d                                       ; $5f83: $7a
    ld d, [hl]                                    ; $5f84: $56
    ld d, [hl]                                    ; $5f85: $56
    nop                                           ; $5f86: $00
    nop                                           ; $5f87: $00
    rst $38                                       ; $5f88: $ff
    rst $38                                       ; $5f89: $ff
    rst $38                                       ; $5f8a: $ff
    nop                                           ; $5f8b: $00
    rst $38                                       ; $5f8c: $ff
    nop                                           ; $5f8d: $00
    rst $38                                       ; $5f8e: $ff
    nop                                           ; $5f8f: $00
    rst $38                                       ; $5f90: $ff
    ld b, b                                       ; $5f91: $40
    cp a                                          ; $5f92: $bf
    and b                                         ; $5f93: $a0
    cp a                                          ; $5f94: $bf
    and b                                         ; $5f95: $a0
    ld a, a                                       ; $5f96: $7f
    ld b, b                                       ; $5f97: $40
    rst $38                                       ; $5f98: $ff
    add b                                         ; $5f99: $80
    nop                                           ; $5f9a: $00
    nop                                           ; $5f9b: $00
    nop                                           ; $5f9c: $00
    nop                                           ; $5f9d: $00
    nop                                           ; $5f9e: $00
    nop                                           ; $5f9f: $00
    nop                                           ; $5fa0: $00
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    nop                                           ; $5fa4: $00
    nop                                           ; $5fa5: $00
    nop                                           ; $5fa6: $00
    nop                                           ; $5fa7: $00
    nop                                           ; $5fa8: $00
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    nop                                           ; $5fac: $00
    nop                                           ; $5fad: $00
    nop                                           ; $5fae: $00
    nop                                           ; $5faf: $00
    nop                                           ; $5fb0: $00
    nop                                           ; $5fb1: $00
    nop                                           ; $5fb2: $00
    nop                                           ; $5fb3: $00
    nop                                           ; $5fb4: $00
    nop                                           ; $5fb5: $00
    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    nop                                           ; $5fb8: $00
    nop                                           ; $5fb9: $00
    nop                                           ; $5fba: $00
    nop                                           ; $5fbb: $00
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    nop                                           ; $5fbf: $00
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    nop                                           ; $5fc2: $00
    nop                                           ; $5fc3: $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    nop                                           ; $5fcf: $00
    nop                                           ; $5fd0: $00
    nop                                           ; $5fd1: $00
    nop                                           ; $5fd2: $00
    nop                                           ; $5fd3: $00
    nop                                           ; $5fd4: $00
    nop                                           ; $5fd5: $00
    nop                                           ; $5fd6: $00
    nop                                           ; $5fd7: $00
    nop                                           ; $5fd8: $00
    nop                                           ; $5fd9: $00
    nop                                           ; $5fda: $00
    nop                                           ; $5fdb: $00
    nop                                           ; $5fdc: $00
    nop                                           ; $5fdd: $00
    nop                                           ; $5fde: $00
    nop                                           ; $5fdf: $00
    nop                                           ; $5fe0: $00
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    nop                                           ; $5fe3: $00
    nop                                           ; $5fe4: $00
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    nop                                           ; $5fe7: $00
    nop                                           ; $5fe8: $00
    nop                                           ; $5fe9: $00
    nop                                           ; $5fea: $00
    nop                                           ; $5feb: $00
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    nop                                           ; $5fee: $00
    nop                                           ; $5fef: $00
    nop                                           ; $5ff0: $00
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    nop                                           ; $5ff4: $00
    nop                                           ; $5ff5: $00
    nop                                           ; $5ff6: $00
    nop                                           ; $5ff7: $00
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    nop                                           ; $5ffb: $00
    nop                                           ; $5ffc: $00
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00
    nop                                           ; $5fff: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    nop                                           ; $600c: $00
    nop                                           ; $600d: $00
    nop                                           ; $600e: $00
    nop                                           ; $600f: $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00
    nop                                           ; $601b: $00
    nop                                           ; $601c: $00
    nop                                           ; $601d: $00
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602a: $00
    nop                                           ; $602b: $00
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603a: $00
    nop                                           ; $603b: $00
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    nop                                           ; $603f: $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00

Call_04d_604a:
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    nop                                           ; $6058: $00
    nop                                           ; $6059: $00
    nop                                           ; $605a: $00
    nop                                           ; $605b: $00
    nop                                           ; $605c: $00
    nop                                           ; $605d: $00
    nop                                           ; $605e: $00
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00

Call_04d_6074:
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607a: $00
    nop                                           ; $607b: $00
    nop                                           ; $607c: $00
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    nop                                           ; $608b: $00
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    nop                                           ; $609b: $00
    nop                                           ; $609c: $00
    nop                                           ; $609d: $00
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    nop                                           ; $60a8: $00
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    nop                                           ; $60ae: $00
    nop                                           ; $60af: $00
    nop                                           ; $60b0: $00
    nop                                           ; $60b1: $00
    nop                                           ; $60b2: $00
    nop                                           ; $60b3: $00
    nop                                           ; $60b4: $00
    nop                                           ; $60b5: $00
    nop                                           ; $60b6: $00
    nop                                           ; $60b7: $00
    nop                                           ; $60b8: $00
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    nop                                           ; $60bb: $00
    nop                                           ; $60bc: $00
    nop                                           ; $60bd: $00
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    nop                                           ; $60c0: $00
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    nop                                           ; $60c3: $00
    nop                                           ; $60c4: $00
    nop                                           ; $60c5: $00
    nop                                           ; $60c6: $00
    nop                                           ; $60c7: $00
    nop                                           ; $60c8: $00
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    nop                                           ; $60cb: $00
    nop                                           ; $60cc: $00
    nop                                           ; $60cd: $00
    nop                                           ; $60ce: $00
    nop                                           ; $60cf: $00
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    nop                                           ; $60d2: $00
    nop                                           ; $60d3: $00
    nop                                           ; $60d4: $00
    nop                                           ; $60d5: $00
    nop                                           ; $60d6: $00
    nop                                           ; $60d7: $00
    nop                                           ; $60d8: $00
    nop                                           ; $60d9: $00
    nop                                           ; $60da: $00
    nop                                           ; $60db: $00
    nop                                           ; $60dc: $00
    nop                                           ; $60dd: $00
    nop                                           ; $60de: $00
    nop                                           ; $60df: $00
    nop                                           ; $60e0: $00
    nop                                           ; $60e1: $00
    nop                                           ; $60e2: $00
    nop                                           ; $60e3: $00
    nop                                           ; $60e4: $00
    nop                                           ; $60e5: $00
    nop                                           ; $60e6: $00
    nop                                           ; $60e7: $00
    nop                                           ; $60e8: $00
    nop                                           ; $60e9: $00
    nop                                           ; $60ea: $00
    nop                                           ; $60eb: $00
    nop                                           ; $60ec: $00
    nop                                           ; $60ed: $00
    nop                                           ; $60ee: $00
    nop                                           ; $60ef: $00
    nop                                           ; $60f0: $00
    nop                                           ; $60f1: $00
    nop                                           ; $60f2: $00
    nop                                           ; $60f3: $00
    nop                                           ; $60f4: $00
    nop                                           ; $60f5: $00
    nop                                           ; $60f6: $00
    nop                                           ; $60f7: $00
    nop                                           ; $60f8: $00
    nop                                           ; $60f9: $00
    nop                                           ; $60fa: $00
    nop                                           ; $60fb: $00
    nop                                           ; $60fc: $00
    nop                                           ; $60fd: $00
    nop                                           ; $60fe: $00
    nop                                           ; $60ff: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00
    nop                                           ; $6105: $00
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    nop                                           ; $610a: $00
    nop                                           ; $610b: $00
    nop                                           ; $610c: $00
    nop                                           ; $610d: $00
    nop                                           ; $610e: $00
    nop                                           ; $610f: $00
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    nop                                           ; $6116: $00
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    nop                                           ; $611a: $00
    nop                                           ; $611b: $00
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    nop                                           ; $611e: $00
    nop                                           ; $611f: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    nop                                           ; $6129: $00
    nop                                           ; $612a: $00
    nop                                           ; $612b: $00
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    nop                                           ; $612f: $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    nop                                           ; $6135: $00
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    nop                                           ; $613b: $00
    nop                                           ; $613c: $00
    nop                                           ; $613d: $00
    nop                                           ; $613e: $00
    nop                                           ; $613f: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00
    nop                                           ; $614a: $00
    nop                                           ; $614b: $00
    nop                                           ; $614c: $00
    nop                                           ; $614d: $00
    nop                                           ; $614e: $00
    nop                                           ; $614f: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00
    nop                                           ; $615a: $00
    nop                                           ; $615b: $00
    nop                                           ; $615c: $00
    nop                                           ; $615d: $00
    nop                                           ; $615e: $00
    nop                                           ; $615f: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    nop                                           ; $616a: $00
    nop                                           ; $616b: $00
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    nop                                           ; $616e: $00
    nop                                           ; $616f: $00
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    nop                                           ; $617b: $00
    nop                                           ; $617c: $00
    nop                                           ; $617d: $00
    nop                                           ; $617e: $00
    nop                                           ; $617f: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    nop                                           ; $618b: $00
    nop                                           ; $618c: $00
    nop                                           ; $618d: $00
    nop                                           ; $618e: $00
    nop                                           ; $618f: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    nop                                           ; $619a: $00
    nop                                           ; $619b: $00
    nop                                           ; $619c: $00
    nop                                           ; $619d: $00
    nop                                           ; $619e: $00
    nop                                           ; $619f: $00
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    nop                                           ; $61a3: $00
    nop                                           ; $61a4: $00
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00
    nop                                           ; $61a7: $00
    nop                                           ; $61a8: $00
    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    nop                                           ; $61ab: $00
    nop                                           ; $61ac: $00
    nop                                           ; $61ad: $00
    nop                                           ; $61ae: $00
    nop                                           ; $61af: $00
    nop                                           ; $61b0: $00
    nop                                           ; $61b1: $00
    nop                                           ; $61b2: $00
    nop                                           ; $61b3: $00
    nop                                           ; $61b4: $00
    nop                                           ; $61b5: $00
    nop                                           ; $61b6: $00
    nop                                           ; $61b7: $00
    nop                                           ; $61b8: $00
    nop                                           ; $61b9: $00
    nop                                           ; $61ba: $00
    nop                                           ; $61bb: $00
    nop                                           ; $61bc: $00
    nop                                           ; $61bd: $00
    nop                                           ; $61be: $00
    nop                                           ; $61bf: $00
    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    nop                                           ; $61c3: $00
    nop                                           ; $61c4: $00
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    nop                                           ; $61c8: $00
    nop                                           ; $61c9: $00
    nop                                           ; $61ca: $00
    nop                                           ; $61cb: $00
    nop                                           ; $61cc: $00
    nop                                           ; $61cd: $00
    nop                                           ; $61ce: $00
    nop                                           ; $61cf: $00
    nop                                           ; $61d0: $00
    nop                                           ; $61d1: $00
    nop                                           ; $61d2: $00
    nop                                           ; $61d3: $00
    nop                                           ; $61d4: $00
    nop                                           ; $61d5: $00
    nop                                           ; $61d6: $00
    nop                                           ; $61d7: $00
    nop                                           ; $61d8: $00
    nop                                           ; $61d9: $00
    nop                                           ; $61da: $00
    nop                                           ; $61db: $00
    nop                                           ; $61dc: $00
    nop                                           ; $61dd: $00
    nop                                           ; $61de: $00
    nop                                           ; $61df: $00
    nop                                           ; $61e0: $00
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    nop                                           ; $61e3: $00
    nop                                           ; $61e4: $00
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    nop                                           ; $61e8: $00
    nop                                           ; $61e9: $00
    nop                                           ; $61ea: $00
    nop                                           ; $61eb: $00
    nop                                           ; $61ec: $00
    nop                                           ; $61ed: $00
    nop                                           ; $61ee: $00
    nop                                           ; $61ef: $00
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    nop                                           ; $61f2: $00
    nop                                           ; $61f3: $00
    nop                                           ; $61f4: $00
    nop                                           ; $61f5: $00
    nop                                           ; $61f6: $00
    nop                                           ; $61f7: $00
    nop                                           ; $61f8: $00
    nop                                           ; $61f9: $00
    nop                                           ; $61fa: $00
    nop                                           ; $61fb: $00
    nop                                           ; $61fc: $00
    nop                                           ; $61fd: $00
    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    nop                                           ; $6209: $00
    nop                                           ; $620a: $00
    nop                                           ; $620b: $00
    nop                                           ; $620c: $00
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    nop                                           ; $620f: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    nop                                           ; $621a: $00
    nop                                           ; $621b: $00
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    nop                                           ; $622a: $00
    nop                                           ; $622b: $00
    nop                                           ; $622c: $00
    nop                                           ; $622d: $00
    nop                                           ; $622e: $00
    nop                                           ; $622f: $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    ld d, e                                       ; $623a: $53
    ld d, h                                       ; $623b: $54
    ld d, l                                       ; $623c: $55
    ld d, b                                       ; $623d: $50
    ld d, c                                       ; $623e: $51
    ld d, d                                       ; $623f: $52
    ld a, [hl-]                                   ; $6240: $3a
    dec sp                                        ; $6241: $3b
    inc a                                         ; $6242: $3c
    dec a                                         ; $6243: $3d
    ld a, $4a                                     ; $6244: $3e $4a
    ld c, e                                       ; $6246: $4b
    ld c, h                                       ; $6247: $4c
    ld c, l                                       ; $6248: $4d
    ld c, [hl]                                    ; $6249: $4e
    dec [hl]                                      ; $624a: $35
    ld [hl], $37                                  ; $624b: $36 $37
    jr c, @+$3b                                   ; $624d: $38 $39

    ld b, l                                       ; $624f: $45
    ld b, [hl]                                    ; $6250: $46
    ld b, a                                       ; $6251: $47
    ld c, b                                       ; $6252: $48
    ld c, c                                       ; $6253: $49
    jr nc, jr_04d_6287                            ; $6254: $30 $31

    ld [hl-], a                                   ; $6256: $32
    inc sp                                        ; $6257: $33
    inc [hl]                                      ; $6258: $34
    ld b, b                                       ; $6259: $40
    ld b, c                                       ; $625a: $41
    ld b, d                                       ; $625b: $42
    ld b, e                                       ; $625c: $43
    ld b, h                                       ; $625d: $44
    rlca                                          ; $625e: $07
    ld [$0a09], sp                                ; $625f: $08 $09 $0a
    dec bc                                        ; $6262: $0b
    inc c                                         ; $6263: $0c
    dec c                                         ; $6264: $0d
    rla                                           ; $6265: $17
    jr @+$1b                                      ; $6266: $18 $19

    ld a, [de]                                    ; $6268: $1a
    dec de                                        ; $6269: $1b
    inc e                                         ; $626a: $1c
    dec e                                         ; $626b: $1d
    daa                                           ; $626c: $27
    jr z, jr_04d_6298                             ; $626d: $28 $29

    ld a, [hl+]                                   ; $626f: $2a
    dec hl                                        ; $6270: $2b
    inc l                                         ; $6271: $2c
    dec l                                         ; $6272: $2d
    nop                                           ; $6273: $00
    ld bc, $0302                                  ; $6274: $01 $02 $03
    inc b                                         ; $6277: $04
    dec b                                         ; $6278: $05
    ld b, $10                                     ; $6279: $06 $10
    ld de, $1312                                  ; $627b: $11 $12 $13
    inc d                                         ; $627e: $14
    dec d                                         ; $627f: $15
    ld d, $20                                     ; $6280: $16 $20
    ld hl, $2322                                  ; $6282: $21 $22 $23
    inc h                                         ; $6285: $24
    dec h                                         ; $6286: $25

jr_04d_6287:
    ld h, $ff                                     ; $6287: $26 $ff
    ld sp, hl                                     ; $6289: $f9
    inc bc                                        ; $628a: $03
    ld bc, $623a                                  ; $628b: $01 $3a $62
    nop                                           ; $628e: $00
    nop                                           ; $628f: $00
    rst $38                                       ; $6290: $ff
    ld sp, hl                                     ; $6291: $f9
    inc bc                                        ; $6292: $03
    ld bc, $623a                                  ; $6293: $01 $3a $62
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00

jr_04d_6298:
    rst $38                                       ; $6298: $ff
    ld sp, hl                                     ; $6299: $f9
    inc bc                                        ; $629a: $03
    ld bc, $623d                                  ; $629b: $01 $3d $62
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    cp $f1                                        ; $62a0: $fe $f1
    dec b                                         ; $62a2: $05
    ld [bc], a                                    ; $62a3: $02
    ld b, b                                       ; $62a4: $40
    ld h, d                                       ; $62a5: $62
    nop                                           ; $62a6: $00
    nop                                           ; $62a7: $00
    cp $f1                                        ; $62a8: $fe $f1
    dec b                                         ; $62aa: $05
    ld [bc], a                                    ; $62ab: $02
    ld c, d                                       ; $62ac: $4a
    ld h, d                                       ; $62ad: $62
    nop                                           ; $62ae: $00
    nop                                           ; $62af: $00
    cp $f1                                        ; $62b0: $fe $f1
    dec b                                         ; $62b2: $05
    ld [bc], a                                    ; $62b3: $02
    ld d, h                                       ; $62b4: $54
    ld h, d                                       ; $62b5: $62
    nop                                           ; $62b6: $00
    nop                                           ; $62b7: $00
    db $fd                                        ; $62b8: $fd
    jp hl                                         ; $62b9: $e9


    rlca                                          ; $62ba: $07
    inc bc                                        ; $62bb: $03
    ld e, [hl]                                    ; $62bc: $5e
    ld h, d                                       ; $62bd: $62
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    db $fd                                        ; $62c0: $fd
    jp hl                                         ; $62c1: $e9


    rlca                                          ; $62c2: $07
    inc bc                                        ; $62c3: $03
    ld [hl], e                                    ; $62c4: $73
    ld h, d                                       ; $62c5: $62
    nop                                           ; $62c6: $00
    nop                                           ; $62c7: $00

Call_04d_62c8:
    ld hl, $da00                                  ; $62c8: $21 $00 $da

jr_04d_62cb:
    ld a, [hl+]                                   ; $62cb: $2a
    cp $ff                                        ; $62cc: $fe $ff
    jr z, jr_04d_62ed                             ; $62ce: $28 $1d

    ld e, a                                       ; $62d0: $5f
    ld a, [hl+]                                   ; $62d1: $2a
    ld d, a                                       ; $62d2: $57
    ld a, [hl+]                                   ; $62d3: $2a
    ld b, a                                       ; $62d4: $47
    ld a, e                                       ; $62d5: $7b
    cp $03                                        ; $62d6: $fe $03
    jr z, jr_04d_62de                             ; $62d8: $28 $04

    cp $02                                        ; $62da: $fe $02
    jr nz, jr_04d_62eb                            ; $62dc: $20 $0d

jr_04d_62de:
    ld a, b                                       ; $62de: $78
    rrca                                          ; $62df: $0f
    rrca                                          ; $62e0: $0f
    rrca                                          ; $62e1: $0f
    and $07                                       ; $62e2: $e6 $07
    ld e, $07                                     ; $62e4: $1e $07
    push hl                                       ; $62e6: $e5
    call Call_04d_62ee                            ; $62e7: $cd $ee $62
    pop hl                                        ; $62ea: $e1

jr_04d_62eb:
    jr jr_04d_62cb                                ; $62eb: $18 $de

jr_04d_62ed:
    ret                                           ; $62ed: $c9


Call_04d_62ee:
    add a                                         ; $62ee: $87
    add a                                         ; $62ef: $87
    add a                                         ; $62f0: $87
    ld hl, $635b                                  ; $62f1: $21 $5b $63
    add l                                         ; $62f4: $85
    ld l, a                                       ; $62f5: $6f
    jr nc, jr_04d_62f9                            ; $62f6: $30 $01

    inc h                                         ; $62f8: $24

jr_04d_62f9:
    ld a, [hl+]                                   ; $62f9: $2a
    add d                                         ; $62fa: $82
    ld d, a                                       ; $62fb: $57
    ld a, [hl+]                                   ; $62fc: $2a
    add e                                         ; $62fd: $83
    ld b, a                                       ; $62fe: $47
    ld a, [hl+]                                   ; $62ff: $2a
    ld e, a                                       ; $6300: $5f
    ld a, [hl+]                                   ; $6301: $2a
    ld c, a                                       ; $6302: $4f
    ld a, [hl+]                                   ; $6303: $2a
    ld h, [hl]                                    ; $6304: $66
    ld l, a                                       ; $6305: $6f

jr_04d_6306:
    push de                                       ; $6306: $d5

jr_04d_6307:
    ld a, [hl]                                    ; $6307: $7e
    and a                                         ; $6308: $a7
    jr z, jr_04d_6350                             ; $6309: $28 $45

    bit 7, d                                      ; $630b: $cb $7a
    jr nz, jr_04d_6350                            ; $630d: $20 $41

    ld a, d                                       ; $630f: $7a
    cp $14                                        ; $6310: $fe $14
    jr nc, jr_04d_6350                            ; $6312: $30 $3c

    push bc                                       ; $6314: $c5
    push de                                       ; $6315: $d5
    push hl                                       ; $6316: $e5
    ld c, d                                       ; $6317: $4a
    ld l, [hl]                                    ; $6318: $6e
    ld h, $00                                     ; $6319: $26 $00
    add hl, hl                                    ; $631b: $29
    add hl, hl                                    ; $631c: $29
    add hl, hl                                    ; $631d: $29
    add hl, hl                                    ; $631e: $29
    ld de, $44ee                                  ; $631f: $11 $ee $44
    add hl, de                                    ; $6322: $19
    ld e, l                                       ; $6323: $5d
    ld d, h                                       ; $6324: $54
    ld a, c                                       ; $6325: $79
    add a                                         ; $6326: $87
    add a                                         ; $6327: $87
    add a                                         ; $6328: $87
    add b                                         ; $6329: $80
    ld l, a                                       ; $632a: $6f
    ld h, $00                                     ; $632b: $26 $00
    add hl, hl                                    ; $632d: $29
    add hl, hl                                    ; $632e: $29
    add hl, hl                                    ; $632f: $29
    add hl, hl                                    ; $6330: $29
    ld bc, $d000                                  ; $6331: $01 $00 $d0
    add hl, bc                                    ; $6334: $09
    call Call_04d_63a8                            ; $6335: $cd $a8 $63
    call Call_04d_63a8                            ; $6338: $cd $a8 $63
    call Call_04d_63a8                            ; $633b: $cd $a8 $63
    call Call_04d_63a8                            ; $633e: $cd $a8 $63
    call Call_04d_63a8                            ; $6341: $cd $a8 $63
    call Call_04d_63a8                            ; $6344: $cd $a8 $63
    call Call_04d_63a8                            ; $6347: $cd $a8 $63
    call Call_04d_63a8                            ; $634a: $cd $a8 $63
    pop hl                                        ; $634d: $e1
    pop de                                        ; $634e: $d1
    pop bc                                        ; $634f: $c1

jr_04d_6350:
    inc hl                                        ; $6350: $23
    inc d                                         ; $6351: $14
    dec e                                         ; $6352: $1d
    jr nz, jr_04d_6307                            ; $6353: $20 $b2

    pop de                                        ; $6355: $d1
    inc b                                         ; $6356: $04
    dec c                                         ; $6357: $0d
    jr nz, jr_04d_6306                            ; $6358: $20 $ac

    ret                                           ; $635a: $c9


    rst $38                                       ; $635b: $ff
    cp $03                                        ; $635c: $fe $03
    inc bc                                        ; $635e: $03
    ld l, [hl]                                    ; $635f: $6e
    ld d, e                                       ; $6360: $53
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    rst $38                                       ; $6363: $ff
    ei                                            ; $6364: $fb
    inc bc                                        ; $6365: $03
    ld b, $77                                     ; $6366: $06 $77
    ld d, e                                       ; $6368: $53
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    cp $f9                                        ; $636b: $fe $f9
    dec b                                         ; $636d: $05
    ld [$5389], sp                                ; $636e: $08 $89 $53
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    db $fd                                        ; $6373: $fd
    ld sp, hl                                     ; $6374: $f9
    rlca                                          ; $6375: $07
    ld [$53b1], sp                                ; $6376: $08 $b1 $53
    nop                                           ; $6379: $00
    nop                                           ; $637a: $00
    db $fc                                        ; $637b: $fc
    ld sp, hl                                     ; $637c: $f9
    add hl, bc                                    ; $637d: $09
    ld [$53e9], sp                                ; $637e: $08 $e9 $53
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    db $fc                                        ; $6383: $fc
    ld sp, hl                                     ; $6384: $f9
    add hl, bc                                    ; $6385: $09
    ld [$5431], sp                                ; $6386: $08 $31 $54
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00
    ei                                            ; $638b: $fb
    ld sp, hl                                     ; $638c: $f9
    dec bc                                        ; $638d: $0b
    ld [$5479], sp                                ; $638e: $08 $79 $54
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    ei                                            ; $6393: $fb
    ld sp, hl                                     ; $6394: $f9
    dec bc                                        ; $6395: $0b
    ld [$5479], sp                                ; $6396: $08 $79 $54
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00

Call_04d_639b:
    ld a, [de]                                    ; $639b: $1a
    ld c, a                                       ; $639c: $4f
    inc de                                        ; $639d: $13
    ld a, [de]                                    ; $639e: $1a
    ld b, a                                       ; $639f: $47
    inc de                                        ; $63a0: $13
    push de                                       ; $63a1: $d5
    xor c                                         ; $63a2: $a9
    ld e, a                                       ; $63a3: $5f
    cpl                                           ; $63a4: $2f
    ld d, a                                       ; $63a5: $57
    jr jr_04d_63b3                                ; $63a6: $18 $0b

Call_04d_63a8:
    ld a, [de]                                    ; $63a8: $1a
    ld c, a                                       ; $63a9: $4f
    inc de                                        ; $63aa: $13
    ld a, [de]                                    ; $63ab: $1a
    ld b, a                                       ; $63ac: $47
    inc de                                        ; $63ad: $13
    push de                                       ; $63ae: $d5
    or c                                          ; $63af: $b1
    ld d, a                                       ; $63b0: $57
    cpl                                           ; $63b1: $2f
    ld e, a                                       ; $63b2: $5f

jr_04d_63b3:
    ld a, d                                       ; $63b3: $7a
    and b                                         ; $63b4: $a0
    ld b, a                                       ; $63b5: $47
    ld a, d                                       ; $63b6: $7a
    and c                                         ; $63b7: $a1
    ld c, a                                       ; $63b8: $4f
    ld a, [hl]                                    ; $63b9: $7e
    and e                                         ; $63ba: $a3
    or c                                          ; $63bb: $b1
    ld [hl+], a                                   ; $63bc: $22
    ld a, [hl]                                    ; $63bd: $7e
    and e                                         ; $63be: $a3
    or b                                          ; $63bf: $b0
    ld [hl+], a                                   ; $63c0: $22
    pop de                                        ; $63c1: $d1
    ret                                           ; $63c2: $c9


    ld a, a                                       ; $63c3: $7f
    rst $38                                       ; $63c4: $ff
    nop                                           ; $63c5: $00
    rst $38                                       ; $63c6: $ff
    ld a, a                                       ; $63c7: $7f
    rst $00                                       ; $63c8: $c7
    ld c, a                                       ; $63c9: $4f
    rst $08                                       ; $63ca: $cf
    cp $e0                                        ; $63cb: $fe $e0
    cp a                                          ; $63cd: $bf
    rst $00                                       ; $63ce: $c7
    ld c, a                                       ; $63cf: $4f
    jp $c443                                      ; $63d0: $c3 $43 $c4


    ld b, a                                       ; $63d3: $47
    ldh a, [$e0]                                  ; $63d4: $f0 $e0
    rst $38                                       ; $63d6: $ff
    rst $38                                       ; $63d7: $ff
    nop                                           ; $63d8: $00
    add b                                         ; $63d9: $80
    add b                                         ; $63da: $80
    ret nz                                        ; $63db: $c0

    ld hl, sp-$04                                 ; $63dc: $f8 $fc
    add $ff                                       ; $63de: $c6 $ff
    cp l                                          ; $63e0: $bd
    add c                                         ; $63e1: $81

Jump_04d_63e2:
    di                                            ; $63e2: $f3
    ld [c], a                                     ; $63e3: $e2
    rst $38                                       ; $63e4: $ff
    cp $03                                        ; $63e5: $fe $03
    ld [bc], a                                    ; $63e7: $02
    cp $e3                                        ; $63e8: $fe $e3
    add e                                         ; $63ea: $83
    rst $38                                       ; $63eb: $ff
    jp nz, $e243                                  ; $63ec: $c2 $43 $e2

    rst $00                                       ; $63ef: $c7
    ld b, a                                       ; $63f0: $47
    call $cd4f                                    ; $63f1: $cd $4f $cd
    rst $38                                       ; $63f4: $ff
    ld c, a                                       ; $63f5: $4f
    call nz, $c647                                ; $63f6: $c4 $47 $c6
    ld b, a                                       ; $63f9: $47
    jp nz, $c443                                  ; $63fa: $c2 $43 $c4

    rst $38                                       ; $63fd: $ff
    ld c, a                                       ; $63fe: $4f
    jp z, $c04f                                   ; $63ff: $ca $4f $c0

    rst $38                                       ; $6402: $ff
    ld hl, sp-$01                                 ; $6403: $f8 $ff
    inc b                                         ; $6405: $04
    rst $38                                       ; $6406: $ff
    rst $38                                       ; $6407: $ff
    db $e3                                        ; $6408: $e3
    rst $38                                       ; $6409: $ff
    db $d3                                        ; $640a: $d3
    rst $18                                       ; $640b: $df
    di                                            ; $640c: $f3
    sbc a                                         ; $640d: $9f
    jp nc, $dfff                                  ; $640e: $d2 $ff $df

    ld bc, $23ef                                  ; $6411: $01 $ef $23
    ld [c], a                                     ; $6414: $e2
    inc hl                                        ; $6415: $23
    ld a, [c]                                     ; $6416: $f2
    inc de                                        ; $6417: $13
    rst $38                                       ; $6418: $ff
    ld a, [c]                                     ; $6419: $f2
    sub e                                         ; $641a: $93
    ld a, [c]                                     ; $641b: $f2
    db $d3                                        ; $641c: $d3
    ld a, [c]                                     ; $641d: $f2
    di                                            ; $641e: $f3
    ld a, [$bffb]                                 ; $641f: $fa $fb $bf
    cp $7f                                        ; $6422: $fe $7f
    cp $c8                                        ; $6424: $fe $c8
    ld c, a                                       ; $6426: $4f
    ret                                           ; $6427: $c9


    jp nc, $c2e0                                  ; $6428: $d2 $e0 $c2

    rst $38                                       ; $642b: $ff
    ld b, e                                       ; $642c: $43
    rst $00                                       ; $642d: $c7
    ld b, a                                       ; $642e: $47
    jp nz, $ff46                                  ; $642f: $c2 $46 $ff

    ld a, a                                       ; $6432: $7f
    rst $38                                       ; $6433: $ff
    rst $38                                       ; $6434: $ff
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    rst $38                                       ; $6437: $ff

Call_04d_6438:
    add h                                         ; $6438: $84
    rst $38                                       ; $6439: $ff
    rlca                                          ; $643a: $07
    rst $38                                       ; $643b: $ff
    rra                                           ; $643c: $1f
    cp a                                          ; $643d: $bf
    rst $38                                       ; $643e: $ff
    push hl                                       ; $643f: $e5
    db $fd                                        ; $6440: $fd
    xor d                                         ; $6441: $aa
    ld a, b                                       ; $6442: $78
    rst $38                                       ; $6443: $ff
    sub l                                         ; $6444: $95
    ldh [$7f], a                                  ; $6445: $e0 $7f
    ld a, a                                       ; $6447: $7f
    cp $fb                                        ; $6448: $fe $fb
    cp $c3                                        ; $644a: $fe $c3
    ld [c], a                                     ; $644c: $e2
    add e                                         ; $644d: $83
    jp nz, $e1fe                                  ; $644e: $c2 $fe $e1

    ld [hl], e                                    ; $6451: $73
    rst $38                                       ; $6452: $ff
    cp $72                                        ; $6453: $fe $72
    ldh [rSVBK], a                                ; $6455: $e0 $70
    ldh [$c3], a                                  ; $6457: $e0 $c3
    ld b, a                                       ; $6459: $47
    rst $00                                       ; $645a: $c7
    cp $e0                                        ; $645b: $fe $e0
    ei                                            ; $645d: $fb
    jp $7047                                      ; $645e: $c3 $47 $70


    push hl                                       ; $6461: $e5
    add b                                         ; $6462: $80
    ret nz                                        ; $6463: $c0

    ldh [$f0], a                                  ; $6464: $e0 $f0
    db $fc                                        ; $6466: $fc
    xor a                                         ; $6467: $af
    cp $e3                                        ; $6468: $fe $e3
    rst $38                                       ; $646a: $ff
    ret nz                                        ; $646b: $c0

    ld [hl], b                                    ; $646c: $70
    db $eb                                        ; $646d: $eb
    add d                                         ; $646e: $82
    ld [hl], b                                    ; $646f: $70
    db $e3                                        ; $6470: $e3
    rst $00                                       ; $6471: $c7
    ei                                            ; $6472: $fb
    ld b, a                                       ; $6473: $47
    push bc                                       ; $6474: $c5
    ld [hl], d                                    ; $6475: $72
    ldh [$c3], a                                  ; $6476: $e0 $c3
    ld b, e                                       ; $6478: $43
    push bc                                       ; $6479: $c5
    ld c, l                                       ; $647a: $4d
    jp z, $94fe                                   ; $647b: $ca $fe $94

    ldh [$f0], a                                  ; $647e: $e0 $f0
    rst $38                                       ; $6480: $ff
    ld a, h                                       ; $6481: $7c
    rst $38                                       ; $6482: $ff
    ld b, d                                       ; $6483: $42
    rst $38                                       ; $6484: $ff
    ld sp, $ffff                                  ; $6485: $31 $ff $ff
    ld e, c                                       ; $6488: $59
    rst $18                                       ; $6489: $df
    ld a, c                                       ; $648a: $79
    rst $08                                       ; $648b: $cf
    ld e, c                                       ; $648c: $59
    rst $18                                       ; $648d: $df
    nop                                           ; $648e: $00
    db $dd                                        ; $648f: $dd
    rst $30                                       ; $6490: $f7
    ld [hl], b                                    ; $6491: $70
    jp hl                                         ; $6492: $e9


    ld a, e                                       ; $6493: $7b
    ld a, [$70bb]                                 ; $6494: $fa $bb $70
    ldh [$c4], a                                  ; $6497: $e0 $c4
    ld c, a                                       ; $6499: $4f
    rst $10                                       ; $649a: $d7
    jp nz, $c147                                  ; $649b: $c2 $47 $c1

    ld [hl], b                                    ; $649e: $70
    add sp, -$3e                                  ; $649f: $e8 $c2
    ld [hl], b                                    ; $64a1: $70
    ld [$fe3b], a                                 ; $64a2: $ea $3b $fe
    rst $08                                       ; $64a5: $cf
    ld a, e                                       ; $64a6: $7b
    cp $f3                                        ; $64a7: $fe $f3
    ld a, [$e36e]                                 ; $64a9: $fa $6e $e3
    ld [hl], b                                    ; $64ac: $70
    push hl                                       ; $64ad: $e5
    ret nz                                        ; $64ae: $c0

    ld b, c                                       ; $64af: $41
    add l                                         ; $64b0: $85
    pop bc                                        ; $64b1: $c1
    cp $e1                                        ; $64b2: $fe $e1
    ld b, e                                       ; $64b4: $43
    ld c, $e0                                     ; $64b5: $0e $e0
    ldh [$c2], a                                  ; $64b7: $e0 $c2
    ld [hl], c                                    ; $64b9: $71
    ldh [rSVBK], a                                ; $64ba: $e0 $70
    ldh [$f3], a                                  ; $64bc: $e0 $f3
    xor e                                         ; $64be: $ab
    rst $38                                       ; $64bf: $ff
    ldh [rSVBK], a                                ; $64c0: $e0 $70
    ldh a, [$c5]                                  ; $64c2: $f0 $c5
    ld b, h                                       ; $64c4: $44
    ldh [$c4], a                                  ; $64c5: $e0 $c4
    ld l, h                                       ; $64c7: $6c
    pop hl                                        ; $64c8: $e1
    ld b, l                                       ; $64c9: $45
    rst $38                                       ; $64ca: $ff
    push bc                                       ; $64cb: $c5
    ld c, h                                       ; $64cc: $4c
    ret                                           ; $64cd: $c9


    ld c, l                                       ; $64ce: $4d
    ret z                                         ; $64cf: $c8

    ld c, a                                       ; $64d0: $4f
    ld hl, sp-$01                                 ; $64d1: $f8 $ff
    rst $38                                       ; $64d3: $ff
    cp [hl]                                       ; $64d4: $be
    rst $38                                       ; $64d5: $ff
    and c                                         ; $64d6: $a1
    rst $38                                       ; $64d7: $ff
    jr @+$01                                      ; $64d8: $18 $ff

    xor h                                         ; $64da: $ac
    rst $28                                       ; $64db: $ef
    cp a                                          ; $64dc: $bf
    cp h                                          ; $64dd: $bc
    rst $20                                       ; $64de: $e7
    inc l                                         ; $64df: $2c
    rst $28                                       ; $64e0: $ef
    add b                                         ; $64e1: $80
    ei                                            ; $64e2: $fb
    ldh [$c7], a                                  ; $64e3: $e0 $c7
    db $d3                                        ; $64e5: $d3
    rst $18                                       ; $64e6: $df
    ld a, [c]                                     ; $64e7: $f2
    or e                                          ; $64e8: $b3
    ld a, [$fa5b]                                 ; $64e9: $fa $5b $fa
    ld [hl], b                                    ; $64ec: $70
    rst $28                                       ; $64ed: $ef
    ld h, c                                       ; $64ee: $61
    rst $38                                       ; $64ef: $ff
    rst $18                                       ; $64f0: $df
    inc bc                                        ; $64f1: $03
    rst $38                                       ; $64f2: $ff
    adc a                                         ; $64f3: $8f
    rst $38                                       ; $64f4: $ff
    ld [hl], l                                    ; $64f5: $75
    ldh [$c4], a                                  ; $64f6: $e0 $c4
    dec de                                        ; $64f8: $1b
    ld a, [$3b0b]                                 ; $64f9: $fa $0b $3b
    ld a, [$e070]                                 ; $64fc: $fa $70 $e0
    ld a, [c]                                     ; $64ff: $f2
    ldh [$c5], a                                  ; $6500: $e0 $c5
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    rst $38                                       ; $6505: $ff
    rst $38                                       ; $6506: $ff
    nop                                           ; $6507: $00
    rst $38                                       ; $6508: $ff
    ld a, a                                       ; $6509: $7f
    ret nz                                        ; $650a: $c0

    ld b, b                                       ; $650b: $40
    ret nz                                        ; $650c: $c0

    ld b, b                                       ; $650d: $40
    rst $38                                       ; $650e: $ff
    ret c                                         ; $650f: $d8

    ld e, l                                       ; $6510: $5d
    rst $28                                       ; $6511: $ef
    ld [hl], a                                    ; $6512: $77
    pop bc                                        ; $6513: $c1
    ld h, e                                       ; $6514: $63
    ret nz                                        ; $6515: $c0

    ld a, c                                       ; $6516: $79
    or $f0                                        ; $6517: $f6 $f0
    ldh [rIE], a                                  ; $6519: $e0 $ff
    nop                                           ; $651b: $00
    rst $38                                       ; $651c: $ff
    ldh [$7f], a                                  ; $651d: $e0 $7f
    rst $38                                       ; $651f: $ff
    add h                                         ; $6520: $84
    pop hl                                        ; $6521: $e1
    rst $30                                       ; $6522: $f7
    nop                                           ; $6523: $00
    rst $38                                       ; $6524: $ff
    sbc a                                         ; $6525: $9f
    di                                            ; $6526: $f3
    ldh [rIE], a                                  ; $6527: $e0 $ff
    cp $03                                        ; $6529: $fe $03
    ld [bc], a                                    ; $652b: $02
    rst $38                                       ; $652c: $ff
    inc bc                                        ; $652d: $03
    ld [bc], a                                    ; $652e: $02
    ld [hl], e                                    ; $652f: $73
    ld a, [$fa8b]                                 ; $6530: $fa $8b $fa
    ld b, a                                       ; $6533: $47
    cp $ff                                        ; $6534: $fe $ff
    ld l, e                                       ; $6536: $6b
    ld a, [$7fc0]                                 ; $6537: $fa $c0 $7f
    pop bc                                        ; $653a: $c1
    ld a, a                                       ; $653b: $7f
    and $7f                                       ; $653c: $e6 $7f
    rst $38                                       ; $653e: $ff
    ret c                                         ; $653f: $d8

    ld e, a                                       ; $6540: $5f
    db $d3                                        ; $6541: $d3
    ld e, a                                       ; $6542: $5f
    push de                                       ; $6543: $d5
    ld e, [hl]                                    ; $6544: $5e
    rst $08                                       ; $6545: $cf
    ld e, l                                       ; $6546: $5d
    rst $38                                       ; $6547: $ff
    call $ae4c                                    ; $6548: $cd $4c $ae
    ldh [$33], a                                  ; $654b: $e0 $33
    db $ec                                        ; $654d: $ec
    ld a, a                                       ; $654e: $7f
    ret nz                                        ; $654f: $c0

    rst $38                                       ; $6550: $ff
    ld l, e                                       ; $6551: $6b
    call z, $d457                                 ; $6552: $cc $57 $d4
    rst $28                                       ; $6555: $ef
    sbc h                                         ; $6556: $9c
    rst $20                                       ; $6557: $e7
    inc d                                         ; $6558: $14
    rst $38                                       ; $6559: $ff
    rst $28                                       ; $655a: $ef
    inc c                                         ; $655b: $0c
    xor e                                         ; $655c: $ab
    cp d                                          ; $655d: $ba
    xor e                                         ; $655e: $ab
    ld a, d                                       ; $655f: $7a
    di                                            ; $6560: $f3
    ld a, [hl-]                                   ; $6561: $3a
    rst $38                                       ; $6562: $ff
    db $e3                                        ; $6563: $e3
    ld h, d                                       ; $6564: $62
    and e                                         ; $6565: $a3
    ld [c], a                                     ; $6566: $e2
    db $e3                                        ; $6567: $e3
    ld [c], a                                     ; $6568: $e2
    and e                                         ; $6569: $a3
    and d                                         ; $656a: $a2
    rst $38                                       ; $656b: $ff
    ld h, e                                       ; $656c: $63
    ld h, d                                       ; $656d: $62
    add $4e                                       ; $656e: $c6 $4e
    jp $c047                                      ; $6570: $c3 $47 $c0


    ld b, e                                       ; $6573: $43
    rst $38                                       ; $6574: $ff
    ret nz                                        ; $6575: $c0

    ld b, c                                       ; $6576: $41
    pop bc                                        ; $6577: $c1
    ld b, a                                       ; $6578: $47
    push bc                                       ; $6579: $c5
    ld c, h                                       ; $657a: $4c
    rst $38                                       ; $657b: $ff
    ld a, a                                       ; $657c: $7f
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    nop                                           ; $657f: $00
    cp $80                                        ; $6580: $fe $80
    ld a, a                                       ; $6582: $7f
    add b                                         ; $6583: $80
    sbc e                                         ; $6584: $9b
    jp nz, $e57f                                  ; $6585: $c2 $7f $e5

    pop af                                        ; $6588: $f1
    rra                                           ; $6589: $1f
    ld a, a                                       ; $658a: $7f
    rst $30                                       ; $658b: $f7
    sbc d                                         ; $658c: $9a
    rst $38                                       ; $658d: $ff
    sub l                                         ; $658e: $95
    ldh [rIE], a                                  ; $658f: $e0 $ff
    db $e3                                        ; $6591: $e3
    and d                                         ; $6592: $a2
    jp $8342                                      ; $6593: $c3 $42 $83


    jp nz, $8203                                  ; $6596: $c2 $03 $82

    ccf                                           ; $6599: $3f
    inc bc                                        ; $659a: $03
    add d                                         ; $659b: $82
    add e                                         ; $659c: $83
    jp nz, $feff                                  ; $659d: $c2 $ff $fe

    ld [hl], d                                    ; $65a0: $72
    ldh [rSVBK], a                                ; $65a1: $e0 $70
    db $e4                                        ; $65a3: $e4
    rst $38                                       ; $65a4: $ff
    ldh a, [$79]                                  ; $65a5: $f0 $79
    db $dd                                        ; $65a7: $dd
    ld l, a                                       ; $65a8: $6f
    jp nz, $c147                                  ; $65a9: $c2 $47 $c1

    ld [hl], e                                    ; $65ac: $73
    cp $70                                        ; $65ad: $fe $70
    push hl                                       ; $65af: $e5
    ld a, [hl]                                    ; $65b0: $7e
    rst $38                                       ; $65b1: $ff
    adc c                                         ; $65b2: $89
    db $e3                                        ; $65b3: $e3
    nop                                           ; $65b4: $00
    rst $38                                       ; $65b5: $ff
    dec a                                         ; $65b6: $3d
    cp $70                                        ; $65b7: $fe $70
    and $43                                       ; $65b9: $e6 $43
    ld [c], a                                     ; $65bb: $e2
    cp a                                          ; $65bc: $bf
    cp [hl]                                       ; $65bd: $be
    ld b, a                                       ; $65be: $47
    cp $2b                                        ; $65bf: $fe $2b
    rst $38                                       ; $65c1: $ff
    ld a, [$7fc1]                                 ; $65c2: $fa $c1 $7f
    jp nz, $cc7f                                  ; $65c5: $c2 $7f $cc

    ld a, a                                       ; $65c8: $7f
    pop af                                        ; $65c9: $f1
    rst $38                                       ; $65ca: $ff
    ld a, a                                       ; $65cb: $7f
    rst $10                                       ; $65cc: $d7
    ld e, a                                       ; $65cd: $5f
    bit 3, l                                      ; $65ce: $cb $5d
    rst $08                                       ; $65d0: $cf
    ld e, d                                       ; $65d1: $5a
    set 7, a                                      ; $65d2: $cb $ff
    ld c, b                                       ; $65d4: $48
    ld [hl], e                                    ; $65d5: $73
    add $8f                                       ; $65d6: $c6 $8f
    and b                                         ; $65d8: $a0
    rst $38                                       ; $65d9: $ff
    add b                                         ; $65da: $80
    xor a                                         ; $65db: $af
    rst $38                                       ; $65dc: $ff
    jr nc, jr_04d_663e                            ; $65dd: $30 $5f

    ld d, c                                       ; $65df: $51
    cp a                                          ; $65e0: $bf
    ld [hl], c                                    ; $65e1: $71
    sbc [hl]                                      ; $65e2: $9e
    ld d, b                                       ; $65e3: $50
    cp a                                          ; $65e4: $bf
    rst $38                                       ; $65e5: $ff
    ld sp, $fea7                                  ; $65e6: $31 $a7 $fe
    ld h, a                                       ; $65e9: $67
    cp $eb                                        ; $65ea: $fe $eb
    ld a, d                                       ; $65ec: $7a
    or e                                          ; $65ed: $b3
    cp a                                          ; $65ee: $bf
    ld a, [$6263]                                 ; $65ef: $fa $63 $62
    jp $a3e2                                      ; $65f2: $c3 $e2 $a3


    ld l, [hl]                                    ; $65f5: $6e
    ldh [$c5], a                                  ; $65f6: $e0 $c5
    ld sp, hl                                     ; $65f8: $f9
    ld c, l                                       ; $65f9: $4d
    xor d                                         ; $65fa: $aa
    ldh [rSVBK], a                                ; $65fb: $e0 $70
    add sp, -$05                                  ; $65fd: $e8 $fb
    ld [bc], a                                    ; $65ff: $02
    rst $38                                       ; $6600: $ff
    nop                                           ; $6601: $00
    or a                                          ; $6602: $b7
    or a                                          ; $6603: $b7
    call nz, $f3ed                                ; $6604: $c4 $ed $f3
    ld [hl], b                                    ; $6607: $70
    push hl                                       ; $6608: $e5
    and e                                         ; $6609: $a3
    ld [hl+], a                                   ; $660a: $22
    ld [hl], b                                    ; $660b: $70
    di                                            ; $660c: $f3
    ret nc                                        ; $660d: $d0

    ld a, a                                       ; $660e: $7f
    ld a, b                                       ; $660f: $78
    ld sp, hl                                     ; $6610: $f9
    ld l, a                                       ; $6611: $6f
    add $4f                                       ; $6612: $c6 $4f
    jp nz, $e077                                  ; $6614: $c2 $77 $e0

    push bc                                       ; $6617: $c5
    ld a, a                                       ; $6618: $7f
    ld a, h                                       ; $6619: $7c
    cp $93                                        ; $661a: $fe $93
    rst $00                                       ; $661c: $c7
    nop                                           ; $661d: $00
    rst $38                                       ; $661e: $ff
    ld a, e                                       ; $661f: $7b
    ldh [$c6], a                                  ; $6620: $e0 $c6
    rst $38                                       ; $6622: $ff
    inc hl                                        ; $6623: $23
    ld [hl], d                                    ; $6624: $72
    rst $18                                       ; $6625: $df
    sbc $83                                       ; $6626: $de $83
    cp $43                                        ; $6628: $fe $43
    cp $ff                                        ; $662a: $fe $ff
    jp nz, $c57f                                  ; $662c: $c2 $7f $c5

    ld a, a                                       ; $662f: $7f
    jp z, $fb7e                                   ; $6630: $ca $7e $fb

    ld a, [hl]                                    ; $6633: $7e
    rst $38                                       ; $6634: $ff
    adc $5e                                       ; $6635: $ce $5e
    rst $10                                       ; $6637: $d7
    ld e, d                                       ; $6638: $5a
    rst $18                                       ; $6639: $df
    ld d, h                                       ; $663a: $54
    rst $10                                       ; $663b: $d7
    ld d, b                                       ; $663c: $50
    rst $38                                       ; $663d: $ff

jr_04d_663e:
    and h                                         ; $663e: $a4
    adc h                                         ; $663f: $8c
    ld e, $c1                                     ; $6640: $1e $c1
    rst $38                                       ; $6642: $ff
    nop                                           ; $6643: $00
    ld e, l                                       ; $6644: $5d
    ld b, c                                       ; $6645: $41
    rst $38                                       ; $6646: $ff
    cp [hl]                                       ; $6647: $be
    and d                                         ; $6648: $a2
    ld a, a                                       ; $6649: $7f
    db $e3                                        ; $664a: $e3
    dec a                                         ; $664b: $3d
    ld hl, $63ff                                  ; $664c: $21 $ff $63
    cp $70                                        ; $664f: $fe $70
    pop hl                                        ; $6651: $e1
    rst $20                                       ; $6652: $e7
    ld a, [hl]                                    ; $6653: $7e
    dec sp                                        ; $6654: $3b
    ld a, [hl]                                    ; $6655: $7e
    db $e3                                        ; $6656: $e3
    and d                                         ; $6657: $a2
    inc hl                                        ; $6658: $23
    rst $38                                       ; $6659: $ff
    or d                                          ; $665a: $b2
    inc de                                        ; $665b: $13
    ld d, d                                       ; $665c: $52
    di                                            ; $665d: $f3
    ld d, d                                       ; $665e: $52
    jp z, $c65a                                   ; $665f: $ca $5a $c6

    db $fd                                        ; $6662: $fd
    ld c, a                                       ; $6663: $4f
    ld [hl], b                                    ; $6664: $70
    jp hl                                         ; $6665: $e9


    rst $30                                       ; $6666: $f7
    inc b                                         ; $6667: $04
    rst $38                                       ; $6668: $ff
    nop                                           ; $6669: $00
    ld l, $89                                     ; $666a: $2e $89
    rst $30                                       ; $666c: $f7
    set 4, e                                      ; $666d: $cb $e3
    dec a                                         ; $666f: $3d
    ldh [$c4], a                                  ; $6670: $e0 $c4
    db $d3                                        ; $6672: $d3
    ld [hl], d                                    ; $6673: $72
    ld h, e                                       ; $6674: $63
    ld [hl], d                                    ; $6675: $72
    ld bc, $e283                                  ; $6676: $01 $83 $e2
    ret nz                                        ; $6679: $c0

    ldh [$c5], a                                  ; $667a: $e0 $c5
    nop                                           ; $667c: $00
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    ld a, a                                       ; $667f: $7f
    rst $38                                       ; $6680: $ff
    nop                                           ; $6681: $00
    rst $38                                       ; $6682: $ff
    ld a, a                                       ; $6683: $7f
    push bc                                       ; $6684: $c5
    ld b, h                                       ; $6685: $44
    rst $00                                       ; $6686: $c7
    cp $e1                                        ; $6687: $fe $e1
    rst $18                                       ; $6689: $df
    ld b, a                                       ; $668a: $47
    call c, $e75e                                 ; $668b: $dc $5e $e7
    ld [hl], b                                    ; $668e: $70
    ldh a, [$e0]                                  ; $668f: $f0 $e0
    rst $38                                       ; $6691: $ff
    db $f4                                        ; $6692: $f4
    ei                                            ; $6693: $fb
    rlca                                          ; $6694: $07
    ld a, [$e0fe]                                 ; $6695: $fa $fe $e0
    pop af                                        ; $6698: $f1
    db $fd                                        ; $6699: $fd
    rrca                                          ; $669a: $0f
    rra                                           ; $669b: $1f
    ld sp, hl                                     ; $669c: $f9
    db $fd                                        ; $669d: $fd
    inc bc                                        ; $669e: $03
    ldh [$e0], a                                  ; $669f: $e0 $e0
    cp $13                                        ; $66a1: $fe $13
    ld a, [c]                                     ; $66a3: $f2
    dec bc                                        ; $66a4: $0b
    ld a, [$ff0b]                                 ; $66a5: $fa $0b $ff
    ld a, [$fefb]                                 ; $66a8: $fa $fb $fe
    rst $08                                       ; $66ab: $cf
    ld e, $e7                                     ; $66ac: $1e $e7
    xor $df                                       ; $66ae: $ee $df
    rst $38                                       ; $66b0: $ff
    ld a, a                                       ; $66b1: $7f
    db $fd                                        ; $66b2: $fd
    ld a, h                                       ; $66b3: $7c
    bit 1, [hl]                                   ; $66b4: $cb $4e
    add $46                                       ; $66b6: $c6 $46
    add $ff                                       ; $66b8: $c6 $ff
    ld b, [hl]                                    ; $66ba: $46
    push de                                       ; $66bb: $d5
    ld d, l                                       ; $66bc: $55
    db $dd                                        ; $66bd: $dd
    ld e, h                                       ; $66be: $5c
    push de                                       ; $66bf: $d5

jr_04d_66c0:
    ld d, [hl]                                    ; $66c0: $56
    add [hl]                                      ; $66c1: $86
    rst $38                                       ; $66c2: $ff
    rst $08                                       ; $66c3: $cf
    db $fc                                        ; $66c4: $fc
    ld a, a                                       ; $66c5: $7f
    ld a, [$cd2b]                                 ; $66c6: $fa $2b $cd
    dec de                                        ; $66c9: $1b
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    jr jr_04d_66c0                                ; $66cc: $18 $f2

    ld bc, $00ff                                  ; $66ce: $01 $ff $00
    cp l                                          ; $66d1: $bd
    pop bc                                        ; $66d2: $c1
    rra                                           ; $66d3: $1f
    ei                                            ; $66d4: $fb
    cp $07                                        ; $66d5: $fe $07
    cp $e0                                        ; $66d7: $fe $e0
    add e                                         ; $66d9: $83
    cp $43                                        ; $66da: $fe $43
    cp $43                                        ; $66dc: $fe $43
    ei                                            ; $66de: $fb
    ld a, [hl]                                    ; $66df: $7e
    ld b, e                                       ; $66e0: $43
    ld hl, sp-$20                                 ; $66e1: $f8 $e0
    jp nc, $c957                                  ; $66e3: $d2 $57 $c9

    ld e, a                                       ; $66e6: $5f
    add $ff                                       ; $66e7: $c6 $ff
    ld c, a                                       ; $66e9: $4f
    pop bc                                        ; $66ea: $c1
    ld b, e                                       ; $66eb: $43
    ret nz                                        ; $66ec: $c0

    ld b, b                                       ; $66ed: $40
    ret nz                                        ; $66ee: $c0

    ld b, c                                       ; $66ef: $41
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    ld a, a                                       ; $66f2: $7f
    rst $38                                       ; $66f3: $ff
    nop                                           ; $66f4: $00
    dec a                                         ; $66f5: $3d
    inc bc                                        ; $66f6: $03
    ld [hl], a                                    ; $66f7: $77
    add a                                         ; $66f8: $87
    adc c                                         ; $66f9: $89
    rst $38                                       ; $66fa: $ff
    rst $18                                       ; $66fb: $df
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    halt                                          ; $66fe: $76
    ld e, b                                       ; $66ff: $58
    xor c                                         ; $6700: $a9
    ei                                            ; $6701: $fb
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    nop                                           ; $6706: $00
    inc bc                                        ; $6707: $03
    cp $03                                        ; $6708: $fe $03
    cp $13                                        ; $670a: $fe $13
    rst $38                                       ; $670c: $ff
    cp $ff                                        ; $670d: $fe $ff
    cp $83                                        ; $670f: $fe $83
    jp nz, $c243                                  ; $6711: $c2 $43 $c2

    rst $38                                       ; $6714: $ff
    reti                                          ; $6715: $d9


    cp $72                                        ; $6716: $fe $72
    ldh [rSVBK], a                                ; $6718: $e0 $70
    ldh [$c4], a                                  ; $671a: $e0 $c4
    ld b, [hl]                                    ; $671c: $46
    ld l, [hl]                                    ; $671d: $6e
    ld [c], a                                     ; $671e: $e2
    ld b, a                                       ; $671f: $47
    call z, $4eb7                                 ; $6720: $cc $b7 $4e
    reti                                          ; $6723: $d9


    ld e, h                                       ; $6724: $5c
    ld [hl], b                                    ; $6725: $70
    pop hl                                        ; $6726: $e1
    ld [c], a                                     ; $6727: $e2
    rlca                                          ; $6728: $07
    ld a, b                                       ; $6729: $78
    pop hl                                        ; $672a: $e1
    ld sp, hl                                     ; $672b: $f9
    rst $28                                       ; $672c: $ef
    db $fc                                        ; $672d: $fc
    rlca                                          ; $672e: $07
    ccf                                           ; $672f: $3f
    db $fc                                        ; $6730: $fc
    sbc h                                         ; $6731: $9c
    ldh [rIE], a                                  ; $6732: $e0 $ff
    cp $23                                        ; $6734: $fe $23
    rst $38                                       ; $6736: $ff
    ld a, [c]                                     ; $6737: $f2
    inc de                                        ; $6738: $13
    ld a, [c]                                     ; $6739: $f2
    sub e                                         ; $673a: $93
    ld a, [c]                                     ; $673b: $f2
    di                                            ; $673c: $f3
    ld a, [$ffdb]                                 ; $673d: $fa $db $ff
    sbc d                                         ; $6740: $9a
    set 5, d                                      ; $6741: $cb $ea
    rst $20                                       ; $6743: $e7
    ld a, a                                       ; $6744: $7f
    sbc $5e                                       ; $6745: $de $5e
    rst $00                                       ; $6747: $c7
    rst $38                                       ; $6748: $ff
    ld b, a                                       ; $6749: $47
    push bc                                       ; $674a: $c5
    ld b, l                                       ; $674b: $45
    push bc                                       ; $674c: $c5
    ld b, a                                       ; $674d: $47
    push bc                                       ; $674e: $c5
    ld h, h                                       ; $674f: $64
    push af                                       ; $6750: $f5
    rst $38                                       ; $6751: $ff
    ld a, h                                       ; $6752: $7c
    db $eb                                        ; $6753: $eb
    ld l, [hl]                                    ; $6754: $6e
    ld sp, hl                                     ; $6755: $f9
    rst $38                                       ; $6756: $ff
    xor $1f                                       ; $6757: $ee $1f
    rst $30                                       ; $6759: $f7
    rst $38                                       ; $675a: $ff
    dec d                                         ; $675b: $15
    ld l, h                                       ; $675c: $6c
    ld d, $7f                                     ; $675d: $16 $7f
    ld b, $b3                                     ; $675f: $06 $b3
    add b                                         ; $6761: $80
    rst $38                                       ; $6762: $ff
    rst $28                                       ; $6763: $ef
    nop                                           ; $6764: $00
    sbc $60                                       ; $6765: $de $60
    dec sp                                        ; $6767: $3b
    ld b, [hl]                                    ; $6768: $46
    ldh [$0b], a                                  ; $6769: $e0 $0b
    cp $c7                                        ; $676b: $fe $c7
    rst $38                                       ; $676d: $ff
    cp $a7                                        ; $676e: $fe $a7
    ld a, [hl]                                    ; $6770: $7e
    inc hl                                        ; $6771: $23
    cp [hl]                                       ; $6772: $be
    and e                                         ; $6773: $a3
    ld a, [hl]                                    ; $6774: $7e
    jp $feff                                      ; $6775: $c3 $ff $fe


    pop hl                                        ; $6778: $e1
    ld [hl], a                                    ; $6779: $77
    ret nc                                        ; $677a: $d0

    ld a, a                                       ; $677b: $7f
    call z, $c35f                                 ; $677c: $cc $5f $c3
    db $fd                                        ; $677f: $fd
    ld b, a                                       ; $6780: $47
    ld [hl], b                                    ; $6781: $70
    push hl                                       ; $6782: $e5
    sbc l                                         ; $6783: $9d
    inc bc                                        ; $6784: $03
    rst $30                                       ; $6785: $f7
    add a                                         ; $6786: $87
    ret                                           ; $6787: $c9


    rst $18                                       ; $6788: $df

jr_04d_6789:
    db $dd                                        ; $6789: $dd
    ld a, a                                       ; $678a: $7f
    ld [hl], b                                    ; $678b: $70
    ld [$fe27], a                                 ; $678c: $ea $27 $fe
    ei                                            ; $678f: $fb
    ld [hl], b                                    ; $6790: $70
    ld [$47c2], a                                 ; $6791: $ea $c2 $47
    cp [hl]                                       ; $6794: $be
    ld l, [hl]                                    ; $6795: $6e
    pop hl                                        ; $6796: $e1
    push bc                                       ; $6797: $c5
    ld b, a                                       ; $6798: $47
    add $4f                                       ; $6799: $c6 $4f
    ret                                           ; $679b: $c9


    ld [hl], b                                    ; $679c: $70
    ld [c], a                                     ; $679d: $e2
    ld [hl], e                                    ; $679e: $73
    ld a, l                                       ; $679f: $7d
    rlca                                          ; $67a0: $07
    ld a, b                                       ; $67a1: $78
    pop hl                                        ; $67a2: $e1
    db $fc                                        ; $67a3: $fc
    cp $03                                        ; $67a4: $fe $03
    ld a, a                                       ; $67a6: $7f
    cp $50                                        ; $67a7: $fe $50
    pop hl                                        ; $67a9: $e1
    rst $38                                       ; $67aa: $ff
    cp $43                                        ; $67ab: $fe $43
    ld [c], a                                     ; $67ad: $e2
    and e                                         ; $67ae: $a3
    ld a, [c]                                     ; $67af: $f2
    ld d, e                                       ; $67b0: $53
    ld [hl], d                                    ; $67b1: $72
    di                                            ; $67b2: $f3
    rst $38                                       ; $67b3: $ff
    ld a, d                                       ; $67b4: $7a
    db $eb                                        ; $67b5: $eb
    jp c, $ea4b                                   ; $67b6: $da $4b $ea

    db $d3                                        ; $67b9: $d3
    ld e, a                                       ; $67ba: $5f
    sbc $ff                                       ; $67bb: $de $ff
    ld e, a                                       ; $67bd: $5f
    push bc                                       ; $67be: $c5
    ld b, l                                       ; $67bf: $45
    add $46                                       ; $67c0: $c6 $46
    push bc                                       ; $67c2: $c5
    ld c, [hl]                                    ; $67c3: $4e
    set 7, a                                      ; $67c4: $cb $ff
    ld l, [hl]                                    ; $67c6: $6e
    ld [$d27e], a                                 ; $67c7: $ea $7e $d2
    ld e, e                                       ; $67ca: $5b
    db $fc                                        ; $67cb: $fc
    rst $38                                       ; $67cc: $ff
    ld [hl], a                                    ; $67cd: $77
    rst $38                                       ; $67ce: $ff
    rlca                                          ; $67cf: $07
    ld l, e                                       ; $67d0: $6b
    adc d                                         ; $67d1: $8a
    or $8b                                        ; $67d2: $f6 $8b
    cp a                                          ; $67d4: $bf
    add e                                         ; $67d5: $83
    ld e, c                                       ; $67d6: $59
    rst $38                                       ; $67d7: $ff
    ld b, b                                       ; $67d8: $40
    rst $38                                       ; $67d9: $ff
    nop                                           ; $67da: $00
    rst $28                                       ; $67db: $ef
    jr nc, jr_04d_6789                            ; $67dc: $30 $ab

    ld a, [$ff1b]                                 ; $67de: $fa $1b $ff
    ld a, [$fa8b]                                 ; $67e1: $fa $8b $fa
    ld l, e                                       ; $67e4: $6b
    ld a, [hl]                                    ; $67e5: $7e
    rst $10                                       ; $67e6: $d7
    ld a, $97                                     ; $67e7: $3e $97
    rst $38                                       ; $67e9: $ff
    ld e, [hl]                                    ; $67ea: $5e
    db $d3                                        ; $67eb: $d3
    ld a, $23                                     ; $67ec: $3e $23
    ld a, [hl]                                    ; $67ee: $7e
    pop de                                        ; $67ef: $d1
    ld h, a                                       ; $67f0: $67
    ldh [$df], a                                  ; $67f1: $e0 $df
    ld a, a                                       ; $67f3: $7f
    reti                                          ; $67f4: $d9


    ld a, a                                       ; $67f5: $7f
    add $4f                                       ; $67f6: $c6 $4f
    ldh [$c5], a                                  ; $67f8: $e0 $c5
    ld c, [hl]                                    ; $67fa: $4e
    ld bc, $bbaf                                  ; $67fb: $01 $af $bb
    add e                                         ; $67fe: $83
    ld b, l                                       ; $67ff: $45
    rst $28                                       ; $6800: $ef
    ldh [$c7], a                                  ; $6801: $e0 $c7
    jp $c0e0                                      ; $6803: $c3 $e0 $c0


    ld c, a                                       ; $6806: $4f
    rlca                                          ; $6807: $07
    cp $f3                                        ; $6808: $fe $f3
    ld a, [$c5e0]                                 ; $680a: $fa $e0 $c5
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    nop                                           ; $6812: $00
    rst $38                                       ; $6813: $ff
    ld a, a                                       ; $6814: $7f
    ret nz                                        ; $6815: $c0

    ld b, b                                       ; $6816: $40
    pop bc                                        ; $6817: $c1
    ld b, e                                       ; $6818: $43
    or a                                          ; $6819: $b7
    jp nz, $c447                                  ; $681a: $c2 $47 $c4

    cp $e0                                        ; $681d: $fe $e0
    ret z                                         ; $681f: $c8

    ld c, a                                       ; $6820: $4f
    ldh a, [$e0]                                  ; $6821: $f0 $e0
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    ld a, a                                       ; $6825: $7f
    rst $38                                       ; $6826: $ff
    add d                                         ; $6827: $82
    add sp, $00                                   ; $6828: $e8 $00
    db $fd                                        ; $682a: $fd
    jr c, @+$01                                   ; $682b: $38 $ff

    rst $28                                       ; $682d: $ef
    ld [hl], a                                    ; $682e: $77
    rst $00                                       ; $682f: $c7
    ld a, a                                       ; $6830: $7f
    ret nz                                        ; $6831: $c0

    ldh [$e0], a                                  ; $6832: $e0 $e0
    cp $03                                        ; $6834: $fe $03
    ld [bc], a                                    ; $6836: $02
    rst $38                                       ; $6837: $ff
    add e                                         ; $6838: $83
    add d                                         ; $6839: $82
    add e                                         ; $683a: $83
    add d                                         ; $683b: $82
    ld b, e                                       ; $683c: $43
    jp nz, $4243                                  ; $683d: $c2 $43 $42

    rst $38                                       ; $6840: $ff
    jp $c842                                      ; $6841: $c3 $42 $c8


    ld c, a                                       ; $6844: $4f
    pop de                                        ; $6845: $d1
    ld e, a                                       ; $6846: $5f
    pop de                                        ; $6847: $d1
    ld e, a                                       ; $6848: $5f
    rst $38                                       ; $6849: $ff
    rst $10                                       ; $684a: $d7
    ld e, a                                       ; $684b: $5f
    reti                                          ; $684c: $d9


    ld e, c                                       ; $684d: $59
    rst $18                                       ; $684e: $df
    ld e, e                                       ; $684f: $5b
    call z, $ff49                                 ; $6850: $cc $49 $ff
    bit 1, h                                      ; $6853: $cb $4c
    rst $00                                       ; $6855: $c7
    sbc b                                         ; $6856: $98
    ld a, a                                       ; $6857: $7f
    nop                                           ; $6858: $00
    db $fd                                        ; $6859: $fd
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    rst $30                                       ; $685d: $f7
    ld [hl], l                                    ; $685e: $75
    ld [hl], a                                    ; $685f: $77
    ei                                            ; $6860: $fb
    ccf                                           ; $6861: $3f
    db $fd                                        ; $6862: $fd
    inc b                                         ; $6863: $04
    ld a, a                                       ; $6864: $7f
    ei                                            ; $6865: $fb
    rlca                                          ; $6866: $07
    ld b, e                                       ; $6867: $43
    jp nz, Jump_04d_42c3                          ; $6868: $c2 $c3 $42

    jp $e0d6                                      ; $686b: $c3 $d6 $e0


    db $fc                                        ; $686e: $fc
    ld hl, sp-$20                                 ; $686f: $f8 $e0
    cp $e0                                        ; $6871: $fe $e0
    ld b, e                                       ; $6873: $43
    jp nz, Jump_04d_4fc6                          ; $6874: $c2 $c6 $4f

    push bc                                       ; $6877: $c5
    ld b, a                                       ; $6878: $47
    or a                                          ; $6879: $b7
    rst $00                                       ; $687a: $c7
    ld c, a                                       ; $687b: $4f
    ret                                           ; $687c: $c9


    jp z, $d2e0                                   ; $687d: $ca $e0 $d2

    ld e, [hl]                                    ; $6880: $5e
    and a                                         ; $6881: $a7
    ldh [rP1], a                                  ; $6882: $e0 $00
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    nop                                           ; $6886: $00
    or $0e                                        ; $6887: $f6 $0e
    ld a, [$7d0f]                                 ; $6889: $fa $0f $7d
    dec c                                         ; $688c: $0d
    rst $38                                       ; $688d: $ff
    ld a, l                                       ; $688e: $7d
    add e                                         ; $688f: $83
    ld a, [$ff86]                                 ; $6890: $fa $86 $ff
    rst $38                                       ; $6893: $ff
    rst $38                                       ; $6894: $ff
    nop                                           ; $6895: $00
    db $db                                        ; $6896: $db
    ld b, e                                       ; $6897: $43
    jp nz, $e1a4                                  ; $6898: $c2 $a4 $e1

    inc bc                                        ; $689b: $03
    ld [bc], a                                    ; $689c: $02
    cp $e1                                        ; $689d: $fe $e1
    rst $38                                       ; $689f: $ff
    cp $5c                                        ; $68a0: $fe $5c
    ldh [$e1], a                                  ; $68a2: $e0 $e1
    ld [hl], b                                    ; $68a4: $70
    pop hl                                        ; $68a5: $e1
    ret nz                                        ; $68a6: $c0

    ld b, c                                       ; $68a7: $41
    jp $e270                                      ; $68a8: $c3 $70 $e2


    ret                                           ; $68ab: $c9


    ld [hl], b                                    ; $68ac: $70
    ld [c], a                                     ; $68ad: $e2
    rst $38                                       ; $68ae: $ff
    ld a, $fe                                     ; $68af: $3e $fe
    ret                                           ; $68b1: $c9


    db $e3                                        ; $68b2: $e3
    nop                                           ; $68b3: $00
    di                                            ; $68b4: $f3
    ld [hl], c                                    ; $68b5: $71
    rst $38                                       ; $68b6: $ff
    daa                                           ; $68b7: $27
    xor [hl]                                      ; $68b8: $ae
    adc [hl]                                      ; $68b9: $8e
    ld a, a                                       ; $68ba: $7f
    ldh [$e1], a                                  ; $68bb: $e0 $e1
    ld [hl], b                                    ; $68bd: $70
    ldh [$03], a                                  ; $68be: $e0 $03
    ld [hl], b                                    ; $68c0: $70
    ld [c], a                                     ; $68c1: $e2
    sbc b                                         ; $68c2: $98
    pop hl                                        ; $68c3: $e1
    rst $38                                       ; $68c4: $ff
    ret                                           ; $68c5: $c9


    ld c, a                                       ; $68c6: $4f
    bit 1, [hl]                                   ; $68c7: $cb $4e
    bit 1, a                                      ; $68c9: $cb $4f
    rst $08                                       ; $68cb: $cf
    ld c, a                                       ; $68cc: $4f
    rst $38                                       ; $68cd: $ff
    jp z, $ce5a                                   ; $68ce: $ca $5a $ce

    ld e, d                                       ; $68d1: $5a
    call $ca5a                                    ; $68d2: $cd $5a $ca
    ld e, l                                       ; $68d5: $5d
    rst $38                                       ; $68d6: $ff
    adc [hl]                                      ; $68d7: $8e
    ld sp, $00ff                                  ; $68d8: $31 $ff $00
    ei                                            ; $68db: $fb
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    sbc $ff                                       ; $68de: $de $ff
    jp c, Jump_04d_77de                           ; $68e0: $da $de $77

    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    ld a, [bc]                                    ; $68e5: $0a
    rst $30                                       ; $68e6: $f7
    inc c                                         ; $68e7: $0c
    cp $4a                                        ; $68e8: $fe $4a
    ld [c], a                                     ; $68ea: $e2
    jp nz, $e2c3                                  ; $68eb: $c2 $c3 $e2

    and e                                         ; $68ee: $a3
    ld [c], a                                     ; $68ef: $e2
    and e                                         ; $68f0: $a3
    and d                                         ; $68f1: $a2
    rst $38                                       ; $68f2: $ff
    and e                                         ; $68f3: $a3
    ld h, d                                       ; $68f4: $62
    inc hl                                        ; $68f5: $23
    and d                                         ; $68f6: $a2
    call nz, $cb4f                                ; $68f7: $c4 $4f $cb
    ld c, a                                       ; $68fa: $4f
    xor a                                         ; $68fb: $af
    push bc                                       ; $68fc: $c5
    ld c, a                                       ; $68fd: $4f
    pop bc                                        ; $68fe: $c1
    ld b, c                                       ; $68ff: $41
    ld h, l                                       ; $6900: $65
    ldh [rSCX], a                                 ; $6901: $e0 $43
    ld [hl], b                                    ; $6903: $70
    db $e3                                        ; $6904: $e3
    cp $bf                                        ; $6905: $fe $bf
    inc e                                         ; $6907: $1c
    or $1d                                        ; $6908: $f6 $1d
    ld l, l                                       ; $690a: $6d
    adc c                                         ; $690b: $89
    db $fd                                        ; $690c: $fd
    ld [hl], b                                    ; $690d: $70
    push hl                                       ; $690e: $e5
    ld [c], a                                     ; $690f: $e2
    adc a                                         ; $6910: $8f
    and e                                         ; $6911: $a3
    ld a, [c]                                     ; $6912: $f2
    jp $70e2                                      ; $6913: $c3 $e2 $70


    db $ed                                        ; $6916: $ed
    ldh [$c0], a                                  ; $6917: $e0 $c0
    sbc $c0                                       ; $6919: $de $c0
    push bc                                       ; $691b: $c5
    rst $30                                       ; $691c: $f7
    ld b, a                                       ; $691d: $47
    add $46                                       ; $691e: $c6 $46
    ldh [$c1], a                                  ; $6920: $e0 $c1
    ld a, h                                       ; $6922: $7c
    cp $a3                                        ; $6923: $fe $a3
    rst $08                                       ; $6925: $cf
    ld a, a                                       ; $6926: $7f
    nop                                           ; $6927: $00
    rst $08                                       ; $6928: $cf
    add $ff                                       ; $6929: $c6 $ff
    ld a, l                                       ; $692b: $7d
    add hl, sp                                    ; $692c: $39
    cp $70                                        ; $692d: $fe $70
    add sp, -$03                                  ; $692f: $e8 $fd
    add e                                         ; $6931: $83
    ld [de], a                                    ; $6932: $12
    ldh [$c3], a                                  ; $6933: $e0 $c3
    jp nz, Jump_04d_46c7                          ; $6935: $c2 $c7 $46

    push bc                                       ; $6938: $c5
    ld b, [hl]                                    ; $6939: $46
    rst $38                                       ; $693a: $ff
    rst $00                                       ; $693b: $c7
    ld b, a                                       ; $693c: $47
    rst $08                                       ; $693d: $cf
    ld e, a                                       ; $693e: $5f
    rst $10                                       ; $693f: $d7
    ld d, a                                       ; $6940: $57
    call c, $ff55                                 ; $6941: $dc $55 $ff
    db $db                                        ; $6944: $db
    ld d, h                                       ; $6945: $54
    push de                                       ; $6946: $d5

jr_04d_6947:
    ld e, d                                       ; $6947: $5a
    add hl, sp                                    ; $6948: $39
    add $ff                                       ; $6949: $c6 $ff
    nop                                           ; $694b: $00
    rst $38                                       ; $694c: $ff
    rst $28                                       ; $694d: $ef
    rst $38                                       ; $694e: $ff
    rst $38                                       ; $694f: $ff
    ld a, l                                       ; $6950: $7d
    ld l, l                                       ; $6951: $6d
    ld a, l                                       ; $6952: $7d
    sub $ff                                       ; $6953: $d6 $ff
    rst $28                                       ; $6955: $ef
    rst $38                                       ; $6956: $ff
    jr z, @-$27                                   ; $6957: $28 $d7

    jr c, jr_04d_6947                             ; $6959: $38 $ec

    pop bc                                        ; $695b: $c1
    jp $e3c2                                      ; $695c: $c3 $c2 $e3


    rst $38                                       ; $695f: $ff
    ld a, [c]                                     ; $6960: $f2
    db $d3                                        ; $6961: $d3
    jp nc, Jump_04d_5273                          ; $6962: $d2 $73 $52

    or e                                          ; $6965: $b3
    ld d, d                                       ; $6966: $52
    ld d, e                                       ; $6967: $53
    rst $38                                       ; $6968: $ff
    or d                                          ; $6969: $b2
    bit 3, [hl]                                   ; $696a: $cb $5e
    sub $5f                                       ; $696c: $d6 $5f
    ret                                           ; $696e: $c9


    ld e, a                                       ; $696f: $5f
    pop bc                                        ; $6970: $c1
    rst $18                                       ; $6971: $df
    ld b, c                                       ; $6972: $41
    ret nz                                        ; $6973: $c0

    ld b, c                                       ; $6974: $41
    ret nz                                        ; $6975: $c0

    ld b, b                                       ; $6976: $40
    ld [hl], b                                    ; $6977: $70
    db $e4                                        ; $6978: $e4
    add hl, sp                                    ; $6979: $39
    rst $28                                       ; $697a: $ef
    ld a, a                                       ; $697b: $7f
    add hl, sp                                    ; $697c: $39
    ld d, l                                       ; $697d: $55
    sub e                                         ; $697e: $93
    cp $83                                        ; $697f: $fe $83
    cp d                                          ; $6981: $ba
    add $e0                                       ; $6982: $c6 $e0
    pop bc                                        ; $6984: $c1
    ccf                                           ; $6985: $3f
    and e                                         ; $6986: $a3
    ld a, [c]                                     ; $6987: $f2
    db $d3                                        ; $6988: $d3
    ld a, [c]                                     ; $6989: $f2
    inc hl                                        ; $698a: $23
    ld a, [c]                                     ; $698b: $f2
    ldh [$c7], a                                  ; $698c: $e0 $c7
    nop                                           ; $698e: $00
    nop                                           ; $698f: $00
    nop                                           ; $6990: $00
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    nop                                           ; $6993: $00
    rst $38                                       ; $6994: $ff
    ld a, a                                       ; $6995: $7f
    rst $00                                       ; $6996: $c7
    ld b, a                                       ; $6997: $47
    ret z                                         ; $6998: $c8

    ld e, h                                       ; $6999: $5c
    rst $38                                       ; $699a: $ff
    reti                                          ; $699b: $d9


    ld d, e                                       ; $699c: $53
    ld [c], a                                     ; $699d: $e2
    ld [hl], e                                    ; $699e: $73
    ld [c], a                                     ; $699f: $e2
    ld a, [hl]                                    ; $69a0: $7e
    push de                                       ; $69a1: $d5
    ld e, [hl]                                    ; $69a2: $5e
    or $f0                                        ; $69a3: $f6 $f0
    ldh [rIE], a                                  ; $69a5: $e0 $ff
    inc bc                                        ; $69a7: $03
    db $eb                                        ; $69a8: $eb
    ldh [$c0], a                                  ; $69a9: $e0 $c0
    rst $38                                       ; $69ab: $ff
    jr nc, @+$81                                  ; $69ac: $30 $7f

    rst $28                                       ; $69ae: $ef
    add sp, $0f                                   ; $69af: $e8 $0f
    ld hl, sp+$0f                                 ; $69b1: $f8 $0f
    ldh [$e0], a                                  ; $69b3: $e0 $e0
    cp $03                                        ; $69b5: $fe $03
    add d                                         ; $69b7: $82
    rst $38                                       ; $69b8: $ff
    add e                                         ; $69b9: $83
    ld [c], a                                     ; $69ba: $e2
    ld b, e                                       ; $69bb: $43
    ld a, [c]                                     ; $69bc: $f2
    inc hl                                        ; $69bd: $23
    ld a, [c]                                     ; $69be: $f2
    inc hl                                        ; $69bf: $23
    ld a, [$13ff]                                 ; $69c0: $fa $ff $13
    ld a, [$4dcb]                                 ; $69c3: $fa $cb $4d
    rst $08                                       ; $69c6: $cf
    ld c, l                                       ; $69c7: $4d
    jp z, $ff4b                                   ; $69c8: $ca $4b $ff

    jp z, $cf4f                                   ; $69cb: $ca $4f $cf

    ld c, a                                       ; $69ce: $4f
    jp c, $ef59                                   ; $69cf: $da $59 $ef

    ld h, b                                       ; $69d2: $60
    rst $38                                       ; $69d3: $ff
    cp $62                                        ; $69d4: $fe $62
    cp b                                          ; $69d6: $b8
    rst $08                                       ; $69d7: $cf
    call nc, Call_04d_6ce7                        ; $69d8: $d4 $e7 $6c
    and a                                         ; $69db: $a7
    rst $38                                       ; $69dc: $ff
    cp h                                          ; $69dd: $bc
    cp a                                          ; $69de: $bf
    daa                                           ; $69df: $27
    rst $20                                       ; $69e0: $e7
    jp c, $f5ee                                   ; $69e1: $da $ee $f5

    dec b                                         ; $69e4: $05
    rst $10                                       ; $69e5: $d7
    rst $38                                       ; $69e6: $ff
    nop                                           ; $69e7: $00
    inc de                                        ; $69e8: $13
    call c, Call_000_13e0                         ; $69e9: $dc $e0 $13
    call nc, $a3e0                                ; $69ec: $d4 $e0 $a3
    ld a, [c]                                     ; $69ef: $f2
    ei                                            ; $69f0: $fb
    db $e3                                        ; $69f1: $e3
    ld h, d                                       ; $69f2: $62
    cp $e1                                        ; $69f3: $fe $e1
    push hl                                       ; $69f5: $e5
    halt                                          ; $69f6: $76
    rst $18                                       ; $69f7: $df
    ld e, a                                       ; $69f8: $5f

jr_04d_69f9:
    jp nz, Jump_04d_43ff                          ; $69f9: $c2 $ff $43

    jp $c143                                      ; $69fc: $c3 $43 $c1


    ld b, e                                       ; $69ff: $43
    pop bc                                        ; $6a00: $c1
    ld b, c                                       ; $6a01: $41
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    ld a, a                                       ; $6a04: $7f
    rst $38                                       ; $6a05: $ff
    nop                                           ; $6a06: $00
    ld a, [$fb04]                                 ; $6a07: $fa $04 $fb
    add e                                         ; $6a0a: $83
    ld a, [$87ff]                                 ; $6a0b: $fa $ff $87
    ld [hl], l                                    ; $6a0e: $75
    adc a                                         ; $6a0f: $8f
    ld [$d20e], a                                 ; $6a10: $ea $0e $d2
    ccf                                           ; $6a13: $3f
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    nop                                           ; $6a18: $00
    jp Jump_04d_43c2                              ; $6a19: $c3 $c2 $43


    jp nz, Jump_000_3783                          ; $6a1c: $c2 $83 $37

    add d                                         ; $6a1f: $82
    inc bc                                        ; $6a20: $03
    ld [bc], a                                    ; $6a21: $02
    cp $e1                                        ; $6a22: $fe $e1
    rst $38                                       ; $6a24: $ff
    cp $72                                        ; $6a25: $fe $72
    ldh [rSVBK], a                                ; $6a27: $e0 $70
    db $e3                                        ; $6a29: $e3
    rst $38                                       ; $6a2a: $ff
    ld e, [hl]                                    ; $6a2b: $5e
    call nc, $e151                                ; $6a2c: $d4 $51 $e1
    ld a, e                                       ; $6a2f: $7b
    pop hl                                        ; $6a30: $e1
    ld a, a                                       ; $6a31: $7f
    jp nc, $70fe                                  ; $6a32: $d2 $fe $70

    and $e0                                       ; $6a35: $e6 $e0
    rst $38                                       ; $6a37: $ff
    jr jr_04d_69f9                                ; $6a38: $18 $bf

    ld h, h                                       ; $6a3a: $64
    rrca                                          ; $6a3b: $0f
    db $fc                                        ; $6a3c: $fc
    db $fd                                        ; $6a3d: $fd
    rlca                                          ; $6a3e: $07
    ld [hl], b                                    ; $6a3f: $70
    db $e4                                        ; $6a40: $e4
    jp nz, $e243                                  ; $6a41: $c2 $43 $e2

    inc hl                                        ; $6a44: $23
    ld a, [c]                                     ; $6a45: $f2
    inc de                                        ; $6a46: $13
    cp $fe                                        ; $6a47: $fe $fe
    ldh [$cd], a                                  ; $6a49: $e0 $cd
    ld c, [hl]                                    ; $6a4b: $4e
    adc $4e                                       ; $6a4c: $ce $4e
    ret                                           ; $6a4e: $c9


    ld c, e                                       ; $6a4f: $4b
    call Call_04d_4fff                            ; $6a50: $cd $ff $4f
    bit 1, a                                      ; $6a53: $cb $4f
    call $d74c                                    ; $6a55: $cd $4c $d7
    ld d, b                                       ; $6a58: $50
    rst $18                                       ; $6a59: $df
    rst $38                                       ; $6a5a: $ff
    ld d, c                                       ; $6a5b: $51
    db $ec                                        ; $6a5c: $ec
    ld [hl], a                                    ; $6a5d: $77
    or $fb                                        ; $6a5e: $f6 $fb
    ld a, [bc]                                    ; $6a60: $0a
    db $db                                        ; $6a61: $db
    ld l, $ff                                     ; $6a62: $2e $ff
    rst $38                                       ; $6a64: $ff
    sub e                                         ; $6a65: $93
    di                                            ; $6a66: $f3
    ld l, l                                       ; $6a67: $6d
    rst $30                                       ; $6a68: $f7
    cp $02                                        ; $6a69: $fe $02
    ld a, a                                       ; $6a6b: $7f
    ld sp, hl                                     ; $6a6c: $f9
    nop                                           ; $6a6d: $00
    call c, Call_04d_46e1                         ; $6a6e: $dc $e1 $46
    ldh [$e2], a                                  ; $6a71: $e0 $e2
    jp Jump_04d_63e2                              ; $6a73: $c3 $e2 $63


    ld [hl+], a                                   ; $6a76: $22
    rst $38                                       ; $6a77: $ff
    db $e3                                        ; $6a78: $e3
    and d                                         ; $6a79: $a2
    db $e3                                        ; $6a7a: $e3
    ld [hl+], a                                   ; $6a7b: $22
    jp nc, $cf5b                                  ; $6a7c: $d2 $5b $cf

    ld c, a                                       ; $6a7f: $4f

Jump_04d_6a80:
    rst $30                                       ; $6a80: $f7
    jp nz, $c246                                  ; $6a81: $c2 $46 $c2

    ld [hl], b                                    ; $6a84: $70
    and $fd                                       ; $6a85: $e6 $fd
    ld [bc], a                                    ; $6a87: $02
    ei                                            ; $6a88: $fb
    jp Jump_04d_7baf                              ; $6a89: $c3 $af $7b


    rst $00                                       ; $6a8c: $c7
    or [hl]                                       ; $6a8d: $b6
    adc $70                                       ; $6a8e: $ce $70
    ldh [$1f], a                                  ; $6a90: $e0 $1f
    ld [hl], b                                    ; $6a92: $70
    pop hl                                        ; $6a93: $e1
    ld b, e                                       ; $6a94: $43
    ld sp, hl                                     ; $6a95: $f9
    ld b, d                                       ; $6a96: $42
    ld [hl], d                                    ; $6a97: $72
    push hl                                       ; $6a98: $e5
    ld [hl], b                                    ; $6a99: $70
    rst $20                                       ; $6a9a: $e7
    add $4f                                       ; $6a9b: $c6 $4f
    ret z                                         ; $6a9d: $c8

    ld e, h                                       ; $6a9e: $5c
    call nc, Call_04d_597f                        ; $6a9f: $d4 $7f $59
    pop de                                        ; $6aa2: $d1
    ld e, e                                       ; $6aa3: $5b
    ret nc                                        ; $6aa4: $d0

    ld e, a                                       ; $6aa5: $5f
    ret                                           ; $6aa6: $c9


    ld e, a                                       ; $6aa7: $5f
    ldh [$c1], a                                  ; $6aa8: $e0 $c1
    rst $38                                       ; $6aaa: $ff
    ld b, $ff                                     ; $6aab: $06 $ff
    ld bc, $f0ff                                  ; $6aad: $01 $ff $f0
    rst $38                                       ; $6ab0: $ff
    inc c                                         ; $6ab1: $0c
    sbc a                                         ; $6ab2: $9f

jr_04d_6ab3:
    ld [hl], a                                    ; $6ab3: $77
    ld a, [c]                                     ; $6ab4: $f2
    add a                                         ; $6ab5: $87
    ld a, [hl]                                    ; $6ab6: $7e
    push de                                       ; $6ab7: $d5
    pop bc                                        ; $6ab8: $c1
    cp $03                                        ; $6ab9: $fe $03
    ld [bc], a                                    ; $6abb: $02
    ld [hl], b                                    ; $6abc: $70
    rst $20                                       ; $6abd: $e7
    rst $38                                       ; $6abe: $ff
    adc $4e                                       ; $6abf: $ce $4e
    rst $08                                       ; $6ac1: $cf
    ld c, a                                       ; $6ac2: $4f
    call z, $ca4b                                 ; $6ac3: $cc $4b $ca
    ld c, e                                       ; $6ac6: $4b
    rst $38                                       ; $6ac7: $ff
    ret                                           ; $6ac8: $c9


    ld c, a                                       ; $6ac9: $4f
    add $4e                                       ; $6aca: $c6 $4e
    bit 1, h                                      ; $6acc: $cb $4c
    adc $48                                       ; $6ace: $ce $48
    rst $38                                       ; $6ad0: $ff
    or [hl]                                       ; $6ad1: $b6
    dec sp                                        ; $6ad2: $3b
    ld a, c                                       ; $6ad3: $79
    ld a, l                                       ; $6ad4: $7d
    add a                                         ; $6ad5: $87
    db $dd                                        ; $6ad6: $dd
    sub a                                         ; $6ad7: $97
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    ld c, e                                       ; $6ada: $4b
    ei                                            ; $6adb: $fb
    or [hl]                                       ; $6adc: $b6
    ld a, e                                       ; $6add: $7b
    ld a, l                                       ; $6ade: $7d
    inc bc                                        ; $6adf: $03
    rst $38                                       ; $6ae0: $ff
    add b                                         ; $6ae1: $80
    cp $72                                        ; $6ae2: $fe $72
    db $e3                                        ; $6ae4: $e3
    ld b, e                                       ; $6ae5: $43
    ld [c], a                                     ; $6ae6: $e2
    db $e3                                        ; $6ae7: $e3
    ld [c], a                                     ; $6ae8: $e2
    or e                                          ; $6ae9: $b3
    sub d                                         ; $6aea: $92
    ld [hl], e                                    ; $6aeb: $73
    cp a                                          ; $6aec: $bf
    ld d, d                                       ; $6aed: $52
    db $d3                                        ; $6aee: $d3
    ld [de], a                                    ; $6aef: $12
    ret                                           ; $6af0: $c9


    ld c, l                                       ; $6af1: $4d
    add $70                                       ; $6af2: $c6 $70
    ld [$ff7e], a                                 ; $6af4: $ea $7e $ff
    add c                                         ; $6af7: $81
    db $fd                                        ; $6af8: $fd
    pop hl                                        ; $6af9: $e1
    cp [hl]                                       ; $6afa: $be
    ld [c], a                                     ; $6afb: $e2
    ld e, d                                       ; $6afc: $5a
    ld h, [hl]                                    ; $6afd: $66
    db $f4                                        ; $6afe: $f4
    rst $30                                       ; $6aff: $f7
    ld b, $4a                                     ; $6b00: $06 $4a
    sbc a                                         ; $6b02: $9f
    ldh [$c1], a                                  ; $6b03: $e0 $c1
    and e                                         ; $6b05: $a3
    ld [hl+], a                                   ; $6b06: $22
    jp Jump_000_00c2                              ; $6b07: $c3 $c2 $00


    ld [hl], b                                    ; $6b0a: $70
    jp hl                                         ; $6b0b: $e9


    nop                                           ; $6b0c: $00
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    nop                                           ; $6b11: $00
    rst $38                                       ; $6b12: $ff
    ld a, a                                       ; $6b13: $7f
    pop bc                                        ; $6b14: $c1
    ld b, e                                       ; $6b15: $43
    jp nz, $ff47                                  ; $6b16: $c2 $47 $ff

    add $4f                                       ; $6b19: $c6 $4f
    ret                                           ; $6b1b: $c9


    ld e, a                                       ; $6b1c: $5f
    ret nc                                        ; $6b1d: $d0

    ld e, h                                       ; $6b1e: $5c
    ret nc                                        ; $6b1f: $d0

    ld a, c                                       ; $6b20: $79
    db $fc                                        ; $6b21: $fc
    ldh a, [$e0]                                  ; $6b22: $f0 $e0
    db $ed                                        ; $6b24: $ed
    ldh [rP1], a                                  ; $6b25: $e0 $00
    cp a                                          ; $6b27: $bf
    nop                                           ; $6b28: $00
    rrca                                          ; $6b29: $0f
    jr nz, jr_04d_6ab3                            ; $6b2a: $20 $87

    rst $28                                       ; $6b2c: $ef
    nop                                           ; $6b2d: $00
    jp $f810                                      ; $6b2e: $c3 $10 $f8


    ldh [$e0], a                                  ; $6b31: $e0 $e0
    cp $c3                                        ; $6b33: $fe $c3
    ld [c], a                                     ; $6b35: $e2
    rst $38                                       ; $6b36: $ff
    inc hl                                        ; $6b37: $23
    ld a, [c]                                     ; $6b38: $f2
    inc de                                        ; $6b39: $13
    ld a, [$fa0b]                                 ; $6b3a: $fa $0b $fa
    dec bc                                        ; $6b3d: $0b
    cp $ff                                        ; $6b3e: $fe $ff
    rlca                                          ; $6b40: $07
    cp $e1                                        ; $6b41: $fe $e1
    ld [hl], e                                    ; $6b43: $73
    pop hl                                        ; $6b44: $e1
    ld [hl], e                                    ; $6b45: $73
    ldh [$7b], a                                  ; $6b46: $e0 $7b
    rst $38                                       ; $6b48: $ff
    ldh [$7f], a                                  ; $6b49: $e0 $7f
    ldh [$7f], a                                  ; $6b4b: $e0 $7f
    pop hl                                        ; $6b4d: $e1
    ld a, a                                       ; $6b4e: $7f
    db $d3                                        ; $6b4f: $d3
    ld a, [hl]                                    ; $6b50: $7e
    rst $38                                       ; $6b51: $ff
    db $d3                                        ; $6b52: $d3
    ld e, [hl]                                    ; $6b53: $5e
    sbc h                                         ; $6b54: $9c
    rst $38                                       ; $6b55: $ff
    db $e3                                        ; $6b56: $e3
    ld [hl], a                                    ; $6b57: $77
    db $fc                                        ; $6b58: $fc
    or c                                          ; $6b59: $b1
    rst $38                                       ; $6b5a: $ff
    ld e, a                                       ; $6b5b: $5f
    ldh [$d7], a                                  ; $6b5c: $e0 $d7
    ret c                                         ; $6b5e: $d8

    cp [hl]                                       ; $6b5f: $be
    ld l, c                                       ; $6b60: $69
    sbc $b9                                       ; $6b61: $de $b9
    rst $38                                       ; $6b63: $ff
    ld h, a                                       ; $6b64: $67
    sub c                                         ; $6b65: $91
    rlca                                          ; $6b66: $07
    ld a, [hl]                                    ; $6b67: $7e
    rlca                                          ; $6b68: $07
    cp $87                                        ; $6b69: $fe $87
    cp $ff                                        ; $6b6b: $fe $ff
    ld b, a                                       ; $6b6d: $47
    ld a, [hl]                                    ; $6b6e: $7e
    ld c, e                                       ; $6b6f: $4b
    cp $8b                                        ; $6b70: $fe $8b
    cp d                                          ; $6b72: $ba
    db $d3                                        ; $6b73: $d3
    ld a, [c]                                     ; $6b74: $f2
    rst $38                                       ; $6b75: $ff
    db $d3                                        ; $6b76: $d3
    ld [hl], d                                    ; $6b77: $72
    ret                                           ; $6b78: $c9


    ld c, a                                       ; $6b79: $4f
    call nz, $c347                                ; $6b7a: $c4 $47 $c3
    ld b, e                                       ; $6b7d: $43
    rst $38                                       ; $6b7e: $ff
    jp nz, $c143                                  ; $6b7f: $c2 $43 $c1

    ld b, c                                       ; $6b82: $41
    ret nz                                        ; $6b83: $c0

    ld b, b                                       ; $6b84: $40
    rst $38                                       ; $6b85: $ff
    ld a, a                                       ; $6b86: $7f
    cp $a5                                        ; $6b87: $fe $a5
    pop hl                                        ; $6b89: $e1
    cp d                                          ; $6b8a: $ba
    jp Jump_04d_407d                              ; $6b8b: $c3 $7d $40


    rst $18                                       ; $6b8e: $df
    pop hl                                        ; $6b8f: $e1
    halt                                          ; $6b90: $76
    rst $28                                       ; $6b91: $ef
    ld a, [$dfee]                                 ; $6b92: $fa $ee $df
    rst $38                                       ; $6b95: $ff
    sub l                                         ; $6b96: $95
    ldh [$e3], a                                  ; $6b97: $e0 $e3
    ld h, d                                       ; $6b99: $62
    jp Jump_04d_42df                              ; $6b9a: $c3 $df $42


    add e                                         ; $6b9d: $83
    add d                                         ; $6b9e: $82
    inc bc                                        ; $6b9f: $03
    ld [bc], a                                    ; $6ba0: $02
    cp $e1                                        ; $6ba1: $fe $e1
    rst $38                                       ; $6ba3: $ff
    cp $be                                        ; $6ba4: $fe $be
    add l                                         ; $6ba6: $85
    pop hl                                        ; $6ba7: $e1
    rst $38                                       ; $6ba8: $ff
    ld a, a                                       ; $6ba9: $7f
    ret nz                                        ; $6baa: $c0

    ld b, c                                       ; $6bab: $41
    pop bc                                        ; $6bac: $c1
    ld [hl], b                                    ; $6bad: $70
    db $e3                                        ; $6bae: $e3
    ld e, c                                       ; $6baf: $59
    db $eb                                        ; $6bb0: $eb
    ret nc                                        ; $6bb1: $d0

    ld a, e                                       ; $6bb2: $7b
    ld [hl], b                                    ; $6bb3: $70

jr_04d_6bb4:
    pop hl                                        ; $6bb4: $e1
    add b                                         ; $6bb5: $80
    ld [hl], b                                    ; $6bb6: $70
    ldh [rLCDC], a                                ; $6bb7: $e0 $40
    rra                                           ; $6bb9: $1f
    jr nz, @-$1f                                  ; $6bba: $20 $df

    rrca                                          ; $6bbc: $0f
    nop                                           ; $6bbd: $00
    add a                                         ; $6bbe: $87
    jr nz, jr_04d_6bb4                            ; $6bbf: $20 $f3

    ld [hl], b                                    ; $6bc1: $70
    pop hl                                        ; $6bc2: $e1
    add e                                         ; $6bc3: $83
    jp nz, Jump_04d_43f5                          ; $6bc4: $c2 $f5 $43

    ld l, [hl]                                    ; $6bc7: $6e
    pop hl                                        ; $6bc8: $e1
    ld a, [c]                                     ; $6bc9: $f2
    ld l, [hl]                                    ; $6bca: $6e
    pop hl                                        ; $6bcb: $e1
    db $e3                                        ; $6bcc: $e3
    ld [hl], a                                    ; $6bcd: $77
    db $e3                                        ; $6bce: $e3
    halt                                          ; $6bcf: $76
    ei                                            ; $6bd0: $fb
    pop hl                                        ; $6bd1: $e1
    ld [hl], a                                    ; $6bd2: $77
    ld [hl], d                                    ; $6bd3: $72
    db $e3                                        ; $6bd4: $e3
    push de                                       ; $6bd5: $d5
    ld e, l                                       ; $6bd6: $5d
    adc $4d                                       ; $6bd7: $ce $4d
    jr c, @+$01                                   ; $6bd9: $38 $ff

    ld sp, hl                                     ; $6bdb: $f9
    add $de                                       ; $6bdc: $c6 $de
    ld sp, hl                                     ; $6bde: $f9
    ld h, e                                       ; $6bdf: $63
    cp h                                          ; $6be0: $bc
    pop bc                                        ; $6be1: $c1
    xor [hl]                                      ; $6be2: $ae
    rst $38                                       ; $6be3: $ff
    or b                                          ; $6be4: $b0
    ld a, a                                       ; $6be5: $7f
    pop de                                        ; $6be6: $d1
    cp h                                          ; $6be7: $bc
    ld [hl], c                                    ; $6be8: $71
    rst $08                                       ; $6be9: $cf
    ld [hl+], a                                   ; $6bea: $22
    rlca                                          ; $6beb: $07
    db $fc                                        ; $6bec: $fc
    ld c, h                                       ; $6bed: $4c
    ldh [$6e], a                                  ; $6bee: $e0 $6e
    pop hl                                        ; $6bf0: $e1
    rst $00                                       ; $6bf1: $c7
    cp $4b                                        ; $6bf2: $fe $4b
    ld a, d                                       ; $6bf4: $7a
    set 7, d                                      ; $6bf5: $cb $fa
    rst $28                                       ; $6bf7: $ef
    db $d3                                        ; $6bf8: $d3
    ld [hl], d                                    ; $6bf9: $72
    rst $00                                       ; $6bfa: $c7
    ld b, [hl]                                    ; $6bfb: $46
    ld [hl], d                                    ; $6bfc: $72
    ldh [rDMA], a                                 ; $6bfd: $e0 $46
    pop bc                                        ; $6bff: $c1
    ld b, e                                       ; $6c00: $43
    ei                                            ; $6c01: $fb
    ret nz                                        ; $6c02: $c0

    ld b, b                                       ; $6c03: $40
    ld [hl], b                                    ; $6c04: $70
    push hl                                       ; $6c05: $e5
    ld [hl], l                                    ; $6c06: $75
    ld b, $fb                                     ; $6c07: $06 $fb
    add b                                         ; $6c09: $80
    ld e, a                                       ; $6c0a: $5f
    rst $28                                       ; $6c0b: $ef
    pop bc                                        ; $6c0c: $c1
    or $f2                                        ; $6c0d: $f6 $f2
    ld l, [hl]                                    ; $6c0f: $6e
    ld [hl], b                                    ; $6c10: $70
    ld [c], a                                     ; $6c11: $e2
    db $d3                                        ; $6c12: $d3
    ld [hl], d                                    ; $6c13: $72
    ld h, e                                       ; $6c14: $63
    rst $20                                       ; $6c15: $e7
    ld h, d                                       ; $6c16: $62
    jp $6ee2                                      ; $6c17: $c3 $e2 $6e


    db $e3                                        ; $6c1a: $e3
    ld [hl], b                                    ; $6c1b: $70
    add sp, $43                                   ; $6c1c: $e8 $43
    add $4f                                       ; $6c1e: $c6 $4f
    cp a                                          ; $6c20: $bf
    jp z, $d05f                                   ; $6c21: $ca $5f $d0

    ld e, e                                       ; $6c24: $5b
    ret nc                                        ; $6c25: $d0

    ld [hl], a                                    ; $6c26: $77
    ldh [$c1], a                                  ; $6c27: $e0 $c1
    pop bc                                        ; $6c29: $c1
    rst $38                                       ; $6c2a: $ff
    rst $28                                       ; $6c2b: $ef
    nop                                           ; $6c2c: $00
    sbc a                                         ; $6c2d: $9f
    ld b, b                                       ; $6c2e: $40
    rra                                           ; $6c2f: $1f
    nop                                           ; $6c30: $00
    rra                                           ; $6c31: $1f
    nop                                           ; $6c32: $00
    rst $20                                       ; $6c33: $e7
    rst $08                                       ; $6c34: $cf
    ld b, b                                       ; $6c35: $40
    rst $20                                       ; $6c36: $e7
    ld [hl], b                                    ; $6c37: $70
    jp hl                                         ; $6c38: $e9


    call c, $e6c1                                 ; $6c39: $dc $c1 $e6
    ld [hl], a                                    ; $6c3c: $77
    rst $20                                       ; $6c3d: $e7
    rst $30                                       ; $6c3e: $f7
    ld l, l                                       ; $6c3f: $6d
    db $e3                                        ; $6c40: $e3
    ld l, [hl]                                    ; $6c41: $6e
    db $e4                                        ; $6c42: $e4
    ret nz                                        ; $6c43: $c0

    ld a, a                                       ; $6c44: $7f
    sub $5d                                       ; $6c45: $d6 $5d
    set 7, a                                      ; $6c47: $cb $ff
    ld e, d                                       ; $6c49: $5a
    call Call_04d_604a                            ; $6c4a: $cd $4a $60
    di                                            ; $6c4d: $f3
    sbc b                                         ; $6c4e: $98
    cp l                                          ; $6c4f: $bd
    or $ff                                        ; $6c50: $f6 $ff
    rst $08                                       ; $6c52: $cf
    ld a, c                                       ; $6c53: $79
    add e                                         ; $6c54: $83
    ld e, l                                       ; $6c55: $5d
    ld h, e                                       ; $6c56: $63
    cp $a2                                        ; $6c57: $fe $a2
    ld a, c                                       ; $6c59: $79
    rst $20                                       ; $6c5a: $e7
    db $e3                                        ; $6c5b: $e3
    sbc a                                         ; $6c5c: $9f
    ld b, h                                       ; $6c5d: $44
    cp h                                          ; $6c5e: $bc
    pop bc                                        ; $6c5f: $c1
    ld l, [hl]                                    ; $6c60: $6e
    db $e3                                        ; $6c61: $e3
    adc e                                         ; $6c62: $8b
    cp $4b                                        ; $6c63: $fe $4b
    rst $38                                       ; $6c65: $ff
    ld a, [$7a53]                                 ; $6c66: $fa $53 $7a
    add $44                                       ; $6c69: $c6 $44
    jp $c547                                      ; $6c6b: $c3 $47 $c5


    rst $30                                       ; $6c6e: $f7
    ld b, l                                       ; $6c6f: $45
    jp nz, $7047                                  ; $6c70: $c2 $47 $70

    rst $20                                       ; $6c73: $e7
    db $eb                                        ; $6c74: $eb
    inc c                                         ; $6c75: $0c
    halt                                          ; $6c76: $76
    add b                                         ; $6c77: $80
    rst $18                                       ; $6c78: $df
    cp l                                          ; $6c79: $bd
    pop bc                                        ; $6c7a: $c1
    ld l, d                                       ; $6c7b: $6a

Call_04d_6c7c:
    ld [hl], d                                    ; $6c7c: $72
    ld a, [hl]                                    ; $6c7d: $7e
    ldh [$c2], a                                  ; $6c7e: $e0 $c2
    ld d, e                                       ; $6c80: $53
    ld [hl], d                                    ; $6c81: $72
    rst $38                                       ; $6c82: $ff
    ld h, e                                       ; $6c83: $63
    ld a, [c]                                     ; $6c84: $f2
    db $e3                                        ; $6c85: $e3
    ld [c], a                                     ; $6c86: $e2
    ld b, e                                       ; $6c87: $43
    ld h, d                                       ; $6c88: $62
    inc bc                                        ; $6c89: $03
    ld b, d                                       ; $6c8a: $42
    nop                                           ; $6c8b: $00
    ldh [$c3], a                                  ; $6c8c: $e0 $c3
    nop                                           ; $6c8e: $00
    nop                                           ; $6c8f: $00
    nop                                           ; $6c90: $00
    cp a                                          ; $6c91: $bf
    rst $38                                       ; $6c92: $ff
    nop                                           ; $6c93: $00

jr_04d_6c94:
    rst $38                                       ; $6c94: $ff
    ld a, a                                       ; $6c95: $7f
    ret nz                                        ; $6c96: $c0

    ld b, b                                       ; $6c97: $40
    cp $e2                                        ; $6c98: $fe $e2
    ld b, c                                       ; $6c9a: $41
    rst $28                                       ; $6c9b: $ef
    pop bc                                        ; $6c9c: $c1
    ld b, e                                       ; $6c9d: $43
    jp nz, $f043                                  ; $6c9e: $c2 $43 $f0

    ldh [rIE], a                                  ; $6ca1: $e0 $ff
    dec de                                        ; $6ca3: $1b
    dec sp                                        ; $6ca4: $3b
    rst $38                                       ; $6ca5: $ff
    rrca                                          ; $6ca6: $0f
    dec de                                        ; $6ca7: $1b
    ld a, [hl]                                    ; $6ca8: $7e
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    inc hl                                        ; $6cac: $23
    adc a                                         ; $6cad: $8f
    ei                                            ; $6cae: $fb
    nop                                           ; $6caf: $00
    ccf                                           ; $6cb0: $3f
    ldh [$e0], a                                  ; $6cb1: $e0 $e0
    cp $83                                        ; $6cb3: $fe $83
    add d                                         ; $6cb5: $82
    inc bc                                        ; $6cb6: $03
    ld [bc], a                                    ; $6cb7: $02
    cp $fe                                        ; $6cb8: $fe $fe
    ldh [$82], a                                  ; $6cba: $e0 $82
    add e                                         ; $6cbc: $83
    add d                                         ; $6cbd: $82
    add e                                         ; $6cbe: $83
    jp nz, Jump_04d_47c3                          ; $6cbf: $c2 $c3 $47

    rst $38                                       ; $6cc2: $ff
    rst $00                                       ; $6cc3: $c7
    ld b, a                                       ; $6cc4: $47
    call nz, $c547                                ; $6cc5: $c4 $47 $c5
    ld c, [hl]                                    ; $6cc8: $4e
    ret                                           ; $6cc9: $c9


    ld c, a                                       ; $6cca: $4f

jr_04d_6ccb:
    rst $38                                       ; $6ccb: $ff
    ret z                                         ; $6ccc: $c8

    ld c, a                                       ; $6ccd: $4f
    ret                                           ; $6cce: $c9


    ld c, l                                       ; $6ccf: $4d
    bit 1, [hl]                                   ; $6cd0: $cb $4e
    db $10                                        ; $6cd2: $10
    rst $38                                       ; $6cd3: $ff
    db $fd                                        ; $6cd4: $fd
    jr c, jr_04d_6c94                             ; $6cd5: $38 $bd

    ldh [$30], a                                  ; $6cd7: $e0 $30
    rst $18                                       ; $6cd9: $df
    jr nz, jr_04d_6ccb                            ; $6cda: $20 $ef

    ret nz                                        ; $6cdc: $c0

    rst $38                                       ; $6cdd: $ff
    ld l, a                                       ; $6cde: $6f
    ld b, b                                       ; $6cdf: $40
    ei                                            ; $6ce0: $fb
    jr nz, @+$81                                  ; $6ce1: $20 $7f

    cp l                                          ; $6ce3: $bd
    ldh [$e2], a                                  ; $6ce4: $e0 $e2
    inc hl                                        ; $6ce6: $23

Call_04d_6ce7:
    cp $e1                                        ; $6ce7: $fe $e1
    rst $38                                       ; $6ce9: $ff
    ld a, [c]                                     ; $6cea: $f2
    di                                            ; $6ceb: $f3
    ld a, [c]                                     ; $6cec: $f2
    sub e                                         ; $6ced: $93
    ld a, [c]                                     ; $6cee: $f2
    ld d, e                                       ; $6cef: $53
    ld a, [c]                                     ; $6cf0: $f2
    jp z, $d6fe                                   ; $6cf1: $ca $fe $d6

    ldh [$d8], a                                  ; $6cf4: $e0 $d8
    ld a, a                                       ; $6cf6: $7f
    db $ec                                        ; $6cf7: $ec
    ld l, a                                       ; $6cf8: $6f
    db $db                                        ; $6cf9: $db
    ld c, a                                       ; $6cfa: $4f
    db $ec                                        ; $6cfb: $ec
    rst $38                                       ; $6cfc: $ff
    ld h, a                                       ; $6cfd: $67
    rst $38                                       ; $6cfe: $ff
    ld a, a                                       ; $6cff: $7f
    rst $38                                       ; $6d00: $ff
    nop                                           ; $6d01: $00
    jr nz, @+$01                                  ; $6d02: $20 $ff

    ret nz                                        ; $6d04: $c0

    cp [hl]                                       ; $6d05: $be
    adc l                                         ; $6d06: $8d
    ldh [$88], a                                  ; $6d07: $e0 $88
    rst $38                                       ; $6d09: $ff
    ld [hl], b                                    ; $6d0a: $70
    rst $38                                       ; $6d0b: $ff
    ld bc, $e09e                                  ; $6d0c: $01 $9e $e0
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    nop                                           ; $6d11: $00
    inc de                                        ; $6d12: $13
    ld a, [c]                                     ; $6d13: $f2
    and e                                         ; $6d14: $a3
    ld a, [c]                                     ; $6d15: $f2
    ld [hl], e                                    ; $6d16: $73
    ld a, [c]                                     ; $6d17: $f2
    ld c, a                                       ; $6d18: $4f
    ld a, a                                       ; $6d19: $7f
    xor $97                                       ; $6d1a: $ee $97
    add $2b                                       ; $6d1c: $c6 $2b
    adc [hl]                                      ; $6d1e: $8e
    rst $38                                       ; $6d1f: $ff
    cp $72                                        ; $6d20: $fe $72
    ldh [$fe], a                                  ; $6d22: $e0 $fe
    ld [hl], b                                    ; $6d24: $70
    ldh a, [$36]                                  ; $6d25: $f0 $36
    ld [hl], a                                    ; $6d27: $77
    inc e                                         ; $6d28: $1c
    inc d                                         ; $6d29: $14
    ld a, h                                       ; $6d2a: $7c
    cp $fe                                        ; $6d2b: $fe $fe
    rst $00                                       ; $6d2d: $c7
    rst $38                                       ; $6d2e: $ff
    ld b, c                                       ; $6d2f: $41
    sbc a                                         ; $6d30: $9f
    ld [hl], b                                    ; $6d31: $70
    db $e3                                        ; $6d32: $e3
    ld [hl], d                                    ; $6d33: $72
    ld [c], a                                     ; $6d34: $e2
    ld l, [hl]                                    ; $6d35: $6e
    db $e4                                        ; $6d36: $e4
    jp nz, $f747                                  ; $6d37: $c2 $47 $f7

    push bc                                       ; $6d3a: $c5
    ld b, a                                       ; $6d3b: $47
    call nz, $e074                                ; $6d3c: $c4 $74 $e0
    ret z                                         ; $6d3f: $c8

    ld c, a                                       ; $6d40: $4f
    ret c                                         ; $6d41: $d8

    ld e, a                                       ; $6d42: $5f
    ld a, a                                       ; $6d43: $7f
    add sp, $6d                                   ; $6d44: $e8 $6d
    add sp, $7f                                   ; $6d46: $e8 $7f
    adc b                                         ; $6d48: $88
    rst $38                                       ; $6d49: $ff
    call c, $e02d                                 ; $6d4a: $dc $2d $e0
    rst $38                                       ; $6d4d: $ff
    ret c                                         ; $6d4e: $d8

    ld l, a                                       ; $6d4f: $6f
    sub b                                         ; $6d50: $90
    or a                                          ; $6d51: $b7
    jr nz, @+$01                                  ; $6d52: $20 $ff

    ld d, b                                       ; $6d54: $50
    db $fd                                        ; $6d55: $fd
    rst $28                                       ; $6d56: $ef
    ret z                                         ; $6d57: $c8

    sbc a                                         ; $6d58: $9f
    add e                                         ; $6d59: $83
    jp nz, $e56e                                  ; $6d5a: $c2 $6e $e5

    ld [hl], e                                    ; $6d5d: $73
    ld a, [$ff4b]                                 ; $6d5e: $fa $4b $ff
    ld a, [$fa2b]                                 ; $6d61: $fa $2b $fa
    add sp, $7f                                   ; $6d64: $e8 $7f
    ret c                                         ; $6d66: $d8

    ld e, a                                       ; $6d67: $5f
    ret c                                         ; $6d68: $d8

    cp a                                          ; $6d69: $bf
    ld a, a                                       ; $6d6a: $7f
    and $6f                                       ; $6d6b: $e6 $6f
    push de                                       ; $6d6d: $d5
    ld b, a                                       ; $6d6e: $47
    ld [$e270], a                                 ; $6d6f: $ea $70 $e2
    adc b                                         ; $6d72: $88
    res 7, a                                      ; $6d73: $cb $bf
    ld [hl], b                                    ; $6d75: $70
    db $fd                                        ; $6d76: $fd
    ret nz                                        ; $6d77: $c0

    ld [hl+], a                                   ; $6d78: $22
    jp z, $70e2                                   ; $6d79: $ca $e2 $70

    pop hl                                        ; $6d7c: $e1
    dec bc                                        ; $6d7d: $0b
    ld a, [$53f7]                                 ; $6d7e: $fa $f7 $53
    ld a, [$7033]                                 ; $6d81: $fa $33 $70
    ldh [$57], a                                  ; $6d84: $e0 $57
    add $ab                                       ; $6d86: $c6 $ab
    adc $de                                       ; $6d88: $ce $de
    ld [hl], b                                    ; $6d8a: $70
    push af                                       ; $6d8b: $f5
    ld l, h                                       ; $6d8c: $6c
    xor $38                                       ; $6d8d: $ee $38
    jr z, jr_04d_6e01                             ; $6d8f: $28 $70

    pop hl                                        ; $6d91: $e1
    ld bc, $dd9f                                  ; $6d92: $01 $9f $dd
    add b                                         ; $6d95: $80
    ld [hl], b                                    ; $6d96: $70
    rst $28                                       ; $6d97: $ef
    ld b, [hl]                                    ; $6d98: $46
    call nz, $7046                                ; $6d99: $c4 $46 $70
    db $e3                                        ; $6d9c: $e3
    ld hl, sp+$7f                                 ; $6d9d: $f8 $7f
    ld a, a                                       ; $6d9f: $7f

jr_04d_6da0:
    ret z                                         ; $6da0: $c8

    ld e, [hl]                                    ; $6da1: $5e
    ret nc                                        ; $6da2: $d0

    ld a, a                                       ; $6da3: $7f
    ld b, h                                       ; $6da4: $44
    rst $38                                       ; $6da5: $ff
    xor $9d                                       ; $6da6: $ee $9d
    ret nz                                        ; $6da8: $c0

    rst $38                                       ; $6da9: $ff
    ld l, h                                       ; $6daa: $6c
    or a                                          ; $6dab: $b7
    ld c, b                                       ; $6dac: $48
    db $db                                        ; $6dad: $db
    db $10                                        ; $6dae: $10
    rst $38                                       ; $6daf: $ff
    jr z, jr_04d_6da0                             ; $6db0: $28 $ee

    ei                                            ; $6db2: $fb
    ld d, h                                       ; $6db3: $54
    rst $00                                       ; $6db4: $c7
    ld [hl], b                                    ; $6db5: $70
    rst $20                                       ; $6db6: $e7
    dec sp                                        ; $6db7: $3b
    cp $27                                        ; $6db8: $fe $27
    cp $17                                        ; $6dba: $fe $17
    rst $30                                       ; $6dbc: $f7
    cp $c0                                        ; $6dbd: $fe $c0
    ld a, a                                       ; $6dbf: $7f
    ld l, [hl]                                    ; $6dc0: $6e
    ldh [$7f], a                                  ; $6dc1: $e0 $7f
    push hl                                       ; $6dc3: $e5
    ld l, a                                       ; $6dc4: $6f
    call nc, $7096                                ; $6dc5: $d4 $96 $70
    db $e4                                        ; $6dc8: $e4
    ld b, h                                       ; $6dc9: $44
    rst $28                                       ; $6dca: $ef
    or b                                          ; $6dcb: $b0
    pop bc                                        ; $6dcc: $c1
    ld de, $e2ca                                  ; $6dcd: $11 $ca $e2
    ldh [$c1], a                                  ; $6dd0: $e0 $c1
    rlca                                          ; $6dd2: $07
    rra                                           ; $6dd3: $1f
    cp $2b                                        ; $6dd4: $fe $2b
    cp $33                                        ; $6dd6: $fe $33
    ld a, [$e770]                                 ; $6dd8: $fa $70 $e7
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    nop                                           ; $6de0: $00
    rst $38                                       ; $6de1: $ff
    ld a, a                                       ; $6de2: $7f
    jp nz, $c647                                  ; $6de3: $c2 $47 $c6

    ld b, a                                       ; $6de6: $47
    rst $38                                       ; $6de7: $ff
    push bc                                       ; $6de8: $c5
    ld c, a                                       ; $6de9: $4f
    ld sp, hl                                     ; $6dea: $f9
    ld a, h                                       ; $6deb: $7c
    add $4f                                       ; $6dec: $c6 $4f
    pop bc                                        ; $6dee: $c1
    ld h, e                                       ; $6def: $63
    cp $f0                                        ; $6df0: $fe $f0
    ldh [rIE], a                                  ; $6df2: $e0 $ff
    nop                                           ; $6df4: $00
    ccf                                           ; $6df5: $3f
    nop                                           ; $6df6: $00
    adc a                                         ; $6df7: $8f
    ldh [$f3], a                                  ; $6df8: $e0 $f3
    cp a                                          ; $6dfa: $bf
    sbc a                                         ; $6dfb: $9f
    ccf                                           ; $6dfc: $3f
    ld a, h                                       ; $6dfd: $7c
    ld bc, $f8e3                                  ; $6dfe: $01 $e3 $f8

jr_04d_6e01:
    ldh [$e0], a                                  ; $6e01: $e0 $e0
    cp $ef                                        ; $6e03: $fe $ef
    inc hl                                        ; $6e05: $23
    ld [c], a                                     ; $6e06: $e2
    inc de                                        ; $6e07: $13
    ld a, [c]                                     ; $6e08: $f2
    cp $e1                                        ; $6e09: $fe $e1
    ei                                            ; $6e0b: $fb
    ld a, [$bf8f]                                 ; $6e0c: $fa $8f $bf
    ld e, $f0                                     ; $6e0f: $1e $f0
    ld a, b                                       ; $6e11: $78
    adc $4f                                       ; $6e12: $ce $4f
    ret                                           ; $6e14: $c9


    cp $e0                                        ; $6e15: $fe $e0
    jp z, Jump_04d_4fff                           ; $6e17: $ca $ff $4f

    bit 1, [hl]                                   ; $6e1a: $cb $4e
    bit 1, [hl]                                   ; $6e1c: $cb $4e
    add $4f                                       ; $6e1e: $c6 $4f
    rra                                           ; $6e20: $1f
    cp $bf                                        ; $6e21: $fe $bf
    ldh [$e0], a                                  ; $6e23: $e0 $e0
    rst $38                                       ; $6e25: $ff
    sbc a                                         ; $6e26: $9f
    rst $18                                       ; $6e27: $df
    db $e4                                        ; $6e28: $e4
    ld c, h                                       ; $6e29: $4c
    or d                                          ; $6e2a: $b2
    rst $38                                       ; $6e2b: $ff
    call nz, $803f                                ; $6e2c: $c4 $3f $80
    rst $38                                       ; $6e2f: $ff
    nop                                           ; $6e30: $00
    dec bc                                        ; $6e31: $0b
    cp [hl]                                       ; $6e32: $be
    di                                            ; $6e33: $f3
    rst $38                                       ; $6e34: $ff
    cp $03                                        ; $6e35: $fe $03
    cp $ff                                        ; $6e37: $fe $ff
    cp $63                                        ; $6e39: $fe $63
    ld [hl], d                                    ; $6e3b: $72
    inc hl                                        ; $6e3c: $23
    rst $38                                       ; $6e3d: $ff
    ld [hl], d                                    ; $6e3e: $72
    inc hl                                        ; $6e3f: $23
    or d                                          ; $6e40: $b2
    and e                                         ; $6e41: $a3
    ld [c], a                                     ; $6e42: $e2
    push bc                                       ; $6e43: $c5
    ld b, a                                       ; $6e44: $47
    jp Jump_04d_47ff                              ; $6e45: $c3 $ff $47


    jp $c243                                      ; $6e48: $c3 $43 $c2


    ld b, [hl]                                    ; $6e4b: $46
    add $4f                                       ; $6e4c: $c6 $4f
    ret                                           ; $6e4e: $c9


    rst $30                                       ; $6e4f: $f7
    ld e, e                                       ; $6e50: $5b
    rst $38                                       ; $6e51: $ff
    ld a, a                                       ; $6e52: $7f
    and l                                         ; $6e53: $a5
    ldh [$80], a                                  ; $6e54: $e0 $80
    db $fd                                        ; $6e56: $fd
    jp $ff5e                                      ; $6e57: $c3 $5e $ff


    ret nz                                        ; $6e5a: $c0

    ld h, $f0                                     ; $6e5b: $26 $f0
    add hl, de                                    ; $6e5d: $19
    ld a, a                                       ; $6e5e: $7f
    ld b, $9f                                     ; $6e5f: $06 $9f
    rst $38                                       ; $6e61: $ff
    cp $95                                        ; $6e62: $fe $95
    ldh [rSCX], a                                 ; $6e64: $e0 $43
    ld h, d                                       ; $6e66: $62
    ld b, e                                       ; $6e67: $43
    jp nz, $c283                                  ; $6e68: $c2 $83 $c2

    add e                                         ; $6e6b: $83
    ld a, a                                       ; $6e6c: $7f
    add d                                         ; $6e6d: $82
    inc bc                                        ; $6e6e: $03
    add d                                         ; $6e6f: $82
    add e                                         ; $6e70: $83
    jp nz, $feff                                  ; $6e71: $c2 $ff $fe

    ld [hl], d                                    ; $6e74: $72
    ldh [$fe], a                                  ; $6e75: $e0 $fe
    ld [hl], b                                    ; $6e77: $70
    ld [c], a                                     ; $6e78: $e2
    rst $00                                       ; $6e79: $c7
    ld b, a                                       ; $6e7a: $47
    call nz, $f94e                                ; $6e7b: $c4 $4e $f9
    ld a, h                                       ; $6e7e: $7c
    rst $00                                       ; $6e7f: $c7
    rst $30                                       ; $6e80: $f7
    ld c, a                                       ; $6e81: $4f
    ldh [$73], a                                  ; $6e82: $e0 $73
    ld [hl], b                                    ; $6e84: $70
    db $e4                                        ; $6e85: $e4
    sbc a                                         ; $6e86: $9f
    ldh a, [rIE]                                  ; $6e87: $f0 $ff
    rst $08                                       ; $6e89: $cf
    rst $18                                       ; $6e8a: $df
    rra                                           ; $6e8b: $1f
    inc a                                         ; $6e8c: $3c
    add c                                         ; $6e8d: $81
    rst $20                                       ; $6e8e: $e7
    ldh a, [rSVBK]                                ; $6e8f: $f0 $70
    jp hl                                         ; $6e91: $e9


    db $eb                                        ; $6e92: $eb
    ld a, [$cfef]                                 ; $6e93: $fa $ef $cf
    ld e, $d8                                     ; $6e96: $1e $d8
    ld e, h                                       ; $6e98: $5c
    call nc, Call_04d_47e0                        ; $6e99: $d4 $e0 $47
    rst $00                                       ; $6e9c: $c7
    ld c, a                                       ; $6e9d: $4f
    rst $38                                       ; $6e9e: $ff
    push bc                                       ; $6e9f: $c5
    ld c, [hl]                                    ; $6ea0: $4e
    rst $00                                       ; $6ea1: $c7
    ld c, l                                       ; $6ea2: $4d
    add $4d                                       ; $6ea3: $c6 $4d
    push bc                                       ; $6ea5: $c5
    ld c, [hl]                                    ; $6ea6: $4e
    rst $38                                       ; $6ea7: $ff
    ld e, $ff                                     ; $6ea8: $1e $ff
    ld bc, $f0ff                                  ; $6eaa: $01 $ff $f0
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    cp a                                          ; $6eaf: $bf
    rst $38                                       ; $6eb0: $ff
    ret nc                                        ; $6eb1: $d0

    sbc b                                         ; $6eb2: $98
    ld h, [hl]                                    ; $6eb3: $66
    adc b                                         ; $6eb4: $88
    ld a, [hl]                                    ; $6eb5: $7e
    ld bc, $01ff                                  ; $6eb6: $01 $ff $01
    rst $38                                       ; $6eb9: $ff
    inc de                                        ; $6eba: $13
    ld a, $e3                                     ; $6ebb: $3e $e3
    cp $07                                        ; $6ebd: $fe $07
    cp $fb                                        ; $6ebf: $fe $fb
    ld a, [$a3ff]                                 ; $6ec1: $fa $ff $a3
    ld a, [c]                                     ; $6ec4: $f2
    inc hl                                        ; $6ec5: $23
    ld h, d                                       ; $6ec6: $62
    inc hl                                        ; $6ec7: $23
    ld [hl+], a                                   ; $6ec8: $22
    inc hl                                        ; $6ec9: $23
    ld h, d                                       ; $6eca: $62
    rst $18                                       ; $6ecb: $df
    jp nz, $c147                                  ; $6ecc: $c2 $47 $c1

    ld b, e                                       ; $6ecf: $43
    pop bc                                        ; $6ed0: $c1
    ld [hl], b                                    ; $6ed1: $70
    add sp, $7e                                   ; $6ed2: $e8 $7e
    nop                                           ; $6ed4: $00
    cp a                                          ; $6ed5: $bf
    cp d                                          ; $6ed6: $ba
    add a                                         ; $6ed7: $87
    ld e, [hl]                                    ; $6ed8: $5e
    ret nz                                        ; $6ed9: $c0

    inc h                                         ; $6eda: $24
    pop af                                        ; $6edb: $f1
    ld [hl], b                                    ; $6edc: $70
    ld a, [$fe43]                                 ; $6edd: $fa $43 $fe
    ld [hl], b                                    ; $6ee0: $70
    ldh [rDMA], a                                 ; $6ee1: $e0 $46
    db $fd                                        ; $6ee3: $fd
    ld a, h                                       ; $6ee4: $7c
    jp $f067                                      ; $6ee5: $c3 $67 $f0


    ld a, c                                       ; $6ee8: $79
    cp $e0                                        ; $6ee9: $fe $e0
    jp nz, $807f                                  ; $6eeb: $c2 $7f $80

    rst $38                                       ; $6eee: $ff
    ld [hl], b                                    ; $6eef: $70
    rst $38                                       ; $6ef0: $ff
    adc $1f                                       ; $6ef1: $ce $1f
    di                                            ; $6ef3: $f3
    add hl, sp                                    ; $6ef4: $39
    add e                                         ; $6ef5: $83
    ld [hl], b                                    ; $6ef6: $70
    db $e4                                        ; $6ef7: $e4
    ld [c], a                                     ; $6ef8: $e2
    jp nz, $f233                                  ; $6ef9: $c2 $33 $f2

    db $d3                                        ; $6efc: $d3
    ld a, [c]                                     ; $6efd: $f2
    ld a, a                                       ; $6efe: $7f

Call_04d_6eff:
    rst $18                                       ; $6eff: $df
    ld e, $cc                                     ; $6f00: $1e $cc
    ld e, [hl]                                    ; $6f02: $5e
    rst $00                                       ; $6f03: $c7
    ld b, a                                       ; $6f04: $47
    push bc                                       ; $6f05: $c5
    ld [hl], b                                    ; $6f06: $70
    ldh [rIE], a                                  ; $6f07: $e0 $ff
    bit 1, l                                      ; $6f09: $cb $4d
    adc $4b                                       ; $6f0b: $ce $4b
    call z, $cb4a                                 ; $6f0d: $cc $4a $cb
    ld c, h                                       ; $6f10: $4c
    rst $30                                       ; $6f11: $f7
    inc e                                         ; $6f12: $1c
    ld a, [hl]                                    ; $6f13: $7e
    add e                                         ; $6f14: $83
    call nc, $ffe0                                ; $6f15: $d4 $e0 $ff
    ld a, a                                       ; $6f18: $7f
    and c                                         ; $6f19: $a1
    ld sp, $ccff                                  ; $6f1a: $31 $ff $cc
    db $10                                        ; $6f1d: $10
    db $fd                                        ; $6f1e: $fd
    ld [bc], a                                    ; $6f1f: $02
    rst $38                                       ; $6f20: $ff
    ld [bc], a                                    ; $6f21: $02
    inc sp                                        ; $6f22: $33
    ld a, [hl]                                    ; $6f23: $7e
    rst $38                                       ; $6f24: $ff
    jp $0ffe                                      ; $6f25: $c3 $fe $0f


    cp $f3                                        ; $6f28: $fe $f3
    ld a, [$f223]                                 ; $6f2a: $fa $23 $f2
    rst $38                                       ; $6f2d: $ff
    inc hl                                        ; $6f2e: $23
    and d                                         ; $6f2f: $a2
    inc hl                                        ; $6f30: $23
    ld h, d                                       ; $6f31: $62
    jp $c462                                      ; $6f32: $c3 $62 $c4


    ld c, [hl]                                    ; $6f35: $4e
    db $fd                                        ; $6f36: $fd
    jp $ea70                                      ; $6f37: $c3 $70 $ea


    db $fd                                        ; $6f3a: $fd
    nop                                           ; $6f3b: $00
    ld [hl], l                                    ; $6f3c: $75
    adc [hl]                                      ; $6f3d: $8e
    cp [hl]                                       ; $6f3e: $be
    add b                                         ; $6f3f: $80
    cp a                                          ; $6f40: $bf
    ld c, l                                       ; $6f41: $4d
    pop hl                                        ; $6f42: $e1
    inc sp                                        ; $6f43: $33
    ld a, a                                       ; $6f44: $7f
    inc c                                         ; $6f45: $0c
    cp a                                          ; $6f46: $bf
    ldh [$c2], a                                  ; $6f47: $e0 $c2
    ld b, d                                       ; $6f49: $42
    nop                                           ; $6f4a: $00
    ld [c], a                                     ; $6f4b: $e2
    jp $c5e0                                      ; $6f4c: $c3 $e0 $c5


    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00

    db $ff, $ff, $00, $ff, $7f, $c0, $40, $c0, $41, $ff, $c3, $47, $c4, $4d, $c8, $5b
    db $c8, $5b, $fe, $f0, $e0, $ff, $3e, $7f, $e1, $ff, $18, $ff, $e7, $04, $ff, $07
    db $fa, $e0, $e0, $e0, $fe, $03, $02, $ff, $c3, $c2, $23, $22, $e3, $22, $f3, $f2
    db $ff, $0b, $fa, $c9, $5f, $cf, $5f, $c7, $4f, $ff, $c7, $47, $c7, $47, $c6, $46
    db $c3, $46, $ff, $c2, $42, $e3, $ff, $ff, $fe, $db, $f9, $ff, $d7, $cb, $f6, $e3
    db $af, $60, $f7, $8f, $ff, $f7, $07, $fb, $fa, $b3, $32, $e3, $62, $fe, $fe, $e0
    db $72, $f3, $12, $73, $12, $e3, $f2, $9f, $c1, $43, $c0, $41, $c1, $fe, $e0, $9c
    db $e0, $40, $ff, $ff, $7f, $ff, $00, $5b, $03, $dc, $c0, $ff, $df, $c1, $ff, $e0
    db $6e, $60, $27, $21, $fd, $ff, $a2, $e0, $a3, $a2, $c3, $42, $03, $c2, $ff, $83
    db $82, $83, $82, $03, $02, $ff, $fe, $dc, $72, $e0, $70, $e9, $4b, $c8, $4b, $70
    db $e3, $c1, $ff, $7f, $30, $fe, $09, $fe, $0f, $ff, $30, $70, $e4, $f7, $83, $c2
    db $43, $9c, $e1, $e2, $13, $f2, $c9, $ff, $4f, $c7, $4f, $c3, $47, $c3, $43, $c3
    db $df, $47, $c5, $44, $c7, $45, $fc, $e0, $ff, $ff, $ff, $fc, $bb, $f2, $bf, $9a
    db $ed, $da, $6f, $ff, $c0, $ee, $1e, $ef, $0f, $eb, $fa, $73, $ff, $72, $a3, $a2
    db $e3, $e2, $63, $e2, $e3, $7f, $22, $b3, $32, $f3, $f2, $c2, $46, $6e, $e3, $fe
    db $70, $e5, $b7, $07, $b9, $80, $de, $c3, $de, $ef, $c0, $ee, $e0, $25, $70, $e2
    db $63, $f2, $43, $6f, $42, $43, $42, $83, $6e, $e0, $03, $82, $70, $e9, $ff, $c1
    db $43, $c2, $46, $c4, $45, $c4, $45, $fe, $70, $e5, $20, $f9, $16, $f9, $1f, $ff
    db $60, $fe, $70, $e6, $c3, $e2, $a3, $e2, $e3, $e2, $23, $f7, $f2, $c5, $47, $72
    db $e2, $43, $c7, $4f, $ca, $ff, $49, $cf, $4a, $cb, $48, $cf, $ff, $fa, $ff, $f8
    db $77, $e5, $7f, $35, $da, $b5, $df, $ff, $80, $dd, $3c, $df, $1f, $d3, $f2, $f3
    db $df, $f2, $a3, $32, $e3, $a2, $d2, $e0, $62, $73, $7f, $7a, $f3, $f2, $c5, $4c
    db $c3, $47, $e0, $c9, $ff, $6e, $0f, $f3, $88, $bf, $86, $dd, $c6, $ef, $5d, $41
    db $2e, $63, $e0, $c1, $e3, $f2, $c3, $01, $62, $70, $e0, $72, $e0, $e0, $c3, $00
    db $00

    nop                                           ; $70d3: $00

    db $ff, $ff, $00, $ff, $7f, $c0, $41, $c3, $43, $ff, $c4, $44, $c6, $44, $cf, $4f
    db $d0, $51, $fe, $f0, $e0, $ff, $f8, $fc, $07, $ff, $18, $ff, $e7, $20, $ff, $e0
    db $fa, $e0, $e0, $e0, $fe, $03, $02, $ff, $03, $82, $c3, $e2, $23, $f2, $13, $f2
    db $ff, $0b, $fa, $df, $5f, $cd, $4c, $c5, $44, $ff, $cf, $4e, $d6, $50, $df, $50
    db $d5, $59, $ff, $cf, $4f, $c6, $ff, $7f, $7f, $db, $93, $ff, $ef, $d7, $af, $c6
    db $fe, $03, $ef, $e0, $ff, $ef, $e0, $0b, $fa, $8b, $fa, $eb, $fa, $df, $f3, $fa
    db $73, $72, $f3, $fe, $e0, $63, $72, $ff, $cf, $4f, $c5, $45, $c3, $46, $c1, $43
    db $ff, $c2, $47, $c7, $47, $ff, $7f, $ff, $00, $ff, $de, $c0, $7b, $03, $f2, $07
    db $cc, $1f, $ef, $f1, $ff, $5a, $ff, $ff, $e0, $00, $e3, $e2, $7f, $c3, $e2, $e3
    db $e2, $83, $c2, $43, $a0, $e0, $d3, $ff, $fe, $72, $e0, $70, $e1, $40, $d0, $e0
    db $46, $c7, $df, $46, $c7, $47, $c8, $49, $70, $e1, $7c, $fe, $ff, $83, $ff, $0c
    db $7f, $90, $7f, $f0, $ff, $fd, $0c, $70, $ec, $13, $fa, $d7, $5f, $ce, $4e, $ff
    db $c5, $45, $c7, $47, $c5, $4c, $c7, $4c, $ff, $cd, $5c, $cf, $5f, $e3, $ff, $bf
    db $3f, $ff, $e9, $49, $ff, $5b, $b7, $5b, $fd, $01, $7f, $7b, $78, $f7, $f0, $0b
    db $fa, $cb, $70, $e2, $ff, $b3, $32, $73, $b2, $f3, $32, $a3, $32, $f6, $70, $e0
    db $4d, $c2, $70, $e8, $df, $c0, $7d, $c3, $f7, $b3, $87, $4c, $70, $e6, $63, $62
    db $c3, $e2, $db, $c3, $c2, $70, $ef, $c3, $47, $9a, $e1, $c4, $4d, $fe, $70, $e5
    db $04, $9f, $68, $9f, $f8, $ff, $06, $58, $e0, $c6, $3e, $e2, $dc, $c0, $cb, $4b
    db $0e, $e0, $4c, $6e, $e0, $ff, $4e, $cf, $4a, $de, $5e, $cf, $5f, $f1, $ff, $ff
    db $5f, $1f, $f6, $a6, $ff, $ad, $db, $ff, $2d, $fe, $00, $bd, $3c, $fb, $f8, $93
    db $ff, $f2, $d3, $f2, $f3, $f2, $e3, $f2, $d3, $ff, $92, $b3, $d2, $f3, $12, $d3
    db $12, $cb, $f7, $4b, $c4, $4c, $70, $e9, $ee, $e0, $bd, $e1, $ef, $db, $43, $6c
    db $0f, $e0, $c5, $a3, $32, $c3, $03, $e2, $83, $a2, $e3, $e0, $c2, $00, $00

    nop                                           ; $7243: $00
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    nop                                           ; $7246: $00
    rst $38                                       ; $7247: $ff
    ld a, a                                       ; $7248: $7f
    ret z                                         ; $7249: $c8

    ld c, a                                       ; $724a: $4f
    rst $08                                       ; $724b: $cf
    ld c, b                                       ; $724c: $48
    rst $38                                       ; $724d: $ff
    bit 1, b                                      ; $724e: $cb $48
    rst $08                                       ; $7250: $cf
    ld c, a                                       ; $7251: $4f
    ret nc                                        ; $7252: $d0

    ld e, a                                       ; $7253: $5f
    db $ec                                        ; $7254: $ec
    ld a, a                                       ; $7255: $7f
    cp $f0                                        ; $7256: $fe $f0
    ldh [rIE], a                                  ; $7258: $e0 $ff
    ld b, $ff                                     ; $725a: $06 $ff
    add c                                         ; $725c: $81
    ccf                                           ; $725d: $3f
    nop                                           ; $725e: $00
    ld a, a                                       ; $725f: $7f
    cp a                                          ; $7260: $bf
    ldh [rIE], a                                  ; $7261: $e0 $ff
    jr @+$01                                      ; $7263: $18 $ff

    halt                                          ; $7265: $76
    rst $38                                       ; $7266: $ff
    ldh [$e0], a                                  ; $7267: $e0 $e0
    cp $ff                                        ; $7269: $fe $ff
    inc bc                                        ; $726b: $03
    ld [bc], a                                    ; $726c: $02
    add e                                         ; $726d: $83
    add d                                         ; $726e: $82
    ld b, e                                       ; $726f: $43
    jp nz, $fa3b                                  ; $7270: $c2 $3b $fa

    rst $38                                       ; $7273: $ff
    rrca                                          ; $7274: $0f
    cp $17                                        ; $7275: $fe $17
    ld a, [$7fef]                                 ; $7277: $fa $ef $7f
    sbc $5b                                       ; $727a: $de $5b
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    ld a, l                                       ; $727e: $7d
    cp $7b                                        ; $727f: $fe $7b
    call nc, $fa5c                                ; $7281: $d4 $5c $fa
    ld a, h                                       ; $7284: $7c
    rst $38                                       ; $7285: $ff
    ret c                                         ; $7286: $d8

    ld a, h                                       ; $7287: $7c
    rst $28                                       ; $7288: $ef
    ld a, a                                       ; $7289: $7f
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    ld [hl], l                                    ; $728c: $75
    ld b, l                                       ; $728d: $45
    rst $38                                       ; $728e: $ff
    db $fd                                        ; $728f: $fd
    and l                                         ; $7290: $a5
    halt                                          ; $7291: $76
    rst $00                                       ; $7292: $c7
    ld a, [hl-]                                   ; $7293: $3a
    ld a, a                                       ; $7294: $7f
    rla                                           ; $7295: $17
    add hl, sp                                    ; $7296: $39
    rst $38                                       ; $7297: $ff
    ld l, a                                       ; $7298: $6f
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    xor a                                         ; $729c: $af
    ld [c], a                                     ; $729d: $e2
    ld e, a                                       ; $729e: $5f
    jp nz, Jump_04d_7bff                          ; $729f: $c2 $ff $7b

    jp nc, $e67f                                  ; $72a2: $d2 $7f $e6

    ld d, a                                       ; $72a5: $57
    xor $ef                                       ; $72a6: $ee $ef
    cp $ff                                        ; $72a8: $fe $ff
    rst $10                                       ; $72aa: $d7
    cp $a3                                        ; $72ab: $fe $a3
    cp $ee                                        ; $72ad: $fe $ee
    ld l, [hl]                                    ; $72af: $6e
    push af                                       ; $72b0: $f5
    halt                                          ; $72b1: $76
    ccf                                           ; $72b2: $3f
    rst $10                                       ; $72b3: $d7
    ld [hl], a                                    ; $72b4: $77
    rst $38                                       ; $72b5: $ff
    ld [hl], b                                    ; $72b6: $70
    or $72                                        ; $72b7: $f6 $72
    call nc, $a2e0                                ; $72b9: $d4 $e0 $a2
    pop hl                                        ; $72bc: $e1
    rst $38                                       ; $72bd: $ff
    db $fc                                        ; $72be: $fc
    ccf                                           ; $72bf: $3f
    ld a, h                                       ; $72c0: $7c
    db $dd                                        ; $72c1: $dd
    db $e3                                        ; $72c2: $e3
    rst $30                                       ; $72c3: $f7
    rrca                                          ; $72c4: $0f
    rst $18                                       ; $72c5: $df
    ei                                            ; $72c6: $fb
    rra                                           ; $72c7: $1f
    cp $d2                                        ; $72c8: $fe $d2
    ldh [rIE], a                                  ; $72ca: $e0 $ff
    nop                                           ; $72cc: $00
    and e                                         ; $72cd: $a3
    ld a, [hl]                                    ; $72ce: $7e
    ld h, e                                       ; $72cf: $63
    rst $38                                       ; $72d0: $ff
    cp $eb                                        ; $72d1: $fe $eb
    cp $e7                                        ; $72d3: $fe $e7
    cp $e3                                        ; $72d5: $fe $e3
    cp $f3                                        ; $72d7: $fe $f3
    rst $20                                       ; $72d9: $e7
    ld a, [hl]                                    ; $72da: $7e
    rst $38                                       ; $72db: $ff
    cp $72                                        ; $72dc: $fe $72
    ldh [rSVBK], a                                ; $72de: $e0 $70
    ldh [$c4], a                                  ; $72e0: $e0 $c4
    ld c, a                                       ; $72e2: $4f
    set 7, a                                      ; $72e3: $cb $ff
    ld c, h                                       ; $72e5: $4c
    ret                                           ; $72e6: $c9


    ld c, h                                       ; $72e7: $4c
    rst $08                                       ; $72e8: $cf
    ld c, a                                       ; $72e9: $4f
    ldh a, [$7f]                                  ; $72ea: $f0 $7f
    and $fe                                       ; $72ec: $e6 $fe
    ld [hl], b                                    ; $72ee: $70
    ld [c], a                                     ; $72ef: $e2
    inc bc                                        ; $72f0: $03
    rst $38                                       ; $72f1: $ff
    ld b, b                                       ; $72f2: $40
    rra                                           ; $72f3: $1f
    add b                                         ; $72f4: $80
    ccf                                           ; $72f5: $3f
    ldh a, [$6f]                                  ; $72f6: $f0 $6f
    rst $38                                       ; $72f8: $ff
    inc c                                         ; $72f9: $0c
    rst $38                                       ; $72fa: $ff
    ccf                                           ; $72fb: $3f
    ld [hl], b                                    ; $72fc: $70
    rst $20                                       ; $72fd: $e7
    ld [c], a                                     ; $72fe: $e2
    inc sp                                        ; $72ff: $33
    ld [hl], b                                    ; $7300: $70
    ldh [rIE], a                                  ; $7301: $e0 $ff
    dec bc                                        ; $7303: $0b
    cp $ef                                        ; $7304: $fe $ef
    ld a, a                                       ; $7306: $7f
    ld a, [$df78]                                 ; $7307: $fa $78 $df
    ld a, d                                       ; $730a: $7a
    rst $38                                       ; $730b: $ff
    ei                                            ; $730c: $fb
    ld a, c                                       ; $730d: $79
    sub $77                                       ; $730e: $d6 $77
    push af                                       ; $7310: $f5
    halt                                          ; $7311: $76
    db $fc                                        ; $7312: $fc
    ld a, [hl]                                    ; $7313: $7e
    db $fd                                        ; $7314: $fd
    rst $18                                       ; $7315: $df
    ld [hl], b                                    ; $7316: $70
    ldh [$aa], a                                  ; $7317: $e0 $aa
    and e                                         ; $7319: $a3
    cp $ea                                        ; $731a: $fe $ea
    ld a, [hl+]                                   ; $731c: $2a
    ld [c], a                                     ; $731d: $e2
    rst $18                                       ; $731e: $df
    dec e                                         ; $731f: $1d
    dec a                                         ; $7320: $3d
    dec bc                                        ; $7321: $0b
    dec de                                        ; $7322: $1b
    rra                                           ; $7323: $1f
    pop de                                        ; $7324: $d1
    ldh [$97], a                                  ; $7325: $e0 $97
    ld a, [c]                                     ; $7327: $f2
    rst $38                                       ; $7328: $ff
    rst $28                                       ; $7329: $ef
    ld [c], a                                     ; $732a: $e2
    cp a                                          ; $732b: $bf
    ld [$f6bb], a                                 ; $732c: $ea $bb $f6
    ccf                                           ; $732f: $3f
    or $ff                                        ; $7330: $f6 $ff
    rst $30                                       ; $7332: $f7
    cp $ef                                        ; $7333: $fe $ef
    cp $53                                        ; $7335: $fe $53
    cp [hl]                                       ; $7337: $be
    rst $18                                       ; $7338: $df
    ld a, a                                       ; $7339: $7f
    rst $38                                       ; $733a: $ff
    ld a, [c]                                     ; $733b: $f2
    ld [hl], a                                    ; $733c: $77
    db $dd                                        ; $733d: $dd
    ld a, e                                       ; $733e: $7b
    ei                                            ; $733f: $fb
    ld a, b                                       ; $7340: $78
    ei                                            ; $7341: $fb
    ld a, l                                       ; $7342: $7d
    ei                                            ; $7343: $fb
    rst $28                                       ; $7344: $ef
    ld [hl], a                                    ; $7345: $77
    ld [hl], b                                    ; $7346: $70
    pop hl                                        ; $7347: $e1
    ld e, a                                       ; $7348: $5f
    ld e, a                                       ; $7349: $5f
    xor a                                         ; $734a: $af
    inc e                                         ; $734b: $1c
    or $df                                        ; $734c: $f6 $df
    ld sp, hl                                     ; $734e: $f9
    ei                                            ; $734f: $fb
    rlca                                          ; $7350: $07
    ld h, a                                       ; $7351: $67
    adc a                                         ; $7352: $8f
    ld [hl], b                                    ; $7353: $70
    db $e3                                        ; $7354: $e3
    db $d3                                        ; $7355: $d3
    ld a, $fb                                     ; $7356: $3e $fb
    and e                                         ; $7358: $a3
    ld a, [hl]                                    ; $7359: $7e
    ld [hl], b                                    ; $735a: $70
    db $ed                                        ; $735b: $ed
    jp nz, $c447                                  ; $735c: $c2 $47 $c4

    ld c, a                                       ; $735f: $4f
    ret z                                         ; $7360: $c8

    ld a, a                                       ; $7361: $7f
    ld c, a                                       ; $7362: $4f
    bit 1, a                                      ; $7363: $cb $4f
    db $ec                                        ; $7365: $ec
    ld a, a                                       ; $7366: $7f
    db $d3                                        ; $7367: $d3
    ld e, a                                       ; $7368: $5f
    ldh [$c1], a                                  ; $7369: $e0 $c1
    rst $38                                       ; $736b: $ff
    ld bc, $a8ff                                  ; $736c: $01 $ff $a8
    rlca                                          ; $736f: $07
    ld d, b                                       ; $7370: $50
    rlca                                          ; $7371: $07
    db $fc                                        ; $7372: $fc
    rst $38                                       ; $7373: $ff
    rst $30                                       ; $7374: $f7
    ld [bc], a                                    ; $7375: $02
    rst $38                                       ; $7376: $ff
    rrca                                          ; $7377: $0f
    ldh [$c8], a                                  ; $7378: $e0 $c8
    inc sp                                        ; $737a: $33
    ld a, [$fe2b]                                 ; $737b: $fa $2b $fe
    rst $38                                       ; $737e: $ff
    rlca                                          ; $737f: $07
    cp $f7                                        ; $7380: $fe $f7
    ld e, a                                       ; $7382: $5f
    db $fd                                        ; $7383: $fd
    ld a, h                                       ; $7384: $7c
    rst $18                                       ; $7385: $df
    ld a, l                                       ; $7386: $7d
    rst $38                                       ; $7387: $ff
    db $fd                                        ; $7388: $fd
    ld e, h                                       ; $7389: $5c
    db $db                                        ; $738a: $db
    ld a, a                                       ; $738b: $7f
    cp $7f                                        ; $738c: $fe $7f
    rst $18                                       ; $738e: $df
    ld a, a                                       ; $738f: $7f
    rst $38                                       ; $7390: $ff
    rst $18                                       ; $7391: $df
    ld [hl], a                                    ; $7392: $77
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    ld d, l                                       ; $7395: $55
    ld d, c                                       ; $7396: $51
    rst $38                                       ; $7397: $ff
    ld [hl], l                                    ; $7398: $75
    rst $38                                       ; $7399: $ff
    sub l                                         ; $739a: $95
    pop af                                        ; $739b: $f1
    ld c, $9e                                     ; $739c: $0e $9e
    ld b, a                                       ; $739e: $47
    rrca                                          ; $739f: $0f
    rrca                                          ; $73a0: $0f
    sbc a                                         ; $73a1: $9f
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    adc e                                         ; $73a5: $8b
    ld a, [$f277]                                 ; $73a6: $fa $77 $f2
    ld e, e                                       ; $73a9: $5b
    halt                                          ; $73aa: $76
    rst $18                                       ; $73ab: $df
    ld e, a                                       ; $73ac: $5f
    ld a, [$febb]                                 ; $73ad: $fa $bb $fe
    rst $38                                       ; $73b0: $ff
    ld l, [hl]                                    ; $73b1: $6e
    ldh [$db], a                                  ; $73b2: $e0 $db
    sbc [hl]                                      ; $73b4: $9e
    rst $38                                       ; $73b5: $ff
    sub $76                                       ; $73b6: $d6 $76
    rst $28                                       ; $73b8: $ef
    ld a, e                                       ; $73b9: $7b
    jp c, $fd7c                                   ; $73ba: $da $7c $fd

    ld a, [hl]                                    ; $73bd: $7e
    ei                                            ; $73be: $fb
    cp $7f                                        ; $73bf: $fe $7f
    ld [hl], b                                    ; $73c1: $70
    db $e3                                        ; $73c2: $e3
    xor e                                         ; $73c3: $ab
    xor e                                         ; $73c4: $ab
    ld d, a                                       ; $73c5: $57
    adc [hl]                                      ; $73c6: $8e
    ei                                            ; $73c7: $fb
    rst $18                                       ; $73c8: $df
    db $fc                                        ; $73c9: $fc
    db $fd                                        ; $73ca: $fd
    inc bc                                        ; $73cb: $03
    db $d3                                        ; $73cc: $d3
    ld h, a                                       ; $73cd: $67
    ld [hl], b                                    ; $73ce: $70
    db $e4                                        ; $73cf: $e4
    cp [hl]                                       ; $73d0: $be
    and e                                         ; $73d1: $a3
    inc bc                                        ; $73d2: $03
    ld a, [hl]                                    ; $73d3: $7e
    ld l, e                                       ; $73d4: $6b
    ldh [$c8], a                                  ; $73d5: $e0 $c8
    nop                                           ; $73d7: $00
    nop                                           ; $73d8: $00
    nop                                           ; $73d9: $00

    db $ff, $ff, $00, $ff, $7f, $c0, $40, $c1, $43, $ff, $c3, $47, $c7, $47, $c6, $47
    db $c4, $4f, $de, $f0, $e0, $ff, $7c, $fe, $ff, $ff, $e0, $01, $ff, $ef, $38, $ff
    db $7c, $ff, $e0, $e0, $fe, $03, $02, $ff, $03, $82, $83, $c2, $c3, $e2, $e3, $e2
    db $ff, $63, $f2, $cc, $4f, $cf, $4f, $c7, $4f, $f7, $c7, $47, $c7, $f8, $e0, $df
    db $5f, $cf, $5f, $ff, $7c, $ff, $fc, $ff, $f8, $ff, $e3, $ff, $f9, $c7, $fe, $e0
    db $ca, $e1, $73, $f2, $73, $f2, $f3, $63, $f2, $e3, $fc, $e0, $fe, $e3, $d2, $e1
    db $c3, $47, $a0, $e2, $1f, $4f, $ff, $7f, $ff, $00, $d8, $e1, $d6, $e3, $d1, $e2
    db $bf, $00, $e3, $f2, $c3, $e2, $83, $a2, $e3, $f2, $03, $ff, $fe, $72, $e0, $70
    db $e8, $9a, $e1, $70, $e7, $6c, $e3, $70, $eb, $7f, $e3, $f2, $ce, $4f, $cc, $4f
    db $c4, $70, $e8, $aa, $4c, $e1, $7c, $6e, $e8, $f3, $70, $e0, $73, $70, $f8, $ff
    db $40, $46, $e2, $6e, $e6, $70, $ff, $70, $ea, $ce, $e1, $70, $eb, $cf, $e0, $c4
    db $45, $c6, $68, $e0, $dc, $e0, $c0, $d9, $e7, $68, $e1, $e0, $70, $e0, $00, $e6
    db $c1, $e0, $c1, $d6, $c3, $e0, $cf, $6e, $e3, $70, $f5, $00, $00

    nop                                           ; $74a7: $00
    db $fd                                        ; $74a8: $fd
    nop                                           ; $74a9: $00
    rst $38                                       ; $74aa: $ff
    db $fc                                        ; $74ab: $fc
    rst $38                                       ; $74ac: $ff
    rst $38                                       ; $74ad: $ff
    ret nc                                        ; $74ae: $d0

    rst $28                                       ; $74af: $ef
    sbc a                                         ; $74b0: $9f
    rst $38                                       ; $74b1: $ff
    ld l, a                                       ; $74b2: $6f
    and b                                         ; $74b3: $a0
    rst $38                                       ; $74b4: $ff
    xor a                                         ; $74b5: $af
    ldh a, [$fe]                                  ; $74b6: $f0 $fe
    db $e3                                        ; $74b8: $e3
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    db $ed                                        ; $74bb: $ed
    ldh [$fa], a                                  ; $74bc: $e0 $fa
    db $fc                                        ; $74be: $fc
    pop hl                                        ; $74bf: $e1
    nop                                           ; $74c0: $00
    cp $e4                                        ; $74c1: $fe $e4
    rst $38                                       ; $74c3: $ff
    rlca                                          ; $74c4: $07
    rst $38                                       ; $74c5: $ff
    di                                            ; $74c6: $f3
    rst $38                                       ; $74c7: $ff
    rrca                                          ; $74c8: $0f
    dec bc                                        ; $74c9: $0b
    rst $38                                       ; $74ca: $ff
    ei                                            ; $74cb: $fb
    rrca                                          ; $74cc: $0f
    cp $e3                                        ; $74cd: $fe $e3
    ret c                                         ; $74cf: $d8

    push hl                                       ; $74d0: $e5
    ret nc                                        ; $74d1: $d0

    push hl                                       ; $74d2: $e5
    add sp, -$1b                                  ; $74d3: $e8 $e5
    ld c, $e0                                     ; $74d5: $0e $e0
    db $ed                                        ; $74d7: $ed
    sbc a                                         ; $74d8: $9f
    rst $38                                       ; $74d9: $ff
    ret nz                                        ; $74da: $c0

    cp b                                          ; $74db: $b8
    ldh [$b5], a                                  ; $74dc: $e0 $b5
    ld [c], a                                     ; $74de: $e2
    cp b                                          ; $74df: $b8
    db $e4                                        ; $74e0: $e4
    xor b                                         ; $74e1: $a8
    pop hl                                        ; $74e2: $e1
    dec e                                         ; $74e3: $1d
    rst $38                                       ; $74e4: $ff
    cp b                                          ; $74e5: $b8
    db $e4                                        ; $74e6: $e4
    db $eb                                        ; $74e7: $eb
    rra                                           ; $74e8: $1f
    di                                            ; $74e9: $f3
    xor b                                         ; $74ea: $a8
    ldh [$e1], a                                  ; $74eb: $e0 $e1
    ld [c], a                                     ; $74ed: $e2
    rst $38                                       ; $74ee: $ff

jr_04d_74ef:
    rst $38                                       ; $74ef: $ff
    db $fc                                        ; $74f0: $fc
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    jr nz, jr_04d_74ef                            ; $74f3: $20 $fa

    rst $38                                       ; $74f5: $ff
    adc d                                         ; $74f6: $8a
    rst $38                                       ; $74f7: $ff
    cp d                                          ; $74f8: $ba
    rst $28                                       ; $74f9: $ef
    cp b                                          ; $74fa: $b8
    ld [hl], e                                    ; $74fb: $73

Call_04d_74fc:
    rst $38                                       ; $74fc: $ff
    cp d                                          ; $74fd: $ba
    ld hl, sp-$20                                 ; $74fe: $f8 $e0
    ld l, [hl]                                    ; $7500: $6e
    db $e3                                        ; $7501: $e3
    adc b                                         ; $7502: $88
    rst $38                                       ; $7503: $ff
    xor d                                         ; $7504: $aa
    cp $e0                                        ; $7505: $fe $e0
    ld sp, hl                                     ; $7507: $f9
    adc c                                         ; $7508: $89
    ld a, [$f0e0]                                 ; $7509: $fa $e0 $f0
    push hl                                       ; $750c: $e5
    cp l                                          ; $750d: $bd
    rst $20                                       ; $750e: $e7
    cp l                                          ; $750f: $bd
    rst $38                                       ; $7510: $ff
    cp l                                          ; $7511: $bd
    ld d, e                                       ; $7512: $53
    rst $38                                       ; $7513: $ff
    adc l                                         ; $7514: $8d
    ldh [$e6], a                                  ; $7515: $e0 $e6
    call nc, $b9e1                                ; $7517: $d4 $e1 $b9
    ret nc                                        ; $751a: $d0

    and $89                                       ; $751b: $e6 $89
    db $e4                                        ; $751d: $e4
    ldh [$bf], a                                  ; $751e: $e0 $bf
    adc a                                         ; $7520: $8f
    ld hl, sp-$11                                 ; $7521: $f8 $ef
    ld hl, sp-$71                                 ; $7523: $f8 $8f
    ld hl, sp+$2e                                 ; $7525: $f8 $2e
    ld [c], a                                     ; $7527: $e2
    rra                                           ; $7528: $1f
    rst $20                                       ; $7529: $e7
    pop af                                        ; $752a: $f1
    rra                                           ; $752b: $1f
    push af                                       ; $752c: $f5
    db $fc                                        ; $752d: $fc
    db $e4                                        ; $752e: $e4
    ld e, $e3                                     ; $752f: $1e $e3
    ld de, $77ff                                  ; $7531: $11 $ff $77
    ld a, [c]                                     ; $7534: $f2
    db $fc                                        ; $7535: $fc
    ldh [$7d], a                                  ; $7536: $e0 $7d
    ld hl, sp-$20                                 ; $7538: $f8 $e0
    ld c, $e2                                     ; $753a: $0e $e2
    pop af                                        ; $753c: $f1
    rra                                           ; $753d: $1f
    pop af                                        ; $753e: $f1
    cp a                                          ; $753f: $bf
    ld a, c                                       ; $7540: $79
    pop hl                                        ; $7541: $e1
    cp $e3                                        ; $7542: $fe $e3
    ldh [$e6], a                                  ; $7544: $e0 $e6
    db $fd                                        ; $7546: $fd
    rla                                           ; $7547: $17
    rst $38                                       ; $7548: $ff
    rst $10                                       ; $7549: $d7
    ldh [$e5], a                                  ; $754a: $e0 $e5
    cp d                                          ; $754c: $ba
    ret nc                                        ; $754d: $d0

    ldh [rHDMA5], a                               ; $754e: $e0 $55
    cp $e0                                        ; $7550: $fe $e0
    ld d, e                                       ; $7552: $53
    rst $38                                       ; $7553: $ff
    dec d                                         ; $7554: $15
    rst $18                                       ; $7555: $df
    jp Jump_000_07f0                              ; $7556: $c3 $f0 $07


    rra                                           ; $7559: $1f
    ldh a, [$7f]                                  ; $755a: $f0 $7f
    db $fc                                        ; $755c: $fc
    db $e4                                        ; $755d: $e4
    rst $08                                       ; $755e: $cf
    jp z, $c283                                   ; $755f: $ca $83 $c2

    ldh a, [rIE]                                  ; $7562: $f0 $ff
    pop de                                        ; $7564: $d1
    jp hl                                         ; $7565: $e9


    jp nc, $c14c                                  ; $7566: $d2 $4c $c1

    add b                                         ; $7569: $80
    cp $ea                                        ; $756a: $fe $ea
    ldh [$ed], a                                  ; $756c: $e0 $ed
    rst $38                                       ; $756e: $ff
    ldh [$ec], a                                  ; $756f: $e0 $ec
    add b                                         ; $7571: $80
    ld c, a                                       ; $7572: $4f
    rst $38                                       ; $7573: $ff
    ld [hl], b                                    ; $7574: $70
    ld c, a                                       ; $7575: $4f
    ld [hl], b                                    ; $7576: $70
    ld a, a                                       ; $7577: $7f
    ld h, a                                       ; $7578: $67
    ld a, d                                       ; $7579: $7a
    ccf                                           ; $757a: $3f
    ld [hl-], a                                   ; $757b: $32
    rst $38                                       ; $757c: $ff
    rra                                           ; $757d: $1f
    db $10                                        ; $757e: $10
    rra                                           ; $757f: $1f
    jr jr_04d_7591                                ; $7580: $18 $0f

    rrca                                          ; $7582: $0f
    rlca                                          ; $7583: $07
    ld a, [c]                                     ; $7584: $f2
    rst $38                                       ; $7585: $ff
    ld c, $f2                                     ; $7586: $0e $f2
    ld c, $fe                                     ; $7588: $0e $fe
    and $5e                                       ; $758a: $e6 $5e
    db $fc                                        ; $758c: $fc
    ld c, h                                       ; $758d: $4c
    rst $38                                       ; $758e: $ff
    ld hl, sp+$08                                 ; $758f: $f8 $08

jr_04d_7591:
    ld hl, sp+$18                                 ; $7591: $f8 $18
    ldh a, [$f0]                                  ; $7593: $f0 $f0
    ldh [rP1], a                                  ; $7595: $e0 $00
    rst $38                                       ; $7597: $ff
    nop                                           ; $7598: $00
    rlca                                          ; $7599: $07
    inc bc                                        ; $759a: $03
    rra                                           ; $759b: $1f
    inc c                                         ; $759c: $0c
    inc sp                                        ; $759d: $33
    inc e                                         ; $759e: $1c
    ld h, $ff                                     ; $759f: $26 $ff
    add hl, sp                                    ; $75a1: $39
    ld a, h                                       ; $75a2: $7c
    inc hl                                        ; $75a3: $23
    ld a, h                                       ; $75a4: $7c
    ld b, e                                       ; $75a5: $43
    ld e, [hl]                                    ; $75a6: $5e
    ld h, c                                       ; $75a7: $61
    nop                                           ; $75a8: $00
    rst $38                                       ; $75a9: $ff
    nop                                           ; $75aa: $00
    ldh [$c0], a                                  ; $75ab: $e0 $c0
    ld hl, sp+$30                                 ; $75ad: $f8 $30
    call z, Call_04d_6438                         ; $75af: $cc $38 $64
    rst $38                                       ; $75b2: $ff
    sbc h                                         ; $75b3: $9c
    ld a, $c4                                     ; $75b4: $3e $c4
    ld a, $c2                                     ; $75b6: $3e $c2
    ld a, d                                       ; $75b8: $7a
    add [hl]                                      ; $75b9: $86
    rst $30                                       ; $75ba: $f7
    rst $38                                       ; $75bb: $ff
    rlca                                          ; $75bc: $07
    db $eb                                        ; $75bd: $eb
    inc c                                         ; $75be: $0c
    rst $10                                       ; $75bf: $d7
    dec de                                        ; $75c0: $1b
    db $ed                                        ; $75c1: $ed
    scf                                           ; $75c2: $37
    ld sp, hl                                     ; $75c3: $f9
    rst $38                                       ; $75c4: $ff

jr_04d_75c5:
    cpl                                           ; $75c5: $2f
    db $fd                                        ; $75c6: $fd
    cpl                                           ; $75c7: $2f
    db $fd                                        ; $75c8: $fd
    daa                                           ; $75c9: $27
    db $dd                                        ; $75ca: $dd
    rla                                           ; $75cb: $17
    cp a                                          ; $75cc: $bf
    rst $18                                       ; $75cd: $df
    add b                                         ; $75ce: $80
    ld a, a                                       ; $75cf: $7f
    ret nz                                        ; $75d0: $c0

    rst $38                                       ; $75d1: $ff
    ld b, b                                       ; $75d2: $40
    cp $e7                                        ; $75d3: $fe $e7
    db $fd                                        ; $75d5: $fd
    rla                                           ; $75d6: $17
    rst $38                                       ; $75d7: $ff
    db $dd                                        ; $75d8: $dd
    rla                                           ; $75d9: $17
    db $ed                                        ; $75da: $ed
    scf                                           ; $75db: $37
    db $fd                                        ; $75dc: $fd
    cpl                                           ; $75dd: $2f
    ld hl, sp+$2f                                 ; $75de: $f8 $2f
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    cpl                                           ; $75e2: $2f
    rst $28                                       ; $75e3: $ef
    jr nc, jr_04d_75c5                            ; $75e4: $30 $df

    rra                                           ; $75e6: $1f
    rst $38                                       ; $75e7: $ff
    ld b, b                                       ; $75e8: $40
    rst $08                                       ; $75e9: $cf
    rst $18                                       ; $75ea: $df
    ld b, b                                       ; $75eb: $40
    cp a                                          ; $75ec: $bf
    ld h, b                                       ; $75ed: $60
    adc a                                         ; $75ee: $8f
    and b                                         ; $75ef: $a0
    cp $e0                                        ; $75f0: $fe $e0
    cp a                                          ; $75f2: $bf
    ld h, b                                       ; $75f3: $60
    rst $38                                       ; $75f4: $ff
    rst $18                                       ; $75f5: $df
    ret nz                                        ; $75f6: $c0

    rst $18                                       ; $75f7: $df
    rra                                           ; $75f8: $1f
    xor a                                         ; $75f9: $af
    jr nc, jr_04d_765b                            ; $75fa: $30 $5f

    ld l, a                                       ; $75fc: $6f
    rst $38                                       ; $75fd: $ff
    or b                                          ; $75fe: $b0
    rst $18                                       ; $75ff: $df
    and $bf                                       ; $7600: $e6 $bf
    rst $28                                       ; $7602: $ef
    cp c                                          ; $7603: $b9
    rst $38                                       ; $7604: $ff
    cp c                                          ; $7605: $b9
    rst $38                                       ; $7606: $ff
    cp [hl]                                       ; $7607: $be
    rst $00                                       ; $7608: $c7
    cp a                                          ; $7609: $bf
    add b                                         ; $760a: $80
    ld e, a                                       ; $760b: $5f
    ret nz                                        ; $760c: $c0

    xor a                                         ; $760d: $af
    ld h, b                                       ; $760e: $60
    rst $28                                       ; $760f: $ef
    rst $18                                       ; $7610: $df
    or b                                          ; $7611: $b0
    ld a, a                                       ; $7612: $7f
    ret nc                                        ; $7613: $d0

    cp $e3                                        ; $7614: $fe $e3
    reti                                          ; $7616: $d9


    ld l, a                                       ; $7617: $6f
    ld [hl], e                                    ; $7618: $73
    rst $38                                       ; $7619: $ff
    ld e, [hl]                                    ; $761a: $5e
    or a                                          ; $761b: $b7
    db $dd                                        ; $761c: $dd
    rst $20                                       ; $761d: $e7
    cp a                                          ; $761e: $bf
    ldh [$bf], a                                  ; $761f: $e0 $bf
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    cp a                                          ; $7623: $bf

jr_04d_7624:
    cp a                                          ; $7624: $bf
    ret nz                                        ; $7625: $c0

    ld a, a                                       ; $7626: $7f
    ld a, a                                       ; $7627: $7f
    rst $18                                       ; $7628: $df
    or b                                          ; $7629: $b0
    rst $28                                       ; $762a: $ef
    ei                                            ; $762b: $fb
    jr nz, @+$01                                  ; $762c: $20 $ff

    db $e4                                        ; $762e: $e4
    ld [c], a                                     ; $762f: $e2
    rst $38                                       ; $7630: $ff
    ret nc                                        ; $7631: $d0

    rst $18                                       ; $7632: $df
    jr nc, jr_04d_7624                            ; $7633: $30 $ef

    db $fd                                        ; $7635: $fd
    ldh [$c0], a                                  ; $7636: $e0 $c0
    rst $20                                       ; $7638: $e7
    rst $38                                       ; $7639: $ff
    cp c                                          ; $763a: $b9
    or [hl]                                       ; $763b: $b6
    rst $08                                       ; $763c: $cf
    ld a, b                                       ; $763d: $78
    ld l, a                                       ; $763e: $6f
    cp $c0                                        ; $763f: $fe $c0
    db $eb                                        ; $7641: $eb
    rst $38                                       ; $7642: $ff
    or b                                          ; $7643: $b0
    halt                                          ; $7644: $76
    ld c, a                                       ; $7645: $4f
    rst $38                                       ; $7646: $ff
    cp c                                          ; $7647: $b9
    rst $28                                       ; $7648: $ef
    rst $38                                       ; $7649: $ff
    cp c                                          ; $764a: $b9
    and $bf                                       ; $764b: $e6 $bf
    or b                                          ; $764d: $b0
    rst $18                                       ; $764e: $df
    ld e, a                                       ; $764f: $5f
    ld l, a                                       ; $7650: $6f
    xor a                                         ; $7651: $af
    db $fc                                        ; $7652: $fc
    add b                                         ; $7653: $80
    ldh [$a8], a                                  ; $7654: $e0 $a8
    push hl                                       ; $7656: $e5
    rst $18                                       ; $7657: $df
    or b                                          ; $7658: $b0
    xor a                                         ; $7659: $af
    ld h, b                                       ; $765a: $60

jr_04d_765b:
    ld e, a                                       ; $765b: $5f
    ret nz                                        ; $765c: $c0

    rst $28                                       ; $765d: $ef
    cp a                                          ; $765e: $bf
    add b                                         ; $765f: $80
    ei                                            ; $7660: $fb
    adc a                                         ; $7661: $8f
    cp $eb                                        ; $7662: $fe $eb
    rst $38                                       ; $7664: $ff
    inc a                                         ; $7665: $3c
    db $db                                        ; $7666: $db
    rst $38                                       ; $7667: $ff
    ld h, [hl]                                    ; $7668: $66
    cp l                                          ; $7669: $bd
    db $db                                        ; $766a: $db
    rst $28                                       ; $766b: $ef
    sub c                                         ; $766c: $91
    rst $30                                       ; $766d: $f7
    adc c                                         ; $766e: $89
    cp l                                          ; $766f: $bd
    rst $30                                       ; $7670: $f7
    db $db                                        ; $7671: $db
    db $db                                        ; $7672: $db
    ld h, [hl]                                    ; $7673: $66
    push af                                       ; $7674: $f5
    add b                                         ; $7675: $80
    inc a                                         ; $7676: $3c
    rst $18                                       ; $7677: $df
    ld h, h                                       ; $7678: $64
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    ld b, h                                       ; $767b: $44
    rst $38                                       ; $767c: $ff
    ld h, h                                       ; $767d: $64
    rst $38                                       ; $767e: $ff
    inc h                                         ; $767f: $24
    rst $38                                       ; $7680: $ff
    ld h, [hl]                                    ; $7681: $66
    rst $38                                       ; $7682: $ff
    db $fd                                        ; $7683: $fd
    ld b, d                                       ; $7684: $42
    push hl                                       ; $7685: $e5
    add b                                         ; $7686: $80
    ld a, [hl]                                    ; $7687: $7e
    cp l                                          ; $7688: $bd
    jp $99ff                                      ; $7689: $c3 $ff $99


    rst $30                                       ; $768c: $f7
    rst $10                                       ; $768d: $d7
    ld sp, hl                                     ; $768e: $f9
    cp c                                          ; $768f: $b9
    rst $00                                       ; $7690: $c7
    ret                                           ; $7691: $c9


    add b                                         ; $7692: $80
    add c                                         ; $7693: $81
    ldh a, [$e3]                                  ; $7694: $f0 $e3
    rst $30                                       ; $7696: $f7
    sbc c                                         ; $7697: $99
    cp a                                          ; $7698: $bf
    rst $38                                       ; $7699: $ff
    ld h, d                                       ; $769a: $62
    rst $38                                       ; $769b: $ff
    ld sp, hl                                     ; $769c: $f9
    rst $38                                       ; $769d: $ff
    sbc c                                         ; $769e: $99
    and $e0                                       ; $769f: $e6 $e0
    rst $38                                       ; $76a1: $ff
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    ld a, $df                                     ; $76a4: $3e $df
    ld h, d                                       ; $76a6: $62
    cp a                                          ; $76a7: $bf
    jp nz, $92ff                                  ; $76a8: $c2 $ff $92

    db $eb                                        ; $76ab: $eb
    rst $38                                       ; $76ac: $ff
    sub e                                         ; $76ad: $93
    ld [c], a                                     ; $76ae: $e2
    ldh [$f3], a                                  ; $76af: $e0 $f3
    db $fd                                        ; $76b1: $fd
    add d                                         ; $76b2: $82
    add c                                         ; $76b3: $81
    rst $38                                       ; $76b4: $ff
    sbc a                                         ; $76b5: $9f
    xor e                                         ; $76b6: $ab
    db $fd                                        ; $76b7: $fd
    add e                                         ; $76b8: $83
    ldh [$e6], a                                  ; $76b9: $e0 $e6
    ld a, [hl]                                    ; $76bb: $7e
    ld [c], a                                     ; $76bc: $e2
    ldh [$9e], a                                  ; $76bd: $e0 $9e
    ldh a, [$e0]                                  ; $76bf: $f0 $e0
    sbc c                                         ; $76c1: $99
    db $fc                                        ; $76c2: $fc
    ret nc                                        ; $76c3: $d0

    db $e4                                        ; $76c4: $e4
    ldh [$e0], a                                  ; $76c5: $e0 $e0
    push af                                       ; $76c7: $f5
    ei                                            ; $76c8: $fb
    rst $28                                       ; $76c9: $ef
    ld [hl-], a                                   ; $76ca: $32
    ei                                            ; $76cb: $fb
    ld h, $c2                                     ; $76cc: $26 $c2
    sbc [hl]                                      ; $76ce: $9e
    ldh [rNR50], a                                ; $76cf: $e0 $24
    and b                                         ; $76d1: $a0
    push hl                                       ; $76d2: $e5
    sbc h                                         ; $76d3: $9c
    pop hl                                        ; $76d4: $e1
    ret nc                                        ; $76d5: $d0

    push hl                                       ; $76d6: $e5
    db $f4                                        ; $76d7: $f4
    db $e3                                        ; $76d8: $e3
    cp a                                          ; $76d9: $bf
    pop bc                                        ; $76da: $c1
    xor e                                         ; $76db: $ab
    rst $38                                       ; $76dc: $ff
    ld a, c                                       ; $76dd: $79
    and b                                         ; $76de: $a0
    ld [c], a                                     ; $76df: $e2
    inc a                                         ; $76e0: $3c
    halt                                          ; $76e1: $76
    ldh [$e7], a                                  ; $76e2: $e0 $e7
    add [hl]                                      ; $76e4: $86
    ldh [$81], a                                  ; $76e5: $e0 $81
    jr nz, @-$04                                  ; $76e7: $20 $fa

    ldh [$d0], a                                  ; $76e9: $e0 $d0
    pop hl                                        ; $76eb: $e1
    reti                                          ; $76ec: $d9


    and e                                         ; $76ed: $a3
    ldh a, [$e1]                                  ; $76ee: $f0 $e1
    ld b, l                                       ; $76f0: $45
    add e                                         ; $76f1: $83
    inc a                                         ; $76f2: $3c
    ld [c], a                                     ; $76f3: $e2
    ld [c], a                                     ; $76f4: $e2
    db $e4                                        ; $76f5: $e4
    db $e3                                        ; $76f6: $e3
    cp $60                                        ; $76f7: $fe $60
    ldh [$8e], a                                  ; $76f9: $e0 $8e
    adc [hl]                                      ; $76fb: $8e
    adc a                                         ; $76fc: $8f
    adc a                                         ; $76fd: $8f
    adc [hl]                                      ; $76fe: $8e
    adc a                                         ; $76ff: $8f
    sub [hl]                                      ; $7700: $96
    rst $38                                       ; $7701: $ff
    sbc a                                         ; $7702: $9f
    and b                                         ; $7703: $a0
    cp a                                          ; $7704: $bf
    cp a                                          ; $7705: $bf
    cp a                                          ; $7706: $bf
    cp c                                          ; $7707: $b9
    cp a                                          ; $7708: $bf
    xor c                                         ; $7709: $a9
    rst $38                                       ; $770a: $ff
    or [hl]                                       ; $770b: $b6
    nop                                           ; $770c: $00
    nop                                           ; $770d: $00
    add b                                         ; $770e: $80
    add b                                         ; $770f: $80
    ld h, b                                       ; $7710: $60
    ldh [rNR10], a                                ; $7711: $e0 $10
    rst $38                                       ; $7713: $ff
    ldh a, [$08]                                  ; $7714: $f0 $08
    ld hl, sp-$78                                 ; $7716: $f8 $88
    ld hl, sp-$1c                                 ; $7718: $f8 $e4
    db $fc                                        ; $771a: $fc
    inc [hl]                                      ; $771b: $34
    rst $38                                       ; $771c: $ff
    db $fc                                        ; $771d: $fc
    sbc b                                         ; $771e: $98
    sbc b                                         ; $771f: $98
    and a                                         ; $7720: $a7
    cp a                                          ; $7721: $bf
    jp z, $dfff                                   ; $7722: $ca $ff $df

    rst $18                                       ; $7725: $df
    rst $38                                       ; $7726: $ff
    cp a                                          ; $7727: $bf
    or b                                          ; $7728: $b0
    cp a                                          ; $7729: $bf
    and b                                         ; $772a: $a0
    rst $18                                       ; $772b: $df
    pop hl                                        ; $772c: $e1
    inc b                                         ; $772d: $04
    inc b                                         ; $772e: $04
    rst $28                                       ; $772f: $ef
    set 1, a                                      ; $7730: $cb $cf
    ld sp, $a3ff                                  ; $7732: $31 $ff $a3
    ret nz                                        ; $7735: $c0

    ld a, a                                       ; $7736: $7f
    rst $28                                       ; $7737: $ef
    ccf                                           ; $7738: $3f
    rst $38                                       ; $7739: $ff
    db $e4                                        ; $773a: $e4
    cp h                                          ; $773b: $bc
    db $fc                                        ; $773c: $fc
    ld e, h                                       ; $773d: $5c
    add e                                         ; $773e: $83
    add e                                         ; $773f: $83
    add h                                         ; $7740: $84
    add a                                         ; $7741: $87
    rst $28                                       ; $7742: $ef

jr_04d_7743:
    adc a                                         ; $7743: $8f
    adc a                                         ; $7744: $8f
    sbc a                                         ; $7745: $9f
    sub b                                         ; $7746: $90
    cp $e0                                        ; $7747: $fe $e0
    sbc a                                         ; $7749: $9f
    cp a                                          ; $774a: $bf
    and b                                         ; $774b: $a0
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $18                                       ; $774e: $df
    ret nz                                        ; $774f: $c0

    ret nz                                        ; $7750: $c0

    jr nc, jr_04d_7743                            ; $7751: $30 $f0

    ret z                                         ; $7753: $c8

    ld hl, sp-$01                                 ; $7754: $f8 $ff
    db $e4                                        ; $7756: $e4

jr_04d_7757:
    inc a                                         ; $7757: $3c
    db $f4                                        ; $7758: $f4
    inc e                                         ; $7759: $1c
    db $fc                                        ; $775a: $fc
    call c, Call_000_32fe                         ; $775b: $dc $fe $32
    rst $38                                       ; $775e: $ff
    db $fd                                        ; $775f: $fd
    sbc a                                         ; $7760: $9f
    add [hl]                                      ; $7761: $86
    add [hl]                                      ; $7762: $86
    adc c                                         ; $7763: $89
    adc a                                         ; $7764: $8f
    sub b                                         ; $7765: $90
    sbc a                                         ; $7766: $9f
    rst $38                                       ; $7767: $ff
    sbc c                                         ; $7768: $99
    sbc a                                         ; $7769: $9f
    sbc a                                         ; $776a: $9f
    sub [hl]                                      ; $776b: $96
    cp a                                          ; $776c: $bf
    and b                                         ; $776d: $a0
    xor h                                         ; $776e: $ac

jr_04d_776f:
    or e                                          ; $776f: $b3
    cp $30                                        ; $7770: $fe $30
    add c                                         ; $7772: $81
    ret nz                                        ; $7773: $c0

    ret nz                                        ; $7774: $c0

    jr nz, jr_04d_7757                            ; $7775: $20 $e0

    sub b                                         ; $7777: $90
    ldh a, [$c8]                                  ; $7778: $f0 $c8
    rst $38                                       ; $777a: $ff
    ld a, b                                       ; $777b: $78
    ret z                                         ; $777c: $c8

    ld a, b                                       ; $777d: $78
    add sp, $38                                   ; $777e: $e8 $38
    add sp, -$08                                  ; $7780: $e8 $f8
    adc a                                         ; $7782: $8f
    rst $38                                       ; $7783: $ff
    adc a                                         ; $7784: $8f
    or [hl]                                       ; $7785: $b6
    cp a                                          ; $7786: $bf
    call nz, $acff                                ; $7787: $c4 $ff $ac
    rst $18                                       ; $778a: $df
    sbc [hl]                                      ; $778b: $9e
    rst $10                                       ; $778c: $d7
    rst $30                                       ; $778d: $f7
    cp a                                          ; $778e: $bf
    db $e3                                        ; $778f: $e3
    db $ed                                        ; $7790: $ed
    ld h, b                                       ; $7791: $60
    db $e3                                        ; $7792: $e3
    add d                                         ; $7793: $82
    db $e3                                        ; $7794: $e3
    jr z, jr_04d_776f                             ; $7795: $28 $d8

    rst $38                                       ; $7797: $ff
    ld h, h                                       ; $7798: $64
    sbc h                                         ; $7799: $9c
    add h                                         ; $779a: $84
    db $fc                                        ; $779b: $fc
    adc $7e                                       ; $779c: $ce $7e
    ld sp, hl                                     ; $779e: $f9
    ccf                                           ; $779f: $3f
    rst $38                                       ; $77a0: $ff
    adc e                                         ; $77a1: $8b
    adc e                                         ; $77a2: $8b
    sbc a                                         ; $77a3: $9f
    sub h                                         ; $77a4: $94
    sbc l                                         ; $77a5: $9d
    sub d                                         ; $77a6: $92
    xor a                                         ; $77a7: $af
    cp a                                          ; $77a8: $bf
    rst $38                                       ; $77a9: $ff
    ret nz                                        ; $77aa: $c0

    rst $38                                       ; $77ab: $ff
    sub c                                         ; $77ac: $91
    rst $38                                       ; $77ad: $ff
    sub e                                         ; $77ae: $93
    cp $bf                                        ; $77af: $fe $bf
    db $ec                                        ; $77b1: $ec
    rst $38                                       ; $77b2: $ff
    ld h, b                                       ; $77b3: $60
    ld h, b                                       ; $77b4: $60
    ldh [$a0], a                                  ; $77b5: $e0 $a0
    ldh a, [$30]                                  ; $77b7: $f0 $30
    ret z                                         ; $77b9: $c8

    ld hl, sp-$01                                 ; $77ba: $f8 $ff
    inc b                                         ; $77bc: $04
    db $fc                                        ; $77bd: $fc
    inc b                                         ; $77be: $04
    db $fc                                        ; $77bf: $fc
    add d                                         ; $77c0: $82
    cp $c2                                        ; $77c1: $fe $c2
    ld a, [hl]                                    ; $77c3: $7e
    ld a, l                                       ; $77c4: $7d
    adc a                                         ; $77c5: $8f
    ld b, h                                       ; $77c6: $44
    ldh [$af], a                                  ; $77c7: $e0 $af
    cp c                                          ; $77c9: $b9
    cp a                                          ; $77ca: $bf
    cp a                                          ; $77cb: $bf
    ldh [$5c], a                                  ; $77cc: $e0 $5c
    pop hl                                        ; $77ce: $e1
    rst $30                                       ; $77cf: $f7
    or l                                          ; $77d0: $b5
    cp a                                          ; $77d1: $bf
    cp l                                          ; $77d2: $bd
    and d                                         ; $77d3: $a2
    pop hl                                        ; $77d4: $e1
    db $10                                        ; $77d5: $10
    ldh a, [$98]                                  ; $77d6: $f0 $98
    ld hl, sp-$01                                 ; $77d8: $f8 $ff
    ld b, h                                       ; $77da: $44
    db $fc                                        ; $77db: $fc
    and h                                         ; $77dc: $a4
    db $fc                                        ; $77dd: $fc

Jump_04d_77de:
    db $fc                                        ; $77de: $fc
    ld a, h                                       ; $77df: $7c
    db $fc                                        ; $77e0: $fc
    inc [hl]                                      ; $77e1: $34
    rst $38                                       ; $77e2: $ff
    add c                                         ; $77e3: $81
    add c                                         ; $77e4: $81
    add d                                         ; $77e5: $82
    add e                                         ; $77e6: $83
    add e                                         ; $77e7: $83
    add e                                         ; $77e8: $83
    add a                                         ; $77e9: $87
    add h                                         ; $77ea: $84
    rst $30                                       ; $77eb: $f7
    add a                                         ; $77ec: $87
    add l                                         ; $77ed: $85
    sbc a                                         ; $77ee: $9f
    inc e                                         ; $77ef: $1c
    ldh [$d4], a                                  ; $77f0: $e0 $d4
    rst $38                                       ; $77f2: $ff
    ldh a, [$f0]                                  ; $77f3: $f0 $f0
    rst $38                                       ; $77f5: $ff
    adc b                                         ; $77f6: $88
    ld hl, sp-$18                                 ; $77f7: $f8 $e8
    ld hl, sp-$0c                                 ; $77f9: $f8 $f4
    sbc h                                         ; $77fb: $9c
    db $f4                                        ; $77fc: $f4
    db $fc                                        ; $77fd: $fc
    rst $38                                       ; $77fe: $ff
    db $f4                                        ; $77ff: $f4
    call c, $fcf4                                 ; $7800: $dc $f4 $fc
    ld [bc], a                                    ; $7803: $02
    cp $b9                                        ; $7804: $fe $b9
    xor a                                         ; $7806: $af
    rst $30                                       ; $7807: $f7
    cp c                                          ; $7808: $b9
    xor a                                         ; $7809: $af
    call nz, Call_04d_6074                        ; $780a: $c4 $74 $60
    and [hl]                                      ; $780d: $a6
    cp a                                          ; $780e: $bf
    sub b                                         ; $780f: $90
    sbc a                                         ; $7810: $9f
    rst $38                                       ; $7811: $ff
    adc h                                         ; $7812: $8c
    adc a                                         ; $7813: $8f
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    sbc d                                         ; $7816: $9a
    ld a, [hl]                                    ; $7817: $7e
    sbc [hl]                                      ; $7818: $9e
    ld a, [hl]                                    ; $7819: $7e
    rst $38                                       ; $781a: $ff
    ld h, $fe                                     ; $781b: $26 $fe
    ld d, $fe                                     ; $781d: $16 $fe
    ld c, $fe                                     ; $781f: $0e $fe
    inc a                                         ; $7821: $3c
    db $fc                                        ; $7822: $fc
    db $dd                                        ; $7823: $dd
    ld hl, sp+$2f                                 ; $7824: $f8 $2f
    add b                                         ; $7826: $80
    or [hl]                                       ; $7827: $b6
    xor c                                         ; $7828: $a9
    rst $38                                       ; $7829: $ff
    pop hl                                        ; $782a: $e1
    ldh [$bf], a                                  ; $782b: $e0 $bf
    and e                                         ; $782d: $a3
    rst $38                                       ; $782e: $ff
    sbc a                                         ; $782f: $9f
    sub b                                         ; $7830: $90
    adc a                                         ; $7831: $8f
    adc h                                         ; $7832: $8c
    add e                                         ; $7833: $83
    add e                                         ; $7834: $83
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    cp $52                                        ; $7838: $fe $52
    cp $0a                                        ; $783a: $fe $0a
    db $fc                                        ; $783c: $fc
    inc b                                         ; $783d: $04
    ld hl, sp+$18                                 ; $783e: $f8 $18
    rst $28                                       ; $7840: $ef
    ldh [rNR41], a                                ; $7841: $e0 $20
    ret nz                                        ; $7843: $c0

    ret nz                                        ; $7844: $c0

    jp nz, $f862                                  ; $7845: $c2 $62 $f8

    rst $10                                       ; $7848: $d7
    ld hl, sp-$01                                 ; $7849: $f8 $ff
    rst $18                                       ; $784b: $df
    db $f4                                        ; $784c: $f4
    rst $18                                       ; $784d: $df
    ldh a, [$af]                                  ; $784e: $f0 $af
    cp d                                          ; $7850: $ba
    sbc a                                         ; $7851: $9f
    sbc h                                         ; $7852: $9c
    cp $e0                                        ; $7853: $fe $e0
    pop hl                                        ; $7855: $e1
    ld hl, sp-$01                                 ; $7856: $f8 $ff
    ld l, h                                       ; $7858: $6c
    sub a                                         ; $7859: $97
    db $fd                                        ; $785a: $fd
    rlca                                          ; $785b: $07
    ld sp, hl                                     ; $785c: $f9
    cp a                                          ; $785d: $bf
    rra                                           ; $785e: $1f
    and $3e                                       ; $785f: $e6 $3e
    ld hl, sp+$78                                 ; $7861: $f8 $78
    add b                                         ; $7863: $80
    and b                                         ; $7864: $a0
    add c                                         ; $7865: $81
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    cp a                                          ; $7868: $bf
    or e                                          ; $7869: $b3
    cp a                                          ; $786a: $bf
    xor b                                         ; $786b: $a8
    cp a                                          ; $786c: $bf
    and b                                         ; $786d: $a0
    sbc a                                         ; $786e: $9f
    sub [hl]                                      ; $786f: $96
    ld a, [$e0be]                                 ; $7870: $fa $be $e0
    adc b                                         ; $7873: $88
    pop de                                        ; $7874: $d1
    ldh [$b8], a                                  ; $7875: $e0 $b8
    db $fc                                        ; $7877: $fc
    inc h                                         ; $7878: $24
    db $fc                                        ; $7879: $fc
    inc d                                         ; $787a: $14
    rst $38                                       ; $787b: $ff
    db $fc                                        ; $787c: $fc
    inc c                                         ; $787d: $0c
    ld a, [$f23e]                                 ; $787e: $fa $3e $f2
    ld a, [hl]                                    ; $7881: $7e
    adc [hl]                                      ; $7882: $8e
    adc [hl]                                      ; $7883: $8e
    xor [hl]                                      ; $7884: $ae
    or l                                          ; $7885: $b5
    ld b, b                                       ; $7886: $40
    and d                                         ; $7887: $a2
    db $dd                                        ; $7888: $dd
    and d                                         ; $7889: $a2
    or c                                          ; $788a: $b1
    ret nz                                        ; $788b: $c0

    call z, $e0de                                 ; $788c: $cc $de $e0
    sub c                                         ; $788f: $91
    cp $f0                                        ; $7890: $fe $f0
    pop hl                                        ; $7892: $e1
    db $fd                                        ; $7893: $fd
    and a                                         ; $7894: $a7
    db $fd                                        ; $7895: $fd
    sub a                                         ; $7896: $97
    ld sp, hl                                     ; $7897: $f9
    rrca                                          ; $7898: $0f
    push af                                       ; $7899: $f5
    rst $18                                       ; $789a: $df
    ccf                                           ; $789b: $3f
    db $db                                        ; $789c: $db
    ld e, e                                       ; $789d: $5b
    add b                                         ; $789e: $80
    add b                                         ; $789f: $80
    ld h, d                                       ; $78a0: $62
    ld h, d                                       ; $78a1: $62
    di                                            ; $78a2: $f3
    rst $38                                       ; $78a3: $ff
    rst $38                                       ; $78a4: $ff
    jp nc, $b2ad                                  ; $78a5: $d2 $ad $b2

    cp a                                          ; $78a8: $bf
    and b                                         ; $78a9: $a0
    db $db                                        ; $78aa: $db
    db $f4                                        ; $78ab: $f4
    rst $08                                       ; $78ac: $cf
    rst $38                                       ; $78ad: $ff
    ld sp, hl                                     ; $78ae: $f9
    sub $f6                                       ; $78af: $d6 $f6
    rst $38                                       ; $78b1: $ff
    rst $38                                       ; $78b2: $ff
    jp hl                                         ; $78b3: $e9


    cp a                                          ; $78b4: $bf
    jp hl                                         ; $78b5: $e9


    rst $38                                       ; $78b6: $ff
    cp a                                          ; $78b7: $bf
    rst $38                                       ; $78b8: $ff
    scf                                           ; $78b9: $37
    cp $1e                                        ; $78ba: $fe $1e
    ld a, [c]                                     ; $78bc: $f2
    ld a, [hl]                                    ; $78bd: $7e
    pop hl                                        ; $78be: $e1
    rst $30                                       ; $78bf: $f7
    rst $38                                       ; $78c0: $ff
    ld c, c                                       ; $78c1: $49
    ld a, a                                       ; $78c2: $7f
    ld [hl], l                                    ; $78c3: $75
    ld b, b                                       ; $78c4: $40
    ret nz                                        ; $78c5: $c0

    rst $38                                       ; $78c6: $ff
    jp $ffbf                                      ; $78c7: $c3 $bf $ff


    cp a                                          ; $78ca: $bf
    sbc a                                         ; $78cb: $9f
    sbc a                                         ; $78cc: $9f

jr_04d_78cd:
    adc a                                         ; $78cd: $8f
    adc b                                         ; $78ce: $88
    adc a                                         ; $78cf: $8f
    adc b                                         ; $78d0: $88
    add a                                         ; $78d1: $87
    db $fd                                        ; $78d2: $fd
    add h                                         ; $78d3: $84
    ld h, b                                       ; $78d4: $60
    ldh [$aa], a                                  ; $78d5: $e0 $aa
    cp $82                                        ; $78d7: $fe $82
    db $fc                                        ; $78d9: $fc
    add h                                         ; $78da: $84

jr_04d_78db:
    ld hl, sp-$29                                 ; $78db: $f8 $d7
    jr jr_04d_78db                                ; $78dd: $18 $fc

Call_04d_78df:
    inc a                                         ; $78df: $3c
    ld e, [hl]                                    ; $78e0: $5e
    ldh [rLCDC], a                                ; $78e1: $e0 $40
    ld sp, $c087                                  ; $78e3: $31 $87 $c0
    rst $38                                       ; $78e6: $ff
    rst $10                                       ; $78e7: $d7
    or b                                          ; $78e8: $b0
    cp a                                          ; $78e9: $bf
    adc a                                         ; $78ea: $8f
    jr nz, jr_04d_78cd                            ; $78eb: $20 $e0

    ld bc, $e0fe                                  ; $78ed: $01 $fe $e0
    dec l                                         ; $78f0: $2d
    di                                            ; $78f1: $f3
    cp a                                          ; $78f2: $bf
    ccf                                           ; $78f3: $3f
    pop hl                                        ; $78f4: $e1
    ld a, [hl]                                    ; $78f5: $7e
    ld a, [c]                                     ; $78f6: $f2
    db $fc                                        ; $78f7: $fc
    call nz, $e120                                ; $78f8: $c4 $20 $e1
    add a                                         ; $78fb: $87
    xor l                                         ; $78fc: $ad
    add a                                         ; $78fd: $87
    ld c, b                                       ; $78fe: $48
    pop bc                                        ; $78ff: $c1

Call_04d_7900:
    or e                                          ; $7900: $b3
    xor h                                         ; $7901: $ac
    or a                                          ; $7902: $b7
    pop hl                                        ; $7903: $e1
    cp [hl]                                       ; $7904: $be
    sub d                                         ; $7905: $92
    ldh [$e0], a                                  ; $7906: $e0 $e0
    rst $38                                       ; $7908: $ff
    ldh [rNR23], a                                ; $7909: $e0 $18
    ld hl, sp-$7c                                 ; $790b: $f8 $84
    db $fc                                        ; $790d: $fc
    ld [c], a                                     ; $790e: $e2

jr_04d_790f:
    ld a, [hl]                                    ; $790f: $7e
    ld a, [$3ebf]                                 ; $7910: $fa $bf $3e
    cp $e6                                        ; $7913: $fe $e6
    ccf                                           ; $7915: $3f
    di                                            ; $7916: $f3
    db $fd                                        ; $7917: $fd
    ldh [$e0], a                                  ; $7918: $e0 $e0
    adc b                                         ; $791a: $88
    ei                                            ; $791b: $fb
    adc a                                         ; $791c: $8f
    adc h                                         ; $791d: $8c
    ld a, $c0                                     ; $791e: $3e $c0
    and e                                         ; $7920: $a3
    cp a                                          ; $7921: $bf
    rst $38                                       ; $7922: $ff
    call c, $d7ff                                 ; $7923: $dc $ff $d7
    db $e3                                        ; $7926: $e3
    cp a                                          ; $7927: $bf
    cp l                                          ; $7928: $bd
    ld [c], a                                     ; $7929: $e2
    and c                                         ; $792a: $a1
    jr nc, jr_04d_790f                            ; $792b: $30 $e2

    and b                                         ; $792d: $a0
    add h                                         ; $792e: $84
    db $fc                                        ; $792f: $fc
    rst $38                                       ; $7930: $ff
    add $7e                                       ; $7931: $c6 $7e
    rst $08                                       ; $7933: $cf
    ld a, c                                       ; $7934: $79
    rst $18                                       ; $7935: $df
    ld [hl], l                                    ; $7936: $75
    cp [hl]                                       ; $7937: $be
    cp [hl]                                       ; $7938: $be
    db $fd                                        ; $7939: $fd
    push bc                                       ; $793a: $c5
    ld d, a                                       ; $793b: $57
    add b                                         ; $793c: $80
    ret nz                                        ; $793d: $c0

    rst $38                                       ; $793e: $ff
    push bc                                       ; $793f: $c5
    rst $38                                       ; $7940: $ff
    rst $28                                       ; $7941: $ef
    ld a, [$be7f]                                 ; $7942: $fa $7f $be
    or c                                          ; $7945: $b1
    xor l                                         ; $7946: $ad
    or e                                          ; $7947: $b3
    ld h, b                                       ; $7948: $60
    ld h, b                                       ; $7949: $60
    sbc b                                         ; $794a: $98
    ld h, h                                       ; $794b: $64
    ret nz                                        ; $794c: $c0

    rst $38                                       ; $794d: $ff
    ld [bc], a                                    ; $794e: $02
    cp $01                                        ; $794f: $fe $01
    rst $38                                       ; $7951: $ff
    and c                                         ; $7952: $a1
    rst $38                                       ; $7953: $ff
    ld a, c                                       ; $7954: $79
    rst $38                                       ; $7955: $ff
    rst $30                                       ; $7956: $f7
    di                                            ; $7957: $f3
    sbc a                                         ; $7958: $9f
    adc a                                         ; $7959: $8f
    ld [bc], a                                    ; $795a: $02
    ret nz                                        ; $795b: $c0

    and b                                         ; $795c: $a0
    cp a                                          ; $795d: $bf
    and [hl]                                      ; $795e: $a6
    cp c                                          ; $795f: $b9
    db $db                                        ; $7960: $db
    sub a                                         ; $7961: $97
    sbc b                                         ; $7962: $98
    add b                                         ; $7963: $80
    pop bc                                        ; $7964: $c1
    rst $18                                       ; $7965: $df
    rst $38                                       ; $7966: $ff
    ld h, b                                       ; $7967: $60
    jp $f818                                      ; $7968: $c3 $18 $f8


    sbc a                                         ; $796b: $9f
    ld d, $fe                                     ; $796c: $16 $fe
    add c                                         ; $796e: $81
    rst $38                                       ; $796f: $ff
    pop bc                                        ; $7970: $c1
    add $20                                       ; $7971: $c6 $20
    and b                                         ; $7973: $a0
    pop hl                                        ; $7974: $e1
    adc a                                         ; $7975: $8f
    xor l                                         ; $7976: $ad
    adc b                                         ; $7977: $88
    ld b, l                                       ; $7978: $45
    add b                                         ; $7979: $80
    rst $38                                       ; $797a: $ff
    rst $28                                       ; $797b: $ef
    sbc h                                         ; $797c: $9c
    and c                                         ; $797d: $a1
    and [hl]                                      ; $797e: $a6
    ret nz                                        ; $797f: $c0

    and c                                         ; $7980: $a1
    ld [$f8ff], sp                                ; $7981: $08 $ff $f8
    call nz, Call_04d_74fc                        ; $7984: $c4 $fc $74
    db $fc                                        ; $7987: $fc
    adc [hl]                                      ; $7988: $8e
    cp $f3                                        ; $7989: $fe $f3
    rst $30                                       ; $798b: $f7
    rst $38                                       ; $798c: $ff
    db $fd                                        ; $798d: $fd
    ld a, a                                       ; $798e: $7f
    and b                                         ; $798f: $a0
    and c                                         ; $7990: $a1
    adc b                                         ; $7991: $88
    adc a                                         ; $7992: $8f
    sbc a                                         ; $7993: $9f
    sbc a                                         ; $7994: $9f
    cp l                                          ; $7995: $bd
    and c                                         ; $7996: $a1
    cp $a0                                        ; $7997: $fe $a0
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    sbc a                                         ; $799b: $9f
    sbc c                                         ; $799c: $99
    ld h, d                                       ; $799d: $62
    and l                                         ; $799e: $a5
    add h                                         ; $799f: $84
    ld a, a                                       ; $79a0: $7f
    db $fc                                        ; $79a1: $fc
    ld b, d                                       ; $79a2: $42
    cp $f2                                        ; $79a3: $fe $f2
    cp $de                                        ; $79a5: $fe $de
    cp [hl]                                       ; $79a7: $be
    nop                                           ; $79a8: $00
    push bc                                       ; $79a9: $c5
    rst $38                                       ; $79aa: $ff
    and b                                         ; $79ab: $a0
    cp a                                          ; $79ac: $bf
    sbc $ff                                       ; $79ad: $de $ff
    rst $38                                       ; $79af: $ff
    db $eb                                        ; $79b0: $eb
    cp a                                          ; $79b1: $bf
    cp d                                          ; $79b2: $ba
    rst $30                                       ; $79b3: $f7
    add b                                         ; $79b4: $80
    add b                                         ; $79b5: $80
    ld b, b                                       ; $79b6: $40
    cp $a6                                        ; $79b7: $fe $a6
    db $e4                                        ; $79b9: $e4
    db $fc                                        ; $79ba: $fc
    db $fc                                        ; $79bb: $fc
    inc a                                         ; $79bc: $3c
    rst $38                                       ; $79bd: $ff
    sub c                                         ; $79be: $91
    sub c                                         ; $79bf: $91
    cp e                                          ; $79c0: $bb

jr_04d_79c1:
    xor d                                         ; $79c1: $aa
    cp a                                          ; $79c2: $bf
    xor h                                         ; $79c3: $ac
    sbc a                                         ; $79c4: $9f
    sub a                                         ; $79c5: $97
    rst $38                                       ; $79c6: $ff
    cp c                                          ; $79c7: $b9
    cp a                                          ; $79c8: $bf
    di                                            ; $79c9: $f3
    sbc $ff                                       ; $79ca: $de $ff
    db $ed                                        ; $79cc: $ed
    cp a                                          ; $79cd: $bf
    cp [hl]                                       ; $79ce: $be
    rst $38                                       ; $79cf: $ff
    jp nz, $f7c2                                  ; $79d0: $c2 $c2 $f7

    ld [hl], l                                    ; $79d3: $75
    rst $38                                       ; $79d4: $ff
    dec e                                         ; $79d5: $1d
    rst $38                                       ; $79d6: $ff
    cp c                                          ; $79d7: $b9
    rst $38                                       ; $79d8: $ff
    cp $ea                                        ; $79d9: $fe $ea
    cp $66                                        ; $79db: $fe $66
    sbc $fa                                       ; $79dd: $de $fa
    add $7e                                       ; $79df: $c6 $7e
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    pop de                                        ; $79e3: $d1
    xor $d1                                       ; $79e4: $ee $d1
    cp a                                          ; $79e6: $bf
    xor b                                         ; $79e7: $a8
    rst $38                                       ; $79e8: $ff
    and $f9                                       ; $79e9: $e6 $f9
    rst $18                                       ; $79eb: $df
    ld h, $20                                     ; $79ec: $26 $20
    ld d, b                                       ; $79ee: $50
    pop bc                                        ; $79ef: $c1
    pop af                                        ; $79f0: $f1
    ld e, a                                       ; $79f1: $5f
    pop af                                        ; $79f2: $f1
    ld e, a                                       ; $79f3: $5f
    db $e3                                        ; $79f4: $e3
    rst $38                                       ; $79f5: $ff
    ccf                                           ; $79f6: $3f
    db $e3                                        ; $79f7: $e3
    ccf                                           ; $79f8: $3f
    jp nz, $9c7e                                  ; $79f9: $c2 $7e $9c

    db $fc                                        ; $79fc: $fc
    ldh a, [$5e]                                  ; $79fd: $f0 $5e
    ld [de], a                                    ; $79ff: $12
    jr nz, jr_04d_79c1                            ; $7a00: $20 $bf

    and [hl]                                      ; $7a02: $a6
    rst $38                                       ; $7a03: $ff

jr_04d_7a04:
    jp hl                                         ; $7a04: $e9


    ld d, l                                       ; $7a05: $55

jr_04d_7a06:
    jr nz, jr_04d_7a04                            ; $7a06: $20 $fc

    sbc d                                         ; $7a08: $9a
    ret nz                                        ; $7a09: $c0

    rst $10                                       ; $7a0a: $d7
    cp b                                          ; $7a0b: $b8
    sbc a                                         ; $7a0c: $9f
    sub b                                         ; $7a0d: $90
    dec b                                         ; $7a0e: $05
    jr nz, jr_04d_7a06                            ; $7a0f: $20 $f5

    ld a, c                                       ; $7a11: $79
    and b                                         ; $7a12: $a0
    ld a, [bc]                                    ; $7a13: $0a
    db $fc                                        ; $7a14: $fc
    ccf                                           ; $7a15: $3f
    ld l, h                                       ; $7a16: $6c
    ld hl, sp-$78                                 ; $7a17: $f8 $88
    ldh a, [$30]                                  ; $7a19: $f0 $30
    ret nz                                        ; $7a1b: $c0

    dec a                                         ; $7a1c: $3d
    jr nz, jr_04d_7a41                            ; $7a1d: $20 $22

    ret nz                                        ; $7a1f: $c0

    db $f4                                        ; $7a20: $f4
    jr nz, @-$3c                                  ; $7a21: $20 $c2

    sbc h                                         ; $7a23: $9c
    ldh [$90], a                                  ; $7a24: $e0 $90
    and b                                         ; $7a26: $a0
    pop bc                                        ; $7a27: $c1
    rst $30                                       ; $7a28: $f7
    ld e, a                                       ; $7a29: $5f
    rst $38                                       ; $7a2a: $ff
    add hl, bc                                    ; $7a2b: $09
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    dec b                                         ; $7a2e: $05
    cp $12                                        ; $7a2f: $fe $12
    db $fc                                        ; $7a31: $fc
    inc e                                         ; $7a32: $1c
    ldh a, [rSVBK]                                ; $7a33: $f0 $70
    ld a, [hl]                                    ; $7a35: $7e
    ldh [$e1], a                                  ; $7a36: $e0 $e1
    rst $38                                       ; $7a38: $ff
    ldh a, [$9f]                                  ; $7a39: $f0 $9f
    sub h                                         ; $7a3b: $94
    sbc a                                         ; $7a3c: $9f
    sbc [hl]                                      ; $7a3d: $9e
    call nz, $bd80                                ; $7a3e: $c4 $80 $bd

jr_04d_7a41:
    and d                                         ; $7a41: $a2
    ldh [$a3], a                                  ; $7a42: $e0 $a3
    cp $3e                                        ; $7a44: $fe $3e
    cp $8a                                        ; $7a46: $fe $8a
    ld e, [hl]                                    ; $7a48: $5e
    ret nz                                        ; $7a49: $c0

    inc d                                         ; $7a4a: $14
    jp c, $a0be                                   ; $7a4b: $da $be $a0

    ld h, b                                       ; $7a4e: $60
    ldh [$a1], a                                  ; $7a4f: $e0 $a1
    cp a                                          ; $7a51: $bf
    or d                                          ; $7a52: $b2
    rst $30                                       ; $7a53: $f7
    nop                                           ; $7a54: $00
    ret z                                         ; $7a55: $c8

    rst $38                                       ; $7a56: $ff
    and a                                         ; $7a57: $a7
    ldh a, [$bf]                                  ; $7a58: $f0 $bf
    xor h                                         ; $7a5a: $ac
    cp $a1                                        ; $7a5b: $fe $a1
    and l                                         ; $7a5d: $a5
    nop                                           ; $7a5e: $00
    ld b, a                                       ; $7a5f: $47
    db $e4                                        ; $7a60: $e4
    ldh [$08], a                                  ; $7a61: $e0 $08
    ld e, d                                       ; $7a63: $5a
    and h                                         ; $7a64: $a4
    ldh [rLCDC], a                                ; $7a65: $e0 $40
    nop                                           ; $7a67: $00
    jp $919f                                      ; $7a68: $c3 $9f $91


    adc b                                         ; $7a6b: $88

jr_04d_7a6c:
    add b                                         ; $7a6c: $80
    and b                                         ; $7a6d: $a0
    add h                                         ; $7a6e: $84
    pop hl                                        ; $7a6f: $e1
    rst $30                                       ; $7a70: $f7
    sub c                                         ; $7a71: $91
    sbc [hl]                                      ; $7a72: $9e
    adc c                                         ; $7a73: $89
    ld h, b                                       ; $7a74: $60
    and b                                         ; $7a75: $a0
    adc $32                                       ; $7a76: $ce $32
    adc $3a                                       ; $7a78: $ce $3a
    ld h, e                                       ; $7a7a: $63
    call c, $8024                                 ; $7a7b: $dc $24 $80
    and d                                         ; $7a7e: $a2
    sbc $e0                                       ; $7a7f: $de $e0
    ld [hl], l                                    ; $7a81: $75
    nop                                           ; $7a82: $00
    call nz, $aaff                                ; $7a83: $c4 $ff $aa
    ld h, b                                       ; $7a86: $60
    ei                                            ; $7a87: $fb
    cp a                                          ; $7a88: $bf
    cp [hl]                                       ; $7a89: $be
    sbc [hl]                                      ; $7a8a: $9e
    and b                                         ; $7a8b: $a0
    sbc c                                         ; $7a8c: $99
    add [hl]                                      ; $7a8d: $86
    add [hl]                                      ; $7a8e: $86
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    db $eb                                        ; $7a91: $eb
    db $fc                                        ; $7a92: $fc
    ld [hl], h                                    ; $7a93: $74
    cp $a0                                        ; $7a94: $fe $a0
    ld [bc], a                                    ; $7a96: $02
    ld e, [hl]                                    ; $7a97: $5e

jr_04d_7a98:
    and b                                         ; $7a98: $a0
    ld a, b                                       ; $7a99: $78
    ldh a, [$f0]                                  ; $7a9a: $f0 $f0
    sbc $42                                       ; $7a9c: $de $42
    ld bc, $fefb                                  ; $7a9e: $01 $fb $fe
    db $fd                                        ; $7aa1: $fd
    rst $00                                       ; $7aa2: $c7
    jr nc, jr_04d_7ac5                            ; $7aa3: $30 $20

    add b                                         ; $7aa5: $80
    rst $38                                       ; $7aa6: $ff
    ld sp, hl                                     ; $7aa7: $f9
    db $d3                                        ; $7aa8: $d3
    jp c, Jump_04d_40a0                           ; $7aa9: $da $a0 $40

    ldh [$f2], a                                  ; $7aac: $e0 $f2
    cp $fa                                        ; $7aae: $fe $fa
    ld c, $fc                                     ; $7ab0: $0e $fc
    rst $38                                       ; $7ab2: $ff
    ld h, h                                       ; $7ab3: $64
    db $fc                                        ; $7ab4: $fc

jr_04d_7ab5:
    and h                                         ; $7ab5: $a4
    ld hl, sp-$38                                 ; $7ab6: $f8 $c8
    ldh a, [$30]                                  ; $7ab8: $f0 $30
    ldh [$fd], a                                  ; $7aba: $e0 $fd
    jr nz, jr_04d_7a6c                            ; $7abc: $20 $ae

    ret nz                                        ; $7abe: $c0

    sbc a                                         ; $7abf: $9f
    and h                                         ; $7ac0: $a4
    cp e                                          ; $7ac1: $bb
    adc $f1                                       ; $7ac2: $ce $f1
    rst $18                                       ; $7ac4: $df

jr_04d_7ac5:
    xor a                                         ; $7ac5: $af
    rst $38                                       ; $7ac6: $ff
    ldh [rIE], a                                  ; $7ac7: $e0 $ff
    sbc a                                         ; $7ac9: $9f
    sub h                                         ; $7aca: $94
    and c                                         ; $7acb: $a1
    sbc $c0                                       ; $7acc: $de $c0
    pop bc                                        ; $7ace: $c1
    jr c, jr_04d_7b50                             ; $7acf: $38 $7f

    ld hl, sp+$14                                 ; $7ad1: $f8 $14
    db $fc                                        ; $7ad3: $fc
    rst $00                                       ; $7ad4: $c7
    rst $38                                       ; $7ad5: $ff
    rst $20                                       ; $7ad6: $e7
    db $fd                                        ; $7ad7: $fd
    inc e                                         ; $7ad8: $1c
    jr nz, jr_04d_7a98                            ; $7ad9: $20 $bd

    xor l                                         ; $7adb: $ad
    ret nc                                        ; $7adc: $d0

    add hl, hl                                    ; $7add: $29
    rst $30                                       ; $7ade: $f7
    add a                                         ; $7adf: $87
    ld hl, sp-$71                                 ; $7ae0: $f8 $8f
    add c                                         ; $7ae2: $81
    add hl, hl                                    ; $7ae3: $29
    rst $30                                       ; $7ae4: $f7
    ei                                            ; $7ae5: $fb
    ldh a, [rIF]                                  ; $7ae6: $f0 $0f
    ld b, b                                       ; $7ae8: $40
    add b                                         ; $7ae9: $80
    sub [hl]                                      ; $7aea: $96
    sbc a                                         ; $7aeb: $9f
    xor l                                         ; $7aec: $ad
    xor c                                         ; $7aed: $a9
    cp a                                          ; $7aee: $bf
    rst $38                                       ; $7aef: $ff
    cp a                                          ; $7af0: $bf
    and h                                         ; $7af1: $a4
    or c                                          ; $7af2: $b1
    sbc $ff                                       ; $7af3: $de $ff
    db $eb                                        ; $7af5: $eb
    rst $38                                       ; $7af6: $ff
    cp d                                          ; $7af7: $ba
    db $fd                                        ; $7af8: $fd
    cp a                                          ; $7af9: $bf
    add b                                         ; $7afa: $80
    jp nz, Jump_04d_5060                          ; $7afb: $c2 $60 $50

    or b                                          ; $7afe: $b0
    sbc b                                         ; $7aff: $98
    ret c                                         ; $7b00: $d8

    ld b, h                                       ; $7b01: $44
    rra                                           ; $7b02: $1f
    db $ec                                        ; $7b03: $ec
    db $e4                                        ; $7b04: $e4
    db $fc                                        ; $7b05: $fc
    inc a                                         ; $7b06: $3c
    ld a, h                                       ; $7b07: $7c
    add b                                         ; $7b08: $80
    ld l, $fe                                     ; $7b09: $2e $fe
    rst $38                                       ; $7b0b: $ff
    cp $ff                                        ; $7b0c: $fe $ff
    ld hl, sp-$02                                 ; $7b0e: $f8 $fe
    rst $38                                       ; $7b10: $ff
    cp $ff                                        ; $7b11: $fe $ff
    ldh a, [rDIV]                                 ; $7b13: $f0 $04
    di                                            ; $7b15: $f3
    sbc $e1                                       ; $7b16: $de $e1
    rst $38                                       ; $7b18: $ff
    di                                            ; $7b19: $f3
    ld [hl], a                                    ; $7b1a: $77
    cp a                                          ; $7b1b: $bf
    rst $38                                       ; $7b1c: $ff
    xor h                                         ; $7b1d: $ac
    ld bc, $c0e0                                  ; $7b1e: $01 $e0 $c0
    cp a                                          ; $7b21: $bf
    and h                                         ; $7b22: $a4
    ret nc                                        ; $7b23: $d0

    ld b, b                                       ; $7b24: $40
    rst $18                                       ; $7b25: $df
    ld a, c                                       ; $7b26: $79
    cp $b2                                        ; $7b27: $fe $b2
    cp $2a                                        ; $7b29: $fe $2a
    ld hl, $8820                                  ; $7b2b: $21 $20 $88
    ldh a, [rPCM34]                               ; $7b2e: $f0 $77
    db $10                                        ; $7b30: $10
    ldh [$60], a                                  ; $7b31: $e0 $60
    jr nc, jr_04d_7ab5                            ; $7b33: $30 $80

    adc a                                         ; $7b35: $8f
    rst $30                                       ; $7b36: $f7
    add a                                         ; $7b37: $87
    ret nc                                        ; $7b38: $d0

    add hl, bc                                    ; $7b39: $09
    rst $28                                       ; $7b3a: $ef
    rrca                                          ; $7b3b: $0f
    ld hl, sp-$09                                 ; $7b3c: $f8 $f7
    ldh a, [$7f]                                  ; $7b3e: $f0 $7f
    add hl, bc                                    ; $7b40: $09
    ret z                                         ; $7b41: $c8

    db $e3                                        ; $7b42: $e3
    jp $e7ff                                      ; $7b43: $c3 $ff $e7


    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    cp [hl]                                       ; $7b48: $be
    cp a                                          ; $7b49: $bf
    and h                                         ; $7b4a: $a4
    or b                                          ; $7b4b: $b0
    sbc b                                         ; $7b4c: $98
    rst $38                                       ; $7b4d: $ff
    sbc a                                         ; $7b4e: $9f
    add a                                         ; $7b4f: $87

jr_04d_7b50:
    add a                                         ; $7b50: $87
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    ld a, h                                       ; $7b53: $7c
    db $f4                                        ; $7b54: $f4
    xor d                                         ; $7b55: $aa

jr_04d_7b56:
    ld a, a                                       ; $7b56: $7f
    ld [$ae02], a                                 ; $7b57: $ea $02 $ae
    inc b                                         ; $7b5a: $04
    inc e                                         ; $7b5b: $1c
    jr c, jr_04d_7b56                             ; $7b5c: $38 $f8

    add b                                         ; $7b5e: $80
    jp Jump_000_0001                              ; $7b5f: $c3 $01 $00


    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    push af                                       ; $7b6a: $f5
    db $f4                                        ; $7b6b: $f4
    nop                                           ; $7b6c: $00
    nop                                           ; $7b6d: $00
    nop                                           ; $7b6e: $00
    ld b, a                                       ; $7b6f: $47
    add hl, bc                                    ; $7b70: $09
    add hl, bc                                    ; $7b71: $09
    ld [$ecff], sp                                ; $7b72: $08 $ff $ec
    xor $eb                                       ; $7b75: $ee $eb
    ldh [$e2], a                                  ; $7b77: $e0 $e2
    rrca                                          ; $7b79: $0f
    rst $38                                       ; $7b7a: $ff
    and $87                                       ; $7b7b: $e6 $87
    ld [$4808], sp                                ; $7b7d: $08 $08 $48
    ldh [$f0], a                                  ; $7b80: $e0 $f0
    ret nz                                        ; $7b82: $c0

    ld hl, sp-$01                                 ; $7b83: $f8 $ff
    rst $38                                       ; $7b85: $ff
    db $fd                                        ; $7b86: $fd
    db $fc                                        ; $7b87: $fc
    dec c                                         ; $7b88: $0d
    rra                                           ; $7b89: $1f

jr_04d_7b8a:
    dec c                                         ; $7b8a: $0d
    ld [$2828], sp                                ; $7b8b: $08 $28 $28
    jr z, jr_04d_7b8a                             ; $7b8e: $28 $fa

    jp hl                                         ; $7b90: $e9


    ldh [$ee], a                                  ; $7b91: $e0 $ee
    ld a, [$00ec]                                 ; $7b93: $fa $ec $00
    ret nz                                        ; $7b96: $c0

    rst $38                                       ; $7b97: $ff
    ret nz                                        ; $7b98: $c0

    rst $38                                       ; $7b99: $ff
    ret nz                                        ; $7b9a: $c0

    rst $38                                       ; $7b9b: $ff
    ret nz                                        ; $7b9c: $c0

    rst $38                                       ; $7b9d: $ff
    ret nz                                        ; $7b9e: $c0

    rst $38                                       ; $7b9f: $ff
    ret nz                                        ; $7ba0: $c0

    rst $38                                       ; $7ba1: $ff
    ret nz                                        ; $7ba2: $c0

    rst $28                                       ; $7ba3: $ef
    cp $e0                                        ; $7ba4: $fe $e0
    nop                                           ; $7ba6: $00
    ret nz                                        ; $7ba7: $c0

    rst $38                                       ; $7ba8: $ff
    ret nz                                        ; $7ba9: $c0

    rst $38                                       ; $7baa: $ff
    ret nz                                        ; $7bab: $c0

    rst $38                                       ; $7bac: $ff
    or $f5                                        ; $7bad: $f6 $f5

Jump_04d_7baf:
    ret nz                                        ; $7baf: $c0

    db $eb                                        ; $7bb0: $eb
    nop                                           ; $7bb1: $00
    nop                                           ; $7bb2: $00
    nop                                           ; $7bb3: $00
    rst $28                                       ; $7bb4: $ef
    ld [hl+], a                                   ; $7bb5: $22
    inc hl                                        ; $7bb6: $23
    ld [bc], a                                    ; $7bb7: $02
    inc bc                                        ; $7bb8: $03
    rst $38                                       ; $7bb9: $ff
    ld [$2204], a                                 ; $7bba: $ea $04 $22
    inc hl                                        ; $7bbd: $23
    db $fd                                        ; $7bbe: $fd
    nop                                           ; $7bbf: $00
    rst $38                                       ; $7bc0: $ff
    add sp, $24                                   ; $7bc1: $e8 $24
    dec h                                         ; $7bc3: $25
    dec b                                         ; $7bc4: $05
    ld e, $1e                                     ; $7bc5: $1e $1e
    add [hl]                                      ; $7bc7: $86
    rst $38                                       ; $7bc8: $ff
    add a                                         ; $7bc9: $87
    adc b                                         ; $7bca: $88
    adc c                                         ; $7bcb: $89
    adc d                                         ; $7bcc: $8a
    adc e                                         ; $7bcd: $8b
    adc h                                         ; $7bce: $8c
    adc l                                         ; $7bcf: $8d
    adc [hl]                                      ; $7bd0: $8e
    cp a                                          ; $7bd1: $bf
    adc a                                         ; $7bd2: $8f
    ld e, $1e                                     ; $7bd3: $1e $1e
    ld b, $24                                     ; $7bd5: $06 $24
    dec h                                         ; $7bd7: $25
    ldh [$e9], a                                  ; $7bd8: $e0 $e9
    ld [hl+], a                                   ; $7bda: $22
    rla                                           ; $7bdb: $17
    inc hl                                        ; $7bdc: $23
    rlca                                          ; $7bdd: $07
    ld [$eaff], sp                                ; $7bde: $08 $ff $ea
    add hl, bc                                    ; $7be1: $09
    ret nz                                        ; $7be2: $c0

    db $eb                                        ; $7be3: $eb
    and d                                         ; $7be4: $a2
    db $ec                                        ; $7be5: $ec
    sbc [hl]                                      ; $7be6: $9e
    ld [c], a                                     ; $7be7: $e2
    cp $a0                                        ; $7be8: $fe $a0
    jp hl                                         ; $7bea: $e9


    dec b                                         ; $7beb: $05
    db $10                                        ; $7bec: $10
    ld de, $1312                                  ; $7bed: $11 $12 $13
    inc d                                         ; $7bf0: $14
    dec d                                         ; $7bf1: $15
    rst $38                                       ; $7bf2: $ff
    ld d, $17                                     ; $7bf3: $16 $17
    jr @+$1b                                      ; $7bf5: $18 $19

    ld a, [de]                                    ; $7bf7: $1a
    dec de                                        ; $7bf8: $1b
    inc e                                         ; $7bf9: $1c
    dec e                                         ; $7bfa: $1d
    ld a, [$e1ff]                                 ; $7bfb: $fa $ff $e1
    ld [hl-], a                                   ; $7bfe: $32

Jump_04d_7bff:
    ldh [$ea], a                                  ; $7bff: $e0 $ea
    add d                                         ; $7c01: $82
    add e                                         ; $7c02: $83
    ld hl, $1e1e                                  ; $7c03: $21 $1e $1e
    ld sp, hl                                     ; $7c06: $f9
    ld e, $fa                                     ; $7c07: $1e $fa
    jp hl                                         ; $7c09: $e9


    ldh [$eb], a                                  ; $7c0a: $e0 $eb
    sub d                                         ; $7c0c: $92
    sub e                                         ; $7c0d: $93
    rra                                           ; $7c0e: $1f
    jr nz, jr_04d_7c31                            ; $7c0f: $20 $20

    ld bc, $fa20                                  ; $7c11: $01 $20 $fa
    jp hl                                         ; $7c14: $e9


    ret nz                                        ; $7c15: $c0

    rst $38                                       ; $7c16: $ff
    ret nz                                        ; $7c17: $c0

    rst $38                                       ; $7c18: $ff
    ret nz                                        ; $7c19: $c0

    rst $38                                       ; $7c1a: $ff
    ret nz                                        ; $7c1b: $c0

    rst $38                                       ; $7c1c: $ff
    ret nz                                        ; $7c1d: $c0

    rst $38                                       ; $7c1e: $ff
    ret nz                                        ; $7c1f: $c0

    rst $38                                       ; $7c20: $ff
    nop                                           ; $7c21: $00
    ret nz                                        ; $7c22: $c0

    rst $38                                       ; $7c23: $ff
    ret nz                                        ; $7c24: $c0

    rst $38                                       ; $7c25: $ff
    ret nz                                        ; $7c26: $c0

    rst $38                                       ; $7c27: $ff
    ret nz                                        ; $7c28: $c0

    ld hl, sp+$22                                 ; $7c29: $f8 $22
    call z, $c21e                                 ; $7c2b: $cc $1e $c2
    ldh [$a9], a                                  ; $7c2e: $e0 $a9
    nop                                           ; $7c30: $00

jr_04d_7c31:
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    sbc a                                         ; $7c33: $9f
    dec c                                         ; $7c34: $0d
    ld c, $0e                                     ; $7c35: $0e $0e
    ld c, $0d                                     ; $7c37: $0e $0d
    rst $38                                       ; $7c39: $ff
    db $e4                                        ; $7c3a: $e4
    push af                                       ; $7c3b: $f5
    ldh [$0e], a                                  ; $7c3c: $e0 $0e

jr_04d_7c3e:
    dec h                                         ; $7c3e: $25
    dec bc                                        ; $7c3f: $0b
    rst $38                                       ; $7c40: $ff
    db $e4                                        ; $7c41: $e4
    inc c                                         ; $7c42: $0c
    rst $38                                       ; $7c43: $ff
    ldh [$e8], a                                  ; $7c44: $e0 $e8
    pop hl                                        ; $7c46: $e1
    rrca                                          ; $7c47: $0f
    rst $38                                       ; $7c48: $ff
    ldh [$e8], a                                  ; $7c49: $e0 $e8
    pop hl                                        ; $7c4b: $e1
    jr nc, jr_04d_7c3e                            ; $7c4c: $30 $f0

    pop hl                                        ; $7c4e: $e1
    db $ec                                        ; $7c4f: $ec
    pop hl                                        ; $7c50: $e1
    ldh [$e1], a                                  ; $7c51: $e0 $e1
    db $ec                                        ; $7c53: $ec
    push hl                                       ; $7c54: $e5
    ld c, $0c                                     ; $7c55: $0e $0c
    cp $e1                                        ; $7c57: $fe $e1
    ret c                                         ; $7c59: $d8

    db $e3                                        ; $7c5a: $e3
    nop                                           ; $7c5b: $00
    nop                                           ; $7c5c: $00
    nop                                           ; $7c5d: $00
    rst $38                                       ; $7c5e: $ff
    ld c, b                                       ; $7c5f: $48
    ld c, c                                       ; $7c60: $49
    ld e, b                                       ; $7c61: $58
    ld e, c                                       ; $7c62: $59
    ld h, h                                       ; $7c63: $64
    ld h, l                                       ; $7c64: $65
    ld [hl], h                                    ; $7c65: $74
    ld [hl], l                                    ; $7c66: $75
    rst $38                                       ; $7c67: $ff
    ld c, d                                       ; $7c68: $4a
    ld c, e                                       ; $7c69: $4b
    ld e, d                                       ; $7c6a: $5a
    ld e, e                                       ; $7c6b: $5b
    ld h, [hl]                                    ; $7c6c: $66
    ld h, a                                       ; $7c6d: $67
    halt                                          ; $7c6e: $76
    ld [hl], a                                    ; $7c6f: $77
    rst $38                                       ; $7c70: $ff
    ld c, h                                       ; $7c71: $4c
    ld c, l                                       ; $7c72: $4d
    ld e, h                                       ; $7c73: $5c
    ld e, l                                       ; $7c74: $5d
    ld c, [hl]                                    ; $7c75: $4e
    ld c, a                                       ; $7c76: $4f
    ld e, [hl]                                    ; $7c77: $5e
    ld e, a                                       ; $7c78: $5f
    rst $38                                       ; $7c79: $ff
    ld l, b                                       ; $7c7a: $68
    ld l, c                                       ; $7c7b: $69
    ld a, b                                       ; $7c7c: $78
    ld a, c                                       ; $7c7d: $79
    add b                                         ; $7c7e: $80
    add c                                         ; $7c7f: $81
    sub b                                         ; $7c80: $90
    sub c                                         ; $7c81: $91
    rst $38                                       ; $7c82: $ff
    ld l, d                                       ; $7c83: $6a
    ld l, e                                       ; $7c84: $6b
    ld a, d                                       ; $7c85: $7a
    ld a, e                                       ; $7c86: $7b
    ld l, h                                       ; $7c87: $6c
    ld l, l                                       ; $7c88: $6d
    ld a, h                                       ; $7c89: $7c
    ld a, l                                       ; $7c8a: $7d
    rst $38                                       ; $7c8b: $ff
    ld h, b                                       ; $7c8c: $60
    ld h, c                                       ; $7c8d: $61
    ld [hl], b                                    ; $7c8e: $70
    ld [hl], c                                    ; $7c8f: $71
    ld h, d                                       ; $7c90: $62
    ld h, e                                       ; $7c91: $63
    ld [hl], d                                    ; $7c92: $72
    ld [hl], e                                    ; $7c93: $73
    rst $38                                       ; $7c94: $ff
    ld l, [hl]                                    ; $7c95: $6e
    ld l, a                                       ; $7c96: $6f
    ld a, [hl]                                    ; $7c97: $7e
    ld a, a                                       ; $7c98: $7f
    add h                                         ; $7c99: $84
    add l                                         ; $7c9a: $85
    sub h                                         ; $7c9b: $94
    sub l                                         ; $7c9c: $95
    rst $38                                       ; $7c9d: $ff
    ld b, b                                       ; $7c9e: $40
    ld b, c                                       ; $7c9f: $41
    ld d, b                                       ; $7ca0: $50
    ld d, c                                       ; $7ca1: $51
    ld b, d                                       ; $7ca2: $42
    ld b, e                                       ; $7ca3: $43
    ld d, d                                       ; $7ca4: $52
    ld d, e                                       ; $7ca5: $53
    rst $38                                       ; $7ca6: $ff
    ld b, h                                       ; $7ca7: $44
    ld b, l                                       ; $7ca8: $45
    ld d, h                                       ; $7ca9: $54
    ld d, l                                       ; $7caa: $55
    ld b, [hl]                                    ; $7cab: $46
    ld b, a                                       ; $7cac: $47
    ld d, [hl]                                    ; $7cad: $56
    ld d, a                                       ; $7cae: $57
    nop                                           ; $7caf: $00
    nop                                           ; $7cb0: $00
    nop                                           ; $7cb1: $00
    db $fd                                        ; $7cb2: $fd
    nop                                           ; $7cb3: $00
    rst $38                                       ; $7cb4: $ff
    ld [c], a                                     ; $7cb5: $e2
    ld bc, $0201                                  ; $7cb6: $01 $01 $02
    inc bc                                        ; $7cb9: $03
    dec b                                         ; $7cba: $05
    ld b, $ff                                     ; $7cbb: $06 $ff
    dec bc                                        ; $7cbd: $0b
    inc c                                         ; $7cbe: $0c
    rla                                           ; $7cbf: $17
    jr @+$0d                                      ; $7cc0: $18 $0b

    inc c                                         ; $7cc2: $0c
    dec b                                         ; $7cc3: $05
    ld b, $cf                                     ; $7cc4: $06 $cf
    ld [bc], a                                    ; $7cc6: $02
    inc bc                                        ; $7cc7: $03
    ld bc, $e801                                  ; $7cc8: $01 $01 $e8
    db $e3                                        ; $7ccb: $e3
    ld a, [$c0e5]                                 ; $7ccc: $fa $e5 $c0
    ret nz                                        ; $7ccf: $c0

    rst $38                                       ; $7cd0: $ff
    ld b, b                                       ; $7cd1: $40
    ret nz                                        ; $7cd2: $c0

    ld a, b                                       ; $7cd3: $78
    ld hl, sp+$08                                 ; $7cd4: $f8 $08
    ld hl, sp-$18                                 ; $7cd6: $f8 $e8
    jr @+$01                                      ; $7cd8: $18 $ff

    ld [$78f8], sp                                ; $7cda: $08 $f8 $78
    ld hl, sp+$40                                 ; $7cdd: $f8 $40
    ret nz                                        ; $7cdf: $c0

    ret nz                                        ; $7ce0: $c0

    ret nz                                        ; $7ce1: $c0

    nop                                           ; $7ce2: $00
    ldh [$e5], a                                  ; $7ce3: $e0 $e5
    nop                                           ; $7ce5: $00
    nop                                           ; $7ce6: $00
    nop                                           ; $7ce7: $00
    db $fd                                        ; $7ce8: $fd
    nop                                           ; $7ce9: $00
    rst $38                                       ; $7cea: $ff
    db $e4                                        ; $7ceb: $e4
    ld bc, $0201                                  ; $7cec: $01 $01 $02
    inc bc                                        ; $7cef: $03
    dec b                                         ; $7cf0: $05
    ld b, $ff                                     ; $7cf1: $06 $ff
    dec bc                                        ; $7cf3: $0b
    inc c                                         ; $7cf4: $0c
    ld [$0e0f], sp                                ; $7cf5: $08 $0f $0e

jr_04d_7cf8:
    rrca                                          ; $7cf8: $0f
    ld [bc], a                                    ; $7cf9: $02
    inc bc                                        ; $7cfa: $03
    rst $08                                       ; $7cfb: $cf
    ld [bc], a                                    ; $7cfc: $02
    inc bc                                        ; $7cfd: $03
    inc bc                                        ; $7cfe: $03
    inc bc                                        ; $7cff: $03
    and $e5                                       ; $7d00: $e6 $e5
    sbc $e1                                       ; $7d02: $de $e1
    add b                                         ; $7d04: $80
    add b                                         ; $7d05: $80
    rst $38                                       ; $7d06: $ff
    ld b, b                                       ; $7d07: $40
    ret nz                                        ; $7d08: $c0

    and b                                         ; $7d09: $a0
    ld h, b                                       ; $7d0a: $60
    ret nc                                        ; $7d0b: $d0

    jr nc, @-$16                                  ; $7d0c: $30 $e8

    jr @+$01                                      ; $7d0e: $18 $ff

    adc b                                         ; $7d10: $88
    ld a, b                                       ; $7d11: $78
    cp b                                          ; $7d12: $b8
    ld a, b                                       ; $7d13: $78
    and b                                         ; $7d14: $a0
    ld h, b                                       ; $7d15: $60
    jr nz, jr_04d_7cf8                            ; $7d16: $20 $e0

    inc bc                                        ; $7d18: $03
    ldh [$e0], a                                  ; $7d19: $e0 $e0
    ldh [$e3], a                                  ; $7d1b: $e0 $e3
    nop                                           ; $7d1d: $00
    nop                                           ; $7d1e: $00
    nop                                           ; $7d1f: $00
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

Call_04d_7d97:
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
