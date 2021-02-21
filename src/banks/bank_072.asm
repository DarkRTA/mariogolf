; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $072", ROMX[$4000], BANK[$72]

    cp l                                          ; $4000: $bd
    halt                                          ; $4001: $76
    ld h, h                                       ; $4002: $64
    ld [hl], a                                    ; $4003: $77
    ld b, b                                       ; $4004: $40
    ld b, b                                       ; $4005: $40
    ld c, b                                       ; $4006: $48
    ld b, b                                       ; $4007: $40
    cp $4a                                        ; $4008: $fe $4a
    rlca                                          ; $400a: $07
    ld c, l                                       ; $400b: $4d
    call nz, $124e                                ; $400c: $c4 $4e $12
    ld c, a                                       ; $400f: $4f
    ld e, a                                       ; $4010: $5f
    ld c, a                                       ; $4011: $4f
    ld h, b                                       ; $4012: $60
    ld c, a                                       ; $4013: $4f
    adc b                                         ; $4014: $88
    ld b, b                                       ; $4015: $40
    ld c, e                                       ; $4016: $4b
    ld d, d                                       ; $4017: $52
    ld d, e                                       ; $4018: $53
    ld d, d                                       ; $4019: $52
    ld e, $58                                     ; $401a: $1e $58
    ld [hl], $5c                                  ; $401c: $36 $5c
    ld l, a                                       ; $401e: $6f
    ld e, a                                       ; $401f: $5f
    ret nc                                        ; $4020: $d0

    ld e, a                                       ; $4021: $5f
    ld h, c                                       ; $4022: $61
    ld h, b                                       ; $4023: $60
    ld h, d                                       ; $4024: $62
    ld h, b                                       ; $4025: $60
    sub e                                         ; $4026: $93
    ld d, d                                       ; $4027: $52
    add sp, $60                                   ; $4028: $e8 $60
    ldh a, [$60]                                  ; $402a: $f0 $60
    sub $6b                                       ; $402c: $d6 $6b
    add hl, bc                                    ; $402e: $09
    ld [hl], b                                    ; $402f: $70
    rst $38                                       ; $4030: $ff
    ld [hl], d                                    ; $4031: $72
    ld l, d                                       ; $4032: $6a
    ld [hl], e                                    ; $4033: $73
    push bc                                       ; $4034: $c5
    ld [hl], e                                    ; $4035: $73
    add $73                                       ; $4036: $c6 $73
    jr nc, jr_072_409b                            ; $4038: $30 $61

    ld e, a                                       ; $403a: $5f
    ld c, a                                       ; $403b: $4f
    ld h, c                                       ; $403c: $61
    ld h, b                                       ; $403d: $60
    push bc                                       ; $403e: $c5
    ld [hl], e                                    ; $403f: $73
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    inc d                                         ; $4042: $14
    ld d, $28                                     ; $4043: $16 $28
    jr z, jr_072_4047                             ; $4045: $28 $00

jr_072_4047:
    nop                                           ; $4047: $00

Jump_072_4048:
    nop                                           ; $4048: $00
    jr nz, @+$22                                  ; $4049: $20 $20

    ld d, l                                       ; $404b: $55
    and b                                         ; $404c: $a0
    ld a, [hl]                                    ; $404d: $7e
    rst $38                                       ; $404e: $ff
    ld a, a                                       ; $404f: $7f
    ld [$0825], sp                                ; $4050: $08 $25 $08
    dec h                                         ; $4053: $25
    ld [$0825], sp                                ; $4054: $08 $25 $08
    dec h                                         ; $4057: $25
    sub h                                         ; $4058: $94
    ld bc, $029f                                  ; $4059: $01 $9f $02
    db $ec                                        ; $405c: $ec
    dec de                                        ; $405d: $1b
    add [hl]                                      ; $405e: $86
    ld [bc], a                                    ; $405f: $02
    rst $38                                       ; $4060: $ff
    ld a, a                                       ; $4061: $7f
    ld a, [c]                                     ; $4062: $f2
    inc sp                                        ; $4063: $33
    db $ec                                        ; $4064: $ec
    dec de                                        ; $4065: $1b
    add [hl]                                      ; $4066: $86
    ld [bc], a                                    ; $4067: $02
    ret nz                                        ; $4068: $c0

    ld a, l                                       ; $4069: $7d
    ldh [$7f], a                                  ; $406a: $e0 $7f
    ld [de], a                                    ; $406c: $12
    ld bc, $0286                                  ; $406d: $01 $86 $02
    rst $38                                       ; $4070: $ff
    ld a, a                                       ; $4071: $7f
    db $ec                                        ; $4072: $ec
    dec de                                        ; $4073: $1b
    add [hl]                                      ; $4074: $86
    ld [bc], a                                    ; $4075: $02
    add hl, hl                                    ; $4076: $29
    dec b                                         ; $4077: $05
    dec l                                         ; $4078: $2d
    ld [bc], a                                    ; $4079: $02
    ld d, d                                       ; $407a: $52
    inc bc                                        ; $407b: $03
    rst $18                                       ; $407c: $df
    nop                                           ; $407d: $00
    add hl, hl                                    ; $407e: $29
    dec b                                         ; $407f: $05
    ld [$0825], sp                                ; $4080: $08 $25 $08
    dec h                                         ; $4083: $25
    ld [$0825], sp                                ; $4084: $08 $25 $08

jr_072_4087:
    dec h                                         ; $4087: $25
    push de                                       ; $4088: $d5

jr_072_4089:
    nop                                           ; $4089: $00
    rst $38                                       ; $408a: $ff
    ldh [rTIMA], a                                ; $408b: $e0 $05
    ei                                            ; $408d: $fb
    ldh [$0b], a                                  ; $408e: $e0 $0b
    rst $30                                       ; $4090: $f7
    pop hl                                        ; $4091: $e1
    nop                                           ; $4092: $00
    ld [bc], a                                    ; $4093: $02
    db $eb                                        ; $4094: $eb
    nop                                           ; $4095: $00
    jr z, jr_072_4087                             ; $4096: $28 $ef

    ldh [$90], a                                  ; $4098: $e0 $90
    db $eb                                        ; $409a: $eb

jr_072_409b:
    ldh [$f5], a                                  ; $409b: $e0 $f5
    nop                                           ; $409d: $00
    ret z                                         ; $409e: $c8

    cp $e5                                        ; $409f: $fe $e5
    ldh [$80], a                                  ; $40a1: $e0 $80
    nop                                           ; $40a3: $00
    db $ec                                        ; $40a4: $ec
    rst $38                                       ; $40a5: $ff
    ld hl, sp-$01                                 ; $40a6: $f8 $ff
    ldh [rIE], a                                  ; $40a8: $e0 $ff
    cp $42                                        ; $40aa: $fe $42
    ld hl, sp-$38                                 ; $40ac: $f8 $c8
    ldh a, [$80]                                  ; $40ae: $f0 $80
    ldh [rNR10], a                                ; $40b0: $e0 $10
    rst $28                                       ; $40b2: $ef
    ldh [rP1], a                                  ; $40b3: $e0 $00
    ret nz                                        ; $40b5: $c0

    rst $38                                       ; $40b6: $ff
    rst $38                                       ; $40b7: $ff
    ld [c], a                                     ; $40b8: $e2
    rst $30                                       ; $40b9: $f7
    rst $38                                       ; $40ba: $ff
    cp h                                          ; $40bb: $bc
    ld a, a                                       ; $40bc: $7f
    rst $38                                       ; $40bd: $ff
    add sp, -$01                                  ; $40be: $e8 $ff

Call_072_40c0:
    add c                                         ; $40c0: $81
    cp $08                                        ; $40c1: $fe $08
    ldh a, [$f8]                                  ; $40c3: $f0 $f8
    push hl                                       ; $40c5: $e5
    ei                                            ; $40c6: $fb
    jr nz, jr_072_4089                            ; $40c7: $20 $c0

    cp a                                          ; $40c9: $bf
    ld [c], a                                     ; $40ca: $e2
    nop                                           ; $40cb: $00
    ld a, a                                       ; $40cc: $7f
    rst $38                                       ; $40cd: $ff
    cpl                                           ; $40ce: $2f
    rst $38                                       ; $40cf: $ff
    rst $38                                       ; $40d0: $ff
    ccf                                           ; $40d1: $3f
    rst $38                                       ; $40d2: $ff
    rra                                           ; $40d3: $1f
    rst $38                                       ; $40d4: $ff
    or a                                          ; $40d5: $b7
    ld a, a                                       ; $40d6: $7f
    rra                                           ; $40d7: $1f
    ld a, a                                       ; $40d8: $7f
    rst $38                                       ; $40d9: $ff
    rrca                                          ; $40da: $0f
    ld a, a                                       ; $40db: $7f
    ld c, a                                       ; $40dc: $4f
    ccf                                           ; $40dd: $3f
    rlca                                          ; $40de: $07
    rra                                           ; $40df: $1f
    ld [bc], a                                    ; $40e0: $02
    rra                                           ; $40e1: $1f
    rst $38                                       ; $40e2: $ff
    inc de                                        ; $40e3: $13
    rrca                                          ; $40e4: $0f
    ld bc, $0b0f                                  ; $40e5: $01 $0f $0b
    rlca                                          ; $40e8: $07
    ld bc, $ff07                                  ; $40e9: $01 $07 $ff
    nop                                           ; $40ec: $00
    rlca                                          ; $40ed: $07
    inc b                                         ; $40ee: $04
    inc bc                                        ; $40ef: $03
    ld e, h                                       ; $40f0: $5c
    rst $38                                       ; $40f1: $ff
    nop                                           ; $40f2: $00
    rst $38                                       ; $40f3: $ff
    rst $20                                       ; $40f4: $e7
    add c                                         ; $40f5: $81
    inc a                                         ; $40f6: $3c
    db $10                                        ; $40f7: $10
    db $d3                                        ; $40f8: $d3
    db $e3                                        ; $40f9: $e3
    add e                                         ; $40fa: $83
    ldh [rNR41], a                                ; $40fb: $e0 $20
    ret nz                                        ; $40fd: $c0

    add b                                         ; $40fe: $80
    cp a                                          ; $40ff: $bf
    ret nz                                        ; $4100: $c0

    nop                                           ; $4101: $00
    ldh [$90], a                                  ; $4102: $e0 $90
    ldh [$80], a                                  ; $4104: $e0 $80
    cp $e0                                        ; $4106: $fe $e0
    nop                                           ; $4108: $00
    ei                                            ; $4109: $fb
    ret nz                                        ; $410a: $c0

    jr nz, @-$5e                                  ; $410b: $20 $a0

    ldh [$7d], a                                  ; $410d: $e0 $7d
    rst $38                                       ; $410f: $ff
    rst $28                                       ; $4110: $ef
    rst $38                                       ; $4111: $ff
    ld a, [hl-]                                   ; $4112: $3a
    ld a, [$e2da]                                 ; $4113: $fa $da $e2
    ld [$e063], sp                                ; $4116: $08 $63 $e0
    and h                                         ; $4119: $a4
    ld hl, sp-$20                                 ; $411a: $f8 $e0
    ld hl, sp-$10                                 ; $411c: $f8 $f0
    rst $38                                       ; $411e: $ff
    db $fc                                        ; $411f: $fc
    ret nc                                        ; $4120: $d0

    db $fc                                        ; $4121: $fc
    ld a, [c]                                     ; $4122: $f2
    db $fc                                        ; $4123: $fc
    ldh [$fc], a                                  ; $4124: $e0 $fc
    or b                                          ; $4126: $b0
    rst $30                                       ; $4127: $f7
    ld hl, sp-$1c                                 ; $4128: $f8 $e4
    ld hl, sp-$80                                 ; $412a: $f8 $80
    push hl                                       ; $412c: $e5
    cp [hl]                                       ; $412d: $be
    rst $38                                       ; $412e: $ff
    db $e3                                        ; $412f: $e3
    rst $38                                       ; $4130: $ff
    rst $38                                       ; $4131: $ff
    ld b, b                                       ; $4132: $40
    rst $38                                       ; $4133: $ff
    nop                                           ; $4134: $00
    rst $20                                       ; $4135: $e7
    db $fc                                        ; $4136: $fc
    rst $38                                       ; $4137: $ff
    or $ff                                        ; $4138: $f6 $ff
    ld a, a                                       ; $413a: $7f
    db $fc                                        ; $413b: $fc
    rst $38                                       ; $413c: $ff
    ld hl, sp-$02                                 ; $413d: $f8 $fe
    add sp, -$02                                  ; $413f: $e8 $fe
    ld hl, sp-$08                                 ; $4141: $f8 $f8
    ldh [$0b], a                                  ; $4143: $e0 $0b
    db $f4                                        ; $4145: $f4
    rst $38                                       ; $4146: $ff
    ld a, b                                       ; $4147: $78
    ldh [$80], a                                  ; $4148: $e0 $80
    and e                                         ; $414a: $a3
    and $23                                       ; $414b: $e6 $23
    pop hl                                        ; $414d: $e1
    ldh a, [$e0]                                  ; $414e: $f0 $e0
    rst $28                                       ; $4150: $ef
    ld [$c0e3], a                                 ; $4151: $ea $e3 $c0
    ld b, b                                       ; $4154: $40
    ldh [$ea], a                                  ; $4155: $e0 $ea
    ret nc                                        ; $4157: $d0

    pop hl                                        ; $4158: $e1
    rst $08                                       ; $4159: $cf
    jp hl                                         ; $415a: $e9


    ld [bc], a                                    ; $415b: $02
    add c                                         ; $415c: $81
    and b                                         ; $415d: $a0
    rst $38                                       ; $415e: $ff
    pop bc                                        ; $415f: $c1
    add b                                         ; $4160: $80
    pop bc                                        ; $4161: $c1
    add l                                         ; $4162: $85
    jp $c3a1                                      ; $4163: $c3 $a1 $c3


    nop                                           ; $4166: $00
    ld a, a                                       ; $4167: $7f
    add e                                         ; $4168: $83
    dec b                                         ; $4169: $05
    add e                                         ; $416a: $83
    ld b, b                                       ; $416b: $40
    add c                                         ; $416c: $81
    ld b, c                                       ; $416d: $41
    add b                                         ; $416e: $80
    ret nz                                        ; $416f: $c0

    ldh [rIE], a                                  ; $4170: $e0 $ff
    ret nz                                        ; $4172: $c0

    and b                                         ; $4173: $a0
    ret nz                                        ; $4174: $c0

    ret nz                                        ; $4175: $c0

    ldh [rBCPS], a                                ; $4176: $e0 $68
    ldh a, [$f1]                                  ; $4178: $f0 $f1
    rst $38                                       ; $417a: $ff
    db $fc                                        ; $417b: $fc
    call c, Call_000_1eff                         ; $417c: $dc $ff $1e
    rst $38                                       ; $417f: $ff
    add b                                         ; $4180: $80

Call_072_4181:
    ld e, $12                                     ; $4181: $1e $12
    ld a, [hl]                                    ; $4183: $7e
    call nc, $48c2                                ; $4184: $d4 $c2 $48
    nop                                           ; $4187: $00
    ld bc, $5878                                  ; $4188: $01 $78 $58
    rst $38                                       ; $418b: $ff
    or b                                          ; $418c: $b0
    jp hl                                         ; $418d: $e9


    rst $38                                       ; $418e: $ff
    ld [bc], a                                    ; $418f: $02
    ld bc, $0300                                  ; $4190: $01 $00 $03
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    ld b, b                                       ; $4195: $40
    ld b, b                                       ; $4196: $40
    ld a, a                                       ; $4197: $7f
    nop                                           ; $4198: $00
    jr nz, jr_072_419b                            ; $4199: $20 $00

jr_072_419b:
    db $10                                        ; $419b: $10
    ld [$0400], sp                                ; $419c: $08 $00 $04
    or d                                          ; $419f: $b2
    ret nz                                        ; $41a0: $c0

    ret nz                                        ; $41a1: $c0

    and d                                         ; $41a2: $a2
    pop bc                                        ; $41a3: $c1
    ldh a, [rIE]                                  ; $41a4: $f0 $ff
    ldh a, [rIE]                                  ; $41a6: $f0 $ff
    ldh a, [rIE]                                  ; $41a8: $f0 $ff
    ldh a, [rIE]                                  ; $41aa: $f0 $ff
    ldh a, [$f3]                                  ; $41ac: $f0 $f3
    jp $e33c                                      ; $41ae: $c3 $3c $e3


    jp $fd3c                                      ; $41b1: $c3 $3c $fd


    ldh [$fe], a                                  ; $41b4: $e0 $fe
    ld [c], a                                     ; $41b6: $e2
    db $f4                                        ; $41b7: $f4
    pop hl                                        ; $41b8: $e1
    dec de                                        ; $41b9: $1b
    rst $20                                       ; $41ba: $e7
    cpl                                           ; $41bb: $2f
    rst $38                                       ; $41bc: $ff
    call c, $f11e                                 ; $41bd: $dc $1e $f1
    inc a                                         ; $41c0: $3c
    db $e3                                        ; $41c1: $e3
    ld a, h                                       ; $41c2: $7c
    jp Jump_072_7f7c                              ; $41c3: $c3 $7c $7f


    jp $9ce3                                      ; $41c6: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $41c9: $c3 $bc $18


    rst $20                                       ; $41cc: $e7
    ld [c], a                                     ; $41cd: $e2
    pop hl                                        ; $41ce: $e1
    rst $38                                       ; $41cf: $ff
    ld a, [de]                                    ; $41d0: $1a
    push hl                                       ; $41d1: $e5
    ld [de], a                                    ; $41d2: $12
    rst $28                                       ; $41d3: $ef
    ld e, a                                       ; $41d4: $5f
    cp b                                          ; $41d5: $b8
    ld a, a                                       ; $41d6: $7f
    ldh [rIE], a                                  ; $41d7: $e0 $ff
    di                                            ; $41d9: $f3
    adc h                                         ; $41da: $8c
    inc de                                        ; $41db: $13
    rst $28                                       ; $41dc: $ef
    rra                                           ; $41dd: $1f
    ld hl, sp-$04                                 ; $41de: $f8 $fc
    ld h, e                                       ; $41e0: $63
    cp a                                          ; $41e1: $bf
    db $fc                                        ; $41e2: $fc
    add e                                         ; $41e3: $83
    db $fc                                        ; $41e4: $fc
    inc bc                                        ; $41e5: $03
    cp h                                          ; $41e6: $bc
    ld b, e                                       ; $41e7: $43
    call nz, $98e1                                ; $41e8: $c4 $e1 $98
    rst $38                                       ; $41eb: $ff
    rst $20                                       ; $41ec: $e7
    db $fc                                        ; $41ed: $fc
    ld b, e                                       ; $41ee: $43
    call c, $f863                                 ; $41ef: $dc $63 $f8
    daa                                           ; $41f2: $27
    ld l, b                                       ; $41f3: $68
    rst $38                                       ; $41f4: $ff
    or a                                          ; $41f5: $b7
    ld l, h                                       ; $41f6: $6c
    sub e                                         ; $41f7: $93
    db $fc                                        ; $41f8: $fc
    inc de                                        ; $41f9: $13

Jump_072_41fa:
    add sp, $17                                   ; $41fa: $e8 $17
    ld hl, sp-$01                                 ; $41fc: $f8 $ff
    rrca                                          ; $41fe: $0f
    sbc $25                                       ; $41ff: $de $25
    inc a                                         ; $4201: $3c
    rst $00                                       ; $4202: $c7
    ld a, $c3                                     ; $4203: $3e $c3
    ccf                                           ; $4205: $3f
    rst $38                                       ; $4206: $ff
    jp nz, $c13e                                  ; $4207: $c2 $3e $c1

    jp $c33d                                      ; $420a: $c3 $3d $c3


    dec a                                         ; $420d: $3d
    cp e                                          ; $420e: $bb
    rst $30                                       ; $420f: $f7
    rst $10                                       ; $4210: $d7
    rst $38                                       ; $4211: $ff
    nop                                           ; $4212: $00
    and b                                         ; $4213: $a0
    jp hl                                         ; $4214: $e9


    jp $c3bc                                      ; $4215: $c3 $bc $c3


    cp h                                          ; $4218: $bc
    ret                                           ; $4219: $c9


    ld a, h                                       ; $421a: $7c
    jp nz, $bee0                                  ; $421b: $c2 $e0 $be

    pop hl                                        ; $421e: $e1
    ld b, e                                       ; $421f: $43
    db $f4                                        ; $4220: $f4
    ldh [$a0], a                                  ; $4221: $e0 $a0
    pop hl                                        ; $4223: $e1
    nop                                           ; $4224: $00
    rst $38                                       ; $4225: $ff
    cp a                                          ; $4226: $bf
    db $dd                                        ; $4227: $dd
    db $eb                                        ; $4228: $eb
    rst $38                                       ; $4229: $ff
    nop                                           ; $422a: $00
    ld a, [hl]                                    ; $422b: $7e
    add c                                         ; $422c: $81
    add b                                         ; $422d: $80
    ld [c], a                                     ; $422e: $e2
    db $f4                                        ; $422f: $f4
    rst $38                                       ; $4230: $ff
    rrca                                          ; $4231: $0f
    ldh a, [rNR32]                                ; $4232: $f0 $1c
    db $e3                                        ; $4234: $e3
    inc e                                         ; $4235: $1c
    di                                            ; $4236: $f3
    inc e                                         ; $4237: $1c
    db $e3                                        ; $4238: $e3
    rst $38                                       ; $4239: $ff
    inc c                                         ; $423a: $0c
    di                                            ; $423b: $f3
    ccf                                           ; $423c: $3f
    ret nc                                        ; $423d: $d0

    dec de                                        ; $423e: $1b
    db $f4                                        ; $423f: $f4
    ld d, a                                       ; $4240: $57
    rst $38                                       ; $4241: $ff
    ld e, a                                       ; $4242: $5f
    xor a                                         ; $4243: $af
    db $fc                                        ; $4244: $fc
    ld a, [hl]                                    ; $4245: $7e
    pop af                                        ; $4246: $f1
    cp h                                          ; $4247: $bc
    ld [hl], b                                    ; $4248: $70
    ldh [$fc], a                                  ; $4249: $e0 $fc
    ld [hl], b                                    ; $424b: $70
    ld [c], a                                     ; $424c: $e2
    rst $38                                       ; $424d: $ff
    ei                                            ; $424e: $fb
    rst $38                                       ; $424f: $ff
    sbc $ff                                       ; $4250: $de $ff
    push af                                       ; $4252: $f5
    rst $38                                       ; $4253: $ff
    xor d                                         ; $4254: $aa
    rst $38                                       ; $4255: $ff
    or a                                          ; $4256: $b7
    ld d, a                                       ; $4257: $57
    rst $38                                       ; $4258: $ff
    cp a                                          ; $4259: $bf
    ld h, a                                       ; $425a: $67
    and b                                         ; $425b: $a0
    di                                            ; $425c: $f3
    adc h                                         ; $425d: $8c
    ld hl, sp-$1f                                 ; $425e: $f8 $e1
    ld a, h                                       ; $4260: $7c
    db $fd                                        ; $4261: $fd
    db $e3                                        ; $4262: $e3
    ld [hl], b                                    ; $4263: $70
    rst $20                                       ; $4264: $e7
    rst $28                                       ; $4265: $ef
    rst $38                                       ; $4266: $ff
    rst $10                                       ; $4267: $d7
    ld a, a                                       ; $4268: $7f
    db $ed                                        ; $4269: $ed
    ld a, a                                       ; $426a: $7f
    rst $38                                       ; $426b: $ff
    rst $30                                       ; $426c: $f7
    ccf                                           ; $426d: $3f
    ld l, e                                       ; $426e: $6b
    cp a                                          ; $426f: $bf
    halt                                          ; $4270: $76
    sbc a                                         ; $4271: $9f
    ei                                            ; $4272: $fb
    rra                                           ; $4273: $1f
    rst $38                                       ; $4274: $ff
    push af                                       ; $4275: $f5
    rra                                           ; $4276: $1f
    ld a, [$dd0f]                                 ; $4277: $fa $0f $dd
    daa                                           ; $427a: $27
    ld a, $c7                                     ; $427b: $3e $c7
    di                                            ; $427d: $f3
    ccf                                           ; $427e: $3f
    jp $e06e                                      ; $427f: $c3 $6e $e0


    ld [hl], b                                    ; $4282: $70
    ld [c], a                                     ; $4283: $e2
    db $ed                                        ; $4284: $ed
    rst $38                                       ; $4285: $ff
    db $d3                                        ; $4286: $d3
    inc a                                         ; $4287: $3c
    dec sp                                        ; $4288: $3b
    ld a, [hl]                                    ; $4289: $7e
    add c                                         ; $428a: $81
    ld [hl], b                                    ; $428b: $70
    jp hl                                         ; $428c: $e9


    db $e3                                        ; $428d: $e3
    sbc h                                         ; $428e: $9c
    cp h                                          ; $428f: $bc
    inc d                                         ; $4290: $14
    ldh [rBCPD], a                                ; $4291: $e0 $69
    ldh [$eb], a                                  ; $4293: $e0 $eb
    jp $1063                                      ; $4295: $c3 $63 $10


    ldh [$57], a                                  ; $4298: $e0 $57
    and h                                         ; $429a: $a4
    ldh [$7d], a                                  ; $429b: $e0 $7d
    rst $38                                       ; $429d: $ff
    db $d3                                        ; $429e: $d3
    ld sp, hl                                     ; $429f: $f9
    rst $28                                       ; $42a0: $ef
    ld c, d                                       ; $42a1: $4a
    pop hl                                        ; $42a2: $e1
    db $e4                                        ; $42a3: $e4
    pop bc                                        ; $42a4: $c1
    cp e                                          ; $42a5: $bb
    db $f4                                        ; $42a6: $f4
    ld e, e                                       ; $42a7: $5b
    db $f4                                        ; $42a8: $f4
    xor h                                         ; $42a9: $ac
    rst $38                                       ; $42aa: $ff
    di                                            ; $42ab: $f3
    ld l, h                                       ; $42ac: $6c
    di                                            ; $42ad: $f3
    cp h                                          ; $42ae: $bc
    db $e3                                        ; $42af: $e3
    ld l, h                                       ; $42b0: $6c
    di                                            ; $42b1: $f3
    cp e                                          ; $42b2: $bb
    rst $38                                       ; $42b3: $ff
    db $f4                                        ; $42b4: $f4
    db $db                                        ; $42b5: $db
    db $f4                                        ; $42b6: $f4
    cp l                                          ; $42b7: $bd
    jp $ffe7                                      ; $42b8: $c3 $e7 $ff


    cp d                                          ; $42bb: $ba
    cp a                                          ; $42bc: $bf
    rst $38                                       ; $42bd: $ff
    ld d, l                                       ; $42be: $55
    rst $38                                       ; $42bf: $ff
    xor e                                         ; $42c0: $ab
    rst $38                                       ; $42c1: $ff
    cp $58                                        ; $42c2: $fe $58
    and b                                         ; $42c4: $a0
    rst $38                                       ; $42c5: $ff
    rst $28                                       ; $42c6: $ef
    rst $38                                       ; $42c7: $ff
    db $db                                        ; $42c8: $db
    rst $38                                       ; $42c9: $ff
    ld l, a                                       ; $42ca: $6f
    adc [hl]                                      ; $42cb: $8e
    ldh [$af], a                                  ; $42cc: $e0 $af
    ld a, a                                       ; $42ce: $7f
    or l                                          ; $42cf: $b5
    rst $08                                       ; $42d0: $cf
    ld a, a                                       ; $42d1: $7f
    rst $28                                       ; $42d2: $ef
    ld a, a                                       ; $42d3: $7f
    ld d, a                                       ; $42d4: $57
    ld b, [hl]                                    ; $42d5: $46
    and b                                         ; $42d6: $a0
    ret nc                                        ; $42d7: $d0

    jp $e718                                      ; $42d8: $c3 $18 $e7


    cp $f8                                        ; $42db: $fe $f8
    push hl                                       ; $42dd: $e5
    ld d, a                                       ; $42de: $57
    rst $38                                       ; $42df: $ff
    xor h                                         ; $42e0: $ac
    rst $38                                       ; $42e1: $ff
    ld [hl], h                                    ; $42e2: $74
    ei                                            ; $42e3: $fb
    cp b                                          ; $42e4: $b8
    ld l, a                                       ; $42e5: $6f
    rst $20                                       ; $42e6: $e7
    ld e, b                                       ; $42e7: $58
    rst $20                                       ; $42e8: $e7
    db $fc                                        ; $42e9: $fc
    dec b                                         ; $42ea: $05
    ldh [$98], a                                  ; $42eb: $e0 $98
    rst $20                                       ; $42ed: $e7
    ld b, b                                       ; $42ee: $40
    rst $20                                       ; $42ef: $e7
    rst $18                                       ; $42f0: $df
    cp d                                          ; $42f1: $ba
    rst $38                                       ; $42f2: $ff
    db $ec                                        ; $42f3: $ec
    di                                            ; $42f4: $f3
    sbc b                                         ; $42f5: $98
    ldh [$e0], a                                  ; $42f6: $e0 $e0
    cp d                                          ; $42f8: $ba
    rst $38                                       ; $42f9: $ff
    jp hl                                         ; $42fa: $e9


    ld l, h                                       ; $42fb: $6c
    ld hl, sp-$20                                 ; $42fc: $f8 $e0
    ret z                                         ; $42fe: $c8

    push hl                                       ; $42ff: $e5
    rst $28                                       ; $4300: $ef
    ld h, $e0                                     ; $4301: $26 $e0
    ld l, l                                       ; $4303: $6d
    rst $38                                       ; $4304: $ff
    scf                                           ; $4305: $37
    rst $38                                       ; $4306: $ff
    rst $38                                       ; $4307: $ff
    dec hl                                        ; $4308: $2b
    rst $38                                       ; $4309: $ff
    ld d, $ff                                     ; $430a: $16 $ff
    dec sp                                        ; $430c: $3b
    rst $38                                       ; $430d: $ff
    dec d                                         ; $430e: $15
    rst $38                                       ; $430f: $ff
    rst $38                                       ; $4310: $ff
    ld a, [de]                                    ; $4311: $1a
    rst $28                                       ; $4312: $ef
    dec [hl]                                      ; $4313: $35
    rst $08                                       ; $4314: $cf
    ld a, $c7                                     ; $4315: $3e $c7
    dec de                                        ; $4317: $1b
    rst $38                                       ; $4318: $ff
    rst $20                                       ; $4319: $e7
    ld a, [de]                                    ; $431a: $1a
    rst $20                                       ; $431b: $e7
    dec a                                         ; $431c: $3d
    jp $c33f                                      ; $431d: $c3 $3f $c3


    add hl, de                                    ; $4320: $19
    db $db                                        ; $4321: $db
    rst $20                                       ; $4322: $e7
    rst $10                                       ; $4323: $d7
    db $e4                                        ; $4324: $e4
    add b                                         ; $4325: $80
    inc l                                         ; $4326: $2c
    db $d3                                        ; $4327: $d3
    and b                                         ; $4328: $a0
    rst $20                                       ; $4329: $e7
    sbc b                                         ; $432a: $98
    rst $20                                       ; $432b: $e7
    adc d                                         ; $432c: $8a
    ld b, d                                       ; $432d: $42
    pop hl                                        ; $432e: $e1
    ret c                                         ; $432f: $d8

    and b                                         ; $4330: $a0
    ldh [$bc], a                                  ; $4331: $e0 $bc
    sbc $c0                                       ; $4333: $de $c0
    or b                                          ; $4335: $b0
    pop hl                                        ; $4336: $e1
    ld b, b                                       ; $4337: $40
    pop hl                                        ; $4338: $e1
    set 7, [hl]                                   ; $4339: $cb $fe
    ld a, b                                       ; $433b: $78
    and $b0                                       ; $433c: $e6 $b0
    rst $38                                       ; $433e: $ff
    ld d, h                                       ; $433f: $54
    ei                                            ; $4340: $fb
    and h                                         ; $4341: $a4
    ei                                            ; $4342: $fb
    ld a, b                                       ; $4343: $78
    rst $38                                       ; $4344: $ff

Jump_072_4345:
    rst $30                                       ; $4345: $f7
    xor b                                         ; $4346: $a8
    rst $30                                       ; $4347: $f7
    ld h, h                                       ; $4348: $64
    ei                                            ; $4349: $fb
    or h                                          ; $434a: $b4
    ei                                            ; $434b: $fb
    ret nc                                        ; $434c: $d0

    rst $38                                       ; $434d: $ff
    rst $38                                       ; $434e: $ff
    pop bc                                        ; $434f: $c1
    rst $38                                       ; $4350: $ff
    or a                                          ; $4351: $b7
    rst $38                                       ; $4352: $ff
    ld e, l                                       ; $4353: $5d
    rst $38                                       ; $4354: $ff
    ld [$3e54], a                                 ; $4355: $ea $54 $3e
    ldh [$3a], a                                  ; $4358: $e0 $3a
    add c                                         ; $435a: $81
    rst $38                                       ; $435b: $ff
    sub h                                         ; $435c: $94
    add b                                         ; $435d: $80
    ld d, a                                       ; $435e: $57
    ld a, $e0                                     ; $435f: $3e $e0
    dec [hl]                                      ; $4361: $35
    ld a, [hl-]                                   ; $4362: $3a
    ldh [$f6], a                                  ; $4363: $e0 $f6
    xor [hl]                                      ; $4365: $ae
    ret nz                                        ; $4366: $c0

    rst $38                                       ; $4367: $ff
    rst $10                                       ; $4368: $d7
    ld hl, $ff83                                  ; $4369: $21 $83 $ff
    db $dd                                        ; $436c: $dd
    rst $38                                       ; $436d: $ff
    ld [hl], a                                    ; $436e: $77
    ld e, h                                       ; $436f: $5c
    sbc h                                         ; $4370: $9c
    ret nz                                        ; $4371: $c0

    call c, $afe1                                 ; $4372: $dc $e1 $af
    rst $38                                       ; $4375: $ff
    rst $18                                       ; $4376: $df
    adc $e0                                       ; $4377: $ce $e0
    rst $18                                       ; $4379: $df
    ld hl, sp-$1a                                 ; $437a: $f8 $e6
    inc d                                         ; $437c: $14
    rst $38                                       ; $437d: $ff
    push hl                                       ; $437e: $e5
    sbc $e5                                       ; $437f: $de $e5
    ld e, a                                       ; $4381: $5f
    jp z, Jump_072_6fe0                           ; $4382: $ca $e0 $6f

    add $e0                                       ; $4385: $c6 $e0
    ld hl, sp-$1b                                 ; $4387: $f8 $e5
    ldh [$63], a                                  ; $4389: $e0 $63
    jp z, $e1f8                                   ; $438b: $ca $f8 $e1

    ld e, a                                       ; $438e: $5f
    sub [hl]                                      ; $438f: $96
    ldh [$5f], a                                  ; $4390: $e0 $5f
    ret nc                                        ; $4392: $d0

    and $c7                                       ; $4393: $e6 $c7
    push hl                                       ; $4395: $e5
    ld l, c                                       ; $4396: $69
    rst $38                                       ; $4397: $ff
    rst $38                                       ; $4398: $ff
    call nc, $81fc                                ; $4399: $d4 $fc $81
    ldh a, [rDMA]                                 ; $439c: $f0 $46
    ldh [$8b], a                                  ; $439e: $e0 $8b

Call_072_43a0:
    ret nz                                        ; $43a0: $c0

    ld a, a                                       ; $43a1: $7f
    ld d, a                                       ; $43a2: $57
    ret nz                                        ; $43a3: $c0

Jump_072_43a4:
    dec e                                         ; $43a4: $1d
    add b                                         ; $43a5: $80
    xor a                                         ; $43a6: $af
    add b                                         ; $43a7: $80
    db $fd                                        ; $43a8: $fd
    xor a                                         ; $43a9: $af
    ld h, b                                       ; $43aa: $60
    db $fd                                        ; $43ab: $fd
    jp c, $8048                                   ; $43ac: $da $48 $80

    and b                                         ; $43af: $a0
    db $fc                                        ; $43b0: $fc
    ld b, c                                       ; $43b1: $41
    ldh a, [$0b]                                  ; $43b2: $f0 $0b
    ret nz                                        ; $43b4: $c0

    ei                                            ; $43b5: $fb
    ld d, $00                                     ; $43b6: $16 $00
    ld hl, sp-$1f                                 ; $43b8: $f8 $e1
    ld a, [bc]                                    ; $43ba: $0a
    ret nz                                        ; $43bb: $c0

    rla                                           ; $43bc: $17
    nop                                           ; $43bd: $00
    cp l                                          ; $43be: $bd
    rst $30                                       ; $43bf: $f7
    nop                                           ; $43c0: $00
    ld l, a                                       ; $43c1: $6f
    nop                                           ; $43c2: $00
    push de                                       ; $43c3: $d5
    ld h, b                                       ; $43c4: $60
    nop                                           ; $43c5: $00
    ld hl, sp-$02                                 ; $43c6: $f8 $fe
    db $f4                                        ; $43c8: $f4
    rst $38                                       ; $43c9: $ff
    cp $d8                                        ; $43ca: $fe $d8
    db $fc                                        ; $43cc: $fc
    pop af                                        ; $43cd: $f1
    db $fc                                        ; $43ce: $fc
    ld [c], a                                     ; $43cf: $e2
    ld hl, sp-$2f                                 ; $43d0: $f8 $d1
    rst $38                                       ; $43d2: $ff
    ld hl, sp+$63                                 ; $43d3: $f8 $63
    ldh a, [$c6]                                  ; $43d5: $f0 $c6
    ldh a, [$8b]                                  ; $43d7: $f0 $8b
    ldh [rBGP], a                                 ; $43d9: $e0 $47
    rst $38                                       ; $43db: $ff
    ldh [$8f], a                                  ; $43dc: $e0 $8f
    ret nz                                        ; $43de: $c0

    dec de                                        ; $43df: $1b
    ret nz                                        ; $43e0: $c0

    cpl                                           ; $43e1: $2f
    add b                                         ; $43e2: $80
    rra                                           ; $43e3: $1f
    rst $38                                       ; $43e4: $ff
    add b                                         ; $43e5: $80
    scf                                           ; $43e6: $37
    nop                                           ; $43e7: $00
    ld e, a                                       ; $43e8: $5f
    nop                                           ; $43e9: $00
    inc h                                         ; $43ea: $24
    inc a                                         ; $43eb: $3c
    ld b, d                                       ; $43ec: $42
    cp a                                          ; $43ed: $bf
    nop                                           ; $43ee: $00
    xor l                                         ; $43ef: $ad
    nop                                           ; $43f0: $00
    rst $30                                       ; $43f1: $f7
    nop                                           ; $43f2: $00
    ld a, l                                       ; $43f3: $7d
    jp nc, $ffe2                                  ; $43f4: $d2 $e2 $ff

    push af                                       ; $43f7: $f5
    nop                                           ; $43f8: $00
    db $ec                                        ; $43f9: $ec

Call_072_43fa:
    pop hl                                        ; $43fa: $e1
    cp a                                          ; $43fb: $bf
    db $e4                                        ; $43fc: $e4
    ldh [$2f], a                                  ; $43fd: $e0 $2f
    add b                                         ; $43ff: $80
    cp a                                          ; $4400: $bf
    add b                                         ; $4401: $80
    rst $18                                       ; $4402: $df
    ld d, a                                       ; $4403: $57
    nop                                           ; $4404: $00
    ccf                                           ; $4405: $3f
    nop                                           ; $4406: $00
    push af                                       ; $4407: $f5
    ld a, $e0                                     ; $4408: $3e $e0
    ld b, l                                       ; $440a: $45
    rst $38                                       ; $440b: $ff
    rst $38                                       ; $440c: $ff
    nop                                           ; $440d: $00
    rst $00                                       ; $440e: $c7
    stop                                          ; $440f: $10 $00
    ld l, l                                       ; $4411: $6d
    nop                                           ; $4412: $00
    cp e                                          ; $4413: $bb
    nop                                           ; $4414: $00
    rst $38                                       ; $4415: $ff
    rst $28                                       ; $4416: $ef
    nop                                           ; $4417: $00
    rst $20                                       ; $4418: $e7
    ldh a, [rSCX]                                 ; $4419: $f0 $43
    ldh a, [$e5]                                  ; $441b: $f0 $e5
    ldh a, [rIE]                                  ; $441d: $f0 $ff
    ld b, a                                       ; $441f: $47
    ldh [$8a], a                                  ; $4420: $e0 $8a
    ldh [$c7], a                                  ; $4422: $e0 $c7
    ldh [$a5], a                                  ; $4424: $e0 $a5
    ldh a, [$eb]                                  ; $4426: $f0 $eb
    jp $30f0                                      ; $4428: $c3 $f0 $30


    ld h, e                                       ; $442b: $63
    rst $18                                       ; $442c: $df
    ld l, $60                                     ; $442d: $2e $60
    xor l                                         ; $442f: $ad
    rst $38                                       ; $4430: $ff
    ld b, d                                       ; $4431: $42
    rst $38                                       ; $4432: $ff
    rst $38                                       ; $4433: $ff
    nop                                           ; $4434: $00
    jp $fffc                                      ; $4435: $c3 $fc $ff


    ld a, [$fcff]                                 ; $4438: $fa $ff $fc
    sbc $8c                                       ; $443b: $de $8c
    ldh [$f8], a                                  ; $443d: $e0 $f8
    cp $ec                                        ; $443f: $fe $ec
    cp $f6                                        ; $4441: $fe $f6
    ldh [rIE], a                                  ; $4443: $e0 $ff
    rst $38                                       ; $4445: $ff
    rst $38                                       ; $4446: $ff
    add b                                         ; $4447: $80
    ccf                                           ; $4448: $3f
    add b                                         ; $4449: $80
    ld a, a                                       ; $444a: $7f
    ret nz                                        ; $444b: $c0

    sbc a                                         ; $444c: $9f
    ret nz                                        ; $444d: $c0

    ld c, a                                       ; $444e: $4f
    rst $38                                       ; $444f: $ff
    ldh [$87], a                                  ; $4450: $e0 $87
    ldh a, [$d5]                                  ; $4452: $f0 $d5
    db $fc                                        ; $4454: $fc
    ld l, c                                       ; $4455: $69
    rst $38                                       ; $4456: $ff
    ccf                                           ; $4457: $3f
    rst $38                                       ; $4458: $ff
    nop                                           ; $4459: $00
    rrca                                          ; $445a: $0f
    ret nz                                        ; $445b: $c0

    ld b, e                                       ; $445c: $43
    ldh a, [$a0]                                  ; $445d: $f0 $a0
    db $fc                                        ; $445f: $fc
    db $f4                                        ; $4460: $f4
    add $4a                                       ; $4461: $c6 $4a
    ldh [rIE], a                                  ; $4463: $e0 $ff
    rst $38                                       ; $4465: $ff
    ld b, d                                       ; $4466: $42
    ldh [$88], a                                  ; $4467: $e0 $88
    db $e4                                        ; $4469: $e4
    add sp, -$1b                                  ; $446a: $e8 $e5
    db $e3                                        ; $446c: $e3
    rrca                                          ; $446d: $0f
    rst $38                                       ; $446e: $ff
    and $0f                                       ; $446f: $e6 $0f
    rr a                                          ; $4471: $cb $1f
    rst $00                                       ; $4473: $c7
    rra                                           ; $4474: $1f
    adc a                                         ; $4475: $8f
    ccf                                           ; $4476: $3f
    rst $30                                       ; $4477: $f7
    sbc e                                         ; $4478: $9b
    ccf                                           ; $4479: $3f
    cpl                                           ; $447a: $2f
    db $fc                                        ; $447b: $fc
    ld b, b                                       ; $447c: $40
    cp $00                                        ; $447d: $fe $00
    cp $00                                        ; $447f: $fe $00
    rst $38                                       ; $4481: $ff
    db $fc                                        ; $4482: $fc
    ld bc, $01fc                                  ; $4483: $01 $fc $01
    ld hl, sp+$03                                 ; $4486: $f8 $03

jr_072_4488:
    ld sp, hl                                     ; $4488: $f9
    inc bc                                        ; $4489: $03
    rst $08                                       ; $448a: $cf
    ld a, [c]                                     ; $448b: $f2
    rlca                                          ; $448c: $07
    pop af                                        ; $448d: $f1
    rlca                                          ; $448e: $07
    ret nc                                        ; $448f: $d0

    push hl                                       ; $4490: $e5
    inc h                                         ; $4491: $24
    pop hl                                        ; $4492: $e1
    db $d3                                        ; $4493: $d3
    nop                                           ; $4494: $00
    ld e, a                                       ; $4495: $5f
    ld b, d                                       ; $4496: $42
    ld a, [hl]                                    ; $4497: $7e
    cp $00                                        ; $4498: $fe $00
    rst $38                                       ; $449a: $ff
    ld [c], a                                     ; $449b: $e2
    ldh [$fe], a                                  ; $449c: $e0 $fe
    sbc $e0                                       ; $449e: $de $e0
    rst $08                                       ; $44a0: $cf
    db $fc                                        ; $44a1: $fc
    ld bc, $01ff                                  ; $44a2: $01 $ff $01
    ld a, [c]                                     ; $44a5: $f2
    ldh [$0a], a                                  ; $44a6: $e0 $0a
    ld [c], a                                     ; $44a8: $e2
    inc a                                         ; $44a9: $3c
    nop                                           ; $44aa: $00
    rst $30                                       ; $44ab: $f7
    nop                                           ; $44ac: $00
    rst $00                                       ; $44ad: $c7
    ld b, l                                       ; $44ae: $45
    add h                                         ; $44af: $84
    ret nz                                        ; $44b0: $c0

    push af                                       ; $44b1: $f5
    rst $38                                       ; $44b2: $ff
    rst $20                                       ; $44b3: $e7
    rrca                                          ; $44b4: $0f
    rst $28                                       ; $44b5: $ef
    ld [c], a                                     ; $44b6: $e2
    rrca                                          ; $44b7: $0f
    rst $30                                       ; $44b8: $f7
    rrca                                          ; $44b9: $0f
    add $e1                                       ; $44ba: $c6 $e1
    di                                            ; $44bc: $f3
    rlca                                          ; $44bd: $07
    push hl                                       ; $44be: $e5
    cp a                                          ; $44bf: $bf
    rrca                                          ; $44c0: $0f
    db $e3                                        ; $44c1: $e3
    rrca                                          ; $44c2: $0f
    jr jr_072_4488                                ; $44c3: $18 $c3

    ld b, d                                       ; $44c5: $42
    ld d, [hl]                                    ; $44c6: $56
    ldh [$f7], a                                  ; $44c7: $e0 $f7
    ld [$c676], a                                 ; $44c9: $ea $76 $c6
    ccf                                           ; $44cc: $3f
    ld a, [hl]                                    ; $44cd: $7e
    ret nz                                        ; $44ce: $c0

    ccf                                           ; $44cf: $3f
    add b                                         ; $44d0: $80
    and b                                         ; $44d1: $a0
    sbc a                                         ; $44d2: $9f
    ld a, a                                       ; $44d3: $7f
    scf                                           ; $44d4: $37
    db $fd                                        ; $44d5: $fd
    ld a, a                                       ; $44d6: $7f
    or $e0                                        ; $44d7: $f6 $e0
    rst $38                                       ; $44d9: $ff
    ld [$5500], sp                                ; $44da: $08 $00 $55
    nop                                           ; $44dd: $00
    cp [hl]                                       ; $44de: $be
    ld [hl], h                                    ; $44df: $74
    ldh a, [$c0]                                  ; $44e0: $f0 $c0
    ld l, b                                       ; $44e2: $68
    push hl                                       ; $44e3: $e5
    ld e, a                                       ; $44e4: $5f
    db $fc                                        ; $44e5: $fc
    ret nz                                        ; $44e6: $c0

    ld a, a                                       ; $44e7: $7f
    nop                                           ; $44e8: $00
    xor a                                         ; $44e9: $af
    db $fc                                        ; $44ea: $fc
    ldh [$9d], a                                  ; $44eb: $e0 $9d
    ccf                                           ; $44ed: $3f
    db $f4                                        ; $44ee: $f4
    ld [c], a                                     ; $44ef: $e2
    ld de, $2a80                                  ; $44f0: $11 $80 $2a
    call nc, $f0c0                                ; $44f3: $d4 $c0 $f0
    push hl                                       ; $44f6: $e5
    cp a                                          ; $44f7: $bf
    ldh a, [$fa]                                  ; $44f8: $f0 $fa
    db $e4                                        ; $44fa: $e4
    ld l, d                                       ; $44fb: $6a
    jp hl                                         ; $44fc: $e9


    db $f4                                        ; $44fd: $f4
    db $eb                                        ; $44fe: $eb
    nop                                           ; $44ff: $00
    add e                                         ; $4500: $83
    dec de                                        ; $4501: $1b
    db $e4                                        ; $4502: $e4
    dec d                                         ; $4503: $15
    xor $ff                                       ; $4504: $ee $ff
    dec l                                         ; $4506: $2d
    ret nc                                        ; $4507: $d0

    dec b                                         ; $4508: $05
    ld a, [$c034]                                 ; $4509: $fa $34 $c0
    ld d, a                                       ; $450c: $57
    xor d                                         ; $450d: $aa
    rst $18                                       ; $450e: $df
    and h                                         ; $450f: $a4
    ld a, [bc]                                    ; $4510: $0a
    ld c, e                                       ; $4511: $4b
    add b                                         ; $4512: $80
    ld b, d                                       ; $4513: $42
    ldh [rNR41], a                                ; $4514: $e0 $20
    dec e                                         ; $4516: $1d
    ld [bc], a                                    ; $4517: $02
    rst $38                                       ; $4518: $ff
    cp h                                          ; $4519: $bc
    inc bc                                        ; $451a: $03
    sbc b                                         ; $451b: $98
    ld h, a                                       ; $451c: $67
    rla                                           ; $451d: $17
    xor d                                         ; $451e: $aa
    db $e4                                        ; $451f: $e4
    ld a, [bc]                                    ; $4520: $0a
    rst $38                                       ; $4521: $ff
    adc e                                         ; $4522: $8b
    jr nz, @+$24                                  ; $4523: $20 $22

    nop                                           ; $4525: $00
    db $dd                                        ; $4526: $dd
    nop                                           ; $4527: $00
    cp l                                          ; $4528: $bd
    ld b, d                                       ; $4529: $42
    cp $08                                        ; $452a: $fe $08
    and c                                         ; $452c: $a1
    ld d, $a9                                     ; $452d: $16 $a9
    add sp, $03                                   ; $452f: $e8 $03
    add l                                         ; $4531: $85
    ld [hl+], a                                   ; $4532: $22
    ld a, [hl+]                                   ; $4533: $2a
    rst $38                                       ; $4534: $ff
    rlca                                          ; $4535: $07
    db $db                                        ; $4536: $db
    nop                                           ; $4537: $00
    cp h                                          ; $4538: $bc
    ld b, e                                       ; $4539: $43
    ccf                                           ; $453a: $3f
    ret nz                                        ; $453b: $c0

    add hl, de                                    ; $453c: $19
    ei                                            ; $453d: $fb

jr_072_453e:
    and $18                                       ; $453e: $e6 $18
    ld h, b                                       ; $4540: $60
    and b                                         ; $4541: $a0

Jump_072_4542:
    inc a                                         ; $4542: $3c
    jp $e7b8                                      ; $4543: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $4546: $08 $ff $f7
    call z, $90fb                                 ; $4549: $cc $fb $90
    ld l, a                                       ; $454c: $6f
    ld a, [hl+]                                   ; $454d: $2a
    rst $38                                       ; $454e: $ff
    rra                                           ; $454f: $1f
    rst $38                                       ; $4550: $ff
    ldh [$d0], a                                  ; $4551: $e0 $d0
    ld bc, $a15a                                  ; $4553: $01 $5a $a1
    ld c, b                                       ; $4556: $48
    rlca                                          ; $4557: $07
    ld hl, sp-$09                                 ; $4558: $f8 $f7
    rlca                                          ; $455a: $07
    inc e                                         ; $455b: $1c
    inc bc                                        ; $455c: $03
    ret nz                                        ; $455d: $c0

    pop hl                                        ; $455e: $e1
    or b                                          ; $455f: $b0
    rrca                                          ; $4560: $0f
    call z, $ff3f                                 ; $4561: $cc $3f $ff
    ld a, c                                       ; $4564: $79
    add [hl]                                      ; $4565: $86
    ld [de], a                                    ; $4566: $12
    rst $28                                       ; $4567: $ef
    dec de                                        ; $4568: $1b
    ldh [$3c], a                                  ; $4569: $e0 $3c
    jp $d0fe                                      ; $456b: $c3 $fe $d0


    pop hl                                        ; $456e: $e1
    dec a                                         ; $456f: $3d
    ret nz                                        ; $4570: $c0

    ld c, a                                       ; $4571: $4f
    and b                                         ; $4572: $a0
    jr nc, jr_072_453e                            ; $4573: $30 $c9

    ld d, d                                       ; $4575: $52
    rst $38                                       ; $4576: $ff
    and c                                         ; $4577: $a1
    ld l, l                                       ; $4578: $6d
    jp nz, $c934                                  ; $4579: $c2 $34 $c9

    ld c, b                                       ; $457c: $48
    or e                                          ; $457d: $b3
    ld a, [de]                                    ; $457e: $1a
    rst $38                                       ; $457f: $ff
    push hl                                       ; $4580: $e5
    dec d                                         ; $4581: $15
    cp a                                          ; $4582: $bf
    adc $3f                                       ; $4583: $ce $3f
    ld d, [hl]                                    ; $4585: $56
    cp a                                          ; $4586: $bf
    ld l, l                                       ; $4587: $6d
    rst $38                                       ; $4588: $ff
    cp a                                          ; $4589: $bf
    sbc [hl]                                      ; $458a: $9e
    ld a, a                                       ; $458b: $7f
    ld l, d                                       ; $458c: $6a
    cp a                                          ; $458d: $bf
    dec e                                         ; $458e: $1d
    rst $38                                       ; $458f: $ff
    ld c, [hl]                                    ; $4590: $4e
    rst $38                                       ; $4591: $ff
    cp a                                          ; $4592: $bf
    dec [hl]                                      ; $4593: $35
    ret nz                                        ; $4594: $c0

    ld c, [hl]                                    ; $4595: $4e
    and c                                         ; $4596: $a1
    ld [hl-], a                                   ; $4597: $32
    ret                                           ; $4598: $c9


    ld d, a                                       ; $4599: $57
    rst $38                                       ; $459a: $ff
    and d                                         ; $459b: $a2
    ld a, a                                       ; $459c: $7f
    push bc                                       ; $459d: $c5
    ld [hl-], a                                   ; $459e: $32
    rst $08                                       ; $459f: $cf
    ld d, l                                       ; $45a0: $55
    cp a                                          ; $45a1: $bf
    dec hl                                        ; $45a2: $2b
    sbc $90                                       ; $45a3: $de $90
    add d                                         ; $45a5: $82
    cp h                                          ; $45a6: $bc
    ld b, e                                       ; $45a7: $43
    ld e, b                                       ; $45a8: $58
    and a                                         ; $45a9: $a7
    nop                                           ; $45aa: $00
    and b                                         ; $45ab: $a0
    db $e3                                        ; $45ac: $e3
    call nz, $f3ff                                ; $45ad: $c4 $ff $f3
    or h                                          ; $45b0: $b4
    db $eb                                        ; $45b1: $eb
    sbc d                                         ; $45b2: $9a
    ld a, a                                       ; $45b3: $7f
    rst $28                                       ; $45b4: $ef
    ccf                                           ; $45b5: $3f
    ld a, [hl-]                                   ; $45b6: $3a
    rst $38                                       ; $45b7: $ff
    rst $18                                       ; $45b8: $df
    ld c, l                                       ; $45b9: $4d
    rst $38                                       ; $45ba: $ff
    or h                                          ; $45bb: $b4
    rst $38                                       ; $45bc: $ff
    ld a, d                                       ; $45bd: $7a
    rst $38                                       ; $45be: $ff
    xor b                                         ; $45bf: $a8
    ei                                            ; $45c0: $fb
    rst $38                                       ; $45c1: $ff

Jump_072_45c2:
    ld [hl], h                                    ; $45c2: $74
    cp [hl]                                       ; $45c3: $be
    add b                                         ; $45c4: $80
    inc hl                                        ; $45c5: $23
    rst $18                                       ; $45c6: $df
    dec b                                         ; $45c7: $05
    rst $38                                       ; $45c8: $ff
    ld a, [de]                                    ; $45c9: $1a
    cp $70                                        ; $45ca: $fe $70
    add [hl]                                      ; $45cc: $86
    call nc, $bbff                                ; $45cd: $d4 $ff $bb
    cp $74                                        ; $45d0: $fe $74
    rst $38                                       ; $45d2: $ff
    xor [hl]                                      ; $45d3: $ae
    ld a, [$209a]                                 ; $45d4: $fa $9a $20
    xor [hl]                                      ; $45d7: $ae
    ld a, [hl-]                                   ; $45d8: $3a
    add b                                         ; $45d9: $80
    inc bc                                        ; $45da: $03
    rst $38                                       ; $45db: $ff
    ld d, d                                       ; $45dc: $52
    db $fc                                        ; $45dd: $fc
    xor d                                         ; $45de: $aa
    xor a                                         ; $45df: $af
    db $fd                                        ; $45e0: $fd
    ld [hl], a                                    ; $45e1: $77
    ei                                            ; $45e2: $fb
    and d                                         ; $45e3: $a2

Call_072_45e4:
    or b                                          ; $45e4: $b0
    ld h, b                                       ; $45e5: $60
    dec c                                         ; $45e6: $0d
    xor h                                         ; $45e7: $ac
    ld h, b                                       ; $45e8: $60
    ld a, [bc]                                    ; $45e9: $0a
    rst $38                                       ; $45ea: $ff
    rst $38                                       ; $45eb: $ff
    ld h, a                                       ; $45ec: $67
    adc b                                         ; $45ed: $88
    call Call_000_32bb                            ; $45ee: $cd $bb $32
    rst $28                                       ; $45f1: $ef
    db $eb                                        ; $45f2: $eb
    ld a, [$e0de]                                 ; $45f3: $fa $de $e0
    cp $1c                                        ; $45f6: $fe $1c
    add b                                         ; $45f8: $80
    cp d                                          ; $45f9: $ba
    rst $38                                       ; $45fa: $ff
    daa                                           ; $45fb: $27
    ret z                                         ; $45fc: $c8

    ld l, l                                       ; $45fd: $6d
    rst $38                                       ; $45fe: $ff
    sbc e                                         ; $45ff: $9b
    ld [hl+], a                                   ; $4600: $22
    rst $38                                       ; $4601: $ff

jr_072_4602:
    ld a, e                                       ; $4602: $7b
    rst $38                                       ; $4603: $ff
    or [hl]                                       ; $4604: $b6
    rst $38                                       ; $4605: $ff
    ld e, [hl]                                    ; $4606: $5e
    ei                                            ; $4607: $fb
    rst $38                                       ; $4608: $ff
    cp e                                          ; $4609: $bb
    add h                                         ; $460a: $84
    ld h, b                                       ; $460b: $60
    ld c, $bf                                     ; $460c: $0e $bf
    db $dd                                        ; $460e: $dd
    ccf                                           ; $460f: $3f
    ld l, [hl]                                    ; $4610: $6e
    cp e                                          ; $4611: $bb
    cp a                                          ; $4612: $bf
    ld d, a                                       ; $4613: $57
    ld [hl], b                                    ; $4614: $70

jr_072_4615:
    ldh [$6d], a                                  ; $4615: $e0 $6d
    cp a                                          ; $4617: $bf
    ld e, $70                                     ; $4618: $1e $70
    ldh [rHDMA2], a                               ; $461a: $e0 $52
    rst $38                                       ; $461c: $ff
    db $fd                                        ; $461d: $fd
    xor $f9                                       ; $461e: $ee $f9
    ld c, c                                       ; $4620: $49
    or $a7                                        ; $4621: $f6 $a7
    ld hl, sp+$47                                 ; $4623: $f8 $47
    rst $38                                       ; $4625: $ff
    ldh a, [$b4]                                  ; $4626: $f0 $b4
    ret                                           ; $4628: $c9


    ld c, d                                       ; $4629: $4a
    or c                                          ; $462a: $b1
    dec de                                        ; $462b: $1b
    db $e4                                        ; $462c: $e4
    rst $38                                       ; $462d: $ff
    rst $38                                       ; $462e: $ff
    rra                                           ; $462f: $1f
    ld c, d                                       ; $4630: $4a
    cp a                                          ; $4631: $bf
    ld l, c                                       ; $4632: $69
    sub a                                         ; $4633: $97
    ld [de], a                                    ; $4634: $12
    rst $28                                       ; $4635: $ef
    add hl, de                                    ; $4636: $19
    rst $30                                       ; $4637: $f7
    ld [c], a                                     ; $4638: $e2
    jr c, jr_072_4602                             ; $4639: $38 $c7

    nop                                           ; $463b: $00
    pop hl                                        ; $463c: $e1
    dec hl                                        ; $463d: $2b
    ret nc                                        ; $463e: $d0

    xor d                                         ; $463f: $aa
    ld b, c                                       ; $4640: $41
    cp a                                          ; $4641: $bf
    cp $01                                        ; $4642: $fe $01
    xor b                                         ; $4644: $a8
    rlca                                          ; $4645: $07
    ld a, b                                       ; $4646: $78
    add a                                         ; $4647: $87
    db $10                                        ; $4648: $10
    db $e3                                        ; $4649: $e3

jr_072_464a:
    and c                                         ; $464a: $a1
    rst $38                                       ; $464b: $ff
    ld e, $8c                                     ; $464c: $1e $8c
    ld a, d                                       ; $464e: $7a
    ld d, a                                       ; $464f: $57
    xor b                                         ; $4650: $a8
    jr c, jr_072_4615                             ; $4651: $38 $c2

    dec c                                         ; $4653: $0d
    rst $30                                       ; $4654: $f7
    ldh a, [$3d]                                  ; $4655: $f0 $3d
    jp nz, Jump_072_61d8                          ; $4657: $c2 $d8 $61

    cpl                                           ; $465a: $2f
    sub b                                         ; $465b: $90
    ld sp, hl                                     ; $465c: $f9
    nop                                           ; $465d: $00
    rst $38                                       ; $465e: $ff
    adc d                                         ; $465f: $8a
    ld hl, $0728                                  ; $4660: $21 $28 $07
    ret c                                         ; $4663: $d8

    rlca                                          ; $4664: $07
    cp h                                          ; $4665: $bc
    ld b, e                                       ; $4666: $43
    db $fc                                        ; $4667: $fc
    ret z                                         ; $4668: $c8

    ld h, c                                       ; $4669: $61
    add hl, sp                                    ; $466a: $39
    and e                                         ; $466b: $a3
    ld [bc], a                                    ; $466c: $02
    db $fd                                        ; $466d: $fd
    ld bc, $0dfe                                  ; $466e: $01 $fe $0d
    ldh a, [rIE]                                  ; $4671: $f0 $ff
    ld [bc], a                                    ; $4673: $02
    db $fd                                        ; $4674: $fd
    ld a, [hl+]                                   ; $4675: $2a
    ret nc                                        ; $4676: $d0

    dec hl                                        ; $4677: $2b
    sub $f5                                       ; $4678: $d6 $f5
    ld a, [bc]                                    ; $467a: $0a
    rst $38                                       ; $467b: $ff
    ld e, a                                       ; $467c: $5f
    add b                                         ; $467d: $80
    xor c                                         ; $467e: $a9
    ld [bc], a                                    ; $467f: $02
    ld a, a                                       ; $4680: $7f
    add b                                         ; $4681: $80
    db $10                                        ; $4682: $10
    rrca                                          ; $4683: $0f
    rst $38                                       ; $4684: $ff
    ldh [$1f], a                                  ; $4685: $e0 $1f
    add b                                         ; $4687: $80
    ld a, a                                       ; $4688: $7f
    ld d, a                                       ; $4689: $57
    xor d                                         ; $468a: $aa
    push af                                       ; $468b: $f5
    ld a, [bc]                                    ; $468c: $0a
    cp a                                          ; $468d: $bf
    sbc a                                         ; $468e: $9f
    jr nz, jr_072_464a                            ; $468f: $20 $b9

    ld [bc], a                                    ; $4691: $02
    ld h, a                                       ; $4692: $67
    sbc b                                         ; $4693: $98
    rrca                                          ; $4694: $0f
    and e                                         ; $4695: $a3
    ld c, d                                       ; $4696: $4a
    rst $38                                       ; $4697: $ff
    or l                                          ; $4698: $b5
    db $f4                                        ; $4699: $f4
    dec bc                                        ; $469a: $0b
    sbc l                                         ; $469b: $9d
    ld [hl+], a                                   ; $469c: $22
    cp d                                          ; $469d: $ba
    rlca                                          ; $469e: $07
    ld a, e                                       ; $469f: $7b
    ld e, a                                       ; $46a0: $5f
    add b                                         ; $46a1: $80
    inc c                                         ; $46a2: $0c
    di                                            ; $46a3: $f3
    rlca                                          ; $46a4: $07
    ld hl, sp-$41                                 ; $46a5: $f8 $bf
    and c                                         ; $46a7: $a1
    add b                                         ; $46a8: $80
    sbc [hl]                                      ; $46a9: $9e
    nop                                           ; $46aa: $00
    db $ed                                        ; $46ab: $ed
    and b                                         ; $46ac: $a0
    sbc d                                         ; $46ad: $9a
    nop                                           ; $46ae: $00
    ld l, b                                       ; $46af: $68
    rst $38                                       ; $46b0: $ff
    sub b                                         ; $46b1: $90
    pop bc                                        ; $46b2: $c1
    rla                                           ; $46b3: $17
    add sp, -$2f                                  ; $46b4: $e8 $d1
    rst $20                                       ; $46b6: $e7
    nop                                           ; $46b7: $00
    ld l, $d1                                     ; $46b8: $2e $d1
    add b                                         ; $46ba: $80
    pop hl                                        ; $46bb: $e1
    ret nz                                        ; $46bc: $c0

    db $e3                                        ; $46bd: $e3
    or b                                          ; $46be: $b0
    rrca                                          ; $46bf: $0f
    add $fc                                       ; $46c0: $c6 $fc
    sub b                                         ; $46c2: $90
    call nz, $e3d0                                ; $46c3: $c4 $d0 $e3
    dec a                                         ; $46c6: $3d
    ret nz                                        ; $46c7: $c0

    ld e, a                                       ; $46c8: $5f
    and b                                         ; $46c9: $a0
    inc [hl]                                      ; $46ca: $34
    ret                                           ; $46cb: $c9


    rst $10                                       ; $46cc: $d7
    ld e, d                                       ; $46cd: $5a
    and c                                         ; $46ce: $a1
    ld a, l                                       ; $46cf: $7d
    sub b                                         ; $46d0: $90
    ret nz                                        ; $46d1: $c0

    ld c, h                                       ; $46d2: $4c
    sub b                                         ; $46d3: $90
    ret nz                                        ; $46d4: $c0

    ld d, l                                       ; $46d5: $55
    cp a                                          ; $46d6: $bf
    ei                                            ; $46d7: $fb
    adc [hl]                                      ; $46d8: $8e
    ld a, a                                       ; $46d9: $7f
    sub b                                         ; $46da: $90
    jp z, Jump_072_5ac8                           ; $46db: $ca $c8 $5a

    and c                                         ; $46de: $a1
    inc a                                         ; $46df: $3c
    jp Jump_072_537f                              ; $46e0: $c3 $7f $53


    xor [hl]                                      ; $46e3: $ae
    ld [hl], a                                    ; $46e4: $77
    call $bf42                                    ; $46e5: $cd $42 $bf
    dec d                                         ; $46e8: $15
    ld l, d                                       ; $46e9: $6a
    ld h, b                                       ; $46ea: $60
    cp $6b                                        ; $46eb: $fe $6b
    add c                                         ; $46ed: $81
    ret nz                                        ; $46ee: $c0

    ccf                                           ; $46ef: $3f
    ld b, b                                       ; $46f0: $40
    cp a                                          ; $46f1: $bf
    ld b, b                                       ; $46f2: $40
    rst $38                                       ; $46f3: $ff
    or b                                          ; $46f4: $b0
    cp a                                          ; $46f5: $bf
    rst $28                                       ; $46f6: $ef
    call z, $a4f3                                 ; $46f7: $cc $f3 $a4
    ei                                            ; $46fa: $fb
    dec d                                         ; $46fb: $15
    cp h                                          ; $46fc: $bc
    ret nz                                        ; $46fd: $c0

    dec b                                         ; $46fe: $05
    xor e                                         ; $46ff: $ab
    rst $38                                       ; $4700: $ff
    ld [bc], a                                    ; $4701: $02
    add hl, hl                                    ; $4702: $29
    and [hl]                                      ; $4703: $a6
    ld d, e                                       ; $4704: $53
    or b                                          ; $4705: $b0
    ret nz                                        ; $4706: $c0

    ld [hl], l                                    ; $4707: $75
    or b                                          ; $4708: $b0
    ret z                                         ; $4709: $c8

    ld [hl], a                                    ; $470a: $77
    xor e                                         ; $470b: $ab
    adc b                                         ; $470c: $88
    call z, $cab0                                 ; $470d: $cc $b0 $ca
    scf                                           ; $4710: $37
    or b                                          ; $4711: $b0
    call z, $b04e                                 ; $4712: $cc $4e $b0
    adc $ae                                       ; $4715: $ce $ae
    db $db                                        ; $4717: $db
    ld sp, hl                                     ; $4718: $f9
    ld a, c                                       ; $4719: $79
    or b                                          ; $471a: $b0
    ret z                                         ; $471b: $c8

    cp a                                          ; $471c: $bf
    ld e, a                                       ; $471d: $5f
    or b                                          ; $471e: $b0
    jp $e21d                                      ; $471f: $c3 $1d $e2


    ei                                            ; $4722: $fb
    ld [$20f7], sp                                ; $4723: $08 $f7 $20
    pop hl                                        ; $4726: $e1
    dec l                                         ; $4727: $2d
    ret nc                                        ; $4728: $d0

    sbc d                                         ; $4729: $9a
    ld h, c                                       ; $472a: $61
    ld a, [hl]                                    ; $472b: $7e
    cp e                                          ; $472c: $bb
    add c                                         ; $472d: $81
    add sp, $30                                   ; $472e: $e8 $30
    and $61                                       ; $4730: $e6 $61
    ld e, $95                                     ; $4732: $1e $95
    or b                                          ; $4734: $b0
    ret nz                                        ; $4735: $c0

    add hl, sp                                    ; $4736: $39
    rst $30                                       ; $4737: $f7
    jp nz, $f00f                                  ; $4738: $c2 $0f $f0

    rst $38                                       ; $473b: $ff
    ld h, e                                       ; $473c: $63
    ld d, a                                       ; $473d: $57
    xor b                                         ; $473e: $a8
    ei                                            ; $473f: $fb
    nop                                           ; $4740: $00
    cp a                                          ; $4741: $bf
    sbc [hl]                                      ; $4742: $9e
    ld hl, $07a8                                  ; $4743: $21 $a8 $07
    ld [hl], b                                    ; $4746: $70
    adc a                                         ; $4747: $8f
    rst $28                                       ; $4748: $ef
    ld h, e                                       ; $4749: $63
    inc c                                         ; $474a: $0c
    rst $38                                       ; $474b: $ff
    rst $30                                       ; $474c: $f7
    reti                                          ; $474d: $d9


    ld l, a                                       ; $474e: $6f
    ld [$63ff], sp                                ; $474f: $08 $ff $63
    cp l                                          ; $4752: $bd
    sub $ff                                       ; $4753: $d6 $ff
    ld l, e                                       ; $4755: $6b
    ld l, d                                       ; $4756: $6a
    rst $18                                       ; $4757: $df
    jr nc, @-$1f                                  ; $4758: $30 $df

    ld d, e                                       ; $475a: $53
    db $fd                                        ; $475b: $fd
    nop                                           ; $475c: $00
    rst $38                                       ; $475d: $ff
    rst $38                                       ; $475e: $ff
    ld e, l                                       ; $475f: $5d
    rst $20                                       ; $4760: $e7
    ld [$40ff], sp                                ; $4761: $08 $ff $40
    cp a                                          ; $4764: $bf
    ld l, h                                       ; $4765: $6c
    ei                                            ; $4766: $fb
    or a                                          ; $4767: $b7
    ld c, b                                       ; $4768: $48
    call c, Call_072_40c0                         ; $4769: $dc $c0 $40
    rst $38                                       ; $476c: $ff
    inc b                                         ; $476d: $04
    ei                                            ; $476e: $fb
    ld e, d                                       ; $476f: $5a
    ld sp, hl                                     ; $4770: $f9
    and l                                         ; $4771: $a5
    dec sp                                        ; $4772: $3b
    add b                                         ; $4773: $80
    ld b, c                                       ; $4774: $41
    nop                                           ; $4775: $00
    rst $38                                       ; $4776: $ff
    rst $38                                       ; $4777: $ff
    ld e, d                                       ; $4778: $5a
    and l                                         ; $4779: $a5
    jr nz, @+$01                                  ; $477a: $20 $ff

    rst $18                                       ; $477c: $df
    inc h                                         ; $477d: $24
    rst $20                                       ; $477e: $e7
    ld h, [hl]                                    ; $477f: $66
    and l                                         ; $4780: $a5
    dec h                                         ; $4781: $25
    and $66                                       ; $4782: $e6 $66
    rst $38                                       ; $4784: $ff
    and l                                         ; $4785: $a5
    ld h, [hl]                                    ; $4786: $66
    and l                                         ; $4787: $a5
    and h                                         ; $4788: $a4
    ld h, a                                       ; $4789: $67
    ld h, [hl]                                    ; $478a: $66
    and l                                         ; $478b: $a5
    inc h                                         ; $478c: $24
    cp $70                                        ; $478d: $fe $70
    ret nz                                        ; $478f: $c0

    ld bc, $05fe                                  ; $4790: $01 $fe $05
    ei                                            ; $4793: $fb
    ld e, $e6                                     ; $4794: $1e $e6
    jr @+$01                                      ; $4796: $18 $ff

    add sp, $30                                   ; $4798: $e8 $30
    ret nc                                        ; $479a: $d0

    ld de, $63f3                                  ; $479b: $11 $f3 $63
    and d                                         ; $479e: $a2
    ld d, l                                       ; $479f: $55
    ei                                            ; $47a0: $fb
    nop                                           ; $47a1: $00
    cp d                                          ; $47a2: $ba
    sbc [hl]                                      ; $47a3: $9e
    add b                                         ; $47a4: $80
    xor e                                         ; $47a5: $ab
    nop                                           ; $47a6: $00
    ld e, l                                       ; $47a7: $5d
    nop                                           ; $47a8: $00
    ld [$96fa], a                                 ; $47a9: $ea $fa $96
    add b                                         ; $47ac: $80
    xor [hl]                                      ; $47ad: $ae
    sub d                                         ; $47ae: $92
    add b                                         ; $47af: $80
    adc d                                         ; $47b0: $8a
    nop                                           ; $47b1: $00
    ld d, h                                       ; $47b2: $54
    nop                                           ; $47b3: $00
    xor d                                         ; $47b4: $aa
    cp $f0                                        ; $47b5: $fe $f0
    ldh [$aa], a                                  ; $47b7: $e0 $aa
    nop                                           ; $47b9: $00
    dec d                                         ; $47ba: $15
    nop                                           ; $47bb: $00
    xor b                                         ; $47bc: $a8
    nop                                           ; $47bd: $00
    ld d, c                                       ; $47be: $51
    rst $38                                       ; $47bf: $ff
    nop                                           ; $47c0: $00
    ld [$2200], sp                                ; $47c1: $08 $00 $22
    nop                                           ; $47c4: $00
    sub h                                         ; $47c5: $94
    nop                                           ; $47c6: $00
    add hl, hl                                    ; $47c7: $29
    xor a                                         ; $47c8: $af
    nop                                           ; $47c9: $00
    ld b, h                                       ; $47ca: $44
    nop                                           ; $47cb: $00
    db $10                                        ; $47cc: $10
    db $e4                                        ; $47cd: $e4
    ldh [rP1], a                                  ; $47ce: $e0 $00
    ld [hl], e                                    ; $47d0: $73
    nop                                           ; $47d1: $00
    ld bc, $94ce                                  ; $47d2: $01 $ce $94
    nop                                           ; $47d5: $00
    jr nz, jr_072_47d8                            ; $47d6: $20 $00

jr_072_47d8:
    add b                                         ; $47d8: $80
    adc [hl]                                      ; $47d9: $8e
    nop                                           ; $47da: $00
    rst $38                                       ; $47db: $ff
    ldh a, [rNR23]                                ; $47dc: $f0 $18
    inc a                                         ; $47de: $3c
    rst $38                                       ; $47df: $ff
    ld a, [hl]                                    ; $47e0: $7e
    ld a, [hl]                                    ; $47e1: $7e
    rst $38                                       ; $47e2: $ff
    ld [hl], b                                    ; $47e3: $70
    rst $38                                       ; $47e4: $ff
    ld a, b                                       ; $47e5: $78
    db $fc                                        ; $47e6: $fc
    inc a                                         ; $47e7: $3c
    rst $38                                       ; $47e8: $ff
    cp $80                                        ; $47e9: $fe $80
    ld a, h                                       ; $47eb: $7c
    ld h, h                                       ; $47ec: $64
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    ld [$ff1c], sp                                ; $47ef: $08 $1c $ff
    ld a, $36                                     ; $47f2: $3e $36
    ld a, a                                       ; $47f4: $7f
    and [hl]                                      ; $47f5: $a6
    ld a, a                                       ; $47f6: $7f
    add h                                         ; $47f7: $84
    ld l, a                                       ; $47f8: $6f
    ld b, b                                       ; $47f9: $40
    ei                                            ; $47fa: $fb

jr_072_47fb:
    ld c, $08                                     ; $47fb: $0e $08
    ld l, c                                       ; $47fd: $69
    ld [c], a                                     ; $47fe: $e2
    inc bc                                        ; $47ff: $03
    rst $38                                       ; $4800: $ff
    ld b, $ff                                     ; $4801: $06 $ff
    inc b                                         ; $4803: $04
    rst $28                                       ; $4804: $ef
    rst $38                                       ; $4805: $ff
    rlca                                          ; $4806: $07
    db $fc                                        ; $4807: $fc
    dec sp                                        ; $4808: $3b
    adc c                                         ; $4809: $89
    nop                                           ; $480a: $00
    ld c, h                                       ; $480b: $4c
    di                                            ; $480c: $f3
    ld [hl], a                                    ; $480d: $77
    rst $38                                       ; $480e: $ff
    rst $38                                       ; $480f: $ff
    sbc c                                         ; $4810: $99
    rst $38                                       ; $4811: $ff
    ld b, [hl]                                    ; $4812: $46
    cp c                                          ; $4813: $b9
    rst $28                                       ; $4814: $ef
    db $10                                        ; $4815: $10
    rst $38                                       ; $4816: $ff
    cp a                                          ; $4817: $bf
    nop                                           ; $4818: $00
    ld h, [hl]                                    ; $4819: $66
    sbc c                                         ; $481a: $99
    nop                                           ; $481b: $00
    rst $38                                       ; $481c: $ff
    ld h, [hl]                                    ; $481d: $66
    ld h, $a0                                     ; $481e: $26 $a0
    cp l                                          ; $4820: $bd
    rst $18                                       ; $4821: $df
    jp $c7b9                                      ; $4822: $c3 $b9 $c7


    inc de                                        ; $4825: $13
    rst $28                                       ; $4826: $ef
    ld hl, sp-$1f                                 ; $4827: $f8 $e1
    cp l                                          ; $4829: $bd
    jp $1bff                                      ; $482a: $c3 $ff $1b


    rst $20                                       ; $482d: $e7
    db $fc                                        ; $482e: $fc
    rst $38                                       ; $482f: $ff
    db $fd                                        ; $4830: $fd
    cp $f1                                        ; $4831: $fe $f1
    cp $ff                                        ; $4833: $fe $ff
    di                                            ; $4835: $f3
    db $fc                                        ; $4836: $fc
    jp $dcfc                                      ; $4837: $c3 $fc $dc


    db $e3                                        ; $483a: $e3
    dec e                                         ; $483b: $1d
    db $e3                                        ; $483c: $e3
    rst $38                                       ; $483d: $ff
    ld a, $c3                                     ; $483e: $3e $c3
    reti                                          ; $4840: $d9


    sbc a                                         ; $4841: $9f
    sbc l                                         ; $4842: $9d
    ld c, a                                       ; $4843: $4f
    ld h, $17                                     ; $4844: $26 $17
    rst $38                                       ; $4846: $ff
    and e                                         ; $4847: $a3
    di                                            ; $4848: $f3
    db $db                                        ; $4849: $db
    pop hl                                        ; $484a: $e1
    ld l, [hl]                                    ; $484b: $6e
    pop af                                        ; $484c: $f1
    inc [hl]                                      ; $484d: $34
    ei                                            ; $484e: $fb
    rst $38                                       ; $484f: $ff
    cp c                                          ; $4850: $b9
    rst $18                                       ; $4851: $df
    reti                                          ; $4852: $d9


    sbc a                                         ; $4853: $9f
    sbc h                                         ; $4854: $9c
    ld c, a                                       ; $4855: $4f
    daa                                           ; $4856: $27
    ld d, $fe                                     ; $4857: $16 $fe
    ldh a, [$e5]                                  ; $4859: $f0 $e5
    reti                                          ; $485b: $d9


    rst $38                                       ; $485c: $ff
    rst $20                                       ; $485d: $e7
    jr @-$3b                                      ; $485e: $18 $c3

    inc h                                         ; $4860: $24
    rst $20                                       ; $4861: $e7
    ld a, a                                       ; $4862: $7f
    inc h                                         ; $4863: $24
    rst $38                                       ; $4864: $ff
    inc a                                         ; $4865: $3c
    db $db                                        ; $4866: $db
    inc a                                         ; $4867: $3c
    rst $20                                       ; $4868: $e7
    jr jr_072_47fb                                ; $4869: $18 $90

    ld b, c                                       ; $486b: $41
    rst $38                                       ; $486c: $ff

Jump_072_486d:
    ld h, a                                       ; $486d: $67
    sbc d                                         ; $486e: $9a
    call nz, $0b8a                                ; $486f: $c4 $8a $0b
    ret nz                                        ; $4872: $c0

    ld b, d                                       ; $4873: $42
    and b                                         ; $4874: $a0
    rst $38                                       ; $4875: $ff
    db $10                                        ; $4876: $10
    ret nz                                        ; $4877: $c0

    jp hl                                         ; $4878: $e9


    add b                                         ; $4879: $80
    ld h, b                                       ; $487a: $60
    sub c                                         ; $487b: $91
    adc e                                         ; $487c: $8b
    ld h, b                                       ; $487d: $60
    rst $38                                       ; $487e: $ff
    ld d, $a9                                     ; $487f: $16 $a9

jr_072_4881:
    pop hl                                        ; $4881: $e1
    dec bc                                        ; $4882: $0b
    adc d                                         ; $4883: $8a
    daa                                           ; $4884: $27
    daa                                           ; $4885: $27
    rrca                                          ; $4886: $0f
    sbc a                                         ; $4887: $9f
    xor l                                         ; $4888: $ad
    rra                                           ; $4889: $1f
    sub $3f                                       ; $488a: $d6 $3f
    ld a, l                                       ; $488c: $7d
    halt                                          ; $488d: $76
    add b                                         ; $488e: $80
    jr nz, jr_072_48b8                            ; $488f: $20 $27

    inc h                                         ; $4891: $24
    rst $38                                       ; $4892: $ff
    db $db                                        ; $4893: $db
    inc c                                         ; $4894: $0c
    rst $30                                       ; $4895: $f7
    ld [hl], $cf                                  ; $4896: $36 $cf
    jr jr_072_4881                                ; $4898: $18 $e7

    sub $ff                                       ; $489a: $d6 $ff
    rrca                                          ; $489c: $0f
    ld e, c                                       ; $489d: $59
    and [hl]                                      ; $489e: $a6
    ld b, d                                       ; $489f: $42
    rrca                                          ; $48a0: $0f
    ei                                            ; $48a1: $fb
    nop                                           ; $48a2: $00
    inc e                                         ; $48a3: $1c
    rst $18                                       ; $48a4: $df
    inc bc                                        ; $48a5: $03
    cp a                                          ; $48a6: $bf
    nop                                           ; $48a7: $00
    sbc c                                         ; $48a8: $99
    ld h, [hl]                                    ; $48a9: $66
    jr c, jr_072_48cd                             ; $48aa: $38 $21

    dec a                                         ; $48ac: $3d
    jp nz, Jump_000_18e7                          ; $48ad: $c2 $e7 $18

    rst $20                                       ; $48b0: $e7
    add hl, de                                    ; $48b1: $19
    jr nc, jr_072_48d8                            ; $48b2: $30 $24

    db $10                                        ; $48b4: $10
    add c                                         ; $48b5: $81
    ld d, [hl]                                    ; $48b6: $56
    xor c                                         ; $48b7: $a9

jr_072_48b8:
    ld [hl+], a                                   ; $48b8: $22
    di                                            ; $48b9: $f3
    rst $38                                       ; $48ba: $ff
    ld [hl], l                                    ; $48bb: $75
    sub b                                         ; $48bc: $90
    add h                                         ; $48bd: $84
    add b                                         ; $48be: $80
    and e                                         ; $48bf: $a3
    ld de, $1fef                                  ; $48c0: $11 $ef $1f
    ldh [$bf], a                                  ; $48c3: $e0 $bf
    dec a                                         ; $48c5: $3d
    rst $00                                       ; $48c6: $c7
    inc sp                                        ; $48c7: $33
    rst $08                                       ; $48c8: $cf
    dec l                                         ; $48c9: $2d
    rst $10                                       ; $48ca: $d7
    ldh [$65], a                                  ; $48cb: $e0 $65

jr_072_48cd:
    jr z, @+$01                                   ; $48cd: $28 $ff

    rst $10                                       ; $48cf: $d7
    ld b, h                                       ; $48d0: $44
    ei                                            ; $48d1: $fb
    or h                                          ; $48d2: $b4
    rst $38                                       ; $48d3: $ff
    ret nc                                        ; $48d4: $d0

    rst $38                                       ; $48d5: $ff
    db $db                                        ; $48d6: $db
    rst $38                                       ; $48d7: $ff

jr_072_48d8:
    inc a                                         ; $48d8: $3c
    rst $00                                       ; $48d9: $c7
    inc l                                         ; $48da: $2c
    xor l                                         ; $48db: $ad
    ld l, [hl]                                    ; $48dc: $6e
    sub e                                         ; $48dd: $93
    ld c, [hl]                                    ; $48de: $4e
    rst $08                                       ; $48df: $cf
    rst $38                                       ; $48e0: $ff
    ld b, [hl]                                    ; $48e1: $46
    ld a, [de]                                    ; $48e2: $1a
    rst $08                                       ; $48e3: $cf
    ld hl, $8f9f                                  ; $48e4: $21 $9f $8f
    add e                                         ; $48e7: $83
    rra                                           ; $48e8: $1f

jr_072_48e9:
    rst $38                                       ; $48e9: $ff
    rst $00                                       ; $48ea: $c7
    db $d3                                        ; $48eb: $d3
    ld l, [hl]                                    ; $48ec: $6e
    cp l                                          ; $48ed: $bd
    ld a, [hl]                                    ; $48ee: $7e
    db $eb                                        ; $48ef: $eb
    inc a                                         ; $48f0: $3c
    rst $38                                       ; $48f1: $ff
    rst $38                                       ; $48f2: $ff
    ld l, $ef                                     ; $48f3: $2e $ef
    cpl                                           ; $48f5: $2f
    rst $18                                       ; $48f6: $df
    ccf                                           ; $48f7: $3f
    cp $0f                                        ; $48f8: $fe $0f
    jr @+$01                                      ; $48fa: $18 $ff

    rst $38                                       ; $48fc: $ff
    inc b                                         ; $48fd: $04
    rst $28                                       ; $48fe: $ef
    inc l                                         ; $48ff: $2c
    rst $28                                       ; $4900: $ef
    ld [de], a                                    ; $4901: $12
    rst $08                                       ; $4902: $cf
    ld c, [hl]                                    ; $4903: $4e
    db $fd                                        ; $4904: $fd
    rst $00                                       ; $4905: $c7
    ldh [$e5], a                                  ; $4906: $e0 $e5
    ld d, d                                       ; $4908: $52
    rst $28                                       ; $4909: $ef
    inc a                                         ; $490a: $3c
    rst $38                                       ; $490b: $ff
    jr z, @+$01                                   ; $490c: $28 $ff

    rst $38                                       ; $490e: $ff
    ld a, $ef                                     ; $490f: $3e $ef
    cpl                                           ; $4911: $2f
    rst $28                                       ; $4912: $ef
    rra                                           ; $4913: $1f
    rst $38                                       ; $4914: $ff
    ld c, $ff                                     ; $4915: $0e $ff
    rst $38                                       ; $4917: $ff
    jr nz, jr_072_48e9                            ; $4918: $20 $cf

    or [hl]                                       ; $491a: $b6
    dec hl                                        ; $491b: $2b
    db $ed                                        ; $491c: $ed
    cp d                                          ; $491d: $ba
    dec sp                                        ; $491e: $3b
    rst $18                                       ; $491f: $df
    rst $10                                       ; $4920: $d7
    halt                                          ; $4921: $76
    rst $18                                       ; $4922: $df
    ld d, h                                       ; $4923: $54
    jr jr_072_4946                                ; $4924: $18 $20

    ld a, [hl+]                                   ; $4926: $2a
    ld e, b                                       ; $4927: $58
    nop                                           ; $4928: $00
    dec b                                         ; $4929: $05
    cp $ff                                        ; $492a: $fe $ff
    xor e                                         ; $492c: $ab
    db $fc                                        ; $492d: $fc
    dec c                                         ; $492e: $0d
    ld a, [$fdb2]                                 ; $492f: $fa $b2 $fd
    ld d, l                                       ; $4932: $55
    ld [$a8ff], a                                 ; $4933: $ea $ff $a8
    rst $10                                       ; $4936: $d7
    db $f4                                        ; $4937: $f4
    adc e                                         ; $4938: $8b
    or b                                          ; $4939: $b0
    rrca                                          ; $493a: $0f
    sbc $7f                                       ; $493b: $de $7f
    rst $18                                       ; $493d: $df
    add hl, hl                                    ; $493e: $29
    cp $55                                        ; $493f: $fe $55
    rst $38                                       ; $4941: $ff
    cp [hl]                                       ; $4942: $be
    ld l, [hl]                                    ; $4943: $6e
    ldh [$aa], a                                  ; $4944: $e0 $aa

jr_072_4946:
    rst $38                                       ; $4946: $ff
    cpl                                           ; $4947: $2f
    ret nz                                        ; $4948: $c0

    rst $38                                       ; $4949: $ff
    sbc b                                         ; $494a: $98
    ld h, a                                       ; $494b: $67
    add b                                         ; $494c: $80
    pop hl                                        ; $494d: $e1
    ld e, b                                       ; $494e: $58
    ld d, b                                       ; $494f: $50
    ld b, $10                                     ; $4950: $06 $10
    ld l, e                                       ; $4952: $6b
    db $fd                                        ; $4953: $fd
    dec hl                                        ; $4954: $2b
    ld d, b                                       ; $4955: $50
    ld l, b                                       ; $4956: $68
    inc a                                         ; $4957: $3c
    inc bc                                        ; $4958: $03
    add h                                         ; $4959: $84
    ld [hl], e                                    ; $495a: $73
    or h                                          ; $495b: $b4
    db $eb                                        ; $495c: $eb
    ei                                            ; $495d: $fb
    inc hl                                        ; $495e: $23
    call z, $e1a0                                 ; $495f: $cc $a0 $e1
    ld a, [hl-]                                   ; $4962: $3a
    rst $18                                       ; $4963: $df
    rst $30                                       ; $4964: $f7
    ld e, [hl]                                    ; $4965: $5e
    push de                                       ; $4966: $d5
    rst $18                                       ; $4967: $df
    ld a, [hl]                                    ; $4968: $7e
    db $dd                                        ; $4969: $dd
    ld a, a                                       ; $496a: $7f
    ei                                            ; $496b: $fb
    ld l, $48                                     ; $496c: $2e $48
    inc bc                                        ; $496e: $03
    add hl, de                                    ; $496f: $19
    rst $20                                       ; $4970: $e7
    rst $38                                       ; $4971: $ff
    rla                                           ; $4972: $17
    xor $3f                                       ; $4973: $ee $3f
    ret z                                         ; $4975: $c8

    cpl                                           ; $4976: $2f
    ret c                                         ; $4977: $d8

    rra                                           ; $4978: $1f
    ldh a, [$f5]                                  ; $4979: $f0 $f5
    db $fd                                        ; $497b: $fd
    xor d                                         ; $497c: $aa
    nop                                           ; $497d: $00
    jp c, Jump_072_4048                           ; $497e: $da $48 $40

    xor a                                         ; $4981: $af
    cp $df                                        ; $4982: $fe $df
    ld hl, sp-$51                                 ; $4984: $f8 $af
    ld l, a                                       ; $4986: $6f
    ld hl, sp-$21                                 ; $4987: $f8 $df
    ldh a, [$c3]                                  ; $4989: $f0 $c3
    ld b, b                                       ; $498b: $40
    inc a                                         ; $498c: $3c
    ld h, $61                                     ; $498d: $26 $61
    ccf                                           ; $498f: $3f
    ld a, a                                       ; $4990: $7f
    jp $c73e                                      ; $4991: $c3 $3e $c7


    db $dd                                        ; $4994: $dd
    cpl                                           ; $4995: $2f
    jp c, $f02f                                   ; $4996: $da $2f $f0

    push hl                                       ; $4999: $e5
    rst $38                                       ; $499a: $ff
    dec a                                         ; $499b: $3d
    jp $c73c                                      ; $499c: $c3 $3c $c7


    ret nc                                        ; $499f: $d0

    cpl                                           ; $49a0: $2f
    ret c                                         ; $49a1: $d8

    cpl                                           ; $49a2: $2f
    rst $38                                       ; $49a3: $ff
    rra                                           ; $49a4: $1f
    and $39                                       ; $49a5: $e6 $39
    ret                                           ; $49a7: $c9


    cp c                                          ; $49a8: $b9
    ld c, c                                       ; $49a9: $49
    ld e, a                                       ; $49aa: $5f
    xor a                                         ; $49ab: $af
    rst $28                                       ; $49ac: $ef
    ld d, [hl]                                    ; $49ad: $56
    rst $28                                       ; $49ae: $ef
    cp b                                          ; $49af: $b8
    rst $20                                       ; $49b0: $e7
    ld b, b                                       ; $49b1: $40
    ld h, c                                       ; $49b2: $61
    ld hl, sp-$08                                 ; $49b3: $f8 $f8
    db $e3                                        ; $49b5: $e3
    rst $28                                       ; $49b6: $ef
    ldh [$cf], a                                  ; $49b7: $e0 $cf
    ret nz                                        ; $49b9: $c0

    sbc a                                         ; $49ba: $9f
    ld b, d                                       ; $49bb: $42
    jr nz, @+$40                                  ; $49bc: $20 $3e

    nop                                           ; $49be: $00
    ld l, e                                       ; $49bf: $6b
    rst $38                                       ; $49c0: $ff
    nop                                           ; $49c1: $00
    ld a, [hl]                                    ; $49c2: $7e

jr_072_49c3:
    nop                                           ; $49c3: $00
    rra                                           ; $49c4: $1f
    rra                                           ; $49c5: $1f
    rst $00                                       ; $49c6: $c7
    rlca                                          ; $49c7: $07
    di                                            ; $49c8: $f3
    rst $38                                       ; $49c9: $ff
    inc bc                                        ; $49ca: $03
    xor c                                         ; $49cb: $a9
    ld bc, $01f5                                  ; $49cc: $01 $f5 $01
    and b                                         ; $49cf: $a0
    nop                                           ; $49d0: $00
    jp nc, $bcfe                                  ; $49d1: $d2 $fe $bc

    and b                                         ; $49d4: $a0
    ld d, l                                       ; $49d5: $55
    nop                                           ; $49d6: $00
    jr z, jr_072_49d9                             ; $49d7: $28 $00

jr_072_49d9:
    add b                                         ; $49d9: $80
    add b                                         ; $49da: $80
    jp hl                                         ; $49db: $e9


    xor a                                         ; $49dc: $af
    jp hl                                         ; $49dd: $e9


    rst $30                                       ; $49de: $f7
    rst $38                                       ; $49df: $ff
    ld [c], a                                     ; $49e0: $e2
    ld h, d                                       ; $49e1: $62

jr_072_49e2:
    jr nz, jr_072_49e2                            ; $49e2: $20 $fe

    ld b, [hl]                                    ; $49e4: $46
    and b                                         ; $49e5: $a0
    dec d                                         ; $49e6: $15
    cp a                                          ; $49e7: $bf
    dec d                                         ; $49e8: $15
    xor e                                         ; $49e9: $ab
    xor e                                         ; $49ea: $ab
    ld a, a                                       ; $49eb: $7f
    ld a, a                                       ; $49ec: $7f
    rst $18                                       ; $49ed: $df
    ld [hl], $00                                  ; $49ee: $36 $00
    ld a, a                                       ; $49f0: $7f
    cp $33                                        ; $49f1: $fe $33
    ld [hl+], a                                   ; $49f3: $22
    ei                                            ; $49f4: $fb
    rst $30                                       ; $49f5: $f7
    jp hl                                         ; $49f6: $e9


    rst $30                                       ; $49f7: $f7
    ld sp, hl                                     ; $49f8: $f9
    rst $20                                       ; $49f9: $e7
    jp z, $f77f                                   ; $49fa: $ca $7f $f7

    pop af                                        ; $49fd: $f1
    rst $08                                       ; $49fe: $cf
    xor b                                         ; $49ff: $a8
    rst $10                                       ; $4a00: $d7
    ldh a, [$8f]                                  ; $4a01: $f0 $8f
    ld a, a                                       ; $4a03: $7f
    dec bc                                        ; $4a04: $0b
    rst $38                                       ; $4a05: $ff
    rst $30                                       ; $4a06: $f7
    rst $28                                       ; $4a07: $ef
    xor c                                         ; $4a08: $a9
    rst $10                                       ; $4a09: $d7
    ldh [$9f], a                                  ; $4a0a: $e0 $9f
    ld d, d                                       ; $4a0c: $52
    xor a                                         ; $4a0d: $af
    rst $38                                       ; $4a0e: $ff
    pop hl                                        ; $4a0f: $e1
    rra                                           ; $4a10: $1f
    dec hl                                        ; $4a11: $2b
    rst $10                                       ; $4a12: $d7
    pop af                                        ; $4a13: $f1
    adc a                                         ; $4a14: $8f
    and e                                         ; $4a15: $a3
    rst $18                                       ; $4a16: $df
    rst $38                                       ; $4a17: $ff
    push de                                       ; $4a18: $d5
    rst $28                                       ; $4a19: $ef
    ld d, a                                       ; $4a1a: $57
    rst $28                                       ; $4a1b: $ef
    di                                            ; $4a1c: $f3
    rst $08                                       ; $4a1d: $cf
    sub a                                         ; $4a1e: $97
    rst $28                                       ; $4a1f: $ef
    rst $38                                       ; $4a20: $ff
    db $e3                                        ; $4a21: $e3
    sbc a                                         ; $4a22: $9f
    pop de                                        ; $4a23: $d1
    xor a                                         ; $4a24: $af
    ld h, e                                       ; $4a25: $63
    sbc a                                         ; $4a26: $9f
    push bc                                       ; $4a27: $c5
    ccf                                           ; $4a28: $3f
    rst $20                                       ; $4a29: $e7
    ld h, e                                       ; $4a2a: $63
    sbc a                                         ; $4a2b: $9f
    rst $30                                       ; $4a2c: $f7
    jp c, Jump_072_6ee1                           ; $4a2d: $da $e1 $6e

    nop                                           ; $4a30: $00
    rst $30                                       ; $4a31: $f7
    rst $38                                       ; $4a32: $ff
    ld d, d                                       ; $4a33: $52
    ei                                            ; $4a34: $fb
    rst $38                                       ; $4a35: $ff
    db $ed                                        ; $4a36: $ed
    db $e3                                        ; $4a37: $e3
    nop                                           ; $4a38: $00
    add l                                         ; $4a39: $85
    rst $38                                       ; $4a3a: $ff
    xor e                                         ; $4a3b: $ab
    rst $18                                       ; $4a3c: $df
    rst $28                                       ; $4a3d: $ef
    xor e                                         ; $4a3e: $ab
    rst $38                                       ; $4a3f: $ff
    ei                                            ; $4a40: $fb
    jr nc, jr_072_49c3                            ; $4a41: $30 $80

    ld [bc], a                                    ; $4a43: $02
    ld b, b                                       ; $4a44: $40
    ret nz                                        ; $4a45: $c0

    xor a                                         ; $4a46: $af
    ld a, [hl-]                                   ; $4a47: $3a
    inc b                                         ; $4a48: $04
    cp $ff                                        ; $4a49: $fe $ff
    cp $fc                                        ; $4a4b: $fe $fc
    db $fc                                        ; $4a4d: $fc
    ld sp, hl                                     ; $4a4e: $f9
    ld hl, sp-$0d                                 ; $4a4f: $f8 $f3
    ldh a, [$e7]                                  ; $4a51: $f0 $e7
    ccf                                           ; $4a53: $3f
    ldh [rIE], a                                  ; $4a54: $e0 $ff
    rst $38                                       ; $4a56: $ff
    jp $18c3                                      ; $4a57: $c3 $c3 $18


    ld e, b                                       ; $4a5a: $58
    ldh [rHDMA4], a                               ; $4a5b: $e0 $54
    ld bc, $eef9                                  ; $4a5d: $01 $f9 $ee
    ld c, [hl]                                    ; $4a60: $4e
    ld bc, $02af                                  ; $4a61: $01 $af $02
    ld a, a                                       ; $4a64: $7f
    ld a, a                                       ; $4a65: $7f
    ccf                                           ; $4a66: $3f
    ccf                                           ; $4a67: $3f
    sbc a                                         ; $4a68: $9f
    rst $18                                       ; $4a69: $df
    rra                                           ; $4a6a: $1f
    rst $08                                       ; $4a6b: $cf
    rrca                                          ; $4a6c: $0f
    ld h, a                                       ; $4a6d: $67
    rlca                                          ; $4a6e: $07
    ret nc                                        ; $4a6f: $d0

    jp hl                                         ; $4a70: $e9


    ld a, [c]                                     ; $4a71: $f2
    ldh a, [$d7]                                  ; $4a72: $f0 $d7
    ldh [$e0], a                                  ; $4a74: $e0 $e0
    sla h                                         ; $4a76: $cb $24
    ldh [$2f], a                                  ; $4a78: $e0 $2f
    ld c, b                                       ; $4a7a: $48
    nop                                           ; $4a7b: $00
    or a                                          ; $4a7c: $b7
    nop                                           ; $4a7d: $00
    push af                                       ; $4a7e: $f5
    ld e, [hl]                                    ; $4a7f: $5e
    ld h, d                                       ; $4a80: $62
    nop                                           ; $4a81: $00
    ld d, a                                       ; $4a82: $57
    ld l, [hl]                                    ; $4a83: $6e
    nop                                           ; $4a84: $00
    db $dd                                        ; $4a85: $dd
    nop                                           ; $4a86: $00
    ld l, d                                       ; $4a87: $6a
    nop                                           ; $4a88: $00
    db $dd                                        ; $4a89: $dd
    call c, $80be                                 ; $4a8a: $dc $be $80
    call nc, $8800                                ; $4a8d: $d4 $00 $88
    or [hl]                                       ; $4a90: $b6
    add b                                         ; $4a91: $80
    sub e                                         ; $4a92: $93
    inc bc                                        ; $4a93: $03
    db $fd                                        ; $4a94: $fd
    ld c, c                                       ; $4a95: $49
    ld d, $e0                                     ; $4a96: $16 $e0
    inc b                                         ; $4a98: $04
    inc b                                         ; $4a99: $04
    adc e                                         ; $4a9a: $8b
    dec bc                                        ; $4a9b: $0b
    daa                                           ; $4a9c: $27
    daa                                           ; $4a9d: $27
    rst $28                                       ; $4a9e: $ef
    ld a, [bc]                                    ; $4a9f: $0a
    ld a, [bc]                                    ; $4aa0: $0a
    ld d, a                                       ; $4aa1: $57
    ld d, a                                       ; $4aa2: $57
    ld b, [hl]                                    ; $4aa3: $46
    push hl                                       ; $4aa4: $e5
    ld a, a                                       ; $4aa5: $7f
    ld a, a                                       ; $4aa6: $7f
    cp a                                          ; $4aa7: $bf
    rst $38                                       ; $4aa8: $ff
    cp a                                          ; $4aa9: $bf
    rst $38                                       ; $4aaa: $ff
    rst $38                                       ; $4aab: $ff
    rst $28                                       ; $4aac: $ef
    rst $28                                       ; $4aad: $ef
    ret nc                                        ; $4aae: $d0

    ret nc                                        ; $4aaf: $d0

    and b                                         ; $4ab0: $a0
    rst $38                                       ; $4ab1: $ff
    and b                                         ; $4ab2: $a0
    call nz, $aac4                                ; $4ab3: $c4 $c4 $aa
    xor d                                         ; $4ab6: $aa
    push af                                       ; $4ab7: $f5
    push af                                       ; $4ab8: $f5
    sbc $fd                                       ; $4ab9: $de $fd
    sbc $44                                       ; $4abb: $de $44
    ld bc, $00ad                                  ; $4abd: $01 $ad $00
    rlca                                          ; $4ac0: $07
    nop                                           ; $4ac1: $00
    ld a, [bc]                                    ; $4ac2: $0a
    nop                                           ; $4ac3: $00
    rst $38                                       ; $4ac4: $ff
    add l                                         ; $4ac5: $85
    add b                                         ; $4ac6: $80
    nop                                           ; $4ac7: $00
    nop                                           ; $4ac8: $00
    xor b                                         ; $4ac9: $a8
    xor b                                         ; $4aca: $a8
    push de                                       ; $4acb: $d5
    push de                                       ; $4acc: $d5
    rst $18                                       ; $4acd: $df
    ld a, d                                       ; $4ace: $7a
    ld a, d                                       ; $4acf: $7a
    adc b                                         ; $4ad0: $88
    nop                                           ; $4ad1: $00
    ld [bc], a                                    ; $4ad2: $02
    cp b                                          ; $4ad3: $b8
    ldh [rNR42], a                                ; $4ad4: $e0 $21
    ld hl, $0aff                                  ; $4ad6: $21 $ff $0a
    ld a, [bc]                                    ; $4ad9: $0a
    and l                                         ; $4ada: $a5
    and l                                         ; $4adb: $a5
    ld e, e                                       ; $4adc: $5b
    ld e, e                                       ; $4add: $5b
    push hl                                       ; $4ade: $e5
    push hl                                       ; $4adf: $e5
    or $e4                                        ; $4ae0: $f6 $e4
    pop bc                                        ; $4ae2: $c1
    xor a                                         ; $4ae3: $af
    xor a                                         ; $4ae4: $af
    jp nz, $fbe3                                  ; $4ae5: $c2 $e3 $fb

    ei                                            ; $4ae8: $fb
    ld e, [hl]                                    ; $4ae9: $5e
    ld e, [hl]                                    ; $4aea: $5e
    rst $38                                       ; $4aeb: $ff
    rst $30                                       ; $4aec: $f7
    rst $30                                       ; $4aed: $f7
    db $fd                                        ; $4aee: $fd
    db $fd                                        ; $4aef: $fd
    db $eb                                        ; $4af0: $eb
    db $eb                                        ; $4af1: $eb
    ld a, l                                       ; $4af2: $7d
    ld a, l                                       ; $4af3: $7d
    rrca                                          ; $4af4: $0f
    xor a                                         ; $4af5: $af
    xor a                                         ; $4af6: $af
    ld e, e                                       ; $4af7: $5b
    ld e, e                                       ; $4af8: $5b
    push hl                                       ; $4af9: $e5
    pop bc                                        ; $4afa: $c1
    nop                                           ; $4afb: $00
    nop                                           ; $4afc: $00
    nop                                           ; $4afd: $00
    ld bc, $ff46                                  ; $4afe: $01 $46 $ff
    rst $38                                       ; $4b01: $ff
    rst $38                                       ; $4b02: $ff
    rst $38                                       ; $4b03: $ff
    rst $38                                       ; $4b04: $ff
    rst $38                                       ; $4b05: $ff
    rst $38                                       ; $4b06: $ff
    rst $38                                       ; $4b07: $ff
    rst $38                                       ; $4b08: $ff
    rst $38                                       ; $4b09: $ff
    rst $38                                       ; $4b0a: $ff
    rst $38                                       ; $4b0b: $ff
    rst $38                                       ; $4b0c: $ff
    rst $38                                       ; $4b0d: $ff
    nop                                           ; $4b0e: $00
    rst $38                                       ; $4b0f: $ff
    rst $38                                       ; $4b10: $ff
    rst $38                                       ; $4b11: $ff
    rst $38                                       ; $4b12: $ff
    rst $38                                       ; $4b13: $ff
    rst $38                                       ; $4b14: $ff
    rst $38                                       ; $4b15: $ff
    rst $38                                       ; $4b16: $ff
    rst $38                                       ; $4b17: $ff
    rst $38                                       ; $4b18: $ff
    rst $38                                       ; $4b19: $ff
    rst $38                                       ; $4b1a: $ff
    rst $38                                       ; $4b1b: $ff
    rst $38                                       ; $4b1c: $ff
    rst $38                                       ; $4b1d: $ff
    rst $38                                       ; $4b1e: $ff
    nop                                           ; $4b1f: $00
    rst $38                                       ; $4b20: $ff
    rst $38                                       ; $4b21: $ff
    rst $38                                       ; $4b22: $ff
    rst $38                                       ; $4b23: $ff
    rst $38                                       ; $4b24: $ff
    rst $38                                       ; $4b25: $ff
    rst $38                                       ; $4b26: $ff
    rst $38                                       ; $4b27: $ff
    rst $38                                       ; $4b28: $ff
    rst $38                                       ; $4b29: $ff
    rst $38                                       ; $4b2a: $ff
    rst $38                                       ; $4b2b: $ff
    rst $38                                       ; $4b2c: $ff
    rst $38                                       ; $4b2d: $ff
    rst $38                                       ; $4b2e: $ff
    rst $38                                       ; $4b2f: $ff
    nop                                           ; $4b30: $00
    rst $38                                       ; $4b31: $ff
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
    rst $38                                       ; $4b3f: $ff
    rst $38                                       ; $4b40: $ff
    nop                                           ; $4b41: $00
    rst $38                                       ; $4b42: $ff
    rst $38                                       ; $4b43: $ff
    rst $38                                       ; $4b44: $ff
    rst $38                                       ; $4b45: $ff
    rst $38                                       ; $4b46: $ff
    rst $38                                       ; $4b47: $ff
    rst $38                                       ; $4b48: $ff
    rst $38                                       ; $4b49: $ff
    rst $38                                       ; $4b4a: $ff
    rst $38                                       ; $4b4b: $ff
    rst $38                                       ; $4b4c: $ff
    rst $38                                       ; $4b4d: $ff
    rst $38                                       ; $4b4e: $ff
    rst $38                                       ; $4b4f: $ff
    rst $38                                       ; $4b50: $ff
    rst $38                                       ; $4b51: $ff
    adc [hl]                                      ; $4b52: $8e
    rst $38                                       ; $4b53: $ff
    rst $38                                       ; $4b54: $ff
    ld b, [hl]                                    ; $4b55: $46
    ld b, [hl]                                    ; $4b56: $46
    sub a                                         ; $4b57: $97
    rst $38                                       ; $4b58: $ff
    ld a, [c]                                     ; $4b59: $f2

jr_072_4b5a:
    ret z                                         ; $4b5a: $c8

    rst $38                                       ; $4b5b: $ff
    ret nz                                        ; $4b5c: $c0

    and $46                                       ; $4b5d: $e6 $46
    cp a                                          ; $4b5f: $bf
    add hl, sp                                    ; $4b60: $39
    dec [hl]                                      ; $4b61: $35
    dec [hl]                                      ; $4b62: $35
    add hl, sp                                    ; $4b63: $39
    xor e                                         ; $4b64: $ab
    xor h                                         ; $4b65: $ac
    sub $e1                                       ; $4b66: $d6 $e1
    xor e                                         ; $4b68: $ab
    rst $38                                       ; $4b69: $ff
    ld b, [hl]                                    ; $4b6a: $46
    ld a, c                                       ; $4b6b: $79
    ld a, d                                       ; $4b6c: $7a
    ld a, e                                       ; $4b6d: $7b
    ld a, h                                       ; $4b6e: $7c
    ld a, l                                       ; $4b6f: $7d
    sbc d                                         ; $4b70: $9a
    sbc e                                         ; $4b71: $9b
    db $ec                                        ; $4b72: $ec
    ret nz                                        ; $4b73: $c0

    rst $38                                       ; $4b74: $ff
    ret nz                                        ; $4b75: $c0

    jp hl                                         ; $4b76: $e9


    jr c, jr_072_4bb0                             ; $4b77: $38 $37

    pop bc                                        ; $4b79: $c1
    db $e3                                        ; $4b7a: $e3
    ld b, [hl]                                    ; $4b7b: $46
    xor h                                         ; $4b7c: $ac
    ld a, c                                       ; $4b7d: $79
    ccf                                           ; $4b7e: $3f
    ld a, [hl]                                    ; $4b7f: $7e
    ld a, [hl+]                                   ; $4b80: $2a
    cpl                                           ; $4b81: $2f
    ld a, [hl+]                                   ; $4b82: $2a
    add c                                         ; $4b83: $81
    sbc h                                         ; $4b84: $9c
    xor e                                         ; $4b85: $ab
    ldh [rIE], a                                  ; $4b86: $e0 $ff
    rst $38                                       ; $4b88: $ff
    cp [hl]                                       ; $4b89: $be
    add b                                         ; $4b8a: $80
    and $45                                       ; $4b8b: $e6 $45
    ld b, l                                       ; $4b8d: $45
    ld b, [hl]                                    ; $4b8e: $46
    xor h                                         ; $4b8f: $ac
    xor e                                         ; $4b90: $ab
    rst $10                                       ; $4b91: $d7
    db $e3                                        ; $4b92: $e3
    add d                                         ; $4b93: $82
    rrca                                          ; $4b94: $0f
    add e                                         ; $4b95: $83
    dec hl                                        ; $4b96: $2b
    or [hl]                                       ; $4b97: $b6
    jr nc, jr_072_4b5a                            ; $4b98: $30 $c0

    rst $38                                       ; $4b9a: $ff
    ld b, b                                       ; $4b9b: $40
    db $eb                                        ; $4b9c: $eb
    ld c, b                                       ; $4b9d: $48
    pop hl                                        ; $4b9e: $e1
    add b                                         ; $4b9f: $80
    db $e3                                        ; $4ba0: $e3
    rst $38                                       ; $4ba1: $ff
    ld b, [hl]                                    ; $4ba2: $46
    add h                                         ; $4ba3: $84
    ld l, a                                       ; $4ba4: $6f
    add e                                         ; $4ba5: $83
    dec l                                         ; $4ba6: $2d
    ld a, [hl+]                                   ; $4ba7: $2a
    add c                                         ; $4ba8: $81
    sbc [hl]                                      ; $4ba9: $9e
    ld h, b                                       ; $4baa: $60
    ret nz                                        ; $4bab: $c0

    rst $38                                       ; $4bac: $ff
    ret nz                                        ; $4bad: $c0

    db $eb                                        ; $4bae: $eb
    ld b, d                                       ; $4baf: $42

jr_072_4bb0:
    db $e3                                        ; $4bb0: $e3
    ld a, h                                       ; $4bb1: $7c
    pop hl                                        ; $4bb2: $e1
    cp a                                          ; $4bb3: $bf
    ldh [$83], a                                  ; $4bb4: $e0 $83
    ld l, l                                       ; $4bb6: $6d
    add b                                         ; $4bb7: $80
    rst $38                                       ; $4bb8: $ff
    ld hl, sp-$80                                 ; $4bb9: $f8 $80
    db $ec                                        ; $4bbb: $ec
    push bc                                       ; $4bbc: $c5
    ld [c], a                                     ; $4bbd: $e2
    ld a, h                                       ; $4bbe: $7c
    db $e3                                        ; $4bbf: $e3
    add h                                         ; $4bc0: $84
    add l                                         ; $4bc1: $85
    add l                                         ; $4bc2: $85
    add h                                         ; $4bc3: $84
    sbc d                                         ; $4bc4: $9a
    pop af                                        ; $4bc5: $f1
    sbc l                                         ; $4bc6: $9d
    ret nz                                        ; $4bc7: $c0

    rst $38                                       ; $4bc8: $ff
    ret nz                                        ; $4bc9: $c0

    db $eb                                        ; $4bca: $eb
    add d                                         ; $4bcb: $82
    jp nz, Jump_072_4345                          ; $4bcc: $c2 $45 $43

    ld b, c                                       ; $4bcf: $41
    ld b, e                                       ; $4bd0: $43
    sbc [hl]                                      ; $4bd1: $9e
    db $fd                                        ; $4bd2: $fd
    ldh [rLYC], a                                 ; $4bd3: $e0 $45
    xor e                                         ; $4bd5: $ab
    ld b, [hl]                                    ; $4bd6: $46
    sbc h                                         ; $4bd7: $9c
    ret nz                                        ; $4bd8: $c0

    rst $38                                       ; $4bd9: $ff
    nop                                           ; $4bda: $00
    rst $00                                       ; $4bdb: $c7
    ld b, l                                       ; $4bdc: $45
    cp [hl]                                       ; $4bdd: $be
    call c, Call_072_45e4                         ; $4bde: $dc $e4 $45
    ld [hl], $3b                                  ; $4be1: $36 $3b
    dec [hl]                                      ; $4be3: $35
    dec sp                                        ; $4be4: $3b
    db $fd                                        ; $4be5: $fd
    ldh [$36], a                                  ; $4be6: $e0 $36
    jp hl                                         ; $4be8: $e9


    xor h                                         ; $4be9: $ac
    ret nz                                        ; $4bea: $c0

    rst $38                                       ; $4beb: $ff
    ret nz                                        ; $4bec: $c0

    xor c                                         ; $4bed: $a9
    ld [hl], $bf                                  ; $4bee: $36 $bf
    db $e3                                        ; $4bf0: $e3
    xor e                                         ; $4bf1: $ab
    ld b, h                                       ; $4bf2: $44
    inc a                                         ; $4bf3: $3c
    dec sp                                        ; $4bf4: $3b
    and c                                         ; $4bf5: $a1
    ld h, h                                       ; $4bf6: $64
    rst $38                                       ; $4bf7: $ff
    ldh [$a2], a                                  ; $4bf8: $e0 $a2
    inc a                                         ; $4bfa: $3c
    ld b, h                                       ; $4bfb: $44
    ret nz                                        ; $4bfc: $c0

    rst $38                                       ; $4bfd: $ff
    add b                                         ; $4bfe: $80
    xor c                                         ; $4bff: $a9
    db $fd                                        ; $4c00: $fd
    ld h, [hl]                                    ; $4c01: $66
    cp a                                          ; $4c02: $bf
    ld [c], a                                     ; $4c03: $e2
    xor e                                         ; $4c04: $ab
    xor h                                         ; $4c05: $ac
    ld b, d                                       ; $4c06: $42
    dec [hl]                                      ; $4c07: $35
    ld l, c                                       ; $4c08: $69
    and b                                         ; $4c09: $a0
    ccf                                           ; $4c0a: $3f
    dec [hl]                                      ; $4c0b: $35
    dec [hl]                                      ; $4c0c: $35
    and b                                         ; $4c0d: $a0
    ld l, d                                       ; $4c0e: $6a
    dec [hl]                                      ; $4c0f: $35
    ld b, d                                       ; $4c10: $42
    nop                                           ; $4c11: $00
    rst $38                                       ; $4c12: $ff
    ld b, b                                       ; $4c13: $40
    xor c                                         ; $4c14: $a9
    dec l                                         ; $4c15: $2d
    ld l, b                                       ; $4c16: $68
    cp a                                          ; $4c17: $bf
    ld [c], a                                     ; $4c18: $e2
    xor h                                         ; $4c19: $ac
    xor e                                         ; $4c1a: $ab
    ret nz                                        ; $4c1b: $c0

    ldh [$35], a                                  ; $4c1c: $e0 $35
    rst $38                                       ; $4c1e: $ff
    ldh [$c0], a                                  ; $4c1f: $e0 $c0
    ldh [$dc], a                                  ; $4c21: $e0 $dc
    add b                                         ; $4c23: $80
    rst $18                                       ; $4c24: $df
    nop                                           ; $4c25: $00
    xor c                                         ; $4c26: $a9
    and b                                         ; $4c27: $a0
    and a                                         ; $4c28: $a7
    xor b                                         ; $4c29: $a8
    cp a                                          ; $4c2a: $bf
    ld [c], a                                     ; $4c2b: $e2
    ld b, h                                       ; $4c2c: $44
    inc a                                         ; $4c2d: $3c
    dec sp                                        ; $4c2e: $3b
    ld l, e                                       ; $4c2f: $6b
    ld [hl], c                                    ; $4c30: $71
    rst $38                                       ; $4c31: $ff
    ldh [$6d], a                                  ; $4c32: $e0 $6d
    xor c                                         ; $4c34: $a9
    ld b, d                                       ; $4c35: $42
    nop                                           ; $4c36: $00
    rst $18                                       ; $4c37: $df
    ret nz                                        ; $4c38: $c0

    adc c                                         ; $4c39: $89
    rst $08                                       ; $4c3a: $cf
    ld l, h                                       ; $4c3b: $6c
    ld l, a                                       ; $4c3c: $6f
    ld l, [hl]                                    ; $4c3d: $6e
    ld [hl], $8c                                  ; $4c3e: $36 $8c
    ret nz                                        ; $4c40: $c0

    ret nz                                        ; $4c41: $c0

    add $aa                                       ; $4c42: $c6 $aa
    sbc d                                         ; $4c44: $9a
    pop bc                                        ; $4c45: $c1
    sbc l                                         ; $4c46: $9d
    ret nz                                        ; $4c47: $c0

    rst $38                                       ; $4c48: $ff
    add b                                         ; $4c49: $80
    adc b                                         ; $4c4a: $88
    pop bc                                        ; $4c4b: $c1
    pop hl                                        ; $4c4c: $e1
    add b                                         ; $4c4d: $80
    and d                                         ; $4c4e: $a2
    ld b, b                                       ; $4c4f: $40
    call nz, $9d9a                                ; $4c50: $c4 $9a $9d
    db $e3                                        ; $4c53: $e3
    cp c                                          ; $4c54: $b9
    cp d                                          ; $4c55: $ba
    ret nz                                        ; $4c56: $c0

    rst $38                                       ; $4c57: $ff
    ld b, b                                       ; $4c58: $40
    add a                                         ; $4c59: $87
    add d                                         ; $4c5a: $82
    ldh [$9a], a                                  ; $4c5b: $e0 $9a
    sbc e                                         ; $4c5d: $9b
    sbc e                                         ; $4c5e: $9b
    ld a, c                                       ; $4c5f: $79
    sbc d                                         ; $4c60: $9a
    sub $e3                                       ; $4c61: $d6 $e3
    or $e0                                        ; $4c63: $f6 $e0
    sbc l                                         ; $4c65: $9d
    ld b, [hl]                                    ; $4c66: $46
    cp e                                          ; $4c67: $bb
    cp h                                          ; $4c68: $bc
    ret nz                                        ; $4c69: $c0

    rst $38                                       ; $4c6a: $ff
    ld a, [hl-]                                   ; $4c6b: $3a
    nop                                           ; $4c6c: $00
    add a                                         ; $4c6d: $87
    sbc e                                         ; $4c6e: $9b
    call $bde0                                    ; $4c6f: $cd $e0 $bd
    cp [hl]                                       ; $4c72: $be
    sbc l                                         ; $4c73: $9d
    cp a                                          ; $4c74: $bf
    ld [c], a                                     ; $4c75: $e2
    ld b, l                                       ; $4c76: $45
    ldh [$9f], a                                  ; $4c77: $e0 $9f
    ld b, [hl]                                    ; $4c79: $46
    cp c                                          ; $4c7a: $b9
    cp d                                          ; $4c7b: $ba
    ld b, [hl]                                    ; $4c7c: $46
    jp $ffc0                                      ; $4c7d: $c3 $c0 $ff


    ld b, b                                       ; $4c80: $40
    xor e                                         ; $4c81: $ab
    cp a                                          ; $4c82: $bf
    rst $10                                       ; $4c83: $d7
    ret nz                                        ; $4c84: $c0

    ld b, [hl]                                    ; $4c85: $46
    sbc h                                         ; $4c86: $9c
    push de                                       ; $4c87: $d5
    pop hl                                        ; $4c88: $e1
    sbc h                                         ; $4c89: $9c
    jp $bbe0                                      ; $4c8a: $c3 $e0 $bb


    cp h                                          ; $4c8d: $bc
    ld h, e                                       ; $4c8e: $63
    add $c7                                       ; $4c8f: $c6 $c7
    ret nz                                        ; $4c91: $c0

    rst $38                                       ; $4c92: $ff
    ret nz                                        ; $4c93: $c0

    ld l, b                                       ; $4c94: $68
    adc a                                         ; $4c95: $8f
    ldh [$c1], a                                  ; $4c96: $e0 $c1
    jp nz, $e4c0                                  ; $4c98: $c2 $c0 $e4

    dec de                                        ; $4c9b: $1b
    cp e                                          ; $4c9c: $bb
    cp h                                          ; $4c9d: $bc
    adc $e0                                       ; $4c9e: $ce $e0
    set 1, h                                      ; $4ca0: $cb $cc
    ret nz                                        ; $4ca2: $c0

    rst $38                                       ; $4ca3: $ff
    ld b, b                                       ; $4ca4: $40
    ld a, a                                       ; $4ca5: $7f
    rst $38                                       ; $4ca6: $ff
    rst $38                                       ; $4ca7: $ff
    nop                                           ; $4ca8: $00
    rst $38                                       ; $4ca9: $ff
    rst $38                                       ; $4caa: $ff
    rst $38                                       ; $4cab: $ff
    rst $38                                       ; $4cac: $ff
    rst $38                                       ; $4cad: $ff
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
    nop                                           ; $4cb9: $00
    rst $38                                       ; $4cba: $ff
    rst $38                                       ; $4cbb: $ff
    rst $38                                       ; $4cbc: $ff
    rst $38                                       ; $4cbd: $ff
    rst $38                                       ; $4cbe: $ff
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
    nop                                           ; $4cca: $00
    rst $38                                       ; $4ccb: $ff
    rst $38                                       ; $4ccc: $ff
    rst $38                                       ; $4ccd: $ff
    rst $38                                       ; $4cce: $ff
    rst $38                                       ; $4ccf: $ff
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
    nop                                           ; $4cdb: $00
    rst $38                                       ; $4cdc: $ff
    rst $38                                       ; $4cdd: $ff
    rst $38                                       ; $4cde: $ff
    rst $38                                       ; $4cdf: $ff
    rst $38                                       ; $4ce0: $ff
    rst $38                                       ; $4ce1: $ff
    rst $38                                       ; $4ce2: $ff
    rst $38                                       ; $4ce3: $ff
    rst $38                                       ; $4ce4: $ff
    rst $38                                       ; $4ce5: $ff
    rst $38                                       ; $4ce6: $ff
    rst $38                                       ; $4ce7: $ff
    rst $38                                       ; $4ce8: $ff
    rst $38                                       ; $4ce9: $ff
    rst $38                                       ; $4cea: $ff
    rst $38                                       ; $4ceb: $ff
    nop                                           ; $4cec: $00
    rst $38                                       ; $4ced: $ff
    rst $38                                       ; $4cee: $ff
    rst $38                                       ; $4cef: $ff
    rst $38                                       ; $4cf0: $ff
    rst $38                                       ; $4cf1: $ff
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
    nop                                           ; $4cfd: $00
    rst $38                                       ; $4cfe: $ff
    rst $38                                       ; $4cff: $ff
    rst $38                                       ; $4d00: $ff
    rst $38                                       ; $4d01: $ff
    rst $38                                       ; $4d02: $ff
    ei                                            ; $4d03: $fb
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    ld bc, $ff0d                                  ; $4d07: $01 $0d $ff
    rst $38                                       ; $4d0a: $ff
    rst $38                                       ; $4d0b: $ff
    rst $38                                       ; $4d0c: $ff
    rst $38                                       ; $4d0d: $ff
    rst $38                                       ; $4d0e: $ff
    rst $38                                       ; $4d0f: $ff
    rst $38                                       ; $4d10: $ff
    rst $38                                       ; $4d11: $ff
    rst $38                                       ; $4d12: $ff
    rst $38                                       ; $4d13: $ff
    rst $38                                       ; $4d14: $ff
    rst $38                                       ; $4d15: $ff
    rst $38                                       ; $4d16: $ff
    nop                                           ; $4d17: $00
    rst $38                                       ; $4d18: $ff
    rst $38                                       ; $4d19: $ff
    rst $38                                       ; $4d1a: $ff
    rst $38                                       ; $4d1b: $ff
    rst $38                                       ; $4d1c: $ff
    rst $38                                       ; $4d1d: $ff
    rst $38                                       ; $4d1e: $ff
    rst $38                                       ; $4d1f: $ff
    rst $38                                       ; $4d20: $ff
    rst $38                                       ; $4d21: $ff
    rst $38                                       ; $4d22: $ff
    rst $38                                       ; $4d23: $ff
    rst $38                                       ; $4d24: $ff
    rst $38                                       ; $4d25: $ff
    rst $38                                       ; $4d26: $ff
    rst $38                                       ; $4d27: $ff
    nop                                           ; $4d28: $00
    rst $38                                       ; $4d29: $ff
    rst $38                                       ; $4d2a: $ff
    rst $38                                       ; $4d2b: $ff
    rst $38                                       ; $4d2c: $ff
    rst $38                                       ; $4d2d: $ff
    rst $38                                       ; $4d2e: $ff
    rst $38                                       ; $4d2f: $ff
    rst $38                                       ; $4d30: $ff
    rst $38                                       ; $4d31: $ff
    rst $38                                       ; $4d32: $ff
    rst $38                                       ; $4d33: $ff
    rst $38                                       ; $4d34: $ff
    rst $38                                       ; $4d35: $ff
    rst $38                                       ; $4d36: $ff
    rst $38                                       ; $4d37: $ff
    rst $38                                       ; $4d38: $ff
    nop                                           ; $4d39: $00
    rst $38                                       ; $4d3a: $ff
    rst $38                                       ; $4d3b: $ff
    rst $38                                       ; $4d3c: $ff
    rst $38                                       ; $4d3d: $ff
    rst $38                                       ; $4d3e: $ff
    rst $38                                       ; $4d3f: $ff
    rst $38                                       ; $4d40: $ff
    rst $38                                       ; $4d41: $ff
    rst $38                                       ; $4d42: $ff
    rst $38                                       ; $4d43: $ff
    rst $38                                       ; $4d44: $ff
    rst $38                                       ; $4d45: $ff
    rst $38                                       ; $4d46: $ff
    rst $38                                       ; $4d47: $ff
    rst $38                                       ; $4d48: $ff
    rst $38                                       ; $4d49: $ff
    nop                                           ; $4d4a: $00
    rst $38                                       ; $4d4b: $ff
    rst $38                                       ; $4d4c: $ff
    rst $38                                       ; $4d4d: $ff
    rst $38                                       ; $4d4e: $ff
    rst $38                                       ; $4d4f: $ff
    rst $38                                       ; $4d50: $ff
    rst $38                                       ; $4d51: $ff
    rst $38                                       ; $4d52: $ff
    rst $38                                       ; $4d53: $ff
    rst $38                                       ; $4d54: $ff
    rst $38                                       ; $4d55: $ff
    rst $38                                       ; $4d56: $ff
    rst $38                                       ; $4d57: $ff
    rst $38                                       ; $4d58: $ff
    rst $38                                       ; $4d59: $ff
    rst $38                                       ; $4d5a: $ff
    adc [hl]                                      ; $4d5b: $8e
    rst $38                                       ; $4d5c: $ff
    rst $38                                       ; $4d5d: $ff
    dec c                                         ; $4d5e: $0d
    dec c                                         ; $4d5f: $0d
    ld [$f2ff], sp                                ; $4d60: $08 $ff $f2
    ret z                                         ; $4d63: $c8

    rst $38                                       ; $4d64: $ff
    ret nz                                        ; $4d65: $c0

    and $0b                                       ; $4d66: $e6 $0b
    ld a, a                                       ; $4d68: $7f
    dec hl                                        ; $4d69: $2b
    dec bc                                        ; $4d6a: $0b
    dec bc                                        ; $4d6b: $0b
    ld c, e                                       ; $4d6c: $4b
    dec c                                         ; $4d6d: $0d
    dec c                                         ; $4d6e: $0d
    dec bc                                        ; $4d6f: $0b
    rst $38                                       ; $4d70: $ff
    ldh [$e3], a                                  ; $4d71: $e0 $e3
    dec c                                         ; $4d73: $0d
    dec bc                                        ; $4d74: $0b
    xor e                                         ; $4d75: $ab
    push hl                                       ; $4d76: $e5
    ret z                                         ; $4d77: $c8

    rst $38                                       ; $4d78: $ff
    ret nz                                        ; $4d79: $c0

    rst $20                                       ; $4d7a: $e7
    ld l, e                                       ; $4d7b: $6b
    ld l, e                                       ; $4d7c: $6b
    ld l, e                                       ; $4d7d: $6b
    ld a, h                                       ; $4d7e: $7c
    pop bc                                        ; $4d7f: $c1
    db $e3                                        ; $4d80: $e3
    jp nz, Jump_000_0be1                          ; $4d81: $c2 $e1 $0b

    dec bc                                        ; $4d84: $0b
    dec hl                                        ; $4d85: $2b
    dec c                                         ; $4d86: $0d
    dec l                                         ; $4d87: $2d
    ret nz                                        ; $4d88: $c0

    rst $38                                       ; $4d89: $ff
    ld h, d                                       ; $4d8a: $62
    ret nz                                        ; $4d8b: $c0

    ld [$894b], a                                 ; $4d8c: $ea $4b $89
    ldh [$c0], a                                  ; $4d8f: $e0 $c0
    ld [c], a                                     ; $4d91: $e2
    add c                                         ; $4d92: $81
    ldh [rWX], a                                  ; $4d93: $e0 $4b
    dec hl                                        ; $4d95: $2b
    ret nz                                        ; $4d96: $c0

    rst $38                                       ; $4d97: $ff
    ld [$ec40], sp                                ; $4d98: $08 $40 $ec
    ld c, b                                       ; $4d9b: $48
    ld [c], a                                     ; $4d9c: $e2
    ret nz                                        ; $4d9d: $c0

    push hl                                       ; $4d9e: $e5
    dec c                                         ; $4d9f: $0d
    ld [hl], e                                    ; $4da0: $73
    ldh [$c0], a                                  ; $4da1: $e0 $c0
    rst $38                                       ; $4da3: $ff
    ret nz                                        ; $4da4: $c0

    xor $02                                       ; $4da5: $ee $02
    db $e3                                        ; $4da7: $e3
    jp nz, $e23e                                  ; $4da8: $c2 $3e $e2

    dec l                                         ; $4dab: $2d
    ret nz                                        ; $4dac: $c0

    rst $38                                       ; $4dad: $ff
    add b                                         ; $4dae: $80
    db $ed                                        ; $4daf: $ed
    add c                                         ; $4db0: $81
    db $e3                                        ; $4db1: $e3
    cp l                                          ; $4db2: $bd
    jp $2d0d                                      ; $4db3: $c3 $0d $2d


    rlca                                          ; $4db6: $07
    dec l                                         ; $4db7: $2d
    ld c, l                                       ; $4db8: $4d
    dec l                                         ; $4db9: $2d
    ret nz                                        ; $4dba: $c0

    rst $38                                       ; $4dbb: $ff
    ret nz                                        ; $4dbc: $c0

    ldh a, [$78]                                  ; $4dbd: $f0 $78
    ret nz                                        ; $4dbf: $c0

    ld a, b                                       ; $4dc0: $78
    db $e4                                        ; $4dc1: $e4
    ret nz                                        ; $4dc2: $c0

    rst $38                                       ; $4dc3: $ff
    inc d                                         ; $4dc4: $14
    add b                                         ; $4dc5: $80
    db $ec                                        ; $4dc6: $ec
    ld b, e                                       ; $4dc7: $43
    ret nz                                        ; $4dc8: $c0

    ld c, e                                       ; $4dc9: $4b
    pop bc                                        ; $4dca: $c1
    push hl                                       ; $4dcb: $e5
    dec hl                                        ; $4dcc: $2b
    ret nz                                        ; $4dcd: $c0

    rst $38                                       ; $4dce: $ff
    ret nz                                        ; $4dcf: $c0

    xor d                                         ; $4dd0: $aa
    adc c                                         ; $4dd1: $89
    db $e4                                        ; $4dd2: $e4
    dec b                                         ; $4dd3: $05
    dec c                                         ; $4dd4: $0d
    ret nz                                        ; $4dd5: $c0

    and $0b                                       ; $4dd6: $e6 $0b
    ret nz                                        ; $4dd8: $c0

    rst $38                                       ; $4dd9: $ff
    ret nz                                        ; $4dda: $c0

    xor l                                         ; $4ddb: $ad
    dec b                                         ; $4ddc: $05
    pop bc                                        ; $4ddd: $c1
    cp c                                          ; $4dde: $b9
    and b                                         ; $4ddf: $a0
    cp e                                          ; $4de0: $bb
    and b                                         ; $4de1: $a0
    dec b                                         ; $4de2: $05
    dec l                                         ; $4de3: $2d
    cp c                                          ; $4de4: $b9
    and c                                         ; $4de5: $a1
    ld l, l                                       ; $4de6: $6d
    ret nz                                        ; $4de7: $c0

    rst $38                                       ; $4de8: $ff
    ld b, b                                       ; $4de9: $40
    ret                                           ; $4dea: $c9


    rlca                                          ; $4deb: $07
    pop hl                                        ; $4dec: $e1
    ret nz                                        ; $4ded: $c0

    ld [c], a                                     ; $4dee: $e2
    rst $38                                       ; $4def: $ff
    call nz, $8080                                ; $4df0: $c4 $80 $80
    rst $18                                       ; $4df3: $df
    nop                                           ; $4df4: $00
    xor c                                         ; $4df5: $a9
    adc l                                         ; $4df6: $8d
    and c                                         ; $4df7: $a1
    ld b, b                                       ; $4df8: $40
    jp hl                                         ; $4df9: $e9


    ld bc, $c0e0                                  ; $4dfa: $01 $e0 $c0
    rst $38                                       ; $4dfd: $ff
    nop                                           ; $4dfe: $00
    jp hl                                         ; $4dff: $e9


    dec hl                                        ; $4e00: $2b
    ld [hl], a                                    ; $4e01: $77
    dec hl                                        ; $4e02: $2b
    ld l, e                                       ; $4e03: $6b
    ld c, e                                       ; $4e04: $4b
    ld bc, $6ba0                                  ; $4e05: $01 $a0 $6b
    ld c, e                                       ; $4e08: $4b
    ld l, e                                       ; $4e09: $6b
    dec [hl]                                      ; $4e0a: $35
    and b                                         ; $4e0b: $a0
    dec b                                         ; $4e0c: $05
    dec bc                                        ; $4e0d: $0b
    inc [hl]                                      ; $4e0e: $34
    and b                                         ; $4e0f: $a0
    ld l, l                                       ; $4e10: $6d
    ret nz                                        ; $4e11: $c0

    rst $38                                       ; $4e12: $ff
    ret nz                                        ; $4e13: $c0

    ld [$a13f], a                                 ; $4e14: $ea $3f $a1
    ld [$f8a0], sp                                ; $4e17: $08 $a0 $f8
    add b                                         ; $4e1a: $80

jr_072_4e1b:
    ld e, $fd                                     ; $4e1b: $1e $fd
    pop hl                                        ; $4e1d: $e1
    dec c                                         ; $4e1e: $0d
    ld l, l                                       ; $4e1f: $6d
    ld c, $0e                                     ; $4e20: $0e $0e
    ret nz                                        ; $4e22: $c0

    rst $38                                       ; $4e23: $ff
    add b                                         ; $4e24: $80
    ret z                                         ; $4e25: $c8

    add d                                         ; $4e26: $82
    ldh [$8c], a                                  ; $4e27: $e0 $8c
    adc d                                         ; $4e29: $8a
    and b                                         ; $4e2a: $a0
    ccf                                           ; $4e2b: $3f
    and [hl]                                      ; $4e2c: $a6
    ld l, l                                       ; $4e2d: $6d
    dec c                                         ; $4e2e: $0d
    ret nz                                        ; $4e2f: $c0

    rst $38                                       ; $4e30: $ff
    nop                                           ; $4e31: $00
    ld [$e14f], a                                 ; $4e32: $ea $4f $e1
    dec c                                         ; $4e35: $0d
    ei                                            ; $4e36: $fb
    ld c, l                                       ; $4e37: $4d
    dec l                                         ; $4e38: $2d
    jr c, jr_072_4e1b                             ; $4e39: $38 $e0

    dec hl                                        ; $4e3b: $2b
    dec c                                         ; $4e3c: $0d
    ld l, l                                       ; $4e3d: $6d
    ld c, l                                       ; $4e3e: $4d
    ld c, l                                       ; $4e3f: $4d
    daa                                           ; $4e40: $27
    ld c, $0e                                     ; $4e41: $0e $0e
    dec c                                         ; $4e43: $0d
    ret nz                                        ; $4e44: $c0

    rst $38                                       ; $4e45: $ff
    ret nz                                        ; $4e46: $c0

    ld l, b                                       ; $4e47: $68
    ld c, l                                       ; $4e48: $4d
    call c, $c0e4                                 ; $4e49: $dc $e4 $c0
    pop hl                                        ; $4e4c: $e1
    ld bc, $c32d                                  ; $4e4d: $01 $2d $c3
    pop hl                                        ; $4e50: $e1
    rst $38                                       ; $4e51: $ff
    ldh [$c0], a                                  ; $4e52: $e0 $c0
    rst $38                                       ; $4e54: $ff
    add b                                         ; $4e55: $80
    ret z                                         ; $4e56: $c8

    adc a                                         ; $4e57: $8f
    ldh [$d9], a                                  ; $4e58: $e0 $d9
    pop hl                                        ; $4e5a: $e1
    ld b, [hl]                                    ; $4e5b: $46
    jp nz, $f400                                  ; $4e5c: $c2 $00 $f4

    ld [c], a                                     ; $4e5f: $e2
    ret nz                                        ; $4e60: $c0

    rst $38                                       ; $4e61: $ff
    ld b, b                                       ; $4e62: $40
    ld a, a                                       ; $4e63: $7f
    rst $38                                       ; $4e64: $ff
    rst $38                                       ; $4e65: $ff
    rst $38                                       ; $4e66: $ff
    rst $38                                       ; $4e67: $ff
    rst $38                                       ; $4e68: $ff
    rst $38                                       ; $4e69: $ff
    rst $38                                       ; $4e6a: $ff
    rst $38                                       ; $4e6b: $ff
    rst $38                                       ; $4e6c: $ff
    rst $38                                       ; $4e6d: $ff
    nop                                           ; $4e6e: $00
    rst $38                                       ; $4e6f: $ff
    rst $38                                       ; $4e70: $ff
    rst $38                                       ; $4e71: $ff
    rst $38                                       ; $4e72: $ff
    rst $38                                       ; $4e73: $ff
    rst $38                                       ; $4e74: $ff
    rst $38                                       ; $4e75: $ff
    rst $38                                       ; $4e76: $ff
    rst $38                                       ; $4e77: $ff
    rst $38                                       ; $4e78: $ff
    rst $38                                       ; $4e79: $ff
    rst $38                                       ; $4e7a: $ff
    rst $38                                       ; $4e7b: $ff
    rst $38                                       ; $4e7c: $ff
    rst $38                                       ; $4e7d: $ff
    rst $38                                       ; $4e7e: $ff
    nop                                           ; $4e7f: $00
    rst $38                                       ; $4e80: $ff
    rst $38                                       ; $4e81: $ff
    rst $38                                       ; $4e82: $ff
    rst $38                                       ; $4e83: $ff
    rst $38                                       ; $4e84: $ff
    rst $38                                       ; $4e85: $ff
    rst $38                                       ; $4e86: $ff
    rst $38                                       ; $4e87: $ff
    rst $38                                       ; $4e88: $ff
    rst $38                                       ; $4e89: $ff
    rst $38                                       ; $4e8a: $ff
    rst $38                                       ; $4e8b: $ff
    rst $38                                       ; $4e8c: $ff
    rst $38                                       ; $4e8d: $ff
    rst $38                                       ; $4e8e: $ff
    rst $38                                       ; $4e8f: $ff
    nop                                           ; $4e90: $00
    rst $38                                       ; $4e91: $ff
    rst $38                                       ; $4e92: $ff
    rst $38                                       ; $4e93: $ff
    rst $38                                       ; $4e94: $ff
    rst $38                                       ; $4e95: $ff
    rst $38                                       ; $4e96: $ff
    rst $38                                       ; $4e97: $ff
    rst $38                                       ; $4e98: $ff
    rst $38                                       ; $4e99: $ff
    rst $38                                       ; $4e9a: $ff
    rst $38                                       ; $4e9b: $ff
    rst $38                                       ; $4e9c: $ff
    rst $38                                       ; $4e9d: $ff
    rst $38                                       ; $4e9e: $ff
    rst $38                                       ; $4e9f: $ff
    rst $38                                       ; $4ea0: $ff
    nop                                           ; $4ea1: $00
    rst $38                                       ; $4ea2: $ff
    rst $38                                       ; $4ea3: $ff
    rst $38                                       ; $4ea4: $ff
    rst $38                                       ; $4ea5: $ff
    rst $38                                       ; $4ea6: $ff
    rst $38                                       ; $4ea7: $ff
    rst $38                                       ; $4ea8: $ff
    rst $38                                       ; $4ea9: $ff
    rst $38                                       ; $4eaa: $ff
    rst $38                                       ; $4eab: $ff
    rst $38                                       ; $4eac: $ff
    rst $38                                       ; $4ead: $ff
    rst $38                                       ; $4eae: $ff
    rst $38                                       ; $4eaf: $ff
    rst $38                                       ; $4eb0: $ff
    rst $38                                       ; $4eb1: $ff
    nop                                           ; $4eb2: $00
    rst $38                                       ; $4eb3: $ff
    rst $38                                       ; $4eb4: $ff
    rst $38                                       ; $4eb5: $ff
    rst $38                                       ; $4eb6: $ff
    rst $38                                       ; $4eb7: $ff
    rst $38                                       ; $4eb8: $ff
    rst $38                                       ; $4eb9: $ff
    rst $38                                       ; $4eba: $ff
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    rst $38                                       ; $4ebd: $ff
    rst $38                                       ; $4ebe: $ff
    rst $38                                       ; $4ebf: $ff
    db $fd                                        ; $4ec0: $fd
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    ld bc, $ff00                                  ; $4ec4: $01 $00 $ff
    rst $38                                       ; $4ec7: $ff
    rst $38                                       ; $4ec8: $ff
    rst $38                                       ; $4ec9: $ff
    rst $38                                       ; $4eca: $ff
    rst $38                                       ; $4ecb: $ff
    rst $38                                       ; $4ecc: $ff
    rst $38                                       ; $4ecd: $ff
    rst $38                                       ; $4ece: $ff
    rst $38                                       ; $4ecf: $ff
    rst $38                                       ; $4ed0: $ff
    rst $38                                       ; $4ed1: $ff
    rst $38                                       ; $4ed2: $ff
    rst $38                                       ; $4ed3: $ff
    add b                                         ; $4ed4: $80
    rst $38                                       ; $4ed5: $ff
    rst $38                                       ; $4ed6: $ff
    rst $38                                       ; $4ed7: $ff
    rst $38                                       ; $4ed8: $ff
    rst $38                                       ; $4ed9: $ff
    rst $38                                       ; $4eda: $ff
    rst $38                                       ; $4edb: $ff
    rst $38                                       ; $4edc: $ff
    rst $38                                       ; $4edd: $ff
    rst $38                                       ; $4ede: $ff
    rst $38                                       ; $4edf: $ff
    rst $38                                       ; $4ee0: $ff
    ldh a, [$ef]                                  ; $4ee1: $f0 $ef
    rrca                                          ; $4ee3: $0f
    nop                                           ; $4ee4: $00
    rst $38                                       ; $4ee5: $ff
    ld [c], a                                     ; $4ee6: $e2
    ldh [$f8], a                                  ; $4ee7: $e0 $f8
    ei                                            ; $4ee9: $fb
    and $c1                                       ; $4eea: $e6 $c1
    db $f4                                        ; $4eec: $f4
    ldh [$fc], a                                  ; $4eed: $e0 $fc
    ld a, [$c0e8]                                 ; $4eef: $fa $e8 $c0
    push af                                       ; $4ef2: $f5
    add b                                         ; $4ef3: $80
    db $fd                                        ; $4ef4: $fd
    nop                                           ; $4ef5: $00
    ld h, d                                       ; $4ef6: $62
    ld hl, sp-$20                                 ; $4ef7: $f8 $e0
    rst $38                                       ; $4ef9: $ff
    rst $38                                       ; $4efa: $ff
    rst $38                                       ; $4efb: $ff
    rst $38                                       ; $4efc: $ff
    rst $38                                       ; $4efd: $ff
    rst $38                                       ; $4efe: $ff
    rst $38                                       ; $4eff: $ff
    rst $38                                       ; $4f00: $ff
    rst $38                                       ; $4f01: $ff
    rst $38                                       ; $4f02: $ff
    rst $38                                       ; $4f03: $ff
    rst $38                                       ; $4f04: $ff
    rst $38                                       ; $4f05: $ff
    nop                                           ; $4f06: $00
    rst $38                                       ; $4f07: $ff
    rst $38                                       ; $4f08: $ff
    rst $38                                       ; $4f09: $ff
    rst $38                                       ; $4f0a: $ff
    rst $38                                       ; $4f0b: $ff
    rst $38                                       ; $4f0c: $ff
    rst $38                                       ; $4f0d: $ff
    cp $00                                        ; $4f0e: $fe $00
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    ld bc, $ff00                                  ; $4f12: $01 $00 $ff
    rst $38                                       ; $4f15: $ff
    rst $38                                       ; $4f16: $ff
    rst $38                                       ; $4f17: $ff
    rst $38                                       ; $4f18: $ff
    rst $38                                       ; $4f19: $ff
    rst $38                                       ; $4f1a: $ff
    rst $38                                       ; $4f1b: $ff
    rst $38                                       ; $4f1c: $ff
    rst $38                                       ; $4f1d: $ff
    rst $38                                       ; $4f1e: $ff
    rst $38                                       ; $4f1f: $ff
    rst $38                                       ; $4f20: $ff
    rst $38                                       ; $4f21: $ff
    nop                                           ; $4f22: $00
    rst $38                                       ; $4f23: $ff
    rst $38                                       ; $4f24: $ff
    rst $38                                       ; $4f25: $ff
    rst $38                                       ; $4f26: $ff
    rst $38                                       ; $4f27: $ff
    rst $38                                       ; $4f28: $ff
    rst $38                                       ; $4f29: $ff
    rst $38                                       ; $4f2a: $ff
    rst $38                                       ; $4f2b: $ff
    rst $38                                       ; $4f2c: $ff
    rst $38                                       ; $4f2d: $ff
    rst $38                                       ; $4f2e: $ff
    rst $38                                       ; $4f2f: $ff
    rst $38                                       ; $4f30: $ff
    ldh a, [$ef]                                  ; $4f31: $f0 $ef
    rla                                           ; $4f33: $17
    pop af                                        ; $4f34: $f1
    ld de, $e0f1                                  ; $4f35: $11 $f1 $e0
    ei                                            ; $4f38: $fb
    pop af                                        ; $4f39: $f1
    ldh [$fb], a                                  ; $4f3a: $e0 $fb
    rst $38                                       ; $4f3c: $ff
    rst $38                                       ; $4f3d: $ff
    rst $38                                       ; $4f3e: $ff
    rst $38                                       ; $4f3f: $ff
    ld b, $f9                                     ; $4f40: $06 $f9
    ld hl, sp+$13                                 ; $4f42: $f8 $13
    inc de                                        ; $4f44: $13
    call c, $ffff                                 ; $4f45: $dc $ff $ff
    rst $38                                       ; $4f48: $ff
    rst $38                                       ; $4f49: $ff
    rst $38                                       ; $4f4a: $ff
    rst $38                                       ; $4f4b: $ff
    rst $38                                       ; $4f4c: $ff
    rst $38                                       ; $4f4d: $ff
    rst $38                                       ; $4f4e: $ff
    nop                                           ; $4f4f: $00
    rst $38                                       ; $4f50: $ff
    rst $38                                       ; $4f51: $ff
    rst $38                                       ; $4f52: $ff
    rst $38                                       ; $4f53: $ff
    rst $38                                       ; $4f54: $ff
    rst $38                                       ; $4f55: $ff
    rst $38                                       ; $4f56: $ff
    rst $38                                       ; $4f57: $ff
    rst $38                                       ; $4f58: $ff
    rst $38                                       ; $4f59: $ff
    rst $38                                       ; $4f5a: $ff
    ld sp, hl                                     ; $4f5b: $f9
    nop                                           ; $4f5c: $00
    nop                                           ; $4f5d: $00
    nop                                           ; $4f5e: $00

jr_072_4f5f:
    cp $d5                                        ; $4f5f: $fe $d5
    nop                                           ; $4f61: $00
    rst $38                                       ; $4f62: $ff
    ldh [rTIMA], a                                ; $4f63: $e0 $05
    ei                                            ; $4f65: $fb
    ldh [$0b], a                                  ; $4f66: $e0 $0b
    rst $30                                       ; $4f68: $f7
    pop hl                                        ; $4f69: $e1
    nop                                           ; $4f6a: $00
    ld [bc], a                                    ; $4f6b: $02
    db $eb                                        ; $4f6c: $eb
    nop                                           ; $4f6d: $00
    jr z, jr_072_4f5f                             ; $4f6e: $28 $ef

    ldh [$90], a                                  ; $4f70: $e0 $90
    db $eb                                        ; $4f72: $eb
    ldh [$f5], a                                  ; $4f73: $e0 $f5
    nop                                           ; $4f75: $00
    ret z                                         ; $4f76: $c8

    ld a, [$e0e5]                                 ; $4f77: $fa $e5 $e0
    add b                                         ; $4f7a: $80
    ld [$00e4], a                                 ; $4f7b: $ea $e4 $00
    nop                                           ; $4f7e: $00
    rla                                           ; $4f7f: $17
    nop                                           ; $4f80: $00
    ld bc, $d612                                  ; $4f81: $01 $12 $d6
    ld [c], a                                     ; $4f84: $e2
    ld d, b                                       ; $4f85: $50
    rst $08                                       ; $4f86: $cf
    ldh [$e6], a                                  ; $4f87: $e0 $e6
    pop hl                                        ; $4f89: $e1
    ld [$e2da], a                                 ; $4f8a: $ea $da $e2
    db $fd                                        ; $4f8d: $fd
    db $e3                                        ; $4f8e: $e3
    and $e1                                       ; $4f8f: $e6 $e1
    ld d, a                                       ; $4f91: $57
    cpl                                           ; $4f92: $2f
    nop                                           ; $4f93: $00
    inc bc                                        ; $4f94: $03
    ret nz                                        ; $4f95: $c0

    ld [c], a                                     ; $4f96: $e2
    and b                                         ; $4f97: $a0
    xor a                                         ; $4f98: $af
    ldh [$64], a                                  ; $4f99: $e0 $64
    xor e                                         ; $4f9b: $ab
    ldh [$c7], a                                  ; $4f9c: $e0 $c7
    call nc, Call_000_2000                        ; $4f9e: $d4 $00 $20
    ret nz                                        ; $4fa1: $c0

    ld [c], a                                     ; $4fa2: $e2
    jp z, $9ce1                                   ; $4fa3: $ca $e1 $9c

    pop hl                                        ; $4fa6: $e1
    ld e, a                                       ; $4fa7: $5f
    nop                                           ; $4fa8: $00
    ld d, l                                       ; $4fa9: $55
    ld b, $96                                     ; $4faa: $06 $96
    ld [c], a                                     ; $4fac: $e2
    ld b, b                                       ; $4fad: $40
    adc a                                         ; $4fae: $8f
    ldh [$b2], a                                  ; $4faf: $e0 $b2
    adc e                                         ; $4fb1: $8b
    ldh [$a8], a                                  ; $4fb2: $e0 $a8
    or $e2                                        ; $4fb4: $f6 $e2
    sbc h                                         ; $4fb6: $9c
    and h                                         ; $4fb7: $a4
    db $e3                                        ; $4fb8: $e3
    ld a, h                                       ; $4fb9: $7c
    pop hl                                        ; $4fba: $e1
    cp a                                          ; $4fbb: $bf
    nop                                           ; $4fbc: $00
    inc c                                         ; $4fbd: $0c
    add b                                         ; $4fbe: $80
    ld [c], a                                     ; $4fbf: $e2
    adc [hl]                                      ; $4fc0: $8e
    pop hl                                        ; $4fc1: $e1
    ld e, c                                       ; $4fc2: $59
    ld a, [$e06b]                                 ; $4fc3: $fa $6b $e0
    ld d, b                                       ; $4fc6: $50
    add h                                         ; $4fc7: $84
    ld [c], a                                     ; $4fc8: $e2
    add b                                         ; $4fc9: $80
    nop                                           ; $4fca: $00
    db $ec                                        ; $4fcb: $ec
    rst $38                                       ; $4fcc: $ff
    ld hl, sp-$01                                 ; $4fcd: $f8 $ff
    rst $38                                       ; $4fcf: $ff
    ldh [$fe], a                                  ; $4fd0: $e0 $fe
    ld b, d                                       ; $4fd2: $42
    ld hl, sp-$38                                 ; $4fd3: $f8 $c8
    ldh a, [$80]                                  ; $4fd5: $f0 $80
    cp a                                          ; $4fd7: $bf
    ldh [rNR10], a                                ; $4fd8: $e0 $10
    ldh [rP1], a                                  ; $4fda: $e0 $00
    ret nz                                        ; $4fdc: $c0

    rst $38                                       ; $4fdd: $ff
    rst $38                                       ; $4fde: $ff
    ld [c], a                                     ; $4fdf: $e2
    rst $30                                       ; $4fe0: $f7
    rst $38                                       ; $4fe1: $ff
    rst $38                                       ; $4fe2: $ff
    cp h                                          ; $4fe3: $bc
    rst $38                                       ; $4fe4: $ff
    add sp, -$01                                  ; $4fe5: $e8 $ff
    add c                                         ; $4fe7: $81
    cp $08                                        ; $4fe8: $fe $08
    db $ed                                        ; $4fea: $ed
    ldh a, [$f8]                                  ; $4feb: $f0 $f8
    push hl                                       ; $4fed: $e5
    jr nz, @-$3e                                  ; $4fee: $20 $c0

    ld [hl], c                                    ; $4ff0: $71
    db $e3                                        ; $4ff1: $e3
    ld a, a                                       ; $4ff2: $7f
    rst $38                                       ; $4ff3: $ff
    cpl                                           ; $4ff4: $2f
    rst $38                                       ; $4ff5: $ff
    rst $38                                       ; $4ff6: $ff
    ccf                                           ; $4ff7: $3f
    rst $38                                       ; $4ff8: $ff
    rra                                           ; $4ff9: $1f
    rst $38                                       ; $4ffa: $ff
    or a                                          ; $4ffb: $b7
    ld a, a                                       ; $4ffc: $7f
    rra                                           ; $4ffd: $1f
    rst $38                                       ; $4ffe: $ff
    ld a, a                                       ; $4fff: $7f
    rrca                                          ; $5000: $0f
    ld a, a                                       ; $5001: $7f
    ld c, a                                       ; $5002: $4f
    ccf                                           ; $5003: $3f
    rlca                                          ; $5004: $07
    rra                                           ; $5005: $1f
    ld [bc], a                                    ; $5006: $02
    rst $38                                       ; $5007: $ff
    rra                                           ; $5008: $1f
    inc de                                        ; $5009: $13
    rrca                                          ; $500a: $0f
    ld bc, $0b0f                                  ; $500b: $01 $0f $0b
    rlca                                          ; $500e: $07
    ld bc, $07ff                                  ; $500f: $01 $ff $07
    nop                                           ; $5012: $00
    rlca                                          ; $5013: $07
    inc b                                         ; $5014: $04
    inc bc                                        ; $5015: $03
    ld e, h                                       ; $5016: $5c
    rst $38                                       ; $5017: $ff
    nop                                           ; $5018: $00
    rst $28                                       ; $5019: $ef
    rst $38                                       ; $501a: $ff
    add c                                         ; $501b: $81
    inc a                                         ; $501c: $3c
    db $10                                        ; $501d: $10
    ld b, h                                       ; $501e: $44
    and $20                                       ; $501f: $e6 $20
    ret nz                                        ; $5021: $c0

    add b                                         ; $5022: $80
    cp a                                          ; $5023: $bf
    ret nz                                        ; $5024: $c0

    nop                                           ; $5025: $00
    ldh [$90], a                                  ; $5026: $e0 $90
    ldh [$80], a                                  ; $5028: $e0 $80
    cp $e0                                        ; $502a: $fe $e0
    nop                                           ; $502c: $00
    ei                                            ; $502d: $fb
    ret nz                                        ; $502e: $c0

    jr nz, @-$5e                                  ; $502f: $20 $a0

    ldh [$7d], a                                  ; $5031: $e0 $7d
    rst $38                                       ; $5033: $ff
    rst $28                                       ; $5034: $ef
    rst $38                                       ; $5035: $ff
    ld a, [hl-]                                   ; $5036: $3a
    ld a, [$e2da]                                 ; $5037: $fa $da $e2
    ld [$c0e3], sp                                ; $503a: $08 $e3 $c0
    and h                                         ; $503d: $a4
    ld hl, sp-$20                                 ; $503e: $f8 $e0
    ld hl, sp-$10                                 ; $5040: $f8 $f0
    rst $38                                       ; $5042: $ff
    db $fc                                        ; $5043: $fc
    ret nc                                        ; $5044: $d0

    db $fc                                        ; $5045: $fc

Call_072_5046:
    ld a, [c]                                     ; $5046: $f2
    db $fc                                        ; $5047: $fc
    ldh [$fc], a                                  ; $5048: $e0 $fc
    or b                                          ; $504a: $b0
    rst $30                                       ; $504b: $f7
    ld hl, sp-$1c                                 ; $504c: $f8 $e4
    ld hl, sp-$80                                 ; $504e: $f8 $80
    push hl                                       ; $5050: $e5
    cp [hl]                                       ; $5051: $be
    rst $38                                       ; $5052: $ff
    db $e3                                        ; $5053: $e3
    rst $38                                       ; $5054: $ff
    rst $38                                       ; $5055: $ff
    ld b, b                                       ; $5056: $40
    rst $38                                       ; $5057: $ff
    nop                                           ; $5058: $00
    rst $20                                       ; $5059: $e7
    db $fc                                        ; $505a: $fc
    rst $38                                       ; $505b: $ff
    or $ff                                        ; $505c: $f6 $ff
    ld a, a                                       ; $505e: $7f
    db $fc                                        ; $505f: $fc
    rst $38                                       ; $5060: $ff
    ld hl, sp-$02                                 ; $5061: $f8 $fe
    add sp, -$02                                  ; $5063: $e8 $fe
    ld hl, sp-$08                                 ; $5065: $f8 $f8
    ldh [$83], a                                  ; $5067: $e0 $83
    db $f4                                        ; $5069: $f4
    rst $38                                       ; $506a: $ff
    ld a, b                                       ; $506b: $78
    ldh [$cb], a                                  ; $506c: $e0 $cb
    jp $c5e2                                      ; $506e: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $5071: $f0 $e0
    rst $28                                       ; $5073: $ef
    ld [$f1c0], a                                 ; $5074: $ea $c0 $f1
    ld b, b                                       ; $5077: $40
    ldh [$ea], a                                  ; $5078: $e0 $ea
    ret nc                                        ; $507a: $d0

    pop hl                                        ; $507b: $e1
    rst $08                                       ; $507c: $cf
    jp hl                                         ; $507d: $e9


    db $ec                                        ; $507e: $ec
    rst $38                                       ; $507f: $ff
    ld sp, hl                                     ; $5080: $f9
    cp $7f                                        ; $5081: $fe $7f
    and $f8                                       ; $5083: $e6 $f8
    ld c, b                                       ; $5085: $48
    ldh a, [$d0]                                  ; $5086: $f0 $d0
    ldh [$a8], a                                  ; $5088: $e0 $a8
    ld [hl], d                                    ; $508a: $72
    ldh [$fb], a                                  ; $508b: $e0 $fb

jr_072_508d:
    ld b, b                                       ; $508d: $40
    add b                                         ; $508e: $80
    db $10                                        ; $508f: $10
    rst $20                                       ; $5090: $e7
    jp hl                                         ; $5091: $e9


    cp $8e                                        ; $5092: $fe $8e
    ldh a, [$30]                                  ; $5094: $f0 $30
    pop af                                        ; $5096: $f1
    ret nz                                        ; $5097: $c0

    ld hl, sp-$1b                                 ; $5098: $f8 $e5
    ld h, d                                       ; $509a: $62
    pop bc                                        ; $509b: $c1
    db $10                                        ; $509c: $10
    push hl                                       ; $509d: $e5
    cp a                                          ; $509e: $bf
    ld a, a                                       ; $509f: $7f
    sbc a                                         ; $50a0: $9f
    ld a, a                                       ; $50a1: $7f
    rst $38                                       ; $50a2: $ff
    ld [hl], a                                    ; $50a3: $77
    ccf                                           ; $50a4: $3f
    ld e, a                                       ; $50a5: $5f
    ccf                                           ; $50a6: $3f
    ld c, a                                       ; $50a7: $4f
    ccf                                           ; $50a8: $3f
    cpl                                           ; $50a9: $2f
    rra                                           ; $50aa: $1f
    rst $30                                       ; $50ab: $f7
    rla                                           ; $50ac: $17
    rrca                                          ; $50ad: $0f
    ld [de], a                                    ; $50ae: $12
    inc d                                         ; $50af: $14
    ldh [$09], a                                  ; $50b0: $e0 $09
    rlca                                          ; $50b2: $07
    rla                                           ; $50b3: $17
    inc bc                                        ; $50b4: $03
    rst $38                                       ; $50b5: $ff
    dec b                                         ; $50b6: $05
    inc bc                                        ; $50b7: $03
    inc b                                         ; $50b8: $04
    inc bc                                        ; $50b9: $03
    ld [bc], a                                    ; $50ba: $02
    ld bc, $ff5c                                  ; $50bb: $01 $5c $ff
    rst $30                                       ; $50be: $f7
    jp Jump_000_3c3c                              ; $50bf: $c3 $3c $3c


    sbc d                                         ; $50c2: $9a
    add $00                                       ; $50c3: $c6 $00
    nop                                           ; $50c5: $00
    ld b, b                                       ; $50c6: $40
    add b                                         ; $50c7: $80
    rst $18                                       ; $50c8: $df
    ret nz                                        ; $50c9: $c0

    add b                                         ; $50ca: $80
    jr nz, jr_072_508d                            ; $50cb: $20 $c0

    and b                                         ; $50cd: $a0
    cp $e2                                        ; $50ce: $fe $e2
    ld d, b                                       ; $50d0: $50
    add b                                         ; $50d1: $80
    ldh a, [$a0]                                  ; $50d2: $f0 $a0
    pop hl                                        ; $50d4: $e1
    db $10                                        ; $50d5: $10
    db $e3                                        ; $50d6: $e3
    jp c, Jump_072_64e1                           ; $50d7: $da $e1 $64

    pop bc                                        ; $50da: $c1
    xor b                                         ; $50db: $a8
    ldh a, [$ea]                                  ; $50dc: $f0 $ea
    ldh a, [$df]                                  ; $50de: $f0 $df
    db $f4                                        ; $50e0: $f4
    ld hl, sp-$2c                                 ; $50e1: $f8 $d4
    ld hl, sp-$0c                                 ; $50e3: $f8 $f4
    inc d                                         ; $50e5: $14
    ldh [$b8], a                                  ; $50e6: $e0 $b8
    ldh a, [$fb]                                  ; $50e8: $f0 $fb
    add sp, -$10                                  ; $50ea: $e8 $f0
    db $10                                        ; $50ec: $10
    jp hl                                         ; $50ed: $e9


    ld e, b                                       ; $50ee: $58
    rst $20                                       ; $50ef: $e7
    ld h, [hl]                                    ; $50f0: $66
    add c                                         ; $50f1: $81
    db $fc                                        ; $50f2: $fc
    rst $38                                       ; $50f3: $ff
    rst $38                                       ; $50f4: $ff
    rst $30                                       ; $50f5: $f7
    cp $fd                                        ; $50f6: $fe $fd
    cp $fa                                        ; $50f8: $fe $fa
    db $fc                                        ; $50fa: $fc
    ld [$fc3b], a                                 ; $50fb: $ea $3b $fc
    ld sp, hl                                     ; $50fe: $f9
    ld hl, sp-$20                                 ; $50ff: $f8 $e0
    db $f4                                        ; $5101: $f4
    rst $38                                       ; $5102: $ff

jr_072_5103:
    ld c, b                                       ; $5103: $48
    ld [hl+], a                                   ; $5104: $22
    db $eb                                        ; $5105: $eb
    and b                                         ; $5106: $a0
    ldh [$f0], a                                  ; $5107: $e0 $f0
    call z, $fba3                                 ; $5109: $cc $a3 $fb
    push bc                                       ; $510c: $c5
    pop af                                        ; $510d: $f1
    call $cbe3                                    ; $510e: $cd $e3 $cb
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    db $ed                                        ; $5113: $ed
    cp $ff                                        ; $5114: $fe $ff
    cp $f8                                        ; $5116: $fe $f8
    add sp, -$10                                  ; $5118: $e8 $f0
    ld d, d                                       ; $511a: $52
    ldh [$e8], a                                  ; $511b: $e0 $e8
    ret nz                                        ; $511d: $c0

    rst $20                                       ; $511e: $e7
    ret nz                                        ; $511f: $c0

    add b                                         ; $5120: $80
    ld d, b                                       ; $5121: $50
    sub $c0                                       ; $5122: $d6 $c0
    jr nz, @-$39                                  ; $5124: $20 $c5

    cp l                                          ; $5126: $bd
    cp $ee                                        ; $5127: $fe $ee
    jp $b1f0                                      ; $5129: $c3 $f0 $b1


    ld a, [de]                                    ; $512c: $1a
    ldh [$f8], a                                  ; $512d: $e0 $f8
    push hl                                       ; $512f: $e5
    or d                                          ; $5130: $b2
    and c                                         ; $5131: $a1
    ld d, h                                       ; $5132: $54
    and c                                         ; $5133: $a1
    rst $38                                       ; $5134: $ff
    ld a, a                                       ; $5135: $7f
    rst $30                                       ; $5136: $f7
    xor a                                         ; $5137: $af
    ld a, a                                       ; $5138: $7f
    ld a, a                                       ; $5139: $7f
    inc d                                         ; $513a: $14
    ldh [$b7], a                                  ; $513b: $e0 $b7
    rra                                           ; $513d: $1f
    ccf                                           ; $513e: $3f
    rra                                           ; $513f: $1f
    ld a, a                                       ; $5140: $7f

jr_072_5141:
    cpl                                           ; $5141: $2f
    rra                                           ; $5142: $1f
    ld e, a                                       ; $5143: $5f
    rrca                                          ; $5144: $0f
    rrca                                          ; $5145: $0f
    rlca                                          ; $5146: $07
    ld a, [bc]                                    ; $5147: $0a
    inc d                                         ; $5148: $14
    ld [c], a                                     ; $5149: $e2
    rst $38                                       ; $514a: $ff
    dec bc                                        ; $514b: $0b
    ld bc, $0103                                  ; $514c: $01 $03 $01
    ld [bc], a                                    ; $514f: $02
    ld bc, $0005                                  ; $5150: $01 $05 $00
    sub l                                         ; $5153: $95
    rst $18                                       ; $5154: $df
    ld [de], a                                    ; $5155: $12
    ldh [rSCY], a                                 ; $5156: $e0 $42
    sub b                                         ; $5158: $90
    ld [$0ca0], a                                 ; $5159: $ea $a0 $0c
    ld [c], a                                     ; $515c: $e2
    cp $e1                                        ; $515d: $fe $e1
    and b                                         ; $515f: $a0
    ld [hl], h                                    ; $5160: $74
    jr nc, jr_072_5103                            ; $5161: $30 $a0

    jr nz, @-$3b                                  ; $5163: $20 $c3

    ei                                            ; $5165: $fb
    jp c, $b0e6                                   ; $5166: $da $e6 $b0

    ldh [$f4], a                                  ; $5169: $e0 $f4
    rra                                           ; $516b: $1f
    ret nz                                        ; $516c: $c0

    rst $30                                       ; $516d: $f7
    ret c                                         ; $516e: $d8

    ldh a, [$f8]                                  ; $516f: $f0 $f8
    inc d                                         ; $5171: $14
    ldh [$b4], a                                  ; $5172: $e0 $b4
    ldh [$f0], a                                  ; $5174: $e0 $f0
    ldh [$fa], a                                  ; $5176: $e0 $fa
    jr nz, jr_072_5141                            ; $5178: $20 $c7

    ei                                            ; $517a: $fb
    ld [de], a                                    ; $517b: $12
    ldh [$91], a                                  ; $517c: $e0 $91
    nop                                           ; $517e: $00
    db $fd                                        ; $517f: $fd
    cp $f6                                        ; $5180: $fe $f6
    rst $38                                       ; $5182: $ff
    db $fc                                        ; $5183: $fc
    cp $fc                                        ; $5184: $fe $fc
    db $fd                                        ; $5186: $fd
    ld hl, sp-$14                                 ; $5187: $f8 $ec
    ld hl, sp-$06                                 ; $5189: $f8 $fa
    ld b, $f8                                     ; $518b: $06 $f8
    ldh [$f5], a                                  ; $518d: $e0 $f5
    cp $78                                        ; $518f: $fe $78
    push hl                                       ; $5191: $e5
    inc l                                         ; $5192: $2c
    push af                                       ; $5193: $f5
    nop                                           ; $5194: $00
    and c                                         ; $5195: $a1
    xor $cc                                       ; $5196: $ee $cc
    pop af                                        ; $5198: $f1
    xor d                                         ; $5199: $aa
    rst $38                                       ; $519a: $ff
    ld [bc], a                                    ; $519b: $02
    add c                                         ; $519c: $81
    and b                                         ; $519d: $a0
    pop bc                                        ; $519e: $c1
    add b                                         ; $519f: $80
    pop bc                                        ; $51a0: $c1
    add l                                         ; $51a1: $85
    jp $a1ff                                      ; $51a2: $c3 $ff $a1


    jp $8300                                      ; $51a5: $c3 $00 $83


    dec b                                         ; $51a8: $05
    add e                                         ; $51a9: $83
    ld b, b                                       ; $51aa: $40
    add c                                         ; $51ab: $81
    di                                            ; $51ac: $f3
    ld b, c                                       ; $51ad: $41
    add b                                         ; $51ae: $80
    ldh [$a0], a                                  ; $51af: $e0 $a0
    ld [hl], b                                    ; $51b1: $70
    ret nz                                        ; $51b2: $c0

    ret nz                                        ; $51b3: $c0

    ldh [rBCPS], a                                ; $51b4: $e0 $68
    ldh a, [rIE]                                  ; $51b6: $f0 $ff
    pop af                                        ; $51b8: $f1
    db $fc                                        ; $51b9: $fc
    call c, Call_000_1eff                         ; $51ba: $dc $ff $1e
    rst $38                                       ; $51bd: $ff
    add b                                         ; $51be: $80
    ld e, $fd                                     ; $51bf: $1e $fd
    ld [de], a                                    ; $51c1: $12
    ld [hl], h                                    ; $51c2: $74
    add d                                         ; $51c3: $82
    ld c, b                                       ; $51c4: $48
    nop                                           ; $51c5: $00
    ld bc, $5878                                  ; $51c6: $01 $78 $58
    rst $38                                       ; $51c9: $ff
    rst $38                                       ; $51ca: $ff
    ld b, b                                       ; $51cb: $40
    add c                                         ; $51cc: $81
    add d                                         ; $51cd: $82
    pop bc                                        ; $51ce: $c1
    and b                                         ; $51cf: $a0
    pop bc                                        ; $51d0: $c1
    and c                                         ; $51d1: $a1
    jp $85ff                                      ; $51d2: $c3 $ff $85


    jp $8304                                      ; $51d5: $c3 $04 $83


    ld b, c                                       ; $51d8: $41
    add e                                         ; $51d9: $83
    ld [bc], a                                    ; $51da: $02
    add c                                         ; $51db: $81
    or $6d                                        ; $51dc: $f6 $6d
    add b                                         ; $51de: $80
    add b                                         ; $51df: $80
    and b                                         ; $51e0: $a0
    ld c, h                                       ; $51e1: $4c
    and b                                         ; $51e2: $a0
    ret nc                                        ; $51e3: $d0

    ldh [$64], a                                  ; $51e4: $e0 $64

jr_072_51e6:
    ldh a, [$ed]                                  ; $51e6: $f0 $ed
    ldh a, [$d0]                                  ; $51e8: $f0 $d0
    ld [c], a                                     ; $51ea: $e2
    ld b, c                                       ; $51eb: $41
    ld e, $c6                                     ; $51ec: $1e $c6
    add c                                         ; $51ee: $81
    nop                                           ; $51ef: $00
    nop                                           ; $51f0: $00
    jr nc, jr_072_51e6                            ; $51f1: $30 $f3

    nop                                           ; $51f3: $00
    add d                                         ; $51f4: $82
    ret nc                                        ; $51f5: $d0

    ldh [$a0], a                                  ; $51f6: $e0 $a0
    xor c                                         ; $51f8: $a9
    ld [bc], a                                    ; $51f9: $02
    ld bc, $0300                                  ; $51fa: $01 $00 $03
    nop                                           ; $51fd: $00
    ld [hl], c                                    ; $51fe: $71
    xor c                                         ; $51ff: $a9
    pop af                                        ; $5200: $f1
    ldh [$60], a                                  ; $5201: $e0 $60
    add sp, $30                                   ; $5203: $e8 $30
    add e                                         ; $5205: $83
    rst $38                                       ; $5206: $ff
    rst $38                                       ; $5207: $ff
    rst $38                                       ; $5208: $ff
    rst $38                                       ; $5209: $ff
    rst $38                                       ; $520a: $ff
    rst $38                                       ; $520b: $ff
    rst $38                                       ; $520c: $ff
    rst $38                                       ; $520d: $ff
    nop                                           ; $520e: $00
    rst $38                                       ; $520f: $ff
    rst $38                                       ; $5210: $ff
    rst $38                                       ; $5211: $ff
    rst $38                                       ; $5212: $ff
    rst $38                                       ; $5213: $ff
    rst $38                                       ; $5214: $ff
    rst $38                                       ; $5215: $ff
    rst $38                                       ; $5216: $ff
    rst $38                                       ; $5217: $ff
    rst $38                                       ; $5218: $ff
    rst $38                                       ; $5219: $ff
    rst $38                                       ; $521a: $ff
    rst $38                                       ; $521b: $ff
    rst $38                                       ; $521c: $ff
    rst $38                                       ; $521d: $ff
    rst $38                                       ; $521e: $ff
    nop                                           ; $521f: $00
    rst $38                                       ; $5220: $ff
    rst $38                                       ; $5221: $ff
    rst $38                                       ; $5222: $ff
    rst $38                                       ; $5223: $ff
    rst $38                                       ; $5224: $ff
    rst $38                                       ; $5225: $ff
    rst $38                                       ; $5226: $ff
    rst $38                                       ; $5227: $ff
    rst $38                                       ; $5228: $ff
    rst $38                                       ; $5229: $ff
    rst $38                                       ; $522a: $ff
    rst $38                                       ; $522b: $ff
    rst $38                                       ; $522c: $ff
    rst $38                                       ; $522d: $ff
    rst $38                                       ; $522e: $ff
    rst $38                                       ; $522f: $ff
    nop                                           ; $5230: $00
    rst $38                                       ; $5231: $ff
    rst $38                                       ; $5232: $ff
    rst $38                                       ; $5233: $ff
    rst $38                                       ; $5234: $ff
    rst $38                                       ; $5235: $ff
    rst $38                                       ; $5236: $ff
    rst $38                                       ; $5237: $ff
    rst $38                                       ; $5238: $ff
    rst $38                                       ; $5239: $ff
    rst $38                                       ; $523a: $ff
    rst $38                                       ; $523b: $ff
    rst $38                                       ; $523c: $ff
    rst $38                                       ; $523d: $ff
    rst $38                                       ; $523e: $ff
    rst $38                                       ; $523f: $ff
    rst $38                                       ; $5240: $ff
    nop                                           ; $5241: $00
    rst $38                                       ; $5242: $ff
    rst $38                                       ; $5243: $ff
    rst $38                                       ; $5244: $ff
    rst $38                                       ; $5245: $ff
    ccf                                           ; $5246: $3f
    ld bc, $0000                                  ; $5247: $01 $00 $00
    nop                                           ; $524a: $00
    nop                                           ; $524b: $00
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    nop                                           ; $524e: $00
    ccf                                           ; $524f: $3f
    ccf                                           ; $5250: $3f
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    ld hl, sp+$46                                 ; $5253: $f8 $46
    ld hl, sp+$46                                 ; $5255: $f8 $46
    rst $08                                       ; $5257: $cf
    add hl, hl                                    ; $5258: $29
    nop                                           ; $5259: $00
    nop                                           ; $525a: $00
    ld [$0825], sp                                ; $525b: $08 $25 $08
    dec h                                         ; $525e: $25
    ld [$0825], sp                                ; $525f: $08 $25 $08
    dec h                                         ; $5262: $25
    ret z                                         ; $5263: $c8

    inc bc                                        ; $5264: $03
    call nz, $0306                                ; $5265: $c4 $06 $03
    ld [bc], a                                    ; $5268: $02
    ld [bc], a                                    ; $5269: $02
    ld bc, $03c8                                  ; $526a: $01 $c8 $03
    ldh a, [$03]                                  ; $526d: $f0 $03
    call nz, $0306                                ; $526f: $c4 $06 $03
    ld [bc], a                                    ; $5272: $02
    ld c, b                                       ; $5273: $48
    ld a, a                                       ; $5274: $7f
    ld c, b                                       ; $5275: $48
    ld a, a                                       ; $5276: $7f
    ld c, b                                       ; $5277: $48
    ld a, a                                       ; $5278: $7f
    ld c, b                                       ; $5279: $48
    ld a, a                                       ; $527a: $7f
    rst $38                                       ; $527b: $ff
    ld a, a                                       ; $527c: $7f
    ld [$4403], a                                 ; $527d: $ea $03 $44
    ld [bc], a                                    ; $5280: $02
    ld b, b                                       ; $5281: $40
    dec d                                         ; $5282: $15
    cp a                                          ; $5283: $bf
    nop                                           ; $5284: $00
    add [hl]                                      ; $5285: $86
    ccf                                           ; $5286: $3f
    inc h                                         ; $5287: $24
    ld l, $40                                     ; $5288: $2e $40
    dec d                                         ; $528a: $15
    ld [$0825], sp                                ; $528b: $08 $25 $08
    dec h                                         ; $528e: $25
    ld [$0825], sp                                ; $528f: $08 $25 $08
    dec h                                         ; $5292: $25
    ei                                            ; $5293: $fb
    rst $38                                       ; $5294: $ff
    nop                                           ; $5295: $00
    cp $eb                                        ; $5296: $fe $eb
    ld [hl+], a                                   ; $5298: $22
    rst $18                                       ; $5299: $df
    nop                                           ; $529a: $00
    xor a                                         ; $529b: $af
    ld d, b                                       ; $529c: $50
    rst $38                                       ; $529d: $ff
    jp c, $fd25                                   ; $529e: $da $25 $fd

    ld b, d                                       ; $52a1: $42
    cp a                                          ; $52a2: $bf
    ld [hl+], a                                   ; $52a3: $22
    db $fd                                        ; $52a4: $fd
    adc b                                         ; $52a5: $88
    rst $38                                       ; $52a6: $ff
    db $eb                                        ; $52a7: $eb
    dec d                                         ; $52a8: $15
    rst $30                                       ; $52a9: $f7
    push af                                       ; $52aa: $f5
    inc bc                                        ; $52ab: $03
    and $0e                                       ; $52ac: $e6 $0e
    ret c                                         ; $52ae: $d8

    rst $38                                       ; $52af: $ff
    add hl, de                                    ; $52b0: $19
    pop hl                                        ; $52b1: $e1
    daa                                           ; $52b2: $27
    and [hl]                                      ; $52b3: $a6
    ld l, a                                       ; $52b4: $6f
    ret z                                         ; $52b5: $c8

    ld e, l                                       ; $52b6: $5d
    ld c, h                                       ; $52b7: $4c
    rst $38                                       ; $52b8: $ff
    db $db                                        ; $52b9: $db
    sub b                                         ; $52ba: $90
    cp a                                          ; $52bb: $bf

jr_072_52bc:
    db $fd                                        ; $52bc: $fd
    inc bc                                        ; $52bd: $03
    ld a, [$fa02]                                 ; $52be: $fa $02 $fa
    rst $38                                       ; $52c1: $ff
    ld b, $f4                                     ; $52c2: $06 $f4
    dec b                                         ; $52c4: $05
    db $e4                                        ; $52c5: $e4
    dec c                                         ; $52c6: $0d
    reti                                          ; $52c7: $d9


    dec sp                                        ; $52c8: $3b
    ld h, d                                       ; $52c9: $62
    rst $28                                       ; $52ca: $ef
    rst $20                                       ; $52cb: $e7
    add h                                         ; $52cc: $84
    sbc a                                         ; $52cd: $9f
    jr z, @-$2e                                   ; $52ce: $28 $d0

    ldh [rP1], a                                  ; $52d0: $e0 $00
    jp c, $ff00                                   ; $52d2: $da $00 $ff

jr_072_52d5:
    db $fd                                        ; $52d5: $fd
    inc b                                         ; $52d6: $04
    ei                                            ; $52d7: $fb
    ld hl, $46ff                                  ; $52d8: $21 $ff $46
    and a                                         ; $52db: $a7
    jr c, jr_072_52d5                             ; $52dc: $38 $f7

    cp $4f                                        ; $52de: $fe $4f
    add sp, -$02                                  ; $52e0: $e8 $fe
    pop hl                                        ; $52e2: $e1
    sub a                                         ; $52e3: $97
    ret c                                         ; $52e4: $d8

    sub a                                         ; $52e5: $97
    ret nc                                        ; $52e6: $d0

    cp a                                          ; $52e7: $bf
    cpl                                           ; $52e8: $2f
    or b                                          ; $52e9: $b0
    ld e, a                                       ; $52ea: $5f
    ld h, b                                       ; $52eb: $60
    sbc a                                         ; $52ec: $9f
    ret nz                                        ; $52ed: $c0

    and b                                         ; $52ee: $a0
    push hl                                       ; $52ef: $e5
    cp $ff                                        ; $52f0: $fe $ff
    ld bc, $03f1                                  ; $52f2: $01 $f1 $03
    and $0f                                       ; $52f5: $e6 $0f
    cp b                                          ; $52f7: $b8
    ld a, [hl]                                    ; $52f8: $7e
    ret z                                         ; $52f9: $c8

    rst $38                                       ; $52fa: $ff
    ld l, a                                       ; $52fb: $6f
    jp z, Jump_072_486d                           ; $52fc: $ca $6d $48

    ld [$dd90], a                                 ; $52ff: $ea $90 $dd
    sub b                                         ; $5302: $90
    rst $38                                       ; $5303: $ff
    rst $18                                       ; $5304: $df
    jr z, jr_072_52bc                             ; $5305: $28 $b5

    ld b, b                                       ; $5307: $40
    ld l, e                                       ; $5308: $6b
    add b                                         ; $5309: $80
    rst $30                                       ; $530a: $f7
    rst $38                                       ; $530b: $ff
    push af                                       ; $530c: $f5
    nop                                           ; $530d: $00
    xor [hl]                                      ; $530e: $ae
    ldh [$03], a                                  ; $530f: $e0 $03
    xor [hl]                                      ; $5311: $ae
    ldh [$0d], a                                  ; $5312: $e0 $0d
    ret                                           ; $5314: $c9


    dec de                                        ; $5315: $1b
    or d                                          ; $5316: $b2
    rst $38                                       ; $5317: $ff
    ld [hl], a                                    ; $5318: $77
    call nz, $c96f                                ; $5319: $c4 $6f $c9
    dec c                                         ; $531c: $0d
    jp nc, $d21b                                  ; $531d: $d2 $1b $d2

    rst $38                                       ; $5320: $ff
    dec sp                                        ; $5321: $3b
    db $e4                                        ; $5322: $e4
    scf                                           ; $5323: $37
    db $e4                                        ; $5324: $e4
    scf                                           ; $5325: $37
    and [hl]                                      ; $5326: $a6
    ld [hl], l                                    ; $5327: $75
    ret z                                         ; $5328: $c8

    rst $28                                       ; $5329: $ef
    ld l, a                                       ; $532a: $6f
    ret z                                         ; $532b: $c8

    ld l, a                                       ; $532c: $6f
    ld sp, hl                                     ; $532d: $f9
    add b                                         ; $532e: $80
    pop hl                                        ; $532f: $e1
    add hl, sp                                    ; $5330: $39
    pop hl                                        ; $5331: $e1
    rst $20                                       ; $5332: $e7
    rst $38                                       ; $5333: $ff
    ld b, $1f                                     ; $5334: $06 $1f
    add hl, de                                    ; $5336: $19
    rst $38                                       ; $5337: $ff
    ld [c], a                                     ; $5338: $e2
    db $fd                                        ; $5339: $fd
    db $10                                        ; $533a: $10
    ld a, [$fbff]                                 ; $533b: $fa $ff $fb
    nop                                           ; $533e: $00
    rst $30                                       ; $533f: $f7
    rlca                                          ; $5340: $07
    ret c                                         ; $5341: $d8

    rra                                           ; $5342: $1f

jr_072_5343:
    ldh [$78], a                                  ; $5343: $e0 $78
    rst $38                                       ; $5345: $ff
    add a                                         ; $5346: $87
    rst $20                                       ; $5347: $e7
    ld a, [de]                                    ; $5348: $1a
    sbc l                                         ; $5349: $9d
    ld h, b                                       ; $534a: $60
    ld a, d                                       ; $534b: $7a
    add b                                         ; $534c: $80
    db $fd                                        ; $534d: $fd
    db $fc                                        ; $534e: $fc
    jp nc, $d0e0                                  ; $534f: $d2 $e0 $d0

    pop hl                                        ; $5352: $e1
    rst $30                                       ; $5353: $f7
    inc b                                         ; $5354: $04
    rst $28                                       ; $5355: $ef
    jr jr_072_5375                                ; $5356: $18 $1d

    ldh [$f7], a                                  ; $5358: $e0 $f7
    rst $28                                       ; $535a: $ef
    nop                                           ; $535b: $00
    rst $10                                       ; $535c: $d7
    ldh [$e0], a                                  ; $535d: $e0 $e0
    rrca                                          ; $535f: $0f
    ret c                                         ; $5360: $d8

    jr c, jr_072_5343                             ; $5361: $38 $e0

    rst $38                                       ; $5363: $ff
    scf                                           ; $5364: $37
    and a                                         ; $5365: $a7
    ld l, a                                       ; $5366: $6f
    ret z                                         ; $5367: $c8

    ld e, a                                       ; $5368: $5f
    ret z                                         ; $5369: $c8

    ld e, d                                       ; $536a: $5a
    ret z                                         ; $536b: $c8

    rst $38                                       ; $536c: $ff
    ld e, l                                       ; $536d: $5d
    nop                                           ; $536e: $00
    rst $38                                       ; $536f: $ff
    db $10                                        ; $5370: $10
    ld a, [$ad00]                                 ; $5371: $fa $00 $ad
    nop                                           ; $5374: $00

jr_072_5375:
    rst $38                                       ; $5375: $ff
    rst $18                                       ; $5376: $df
    db $e4                                        ; $5377: $e4

jr_072_5378:
    rst $38                                       ; $5378: $ff
    jr jr_072_5378                                ; $5379: $18 $fd

    inc b                                         ; $537b: $04

jr_072_537c:
    rra                                           ; $537c: $1f
    ld [c], a                                     ; $537d: $e2
    db $fd                                        ; $537e: $fd

Jump_072_537f:
    rst $20                                       ; $537f: $e7
    db $10                                        ; $5380: $10
    push hl                                       ; $5381: $e5
    rst $28                                       ; $5382: $ef
    ldh a, [rNR31]                                ; $5383: $f0 $1b
    db $fc                                        ; $5385: $fc
    dec b                                         ; $5386: $05
    ld e, $ff                                     ; $5387: $1e $ff
    db $e3                                        ; $5389: $e3

jr_072_538a:
    and $4f                                       ; $538a: $e6 $4f
    add sp, -$71                                  ; $538c: $e8 $8f
    ret z                                         ; $538e: $c8

    cpl                                           ; $538f: $2f
    sbc b                                         ; $5390: $98
    rst $28                                       ; $5391: $ef
    rla                                           ; $5392: $17
    jr c, jr_072_537c                             ; $5393: $38 $e7

    ldh a, [$f6]                                  ; $5395: $f0 $f6
    jp Jump_072_6fc8                              ; $5397: $c3 $c8 $6f


jr_072_539a:
    ld [$cdff], a                                 ; $539a: $ea $ff $cd
    ld c, b                                       ; $539d: $48
    sbc d                                         ; $539e: $9a
    db $10                                        ; $539f: $10
    dec a                                         ; $53a0: $3d
    ldh [rIE], a                                  ; $53a1: $e0 $ff
    jr nz, @+$01                                  ; $53a3: $20 $ff

    db $fd                                        ; $53a5: $fd
    ld [de], a                                    ; $53a6: $12
    db $eb                                        ; $53a7: $eb
    nop                                           ; $53a8: $00
    rst $30                                       ; $53a9: $f7
    sub e                                         ; $53aa: $93
    cp b                                          ; $53ab: $b8
    cpl                                           ; $53ac: $2f
    rst $30                                       ; $53ad: $f7
    ld h, b                                       ; $53ae: $60
    ld e, a                                       ; $53af: $5f
    ret nz                                        ; $53b0: $c0

    jr c, jr_072_539a                             ; $53b1: $38 $e7

    ld [$309f], sp                                ; $53b3: $08 $9f $30
    ld a, a                                       ; $53b6: $7f
    rst $38                                       ; $53b7: $ff
    ld d, b                                       ; $53b8: $50
    ld l, d                                       ; $53b9: $6a
    ld b, h                                       ; $53ba: $44
    db $fd                                        ; $53bb: $fd
    add b                                         ; $53bc: $80
    rst $38                                       ; $53bd: $ff
    jr z, @-$09                                   ; $53be: $28 $f5

    ld sp, hl                                     ; $53c0: $f9
    nop                                           ; $53c1: $00
    ldh [$e0], a                                  ; $53c2: $e0 $e0
    ret nz                                        ; $53c4: $c0

    jp Jump_000_01fc                              ; $53c5: $c3 $fc $01


    db $e3                                        ; $53c8: $e3
    rlca                                          ; $53c9: $07
    sbc h                                         ; $53ca: $9c
    ld e, a                                       ; $53cb: $5f
    inc a                                         ; $53cc: $3c
    ld h, b                                       ; $53cd: $60
    db $e3                                        ; $53ce: $e3
    add e                                         ; $53cf: $83
    sbc a                                         ; $53d0: $9f
    ld d, b                                       ; $53d1: $50

jr_072_53d2:
    pop hl                                        ; $53d2: $e1
    sbc b                                         ; $53d3: $98

jr_072_53d4:
    ld d, b                                       ; $53d4: $50
    ld [c], a                                     ; $53d5: $e2
    rst $38                                       ; $53d6: $ff
    jr jr_072_53d4                                ; $53d7: $18 $fb

    ld [c], a                                     ; $53d9: $e2
    push af                                       ; $53da: $f5
    nop                                           ; $53db: $00
    rst $38                                       ; $53dc: $ff
    cp $01                                        ; $53dd: $fe $01
    rst $38                                       ; $53df: $ff
    rst $20                                       ; $53e0: $e7
    rrca                                          ; $53e1: $0f
    ret c                                         ; $53e2: $d8

    ccf                                           ; $53e3: $3f
    ld h, b                                       ; $53e4: $60
    ld hl, sp-$79                                 ; $53e5: $f8 $87
    rst $20                                       ; $53e7: $e7
    ei                                            ; $53e8: $fb
    jr jr_072_538a                                ; $53e9: $18 $9f

    ld d, b                                       ; $53eb: $50
    pop hl                                        ; $53ec: $e1
    pop bc                                        ; $53ed: $c1
    ld sp, hl                                     ; $53ee: $f9
    ld b, $c7                                     ; $53ef: $06 $c7
    jr c, jr_072_5472                             ; $53f1: $38 $7f

    ld a, [hl-]                                   ; $53f3: $3a
    ret nz                                        ; $53f4: $c0

    db $dd                                        ; $53f5: $dd
    inc b                                         ; $53f6: $04

jr_072_53f7:
    ei                                            ; $53f7: $fb
    jr nz, jr_072_53f7                            ; $53f8: $20 $fd

    ret nz                                        ; $53fa: $c0

    push hl                                       ; $53fb: $e5
    rst $18                                       ; $53fc: $df
    cp $01                                        ; $53fd: $fe $01
    rst $38                                       ; $53ff: $ff
    ld bc, $faf9                                  ; $5400: $01 $f9 $fa

jr_072_5403:
    pop bc                                        ; $5403: $c1
    rlca                                          ; $5404: $07
    db $f4                                        ; $5405: $f4
    rst $38                                       ; $5406: $ff
    ld b, $48                                     ; $5407: $06 $48
    rst $28                                       ; $5409: $ef
    sub b                                         ; $540a: $90
    jp c, $dd90                                   ; $540b: $da $90 $dd

    inc h                                         ; $540e: $24
    sbc a                                         ; $540f: $9f
    xor e                                         ; $5410: $ab
    jr nz, jr_072_53d2                            ; $5411: $20 $bf

    ld d, b                                       ; $5413: $50
    ld a, l                                       ; $5414: $7d
    ldh [$c3], a                                  ; $5415: $e0 $c3
    ld e, [hl]                                    ; $5417: $5e
    jp $ffe7                                      ; $5418: $c3 $e7 $ff


    rrca                                          ; $541b: $0f
    sbc b                                         ; $541c: $98
    jr c, jr_072_547f                             ; $541d: $38 $60

    rst $20                                       ; $541f: $e7
    add a                                         ; $5420: $87
    sbc a                                         ; $5421: $9f
    ld [$ffff], sp                                ; $5422: $08 $ff $ff
    nop                                           ; $5425: $00
    xor a                                         ; $5426: $af
    jr nz, jr_072_5403                            ; $5427: $20 $da

    ld b, b                                       ; $5429: $40
    db $ed                                        ; $542a: $ed
    rlca                                          ; $542b: $07
    rst $30                                       ; $542c: $f7
    rst $38                                       ; $542d: $ff
    jr @-$06                                      ; $542e: $18 $f8

    ldh a, [$e1]                                  ; $5430: $f0 $e1
    dec bc                                        ; $5432: $0b
    sbc h                                         ; $5433: $9c
    inc sp                                        ; $5434: $33
    ld a, b                                       ; $5435: $78
    cp l                                          ; $5436: $bd
    ld b, a                                       ; $5437: $47
    ld e, [hl]                                    ; $5438: $5e
    ldh [$bf], a                                  ; $5439: $e0 $bf
    ret nz                                        ; $543b: $c0

    ld a, a                                       ; $543c: $7f
    add b                                         ; $543d: $80
    inc [hl]                                      ; $543e: $34
    pop bc                                        ; $543f: $c1
    sub b                                         ; $5440: $90
    rst $38                                       ; $5441: $ff
    or a                                          ; $5442: $b7
    inc h                                         ; $5443: $24
    ld l, a                                       ; $5444: $6f
    ld b, h                                       ; $5445: $44
    ei                                            ; $5446: $fb
    add b                                         ; $5447: $80
    rst $38                                       ; $5448: $ff
    ld b, b                                       ; $5449: $40
    rst $28                                       ; $544a: $ef
    cp a                                          ; $544b: $bf
    ld [bc], a                                    ; $544c: $02
    ld e, e                                       ; $544d: $5b
    ld [hl+], a                                   ; $544e: $22
    add b                                         ; $544f: $80
    ldh [rOBP0], a                                ; $5450: $e0 $48
    rst $08                                       ; $5452: $cf
    ld c, b                                       ; $5453: $48
    rst $38                                       ; $5454: $ff
    rst $18                                       ; $5455: $df
    sub h                                         ; $5456: $94
    cp c                                          ; $5457: $b9
    sub b                                         ; $5458: $90
    cp e                                          ; $5459: $bb
    sub b                                         ; $545a: $90
    cp a                                          ; $545b: $bf
    ld d, b                                       ; $545c: $50
    rst $38                                       ; $545d: $ff
    db $fd                                        ; $545e: $fd
    ld c, b                                       ; $545f: $48
    rst $18                                       ; $5460: $df
    ld c, d                                       ; $5461: $4a
    rst $08                                       ; $5462: $cf
    sub b                                         ; $5463: $90
    sbc a                                         ; $5464: $9f
    sub b                                         ; $5465: $90
    rst $38                                       ; $5466: $ff
    rst $18                                       ; $5467: $df
    ld c, b                                       ; $5468: $48
    ld [$6d4a], a                                 ; $5469: $ea $4a $6d
    ld c, b                                       ; $546c: $48
    ld l, a                                       ; $546d: $6f
    ld d, b                                       ; $546e: $50
    rst $38                                       ; $546f: $ff
    push af                                       ; $5470: $f5
    sub b                                         ; $5471: $90

jr_072_5472:
    rst $10                                       ; $5472: $d7
    sub d                                         ; $5473: $92
    sub a                                         ; $5474: $97
    ld c, e                                       ; $5475: $4b
    ret z                                         ; $5476: $c8

    ld c, e                                       ; $5477: $4b
    rst $38                                       ; $5478: $ff
    ret c                                         ; $5479: $d8

    sub a                                         ; $547a: $97
    cp b                                          ; $547b: $b8
    sub a                                         ; $547c: $97
    or b                                          ; $547d: $b0
    sub a                                         ; $547e: $97

jr_072_547f:
    or b                                          ; $547f: $b0
    ld d, a                                       ; $5480: $57
    rst $38                                       ; $5481: $ff
    ret c                                         ; $5482: $d8

    ld c, e                                       ; $5483: $4b
    ret c                                         ; $5484: $d8

    ld c, e                                       ; $5485: $4b
    ret z                                         ; $5486: $c8

    sub a                                         ; $5487: $97
    sub b                                         ; $5488: $90
    sub a                                         ; $5489: $97
    db $fd                                        ; $548a: $fd
    ret c                                         ; $548b: $d8

    inc a                                         ; $548c: $3c
    ret nz                                        ; $548d: $c0

    ld l, b                                       ; $548e: $68
    ld c, a                                       ; $548f: $4f
    ld l, b                                       ; $5490: $68
    ld d, a                                       ; $5491: $57
    ld hl, sp-$61                                 ; $5492: $f8 $9f
    rst $30                                       ; $5494: $f7
    ret nc                                        ; $5495: $d0

    sbc a                                         ; $5496: $9f
    sub b                                         ; $5497: $90
    ldh [$a3], a                                  ; $5498: $e0 $a3
    cp l                                          ; $549a: $bd
    ld a, [hl]                                    ; $549b: $7e
    jp $9fff                                      ; $549c: $c3 $ff $9f


    nop                                           ; $549f: $00
    jp Jump_000_3c3c                              ; $54a0: $c3 $3c $3c


    jp $e0f9                                      ; $54a3: $c3 $f9 $e0


    ld [hl], d                                    ; $54a6: $72
    ld [c], a                                     ; $54a7: $e2
    halt                                          ; $54a8: $76
    ld a, a                                       ; $54a9: $7f
    sbc c                                         ; $54aa: $99
    rst $38                                       ; $54ab: $ff
    nop                                           ; $54ac: $00
    sbc c                                         ; $54ad: $99
    ld h, [hl]                                    ; $54ae: $66
    ld h, [hl]                                    ; $54af: $66
    sbc c                                         ; $54b0: $99
    ld [hl], b                                    ; $54b1: $70
    ldh [$bf], a                                  ; $54b2: $e0 $bf
    ld [bc], a                                    ; $54b4: $02
    xor l                                         ; $54b5: $ad
    ld [bc], a                                    ; $54b6: $02
    jp c, $fd3c                                   ; $54b7: $da $3c $fd

    ldh [$e4], a                                  ; $54ba: $e0 $e4
    ei                                            ; $54bc: $fb
    cp [hl]                                       ; $54bd: $be
    ldh a, [$e0]                                  ; $54be: $f0 $e0
    xor a                                         ; $54c0: $af
    nop                                           ; $54c1: $00
    reti                                          ; $54c2: $d9


    halt                                          ; $54c3: $76
    rst $28                                       ; $54c4: $ef
    ldh [$e4], a                                  ; $54c5: $e0 $e4
    rst $18                                       ; $54c7: $df
    rst $18                                       ; $54c8: $df
    ld bc, $0603                                  ; $54c9: $01 $03 $06
    ld c, $18                                     ; $54cc: $0e $18
    ldh a, [$c8]                                  ; $54ce: $f0 $c8
    dec de                                        ; $54d0: $1b
    ld a, b                                       ; $54d1: $78
    rst $20                                       ; $54d2: $e7
    ld h, a                                       ; $54d3: $67
    ldh [$df], a                                  ; $54d4: $e0 $df
    ld d, [hl]                                    ; $54d6: $56
    ld [c], a                                     ; $54d7: $e2
    add [hl]                                      ; $54d8: $86
    and e                                         ; $54d9: $a3
    ld d, b                                       ; $54da: $50
    xor a                                         ; $54db: $af
    dec h                                         ; $54dc: $25
    rst $38                                       ; $54dd: $ff
    jp c, $b807                                   ; $54de: $da $07 $b8

    rlca                                          ; $54e1: $07
    db $fd                                        ; $54e2: $fd
    and d                                         ; $54e3: $a2
    ld e, a                                       ; $54e4: $5f
    ldh [rIE], a                                  ; $54e5: $e0 $ff
    rla                                           ; $54e7: $17
    push hl                                       ; $54e8: $e5
    cp d                                          ; $54e9: $ba
    ld b, d                                       ; $54ea: $42
    db $fd                                        ; $54eb: $fd
    db $fd                                        ; $54ec: $fd
    db $fd                                        ; $54ed: $fd
    rst $18                                       ; $54ee: $df
    rst $38                                       ; $54ef: $ff
    rst $38                                       ; $54f0: $ff
    ei                                            ; $54f1: $fb
    rst $38                                       ; $54f2: $ff
    rst $38                                       ; $54f3: $ff
    rst $38                                       ; $54f4: $ff
    ld a, l                                       ; $54f5: $7d
    rst $38                                       ; $54f6: $ff
    rst $28                                       ; $54f7: $ef
    ei                                            ; $54f8: $fb
    rst $28                                       ; $54f9: $ef
    rst $38                                       ; $54fa: $ff
    or $e0                                        ; $54fb: $f6 $e0
    xor l                                         ; $54fd: $ad
    rst $28                                       ; $54fe: $ef
    halt                                          ; $54ff: $76
    rst $38                                       ; $5500: $ff
    and $fe                                       ; $5501: $e6 $fe
    xor $e0                                       ; $5503: $ee $e0
    db $e4                                        ; $5505: $e4
    db $eb                                        ; $5506: $eb
    ld [hl], h                                    ; $5507: $74
    rst $30                                       ; $5508: $f7
    ld c, b                                       ; $5509: $48
    rst $38                                       ; $550a: $ff
    add b                                         ; $550b: $80
    rst $38                                       ; $550c: $ff
    cp e                                          ; $550d: $bb
    db $eb                                        ; $550e: $eb
    rst $38                                       ; $550f: $ff
    ld a, h                                       ; $5510: $7c
    rst $38                                       ; $5511: $ff
    ld d, b                                       ; $5512: $50
    rst $10                                       ; $5513: $d7
    xor h                                         ; $5514: $ac
    db $fd                                        ; $5515: $fd
    db $eb                                        ; $5516: $eb
    ld h, a                                       ; $5517: $67
    pop hl                                        ; $5518: $e1
    ld b, b                                       ; $5519: $40
    or l                                          ; $551a: $b5
    nop                                           ; $551b: $00
    ei                                            ; $551c: $fb
    ld bc, $ffff                                  ; $551d: $01 $ff $ff
    ld [bc], a                                    ; $5520: $02
    rst $10                                       ; $5521: $d7
    db $10                                        ; $5522: $10
    db $ed                                        ; $5523: $ed
    dec b                                         ; $5524: $05
    rst $38                                       ; $5525: $ff
    inc bc                                        ; $5526: $03
    rst $38                                       ; $5527: $ff
    rst $38                                       ; $5528: $ff
    ld a, [hl+]                                   ; $5529: $2a
    jp c, $bd08                                   ; $552a: $da $08 $bd

    dec d                                         ; $552d: $15
    rst $38                                       ; $552e: $ff
    ld c, $ff                                     ; $552f: $0e $ff
    rst $38                                       ; $5531: $ff
    ld b, l                                       ; $5532: $45
    rst $30                                       ; $5533: $f7
    ld a, [bc]                                    ; $5534: $0a
    cp $25                                        ; $5535: $fe $25
    rst $28                                       ; $5537: $ef
    sbc e                                         ; $5538: $9b
    rst $30                                       ; $5539: $f7
    rst $38                                       ; $553a: $ff
    ld e, $ff                                     ; $553b: $1e $ff
    halt                                          ; $553d: $76
    cp [hl]                                       ; $553e: $be
    db $db                                        ; $553f: $db
    rst $38                                       ; $5540: $ff
    cp $ff                                        ; $5541: $fe $ff
    rst $38                                       ; $5543: $ff
    push af                                       ; $5544: $f5
    push af                                       ; $5545: $f5
    ld l, b                                       ; $5546: $68
    rst $28                                       ; $5547: $ef
    call nc, $b8ff                                ; $5548: $d4 $ff $b8
    xor a                                         ; $554b: $af
    rst $38                                       ; $554c: $ff
    ret nc                                        ; $554d: $d0

    jp c, $fda5                                   ; $554e: $da $a5 $fd

    ld d, d                                       ; $5551: $52
    rst $38                                       ; $5552: $ff
    ld [bc], a                                    ; $5553: $02

Call_072_5554:
Jump_072_5554:
    ei                                            ; $5554: $fb
    rst $38                                       ; $5555: $ff
    ld b, l                                       ; $5556: $45
    xor a                                         ; $5557: $af
    ld d, [hl]                                    ; $5558: $56
    jp c, $fe22                                   ; $5559: $da $22 $fe

    dec b                                         ; $555c: $05
    rst $38                                       ; $555d: $ff
    rst $38                                       ; $555e: $ff
    ld h, $fd                                     ; $555f: $26 $fd

jr_072_5561:
    inc bc                                        ; $5561: $03
    cp e                                          ; $5562: $bb
    ld bc, $b9fd                                  ; $5563: $01 $fd $b9
    ei                                            ; $5566: $fb
    rst $38                                       ; $5567: $ff
    ld [hl], h                                    ; $5568: $74
    rst $10                                       ; $5569: $d7
    ld a, [hl+]                                   ; $556a: $2a
    db $ed                                        ; $556b: $ed
    ld [bc], a                                    ; $556c: $02
    rst $38                                       ; $556d: $ff
    jr nz, @-$24                                  ; $556e: $20 $da

    cp $da                                        ; $5570: $fe $da
    and c                                         ; $5572: $a1

jr_072_5573:
    nop                                           ; $5573: $00
    ei                                            ; $5574: $fb
    call c, $faff                                 ; $5575: $dc $ff $fa
    ei                                            ; $5578: $fb
    db $f4                                        ; $5579: $f4
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    and $eb                                       ; $557c: $e6 $eb
    db $f4                                        ; $557e: $f4
    rst $30                                       ; $557f: $f7
    ld l, b                                       ; $5580: $68
    rst $38                                       ; $5581: $ff
    jp nc, $fffb                                  ; $5582: $d2 $fb $ff

    add sp, $76                                   ; $5585: $e8 $76
    ldh [$fa], a                                  ; $5587: $e0 $fa
    cp $ad                                        ; $5589: $fe $ad
    db $fd                                        ; $558b: $fd
    ld e, e                                       ; $558c: $5b
    rst $08                                       ; $558d: $cf
    rst $18                                       ; $558e: $df

jr_072_558f:
    adc b                                         ; $558f: $88
    push af                                       ; $5590: $f5
    db $10                                        ; $5591: $10
    push de                                       ; $5592: $d5
    add d                                         ; $5593: $82
    halt                                          ; $5594: $76
    ret nz                                        ; $5595: $c0

    jr jr_072_5573                                ; $5596: $18 $db

    rst $38                                       ; $5598: $ff
    inc a                                         ; $5599: $3c
    and l                                         ; $559a: $a5
    ld a, [hl]                                    ; $559b: $7e
    jp $c366                                      ; $559c: $c3 $66 $c3


    ld h, [hl]                                    ; $559f: $66
    sbc c                                         ; $55a0: $99

jr_072_55a1:
    db $fd                                        ; $55a1: $fd
    ld b, d                                       ; $55a2: $42
    jp nz, $b781                                  ; $55a3: $c2 $81 $b7

    ld a, b                                       ; $55a6: $78
    adc e                                         ; $55a7: $8b
    inc a                                         ; $55a8: $3c
    push bc                                       ; $55a9: $c5
    ld c, $bf                                     ; $55aa: $0e $bf
    push bc                                       ; $55ac: $c5
    ld c, $8b                                     ; $55ad: $0e $8b
    inc a                                         ; $55af: $3c
    or a                                          ; $55b0: $b7
    ld a, b                                       ; $55b1: $78
    or d                                          ; $55b2: $b2
    add c                                         ; $55b3: $81
    rst $18                                       ; $55b4: $df
    rst $38                                       ; $55b5: $ff
    ld a, $e7                                     ; $55b6: $3e $e7
    ld a, [hl]                                    ; $55b8: $7e
    inc bc                                        ; $55b9: $03
    adc $33                                       ; $55ba: $ce $33
    add [hl]                                      ; $55bc: $86
    push af                                       ; $55bd: $f5
    rst $18                                       ; $55be: $df
    ld b, $e7                                     ; $55bf: $06 $e7
    inc c                                         ; $55c1: $0c
    rst $20                                       ; $55c2: $e7
    jr @-$68                                      ; $55c3: $18 $96

    and b                                         ; $55c5: $a0
    db $10                                        ; $55c6: $10
    rst $10                                       ; $55c7: $d7
    ld a, a                                       ; $55c8: $7f
    jr c, @-$53                                   ; $55c9: $38 $ab

    ld a, h                                       ; $55cb: $7c
    rst $00                                       ; $55cc: $c7
    ld l, h                                       ; $55cd: $6c
    sub e                                         ; $55ce: $93
    ld b, h                                       ; $55cf: $44
    sub h                                         ; $55d0: $94
    add l                                         ; $55d1: $85
    rst $38                                       ; $55d2: $ff
    rst $10                                       ; $55d3: $d7
    jr c, jr_072_55a1                             ; $55d4: $38 $cb

    inc e                                         ; $55d6: $1c
    push hl                                       ; $55d7: $e5
    ld c, $cb                                     ; $55d8: $0e $cb
    inc e                                         ; $55da: $1c
    ei                                            ; $55db: $fb
    rst $10                                       ; $55dc: $d7
    jr c, jr_072_5561                             ; $55dd: $38 $82

    add h                                         ; $55df: $84
    inc a                                         ; $55e0: $3c
    add a                                         ; $55e1: $87
    ld a, h                                       ; $55e2: $7c
    rst $30                                       ; $55e3: $f7

jr_072_55e4:
    inc c                                         ; $55e4: $0c
    ld hl, sp-$02                                 ; $55e5: $f8 $fe

jr_072_55e7:
    ldh [rNR44], a                                ; $55e7: $e0 $23
    ret nz                                        ; $55e9: $c0

    ld h, h                                       ; $55ea: $64
    and d                                         ; $55eb: $a2
    db $10                                        ; $55ec: $10
    rst $28                                       ; $55ed: $ef
    jr jr_072_55e7                                ; $55ee: $18 $f7

    inc c                                         ; $55f0: $0c
    rst $20                                       ; $55f1: $e7
    rst $28                                       ; $55f2: $ef
    jr jr_072_55e4                                ; $55f3: $18 $ef

    adc l                                         ; $55f5: $8d
    db $e3                                        ; $55f6: $e3
    dec a                                         ; $55f7: $3d
    and b                                         ; $55f8: $a0
    rst $28                                       ; $55f9: $ef
    jr c, jr_072_558f                             ; $55fa: $38 $93

    ld a, l                                       ; $55fc: $7d
    ld l, h                                       ; $55fd: $6c
    ld d, [hl]                                    ; $55fe: $56
    add a                                         ; $55ff: $87
    rst $08                                       ; $5600: $cf
    inc a                                         ; $5601: $3c
    rst $38                                       ; $5602: $ff
    inc b                                         ; $5603: $04
    ei                                            ; $5604: $fb
    cp $e0                                        ; $5605: $fe $e0
    db $fc                                        ; $5607: $fc
    ld b, h                                       ; $5608: $44
    add c                                         ; $5609: $81
    ld b, c                                       ; $560a: $41
    adc h                                         ; $560b: $8c
    rst $38                                       ; $560c: $ff
    add b                                         ; $560d: $80
    cp a                                          ; $560e: $bf
    ld b, b                                       ; $560f: $40
    rst $38                                       ; $5610: $ff
    ld h, b                                       ; $5611: $60
    rst $38                                       ; $5612: $ff
    rst $18                                       ; $5613: $df
    jr nz, @+$01                                  ; $5614: $20 $ff

    and b                                         ; $5616: $a0
    cp a                                          ; $5617: $bf
    jr nz, @+$71                                  ; $5618: $20 $6f

    db $10                                        ; $561a: $10
    rst $30                                       ; $561b: $f7
    rst $30                                       ; $561c: $f7
    ld d, b                                       ; $561d: $50
    rst $30                                       ; $561e: $f7
    ldh a, [$e3]                                  ; $561f: $f0 $e3
    and b                                         ; $5621: $a0
    ld a, a                                       ; $5622: $7f
    and b                                         ; $5623: $a0
    ld l, a                                       ; $5624: $6f
    ei                                            ; $5625: $fb
    ret nc                                        ; $5626: $d0

    scf                                           ; $5627: $37
    cp $e1                                        ; $5628: $fe $e1
    db $10                                        ; $562a: $10
    rst $30                                       ; $562b: $f7
    ld [$08db], sp                                ; $562c: $08 $db $08
    rst $38                                       ; $562f: $ff
    ei                                            ; $5630: $fb
    ld b, h                                       ; $5631: $44
    rst $38                                       ; $5632: $ff
    and h                                         ; $5633: $a4
    cp l                                          ; $5634: $bd
    ld c, $5b                                     ; $5635: $0e $5b
    ld [bc], a                                    ; $5637: $02
    rst $38                                       ; $5638: $ff
    or $41                                        ; $5639: $f6 $41
    rst $38                                       ; $563b: $ff
    cp a                                          ; $563c: $bf
    ret nz                                        ; $563d: $c0

    ld e, a                                       ; $563e: $5f
    ld h, b                                       ; $563f: $60
    ld e, a                                       ; $5640: $5f
    ld a, a                                       ; $5641: $7f
    ld h, b                                       ; $5642: $60
    cpl                                           ; $5643: $2f
    or b                                          ; $5644: $b0
    cpl                                           ; $5645: $2f
    or b                                          ; $5646: $b0
    rla                                           ; $5647: $17
    ret c                                         ; $5648: $d8

    cp $e1                                        ; $5649: $fe $e1
    cp $c0                                        ; $564b: $fe $c0
    ldh [$df], a                                  ; $564d: $e0 $df
    or b                                          ; $564f: $b0
    ld l, a                                       ; $5650: $6f
    ldh [$2f], a                                  ; $5651: $e0 $2f
    call nc, $ff33                                ; $5653: $d4 $33 $ff
    db $ec                                        ; $5656: $ec
    dec e                                         ; $5657: $1d
    ld a, [c]                                     ; $5658: $f2
    ld c, $fd                                     ; $5659: $0e $fd
    inc bc                                        ; $565b: $03
    add b                                         ; $565c: $80
    cp a                                          ; $565d: $bf
    cp $b2                                        ; $565e: $fe $b2
    pop hl                                        ; $5660: $e1
    jr nz, @-$0f                                  ; $5661: $20 $ef

    db $10                                        ; $5663: $10
    or e                                          ; $5664: $b3
    inc c                                         ; $5665: $0c
    db $ed                                        ; $5666: $ed
    ld [hl+], a                                   ; $5667: $22
    ld a, h                                       ; $5668: $7c
    ld d, a                                       ; $5669: $57
    and b                                         ; $566a: $a0
    inc sp                                        ; $566b: $33
    add l                                         ; $566c: $85
    ld c, $ce                                     ; $566d: $0e $ce
    ld [hl-], a                                   ; $566f: $32
    cp a                                          ; $5670: $bf
    ld d, b                                       ; $5671: $50
    ld b, b                                       ; $5672: $40
    add b                                         ; $5673: $80
    ld a, l                                       ; $5674: $7d
    ld bc, $a030                                  ; $5675: $01 $30 $a0
    inc a                                         ; $5678: $3c
    ld a, [hl-]                                   ; $5679: $3a
    push hl                                       ; $567a: $e5
    db $dd                                        ; $567b: $dd
    ld [bc], a                                    ; $567c: $02
    ld l, b                                       ; $567d: $68
    and b                                         ; $567e: $a0
    ld sp, hl                                     ; $567f: $f9
    ld d, b                                       ; $5680: $50
    adc b                                         ; $5681: $88
    ldh [rNR13], a                                ; $5682: $e0 $13
    add h                                         ; $5684: $84
    ld sp, hl                                     ; $5685: $f9
    ld c, $ef                                     ; $5686: $0e $ef
    ld sp, $ffbe                                  ; $5688: $31 $be $ff
    ld c, a                                       ; $568b: $4f
    ld [hl], b                                    ; $568c: $70
    cp a                                          ; $568d: $bf
    ret nz                                        ; $568e: $c0

    ld bc, $06fd                                  ; $568f: $01 $fd $06
    rst $20                                       ; $5692: $e7
    sbc a                                         ; $5693: $9f
    add hl, sp                                    ; $5694: $39
    ld a, $c7                                     ; $5695: $3e $c7
    ld hl, sp+$3f                                 ; $5697: $f8 $3f
    or $64                                        ; $5699: $f6 $64
    sub c                                         ; $569b: $91
    ld h, b                                       ; $569c: $60
    rst $00                                       ; $569d: $c7
    rst $00                                       ; $569e: $c7
    jr c, jr_072_56d9                             ; $569f: $38 $38

    rst $00                                       ; $56a1: $c7
    or d                                          ; $56a2: $b2
    and b                                         ; $56a3: $a0
    add [hl]                                      ; $56a4: $86
    ld h, e                                       ; $56a5: $63
    ld l, d                                       ; $56a6: $6a
    pop hl                                        ; $56a7: $e1
    add sp, $1b                                   ; $56a8: $e8 $1b
    ld a, [c]                                     ; $56aa: $f2
    cp $e2                                        ; $56ab: $fe $e2
    rra                                           ; $56ad: $1f
    ld e, [hl]                                    ; $56ae: $5e
    pop hl                                        ; $56af: $e1
    ld [hl], c                                    ; $56b0: $71
    ld h, a                                       ; $56b1: $67
    jr nz, @-$3b                                  ; $56b2: $20 $c3

    inc e                                         ; $56b4: $1c
    inc e                                         ; $56b5: $1c
    rst $28                                       ; $56b6: $ef
    db $e3                                        ; $56b7: $e3
    db $e3                                        ; $56b8: $e3
    add b                                         ; $56b9: $80
    cp a                                          ; $56ba: $bf
    dec h                                         ; $56bb: $25
    and b                                         ; $56bc: $a0
    rst $38                                       ; $56bd: $ff
    ld b, b                                       ; $56be: $40
    ld e, a                                       ; $56bf: $5f
    rst $28                                       ; $56c0: $ef
    ld b, b                                       ; $56c1: $40
    ld e, a                                       ; $56c2: $5f
    add b                                         ; $56c3: $80
    cp a                                          ; $56c4: $bf
    cp $e1                                        ; $56c5: $fe $e1
    db $e3                                        ; $56c7: $e3
    jp $f33e                                      ; $56c8: $c3 $3e $f3


    cp a                                          ; $56cb: $bf
    ld [hl], b                                    ; $56cc: $70
    ld h, b                                       ; $56cd: $60
    ld h, b                                       ; $56ce: $60
    sub b                                         ; $56cf: $90
    ldh [rIE], a                                  ; $56d0: $e0 $ff
    ld [$14eb], sp                                ; $56d2: $08 $eb $14
    rst $38                                       ; $56d5: $ff
    rst $30                                       ; $56d6: $f7
    add b                                         ; $56d7: $80
    rst $38                                       ; $56d8: $ff

jr_072_56d9:
    sub b                                         ; $56d9: $90
    xor a                                         ; $56da: $af
    ld d, b                                       ; $56db: $50
    ld e, d                                       ; $56dc: $5a
    ld h, l                                       ; $56dd: $65
    rst $38                                       ; $56de: $ff
    db $fd                                        ; $56df: $fd
    ld b, d                                       ; $56e0: $42
    rst $38                                       ; $56e1: $ff
    ld b, b                                       ; $56e2: $40
    rst $38                                       ; $56e3: $ff
    ret z                                         ; $56e4: $c8

    xor e                                         ; $56e5: $ab
    sub h                                         ; $56e6: $94
    rst $38                                       ; $56e7: $ff
    rst $30                                       ; $56e8: $f7
    inc bc                                        ; $56e9: $03
    rst $38                                       ; $56ea: $ff
    dec b                                         ; $56eb: $05
    cp $2b                                        ; $56ec: $fe $2b
    db $fc                                        ; $56ee: $fc
    dec c                                         ; $56ef: $0d
    rst $38                                       ; $56f0: $ff
    ld a, [$fd32]                                 ; $56f1: $fa $32 $fd
    ld d, l                                       ; $56f4: $55
    ld [$d7a8], a                                 ; $56f5: $ea $a8 $d7
    db $f4                                        ; $56f8: $f4
    rst $38                                       ; $56f9: $ff
    adc e                                         ; $56fa: $8b
    rst $20                                       ; $56fb: $e7
    rst $38                                       ; $56fc: $ff
    jp c, $f53d                                   ; $56fd: $da $3d $f5

    ld a, [bc]                                    ; $5700: $0a
    xor d                                         ; $5701: $aa
    rst $38                                       ; $5702: $ff
    ld d, l                                       ; $5703: $55
    ld b, c                                       ; $5704: $41
    cp [hl]                                       ; $5705: $be
    inc d                                         ; $5706: $14
    rst $38                                       ; $5707: $ff
    xor b                                         ; $5708: $a8
    rst $38                                       ; $5709: $ff
    ld [hl], l                                    ; $570a: $75
    rst $38                                       ; $570b: $ff
    rst $38                                       ; $570c: $ff
    sub l                                         ; $570d: $95
    db $eb                                        ; $570e: $eb
    dec bc                                        ; $570f: $0b
    push af                                       ; $5710: $f5
    and l                                         ; $5711: $a5
    ei                                            ; $5712: $fb
    ld c, d                                       ; $5713: $4a
    rst $38                                       ; $5714: $ff
    rst $30                                       ; $5715: $f7
    and [hl]                                      ; $5716: $a6
    ei                                            ; $5717: $fb
    call $97f3                                    ; $5718: $cd $f3 $97
    jp hl                                         ; $571b: $e9


    ld c, a                                       ; $571c: $4f
    ei                                            ; $571d: $fb
    pop af                                        ; $571e: $f1
    push af                                       ; $571f: $f5
    inc e                                         ; $5720: $1c
    ret nz                                        ; $5721: $c0

    ld a, [c]                                     ; $5722: $f2
    db $fd                                        ; $5723: $fd
    xor c                                         ; $5724: $a9
    cp $52                                        ; $5725: $fe $52
    ld a, a                                       ; $5727: $7f
    db $fd                                        ; $5728: $fd
    add c                                         ; $5729: $81
    cp $2a                                        ; $572a: $fe $2a
    push de                                       ; $572c: $d5
    sub l                                         ; $572d: $95
    db $eb                                        ; $572e: $eb
    add l                                         ; $572f: $85
    and b                                         ; $5730: $a0
    cp $fd                                        ; $5731: $fe $fd
    ld [$99df], a                                 ; $5733: $ea $df $99
    sbc a                                         ; $5736: $9f
    ld c, l                                       ; $5737: $4d
    daa                                           ; $5738: $27
    rla                                           ; $5739: $17
    and e                                         ; $573a: $a3
    rst $38                                       ; $573b: $ff
    di                                            ; $573c: $f3
    db $db                                        ; $573d: $db
    pop hl                                        ; $573e: $e1
    xor $f1                                       ; $573f: $ee $f1
    or h                                          ; $5741: $b4
    ei                                            ; $5742: $fb
    ld b, c                                       ; $5743: $41
    rst $38                                       ; $5744: $ff
    rst $38                                       ; $5745: $ff
    rst $18                                       ; $5746: $df
    sbc a                                         ; $5747: $9f
    sbc h                                         ; $5748: $9c
    ld c, a                                       ; $5749: $4f
    ld h, $17                                     ; $574a: $26 $17
    and d                                         ; $574c: $a2
    rst $38                                       ; $574d: $ff
    di                                            ; $574e: $f3
    jp c, $eee1                                   ; $574f: $da $e1 $ee

    ld [hl], c                                    ; $5752: $71
    db $f4                                        ; $5753: $f4
    dec sp                                        ; $5754: $3b
    ld sp, hl                                     ; $5755: $f9
    rst $38                                       ; $5756: $ff
    rst $38                                       ; $5757: $ff
    rst $38                                       ; $5758: $ff
    db $fc                                        ; $5759: $fc
    cp $f9                                        ; $575a: $fe $f9
    db $fc                                        ; $575c: $fc
    ei                                            ; $575d: $fb
    cp $df                                        ; $575e: $fe $df
    pop hl                                        ; $5760: $e1
    db $f4                                        ; $5761: $f4
    set 4, b                                      ; $5762: $cb $e0
    rst $18                                       ; $5764: $df
    cp $e1                                        ; $5765: $fe $e1
    cp a                                          ; $5767: $bf
    ld a, a                                       ; $5768: $7f
    rst $38                                       ; $5769: $ff
    ld e, a                                       ; $576a: $5f
    cp a                                          ; $576b: $bf
    rra                                           ; $576c: $1f
    rst $38                                       ; $576d: $ff
    scf                                           ; $576e: $37
    rst $08                                       ; $576f: $cf
    dec bc                                        ; $5770: $0b
    rst $30                                       ; $5771: $f7
    rst $38                                       ; $5772: $ff
    ld h, e                                       ; $5773: $63
    rst $38                                       ; $5774: $ff
    db $d3                                        ; $5775: $d3
    sbc a                                         ; $5776: $9f
    sub e                                         ; $5777: $93
    sbc a                                         ; $5778: $9f
    ld hl, sp-$79                                 ; $5779: $f8 $87
    rst $38                                       ; $577b: $ff
    ret nc                                        ; $577c: $d0

    cpl                                           ; $577d: $2f
    add b                                         ; $577e: $80
    ld a, a                                       ; $577f: $7f
    adc h                                         ; $5780: $8c
    ld a, a                                       ; $5781: $7f
    sbc d                                         ; $5782: $9a
    ld [hl], e                                    ; $5783: $73
    rst $38                                       ; $5784: $ff
    ld d, d                                       ; $5785: $52
    or e                                          ; $5786: $b3
    adc h                                         ; $5787: $8c
    rst $38                                       ; $5788: $ff
    ldh a, [$ef]                                  ; $5789: $f0 $ef
    ld l, l                                       ; $578b: $6d
    di                                            ; $578c: $f3
    rst $38                                       ; $578d: $ff
    ld [bc], a                                    ; $578e: $02
    db $fd                                        ; $578f: $fd
    ret nz                                        ; $5790: $c0

    ccf                                           ; $5791: $3f
    add b                                         ; $5792: $80
    ld a, a                                       ; $5793: $7f
    ld [bc], a                                    ; $5794: $02
    rst $38                                       ; $5795: $ff
    rst $38                                       ; $5796: $ff
    ld d, $ff                                     ; $5797: $16 $ff
    ld bc, $17ff                                  ; $5799: $01 $ff $17
    rst $38                                       ; $579c: $ff
    add sp, -$09                                  ; $579d: $e8 $f7
    rst $38                                       ; $579f: $ff
    pop af                                        ; $57a0: $f1
    rst $38                                       ; $57a1: $ff
    cp $fe                                        ; $57a2: $fe $fe
    rst $38                                       ; $57a4: $ff
    cp $f7                                        ; $57a5: $fe $f7
    cp $ff                                        ; $57a7: $fe $ff
    xor l                                         ; $57a9: $ad
    db $fc                                        ; $57aa: $fc
    ld b, [hl]                                    ; $57ab: $46
    cp $eb                                        ; $57ac: $fe $eb
    rst $38                                       ; $57ae: $ff
    scf                                           ; $57af: $37
    rst $38                                       ; $57b0: $ff
    db $fd                                        ; $57b1: $fd
    adc a                                         ; $57b2: $8f
    ld [bc], a                                    ; $57b3: $02
    and b                                         ; $57b4: $a0
    ld a, a                                       ; $57b5: $7f
    ld a, a                                       ; $57b6: $7f
    ld l, a                                       ; $57b7: $6f
    ld a, a                                       ; $57b8: $7f
    ld a, $3f                                     ; $57b9: $3e $3f
    ei                                            ; $57bb: $fb
    ld a, e                                       ; $57bc: $7b
    ld a, a                                       ; $57bd: $7f
    and c                                         ; $57be: $a1
    ldh [rIE], a                                  ; $57bf: $e0 $ff
    ld a, [$fcfd]                                 ; $57c1: $fa $fd $fc
    ei                                            ; $57c4: $fb
    rst $38                                       ; $57c5: $ff
    pop hl                                        ; $57c6: $e1
    rst $38                                       ; $57c7: $ff
    ret nc                                        ; $57c8: $d0

    rst $28                                       ; $57c9: $ef
    push hl                                       ; $57ca: $e5
    rst $18                                       ; $57cb: $df
    jp z, $ffff                                   ; $57cc: $ca $ff $ff

    rst $20                                       ; $57cf: $e7
    rst $18                                       ; $57d0: $df
    ccf                                           ; $57d1: $3f
    rst $38                                       ; $57d2: $ff
    rra                                           ; $57d3: $1f
    rst $38                                       ; $57d4: $ff
    cp a                                          ; $57d5: $bf
    rst $38                                       ; $57d6: $ff
    ld a, a                                       ; $57d7: $7f
    ld d, a                                       ; $57d8: $57
    rst $38                                       ; $57d9: $ff
    db $eb                                        ; $57da: $eb
    rst $38                                       ; $57db: $ff
    ld a, a                                       ; $57dc: $7f
    rst $38                                       ; $57dd: $ff
    db $db                                        ; $57de: $db
    ret c                                         ; $57df: $d8

    add b                                         ; $57e0: $80
    rst $38                                       ; $57e1: $ff
    adc e                                         ; $57e2: $8b
    rst $38                                       ; $57e3: $ff
    ld b, l                                       ; $57e4: $45
    cp a                                          ; $57e5: $bf
    sub a                                         ; $57e6: $97
    ld a, a                                       ; $57e7: $7f
    dec hl                                        ; $57e8: $2b
    rst $38                                       ; $57e9: $ff
    rst $18                                       ; $57ea: $df
    sbc a                                         ; $57eb: $9f
    ld a, a                                       ; $57ec: $7f
    dec l                                         ; $57ed: $2d
    rst $38                                       ; $57ee: $ff
    sbc a                                         ; $57ef: $9f
    ld [$75e0], a                                 ; $57f0: $ea $e0 $75
    rst $38                                       ; $57f3: $ff
    or l                                          ; $57f4: $b5
    ld a, [$80c2]                                 ; $57f5: $fa $c2 $80
    ld a, [hl]                                    ; $57f8: $7e
    cp [hl]                                       ; $57f9: $be
    add b                                         ; $57fa: $80
    cp $ff                                        ; $57fb: $fe $ff
    ld h, d                                       ; $57fd: $62
    ldh [rIE], a                                  ; $57fe: $e0 $ff
    rst $20                                       ; $5800: $e7
    push hl                                       ; $5801: $e5
    rst $38                                       ; $5802: $ff
    di                                            ; $5803: $f3
    and b                                         ; $5804: $a0
    pop hl                                        ; $5805: $e1
    sbc h                                         ; $5806: $9c
    ldh [$ee], a                                  ; $5807: $e0 $ee
    cp $5e                                        ; $5809: $fe $5e
    ccf                                           ; $580b: $3f
    cp $fb                                        ; $580c: $fe $fb
    rst $38                                       ; $580e: $ff
    rst $30                                       ; $580f: $f7
    rst $38                                       ; $5810: $ff
    rst $08                                       ; $5811: $cf
    and b                                         ; $5812: $a0
    ld [c], a                                     ; $5813: $e2
    db $fc                                        ; $5814: $fc
    db $e3                                        ; $5815: $e3
    nop                                           ; $5816: $00
    ld sp, $ffa0                                  ; $5817: $31 $a0 $ff
    db $ec                                        ; $581a: $ec
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    ld bc, $ff51                                  ; $581e: $01 $51 $ff
    rst $38                                       ; $5821: $ff
    rst $38                                       ; $5822: $ff
    rst $38                                       ; $5823: $ff
    rst $38                                       ; $5824: $ff
    rst $38                                       ; $5825: $ff
    rst $38                                       ; $5826: $ff
    rst $38                                       ; $5827: $ff
    rst $38                                       ; $5828: $ff
    rst $38                                       ; $5829: $ff
    rst $38                                       ; $582a: $ff
    rst $38                                       ; $582b: $ff
    rst $20                                       ; $582c: $e7
    and $e3                                       ; $582d: $e6 $e3
    ld e, d                                       ; $582f: $5a
    ld e, e                                       ; $5830: $5b
    db $fc                                        ; $5831: $fc
    rst $28                                       ; $5832: $ef
    rst $38                                       ; $5833: $ff
    rst $38                                       ; $5834: $ff
    jp Jump_072_5ce7                              ; $5835: $c3 $e7 $5c


    ld e, l                                       ; $5838: $5d
    ld d, c                                       ; $5839: $51
    ld a, b                                       ; $583a: $78
    db $fc                                        ; $583b: $fc
    xor $ff                                       ; $583c: $ee $ff
    rst $38                                       ; $583e: $ff
    jp Jump_072_5ee7                              ; $583f: $c3 $e7 $5e


    ld e, a                                       ; $5842: $5f
    ld e, d                                       ; $5843: $5a
    ld e, e                                       ; $5844: $5b
    db $fc                                        ; $5845: $fc
    db $ed                                        ; $5846: $ed
    nop                                           ; $5847: $00
    call nz, $e2ff                                ; $5848: $c4 $ff $e2
    pop hl                                        ; $584b: $e1
    jp Jump_072_7ee4                              ; $584c: $c3 $e4 $7e


    rst $38                                       ; $584f: $ff
    ld [$c3f4], sp                                ; $5850: $08 $f4 $c3
    push hl                                       ; $5853: $e5
    ld a, [hl]                                    ; $5854: $7e
    di                                            ; $5855: $f3
    ld a, d                                       ; $5856: $7a
    db $fd                                        ; $5857: $fd
    ld h, b                                       ; $5858: $60
    adc d                                         ; $5859: $8a
    db $e4                                        ; $585a: $e4
    ld a, [hl]                                    ; $585b: $7e
    or $7a                                        ; $585c: $f6 $7a
    db $fd                                        ; $585e: $fd
    inc d                                         ; $585f: $14
    and $fc                                       ; $5860: $e6 $fc
    jp nz, Jump_072_5554                          ; $5862: $c2 $54 $55

    db $fc                                        ; $5865: $fc
    rst $28                                       ; $5866: $ef
    db $fc                                        ; $5867: $fc
    jp $fcdf                                      ; $5868: $c3 $df $fc


    call nz, Call_072_5554                        ; $586b: $c4 $54 $55
    ld d, c                                       ; $586e: $51
    ld d, [hl]                                    ; $586f: $56
    ld d, a                                       ; $5870: $57
    ld d, c                                       ; $5871: $51
    ld [hl], b                                    ; $5872: $70
    db $fc                                        ; $5873: $fc
    db $ed                                        ; $5874: $ed
    dec sp                                        ; $5875: $3b
    ld hl, sp-$7a                                 ; $5876: $f8 $86
    ret                                           ; $5878: $c9


    jp Jump_072_58e3                              ; $5879: $c3 $e3 $58


    ld e, c                                       ; $587c: $59
    ld d, c                                       ; $587d: $51
    db $fc                                        ; $587e: $fc
    db $e4                                        ; $587f: $e4
    inc sp                                        ; $5880: $33
    ld d, h                                       ; $5881: $54
    ld d, l                                       ; $5882: $55
    db $fc                                        ; $5883: $fc
    db $e3                                        ; $5884: $e3
    cpl                                           ; $5885: $2f
    ldh [$5a], a                                  ; $5886: $e0 $5a
    ld e, e                                       ; $5888: $5b
    or l                                          ; $5889: $b5
    call nc, $c986                                ; $588a: $d4 $86 $c9
    ldh [$c3], a                                  ; $588d: $e0 $c3
    ld [c], a                                     ; $588f: $e2
    ld a, [hl]                                    ; $5890: $7e
    ldh [$7b], a                                  ; $5891: $e0 $7b
    ldh [$8b], a                                  ; $5893: $e0 $8b
    jp nz, $e682                                  ; $5895: $c2 $82 $e6

    ld e, [hl]                                    ; $5898: $5e
    ld e, a                                       ; $5899: $5f
    ld e, h                                       ; $589a: $5c
    ld bc, $3b5d                                  ; $589b: $01 $5d $3b
    xor $92                                       ; $589e: $ee $92
    and e                                         ; $58a0: $a3
    ld [$86e9], sp                                ; $58a1: $08 $e9 $86
    pop hl                                        ; $58a4: $e1
    ld b, c                                       ; $58a5: $41
    pop hl                                        ; $58a6: $e1
    ld a, $e0                                     ; $58a7: $3e $e0

jr_072_58a9:
    cp d                                          ; $58a9: $ba
    ld [c], a                                     ; $58aa: $e2
    nop                                           ; $58ab: $00
    add d                                         ; $58ac: $82
    and $dd                                       ; $58ad: $e6 $dd
    pop bc                                        ; $58af: $c1
    ld [hl], d                                    ; $58b0: $72
    xor [hl]                                      ; $58b1: $ae
    sbc d                                         ; $58b2: $9a
    ret z                                         ; $58b3: $c8

    ld [$88e4], sp                                ; $58b4: $08 $e4 $88
    ld [c], a                                     ; $58b7: $e2
    ld b, c                                       ; $58b8: $41
    ldh [$3e], a                                  ; $58b9: $e0 $3e
    ldh [rNR23], a                                ; $58bb: $e0 $18

jr_072_58bd:
    cp d                                          ; $58bd: $ba
    db $e3                                        ; $58be: $e3
    or [hl]                                       ; $58bf: $b6
    db $e3                                        ; $58c0: $e3
    pop bc                                        ; $58c1: $c1
    jp nz, Jump_072_5554                          ; $58c2: $c2 $54 $55

    db $f4                                        ; $58c5: $f4
    xor l                                         ; $58c6: $ad
    sbc d                                         ; $58c7: $9a
    xor d                                         ; $58c8: $aa
    ld [$7ee2], sp                                ; $58c9: $08 $e2 $7e
    add $c0                                       ; $58cc: $c6 $c0
    ld d, b                                       ; $58ce: $50
    ld c, [hl]                                    ; $58cf: $4e
    ld d, d                                       ; $58d0: $52
    ld c, [hl]                                    ; $58d1: $4e
    ld c, [hl]                                    ; $58d2: $4e
    ld d, b                                       ; $58d3: $50
    cp d                                          ; $58d4: $ba
    push hl                                       ; $58d5: $e5
    adc h                                         ; $58d6: $8c
    or [hl]                                       ; $58d7: $b6
    db $e4                                        ; $58d8: $e4
    jr nc, @-$1d                                  ; $58d9: $30 $e1

    ld d, [hl]                                    ; $58db: $56
    ld d, a                                       ; $58dc: $57
    ld [hl], d                                    ; $58dd: $72
    xor a                                         ; $58de: $af
    jr jr_072_58a9                                ; $58df: $18 $c8

    ld b, l                                       ; $58e1: $45
    ld [c], a                                     ; $58e2: $e2

Jump_072_58e3:
    ld e, b                                       ; $58e3: $58
    ld l, a                                       ; $58e4: $6f
    ld e, c                                       ; $58e5: $59
    ld d, b                                       ; $58e6: $50
    ld c, l                                       ; $58e7: $4d
    add hl, hl                                    ; $58e8: $29
    rst $38                                       ; $58e9: $ff
    ldh [rKEY1], a                                ; $58ea: $e0 $4d
    ld c, [hl]                                    ; $58ec: $4e
    rst $38                                       ; $58ed: $ff
    rst $20                                       ; $58ee: $e7
    add c                                         ; $58ef: $81
    ld d, b                                       ; $58f0: $50
    ld [hl], e                                    ; $58f1: $73
    ld [c], a                                     ; $58f2: $e2
    inc h                                         ; $58f3: $24
    db $e3                                        ; $58f4: $e3
    ld [hl], d                                    ; $58f5: $72
    xor e                                         ; $58f6: $ab
    inc d                                         ; $58f7: $14
    and l                                         ; $58f8: $a5
    jr nz, jr_072_58bd                            ; $58f9: $20 $c2

    call $50c1                                    ; $58fb: $cd $c1 $50
    ld e, a                                       ; $58fe: $5f
    ld c, [hl]                                    ; $58ff: $4e
    ld c, [hl]                                    ; $5900: $4e
    ld c, l                                       ; $5901: $4d
    add hl, hl                                    ; $5902: $29

jr_072_5903:
    jr z, jr_072_5903                             ; $5903: $28 $fe

    db $ec                                        ; $5905: $ec
    ld c, l                                       ; $5906: $4d
    ld [hl], e                                    ; $5907: $73
    ld [c], a                                     ; $5908: $e2
    add b                                         ; $5909: $80
    inc l                                         ; $590a: $2c
    pop bc                                        ; $590b: $c1
    ld hl, sp-$53                                 ; $590c: $f8 $ad
    sbc d                                         ; $590e: $9a
    and l                                         ; $590f: $a5
    jp nc, Jump_072_45c2                          ; $5910: $d2 $c2 $45

    pop hl                                        ; $5913: $e1
    jp $bfef                                      ; $5914: $c3 $ef $bf


    ld [c], a                                     ; $5917: $e2
    ld c, [hl]                                    ; $5918: $4e
    inc bc                                        ; $5919: $03
    ld d, d                                       ; $591a: $52
    ld d, b                                       ; $591b: $50
    inc l                                         ; $591c: $2c
    jp nz, $a1e8                                  ; $591d: $c2 $e8 $a1

    adc d                                         ; $5920: $8a
    or c                                          ; $5921: $b1
    jp nc, Jump_072_45c2                          ; $5922: $d2 $c2 $45

    ld [c], a                                     ; $5925: $e2
    pop bc                                        ; $5926: $c1
    pop af                                        ; $5927: $f1
    nop                                           ; $5928: $00
    ld a, h                                       ; $5929: $7c
    push hl                                       ; $592a: $e5
    db $ec                                        ; $592b: $ec
    and e                                         ; $592c: $a3
    ld a, [hl]                                    ; $592d: $7e
    db $d3                                        ; $592e: $d3
    call $c1a1                                    ; $592f: $cd $a1 $c1
    ld hl, sp+$3b                                 ; $5932: $f8 $3b
    pop hl                                        ; $5934: $e1
    db $ed                                        ; $5935: $ed
    and c                                         ; $5936: $a1
    jp hl                                         ; $5937: $e9


    and l                                         ; $5938: $a5
    db $ec                                        ; $5939: $ec
    inc b                                         ; $593a: $04
    jp z, $a24d                                   ; $593b: $ca $4d $a2

    ld d, h                                       ; $593e: $54
    ld d, l                                       ; $593f: $55
    pop bc                                        ; $5940: $c1
    ld a, [$2928]                                 ; $5941: $fa $28 $29
    ld c, a                                       ; $5944: $4f
    ld l, b                                       ; $5945: $68
    scf                                           ; $5946: $37
    xor b                                         ; $5947: $a8
    inc b                                         ; $5948: $04
    call z, $a3cf                                 ; $5949: $cc $cf $a3
    ld d, d                                       ; $594c: $52
    pop bc                                        ; $594d: $c1
    ld a, [$4f28]                                 ; $594e: $fa $28 $4f
    or l                                          ; $5951: $b5
    xor b                                         ; $5952: $a8
    ld l, b                                       ; $5953: $68
    adc [hl]                                      ; $5954: $8e
    add a                                         ; $5955: $87
    sub [hl]                                      ; $5956: $96
    add e                                         ; $5957: $83
    rst $08                                       ; $5958: $cf
    and d                                         ; $5959: $a2
    ld d, b                                       ; $595a: $50
    pop bc                                        ; $595b: $c1
    ld a, [$4f29]                                 ; $595c: $fa $29 $4f
    or l                                          ; $595f: $b5
    xor c                                         ; $5960: $a9
    jr jr_072_596f                                ; $5961: $18 $0c

    add [hl]                                      ; $5963: $86
    sbc [hl]                                      ; $5964: $9e
    and [hl]                                      ; $5965: $a6
    ld [bc], a                                    ; $5966: $02
    ei                                            ; $5967: $fb
    jr z, jr_072_5993                             ; $5968: $28 $29

    ret nz                                        ; $596a: $c0

    pop hl                                        ; $596b: $e1
    ld l, e                                       ; $596c: $6b
    and e                                         ; $596d: $a3
    inc c                                         ; $596e: $0c

jr_072_596f:
    adc b                                         ; $596f: $88
    ld e, b                                       ; $5970: $58
    sbc [hl]                                      ; $5971: $9e
    add l                                         ; $5972: $85
    ld c, a                                       ; $5973: $4f
    add b                                         ; $5974: $80
    ld b, l                                       ; $5975: $45
    rst $00                                       ; $5976: $c7
    ld l, $30                                     ; $5977: $2e $30
    rst $38                                       ; $5979: $ff
    and $2e                                       ; $597a: $e6 $2e
    nop                                           ; $597c: $00
    jp hl                                         ; $597d: $e9


    call z, $84f0                                 ; $597e: $cc $f0 $84
    ldh a, [rOBP0]                                ; $5981: $f0 $48
    ld e, d                                       ; $5983: $5a
    ld e, e                                       ; $5984: $5b
    ld c, c                                       ; $5985: $49
    and d                                         ; $5986: $a2
    rrca                                          ; $5987: $0f
    add b                                         ; $5988: $80
    ld e, b                                       ; $5989: $58

jr_072_598a:
    ld e, c                                       ; $598a: $59
    ld h, l                                       ; $598b: $65
    ld c, a                                       ; $598c: $4f
    pop bc                                        ; $598d: $c1
    and $01                                       ; $598e: $e6 $01
    rst $38                                       ; $5990: $ff
    add sp, -$41                                  ; $5991: $e8 $bf

jr_072_5993:
    rst $20                                       ; $5993: $e7
    ld c, l                                       ; $5994: $4d
    ld d, b                                       ; $5995: $50
    ldh a, [$84]                                  ; $5996: $f0 $84
    and [hl]                                      ; $5998: $a6
    ldh a, [rOBP0]                                ; $5999: $f0 $48
    ld e, h                                       ; $599b: $5c
    ld e, l                                       ; $599c: $5d
    ld c, c                                       ; $599d: $49
    and d                                         ; $599e: $a2
    jp z, $4f82                                   ; $599f: $ca $82 $4f

    pop bc                                        ; $59a2: $c1
    rst $20                                       ; $59a3: $e7
    inc c                                         ; $59a4: $0c
    ld l, a                                       ; $59a5: $6f
    inc hl                                        ; $59a6: $23

jr_072_59a7:
    ld [hl+], a                                   ; $59a7: $22
    inc hl                                        ; $59a8: $23
    ld [hl+], a                                   ; $59a9: $22
    db $fd                                        ; $59aa: $fd
    ldh [rNR44], a                                ; $59ab: $e0 $23
    inc c                                         ; $59ad: $0c
    cp a                                          ; $59ae: $bf
    rst $20                                       ; $59af: $e7
    add b                                         ; $59b0: $80
    ld a, h                                       ; $59b1: $7c
    and b                                         ; $59b2: $a0
    xor d                                         ; $59b3: $aa
    add d                                         ; $59b4: $82
    ld l, [hl]                                    ; $59b5: $6e
    ld c, b                                       ; $59b6: $48
    ld d, a                                       ; $59b7: $57
    ld b, c                                       ; $59b8: $41
    ld c, c                                       ; $59b9: $49
    and d                                         ; $59ba: $a2
    jp z, $8082                                   ; $59bb: $ca $82 $80

    push hl                                       ; $59be: $e5
    cpl                                           ; $59bf: $2f
    rst $38                                       ; $59c0: $ff
    ld bc, $120c                                  ; $59c1: $01 $0c $12
    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    scf                                           ; $59c6: $37
    scf                                           ; $59c7: $37
    scf                                           ; $59c8: $37
    rrca                                          ; $59c9: $0f
    inc [hl]                                      ; $59ca: $34
    nop                                           ; $59cb: $00
    add hl, sp                                    ; $59cc: $39
    ld [de], a                                    ; $59cd: $12
    cp a                                          ; $59ce: $bf
    rst $20                                       ; $59cf: $e7
    ld b, d                                       ; $59d0: $42
    db $e3                                        ; $59d1: $e3
    db $f4                                        ; $59d2: $f4
    ld c, d                                       ; $59d3: $4a
    ld h, a                                       ; $59d4: $67
    ld b, h                                       ; $59d5: $44
    ld hl, sp+$54                                 ; $59d6: $f8 $54
    ld h, c                                       ; $59d8: $61
    sub b                                         ; $59d9: $90
    ld h, b                                       ; $59da: $60
    add b                                         ; $59db: $80
    push hl                                       ; $59dc: $e5
    cpl                                           ; $59dd: $2f
    ld bc, $3b20                                  ; $59de: $01 $20 $3b
    ld [hl], $b7                                  ; $59e1: $36 $b7
    ld [hl], $3b                                  ; $59e3: $36 $3b
    jr c, jr_072_59a7                             ; $59e5: $38 $c0

    ldh [rP1], a                                  ; $59e7: $e0 $00
    dec sp                                        ; $59e9: $3b
    cp a                                          ; $59ea: $bf
    rst $20                                       ; $59eb: $e7
    ld d, d                                       ; $59ec: $52
    nop                                           ; $59ed: $00
    db $ec                                        ; $59ee: $ec
    ld h, d                                       ; $59ef: $62
    add sp, $41                                   ; $59f0: $e8 $41
    ldh [rNR42], a                                ; $59f2: $e0 $21
    call Call_072_5046                            ; $59f4: $cd $46 $50
    jr nz, jr_072_598a                            ; $59f7: $20 $91

    ld h, d                                       ; $59f9: $62
    ld b, $a7                                     ; $59fa: $06 $a7
    ret nz                                        ; $59fc: $c0

    ldh [rIE], a                                  ; $59fd: $e0 $ff
    jr c, jr_072_5a37                             ; $59ff: $38 $36

    ld [hl], $38                                  ; $5a01: $36 $38
    nop                                           ; $5a03: $00
    jr c, @+$3a                                   ; $5a04: $38 $38

    dec [hl]                                      ; $5a06: $35
    ld b, $bf                                     ; $5a07: $06 $bf
    db $e3                                        ; $5a09: $e3
    cpl                                           ; $5a0a: $2f
    add hl, hl                                    ; $5a0b: $29
    ld [bc], a                                    ; $5a0c: $02
    call nz, $84bc                                ; $5a0d: $c4 $bc $84
    nop                                           ; $5a10: $00
    ld [$654c], a                                 ; $5a11: $ea $4c $65
    rst $00                                       ; $5a14: $c7
    add a                                         ; $5a15: $87
    adc a                                         ; $5a16: $8f
    inc l                                         ; $5a17: $2c
    ld bc, $0020                                  ; $5a18: $01 $20 $00
    rst $38                                       ; $5a1b: $ff
    ldh [$bc], a                                  ; $5a1c: $e0 $bc
    pop hl                                        ; $5a1e: $e1
    cp a                                          ; $5a1f: $bf
    ldh [$3a], a                                  ; $5a20: $e0 $3a
    rlca                                          ; $5a22: $07
    jr nz, jr_072_5a26                            ; $5a23: $20 $01

    inc l                                         ; $5a25: $2c

jr_072_5a26:
    ld [bc], a                                    ; $5a26: $02
    push bc                                       ; $5a27: $c5
    sbc c                                         ; $5a28: $99
    jp nz, Jump_000_276e                          ; $5a29: $c2 $6e $27

    sub $00                                       ; $5a2c: $d6 $00
    ld l, e                                       ; $5a2e: $6b
    ld b, b                                       ; $5a2f: $40
    ld h, $3c                                     ; $5a30: $26 $3c
    jp $5351                                      ; $5a32: $c3 $51 $53


    ld c, e                                       ; $5a35: $4b
    add [hl]                                      ; $5a36: $86

jr_072_5a37:
    ld b, b                                       ; $5a37: $40
    ldh [$33], a                                  ; $5a38: $e0 $33
    rst $38                                       ; $5a3a: $ff
    pop hl                                        ; $5a3b: $e1
    cp l                                          ; $5a3c: $bd
    ldh [$0e], a                                  ; $5a3d: $e0 $0e
    ld a, [hl]                                    ; $5a3f: $7e
    pop hl                                        ; $5a40: $e1
    jr nz, jr_072_5a44                            ; $5a41: $20 $01

    cpl                                           ; $5a43: $2f

jr_072_5a44:
    ld sp, $3c82                                  ; $5a44: $31 $82 $3c
    add b                                         ; $5a47: $80
    add e                                         ; $5a48: $83
    add d                                         ; $5a49: $82
    db $f4                                        ; $5a4a: $f4
    daa                                           ; $5a4b: $27
    ldh [$de], a                                  ; $5a4c: $e0 $de
    ld hl, $e23f                                  ; $5a4e: $21 $3f $e2
    ld h, a                                       ; $5a51: $67
    ld h, c                                       ; $5a52: $61
    add d                                         ; $5a53: $82
    push bc                                       ; $5a54: $c5
    nop                                           ; $5a55: $00
    pop hl                                        ; $5a56: $e1
    inc c                                         ; $5a57: $0c
    ld [de], a                                    ; $5a58: $12
    ld [hl], $7e                                  ; $5a59: $36 $7e
    rst $38                                       ; $5a5b: $ff
    ldh [rP1], a                                  ; $5a5c: $e0 $00
    nop                                           ; $5a5e: $00
    dec [hl]                                      ; $5a5f: $35
    jr c, @+$3a                                   ; $5a60: $38 $38

    inc sp                                        ; $5a62: $33
    ld b, b                                       ; $5a63: $40
    and $80                                       ; $5a64: $e6 $80
    ei                                            ; $5a66: $fb
    ld h, b                                       ; $5a67: $60
    ld l, e                                       ; $5a68: $6b
    ld b, b                                       ; $5a69: $40
    nop                                           ; $5a6a: $00
    jp hl                                         ; $5a6b: $e9


    xor $21                                       ; $5a6c: $ee $21
    ccf                                           ; $5a6e: $3f
    ld [c], a                                     ; $5a6f: $e2
    ld b, $81                                     ; $5a70: $06 $81
    ld [bc], a                                    ; $5a72: $02
    add $29                                       ; $5a73: $c6 $29
    ld a, c                                       ; $5a75: $79
    dec l                                         ; $5a76: $2d
    ld b, b                                       ; $5a77: $40
    ret nz                                        ; $5a78: $c0

    cp a                                          ; $5a79: $bf
    pop hl                                        ; $5a7a: $e1
    nop                                           ; $5a7b: $00
    dec [hl]                                      ; $5a7c: $35
    dec [hl]                                      ; $5a7d: $35
    ld [de], a                                    ; $5a7e: $12
    ld a, $cd                                     ; $5a7f: $3e $cd
    inc c                                         ; $5a81: $0c
    nop                                           ; $5a82: $00
    call z, $c2b6                                 ; $5a83: $cc $b6 $c2
    ld e, [hl]                                    ; $5a86: $5e
    ld e, a                                       ; $5a87: $5f
    ld b, $81                                     ; $5a88: $06 $81
    add b                                         ; $5a8a: $80
    rst $20                                       ; $5a8b: $e7
    cp a                                          ; $5a8c: $bf
    push hl                                       ; $5a8d: $e5
    pop bc                                        ; $5a8e: $c1
    ldh [rP1], a                                  ; $5a8f: $e0 $00
    ld bc, $bec0                                  ; $5a91: $01 $c0 $be
    xor e                                         ; $5a94: $ab
    nop                                           ; $5a95: $00
    rr h                                          ; $5a96: $cb $1c
    ld hl, $21aa                                  ; $5a98: $21 $aa $21
    db $d3                                        ; $5a9b: $d3
    ld hl, $610b                                  ; $5a9c: $21 $0b $61
    ld a, [hl]                                    ; $5a9f: $7e
    jp hl                                         ; $5aa0: $e9


    add hl, bc                                    ; $5aa1: $09
    inc hl                                        ; $5aa2: $23
    rst $38                                       ; $5aa3: $ff
    ldh [$c2], a                                  ; $5aa4: $e0 $c2
    and b                                         ; $5aa6: $a0
    dec hl                                        ; $5aa7: $2b
    ld a, a                                       ; $5aa8: $7f
    xor b                                         ; $5aa9: $a8
    inc a                                         ; $5aaa: $3c
    ret nz                                        ; $5aab: $c0

    nop                                           ; $5aac: $00
    ld [$c238], a                                 ; $5aad: $ea $38 $c2
    db $10                                        ; $5ab0: $10
    ld h, e                                       ; $5ab1: $63
    inc bc                                        ; $5ab2: $03
    jp nz, Jump_072_7e82                          ; $5ab3: $c2 $82 $7e

    ld [$a33c], a                                 ; $5ab6: $ea $3c $a3
    ld a, [hl+]                                   ; $5ab9: $2a
    ld a, $8c                                     ; $5aba: $3e $8c
    nop                                           ; $5abc: $00
    ld [$e282], a                                 ; $5abd: $ea $82 $e2
    nop                                           ; $5ac0: $00
    db $ec                                        ; $5ac1: $ec
    inc hl                                        ; $5ac2: $23
    add hl, bc                                    ; $5ac3: $09
    ld b, c                                       ; $5ac4: $41
    cp $c7                                        ; $5ac5: $fe $c7
    db $fc                                        ; $5ac7: $fc

Jump_072_5ac8:
    ret nz                                        ; $5ac8: $c0

    jp nz, Jump_000_3e8f                          ; $5ac9: $c2 $8f $3e

    add e                                         ; $5acc: $83
    nop                                           ; $5acd: $00
    xor c                                         ; $5ace: $a9
    add d                                         ; $5acf: $82
    db $e3                                        ; $5ad0: $e3
    nop                                           ; $5ad1: $00
    dec hl                                        ; $5ad2: $2b
    ld [hl+], a                                   ; $5ad3: $22
    add hl, bc                                    ; $5ad4: $09
    ld b, c                                       ; $5ad5: $41
    cp $c8                                        ; $5ad6: $fe $c8
    ld d, e                                       ; $5ad8: $53
    add b                                         ; $5ad9: $80
    cp [hl]                                       ; $5ada: $be
    ld [hl], e                                    ; $5adb: $73
    nop                                           ; $5adc: $00
    db $ec                                        ; $5add: $ec
    cp l                                          ; $5ade: $bd
    db $e3                                        ; $5adf: $e3
    ld h, [hl]                                    ; $5ae0: $66
    ld [bc], a                                    ; $5ae1: $02
    nop                                           ; $5ae2: $00
    add hl, bc                                    ; $5ae3: $09
    ld b, c                                       ; $5ae4: $41
    pop bc                                        ; $5ae5: $c1
    db $fd                                        ; $5ae6: $fd
    cp $42                                        ; $5ae7: $fe $42
    nop                                           ; $5ae9: $00
    xor b                                         ; $5aea: $a8
    db $fc                                        ; $5aeb: $fc
    ld h, [hl]                                    ; $5aec: $66
    db $d3                                        ; $5aed: $d3
    inc bc                                        ; $5aee: $03
    cp $c7                                        ; $5aef: $fe $c7
    jp $80f2                                      ; $5af1: $c3 $f2 $80


    dec a                                         ; $5af4: $3d
    ld b, c                                       ; $5af5: $41
    add hl, hl                                    ; $5af6: $29
    nop                                           ; $5af7: $00
    nop                                           ; $5af8: $00
    xor b                                         ; $5af9: $a8
    db $fc                                        ; $5afa: $fc
    ld h, a                                       ; $5afb: $67
    push hl                                       ; $5afc: $e5
    inc hl                                        ; $5afd: $23
    ld a, h                                       ; $5afe: $7c
    and l                                         ; $5aff: $a5
    ret nz                                        ; $5b00: $c0

    dec h                                         ; $5b01: $25
    jr z, jr_072_5b04                             ; $5b02: $28 $00

jr_072_5b04:
    add h                                         ; $5b04: $84
    ld [$2101], a                                 ; $5b05: $ea $01 $21
    ld h, [hl]                                    ; $5b08: $66
    ld [bc], a                                    ; $5b09: $02
    dec sp                                        ; $5b0a: $3b
    inc c                                         ; $5b0b: $0c
    db $fc                                        ; $5b0c: $fc
    ld h, c                                       ; $5b0d: $61
    sbc e                                         ; $5b0e: $9b
    ld bc, $c6fe                                  ; $5b0f: $01 $fe $c6
    ld b, l                                       ; $5b12: $45
    di                                            ; $5b13: $f3
    ld b, b                                       ; $5b14: $40
    dec [hl]                                      ; $5b15: $35
    rlca                                          ; $5b16: $07
    dec sp                                        ; $5b17: $3b
    inc c                                         ; $5b18: $0c
    db $fc                                        ; $5b19: $fc
    ld h, d                                       ; $5b1a: $62
    jp nz, Jump_072_7e22                          ; $5b1b: $c2 $22 $7e

    ld h, e                                       ; $5b1e: $63
    rlca                                          ; $5b1f: $07
    jr nz, jr_072_5b75                            ; $5b20: $20 $53

    inc a                                         ; $5b22: $3c
    dec l                                         ; $5b23: $2d
    nop                                           ; $5b24: $00
    ccf                                           ; $5b25: $3f
    jr nz, jr_072_5b84                            ; $5b26: $20 $5c

    ld h, d                                       ; $5b28: $62
    add hl, sp                                    ; $5b29: $39
    ld hl, $0d3d                                  ; $5b2a: $21 $3d $0d
    db $fd                                        ; $5b2d: $fd
    add e                                         ; $5b2e: $83
    ld h, e                                       ; $5b2f: $63
    ld hl, $627e                                  ; $5b30: $21 $7e $62
    reti                                          ; $5b33: $d9


    inc hl                                        ; $5b34: $23
    nop                                           ; $5b35: $00
    jr c, jr_072_5b63                             ; $5b36: $38 $2b

    ld b, [hl]                                    ; $5b38: $46
    and e                                         ; $5b39: $a3
    ld bc, $9260                                  ; $5b3a: $01 $60 $92
    and c                                         ; $5b3d: $a1
    dec a                                         ; $5b3e: $3d
    dec c                                         ; $5b3f: $0d
    inc a                                         ; $5b40: $3c
    add h                                         ; $5b41: $84
    cp a                                          ; $5b42: $bf
    ret nz                                        ; $5b43: $c0

    cp $42                                        ; $5b44: $fe $42
    nop                                           ; $5b46: $00
    inc e                                         ; $5b47: $1c
    pop bc                                        ; $5b48: $c1
    ld [hl], e                                    ; $5b49: $73
    ld c, b                                       ; $5b4a: $48
    ld a, c                                       ; $5b4b: $79
    ld bc, $2004                                  ; $5b4c: $01 $04 $20
    ret nz                                        ; $5b4f: $c0

    inc b                                         ; $5b50: $04
    call nc, Call_072_4181                        ; $5b51: $d4 $81 $41
    db $ec                                        ; $5b54: $ec
    inc a                                         ; $5b55: $3c
    add h                                         ; $5b56: $84
    nop                                           ; $5b57: $00
    ld l, b                                       ; $5b58: $68
    ld hl, $41fe                                  ; $5b59: $21 $fe $41
    inc e                                         ; $5b5c: $1c
    jp nz, Jump_000_0196                          ; $5b5d: $c2 $96 $01

    or [hl]                                       ; $5b60: $b6
    inc bc                                        ; $5b61: $03
    ld b, a                                       ; $5b62: $47

jr_072_5b63:
    db $e3                                        ; $5b63: $e3
    ld c, d                                       ; $5b64: $4a
    inc hl                                        ; $5b65: $23
    ret nz                                        ; $5b66: $c0

    nop                                           ; $5b67: $00
    add b                                         ; $5b68: $80
    call nc, $ff81                                ; $5b69: $d4 $81 $ff
    dec c                                         ; $5b6c: $0d
    rst $28                                       ; $5b6d: $ef
    inc bc                                        ; $5b6e: $03
    ld a, [hl]                                    ; $5b6f: $7e
    and l                                         ; $5b70: $a5
    jp c, Jump_000_2c21                           ; $5b71: $da $21 $2c

    ld b, d                                       ; $5b74: $42

jr_072_5b75:
    ld [hl], $00                                  ; $5b75: $36 $00
    ld d, d                                       ; $5b77: $52
    inc bc                                        ; $5b78: $03
    ld c, [hl]                                    ; $5b79: $4e
    ld c, [hl]                                    ; $5b7a: $4e
    adc l                                         ; $5b7b: $8d
    add h                                         ; $5b7c: $84
    sbc a                                         ; $5b7d: $9f
    ld b, d                                       ; $5b7e: $42
    ld [de], a                                    ; $5b7f: $12
    add d                                         ; $5b80: $82
    ld a, e                                       ; $5b81: $7b
    nop                                           ; $5b82: $00
    rst $38                                       ; $5b83: $ff

jr_072_5b84:
    call $02f5                                    ; $5b84: $cd $f5 $02
    ld a, [bc]                                    ; $5b87: $0a
    cp l                                          ; $5b88: $bd
    ld b, c                                       ; $5b89: $41
    ld d, e                                       ; $5b8a: $53
    adc h                                         ; $5b8b: $8c
    ld bc, $e053                                  ; $5b8c: $01 $53 $e0
    jp nz, Jump_000_23ae                          ; $5b8f: $c2 $ae $23

    and $a2                                       ; $5b92: $e6 $a2
    ld c, d                                       ; $5b94: $4a
    inc hl                                        ; $5b95: $23
    db $10                                        ; $5b96: $10
    ld [$c822], sp                                ; $5b97: $08 $22 $c8
    ld h, a                                       ; $5b9a: $67
    ld a, e                                       ; $5b9b: $7b
    db $10                                        ; $5b9c: $10
    cp $24                                        ; $5b9d: $fe $24
    ld c, a                                       ; $5b9f: $4f
    ld [hl], e                                    ; $5ba0: $73
    dec b                                         ; $5ba1: $05
    ld l, e                                       ; $5ba2: $6b
    inc hl                                        ; $5ba3: $23
    call z, Call_000_2004                         ; $5ba4: $cc $04 $20
    ld b, a                                       ; $5ba7: $47
    ld bc, $a356                                  ; $5ba8: $01 $56 $a3
    jp nz, Jump_072_7bac                          ; $5bab: $c2 $ac $7b

    xor b                                         ; $5bae: $a8
    cp $23                                        ; $5baf: $fe $23
    ld c, a                                       ; $5bb1: $4f
    xor [hl]                                      ; $5bb2: $ae
    add e                                         ; $5bb3: $83
    ld d, h                                       ; $5bb4: $54
    dec h                                         ; $5bb5: $25
    nop                                           ; $5bb6: $00
    ld c, h                                       ; $5bb7: $4c
    jp Jump_072_64d4                              ; $5bb8: $c3 $d4 $64


    add c                                         ; $5bbb: $81
    pop de                                        ; $5bbc: $d1
    ld [hl-], a                                   ; $5bbd: $32
    ld [$e600], sp                                ; $5bbe: $08 $00 $e6
    ld h, [hl]                                    ; $5bc1: $66
    nop                                           ; $5bc2: $00
    adc $c5                                       ; $5bc3: $ce $c5
    rra                                           ; $5bc5: $1f
    add $58                                       ; $5bc6: $c6 $58
    ld d, d                                       ; $5bc8: $52
    inc bc                                        ; $5bc9: $03
    add d                                         ; $5bca: $82
    ld a, [c]                                     ; $5bcb: $f2
    ld [hl], l                                    ; $5bcc: $75
    ld b, l                                       ; $5bcd: $45
    ld c, a                                       ; $5bce: $4f
    add hl, hl                                    ; $5bcf: $29
    rst $38                                       ; $5bd0: $ff
    ldh [rVBK], a                                 ; $5bd1: $e0 $4f
    ld l, d                                       ; $5bd3: $6a
    ld h, e                                       ; $5bd4: $63
    nop                                           ; $5bd5: $00
    db $10                                        ; $5bd6: $10
    ld [c], a                                     ; $5bd7: $e2
    ldh [rSCY], a                                 ; $5bd8: $e0 $42
    ld e, e                                       ; $5bda: $5b
    ld b, h                                       ; $5bdb: $44
    ld d, d                                       ; $5bdc: $52
    inc bc                                        ; $5bdd: $03
    add d                                         ; $5bde: $82
    push af                                       ; $5bdf: $f5
    ld a, [c]                                     ; $5be0: $f2
    ld b, d                                       ; $5be1: $42
    ret nz                                        ; $5be2: $c0

    db $e4                                        ; $5be3: $e4
    ld l, d                                       ; $5be4: $6a
    ld h, d                                       ; $5be5: $62
    nop                                           ; $5be6: $00
    db $10                                        ; $5be7: $10
    ld [c], a                                     ; $5be8: $e2
    sub d                                         ; $5be9: $92
    ld b, e                                       ; $5bea: $43
    inc e                                         ; $5beb: $1c
    ld h, d                                       ; $5bec: $62
    ld a, [hl]                                    ; $5bed: $7e
    db $e4                                        ; $5bee: $e4
    add d                                         ; $5bef: $82
    push af                                       ; $5bf0: $f5
    ret nz                                        ; $5bf1: $c0

    and h                                         ; $5bf2: $a4
    add b                                         ; $5bf3: $80
    ld [c], a                                     ; $5bf4: $e2
    add sp, $65                                   ; $5bf5: $e8 $65
    nop                                           ; $5bf7: $00
    sub [hl]                                      ; $5bf8: $96
    ld b, e                                       ; $5bf9: $43
    ld a, d                                       ; $5bfa: $7a
    db $e4                                        ; $5bfb: $e4
    ld a, [hl]                                    ; $5bfc: $7e
    db $e4                                        ; $5bfd: $e4
    jp nz, $c0f8                                  ; $5bfe: $c2 $f8 $c0

    and $a5                                       ; $5c01: $e6 $a5
    ld h, [hl]                                    ; $5c03: $66
    db $fc                                        ; $5c04: $fc
    jp hl                                         ; $5c05: $e9


    add hl, de                                    ; $5c06: $19
    add d                                         ; $5c07: $82
    nop                                           ; $5c08: $00
    ld b, d                                       ; $5c09: $42
    rst $30                                       ; $5c0a: $f7
    ret nz                                        ; $5c0b: $c0

    db $ec                                        ; $5c0c: $ec
    add d                                         ; $5c0d: $82
    add sp, $10                                   ; $5c0e: $e8 $10
    adc c                                         ; $5c10: $89
    ld b, d                                       ; $5c11: $42
    ld a, [$eac0]                                 ; $5c12: $fa $c0 $ea
    add d                                         ; $5c15: $82
    db $ec                                        ; $5c16: $ec
    rst $38                                       ; $5c17: $ff
    rst $38                                       ; $5c18: $ff
    nop                                           ; $5c19: $00
    add b                                         ; $5c1a: $80
    db $ec                                        ; $5c1b: $ec
    ld l, d                                       ; $5c1c: $6a
    ld h, c                                       ; $5c1d: $61
    db $fc                                        ; $5c1e: $fc
    jp hl                                         ; $5c1f: $e9


    rst $38                                       ; $5c20: $ff
    rst $38                                       ; $5c21: $ff
    ld b, b                                       ; $5c22: $40
    db $eb                                        ; $5c23: $eb
    rst $38                                       ; $5c24: $ff
    rst $38                                       ; $5c25: $ff
    rst $38                                       ; $5c26: $ff
    rst $38                                       ; $5c27: $ff
    rst $38                                       ; $5c28: $ff
    rst $38                                       ; $5c29: $ff
    nop                                           ; $5c2a: $00
    rst $38                                       ; $5c2b: $ff
    rst $38                                       ; $5c2c: $ff
    rst $38                                       ; $5c2d: $ff
    rst $38                                       ; $5c2e: $ff
    rst $38                                       ; $5c2f: $ff
    rst $38                                       ; $5c30: $ff
    adc [hl]                                      ; $5c31: $8e
    or l                                          ; $5c32: $b5
    nop                                           ; $5c33: $00
    nop                                           ; $5c34: $00
    nop                                           ; $5c35: $00
    ld bc, $ff0d                                  ; $5c36: $01 $0d $ff
    rst $38                                       ; $5c39: $ff
    rst $38                                       ; $5c3a: $ff
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    rst $38                                       ; $5c3d: $ff
    rst $38                                       ; $5c3e: $ff
    rst $38                                       ; $5c3f: $ff
    rst $38                                       ; $5c40: $ff
    rst $38                                       ; $5c41: $ff
    rst $38                                       ; $5c42: $ff
    rst $38                                       ; $5c43: $ff
    rst $20                                       ; $5c44: $e7
    and $83                                       ; $5c45: $e6 $83
    ld c, $0e                                     ; $5c47: $0e $0e
    db $fc                                        ; $5c49: $fc
    rst $28                                       ; $5c4a: $ef
    rst $38                                       ; $5c4b: $ff
    rst $38                                       ; $5c4c: $ff
    jp $c0e7                                      ; $5c4d: $c3 $e7 $c0


    rst $38                                       ; $5c50: $ff
    jp Jump_000_0efb                              ; $5c51: $c3 $fb $0e


    nop                                           ; $5c54: $00
    rst $38                                       ; $5c55: $ff
    ldh a, [$c4]                                  ; $5c56: $f0 $c4
    rst $38                                       ; $5c58: $ff
    add e                                         ; $5c59: $83
    and $7e                                       ; $5c5a: $e6 $7e
    rst $38                                       ; $5c5c: $ff
    ld [$c3f6], sp                                ; $5c5d: $08 $f6 $c3
    push hl                                       ; $5c60: $e5
    ld a, [hl]                                    ; $5c61: $7e
    di                                            ; $5c62: $f3
    cp d                                          ; $5c63: $ba
    db $fd                                        ; $5c64: $fd
    nop                                           ; $5c65: $00
    adc d                                         ; $5c66: $8a
    db $e4                                        ; $5c67: $e4
    ld a, [hl]                                    ; $5c68: $7e
    or $c0                                        ; $5c69: $f6 $c0
    rst $38                                       ; $5c6b: $ff
    ld a, [hl]                                    ; $5c6c: $7e
    ei                                            ; $5c6d: $fb
    ld a, [hl-]                                   ; $5c6e: $3a
    db $fc                                        ; $5c6f: $fc
    ld [$fce7], sp                                ; $5c70: $08 $e7 $fc
    push de                                       ; $5c73: $d5
    ld a, e                                       ; $5c74: $7b
    ld hl, sp+$00                                 ; $5c75: $f8 $00
    add [hl]                                      ; $5c77: $86
    srl d                                         ; $5c78: $cb $3a
    bit 5, b                                      ; $5c7a: $cb $68
    add sp, $75                                   ; $5c7c: $e8 $75
    sub $86                                       ; $5c7e: $d6 $86
    call z, $c67a                                 ; $5c80: $cc $7a $c6
    add sp, -$34                                  ; $5c83: $e8 $cc
    dec [hl]                                      ; $5c85: $35
    ret nc                                        ; $5c86: $d0

    nop                                           ; $5c87: $00
    sbc h                                         ; $5c88: $9c
    rst $20                                       ; $5c89: $e7
    inc b                                         ; $5c8a: $04
    rst $00                                       ; $5c8b: $c7
    push af                                       ; $5c8c: $f5
    xor b                                         ; $5c8d: $a8
    ld [$a2ca], a                                 ; $5c8e: $ea $ca $a2
    and l                                         ; $5c91: $a5
    ld d, d                                       ; $5c92: $52
    or h                                          ; $5c93: $b4
    ld e, e                                       ; $5c94: $5b
    and $c0                                       ; $5c95: $e6 $c0
    db $eb                                        ; $5c97: $eb
    ldh a, [$e8]                                  ; $5c98: $f0 $e8
    and a                                         ; $5c9a: $a7
    inc e                                         ; $5c9b: $1c
    jp $d38a                                      ; $5c9c: $c3 $8a $d3


    inc b                                         ; $5c9f: $04
    ret                                           ; $5ca0: $c9


    dec c                                         ; $5ca1: $0d
    dec c                                         ; $5ca2: $0d
    ld c, l                                       ; $5ca3: $4d
    dec c                                         ; $5ca4: $0d
    rlca                                          ; $5ca5: $07
    ld c, l                                       ; $5ca6: $4d
    ld c, l                                       ; $5ca7: $4d
    dec l                                         ; $5ca8: $2d
    xor h                                         ; $5ca9: $ac
    bit 2, [hl]                                   ; $5caa: $cb $56
    jp hl                                         ; $5cac: $e9


    ld a, [hl]                                    ; $5cad: $7e
    rst $30                                       ; $5cae: $f7

jr_072_5caf:
    push bc                                       ; $5caf: $c5
    ldh [$08], a                                  ; $5cb0: $e0 $08
    ret nz                                        ; $5cb2: $c0

    cp e                                          ; $5cb3: $bb
    ld l, l                                       ; $5cb4: $6d
    dec bc                                        ; $5cb5: $0b
    rst $38                                       ; $5cb6: $ff
    ldh [rKEY1], a                                ; $5cb7: $e0 $4d
    ld l, l                                       ; $5cb9: $6d
    ld c, l                                       ; $5cba: $4d
    rst $38                                       ; $5cbb: $ff
    and $2d                                       ; $5cbc: $e6 $2d
    ldh a, [$c1]                                  ; $5cbe: $f0 $c1
    ret z                                         ; $5cc0: $c8

    ld [hl], d                                    ; $5cc1: $72
    xor e                                         ; $5cc2: $ab
    add b                                         ; $5cc3: $80
    db $ed                                        ; $5cc4: $ed
    add h                                         ; $5cc5: $84
    ldh [rKEY1], a                                ; $5cc6: $e0 $4d
    ld l, l                                       ; $5cc8: $6d
    dec bc                                        ; $5cc9: $0b
    ld a, [bc]                                    ; $5cca: $0a
    ld [bc], a                                    ; $5ccb: $02
    cp $eb                                        ; $5ccc: $fe $eb
    ld c, e                                       ; $5cce: $4b
    ld [hl], e                                    ; $5ccf: $73
    db $e3                                        ; $5cd0: $e3
    ld [hl], b                                    ; $5cd1: $70
    push bc                                       ; $5cd2: $c5
    nop                                           ; $5cd3: $00
    ld sp, hl                                     ; $5cd4: $f9
    add h                                         ; $5cd5: $84
    ldh [$c3], a                                  ; $5cd6: $e0 $c3
    db $ec                                        ; $5cd8: $ec
    pop bc                                        ; $5cd9: $c1
    ldh [$0e], a                                  ; $5cda: $e0 $0e
    cp a                                          ; $5cdc: $bf
    ldh [rKEY1], a                                ; $5cdd: $e0 $4d
    dec l                                         ; $5cdf: $2d
    dec l                                         ; $5ce0: $2d
    ld a, d                                       ; $5ce1: $7a
    or d                                          ; $5ce2: $b2
    jr nz, @-$32                                  ; $5ce3: $20 $cc

    pop bc                                        ; $5ce5: $c1
    pop af                                        ; $5ce6: $f1

Jump_072_5ce7:
    cp a                                          ; $5ce7: $bf
    ld [c], a                                     ; $5ce8: $e2
    inc bc                                        ; $5ce9: $03
    ld a, [bc]                                    ; $5cea: $0a
    dec bc                                        ; $5ceb: $0b
    rst $28                                       ; $5cec: $ef
    ret nz                                        ; $5ced: $c0

    db $ed                                        ; $5cee: $ed
    jp Jump_072_74d0                              ; $5cef: $c3 $d0 $74


    rrca                                          ; $5cf2: $0f
    and d                                         ; $5cf3: $a2
    pop bc                                        ; $5cf4: $c1
    or $bf                                        ; $5cf5: $f6 $bf
    ld [c], a                                     ; $5cf7: $e2
    add b                                         ; $5cf8: $80
    ld sp, hl                                     ; $5cf9: $f9
    adc h                                         ; $5cfa: $8c
    and b                                         ; $5cfb: $a0
    xor [hl]                                      ; $5cfc: $ae
    add d                                         ; $5cfd: $82
    di                                            ; $5cfe: $f3
    cp a                                          ; $5cff: $bf

Jump_072_5d00:
    and $c0                                       ; $5d00: $e6 $c0
    push hl                                       ; $5d02: $e5
    and [hl]                                      ; $5d03: $a6
    xor h                                         ; $5d04: $ac
    jr nz, jr_072_5caf                            ; $5d05: $20 $a8

    dec hl                                        ; $5d07: $2b
    ret nz                                        ; $5d08: $c0

    adc d                                         ; $5d09: $8a
    rst $28                                       ; $5d0a: $ef
    nop                                           ; $5d0b: $00
    ld [c], a                                     ; $5d0c: $e2
    db $fc                                        ; $5d0d: $fc
    db $e3                                        ; $5d0e: $e3
    ld a, d                                       ; $5d0f: $7a
    ret nz                                        ; $5d10: $c0

    ld h, [hl]                                    ; $5d11: $66
    xor h                                         ; $5d12: $ac
    ld [bc], a                                    ; $5d13: $02
    call $6b0a                                    ; $5d14: $cd $0a $6b
    inc bc                                        ; $5d17: $03
    ld a, [bc]                                    ; $5d18: $0a
    dec hl                                        ; $5d19: $2b
    cp $e2                                        ; $5d1a: $fe $e2
    ld a, [hl]                                    ; $5d1c: $7e
    ret                                           ; $5d1d: $c9


    ldh a, [$e3]                                  ; $5d1e: $f0 $e3
    add b                                         ; $5d20: $80
    pop hl                                        ; $5d21: $e1
    cp l                                          ; $5d22: $bd
    jp nz, Jump_072_6970                          ; $5d23: $c2 $70 $69

    ld d, $a2                                     ; $5d26: $16 $a2
    adc h                                         ; $5d28: $8c
    ld l, l                                       ; $5d29: $6d
    ld l, e                                       ; $5d2a: $6b
    pop de                                        ; $5d2b: $d1
    db $e4                                        ; $5d2c: $e4
    dec hl                                        ; $5d2d: $2b
    inc c                                         ; $5d2e: $0c
    db $e4                                        ; $5d2f: $e4
    ld a, [$7ce5]                                 ; $5d30: $fa $e5 $7c
    ld [c], a                                     ; $5d33: $e2
    rlca                                          ; $5d34: $07
    dec bc                                        ; $5d35: $0b
    dec l                                         ; $5d36: $2d
    ld l, l                                       ; $5d37: $6d
    ld a, $ad                                     ; $5d38: $3e $ad
    ld [bc], a                                    ; $5d3a: $02
    xor e                                         ; $5d3b: $ab
    pop bc                                        ; $5d3c: $c1
    and $c1                                       ; $5d3d: $e6 $c1
    and c                                         ; $5d3f: $a1
    db $fc                                        ; $5d40: $fc
    db $e4                                        ; $5d41: $e4
    ld bc, $bb2b                                  ; $5d42: $01 $2b $bb
    add sp, -$46                                  ; $5d45: $e8 $ba
    xor c                                         ; $5d47: $a9
    ld c, e                                       ; $5d48: $4b
    ld l, b                                       ; $5d49: $68
    dec bc                                        ; $5d4a: $0b
    ld h, [hl]                                    ; $5d4b: $66
    ld [bc], a                                    ; $5d4c: $02
    pop hl                                        ; $5d4d: $e1
    pop bc                                        ; $5d4e: $c1
    db $ec                                        ; $5d4f: $ec
    cp a                                          ; $5d50: $bf
    db $e4                                        ; $5d51: $e4
    ld b, $fc                                     ; $5d52: $06 $fc
    jp nz, Jump_072_6d0d                          ; $5d54: $c2 $0d $6d

    ei                                            ; $5d57: $fb
    ld l, a                                       ; $5d58: $6f
    daa                                           ; $5d59: $27
    adc d                                         ; $5d5a: $8a
    ld [bc], a                                    ; $5d5b: $02
    ldh [rNR12], a                                ; $5d5c: $e0 $12
    pop hl                                        ; $5d5e: $e1
    ld b, e                                       ; $5d5f: $43
    and b                                         ; $5d60: $a0
    inc sp                                        ; $5d61: $33
    ld l, e                                       ; $5d62: $6b
    ld c, e                                       ; $5d63: $4b
    rst $38                                       ; $5d64: $ff
    push hl                                       ; $5d65: $e5
    ld a, [hl]                                    ; $5d66: $7e
    rst $20                                       ; $5d67: $e7
    dec c                                         ; $5d68: $0d
    ld l, l                                       ; $5d69: $6d
    ret nz                                        ; $5d6a: $c0

    db $e3                                        ; $5d6b: $e3
    ld [hl], h                                    ; $5d6c: $74
    ld l, b                                       ; $5d6d: $68
    ld a, h                                       ; $5d6e: $7c
    rst $20                                       ; $5d6f: $e7
    ld l, h                                       ; $5d70: $6c
    ld [bc], a                                    ; $5d71: $02
    db $e4                                        ; $5d72: $e4
    dec hl                                        ; $5d73: $2b
    dec bc                                        ; $5d74: $0b
    ld l, e                                       ; $5d75: $6b
    dec bc                                        ; $5d76: $0b
    dec hl                                        ; $5d77: $2b
    rst $38                                       ; $5d78: $ff
    db $e3                                        ; $5d79: $e3
    nop                                           ; $5d7a: $00
    ld b, c                                       ; $5d7b: $41
    ldh [$3d], a                                  ; $5d7c: $e0 $3d
    ld [c], a                                     ; $5d7e: $e2
    ld a, h                                       ; $5d7f: $7c
    and c                                         ; $5d80: $a1
    db $fc                                        ; $5d81: $fc
    add e                                         ; $5d82: $83
    db $f4                                        ; $5d83: $f4
    ld c, d                                       ; $5d84: $4a
    ld sp, hl                                     ; $5d85: $f9
    add sp, -$80                                  ; $5d86: $e8 $80
    ld [c], a                                     ; $5d88: $e2
    sub d                                         ; $5d89: $92
    call nz, Call_000_0704                        ; $5d8a: $c4 $04 $07
    db $e3                                        ; $5d8d: $e3
    cp l                                          ; $5d8e: $bd
    ldh [rOCPD], a                                ; $5d8f: $e0 $6b
    cp a                                          ; $5d91: $bf
    and $02                                       ; $5d92: $e6 $02
    ld [$ea80], a                                 ; $5d94: $ea $80 $ea
    ld l, c                                       ; $5d97: $69
    ld h, a                                       ; $5d98: $67
    ret                                           ; $5d99: $c9


    add d                                         ; $5d9a: $82
    sbc h                                         ; $5d9b: $9c
    ccf                                           ; $5d9c: $3f
    ret nz                                        ; $5d9d: $c0

    ret nz                                        ; $5d9e: $c0

    db $e4                                        ; $5d9f: $e4
    ld l, e                                       ; $5da0: $6b
    ld c, e                                       ; $5da1: $4b
    ld l, e                                       ; $5da2: $6b
    rst $38                                       ; $5da3: $ff
    ldh [$7e], a                                  ; $5da4: $e0 $7e
    ld [c], a                                     ; $5da6: $e2
    ld c, e                                       ; $5da7: $4b
    ldh [$af], a                                  ; $5da8: $e0 $af
    add c                                         ; $5daa: $81
    ld a, h                                       ; $5dab: $7c
    add l                                         ; $5dac: $85
    ld a, l                                       ; $5dad: $7d
    xor l                                         ; $5dae: $ad
    ld e, b                                       ; $5daf: $58
    ld b, l                                       ; $5db0: $45
    adc d                                         ; $5db1: $8a
    add h                                         ; $5db2: $84
    dec hl                                        ; $5db3: $2b
    ld a, [bc]                                    ; $5db4: $0a
    ld l, e                                       ; $5db5: $6b
    xor d                                         ; $5db6: $aa
    nop                                           ; $5db7: $00
    ldh [rOCPD], a                                ; $5db8: $e0 $6b
    pop bc                                        ; $5dba: $c1
    ldh [rWX], a                                  ; $5dbb: $e0 $4b
    cp a                                          ; $5dbd: $bf
    ldh [$2b], a                                  ; $5dbe: $e0 $2b
    dec [hl]                                      ; $5dc0: $35
    ldh [$0b], a                                  ; $5dc1: $e0 $0b
    ld bc, $824b                                  ; $5dc3: $01 $4b $82
    and e                                         ; $5dc6: $a3
    add hl, sp                                    ; $5dc7: $39
    ld l, [hl]                                    ; $5dc8: $6e
    sub $4b                                       ; $5dc9: $d6 $4b
    db $d3                                        ; $5dcb: $d3
    and [hl]                                      ; $5dcc: $a6
    ld b, b                                       ; $5dcd: $40
    ldh [$c1], a                                  ; $5dce: $e0 $c1
    jp nz, $e040                                  ; $5dd0: $c2 $40 $e0

    add b                                         ; $5dd3: $80
    ld a, [hl]                                    ; $5dd4: $7e
    pop hl                                        ; $5dd5: $e1
    ld sp, $31e0                                  ; $5dd6: $31 $e0 $31
    add d                                         ; $5dd9: $82
    xor a                                         ; $5dda: $af
    ld h, b                                       ; $5ddb: $60
    reti                                          ; $5ddc: $d9


    add [hl]                                      ; $5ddd: $86
    ret nz                                        ; $5dde: $c0

    and $cf                                       ; $5ddf: $e6 $cf
    rlca                                          ; $5de1: $07
    ld c, l                                       ; $5de2: $4d
    inc h                                         ; $5de3: $24
    reti                                          ; $5de4: $d9


    add h                                         ; $5de5: $84
    nop                                           ; $5de6: $00
    pop hl                                        ; $5de7: $e1
    dec hl                                        ; $5de8: $2b
    ret nz                                        ; $5de9: $c0

    db $e3                                        ; $5dea: $e3
    ld b, b                                       ; $5deb: $40
    pop hl                                        ; $5dec: $e1
    ld c, e                                       ; $5ded: $4b
    ld [hl], d                                    ; $5dee: $72
    ldh [rLCDC], a                                ; $5def: $e0 $40
    pop hl                                        ; $5df1: $e1
    ld [$85c0], sp                                ; $5df2: $08 $c0 $85
    add b                                         ; $5df5: $80
    db $ec                                        ; $5df6: $ec
    rst $08                                       ; $5df7: $cf
    rlca                                          ; $5df8: $07
    ld c, l                                       ; $5df9: $4d
    sub h                                         ; $5dfa: $94
    and [hl]                                      ; $5dfb: $a6
    ret nz                                        ; $5dfc: $c0

    ret nz                                        ; $5dfd: $c0

    cp a                                          ; $5dfe: $bf
    ld [c], a                                     ; $5dff: $e2
    add c                                         ; $5e00: $81
    pop hl                                        ; $5e01: $e1
    add d                                         ; $5e02: $82
    or [hl]                                       ; $5e03: $b6
    and d                                         ; $5e04: $a2
    ld l, e                                       ; $5e05: $6b
    rst $30                                       ; $5e06: $f7
    add h                                         ; $5e07: $84
    dec l                                         ; $5e08: $2d
    ld h, h                                       ; $5e09: $64
    ldh a, [$08]                                  ; $5e0a: $f0 $08
    jr z, jr_072_5e56                             ; $5e0c: $28 $48

    add b                                         ; $5e0e: $80
    rst $20                                       ; $5e0f: $e7
    ld c, e                                       ; $5e10: $4b
    nop                                           ; $5e11: $00
    cp a                                          ; $5e12: $bf
    db $e4                                        ; $5e13: $e4
    pop bc                                        ; $5e14: $c1
    db $ed                                        ; $5e15: $ed
    db $fd                                        ; $5e16: $fd
    ld h, d                                       ; $5e17: $62
    ld [hl], h                                    ; $5e18: $74
    dec hl                                        ; $5e19: $2b
    ld b, d                                       ; $5e1a: $42
    rst $20                                       ; $5e1b: $e7
    ret nc                                        ; $5e1c: $d0

    ld b, b                                       ; $5e1d: $40
    reti                                          ; $5e1e: $d9


    jp nz, $8214                                  ; $5e1f: $c2 $14 $82

    inc b                                         ; $5e22: $04
    ld a, [hl]                                    ; $5e23: $7e
    pop hl                                        ; $5e24: $e1
    inc a                                         ; $5e25: $3c
    and h                                         ; $5e26: $a4
    ld l, e                                       ; $5e27: $6b
    add d                                         ; $5e28: $82
    pop hl                                        ; $5e29: $e1
    or [hl]                                       ; $5e2a: $b6
    add [hl]                                      ; $5e2b: $86
    xor h                                         ; $5e2c: $ac
    ld b, b                                       ; $5e2d: $40
    nop                                           ; $5e2e: $00
    ld [$26d9], a                                 ; $5e2f: $ea $d9 $26
    ld b, $d3                                     ; $5e32: $06 $d3
    nop                                           ; $5e34: $00
    ld c, l                                       ; $5e35: $4d
    dec l                                         ; $5e36: $2d
    res 0, a                                      ; $5e37: $cb $87
    adc h                                         ; $5e39: $8c
    pop bc                                        ; $5e3a: $c1
    ld a, l                                       ; $5e3b: $7d
    and d                                         ; $5e3c: $a2
    ld b, l                                       ; $5e3d: $45
    ld [c], a                                     ; $5e3e: $e2
    cp a                                          ; $5e3f: $bf
    rst $20                                       ; $5e40: $e7
    nop                                           ; $5e41: $00
    add b                                         ; $5e42: $80
    db $eb                                        ; $5e43: $eb
    sub [hl]                                      ; $5e44: $96
    daa                                           ; $5e45: $27
    adc e                                         ; $5e46: $8b
    ld b, b                                       ; $5e47: $40
    sub c                                         ; $5e48: $91
    nop                                           ; $5e49: $00
    adc h                                         ; $5e4a: $8c
    adc b                                         ; $5e4b: $88

jr_072_5e4c:
    cp [hl]                                       ; $5e4c: $be
    jp $e5c1                                      ; $5e4d: $c3 $c1 $e5


    ld sp, hl                                     ; $5e50: $f9
    ld h, e                                       ; $5e51: $63
    ld [bc], a                                    ; $5e52: $02
    ld h, $80                                     ; $5e53: $26 $80
    dec l                                         ; $5e55: $2d

jr_072_5e56:
    ld h, d                                       ; $5e56: $62
    ld b, c                                       ; $5e57: $41
    ld h, [hl]                                    ; $5e58: $66
    add hl, hl                                    ; $5e59: $29
    ret                                           ; $5e5a: $c9


    ld a, [hl+]                                   ; $5e5b: $2a
    nop                                           ; $5e5c: $00
    push hl                                       ; $5e5d: $e5
    rst $08                                       ; $5e5e: $cf
    ld b, c                                       ; $5e5f: $41
    ld b, b                                       ; $5e60: $40
    adc l                                         ; $5e61: $8d
    nop                                           ; $5e62: $00
    rst $20                                       ; $5e63: $e7
    add d                                         ; $5e64: $82
    add b                                         ; $5e65: $80
    db $ec                                        ; $5e66: $ec
    rlca                                          ; $5e67: $07
    jr z, jr_072_5ea8                             ; $5e68: $28 $3e

    jp nz, $e33f                                  ; $5e6a: $c2 $3f $e3

    cp a                                          ; $5e6d: $bf
    ld h, d                                       ; $5e6e: $62
    rst $38                                       ; $5e6f: $ff
    ld h, l                                       ; $5e70: $65
    or d                                          ; $5e71: $b2
    ld h, e                                       ; $5e72: $63
    jr nz, jr_072_5ede                            ; $5e73: $20 $69

    ld h, l                                       ; $5e75: $65
    ld a, [hl]                                    ; $5e76: $7e
    sub c                                         ; $5e77: $91
    call nz, $fe47                                ; $5e78: $c4 $47 $fe
    jp Jump_072_6180                              ; $5e7b: $c3 $80 $61


    ld l, e                                       ; $5e7e: $6b
    adc a                                         ; $5e7f: $8f
    ld h, h                                       ; $5e80: $64
    ld sp, hl                                     ; $5e81: $f9
    ld a, [hl+]                                   ; $5e82: $2a
    inc bc                                        ; $5e83: $03
    dec c                                         ; $5e84: $0d
    dec l                                         ; $5e85: $2d
    ret nz                                        ; $5e86: $c0

    ld h, l                                       ; $5e87: $65
    ld a, c                                       ; $5e88: $79
    inc c                                         ; $5e89: $0c
    and a                                         ; $5e8a: $a7
    jr z, jr_072_5e4c                             ; $5e8b: $28 $bf

    and e                                         ; $5e8d: $a3
    pop bc                                        ; $5e8e: $c1
    ldh [$f7], a                                  ; $5e8f: $e0 $f7
    ld b, e                                       ; $5e91: $43
    dec b                                         ; $5e92: $05
    ld a, [bc]                                    ; $5e93: $0a
    pop bc                                        ; $5e94: $c1
    jp hl                                         ; $5e95: $e9


    ld l, l                                       ; $5e96: $6d
    sub a                                         ; $5e97: $97
    add hl, bc                                    ; $5e98: $09
    db $fd                                        ; $5e99: $fd
    inc de                                        ; $5e9a: $13
    ld a, h                                       ; $5e9b: $7c
    and c                                         ; $5e9c: $a1
    ld b, e                                       ; $5e9d: $43
    ld [c], a                                     ; $5e9e: $e2
    cp h                                          ; $5e9f: $bc
    cpl                                           ; $5ea0: $2f
    db $10                                        ; $5ea1: $10
    pop bc                                        ; $5ea2: $c1
    pop hl                                        ; $5ea3: $e1
    ld a, h                                       ; $5ea4: $7c
    inc d                                         ; $5ea5: $14
    ld h, a                                       ; $5ea6: $67
    daa                                           ; $5ea7: $27

jr_072_5ea8:
    ld a, h                                       ; $5ea8: $7c
    and d                                         ; $5ea9: $a2
    dec hl                                        ; $5eaa: $2b

jr_072_5eab:
    ld d, a                                       ; $5eab: $57
    ldh [rHDMA4], a                               ; $5eac: $e0 $54
    ldh [$c1], a                                  ; $5eae: $e0 $c1
    xor $a0                                       ; $5eb0: $ee $a0
    cp l                                          ; $5eb2: $bd
    ld [$2ebf], sp                                ; $5eb3: $08 $bf $2e
    call nz, $9805                                ; $5eb6: $c4 $05 $98
    ld h, e                                       ; $5eb9: $63
    di                                            ; $5eba: $f3
    and c                                         ; $5ebb: $a1
    ld c, l                                       ; $5ebc: $4d
    cp a                                          ; $5ebd: $bf
    ld [$030d], a                                 ; $5ebe: $ea $0d $03
    ld l, l                                       ; $5ec1: $6d
    ld c, l                                       ; $5ec2: $4d
    jp nc, $c0a7                                  ; $5ec3: $d2 $a7 $c0

    di                                            ; $5ec6: $f3
    ld l, c                                       ; $5ec7: $69
    ld [hl+], a                                   ; $5ec8: $22
    ld d, a                                       ; $5ec9: $57
    ld hl, $a35c                                  ; $5eca: $21 $5c $a3
    cp a                                          ; $5ecd: $bf
    and $00                                       ; $5ece: $e6 $00
    ret                                           ; $5ed0: $c9


    ret nz                                        ; $5ed1: $c0

    rst $00                                       ; $5ed2: $c7
    pop bc                                        ; $5ed3: $c1
    db $d3                                        ; $5ed4: $d3
    ld l, l                                       ; $5ed5: $6d
    add b                                         ; $5ed6: $80
    ld a, [c]                                     ; $5ed7: $f2
    cp $a1                                        ; $5ed8: $fe $a1
    ret nz                                        ; $5eda: $c0

    and $7e                                       ; $5edb: $e6 $7e
    db $e3                                        ; $5edd: $e3

jr_072_5ede:
    add [hl]                                      ; $5ede: $86
    ldh [rNR10], a                                ; $5edf: $e0 $10
    ld e, $a5                                     ; $5ee1: $1e $a5
    inc bc                                        ; $5ee3: $03
    ld c, l                                       ; $5ee4: $4d
    or a                                          ; $5ee5: $b7
    rrca                                          ; $5ee6: $0f

Jump_072_5ee7:
    ld a, [hl]                                    ; $5ee7: $7e
    and c                                         ; $5ee8: $a1
    ld c, e                                       ; $5ee9: $4b
    inc e                                         ; $5eea: $1c
    and e                                         ; $5eeb: $a3
    cpl                                           ; $5eec: $2f
    and c                                         ; $5eed: $a1
    add l                                         ; $5eee: $85
    pop hl                                        ; $5eef: $e1
    inc bc                                        ; $5ef0: $03
    ld l, l                                       ; $5ef1: $6d
    ld c, l                                       ; $5ef2: $4d
    ret nz                                        ; $5ef3: $c0

    db $e4                                        ; $5ef4: $e4
    db $dd                                        ; $5ef5: $dd
    dec b                                         ; $5ef6: $05
    add b                                         ; $5ef7: $80
    rst $08                                       ; $5ef8: $cf
    or [hl]                                       ; $5ef9: $b6
    ld c, b                                       ; $5efa: $48
    sbc b                                         ; $5efb: $98
    ld b, d                                       ; $5efc: $42
    sub $e8                                       ; $5efd: $d6 $e8
    nop                                           ; $5eff: $00
    ld e, a                                       ; $5f00: $5f
    db $10                                        ; $5f01: $10
    ret                                           ; $5f02: $c9


    ld b, a                                       ; $5f03: $47
    ld a, e                                       ; $5f04: $7b
    stop                                          ; $5f05: $10 $00
    ld [c], a                                     ; $5f07: $e2
    sub [hl]                                      ; $5f08: $96
    db $eb                                        ; $5f09: $eb
    rst $18                                       ; $5f0a: $df
    ld a, [bc]                                    ; $5f0b: $0a
    ld a, a                                       ; $5f0c: $7f
    db $d3                                        ; $5f0d: $d3
    halt                                          ; $5f0e: $76
    ld b, a                                       ; $5f0f: $47
    nop                                           ; $5f10: $00
    ld b, $a1                                     ; $5f11: $06 $a1
    ld e, b                                       ; $5f13: $58
    ld b, l                                       ; $5f14: $45
    ld hl, $996c                                  ; $5f15: $21 $6c $99
    xor c                                         ; $5f18: $a9
    rst $38                                       ; $5f19: $ff
    call nc, $c280                                ; $5f1a: $d4 $80 $c2
    nop                                           ; $5f1d: $00
    db $e4                                        ; $5f1e: $e4
    add hl, hl                                    ; $5f1f: $29
    xor b                                         ; $5f20: $a8
    nop                                           ; $5f21: $00
    ret c                                         ; $5f22: $d8

    ld c, d                                       ; $5f23: $4a
    cp a                                          ; $5f24: $bf
    reti                                          ; $5f25: $d9


    ld b, b                                       ; $5f26: $40
    ret nz                                        ; $5f27: $c0

    adc b                                         ; $5f28: $88
    jr nz, jr_072_5eab                            ; $5f29: $20 $80

    jp $ee45                                      ; $5f2b: $c3 $45 $ee


    add [hl]                                      ; $5f2e: $86
    adc l                                         ; $5f2f: $8d
    ret nz                                        ; $5f30: $c0

    ld a, [$d300]                                 ; $5f31: $fa $00 $d3
    xor e                                         ; $5f34: $ab
    ldh a, [$ed]                                  ; $5f35: $f0 $ed
    cp $f7                                        ; $5f37: $fe $f7
    ret nz                                        ; $5f39: $c0

    add sp, -$6c                                  ; $5f3a: $e8 $94
    ld a, [hl+]                                   ; $5f3c: $2a
    sub $68                                       ; $5f3d: $d6 $68
    rst $38                                       ; $5f3f: $ff
    ld a, [$e340]                                 ; $5f40: $fa $40 $e3
    nop                                           ; $5f43: $00
    xor b                                         ; $5f44: $a8
    dec hl                                        ; $5f45: $2b
    res 1, c                                      ; $5f46: $cb $89
    ret nz                                        ; $5f48: $c0

    rst $38                                       ; $5f49: $ff
    ret nz                                        ; $5f4a: $c0

    db $e4                                        ; $5f4b: $e4
    add hl, bc                                    ; $5f4c: $09
    ret z                                         ; $5f4d: $c8

    sub b                                         ; $5f4e: $90
    ld c, h                                       ; $5f4f: $4c
    ret nz                                        ; $5f50: $c0

    rst $38                                       ; $5f51: $ff
    xor h                                         ; $5f52: $ac
    ld a, [bc]                                    ; $5f53: $0a
    nop                                           ; $5f54: $00
    inc c                                         ; $5f55: $0c
    rst $38                                       ; $5f56: $ff
    ret nz                                        ; $5f57: $c0

    rst $38                                       ; $5f58: $ff
    ret nz                                        ; $5f59: $c0

    rst $38                                       ; $5f5a: $ff
    ld b, b                                       ; $5f5b: $40
    rst $28                                       ; $5f5c: $ef
    rst $38                                       ; $5f5d: $ff
    rst $38                                       ; $5f5e: $ff
    rst $38                                       ; $5f5f: $ff
    rst $38                                       ; $5f60: $ff
    rst $38                                       ; $5f61: $ff
    rst $38                                       ; $5f62: $ff
    rst $38                                       ; $5f63: $ff
    rst $38                                       ; $5f64: $ff
    nop                                           ; $5f65: $00
    rst $38                                       ; $5f66: $ff
    rst $38                                       ; $5f67: $ff
    rst $38                                       ; $5f68: $ff
    rst $38                                       ; $5f69: $ff
    adc [hl]                                      ; $5f6a: $8e
    or l                                          ; $5f6b: $b5
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    nop                                           ; $5f6e: $00
    ld bc, $ff00                                  ; $5f6f: $01 $00 $ff
    rst $38                                       ; $5f72: $ff
    rst $38                                       ; $5f73: $ff
    rst $38                                       ; $5f74: $ff
    rst $38                                       ; $5f75: $ff
    rst $38                                       ; $5f76: $ff
    rst $38                                       ; $5f77: $ff
    rst $38                                       ; $5f78: $ff
    rst $38                                       ; $5f79: $ff
    rst $38                                       ; $5f7a: $ff
    rst $38                                       ; $5f7b: $ff
    rst $38                                       ; $5f7c: $ff
    ld a, [$01f9]                                 ; $5f7d: $fa $f9 $01
    rrca                                          ; $5f80: $0f
    rst $38                                       ; $5f81: $ff
    db $eb                                        ; $5f82: $eb
    pop hl                                        ; $5f83: $e1

jr_072_5f84:
    pop af                                        ; $5f84: $f1
    call nc, $c1e9                                ; $5f85: $d4 $e9 $c1
    rst $28                                       ; $5f88: $ef
    pop af                                        ; $5f89: $f1
    ld sp, hl                                     ; $5f8a: $f9
    and c                                         ; $5f8b: $a1
    ldh [$f0], a                                  ; $5f8c: $e0 $f0
    ei                                            ; $5f8e: $fb
    nop                                           ; $5f8f: $00
    ret nc                                        ; $5f90: $d0

    db $fd                                        ; $5f91: $fd
    ld [hl], b                                    ; $5f92: $70
    rst $28                                       ; $5f93: $ef
    ldh [rIE], a                                  ; $5f94: $e0 $ff
    and c                                         ; $5f96: $a1
    ld a, [$ec51]                                 ; $5f97: $fa $51 $ec
    ld sp, $d1fd                                  ; $5f9a: $31 $fd $d1
    ret nc                                        ; $5f9d: $d0

    ldh [$fb], a                                  ; $5f9e: $e0 $fb
    nop                                           ; $5fa0: $00
    rrca                                          ; $5fa1: $0f
    db $eb                                        ; $5fa2: $eb
    ldh [$fe], a                                  ; $5fa3: $e0 $fe
    sbc a                                         ; $5fa5: $9f
    ldh a, [$e0]                                  ; $5fa6: $f0 $e0
    rst $38                                       ; $5fa8: $ff
    ret nz                                        ; $5fa9: $c0

    ret c                                         ; $5faa: $d8

    ld a, $ce                                     ; $5fab: $3e $ce
    cpl                                           ; $5fad: $2f
    pop bc                                        ; $5fae: $c1
    ld a, [hl+]                                   ; $5faf: $2a
    rst $00                                       ; $5fb0: $c7
    nop                                           ; $5fb1: $00
    jr nz, jr_072_5f84                            ; $5fb2: $20 $d0

    dec e                                         ; $5fb4: $1d
    rst $00                                       ; $5fb5: $c7
    ld bc, $e0d1                                  ; $5fb6: $01 $d1 $e0
    ld [c], a                                     ; $5fb9: $e2
    db $db                                        ; $5fba: $db
    and l                                         ; $5fbb: $a5
    pop bc                                        ; $5fbc: $c1
    or d                                          ; $5fbd: $b2
    dec de                                        ; $5fbe: $1b
    ld a, [c]                                     ; $5fbf: $f2
    ldh [rIE], a                                  ; $5fc0: $e0 $ff
    nop                                           ; $5fc2: $00
    ldh [rIE], a                                  ; $5fc3: $e0 $ff
    ldh [rIE], a                                  ; $5fc5: $e0 $ff
    rst $38                                       ; $5fc7: $ff
    rst $38                                       ; $5fc8: $ff
    rst $38                                       ; $5fc9: $ff
    rst $38                                       ; $5fca: $ff
    rst $38                                       ; $5fcb: $ff
    push af                                       ; $5fcc: $f5
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    nop                                           ; $5fcf: $00
    ld bc, $ff00                                  ; $5fd0: $01 $00 $ff
    rst $38                                       ; $5fd3: $ff
    rst $38                                       ; $5fd4: $ff
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    rst $38                                       ; $5fd7: $ff
    rst $38                                       ; $5fd8: $ff
    rst $38                                       ; $5fd9: $ff
    rst $38                                       ; $5fda: $ff
    rst $38                                       ; $5fdb: $ff
    rst $38                                       ; $5fdc: $ff
    rst $38                                       ; $5fdd: $ff
    rst $38                                       ; $5fde: $ff
    rst $38                                       ; $5fdf: $ff
    add d                                         ; $5fe0: $82
    ei                                            ; $5fe1: $fb
    ld a, [$fff1]                                 ; $5fe2: $fa $f1 $ff
    push hl                                       ; $5fe5: $e5
    pop hl                                        ; $5fe6: $e1
    db $fc                                        ; $5fe7: $fc
    sbc $f3                                       ; $5fe8: $de $f3
    pop hl                                        ; $5fea: $e1
    jp hl                                         ; $5feb: $e9


    cp l                                          ; $5fec: $bd
    ldh a, [$f1]                                  ; $5fed: $f0 $f1
    inc sp                                        ; $5fef: $33
    pop af                                        ; $5ff0: $f1
    ld hl, $e5ff                                  ; $5ff1: $21 $ff $e5
    sbc l                                         ; $5ff4: $9d
    db $ed                                        ; $5ff5: $ed
    db $10                                        ; $5ff6: $10
    db $10                                        ; $5ff7: $10
    add e                                         ; $5ff8: $83
    pop hl                                        ; $5ff9: $e1
    add sp, -$1d                                  ; $5ffa: $e8 $e3
    ld [hl], b                                    ; $5ffc: $70
    ld a, h                                       ; $5ffd: $7c
    ldh [$df], a                                  ; $5ffe: $e0 $df
    ld [c], a                                     ; $6000: $e2
    ldh [$ed], a                                  ; $6001: $e0 $ed
    pop bc                                        ; $6003: $c1
    ldh [$f1], a                                  ; $6004: $e0 $f1
    pop af                                        ; $6006: $f1
    ld de, $e1ff                                  ; $6007: $11 $ff $e1
    nop                                           ; $600a: $00
    rst $18                                       ; $600b: $df
    ld [c], a                                     ; $600c: $e2
    inc sp                                        ; $600d: $33
    ld [$e5e0], a                                 ; $600e: $ea $e0 $e5
    db $e4                                        ; $6011: $e4
    pop hl                                        ; $6012: $e1
    ei                                            ; $6013: $fb
    ld [c], a                                     ; $6014: $e2
    ldh [$f6], a                                  ; $6015: $e0 $f6
    dec de                                        ; $6017: $1b
    pop hl                                        ; $6018: $e1
    cp [hl]                                       ; $6019: $be
    ldh [rSC], a                                  ; $601a: $e0 $02
    ret nz                                        ; $601c: $c0

    xor $f8                                       ; $601d: $ee $f8
    adc c                                         ; $601f: $89
    pop hl                                        ; $6020: $e1
    ldh [$f6], a                                  ; $6021: $e0 $f6
    push hl                                       ; $6023: $e5
    jp $e280                                      ; $6024: $c3 $80 $e2


    ld a, l                                       ; $6027: $7d
    pop hl                                        ; $6028: $e1
    ld [hl], l                                    ; $6029: $75
    ld [c], a                                     ; $602a: $e2
    nop                                           ; $602b: $00
    ld hl, $83f0                                  ; $602c: $21 $f0 $83
    ld [c], a                                     ; $602f: $e2
    ld a, l                                       ; $6030: $7d
    pop hl                                        ; $6031: $e1
    ccf                                           ; $6032: $3f
    xor $01                                       ; $6033: $ee $01
    db $e4                                        ; $6035: $e4
    ld hl, $ffe5                                  ; $6036: $21 $e5 $ff
    adc $e0                                       ; $6039: $ce $e0
    rr h                                          ; $603b: $cb $1c
    ret nz                                        ; $603d: $c0

    push de                                       ; $603e: $d5
    add c                                         ; $603f: $81
    db $db                                        ; $6040: $db
    ld sp, $3131                                  ; $6041: $31 $31 $31
    dec a                                         ; $6044: $3d
    add $1c                                       ; $6045: $c6 $1c
    jp c, $bff8                                   ; $6047: $da $f8 $bf

    inc c                                         ; $604a: $0c
    rst $38                                       ; $604b: $ff
    rst $38                                       ; $604c: $ff
    pop af                                        ; $604d: $f1
    ldh a, [rNR13]                                ; $604e: $f0 $13
    inc de                                        ; $6050: $13
    call c, $ffff                                 ; $6051: $dc $ff $ff
    rst $38                                       ; $6054: $ff
    rst $38                                       ; $6055: $ff
    rst $38                                       ; $6056: $ff
    rst $38                                       ; $6057: $ff
    rst $38                                       ; $6058: $ff
    nop                                           ; $6059: $00
    rst $38                                       ; $605a: $ff
    rst $38                                       ; $605b: $ff
    rst $38                                       ; $605c: $ff
    add sp, $00                                   ; $605d: $e8 $00
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
    cp $01                                        ; $6061: $fe $01
    nop                                           ; $6063: $00
    rst $38                                       ; $6064: $ff
    rst $38                                       ; $6065: $ff
    rst $38                                       ; $6066: $ff
    rst $38                                       ; $6067: $ff
    rst $38                                       ; $6068: $ff
    rst $38                                       ; $6069: $ff
    rst $38                                       ; $606a: $ff
    rst $38                                       ; $606b: $ff
    rst $38                                       ; $606c: $ff
    rst $38                                       ; $606d: $ff
    rst $38                                       ; $606e: $ff
    rst $38                                       ; $606f: $ff
    rst $38                                       ; $6070: $ff
    rst $38                                       ; $6071: $ff
    nop                                           ; $6072: $00
    rst $38                                       ; $6073: $ff
    rst $38                                       ; $6074: $ff
    rst $38                                       ; $6075: $ff
    rst $38                                       ; $6076: $ff
    rst $38                                       ; $6077: $ff
    rst $38                                       ; $6078: $ff
    rst $38                                       ; $6079: $ff
    rst $38                                       ; $607a: $ff
    rst $38                                       ; $607b: $ff
    rst $38                                       ; $607c: $ff
    rst $38                                       ; $607d: $ff
    rst $38                                       ; $607e: $ff
    rst $38                                       ; $607f: $ff
    rst $38                                       ; $6080: $ff
    rst $38                                       ; $6081: $ff
    rst $38                                       ; $6082: $ff
    nop                                           ; $6083: $00
    rst $38                                       ; $6084: $ff
    rst $38                                       ; $6085: $ff
    rst $38                                       ; $6086: $ff
    rst $38                                       ; $6087: $ff
    rst $38                                       ; $6088: $ff
    rst $38                                       ; $6089: $ff
    rst $38                                       ; $608a: $ff
    rst $38                                       ; $608b: $ff
    rst $38                                       ; $608c: $ff
    rst $38                                       ; $608d: $ff
    rst $38                                       ; $608e: $ff
    rst $38                                       ; $608f: $ff
    rst $38                                       ; $6090: $ff
    rst $38                                       ; $6091: $ff
    rst $38                                       ; $6092: $ff
    rst $38                                       ; $6093: $ff
    nop                                           ; $6094: $00
    rst $38                                       ; $6095: $ff
    rst $38                                       ; $6096: $ff
    rst $38                                       ; $6097: $ff
    rst $38                                       ; $6098: $ff
    rst $38                                       ; $6099: $ff
    rst $38                                       ; $609a: $ff
    rst $38                                       ; $609b: $ff
    rst $38                                       ; $609c: $ff
    rst $38                                       ; $609d: $ff
    rst $38                                       ; $609e: $ff
    rst $38                                       ; $609f: $ff
    rst $38                                       ; $60a0: $ff
    rst $38                                       ; $60a1: $ff
    rst $38                                       ; $60a2: $ff
    rst $38                                       ; $60a3: $ff
    rst $38                                       ; $60a4: $ff
    nop                                           ; $60a5: $00
    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    rst $38                                       ; $60a8: $ff
    rst $38                                       ; $60a9: $ff
    rst $38                                       ; $60aa: $ff
    rst $38                                       ; $60ab: $ff
    rst $38                                       ; $60ac: $ff
    rst $38                                       ; $60ad: $ff
    rst $38                                       ; $60ae: $ff
    rst $38                                       ; $60af: $ff
    rst $38                                       ; $60b0: $ff
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    rst $38                                       ; $60b5: $ff
    nop                                           ; $60b6: $00
    rst $38                                       ; $60b7: $ff
    rst $38                                       ; $60b8: $ff
    rst $38                                       ; $60b9: $ff
    rst $38                                       ; $60ba: $ff
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    rst $38                                       ; $60c0: $ff
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff
    nop                                           ; $60c7: $00
    rst $38                                       ; $60c8: $ff
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
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
    nop                                           ; $60d8: $00
    rst $38                                       ; $60d9: $ff
    rst $38                                       ; $60da: $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    rst $38                                       ; $60e3: $ff
    db $e4                                        ; $60e4: $e4
    nop                                           ; $60e5: $00
    nop                                           ; $60e6: $00
    nop                                           ; $60e7: $00
    nop                                           ; $60e8: $00
    nop                                           ; $60e9: $00
    nop                                           ; $60ea: $00
    nop                                           ; $60eb: $00
    ccf                                           ; $60ec: $3f
    ccf                                           ; $60ed: $3f
    nop                                           ; $60ee: $00
    nop                                           ; $60ef: $00
    nop                                           ; $60f0: $00
    jr nz, jr_072_6113                            ; $60f1: $20 $20

    ld d, l                                       ; $60f3: $55
    and b                                         ; $60f4: $a0
    ld a, [hl]                                    ; $60f5: $7e
    rst $38                                       ; $60f6: $ff
    ld a, a                                       ; $60f7: $7f
    ld [$0825], sp                                ; $60f8: $08 $25 $08
    dec h                                         ; $60fb: $25
    ld [$0825], sp                                ; $60fc: $08 $25 $08
    dec h                                         ; $60ff: $25
    sub e                                         ; $6100: $93
    add hl, hl                                    ; $6101: $29
    rra                                           ; $6102: $1f
    ld d, e                                       ; $6103: $53
    ld [$6003], a                                 ; $6104: $ea $03 $60
    ld [bc], a                                    ; $6107: $02
    rst $38                                       ; $6108: $ff
    ld a, a                                       ; $6109: $7f
    ld a, [c]                                     ; $610a: $f2
    inc bc                                        ; $610b: $03
    db $ec                                        ; $610c: $ec
    inc bc                                        ; $610d: $03
    ld h, b                                       ; $610e: $60
    ld [bc], a                                    ; $610f: $02
    and b                                         ; $6110: $a0
    ld a, l                                       ; $6111: $7d
    rst $38                                       ; $6112: $ff

jr_072_6113:
    ld a, a                                       ; $6113: $7f
    rrc h                                         ; $6114: $cb $0c
    ld h, b                                       ; $6116: $60
    ld [bc], a                                    ; $6117: $02
    dec sp                                        ; $6118: $3b
    ld l, e                                       ; $6119: $6b
    ld [$6003], a                                 ; $611a: $ea $03 $60
    ld [bc], a                                    ; $611d: $02
    nop                                           ; $611e: $00
    dec c                                         ; $611f: $0d
    sub h                                         ; $6120: $94
    ld bc, $2bff                                  ; $6121: $01 $ff $2b
    ld h, b                                       ; $6124: $60
    ld [bc], a                                    ; $6125: $02
    nop                                           ; $6126: $00
    dec c                                         ; $6127: $0d
    ld [$0825], sp                                ; $6128: $08 $25 $08
    dec h                                         ; $612b: $25
    ld [$0825], sp                                ; $612c: $08 $25 $08

jr_072_612f:
    dec h                                         ; $612f: $25
    push de                                       ; $6130: $d5
    nop                                           ; $6131: $00
    rst $38                                       ; $6132: $ff

jr_072_6133:
    ldh [rTIMA], a                                ; $6133: $e0 $05
    ei                                            ; $6135: $fb
    ldh [$0b], a                                  ; $6136: $e0 $0b
    rst $30                                       ; $6138: $f7
    pop hl                                        ; $6139: $e1
    nop                                           ; $613a: $00
    ld [bc], a                                    ; $613b: $02
    db $eb                                        ; $613c: $eb
    nop                                           ; $613d: $00
    jr z, jr_072_612f                             ; $613e: $28 $ef

    ldh [$90], a                                  ; $6140: $e0 $90
    db $eb                                        ; $6142: $eb
    ldh [$f5], a                                  ; $6143: $e0 $f5
    nop                                           ; $6145: $00
    ret z                                         ; $6146: $c8

    cp $e5                                        ; $6147: $fe $e5
    ldh [$80], a                                  ; $6149: $e0 $80
    nop                                           ; $614b: $00
    db $fc                                        ; $614c: $fc
    rst $38                                       ; $614d: $ff
    ret nc                                        ; $614e: $d0

    rst $38                                       ; $614f: $ff
    and b                                         ; $6150: $a0
    rst $38                                       ; $6151: $ff
    cp $c2                                        ; $6152: $fe $c2
    ld hl, sp-$78                                 ; $6154: $f8 $88
    ldh a, [$80]                                  ; $6156: $f0 $80
    ldh [rNR10], a                                ; $6158: $e0 $10
    rst $28                                       ; $615a: $ef
    ldh [rP1], a                                  ; $615b: $e0 $00
    ret nz                                        ; $615d: $c0

    rst $38                                       ; $615e: $ff
    rst $38                                       ; $615f: $ff
    ldh [$fd], a                                  ; $6160: $e0 $fd
    rst $38                                       ; $6162: $ff
    ld a, [$ffff]                                 ; $6163: $fa $ff $ff
    call c, $e0ff                                 ; $6166: $dc $ff $e0
    rst $38                                       ; $6169: $ff
    add c                                         ; $616a: $81
    cp $08                                        ; $616b: $fe $08
    db $ed                                        ; $616d: $ed
    ldh a, [$f8]                                  ; $616e: $f0 $f8
    push hl                                       ; $6170: $e5
    jr nz, jr_072_6133                            ; $6171: $20 $c0

    cp a                                          ; $6173: $bf
    ld [c], a                                     ; $6174: $e2
    nop                                           ; $6175: $00
    ld a, a                                       ; $6176: $7f
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    ccf                                           ; $6179: $3f
    rst $38                                       ; $617a: $ff
    cpl                                           ; $617b: $2f
    rst $38                                       ; $617c: $ff
    rra                                           ; $617d: $1f
    rst $38                                       ; $617e: $ff
    sbc a                                         ; $617f: $9f

Jump_072_6180:
    ld a, a                                       ; $6180: $7f
    rst $38                                       ; $6181: $ff
    rla                                           ; $6182: $17
    ld a, a                                       ; $6183: $7f
    dec bc                                        ; $6184: $0b
    ld a, a                                       ; $6185: $7f
    ld b, a                                       ; $6186: $47
    ccf                                           ; $6187: $3f
    rlca                                          ; $6188: $07
    rra                                           ; $6189: $1f
    rst $38                                       ; $618a: $ff
    inc bc                                        ; $618b: $03
    rra                                           ; $618c: $1f
    ld [de], a                                    ; $618d: $12
    rrca                                          ; $618e: $0f
    ld bc, $090f                                  ; $618f: $01 $0f $09
    rlca                                          ; $6192: $07
    rst $38                                       ; $6193: $ff
    ld bc, $0007                                  ; $6194: $01 $07 $00
    rlca                                          ; $6197: $07
    inc b                                         ; $6198: $04
    inc bc                                        ; $6199: $03
    jr @+$01                                      ; $619a: $18 $ff

    rra                                           ; $619c: $1f
    nop                                           ; $619d: $00
    rst $38                                       ; $619e: $ff
    add c                                         ; $619f: $81
    inc a                                         ; $61a0: $3c
    db $10                                        ; $61a1: $10
    db $d3                                        ; $61a2: $d3
    db $e3                                        ; $61a3: $e3
    add e                                         ; $61a4: $83
    ldh [$c8], a                                  ; $61a5: $e0 $c8
    ldh [rIE], a                                  ; $61a7: $e0 $ff
    ret nz                                        ; $61a9: $c0

    nop                                           ; $61aa: $00
    ldh [$90], a                                  ; $61ab: $e0 $90
    ldh [$80], a                                  ; $61ad: $e0 $80
    ldh [rP1], a                                  ; $61af: $e0 $00
    ld a, d                                       ; $61b1: $7a
    and d                                         ; $61b2: $a2
    ldh [rNR41], a                                ; $61b3: $e0 $20
    and b                                         ; $61b5: $a0
    ldh [$7b], a                                  ; $61b6: $e0 $7b
    rst $38                                       ; $61b8: $ff
    rst $30                                       ; $61b9: $f7
    rst $38                                       ; $61ba: $ff
    jp c, $fde3                                   ; $61bb: $da $e3 $fd

    ld [$e063], sp                                ; $61be: $08 $63 $e0
    and h                                         ; $61c1: $a4
    ld hl, sp-$20                                 ; $61c2: $f8 $e0
    ld hl, sp-$20                                 ; $61c4: $f8 $e0
    db $fc                                        ; $61c6: $fc
    rst $38                                       ; $61c7: $ff
    ldh a, [$fc]                                  ; $61c8: $f0 $fc
    jp nc, $a0fc                                  ; $61ca: $d2 $fc $a0

    db $fc                                        ; $61cd: $fc
    ldh [$f8], a                                  ; $61ce: $e0 $f8
    ei                                            ; $61d0: $fb
    db $e4                                        ; $61d1: $e4
    ld hl, sp-$80                                 ; $61d2: $f8 $80
    pop hl                                        ; $61d4: $e1
    rst $38                                       ; $61d5: $ff
    rst $38                                       ; $61d6: $ff
    rst $18                                       ; $61d7: $df

Jump_072_61d8:
    rst $38                                       ; $61d8: $ff
    cp l                                          ; $61d9: $bd
    ei                                            ; $61da: $fb
    rst $38                                       ; $61db: $ff
    jp $e0b6                                      ; $61dc: $c3 $b6 $e0


    nop                                           ; $61df: $00
    rst $20                                       ; $61e0: $e7
    db $fc                                        ; $61e1: $fc
    rst $38                                       ; $61e2: $ff
    db $f4                                        ; $61e3: $f4
    sbc a                                         ; $61e4: $9f
    rst $38                                       ; $61e5: $ff
    add sp, -$01                                  ; $61e6: $e8 $ff
    ld hl, sp-$02                                 ; $61e8: $f8 $fe
    cp $e0                                        ; $61ea: $fe $e0
    or $e0                                        ; $61ec: $f6 $e0
    db $fc                                        ; $61ee: $fc
    add l                                         ; $61ef: $85
    rst $38                                       ; $61f0: $ff
    ld a, b                                       ; $61f1: $78
    ldh [$80], a                                  ; $61f2: $e0 $80
    and e                                         ; $61f4: $a3
    and $23                                       ; $61f5: $e6 $23
    pop hl                                        ; $61f7: $e1
    ldh a, [$e0]                                  ; $61f8: $f0 $e0
    rst $28                                       ; $61fa: $ef
    ld [$f1c0], a                                 ; $61fb: $ea $c0 $f1
    ld b, b                                       ; $61fe: $40
    ldh [$ea], a                                  ; $61ff: $e0 $ea
    ret nc                                        ; $6201: $d0

Jump_072_6202:
    pop hl                                        ; $6202: $e1
    rst $08                                       ; $6203: $cf
    jp hl                                         ; $6204: $e9


    ld [bc], a                                    ; $6205: $02
    add c                                         ; $6206: $81
    and b                                         ; $6207: $a0
    pop bc                                        ; $6208: $c1
    rst $38                                       ; $6209: $ff
    nop                                           ; $620a: $00
    pop bc                                        ; $620b: $c1
    add l                                         ; $620c: $85
    jp $c3a1                                      ; $620d: $c3 $a1 $c3


    nop                                           ; $6210: $00
    add e                                         ; $6211: $83
    cp a                                          ; $6212: $bf
    dec b                                         ; $6213: $05
    add e                                         ; $6214: $83
    ld b, b                                       ; $6215: $40
    add c                                         ; $6216: $81
    ld b, c                                       ; $6217: $41
    add b                                         ; $6218: $80
    ret nz                                        ; $6219: $c0

    ldh [$c0], a                                  ; $621a: $e0 $c0
    rst $38                                       ; $621c: $ff
    and b                                         ; $621d: $a0
    ret nz                                        ; $621e: $c0

    ld b, b                                       ; $621f: $40
    ldh [$e8], a                                  ; $6220: $e0 $e8
    ldh a, [$d1]                                  ; $6222: $f0 $d1
    db $fc                                        ; $6224: $fc
    ld a, a                                       ; $6225: $7f
    db $ec                                        ; $6226: $ec
    rst $38                                       ; $6227: $ff
    ld a, [de]                                    ; $6228: $1a
    rst $38                                       ; $6229: $ff
    add b                                         ; $622a: $80
    ld e, $12                                     ; $622b: $1e $12
    call nc, $bfc2                                ; $622d: $d4 $c2 $bf
    ld c, b                                       ; $6230: $48
    nop                                           ; $6231: $00
    ld bc, $5878                                  ; $6232: $01 $78 $58
    rst $38                                       ; $6235: $ff
    or b                                          ; $6236: $b0
    jp hl                                         ; $6237: $e9


    ld [bc], a                                    ; $6238: $02
    rst $38                                       ; $6239: $ff
    ld bc, $0300                                  ; $623a: $01 $00 $03
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    ld b, b                                       ; $623f: $40
    ld b, b                                       ; $6240: $40
    nop                                           ; $6241: $00
    ccf                                           ; $6242: $3f
    jr nz, jr_072_6245                            ; $6243: $20 $00

jr_072_6245:
    db $10                                        ; $6245: $10
    ld [$0400], sp                                ; $6246: $08 $00 $04
    or d                                          ; $6249: $b2
    ret nz                                        ; $624a: $c0

    and d                                         ; $624b: $a2
    pop bc                                        ; $624c: $c1
    ldh [$f0], a                                  ; $624d: $e0 $f0
    rst $38                                       ; $624f: $ff
    ldh a, [rIE]                                  ; $6250: $f0 $ff
    ldh a, [rIE]                                  ; $6252: $f0 $ff
    ldh a, [rIE]                                  ; $6254: $f0 $ff
    ldh a, [$f3]                                  ; $6256: $f0 $f3
    jp $c33c                                      ; $6258: $c3 $3c $c3


    pop af                                        ; $625b: $f1
    inc a                                         ; $625c: $3c
    db $fd                                        ; $625d: $fd
    ldh [$fe], a                                  ; $625e: $e0 $fe
    ld [c], a                                     ; $6260: $e2
    db $f4                                        ; $6261: $f4
    pop hl                                        ; $6262: $e1
    dec de                                        ; $6263: $1b
    rst $20                                       ; $6264: $e7
    cpl                                           ; $6265: $2f
    call c, Call_000_1eff                         ; $6266: $dc $ff $1e
    pop af                                        ; $6269: $f1
    inc a                                         ; $626a: $3c
    db $e3                                        ; $626b: $e3
    ld a, h                                       ; $626c: $7c
    jp $c37c                                      ; $626d: $c3 $7c $c3


    rst $38                                       ; $6270: $ff
    db $e3                                        ; $6271: $e3
    sbc h                                         ; $6272: $9c
    jp Jump_000_18bc                              ; $6273: $c3 $bc $18


    rst $20                                       ; $6276: $e7
    inc a                                         ; $6277: $3c
    jp Jump_000_3dff                              ; $6278: $c3 $ff $3d


    jp nz, $e719                                  ; $627b: $c2 $19 $e7

    rla                                           ; $627e: $17
    xor $5f                                       ; $627f: $ee $5f
    cp b                                          ; $6281: $b8
    rst $38                                       ; $6282: $ff
    ld a, a                                       ; $6283: $7f
    ldh [$f3], a                                  ; $6284: $e0 $f3
    adc h                                         ; $6286: $8c
    dec de                                        ; $6287: $1b
    rst $20                                       ; $6288: $e7
    rra                                           ; $6289: $1f
    db $fc                                        ; $628a: $fc
    rst $38                                       ; $628b: $ff
    ld a, [hl]                                    ; $628c: $7e
    pop hl                                        ; $628d: $e1
    db $fc                                        ; $628e: $fc
    add e                                         ; $628f: $83
    db $fc                                        ; $6290: $fc
    inc bc                                        ; $6291: $03
    cp h                                          ; $6292: $bc
    ld b, e                                       ; $6293: $43
    cp $c4                                        ; $6294: $fe $c4
    pop hl                                        ; $6296: $e1
    sbc b                                         ; $6297: $98
    rst $20                                       ; $6298: $e7
    db $fc                                        ; $6299: $fc
    ld b, e                                       ; $629a: $43
    call c, $f863                                 ; $629b: $dc $63 $f8
    rst $38                                       ; $629e: $ff
    daa                                           ; $629f: $27
    ld l, b                                       ; $62a0: $68
    or a                                          ; $62a1: $b7
    ld a, h                                       ; $62a2: $7c
    sub e                                         ; $62a3: $93
    db $f4                                        ; $62a4: $f4
    dec de                                        ; $62a5: $1b
    ld hl, sp-$01                                 ; $62a6: $f8 $ff
    rrca                                          ; $62a8: $0f
    ld hl, sp+$0f                                 ; $62a9: $f8 $0f
    sbc $25                                       ; $62ab: $de $25
    inc a                                         ; $62ad: $3c
    rst $00                                       ; $62ae: $c7
    ld a, $ff                                     ; $62af: $3e $ff
    jp $c23f                                      ; $62b1: $c3 $3f $c2


    ld a, $c3                                     ; $62b4: $3e $c3
    rst $00                                       ; $62b6: $c7
    add hl, sp                                    ; $62b7: $39
    jp Jump_000_3d7f                              ; $62b8: $c3 $7f $3d


    db $d3                                        ; $62bb: $d3
    rst $38                                       ; $62bc: $ff
    rst $10                                       ; $62bd: $d7
    jr z, @+$01                                   ; $62be: $28 $ff

    nop                                           ; $62c0: $00
    and b                                         ; $62c1: $a0
    rst $20                                       ; $62c2: $e7
    rst $38                                       ; $62c3: $ff
    db $e3                                        ; $62c4: $e3
    sbc h                                         ; $62c5: $9c
    db $e3                                        ; $62c6: $e3
    sbc h                                         ; $62c7: $9c
    ld a, h                                       ; $62c8: $7c
    add e                                         ; $62c9: $83
    inc a                                         ; $62ca: $3c
    jp $fcf1                                      ; $62cb: $c3 $f1 $fc


    db $fc                                        ; $62ce: $fc
    ldh [$f4], a                                  ; $62cf: $e0 $f4
    pop hl                                        ; $62d1: $e1
    and b                                         ; $62d2: $a0
    pop hl                                        ; $62d3: $e1
    jr @+$01                                      ; $62d4: $18 $ff

    db $db                                        ; $62d6: $db
    rst $20                                       ; $62d7: $e7
    rst $28                                       ; $62d8: $ef
    rst $38                                       ; $62d9: $ff
    nop                                           ; $62da: $00
    ld a, [hl]                                    ; $62db: $7e
    add c                                         ; $62dc: $81
    add b                                         ; $62dd: $80
    ld [c], a                                     ; $62de: $e2
    db $f4                                        ; $62df: $f4
    ccf                                           ; $62e0: $3f
    ret nc                                        ; $62e1: $d0

    rst $38                                       ; $62e2: $ff
    inc c                                         ; $62e3: $0c
    di                                            ; $62e4: $f3
    inc a                                         ; $62e5: $3c
    db $e3                                        ; $62e6: $e3
    inc a                                         ; $62e7: $3c
    db $e3                                        ; $62e8: $e3
    inc c                                         ; $62e9: $0c
    di                                            ; $62ea: $f3
    rst $38                                       ; $62eb: $ff
    ccf                                           ; $62ec: $3f
    ret nc                                        ; $62ed: $d0

    dec de                                        ; $62ee: $1b
    db $f4                                        ; $62ef: $f4
    xor e                                         ; $62f0: $ab
    rst $38                                       ; $62f1: $ff
    ld e, a                                       ; $62f2: $5f
    db $fc                                        ; $62f3: $fc
    rst $18                                       ; $62f4: $df
    cp [hl]                                       ; $62f5: $be
    pop af                                        ; $62f6: $f1
    ld a, h                                       ; $62f7: $7c
    db $e3                                        ; $62f8: $e3
    db $fc                                        ; $62f9: $fc
    ld [hl], b                                    ; $62fa: $70
    db $e4                                        ; $62fb: $e4
    rst $38                                       ; $62fc: $ff
    rst $38                                       ; $62fd: $ff
    rst $38                                       ; $62fe: $ff
    jp c, $f5ff                                   ; $62ff: $da $ff $f5

    rst $38                                       ; $6302: $ff
    xor e                                         ; $6303: $ab
    rst $38                                       ; $6304: $ff
    ld d, a                                       ; $6305: $57
    cp $77                                        ; $6306: $fe $77
    cp a                                          ; $6308: $bf
    ld hl, sp-$01                                 ; $6309: $f8 $ff
    ld [hl], b                                    ; $630b: $70
    ldh [$57], a                                  ; $630c: $e0 $57
    rst $38                                       ; $630e: $ff
    cp a                                          ; $630f: $bf
    ld [hl], b                                    ; $6310: $70
    ld [$efff], a                                 ; $6311: $ea $ff $ef
    rst $38                                       ; $6314: $ff
    rst $10                                       ; $6315: $d7
    ld a, a                                       ; $6316: $7f
    db $ed                                        ; $6317: $ed
    ld a, a                                       ; $6318: $7f
    rst $30                                       ; $6319: $f7
    ccf                                           ; $631a: $3f
    rst $38                                       ; $631b: $ff
    ld l, e                                       ; $631c: $6b
    cp a                                          ; $631d: $bf
    ld [hl], l                                    ; $631e: $75
    sbc a                                         ; $631f: $9f
    ei                                            ; $6320: $fb
    rra                                           ; $6321: $1f
    db $fd                                        ; $6322: $fd
    rrca                                          ; $6323: $0f
    rst $38                                       ; $6324: $ff
    ld a, [$dd0f]                                 ; $6325: $fa $0f $dd
    daa                                           ; $6328: $27
    ld a, $c7                                     ; $6329: $3e $c7
    ccf                                           ; $632b: $3f
    jp Jump_072_6ebc                              ; $632c: $c3 $bc $6e


    ldh [rSVBK], a                                ; $632f: $e0 $70
    ld [c], a                                     ; $6331: $e2
    rst $10                                       ; $6332: $d7
    rst $38                                       ; $6333: $ff
    ei                                            ; $6334: $fb
    inc a                                         ; $6335: $3c
    ld [hl], b                                    ; $6336: $70
    xor $c3                                       ; $6337: $ee $c3
    ld a, [$e1a2]                                 ; $6339: $fa $a2 $e1
    cp h                                          ; $633c: $bc
    ld [hl], b                                    ; $633d: $70
    ld [c], a                                     ; $633e: $e2
    ld d, l                                       ; $633f: $55
    rst $38                                       ; $6340: $ff
    xor d                                         ; $6341: $aa
    rst $38                                       ; $6342: $ff
    ld a, l                                       ; $6343: $7d
    ld sp, hl                                     ; $6344: $f9
    rst $38                                       ; $6345: $ff
    and e                                         ; $6346: $a3
    and c                                         ; $6347: $a1
    ldh a, [$c3]                                  ; $6348: $f0 $c3
    cp e                                          ; $634a: $bb
    db $f4                                        ; $634b: $f4
    ld e, e                                       ; $634c: $5b
    db $f4                                        ; $634d: $f4
    cp h                                          ; $634e: $bc
    rst $20                                       ; $634f: $e7
    db $e3                                        ; $6350: $e3
    ld a, h                                       ; $6351: $7c
    db $e3                                        ; $6352: $e3
    db $fc                                        ; $6353: $fc
    pop hl                                        ; $6354: $e1
    db $f4                                        ; $6355: $f4
    pop hl                                        ; $6356: $e1
    rst $38                                       ; $6357: $ff
    add c                                         ; $6358: $81
    rst $38                                       ; $6359: $ff
    ld [hl], a                                    ; $635a: $77
    rst $20                                       ; $635b: $e7
    cp [hl]                                       ; $635c: $be
    rst $38                                       ; $635d: $ff
    jp c, $f7e1                                   ; $635e: $da $e1 $f7

    rst $38                                       ; $6361: $ff
    db $dd                                        ; $6362: $dd
    di                                            ; $6363: $f3
    add b                                         ; $6364: $80
    ei                                            ; $6365: $fb
    rst $10                                       ; $6366: $d7
    rst $38                                       ; $6367: $ff
    sub d                                         ; $6368: $92
    ldh [$7f], a                                  ; $6369: $e0 $7f
    db $eb                                        ; $636b: $eb
    ccf                                           ; $636c: $3f
    rst $30                                       ; $636d: $f7
    ccf                                           ; $636e: $3f
    ccf                                           ; $636f: $3f
    db $ed                                        ; $6370: $ed
    ld a, a                                       ; $6371: $7f
    rst $10                                       ; $6372: $d7
    ld a, a                                       ; $6373: $7f
    rst $28                                       ; $6374: $ef
    rst $38                                       ; $6375: $ff
    ret nc                                        ; $6376: $d0

    pop bc                                        ; $6377: $c1
    ld l, $e0                                     ; $6378: $2e $e0
    db $fd                                        ; $637a: $fd
    rst $20                                       ; $637b: $e7
    ld hl, sp-$1b                                 ; $637c: $f8 $e5
    rst $10                                       ; $637e: $d7
    rst $38                                       ; $637f: $ff
    xor h                                         ; $6380: $ac
    rst $38                                       ; $6381: $ff
    ld d, h                                       ; $6382: $54
    ei                                            ; $6383: $fb
    rst $18                                       ; $6384: $df
    xor b                                         ; $6385: $a8
    rst $30                                       ; $6386: $f7
    ld e, b                                       ; $6387: $58
    rst $20                                       ; $6388: $e7
    db $fc                                        ; $6389: $fc
    sbc [hl]                                      ; $638a: $9e
    ldh [$98], a                                  ; $638b: $e0 $98
    rst $20                                       ; $638d: $e7
    cp $40                                        ; $638e: $fe $40
    push hl                                       ; $6390: $e5
    ld d, [hl]                                    ; $6391: $56
    rst $38                                       ; $6392: $ff
    cp b                                          ; $6393: $b8
    rst $38                                       ; $6394: $ff
    db $e4                                        ; $6395: $e4
    ei                                            ; $6396: $fb
    sbc b                                         ; $6397: $98
    ccf                                           ; $6398: $3f
    rst $20                                       ; $6399: $e7
    ld d, a                                       ; $639a: $57
    rst $38                                       ; $639b: $ff
    cp h                                          ; $639c: $bc
    rst $38                                       ; $639d: $ff
    ld h, h                                       ; $639e: $64
    ld hl, sp-$20                                 ; $639f: $f8 $e0
    ret z                                         ; $63a1: $c8

    push hl                                       ; $63a2: $e5
    rst $38                                       ; $63a3: $ff
    rst $28                                       ; $63a4: $ef
    rst $38                                       ; $63a5: $ff
    ld d, a                                       ; $63a6: $57
    rst $38                                       ; $63a7: $ff
    ld l, l                                       ; $63a8: $6d
    rst $38                                       ; $63a9: $ff
    scf                                           ; $63aa: $37
    rst $38                                       ; $63ab: $ff
    rst $38                                       ; $63ac: $ff
    dec hl                                        ; $63ad: $2b
    rst $38                                       ; $63ae: $ff
    dec d                                         ; $63af: $15
    rst $38                                       ; $63b0: $ff
    dec sp                                        ; $63b1: $3b
    rst $18                                       ; $63b2: $df
    dec c                                         ; $63b3: $0d
    rst $38                                       ; $63b4: $ff
    rst $38                                       ; $63b5: $ff
    ld a, [bc]                                    ; $63b6: $0a
    rst $38                                       ; $63b7: $ff
    dec [hl]                                      ; $63b8: $35
    rst $08                                       ; $63b9: $cf
    ld a, $c7                                     ; $63ba: $3e $c7
    dec de                                        ; $63bc: $1b
    rst $20                                       ; $63bd: $e7
    ld a, a                                       ; $63be: $7f
    ld a, [de]                                    ; $63bf: $1a
    rst $20                                       ; $63c0: $e7
    ccf                                           ; $63c1: $3f
    jp $c33d                                      ; $63c2: $c3 $3d $c3


    add hl, de                                    ; $63c5: $19
    or b                                          ; $63c6: $b0
    ldh [$ef], a                                  ; $63c7: $e0 $ef
    jr c, @+$01                                   ; $63c9: $38 $ff

    inc l                                         ; $63cb: $2c
    db $d3                                        ; $63cc: $d3
    and b                                         ; $63cd: $a0
    rst $20                                       ; $63ce: $e7
    sbc b                                         ; $63cf: $98
    rst $20                                       ; $63d0: $e7
    cp h                                          ; $63d1: $bc
    adc [hl]                                      ; $63d2: $8e
    ld d, [hl]                                    ; $63d3: $56
    ret nz                                        ; $63d4: $c0

    ret c                                         ; $63d5: $d8

    rst $20                                       ; $63d6: $e7
    ld e, b                                       ; $63d7: $58
    ld hl, sp-$20                                 ; $63d8: $f8 $e0
    and b                                         ; $63da: $a0
    pop hl                                        ; $63db: $e1
    ld b, b                                       ; $63dc: $40
    db $e3                                        ; $63dd: $e3
    jp Jump_072_78fa                              ; $63de: $c3 $fa $78


    and $b0                                       ; $63e1: $e6 $b0
    add d                                         ; $63e3: $82
    ldh [$a4], a                                  ; $63e4: $e0 $a4
    ei                                            ; $63e6: $fb
    ld l, b                                       ; $63e7: $68
    rst $30                                       ; $63e8: $f7
    xor b                                         ; $63e9: $a8
    cp a                                          ; $63ea: $bf
    rst $30                                       ; $63eb: $f7
    ld h, h                                       ; $63ec: $64
    ei                                            ; $63ed: $fb
    or h                                          ; $63ee: $b4
    ei                                            ; $63ef: $fb
    ld d, b                                       ; $63f0: $50
    ld b, c                                       ; $63f1: $41
    pop hl                                        ; $63f2: $e1
    rst $38                                       ; $63f3: $ff
    xor [hl]                                      ; $63f4: $ae
    ld b, b                                       ; $63f5: $40
    db $eb                                        ; $63f6: $eb
    ld l, l                                       ; $63f7: $6d
    rst $38                                       ; $63f8: $ff
    ld [hl], a                                    ; $63f9: $77
    sub d                                         ; $63fa: $92
    ldh [$37], a                                  ; $63fb: $e0 $37
    adc d                                         ; $63fd: $8a
    ldh [$57], a                                  ; $63fe: $e0 $57
    ld d, e                                       ; $6400: $53
    rst $38                                       ; $6401: $ff
    rst $28                                       ; $6402: $ef
    and c                                         ; $6403: $a1
    add e                                         ; $6404: $83
    xor $e0                                       ; $6405: $ee $e0
    db $dd                                        ; $6407: $dd
    ld hl, sp-$40                                 ; $6408: $f8 $c0
    ld d, l                                       ; $640a: $55
    inc de                                        ; $640b: $13
    add b                                         ; $640c: $80
    push bc                                       ; $640d: $c5
    xor a                                         ; $640e: $af
    sub h                                         ; $640f: $94
    add b                                         ; $6410: $80
    or a                                          ; $6411: $b7
    sub b                                         ; $6412: $90
    add b                                         ; $6413: $80
    ld hl, sp-$1b                                 ; $6414: $f8 $e5
    rst $38                                       ; $6416: $ff
    push hl                                       ; $6417: $e5
    xor $ff                                       ; $6418: $ee $ff
    ld e, l                                       ; $641a: $5d
    cp e                                          ; $641b: $bb
    ld a, [$bfc2]                                 ; $641c: $fa $c2 $bf
    rst $38                                       ; $641f: $ff
    ld l, a                                       ; $6420: $6f
    db $fc                                        ; $6421: $fc
    ldh [$5f], a                                  ; $6422: $e0 $5f
    ld hl, sp-$1a                                 ; $6424: $f8 $e6
    adc d                                         ; $6426: $8a
    ld h, b                                       ; $6427: $60
    add e                                         ; $6428: $83
    cp a                                          ; $6429: $bf
    reti                                          ; $642a: $d9


    ld h, b                                       ; $642b: $60
    ld e, a                                       ; $642c: $5f
    ret z                                         ; $642d: $c8

    ldh [$f0], a                                  ; $642e: $e0 $f0
    push hl                                       ; $6430: $e5
    ld sp, hl                                     ; $6431: $f9
    rst $20                                       ; $6432: $e7
    xor c                                         ; $6433: $a9
    rst $38                                       ; $6434: $ff
    rst $38                                       ; $6435: $ff
    ld d, h                                       ; $6436: $54
    db $fc                                        ; $6437: $fc
    add c                                         ; $6438: $81
    ldh a, [rDMA]                                 ; $6439: $f0 $46
    ldh [$8b], a                                  ; $643b: $e0 $8b
    rst $38                                       ; $643d: $ff
    ret nz                                        ; $643e: $c0

    ld d, a                                       ; $643f: $57
    ret nz                                        ; $6440: $c0

    rra                                           ; $6441: $1f
    add b                                         ; $6442: $80
    xor a                                         ; $6443: $af
    add b                                         ; $6444: $80
    rst $30                                       ; $6445: $f7
    cp $36                                        ; $6446: $fe $36
    add b                                         ; $6448: $80
    ld [$54ff], a                                 ; $6449: $ea $ff $54
    rst $38                                       ; $644c: $ff
    and b                                         ; $644d: $a0
    db $fc                                        ; $644e: $fc
    ld b, c                                       ; $644f: $41
    rst $38                                       ; $6450: $ff
    ldh a, [$0a]                                  ; $6451: $f0 $0a
    ret nz                                        ; $6453: $c0

    rla                                           ; $6454: $17
    nop                                           ; $6455: $00
    xor b                                         ; $6456: $a8
    cp $41                                        ; $6457: $fe $41
    rst $38                                       ; $6459: $ff
    ld hl, sp-$7e                                 ; $645a: $f8 $82
    ldh [$15], a                                  ; $645c: $e0 $15
    add b                                         ; $645e: $80
    cpl                                           ; $645f: $2f
    nop                                           ; $6460: $00
    ld e, a                                       ; $6461: $5f
    cp $21                                        ; $6462: $fe $21
    add b                                         ; $6464: $80
    rst $38                                       ; $6465: $ff
    nop                                           ; $6466: $00
    add sp, -$02                                  ; $6467: $e8 $fe
    or h                                          ; $6469: $b4
    cp $e8                                        ; $646a: $fe $e8
    rst $38                                       ; $646c: $ff
    db $fc                                        ; $646d: $fc
    pop de                                        ; $646e: $d1
    db $fc                                        ; $646f: $fc
    ld h, d                                       ; $6470: $62
    ld hl, sp-$2f                                 ; $6471: $f8 $d1
    ld hl, sp-$5d                                 ; $6473: $f8 $a3
    rst $38                                       ; $6475: $ff
    ldh a, [$c5]                                  ; $6476: $f0 $c5
    ldh a, [$a3]                                  ; $6478: $f0 $a3
    ldh a, [rBGP]                                 ; $647a: $f0 $47
    ldh [$8b], a                                  ; $647c: $e0 $8b
    rst $28                                       ; $647e: $ef
    ldh [rNR22], a                                ; $647f: $e0 $17
    ret nz                                        ; $6481: $c0

    adc a                                         ; $6482: $8f
    jp nz, Jump_000_2fe0                          ; $6483: $c2 $e0 $2f

    add b                                         ; $6486: $80
    ld e, a                                       ; $6487: $5f
    rst $38                                       ; $6488: $ff
    nop                                           ; $6489: $00
    sub c                                         ; $648a: $91
    rst $38                                       ; $648b: $ff
    inc h                                         ; $648c: $24
    inc a                                         ; $648d: $3c

jr_072_648e:
    add l                                         ; $648e: $85
    nop                                           ; $648f: $00
    ld e, d                                       ; $6490: $5a
    ei                                            ; $6491: $fb
    nop                                           ; $6492: $00
    xor l                                         ; $6493: $ad
    jp nc, $ffe2                                  ; $6494: $d2 $e2 $ff

    nop                                           ; $6497: $00
    xor a                                         ; $6498: $af
    add b                                         ; $6499: $80
    rla                                           ; $649a: $17
    rst $38                                       ; $649b: $ff
    add b                                         ; $649c: $80
    ld l, a                                       ; $649d: $6f
    ret nz                                        ; $649e: $c0

    rra                                           ; $649f: $1f
    ret nz                                        ; $64a0: $c0

    sub a                                         ; $64a1: $97
    ret nz                                        ; $64a2: $c0

    ld c, a                                       ; $64a3: $4f
    di                                            ; $64a4: $f3
    ret nz                                        ; $64a5: $c0

    rla                                           ; $64a6: $17
    and b                                         ; $64a7: $a0
    ldh [$30], a                                  ; $64a8: $e0 $30
    pop bc                                        ; $64aa: $c1
    ld b, c                                       ; $64ab: $41
    rst $38                                       ; $64ac: $ff
    nop                                           ; $64ad: $00
    jp $28df                                      ; $64ae: $c3 $df $28


    nop                                           ; $64b1: $00
    ld d, l                                       ; $64b2: $55
    nop                                           ; $64b3: $00
    cp d                                          ; $64b4: $ba
    rst $08                                       ; $64b5: $cf
    ld h, b                                       ; $64b6: $60
    ld b, e                                       ; $64b7: $43
    ldh a, [rIE]                                  ; $64b8: $f0 $ff
    and l                                         ; $64ba: $a5
    ldh a, [rWX]                                  ; $64bb: $f0 $4b
    ldh [$87], a                                  ; $64bd: $e0 $87
    ldh [rWX], a                                  ; $64bf: $e0 $4b
    ldh [$d3], a                                  ; $64c1: $e0 $d3
    add l                                         ; $64c3: $85
    ldh [$f4], a                                  ; $64c4: $e0 $f4
    pop hl                                        ; $64c6: $e1
    jr nc, jr_072_652a                            ; $64c7: $30 $61

    rst $28                                       ; $64c9: $ef
    jr nc, jr_072_648e                            ; $64ca: $30 $c2

    ld b, c                                       ; $64cc: $41
    rst $38                                       ; $64cd: $ff
    rst $38                                       ; $64ce: $ff
    inc h                                         ; $64cf: $24
    rst $20                                       ; $64d0: $e7
    sub l                                         ; $64d1: $95
    add c                                         ; $64d2: $81
    push af                                       ; $64d3: $f5

Jump_072_64d4:
    rst $38                                       ; $64d4: $ff
    add sp, -$02                                  ; $64d5: $e8 $fe
    db $fd                                        ; $64d7: $fd
    di                                            ; $64d8: $f3
    adc [hl]                                      ; $64d9: $8e
    ld [c], a                                     ; $64da: $e2
    ld [$f4fe], a                                 ; $64db: $ea $fe $f4
    cp $e9                                        ; $64de: $fe $e9
    rst $38                                       ; $64e0: $ff

Jump_072_64e1:
    rst $38                                       ; $64e1: $ff
    rst $38                                       ; $64e2: $ff
    add b                                         ; $64e3: $80
    ccf                                           ; $64e4: $3f
    add b                                         ; $64e5: $80
    ld a, a                                       ; $64e6: $7f
    ret nz                                        ; $64e7: $c0

    sbc a                                         ; $64e8: $9f
    ret nz                                        ; $64e9: $c0

    rst $38                                       ; $64ea: $ff
    ld c, a                                       ; $64eb: $4f
    ldh [$87], a                                  ; $64ec: $e0 $87
    ldh a, [rHDMA5]                               ; $64ee: $f0 $55
    db $fc                                        ; $64f0: $fc
    xor c                                         ; $64f1: $a9
    rst $38                                       ; $64f2: $ff
    rst $38                                       ; $64f3: $ff
    ccf                                           ; $64f4: $3f
    nop                                           ; $64f5: $00
    rrca                                          ; $64f6: $0f
    ret nz                                        ; $64f7: $c0

    ld b, e                                       ; $64f8: $43
    ldh a, [$a0]                                  ; $64f9: $f0 $a0
    db $fc                                        ; $64fb: $fc
    sbc a                                         ; $64fc: $9f
    call nc, Call_072_7aff                        ; $64fd: $d4 $ff $7a
    rst $38                                       ; $6500: $ff
    db $ed                                        ; $6501: $ed
    di                                            ; $6502: $f3
    ld b, c                                       ; $6503: $41
    adc b                                         ; $6504: $88
    db $e4                                        ; $6505: $e4
    ccf                                           ; $6506: $3f
    rst $38                                       ; $6507: $ff
    nop                                           ; $6508: $00
    rlca                                          ; $6509: $07
    ret nz                                        ; $650a: $c0

    ld b, c                                       ; $650b: $41
    ld hl, sp-$58                                 ; $650c: $f8 $a8
    cp $e3                                        ; $650e: $fe $e3
    rst $38                                       ; $6510: $ff
    rrca                                          ; $6511: $0f
    push hl                                       ; $6512: $e5
    rrca                                          ; $6513: $0f
    rr a                                          ; $6514: $cb $1f
    rst $00                                       ; $6516: $c7
    rra                                           ; $6517: $1f
    adc l                                         ; $6518: $8d
    rst $38                                       ; $6519: $ff
    ccf                                           ; $651a: $3f
    sub a                                         ; $651b: $97
    ccf                                           ; $651c: $3f
    cpl                                           ; $651d: $2f
    ld a, a                                       ; $651e: $7f
    dec de                                        ; $651f: $1b
    ld a, a                                       ; $6520: $7f
    cp $ff                                        ; $6521: $fe $ff
    nop                                           ; $6523: $00
    db $fc                                        ; $6524: $fc
    ld bc, $01fc                                  ; $6525: $01 $fc $01
    ld sp, hl                                     ; $6528: $f9
    inc bc                                        ; $6529: $03

jr_072_652a:
    ld hl, sp+$7f                                 ; $652a: $f8 $7f
    inc bc                                        ; $652c: $03
    ld sp, hl                                     ; $652d: $f9
    inc bc                                        ; $652e: $03
    ld a, [c]                                     ; $652f: $f2
    rlca                                          ; $6530: $07
    pop af                                        ; $6531: $f1
    rlca                                          ; $6532: $07
    ret nc                                        ; $6533: $d0

    push hl                                       ; $6534: $e5
    cp [hl]                                       ; $6535: $be
    ld b, e                                       ; $6536: $43
    ld h, c                                       ; $6537: $61
    and l                                         ; $6538: $a5
    nop                                           ; $6539: $00
    add c                                         ; $653a: $81
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    ld [c], a                                     ; $653d: $e2

jr_072_653e:
    ldh [$fe], a                                  ; $653e: $e0 $fe
    db $ec                                        ; $6540: $ec
    sbc $e0                                       ; $6541: $de $e0
    ld a, [$ffe3]                                 ; $6543: $fa $e3 $ff
    ld bc, $e33a                                  ; $6546: $01 $3a $e3
    inc a                                         ; $6549: $3c
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    db $db                                        ; $654c: $db
    rst $20                                       ; $654d: $e7
    and d                                         ; $654e: $a2
    sbc d                                         ; $654f: $9a
    and b                                         ; $6550: $a0
    db $eb                                        ; $6551: $eb
    rst $38                                       ; $6552: $ff
    or b                                          ; $6553: $b0
    pop hl                                        ; $6554: $e1
    ld a, [c]                                     ; $6555: $f2
    rrca                                          ; $6556: $0f
    cp a                                          ; $6557: $bf
    pop af                                        ; $6558: $f1
    rlca                                          ; $6559: $07
    ld a, [c]                                     ; $655a: $f2
    rlca                                          ; $655b: $07

jr_072_655c:
    push af                                       ; $655c: $f5
    rrca                                          ; $655d: $0f
    and h                                         ; $655e: $a4
    pop hl                                        ; $655f: $e1
    inc a                                         ; $6560: $3c
    rst $08                                       ; $6561: $cf
    nop                                           ; $6562: $00
    inc h                                         ; $6563: $24
    rst $20                                       ; $6564: $e7
    add d                                         ; $6565: $82
    add b                                         ; $6566: $80
    and h                                         ; $6567: $a4
    ld [hl], h                                    ; $6568: $74
    ld b, c                                       ; $6569: $41
    rla                                           ; $656a: $17
    ld a, a                                       ; $656b: $7f
    push de                                       ; $656c: $d5
    cpl                                           ; $656d: $2f
    adc b                                         ; $656e: $88
    and b                                         ; $656f: $a0
    adc e                                         ; $6570: $8b
    sub d                                         ; $6571: $92
    ldh [$cf], a                                  ; $6572: $e0 $cf
    adc [hl]                                      ; $6574: $8e
    ld b, b                                       ; $6575: $40
    cpl                                           ; $6576: $2f
    ld a, a                                       ; $6577: $7f
    ld [hl], l                                    ; $6578: $75
    xor b                                         ; $6579: $a8
    jr jr_072_655c                                ; $657a: $18 $e0

    cp $9c                                        ; $657c: $fe $9c
    add sp, -$41                                  ; $657e: $e8 $bf
    nop                                           ; $6580: $00
    ld a, a                                       ; $6581: $7f
    db $fc                                        ; $6582: $fc
    and $55                                       ; $6583: $e6 $55
    ccf                                           ; $6585: $3f
    xor h                                         ; $6586: $ac
    ret nz                                        ; $6587: $c0

    ld [$c0f8], sp                                ; $6588: $08 $f8 $c0
    ld l, $ec                                     ; $658b: $2e $ec
    ld [c], a                                     ; $658d: $e2
    ld e, a                                       ; $658e: $5f
    ldh a, [$e2]                                  ; $658f: $f0 $e2
    ld [c], a                                     ; $6591: $e2
    db $ec                                        ; $6592: $ec
    pop hl                                        ; $6593: $e1
    cp a                                          ; $6594: $bf
    ld l, h                                       ; $6595: $6c
    add sp, -$0a                                  ; $6596: $e8 $f6
    db $ed                                        ; $6598: $ed
    jr nc, jr_072_653e                            ; $6599: $30 $a3

    dec de                                        ; $659b: $1b
    db $e4                                        ; $659c: $e4
    dec d                                         ; $659d: $15
    rst $38                                       ; $659e: $ff
    xor $2d                                       ; $659f: $ee $2d
    ret nc                                        ; $65a1: $d0

    dec b                                         ; $65a2: $05
    ld a, [$c034]                                 ; $65a3: $fa $34 $c0
    ld d, a                                       ; $65a6: $57
    cp a                                          ; $65a7: $bf
    xor d                                         ; $65a8: $aa
    and h                                         ; $65a9: $a4
    ld a, [bc]                                    ; $65aa: $0a
    ld c, e                                       ; $65ab: $4b
    add b                                         ; $65ac: $80
    ld b, d                                       ; $65ad: $42
    ldh [rNR41], a                                ; $65ae: $e0 $20
    dec e                                         ; $65b0: $1d
    rst $38                                       ; $65b1: $ff
    ld [bc], a                                    ; $65b2: $02
    cp h                                          ; $65b3: $bc
    inc bc                                        ; $65b4: $03
    sbc b                                         ; $65b5: $98
    ld h, a                                       ; $65b6: $67
    rla                                           ; $65b7: $17
    xor d                                         ; $65b8: $aa
    db $e4                                        ; $65b9: $e4
    rst $38                                       ; $65ba: $ff
    ld a, [bc]                                    ; $65bb: $0a
    adc e                                         ; $65bc: $8b
    jr nz, jr_072_65e1                            ; $65bd: $20 $22

    nop                                           ; $65bf: $00
    db $dd                                        ; $65c0: $dd
    nop                                           ; $65c1: $00
    cp l                                          ; $65c2: $bd
    db $fd                                        ; $65c3: $fd
    ld b, d                                       ; $65c4: $42
    ld [$16a1], sp                                ; $65c5: $08 $a1 $16
    xor c                                         ; $65c8: $a9
    add sp, $03                                   ; $65c9: $e8 $03
    add l                                         ; $65cb: $85
    ld [hl+], a                                   ; $65cc: $22
    rst $38                                       ; $65cd: $ff
    ld a, [hl+]                                   ; $65ce: $2a
    rlca                                          ; $65cf: $07
    db $db                                        ; $65d0: $db
    nop                                           ; $65d1: $00
    cp h                                          ; $65d2: $bc
    ld b, e                                       ; $65d3: $43
    ccf                                           ; $65d4: $3f
    ret nz                                        ; $65d5: $c0

    rst $30                                       ; $65d6: $f7
    add hl, de                                    ; $65d7: $19

jr_072_65d8:
    and $18                                       ; $65d8: $e6 $18
    ld h, b                                       ; $65da: $60
    and b                                         ; $65db: $a0
    inc a                                         ; $65dc: $3c
    jp $e7b8                                      ; $65dd: $c3 $b8 $e7


    rst $38                                       ; $65e0: $ff

jr_072_65e1:
    ld [$ccf7], sp                                ; $65e1: $08 $f7 $cc
    ei                                            ; $65e4: $fb
    sub b                                         ; $65e5: $90
    ld l, a                                       ; $65e6: $6f
    ld a, [hl+]                                   ; $65e7: $2a
    rst $38                                       ; $65e8: $ff
    rst $38                                       ; $65e9: $ff
    rra                                           ; $65ea: $1f
    ldh [$d0], a                                  ; $65eb: $e0 $d0
    ld bc, $a15a                                  ; $65ed: $01 $5a $a1
    ld c, b                                       ; $65f0: $48
    rlca                                          ; $65f1: $07
    rst $28                                       ; $65f2: $ef
    ld hl, sp+$07                                 ; $65f3: $f8 $07
    inc e                                         ; $65f5: $1c
    inc bc                                        ; $65f6: $03
    ret nz                                        ; $65f7: $c0

    pop hl                                        ; $65f8: $e1
    or b                                          ; $65f9: $b0
    rrca                                          ; $65fa: $0f
    call z, Call_000_3fff                         ; $65fb: $cc $ff $3f
    ld a, c                                       ; $65fe: $79
    add [hl]                                      ; $65ff: $86
    ld [de], a                                    ; $6600: $12
    rst $28                                       ; $6601: $ef
    dec de                                        ; $6602: $1b
    ldh [$3c], a                                  ; $6603: $e0 $3c
    db $fd                                        ; $6605: $fd
    jp $e1d0                                      ; $6606: $c3 $d0 $e1


    dec a                                         ; $6609: $3d
    ret nz                                        ; $660a: $c0

    ld c, a                                       ; $660b: $4f
    and b                                         ; $660c: $a0
    jr nc, jr_072_65d8                            ; $660d: $30 $c9

    rst $38                                       ; $660f: $ff
    ld d, d                                       ; $6610: $52
    and c                                         ; $6611: $a1
    ld l, l                                       ; $6612: $6d
    jp nz, $c934                                  ; $6613: $c2 $34 $c9

    ld c, b                                       ; $6616: $48
    or e                                          ; $6617: $b3
    rst $38                                       ; $6618: $ff
    ld a, [de]                                    ; $6619: $1a
    push hl                                       ; $661a: $e5
    dec d                                         ; $661b: $15
    cp a                                          ; $661c: $bf
    adc $3f                                       ; $661d: $ce $3f
    ld d, [hl]                                    ; $661f: $56
    cp a                                          ; $6620: $bf
    rst $38                                       ; $6621: $ff
    ld l, l                                       ; $6622: $6d
    cp a                                          ; $6623: $bf
    sbc [hl]                                      ; $6624: $9e
    ld a, a                                       ; $6625: $7f
    ld l, d                                       ; $6626: $6a
    cp a                                          ; $6627: $bf
    dec e                                         ; $6628: $1d
    rst $38                                       ; $6629: $ff
    rst $38                                       ; $662a: $ff
    ld c, [hl]                                    ; $662b: $4e
    cp a                                          ; $662c: $bf
    dec [hl]                                      ; $662d: $35
    ret nz                                        ; $662e: $c0

    ld c, [hl]                                    ; $662f: $4e
    and c                                         ; $6630: $a1
    ld [hl-], a                                   ; $6631: $32
    ret                                           ; $6632: $c9


    rst $38                                       ; $6633: $ff
    ld d, a                                       ; $6634: $57
    and d                                         ; $6635: $a2
    ld a, a                                       ; $6636: $7f
    push bc                                       ; $6637: $c5
    ld [hl-], a                                   ; $6638: $32
    rst $08                                       ; $6639: $cf
    ld d, l                                       ; $663a: $55
    cp a                                          ; $663b: $bf
    cp l                                          ; $663c: $bd
    dec hl                                        ; $663d: $2b
    sub b                                         ; $663e: $90
    add d                                         ; $663f: $82
    cp h                                          ; $6640: $bc
    ld b, e                                       ; $6641: $43
    ld e, b                                       ; $6642: $58
    and a                                         ; $6643: $a7
    nop                                           ; $6644: $00
    and b                                         ; $6645: $a0
    db $e3                                        ; $6646: $e3
    rst $38                                       ; $6647: $ff
    call nz, $b4f3                                ; $6648: $c4 $f3 $b4
    db $eb                                        ; $664b: $eb
    sbc d                                         ; $664c: $9a
    ld a, a                                       ; $664d: $7f
    rst $28                                       ; $664e: $ef
    ccf                                           ; $664f: $3f
    rst $18                                       ; $6650: $df
    ld a, [hl-]                                   ; $6651: $3a
    rst $18                                       ; $6652: $df

jr_072_6653:
    ld c, l                                       ; $6653: $4d
    rst $38                                       ; $6654: $ff
    or h                                          ; $6655: $b4
    ld h, b                                       ; $6656: $60
    ret nz                                        ; $6657: $c0

    xor b                                         ; $6658: $a8
    rst $38                                       ; $6659: $ff
    ld a, l                                       ; $665a: $7d
    ld [hl], h                                    ; $665b: $74
    cp d                                          ; $665c: $ba
    add b                                         ; $665d: $80
    inc hl                                        ; $665e: $23
    rst $18                                       ; $665f: $df
    dec b                                         ; $6660: $05
    rst $38                                       ; $6661: $ff
    ld a, [de]                                    ; $6662: $1a
    ld [hl], b                                    ; $6663: $70
    add [hl]                                      ; $6664: $86
    ld a, a                                       ; $6665: $7f
    call nc, $bbff                                ; $6666: $d4 $ff $bb
    cp $74                                        ; $6669: $fe $74
    rst $38                                       ; $666b: $ff
    xor [hl]                                      ; $666c: $ae
    inc e                                         ; $666d: $1c
    add b                                         ; $666e: $80
    db $fd                                        ; $666f: $fd
    xor [hl]                                      ; $6670: $ae
    ld a, [hl-]                                   ; $6671: $3a
    add b                                         ; $6672: $80
    inc bc                                        ; $6673: $03
    rst $38                                       ; $6674: $ff
    ld d, d                                       ; $6675: $52
    db $fc                                        ; $6676: $fc
    xor d                                         ; $6677: $aa
    db $fd                                        ; $6678: $fd
    rst $10                                       ; $6679: $d7
    ld [hl], a                                    ; $667a: $77
    ei                                            ; $667b: $fb
    and d                                         ; $667c: $a2
    adc d                                         ; $667d: $8a
    add b                                         ; $667e: $80
    dec c                                         ; $667f: $0d
    add [hl]                                      ; $6680: $86
    add b                                         ; $6681: $80
    ld a, [bc]                                    ; $6682: $0a
    rst $38                                       ; $6683: $ff
    ld a, a                                       ; $6684: $7f
    ld h, a                                       ; $6685: $67

Jump_072_6686:
    adc b                                         ; $6686: $88
    call Call_000_32bb                            ; $6687: $cd $bb $32
    rst $28                                       ; $668a: $ef
    db $eb                                        ; $668b: $eb
    sbc $e0                                       ; $668c: $de $e0
    db $fd                                        ; $668e: $fd
    cp $9a                                        ; $668f: $fe $9a
    ld h, b                                       ; $6691: $60
    cp d                                          ; $6692: $ba
    rst $38                                       ; $6693: $ff
    daa                                           ; $6694: $27
    ret z                                         ; $6695: $c8

    ld l, l                                       ; $6696: $6d
    sbc e                                         ; $6697: $9b
    db $dd                                        ; $6698: $dd

jr_072_6699:
    ld [hl+], a                                   ; $6699: $22
    ld l, h                                       ; $669a: $6c
    jr nz, jr_072_6653                            ; $669b: $20 $b6

    rst $38                                       ; $669d: $ff
    ld e, [hl]                                    ; $669e: $5e
    ld c, $a0                                     ; $669f: $0e $a0
    sbc $ff                                       ; $66a1: $de $ff
    ld a, a                                       ; $66a3: $7f
    ld c, $bf                                     ; $66a4: $0e $bf
    db $dd                                        ; $66a6: $dd
    ccf                                           ; $66a7: $3f
    ld l, [hl]                                    ; $66a8: $6e
    cp a                                          ; $66a9: $bf
    ld d, a                                       ; $66aa: $57
    ld [hl], b                                    ; $66ab: $70
    ldh [$f7], a                                  ; $66ac: $e0 $f7
    ld l, l                                       ; $66ae: $6d
    cp a                                          ; $66af: $bf
    ld e, $70                                     ; $66b0: $1e $70
    ldh [rHDMA2], a                               ; $66b2: $e0 $52
    db $fd                                        ; $66b4: $fd
    xor $f9                                       ; $66b5: $ee $f9
    rst $38                                       ; $66b7: $ff
    ld c, c                                       ; $66b8: $49
    or $a7                                        ; $66b9: $f6 $a7
    ld hl, sp+$47                                 ; $66bb: $f8 $47
    ldh a, [$b4]                                  ; $66bd: $f0 $b4
    ret                                           ; $66bf: $c9


    rst $38                                       ; $66c0: $ff
    ld c, d                                       ; $66c1: $4a
    or c                                          ; $66c2: $b1
    dec de                                        ; $66c3: $1b
    db $e4                                        ; $66c4: $e4
    rst $38                                       ; $66c5: $ff
    rra                                           ; $66c6: $1f
    ld c, d                                       ; $66c7: $4a
    cp a                                          ; $66c8: $bf
    rst $38                                       ; $66c9: $ff
    ld l, c                                       ; $66ca: $69
    sub a                                         ; $66cb: $97
    ld [de], a                                    ; $66cc: $12
    rst $28                                       ; $66cd: $ef
    add hl, de                                    ; $66ce: $19
    ld [c], a                                     ; $66cf: $e2
    jr c, jr_072_6699                             ; $66d0: $38 $c7

    cp $00                                        ; $66d2: $fe $00
    pop hl                                        ; $66d4: $e1
    dec hl                                        ; $66d5: $2b
    ret nc                                        ; $66d6: $d0

    xor d                                         ; $66d7: $aa
    ld b, c                                       ; $66d8: $41
    cp $01                                        ; $66d9: $fe $01
    xor b                                         ; $66db: $a8
    rst $30                                       ; $66dc: $f7
    rlca                                          ; $66dd: $07
    ld a, b                                       ; $66de: $78
    add a                                         ; $66df: $87
    db $10                                        ; $66e0: $10

jr_072_66e1:
    db $e3                                        ; $66e1: $e3
    and c                                         ; $66e2: $a1
    ld e, $8c                                     ; $66e3: $1e $8c
    ld a, d                                       ; $66e5: $7a
    rst $38                                       ; $66e6: $ff
    ld d, a                                       ; $66e7: $57
    xor b                                         ; $66e8: $a8
    jr c, @-$3c                                   ; $66e9: $38 $c2

    dec c                                         ; $66eb: $0d
    ldh a, [$3d]                                  ; $66ec: $f0 $3d
    jp nz, $d8fe                                  ; $66ee: $c2 $fe $d8

    ld h, c                                       ; $66f1: $61
    cpl                                           ; $66f2: $2f
    sub b                                         ; $66f3: $90
    ld sp, hl                                     ; $66f4: $f9
    nop                                           ; $66f5: $00
    adc d                                         ; $66f6: $8a
    ld hl, $9f28                                  ; $66f7: $21 $28 $9f
    rlca                                          ; $66fa: $07
    ret c                                         ; $66fb: $d8

    rlca                                          ; $66fc: $07
    cp h                                          ; $66fd: $bc
    ld b, e                                       ; $66fe: $43
    ret z                                         ; $66ff: $c8

    ld h, c                                       ; $6700: $61
    add hl, sp                                    ; $6701: $39
    and e                                         ; $6702: $a3
    ld [bc], a                                    ; $6703: $02
    rst $38                                       ; $6704: $ff
    db $fd                                        ; $6705: $fd
    ld bc, $0dfe                                  ; $6706: $01 $fe $0d
    ldh a, [rSC]                                  ; $6709: $f0 $02
    db $fd                                        ; $670b: $fd
    ld a, [hl+]                                   ; $670c: $2a
    rst $38                                       ; $670d: $ff
    ret nc                                        ; $670e: $d0

    dec hl                                        ; $670f: $2b
    sub $f5                                       ; $6710: $d6 $f5
    ld a, [bc]                                    ; $6712: $0a
    ld e, a                                       ; $6713: $5f
    add b                                         ; $6714: $80
    xor c                                         ; $6715: $a9
    rst $38                                       ; $6716: $ff
    ld [bc], a                                    ; $6717: $02
    ld a, a                                       ; $6718: $7f
    add b                                         ; $6719: $80
    db $10                                        ; $671a: $10
    rrca                                          ; $671b: $0f
    ldh [$1f], a                                  ; $671c: $e0 $1f
    add b                                         ; $671e: $80
    rst $38                                       ; $671f: $ff
    ld a, a                                       ; $6720: $7f
    ld d, a                                       ; $6721: $57
    xor d                                         ; $6722: $aa
    push af                                       ; $6723: $f5
    ld a, [bc]                                    ; $6724: $0a
    sbc a                                         ; $6725: $9f
    jr nz, jr_072_66e1                            ; $6726: $20 $b9

    rst $30                                       ; $6728: $f7
    ld [bc], a                                    ; $6729: $02
    ld h, a                                       ; $672a: $67
    sbc b                                         ; $672b: $98
    rrca                                          ; $672c: $0f
    and e                                         ; $672d: $a3
    ld c, d                                       ; $672e: $4a
    or l                                          ; $672f: $b5
    db $f4                                        ; $6730: $f4
    dec bc                                        ; $6731: $0b
    rst $38                                       ; $6732: $ff
    sbc l                                         ; $6733: $9d
    ld [hl+], a                                   ; $6734: $22
    cp d                                          ; $6735: $ba
    rlca                                          ; $6736: $07
    ld a, e                                       ; $6737: $7b
    add b                                         ; $6738: $80
    inc c                                         ; $6739: $0c
    di                                            ; $673a: $f3
    ld d, a                                       ; $673b: $57
    rlca                                          ; $673c: $07
    ld hl, sp+$01                                 ; $673d: $f8 $01
    dec b                                         ; $673f: $05
    ret nz                                        ; $6740: $c0

    add b                                         ; $6741: $80
    sbc [hl]                                      ; $6742: $9e
    nop                                           ; $6743: $00
    and b                                         ; $6744: $a0
    sbc d                                         ; $6745: $9a
    nop                                           ; $6746: $00
    ei                                            ; $6747: $fb
    ld l, b                                       ; $6748: $68
    rst $38                                       ; $6749: $ff
    sub b                                         ; $674a: $90
    pop bc                                        ; $674b: $c1
    rla                                           ; $674c: $17
    add sp, -$2f                                  ; $674d: $e8 $d1
    nop                                           ; $674f: $00
    ld l, $39                                     ; $6750: $2e $39
    pop de                                        ; $6752: $d1
    add b                                         ; $6753: $80
    pop hl                                        ; $6754: $e1
    ret nz                                        ; $6755: $c0

    db $e3                                        ; $6756: $e3
    or b                                          ; $6757: $b0
    rrca                                          ; $6758: $0f
    add $90                                       ; $6759: $c6 $90
    call nz, $e3d0                                ; $675b: $c4 $d0 $e3
    rst $38                                       ; $675e: $ff
    dec a                                         ; $675f: $3d
    ret nz                                        ; $6760: $c0

    ld e, a                                       ; $6761: $5f
    and b                                         ; $6762: $a0
    inc [hl]                                      ; $6763: $34
    ret                                           ; $6764: $c9


    ld e, d                                       ; $6765: $5a
    and c                                         ; $6766: $a1
    push af                                       ; $6767: $f5
    ld a, l                                       ; $6768: $7d
    sub b                                         ; $6769: $90
    ret nz                                        ; $676a: $c0

    ld c, h                                       ; $676b: $4c
    sub b                                         ; $676c: $90
    ret nz                                        ; $676d: $c0

    ld d, l                                       ; $676e: $55
    cp a                                          ; $676f: $bf
    adc [hl]                                      ; $6770: $8e
    ld a, a                                       ; $6771: $7f
    cp $90                                        ; $6772: $fe $90
    jp z, Jump_072_5ac8                           ; $6774: $ca $c8 $5a

    and c                                         ; $6777: $a1
    inc a                                         ; $6778: $3c
    jp $ae53                                      ; $6779: $c3 $53 $ae


    sbc a                                         ; $677c: $9f
    ld [hl], a                                    ; $677d: $77
    call $bf42                                    ; $677e: $cd $42 $bf
    dec d                                         ; $6781: $15
    ld l, d                                       ; $6782: $6a
    ld h, b                                       ; $6783: $60
    ld l, e                                       ; $6784: $6b
    add c                                         ; $6785: $81
    ret nz                                        ; $6786: $c0

    rst $38                                       ; $6787: $ff
    ccf                                           ; $6788: $3f
    ld b, b                                       ; $6789: $40
    cp a                                          ; $678a: $bf
    ld b, b                                       ; $678b: $40
    rst $38                                       ; $678c: $ff
    or b                                          ; $678d: $b0
    rst $28                                       ; $678e: $ef
    call z, $f3ef                                 ; $678f: $cc $ef $f3
    and h                                         ; $6792: $a4
    ei                                            ; $6793: $fb
    dec d                                         ; $6794: $15
    cp h                                          ; $6795: $bc
    ret nz                                        ; $6796: $c0

    dec b                                         ; $6797: $05
    rst $38                                       ; $6798: $ff
    ld [bc], a                                    ; $6799: $02
    ld [$a629], a                                 ; $679a: $ea $29 $a6
    ld d, e                                       ; $679d: $53
    or b                                          ; $679e: $b0
    ret nz                                        ; $679f: $c0

    ld [hl], l                                    ; $67a0: $75

jr_072_67a1:
    or b                                          ; $67a1: $b0
    ret z                                         ; $67a2: $c8

    ld [hl], a                                    ; $67a3: $77
    adc b                                         ; $67a4: $88
    call z, $b0ea                                 ; $67a5: $cc $ea $b0
    jp z, $b037                                   ; $67a8: $ca $37 $b0

    call z, $b04e                                 ; $67ab: $cc $4e $b0
    adc $ae                                       ; $67ae: $ce $ae

jr_072_67b0:
    ld sp, hl                                     ; $67b0: $f9
    ld a, c                                       ; $67b1: $79
    or $b0                                        ; $67b2: $f6 $b0
    ret z                                         ; $67b4: $c8

    cp a                                          ; $67b5: $bf
    ld e, a                                       ; $67b6: $5f
    or b                                          ; $67b7: $b0
    jp $e21d                                      ; $67b8: $c3 $1d $e2


    ld [$fef7], sp                                ; $67bb: $08 $f7 $fe
    jr nz, jr_072_67a1                            ; $67be: $20 $e1

    dec l                                         ; $67c0: $2d
    ret nc                                        ; $67c1: $d0

    sbc d                                         ; $67c2: $9a
    ld h, c                                       ; $67c3: $61
    ld a, [hl]                                    ; $67c4: $7e
    add c                                         ; $67c5: $81
    add sp, -$12                                  ; $67c6: $e8 $ee
    jr nc, jr_072_67b0                            ; $67c8: $30 $e6

    ld h, c                                       ; $67ca: $61
    ld e, $95                                     ; $67cb: $1e $95
    or b                                          ; $67cd: $b0
    ret nz                                        ; $67ce: $c0

    add hl, sp                                    ; $67cf: $39
    jp nz, $fd0f                                  ; $67d0: $c2 $0f $fd

    ldh a, [rIE]                                  ; $67d3: $f0 $ff
    ld h, e                                       ; $67d5: $63
    ld d, a                                       ; $67d6: $57
    xor b                                         ; $67d7: $a8
    ei                                            ; $67d8: $fb
    nop                                           ; $67d9: $00
    sbc [hl]                                      ; $67da: $9e
    ld hl, $a8ef                                  ; $67db: $21 $ef $a8
    rlca                                          ; $67de: $07
    ld [hl], b                                    ; $67df: $70
    adc a                                         ; $67e0: $8f
    rst $28                                       ; $67e1: $ef
    ld h, e                                       ; $67e2: $63
    inc c                                         ; $67e3: $0c
    rst $30                                       ; $67e4: $f7
    reti                                          ; $67e5: $d9


    rst $38                                       ; $67e6: $ff
    ld l, a                                       ; $67e7: $6f
    ld [$63ff], sp                                ; $67e8: $08 $ff $63
    cp l                                          ; $67eb: $bd
    sub $6b                                       ; $67ec: $d6 $6b
    ld l, d                                       ; $67ee: $6a
    rst $38                                       ; $67ef: $ff
    rst $18                                       ; $67f0: $df
    jr nc, @-$1f                                  ; $67f1: $30 $df

    ld d, e                                       ; $67f3: $53

jr_072_67f4:
    db $fd                                        ; $67f4: $fd
    nop                                           ; $67f5: $00
    rst $38                                       ; $67f6: $ff
    ld e, l                                       ; $67f7: $5d
    rst $38                                       ; $67f8: $ff
    rst $20                                       ; $67f9: $e7
    ld [$40ff], sp                                ; $67fa: $08 $ff $40
    cp a                                          ; $67fd: $bf
    ld l, h                                       ; $67fe: $6c
    or a                                          ; $67ff: $b7
    ld c, b                                       ; $6800: $48
    ld a, [hl]                                    ; $6801: $7e
    call c, Call_072_40c0                         ; $6802: $dc $c0 $40
    rst $38                                       ; $6805: $ff
    inc b                                         ; $6806: $04
    ei                                            ; $6807: $fb
    ld e, d                                       ; $6808: $5a
    and l                                         ; $6809: $a5
    dec sp                                        ; $680a: $3b
    add b                                         ; $680b: $80
    cp $41                                        ; $680c: $fe $41
    nop                                           ; $680e: $00
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    ld e, d                                       ; $6811: $5a

jr_072_6812:
    and l                                         ; $6812: $a5
    jr nz, jr_072_67f4                            ; $6813: $20 $df

    inc h                                         ; $6815: $24
    rst $38                                       ; $6816: $ff
    rst $20                                       ; $6817: $e7
    ld h, [hl]                                    ; $6818: $66

jr_072_6819:
    and l                                         ; $6819: $a5
    dec h                                         ; $681a: $25
    and $66                                       ; $681b: $e6 $66
    and l                                         ; $681d: $a5
    ld h, [hl]                                    ; $681e: $66
    cp a                                          ; $681f: $bf
    and l                                         ; $6820: $a5
    and h                                         ; $6821: $a4
    ld h, a                                       ; $6822: $67
    ld h, [hl]                                    ; $6823: $66
    and l                                         ; $6824: $a5
    inc h                                         ; $6825: $24
    ld [hl], b                                    ; $6826: $70
    ret nz                                        ; $6827: $c0

    ld bc, $feff                                  ; $6828: $01 $ff $fe
    dec b                                         ; $682b: $05
    ei                                            ; $682c: $fb
    ld e, $e6                                     ; $682d: $1e $e6
    jr jr_072_6819                                ; $682f: $18 $e8

    jr nc, jr_072_6812                            ; $6831: $30 $df

    ret nc                                        ; $6833: $d0

    ld de, $63f3                                  ; $6834: $11 $f3 $63
    and d                                         ; $6837: $a2
    cp d                                          ; $6838: $ba
    ld h, c                                       ; $6839: $61
    ld d, l                                       ; $683a: $55
    nop                                           ; $683b: $00
    ld e, a                                       ; $683c: $5f
    xor e                                         ; $683d: $ab
    nop                                           ; $683e: $00
    ld e, l                                       ; $683f: $5d
    nop                                           ; $6840: $00
    ld [$60ae], a                                 ; $6841: $ea $ae $60
    xor [hl]                                      ; $6844: $ae
    xor d                                         ; $6845: $aa
    ld h, b                                       ; $6846: $60
    rst $18                                       ; $6847: $df
    adc d                                         ; $6848: $8a
    nop                                           ; $6849: $00
    ld d, h                                       ; $684a: $54
    nop                                           ; $684b: $00
    xor d                                         ; $684c: $aa
    ldh a, [$e0]                                  ; $684d: $f0 $e0
    xor d                                         ; $684f: $aa
    nop                                           ; $6850: $00
    rst $18                                       ; $6851: $df
    dec d                                         ; $6852: $15

jr_072_6853:
    nop                                           ; $6853: $00
    xor b                                         ; $6854: $a8
    nop                                           ; $6855: $00
    ld d, c                                       ; $6856: $51
    sbc [hl]                                      ; $6857: $9e
    add b                                         ; $6858: $80
    ld [hl+], a                                   ; $6859: $22
    nop                                           ; $685a: $00
    ld a, a                                       ; $685b: $7f
    sub h                                         ; $685c: $94
    nop                                           ; $685d: $00
    add hl, hl                                    ; $685e: $29
    nop                                           ; $685f: $00
    ld b, h                                       ; $6860: $44
    nop                                           ; $6861: $00
    db $10                                        ; $6862: $10
    db $e4                                        ; $6863: $e4
    ldh [$75], a                                  ; $6864: $e0 $75
    nop                                           ; $6866: $00
    ld [hl], e                                    ; $6867: $73
    nop                                           ; $6868: $00
    ld bc, $0094                                  ; $6869: $01 $94 $00
    jr nz, jr_072_686e                            ; $686c: $20 $00

jr_072_686e:
    add b                                         ; $686e: $80
    adc [hl]                                      ; $686f: $8e
    nop                                           ; $6870: $00
    xor $ff                                       ; $6871: $ee $ff
    ldh a, [rNR23]                                ; $6873: $f0 $18
    inc a                                         ; $6875: $3c
    ld a, [hl]                                    ; $6876: $7e
    rst $38                                       ; $6877: $ff
    ldh [rIE], a                                  ; $6878: $e0 $ff
    ld [hl], b                                    ; $687a: $70
    rst $38                                       ; $687b: $ff
    rst $28                                       ; $687c: $ef
    ld a, b                                       ; $687d: $78
    db $fc                                        ; $687e: $fc
    inc a                                         ; $687f: $3c
    ld a, [hl]                                    ; $6880: $7e
    rlca                                          ; $6881: $07
    add b                                         ; $6882: $80
    ld [$3e1c], sp                                ; $6883: $08 $1c $3e
    rst $38                                       ; $6886: $ff
    ld a, $3e                                     ; $6887: $3e $3e
    ld [hl], $7f                                  ; $6889: $36 $7f
    ld h, $7f                                     ; $688b: $26 $7f
    inc b                                         ; $688d: $04
    ld l, $ef                                     ; $688e: $2e $ef
    nop                                           ; $6890: $00
    inc c                                         ; $6891: $0c
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    and d                                         ; $6894: $a2
    ret nz                                        ; $6895: $c0

    cp $2b                                        ; $6896: $fe $2b
    db $fc                                        ; $6898: $fc
    rst $38                                       ; $6899: $ff
    dec c                                         ; $689a: $0d
    ld a, [$fd32]                                 ; $689b: $fa $32 $fd
    ld d, l                                       ; $689e: $55
    ld [$d7a8], a                                 ; $689f: $ea $a8 $d7
    rst $38                                       ; $68a2: $ff
    db $f4                                        ; $68a3: $f4
    adc e                                         ; $68a4: $8b
    rst $20                                       ; $68a5: $e7
    rst $38                                       ; $68a6: $ff
    jp c, $f53d                                   ; $68a7: $da $3d $f5

    ld a, [bc]                                    ; $68aa: $0a
    rst $18                                       ; $68ab: $df
    xor d                                         ; $68ac: $aa
    ld d, l                                       ; $68ad: $55
    ld b, c                                       ; $68ae: $41
    cp [hl]                                       ; $68af: $be
    inc d                                         ; $68b0: $14
    jr nz, jr_072_6853                            ; $68b1: $20 $a0

    ld [hl], l                                    ; $68b3: $75
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    sub l                                         ; $68b6: $95
    db $eb                                        ; $68b7: $eb
    dec bc                                        ; $68b8: $0b
    push af                                       ; $68b9: $f5
    and l                                         ; $68ba: $a5
    ei                                            ; $68bb: $fb
    ld c, d                                       ; $68bc: $4a
    rst $30                                       ; $68bd: $f7
    rst $38                                       ; $68be: $ff
    and [hl]                                      ; $68bf: $a6
    ei                                            ; $68c0: $fb
    call $97f3                                    ; $68c1: $cd $f3 $97
    jp hl                                         ; $68c4: $e9


    ld c, a                                       ; $68c5: $4f
    pop af                                        ; $68c6: $f1
    cp $40                                        ; $68c7: $fe $40
    ld h, b                                       ; $68c9: $60
    rst $38                                       ; $68ca: $ff
    ld a, [c]                                     ; $68cb: $f2
    db $fd                                        ; $68cc: $fd
    xor c                                         ; $68cd: $a9
    cp $52                                        ; $68ce: $fe $52
    db $fd                                        ; $68d0: $fd
    rst $38                                       ; $68d1: $ff
    add c                                         ; $68d2: $81
    cp $2a                                        ; $68d3: $fe $2a
    push de                                       ; $68d5: $d5
    sub l                                         ; $68d6: $95
    db $eb                                        ; $68d7: $eb
    rst $18                                       ; $68d8: $df
    sbc c                                         ; $68d9: $99
    rst $38                                       ; $68da: $ff

jr_072_68db:
    sbc a                                         ; $68db: $9f
    ld c, l                                       ; $68dc: $4d
    daa                                           ; $68dd: $27
    rla                                           ; $68de: $17
    and e                                         ; $68df: $a3
    di                                            ; $68e0: $f3
    db $db                                        ; $68e1: $db
    pop hl                                        ; $68e2: $e1
    rst $38                                       ; $68e3: $ff
    xor $f1                                       ; $68e4: $ee $f1
    or h                                          ; $68e6: $b4
    ei                                            ; $68e7: $fb
    ld b, c                                       ; $68e8: $41
    rst $38                                       ; $68e9: $ff
    rst $18                                       ; $68ea: $df
    sbc a                                         ; $68eb: $9f
    rst $38                                       ; $68ec: $ff
    sbc h                                         ; $68ed: $9c
    ld c, a                                       ; $68ee: $4f
    ld h, $17                                     ; $68ef: $26 $17
    and d                                         ; $68f1: $a2
    di                                            ; $68f2: $f3
    jp c, $ffe1                                   ; $68f3: $da $e1 $ff

    xor $71                                       ; $68f6: $ee $71
    db $f4                                        ; $68f8: $f4
    dec sp                                        ; $68f9: $3b
    ld sp, hl                                     ; $68fa: $f9
    rst $38                                       ; $68fb: $ff
    rst $20                                       ; $68fc: $e7
    jr @+$01                                      ; $68fd: $18 $ff

    jp $e724                                      ; $68ff: $c3 $24 $e7


    inc h                                         ; $6902: $24
    rst $38                                       ; $6903: $ff
    inc a                                         ; $6904: $3c
    db $db                                        ; $6905: $db
    inc a                                         ; $6906: $3c
    ei                                            ; $6907: $fb
    rst $20                                       ; $6908: $e7
    jr jr_072_68db                                ; $6909: $18 $d0

    ld h, c                                       ; $690b: $61
    ld h, a                                       ; $690c: $67
    sbc d                                         ; $690d: $9a
    call nz, $0b8a                                ; $690e: $c4 $8a $0b
    rst $38                                       ; $6911: $ff
    ret nz                                        ; $6912: $c0

    ld b, d                                       ; $6913: $42
    and b                                         ; $6914: $a0
    db $10                                        ; $6915: $10
    ret nz                                        ; $6916: $c0

    jp hl                                         ; $6917: $e9


    add b                                         ; $6918: $80
    ld h, b                                       ; $6919: $60
    rst $38                                       ; $691a: $ff
    sub c                                         ; $691b: $91
    adc e                                         ; $691c: $8b
    ld h, b                                       ; $691d: $60
    ld d, $a9                                     ; $691e: $16 $a9
    pop hl                                        ; $6920: $e1

jr_072_6921:
    dec bc                                        ; $6921: $0b
    adc d                                         ; $6922: $8a
    rst $38                                       ; $6923: $ff
    daa                                           ; $6924: $27
    daa                                           ; $6925: $27
    rrca                                          ; $6926: $0f
    xor l                                         ; $6927: $ad
    rra                                           ; $6928: $1f
    sub $3f                                       ; $6929: $d6 $3f
    ld a, l                                       ; $692b: $7d
    db $fc                                        ; $692c: $fc
    halt                                          ; $692d: $76
    add b                                         ; $692e: $80
    jr nz, jr_072_6958                            ; $692f: $20 $27

    inc h                                         ; $6931: $24
    db $db                                        ; $6932: $db
    inc c                                         ; $6933: $0c
    rst $30                                       ; $6934: $f7
    ld [hl], $cf                                  ; $6935: $36 $cf
    rst $38                                       ; $6937: $ff
    jr jr_072_6921                                ; $6938: $18 $e7

    sub $0f                                       ; $693a: $d6 $0f
    ld e, c                                       ; $693c: $59
    and [hl]                                      ; $693d: $a6
    ld b, d                                       ; $693e: $42
    rrca                                          ; $693f: $0f
    rst $38                                       ; $6940: $ff
    ei                                            ; $6941: $fb
    nop                                           ; $6942: $00
    inc e                                         ; $6943: $1c
    inc bc                                        ; $6944: $03
    cp a                                          ; $6945: $bf

jr_072_6946:
    nop                                           ; $6946: $00
    sbc c                                         ; $6947: $99
    ld h, [hl]                                    ; $6948: $66
    ld a, $d0                                     ; $6949: $3e $d0
    ld h, c                                       ; $694b: $61
    dec a                                         ; $694c: $3d
    jp nz, $e718                                  ; $694d: $c2 $18 $e7

    add hl, de                                    ; $6950: $19
    ld hl, sp+$04                                 ; $6951: $f8 $04
    db $10                                        ; $6953: $10
    add c                                         ; $6954: $81
    rst $00                                       ; $6955: $c7
    ld d, [hl]                                    ; $6956: $56
    xor c                                         ; $6957: $a9

jr_072_6958:
    ld [hl+], a                                   ; $6958: $22
    ld d, [hl]                                    ; $6959: $56
    ldh [$90], a                                  ; $695a: $e0 $90

jr_072_695c:
    add e                                         ; $695c: $83
    add b                                         ; $695d: $80

jr_072_695e:
    and e                                         ; $695e: $a3
    ld de, $ffef                                  ; $695f: $11 $ef $ff
    rra                                           ; $6962: $1f
    ldh [$3d], a                                  ; $6963: $e0 $3d
    rst $00                                       ; $6965: $c7
    inc sp                                        ; $6966: $33
    rst $08                                       ; $6967: $cf
    dec l                                         ; $6968: $2d
    rst $10                                       ; $6969: $d7
    cp $e0                                        ; $696a: $fe $e0
    ld h, l                                       ; $696c: $65
    jr z, jr_072_6946                             ; $696d: $28 $d7

    ld b, h                                       ; $696f: $44

Jump_072_6970:
    ei                                            ; $6970: $fb
    or h                                          ; $6971: $b4
    rst $38                                       ; $6972: $ff
    ret nc                                        ; $6973: $d0

    cp $62                                        ; $6974: $fe $62
    nop                                           ; $6976: $00
    rst $10                                       ; $6977: $d7

jr_072_6978:
    ld d, [hl]                                    ; $6978: $56
    rst $20                                       ; $6979: $e7
    and l                                         ; $697a: $a5
    or a                                          ; $697b: $b7
    db $ed                                        ; $697c: $ed
    db $fd                                        ; $697d: $fd
    ld a, a                                       ; $697e: $7f

jr_072_697f:
    rst $28                                       ; $697f: $ef
    db $eb                                        ; $6980: $eb
    cp a                                          ; $6981: $bf
    rst $38                                       ; $6982: $ff
    ld a, [hl-]                                   ; $6983: $3a
    rst $28                                       ; $6984: $ef
    jr c, jr_072_6998                             ; $6985: $38 $11

    jr nz, jr_072_6978                            ; $6987: $20 $ef

    jr z, @+$01                                   ; $6989: $28 $ff

    jr c, jr_072_695c                             ; $698b: $38 $cf

    db $fc                                        ; $698d: $fc
    pop hl                                        ; $698e: $e1
    ld l, $ef                                     ; $698f: $2e $ef
    ccf                                           ; $6991: $3f
    cp a                                          ; $6992: $bf
    rst $38                                       ; $6993: $ff
    ld e, $38                                     ; $6994: $1e $38
    rst $38                                       ; $6996: $ff
    ld d, [hl]                                    ; $6997: $56

jr_072_6998:
    rst $10                                       ; $6998: $d7
    ldh [$e3], a                                  ; $6999: $e0 $e3
    xor e                                         ; $699b: $ab
    ld e, e                                       ; $699c: $5b

jr_072_699d:
    rst $38                                       ; $699d: $ff
    ld a, [hl-]                                   ; $699e: $3a
    push hl                                       ; $699f: $e5
    pop hl                                        ; $69a0: $e1
    rst $38                                       ; $69a1: $ff
    jr c, jr_072_697f                             ; $69a2: $38 $db

    ldh [$28], a                                  ; $69a4: $e0 $28
    rst $10                                       ; $69a6: $d7
    ldh [$fe], a                                  ; $69a7: $e0 $fe
    pop hl                                        ; $69a9: $e1
    ld [c], a                                     ; $69aa: $e2
    rst $38                                       ; $69ab: $ff
    rst $18                                       ; $69ac: $df
    jr c, jr_072_695e                             ; $69ad: $38 $af

    ld e, [hl]                                    ; $69af: $5e
    bit 4, [hl]                                   ; $69b0: $cb $66
    rst $38                                       ; $69b2: $ff
    ld e, a                                       ; $69b3: $5f
    and a                                         ; $69b4: $a7
    and c                                         ; $69b5: $a1
    sbc a                                         ; $69b6: $9f
    xor e                                         ; $69b7: $ab
    rst $10                                       ; $69b8: $d7
    rst $38                                       ; $69b9: $ff
    ld a, [hl]                                    ; $69ba: $7e
    rst $38                                       ; $69bb: $ff
    ret c                                         ; $69bc: $d8

    cpl                                           ; $69bd: $2f
    jr c, @+$01                                   ; $69be: $38 $ff

    ld l, [hl]                                    ; $69c0: $6e
    rst $18                                       ; $69c1: $df
    ld a, [bc]                                    ; $69c2: $0a
    rst $20                                       ; $69c3: $e7
    db $fd                                        ; $69c4: $fd
    rst $18                                       ; $69c5: $df
    ldh a, [$e2]                                  ; $69c6: $f0 $e2
    ld a, [hl]                                    ; $69c8: $7e
    rst $38                                       ; $69c9: $ff
    ccf                                           ; $69ca: $3f
    rst $28                                       ; $69cb: $ef
    jr nz, jr_072_699d                            ; $69cc: $20 $cf

    rst $38                                       ; $69ce: $ff
    or [hl]                                       ; $69cf: $b6
    dec hl                                        ; $69d0: $2b
    db $ed                                        ; $69d1: $ed
    cp d                                          ; $69d2: $ba
    dec sp                                        ; $69d3: $3b
    rst $18                                       ; $69d4: $df
    halt                                          ; $69d5: $76
    rst $18                                       ; $69d6: $df
    rst $18                                       ; $69d7: $df
    ld d, h                                       ; $69d8: $54
    rst $38                                       ; $69d9: $ff
    ld e, l                                       ; $69da: $5d
    rst $38                                       ; $69db: $ff
    ld a, [hl+]                                   ; $69dc: $2a
    ld [hl], b                                    ; $69dd: $70
    ldh [$de], a                                  ; $69de: $e0 $de
    ld a, a                                       ; $69e0: $7f
    rst $10                                       ; $69e1: $d7
    add hl, hl                                    ; $69e2: $29
    cp $55                                        ; $69e3: $fe $55
    db $ec                                        ; $69e5: $ec
    nop                                           ; $69e6: $00
    ld [hl], l                                    ; $69e7: $75
    add $00                                       ; $69e8: $c6 $00
    ret nz                                        ; $69ea: $c0

    rst $38                                       ; $69eb: $ff
    ld c, e                                       ; $69ec: $4b
    sbc b                                         ; $69ed: $98
    ld h, a                                       ; $69ee: $67
    ld d, b                                       ; $69ef: $50
    ld h, c                                       ; $69f0: $61
    ld e, b                                       ; $69f1: $58
    ld b, b                                       ; $69f2: $40
    ld b, $00                                     ; $69f3: $06 $00
    ld l, e                                       ; $69f5: $6b
    dec hl                                        ; $69f6: $2b
    ld b, b                                       ; $69f7: $40
    ld l, b                                       ; $69f8: $68
    rst $38                                       ; $69f9: $ff
    inc a                                         ; $69fa: $3c
    inc bc                                        ; $69fb: $03
    add h                                         ; $69fc: $84
    ld [hl], e                                    ; $69fd: $73
    or h                                          ; $69fe: $b4
    db $eb                                        ; $69ff: $eb
    inc hl                                        ; $6a00: $23
    call z, $b0fe                                 ; $6a01: $cc $fe $b0
    pop hl                                        ; $6a04: $e1
    ld a, [hl-]                                   ; $6a05: $3a
    rst $18                                       ; $6a06: $df
    rst $30                                       ; $6a07: $f7
    ld e, [hl]                                    ; $6a08: $5e
    push de                                       ; $6a09: $d5
    ld a, [hl]                                    ; $6a0a: $7e
    db $dd                                        ; $6a0b: $dd
    rst $30                                       ; $6a0c: $f7
    ld a, a                                       ; $6a0d: $7f
    ei                                            ; $6a0e: $fb
    ld l, $e0                                     ; $6a0f: $2e $e0
    push bc                                       ; $6a11: $c5
    dec de                                        ; $6a12: $1b
    rst $20                                       ; $6a13: $e7
    ccf                                           ; $6a14: $3f
    call nz, Call_000_3fff                        ; $6a15: $c4 $ff $3f
    ret z                                         ; $6a18: $c8

    rra                                           ; $6a19: $1f
    add sp, -$01                                  ; $6a1a: $e8 $ff
    rst $38                                       ; $6a1c: $ff
    ld a, [$fdff]                                 ; $6a1d: $fa $ff $fd
    push de                                       ; $6a20: $d5
    ld e, $20                                     ; $6a21: $1e $20
    rst $10                                       ; $6a23: $d7
    rst $38                                       ; $6a24: $ff
    xor a                                         ; $6a25: $af
    db $fc                                        ; $6a26: $fc
    rst $18                                       ; $6a27: $df
    ld hl, sp-$15                                 ; $6a28: $f8 $eb
    xor a                                         ; $6a2a: $af
    ld hl, sp-$4d                                 ; $6a2b: $f8 $b3
    ld b, b                                       ; $6a2d: $40
    inc a                                         ; $6a2e: $3c
    ld d, $61                                     ; $6a2f: $16 $61
    ccf                                           ; $6a31: $3f
    jp $df3e                                      ; $6a32: $c3 $3e $df


    rst $00                                       ; $6a35: $c7
    db $dd                                        ; $6a36: $dd
    cpl                                           ; $6a37: $2f
    jp c, $f02f                                   ; $6a38: $da $2f $f0

    rst $20                                       ; $6a3b: $e7
    inc a                                         ; $6a3c: $3c
    rst $00                                       ; $6a3d: $c7
    rst $38                                       ; $6a3e: $ff
    ret c                                         ; $6a3f: $d8

    cpl                                           ; $6a40: $2f
    ret c                                         ; $6a41: $d8

    cpl                                           ; $6a42: $2f
    rst $28                                       ; $6a43: $ef
    ldh a, [$b8]                                  ; $6a44: $f0 $b8
    rst $00                                       ; $6a46: $c7
    rst $38                                       ; $6a47: $ff
    ld d, $f9                                     ; $6a48: $16 $f9
    db $fc                                        ; $6a4a: $fc
    db $e3                                        ; $6a4b: $e3
    db $db                                        ; $6a4c: $db
    rst $20                                       ; $6a4d: $e7
    di                                            ; $6a4e: $f3
    adc $ff                                       ; $6a4f: $ce $ff
    and $de                                       ; $6a51: $e6 $de
    adc a                                         ; $6a53: $8f
    rst $38                                       ; $6a54: $ff
    ld a, a                                       ; $6a55: $7f
    rst $38                                       ; $6a56: $ff
    ld d, e                                       ; $6a57: $53
    rst $28                                       ; $6a58: $ef
    rst $38                                       ; $6a59: $ff
    sbc c                                         ; $6a5a: $99
    rst $20                                       ; $6a5b: $e7
    ld sp, hl                                     ; $6a5c: $f9
    rst $38                                       ; $6a5d: $ff
    xor [hl]                                      ; $6a5e: $ae
    rst $18                                       ; $6a5f: $df
    ld e, a                                       ; $6a60: $5f
    ld h, a                                       ; $6a61: $67
    rst $38                                       ; $6a62: $ff
    ld c, e                                       ; $6a63: $4b
    ld [hl], a                                    ; $6a64: $77
    rst $20                                       ; $6a65: $e7
    ei                                            ; $6a66: $fb
    sbc a                                         ; $6a67: $9f
    ld sp, hl                                     ; $6a68: $f9
    cp l                                          ; $6a69: $bd
    ld sp, hl                                     ; $6a6a: $f9
    rst $30                                       ; $6a6b: $f7
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    cp $ff                                        ; $6a6e: $fe $ff
    ldh [rIE], a                                  ; $6a70: $e0 $ff
    cp $fd                                        ; $6a72: $fe $fd
    db $fd                                        ; $6a74: $fd
    ld a, a                                       ; $6a75: $7f
    rst $38                                       ; $6a76: $ff
    cp $f1                                        ; $6a77: $fe $f1
    rst $38                                       ; $6a79: $ff
    sbc c                                         ; $6a7a: $99
    sbc a                                         ; $6a7b: $9f
    cp l                                          ; $6a7c: $bd
    sub c                                         ; $6a7d: $91
    nop                                           ; $6a7e: $00
    pop hl                                        ; $6a7f: $e1
    ld a, a                                       ; $6a80: $7f
    rst $38                                       ; $6a81: $ff
    ldh [$fa], a                                  ; $6a82: $e0 $fa
    pop hl                                        ; $6a84: $e1
    ld [$e4e3], a                                 ; $6a85: $ea $e3 $e4
    db $e3                                        ; $6a88: $e3
    ld hl, sp-$08                                 ; $6a89: $f8 $f8
    cp $f9                                        ; $6a8b: $fe $f9
    cp $ea                                        ; $6a8d: $fe $ea
    db $e3                                        ; $6a8f: $e3
    db $e4                                        ; $6a90: $e4
    db $e3                                        ; $6a91: $e3
    rra                                           ; $6a92: $1f
    rra                                           ; $6a93: $1f
    ld a, a                                       ; $6a94: $7f
    ld a, a                                       ; $6a95: $7f
    db $ec                                        ; $6a96: $ec
    rst $38                                       ; $6a97: $ff
    di                                            ; $6a98: $f3
    adc a                                         ; $6a99: $8f
    rst $38                                       ; $6a9a: $ff
    ld a, c                                       ; $6a9b: $79
    rst $38                                       ; $6a9c: $ff
    add sp, -$09                                  ; $6a9d: $e8 $f7
    di                                            ; $6a9f: $f3
    rst $18                                       ; $6aa0: $df
    rst $28                                       ; $6aa1: $ef
    add $fe                                       ; $6aa2: $c6 $fe
    sbc $fe                                       ; $6aa4: $de $fe
    ld e, b                                       ; $6aa6: $58
    ld bc, $ff67                                  ; $6aa7: $01 $67 $ff
    rst $38                                       ; $6aaa: $ff
    db $d3                                        ; $6aab: $d3
    rst $28                                       ; $6aac: $ef
    db $fd                                        ; $6aad: $fd
    rst $38                                       ; $6aae: $ff
    rst $08                                       ; $6aaf: $cf
    rst $38                                       ; $6ab0: $ff
    ld h, a                                       ; $6ab1: $67
    ld a, a                                       ; $6ab2: $7f
    rst $38                                       ; $6ab3: $ff
    rst $30                                       ; $6ab4: $f7
    rst $38                                       ; $6ab5: $ff
    ei                                            ; $6ab6: $fb
    rst $38                                       ; $6ab7: $ff
    db $fd                                        ; $6ab8: $fd
    ld sp, hl                                     ; $6ab9: $f9
    ei                                            ; $6aba: $fb
    ei                                            ; $6abb: $fb
    jr c, jr_072_6afa                             ; $6abc: $38 $3c

    inc bc                                        ; $6abe: $03
    sbc [hl]                                      ; $6abf: $9e
    ldh [$98], a                                  ; $6ac0: $e0 $98
    ldh [$fb], a                                  ; $6ac2: $e0 $fb
    rst $38                                       ; $6ac4: $ff
    cp a                                          ; $6ac5: $bf
    inc sp                                        ; $6ac6: $33
    ld bc, $0640                                  ; $6ac7: $01 $40 $06
    ld h, h                                       ; $6aca: $64
    ld [$e4e3], a                                 ; $6acb: $ea $e3 $e4
    db $e4                                        ; $6ace: $e4
    ei                                            ; $6acf: $fb
    call c, Call_000_22e1                         ; $6ad0: $dc $e1 $22
    rlca                                          ; $6ad3: $07
    rst $18                                       ; $6ad4: $df
    rst $18                                       ; $6ad5: $df
    or d                                          ; $6ad6: $b2
    nop                                           ; $6ad7: $00
    rst $38                                       ; $6ad8: $ff
    db $fc                                        ; $6ad9: $fc
    db $fc                                        ; $6ada: $fc
    ld hl, sp-$04                                 ; $6adb: $f8 $fc
    ld hl, sp-$0c                                 ; $6add: $f8 $f4
    ldh a, [$f8]                                  ; $6adf: $f0 $f8
    cp [hl]                                       ; $6ae1: $be
    cp $e4                                        ; $6ae2: $fe $e4
    rst $18                                       ; $6ae4: $df
    rra                                           ; $6ae5: $1f
    rrca                                          ; $6ae6: $0f
    rrca                                          ; $6ae7: $0f
    rra                                           ; $6ae8: $1f
    rst $38                                       ; $6ae9: $ff
    ld [c], a                                     ; $6aea: $e2
    dec e                                         ; $6aeb: $1d
    rra                                           ; $6aec: $1f
    inc e                                         ; $6aed: $1c
    ld e, $1e                                     ; $6aee: $1e $1e
    inc e                                         ; $6af0: $1c
    inc e                                         ; $6af1: $1c
    or l                                          ; $6af2: $b5
    rst $20                                       ; $6af3: $e7
    ld c, [hl]                                    ; $6af4: $4e
    pop hl                                        ; $6af5: $e1
    ld c, h                                       ; $6af6: $4c
    pop hl                                        ; $6af7: $e1
    db $fc                                        ; $6af8: $fc
    sub l                                         ; $6af9: $95

jr_072_6afa:
    pop hl                                        ; $6afa: $e1
    ld c, [hl]                                    ; $6afb: $4e
    ld [c], a                                     ; $6afc: $e2
    db $fc                                        ; $6afd: $fc
    cp $fe                                        ; $6afe: $fe $fe
    db $ed                                        ; $6b00: $ed
    pop hl                                        ; $6b01: $e1
    ld hl, sp-$41                                 ; $6b02: $f8 $bf
    ldh a, [rBCPS]                                ; $6b04: $f0 $68
    nop                                           ; $6b06: $00
    sbc b                                         ; $6b07: $98
    db $10                                        ; $6b08: $10
    ld [$2058], sp                                ; $6b09: $08 $58 $20
    ld [$00ff], sp                                ; $6b0c: $08 $ff $00
    jr nc, jr_072_6b31                            ; $6b0f: $30 $20

    stop                                          ; $6b11: $10 $00
    ld e, $1e                                     ; $6b13: $1e $1e
    dec a                                         ; $6b15: $3d
    rst $38                                       ; $6b16: $ff
    dec a                                         ; $6b17: $3d
    ld [hl], $06                                  ; $6b18: $36 $06
    ld b, e                                       ; $6b1a: $43
    inc bc                                        ; $6b1b: $03
    add $86                                       ; $6b1c: $c6 $86
    ld b, a                                       ; $6b1e: $47
    cp a                                          ; $6b1f: $bf
    rlca                                          ; $6b20: $07
    ld b, a                                       ; $6b21: $47
    rlca                                          ; $6b22: $07
    rst $00                                       ; $6b23: $c7
    rlca                                          ; $6b24: $07
    ccf                                           ; $6b25: $3f
    rst $38                                       ; $6b26: $ff
    db $e4                                        ; $6b27: $e4
    cp a                                          ; $6b28: $bf
    rst $38                                       ; $6b29: $ff
    cp a                                          ; $6b2a: $bf
    rra                                           ; $6b2b: $1f
    rra                                           ; $6b2c: $1f
    sbc a                                         ; $6b2d: $9f
    sbc a                                         ; $6b2e: $9f
    ld e, a                                       ; $6b2f: $5f
    ld e, a                                       ; $6b30: $5f

jr_072_6b31:
    ld a, [c]                                     ; $6b31: $f2
    rst $38                                       ; $6b32: $ff
    ret nz                                        ; $6b33: $c0

    pop hl                                        ; $6b34: $e1
    pop bc                                        ; $6b35: $c1
    pop hl                                        ; $6b36: $e1
    pop bc                                        ; $6b37: $c1
    db $e3                                        ; $6b38: $e3
    jp $ff83                                      ; $6b39: $c3 $83 $ff


    add b                                         ; $6b3c: $80
    db $e4                                        ; $6b3d: $e4
    ret nz                                        ; $6b3e: $c0

    adc h                                         ; $6b3f: $8c
    adc b                                         ; $6b40: $88
    sub b                                         ; $6b41: $90
    sub b                                         ; $6b42: $90
    or b                                          ; $6b43: $b0
    rst $38                                       ; $6b44: $ff
    and b                                         ; $6b45: $a0
    or c                                          ; $6b46: $b1
    and c                                         ; $6b47: $a1
    ldh a, [$e0]                                  ; $6b48: $f0 $e0
    pop hl                                        ; $6b4a: $e1
    pop hl                                        ; $6b4b: $e1
    ld [hl], d                                    ; $6b4c: $72
    rst $38                                       ; $6b4d: $ff
    ld h, d                                       ; $6b4e: $62
    pop bc                                        ; $6b4f: $c1
    pop bc                                        ; $6b50: $c1
    ld [c], a                                     ; $6b51: $e2
    ld [c], a                                     ; $6b52: $e2
    push de                                       ; $6b53: $d5
    push de                                       ; $6b54: $d5
    add a                                         ; $6b55: $87
    rst $38                                       ; $6b56: $ff
    rlca                                          ; $6b57: $07
    add a                                         ; $6b58: $87
    rlca                                          ; $6b59: $07
    add h                                         ; $6b5a: $84
    inc b                                         ; $6b5b: $04
    add a                                         ; $6b5c: $87
    nop                                           ; $6b5d: $00
    adc h                                         ; $6b5e: $8c
    ei                                            ; $6b5f: $fb
    ld [$9184], sp                                ; $6b60: $08 $84 $91
    add b                                         ; $6b63: $80
    sbc b                                         ; $6b64: $98
    db $10                                        ; $6b65: $10
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    sbc a                                         ; $6b68: $9f
    rst $38                                       ; $6b69: $ff
    sbc a                                         ; $6b6a: $9f
    rst $08                                       ; $6b6b: $cf
    rrca                                          ; $6b6c: $0f
    rlca                                          ; $6b6d: $07
    rlca                                          ; $6b6e: $07
    dec bc                                        ; $6b6f: $0b
    dec bc                                        ; $6b70: $0b
    rlca                                          ; $6b71: $07
    rst $38                                       ; $6b72: $ff
    rlca                                          ; $6b73: $07
    inc bc                                        ; $6b74: $03
    inc bc                                        ; $6b75: $03
    dec b                                         ; $6b76: $05
    dec b                                         ; $6b77: $05
    adc d                                         ; $6b78: $8a
    adc d                                         ; $6b79: $8a
    ld d, l                                       ; $6b7a: $55
    cp a                                          ; $6b7b: $bf
    ld d, l                                       ; $6b7c: $55
    cp [hl]                                       ; $6b7d: $be
    cp [hl]                                       ; $6b7e: $be
    db $eb                                        ; $6b7f: $eb
    rst $38                                       ; $6b80: $ff
    pop af                                        ; $6b81: $f1
    xor [hl]                                      ; $6b82: $ae
    nop                                           ; $6b83: $00
    ld d, a                                       ; $6b84: $57
    or $00                                        ; $6b85: $f6 $00
    ldh [$eb], a                                  ; $6b87: $e0 $eb
    db $eb                                        ; $6b89: $eb
    xor d                                         ; $6b8a: $aa
    ret nz                                        ; $6b8b: $c0

    rst $38                                       ; $6b8c: $ff
    xor a                                         ; $6b8d: $af
    rst $38                                       ; $6b8e: $ff
    push bc                                       ; $6b8f: $c5
    cp $9e                                        ; $6b90: $fe $9e
    nop                                           ; $6b92: $00
    ld e, l                                       ; $6b93: $5d
    rst $38                                       ; $6b94: $ff
    xor $ff                                       ; $6b95: $ee $ff
    ld [hl+], a                                   ; $6b97: $22
    ld [hl+], a                                   ; $6b98: $22
    ld d, l                                       ; $6b99: $55
    ld e, a                                       ; $6b9a: $5f
    ld d, l                                       ; $6b9b: $55
    cp a                                          ; $6b9c: $bf
    cp a                                          ; $6b9d: $bf
    ld l, e                                       ; $6b9e: $6b
    ld a, a                                       ; $6b9f: $7f
    ldh [$e1], a                                  ; $6ba0: $e0 $e1
    rst $10                                       ; $6ba2: $d7
    ldh [$c0], a                                  ; $6ba3: $e0 $c0
    rst $38                                       ; $6ba5: $ff
    inc hl                                        ; $6ba6: $23
    inc hl                                        ; $6ba7: $23
    ld d, l                                       ; $6ba8: $55
    ld d, l                                       ; $6ba9: $55
    cp e                                          ; $6baa: $bb
    cp e                                          ; $6bab: $bb
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    push af                                       ; $6bae: $f5
    ld [hl], a                                    ; $6baf: $77
    ld a, [hl]                                    ; $6bb0: $7e
    nop                                           ; $6bb1: $00
    ld [hl], a                                    ; $6bb2: $77
    dec bc                                        ; $6bb3: $0b
    ldh [rP1], a                                  ; $6bb4: $e0 $00
    nop                                           ; $6bb6: $00
    ld c, [hl]                                    ; $6bb7: $4e
    ld [hl], b                                    ; $6bb8: $70
    ld a, a                                       ; $6bb9: $7f
    inc e                                         ; $6bba: $1c
    ld h, b                                       ; $6bbb: $60
    ld a, [hl-]                                   ; $6bbc: $3a
    ld b, b                                       ; $6bbd: $40
    ld [hl], h                                    ; $6bbe: $74
    nop                                           ; $6bbf: $00
    ld l, d                                       ; $6bc0: $6a
    ld hl, sp+$60                                 ; $6bc1: $f8 $60
    cp [hl]                                       ; $6bc3: $be
    ld l, $81                                     ; $6bc4: $2e $81
    ld b, d                                       ; $6bc6: $42
    nop                                           ; $6bc7: $00
    inc h                                         ; $6bc8: $24
    nop                                           ; $6bc9: $00

jr_072_6bca:
    jr jr_072_6bca                                ; $6bca: $18 $fe

    ldh [rNR50], a                                ; $6bcc: $e0 $24
    ld b, $f6                                     ; $6bce: $06 $f6
    ldh [rP1], a                                  ; $6bd0: $e0 $00
    nop                                           ; $6bd2: $00
    nop                                           ; $6bd3: $00
    nop                                           ; $6bd4: $00
    nop                                           ; $6bd5: $00
    rst $08                                       ; $6bd6: $cf
    ld b, [hl]                                    ; $6bd7: $46
    push bc                                       ; $6bd8: $c5
    add $c7                                       ; $6bd9: $c6 $c7
    db $fc                                        ; $6bdb: $fc
    rst $38                                       ; $6bdc: $ff
    ld hl, sp-$09                                 ; $6bdd: $f8 $f7
    ret z                                         ; $6bdf: $c8

    ret                                           ; $6be0: $c9


    di                                            ; $6be1: $f3
    jp z, $fccb                                   ; $6be2: $ca $cb $fc

    rst $38                                       ; $6be5: $ff
    ld hl, sp-$09                                 ; $6be6: $f8 $f7
    call z, $cecd                                 ; $6be8: $cc $cd $ce
    rst $08                                       ; $6beb: $cf
    inc a                                         ; $6bec: $3c
    db $fc                                        ; $6bed: $fc
    rst $38                                       ; $6bee: $ff
    ld hl, sp-$09                                 ; $6bef: $f8 $f7
    ret nc                                        ; $6bf1: $d0

    pop de                                        ; $6bf2: $d1
    jp nc, $fcd3                                  ; $6bf3: $d2 $d3 $fc

    rst $38                                       ; $6bf6: $ff
    ld hl, sp-$09                                 ; $6bf7: $f8 $f7
    nop                                           ; $6bf9: $00
    ld e, $ff                                     ; $6bfa: $1e $ff
    db $fc                                        ; $6bfc: $fc
    ei                                            ; $6bfd: $fb
    ld e, $ff                                     ; $6bfe: $1e $ff
    db $fc                                        ; $6c00: $fc
    ei                                            ; $6c01: $fb
    ld e, $ff                                     ; $6c02: $1e $ff
    db $fc                                        ; $6c04: $fc
    ei                                            ; $6c05: $fb
    ld e, $ff                                     ; $6c06: $1e $ff
    db $fc                                        ; $6c08: $fc
    ei                                            ; $6c09: $fb
    nop                                           ; $6c0a: $00
    ld e, $ff                                     ; $6c0b: $1e $ff
    nop                                           ; $6c0d: $00
    rst $18                                       ; $6c0e: $df
    db $fc                                        ; $6c0f: $fc
    rst $38                                       ; $6c10: $ff
    nop                                           ; $6c11: $00
    rst $18                                       ; $6c12: $df
    db $fc                                        ; $6c13: $fc
    rst $38                                       ; $6c14: $ff
    nop                                           ; $6c15: $00
    rst $18                                       ; $6c16: $df
    db $fc                                        ; $6c17: $fc
    rst $38                                       ; $6c18: $ff
    nop                                           ; $6c19: $00
    rst $18                                       ; $6c1a: $df
    ld h, b                                       ; $6c1b: $60
    ld c, $ec                                     ; $6c1c: $0e $ec
    rst $38                                       ; $6c1e: $ff
    push hl                                       ; $6c1f: $e5
    nop                                           ; $6c20: $00
    rst $18                                       ; $6c21: $df
    ld [de], a                                    ; $6c22: $12
    ld a, [c]                                     ; $6c23: $f2
    ret nz                                        ; $6c24: $c0

    ldh [$bf], a                                  ; $6c25: $e0 $bf
    ret nz                                        ; $6c27: $c0

    cp e                                          ; $6c28: $bb
    ldh [$f8], a                                  ; $6c29: $e0 $f8
    nop                                           ; $6c2b: $00
    rst $18                                       ; $6c2c: $df
    ld d, $f3                                     ; $6c2d: $16 $f3
    add b                                         ; $6c2f: $80
    ldh [$c1], a                                  ; $6c30: $e0 $c1
    jp nz, $b946                                  ; $6c32: $c2 $46 $b9

    cp d                                          ; $6c35: $ba
    ld hl, sp+$00                                 ; $6c36: $f8 $00
    rst $18                                       ; $6c38: $df
    ld d, $f3                                     ; $6c39: $16 $f3
    push bc                                       ; $6c3b: $c5
    ldh [$c3], a                                  ; $6c3c: $e0 $c3
    call nz, $bb46                                ; $6c3e: $c4 $46 $bb
    cp h                                          ; $6c41: $bc
    ret c                                         ; $6c42: $d8

    nop                                           ; $6c43: $00
    rst $18                                       ; $6c44: $df
    ld a, [bc]                                    ; $6c45: $0a
    ldh a, [rDMA]                                 ; $6c46: $f0 $46
    pop hl                                        ; $6c48: $e1
    cp e                                          ; $6c49: $bb
    cp h                                          ; $6c4a: $bc
    db $fd                                        ; $6c4b: $fd
    ret nz                                        ; $6c4c: $c0

    cp l                                          ; $6c4d: $bd
    cp [hl]                                       ; $6c4e: $be
    jr nc, jr_072_6c89                            ; $6c4f: $30 $38

    db $e4                                        ; $6c51: $e4
    nop                                           ; $6c52: $00
    rst $18                                       ; $6c53: $df
    inc c                                         ; $6c54: $0c
    jp nz, $e00d                                  ; $6c55: $c2 $0d $e0

    cp c                                          ; $6c58: $b9
    cp d                                          ; $6c59: $ba
    ld b, [hl]                                    ; $6c5a: $46
    ld [c], a                                     ; $6c5b: $e2
    push bc                                       ; $6c5c: $c5
    ldh [$1f], a                                  ; $6c5d: $e0 $1f
    sbc l                                         ; $6c5f: $9d
    sbc e                                         ; $6c60: $9b
    sbc a                                         ; $6c61: $9f
    sbc l                                         ; $6c62: $9d
    ld b, [hl]                                    ; $6c63: $46
    dec a                                         ; $6c64: $3d
    ldh [$38], a                                  ; $6c65: $e0 $38
    ldh [rP1], a                                  ; $6c67: $e0 $00
    rst $18                                       ; $6c69: $df
    ldh a, [rNR10]                                ; $6c6a: $f0 $10
    jp $e00d                                      ; $6c6c: $c3 $0d $e0


    adc b                                         ; $6c6f: $88
    pop hl                                        ; $6c70: $e1
    ld b, [hl]                                    ; $6c71: $46
    ldh [rDMA], a                                 ; $6c72: $e0 $46
    ld b, [hl]                                    ; $6c74: $46
    sbc l                                         ; $6c75: $9d
    sbc d                                         ; $6c76: $9a
    rrca                                          ; $6c77: $0f
    xor e                                         ; $6c78: $ab
    xor e                                         ; $6c79: $ab
    sbc d                                         ; $6c7a: $9a
    sbc l                                         ; $6c7b: $9d
    dec a                                         ; $6c7c: $3d
    ldh [$38], a                                  ; $6c7d: $e0 $38
    ldh [rP1], a                                  ; $6c7f: $e0 $00
    rst $18                                       ; $6c81: $df
    db $10                                        ; $6c82: $10
    jp Jump_000_0dfc                              ; $6c83: $c3 $fc $0d


    ldh [$88], a                                  ; $6c86: $e0 $88
    pop hl                                        ; $6c88: $e1

jr_072_6c89:
    sbc e                                         ; $6c89: $9b
    sbc a                                         ; $6c8a: $9f
    sbc e                                         ; $6c8b: $9b
    sbc e                                         ; $6c8c: $9b
    sbc e                                         ; $6c8d: $9b
    sbc d                                         ; $6c8e: $9a
    ccf                                           ; $6c8f: $3f
    ld b, [hl]                                    ; $6c90: $46
    xor h                                         ; $6c91: $ac
    xor h                                         ; $6c92: $ac
    ld b, [hl]                                    ; $6c93: $46
    sbc d                                         ; $6c94: $9a
    sbc l                                         ; $6c95: $9d
    dec a                                         ; $6c96: $3d
    ld [c], a                                     ; $6c97: $e2
    nop                                           ; $6c98: $00
    rst $18                                       ; $6c99: $df
    jr @+$59                                      ; $6c9a: $18 $57

    pop hl                                        ; $6c9c: $e1
    inc c                                         ; $6c9d: $0c
    jp $e088                                      ; $6c9e: $c3 $88 $e0


    ld b, [hl]                                    ; $6ca1: $46
    xor e                                         ; $6ca2: $ab
    ld bc, $7ec6                                  ; $6ca3: $01 $c6 $7e
    ldh [$2e], a                                  ; $6ca6: $e0 $2e
    ldh [$ac], a                                  ; $6ca8: $e0 $ac
    pop af                                        ; $6caa: $f1
    add b                                         ; $6cab: $80
    nop                                           ; $6cac: $00
    call c, $c0bf                                 ; $6cad: $dc $bf $c0
    rst $08                                       ; $6cb0: $cf
    ret nz                                        ; $6cb1: $c0

    sbc l                                         ; $6cb2: $9d
    adc b                                         ; $6cb3: $88
    db $e4                                        ; $6cb4: $e4
    ld b, [hl]                                    ; $6cb5: $46
    sbc c                                         ; $6cb6: $99
    xor h                                         ; $6cb7: $ac
    cp a                                          ; $6cb8: $bf
    and $3d                                       ; $6cb9: $e6 $3d
    ldh [$bb], a                                  ; $6cbb: $e0 $bb
    cp h                                          ; $6cbd: $bc
    pop af                                        ; $6cbe: $f1
    add c                                         ; $6cbf: $81
    nop                                           ; $6cc0: $00
    call c, $d5c1                                 ; $6cc1: $dc $c1 $d5
    jp nz, $c0cf                                  ; $6cc4: $c2 $cf $c0

    sbc d                                         ; $6cc7: $9a
    jp z, $ace6                                   ; $6cc8: $ca $e6 $ac

    add b                                         ; $6ccb: $80
    and l                                         ; $6ccc: $a5
    xor h                                         ; $6ccd: $ac
    xor e                                         ; $6cce: $ab
    rlca                                          ; $6ccf: $07
    sbc h                                         ; $6cd0: $9c
    cp l                                          ; $6cd1: $bd
    cp [hl]                                       ; $6cd2: $be
    pop af                                        ; $6cd3: $f1
    add c                                         ; $6cd4: $81
    nop                                           ; $6cd5: $00
    call c, $c013                                 ; $6cd6: $dc $13 $c0
    ld b, a                                       ; $6cd9: $47
    pop hl                                        ; $6cda: $e1
    jp z, $0ee5                                   ; $6cdb: $ca $e5 $0e

    ld b, c                                       ; $6cde: $41
    and [hl]                                      ; $6cdf: $a6
    ld b, [hl]                                    ; $6ce0: $46
    xor h                                         ; $6ce1: $ac
    sbc h                                         ; $6ce2: $9c
    ld bc, $00e3                                  ; $6ce3: $01 $e3 $00
    db $db                                        ; $6ce6: $db
    ld c, d                                       ; $6ce7: $4a
    ret nz                                        ; $6ce8: $c0

    sub b                                         ; $6ce9: $90
    ret nz                                        ; $6cea: $c0

    ld [$e8c9], sp                                ; $6ceb: $08 $c9 $e8
    ld b, h                                       ; $6cee: $44
    ld [c], a                                     ; $6cef: $e2
    ld sp, hl                                     ; $6cf0: $f9
    jp nz, $ee9e                                  ; $6cf1: $c2 $9e $ee

    and l                                         ; $6cf4: $a5
    nop                                           ; $6cf5: $00
    ret c                                         ; $6cf6: $d8

    sub a                                         ; $6cf7: $97
    and b                                         ; $6cf8: $a0
    ld b, e                                       ; $6cf9: $43
    ldh [$c0], a                                  ; $6cfa: $e0 $c0
    pop bc                                        ; $6cfc: $c1
    db $ec                                        ; $6cfd: $ec
    add b                                         ; $6cfe: $80
    pop bc                                        ; $6cff: $c1
    cp c                                          ; $6d00: $b9
    add b                                         ; $6d01: $80
    add b                                         ; $6d02: $80
    ldh [$fc], a                                  ; $6d03: $e0 $fc
    or d                                          ; $6d05: $b2
    ld [de], a                                    ; $6d06: $12
    xor d                                         ; $6d07: $aa
    cp l                                          ; $6d08: $bd
    cp [hl]                                       ; $6d09: $be
    ld sp, hl                                     ; $6d0a: $f9
    sbc h                                         ; $6d0b: $9c
    adc e                                         ; $6d0c: $8b

Jump_072_6d0d:
    jp $e38c                                      ; $6d0d: $c3 $8c $e3


    ld b, [hl]                                    ; $6d10: $46
    ld a, c                                       ; $6d11: $79
    ld a, d                                       ; $6d12: $7a
    ld a, h                                       ; $6d13: $7c
    ld a, l                                       ; $6d14: $7d
    ret nz                                        ; $6d15: $c0

    ld a, [hl]                                    ; $6d16: $7e
    rst $00                                       ; $6d17: $c7
    db $fc                                        ; $6d18: $fc
    or d                                          ; $6d19: $b2
    ld [de], a                                    ; $6d1a: $12
    xor d                                         ; $6d1b: $aa
    ld e, c                                       ; $6d1c: $59
    ldh [$cc], a                                  ; $6d1d: $e0 $cc
    jp $e28c                                      ; $6d1f: $c3 $8c $e2


    ld a, c                                       ; $6d22: $79
    ld a, d                                       ; $6d23: $7a
    rrca                                          ; $6d24: $0f
    adc l                                         ; $6d25: $8d
    ld b, [hl]                                    ; $6d26: $46
    ld b, [hl]                                    ; $6d27: $46
    ld a, a                                       ; $6d28: $7f
    cp a                                          ; $6d29: $bf
    db $e4                                        ; $6d2a: $e4
    cp e                                          ; $6d2b: $bb
    and b                                         ; $6d2c: $a0
    db $fc                                        ; $6d2d: $fc
    or d                                          ; $6d2e: $b2
    ld e, $68                                     ; $6d2f: $1e $68
    ld a, [$8156]                                 ; $6d31: $fa $56 $81
    sbc h                                         ; $6d34: $9c
    call z, Call_072_79c7                         ; $6d35: $cc $c7 $79
    ld a, [hl]                                    ; $6d38: $7e
    ld b, [hl]                                    ; $6d39: $46
    ld b, [hl]                                    ; $6d3a: $46
    ld b, l                                       ; $6d3b: $45
    dec bc                                        ; $6d3c: $0b
    ld b, c                                       ; $6d3d: $41
    ld b, l                                       ; $6d3e: $45
    cp a                                          ; $6d3f: $bf
    db $e4                                        ; $6d40: $e4
    xor h                                         ; $6d41: $ac
    ld a, d                                       ; $6d42: $7a
    and c                                         ; $6d43: $a1
    db $e3                                        ; $6d44: $e3
    and e                                         ; $6d45: $a3
    nop                                           ; $6d46: $00
    sub h                                         ; $6d47: $94
    ld d, [hl]                                    ; $6d48: $56
    add b                                         ; $6d49: $80
    di                                            ; $6d4a: $f3
    cp c                                          ; $6d4b: $b9
    cp d                                          ; $6d4c: $ba
    ld b, b                                       ; $6d4d: $40
    db $e4                                        ; $6d4e: $e4
    pop bc                                        ; $6d4f: $c1
    db $e3                                        ; $6d50: $e3
    ld b, l                                       ; $6d51: $45
    dec hl                                        ; $6d52: $2b
    inc l                                         ; $6d53: $2c
    ld h, $19                                     ; $6d54: $26 $19
    ld a, [hl+]                                   ; $6d56: $2a
    cp a                                          ; $6d57: $bf
    and $7a                                       ; $6d58: $e6 $7a
    and b                                         ; $6d5a: $a0
    cp e                                          ; $6d5b: $bb
    cp h                                          ; $6d5c: $bc
    ld a, [c]                                     ; $6d5d: $f2
    ld h, b                                       ; $6d5e: $60
    nop                                           ; $6d5f: $00
    sub l                                         ; $6d60: $95
    db $10                                        ; $6d61: $10
    and b                                         ; $6d62: $a0
    db $fc                                        ; $6d63: $fc
    ret nz                                        ; $6d64: $c0

    pop bc                                        ; $6d65: $c1
    inc c                                         ; $6d66: $0c
    call nz, Call_072_7e79                        ; $6d67: $c4 $79 $7e
    ld b, l                                       ; $6d6a: $45
    scf                                           ; $6d6b: $37
    jr c, @+$29                                   ; $6d6c: $38 $27

    rst $28                                       ; $6d6e: $ef
    jr nz, jr_072_6d91                            ; $6d6f: $20 $20

    daa                                           ; $6d71: $27
    ld b, d                                       ; $6d72: $42
    ld a, [hl]                                    ; $6d73: $7e
    push hl                                       ; $6d74: $e5
    xor e                                         ; $6d75: $ab
    xor e                                         ; $6d76: $ab
    sbc [hl]                                      ; $6d77: $9e
    add e                                         ; $6d78: $83
    cp l                                          ; $6d79: $bd
    cp [hl]                                       ; $6d7a: $be
    ld a, [c]                                     ; $6d7b: $f2
    ld h, b                                       ; $6d7c: $60
    nop                                           ; $6d7d: $00
    sub l                                         ; $6d7e: $95
    ld d, a                                       ; $6d7f: $57
    add e                                         ; $6d80: $83
    jp nz, Jump_072_43a4                          ; $6d81: $c2 $a4 $43

    ldh [$39], a                                  ; $6d84: $e0 $39
    rst $38                                       ; $6d86: $ff
    dec [hl]                                      ; $6d87: $35
    dec [hl]                                      ; $6d88: $35
    ld hl, $312c                                  ; $6d89: $21 $2c $31
    dec hl                                        ; $6d8c: $2b
    ld c, e                                       ; $6d8d: $4b
    ld d, l                                       ; $6d8e: $55
    inc bc                                        ; $6d8f: $03
    ld b, [hl]                                    ; $6d90: $46

jr_072_6d91:
    add c                                         ; $6d91: $81
    ld a, b                                       ; $6d92: $78
    call nz, $a0fc                                ; $6d93: $c4 $fc $a0
    ld a, [c]                                     ; $6d96: $f2
    ld h, b                                       ; $6d97: $60
    nop                                           ; $6d98: $00
    sbc b                                         ; $6d99: $98
    ld c, c                                       ; $6d9a: $49
    add c                                         ; $6d9b: $81
    rst $10                                       ; $6d9c: $d7
    and b                                         ; $6d9d: $a0
    cp $43                                        ; $6d9e: $fe $43
    db $e3                                        ; $6da0: $e3
    ld a, [hl-]                                   ; $6da1: $3a
    dec [hl]                                      ; $6da2: $35
    dec [hl]                                      ; $6da3: $35
    ld [hl], $47                                  ; $6da4: $36 $47
    ld e, l                                       ; $6da6: $5d
    ld e, l                                       ; $6da7: $5d
    add c                                         ; $6da8: $81
    ld h, b                                       ; $6da9: $60
    ret nz                                        ; $6daa: $c0

    push hl                                       ; $6dab: $e5
    ei                                            ; $6dac: $fb
    add c                                         ; $6dad: $81
    inc sp                                        ; $6dae: $33
    ld h, b                                       ; $6daf: $60
    nop                                           ; $6db0: $00
    sbc b                                         ; $6db1: $98
    ld [bc], a                                    ; $6db2: $02
    and d                                         ; $6db3: $a2
    ret nz                                        ; $6db4: $c0

    ld [c], a                                     ; $6db5: $e2
    add b                                         ; $6db6: $80
    rst $38                                       ; $6db7: $ff
    ld b, [hl]                                    ; $6db8: $46
    ld b, [hl]                                    ; $6db9: $46
    ld b, h                                       ; $6dba: $44
    inc a                                         ; $6dbb: $3c
    dec [hl]                                      ; $6dbc: $35
    dec [hl]                                      ; $6dbd: $35
    add hl, sp                                    ; $6dbe: $39
    ld d, d                                       ; $6dbf: $52
    ccf                                           ; $6dc0: $3f
    ld d, h                                       ; $6dc1: $54
    ld e, c                                       ; $6dc2: $59
    ld d, e                                       ; $6dc3: $53
    ld b, l                                       ; $6dc4: $45
    add e                                         ; $6dc5: $83
    ld l, l                                       ; $6dc6: $6d
    cp h                                          ; $6dc7: $bc
    add h                                         ; $6dc8: $84
    ei                                            ; $6dc9: $fb
    ld h, c                                       ; $6dca: $61
    ld hl, sp+$00                                 ; $6dcb: $f8 $00
    sbc c                                         ; $6dcd: $99
    ld [bc], a                                    ; $6dce: $02
    and c                                         ; $6dcf: $a1
    add b                                         ; $6dd0: $80
    db $e3                                        ; $6dd1: $e3
    add d                                         ; $6dd2: $82
    add e                                         ; $6dd3: $83
    ld b, [hl]                                    ; $6dd4: $46
    ld b, b                                       ; $6dd5: $40
    dec [hl]                                      ; $6dd6: $35
    rst $38                                       ; $6dd7: $ff
    dec [hl]                                      ; $6dd8: $35
    dec [hl]                                      ; $6dd9: $35
    ld a, [hl-]                                   ; $6dda: $3a
    ld b, h                                       ; $6ddb: $44
    ld b, l                                       ; $6ddc: $45
    ld b, [hl]                                    ; $6ddd: $46
    ld b, [hl]                                    ; $6dde: $46
    add e                                         ; $6ddf: $83
    dec bc                                        ; $6de0: $0b
    ld l, a                                       ; $6de1: $6f
    add h                                         ; $6de2: $84
    ld a, c                                       ; $6de3: $79
    ld b, d                                       ; $6de4: $42
    sbc h                                         ; $6de5: $9c
    ei                                            ; $6de6: $fb
    ld h, d                                       ; $6de7: $62
    nop                                           ; $6de8: $00
    sbc c                                         ; $6de9: $99
    rst $08                                       ; $6dea: $cf
    ld h, d                                       ; $6deb: $62
    ld d, a                                       ; $6dec: $57
    and d                                         ; $6ded: $a2
    scf                                           ; $6dee: $37
    add h                                         ; $6def: $84
    ld l, a                                       ; $6df0: $6f
    add e                                         ; $6df1: $83
    ld b, b                                       ; $6df2: $40
    pop hl                                        ; $6df3: $e1
    dec [hl]                                      ; $6df4: $35
    ld b, b                                       ; $6df5: $40
    pop bc                                        ; $6df6: $c1
    rst $20                                       ; $6df7: $e7
    ld a, [hl]                                    ; $6df8: $7e
    and b                                         ; $6df9: $a0
    ldh a, [$38]                                  ; $6dfa: $f0 $38
    ld h, c                                       ; $6dfc: $61
    nop                                           ; $6dfd: $00
    ld e, h                                       ; $6dfe: $5c
    ld a, $c1                                     ; $6dff: $3e $c1
    cp a                                          ; $6e01: $bf
    ld [c], a                                     ; $6e02: $e2
    adc c                                         ; $6e03: $89
    ld b, [hl]                                    ; $6e04: $46
    ld a, $35                                     ; $6e05: $3e $35
    rlca                                          ; $6e07: $07
    dec [hl]                                      ; $6e08: $35
    inc a                                         ; $6e09: $3c
    ld b, h                                       ; $6e0a: $44
    pop bc                                        ; $6e0b: $c1
    rst $20                                       ; $6e0c: $e7
    rst $20                                       ; $6e0d: $e7
    jp $5c00                                      ; $6e0e: $c3 $00 $5c


    sub l                                         ; $6e11: $95
    ld b, b                                       ; $6e12: $40
    ret nz                                        ; $6e13: $c0

    db $e3                                        ; $6e14: $e3
    inc a                                         ; $6e15: $3c
    cp $c0                                        ; $6e16: $fe $c0
    add b                                         ; $6e18: $80
    ret nz                                        ; $6e19: $c0

    ld a, [hl-]                                   ; $6e1a: $3a
    ld b, l                                       ; $6e1b: $45
    ld b, [hl]                                    ; $6e1c: $46
    adc b                                         ; $6e1d: $88
    pop bc                                        ; $6e1e: $c1
    push hl                                       ; $6e1f: $e5
    cp [hl]                                       ; $6e20: $be
    add b                                         ; $6e21: $80
    sub e                                         ; $6e22: $93
    cp a                                          ; $6e23: $bf
    ret nz                                        ; $6e24: $c0

    nop                                           ; $6e25: $00
    ld e, l                                       ; $6e26: $5d
    ret nc                                        ; $6e27: $d0

    ld b, c                                       ; $6e28: $41
    sbc d                                         ; $6e29: $9a
    adc b                                         ; $6e2a: $88
    ld h, d                                       ; $6e2b: $62
    ret nz                                        ; $6e2c: $c0

    ld [c], a                                     ; $6e2d: $e2
    add hl, sp                                    ; $6e2e: $39
    add hl, de                                    ; $6e2f: $19
    ld b, [hl]                                    ; $6e30: $46
    add h                                         ; $6e31: $84
    push bc                                       ; $6e32: $c5
    ld a, l                                       ; $6e33: $7d
    ld h, d                                       ; $6e34: $62
    pop bc                                        ; $6e35: $c1
    jp nz, Jump_072_5d00                          ; $6e36: $c2 $00 $5d

    ld b, [hl]                                    ; $6e39: $46
    ld h, e                                       ; $6e3a: $63
    adc b                                         ; $6e3b: $88
    ld h, b                                       ; $6e3c: $60
    jp $8b79                                      ; $6e3d: $c3 $79 $8b


    ld b, b                                       ; $6e40: $40
    ret nz                                        ; $6e41: $c0

    ld b, c                                       ; $6e42: $41
    ldh [$c0], a                                  ; $6e43: $e0 $c0
    and $82                                       ; $6e45: $e6 $82
    pop bc                                        ; $6e47: $c1
    jp Jump_000_08c4                              ; $6e48: $c3 $c4 $08


    nop                                           ; $6e4b: $00
    ld e, h                                       ; $6e4c: $5c
    ld d, c                                       ; $6e4d: $51
    inc hl                                        ; $6e4e: $23
    ld a, h                                       ; $6e4f: $7c
    and c                                         ; $6e50: $a1
    add b                                         ; $6e51: $80
    ld b, b                                       ; $6e52: $40
    pop bc                                        ; $6e53: $c1
    ld b, c                                       ; $6e54: $41
    ldh [rLY], a                                  ; $6e55: $e0 $44
    ret nz                                        ; $6e57: $c0

    ld a, [$0042]                                 ; $6e58: $fa $42 $00
    ld a, l                                       ; $6e5b: $7d
    ld b, d                                       ; $6e5c: $42
    nop                                           ; $6e5d: $00
    ld e, l                                       ; $6e5e: $5d
    dec d                                         ; $6e5f: $15
    ld hl, $81fb                                  ; $6e60: $21 $fb $81
    ld a, $60                                     ; $6e63: $3e $60
    ld b, c                                       ; $6e65: $41
    db $e4                                        ; $6e66: $e4
    ld b, h                                       ; $6e67: $44
    pop bc                                        ; $6e68: $c1
    ld a, [$8041]                                 ; $6e69: $fa $41 $80
    ld a, $40                                     ; $6e6c: $3e $40
    cp d                                          ; $6e6e: $ba
    jr nz, jr_072_6e71                            ; $6e6f: $20 $00

jr_072_6e71:
    ld e, l                                       ; $6e71: $5d
    cp a                                          ; $6e72: $bf
    add c                                         ; $6e73: $81
    ei                                            ; $6e74: $fb
    add c                                         ; $6e75: $81
    sub e                                         ; $6e76: $93
    ld h, b                                       ; $6e77: $60
    pop bc                                        ; $6e78: $c1
    ret nz                                        ; $6e79: $c0

    jr c, jr_072_6e8f                             ; $6e7a: $38 $13

    scf                                           ; $6e7c: $37
    ld b, l                                       ; $6e7d: $45
    dec b                                         ; $6e7e: $05
    jp nz, Jump_072_41fa                          ; $6e7f: $c2 $fa $41

    sbc h                                         ; $6e82: $9c
    xor a                                         ; $6e83: $af
    ld [hl+], a                                   ; $6e84: $22
    nop                                           ; $6e85: $00
    ld e, l                                       ; $6e86: $5d
    call nz, $8ae2                                ; $6e87: $c4 $e2 $8a
    ld d, d                                       ; $6e8a: $52
    ld hl, $bf9c                                  ; $6e8b: $21 $9c $bf
    and b                                         ; $6e8e: $a0

jr_072_6e8f:
    ld b, l                                       ; $6e8f: $45
    ld b, e                                       ; $6e90: $43
    ldh [$c6], a                                  ; $6e91: $e0 $c6
    and d                                         ; $6e93: $a2
    cp e                                          ; $6e94: $bb
    ld b, c                                       ; $6e95: $41
    sbc [hl]                                      ; $6e96: $9e
    nop                                           ; $6e97: $00
    scf                                           ; $6e98: $37
    ld [hl+], a                                   ; $6e99: $22
    nop                                           ; $6e9a: $00
    ld e, h                                       ; $6e9b: $5c
    ld d, $25                                     ; $6e9c: $16 $25
    cp h                                          ; $6e9e: $bc
    add c                                         ; $6e9f: $81
    cp a                                          ; $6ea0: $bf
    and b                                         ; $6ea1: $a0
    dec b                                         ; $6ea2: $05
    ret z                                         ; $6ea3: $c8

    cp a                                          ; $6ea4: $bf
    ld [hl+], a                                   ; $6ea5: $22
    scf                                           ; $6ea6: $37
    ld [bc], a                                    ; $6ea7: $02
    ld [hl], b                                    ; $6ea8: $70
    nop                                           ; $6ea9: $00
    ld e, b                                       ; $6eaa: $58
    inc c                                         ; $6eab: $0c
    ld [hl+], a                                   ; $6eac: $22
    inc b                                         ; $6ead: $04
    ld b, h                                       ; $6eae: $44
    ld a, [hl]                                    ; $6eaf: $7e
    and b                                         ; $6eb0: $a0
    add l                                         ; $6eb1: $85
    add [hl]                                      ; $6eb2: $86
    add l                                         ; $6eb3: $85
    dec b                                         ; $6eb4: $05
    add $c0                                       ; $6eb5: $c6 $c0
    ld b, d                                       ; $6eb7: $42
    call nz, $db00                                ; $6eb8: $c4 $00 $db
    sub h                                         ; $6ebb: $94

Jump_072_6ebc:
    ld bc, $4704                                  ; $6ebc: $01 $04 $47
    ld a, h                                       ; $6ebf: $7c
    ld c, h                                       ; $6ec0: $4c
    ret nz                                        ; $6ec1: $c0

    ld b, b                                       ; $6ec2: $40
    jp $e0c4                                      ; $6ec3: $c3 $c4 $e0


    nop                                           ; $6ec6: $00
    db $db                                        ; $6ec7: $db
    call nz, $4da2                                ; $6ec8: $c4 $a2 $4d
    jr nz, jr_072_6f19                            ; $6ecb: $20 $4c

    ld h, b                                       ; $6ecd: $60
    cp e                                          ; $6ece: $bb
    xor $ac                                       ; $6ecf: $ee $ac
    ld b, [hl]                                    ; $6ed1: $46
    sbc h                                         ; $6ed2: $9c
    ldh a, [$6e]                                  ; $6ed3: $f0 $6e
    nop                                           ; $6ed5: $00
    nop                                           ; $6ed6: $00
    jp c, Jump_072_6202                           ; $6ed7: $da $02 $62

    adc [hl]                                      ; $6eda: $8e
    jr nz, jr_072_6f22                            ; $6edb: $20 $45

    ld [hl], $a3                                  ; $6edd: $36 $a3
    ld [hl], $80                                  ; $6edf: $36 $80

Jump_072_6ee1:
    cp a                                          ; $6ee1: $bf
    db $ec                                        ; $6ee2: $ec
    cp $20                                        ; $6ee3: $fe $20
    ld b, b                                       ; $6ee5: $40
    ld hl, $b002                                  ; $6ee6: $21 $02 $b0
    nop                                           ; $6ee9: $00
    ld b, a                                       ; $6eea: $47
    ld [bc], a                                    ; $6eeb: $02
    ld h, b                                       ; $6eec: $60
    jp nz, Jump_072_4542                          ; $6eed: $c2 $42 $45

    ld l, a                                       ; $6ef0: $6f
    ld [hl], $62                                  ; $6ef1: $36 $62
    and h                                         ; $6ef3: $a4
    ld h, [hl]                                    ; $6ef4: $66
    cp a                                          ; $6ef5: $bf
    db $ec                                        ; $6ef6: $ec
    xor h                                         ; $6ef7: $ac
    xor h                                         ; $6ef8: $ac
    ld a, $00                                     ; $6ef9: $3e $00
    ldh [$a5], a                                  ; $6efb: $e0 $a5
    ret nz                                        ; $6efd: $c0

    nop                                           ; $6efe: $00
    reti                                          ; $6eff: $d9


    ld [bc], a                                    ; $6f00: $02
    ld h, b                                       ; $6f01: $60
    jp nz, $c141                                  ; $6f02: $c2 $41 $c1

    ldh [$67], a                                  ; $6f05: $e0 $67
    and b                                         ; $6f07: $a0
    ld l, b                                       ; $6f08: $68
    add d                                         ; $6f09: $82
    cp a                                          ; $6f0a: $bf
    db $e3                                        ; $6f0b: $e3
    sbc d                                         ; $6f0c: $9a
    or [hl]                                       ; $6f0d: $b6
    jp Jump_072_6686                              ; $6f0e: $c3 $86 $66


    nop                                           ; $6f11: $00
    jp c, $2091                                   ; $6f12: $da $91 $20

    add h                                         ; $6f15: $84
    add c                                         ; $6f16: $81
    ld b, d                                       ; $6f17: $42
    rra                                           ; $6f18: $1f

jr_072_6f19:
    and l                                         ; $6f19: $a5
    and [hl]                                      ; $6f1a: $a6
    ld l, h                                       ; $6f1b: $6c
    dec [hl]                                      ; $6f1c: $35
    dec [hl]                                      ; $6f1d: $35
    cp a                                          ; $6f1e: $bf
    ld [c], a                                     ; $6f1f: $e2
    adc h                                         ; $6f20: $8c
    and c                                         ; $6f21: $a1

jr_072_6f22:
    or h                                          ; $6f22: $b4
    inc bc                                        ; $6f23: $03
    ld hl, sp-$7a                                 ; $6f24: $f8 $86
    ld h, e                                       ; $6f26: $63
    nop                                           ; $6f27: $00
    sbc $c0                                       ; $6f28: $de $c0
    pop bc                                        ; $6f2a: $c1
    ld b, l                                       ; $6f2b: $45
    ld [hl], $6e                                  ; $6f2c: $36 $6e
    ld l, a                                       ; $6f2e: $6f
    ld l, h                                       ; $6f2f: $6c
    ccf                                           ; $6f30: $3f
    dec [hl]                                      ; $6f31: $35
    and b                                         ; $6f32: $a0
    and a                                         ; $6f33: $a7
    xor b                                         ; $6f34: $a8
    ld [hl], $45                                  ; $6f35: $36 $45
    adc h                                         ; $6f37: $8c
    and d                                         ; $6f38: $a2
    ld a, [c]                                     ; $6f39: $f2
    ld b, d                                       ; $6f3a: $42
    ret nz                                        ; $6f3b: $c0

    jp nz, $a6a1                                  ; $6f3c: $c2 $a1 $a6

    nop                                           ; $6f3f: $00
    ld [bc], a                                    ; $6f40: $02
    or b                                          ; $6f41: $b0
    nop                                           ; $6f42: $00
    adc c                                         ; $6f43: $89
    ldh [$a1], a                                  ; $6f44: $e0 $a1
    cp a                                          ; $6f46: $bf
    db $e4                                        ; $6f47: $e4
    ld l, h                                       ; $6f48: $6c
    ld l, a                                       ; $6f49: $6f
    daa                                           ; $6f4a: $27
    ld l, [hl]                                    ; $6f4b: $6e
    ld [hl], $45                                  ; $6f4c: $36 $45
    adc h                                         ; $6f4e: $8c
    and d                                         ; $6f4f: $a2
    or d                                          ; $6f50: $b2
    ld b, c                                       ; $6f51: $41
    adc a                                         ; $6f52: $8f
    add [hl]                                      ; $6f53: $86
    ld h, e                                       ; $6f54: $63
    ld [bc], a                                    ; $6f55: $02
    or c                                          ; $6f56: $b1
    ret nz                                        ; $6f57: $c0

    nop                                           ; $6f58: $00
    ld c, c                                       ; $6f59: $49
    pop bc                                        ; $6f5a: $c1
    ld hl, $00d9                                  ; $6f5b: $21 $d9 $00
    ld a, [hl]                                    ; $6f5e: $7e
    pop hl                                        ; $6f5f: $e1
    pop bc                                        ; $6f60: $c1
    pop hl                                        ; $6f61: $e1
    call $9cc3                                    ; $6f62: $cd $c3 $9c
    adc a                                         ; $6f65: $8f
    rlca                                          ; $6f66: $07
    ld b, [hl]                                    ; $6f67: $46
    ld b, [hl]                                    ; $6f68: $46
    adc [hl]                                      ; $6f69: $8e
    ld l, l                                       ; $6f6a: $6d
    ld h, e                                       ; $6f6b: $63
    ld [bc], a                                    ; $6f6c: $02
    or c                                          ; $6f6d: $b1
    nop                                           ; $6f6e: $00
    ld c, c                                       ; $6f6f: $49
    add $84                                       ; $6f70: $c6 $84
    cp a                                          ; $6f72: $bf
    pop hl                                        ; $6f73: $e1
    inc c                                         ; $6f74: $0c
    pop bc                                        ; $6f75: $c1
    ld [c], a                                     ; $6f76: $e2
    ld d, b                                       ; $6f77: $50
    and d                                         ; $6f78: $a2
    sbc h                                         ; $6f79: $9c
    adc [hl]                                      ; $6f7a: $8e
    ret nz                                        ; $6f7b: $c0

    db $e3                                        ; $6f7c: $e3
    ld h, h                                       ; $6f7d: $64
    and b                                         ; $6f7e: $a0
    ld [bc], a                                    ; $6f7f: $02
    or c                                          ; $6f80: $b1
    nop                                           ; $6f81: $00
    ld c, e                                       ; $6f82: $4b
    ld b, [hl]                                    ; $6f83: $46
    pop bc                                        ; $6f84: $c1
    inc h                                         ; $6f85: $24
    ld b, l                                       ; $6f86: $45
    ld [hl], $82                                  ; $6f87: $36 $82
    ld [c], a                                     ; $6f89: $e2
    cpl                                           ; $6f8a: $2f
    pop bc                                        ; $6f8b: $c1
    ret nz                                        ; $6f8c: $c0

    ld [c], a                                     ; $6f8d: $e2
    adc a                                         ; $6f8e: $8f
    inc bc                                        ; $6f8f: $03
    add e                                         ; $6f90: $83
    add b                                         ; $6f91: $80
    ld [bc], a                                    ; $6f92: $02
    ld [hl], c                                    ; $6f93: $71
    nop                                           ; $6f94: $00
    ld c, e                                       ; $6f95: $4b
    jp nz, $bf61                                  ; $6f96: $c2 $61 $bf

    ld [c], a                                     ; $6f99: $e2
    ld b, e                                       ; $6f9a: $43
    ldh [$92], a                                  ; $6f9b: $e0 $92
    ld h, c                                       ; $6f9d: $61
    or d                                          ; $6f9e: $b2
    ld b, b                                       ; $6f9f: $40
    sbc [hl]                                      ; $6fa0: $9e
    pop bc                                        ; $6fa1: $c1
    adc [hl]                                      ; $6fa2: $8e
    ccf                                           ; $6fa3: $3f
    pop hl                                        ; $6fa4: $e1
    add h                                         ; $6fa5: $84
    ld [bc], a                                    ; $6fa6: $02
    ld [bc], a                                    ; $6fa7: $02
    ld [hl], c                                    ; $6fa8: $71
    nop                                           ; $6fa9: $00
    ld c, e                                       ; $6faa: $4b
    jp nz, $4661                                  ; $6fab: $c2 $61 $46

    sbc l                                         ; $6fae: $9d
    ld [bc], a                                    ; $6faf: $02
    cp a                                          ; $6fb0: $bf
    add b                                         ; $6fb1: $80
    sbc e                                         ; $6fb2: $9b
    adc a                                         ; $6fb3: $8f
    db $e4                                        ; $6fb4: $e4
    ldh a, [rSB]                                  ; $6fb5: $f0 $01
    ld a, a                                       ; $6fb7: $7f
    pop hl                                        ; $6fb8: $e1
    cp $c2                                        ; $6fb9: $fe $c2
    ld [bc], a                                    ; $6fbb: $02
    ld [hl], c                                    ; $6fbc: $71
    nop                                           ; $6fbd: $00
    ld c, e                                       ; $6fbe: $4b
    nop                                           ; $6fbf: $00
    ld hl, $0c22                                  ; $6fc0: $21 $22 $0c
    and h                                         ; $6fc3: $a4
    ld [hl], $82                                  ; $6fc4: $36 $82
    ldh a, [rSC]                                  ; $6fc6: $f0 $02

Jump_072_6fc8:
    cp [hl]                                       ; $6fc8: $be
    push bc                                       ; $6fc9: $c5
    ld [bc], a                                    ; $6fca: $02
    ld [hl], c                                    ; $6fcb: $71
    nop                                           ; $6fcc: $00
    ld c, [hl]                                    ; $6fcd: $4e
    or $85                                        ; $6fce: $f6 $85
    ret nz                                        ; $6fd0: $c0

    xor $47                                       ; $6fd1: $ee $47
    cp [hl]                                       ; $6fd3: $be
    call nz, Call_000_2f06                        ; $6fd4: $c4 $06 $2f
    nop                                           ; $6fd7: $00
    ld d, c                                       ; $6fd8: $51
    or $85                                        ; $6fd9: $f6 $85
    ldh a, [rNR52]                                ; $6fdb: $f0 $26
    cp a                                          ; $6fdd: $bf
    ret nz                                        ; $6fde: $c0

    daa                                           ; $6fdf: $27

Jump_072_6fe0:
    sbc h                                         ; $6fe0: $9c
    adc [hl]                                      ; $6fe1: $8e
    adc a                                         ; $6fe2: $8f
    ld b, b                                       ; $6fe3: $40
    pop hl                                        ; $6fe4: $e1
    ld b, $23                                     ; $6fe5: $06 $23
    ld b, [hl]                                    ; $6fe7: $46
    nop                                           ; $6fe8: $00
    ld e, h                                       ; $6fe9: $5c
    or $84                                        ; $6fea: $f6 $84
    inc c                                         ; $6fec: $0c
    ld d, $66                                     ; $6fed: $16 $66
    dec c                                         ; $6fef: $0d
    ld b, b                                       ; $6ff0: $40
    sbc h                                         ; $6ff1: $9c
    adc [hl]                                      ; $6ff2: $8e
    rst $38                                       ; $6ff3: $ff
    ldh [rSC], a                                  ; $6ff4: $e0 $02
    add c                                         ; $6ff6: $81
    nop                                           ; $6ff7: $00
    db $dd                                        ; $6ff8: $dd
    db $fc                                        ; $6ff9: $fc
    add hl, hl                                    ; $6ffa: $29
    ld h, [hl]                                    ; $6ffb: $66
    ld [$c386], a                                 ; $6ffc: $ea $86 $c3
    call nz, $e4c0                                ; $6fff: $c4 $c0 $e4
    ld [bc], a                                    ; $7002: $02
    ld [hl], e                                    ; $7003: $73
    ret nc                                        ; $7004: $d0

    pop de                                        ; $7005: $d1
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    rrca                                          ; $7009: $0f
    dec c                                         ; $700a: $0d
    ld c, $0e                                     ; $700b: $0e $0e
    ld c, $fc                                     ; $700d: $0e $fc
    rst $38                                       ; $700f: $ff
    ld hl, sp-$09                                 ; $7010: $f8 $f7
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    nop                                           ; $7016: $00
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    or $f5                                        ; $701d: $f6 $f5
    ld a, [de]                                    ; $701f: $1a
    rst $38                                       ; $7020: $ff
    cp $df                                        ; $7021: $fe $df
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    nop                                           ; $7027: $00
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    ld [bc], a                                    ; $702e: $02
    rst $38                                       ; $702f: $ff
    db $fc                                        ; $7030: $fc
    rst $38                                       ; $7031: $ff
    ld [bc], a                                    ; $7032: $02
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    nop                                           ; $7038: $00
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    ld e, $fc                                     ; $703f: $1e $fc
    rst $38                                       ; $7041: $ff
    push hl                                       ; $7042: $e5
    cp $df                                        ; $7043: $fe $df
    and h                                         ; $7045: $a4
    di                                            ; $7046: $f3
    add $e1                                       ; $7047: $c6 $e1
    nop                                           ; $7049: $00
    pop bc                                        ; $704a: $c1
    db $e3                                        ; $704b: $e3
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    ret nz                                        ; $704e: $c0

    or $d8                                        ; $704f: $f6 $d8
    rst $38                                       ; $7051: $ff
    inc h                                         ; $7052: $24
    ld sp, hl                                     ; $7053: $f9
    ret nz                                        ; $7054: $c0

    ei                                            ; $7055: $fb
    ld a, [bc]                                    ; $7056: $0a
    ld hl, sp+$01                                 ; $7057: $f8 $01
    pop hl                                        ; $7059: $e1
    ld [hl], b                                    ; $705a: $70
    dec a                                         ; $705b: $3d
    jp hl                                         ; $705c: $e9


    ld a, [$aad2]                                 ; $705d: $fa $d2 $aa
    or $c0                                        ; $7060: $f6 $c0
    and $4d                                       ; $7062: $e6 $4d
    dec l                                         ; $7064: $2d
    dec l                                         ; $7065: $2d
    rst $38                                       ; $7066: $ff
    jp Jump_000_383c                              ; $7067: $c3 $3c $38


    rst $38                                       ; $706a: $ff
    ret nz                                        ; $706b: $c0

    rst $28                                       ; $706c: $ef
    dec c                                         ; $706d: $0d
    dec c                                         ; $706e: $0d
    ld l, l                                       ; $706f: $6d
    dec c                                         ; $7070: $0d
    cp [hl]                                       ; $7071: $be
    ldh [$c0], a                                  ; $7072: $e0 $c0
    rst $38                                       ; $7074: $ff
    or $80                                        ; $7075: $f6 $80
    rst $28                                       ; $7077: $ef
    ld c, l                                       ; $7078: $4d
    ld c, l                                       ; $7079: $4d
    db $fd                                        ; $707a: $fd
    ldh [rKEY1], a                                ; $707b: $e0 $4d
    ld l, l                                       ; $707d: $6d
    dec bc                                        ; $707e: $0b
    dec c                                         ; $707f: $0d
    adc a                                         ; $7080: $8f
    dec c                                         ; $7081: $0d
    dec bc                                        ; $7082: $0b
    ld c, l                                       ; $7083: $4d
    dec l                                         ; $7084: $2d
    ld a, d                                       ; $7085: $7a
    ret c                                         ; $7086: $d8

    db $10                                        ; $7087: $10
    rrc h                                         ; $7088: $cb $0c
    add $6d                                       ; $708a: $c6 $6d
    rrca                                          ; $708c: $0f
    dec c                                         ; $708d: $0d
    dec bc                                        ; $708e: $0b
    dec c                                         ; $708f: $0d
    dec bc                                        ; $7090: $0b
    rst $38                                       ; $7091: $ff
    push hl                                       ; $7092: $e5
    ld a, [hl]                                    ; $7093: $7e
    ld [c], a                                     ; $7094: $e2
    add b                                         ; $7095: $80
    db $e4                                        ; $7096: $e4
    cp $dd                                        ; $7097: $fe $dd
    add b                                         ; $7099: $80
    call z, $88a0                                 ; $709a: $cc $a0 $88
    db $e3                                        ; $709d: $e3
    add [hl]                                      ; $709e: $86
    pop hl                                        ; $709f: $e1
    cp [hl]                                       ; $70a0: $be
    db $e4                                        ; $70a1: $e4
    ei                                            ; $70a2: $fb
    ret nz                                        ; $70a3: $c0

    ld c, e                                       ; $70a4: $4b
    rst $38                                       ; $70a5: $ff
    ld [hl], b                                    ; $70a6: $70
    and l                                         ; $70a7: $a5
    ld l, l                                       ; $70a8: $6d
    inc b                                         ; $70a9: $04
    jp z, $c0e6                                   ; $70aa: $ca $e6 $c0

    rst $20                                       ; $70ad: $e7
    dec c                                         ; $70ae: $0d
    ret nz                                        ; $70af: $c0

    rst $38                                       ; $70b0: $ff
    adc [hl]                                      ; $70b1: $8e
    and l                                         ; $70b2: $a5
    ld b, a                                       ; $70b3: $47
    ldh [$8a], a                                  ; $70b4: $e0 $8a
    push hl                                       ; $70b6: $e5
    ld b, b                                       ; $70b7: $40
    and $03                                       ; $70b8: $e6 $03
    dec bc                                        ; $70ba: $0b
    dec c                                         ; $70bb: $0d
    ld a, h                                       ; $70bc: $7c
    call nz, $dd00                                ; $70bd: $c4 $00 $dd
    sub b                                         ; $70c0: $90
    jp nz, $e7c9                                  ; $70c1: $c2 $c9 $e7

    ld a, d                                       ; $70c4: $7a
    rst $20                                       ; $70c5: $e7
    inc a                                         ; $70c6: $3c
    ret nz                                        ; $70c7: $c0

    nop                                           ; $70c8: $00
    db $fc                                        ; $70c9: $fc
    or d                                          ; $70ca: $b2
    ld a, [bc]                                    ; $70cb: $0a

jr_072_70cc:
    call $e108                                    ; $70cc: $cd $08 $e1
    ret nz                                        ; $70cf: $c0

    db $f4                                        ; $70d0: $f4
    ld [hl], h                                    ; $70d1: $74
    cp a                                          ; $70d2: $bf
    sub c                                         ; $70d3: $91
    ld h, b                                       ; $70d4: $60
    adc e                                         ; $70d5: $8b
    jp $c4c6                                      ; $70d6: $c3 $c6 $c4


    nop                                           ; $70d9: $00
    add c                                         ; $70da: $81
    add c                                         ; $70db: $81
    ld a, [hl]                                    ; $70dc: $7e
    ret                                           ; $70dd: $c9


    ret nz                                        ; $70de: $c0

    db $fd                                        ; $70df: $fd
    ld d, c                                       ; $70e0: $51
    add d                                         ; $70e1: $82
    add $c6                                       ; $70e2: $c6 $c6
    jp Jump_072_7ce2                              ; $70e4: $c3 $e2 $7c


    push bc                                       ; $70e7: $c5
    ld a, [hl]                                    ; $70e8: $7e
    jp nz, Jump_072_7610                          ; $70e9: $c2 $10 $76

    sub d                                         ; $70ec: $92
    ld [bc], a                                    ; $70ed: $02
    ld [$e803], a                                 ; $70ee: $ea $03 $e8
    ld b, d                                       ; $70f1: $42
    pop bc                                        ; $70f2: $c1
    dec hl                                        ; $70f3: $2b
    ld [hl], l                                    ; $70f4: $75
    add sp, -$04                                  ; $70f5: $e8 $fc
    and e                                         ; $70f7: $a3
    db $f4                                        ; $70f8: $f4
    ld l, a                                       ; $70f9: $6f
    nop                                           ; $70fa: $00
    sub h                                         ; $70fb: $94
    adc e                                         ; $70fc: $8b
    res 4, [hl]                                   ; $70fd: $cb $a6
    adc c                                         ; $70ff: $89
    and b                                         ; $7100: $a0
    jp nz, $bee0                                  ; $7101: $c2 $e0 $be

    ldh [$34], a                                  ; $7104: $e0 $34
    push hl                                       ; $7106: $e5
    ld a, d                                       ; $7107: $7a
    and d                                         ; $7108: $a2
    ld a, [hl-]                                   ; $7109: $3a
    cp b                                          ; $710a: $b8
    nop                                           ; $710b: $00
    ld hl, $19a2                                  ; $710c: $21 $a2 $19
    ldh [rDIV], a                                 ; $710f: $e0 $04
    push bc                                       ; $7111: $c5
    jp nz, Jump_072_7ee1                          ; $7112: $c2 $e1 $7e

    db $eb                                        ; $7115: $eb
    ret nz                                        ; $7116: $c0

    db $fc                                        ; $7117: $fc
    sub d                                         ; $7118: $92
    add h                                         ; $7119: $84
    add d                                         ; $711a: $82
    and $ff                                       ; $711b: $e6 $ff
    ld c, e                                       ; $711d: $4b
    ld c, e                                       ; $711e: $4b
    ld c, e                                       ; $711f: $4b
    ld l, e                                       ; $7120: $6b
    ld c, e                                       ; $7121: $4b
    ld l, e                                       ; $7122: $6b
    ld a, [bc]                                    ; $7123: $0a
    ld c, d                                       ; $7124: $4a
    ret nz                                        ; $7125: $c0

    jr c, jr_072_70cc                             ; $7126: $38 $a4

    cp h                                          ; $7128: $bc
    and b                                         ; $7129: $a0
    or d                                          ; $712a: $b2
    ld [hl], b                                    ; $712b: $70
    ld [bc], a                                    ; $712c: $02
    xor a                                         ; $712d: $af
    ld b, e                                       ; $712e: $43
    push hl                                       ; $712f: $e5
    ret nz                                        ; $7130: $c0

    ldh [rOCPD], a                                ; $7131: $e0 $6b
    ld a, [bc]                                    ; $7133: $0a
    rrca                                          ; $7134: $0f
    ld a, [hl+]                                   ; $7135: $2a
    ld a, [hl+]                                   ; $7136: $2a
    ld a, [bc]                                    ; $7137: $0a
    ld a, [bc]                                    ; $7138: $0a
    ld hl, sp-$7b                                 ; $7139: $f8 $85
    ld [hl], l                                    ; $713b: $75
    add b                                         ; $713c: $80
    ld [bc], a                                    ; $713d: $02
    cp a                                          ; $713e: $bf
    add b                                         ; $713f: $80
    call nz, $c5fe                                ; $7140: $c4 $fe $c5
    pop bc                                        ; $7143: $c1
    ld c, e                                       ; $7144: $4b
    ld c, e                                       ; $7145: $4b
    dec bc                                        ; $7146: $0b
    ld a, [bc]                                    ; $7147: $0a
    ld a, [hl+]                                   ; $7148: $2a
    ld a, [bc]                                    ; $7149: $0a

jr_072_714a:
    ld a, [hl+]                                   ; $714a: $2a
    add hl, bc                                    ; $714b: $09
    ld c, e                                       ; $714c: $4b
    dec l                                         ; $714d: $2d
    pop hl                                        ; $714e: $e1
    or a                                          ; $714f: $b7
    pop bc                                        ; $7150: $c1
    ld l, l                                       ; $7151: $6d
    ld b, d                                       ; $7152: $42
    cp a                                          ; $7153: $bf
    add b                                         ; $7154: $80
    jp hl                                         ; $7155: $e9


    ret nz                                        ; $7156: $c0

    pop hl                                        ; $7157: $e1
    cp l                                          ; $7158: $bd
    ldh [$3f], a                                  ; $7159: $e0 $3f
    dec hl                                        ; $715b: $2b
    dec l                                         ; $715c: $2d
    dec l                                         ; $715d: $2d
    dec l                                         ; $715e: $2d
    dec hl                                        ; $715f: $2b
    dec hl                                        ; $7160: $2b
    halt                                          ; $7161: $76
    ret nz                                        ; $7162: $c0

    rst $38                                       ; $7163: $ff
    and e                                         ; $7164: $a3
    sbc h                                         ; $7165: $9c
    ret nc                                        ; $7166: $d0

    ld e, [hl]                                    ; $7167: $5e
    ret nz                                        ; $7168: $c0

    and h                                         ; $7169: $a4
    dec c                                         ; $716a: $0d
    ld l, e                                       ; $716b: $6b
    ld l, e                                       ; $716c: $6b
    ld bc, $47e1                                  ; $716d: $01 $e1 $47
    and b                                         ; $7170: $a0
    dec l                                         ; $7171: $2d
    nop                                           ; $7172: $00
    xor $c1                                       ; $7173: $ee $c1
    scf                                           ; $7175: $37
    ret nz                                        ; $7176: $c0

    ld b, c                                       ; $7177: $41
    jp $9ffe                                      ; $7178: $c3 $fe $9f


    add l                                         ; $717b: $85
    add [hl]                                      ; $717c: $86
    ret nz                                        ; $717d: $c0

    ld [c], a                                     ; $717e: $e2
    pop bc                                        ; $717f: $c1
    pop hl                                        ; $7180: $e1
    add d                                         ; $7181: $82
    pop hl                                        ; $7182: $e1
    ld b, b                                       ; $7183: $40
    add b                                         ; $7184: $80
    pop hl                                        ; $7185: $e1
    ld hl, sp+$33                                 ; $7186: $f8 $33
    ld a, $ae                                     ; $7188: $3e $ae
    add h                                         ; $718a: $84
    add h                                         ; $718b: $84
    add b                                         ; $718c: $80
    ldh [$fe], a                                  ; $718d: $e0 $fe
    ret nz                                        ; $718f: $c0

    dec c                                         ; $7190: $0d
    pop bc                                        ; $7191: $c1
    ld [c], a                                     ; $7192: $e2
    nop                                           ; $7193: $00
    or $a1                                        ; $7194: $f6 $a1
    ld b, b                                       ; $7196: $40
    rst $38                                       ; $7197: $ff
    sub d                                         ; $7198: $92
    ld [bc], a                                    ; $7199: $02
    ccf                                           ; $719a: $3f
    ret nz                                        ; $719b: $c0

    add $a1                                       ; $719c: $c6 $a1
    ld b, b                                       ; $719e: $40
    jp $813c                                      ; $719f: $c3 $3c $81


    ld a, h                                       ; $71a2: $7c
    and b                                         ; $71a3: $a0
    nop                                           ; $71a4: $00
    ld bc, $82e1                                  ; $71a5: $01 $e1 $82
    jp nz, $ff00                                  ; $71a8: $c2 $00 $ff

    jp nc, $8542                                  ; $71ab: $d2 $42 $85

    ld h, c                                       ; $71ae: $61
    ld b, b                                       ; $71af: $40
    ret nz                                        ; $71b0: $c0

    ld bc, $b9e1                                  ; $71b1: $01 $e1 $b9
    and c                                         ; $71b4: $a1
    nop                                           ; $71b5: $00
    ld a, b                                       ; $71b6: $78
    and c                                         ; $71b7: $a1
    add d                                         ; $71b8: $82
    push de                                       ; $71b9: $d5
    ld [de], a                                    ; $71ba: $12
    dec l                                         ; $71bb: $2d
    ld c, a                                       ; $71bc: $4f
    ld b, d                                       ; $71bd: $42
    dec b                                         ; $71be: $05
    ld h, c                                       ; $71bf: $61
    ld b, b                                       ; $71c0: $40
    pop bc                                        ; $71c1: $c1
    ld bc, $fae0                                  ; $71c2: $01 $e0 $fa
    ld b, b                                       ; $71c5: $40
    jr c, jr_072_714a                             ; $71c6: $38 $82

    and $00                                       ; $71c8: $e6 $00
    ld e, a                                       ; $71ca: $5f
    ld d, $23                                     ; $71cb: $16 $23
    ld c, l                                       ; $71cd: $4d
    dec l                                         ; $71ce: $2d
    dec hl                                        ; $71cf: $2b
    add c                                         ; $71d0: $81
    pop hl                                        ; $71d1: $e1
    pop bc                                        ; $71d2: $c1
    pop hl                                        ; $71d3: $e1
    nop                                           ; $71d4: $00
    add e                                         ; $71d5: $83
    ret nz                                        ; $71d6: $c0

    ld a, d                                       ; $71d7: $7a
    add d                                         ; $71d8: $82
    ld a, [hl-]                                   ; $71d9: $3a
    ld b, b                                       ; $71da: $40
    ld b, d                                       ; $71db: $42
    rst $38                                       ; $71dc: $ff
    cp h                                          ; $71dd: $bc
    xor b                                         ; $71de: $a8
    pop bc                                        ; $71df: $c1
    ret nz                                        ; $71e0: $c0

    ccf                                           ; $71e1: $3f
    ret nz                                        ; $71e2: $c0

    add e                                         ; $71e3: $83
    jp nz, $f600                                  ; $71e4: $c2 $00 $f6

    add c                                         ; $71e7: $81
    ld b, h                                       ; $71e8: $44
    push de                                       ; $71e9: $d5
    adc [hl]                                      ; $71ea: $8e
    ld de, HeaderDestinationCode                  ; $71eb: $11 $4a $01
    set 4, b                                      ; $71ee: $cb $e0
    ld b, h                                       ; $71f0: $44
    call nz, Call_072_43fa                        ; $71f1: $c4 $fa $43
    ret nz                                        ; $71f4: $c0

    ld sp, hl                                     ; $71f5: $f9
    nop                                           ; $71f6: $00
    ld [bc], a                                    ; $71f7: $02
    db $ec                                        ; $71f8: $ec
    adc h                                         ; $71f9: $8c
    ld [hl+], a                                   ; $71fa: $22
    call nz, $8762                                ; $71fb: $c4 $62 $87
    and h                                         ; $71fe: $a4
    ld b, e                                       ; $71ff: $43
    pop bc                                        ; $7200: $c1
    ld b, l                                       ; $7201: $45
    add h                                         ; $7202: $84
    cp $1a                                        ; $7203: $fe $1a
    ld d, b                                       ; $7205: $50
    inc h                                         ; $7206: $24
    inc b                                         ; $7207: $04
    adc h                                         ; $7208: $8c
    ld [hl+], a                                   ; $7209: $22
    ld a, [bc]                                    ; $720a: $0a
    add c                                         ; $720b: $81
    dec c                                         ; $720c: $0d
    add a                                         ; $720d: $87
    and l                                         ; $720e: $a5
    ld b, c                                       ; $720f: $41
    ld l, b                                       ; $7210: $68
    inc c                                         ; $7211: $0c
    ld a, $04                                     ; $7212: $3e $04
    ld b, [hl]                                    ; $7214: $46
    ld [bc], a                                    ; $7215: $02
    add d                                         ; $7216: $82
    nop                                           ; $7217: $00
    add h                                         ; $7218: $84
    ld [c], a                                     ; $7219: $e2
    jp $73a1                                      ; $721a: $c3 $a1 $73


    ldh [$c0], a                                  ; $721d: $e0 $c0
    rst $38                                       ; $721f: $ff
    push bc                                       ; $7220: $c5
    ld hl, $634c                                  ; $7221: $21 $4c $63
    ld b, a                                       ; $7224: $47
    ld h, d                                       ; $7225: $62
    call z, $0681                                 ; $7226: $cc $81 $06
    inc b                                         ; $7229: $04
    jp Jump_000_2b2b                              ; $722a: $c3 $2b $2b


    inc sp                                        ; $722d: $33
    ldh [$c0], a                                  ; $722e: $e0 $c0
    inc d                                         ; $7230: $14
    ld [bc], a                                    ; $7231: $02
    ld l, h                                       ; $7232: $6c
    sub c                                         ; $7233: $91
    and h                                         ; $7234: $a4
    cp $29                                        ; $7235: $fe $29
    nop                                           ; $7237: $00
    ld a, $62                                     ; $7238: $3e $62
    ld b, e                                       ; $723a: $43
    add c                                         ; $723b: $81
    ld [bc], a                                    ; $723c: $02
    rst $38                                       ; $723d: $ff
    inc c                                         ; $723e: $0c
    ld h, h                                       ; $723f: $64
    cp a                                          ; $7240: $bf
    db $ec                                        ; $7241: $ec
    add hl, sp                                    ; $7242: $39
    ld b, c                                       ; $7243: $41
    push bc                                       ; $7244: $c5
    ld h, l                                       ; $7245: $65
    ld b, d                                       ; $7246: $42
    ld sp, hl                                     ; $7247: $f9
    nop                                           ; $7248: $00
    ld [bc], a                                    ; $7249: $02
    ld b, c                                       ; $724a: $41
    ld d, l                                       ; $724b: $55
    and d                                         ; $724c: $a2
    jp z, $bdc4                                   ; $724d: $ca $c4 $bd

    pop bc                                        ; $7250: $c1
    add [hl]                                      ; $7251: $86
    ld l, c                                       ; $7252: $69
    inc b                                         ; $7253: $04
    ld e, l                                       ; $7254: $5d
    ret nz                                        ; $7255: $c0

    push hl                                       ; $7256: $e5
    ret                                           ; $7257: $c9


    ld b, l                                       ; $7258: $45
    nop                                           ; $7259: $00
    adc h                                         ; $725a: $8c
    and b                                         ; $725b: $a0
    ld a, [c]                                     ; $725c: $f2
    ld b, e                                       ; $725d: $43
    add [hl]                                      ; $725e: $86
    ld h, e                                       ; $725f: $63
    nop                                           ; $7260: $00
    sbc $82                                       ; $7261: $de $82
    ld b, c                                       ; $7263: $41
    adc $61                                       ; $7264: $ce $61
    ld b, c                                       ; $7266: $41
    ld h, h                                       ; $7267: $64
    ld de, $0043                                  ; $7268: $11 $43 $00
    ld b, h                                       ; $726b: $44
    inc hl                                        ; $726c: $23
    sub $10                                       ; $726d: $d6 $10
    cp $50                                        ; $726f: $fe $50
    call c, $bf21                                 ; $7271: $dc $21 $bf
    ld [c], a                                     ; $7274: $e2
    call z, Call_072_43a0                         ; $7275: $cc $a0 $43
    and b                                         ; $7278: $a0
    or d                                          ; $7279: $b2
    ld b, l                                       ; $727a: $45
    add c                                         ; $727b: $81
    ld l, l                                       ; $727c: $6d
    ld b, d                                       ; $727d: $42
    cp a                                          ; $727e: $bf
    and $e5                                       ; $727f: $e6 $e5
    ld [bc], a                                    ; $7281: $02
    ld b, b                                       ; $7282: $40
    ld c, h                                       ; $7283: $4c
    ld h, c                                       ; $7284: $61
    pop bc                                        ; $7285: $c1
    pop hl                                        ; $7286: $e1
    inc c                                         ; $7287: $0c
    db $e4                                        ; $7288: $e4
    ld c, l                                       ; $7289: $4d
    nop                                           ; $728a: $00
    ld b, e                                       ; $728b: $43
    ret nz                                        ; $728c: $c0

    add h                                         ; $728d: $84
    ld [bc], a                                    ; $728e: $02
    ret nz                                        ; $728f: $c0

    rst $38                                       ; $7290: $ff
    ret nz                                        ; $7291: $c0

    db $e3                                        ; $7292: $e3
    cp a                                          ; $7293: $bf
    pop hl                                        ; $7294: $e1
    pop bc                                        ; $7295: $c1
    ld [c], a                                     ; $7296: $e2
    cpl                                           ; $7297: $2f
    push bc                                       ; $7298: $c5
    ld a, l                                       ; $7299: $7d
    ld h, b                                       ; $729a: $60
    add b                                         ; $729b: $80
    ld [$0250], sp                                ; $729c: $08 $50 $02
    ld [hl], c                                    ; $729f: $71
    add b                                         ; $72a0: $80
    ldh [$c1], a                                  ; $72a1: $e0 $c1
    ld hl, $20cb                                  ; $72a3: $21 $cb $20
    add d                                         ; $72a6: $82
    push hl                                       ; $72a7: $e5
    xor [hl]                                      ; $72a8: $ae
    nop                                           ; $72a9: $00
    dec hl                                        ; $72aa: $2b
    ld bc, $eb2b                                  ; $72ab: $01 $2b $eb
    ldh [rTMA], a                                 ; $72ae: $e0 $06
    inc sp                                        ; $72b0: $33
    ld [bc], a                                    ; $72b1: $02
    ld l, [hl]                                    ; $72b2: $6e
    ld b, c                                       ; $72b3: $41
    ld h, e                                       ; $72b4: $63
    ld b, $60                                     ; $72b5: $06 $60
    adc [hl]                                      ; $72b7: $8e
    call nz, $c2ed                                ; $72b8: $c4 $ed $c2
    nop                                           ; $72bb: $00
    ld a, $80                                     ; $72bc: $3e $80
    add h                                         ; $72be: $84
    ld [bc], a                                    ; $72bf: $02
    ld b, d                                       ; $72c0: $42
    rst $38                                       ; $72c1: $ff
    add d                                         ; $72c2: $82
    ld h, e                                       ; $72c3: $63
    ld a, a                                       ; $72c4: $7f
    add d                                         ; $72c5: $82
    or e                                          ; $72c6: $b3
    add e                                         ; $72c7: $83
    ldh a, [rSC]                                  ; $72c8: $f0 $02
    ld a, a                                       ; $72ca: $7f
    ldh [rNR41], a                                ; $72cb: $e0 $20
    cp $c2                                        ; $72cd: $fe $c2
    ret nz                                        ; $72cf: $c0

    rst $38                                       ; $72d0: $ff
    ld b, b                                       ; $72d1: $40
    add [hl]                                      ; $72d2: $86
    ld [hl], $85                                  ; $72d3: $36 $85
    inc sp                                        ; $72d5: $33
    ld h, d                                       ; $72d6: $62
    ld c, l                                       ; $72d7: $4d
    cp $c3                                        ; $72d8: $fe $c3
    adc b                                         ; $72da: $88
    ld a, [de]                                    ; $72db: $1a
    ret nz                                        ; $72dc: $c0

    db $fc                                        ; $72dd: $fc
    dec l                                         ; $72de: $2d
    xor $49                                       ; $72df: $ee $49
    cp [hl]                                       ; $72e1: $be
    jp $df00                                      ; $72e2: $c3 $00 $df


    ld hl, sp+$69                                 ; $72e5: $f8 $69
    db $ec                                        ; $72e7: $ec
    ld l, d                                       ; $72e8: $6a
    ld c, l                                       ; $72e9: $4d
    ld l, l                                       ; $72ea: $6d
    nop                                           ; $72eb: $00
    ret nz                                        ; $72ec: $c0

    ld [c], a                                     ; $72ed: $e2
    ld b, e                                       ; $72ee: $43
    ld a, [de]                                    ; $72ef: $1a
    ret nz                                        ; $72f0: $c0

    ld sp, hl                                     ; $72f1: $f9
    or l                                          ; $72f2: $b5
    ld h, c                                       ; $72f3: $61
    rst $00                                       ; $72f4: $c7
    rst $38                                       ; $72f5: $ff
    db $fc                                        ; $72f6: $fc
    ld a, [hl+]                                   ; $72f7: $2a
    ret nz                                        ; $72f8: $c0

    rst $28                                       ; $72f9: $ef
    ld [bc], a                                    ; $72fa: $02
    or l                                          ; $72fb: $b5
    nop                                           ; $72fc: $00
    nop                                           ; $72fd: $00
    nop                                           ; $72fe: $00
    ld bc, $ff00                                  ; $72ff: $01 $00 $ff
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
    ld [bc], a                                    ; $730f: $02
    db $fd                                        ; $7310: $fd
    db $fc                                        ; $7311: $fc
    rrca                                          ; $7312: $0f
    rst $38                                       ; $7313: $ff
    ld [c], a                                     ; $7314: $e2
    push hl                                       ; $7315: $e5
    ld hl, sp-$21                                 ; $7316: $f8 $df
    or $e6                                        ; $7318: $f6 $e6
    add sp, -$20                                  ; $731a: $e8 $e0
    db $f4                                        ; $731c: $f4
    and b                                         ; $731d: $a0
    ld [c], a                                     ; $731e: $e2
    nop                                           ; $731f: $00
    sbc e                                         ; $7320: $9b
    db $e4                                        ; $7321: $e4
    add a                                         ; $7322: $87
    pop af                                        ; $7323: $f1
    ld a, l                                       ; $7324: $7d
    push hl                                       ; $7325: $e5
    cp a                                          ; $7326: $bf
    ld a, [c]                                     ; $7327: $f2
    ld l, e                                       ; $7328: $6b
    pop hl                                        ; $7329: $e1
    ld l, b                                       ; $732a: $68
    and $e0                                       ; $732b: $e6 $e0
    db $f4                                        ; $732d: $f4
    or e                                          ; $732e: $b3
    ldh a, [$80]                                  ; $732f: $f0 $80
    ldh [$f3], a                                  ; $7331: $e0 $f3
    ld e, [hl]                                    ; $7333: $5e
    ldh a, [$e0]                                  ; $7334: $f0 $e0
    rst $38                                       ; $7336: $ff
    ldh [rIE], a                                  ; $7337: $e0 $ff
    ldh [$fb], a                                  ; $7339: $e0 $fb
    xor c                                         ; $733b: $a9
    ret z                                         ; $733c: $c8

    rst $38                                       ; $733d: $ff
    jp c, Jump_000_000f                           ; $733e: $da $0f $00

    ldh [$d5], a                                  ; $7341: $e0 $d5
    ldh [$e8], a                                  ; $7343: $e0 $e8
    ld c, b                                       ; $7345: $48
    db $d3                                        ; $7346: $d3
    pop hl                                        ; $7347: $e1
    rst $18                                       ; $7348: $df
    ld h, d                                       ; $7349: $62
    ld hl, sp-$3e                                 ; $734a: $f8 $c2
    rst $18                                       ; $734c: $df
    ld b, [hl]                                    ; $734d: $46
    push bc                                       ; $734e: $c5
    ld b, d                                       ; $734f: $42
    ret c                                         ; $7350: $d8

    nop                                           ; $7351: $00
    ldh [$f5], a                                  ; $7352: $e0 $f5
    ld [bc], a                                    ; $7354: $02
    push bc                                       ; $7355: $c5
    ldh [$f8], a                                  ; $7356: $e0 $f8
    add hl, bc                                    ; $7358: $09
    jp nz, $e5f9                                  ; $7359: $c2 $f9 $e5

    ld h, a                                       ; $735c: $67
    or [hl]                                       ; $735d: $b6
    sbc a                                         ; $735e: $9f
    or $9f                                        ; $735f: $f6 $9f
    push bc                                       ; $7361: $c5
    nop                                           ; $7362: $00
    ldh [$f6], a                                  ; $7363: $e0 $f6
    rra                                           ; $7365: $1f
    or l                                          ; $7366: $b5
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    ld bc, $ff00                                  ; $736a: $01 $00 $ff
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
    inc b                                         ; $737a: $04
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    cp $fd                                        ; $737d: $fe $fd
    pop af                                        ; $737f: $f1
    db $e4                                        ; $7380: $e4
    ld sp, hl                                     ; $7381: $f9
    rst $38                                       ; $7382: $ff
    ld [c], a                                     ; $7383: $e2
    db $e3                                        ; $7384: $e3
    ld a, [$f6df]                                 ; $7385: $fa $df $f6
    pop hl                                        ; $7388: $e1
    rst $20                                       ; $7389: $e7
    nop                                           ; $738a: $00
    sbc [hl]                                      ; $738b: $9e
    ld a, [c]                                     ; $738c: $f2
    pop hl                                        ; $738d: $e1
    add sp, -$20                                  ; $738e: $e8 $e0
    cp $df                                        ; $7390: $fe $df
    rst $38                                       ; $7392: $ff
    sbc a                                         ; $7393: $9f
    rst $38                                       ; $7394: $ff
    ldh [rIE], a                                  ; $7395: $e0 $ff
    ldh [rIE], a                                  ; $7397: $e0 $ff
    nop                                           ; $7399: $00
    rst $38                                       ; $739a: $ff
    nop                                           ; $739b: $00
    rst $18                                       ; $739c: $df
    ld a, [c]                                     ; $739d: $f2
    and d                                         ; $739e: $a2
    db $db                                        ; $739f: $db
    ldh [rIE], a                                  ; $73a0: $e0 $ff
    and c                                         ; $73a2: $a1
    db $dd                                        ; $73a3: $dd
    ld [bc], a                                    ; $73a4: $02
    rst $38                                       ; $73a5: $ff
    ld h, $d8                                     ; $73a6: $26 $d8
    ld hl, $e0d5                                  ; $73a8: $21 $d5 $e0
    rst $38                                       ; $73ab: $ff
    ld h, b                                       ; $73ac: $60
    rst $20                                       ; $73ad: $e7
    and e                                         ; $73ae: $a3
    pop hl                                        ; $73af: $e1
    cp b                                          ; $73b0: $b8
    ld sp, hl                                     ; $73b1: $f9
    jp hl                                         ; $73b2: $e9


    sbc h                                         ; $73b3: $9c
    cp c                                          ; $73b4: $b9
    ld e, h                                       ; $73b5: $5c
    cp e                                          ; $73b6: $bb
    inc de                                        ; $73b7: $13
    inc de                                        ; $73b8: $13
    inc a                                         ; $73b9: $3c
    or [hl]                                       ; $73ba: $b6
    inc bc                                        ; $73bb: $03
    db $10                                        ; $73bc: $10
    db $10                                        ; $73bd: $10
    db $fd                                        ; $73be: $fd
    pop hl                                        ; $73bf: $e1
    rst $38                                       ; $73c0: $ff
    db $eb                                        ; $73c1: $eb
    nop                                           ; $73c2: $00
    nop                                           ; $73c3: $00
    nop                                           ; $73c4: $00

jr_072_73c5:
    cp $d5                                        ; $73c5: $fe $d5
    nop                                           ; $73c7: $00
    rst $38                                       ; $73c8: $ff
    ldh [rTIMA], a                                ; $73c9: $e0 $05
    ei                                            ; $73cb: $fb
    ldh [$0b], a                                  ; $73cc: $e0 $0b
    rst $30                                       ; $73ce: $f7
    pop hl                                        ; $73cf: $e1
    nop                                           ; $73d0: $00
    ld [bc], a                                    ; $73d1: $02
    db $eb                                        ; $73d2: $eb
    nop                                           ; $73d3: $00
    jr z, jr_072_73c5                             ; $73d4: $28 $ef

    ldh [$90], a                                  ; $73d6: $e0 $90
    db $eb                                        ; $73d8: $eb
    ldh [$f5], a                                  ; $73d9: $e0 $f5
    nop                                           ; $73db: $00
    ret z                                         ; $73dc: $c8

    ld a, [$e0e5]                                 ; $73dd: $fa $e5 $e0
    add b                                         ; $73e0: $80
    ld [$00e4], a                                 ; $73e1: $ea $e4 $00
    nop                                           ; $73e4: $00
    rla                                           ; $73e5: $17
    nop                                           ; $73e6: $00
    ld bc, $d612                                  ; $73e7: $01 $12 $d6
    ld [c], a                                     ; $73ea: $e2
    ld d, b                                       ; $73eb: $50
    rst $08                                       ; $73ec: $cf
    ldh [$e6], a                                  ; $73ed: $e0 $e6
    pop hl                                        ; $73ef: $e1
    ld [$e2da], a                                 ; $73f0: $ea $da $e2
    db $fd                                        ; $73f3: $fd
    db $e3                                        ; $73f4: $e3
    and $e1                                       ; $73f5: $e6 $e1
    ld d, a                                       ; $73f7: $57
    cpl                                           ; $73f8: $2f
    nop                                           ; $73f9: $00
    inc bc                                        ; $73fa: $03
    ret nz                                        ; $73fb: $c0

    ld [c], a                                     ; $73fc: $e2
    and b                                         ; $73fd: $a0
    xor a                                         ; $73fe: $af
    ldh [$64], a                                  ; $73ff: $e0 $64
    xor e                                         ; $7401: $ab
    ldh [$c7], a                                  ; $7402: $e0 $c7
    call nc, Call_000_2000                        ; $7404: $d4 $00 $20
    ret nz                                        ; $7407: $c0

    ld [c], a                                     ; $7408: $e2
    jp z, $9ce1                                   ; $7409: $ca $e1 $9c

    pop hl                                        ; $740c: $e1
    ld e, a                                       ; $740d: $5f
    nop                                           ; $740e: $00
    ld d, l                                       ; $740f: $55
    ld b, $96                                     ; $7410: $06 $96
    ld [c], a                                     ; $7412: $e2
    ld b, b                                       ; $7413: $40
    adc a                                         ; $7414: $8f
    ldh [$b2], a                                  ; $7415: $e0 $b2
    adc e                                         ; $7417: $8b

jr_072_7418:
    ldh [$a8], a                                  ; $7418: $e0 $a8
    or $e2                                        ; $741a: $f6 $e2
    sbc h                                         ; $741c: $9c
    and h                                         ; $741d: $a4
    db $e3                                        ; $741e: $e3
    ld a, h                                       ; $741f: $7c
    pop hl                                        ; $7420: $e1
    cp a                                          ; $7421: $bf
    nop                                           ; $7422: $00
    inc c                                         ; $7423: $0c
    add b                                         ; $7424: $80
    ld [c], a                                     ; $7425: $e2
    adc [hl]                                      ; $7426: $8e
    pop hl                                        ; $7427: $e1
    ld e, c                                       ; $7428: $59
    ld a, [$e06b]                                 ; $7429: $fa $6b $e0
    ld d, b                                       ; $742c: $50
    add h                                         ; $742d: $84
    ld [c], a                                     ; $742e: $e2
    add b                                         ; $742f: $80
    nop                                           ; $7430: $00
    db $fc                                        ; $7431: $fc
    rst $38                                       ; $7432: $ff
    ret nc                                        ; $7433: $d0

    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    and b                                         ; $7436: $a0
    cp $c2                                        ; $7437: $fe $c2
    ld hl, sp-$78                                 ; $7439: $f8 $88
    ldh a, [$80]                                  ; $743b: $f0 $80
    cp a                                          ; $743d: $bf
    ldh [rNR10], a                                ; $743e: $e0 $10
    ldh [rP1], a                                  ; $7440: $e0 $00
    ret nz                                        ; $7442: $c0

    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    ldh [$fd], a                                  ; $7445: $e0 $fd
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    ld a, [$dcff]                                 ; $7449: $fa $ff $dc
    rst $38                                       ; $744c: $ff
    ldh [rIE], a                                  ; $744d: $e0 $ff
    add c                                         ; $744f: $81
    or a                                          ; $7450: $b7
    cp $08                                        ; $7451: $fe $08
    ldh a, [$f8]                                  ; $7453: $f0 $f8
    push hl                                       ; $7455: $e5
    jr nz, jr_072_7418                            ; $7456: $20 $c0

    ld [hl], c                                    ; $7458: $71
    db $e3                                        ; $7459: $e3
    ld a, a                                       ; $745a: $7f
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    ccf                                           ; $745d: $3f
    rst $38                                       ; $745e: $ff
    cpl                                           ; $745f: $2f
    rst $38                                       ; $7460: $ff
    rra                                           ; $7461: $1f
    rst $38                                       ; $7462: $ff
    sbc a                                         ; $7463: $9f
    rst $38                                       ; $7464: $ff
    ld a, a                                       ; $7465: $7f
    rla                                           ; $7466: $17
    ld a, a                                       ; $7467: $7f
    dec bc                                        ; $7468: $0b
    ld a, a                                       ; $7469: $7f
    ld b, a                                       ; $746a: $47
    ccf                                           ; $746b: $3f
    rlca                                          ; $746c: $07
    rst $38                                       ; $746d: $ff
    rra                                           ; $746e: $1f
    inc bc                                        ; $746f: $03
    rra                                           ; $7470: $1f
    ld [de], a                                    ; $7471: $12
    rrca                                          ; $7472: $0f
    ld bc, $090f                                  ; $7473: $01 $0f $09
    rst $38                                       ; $7476: $ff
    rlca                                          ; $7477: $07
    ld bc, $0007                                  ; $7478: $01 $07 $00
    rlca                                          ; $747b: $07
    inc b                                         ; $747c: $04
    inc bc                                        ; $747d: $03
    jr @+$41                                      ; $747e: $18 $3f

    rst $38                                       ; $7480: $ff
    nop                                           ; $7481: $00
    rst $38                                       ; $7482: $ff
    add c                                         ; $7483: $81
    inc a                                         ; $7484: $3c
    db $10                                        ; $7485: $10
    ld b, h                                       ; $7486: $44
    and $c8                                       ; $7487: $e6 $c8
    ldh [rIE], a                                  ; $7489: $e0 $ff
    ret nz                                        ; $748b: $c0

    nop                                           ; $748c: $00
    ldh [$90], a                                  ; $748d: $e0 $90
    ldh [$80], a                                  ; $748f: $e0 $80
    ldh [rP1], a                                  ; $7491: $e0 $00
    ld a, d                                       ; $7493: $7a
    and d                                         ; $7494: $a2
    ldh [rNR41], a                                ; $7495: $e0 $20
    and b                                         ; $7497: $a0
    ldh [$7b], a                                  ; $7498: $e0 $7b
    rst $38                                       ; $749a: $ff
    rst $30                                       ; $749b: $f7
    rst $38                                       ; $749c: $ff
    jp c, $fde3                                   ; $749d: $da $e3 $fd

    ld [$c0e3], sp                                ; $74a0: $08 $e3 $c0
    and h                                         ; $74a3: $a4
    ld hl, sp-$20                                 ; $74a4: $f8 $e0
    ld hl, sp-$20                                 ; $74a6: $f8 $e0
    db $fc                                        ; $74a8: $fc
    rst $38                                       ; $74a9: $ff
    ldh a, [$fc]                                  ; $74aa: $f0 $fc
    jp nc, $a0fc                                  ; $74ac: $d2 $fc $a0

    db $fc                                        ; $74af: $fc
    ldh [$f8], a                                  ; $74b0: $e0 $f8
    ei                                            ; $74b2: $fb
    db $e4                                        ; $74b3: $e4
    ld hl, sp-$80                                 ; $74b4: $f8 $80
    pop hl                                        ; $74b6: $e1
    rst $38                                       ; $74b7: $ff
    rst $38                                       ; $74b8: $ff
    rst $18                                       ; $74b9: $df
    rst $38                                       ; $74ba: $ff
    cp l                                          ; $74bb: $bd
    ei                                            ; $74bc: $fb
    rst $38                                       ; $74bd: $ff
    jp $e0b6                                      ; $74be: $c3 $b6 $e0


    nop                                           ; $74c1: $00
    rst $20                                       ; $74c2: $e7
    db $fc                                        ; $74c3: $fc
    rst $38                                       ; $74c4: $ff
    db $f4                                        ; $74c5: $f4
    sbc a                                         ; $74c6: $9f
    rst $38                                       ; $74c7: $ff
    add sp, -$01                                  ; $74c8: $e8 $ff
    ld hl, sp-$02                                 ; $74ca: $f8 $fe
    cp $e0                                        ; $74cc: $fe $e0
    or $e0                                        ; $74ce: $f6 $e0

Jump_072_74d0:
    db $fc                                        ; $74d0: $fc
    pop bc                                        ; $74d1: $c1
    rst $38                                       ; $74d2: $ff
    ld a, b                                       ; $74d3: $78
    ldh [$cb], a                                  ; $74d4: $e0 $cb
    jp $c5e2                                      ; $74d6: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $74d9: $f0 $e0
    rst $28                                       ; $74db: $ef
    ld [$40c0], a                                 ; $74dc: $ea $c0 $40
    ld hl, sp-$20                                 ; $74df: $f8 $e0
    ld [$e1d0], a                                 ; $74e1: $ea $d0 $e1
    rst $08                                       ; $74e4: $cf
    jp hl                                         ; $74e5: $e9


    db $fc                                        ; $74e6: $fc
    rst $38                                       ; $74e7: $ff
    pop de                                        ; $74e8: $d1
    cp $a6                                        ; $74e9: $fe $a6
    cp a                                          ; $74eb: $bf
    ld hl, sp-$38                                 ; $74ec: $f8 $c8
    ldh a, [$90]                                  ; $74ee: $f0 $90
    ldh [$a8], a                                  ; $74f0: $e0 $a8
    ld [hl], d                                    ; $74f2: $72
    ldh [rLCDC], a                                ; $74f3: $e0 $40
    db $fd                                        ; $74f5: $fd

jr_072_74f6:
    add b                                         ; $74f6: $80
    db $10                                        ; $74f7: $10
    rst $20                                       ; $74f8: $e7
    pop hl                                        ; $74f9: $e1
    cp $8e                                        ; $74fa: $fe $8e
    ldh a, [$30]                                  ; $74fc: $f0 $30

jr_072_74fe:
    ret nz                                        ; $74fe: $c0

    ld hl, sp-$08                                 ; $74ff: $f8 $f8
    push hl                                       ; $7501: $e5
    ld h, d                                       ; $7502: $62
    pop bc                                        ; $7503: $c1
    db $10                                        ; $7504: $10
    push hl                                       ; $7505: $e5
    xor a                                         ; $7506: $af
    ld a, a                                       ; $7507: $7f
    sbc a                                         ; $7508: $9f
    ld a, a                                       ; $7509: $7f
    ld e, a                                       ; $750a: $5f
    rst $38                                       ; $750b: $ff
    ccf                                           ; $750c: $3f
    ld d, a                                       ; $750d: $57
    ccf                                           ; $750e: $3f
    ld c, e                                       ; $750f: $4b
    ccf                                           ; $7510: $3f
    daa                                           ; $7511: $27
    rra                                           ; $7512: $1f
    rla                                           ; $7513: $17
    rst $38                                       ; $7514: $ff
    rrca                                          ; $7515: $0f
    inc de                                        ; $7516: $13
    rrca                                          ; $7517: $0f
    ld a, [bc]                                    ; $7518: $0a
    rlca                                          ; $7519: $07
    add hl, bc                                    ; $751a: $09
    rlca                                          ; $751b: $07
    dec d                                         ; $751c: $15
    rst $38                                       ; $751d: $ff
    inc bc                                        ; $751e: $03
    dec b                                         ; $751f: $05
    inc bc                                        ; $7520: $03
    inc b                                         ; $7521: $04
    inc bc                                        ; $7522: $03
    ld [bc], a                                    ; $7523: $02
    ld bc, $ef18                                  ; $7524: $01 $18 $ef
    rst $38                                       ; $7527: $ff
    jp Jump_000_3c3c                              ; $7528: $c3 $3c $3c


    sbc d                                         ; $752b: $9a
    add $00                                       ; $752c: $c6 $00
    nop                                           ; $752e: $00
    ld b, b                                       ; $752f: $40
    cp a                                          ; $7530: $bf
    add b                                         ; $7531: $80
    ld b, b                                       ; $7532: $40
    add b                                         ; $7533: $80
    jr nz, jr_072_74f6                            ; $7534: $20 $c0

    and b                                         ; $7536: $a0
    cp $e0                                        ; $7537: $fe $e0
    jr nz, jr_072_74fe                            ; $7539: $20 $c3

    ret nz                                        ; $753b: $c0

    ld d, b                                       ; $753c: $50
    db $f4                                        ; $753d: $f4
    ldh [rNR10], a                                ; $753e: $e0 $10
    push hl                                       ; $7540: $e5
    jp c, Jump_072_64e1                           ; $7541: $da $e1 $64

    pop bc                                        ; $7544: $c1
    xor b                                         ; $7545: $a8
    ldh a, [rIE]                                  ; $7546: $f0 $ff
    ld [$e4f0], a                                 ; $7548: $ea $f0 $e4
    ld hl, sp-$0c                                 ; $754b: $f8 $f4
    ld hl, sp-$2c                                 ; $754d: $f8 $d4
    ld hl, sp-$41                                 ; $754f: $f8 $bf
    and h                                         ; $7551: $a4
    ld hl, sp-$18                                 ; $7552: $f8 $e8
    ldh a, [$e8]                                  ; $7554: $f0 $e8
    ldh a, [rNR10]                                ; $7556: $f0 $10
    jp hl                                         ; $7558: $e9


    jr @+$01                                      ; $7559: $18 $ff

    rst $20                                       ; $755b: $e7
    ld h, [hl]                                    ; $755c: $66
    add c                                         ; $755d: $81
    db $fc                                        ; $755e: $fc
    rst $38                                       ; $755f: $ff
    push af                                       ; $7560: $f5
    cp $e9                                        ; $7561: $fe $e9
    rst $38                                       ; $7563: $ff
    cp $fa                                        ; $7564: $fe $fa
    db $fc                                        ; $7566: $fc
    ld a, [$f9fc]                                 ; $7567: $fa $fc $f9
    cp $f5                                        ; $756a: $fe $f5
    rrca                                          ; $756c: $0f
    cp $fc                                        ; $756d: $fe $fc
    rst $38                                       ; $756f: $ff
    ld c, b                                       ; $7570: $48
    ld [hl+], a                                   ; $7571: $22
    db $eb                                        ; $7572: $eb
    and b                                         ; $7573: $a0
    ldh [$cc], a                                  ; $7574: $e0 $cc
    and e                                         ; $7576: $a3
    ei                                            ; $7577: $fb
    push bc                                       ; $7578: $c5
    db $fc                                        ; $7579: $fc
    pop af                                        ; $757a: $f1
    call $cbe3                                    ; $757b: $cd $e3 $cb
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    db $fd                                        ; $7580: $fd
    cp $d6                                        ; $7581: $fe $d6
    ld hl, sp+$77                                 ; $7583: $f8 $77
    xor b                                         ; $7585: $a8
    ldh a, [$d2]                                  ; $7586: $f0 $d2
    ld [de], a                                    ; $7588: $12
    ldh [$c0], a                                  ; $7589: $e0 $c0
    add b                                         ; $758b: $80
    ld d, b                                       ; $758c: $50
    sub $c0                                       ; $758d: $d6 $c0
    ld a, $20                                     ; $758f: $3e $20
    push bc                                       ; $7591: $c5
    db $dd                                        ; $7592: $dd
    cp $ee                                        ; $7593: $fe $ee
    ldh a, [$b1]                                  ; $7595: $f0 $b1
    ld a, [de]                                    ; $7597: $1a
    ldh [$f8], a                                  ; $7598: $e0 $f8

jr_072_759a:
    push hl                                       ; $759a: $e5
    db $fc                                        ; $759b: $fc
    or d                                          ; $759c: $b2
    and c                                         ; $759d: $a1
    ld d, h                                       ; $759e: $54
    and c                                         ; $759f: $a1
    rst $38                                       ; $75a0: $ff
    ld a, a                                       ; $75a1: $7f
    cp a                                          ; $75a2: $bf
    ld a, a                                       ; $75a3: $7f
    ld l, a                                       ; $75a4: $6f
    ccf                                           ; $75a5: $3f
    rst $38                                       ; $75a6: $ff
    ld e, a                                       ; $75a7: $5f
    ccf                                           ; $75a8: $3f
    cp a                                          ; $75a9: $bf
    rra                                           ; $75aa: $1f
    scf                                           ; $75ab: $37
    rra                                           ; $75ac: $1f
    dec hl                                        ; $75ad: $2b
    rra                                           ; $75ae: $1f
    ld a, a                                       ; $75af: $7f
    ld d, a                                       ; $75b0: $57
    rrca                                          ; $75b1: $0f
    rrca                                          ; $75b2: $0f
    rlca                                          ; $75b3: $07
    dec bc                                        ; $75b4: $0b
    rlca                                          ; $75b5: $07
    ld d, $14                                     ; $75b6: $16 $14
    ldh [rIE], a                                  ; $75b8: $e0 $ff
    dec bc                                        ; $75ba: $0b
    ld bc, $0103                                  ; $75bb: $01 $03 $01
    ld [bc], a                                    ; $75be: $02
    ld bc, $0005                                  ; $75bf: $01 $05 $00
    ld d, l                                       ; $75c2: $55
    db $db                                        ; $75c3: $db
    ld [de], a                                    ; $75c4: $12
    ldh [rSCY], a                                 ; $75c5: $e0 $42
    sub b                                         ; $75c7: $90
    ld [$0ca0], a                                 ; $75c8: $ea $a0 $0c
    ldh [$c0], a                                  ; $75cb: $e0 $c0
    cp $e0                                        ; $75cd: $fe $e0
    rst $00                                       ; $75cf: $c7
    ld b, b                                       ; $75d0: $40
    add b                                         ; $75d1: $80
    and b                                         ; $75d2: $a0
    jr nc, @-$5e                                  ; $75d3: $30 $a0

    jr nz, jr_072_759a                            ; $75d5: $20 $c3

    jp c, $b0e7                                   ; $75d7: $da $e7 $b0

    ldh [rIE], a                                  ; $75da: $e0 $ff
    db $f4                                        ; $75dc: $f4
    ldh [$e8], a                                  ; $75dd: $e0 $e8
    ldh a, [$f8]                                  ; $75df: $f0 $f8
    ldh a, [$d8]                                  ; $75e1: $f0 $d8
    ldh a, [$bf]                                  ; $75e3: $f0 $bf
    xor b                                         ; $75e5: $a8
    ldh a, [$f4]                                  ; $75e6: $f0 $f4
    ldh [$f0], a                                  ; $75e8: $e0 $f0
    ldh [rNR41], a                                ; $75ea: $e0 $20
    rst $00                                       ; $75ec: $c7
    db $db                                        ; $75ed: $db
    ld a, [$e012]                                 ; $75ee: $fa $12 $e0
    sub c                                         ; $75f1: $91
    ld h, b                                       ; $75f2: $60
    ldh [$f6], a                                  ; $75f3: $e0 $f6
    db $fc                                        ; $75f5: $fc
    ld [$fdfc], a                                 ; $75f6: $ea $fc $fd
    rst $38                                       ; $75f9: $ff
    ld hl, sp-$04                                 ; $75fa: $f8 $fc
    ld hl, sp-$06                                 ; $75fc: $f8 $fa
    db $fc                                        ; $75fe: $fc
    or $fc                                        ; $75ff: $f6 $fc
    db $fd                                        ; $7601: $fd
    pop bc                                        ; $7602: $c1
    cp $78                                        ; $7603: $fe $78

jr_072_7605:
    push hl                                       ; $7605: $e5
    inc l                                         ; $7606: $2c
    push af                                       ; $7607: $f5
    nop                                           ; $7608: $00
    and c                                         ; $7609: $a1
    xor $cc                                       ; $760a: $ee $cc
    pop af                                        ; $760c: $f1
    xor d                                         ; $760d: $aa
    ld [bc], a                                    ; $760e: $02
    add c                                         ; $760f: $81

Jump_072_7610:
    rst $38                                       ; $7610: $ff
    and b                                         ; $7611: $a0
    pop bc                                        ; $7612: $c1
    nop                                           ; $7613: $00
    pop bc                                        ; $7614: $c1
    add l                                         ; $7615: $85
    jp $c3a1                                      ; $7616: $c3 $a1 $c3


    rst $38                                       ; $7619: $ff
    nop                                           ; $761a: $00
    add e                                         ; $761b: $83
    dec b                                         ; $761c: $05
    add e                                         ; $761d: $83
    ld b, b                                       ; $761e: $40
    add c                                         ; $761f: $81
    ld b, c                                       ; $7620: $41
    add b                                         ; $7621: $80
    db $f4                                        ; $7622: $f4
    ldh [$a0], a                                  ; $7623: $e0 $a0
    ld [hl], b                                    ; $7625: $70
    ret nz                                        ; $7626: $c0

    ld b, b                                       ; $7627: $40
    ld a, d                                       ; $7628: $7a
    ldh [$d1], a                                  ; $7629: $e0 $d1
    db $fc                                        ; $762b: $fc
    db $ec                                        ; $762c: $ec
    rst $38                                       ; $762d: $ff
    rst $18                                       ; $762e: $df
    ld a, [de]                                    ; $762f: $1a
    rst $38                                       ; $7630: $ff
    add b                                         ; $7631: $80
    ld e, $12                                     ; $7632: $1e $12
    ld [hl], h                                    ; $7634: $74
    add d                                         ; $7635: $82
    ld c, b                                       ; $7636: $48
    nop                                           ; $7637: $00
    rst $38                                       ; $7638: $ff
    ld bc, $5878                                  ; $7639: $01 $78 $58
    rst $38                                       ; $763c: $ff
    ld b, b                                       ; $763d: $40
    add c                                         ; $763e: $81
    add d                                         ; $763f: $82
    pop bc                                        ; $7640: $c1
    rst $38                                       ; $7641: $ff
    jr nz, jr_072_7605                            ; $7642: $20 $c1

    and c                                         ; $7644: $a1
    jp $c385                                      ; $7645: $c3 $85 $c3


    inc b                                         ; $7648: $04
    add e                                         ; $7649: $83
    ld l, a                                       ; $764a: $6f
    ld b, c                                       ; $764b: $41
    add e                                         ; $764c: $83
    ld [bc], a                                    ; $764d: $02
    add c                                         ; $764e: $81
    ld l, l                                       ; $764f: $6d
    add b                                         ; $7650: $80
    add b                                         ; $7651: $80
    and b                                         ; $7652: $a0
    ld sp, $dfe0                                  ; $7653: $31 $e0 $df
    ld d, b                                       ; $7656: $50
    ldh [$e4], a                                  ; $7657: $e0 $e4
    ldh a, [$d0]                                  ; $7659: $f0 $d0
    ret nc                                        ; $765b: $d0

    ld [c], a                                     ; $765c: $e2
    ld b, c                                       ; $765d: $41
    ld e, $3e                                     ; $765e: $1e $3e
    add $81                                       ; $7660: $c6 $81
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    jr nc, jr_072_7666                            ; $7664: $30 $00

jr_072_7666:
    add d                                         ; $7666: $82
    ret nc                                        ; $7667: $d0

    ldh [$a0], a                                  ; $7668: $e0 $a0
    xor c                                         ; $766a: $a9
    rrca                                          ; $766b: $0f
    ld [bc], a                                    ; $766c: $02
    ld bc, $0300                                  ; $766d: $01 $00 $03
    ld [hl], c                                    ; $7670: $71
    xor c                                         ; $7671: $a9
    pop af                                        ; $7672: $f1
    ldh [$60], a                                  ; $7673: $e0 $60
    add sp, $30                                   ; $7675: $e8 $30
    add e                                         ; $7677: $83
    nop                                           ; $7678: $00
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
    nop                                           ; $7689: $00
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
    nop                                           ; $769a: $00
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
    nop                                           ; $76ab: $00
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
    ccf                                           ; $76b8: $3f
    ld bc, $0000                                  ; $76b9: $01 $00 $00
    nop                                           ; $76bc: $00
    push af                                       ; $76bd: $f5
    push bc                                       ; $76be: $c5
    push de                                       ; $76bf: $d5
    push hl                                       ; $76c0: $e5
    ld [$c32f], a                                 ; $76c1: $ea $2f $c3
    ld c, a                                       ; $76c4: $4f
    ld a, $ff                                     ; $76c5: $3e $ff
    ld b, $01                                     ; $76c7: $06 $01
    ld hl, $c330                                  ; $76c9: $21 $30 $c3
    ld [hl+], a                                   ; $76cc: $22
    ld [hl], b                                    ; $76cd: $70
    inc hl                                        ; $76ce: $23
    ld [hl+], a                                   ; $76cf: $22
    ld [hl], b                                    ; $76d0: $70
    inc hl                                        ; $76d1: $23
    ld [hl+], a                                   ; $76d2: $22
    ld [hl], b                                    ; $76d3: $70
    inc hl                                        ; $76d4: $23
    ld [hl+], a                                   ; $76d5: $22
    ld [hl], b                                    ; $76d6: $70
    inc hl                                        ; $76d7: $23
    ld [hl+], a                                   ; $76d8: $22
    ld [hl+], a                                   ; $76d9: $22
    ld [hl+], a                                   ; $76da: $22
    ld [hl+], a                                   ; $76db: $22
    ld a, c                                       ; $76dc: $79
    ld h, $00                                     ; $76dd: $26 $00
    ld l, a                                       ; $76df: $6f
    add hl, hl                                    ; $76e0: $29
    ld bc, $403a                                  ; $76e1: $01 $3a $40
    add hl, bc                                    ; $76e4: $09
    ld a, [hl+]                                   ; $76e5: $2a
    ld h, [hl]                                    ; $76e6: $66
    ld l, a                                       ; $76e7: $6f
    ld a, [hl]                                    ; $76e8: $7e
    cp $fe                                        ; $76e9: $fe $fe
    jr nz, jr_072_76ef                            ; $76eb: $20 $02

    jr jr_072_775f                                ; $76ed: $18 $70

jr_072_76ef:
    add sp, -$02                                  ; $76ef: $e8 $fe
    ld de, $c332                                  ; $76f1: $11 $32 $c3
    push hl                                       ; $76f4: $e5
    ld hl, sp+$02                                 ; $76f5: $f8 $02
    ld [hl], e                                    ; $76f7: $73
    inc hl                                        ; $76f8: $23
    ld [hl], d                                    ; $76f9: $72
    pop hl                                        ; $76fa: $e1
    ld d, h                                       ; $76fb: $54
    ld e, l                                       ; $76fc: $5d
    ld b, $ff                                     ; $76fd: $06 $ff
    ld c, $03                                     ; $76ff: $0e $03
    xor a                                         ; $7701: $af
    ld hl, $c330                                  ; $7702: $21 $30 $c3
    ld [hl], a                                    ; $7705: $77
    ld hl, $c338                                  ; $7706: $21 $38 $c3
    ld [hl], a                                    ; $7709: $77
    inc hl                                        ; $770a: $23

jr_072_770b:
    inc b                                         ; $770b: $04
    ld a, [de]                                    ; $770c: $1a
    inc de                                        ; $770d: $13
    cp $fe                                        ; $770e: $fe $fe
    jr z, jr_072_7747                             ; $7710: $28 $35

    cp $ff                                        ; $7712: $fe $ff
    jr nz, jr_072_770b                            ; $7714: $20 $f5

    inc b                                         ; $7716: $04
    ld a, b                                       ; $7717: $78
    inc a                                         ; $7718: $3c
    ld [hl], a                                    ; $7719: $77
    push de                                       ; $771a: $d5
    push hl                                       ; $771b: $e5
    ld hl, sp+$04                                 ; $771c: $f8 $04
    ld e, [hl]                                    ; $771e: $5e
    inc hl                                        ; $771f: $23
    ld d, [hl]                                    ; $7720: $56
    pop hl                                        ; $7721: $e1
    ld [de], a                                    ; $7722: $12
    inc de                                        ; $7723: $13
    inc de                                        ; $7724: $13
    push hl                                       ; $7725: $e5
    ld hl, sp+$04                                 ; $7726: $f8 $04
    ld [hl], e                                    ; $7728: $73
    inc hl                                        ; $7729: $23
    ld [hl], d                                    ; $772a: $72
    pop hl                                        ; $772b: $e1
    pop de                                        ; $772c: $d1
    ld a, [de]                                    ; $772d: $1a
    inc a                                         ; $772e: $3c
    inc de                                        ; $772f: $13
    push hl                                       ; $7730: $e5
    push de                                       ; $7731: $d5
    ld d, a                                       ; $7732: $57
    ld a, $04                                     ; $7733: $3e $04
    sub c                                         ; $7735: $91
    ld hl, $c330                                  ; $7736: $21 $30 $c3
    ld e, a                                       ; $7739: $5f
    ld a, d                                       ; $773a: $7a
    ld d, $00                                     ; $773b: $16 $00
    add hl, de                                    ; $773d: $19
    add hl, de                                    ; $773e: $19
    inc hl                                        ; $773f: $23
    ld [hl], a                                    ; $7740: $77
    pop de                                        ; $7741: $d1
    pop hl                                        ; $7742: $e1
    inc hl                                        ; $7743: $23
    dec c                                         ; $7744: $0d
    jr nz, jr_072_770b                            ; $7745: $20 $c4

jr_072_7747:
    ld a, $ff                                     ; $7747: $3e $ff
    dec hl                                        ; $7749: $2b
    ld [hl], a                                    ; $774a: $77
    push hl                                       ; $774b: $e5
    ld hl, sp+$02                                 ; $774c: $f8 $02
    ld e, [hl]                                    ; $774e: $5e
    inc hl                                        ; $774f: $23
    ld d, [hl]                                    ; $7750: $56
    pop hl                                        ; $7751: $e1
    dec de                                        ; $7752: $1b
    dec de                                        ; $7753: $1b
    ld [de], a                                    ; $7754: $12
    ld a, $01                                     ; $7755: $3e $01
    ld hl, $7773                                  ; $7757: $21 $73 $77
    call Call_000_23e8                            ; $775a: $cd $e8 $23
    add sp, $02                                   ; $775d: $e8 $02

jr_072_775f:
    pop hl                                        ; $775f: $e1
    pop de                                        ; $7760: $d1
    pop bc                                        ; $7761: $c1
    pop af                                        ; $7762: $f1
    ret                                           ; $7763: $c9


    push af                                       ; $7764: $f5
    push bc                                       ; $7765: $c5
    push de                                       ; $7766: $d5
    push hl                                       ; $7767: $e5
    ld hl, $7773                                  ; $7768: $21 $73 $77
    call Call_000_2449                            ; $776b: $cd $49 $24
    pop hl                                        ; $776e: $e1
    pop de                                        ; $776f: $d1
    pop bc                                        ; $7770: $c1
    pop af                                        ; $7771: $f1
    ret                                           ; $7772: $c9


    rst $30                                       ; $7773: $f7
    add b                                         ; $7774: $80
    inc bc                                        ; $7775: $03
    jr nz, jr_072_777c                            ; $7776: $20 $04

    rst $30                                       ; $7778: $f7
    nop                                           ; $7779: $00
    inc bc                                        ; $777a: $03
    ret nz                                        ; $777b: $c0

jr_072_777c:
    push af                                       ; $777c: $f5
    push bc                                       ; $777d: $c5
    push de                                       ; $777e: $d5
    push hl                                       ; $777f: $e5
    ldh a, [$96]                                  ; $7780: $f0 $96
    push af                                       ; $7782: $f5
    ld a, $06                                     ; $7783: $3e $06
    ldh [$96], a                                  ; $7785: $e0 $96
    ldh [rSVBK], a                                ; $7787: $e0 $70
    ld c, $00                                     ; $7789: $0e $00
    ld hl, $c338                                  ; $778b: $21 $38 $c3

jr_072_778e:
    ld a, [hl]                                    ; $778e: $7e
    cp $ff                                        ; $778f: $fe $ff
    jr z, jr_072_77b0                             ; $7791: $28 $1d

    push hl                                       ; $7793: $e5
    ld l, c                                       ; $7794: $69
    ld h, $00                                     ; $7795: $26 $00
    add hl, hl                                    ; $7797: $29
    ld de, $c330                                  ; $7798: $11 $30 $c3
    add hl, de                                    ; $779b: $19
    inc hl                                        ; $779c: $23
    ld a, [hl]                                    ; $779d: $7e
    dec a                                         ; $779e: $3d
    ld [hl], a                                    ; $779f: $77
    pop hl                                        ; $77a0: $e1
    inc hl                                        ; $77a1: $23
    ld b, c                                       ; $77a2: $41
    inc c                                         ; $77a3: $0c
    or a                                          ; $77a4: $b7
    jr nz, jr_072_778e                            ; $77a5: $20 $e7

    ld a, b                                       ; $77a7: $78
    call Call_072_77ba                            ; $77a8: $cd $ba $77
    ld a, c                                       ; $77ab: $79
    cp $04                                        ; $77ac: $fe $04
    jr nz, jr_072_778e                            ; $77ae: $20 $de

jr_072_77b0:
    pop af                                        ; $77b0: $f1
    ldh [$96], a                                  ; $77b1: $e0 $96
    ldh [rSVBK], a                                ; $77b3: $e0 $70
    pop hl                                        ; $77b5: $e1
    pop de                                        ; $77b6: $d1
    pop bc                                        ; $77b7: $c1
    pop af                                        ; $77b8: $f1
    ret                                           ; $77b9: $c9


Call_072_77ba:
    push af                                       ; $77ba: $f5
    push bc                                       ; $77bb: $c5
    push de                                       ; $77bc: $d5
    push hl                                       ; $77bd: $e5
    push af                                       ; $77be: $f5
    add sp, -$01                                  ; $77bf: $e8 $ff
    ld hl, sp+$00                                 ; $77c1: $f8 $00
    ld [hl], a                                    ; $77c3: $77
    ld h, $00                                     ; $77c4: $26 $00
    ld l, a                                       ; $77c6: $6f
    add hl, hl                                    ; $77c7: $29
    ld bc, $c330                                  ; $77c8: $01 $30 $c3
    add hl, bc                                    ; $77cb: $09
    ld a, [hl]                                    ; $77cc: $7e
    ld [$c33c], a                                 ; $77cd: $ea $3c $c3

jr_072_77d0:
    ld a, [$c32f]                                 ; $77d0: $fa $2f $c3
    ld l, a                                       ; $77d3: $6f
    ld h, $00                                     ; $77d4: $26 $00
    add hl, hl                                    ; $77d6: $29
    ld bc, $403a                                  ; $77d7: $01 $3a $40
    add hl, bc                                    ; $77da: $09
    ld a, [hl+]                                   ; $77db: $2a
    ld h, [hl]                                    ; $77dc: $66
    ld l, a                                       ; $77dd: $6f
    ld a, [$c33c]                                 ; $77de: $fa $3c $c3
    ld c, a                                       ; $77e1: $4f
    ld b, $00                                     ; $77e2: $06 $00
    add hl, bc                                    ; $77e4: $09
    ld a, [hl]                                    ; $77e5: $7e
    cp $ff                                        ; $77e6: $fe $ff
    jr nz, jr_072_77f9                            ; $77e8: $20 $0f

    ld hl, sp+$00                                 ; $77ea: $f8 $00
    ld c, [hl]                                    ; $77ec: $4e
    ld b, $00                                     ; $77ed: $06 $00
    ld hl, $c338                                  ; $77ef: $21 $38 $c3
    add hl, bc                                    ; $77f2: $09
    ld a, [hl]                                    ; $77f3: $7e
    ld [$c33c], a                                 ; $77f4: $ea $3c $c3
    jr jr_072_77d0                                ; $77f7: $18 $d7

jr_072_77f9:
    ld b, a                                       ; $77f9: $47
    inc hl                                        ; $77fa: $23
    ld c, [hl]                                    ; $77fb: $4e
    inc hl                                        ; $77fc: $23
    ld e, [hl]                                    ; $77fd: $5e
    inc hl                                        ; $77fe: $23
    ld a, [hl]                                    ; $77ff: $7e
    push af                                       ; $7800: $f5
    push bc                                       ; $7801: $c5
    ld l, e                                       ; $7802: $6b
    ld h, $00                                     ; $7803: $26 $00
    add hl, hl                                    ; $7805: $29
    add hl, hl                                    ; $7806: $29
    add hl, hl                                    ; $7807: $29
    add hl, hl                                    ; $7808: $29
    ld de, $b000                                  ; $7809: $11 $00 $b0
    add hl, de                                    ; $780c: $19
    push hl                                       ; $780d: $e5
    ld l, b                                       ; $780e: $68
    ld h, $00                                     ; $780f: $26 $00
    add hl, hl                                    ; $7811: $29
    add hl, hl                                    ; $7812: $29
    add hl, hl                                    ; $7813: $29
    add hl, hl                                    ; $7814: $29
    ld bc, $d800                                  ; $7815: $01 $00 $d8
    add hl, bc                                    ; $7818: $09
    pop de                                        ; $7819: $d1
    pop bc                                        ; $781a: $c1
    call Call_000_0468                            ; $781b: $cd $68 $04
    ld a, [$c33c]                                 ; $781e: $fa $3c $c3
    add $04                                       ; $7821: $c6 $04
    ld [$c33c], a                                 ; $7823: $ea $3c $c3
    pop af                                        ; $7826: $f1
    ld d, a                                       ; $7827: $57
    add sp, $01                                   ; $7828: $e8 $01
    pop af                                        ; $782a: $f1
    ld h, $00                                     ; $782b: $26 $00
    ld l, a                                       ; $782d: $6f
    add hl, hl                                    ; $782e: $29
    ld bc, $c330                                  ; $782f: $01 $30 $c3
    add hl, bc                                    ; $7832: $09
    ld a, [$c33c]                                 ; $7833: $fa $3c $c3
    ld [hl+], a                                   ; $7836: $22
    ld [hl], d                                    ; $7837: $72
    pop hl                                        ; $7838: $e1
    pop de                                        ; $7839: $d1
    pop bc                                        ; $783a: $c1
    pop af                                        ; $783b: $f1
    ret                                           ; $783c: $c9


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

Jump_072_78fa:
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

Call_072_79c7:
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

Call_072_7aff:
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

Jump_072_7bac:
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

Jump_072_7ce2:
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

Jump_072_7e22:
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

Call_072_7e79:
    rst $38                                       ; $7e79: $ff
    rst $38                                       ; $7e7a: $ff
    rst $38                                       ; $7e7b: $ff
    rst $38                                       ; $7e7c: $ff
    rst $38                                       ; $7e7d: $ff
    rst $38                                       ; $7e7e: $ff
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    rst $38                                       ; $7e81: $ff

Jump_072_7e82:
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

Jump_072_7ee1:
    rst $38                                       ; $7ee1: $ff
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff

Jump_072_7ee4:
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

Jump_072_7f7c:
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
