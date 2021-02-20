; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $063", ROMX[$4000], BANK[$63]

    ld c, $40                                     ; $4000: $0e $40
    add l                                         ; $4002: $85
    ld c, b                                       ; $4003: $48
    sub c                                         ; $4004: $91
    ld d, d                                       ; $4005: $52
    jr jr_063_4064                                ; $4006: $18 $5c

    db $26, $67, $0c, $70

    ld bc, $167a                                  ; $400c: $01 $7a $16
    ld b, b                                       ; $400f: $40
    xor e                                         ; $4010: $ab
    ld b, e                                       ; $4011: $43
    inc bc                                        ; $4012: $03
    ld c, b                                       ; $4013: $48
    ld e, $48                                     ; $4014: $1e $48
    cp a                                          ; $4016: $bf
    ld c, $0e                                     ; $4017: $0e $0e
    dec c                                         ; $4019: $0d
    dec c                                         ; $401a: $0d
    dec c                                         ; $401b: $0d
    ld c, $fa                                     ; $401c: $0e $fa
    rst $20                                       ; $401e: $e7
    ld c, $07                                     ; $401f: $0e $07
    ld c, $4d                                     ; $4021: $0e $4d
    ld c, l                                       ; $4023: $4d
    ld hl, sp-$1d                                 ; $4024: $f8 $e3
    db $fc                                        ; $4026: $fc
    jp hl                                         ; $4027: $e9


    db $ec                                        ; $4028: $ec
    db $e3                                        ; $4029: $e3
    sub $eb                                       ; $402a: $d6 $eb
    ret nc                                        ; $402c: $d0

    push hl                                       ; $402d: $e5
    add b                                         ; $402e: $80
    cp $ea                                        ; $402f: $fe $ea
    call nz, $eee0                                ; $4031: $c4 $e0 $ee
    pop hl                                        ; $4034: $e1
    ret nz                                        ; $4035: $c0

    jp hl                                         ; $4036: $e9


    sbc $e7                                       ; $4037: $de $e7
    db $d3                                        ; $4039: $d3
    db $ed                                        ; $403a: $ed
    pop af                                        ; $403b: $f1
    ldh a, [rKEY1]                                ; $403c: $f0 $4d
    ld [de], a                                    ; $403e: $12
    sub [hl]                                      ; $403f: $96
    and $0d                                       ; $4040: $e6 $0d
    push af                                       ; $4042: $f5
    ldh [$f2], a                                  ; $4043: $e0 $f2
    ldh [$2d], a                                  ; $4045: $e0 $2d
    ld a, [hl]                                    ; $4047: $7e
    jp hl                                         ; $4048: $e9


    ret nz                                        ; $4049: $c0

    ldh a, [rSCX]                                 ; $404a: $f0 $43
    jp hl                                         ; $404c: $e9


    call c, $e344                                 ; $404d: $dc $44 $e3
    add b                                         ; $4050: $80
    db $e3                                        ; $4051: $e3
    dec c                                         ; $4052: $0d
    ld l, l                                       ; $4053: $6d
    dec hl                                        ; $4054: $2b
    rst $38                                       ; $4055: $ff
    ld [c], a                                     ; $4056: $e2
    ld c, l                                       ; $4057: $4d
    dec l                                         ; $4058: $2d
    ldh a, [$d1]                                  ; $4059: $f0 $d1
    db $ec                                        ; $405b: $ec
    dec a                                         ; $405c: $3d

jr_063_405d:
    db $ed                                        ; $405d: $ed
    add c                                         ; $405e: $81
    db $ec                                        ; $405f: $ec
    inc b                                         ; $4060: $04
    db $e4                                        ; $4061: $e4
    ld l, l                                       ; $4062: $6d
    ld c, e                                       ; $4063: $4b

jr_063_4064:
    ld c, e                                       ; $4064: $4b

jr_063_4065:
    dec hl                                        ; $4065: $2b
    adc e                                         ; $4066: $8b
    dec hl                                        ; $4067: $2b
    dec c                                         ; $4068: $0d
    cp l                                          ; $4069: $bd
    pop hl                                        ; $406a: $e1
    dec l                                         ; $406b: $2d
    jr c, jr_063_405d                             ; $406c: $38 $ef

    ld b, c                                       ; $406e: $41
    ld sp, hl                                     ; $406f: $f9
    nop                                           ; $4070: $00
    db $e4                                        ; $4071: $e4
    ld c, e                                       ; $4072: $4b
    ld bc, $fd4b                                  ; $4073: $01 $4b $fd
    push hl                                       ; $4076: $e5
    ld a, $e2                                     ; $4077: $3e $e2
    add $f9                                       ; $4079: $c6 $f9
    add b                                         ; $407b: $80
    res 2, [hl]                                   ; $407c: $cb $96
    call nz, $e2c0                                ; $407e: $c4 $c0 $e2
    cp $e0                                        ; $4081: $fe $e0
    ld [$e0b7], sp                                ; $4083: $08 $b7 $e0
    ld a, a                                       ; $4086: $7f
    ldh [rOCPS], a                                ; $4087: $e0 $6a
    jp nz, $f72d                                  ; $4089: $c2 $2d $f7

    db $e3                                        ; $408c: $e3
    add b                                         ; $408d: $80
    rst $18                                       ; $408e: $df
    ld l, $c0                                     ; $408f: $2e $c0
    ld b, c                                       ; $4091: $41
    ldh [rNR23], a                                ; $4092: $e0 $18
    cp [hl]                                       ; $4094: $be
    push hl                                       ; $4095: $e5
    ld a, a                                       ; $4096: $7f
    pop hl                                        ; $4097: $e1
    ld e, d                                       ; $4098: $5a
    jp nz, Jump_000_2d2d                          ; $4099: $c2 $2d $2d

    push af                                       ; $409c: $f5
    res 0, b                                      ; $409d: $cb $80
    db $d3                                        ; $409f: $d3
    jr jr_063_4065                                ; $40a0: $18 $c3

    nop                                           ; $40a2: $00
    add h                                         ; $40a3: $84
    push hl                                       ; $40a4: $e5
    ld a, [hl]                                    ; $40a5: $7e
    ld [c], a                                     ; $40a6: $e2
    cp a                                          ; $40a7: $bf
    pop hl                                        ; $40a8: $e1
    db $dd                                        ; $40a9: $dd
    and b                                         ; $40aa: $a0
    ret nz                                        ; $40ab: $c0

    di                                            ; $40ac: $f3
    or b                                          ; $40ad: $b0

Jump_063_40ae:
    pop de                                        ; $40ae: $d1
    ret nz                                        ; $40af: $c0

    db $e4                                        ; $40b0: $e4
    ld b, c                                       ; $40b1: $41
    db $e3                                        ; $40b2: $e3
    ld h, b                                       ; $40b3: $60
    ld a, $e2                                     ; $40b4: $3e $e2
    and d                                         ; $40b6: $a2
    res 0, b                                      ; $40b7: $cb $80
    push de                                       ; $40b9: $d5
    add d                                         ; $40ba: $82
    and a                                         ; $40bb: $a7
    add d                                         ; $40bc: $82
    ret nz                                        ; $40bd: $c0

    ld a, [bc]                                    ; $40be: $0a
    dec bc                                        ; $40bf: $0b
    dec a                                         ; $40c0: $3d
    and $d0                                       ; $40c1: $e6 $d0
    inc a                                         ; $40c3: $3c
    pop bc                                        ; $40c4: $c1
    ld h, [hl]                                    ; $40c5: $66
    and l                                         ; $40c6: $a5
    or [hl]                                       ; $40c7: $b6
    db $db                                        ; $40c8: $db
    add d                                         ; $40c9: $82
    and h                                         ; $40ca: $a4
    ld l, l                                       ; $40cb: $6d
    pop bc                                        ; $40cc: $c1
    ldh [$2a], a                                  ; $40cd: $e0 $2a
    ld a, [hl+]                                   ; $40cf: $2a
    add e                                         ; $40d0: $83
    ld a, [bc]                                    ; $40d1: $0a
    ld a, [hl+]                                   ; $40d2: $2a
    cp l                                          ; $40d3: $bd
    pop hl                                        ; $40d4: $e1
    halt                                          ; $40d5: $76
    pop bc                                        ; $40d6: $c1
    rlca                                          ; $40d7: $07
    ld a, [$ad00]                                 ; $40d8: $fa $00 $ad
    add d                                         ; $40db: $82
    jp nz, $070a                                  ; $40dc: $c2 $0a $07

    ld c, d                                       ; $40df: $4a
    ld a, [hl+]                                   ; $40e0: $2a
    ld a, [bc]                                    ; $40e1: $0a
    ret nz                                        ; $40e2: $c0

    ld [c], a                                     ; $40e3: $e2
    ld [hl], $c2                                  ; $40e4: $36 $c2
    db $fc                                        ; $40e6: $fc
    and [hl]                                      ; $40e7: $a6
    ld l, h                                       ; $40e8: $6c
    and c                                         ; $40e9: $a1
    add b                                         ; $40ea: $80
    jp c, $f0da                                   ; $40eb: $da $da $f0

    add d                                         ; $40ee: $82
    dec c                                         ; $40ef: $0d
    ld b, d                                       ; $40f0: $42
    ldh [$0a], a                                  ; $40f1: $e0 $0a
    dec bc                                        ; $40f3: $0b
    rst $38                                       ; $40f4: $ff
    ldh [$2b], a                                  ; $40f5: $e0 $2b
    dec bc                                        ; $40f7: $0b
    add b                                         ; $40f8: $80
    add hl, sp                                    ; $40f9: $39
    jp $a8fc                                      ; $40fa: $c3 $fc $a8


    rra                                           ; $40fd: $1f
    and d                                         ; $40fe: $a2
    ld [hl], e                                    ; $40ff: $73
    ld hl, sp-$7e                                 ; $4100: $f8 $82
    add d                                         ; $4102: $82
    add c                                         ; $4103: $81
    ldh [$c0], a                                  ; $4104: $e0 $c0
    ld [c], a                                     ; $4106: $e2
    dec bc                                        ; $4107: $0b
    ldh [$3f], a                                  ; $4108: $e0 $3f
    db $e3                                        ; $410a: $e3
    db $fc                                        ; $410b: $fc
    and l                                         ; $410c: $a5
    ld a, [hl]                                    ; $410d: $7e
    db $e4                                        ; $410e: $e4
    add b                                         ; $410f: $80
    ret c                                         ; $4110: $d8

    ld [hl], b                                    ; $4111: $70
    add e                                         ; $4112: $83
    dec c                                         ; $4113: $0d
    ld c, e                                       ; $4114: $4b
    ld l, e                                       ; $4115: $6b
    ld c, $80                                     ; $4116: $0e $80
    ld [c], a                                     ; $4118: $e2
    ld c, e                                       ; $4119: $4b
    ld l, e                                       ; $411a: $6b
    ld c, e                                       ; $411b: $4b
    cp $c2                                        ; $411c: $fe $c2
    ld a, e                                       ; $411e: $7b
    and b                                         ; $411f: $a0
    ld a, d                                       ; $4120: $7a
    and [hl]                                      ; $4121: $a6
    add b                                         ; $4122: $80
    db $db                                        ; $4123: $db
    ld a, $00                                     ; $4124: $3e $00
    and $2b                                       ; $4126: $e6 $2b
    ld a, [bc]                                    ; $4128: $0a
    ld c, e                                       ; $4129: $4b
    dec bc                                        ; $412a: $0b
    ld l, e                                       ; $412b: $6b
    ld a, [hl]                                    ; $412c: $7e
    and b                                         ; $412d: $a0
    ret nz                                        ; $412e: $c0

    db $e4                                        ; $412f: $e4
    ld [$a5ba], sp                                ; $4130: $08 $ba $a5
    ld b, e                                       ; $4133: $43
    db $fc                                        ; $4134: $fc
    add b                                         ; $4135: $80
    and $4b                                       ; $4136: $e6 $4b
    add c                                         ; $4138: $81
    pop bc                                        ; $4139: $c1
    ccf                                           ; $413a: $3f
    pop bc                                        ; $413b: $c1
    ccf                                           ; $413c: $3f
    push hl                                       ; $413d: $e5
    db $fc                                        ; $413e: $fc
    jp z, Jump_000_000e                           ; $413f: $ca $0e $00

    cp l                                          ; $4142: $bd
    ld c, l                                       ; $4143: $4d
    dec l                                         ; $4144: $2d
    ld c, e                                       ; $4145: $4b
    ld b, d                                       ; $4146: $42
    pop bc                                        ; $4147: $c1
    ld a, l                                       ; $4148: $7d
    add b                                         ; $4149: $80
    cp e                                          ; $414a: $bb
    call nz, $88f8                                ; $414b: $c4 $f8 $88
    sbc h                                         ; $414e: $9c
    ld a, d                                       ; $414f: $7a
    ld l, l                                       ; $4150: $6d
    cp e                                          ; $4151: $bb
    db $d3                                        ; $4152: $d3
    dec c                                         ; $4153: $0d
    dec l                                         ; $4154: $2d
    ld c, e                                       ; $4155: $4b
    add b                                         ; $4156: $80
    jp $c37a                                      ; $4157: $c3 $7a $c3


    dec hl                                        ; $415a: $2b
    ld hl, $6f0b                                  ; $415b: $21 $0b $6f
    add b                                         ; $415e: $80
    or $65                                        ; $415f: $f6 $65
    dec [hl]                                      ; $4161: $35
    sbc d                                         ; $4162: $9a
    sbc [hl]                                      ; $4163: $9e
    push hl                                       ; $4164: $e5
    ld c, l                                       ; $4165: $4d
    dec b                                         ; $4166: $05
    ldh [rIE], a                                  ; $4167: $e0 $ff
    jp hl                                         ; $4169: $e9


    ld b, b                                       ; $416a: $40
    ld a, e                                       ; $416b: $7b
    jp nz, $717a                                  ; $416c: $c2 $7a $71

    nop                                           ; $416f: $00
    or e                                          ; $4170: $b3
    ccf                                           ; $4171: $3f
    add c                                         ; $4172: $81
    ld b, b                                       ; $4173: $40
    and b                                         ; $4174: $a0
    cp l                                          ; $4175: $bd
    and $2b                                       ; $4176: $e6 $2b
    ret nz                                        ; $4178: $c0

    db $e4                                        ; $4179: $e4
    nop                                           ; $417a: $00
    ld a, d                                       ; $417b: $7a
    ld [hl], b                                    ; $417c: $70
    add d                                         ; $417d: $82
    ld l, h                                       ; $417e: $6c
    sub [hl]                                      ; $417f: $96
    ld b, l                                       ; $4180: $45
    ld [bc], a                                    ; $4181: $02
    add d                                         ; $4182: $82
    ret nz                                        ; $4183: $c0

    add sp, -$09                                  ; $4184: $e8 $f7

Call_063_4186:
    ld h, e                                       ; $4186: $63
    ccf                                           ; $4187: $3f
    sbc a                                         ; $4188: $9f
    cp $86                                        ; $4189: $fe $86
    ld [bc], a                                    ; $418b: $02
    ccf                                           ; $418c: $3f
    pop hl                                        ; $418d: $e1
    ld l, e                                       ; $418e: $6b
    ret nz                                        ; $418f: $c0

    db $eb                                        ; $4190: $eb
    add b                                         ; $4191: $80
    call c, $e682                                 ; $4192: $dc $82 $e6
    ld b, b                                       ; $4195: $40
    ld h, d                                       ; $4196: $62
    ret nz                                        ; $4197: $c0

    ld [c], a                                     ; $4198: $e2
    ei                                            ; $4199: $fb
    push bc                                       ; $419a: $c5
    nop                                           ; $419b: $00
    ld b, b                                       ; $419c: $40
    push hl                                       ; $419d: $e5
    ld [bc], a                                    ; $419e: $02

jr_063_419f:
    and d                                         ; $419f: $a2
    nop                                           ; $41a0: $00
    ld d, e                                       ; $41a1: $53
    daa                                           ; $41a2: $27
    xor d                                         ; $41a3: $aa
    ret nz                                        ; $41a4: $c0

    db $e4                                        ; $41a5: $e4
    ld a, a                                       ; $41a6: $7f
    rst $00                                       ; $41a7: $c7
    nop                                           ; $41a8: $00
    and $8b                                       ; $41a9: $e6 $8b
    ld d, b                                       ; $41ab: $50
    jr nz, jr_063_41b4                            ; $41ac: $20 $06

    ld b, [hl]                                    ; $41ae: $46
    add [hl]                                      ; $41af: $86
    daa                                           ; $41b0: $27
    ld b, b                                       ; $41b1: $40
    ld h, d                                       ; $41b2: $62
    add d                                         ; $41b3: $82

jr_063_41b4:
    and b                                         ; $41b4: $a0
    ld a, a                                       ; $41b5: $7f
    db $e3                                        ; $41b6: $e3
    dec hl                                        ; $41b7: $2b
    pop bc                                        ; $41b8: $c1
    ret nz                                        ; $41b9: $c0

    nop                                           ; $41ba: $00
    push hl                                       ; $41bb: $e5
    nop                                           ; $41bc: $00
    ld c, e                                       ; $41bd: $4b
    ld c, l                                       ; $41be: $4d
    nop                                           ; $41bf: $00

Call_063_41c0:
    ld c, e                                       ; $41c0: $4b
    nop                                           ; $41c1: $00
    add a                                         ; $41c2: $87
    ld bc, $bec4                                  ; $41c3: $01 $c4 $be
    and d                                         ; $41c6: $a2
    ld hl, sp-$80                                 ; $41c7: $f8 $80
    nop                                           ; $41c9: $00
    and $00                                       ; $41ca: $e6 $00
    ld e, a                                       ; $41cc: $5f
    call nz, $a300                                ; $41cd: $c4 $00 $a3
    ld c, b                                       ; $41d0: $48
    call nz, $f90b                                ; $41d1: $c4 $0b $f9
    add b                                         ; $41d4: $80
    ld [hl], a                                    ; $41d5: $77
    ld h, b                                       ; $41d6: $60
    ld b, b                                       ; $41d7: $40
    pop bc                                        ; $41d8: $c1
    dec c                                         ; $41d9: $0d
    ld l, l                                       ; $41da: $6d
    jr nc, jr_063_425b                            ; $41db: $30 $7e

    ld a, a                                       ; $41dd: $7f
    add d                                         ; $41de: $82
    ld b, [hl]                                    ; $41df: $46
    ld [$7cc5], sp                                ; $41e0: $08 $c5 $7c
    ld h, b                                       ; $41e3: $60
    dec bc                                        ; $41e4: $0b
    ld c, e                                       ; $41e5: $4b
    or a                                          ; $41e6: $b7
    jr nz, jr_063_4225                            ; $41e7: $20 $3c

    add d                                         ; $41e9: $82
    sub b                                         ; $41ea: $90
    nop                                           ; $41eb: $00
    cp e                                          ; $41ec: $bb
    nop                                           ; $41ed: $00
    push hl                                       ; $41ee: $e5
    add d                                         ; $41ef: $82
    ld b, d                                       ; $41f0: $42
    add e                                         ; $41f1: $83
    and l                                         ; $41f2: $a5
    ld a, [bc]                                    ; $41f3: $0a
    ld a, [hl-]                                   ; $41f4: $3a
    ld h, c                                       ; $41f5: $61
    ret nz                                        ; $41f6: $c0

    ld [c], a                                     ; $41f7: $e2
    dec c                                         ; $41f8: $0d
    ld [hl], c                                    ; $41f9: $71
    ld l, l                                       ; $41fa: $6d
    ld a, d                                       ; $41fb: $7a
    ld b, h                                       ; $41fc: $44
    add b                                         ; $41fd: $80
    db $dd                                        ; $41fe: $dd
    ret nz                                        ; $41ff: $c0

    jp hl                                         ; $4200: $e9


    dec hl                                        ; $4201: $2b
    dec bc                                        ; $4202: $0b
    ld a, [bc]                                    ; $4203: $0a
    rst $38                                       ; $4204: $ff
    ldh [$c1], a                                  ; $4205: $e0 $c1
    ld l, e                                       ; $4207: $6b
    pop bc                                        ; $4208: $c1
    db $e4                                        ; $4209: $e4
    nop                                           ; $420a: $00
    cp d                                          ; $420b: $ba
    add [hl]                                      ; $420c: $86
    ld [bc], a                                    ; $420d: $02
    add d                                         ; $420e: $82
    ld b, l                                       ; $420f: $45
    inc bc                                        ; $4210: $03
    and [hl]                                      ; $4211: $a6
    dec hl                                        ; $4212: $2b
    ld l, e                                       ; $4213: $6b
    ld [bc], a                                    ; $4214: $02
    ld a, b                                       ; $4215: $78
    add b                                         ; $4216: $80
    ld l, e                                       ; $4217: $6b
    cp a                                          ; $4218: $bf
    ldh [$7a], a                                  ; $4219: $e0 $7a
    dec h                                         ; $421b: $25
    cp b                                          ; $421c: $b8
    jr nz, jr_063_419f                            ; $421d: $20 $80

    call c, $ea40                                 ; $421f: $dc $40 $ea
    ld b, d                                       ; $4222: $42
    add d                                         ; $4223: $82
    rlca                                          ; $4224: $07

jr_063_4225:
    dec c                                         ; $4225: $0d
    ld l, e                                       ; $4226: $6b
    dec hl                                        ; $4227: $2b
    ld b, d                                       ; $4228: $42
    ldh [$7a], a                                  ; $4229: $e0 $7a
    inc d                                         ; $422b: $14
    add d                                         ; $422c: $82
    rst $08                                       ; $422d: $cf
    ret nz                                        ; $422e: $c0

    pop af                                        ; $422f: $f1
    add d                                         ; $4230: $82
    ld a, a                                       ; $4231: $7f
    ld [bc], a                                    ; $4232: $02
    cp l                                          ; $4233: $bd
    ld c, b                                       ; $4234: $48
    dec l                                         ; $4235: $2d
    ld b, e                                       ; $4236: $43
    adc d                                         ; $4237: $8a
    ld b, c                                       ; $4238: $41
    ldh [$c0], a                                  ; $4239: $e0 $c0
    ldh [rP1], a                                  ; $423b: $e0 $00
    ld e, a                                       ; $423d: $5f
    nop                                           ; $423e: $00
    and a                                         ; $423f: $a7
    ld b, d                                       ; $4240: $42
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    add $84                                       ; $4243: $c6 $84
    ld a, a                                       ; $4245: $7f
    ld h, c                                       ; $4246: $61
    ld bc, $04e1                                  ; $4247: $01 $e1 $04
    push bc                                       ; $424a: $c5
    add b                                         ; $424b: $80
    jr jr_063_4275                                ; $424c: $18 $27

    ld c, b                                       ; $424e: $48
    ret nz                                        ; $424f: $c0

    pop hl                                        ; $4250: $e1
    pop bc                                        ; $4251: $c1
    ld h, e                                       ; $4252: $63
    inc bc                                        ; $4253: $03
    dec hl                                        ; $4254: $2b
    dec hl                                        ; $4255: $2b
    db $fd                                        ; $4256: $fd
    ld hl, $e141                                  ; $4257: $21 $41 $e1
    add [hl]                                      ; $425a: $86

jr_063_425b:
    rra                                           ; $425b: $1f
    nop                                           ; $425c: $00
    and e                                         ; $425d: $a3
    nop                                           ; $425e: $00
    ld b, e                                       ; $425f: $43
    cp a                                          ; $4260: $bf
    and $20                                       ; $4261: $e6 $20
    ld a, e                                       ; $4263: $7b
    ld b, c                                       ; $4264: $41
    ld bc, $66e3                                  ; $4265: $01 $e3 $66
    ld b, c                                       ; $4268: $41
    add b                                         ; $4269: $80
    inc e                                         ; $426a: $1c
    add d                                         ; $426b: $82
    adc c                                         ; $426c: $89
    ld l, e                                       ; $426d: $6b
    push bc                                       ; $426e: $c5
    add h                                         ; $426f: $84
    ld bc, $20e4                                  ; $4270: $01 $e4 $20
    ld h, [hl]                                    ; $4273: $66
    ld l, b                                       ; $4274: $68

jr_063_4275:
    nop                                           ; $4275: $00

jr_063_4276:
    cp c                                          ; $4276: $b9
    nop                                           ; $4277: $00
    ld b, e                                       ; $4278: $43
    cp a                                          ; $4279: $bf
    pop bc                                        ; $427a: $c1
    db $fd                                        ; $427b: $fd
    add [hl]                                      ; $427c: $86
    ld c, e                                       ; $427d: $4b
    inc a                                         ; $427e: $3c
    ldh [rLCDC], a                                ; $427f: $e0 $40
    ld [c], a                                     ; $4281: $e2
    ldh [rSCY], a                                 ; $4282: $e0 $42
    ld b, $7e                                     ; $4284: $06 $7e
    ld e, $02                                     ; $4286: $1e $02
    ld h, c                                       ; $4288: $61
    db $fc                                        ; $4289: $fc
    nop                                           ; $428a: $00
    inc b                                         ; $428b: $04
    ld h, l                                       ; $428c: $65
    dec c                                         ; $428d: $0d
    dec hl                                        ; $428e: $2b
    dec hl                                        ; $428f: $2b
    nop                                           ; $4290: $00
    add h                                         ; $4291: $84
    ld b, [hl]                                    ; $4292: $46
    ld hl, sp-$30                                 ; $4293: $f8 $d0
    nop                                           ; $4295: $00
    ld c, a                                       ; $4296: $4f
    ret nz                                        ; $4297: $c0

    db $e3                                        ; $4298: $e3
    ld a, [hl]                                    ; $4299: $7e
    add l                                         ; $429a: $85
    ret nz                                        ; $429b: $c0

    pop hl                                        ; $429c: $e1
    nop                                           ; $429d: $00
    jp $ef43                                      ; $429e: $c3 $43 $ef


    nop                                           ; $42a1: $00
    nop                                           ; $42a2: $00
    ld d, h                                       ; $42a3: $54
    add c                                         ; $42a4: $81
    ld h, l                                       ; $42a5: $65
    ld a, h                                       ; $42a6: $7c
    push bc                                       ; $42a7: $c5
    add h                                         ; $42a8: $84
    ld h, l                                       ; $42a9: $65
    jp Jump_000_00bf                              ; $42aa: $c3 $bf $00


    inc hl                                        ; $42ad: $23
    add c                                         ; $42ae: $81
    ld h, d                                       ; $42af: $62
    jp Jump_000_0043                              ; $42b0: $c3 $43 $00


    ld a, e                                       ; $42b3: $7b
    jr nz, jr_063_4276                            ; $42b4: $20 $c0

    db $e4                                        ; $42b6: $e4
    inc b                                         ; $42b7: $04
    ld h, b                                       ; $42b8: $60
    add b                                         ; $42b9: $80
    call c, $869e                                 ; $42ba: $dc $9e $86
    ld c, a                                       ; $42bd: $4f
    ld [hl+], a                                   ; $42be: $22
    ret nz                                        ; $42bf: $c0

    db $e4                                        ; $42c0: $e4
    ld bc, $00e1                                  ; $42c1: $01 $e1 $00
    call nz, $5f62                                ; $42c4: $c4 $62 $5f
    inc b                                         ; $42c7: $04
    add b                                         ; $42c8: $80

jr_063_42c9:
    ld a, b                                       ; $42c9: $78
    nop                                           ; $42ca: $00
    ret                                           ; $42cb: $c9


    inc a                                         ; $42cc: $3c
    nop                                           ; $42cd: $00
    ld b, d                                       ; $42ce: $42
    ld b, c                                       ; $42cf: $41
    db $fc                                        ; $42d0: $fc
    nop                                           ; $42d1: $00
    ret nz                                        ; $42d2: $c0

    pop hl                                        ; $42d3: $e1
    nop                                           ; $42d4: $00
    inc b                                         ; $42d5: $04
    daa                                           ; $42d6: $27
    dec a                                         ; $42d7: $3d
    rst $38                                       ; $42d8: $ff
    ret nz                                        ; $42d9: $c0

    ld bc, $e10c                                  ; $42da: $01 $0c $e1
    jp $ff03                                      ; $42dd: $c3 $03 $ff


    ld [c], a                                     ; $42e0: $e2
    add d                                         ; $42e1: $82
    add [hl]                                      ; $42e2: $86
    add b                                         ; $42e3: $80
    jp c, $1c1a                                   ; $42e4: $da $1a $1c

    add $0d                                       ; $42e7: $c6 $0d
    adc [hl]                                      ; $42e9: $8e
    pop bc                                        ; $42ea: $c1
    ld c, e                                       ; $42eb: $4b
    dec hl                                        ; $42ec: $2b
    add b                                         ; $42ed: $80
    ld [c], a                                     ; $42ee: $e2
    cp a                                          ; $42ef: $bf
    ld [c], a                                     ; $42f0: $e2
    add d                                         ; $42f1: $82
    add [hl]                                      ; $42f2: $86
    inc c                                         ; $42f3: $0c
    nop                                           ; $42f4: $00
    cp b                                          ; $42f5: $b8
    or d                                          ; $42f6: $b2
    ld c, b                                       ; $42f7: $48
    dec c                                         ; $42f8: $0d
    ld l, l                                       ; $42f9: $6d
    adc l                                         ; $42fa: $8d
    ldh [$c0], a                                  ; $42fb: $e0 $c0
    ldh [rLCDC], a                                ; $42fd: $e0 $40
    ld b, c                                       ; $42ff: $41

Call_063_4300:
    ld b, d                                       ; $4300: $42
    rst $00                                       ; $4301: $c7
    nop                                           ; $4302: $00
    ret                                           ; $4303: $c9


    ld e, [hl]                                    ; $4304: $5e
    inc e                                         ; $4305: $1c
    db $e4                                        ; $4306: $e4
    jr jr_063_42c9                                ; $4307: $18 $c0

    ld c, l                                       ; $4309: $4d
    pop hl                                        ; $430a: $e1
    adc b                                         ; $430b: $88
    and b                                         ; $430c: $a0
    add [hl]                                      ; $430d: $86
    ld b, b                                       ; $430e: $40
    ld b, h                                       ; $430f: $44
    ldh [rSC], a                                  ; $4310: $e0 $02
    jp RST_10                                     ; $4312: $c3 $10 $00


    cp a                                          ; $4315: $bf
    nop                                           ; $4316: $00
    ld c, b                                       ; $4317: $48
    ld a, [bc]                                    ; $4318: $0a
    db $e3                                        ; $4319: $e3
    ld a, [$4de7]                                 ; $431a: $fa $e7 $4d
    nop                                           ; $431d: $00
    cp a                                          ; $431e: $bf
    nop                                           ; $431f: $00
    ld c, c                                       ; $4320: $49
    ld b, c                                       ; $4321: $41
    ldh [rP1], a                                  ; $4322: $e0 $00
    cp [hl]                                       ; $4324: $be
    db $ec                                        ; $4325: $ec
    nop                                           ; $4326: $00
    cp a                                          ; $4327: $bf

jr_063_4328:
    ld l, [hl]                                    ; $4328: $6e
    add hl, hl                                    ; $4329: $29
    adc [hl]                                      ; $432a: $8e
    pop bc                                        ; $432b: $c1
    ld a, l                                       ; $432c: $7d
    rst $20                                       ; $432d: $e7
    ld b, c                                       ; $432e: $41
    and e                                         ; $432f: $a3
    add b                                         ; $4330: $80
    rst $18                                       ; $4331: $df
    nop                                           ; $4332: $00
    push hl                                       ; $4333: $e5
    inc b                                         ; $4334: $04
    ret nz                                        ; $4335: $c0

    db $e3                                        ; $4336: $e3
    pop bc                                        ; $4337: $c1
    add [hl]                                      ; $4338: $86
    dec bc                                        ; $4339: $0b
    rst $38                                       ; $433a: $ff
    push bc                                       ; $433b: $c5
    nop                                           ; $433c: $00
    cp h                                          ; $433d: $bc
    add d                                         ; $433e: $82
    and a                                         ; $433f: $a7
    ld b, c                                       ; $4340: $41
    db $e3                                        ; $4341: $e3
    cp $26                                        ; $4342: $fe $26
    nop                                           ; $4344: $00
    rst $38                                       ; $4345: $ff
    jp $be00                                      ; $4346: $c3 $00 $be


    nop                                           ; $4349: $00
    rst $00                                       ; $434a: $c7
    call z, $c0a3                                 ; $434b: $cc $a3 $c0
    ld [$41c0], a                                 ; $434e: $ea $c0 $41
    nop                                           ; $4351: $00
    cp a                                          ; $4352: $bf
    add d                                         ; $4353: $82
    rst $00                                       ; $4354: $c7
    inc e                                         ; $4355: $1c
    dec c                                         ; $4356: $0d
    add b                                         ; $4357: $80
    ld b, a                                       ; $4358: $47
    ldh [$0b], a                                  ; $4359: $e0 $0b
    dec bc                                        ; $435b: $0b
    dec l                                         ; $435c: $2d
    nop                                           ; $435d: $00
    add h                                         ; $435e: $84
    add b                                         ; $435f: $80
    ld b, e                                       ; $4360: $43
    jr nz, jr_063_4328                            ; $4361: $20 $c5

    nop                                           ; $4363: $00
    add b                                         ; $4364: $80
    dec d                                         ; $4365: $15
    add d                                         ; $4366: $82
    ld h, l                                       ; $4367: $65
    ret nz                                        ; $4368: $c0

    db $e4                                        ; $4369: $e4
    ret nz                                        ; $436a: $c0

    ld l, b                                       ; $436b: $68
    ld b, d                                       ; $436c: $42
    inc hl                                        ; $436d: $23
    add d                                         ; $436e: $82
    rst $18                                       ; $436f: $df
    add b                                         ; $4370: $80
    add $00                                       ; $4371: $c6 $00
    db $ec                                        ; $4373: $ec
    cp h                                          ; $4374: $bc
    add b                                         ; $4375: $80
    ld e, c                                       ; $4376: $59
    nop                                           ; $4377: $00
    xor [hl]                                      ; $4378: $ae
    ld c, l                                       ; $4379: $4d
    dec c                                         ; $437a: $0d
    dec c                                         ; $437b: $0d
    dec l                                         ; $437c: $2d
    ld b, e                                       ; $437d: $43
    and b                                         ; $437e: $a0
    ld l, e                                       ; $437f: $6b
    ld a, c                                       ; $4380: $79
    dec bc                                        ; $4381: $0b
    ld a, [hl]                                    ; $4382: $7e
    add b                                         ; $4383: $80
    cp c                                          ; $4384: $b9
    ld b, b                                       ; $4385: $40
    dec hl                                        ; $4386: $2b

Call_063_4387:
    dec c                                         ; $4387: $0d
    dec l                                         ; $4388: $2d
    dec l                                         ; $4389: $2d
    ld b, d                                       ; $438a: $42
    ld hl, $0000                                  ; $438b: $21 $00 $00
    cp a                                          ; $438e: $bf
    ld l, h                                       ; $438f: $6c
    ld b, a                                       ; $4390: $47
    cp l                                          ; $4391: $bd
    ldh [$fe], a                                  ; $4392: $e0 $fe
    rst $20                                       ; $4394: $e7
    add [hl]                                      ; $4395: $86
    ld b, $00                                     ; $4396: $06 $00
    cp a                                          ; $4398: $bf
    db $fc                                        ; $4399: $fc
    rlca                                          ; $439a: $07
    db $fc                                        ; $439b: $fc
    db $eb                                        ; $439c: $eb
    nop                                           ; $439d: $00
    add d                                         ; $439e: $82
    daa                                           ; $439f: $27
    add b                                         ; $43a0: $80
    ld a, a                                       ; $43a1: $7f
    sub [hl]                                      ; $43a2: $96
    ret                                           ; $43a3: $c9


    jp z, Jump_000_00ce                           ; $43a4: $ca $ce $00

    ld c, [hl]                                    ; $43a7: $4e
    nop                                           ; $43a8: $00
    nop                                           ; $43a9: $00
    nop                                           ; $43aa: $00
    cp a                                          ; $43ab: $bf
    db $dd                                        ; $43ac: $dd
    sbc $a0                                       ; $43ad: $de $a0
    and b                                         ; $43af: $a0
    and b                                         ; $43b0: $a0
    call c, $e7fa                                 ; $43b1: $dc $fa $e7
    ret c                                         ; $43b4: $d8

    rra                                           ; $43b5: $1f
    reti                                          ; $43b6: $d9


    and b                                         ; $43b7: $a0
    and b                                         ; $43b8: $a0
    jp nc, $fcd3                                  ; $43b9: $d2 $d3 $fc

    db $eb                                        ; $43bc: $eb
    db $ec                                        ; $43bd: $ec
    pop hl                                        ; $43be: $e1
    add sp, -$1f                                  ; $43bf: $e8 $e1
    db $fc                                        ; $43c1: $fc
    sub $eb                                       ; $43c2: $d6 $eb
    jp z, $e2e3                                   ; $43c4: $ca $e3 $e2

    db $e3                                        ; $43c7: $e3
    db $e4                                        ; $43c8: $e4
    rst $18                                       ; $43c9: $df
    ldh [$e1], a                                  ; $43ca: $e0 $e1
    cp $fa                                        ; $43cc: $fe $fa
    and $a0                                       ; $43ce: $e6 $a0
    jp c, $d6db                                   ; $43d0: $da $db $d6

    rst $10                                       ; $43d3: $d7
    call nc, $9bd5                                ; $43d4: $d4 $d5 $9b
    and b                                         ; $43d7: $a0
    and b                                         ; $43d8: $a0
    db $fc                                        ; $43d9: $fc
    rst $20                                       ; $43da: $e7
    ret nc                                        ; $43db: $d0

    pop de                                        ; $43dc: $d1
    db $ec                                        ; $43dd: $ec
    pop hl                                        ; $43de: $e1
    add sp, -$1f                                  ; $43df: $e8 $e1
    and b                                         ; $43e1: $a0
    db $fc                                        ; $43e2: $fc
    sub $e9                                       ; $43e3: $d6 $e9
    jp z, $e8e4                                   ; $43e5: $ca $e4 $e8

    jp hl                                         ; $43e8: $e9


    ld [$e6e5], a                                 ; $43e9: $ea $e5 $e6
    rst $20                                       ; $43ec: $e7
    ld e, b                                       ; $43ed: $58
    ld a, [$73e6]                                 ; $43ee: $fa $e6 $73
    ldh [$96], a                                  ; $43f1: $e0 $96
    db $e4                                        ; $43f3: $e4
    sbc a                                         ; $43f4: $9f
    sbc l                                         ; $43f5: $9d
    rst $38                                       ; $43f6: $ff
    ld [c], a                                     ; $43f7: $e2
    sbc a                                         ; $43f8: $9f
    ld a, [hl]                                    ; $43f9: $7e
    jp hl                                         ; $43fa: $e9


    ldh [$d6], a                                  ; $43fb: $e0 $d6
    jp hl                                         ; $43fd: $e9


    jp z, $43e4                                   ; $43fe: $ca $e4 $43

    jp hl                                         ; $4401: $e9


    sbc [hl]                                      ; $4402: $9e
    ldh [$fc], a                                  ; $4403: $e0 $fc
    ldh [$da], a                                  ; $4405: $e0 $da
    db $db                                        ; $4407: $db
    ret nc                                        ; $4408: $d0

    cp a                                          ; $4409: $bf
    pop de                                        ; $440a: $d1
    and b                                         ; $440b: $a0
    sbc a                                         ; $440c: $9f
    and d                                         ; $440d: $a2
    sbc h                                         ; $440e: $9c
    ld b, [hl]                                    ; $440f: $46
    rst $38                                       ; $4410: $ff
    ld [c], a                                     ; $4411: $e2
    sbc h                                         ; $4412: $9c
    pop bc                                        ; $4413: $c1
    sbc a                                         ; $4414: $9f
    ld a, [hl]                                    ; $4415: $7e
    rst $20                                       ; $4416: $e7
    ld b, e                                       ; $4417: $43
    xor $07                                       ; $4418: $ee $07
    ldh [rSCX], a                                 ; $441a: $e0 $43
    jp hl                                         ; $441c: $e9


    jr @-$19                                      ; $441d: $18 $e5

    jp nc, $15d3                                  ; $441f: $d2 $d3 $15

    sbc a                                         ; $4422: $9f
    jp nz, $aee2                                  ; $4423: $c2 $e2 $ae

    cp l                                          ; $4426: $bd
    pop hl                                        ; $4427: $e1
    and c                                         ; $4428: $a1
    db $fc                                        ; $4429: $fc
    push bc                                       ; $442a: $c5
    ld b, e                                       ; $442b: $43
    ldh a, [rTAC]                                 ; $442c: $f0 $07
    ldh [$ee], a                                  ; $442e: $e0 $ee
    ld b, e                                       ; $4430: $43
    jp hl                                         ; $4431: $e9


    jp c, $a0db                                   ; $4432: $da $db $a0

    nop                                           ; $4435: $00
    ldh [$d0], a                                  ; $4436: $e0 $d0
    pop de                                        ; $4438: $d1
    call nc, $d56b                                ; $4439: $d4 $6b $d5
    sbc [hl]                                      ; $443c: $9e
    jp $afe2                                      ; $443d: $c3 $e2 $af


    cp l                                          ; $4440: $bd
    pop hl                                        ; $4441: $e1
    sbc h                                         ; $4442: $9c
    sbc a                                         ; $4443: $9f
    db $fc                                        ; $4444: $fc
    call nz, Call_063_4300                        ; $4445: $c4 $00 $43
    ldh a, [rTAC]                                 ; $4448: $f0 $07
    ldh [$6d], a                                  ; $444a: $e0 $6d
    xor $82                                       ; $444c: $ee $82
    jp nz, $e0c0                                  ; $444e: $c2 $c0 $e0

    jp Jump_000_3ee0                              ; $4451: $c3 $e0 $3e


    ldh [$bd], a                                  ; $4454: $e0 $bd
    ldh [rSB], a                                  ; $4456: $e0 $01
    sbc [hl]                                      ; $4458: $9e
    db $ec                                        ; $4459: $ec
    db $e4                                        ; $445a: $e4
    add b                                         ; $445b: $80
    rst $18                                       ; $445c: $df
    add b                                         ; $445d: $80
    pop bc                                        ; $445e: $c1
    add d                                         ; $445f: $82
    jp nz, $e841                                  ; $4460: $c2 $41 $e8

    cp $c1                                        ; $4463: $fe $c1
    ld [hl], d                                    ; $4465: $72
    pop bc                                        ; $4466: $c1
    inc b                                         ; $4467: $04
    db $e4                                        ; $4468: $e4
    pop bc                                        ; $4469: $c1
    add b                                         ; $446a: $80
    rst $18                                       ; $446b: $df
    ld [$c318], a                                 ; $446c: $ea $18 $c3
    ld b, c                                       ; $446f: $41
    ldh [$84], a                                  ; $4470: $e0 $84
    db $e3                                        ; $4472: $e3
    ei                                            ; $4473: $fb
    jp nz, $e1bf                                  ; $4474: $c2 $bf $e1

    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    jp $dc80                                      ; $4479: $c3 $80 $dc


    add d                                         ; $447c: $82
    add $c0                                       ; $447d: $c6 $c0
    db $e3                                        ; $447f: $e3
    cp [hl]                                       ; $4480: $be
    jp $e23e                                      ; $4481: $c3 $3e $e2


    db $fc                                        ; $4484: $fc
    and e                                         ; $4485: $a3
    ld h, d                                       ; $4486: $62
    pop bc                                        ; $4487: $c1
    cp b                                          ; $4488: $b8
    add b                                         ; $4489: $80
    reti                                          ; $448a: $d9


    add d                                         ; $448b: $82
    and [hl]                                      ; $448c: $a6
    pop bc                                        ; $448d: $c1
    ret nz                                        ; $448e: $c0

    ld b, l                                       ; $448f: $45
    ld d, b                                       ; $4490: $50
    ld b, l                                       ; $4491: $45
    ld a, l                                       ; $4492: $7d
    and $9c                                       ; $4493: $e6 $9c
    pop bc                                        ; $4495: $c1
    sbc a                                         ; $4496: $9f
    ld a, d                                       ; $4497: $7a
    and a                                         ; $4498: $a7
    add b                                         ; $4499: $80
    reti                                          ; $449a: $d9


    add d                                         ; $449b: $82
    pop bc                                        ; $449c: $c1
    add d                                         ; $449d: $82
    and c                                         ; $449e: $a1
    ld b, d                                       ; $449f: $42
    ret nz                                        ; $44a0: $c0

    ld b, l                                       ; $44a1: $45

Jump_063_44a2:
    ld b, a                                       ; $44a2: $47
    ld c, a                                       ; $44a3: $4f
    ld e, l                                       ; $44a4: $5d
    ld c, c                                       ; $44a5: $49
    ld c, [hl]                                    ; $44a6: $4e
    ld c, b                                       ; $44a7: $48
    cp l                                          ; $44a8: $bd
    pop hl                                        ; $44a9: $e1
    add hl, sp                                    ; $44aa: $39
    pop bc                                        ; $44ab: $c1
    sbc [hl]                                      ; $44ac: $9e
    ld a, d                                       ; $44ad: $7a
    and a                                         ; $44ae: $a7
    db $fc                                        ; $44af: $fc
    add b                                         ; $44b0: $80
    db $dd                                        ; $44b1: $dd
    nop                                           ; $44b2: $00
    and c                                         ; $44b3: $a1
    and c                                         ; $44b4: $a1
    ld b, [hl]                                    ; $44b5: $46
    ld b, [hl]                                    ; $44b6: $46
    ld d, c                                       ; $44b7: $51
    ld e, [hl]                                    ; $44b8: $5e
    ld d, h                                       ; $44b9: $54
    rrca                                          ; $44ba: $0f
    ld e, c                                       ; $44bb: $59
    ld e, c                                       ; $44bc: $59
    ld d, e                                       ; $44bd: $53
    ld b, h                                       ; $44be: $44
    add hl, sp                                    ; $44bf: $39
    call nz, $a6fc                                ; $44c0: $c4 $fc $a6
    ld a, d                                       ; $44c3: $7a
    rst $08                                       ; $44c4: $cf
    nop                                           ; $44c5: $00
    xor a                                         ; $44c6: $af
    rst $30                                       ; $44c7: $f7
    ret nc                                        ; $44c8: $d0

    pop de                                        ; $44c9: $d1
    sbc [hl]                                      ; $44ca: $9e
    add c                                         ; $44cb: $81
    ldh [rRP], a                                  ; $44cc: $e0 $56
    ld a, [hl+]                                   ; $44ce: $2a
    jr nz, @+$22                                  ; $44cf: $20 $20

    add a                                         ; $44d1: $87
    jr nz, @+$2c                                  ; $44d2: $20 $2a

    ld b, l                                       ; $44d4: $45
    add hl, sp                                    ; $44d5: $39
    jp $a6fc                                      ; $44d6: $c3 $fc $a6


    ld a, d                                       ; $44d9: $7a
    rst $08                                       ; $44da: $cf
    nop                                           ; $44db: $00
    xor a                                         ; $44dc: $af
    jp nc, $d3eb                                  ; $44dd: $d2 $eb $d3

    sbc [hl]                                      ; $44e0: $9e
    add c                                         ; $44e1: $81
    ldh [$5a], a                                  ; $44e2: $e0 $5a
    pop bc                                        ; $44e4: $c1
    ldh [rNR41], a                                ; $44e5: $e0 $20
    jr nz, @+$44                                  ; $44e7: $20 $42

    ret nz                                        ; $44e9: $c0

    or a                                          ; $44ea: $b7
    call nz, $a5fc                                ; $44eb: $c4 $fc $a5
    ld a, d                                       ; $44ee: $7a
    rst $08                                       ; $44ef: $cf
    jp Jump_000_00ac                              ; $44f0: $c3 $ac $00


    jp nz, $e080                                  ; $44f3: $c2 $80 $e0

    ld d, d                                       ; $44f6: $52
    ld d, l                                       ; $44f7: $55
    ld [bc], a                                    ; $44f8: $02
    add c                                         ; $44f9: $81
    ldh [$2f], a                                  ; $44fa: $e0 $2f
    add b                                         ; $44fc: $80
    ldh [$3d], a                                  ; $44fd: $e0 $3d
    call nz, $80b8                                ; $44ff: $c4 $b8 $80
    halt                                          ; $4502: $76
    add e                                         ; $4503: $83
    add b                                         ; $4504: $80
    db $db                                        ; $4505: $db
    nop                                           ; $4506: $00
    add e                                         ; $4507: $83
    ld a, [hl]                                    ; $4508: $7e
    ld b, d                                       ; $4509: $42
    and b                                         ; $450a: $a0
    ld b, h                                       ; $450b: $44
    ld d, b                                       ; $450c: $50
    ld a, [hl+]                                   ; $450d: $2a
    jr nz, jr_063_453a                            ; $450e: $20 $2a

    ld b, e                                       ; $4510: $43
    ret nz                                        ; $4511: $c0

    jp $7540                                      ; $4512: $c3 $40 $75


jr_063_4515:
    and d                                         ; $4515: $a2
    cp d                                          ; $4516: $ba
    and c                                         ; $4517: $a1
    add sp, $61                                   ; $4518: $e8 $61
    add b                                         ; $451a: $80
    db $db                                        ; $451b: $db
    nop                                           ; $451c: $00
    and e                                         ; $451d: $a3
    ld [bc], a                                    ; $451e: $02
    and b                                         ; $451f: $a0
    ld c, d                                       ; $4520: $4a
    add c                                         ; $4521: $81
    ret nz                                        ; $4522: $c0

    sbc b                                         ; $4523: $98
    jp nz, $fec0                                  ; $4524: $c2 $c0 $fe

    add sp, -$08                                  ; $4527: $e8 $f8
    add d                                         ; $4529: $82
    sub $d7                                       ; $452a: $d6 $d7
    nop                                           ; $452c: $00
    cp a                                          ; $452d: $bf
    add d                                         ; $452e: $82
    add d                                         ; $452f: $82
    ld d, l                                       ; $4530: $55
    rst $38                                       ; $4531: $ff
    ld d, h                                       ; $4532: $54
    ld e, c                                       ; $4533: $59
    ld d, e                                       ; $4534: $53
    ld b, l                                       ; $4535: $45
    ld b, [hl]                                    ; $4536: $46
    ld b, l                                       ; $4537: $45
    scf                                           ; $4538: $37
    dec a                                         ; $4539: $3d

jr_063_453a:
    rlca                                          ; $453a: $07
    dec a                                         ; $453b: $3d
    dec a                                         ; $453c: $3d
    scf                                           ; $453d: $37
    rst $30                                       ; $453e: $f7
    and c                                         ; $453f: $a1
    ld [hl], l                                    ; $4540: $75
    add b                                         ; $4541: $80
    ld hl, sp-$7f                                 ; $4542: $f8 $81
    ld a, d                                       ; $4544: $7a
    ld l, a                                       ; $4545: $6f
    or b                                          ; $4546: $b0
    ld l, l                                       ; $4547: $6d
    or $00                                        ; $4548: $f6 $00
    and e                                         ; $454a: $a3
    sbc l                                         ; $454b: $9d
    sbc h                                         ; $454c: $9c
    dec b                                         ; $454d: $05
    jp nz, Jump_063_6239                          ; $454e: $c2 $39 $62

    ld h, e                                       ; $4551: $63
    ld h, h                                       ; $4552: $64
    ld h, a                                       ; $4553: $67
    ld h, l                                       ; $4554: $65
    ld h, [hl]                                    ; $4555: $66
    jr c, jr_063_4515                             ; $4556: $38 $bd

    ldh [$75], a                                  ; $4558: $e0 $75
    add b                                         ; $455a: $80
    sbc h                                         ; $455b: $9c
    sbc a                                         ; $455c: $9f
    ld a, d                                       ; $455d: $7a
    and h                                         ; $455e: $a4
    db $fc                                        ; $455f: $fc
    nop                                           ; $4560: $00
    cp a                                          ; $4561: $bf
    cp $85                                        ; $4562: $fe $85
    ld a, $69                                     ; $4564: $3e $69
    dec [hl]                                      ; $4566: $35
    dec [hl]                                      ; $4567: $35
    dec [hl]                                      ; $4568: $35
    ld [hl], a                                    ; $4569: $77
    ld [bc], a                                    ; $456a: $02
    cp l                                          ; $456b: $bd
    ldh [$39], a                                  ; $456c: $e0 $39
    or $62                                        ; $456e: $f6 $62
    db $f4                                        ; $4570: $f4
    ld b, h                                       ; $4571: $44
    nop                                           ; $4572: $00
    cp a                                          ; $4573: $bf
    cp l                                          ; $4574: $bd
    and d                                         ; $4575: $a2
    ret nz                                        ; $4576: $c0

    push hl                                       ; $4577: $e5
    cp l                                          ; $4578: $bd
    ldh [$83], a                                  ; $4579: $e0 $83
    ld l, d                                       ; $457b: $6a
    ld a, $3b                                     ; $457c: $3e $3b
    jp nz, $817a                                  ; $457e: $c2 $7a $81

    ld a, d                                       ; $4581: $7a
    ld l, l                                       ; $4582: $6d
    nop                                           ; $4583: $00
    or d                                          ; $4584: $b2
    add b                                         ; $4585: $80
    and $6b                                       ; $4586: $e6 $6b
    add c                                         ; $4588: $81
    ld l, h                                       ; $4589: $6c
    ret nz                                        ; $458a: $c0

    push hl                                       ; $458b: $e5
    rst $38                                       ; $458c: $ff
    jp $bb00                                      ; $458d: $c3 $00 $bb


    sbc d                                         ; $4590: $9a
    ld b, e                                       ; $4591: $43
    adc [hl]                                      ; $4592: $8e
    ld b, c                                       ; $4593: $41
    ld b, b                                       ; $4594: $40
    ld h, e                                       ; $4595: $63
    ld b, [hl]                                    ; $4596: $46
    rlca                                          ; $4597: $07
    add hl, sp                                    ; $4598: $39
    ld l, [hl]                                    ; $4599: $6e
    ld l, a                                       ; $459a: $6f
    cp a                                          ; $459b: $bf
    ld [c], a                                     ; $459c: $e2
    add b                                         ; $459d: $80
    ldh [$b7], a                                  ; $459e: $e0 $b7
    ld h, c                                       ; $45a0: $61
    ld a, d                                       ; $45a1: $7a
    ld [hl], c                                    ; $45a2: $71
    add [hl]                                      ; $45a3: $86
    ld l, c                                       ; $45a4: $69
    inc c                                         ; $45a5: $0c
    nop                                           ; $45a6: $00
    ld h, a                                       ; $45a7: $67
    ccf                                           ; $45a8: $3f
    add h                                         ; $45a9: $84
    ld b, l                                       ; $45aa: $45
    ld [hl], $bf                                  ; $45ab: $36 $bf
    db $e3                                        ; $45ad: $e3
    ld b, b                                       ; $45ae: $40
    db $e4                                        ; $45af: $e4
    ld a, d                                       ; $45b0: $7a
    ld [hl], c                                    ; $45b1: $71
    jp $d8a9                                      ; $45b2: $c3 $a9 $d8


    jr jr_063_45fa                                ; $45b5: $18 $43

    nop                                           ; $45b7: $00
    ld h, h                                       ; $45b8: $64
    add c                                         ; $45b9: $81
    ld b, d                                       ; $45ba: $42
    ld b, h                                       ; $45bb: $44
    inc a                                         ; $45bc: $3c
    ld a, [hl]                                    ; $45bd: $7e
    pop hl                                        ; $45be: $e1
    ld l, h                                       ; $45bf: $6c
    ld l, l                                       ; $45c0: $6d
    ret nz                                        ; $45c1: $c0

    nop                                           ; $45c2: $00
    rst $20                                       ; $45c3: $e7
    nop                                           ; $45c4: $00
    or [hl]                                       ; $45c5: $b6
    ld hl, $8262                                  ; $45c6: $21 $62 $82
    inc h                                         ; $45c9: $24
    ld b, c                                       ; $45ca: $41
    db $e4                                        ; $45cb: $e4
    ld a, a                                       ; $45cc: $7f
    pop hl                                        ; $45cd: $e1
    dec [hl]                                      ; $45ce: $35
    ld l, [hl]                                    ; $45cf: $6e
    rra                                           ; $45d0: $1f
    ld [hl], b                                    ; $45d1: $70
    ld [hl], c                                    ; $45d2: $71
    ld [hl], b                                    ; $45d3: $70
    ld l, [hl]                                    ; $45d4: $6e
    add hl, sp                                    ; $45d5: $39
    nop                                           ; $45d6: $00
    and $00                                       ; $45d7: $e6 $00
    cp c                                          ; $45d9: $b9
    add d                                         ; $45da: $82
    push hl                                       ; $45db: $e5
    ld l, h                                       ; $45dc: $6c
    nop                                           ; $45dd: $00
    add c                                         ; $45de: $81
    add $a4                                       ; $45df: $c6 $a4
    ld b, h                                       ; $45e1: $44
    inc a                                         ; $45e2: $3c
    ld a, $c0                                     ; $45e3: $3e $c0
    dec sp                                        ; $45e5: $3b
    ld [hl], $78                                  ; $45e6: $36 $78

jr_063_45e8:
    add d                                         ; $45e8: $82
    ldh a, [rP1]                                  ; $45e9: $f0 $00
    ld [c], a                                     ; $45eb: $e2
    nop                                           ; $45ec: $00
    ld e, l                                       ; $45ed: $5d
    add d                                         ; $45ee: $82
    ld b, h                                       ; $45ef: $44
    add $a3                                       ; $45f0: $c6 $a3
    add hl, sp                                    ; $45f2: $39
    ld b, l                                       ; $45f3: $45
    ld b, e                                       ; $45f4: $43
    ld [hl], $07                                  ; $45f5: $36 $07
    dec [hl]                                      ; $45f7: $35
    ld [hl], $3f                                  ; $45f8: $36 $3f

jr_063_45fa:
    ld hl, sp-$7d                                 ; $45fa: $f8 $83
    ld a, d                                       ; $45fc: $7a
    ld h, e                                       ; $45fd: $63
    nop                                           ; $45fe: $00
    ld e, e                                       ; $45ff: $5b
    add d                                         ; $4600: $82
    ld b, [hl]                                    ; $4601: $46
    add $a2                                       ; $4602: $c6 $a2
    ccf                                           ; $4604: $3f
    ld l, d                                       ; $4605: $6a
    ld a, [hl-]                                   ; $4606: $3a
    ld b, h                                       ; $4607: $44
    ld e, a                                       ; $4608: $5f
    ld c, d                                       ; $4609: $4a
    ccf                                           ; $460a: $3f
    cp e                                          ; $460b: $bb
    ld h, e                                       ; $460c: $63
    or a                                          ; $460d: $b7
    ld hl, $00f0                                  ; $460e: $21 $f0 $00
    cp h                                          ; $4611: $bc
    inc b                                         ; $4612: $04
    dec h                                         ; $4613: $25
    call nz, $c0a1                                ; $4614: $c4 $a1 $c0
    db $e3                                        ; $4617: $e3
    dec [hl]                                      ; $4618: $35
    ld b, b                                       ; $4619: $40
    ld d, d                                       ; $461a: $52
    ld h, b                                       ; $461b: $60
    add e                                         ; $461c: $83
    ld c, h                                       ; $461d: $4c
    ld b, a                                       ; $461e: $47
    cp e                                          ; $461f: $bb
    ld h, e                                       ; $4620: $63
    ld a, d                                       ; $4621: $7a
    ld b, a                                       ; $4622: $47
    add b                                         ; $4623: $80
    sub $82                                       ; $4624: $d6 $82
    ld c, b                                       ; $4626: $48
    ld b, [hl]                                    ; $4627: $46
    and d                                         ; $4628: $a2
    ld [hl], l                                    ; $4629: $75
    ld a, a                                       ; $462a: $7f

jr_063_462b:
    ld h, [hl]                                    ; $462b: $66
    ld [hl], $45                                  ; $462c: $36 $45
    ld d, d                                       ; $462e: $52
    ld h, c                                       ; $462f: $61
    ld h, c                                       ; $4630: $61
    ld e, h                                       ; $4631: $5c
    ld a, [$5825]                                 ; $4632: $fa $25 $58
    nop                                           ; $4635: $00
    cp d                                          ; $4636: $ba
    add d                                         ; $4637: $82
    rst $00                                       ; $4638: $c7
    ret nz                                        ; $4639: $c0

    and $35                                       ; $463a: $e6 $35
    ld l, b                                       ; $463c: $68
    cp a                                          ; $463d: $bf
    pop hl                                        ; $463e: $e1
    ld d, d                                       ; $463f: $52
    cp d                                          ; $4640: $ba
    ld b, d                                       ; $4641: $42
    jr nz, jr_063_46c2                            ; $4642: $20 $7e

    ld l, b                                       ; $4644: $68
    add b                                         ; $4645: $80
    ld d, $00                                     ; $4646: $16 $00
    db $e4                                        ; $4648: $e4
    ret nz                                        ; $4649: $c0

    rst $20                                       ; $464a: $e7
    cp a                                          ; $464b: $bf
    ld [c], a                                     ; $464c: $e2
    ld b, l                                       ; $464d: $45
    cp b                                          ; $464e: $b8
    ld bc, $00fa                                  ; $464f: $01 $fa $00
    db $10                                        ; $4652: $10
    add sp, $01                                   ; $4653: $e8 $01
    nop                                           ; $4655: $00
    cp a                                          ; $4656: $bf
    add d                                         ; $4657: $82
    inc h                                         ; $4658: $24
    add $86                                       ; $4659: $c6 $86
    inc a                                         ; $465b: $3c
    ld a, h                                       ; $465c: $7c
    ld b, b                                       ; $465d: $40
    ei                                            ; $465e: $fb
    inc bc                                        ; $465f: $03
    ld a, d                                       ; $4660: $7a
    inc de                                        ; $4661: $13
    stop                                          ; $4662: $10 $00
    xor l                                         ; $4664: $ad
    add d                                         ; $4665: $82
    jr nz, jr_063_45e8                            ; $4666: $20 $80

    jp nz, $85c6                                  ; $4668: $c2 $c6 $85

    dec [hl]                                      ; $466b: $35
    cp l                                          ; $466c: $bd
    ld b, e                                       ; $466d: $43
    inc b                                         ; $466e: $04
    and b                                         ; $466f: $a0
    add d                                         ; $4670: $82
    db $e3                                        ; $4671: $e3
    ld a, b                                       ; $4672: $78
    nop                                           ; $4673: $00
    cp l                                          ; $4674: $bd
    nop                                           ; $4675: $00
    push bc                                       ; $4676: $c5
    add $83                                       ; $4677: $c6 $83
    ld l, h                                       ; $4679: $6c
    ld l, l                                       ; $467a: $6d
    dec [hl]                                      ; $467b: $35
    ld b, b                                       ; $467c: $40
    ld a, [hl]                                    ; $467d: $7e
    ld a, [hl+]                                   ; $467e: $2a

jr_063_467f:
    ld d, b                                       ; $467f: $50
    add b                                         ; $4680: $80
    rla                                           ; $4681: $17
    nop                                           ; $4682: $00
    and h                                         ; $4683: $a4
    jr jr_063_46c7                                ; $4684: $18 $41

    ld b, c                                       ; $4686: $41
    ld hl, $4836                                  ; $4687: $21 $36 $48
    and b                                         ; $468a: $a0
    ld [hl], c                                    ; $468b: $71
    ld b, [hl]                                    ; $468c: $46
    and b                                         ; $468d: $a0
    nop                                           ; $468e: $00
    ld b, b                                       ; $468f: $40
    ldh [rLY], a                                  ; $4690: $e0 $44
    ld h, d                                       ; $4692: $62
    inc b                                         ; $4693: $04
    db $e3                                        ; $4694: $e3
    add b                                         ; $4695: $80
    jr jr_063_4698                                ; $4696: $18 $00

jr_063_4698:
    xor b                                         ; $4698: $a8
    jp Jump_000_0661                              ; $4699: $c3 $61 $06


Jump_063_469c:
    and b                                         ; $469c: $a0
    call nz, Call_000_0062                        ; $469d: $c4 $62 $00

Jump_063_46a0:
    ld b, l                                       ; $46a0: $45
    and e                                         ; $46a1: $a3
    ld a, a                                       ; $46a2: $7f
    jr nz, jr_063_462b                            ; $46a3: $20 $86

    adc $00                                       ; $46a5: $ce $00
    or e                                          ; $46a7: $b3
    nop                                           ; $46a8: $00
    ld b, e                                       ; $46a9: $43
    cp a                                          ; $46aa: $bf
    and $c1                                       ; $46ab: $e6 $c1
    pop bc                                        ; $46ad: $c1
    ret nz                                        ; $46ae: $c0

    ld [hl+], a                                   ; $46af: $22
    jr nz, @-$7c                                  ; $46b0: $20 $82

    ld h, $00                                     ; $46b2: $26 $00
    cp h                                          ; $46b4: $bc
    ld a, [hl]                                    ; $46b5: $7e
    ld h, c                                       ; $46b6: $61

jr_063_46b7:
    add c                                         ; $46b7: $81
    add e                                         ; $46b8: $83
    push bc                                       ; $46b9: $c5
    add d                                         ; $46ba: $82
    dec [hl]                                      ; $46bb: $35
    ld b, $62                                     ; $46bc: $06 $62
    ld a, $00                                     ; $46be: $3e $00
    ld [hl], b                                    ; $46c0: $70
    add d                                         ; $46c1: $82

jr_063_46c2:
    dec h                                         ; $46c2: $25
    nop                                           ; $46c3: $00
    cp e                                          ; $46c4: $bb
    nop                                           ; $46c5: $00
    ld b, e                                       ; $46c6: $43

jr_063_46c7:
    ld b, d                                       ; $46c7: $42
    ld h, c                                       ; $46c8: $61
    xor [hl]                                      ; $46c9: $ae
    ld b, [hl]                                    ; $46ca: $46
    add hl, sp                                    ; $46cb: $39
    inc b                                         ; $46cc: $04
    ld h, d                                       ; $46cd: $62
    pop bc                                        ; $46ce: $c1
    ld a, [hl-]                                   ; $46cf: $3a
    ld bc, $04c4                                  ; $46d0: $01 $c4 $04
    jp $8c43                                      ; $46d3: $c3 $43 $8c


    nop                                           ; $46d6: $00
    ld d, h                                       ; $46d7: $54
    ld [bc], a                                    ; $46d8: $02
    ld h, c                                       ; $46d9: $61
    xor a                                         ; $46da: $af
    ld b, [hl]                                    ; $46db: $46
    ld bc, $c43e                                  ; $46dc: $01 $3e $c4
    ld b, d                                       ; $46df: $42
    nop                                           ; $46e0: $00
    ret nz                                        ; $46e1: $c0

    cp l                                          ; $46e2: $bd
    ld bc, $8504                                  ; $46e3: $01 $04 $85
    add b                                         ; $46e6: $80
    rst $10                                       ; $46e7: $d7
    nop                                           ; $46e8: $00
    ld c, c                                       ; $46e9: $49
    ld b, d                                       ; $46ea: $42
    ld b, d                                       ; $46eb: $42
    nop                                           ; $46ec: $00
    ret nz                                        ; $46ed: $c0

    db $e3                                        ; $46ee: $e3
    nop                                           ; $46ef: $00
    rst $00                                       ; $46f0: $c7
    inc b                                         ; $46f1: $04
    jr nz, jr_063_46b7                            ; $46f2: $20 $c3

    ld c, l                                       ; $46f4: $4d
    nop                                           ; $46f5: $00
    ld d, h                                       ; $46f6: $54
    add c                                         ; $46f7: $81
    ld h, e                                       ; $46f8: $63
    ld b, b                                       ; $46f9: $40
    and $04                                       ; $46fa: $e6 $04
    ld h, a                                       ; $46fc: $67
    jr c, jr_063_467f                             ; $46fd: $38 $80

    call c, $857e                                 ; $46ff: $dc $7e $85
    jp $ae21                                      ; $4702: $c3 $21 $ae


    ld b, [hl]                                    ; $4705: $46
    ld b, d                                       ; $4706: $42
    inc b                                         ; $4707: $04
    ld b, d                                       ; $4708: $42
    ld b, [hl]                                    ; $4709: $46
    ld h, d                                       ; $470a: $62
    ldh a, [rP1]                                  ; $470b: $f0 $00
    db $e4                                        ; $470d: $e4
    jp Jump_000_004e                              ; $470e: $c3 $4e $00


    ld d, h                                       ; $4711: $54
    add e                                         ; $4712: $83
    ld hl, $46af                                  ; $4713: $21 $af $46
    ld b, l                                       ; $4716: $45
    ld a, [hl-]                                   ; $4717: $3a
    nop                                           ; $4718: $00
    pop bc                                        ; $4719: $c1
    jp $e401                                      ; $471a: $c3 $01 $e4


    ld h, [hl]                                    ; $471d: $66
    inc h                                         ; $471e: $24
    nop                                           ; $471f: $00
    ld e, a                                       ; $4720: $5f
    nop                                           ; $4721: $00
    ld h, d                                       ; $4722: $62
    rst $38                                       ; $4723: $ff
    push bc                                       ; $4724: $c5
    add a                                         ; $4725: $87
    ld [hl+], a                                   ; $4726: $22
    add d                                         ; $4727: $82
    add e                                         ; $4728: $83
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    jp Jump_063_5f00                              ; $472b: $c3 $00 $5f


    ld b, d                                       ; $472e: $42
    ld h, $3f                                     ; $472f: $26 $3f
    pop bc                                        ; $4731: $c1
    ld bc, $81c3                                  ; $4732: $01 $c3 $81
    and b                                         ; $4735: $a0
    nop                                           ; $4736: $00
    cp a                                          ; $4737: $bf
    nop                                           ; $4738: $00
    ld b, a                                       ; $4739: $47
    nop                                           ; $473a: $00
    ld b, c                                       ; $473b: $41
    ld b, c                                       ; $473c: $41
    dec bc                                        ; $473d: $0b
    and b                                         ; $473e: $a0
    ld b, e                                       ; $473f: $43
    ld b, b                                       ; $4740: $40
    add a                                         ; $4741: $87
    ld b, b                                       ; $4742: $40
    inc b                                         ; $4743: $04
    ld h, c                                       ; $4744: $61
    ld b, l                                       ; $4745: $45
    nop                                           ; $4746: $00
    nop                                           ; $4747: $00
    cp a                                          ; $4748: $bf
    nop                                           ; $4749: $00
    ld b, a                                       ; $474a: $47
    inc b                                         ; $474b: $04
    nop                                           ; $474c: $00
    db $e3                                        ; $474d: $e3
    cp e                                          ; $474e: $bb
    add b                                         ; $474f: $80
    ccf                                           ; $4750: $3f
    add l                                         ; $4751: $85
    ld h, b                                       ; $4752: $60
    ld bc, $00e5                                  ; $4753: $01 $e5 $00
    cp a                                          ; $4756: $bf
    nop                                           ; $4757: $00
    ld b, [hl]                                    ; $4758: $46
    add d                                         ; $4759: $82
    dec h                                         ; $475a: $25
    nop                                           ; $475b: $00
    ld sp, hl                                     ; $475c: $f9
    and $00                                       ; $475d: $e6 $00
    add sp, $00                                   ; $475f: $e8 $00
    ld e, a                                       ; $4761: $5f
    add d                                         ; $4762: $82
    daa                                           ; $4763: $27
    cp c                                          ; $4764: $b9
    rst $20                                       ; $4765: $e7
    nop                                           ; $4766: $00
    cp a                                          ; $4767: $bf
    nop                                           ; $4768: $00
    ld c, b                                       ; $4769: $48
    ld bc, $e0c3                                  ; $476a: $01 $c3 $e0
    ld a, h                                       ; $476d: $7c
    and $ff                                       ; $476e: $e6 $ff
    jp $bf00                                      ; $4770: $c3 $00 $bf


    nop                                           ; $4773: $00
    ld b, [hl]                                    ; $4774: $46
    ld bc, $43c4                                  ; $4775: $01 $c4 $43
    ld b, c                                       ; $4778: $41
    ld b, e                                       ; $4779: $43
    ldh [$fd], a                                  ; $477a: $e0 $fd
    ldh [rP1], a                                  ; $477c: $e0 $00
    call z, Call_063_7a80                         ; $477e: $cc $80 $7a
    add d                                         ; $4781: $82
    rst $00                                       ; $4782: $c7
    ld a, a                                       ; $4783: $7f
    ld h, c                                       ; $4784: $61
    dec sp                                        ; $4785: $3b
    dec [hl]                                      ; $4786: $35
    dec sp                                        ; $4787: $3b
    ret nz                                        ; $4788: $c0

    db $fd                                        ; $4789: $fd
    ldh [rTIMA], a                                ; $478a: $e0 $05
    jr nz, jr_063_47d2                            ; $478c: $20 $44

    ld [hl+], a                                   ; $478e: $22
    nop                                           ; $478f: $00
    cp [hl]                                       ; $4790: $be
    add d                                         ; $4791: $82
    ld l, d                                       ; $4792: $6a
    ld b, [hl]                                    ; $4793: $46
    ld bc, $64a4                                  ; $4794: $01 $a4 $64
    jp nz, $e0ff                                  ; $4797: $c2 $ff $e0

    and l                                         ; $479a: $a5
    cp a                                          ; $479b: $bf
    ld h, l                                       ; $479c: $65
    nop                                           ; $479d: $00
    cp a                                          ; $479e: $bf
    nop                                           ; $479f: $00
    ld b, l                                       ; $47a0: $45
    ld [bc], a                                    ; $47a1: $02
    and l                                         ; $47a2: $a5
    ld l, c                                       ; $47a3: $69
    and e                                         ; $47a4: $a3
    daa                                           ; $47a5: $27
    dec [hl]                                      ; $47a6: $35
    dec [hl]                                      ; $47a7: $35
    and e                                         ; $47a8: $a3
    add b                                         ; $47a9: $80
    ld b, c                                       ; $47aa: $41
    ld [bc], a                                    ; $47ab: $02
    ld hl, $00a1                                  ; $47ac: $21 $a1 $00
    and e                                         ; $47af: $a3
    ld a, [hl]                                    ; $47b0: $7e
    pop bc                                        ; $47b1: $c1
    inc b                                         ; $47b2: $04
    nop                                           ; $47b3: $00
    cp l                                          ; $47b4: $bd
    jp nz, $afa1                                  ; $47b5: $c2 $a1 $af

    ret nz                                        ; $47b8: $c0

    pop hl                                        ; $47b9: $e1
    ld b, b                                       ; $47ba: $40
    ld b, l                                       ; $47bb: $45
    ld b, l                                       ; $47bc: $45
    nop                                           ; $47bd: $00
    inc bc                                        ; $47be: $03
    ld hl, $a362                                  ; $47bf: $21 $62 $a3
    call c, Call_063_5f00                         ; $47c2: $dc $00 $5f
    ld [bc], a                                    ; $47c5: $02
    add e                                         ; $47c6: $83
    ld b, h                                       ; $47c7: $44
    inc a                                         ; $47c8: $3c
    ld l, e                                       ; $47c9: $6b
    add b                                         ; $47ca: $80
    ld b, b                                       ; $47cb: $40
    ld [hl], c                                    ; $47cc: $71
    ld l, l                                       ; $47cd: $6d
    ld [hl], b                                    ; $47ce: $70
    rst $38                                       ; $47cf: $ff
    ld b, e                                       ; $47d0: $43
    nop                                           ; $47d1: $00

jr_063_47d2:
    ld h, l                                       ; $47d2: $65
    nop                                           ; $47d3: $00
    ld e, a                                       ; $47d4: $5f
    nop                                           ; $47d5: $00
    pop bc                                        ; $47d6: $c1
    sbc l                                         ; $47d7: $9d
    sbc l                                         ; $47d8: $9d
    sbc h                                         ; $47d9: $9c
    ret nz                                        ; $47da: $c0

    ret                                           ; $47db: $c9


    adc a                                         ; $47dc: $8f
    sbc h                                         ; $47dd: $9c
    sbc l                                         ; $47de: $9d
    sbc l                                         ; $47df: $9d
    sbc a                                         ; $47e0: $9f
    nop                                           ; $47e1: $00
    cp a                                          ; $47e2: $bf
    nop                                           ; $47e3: $00
    ld c, b                                       ; $47e4: $48
    cp [hl]                                       ; $47e5: $be
    ld b, b                                       ; $47e6: $40
    sbc l                                         ; $47e7: $9d
    nop                                           ; $47e8: $00
    rst $38                                       ; $47e9: $ff
    add sp, -$7a                                  ; $47ea: $e8 $86
    ld [bc], a                                    ; $47ec: $02
    nop                                           ; $47ed: $00
    cp a                                          ; $47ee: $bf
    ld a, [hl]                                    ; $47ef: $7e
    add hl, hl                                    ; $47f0: $29
    cp $ed                                        ; $47f1: $fe $ed
    add [hl]                                      ; $47f3: $86
    ld de, $7180                                  ; $47f4: $11 $80 $71
    ld a, [hl]                                    ; $47f7: $7e
    rst $20                                       ; $47f8: $e7
    nop                                           ; $47f9: $00
    db $fc                                        ; $47fa: $fc
    db $eb                                        ; $47fb: $eb
    add [hl]                                      ; $47fc: $86
    ld de, $4387                                  ; $47fd: $11 $87 $43
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    pop bc                                        ; $4803: $c1
    nop                                           ; $4804: $00
    rst $38                                       ; $4805: $ff
    rst $38                                       ; $4806: $ff
    rst $38                                       ; $4807: $ff
    rst $38                                       ; $4808: $ff
    rst $38                                       ; $4809: $ff
    rst $38                                       ; $480a: $ff
    rst $38                                       ; $480b: $ff
    rst $38                                       ; $480c: $ff
    rst $38                                       ; $480d: $ff
    rst $38                                       ; $480e: $ff
    nop                                           ; $480f: $00
    nop                                           ; $4810: $00
    ld bc, $fe80                                  ; $4811: $01 $80 $fe
    ldh [rIE], a                                  ; $4814: $e0 $ff
    rst $38                                       ; $4816: $ff
    rst $38                                       ; $4817: $ff
    rst $38                                       ; $4818: $ff
    rst $38                                       ; $4819: $ff
    add sp, $00                                   ; $481a: $e8 $00
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    ld [bc], a                                    ; $481e: $02
    nop                                           ; $481f: $00
    inc e                                         ; $4820: $1c
    dec b                                         ; $4821: $05
    ld [bc], a                                    ; $4822: $02
    ld bc, $0619                                  ; $4823: $01 $19 $06
    ld [bc], a                                    ; $4826: $02
    ld [bc], a                                    ; $4827: $02
    rra                                           ; $4828: $1f
    ld b, $02                                     ; $4829: $06 $02
    inc bc                                        ; $482b: $03
    dec de                                        ; $482c: $1b
    ld [$0402], sp                                ; $482d: $08 $02 $04
    ld hl, $0209                                  ; $4830: $21 $09 $02
    dec b                                         ; $4833: $05
    ld e, $0a                                     ; $4834: $1e $0a
    ld [bc], a                                    ; $4836: $02
    ld b, $23                                     ; $4837: $06 $23
    inc c                                         ; $4839: $0c
    ld [bc], a                                    ; $483a: $02
    rlca                                          ; $483b: $07
    jr nz, jr_063_484b                            ; $483c: $20 $0d

    ld [bc], a                                    ; $483e: $02
    ld [$1024], sp                                ; $483f: $08 $24 $10
    ld [bc], a                                    ; $4842: $02
    add hl, bc                                    ; $4843: $09
    daa                                           ; $4844: $27
    inc de                                        ; $4845: $13
    ld [bc], a                                    ; $4846: $02
    ld a, [bc]                                    ; $4847: $0a
    jr z, jr_063_4861                             ; $4848: $28 $17

    ld [bc], a                                    ; $484a: $02

jr_063_484b:
    dec bc                                        ; $484b: $0b
    jr z, jr_063_4869                             ; $484c: $28 $1b

    ld [bc], a                                    ; $484e: $02
    inc c                                         ; $484f: $0c

Jump_063_4850:
    dec h                                         ; $4850: $25
    ld e, $02                                     ; $4851: $1e $02
    dec c                                         ; $4853: $0d
    inc h                                         ; $4854: $24
    ld [hl+], a                                   ; $4855: $22
    ld [bc], a                                    ; $4856: $02
    ld c, $23                                     ; $4857: $0e $23
    ld h, $02                                     ; $4859: $26 $02
    rrca                                          ; $485b: $0f
    jr jr_063_4888                                ; $485c: $18 $2a

    ld [bc], a                                    ; $485e: $02
    db $10                                        ; $485f: $10
    inc hl                                        ; $4860: $23

jr_063_4861:
    ld a, [hl+]                                   ; $4861: $2a
    ld [bc], a                                    ; $4862: $02
    ld de, $2e18                                  ; $4863: $11 $18 $2e
    ld [bc], a                                    ; $4866: $02
    ld [de], a                                    ; $4867: $12
    ld [hl+], a                                   ; $4868: $22

jr_063_4869:
    ld l, $02                                     ; $4869: $2e $02
    inc de                                        ; $486b: $13
    jr jr_063_48a0                                ; $486c: $18 $32

    ld [bc], a                                    ; $486e: $02
    inc d                                         ; $486f: $14
    ld hl, $0232                                  ; $4870: $21 $32 $02
    dec d                                         ; $4873: $15
    rla                                           ; $4874: $17
    ld [hl], $02                                  ; $4875: $36 $02
    ld d, $22                                     ; $4877: $16 $22
    ld [hl], $02                                  ; $4879: $36 $02
    rla                                           ; $487b: $17
    ld d, $3a                                     ; $487c: $16 $3a
    ld [bc], a                                    ; $487e: $02
    jr jr_063_48a4                                ; $487f: $18 $23

    ld a, [hl-]                                   ; $4881: $3a
    rst $38                                       ; $4882: $ff
    rst $38                                       ; $4883: $ff
    rst $38                                       ; $4884: $ff
    adc l                                         ; $4885: $8d
    ld c, b                                       ; $4886: $48
    and h                                         ; $4887: $a4

jr_063_4888:
    ld c, h                                       ; $4888: $4c
    ld a, a                                       ; $4889: $7f
    ld d, c                                       ; $488a: $51
    sbc d                                         ; $488b: $9a
    ld d, c                                       ; $488c: $51
    cp a                                          ; $488d: $bf
    ld c, $0e                                     ; $488e: $0e $0e
    dec c                                         ; $4890: $0d
    dec c                                         ; $4891: $0d
    dec c                                         ; $4892: $0d
    ld c, $fa                                     ; $4893: $0e $fa
    xor $4d                                       ; $4895: $ee $4d
    rlca                                          ; $4897: $07
    ld c, $0e                                     ; $4898: $0e $0e
    ld c, l                                       ; $489a: $4d
    db $fc                                        ; $489b: $fc
    db $e4                                        ; $489c: $e4
    pop hl                                        ; $489d: $e1
    pop hl                                        ; $489e: $e1
    db $fc                                        ; $489f: $fc

jr_063_48a0:
    push hl                                       ; $48a0: $e5
    ldh a, [$e3]                                  ; $48a1: $f0 $e3
    ret nc                                        ; $48a3: $d0

jr_063_48a4:
    jp hl                                         ; $48a4: $e9


    inc b                                         ; $48a5: $04
    push bc                                       ; $48a6: $c5
    ldh [$fd], a                                  ; $48a7: $e0 $fd
    rst $28                                       ; $48a9: $ef
    ld l, l                                       ; $48aa: $6d
    ld [$d5f2], a                                 ; $48ab: $ea $f2 $d5
    db $e4                                        ; $48ae: $e4
    call $b8f3                                    ; $48af: $cd $f3 $b8
    ld [$f482], a                                 ; $48b2: $ea $82 $f4
    nop                                           ; $48b5: $00
    ld a, [hl]                                    ; $48b6: $7e
    ld [c], a                                     ; $48b7: $e2
    adc l                                         ; $48b8: $8d
    db $ec                                        ; $48b9: $ec
    ld b, e                                       ; $48ba: $43
    pop af                                        ; $48bb: $f1
    adc [hl]                                      ; $48bc: $8e
    xor $5a                                       ; $48bd: $ee $5a
    ld [$e530], a                                 ; $48bf: $ea $30 $e5
    sub $f1                                       ; $48c2: $d6 $f1
    xor [hl]                                      ; $48c4: $ae
    push hl                                       ; $48c5: $e5
    adc [hl]                                      ; $48c6: $8e
    ld [$0deb], sp                                ; $48c7: $08 $eb $0d
    ld c, l                                       ; $48ca: $4d
    dec l                                         ; $48cb: $2d
    db $fc                                        ; $48cc: $fc
    call z, $fa20                                 ; $48cd: $cc $20 $fa
    db $ec                                        ; $48d0: $ec
    call z, Call_000_1f0d                         ; $48d1: $cc $0d $1f
    ld l, l                                       ; $48d4: $6d
    ld c, e                                       ; $48d5: $4b
    ld c, e                                       ; $48d6: $4b
    ld c, l                                       ; $48d7: $4d
    dec l                                         ; $48d8: $2d
    call nc, $80d6                                ; $48d9: $d4 $d6 $80
    jp nc, $c98a                                  ; $48dc: $d2 $8a $c9

    cp $c1                                        ; $48df: $fe $c1
    ldh [$0d], a                                  ; $48e1: $e0 $0d
    ld c, e                                       ; $48e3: $4b
    ld c, l                                       ; $48e4: $4d
    ld c, l                                       ; $48e5: $4d
    ld c, l                                       ; $48e6: $4d
    dec l                                         ; $48e7: $2d
    dec l                                         ; $48e8: $2d
    ldh a, [rPCM12]                               ; $48e9: $f0 $76
    add $80                                       ; $48eb: $c6 $80
    db $dd                                        ; $48ed: $dd
    ld l, d                                       ; $48ee: $6a
    call nz, $c246                                ; $48ef: $c4 $46 $c2
    ld l, l                                       ; $48f2: $6d
    ld c, e                                       ; $48f3: $4b
    dec c                                         ; $48f4: $0d
    dec hl                                        ; $48f5: $2b
    rlca                                          ; $48f6: $07
    dec c                                         ; $48f7: $0d
    dec hl                                        ; $48f8: $2b
    ld c, e                                       ; $48f9: $4b
    rst $38                                       ; $48fa: $ff
    ldh [$3a], a                                  ; $48fb: $e0 $3a
    ld [c], a                                     ; $48fd: $e2
    rst $38                                       ; $48fe: $ff
    rst $38                                       ; $48ff: $ff
    di                                            ; $4900: $f3
    and c                                         ; $4901: $a1
    jr @-$3a                                      ; $4902: $18 $c4

    inc b                                         ; $4904: $04
    ld hl, sp-$60                                 ; $4905: $f8 $a0
    add d                                         ; $4907: $82
    pop hl                                        ; $4908: $e1
    dec hl                                        ; $4909: $2b
    rst $38                                       ; $490a: $ff
    db $e4                                        ; $490b: $e4
    ld sp, hl                                     ; $490c: $f9
    ret nz                                        ; $490d: $c0

    db $fc                                        ; $490e: $fc
    and c                                         ; $490f: $a1
    add b                                         ; $4910: $80
    sbc $ea                                       ; $4911: $de $ea
    and e                                         ; $4913: $a3
    nop                                           ; $4914: $00
    xor b                                         ; $4915: $a8
    and b                                         ; $4916: $a0
    ld b, $e0                                     ; $4917: $06 $e0
    add a                                         ; $4919: $87
    ldh [$c1], a                                  ; $491a: $e0 $c1
    ld [c], a                                     ; $491c: $e2
    cp e                                          ; $491d: $bb
    pop hl                                        ; $491e: $e1
    ld a, [hl]                                    ; $491f: $7e
    push hl                                       ; $4920: $e5
    scf                                           ; $4921: $37
    ldh [$80], a                                  ; $4922: $e0 $80
    jp c, $8280                                   ; $4924: $da $80 $82

    push hl                                       ; $4927: $e5
    ld b, l                                       ; $4928: $45
    pop hl                                        ; $4929: $e1
    inc bc                                        ; $492a: $03
    pop hl                                        ; $492b: $e1
    ld a, [hl]                                    ; $492c: $7e
    pop hl                                        ; $492d: $e1
    ld a, e                                       ; $492e: $7b
    ld [c], a                                     ; $492f: $e2
    ld [hl], a                                    ; $4930: $77
    pop bc                                        ; $4931: $c1
    ld d, e                                       ; $4932: $53
    and b                                         ; $4933: $a0
    dec l                                         ; $4934: $2d
    add h                                         ; $4935: $84
    or d                                          ; $4936: $b2
    ret nz                                        ; $4937: $c0

    add b                                         ; $4938: $80
    rst $18                                       ; $4939: $df
    dec c                                         ; $493a: $0d
    rst $00                                       ; $493b: $c7
    ld [c], a                                     ; $493c: $e2
    jp $c3c1                                      ; $493d: $c3 $c1 $c3


    db $e3                                        ; $4940: $e3
    ld a, [$0dc0]                                 ; $4941: $fa $c0 $0d
    and c                                         ; $4944: $a1
    ld c, e                                       ; $4945: $4b
    add $f0                                       ; $4946: $c6 $f0
    ld b, e                                       ; $4948: $43
    db $ed                                        ; $4949: $ed
    inc c                                         ; $494a: $0c
    and a                                         ; $494b: $a7
    ld b, [hl]                                    ; $494c: $46
    ldh [$0b], a                                  ; $494d: $e0 $0b
    ccf                                           ; $494f: $3f
    ld [c], a                                     ; $4950: $e2
    dec bc                                        ; $4951: $0b
    inc b                                         ; $4952: $04
    cp $e0                                        ; $4953: $fe $e0
    dec a                                         ; $4955: $3d
    pop hl                                        ; $4956: $e1
    ld c, e                                       ; $4957: $4b
    ret nz                                        ; $4958: $c0

    pop hl                                        ; $4959: $e1
    add sp, -$7f                                  ; $495a: $e8 $81
    ld [hl], h                                    ; $495c: $74
    pop bc                                        ; $495d: $c1
    nop                                           ; $495e: $00
    or d                                          ; $495f: $b2
    add d                                         ; $4960: $82
    xor b                                         ; $4961: $a8
    ld l, [hl]                                    ; $4962: $6e
    ret nz                                        ; $4963: $c0

    db $e3                                        ; $4964: $e3
    dec hl                                        ; $4965: $2b
    ld a, [bc]                                    ; $4966: $0a
    ld a, [hl+]                                   ; $4967: $2a
    cp d                                          ; $4968: $ba
    ldh [$0b], a                                  ; $4969: $e0 $0b
    dec bc                                        ; $496b: $0b
    cp e                                          ; $496c: $bb
    pop bc                                        ; $496d: $c1
    add a                                         ; $496e: $87
    dec c                                         ; $496f: $0d
    ld c, e                                       ; $4970: $4b
    dec c                                         ; $4971: $0d
    and $86                                       ; $4972: $e6 $86
    dec a                                         ; $4974: $3d
    db $f4                                        ; $4975: $f4
    add d                                         ; $4976: $82
    add sp, -$80                                  ; $4977: $e8 $80
    pop hl                                        ; $4979: $e1
    ld c, e                                       ; $497a: $4b
    ld a, e                                       ; $497b: $7b
    dec c                                         ; $497c: $0d
    ld a, [bc]                                    ; $497d: $0a
    ret nz                                        ; $497e: $c0

    ldh [$0b], a                                  ; $497f: $e0 $0b
    dec bc                                        ; $4981: $0b
    ld l, e                                       ; $4982: $6b
    ld l, e                                       ; $4983: $6b
    call nz, Call_000_01e0                        ; $4984: $c4 $e0 $01
    dec hl                                        ; $4987: $2b
    db $f4                                        ; $4988: $f4
    and b                                         ; $4989: $a0
    ld d, e                                       ; $498a: $53
    add d                                         ; $498b: $82
    nop                                           ; $498c: $00
    pop hl                                        ; $498d: $e1
    db $fd                                        ; $498e: $fd
    push bc                                       ; $498f: $c5
    ld b, e                                       ; $4990: $43
    adc c                                         ; $4991: $89
    ld [hl], b                                    ; $4992: $70
    adc c                                         ; $4993: $89
    add d                                         ; $4994: $82
    pop bc                                        ; $4995: $c1
    sub [hl]                                      ; $4996: $96
    add $c1                                       ; $4997: $c6 $c1
    ld l, e                                       ; $4999: $6b
    dec bc                                        ; $499a: $0b
    dec a                                         ; $499b: $3d
    ldh [rOCPD], a                                ; $499c: $e0 $6b
    cp d                                          ; $499e: $ba
    ldh [$7e], a                                  ; $499f: $e0 $7e
    ldh [rWX], a                                  ; $49a1: $e0 $4b
    ldh a, [$be]                                  ; $49a3: $f0 $be
    and d                                         ; $49a5: $a2
    ld d, h                                       ; $49a6: $54
    pop af                                        ; $49a7: $f1
    db $e4                                        ; $49a8: $e4
    adc l                                         ; $49a9: $8d
    add d                                         ; $49aa: $82
    call nz, $2b4b                                ; $49ab: $c4 $4b $2b
    ld a, [bc]                                    ; $49ae: $0a
    ld c, d                                       ; $49af: $4a
    ld a, $03                                     ; $49b0: $3e $03
    ret nz                                        ; $49b2: $c0

    ld l, e                                       ; $49b3: $6b
    ld a, [bc]                                    ; $49b4: $0a
    ld a, [hl+]                                   ; $49b5: $2a
    ld a, [bc]                                    ; $49b6: $0a
    ld a, [hl+]                                   ; $49b7: $2a
    ld a, [$bea0]                                 ; $49b8: $fa $a0 $be
    and e                                         ; $49bb: $a3
    db $e4                                        ; $49bc: $e4
    nop                                           ; $49bd: $00
    cp c                                          ; $49be: $b9
    add h                                         ; $49bf: $84
    add $4d                                       ; $49c0: $c6 $4d
    rst $00                                       ; $49c2: $c7
    and c                                         ; $49c3: $a1

jr_063_49c4:
    pop bc                                        ; $49c4: $c1
    ldh [$0a], a                                  ; $49c5: $e0 $0a
    ld a, [bc]                                    ; $49c7: $0a
    dec bc                                        ; $49c8: $0b
    add hl, bc                                    ; $49c9: $09
    dec hl                                        ; $49ca: $2b
    ld b, h                                       ; $49cb: $44
    pop hl                                        ; $49cc: $e1
    cp d                                          ; $49cd: $ba
    and d                                         ; $49ce: $a2
    ld c, e                                       ; $49cf: $4b
    or a                                          ; $49d0: $b7
    add b                                         ; $49d1: $80
    nop                                           ; $49d2: $00
    cp l                                          ; $49d3: $bd
    adc [hl]                                      ; $49d4: $8e
    ld h, e                                       ; $49d5: $63
    add h                                         ; $49d6: $84
    ld [c], a                                     ; $49d7: $e2
    inc bc                                        ; $49d8: $03
    dec hl                                        ; $49d9: $2b
    ld c, e                                       ; $49da: $4b
    ld c, c                                       ; $49db: $49
    pop hl                                        ; $49dc: $e1
    push bc                                       ; $49dd: $c5
    ret nz                                        ; $49de: $c0

    ld b, a                                       ; $49df: $47
    pop bc                                        ; $49e0: $c1
    db $fd                                        ; $49e1: $fd
    and d                                         ; $49e2: $a2
    ld b, b                                       ; $49e3: $40
    ret nz                                        ; $49e4: $c0

    nop                                           ; $49e5: $00
    cp h                                          ; $49e6: $bc
    jr nc, @+$66                                  ; $49e7: $30 $64

    add d                                         ; $49e9: $82
    ld b, $c2                                     ; $49ea: $06 $c2
    ld a, [bc]                                    ; $49ec: $0a
    pop bc                                        ; $49ed: $c1
    inc bc                                        ; $49ee: $03
    ldh [$0b], a                                  ; $49ef: $e0 $0b
    dec bc                                        ; $49f1: $0b
    ret                                           ; $49f2: $c9


    ret nz                                        ; $49f3: $c0

    nop                                           ; $49f4: $00
    and b                                         ; $49f5: $a0
    ret nz                                        ; $49f6: $c0

    cp e                                          ; $49f7: $bb
    pop hl                                        ; $49f8: $e1
    ld a, [hl]                                    ; $49f9: $7e
    and b                                         ; $49fa: $a0
    add $ba                                       ; $49fb: $c6 $ba
    add [hl]                                      ; $49fd: $86
    ld h, e                                       ; $49fe: $63
    add [hl]                                      ; $49ff: $86
    jp nz, $c251                                  ; $4a00: $c2 $51 $c2

    ld a, [bc]                                    ; $4a03: $0a
    ld c, d                                       ; $4a04: $4a
    nop                                           ; $4a05: $00
    ret nz                                        ; $4a06: $c0

    pop hl                                        ; $4a07: $e1
    push bc                                       ; $4a08: $c5
    ldh [$7f], a                                  ; $4a09: $e0 $7f
    db $e4                                        ; $4a0b: $e4
    ld [hl], a                                    ; $4a0c: $77
    add b                                         ; $4a0d: $80
    ld h, $60                                     ; $4a0e: $26 $60
    nop                                           ; $4a10: $00
    cp h                                          ; $4a11: $bc
    add [hl]                                      ; $4a12: $86
    and e                                         ; $4a13: $a3
    call z, $8781                                 ; $4a14: $cc $81 $87
    ld a, [bc]                                    ; $4a17: $0a
    ld a, [bc]                                    ; $4a18: $0a
    ld c, d                                       ; $4a19: $4a
    ld a, a                                       ; $4a1a: $7f
    pop hl                                        ; $4a1b: $e1
    add l                                         ; $4a1c: $85
    pop hl                                        ; $4a1d: $e1
    add [hl]                                      ; $4a1e: $86
    and b                                         ; $4a1f: $a0
    jr c, jr_063_49c4                             ; $4a20: $38 $a2

    ld l, l                                       ; $4a22: $6d
    ld d, b                                       ; $4a23: $50
    and $85                                       ; $4a24: $e6 $85
    ld d, [hl]                                    ; $4a26: $56
    ld [hl], d                                    ; $4a27: $72
    add [hl]                                      ; $4a28: $86
    xor b                                         ; $4a29: $a8
    push bc                                       ; $4a2a: $c5
    jp nz, Jump_000_052a                          ; $4a2b: $c2 $2a $05

    jp nz, Jump_000_080d                          ; $4a2e: $c2 $0d $08

    add b                                         ; $4a31: $80
    nop                                           ; $4a32: $00
    cp e                                          ; $4a33: $bb
    add b                                         ; $4a34: $80
    ei                                            ; $4a35: $fb
    ld h, b                                       ; $4a36: $60
    ld bc, $1ac2                                  ; $4a37: $01 $c2 $1a
    jp z, Jump_063_549e                           ; $4a3a: $ca $9e $54

    adc [hl]                                      ; $4a3d: $8e
    ld h, b                                       ; $4a3e: $60
    add [hl]                                      ; $4a3f: $86
    pop bc                                        ; $4a40: $c1
    ld [bc], a                                    ; $4a41: $02
    pop hl                                        ; $4a42: $e1
    add c                                         ; $4a43: $81
    ld l, e                                       ; $4a44: $6b
    ld hl, $c740                                  ; $4a45: $21 $40 $c7
    ld h, b                                       ; $4a48: $60
    ld a, a                                       ; $4a49: $7f
    add b                                         ; $4a4a: $80
    jp nz, $80a5                                  ; $4a4b: $c2 $a5 $80

    halt                                          ; $4a4e: $76
    adc [hl]                                      ; $4a4f: $8e
    ld l, c                                       ; $4a50: $69
    ld c, e                                       ; $4a51: $4b
    ld bc, $c04a                                  ; $4a52: $01 $4a $c0
    db $e3                                        ; $4a55: $e3
    ret z                                         ; $4a56: $c8

    ret nz                                        ; $4a57: $c0

    add c                                         ; $4a58: $81
    pop hl                                        ; $4a59: $e1
    cp l                                          ; $4a5a: $bd
    ld h, b                                       ; $4a5b: $60
    add h                                         ; $4a5c: $84
    ld [c], a                                     ; $4a5d: $e2
    db $fc                                        ; $4a5e: $fc
    jr z, jr_063_4a61                             ; $4a5f: $28 $00

jr_063_4a61:
    ld c, l                                       ; $4a61: $4d
    ld [hl+], a                                   ; $4a62: $22
    ld [$6da7], sp                                ; $4a63: $08 $a7 $6d
    ld d, $a1                                     ; $4a66: $16 $a1
    dec b                                         ; $4a68: $05
    ret nz                                        ; $4a69: $c0

    jp Jump_000_2dc3                              ; $4a6a: $c3 $c3 $2d


    ld c, b                                       ; $4a6d: $48
    ld h, b                                       ; $4a6e: $60
    ld b, [hl]                                    ; $4a6f: $46
    and d                                         ; $4a70: $a2
    nop                                           ; $4a71: $00
    jp nc, Jump_063_5b2b                          ; $4a72: $d2 $2b $5b

    ld c, a                                       ; $4a75: $4f
    sub d                                         ; $4a76: $92
    dec h                                         ; $4a77: $25
    pop bc                                        ; $4a78: $c1
    ldh [rVBK], a                                 ; $4a79: $e0 $4f
    ld h, b                                       ; $4a7b: $60
    adc l                                         ; $4a7c: $8d
    add b                                         ; $4a7d: $80
    add h                                         ; $4a7e: $84
    jp nz, $e0bf                                  ; $4a7f: $c2 $bf $e0

    nop                                           ; $4a82: $00
    add e                                         ; $4a83: $83
    db $e4                                        ; $4a84: $e4
    ld l, [hl]                                    ; $4a85: $6e
    inc l                                         ; $4a86: $2c
    nop                                           ; $4a87: $00
    ld c, a                                       ; $4a88: $4f
    add h                                         ; $4a89: $84
    rst $00                                       ; $4a8a: $c7
    ld c, [hl]                                    ; $4a8b: $4e
    add c                                         ; $4a8c: $81
    adc d                                         ; $4a8d: $8a
    add d                                         ; $4a8e: $82
    jp nz, $c9e3                                  ; $4a8f: $c2 $e3 $c9

    add c                                         ; $4a92: $81
    nop                                           ; $4a93: $00
    add a                                         ; $4a94: $87
    ld d, [hl]                                    ; $4a95: $56
    inc c                                         ; $4a96: $0c
    ld c, h                                       ; $4a97: $4c
    inc b                                         ; $4a98: $04
    jp $8011                                      ; $4a99: $c3 $11 $80


    jp nz, $c4c2                                  ; $4a9c: $c2 $c2 $c4

    ret nz                                        ; $4a9f: $c0

    adc d                                         ; $4aa0: $8a
    ld b, b                                       ; $4aa1: $40
    add d                                         ; $4aa2: $82
    rst $20                                       ; $4aa3: $e7
    ld [$5500], sp                                ; $4aa4: $08 $00 $55
    ld a, [bc]                                    ; $4aa7: $0a
    adc h                                         ; $4aa8: $8c
    add e                                         ; $4aa9: $83
    db $e3                                        ; $4aaa: $e3
    dec bc                                        ; $4aab: $0b
    ld c, h                                       ; $4aac: $4c
    jp nz, $e13f                                  ; $4aad: $c2 $3f $e1

    adc b                                         ; $4ab0: $88
    ld e, d                                       ; $4ab1: $5a
    inc c                                         ; $4ab2: $0c
    ld c, h                                       ; $4ab3: $4c
    ld bc, $d06d                                  ; $4ab4: $01 $6d $d0
    ld b, d                                       ; $4ab7: $42
    ld b, h                                       ; $4ab8: $44
    jp nz, $a045                                  ; $4ab9: $c2 $45 $a0

    ld c, b                                       ; $4abc: $48
    and b                                         ; $4abd: $a0
    inc c                                         ; $4abe: $0c
    and h                                         ; $4abf: $a4
    ld l, d                                       ; $4ac0: $6a
    add hl, hl                                    ; $4ac1: $29
    add b                                         ; $4ac2: $80
    ld de, $7608                                  ; $4ac3: $11 $08 $76
    inc bc                                        ; $4ac6: $03
    sbc $60                                       ; $4ac7: $de $60
    ld d, b                                       ; $4ac9: $50

jr_063_4aca:
    add b                                         ; $4aca: $80
    ld l, e                                       ; $4acb: $6b
    ret nz                                        ; $4acc: $c0

    db $e4                                        ; $4acd: $e4
    adc c                                         ; $4ace: $89
    ld h, b                                       ; $4acf: $60
    call nz, $0821                                ; $4ad0: $c4 $21 $08
    ld e, a                                       ; $4ad3: $5f
    nop                                           ; $4ad4: $00
    inc c                                         ; $4ad5: $0c
    ld b, a                                       ; $4ad6: $47
    ld [de], a                                    ; $4ad7: $12
    ld b, d                                       ; $4ad8: $42
    ret nz                                        ; $4ad9: $c0

    jp hl                                         ; $4ada: $e9


    cp l                                          ; $4adb: $bd
    ld h, b                                       ; $4adc: $60
    ld [$dc43], sp                                ; $4add: $08 $43 $dc
    add $80                                       ; $4ae0: $c6 $80
    db $10                                        ; $4ae2: $10
    ld l, h                                       ; $4ae3: $6c
    and l                                         ; $4ae4: $a5
    nop                                           ; $4ae5: $00
    ld d, [hl]                                    ; $4ae6: $56
    and d                                         ; $4ae7: $a2
    ld b, c                                       ; $4ae8: $41
    and $7f                                       ; $4ae9: $e6 $7f
    db $e4                                        ; $4aeb: $e4
    ld c, c                                       ; $4aec: $49
    ld b, d                                       ; $4aed: $42
    dec c                                         ; $4aee: $0d
    ld [hl], $6a                                  ; $4aef: $36 $6a
    ld a, [bc]                                    ; $4af1: $0a
    sub [hl]                                      ; $4af2: $96
    nop                                           ; $4af3: $00
    sub c                                         ; $4af4: $91
    ld hl, $6b01                                  ; $4af5: $21 $01 $6b
    ld b, a                                       ; $4af8: $47
    add d                                         ; $4af9: $82
    ccf                                           ; $4afa: $3f
    db $e4                                        ; $4afb: $e4
    call nz, $ce21                                ; $4afc: $c4 $21 $ce
    inc hl                                        ; $4aff: $23
    ld [$8cb9], sp                                ; $4b00: $08 $b9 $8c
    dec h                                         ; $4b03: $25
    ld d, l                                       ; $4b04: $55
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00
    adc a                                         ; $4b07: $8f
    jr nz, jr_063_4aca                            ; $4b08: $20 $c0

    rst $20                                       ; $4b0a: $e7
    inc bc                                        ; $4b0b: $03
    ld h, b                                       ; $4b0c: $60
    pop af                                        ; $4b0d: $f1
    ret nz                                        ; $4b0e: $c0

    adc [hl]                                      ; $4b0f: $8e
    inc h                                         ; $4b10: $24
    add b                                         ; $4b11: $80
    ld a, [de]                                    ; $4b12: $1a
    adc d                                         ; $4b13: $8a
    inc h                                         ; $4b14: $24
    ld a, [hl]                                    ; $4b15: $7e
    ldh [rSC], a                                  ; $4b16: $e0 $02
    ld c, $60                                     ; $4b18: $0e $60
    ld c, e                                       ; $4b1a: $4b
    ret z                                         ; $4b1b: $c8

    ld h, b                                       ; $4b1c: $60
    db $fd                                        ; $4b1d: $fd
    ld [c], a                                     ; $4b1e: $e2
    ld [bc], a                                    ; $4b1f: $02
    inc hl                                        ; $4b20: $23
    ld b, $21                                     ; $4b21: $06 $21
    call c, Call_000_06a3                         ; $4b23: $dc $a3 $06
    and a                                         ; $4b26: $a7
    inc a                                         ; $4b27: $3c
    nop                                           ; $4b28: $00
    or e                                          ; $4b29: $b3
    ld c, c                                       ; $4b2a: $49
    ld b, d                                       ; $4b2b: $42
    dec hl                                        ; $4b2c: $2b
    ld c, e                                       ; $4b2d: $4b
    ld l, e                                       ; $4b2e: $6b
    ld c, e                                       ; $4b2f: $4b
    cp [hl]                                       ; $4b30: $be
    ldh [$ba], a                                  ; $4b31: $e0 $ba
    and c                                         ; $4b33: $a1
    nop                                           ; $4b34: $00
    add d                                         ; $4b35: $82
    ld [bc], a                                    ; $4b36: $02
    cp a                                          ; $4b37: $bf
    db $e4                                        ; $4b38: $e4
    adc e                                         ; $4b39: $8b
    ld d, h                                       ; $4b3a: $54
    nop                                           ; $4b3b: $00
    xor h                                         ; $4b3c: $ac
    ld d, b                                       ; $4b3d: $50
    ld hl, $e47d                                  ; $4b3e: $21 $7d $e4
    ld b, c                                       ; $4b41: $41
    ld h, d                                       ; $4b42: $62
    push bc                                       ; $4b43: $c5
    ld bc, $0d01                                  ; $4b44: $01 $01 $0d
    ld a, [hl]                                    ; $4b47: $7e
    and $4b                                       ; $4b48: $e6 $4b
    ld c, l                                       ; $4b4a: $4d
    or [hl]                                       ; $4b4b: $b6
    ld l, a                                       ; $4b4c: $6f
    cp l                                          ; $4b4d: $bd
    pop bc                                        ; $4b4e: $c1
    adc b                                         ; $4b4f: $88
    ld bc, $e4bf                                  ; $4b50: $01 $bf $e4
    ld b, e                                       ; $4b53: $43
    ld bc, $3d00                                  ; $4b54: $01 $00 $3d
    ld bc, $a4fa                                  ; $4b57: $01 $fa $a4
    ld d, b                                       ; $4b5a: $50
    ld [hl], c                                    ; $4b5b: $71
    ld [$8247], sp                                ; $4b5c: $08 $47 $82
    ld [hl+], a                                   ; $4b5f: $22

Call_063_4b60:
    ld a, h                                       ; $4b60: $7c
    ret nz                                        ; $4b61: $c0

    ld c, c                                       ; $4b62: $49
    ld [bc], a                                    ; $4b63: $02
    ld a, d                                       ; $4b64: $7a
    jp nz, $c300                                  ; $4b65: $c2 $00 $c3

    ld [bc], a                                    ; $4b68: $02
    dec a                                         ; $4b69: $3d
    ld [bc], a                                    ; $4b6a: $02
    inc b                                         ; $4b6b: $04
    ld e, c                                       ; $4b6c: $59
    ld l, [hl]                                    ; $4b6d: $6e
    ld l, e                                       ; $4b6e: $6b
    cp a                                          ; $4b6f: $bf
    db $e3                                        ; $4b70: $e3
    ld a, d                                       ; $4b71: $7a
    jp nz, Jump_000_00c5                          ; $4b72: $c2 $c5 $00

jr_063_4b75:
    ret nz                                        ; $4b75: $c0

    jp hl                                         ; $4b76: $e9


    nop                                           ; $4b77: $00
    nop                                           ; $4b78: $00
    cp a                                          ; $4b79: $bf
    ld a, [hl]                                    ; $4b7a: $7e
    db $e3                                        ; $4b7b: $e3
    ld c, e                                       ; $4b7c: $4b
    ld h, c                                       ; $4b7d: $61
    ei                                            ; $4b7e: $fb
    ld h, c                                       ; $4b7f: $61
    ld b, b                                       ; $4b80: $40
    db $e4                                        ; $4b81: $e4
    jp Jump_000_0402                              ; $4b82: $c3 $02 $04


    inc hl                                        ; $4b85: $23
    add b                                         ; $4b86: $80
    db $dd                                        ; $4b87: $dd
    nop                                           ; $4b88: $00
    inc l                                         ; $4b89: $2c
    ld b, $10                                     ; $4b8a: $06 $10
    ld b, c                                       ; $4b8c: $41
    rst $38                                       ; $4b8d: $ff
    push bc                                       ; $4b8e: $c5
    jp $fc21                                      ; $4b8f: $c3 $21 $fc


    ld h, [hl]                                    ; $4b92: $66
    ld a, c                                       ; $4b93: $79
    ld sp, hl                                     ; $4b94: $f9
    ld hl, sp+$69                                 ; $4b95: $f8 $69
    ld a, c                                       ; $4b97: $79
    and l                                         ; $4b98: $a5
    nop                                           ; $4b99: $00
    ld sp, $fc82                                  ; $4b9a: $31 $82 $fc
    ld l, c                                       ; $4b9d: $69
    nop                                           ; $4b9e: $00
    ld d, [hl]                                    ; $4b9f: $56
    add b                                         ; $4ba0: $80
    db $ec                                        ; $4ba1: $ec
    ld a, c                                       ; $4ba2: $79
    and e                                         ; $4ba3: $a3
    ld a, [c]                                     ; $4ba4: $f2
    ld h, d                                       ; $4ba5: $62
    ccf                                           ; $4ba6: $3f
    and c                                         ; $4ba7: $a1
    jr jr_063_4bf2                                ; $4ba8: $18 $48

    nop                                           ; $4baa: $00
    nop                                           ; $4bab: $00
    ld d, h                                       ; $4bac: $54
    add d                                         ; $4bad: $82
    add hl, bc                                    ; $4bae: $09
    ld sp, hl                                     ; $4baf: $f9
    ld b, d                                       ; $4bb0: $42
    ld a, c                                       ; $4bb1: $79
    and d                                         ; $4bb2: $a2
    ret nz                                        ; $4bb3: $c0

    rst $20                                       ; $4bb4: $e7
    db $fc                                        ; $4bb5: $fc
    ld c, c                                       ; $4bb6: $49
    ld a, d                                       ; $4bb7: $7a
    db $db                                        ; $4bb8: $db
    cp d                                          ; $4bb9: $ba
    ld b, c                                       ; $4bba: $41
    nop                                           ; $4bbb: $00
    scf                                           ; $4bbc: $37
    add d                                         ; $4bbd: $82
    ld a, b                                       ; $4bbe: $78
    jp nz, $a0bd                                  ; $4bbf: $c2 $bd $a0

    db $fc                                        ; $4bc2: $fc
    ld l, d                                       ; $4bc3: $6a
    ld a, $0b                                     ; $4bc4: $3e $0b
    jr nc, jr_063_4b75                            ; $4bc6: $30 $ad

    ld hl, sp-$7d                                 ; $4bc8: $f8 $83
    adc e                                         ; $4bca: $8b
    jp $f660                                      ; $4bcb: $c3 $60 $f6


    add c                                         ; $4bce: $81
    ld a, a                                       ; $4bcf: $7f
    jp $67fc                                      ; $4bd0: $c3 $fc $67


    nop                                           ; $4bd3: $00
    or h                                          ; $4bd4: $b4
    ld a, [$4d8b]                                 ; $4bd5: $fa $8b $4d
    dec l                                         ; $4bd8: $2d
    cp a                                          ; $4bd9: $bf
    db $e4                                        ; $4bda: $e4
    nop                                           ; $4bdb: $00
    ld [hl], a                                    ; $4bdc: $77
    ld h, l                                       ; $4bdd: $65
    add b                                         ; $4bde: $80
    and l                                         ; $4bdf: $a5
    add b                                         ; $4be0: $80
    sub $7a                                       ; $4be1: $d6 $7a
    jp z, $8179                                   ; $4be3: $ca $79 $81

    ld [$c2a2], sp                                ; $4be6: $08 $a2 $c2
    push hl                                       ; $4be9: $e5
    ld a, [hl-]                                   ; $4bea: $3a
    ret nz                                        ; $4beb: $c0

    nop                                           ; $4bec: $00
    ld a, d                                       ; $4bed: $7a
    ld h, e                                       ; $4bee: $63
    ld a, [hl]                                    ; $4bef: $7e
    add b                                         ; $4bf0: $80
    add b                                         ; $4bf1: $80

jr_063_4bf2:
    dec de                                        ; $4bf2: $1b
    sbc d                                         ; $4bf3: $9a
    add l                                         ; $4bf4: $85
    ld a, [hl]                                    ; $4bf5: $7e
    pop hl                                        ; $4bf6: $e1
    ret nz                                        ; $4bf7: $c0

    ld [$89fe], a                                 ; $4bf8: $ea $fe $89
    add b                                         ; $4bfb: $80
    inc de                                        ; $4bfc: $13
    jr c, jr_063_4c79                             ; $4bfd: $38 $7a

    add hl, bc                                    ; $4bff: $09
    cp a                                          ; $4c00: $bf
    db $e4                                        ; $4c01: $e4
    db $fd                                        ; $4c02: $fd
    jr nz, jr_063_4c10                            ; $4c03: $20 $0b

    dec bc                                        ; $4c05: $0b
    dec l                                         ; $4c06: $2d
    ld a, c                                       ; $4c07: $79
    add h                                         ; $4c08: $84
    ld a, d                                       ; $4c09: $7a
    ld a, a                                       ; $4c0a: $7f
    nop                                           ; $4c0b: $00
    xor d                                         ; $4c0c: $aa
    ld a, [bc]                                    ; $4c0d: $0a
    db $fc                                        ; $4c0e: $fc
    pop bc                                        ; $4c0f: $c1

jr_063_4c10:
    rst $30                                       ; $4c10: $f7
    ld b, [hl]                                    ; $4c11: $46
    ret nz                                        ; $4c12: $c0

    db $e3                                        ; $4c13: $e3
    nop                                           ; $4c14: $00
    cp c                                          ; $4c15: $b9
    ld a, d                                       ; $4c16: $7a
    inc b                                         ; $4c17: $04
    inc e                                         ; $4c18: $1c
    ld h, $fc                                     ; $4c19: $26 $fc
    jp nz, Jump_000_0090                          ; $4c1b: $c2 $90 $00

    and $3d                                       ; $4c1e: $e6 $3d
    and e                                         ; $4c20: $a3
    ld a, [hl]                                    ; $4c21: $7e
    ld b, a                                       ; $4c22: $47
    add b                                         ; $4c23: $80
    call nc, $e44d                                ; $4c24: $d4 $4d $e4
    and a                                         ; $4c27: $a7
    ld d, c                                       ; $4c28: $51
    ld bc, $376b                                  ; $4c29: $01 $6b $37
    ld c, e                                       ; $4c2c: $4b
    ld l, e                                       ; $4c2d: $6b
    dec bc                                        ; $4c2e: $0b
    add hl, sp                                    ; $4c2f: $39
    add b                                         ; $4c30: $80
    ld l, e                                       ; $4c31: $6b
    ld l, e                                       ; $4c32: $6b
    ld a, $02                                     ; $4c33: $3e $02
    ld c, d                                       ; $4c35: $4a
    rst $38                                       ; $4c36: $ff
    ld b, b                                       ; $4c37: $40
    ret nz                                        ; $4c38: $c0

    pop hl                                        ; $4c39: $e1
    sbc d                                         ; $4c3a: $9a
    rlca                                          ; $4c3b: $07
    cp e                                          ; $4c3c: $bb
    and c                                         ; $4c3d: $a1
    push af                                       ; $4c3e: $f5
    ld h, d                                       ; $4c3f: $62
    dec hl                                        ; $4c40: $2b
    ld b, d                                       ; $4c41: $42
    nop                                           ; $4c42: $00
    add l                                         ; $4c43: $85
    dec l                                         ; $4c44: $2d
    add b                                         ; $4c45: $80
    rst $18                                       ; $4c46: $df
    jr nz, jr_063_4cb6                            ; $4c47: $20 $6d

    add l                                         ; $4c49: $85
    cp e                                          ; $4c4a: $bb
    and l                                         ; $4c4b: $a5
    db $fd                                        ; $4c4c: $fd
    add h                                         ; $4c4d: $84
    nop                                           ; $4c4e: $00
    ld e, c                                       ; $4c4f: $59
    ld h, l                                       ; $4c50: $65
    jp hl                                         ; $4c51: $e9


    ld l, l                                       ; $4c52: $6d
    ld d, [hl]                                    ; $4c53: $56
    ldh [$7a], a                                  ; $4c54: $e0 $7a
    ld [c], a                                     ; $4c56: $e2
    nop                                           ; $4c57: $00
    dec a                                         ; $4c58: $3d
    pop bc                                        ; $4c59: $c1
    cp a                                          ; $4c5a: $bf
    push hl                                       ; $4c5b: $e5
    nop                                           ; $4c5c: $00
    add h                                         ; $4c5d: $84
    rst $38                                       ; $4c5e: $ff
    rst $38                                       ; $4c5f: $ff
    ret nz                                        ; $4c60: $c0

    db $e3                                        ; $4c61: $e3
    dec l                                         ; $4c62: $2d
    inc hl                                        ; $4c63: $23
    cp b                                          ; $4c64: $b8
    ld h, d                                       ; $4c65: $62
    ld a, d                                       ; $4c66: $7a
    ld b, b                                       ; $4c67: $40
    nop                                           ; $4c68: $00
    add hl, sp                                    ; $4c69: $39
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00
    add [hl]                                      ; $4c6c: $86
    add b                                         ; $4c6d: $80
    call c, $83c2                                 ; $4c6e: $dc $c2 $83
    call nc, $96c0                                ; $4c71: $d4 $c0 $96
    ld h, d                                       ; $4c74: $62
    jp hl                                         ; $4c75: $e9


    jr nz, @-$42                                  ; $4c76: $20 $bc

    pop hl                                        ; $4c78: $e1

jr_063_4c79:
    inc b                                         ; $4c79: $04
    add h                                         ; $4c7a: $84
    ld h, c                                       ; $4c7b: $61
    db $e4                                        ; $4c7c: $e4
    ld h, e                                       ; $4c7d: $63
    dec l                                         ; $4c7e: $2d
    or l                                          ; $4c7f: $b5
    inc h                                         ; $4c80: $24
    nop                                           ; $4c81: $00
    or h                                          ; $4c82: $b4
    ccf                                           ; $4c83: $3f
    push hl                                       ; $4c84: $e5
    sub h                                         ; $4c85: $94
    jp nz, $8730                                  ; $4c86: $c2 $30 $87

    ld b, $ca                                     ; $4c89: $06 $ca
    and a                                         ; $4c8b: $a7
    dec l                                         ; $4c8c: $2d
    dec l                                         ; $4c8d: $2d
    ret nz                                        ; $4c8e: $c0

    set 0, b                                      ; $4c8f: $cb $c0
    push af                                       ; $4c91: $f5
    ld a, d                                       ; $4c92: $7a
    push bc                                       ; $4c93: $c5
    ld hl, sp-$13                                 ; $4c94: $f8 $ed
    ret nz                                        ; $4c96: $c0

    db $ed                                        ; $4c97: $ed
    nop                                           ; $4c98: $00
    ld b, e                                       ; $4c99: $43
    ldh a, [$74]                                  ; $4c9a: $f0 $74
    ld l, h                                       ; $4c9c: $6c
    ld d, [hl]                                    ; $4c9d: $56
    ld d, b                                       ; $4c9e: $50
    add b                                         ; $4c9f: $80
    ld l, b                                       ; $4ca0: $68
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    nop                                           ; $4ca3: $00
    cp a                                          ; $4ca4: $bf
    db $dd                                        ; $4ca5: $dd
    sbc $a0                                       ; $4ca6: $de $a0
    and b                                         ; $4ca8: $a0
    and b                                         ; $4ca9: $a0
    call c, $eefa                                 ; $4caa: $dc $fa $ee
    and b                                         ; $4cad: $a0
    di                                            ; $4cae: $f3
    ret c                                         ; $4caf: $d8

    reti                                          ; $4cb0: $d9


    db $fc                                        ; $4cb1: $fc
    rst $30                                       ; $4cb2: $f7
    ret nc                                        ; $4cb3: $d0

    jp hl                                         ; $4cb4: $e9


    ld [c], a                                     ; $4cb5: $e2

jr_063_4cb6:
    db $e3                                        ; $4cb6: $e3
    db $e4                                        ; $4cb7: $e4
    rst $18                                       ; $4cb8: $df
    ei                                            ; $4cb9: $fb
    ldh [$e1], a                                  ; $4cba: $e0 $e1
    ld a, [$a0ec]                                 ; $4cbc: $fa $ec $a0
    sub $d7                                       ; $4cbf: $d6 $d7
    jp c, $a6db                                   ; $4cc1: $da $db $a6

    db $fc                                        ; $4cc4: $fc
    push hl                                       ; $4cc5: $e5
    ret nc                                        ; $4cc6: $d0

    pop de                                        ; $4cc7: $d1
    db $fc                                        ; $4cc8: $fc
    rst $20                                       ; $4cc9: $e7
    add sp, -$1f                                  ; $4cca: $e8 $e1
    and b                                         ; $4ccc: $a0
    ret nc                                        ; $4ccd: $d0

    ld [$9fe8], a                                 ; $4cce: $ea $e8 $9f
    jp hl                                         ; $4cd1: $e9


    ld [$e6e5], a                                 ; $4cd2: $ea $e5 $e6
    rst $20                                       ; $4cd5: $e7
    ld a, [$82ec]                                 ; $4cd6: $fa $ec $82
    ld [$c1d2], a                                 ; $4cd9: $ea $d2 $c1
    db $d3                                        ; $4cdc: $d3
    db $fc                                        ; $4cdd: $fc
    rst $20                                       ; $4cde: $e7
    add d                                         ; $4cdf: $82
    ld [c], a                                     ; $4ce0: $e2
    ret nc                                        ; $4ce1: $d0

Call_063_4ce2:
    ld [$f143], a                                 ; $4ce2: $ea $43 $f1
    add d                                         ; $4ce5: $82
    db $eb                                        ; $4ce6: $eb
    call nc, $0fd5                                ; $4ce7: $d4 $d5 $0f
    and b                                         ; $4cea: $a0
    and b                                         ; $4ceb: $a0
    call nc, $f8d5                                ; $4cec: $d4 $d5 $f8
    pop hl                                        ; $4cef: $e1
    ld a, [hl]                                    ; $4cf0: $7e
    db $e3                                        ; $4cf1: $e3
    ldh [$e1], a                                  ; $4cf2: $e0 $e1
    dec c                                         ; $4cf4: $0d
    rst $20                                       ; $4cf5: $e7
    cp h                                          ; $4cf6: $bc
    ld b, e                                       ; $4cf7: $43
    ldh a, [$82]                                  ; $4cf8: $f0 $82
    db $ed                                        ; $4cfa: $ed
    sbc a                                         ; $4cfb: $9f
    and d                                         ; $4cfc: $a2
    sbc l                                         ; $4cfd: $9d
    sbc a                                         ; $4cfe: $9f
    ld a, [hl]                                    ; $4cff: $7e
    ld [$e9d8], a                                 ; $4d00: $ea $d8 $e9
    reti                                          ; $4d03: $d9


    dec c                                         ; $4d04: $0d
    rst $20                                       ; $4d05: $e7
    ld b, e                                       ; $4d06: $43
    ldh a, [$a0]                                  ; $4d07: $f0 $a0
    ld [$d4e9], sp                                ; $4d09: $08 $e9 $d4
    push de                                       ; $4d0c: $d5
    sbc a                                         ; $4d0d: $9f
    rra                                           ; $4d0e: $1f
    sbc h                                         ; $4d0f: $9c
    ld b, [hl]                                    ; $4d10: $46
    ld b, [hl]                                    ; $4d11: $46
    sbc h                                         ; $4d12: $9c
    sbc a                                         ; $4d13: $9f
    ld a, d                                       ; $4d14: $7a
    push hl                                       ; $4d15: $e5
    add sp, -$3d                                  ; $4d16: $e8 $c3
    dec c                                         ; $4d18: $0d
    rst $20                                       ; $4d19: $e7
    ld hl, sp-$80                                 ; $4d1a: $f8 $80
    db $d3                                        ; $4d1c: $d3
    ld [$c1e8], sp                                ; $4d1d: $08 $e8 $c1
    pop hl                                        ; $4d20: $e1
    xor [hl]                                      ; $4d21: $ae
    ld b, [hl]                                    ; $4d22: $46
    sbc h                                         ; $4d23: $9c
    sbc l                                         ; $4d24: $9d
    sbc l                                         ; $4d25: $9d
    jp $9fa2                                      ; $4d26: $c3 $a2 $9f


    db $fc                                        ; $4d29: $fc
    add $80                                       ; $4d2a: $c6 $80
    sbc $08                                       ; $4d2c: $de $08
    rst $20                                       ; $4d2e: $e7
    add d                                         ; $4d2f: $82
    ldh [$ae], a                                  ; $4d30: $e0 $ae
    ld b, [hl]                                    ; $4d32: $46
    dec de                                        ; $4d33: $1b
    xor a                                         ; $4d34: $af
    ld b, [hl]                                    ; $4d35: $46
    rst $38                                       ; $4d36: $ff
    pop hl                                        ; $4d37: $e1
    sbc h                                         ; $4d38: $9c
    sbc a                                         ; $4d39: $9f
    ld a, [hl]                                    ; $4d3a: $7e
    db $e4                                        ; $4d3b: $e4
    add b                                         ; $4d3c: $80
    rst $18                                       ; $4d3d: $df
    adc d                                         ; $4d3e: $8a
    jp $0600                                      ; $4d3f: $c3 $00 $06


    pop hl                                        ; $4d42: $e1
    ld b, e                                       ; $4d43: $43
    ldh [$c2], a                                  ; $4d44: $e0 $c2
    db $e3                                        ; $4d46: $e3
    cp a                                          ; $4d47: $bf
    db $e3                                        ; $4d48: $e3
    ld [hl], d                                    ; $4d49: $72
    pop bc                                        ; $4d4a: $c1
    add b                                         ; $4d4b: $80
    sbc $7e                                       ; $4d4c: $de $7e
    pop bc                                        ; $4d4e: $c1
    adc d                                         ; $4d4f: $8a
    pop bc                                        ; $4d50: $c1
    inc b                                         ; $4d51: $04
    ld b, $e1                                     ; $4d52: $06 $e1
    call nz, $aee5                                ; $4d54: $c4 $e5 $ae
    ld a, [hl]                                    ; $4d57: $7e
    and $7e                                       ; $4d58: $e6 $7e
    pop bc                                        ; $4d5a: $c1
    add b                                         ; $4d5b: $80
    db $db                                        ; $4d5c: $db
    sbc d                                         ; $4d5d: $9a
    and h                                         ; $4d5e: $a4
    ld b, l                                       ; $4d5f: $45
    ld [c], a                                     ; $4d60: $e2
    ld [$e2c6], sp                                ; $4d61: $08 $c6 $e2
    jp Jump_000_3de0                              ; $4d64: $c3 $e0 $3d


    ld [c], a                                     ; $4d67: $e2
    xor [hl]                                      ; $4d68: $ae
    ld a, [hl]                                    ; $4d69: $7e
    pop hl                                        ; $4d6a: $e1
    ld h, [hl]                                    ; $4d6b: $66
    and c                                         ; $4d6c: $a1
    add b                                         ; $4d6d: $80
    db $db                                        ; $4d6e: $db
    adc d                                         ; $4d6f: $8a
    and e                                         ; $4d70: $a3
    ld b, e                                       ; $4d71: $43
    and b                                         ; $4d72: $a0
    sbc [hl]                                      ; $4d73: $9e
    ld b, l                                       ; $4d74: $45
    db $e3                                        ; $4d75: $e3
    inc bc                                        ; $4d76: $03
    ldh [rP1], a                                  ; $4d77: $e0 $00
    db $e3                                        ; $4d79: $e3
    ld hl, sp-$3f                                 ; $4d7a: $f8 $c1
    and c                                         ; $4d7c: $a1
    ld a, d                                       ; $4d7d: $7a
    and e                                         ; $4d7e: $a3
    ldh [$80], a                                  ; $4d7f: $e0 $80
    ret c                                         ; $4d81: $d8

    inc b                                         ; $4d82: $04
    and h                                         ; $4d83: $a4
    adc d                                         ; $4d84: $8a
    and b                                         ; $4d85: $a0
    ret nz                                        ; $4d86: $c0

    ldh [rTMA], a                                 ; $4d87: $e0 $06
    db $e3                                        ; $4d89: $e3
    ld b, l                                       ; $4d8a: $45
    dec hl                                        ; $4d8b: $2b
    dec hl                                        ; $4d8c: $2b
    dec c                                         ; $4d8d: $0d
    ld b, l                                       ; $4d8e: $45
    or a                                          ; $4d8f: $b7
    db $e3                                        ; $4d90: $e3
    ld b, [hl]                                    ; $4d91: $46
    sbc [hl]                                      ; $4d92: $9e

jr_063_4d93:
    ld a, d                                       ; $4d93: $7a
    and [hl]                                      ; $4d94: $a6
    nop                                           ; $4d95: $00
    or e                                          ; $4d96: $b3
    add d                                         ; $4d97: $82
    and h                                         ; $4d98: $a4
    adc d                                         ; $4d99: $8a
    and d                                         ; $4d9a: $a2
    cp $c0                                        ; $4d9b: $fe $c0
    ld [c], a                                     ; $4d9d: $e2
    ld b, l                                       ; $4d9e: $45
    ld c, b                                       ; $4d9f: $48
    ld c, b                                       ; $4da0: $48
    ld b, e                                       ; $4da1: $43
    ld l, $20                                     ; $4da2: $2e $20
    jr nz, @-$7d                                  ; $4da4: $20 $81

    dec l                                         ; $4da6: $2d
    ld [hl], $e3                                  ; $4da7: $36 $e3
    ld hl, sp-$5f                                 ; $4da9: $f8 $a1
    db $e4                                        ; $4dab: $e4
    add e                                         ; $4dac: $83
    ld a, [$8685]                                 ; $4dad: $fa $85 $86
    rst $08                                       ; $4db0: $cf
    inc c                                         ; $4db1: $0c
    and l                                         ; $4db2: $a5
    and b                                         ; $4db3: $a0
    db $fd                                        ; $4db4: $fd
    and c                                         ; $4db5: $a1
    ret                                           ; $4db6: $c9


    pop bc                                        ; $4db7: $c1
    ld d, c                                       ; $4db8: $51
    ld e, [hl]                                    ; $4db9: $5e
    ld d, h                                       ; $4dba: $54
    dec l                                         ; $4dbb: $2d
    jr nz, jr_063_4dde                            ; $4dbc: $20 $20

    rlca                                          ; $4dbe: $07
    inc l                                         ; $4dbf: $2c
    cp l                                          ; $4dc0: $bd
    xor a                                         ; $4dc1: $af
    add hl, sp                                    ; $4dc2: $39
    pop bc                                        ; $4dc3: $c1
    ld a, a                                       ; $4dc4: $7f
    pop bc                                        ; $4dc5: $c1
    ld h, [hl]                                    ; $4dc6: $66
    add l                                         ; $4dc7: $85
    nop                                           ; $4dc8: $00
    or b                                          ; $4dc9: $b0
    inc h                                         ; $4dca: $24
    and e                                         ; $4dcb: $a3
    or $0c                                        ; $4dcc: $f6 $0c
    and l                                         ; $4dce: $a5
    sbc a                                         ; $4dcf: $9f
    sbc h                                         ; $4dd0: $9c
    ret                                           ; $4dd1: $c9


    pop bc                                        ; $4dd2: $c1
    ld b, l                                       ; $4dd3: $45
    scf                                           ; $4dd4: $37
    jr c, jr_063_4d93                             ; $4dd5: $38 $bc

    cp a                                          ; $4dd7: $bf
    jr z, jr_063_4e05                             ; $4dd8: $28 $2b

    ld c, c                                       ; $4dda: $49
    ld e, l                                       ; $4ddb: $5d
    ld b, a                                       ; $4ddc: $47
    ld b, l                                       ; $4ddd: $45

jr_063_4dde:
    ei                                            ; $4dde: $fb
    and b                                         ; $4ddf: $a0
    sbc [hl]                                      ; $4de0: $9e
    jp $a0a0                                      ; $4de1: $c3 $a0 $a0


    ld a, d                                       ; $4de4: $7a
    add l                                         ; $4de5: $85
    nop                                           ; $4de6: $00
    or c                                          ; $4de7: $b1
    adc [hl]                                      ; $4de8: $8e
    adc c                                         ; $4de9: $89
    adc b                                         ; $4dea: $88
    and c                                         ; $4deb: $a1
    xor a                                         ; $4dec: $af
    ld b, [hl]                                    ; $4ded: $46
    rst $38                                       ; $4dee: $ff
    ld b, l                                       ; $4def: $45
    ld b, a                                       ; $4df0: $47
    ld d, l                                       ; $4df1: $55
    dec [hl]                                      ; $4df2: $35
    dec [hl]                                      ; $4df3: $35
    dec [hl]                                      ; $4df4: $35
    ld [hl], $4a                                  ; $4df5: $36 $4a
    rlca                                          ; $4df7: $07
    ld d, d                                       ; $4df8: $52
    ld d, e                                       ; $4df9: $53
    ld d, e                                       ; $4dfa: $53
    ccf                                           ; $4dfb: $3f
    pop bc                                        ; $4dfc: $c1
    cp [hl]                                       ; $4dfd: $be
    and b                                         ; $4dfe: $a0
    ld a, d                                       ; $4dff: $7a
    add e                                         ; $4e00: $83
    nop                                           ; $4e01: $00
    or e                                          ; $4e02: $b3
    inc h                                         ; $4e03: $24
    add b                                         ; $4e04: $80

jr_063_4e05:
    and $86                                       ; $4e05: $e6 $86
    and h                                         ; $4e07: $a4
    sbc a                                         ; $4e08: $9f
    sbc l                                         ; $4e09: $9d
    rst $00                                       ; $4e0a: $c7
    and c                                         ; $4e0b: $a1
    inc bc                                        ; $4e0c: $03
    ldh [$60], a                                  ; $4e0d: $e0 $60
    ld d, l                                       ; $4e0f: $55
    inc a                                         ; $4e10: $3c
    rrca                                          ; $4e11: $0f
    dec [hl]                                      ; $4e12: $35
    ld [hl], $ae                                  ; $4e13: $36 $ae
    ld b, e                                       ; $4e15: $43
    ccf                                           ; $4e16: $3f
    call nz, $c040                                ; $4e17: $c4 $40 $c0
    nop                                           ; $4e1a: $00
    db $e3                                        ; $4e1b: $e3
    add b                                         ; $4e1c: $80
    reti                                          ; $4e1d: $d9


    db $fc                                        ; $4e1e: $fc
    inc c                                         ; $4e1f: $0c
    and e                                         ; $4e20: $a3
    ret nc                                        ; $4e21: $d0

    and d                                         ; $4e22: $a2
    ld d, c                                       ; $4e23: $51
    ld e, [hl]                                    ; $4e24: $5e
    ld d, d                                       ; $4e25: $52
    ld [hl], $62                                  ; $4e26: $36 $62
    ld h, e                                       ; $4e28: $63
    inc de                                        ; $4e29: $13
    ld a, l                                       ; $4e2a: $7d
    xor a                                         ; $4e2b: $af
    ccf                                           ; $4e2c: $3f
    and b                                         ; $4e2d: $a0
    ld a, [$afa2]                                 ; $4e2e: $fa $a2 $af
    ld a, $e1                                     ; $4e31: $3e $e1
    nop                                           ; $4e33: $00
    cp d                                          ; $4e34: $ba
    add [hl]                                      ; $4e35: $86
    and e                                         ; $4e36: $a3
    db $ec                                        ; $4e37: $ec
    add $c0                                       ; $4e38: $c6 $c0
    dec c                                         ; $4e3a: $0d
    and b                                         ; $4e3b: $a0
    xor [hl]                                      ; $4e3c: $ae
    ld b, l                                       ; $4e3d: $45
    inc bc                                        ; $4e3e: $03
    ldh [$62], a                                  ; $4e3f: $e0 $62
    ld h, a                                       ; $4e41: $67
    inc a                                         ; $4e42: $3c
    add e                                         ; $4e43: $83
    ld a, a                                       ; $4e44: $7f
    ld a, l                                       ; $4e45: $7d
    ret nz                                        ; $4e46: $c0

    and c                                         ; $4e47: $a1
    ld a, [$0083]                                 ; $4e48: $fa $83 $00
    jp nz, $b800                                  ; $4e4b: $c2 $00 $b8

    jr nz, jr_063_4eb3                            ; $4e4e: $20 $63

    sbc [hl]                                      ; $4e50: $9e
    cp $51                                        ; $4e51: $fe $51
    and d                                         ; $4e53: $a2
    xor a                                         ; $4e54: $af
    ld b, a                                       ; $4e55: $47
    ld d, l                                       ; $4e56: $55
    inc a                                         ; $4e57: $3c
    ld h, d                                       ; $4e58: $62
    ld h, a                                       ; $4e59: $67
    dec [hl]                                      ; $4e5a: $35
    rlca                                          ; $4e5b: $07
    ld a, [hl-]                                   ; $4e5c: $3a
    xor [hl]                                      ; $4e5d: $ae
    add c                                         ; $4e5e: $81
    add e                                         ; $4e5f: $83
    jp nz, $83bd                                  ; $4e60: $c2 $bd $83

    nop                                           ; $4e63: $00
    cp e                                          ; $4e64: $bb
    add [hl]                                      ; $4e65: $86
    and [hl]                                      ; $4e66: $a6
    adc [hl]                                      ; $4e67: $8e
    add b                                         ; $4e68: $80
    rst $38                                       ; $4e69: $ff
    ld b, l                                       ; $4e6a: $45
    ld b, a                                       ; $4e6b: $47
    ld h, b                                       ; $4e6c: $60
    ld d, [hl]                                    ; $4e6d: $56
    ld a, [hl-]                                   ; $4e6e: $3a
    ld l, c                                       ; $4e6f: $69
    dec [hl]                                      ; $4e70: $35
    dec [hl]                                      ; $4e71: $35
    rst $00                                       ; $4e72: $c7
    add hl, sp                                    ; $4e73: $39
    xor a                                         ; $4e74: $af
    add c                                         ; $4e75: $81
    ld [hl], c                                    ; $4e76: $71
    db $e3                                        ; $4e77: $e3
    nop                                           ; $4e78: $00
    cp [hl]                                       ; $4e79: $be
    add [hl]                                      ; $4e7a: $86
    xor c                                         ; $4e7b: $a9
    ld b, l                                       ; $4e7c: $45
    ld c, b                                       ; $4e7d: $48
    rst $28                                       ; $4e7e: $ef
    ld c, c                                       ; $4e7f: $49
    ld h, b                                       ; $4e80: $60
    ld d, h                                       ; $4e81: $54
    ld d, e                                       ; $4e82: $53
    ret nz                                        ; $4e83: $c0

    ldh [$36], a                                  ; $4e84: $e0 $36
    xor [hl]                                      ; $4e86: $ae
    add e                                         ; $4e87: $83
    add l                                         ; $4e88: $85
    add h                                         ; $4e89: $84
    jp $af82                                      ; $4e8a: $c3 $82 $af


    add b                                         ; $4e8d: $80
    add d                                         ; $4e8e: $82
    nop                                           ; $4e8f: $00
    cp c                                          ; $4e90: $b9
    db $10                                        ; $4e91: $10
    ld h, l                                       ; $4e92: $65
    adc [hl]                                      ; $4e93: $8e
    ld h, c                                       ; $4e94: $61
    ld c, d                                       ; $4e95: $4a
    rst $38                                       ; $4e96: $ff
    ld h, b                                       ; $4e97: $60
    ld d, [hl]                                    ; $4e98: $56
    scf                                           ; $4e99: $37
    jr c, jr_063_4ed7                             ; $4e9a: $38 $3b

    ld h, d                                       ; $4e9c: $62
    halt                                          ; $4e9d: $76
    ld [hl], $0f                                  ; $4e9e: $36 $0f
    xor [hl]                                      ; $4ea0: $ae
    xor a                                         ; $4ea1: $af
    adc d                                         ; $4ea2: $8a
    add l                                         ; $4ea3: $85
    inc bc                                        ; $4ea4: $03
    ldh [$be], a                                  ; $4ea5: $e0 $be
    ld h, c                                       ; $4ea7: $61
    jp nz, Jump_000_00a1                          ; $4ea8: $c2 $a1 $00

    cp b                                          ; $4eab: $b8
    db $fc                                        ; $4eac: $fc
    db $10                                        ; $4ead: $10
    ld h, [hl]                                    ; $4eae: $66
    ld c, c                                       ; $4eaf: $49
    add c                                         ; $4eb0: $81
    ld c, d                                       ; $4eb1: $4a
    ld h, c                                       ; $4eb2: $61

jr_063_4eb3:
    ld e, d                                       ; $4eb3: $5a
    inc a                                         ; $4eb4: $3c
    ld h, d                                       ; $4eb5: $62
    ld h, e                                       ; $4eb6: $63
    rrca                                          ; $4eb7: $0f
    ld a, b                                       ; $4eb8: $78
    ld a, [hl-]                                   ; $4eb9: $3a
    xor [hl]                                      ; $4eba: $ae
    xor a                                         ; $4ebb: $af
    add c                                         ; $4ebc: $81
    pop hl                                        ; $4ebd: $e1
    add h                                         ; $4ebe: $84
    push hl                                       ; $4ebf: $e5
    ld a, d                                       ; $4ec0: $7a
    ld c, b                                       ; $4ec1: $48
    nop                                           ; $4ec2: $00
    ld c, l                                       ; $4ec3: $4d
    sbc h                                         ; $4ec4: $9c
    ld [$4fa6], sp                                ; $4ec5: $08 $a6 $4f
    ld h, e                                       ; $4ec8: $63
    ld b, h                                       ; $4ec9: $44
    ld d, d                                       ; $4eca: $52
    ld d, l                                       ; $4ecb: $55
    call nz, Call_000_03c0                        ; $4ecc: $c4 $c0 $03
    ldh [$83], a                                  ; $4ecf: $e0 $83
    inc bc                                        ; $4ed1: $03
    add [hl]                                      ; $4ed2: $86
    add l                                         ; $4ed3: $85
    ld b, [hl]                                    ; $4ed4: $46
    ldh [$be], a                                  ; $4ed5: $e0 $be

jr_063_4ed7:
    ld b, b                                       ; $4ed7: $40
    ld l, [hl]                                    ; $4ed8: $6e
    add b                                         ; $4ed9: $80
    add d                                         ; $4eda: $82
    and b                                         ; $4edb: $a0
    nop                                           ; $4edc: $00
    or [hl]                                       ; $4edd: $b6
    add d                                         ; $4ede: $82
    ld [$afdf], a                                 ; $4edf: $ea $df $af
    ld b, l                                       ; $4ee2: $45
    ld [hl], $36                                  ; $4ee3: $36 $36
    ld [hl], $c4                                  ; $4ee5: $36 $c4
    ret nz                                        ; $4ee7: $c0

    ld a, [hl-]                                   ; $4ee8: $3a
    xor [hl]                                      ; $4ee9: $ae
    rlca                                          ; $4eea: $07
    ld b, [hl]                                    ; $4eeb: $46
    adc d                                         ; $4eec: $8a
    add l                                         ; $4eed: $85
    ret                                           ; $4eee: $c9


    add c                                         ; $4eef: $81
    ld l, [hl]                                    ; $4ef0: $6e
    ld h, h                                       ; $4ef1: $64
    ld a, [hl]                                    ; $4ef2: $7e
    ld b, a                                       ; $4ef3: $47
    nop                                           ; $4ef4: $00
    xor l                                         ; $4ef5: $ad
    adc [hl]                                      ; $4ef6: $8e
    inc hl                                        ; $4ef7: $23
    ld l, h                                       ; $4ef8: $6c
    inc b                                         ; $4ef9: $04
    jp nz, Jump_063_6095                          ; $4efa: $c2 $95 $60

    ld b, l                                       ; $4efd: $45
    ld [hl], $49                                  ; $4efe: $36 $49
    and b                                         ; $4f00: $a0
    ld l, e                                       ; $4f01: $6b
    ld l, h                                       ; $4f02: $6c
    add c                                         ; $4f03: $81
    pop hl                                        ; $4f04: $e1
    ld bc, $c984                                  ; $4f05: $01 $84 $c9
    add e                                         ; $4f08: $83
    add [hl]                                      ; $4f09: $86
    db $e3                                        ; $4f0a: $e3
    add d                                         ; $4f0b: $82
    add l                                         ; $4f0c: $85
    nop                                           ; $4f0d: $00
    xor l                                         ; $4f0e: $ad
    inc h                                         ; $4f0f: $24
    jr z, jr_063_4f56                             ; $4f10: $28 $44

    pop bc                                        ; $4f12: $c1
    pop bc                                        ; $4f13: $c1
    ld [c], a                                     ; $4f14: $e2
    rst $38                                       ; $4f15: $ff
    dec [hl]                                      ; $4f16: $35
    ld l, [hl]                                    ; $4f17: $6e
    ld [hl], b                                    ; $4f18: $70
    ld [hl], c                                    ; $4f19: $71
    adc b                                         ; $4f1a: $88
    adc b                                         ; $4f1b: $88
    add a                                         ; $4f1c: $87
    add l                                         ; $4f1d: $85
    and b                                         ; $4f1e: $a0
    adc e                                         ; $4f1f: $8b
    ld h, d                                       ; $4f20: $62
    add [hl]                                      ; $4f21: $86
    jp hl                                         ; $4f22: $e9


    nop                                           ; $4f23: $00
    ld d, b                                       ; $4f24: $50
    inc c                                         ; $4f25: $0c
    ld b, a                                       ; $4f26: $47
    jp z, Jump_000_3962                           ; $4f27: $ca $62 $39

    pop bc                                        ; $4f2a: $c1
    pop hl                                        ; $4f2b: $e1
    ld h, d                                       ; $4f2c: $62
    add hl, bc                                    ; $4f2d: $09
    ld h, [hl]                                    ; $4f2e: $66
    ld b, c                                       ; $4f2f: $41
    pop hl                                        ; $4f30: $e1
    add e                                         ; $4f31: $83
    ld b, b                                       ; $4f32: $40
    and c                                         ; $4f33: $a1
    ld [$00e9], sp                                ; $4f34: $08 $e9 $00
    ld d, a                                       ; $4f37: $57
    inc d                                         ; $4f38: $14
    inc hl                                        ; $4f39: $23
    jp nc, Jump_063_7b21                          ; $4f3a: $d2 $21 $7b

    ld b, l                                       ; $4f3d: $45
    ld a, [hl-]                                   ; $4f3e: $3a
    pop bc                                        ; $4f3f: $c1
    pop hl                                        ; $4f40: $e1
    ld h, a                                       ; $4f41: $67
    ld l, b                                       ; $4f42: $68
    ld h, [hl]                                    ; $4f43: $66
    ld a, $06                                     ; $4f44: $3e $06
    and b                                         ; $4f46: $a0
    ld bc, $4aae                                  ; $4f47: $01 $ae $4a
    add c                                         ; $4f4a: $81
    add d                                         ; $4f4b: $82
    db $eb                                        ; $4f4c: $eb
    nop                                           ; $4f4d: $00
    ld d, d                                       ; $4f4e: $52
    inc c                                         ; $4f4f: $0c
    ld b, e                                       ; $4f50: $43
    dec bc                                        ; $4f51: $0b
    add d                                         ; $4f52: $82
    ret nz                                        ; $4f53: $c0

    pop hl                                        ; $4f54: $e1
    add e                                         ; $4f55: $83

jr_063_4f56:
    pop bc                                        ; $4f56: $c1
    rlca                                          ; $4f57: $07
    ld l, d                                       ; $4f58: $6a
    ld a, [hl-]                                   ; $4f59: $3a
    ld b, l                                       ; $4f5a: $45
    ld b, l                                       ; $4f5b: $45
    call nz, Call_000_2786                        ; $4f5c: $c4 $86 $27
    ld h, [hl]                                    ; $4f5f: $66
    ld bc, $5200                                  ; $4f60: $01 $00 $52
    inc c                                         ; $4f63: $0c
    ld b, e                                       ; $4f64: $43
    ld a, b                                       ; $4f65: $78
    ld b, [hl]                                    ; $4f66: $46
    and d                                         ; $4f67: $a2
    ld b, b                                       ; $4f68: $40
    ldh [rLY], a                                  ; $4f69: $e0 $44
    pop bc                                        ; $4f6b: $c1
    dec [hl]                                      ; $4f6c: $35
    ld l, b                                       ; $4f6d: $68
    ld h, [hl]                                    ; $4f6e: $66
    add hl, sp                                    ; $4f6f: $39
    ld c, b                                       ; $4f70: $48
    and d                                         ; $4f71: $a2
    ret nz                                        ; $4f72: $c0

    ld [$8644], sp                                ; $4f73: $08 $44 $86
    ld l, h                                       ; $4f76: $6c
    add b                                         ; $4f77: $80
    add hl, bc                                    ; $4f78: $09
    xor d                                         ; $4f79: $aa
    inc bc                                        ; $4f7a: $03
    add [hl]                                      ; $4f7b: $86
    add e                                         ; $4f7c: $83
    sub h                                         ; $4f7d: $94
    jr nz, jr_063_4fc4                            ; $4f7e: $20 $44

    inc a                                         ; $4f80: $3c
    nop                                           ; $4f81: $00
    ld [$c7a0], sp                                ; $4f82: $08 $a0 $c7
    ld h, b                                       ; $4f85: $60
    ld a, a                                       ; $4f86: $7f
    db $e4                                        ; $4f87: $e4
    ld c, c                                       ; $4f88: $49
    ld b, c                                       ; $4f89: $41
    inc b                                         ; $4f8a: $04
    daa                                           ; $4f8b: $27
    ret nc                                        ; $4f8c: $d0

    dec hl                                        ; $4f8d: $2b
    add [hl]                                      ; $4f8e: $86
    ld l, e                                       ; $4f8f: $6b
    inc c                                         ; $4f90: $0c
    ld b, h                                       ; $4f91: $44
    inc de                                        ; $4f92: $13
    ld b, l                                       ; $4f93: $45
    ld a, [hl-]                                   ; $4f94: $3a
    ld b, h                                       ; $4f95: $44
    ret nz                                        ; $4f96: $c0

    ld a, a                                       ; $4f97: $7f
    ld [c], a                                     ; $4f98: $e2
    ld b, d                                       ; $4f99: $42
    ld a, $43                                     ; $4f9a: $3e $43
    ld b, a                                       ; $4f9c: $47
    ld h, b                                       ; $4f9d: $60
    add [hl]                                      ; $4f9e: $86
    ld l, [hl]                                    ; $4f9f: $6e
    or b                                          ; $4fa0: $b0
    add b                                         ; $4fa1: $80
    add hl, bc                                    ; $4fa2: $09
    add [hl]                                      ; $4fa3: $86
    ld h, l                                       ; $4fa4: $65
    adc h                                         ; $4fa5: $8c
    ld hl, $e23f                                  ; $4fa6: $21 $3f $e2
    ld l, [hl]                                    ; $4fa9: $6e
    ld l, a                                       ; $4faa: $6f
    cp a                                          ; $4fab: $bf
    ld [c], a                                     ; $4fac: $e2
    ld l, d                                       ; $4fad: $6a
    add c                                         ; $4fae: $81
    ld b, b                                       ; $4faf: $40
    ld b, h                                       ; $4fb0: $44
    inc hl                                        ; $4fb1: $23
    ld a, l                                       ; $4fb2: $7d
    ret nz                                        ; $4fb3: $c0

    add d                                         ; $4fb4: $82
    inc b                                         ; $4fb5: $04
    ld d, b                                       ; $4fb6: $50
    dec c                                         ; $4fb7: $0d
    add [hl]                                      ; $4fb8: $86
    ld l, h                                       ; $4fb9: $6c
    ld c, e                                       ; $4fba: $4b
    inc h                                         ; $4fbb: $24
    ld b, l                                       ; $4fbc: $45
    rst $38                                       ; $4fbd: $ff
    ld [hl], $6e                                  ; $4fbe: $36 $6e
    ld [hl], b                                    ; $4fc0: $70
    ld [hl], d                                    ; $4fc1: $72
    ld l, h                                       ; $4fc2: $6c
    dec [hl]                                      ; $4fc3: $35

jr_063_4fc4:
    ld l, h                                       ; $4fc4: $6c
    ld l, l                                       ; $4fc5: $6d
    ld bc, $4740                                  ; $4fc6: $01 $40 $47
    ld h, $ec                                     ; $4fc9: $26 $ec
    dec b                                         ; $4fcb: $05
    ld b, e                                       ; $4fcc: $43
    add hl, hl                                    ; $4fcd: $29
    nop                                           ; $4fce: $00
    xor h                                         ; $4fcf: $ac
    inc e                                         ; $4fd0: $1c
    pop hl                                        ; $4fd1: $e1
    jp $cd61                                      ; $4fd2: $c3 $61 $cd


    ld hl, $373b                                  ; $4fd5: $21 $3b $37
    jr c, @-$3d                                   ; $4fd8: $38 $c1

    and b                                         ; $4fda: $a0
    ld [hl], b                                    ; $4fdb: $70
    ld l, [hl]                                    ; $4fdc: $6e
    add hl, sp                                    ; $4fdd: $39
    ld b, l                                       ; $4fde: $45
    ld h, e                                       ; $4fdf: $63
    ld b, l                                       ; $4fe0: $45
    add e                                         ; $4fe1: $83
    ld b, b                                       ; $4fe2: $40
    inc b                                         ; $4fe3: $04
    inc h                                         ; $4fe4: $24
    dec c                                         ; $4fe5: $0d
    ld a, [hl+]                                   ; $4fe6: $2a
    nop                                           ; $4fe7: $00
    xor [hl]                                      ; $4fe8: $ae
    add hl, bc                                    ; $4fe9: $09
    ld b, c                                       ; $4fea: $41
    db $d3                                        ; $4feb: $d3
    ld bc, $a37c                                  ; $4fec: $01 $7c $a3
    ld a, [hl-]                                   ; $4fef: $3a
    add a                                         ; $4ff0: $87
    jr nz, jr_063_5023                            ; $4ff1: $20 $30

    ld a, h                                       ; $4ff3: $7c
    add $86                                       ; $4ff4: $c6 $86
    inc h                                         ; $4ff6: $24
    add b                                         ; $4ff7: $80
    ld [de], a                                    ; $4ff8: $12
    nop                                           ; $4ff9: $00
    and l                                         ; $4ffa: $a5
    ret nc                                        ; $4ffb: $d0

    pop de                                        ; $4ffc: $d1
    ld b, a                                       ; $4ffd: $47
    ld b, d                                       ; $4ffe: $42
    cp a                                          ; $4fff: $bf
    and $01                                       ; $5000: $e6 $01
    add hl, sp                                    ; $5002: $39
    ld b, [hl]                                    ; $5003: $46
    ld [bc], a                                    ; $5004: $02
    dec a                                         ; $5005: $3d
    nop                                           ; $5006: $00
    ld a, h                                       ; $5007: $7c
    ret nz                                        ; $5008: $c0

    inc b                                         ; $5009: $04
    ld b, c                                       ; $500a: $41
    ld d, b                                       ; $500b: $50
    dec c                                         ; $500c: $0d
    nop                                           ; $500d: $00
    xor l                                         ; $500e: $ad
    nop                                           ; $500f: $00
    add l                                         ; $5010: $85
    inc b                                         ; $5011: $04
    add hl, bc                                    ; $5012: $09
    ld hl, $a179                                  ; $5013: $21 $79 $a1
    add hl, sp                                    ; $5016: $39
    ld b, [hl]                                    ; $5017: $46
    inc bc                                        ; $5018: $03
    cp h                                          ; $5019: $bc
    jp nz, Jump_000_216a                          ; $501a: $c2 $6a $21

    add b                                         ; $501d: $80
    db $d3                                        ; $501e: $d3
    nop                                           ; $501f: $00
    and l                                         ; $5020: $a5
    jr jr_063_50a1                                ; $5021: $18 $7e

jr_063_5023:
    and $cd                                       ; $5023: $e6 $cd
    ld [c], a                                     ; $5025: $e2
    ld sp, hl                                     ; $5026: $f9
    add b                                         ; $5027: $80
    inc a                                         ; $5028: $3c
    ld b, h                                       ; $5029: $44
    add e                                         ; $502a: $83
    inc b                                         ; $502b: $04
    add e                                         ; $502c: $83
    ld hl, $6104                                  ; $502d: $21 $04 $61
    inc [hl]                                      ; $5030: $34
    add b                                         ; $5031: $80
    rst $10                                       ; $5032: $d7
    ld a, [hl]                                    ; $5033: $7e
    jp hl                                         ; $5034: $e9


    sbc l                                         ; $5035: $9d
    ret nz                                        ; $5036: $c0

    ld hl, $40ae                                  ; $5037: $21 $ae $40
    ld b, b                                       ; $503a: $40
    push hl                                       ; $503b: $e5
    cp [hl]                                       ; $503c: $be
    add $70                                       ; $503d: $c6 $70
    add [hl]                                      ; $503f: $86
    add hl, bc                                    ; $5040: $09
    nop                                           ; $5041: $00
    xor a                                         ; $5042: $af
    db $fc                                        ; $5043: $fc
    rst $00                                       ; $5044: $c7
    jp nz, $af02                                  ; $5045: $c2 $02 $af

    ld b, h                                       ; $5048: $44
    inc a                                         ; $5049: $3c
    cp a                                          ; $504a: $bf
    jp Boot                                       ; $504b: $c3 $00 $01


    db $e4                                        ; $504e: $e4
    inc b                                         ; $504f: $04
    inc h                                         ; $5050: $24
    add b                                         ; $5051: $80
    push de                                       ; $5052: $d5
    db $fc                                        ; $5053: $fc
    jp z, $c239                                   ; $5054: $ca $39 $c2

    rst $38                                       ; $5057: $ff
    call nz, $a6ff                                ; $5058: $c4 $ff $a6

jr_063_505b:
    inc b                                         ; $505b: $04
    ld h, h                                       ; $505c: $64
    stop                                          ; $505d: $10 $00
    ld d, [hl]                                    ; $505f: $56
    db $fc                                        ; $5060: $fc
    rst $00                                       ; $5061: $c7
    ret nz                                        ; $5062: $c0

    db $e3                                        ; $5063: $e3
    ld hl, sp+$62                                 ; $5064: $f8 $62
    ld a, $03                                     ; $5066: $3e $03
    db $e4                                        ; $5068: $e4
    inc b                                         ; $5069: $04
    ld l, c                                       ; $506a: $69
    nop                                           ; $506b: $00
    ld e, d                                       ; $506c: $5a
    nop                                           ; $506d: $00
    and d                                         ; $506e: $a2
    ld b, e                                       ; $506f: $43
    ld a, c                                       ; $5070: $79
    and h                                         ; $5071: $a4
    ret nz                                        ; $5072: $c0

    push hl                                       ; $5073: $e5
    cp h                                          ; $5074: $bc
    ld h, b                                       ; $5075: $60
    ld a, [hl]                                    ; $5076: $7e
    ld l, c                                       ; $5077: $69
    add b                                         ; $5078: $80
    inc de                                        ; $5079: $13
    ld a, d                                       ; $507a: $7a
    ld l, b                                       ; $507b: $68
    cp [hl]                                       ; $507c: $be
    inc b                                         ; $507d: $04
    nop                                           ; $507e: $00
    ld a, c                                       ; $507f: $79
    and b                                         ; $5080: $a0
    cp a                                          ; $5081: $bf
    jp $8a7e                                      ; $5082: $c3 $7e $8a


    cp l                                          ; $5085: $bd
    xor c                                         ; $5086: $a9
    add b                                         ; $5087: $80
    dec c                                         ; $5088: $0d
    ld a, d                                       ; $5089: $7a
    ld b, h                                       ; $508a: $44
    cp [hl]                                       ; $508b: $be
    inc bc                                        ; $508c: $03
    ei                                            ; $508d: $fb
    and c                                         ; $508e: $a1
    add b                                         ; $508f: $80
    ret nz                                        ; $5090: $c0

    pop bc                                        ; $5091: $c1
    add h                                         ; $5092: $84
    inc h                                         ; $5093: $24
    inc b                                         ; $5094: $04
    ld b, [hl]                                    ; $5095: $46
    add b                                         ; $5096: $80
    jr jr_063_5113                                ; $5097: $18 $7a

    ld b, h                                       ; $5099: $44
    ei                                            ; $509a: $fb
    inc hl                                        ; $509b: $23
    ei                                            ; $509c: $fb
    nop                                           ; $509d: $00
    ld b, e                                       ; $509e: $43
    inc bc                                        ; $509f: $03
    ld b, c                                       ; $50a0: $41

jr_063_50a1:
    ld b, e                                       ; $50a1: $43
    db $fd                                        ; $50a2: $fd
    ldh [$3a], a                                  ; $50a3: $e0 $3a
    and b                                         ; $50a5: $a0
    db $fc                                        ; $50a6: $fc
    ld h, [hl]                                    ; $50a7: $66
    nop                                           ; $50a8: $00
    or h                                          ; $50a9: $b4
    ld a, d                                       ; $50aa: $7a
    jp z, $8279                                   ; $50ab: $ca $79 $82

    ld e, [hl]                                    ; $50ae: $5e
    add h                                         ; $50af: $84
    ld h, c                                       ; $50b0: $61
    ld [hl], $3b                                  ; $50b1: $36 $3b
    dec [hl]                                      ; $50b3: $35
    dec sp                                        ; $50b4: $3b
    db $fd                                        ; $50b5: $fd
    ldh [$36], a                                  ; $50b6: $e0 $36
    cp a                                          ; $50b8: $bf
    db $e3                                        ; $50b9: $e3
    ldh [$7e], a                                  ; $50ba: $e0 $7e
    add e                                         ; $50bc: $83
    add b                                         ; $50bd: $80
    jr jr_063_513a                                ; $50be: $18 $7a

    jp $c200                                      ; $50c0: $c3 $00 $c2


    cp b                                          ; $50c3: $b8
    inc hl                                        ; $50c4: $23
    inc a                                         ; $50c5: $3c
    and h                                         ; $50c6: $a4
    ld h, h                                       ; $50c7: $64
    ld [bc], a                                    ; $50c8: $02
    rst $38                                       ; $50c9: $ff
    ldh [$a5], a                                  ; $50ca: $e0 $a5
    ld a, c                                       ; $50cc: $79
    and b                                         ; $50cd: $a0
    add d                                         ; $50ce: $82
    ld [$017e], sp                                ; $50cf: $08 $7e $01
    add b                                         ; $50d2: $80
    pop de                                        ; $50d3: $d1
    db $f4                                        ; $50d4: $f4
    dec h                                         ; $50d5: $25
    jr jr_063_505b                                ; $50d6: $18 $83

    cp $ba                                        ; $50d8: $fe $ba
    ld bc, $3542                                  ; $50da: $01 $42 $35
    ld l, c                                       ; $50dd: $69
    and e                                         ; $50de: $a3
    dec [hl]                                      ; $50df: $35
    dec [hl]                                      ; $50e0: $35
    and e                                         ; $50e1: $a3
    rlca                                          ; $50e2: $07
    ld l, d                                       ; $50e3: $6a
    dec [hl]                                      ; $50e4: $35
    ld b, d                                       ; $50e5: $42
    ld b, b                                       ; $50e6: $40
    ld bc, $61ba                                  ; $50e7: $01 $ba $61
    nop                                           ; $50ea: $00
    ld d, e                                       ; $50eb: $53
    ld a, d                                       ; $50ec: $7a
    dec bc                                        ; $50ed: $0b
    ld a, [hl]                                    ; $50ee: $7e
    and h                                         ; $50ef: $a4
    nop                                           ; $50f0: $00
    ld a, c                                       ; $50f1: $79
    nop                                           ; $50f2: $00
    ret nz                                        ; $50f3: $c0

    ldh [$f8], a                                  ; $50f4: $e0 $f8
    ld b, d                                       ; $50f6: $42
    ret nz                                        ; $50f7: $c0

    pop hl                                        ; $50f8: $e1
    ld a, [hl-]                                   ; $50f9: $3a
    ld h, c                                       ; $50fa: $61
    db $fc                                        ; $50fb: $fc
    ld b, l                                       ; $50fc: $45
    add b                                         ; $50fd: $80
    rst $10                                       ; $50fe: $d7
    ld a, [hl]                                    ; $50ff: $7e
    xor b                                         ; $5100: $a8
    sbc $34                                       ; $5101: $de $34
    ld h, b                                       ; $5103: $60
    ld b, h                                       ; $5104: $44
    inc a                                         ; $5105: $3c
    ld l, e                                       ; $5106: $6b
    ld [hl], c                                    ; $5107: $71
    rst $38                                       ; $5108: $ff
    ldh [$6d], a                                  ; $5109: $e0 $6d
    inc a                                         ; $510b: $3c
    add l                                         ; $510c: $85
    ld b, h                                       ; $510d: $44
    ld a, $01                                     ; $510e: $3e $01
    sbc a                                         ; $5110: $9f
    add d                                         ; $5111: $82
    dec b                                         ; $5112: $05

jr_063_5113:
    add b                                         ; $5113: $80
    ret c                                         ; $5114: $d8

    halt                                          ; $5115: $76
    inc hl                                        ; $5116: $23
    db $fc                                        ; $5117: $fc
    add l                                         ; $5118: $85
    ld b, l                                       ; $5119: $45
    nop                                           ; $511a: $00
    ret nz                                        ; $511b: $c0

    add $3e                                       ; $511c: $c6 $3e
    ld bc, $257a                                  ; $511e: $01 $7a $25
    add b                                         ; $5121: $80
    db $db                                        ; $5122: $db
    db $fc                                        ; $5123: $fc
    add a                                         ; $5124: $87
    cp e                                          ; $5125: $bb
    and c                                         ; $5126: $a1
    ld b, b                                       ; $5127: $40
    add $40                                       ; $5128: $c6 $40
    add b                                         ; $512a: $80
    nop                                           ; $512b: $00
    nop                                           ; $512c: $00
    cp l                                          ; $512d: $bd
    db $f4                                        ; $512e: $f4
    dec h                                         ; $512f: $25
    halt                                          ; $5130: $76
    ld h, l                                       ; $5131: $65
    or $40                                        ; $5132: $f6 $40
    inc bc                                        ; $5134: $03
    add l                                         ; $5135: $85
    ret nz                                        ; $5136: $c0

    ld h, d                                       ; $5137: $62
    nop                                           ; $5138: $00
    and e                                         ; $5139: $a3

jr_063_513a:
    nop                                           ; $513a: $00
    ld d, c                                       ; $513b: $51
    nop                                           ; $513c: $00
    ld a, [$7a89]                                 ; $513d: $fa $89 $7a
    add a                                         ; $5140: $87
    ld [hl], a                                    ; $5141: $77
    ld h, l                                       ; $5142: $65
    ld a, [hl]                                    ; $5143: $7e
    add a                                         ; $5144: $87
    nop                                           ; $5145: $00
    ld d, l                                       ; $5146: $55
    ld a, [$f489]                                 ; $5147: $fa $89 $f4
    inc hl                                        ; $514a: $23
    ld a, d                                       ; $514b: $7a
    and e                                         ; $514c: $a3
    inc c                                         ; $514d: $0c
    cp b                                          ; $514e: $b8
    ld h, d                                       ; $514f: $62
    jp $9d61                                      ; $5150: $c3 $61 $9d


    sbc l                                         ; $5153: $9d
    nop                                           ; $5154: $00
    add h                                         ; $5155: $84
    nop                                           ; $5156: $00
    ld e, b                                       ; $5157: $58
    ld a, d                                       ; $5158: $7a
    adc $13                                       ; $5159: $ce $13
    ld b, d                                       ; $515b: $42
    nop                                           ; $515c: $00
    ld [hl], h                                    ; $515d: $74
    ld h, c                                       ; $515e: $61
    jp Jump_000_00e1                              ; $515f: $c3 $e1 $00


    ld e, l                                       ; $5162: $5d
    ld a, d                                       ; $5163: $7a
    adc $72                                       ; $5164: $ce $72
    ld hl, $ebfc                                  ; $5166: $21 $fc $eb
    nop                                           ; $5169: $00
    ld e, d                                       ; $516a: $5a
    ld a, d                                       ; $516b: $7a
    adc $00                                       ; $516c: $ce $00
    sub d                                         ; $516e: $92
    ld hl, $edfc                                  ; $516f: $21 $fc $ed
    nop                                           ; $5172: $00
    ld d, a                                       ; $5173: $57
    ld a, d                                       ; $5174: $7a
    rst $08                                       ; $5175: $cf
    sub d                                         ; $5176: $92
    ld h, c                                       ; $5177: $61
    db $fc                                        ; $5178: $fc
    db $ed                                        ; $5179: $ed
    nop                                           ; $517a: $00
    ld c, a                                       ; $517b: $4f
    nop                                           ; $517c: $00
    nop                                           ; $517d: $00
    nop                                           ; $517e: $00
    pop bc                                        ; $517f: $c1
    nop                                           ; $5180: $00
    rst $38                                       ; $5181: $ff
    rst $38                                       ; $5182: $ff
    rst $38                                       ; $5183: $ff
    rst $38                                       ; $5184: $ff
    rst $38                                       ; $5185: $ff
    rst $38                                       ; $5186: $ff
    rst $38                                       ; $5187: $ff
    rst $38                                       ; $5188: $ff
    rst $38                                       ; $5189: $ff
    rst $38                                       ; $518a: $ff
    nop                                           ; $518b: $00
    nop                                           ; $518c: $00
    ld bc, $fe80                                  ; $518d: $01 $80 $fe
    ldh [rIE], a                                  ; $5190: $e0 $ff
    rst $38                                       ; $5192: $ff
    rst $38                                       ; $5193: $ff
    rst $38                                       ; $5194: $ff
    rst $38                                       ; $5195: $ff
    add sp, $00                                   ; $5196: $e8 $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    ld [bc], a                                    ; $519a: $02
    nop                                           ; $519b: $00
    dec h                                         ; $519c: $25
    rlca                                          ; $519d: $07
    ld [bc], a                                    ; $519e: $02
    ld bc, $0823                                  ; $519f: $01 $23 $08
    ld [bc], a                                    ; $51a2: $02
    ld [bc], a                                    ; $51a3: $02
    jr z, jr_063_51b0                             ; $51a4: $28 $0a

    ld [bc], a                                    ; $51a6: $02
    inc bc                                        ; $51a7: $03
    ld e, $0b                                     ; $51a8: $1e $0b
    ld [bc], a                                    ; $51aa: $02
    inc b                                         ; $51ab: $04
    ld [hl+], a                                   ; $51ac: $22
    dec bc                                        ; $51ad: $0b
    ld [bc], a                                    ; $51ae: $02
    dec b                                         ; $51af: $05

jr_063_51b0:
    dec h                                         ; $51b0: $25
    dec bc                                        ; $51b1: $0b
    ld [bc], a                                    ; $51b2: $02
    ld b, $2d                                     ; $51b3: $06 $2d
    dec bc                                        ; $51b5: $0b
    ld [bc], a                                    ; $51b6: $02
    rlca                                          ; $51b7: $07
    dec hl                                        ; $51b8: $2b
    inc c                                         ; $51b9: $0c
    ld [bc], a                                    ; $51ba: $02
    ld [$0e28], sp                                ; $51bb: $08 $28 $0e
    ld [bc], a                                    ; $51be: $02
    add hl, bc                                    ; $51bf: $09
    inc l                                         ; $51c0: $2c
    ld c, $02                                     ; $51c1: $0e $02
    ld a, [bc]                                    ; $51c3: $0a
    rra                                           ; $51c4: $1f
    rrca                                          ; $51c5: $0f
    ld [bc], a                                    ; $51c6: $02
    dec bc                                        ; $51c7: $0b
    ld a, [hl+]                                   ; $51c8: $2a
    rrca                                          ; $51c9: $0f
    ld [bc], a                                    ; $51ca: $02
    inc c                                         ; $51cb: $0c
    inc e                                         ; $51cc: $1c
    db $10                                        ; $51cd: $10
    ld [bc], a                                    ; $51ce: $02
    dec c                                         ; $51cf: $0d
    add hl, hl                                    ; $51d0: $29
    ld de, $0e02                                  ; $51d1: $11 $02 $0e
    inc h                                         ; $51d4: $24
    ld [de], a                                    ; $51d5: $12
    ld [bc], a                                    ; $51d6: $02
    rrca                                          ; $51d7: $0f
    ld h, $12                                     ; $51d8: $26 $12
    ld [bc], a                                    ; $51da: $02
    db $10                                        ; $51db: $10
    dec l                                         ; $51dc: $2d
    ld [de], a                                    ; $51dd: $12
    ld [bc], a                                    ; $51de: $02
    ld de, $1318                                  ; $51df: $11 $18 $13
    ld [bc], a                                    ; $51e2: $02
    ld [de], a                                    ; $51e3: $12
    jr z, jr_063_51f9                             ; $51e4: $28 $13

    ld [bc], a                                    ; $51e6: $02
    inc de                                        ; $51e7: $13
    dec hl                                        ; $51e8: $2b
    inc de                                        ; $51e9: $13
    ld [bc], a                                    ; $51ea: $02
    inc d                                         ; $51eb: $14
    dec de                                        ; $51ec: $1b
    inc d                                         ; $51ed: $14
    ld [bc], a                                    ; $51ee: $02
    dec d                                         ; $51ef: $15
    dec h                                         ; $51f0: $25
    inc d                                         ; $51f1: $14
    ld [bc], a                                    ; $51f2: $02
    ld d, $29                                     ; $51f3: $16 $29
    inc d                                         ; $51f5: $14
    ld [bc], a                                    ; $51f6: $02
    rla                                           ; $51f7: $17
    rla                                           ; $51f8: $17

jr_063_51f9:
    dec d                                         ; $51f9: $15
    ld [bc], a                                    ; $51fa: $02
    jr @+$25                                      ; $51fb: $18 $23

    dec d                                         ; $51fd: $15
    ld [bc], a                                    ; $51fe: $02
    add hl, de                                    ; $51ff: $19
    daa                                           ; $5200: $27
    dec d                                         ; $5201: $15
    ld [bc], a                                    ; $5202: $02
    ld a, [de]                                    ; $5203: $1a
    ld a, [hl+]                                   ; $5204: $2a
    ld d, $02                                     ; $5205: $16 $02
    dec de                                        ; $5207: $1b
    ld [hl+], a                                   ; $5208: $22
    rla                                           ; $5209: $17
    ld [bc], a                                    ; $520a: $02
    inc e                                         ; $520b: $1c
    dec h                                         ; $520c: $25
    rla                                           ; $520d: $17
    ld [bc], a                                    ; $520e: $02
    dec e                                         ; $520f: $1d
    ld hl, $0218                                  ; $5210: $21 $18 $02
    ld e, $26                                     ; $5213: $1e $26
    jr @+$04                                      ; $5215: $18 $02

    rra                                           ; $5217: $1f
    jr nz, jr_063_5233                            ; $5218: $20 $19

    ld [bc], a                                    ; $521a: $02
    jr nz, @+$26                                  ; $521b: $20 $24

    add hl, de                                    ; $521d: $19
    ld [bc], a                                    ; $521e: $02
    ld hl, $1a16                                  ; $521f: $21 $16 $1a
    ld [bc], a                                    ; $5222: $02
    ld [hl+], a                                   ; $5223: $22
    rra                                           ; $5224: $1f
    dec de                                        ; $5225: $1b
    ld [bc], a                                    ; $5226: $02
    inc hl                                        ; $5227: $23
    inc hl                                        ; $5228: $23
    dec de                                        ; $5229: $1b
    ld [bc], a                                    ; $522a: $02
    inc h                                         ; $522b: $24
    inc de                                        ; $522c: $13
    inc e                                         ; $522d: $1c
    ld [bc], a                                    ; $522e: $02
    dec h                                         ; $522f: $25
    ld [hl+], a                                   ; $5230: $22
    dec e                                         ; $5231: $1d
    ld [bc], a                                    ; $5232: $02

jr_063_5233:
    ld h, $1e                                     ; $5233: $26 $1e
    ld e, $02                                     ; $5235: $1e $02
    daa                                           ; $5237: $27
    jr nz, jr_063_5258                            ; $5238: $20 $1e

    ld [bc], a                                    ; $523a: $02
    jr z, @+$23                                   ; $523b: $28 $21

    rra                                           ; $523d: $1f
    ld [bc], a                                    ; $523e: $02
    add hl, hl                                    ; $523f: $29
    ld de, $0220                                  ; $5240: $11 $20 $02
    ld a, [hl+]                                   ; $5243: $2a
    rra                                           ; $5244: $1f
    jr nz, jr_063_5249                            ; $5245: $20 $02

    dec hl                                        ; $5247: $2b
    ld [hl+], a                                   ; $5248: $22

jr_063_5249:
    ld hl, $2c02                                  ; $5249: $21 $02 $2c
    jr nz, jr_063_5270                            ; $524c: $20 $22

    ld [bc], a                                    ; $524e: $02
    dec l                                         ; $524f: $2d
    inc h                                         ; $5250: $24
    ld [hl+], a                                   ; $5251: $22
    ld [bc], a                                    ; $5252: $02
    ld l, $12                                     ; $5253: $2e $12
    inc hl                                        ; $5255: $23
    ld [bc], a                                    ; $5256: $02
    cpl                                           ; $5257: $2f

jr_063_5258:
    ld hl, $0225                                  ; $5258: $21 $25 $02
    jr nc, jr_063_5280                            ; $525b: $30 $23

    ld h, $02                                     ; $525d: $26 $02
    ld sp, $2715                                  ; $525f: $31 $15 $27
    ld [bc], a                                    ; $5262: $02
    ld [hl-], a                                   ; $5263: $32
    ld h, $27                                     ; $5264: $26 $27
    ld [bc], a                                    ; $5266: $02
    inc sp                                        ; $5267: $33
    ld [hl+], a                                   ; $5268: $22
    add hl, hl                                    ; $5269: $29
    ld [bc], a                                    ; $526a: $02
    inc [hl]                                      ; $526b: $34
    dec de                                        ; $526c: $1b
    dec hl                                        ; $526d: $2b
    ld [bc], a                                    ; $526e: $02
    dec [hl]                                      ; $526f: $35

jr_063_5270:
    dec h                                         ; $5270: $25
    dec hl                                        ; $5271: $2b
    ld [bc], a                                    ; $5272: $02
    ld [hl], $1a                                  ; $5273: $36 $1a
    jr nc, @+$04                                  ; $5275: $30 $02

    scf                                           ; $5277: $37
    ld h, $30                                     ; $5278: $26 $30
    ld [bc], a                                    ; $527a: $02
    jr c, jr_063_5298                             ; $527b: $38 $1b

    ld [hl-], a                                   ; $527d: $32
    ld [bc], a                                    ; $527e: $02
    add hl, sp                                    ; $527f: $39

jr_063_5280:
    ld e, $33                                     ; $5280: $1e $33
    ld [bc], a                                    ; $5282: $02
    ld a, [hl-]                                   ; $5283: $3a
    ld a, [hl+]                                   ; $5284: $2a
    dec [hl]                                      ; $5285: $35
    ld [bc], a                                    ; $5286: $02
    dec sp                                        ; $5287: $3b
    jr z, jr_063_52c1                             ; $5288: $28 $37

    ld [bc], a                                    ; $528a: $02
    inc a                                         ; $528b: $3c
    rra                                           ; $528c: $1f
    add hl, sp                                    ; $528d: $39
    rst $38                                       ; $528e: $ff
    rst $38                                       ; $528f: $ff
    rst $38                                       ; $5290: $ff
    sbc c                                         ; $5291: $99
    ld d, d                                       ; $5292: $52
    xor d                                         ; $5293: $aa
    ld d, [hl]                                    ; $5294: $56
    adc d                                         ; $5295: $8a
    ld e, e                                       ; $5296: $5b
    and l                                         ; $5297: $a5

jr_063_5298:
    ld e, e                                       ; $5298: $5b
    cp a                                          ; $5299: $bf
    ld c, $0e                                     ; $529a: $0e $0e
    dec c                                         ; $529c: $0d
    dec c                                         ; $529d: $0d
    dec c                                         ; $529e: $0d
    ld c, $fa                                     ; $529f: $0e $fa
    di                                            ; $52a1: $f3
    ld c, $37                                     ; $52a2: $0e $37
    ld c, $4d                                     ; $52a4: $0e $4d
    ld c, l                                       ; $52a6: $4d
    db $fc                                        ; $52a7: $fc
    rst $30                                       ; $52a8: $f7
    dec c                                         ; $52a9: $0d
    dec c                                         ; $52aa: $0d
    db $e3                                        ; $52ab: $e3
    pop hl                                        ; $52ac: $e1
    push bc                                       ; $52ad: $c5
    ldh [rP1], a                                  ; $52ae: $e0 $00
    db $fd                                        ; $52b0: $fd
    push af                                       ; $52b1: $f5
    db $e4                                        ; $52b2: $e4
    ld sp, hl                                     ; $52b3: $f9
    pop hl                                        ; $52b4: $e1
    pop hl                                        ; $52b5: $e1
    and e                                         ; $52b6: $a3
    ld [c], a                                     ; $52b7: $e2
    rst $18                                       ; $52b8: $df
    db $fd                                        ; $52b9: $fd
    ld h, e                                       ; $52ba: $63
    pop hl                                        ; $52bb: $e1
    db $fc                                        ; $52bc: $fc
    db $ed                                        ; $52bd: $ed
    add d                                         ; $52be: $82
    db $e3                                        ; $52bf: $e3
    add a                                         ; $52c0: $87

jr_063_52c1:
    dec c                                         ; $52c1: $0d
    ld c, l                                       ; $52c2: $4d
    dec l                                         ; $52c3: $2d
    cp l                                          ; $52c4: $bd
    ldh [rSCX], a                                 ; $52c5: $e0 $43
    push af                                       ; $52c7: $f5
    ld b, h                                       ; $52c8: $44
    db $e3                                        ; $52c9: $e3
    add d                                         ; $52ca: $82
    ld sp, hl                                     ; $52cb: $f9
    dec c                                         ; $52cc: $0d
    jp $0c4c                                      ; $52cd: $c3 $4c $0c


    rst $38                                       ; $52d0: $ff
    ldh [$60], a                                  ; $52d1: $e0 $60
    ld sp, hl                                     ; $52d3: $f9
    add d                                         ; $52d4: $82
    di                                            ; $52d5: $f3
    ld l, [hl]                                    ; $52d6: $6e
    db $e3                                        ; $52d7: $e3
    ld c, l                                       ; $52d8: $4d
    dec c                                         ; $52d9: $0d
    rrca                                          ; $52da: $0f
    ld l, l                                       ; $52db: $6d
    inc c                                         ; $52dc: $0c
    dec c                                         ; $52dd: $0d
    ld l, l                                       ; $52de: $6d
    push bc                                       ; $52df: $c5
    jp nz, $f8c0                                  ; $52e0: $c2 $c0 $f8

    ld hl, sp-$13                                 ; $52e3: $f8 $ed
    or b                                          ; $52e5: $b0
    add $3f                                       ; $52e6: $c6 $3f
    dec c                                         ; $52e8: $0d
    ld c, l                                       ; $52e9: $4d
    ld l, l                                       ; $52ea: $6d
    ld c, h                                       ; $52eb: $4c
    inc l                                         ; $52ec: $2c
    ld l, l                                       ; $52ed: $6d
    jp nz, $80c2                                  ; $52ee: $c2 $c2 $80

    rst $10                                       ; $52f1: $d7
    sbc b                                         ; $52f2: $98
    sbc d                                         ; $52f3: $9a
    call nz, $e21c                                ; $52f4: $c4 $1c $e2
    ld e, d                                       ; $52f7: $5a
    ret nz                                        ; $52f8: $c0

    dec l                                         ; $52f9: $2d
    dec l                                         ; $52fa: $2d
    db $f4                                        ; $52fb: $f4
    ld [c], a                                     ; $52fc: $e2
    db $fc                                        ; $52fd: $fc
    ld [c], a                                     ; $52fe: $e2
    ld l, l                                       ; $52ff: $6d
    add a                                         ; $5300: $87
    ld c, h                                       ; $5301: $4c
    inc c                                         ; $5302: $0c
    inc l                                         ; $5303: $2c
    add c                                         ; $5304: $81
    ldh [$9f], a                                  ; $5305: $e0 $9f
    db $db                                        ; $5307: $db
    ld a, e                                       ; $5308: $7b
    jp nz, $e0ba                                  ; $5309: $c2 $ba $e0

    dec l                                         ; $530c: $2d
    add [hl]                                      ; $530d: $86
    adc [hl]                                      ; $530e: $8e
    ld [c], a                                     ; $530f: $e2
    ld l, l                                       ; $5310: $6d
    dec bc                                        ; $5311: $0b
    adc [hl]                                      ; $5312: $8e
    ret nz                                        ; $5313: $c0

    call $a9c0                                    ; $5314: $cd $c0 $a9
    ldh [$c2], a                                  ; $5317: $e0 $c2
    ld [c], a                                     ; $5319: $e2
    dec c                                         ; $531a: $0d
    ld sp, $606d                                  ; $531b: $31 $6d $60
    db $db                                        ; $531e: $db
    inc h                                         ; $531f: $24
    pop bc                                        ; $5320: $c1
    db $e4                                        ; $5321: $e4
    and b                                         ; $5322: $a0
    ld l, l                                       ; $5323: $6d
    ld c, e                                       ; $5324: $4b
    sub a                                         ; $5325: $97
    ret nz                                        ; $5326: $c0

    ld hl, sp-$1f                                 ; $5327: $f8 $e1
    rrca                                          ; $5329: $0f
    dec bc                                        ; $532a: $0b
    dec bc                                        ; $532b: $0b
    dec bc                                        ; $532c: $0b
    inc c                                         ; $532d: $0c
    cp l                                          ; $532e: $bd
    pop hl                                        ; $532f: $e1
    add l                                         ; $5330: $85
    ldh [$c2], a                                  ; $5331: $e0 $c2
    ld [c], a                                     ; $5333: $e2
    ldh [$a3], a                                  ; $5334: $e0 $a3
    ld a, b                                       ; $5336: $78
    add [hl]                                      ; $5337: $86
    pop de                                        ; $5338: $d1
    ld c, h                                       ; $5339: $4c
    push bc                                       ; $533a: $c5
    ld [hl+], a                                   ; $533b: $22
    ld [c], a                                     ; $533c: $e2
    ld c, e                                       ; $533d: $4b
    ld c, e                                       ; $533e: $4b
    dec c                                         ; $533f: $0d
    ld c, e                                       ; $5340: $4b
    ld d, [hl]                                    ; $5341: $56
    ret nz                                        ; $5342: $c0

    ld h, e                                       ; $5343: $63
    ld l, l                                       ; $5344: $6d
    dec bc                                        ; $5345: $0b
    sub d                                         ; $5346: $92
    pop bc                                        ; $5347: $c1
    db $fc                                        ; $5348: $fc
    ld [c], a                                     ; $5349: $e2
    add l                                         ; $534a: $85
    ldh [$0d], a                                  ; $534b: $e0 $0d
    ld l, l                                       ; $534d: $6d
    ld h, d                                       ; $534e: $62
    reti                                          ; $534f: $d9


    db $e4                                        ; $5350: $e4
    sbc [hl]                                      ; $5351: $9e
    and a                                         ; $5352: $a7
    ld h, d                                       ; $5353: $62
    and c                                         ; $5354: $a1
    ld c, e                                       ; $5355: $4b
    rst $38                                       ; $5356: $ff
    pop hl                                        ; $5357: $e1
    ld d, l                                       ; $5358: $55
    pop bc                                        ; $5359: $c1
    ld l, h                                       ; $535a: $6c
    ld l, h                                       ; $535b: $6c
    ld c, h                                       ; $535c: $4c
    add e                                         ; $535d: $83
    ld l, h                                       ; $535e: $6c
    ld c, h                                       ; $535f: $4c
    ld d, d                                       ; $5360: $52
    and b                                         ; $5361: $a0
    adc c                                         ; $5362: $89
    ret nz                                        ; $5363: $c0

    ld [$1ec3], sp                                ; $5364: $08 $c3 $1e
    db $db                                        ; $5367: $db
    add b                                         ; $5368: $80
    db $e4                                        ; $5369: $e4
    dec c                                         ; $536a: $0d
    ld a, [hl]                                    ; $536b: $7e
    call nz, Call_063_4ce2                        ; $536c: $c4 $e2 $4c
    ld c, h                                       ; $536f: $4c
    ld l, h                                       ; $5370: $6c
    ld l, h                                       ; $5371: $6c
    dec c                                         ; $5372: $0d
    dec hl                                        ; $5373: $2b
    add a                                         ; $5374: $87
    db $e3                                        ; $5375: $e3
    ret nz                                        ; $5376: $c0

    inc l                                         ; $5377: $2c
    and h                                         ; $5378: $a4
    sbc $e7                                       ; $5379: $de $e7
    nop                                           ; $537b: $00
    xor d                                         ; $537c: $aa
    adc d                                         ; $537d: $8a
    xor h                                         ; $537e: $ac
    pop bc                                        ; $537f: $c1
    pop hl                                        ; $5380: $e1
    add a                                         ; $5381: $87
    ldh [$0b], a                                  ; $5382: $e0 $0b
    ld l, e                                       ; $5384: $6b
    add e                                         ; $5385: $83
    ld c, e                                       ; $5386: $4b
    dec bc                                        ; $5387: $0b
    inc c                                         ; $5388: $0c
    ld [c], a                                     ; $5389: $e2
    add [hl]                                      ; $538a: $86
    rst $20                                       ; $538b: $e7
    ld h, d                                       ; $538c: $62
    and l                                         ; $538d: $a5
    dec hl                                        ; $538e: $2b
    xor a                                         ; $538f: $af
    db $fd                                        ; $5390: $fd
    adc b                                         ; $5391: $88
    dec c                                         ; $5392: $0d
    rst $18                                       ; $5393: $df
    ld l, l                                       ; $5394: $6d
    inc l                                         ; $5395: $2c
    inc c                                         ; $5396: $0c
    ld l, h                                       ; $5397: $6c
    ld c, e                                       ; $5398: $4b
    ld c, e                                       ; $5399: $4b
    pop hl                                        ; $539a: $e1
    dec l                                         ; $539b: $2d
    dec bc                                        ; $539c: $0b
    ldh [$0b], a                                  ; $539d: $e0 $0b
    ldh [rOCPS], a                                ; $539f: $e0 $6a
    xor l                                         ; $53a1: $ad
    ret nz                                        ; $53a2: $c0

    di                                            ; $53a3: $f3
    ld [$82a7], sp                                ; $53a4: $08 $a7 $82
    ret nz                                        ; $53a7: $c0

    inc l                                         ; $53a8: $2c
    ld c, h                                       ; $53a9: $4c
    ld c, e                                       ; $53aa: $4b
    add b                                         ; $53ab: $80
    jp nc, $8fc1                                  ; $53ac: $d2 $c1 $8f

    and c                                         ; $53af: $a1
    add [hl]                                      ; $53b0: $86
    db $ed                                        ; $53b1: $ed
    db $f4                                        ; $53b2: $f4
    pop bc                                        ; $53b3: $c1
    ld b, $b1                                     ; $53b4: $06 $b1
    sub d                                         ; $53b6: $92
    and [hl]                                      ; $53b7: $a6
    inc c                                         ; $53b8: $0c
    ret nz                                        ; $53b9: $c0

    ld c, e                                       ; $53ba: $4b
    rlca                                          ; $53bb: $07
    inc c                                         ; $53bc: $0c
    ld c, h                                       ; $53bd: $4c
    ld c, e                                       ; $53be: $4b
    ret c                                         ; $53bf: $d8

    add c                                         ; $53c0: $81
    ldh a, [$91]                                  ; $53c1: $f0 $91
    ld b, d                                       ; $53c3: $42
    or e                                          ; $53c4: $b3
    adc d                                         ; $53c5: $8a
    and [hl]                                      ; $53c6: $a6
    adc [hl]                                      ; $53c7: $8e
    pop hl                                        ; $53c8: $e1
    sbc a                                         ; $53c9: $9f
    dec bc                                        ; $53ca: $0b
    inc c                                         ; $53cb: $0c
    inc l                                         ; $53cc: $2c
    ld c, e                                       ; $53cd: $4b
    ld c, e                                       ; $53ce: $4b
    add c                                         ; $53cf: $81
    pop hl                                        ; $53d0: $e1
    ldh a, [rOCPD]                                ; $53d1: $f0 $6b
    dec l                                         ; $53d3: $2d
    ld a, c                                       ; $53d4: $79
    dec l                                         ; $53d5: $2d
    jp nz, Jump_000_06f5                          ; $53d6: $c2 $f5 $06

    add sp, $0d                                   ; $53d9: $e8 $0d
    dec bc                                        ; $53db: $0b
    dec bc                                        ; $53dc: $0b
    dec c                                         ; $53dd: $0d
    add b                                         ; $53de: $80
    ldh [rSTAT], a                                ; $53df: $e0 $41
    inc c                                         ; $53e1: $0c
    ld bc, $d8c1                                  ; $53e2: $01 $c1 $d8
    ld l, h                                       ; $53e5: $6c
    ret nz                                        ; $53e6: $c0

    jp hl                                         ; $53e7: $e9


    add b                                         ; $53e8: $80
    call $840c                                    ; $53e9: $cd $0c $84
    ld l, l                                       ; $53ec: $6d
    jp $1ee0                                      ; $53ed: $c3 $e0 $1e


    cp a                                          ; $53f0: $bf
    ldh [rWX], a                                  ; $53f1: $e0 $4b
    ld l, h                                       ; $53f3: $6c
    inc c                                         ; $53f4: $0c
    ld c, e                                       ; $53f5: $4b
    ret nz                                        ; $53f6: $c0

    and c                                         ; $53f7: $a1
    inc b                                         ; $53f8: $04
    adc d                                         ; $53f9: $8a
    ld e, h                                       ; $53fa: $5c
    ld l, d                                       ; $53fb: $6a
    ld h, [hl]                                    ; $53fc: $66
    add b                                         ; $53fd: $80
    db $d3                                        ; $53fe: $d3
    dec c                                         ; $53ff: $0d
    ld c, e                                       ; $5400: $4b
    ld d, b                                       ; $5401: $50
    and b                                         ; $5402: $a0
    ret nz                                        ; $5403: $c0

    ld [c], a                                     ; $5404: $e2
    inc l                                         ; $5405: $2c
    inc l                                         ; $5406: $2c
    ld a, $a1                                     ; $5407: $3e $a1
    ldh a, [$d4]                                  ; $5409: $f0 $d4
    cp a                                          ; $540b: $bf
    ld l, e                                       ; $540c: $6b
    ld h, l                                       ; $540d: $65
    and d                                         ; $540e: $a2
    ld h, h                                       ; $540f: $64
    pop bc                                        ; $5410: $c1
    ld [c], a                                     ; $5411: $e2
    dec bc                                        ; $5412: $0b
    dec hl                                        ; $5413: $2b
    dec bc                                        ; $5414: $0b
    ld c, e                                       ; $5415: $4b
    rlca                                          ; $5416: $07
    ld c, h                                       ; $5417: $4c
    inc l                                         ; $5418: $2c
    inc c                                         ; $5419: $0c
    ld a, $a1                                     ; $541a: $3e $a1
    db $fc                                        ; $541c: $fc
    add b                                         ; $541d: $80
    ld [hl], d                                    ; $541e: $72
    ld h, h                                       ; $541f: $64
    cp h                                          ; $5420: $bc
    rst $08                                       ; $5421: $cf
    add b                                         ; $5422: $80
    adc $04                                       ; $5423: $ce $04
    ld l, b                                       ; $5425: $68
    ld h, b                                       ; $5426: $60
    add b                                         ; $5427: $80
    ldh [$0d], a                                  ; $5428: $e0 $0d
    pop bc                                        ; $542a: $c1
    ldh [$fe], a                                  ; $542b: $e0 $fe
    ldh [$3e], a                                  ; $542d: $e0 $3e
    pop hl                                        ; $542f: $e1
    inc a                                         ; $5430: $3c
    ld [c], a                                     ; $5431: $e2
    adc [hl]                                      ; $5432: $8e
    xor b                                         ; $5433: $a8
    ld [$478d], sp                                ; $5434: $08 $8d $47
    ld c, h                                       ; $5437: $4c
    or d                                          ; $5438: $b2
    jp nz, Jump_000_2bc5                          ; $5439: $c2 $c5 $2b

    ld a, l                                       ; $543c: $7d
    pop hl                                        ; $543d: $e1
    ld a, $e1                                     ; $543e: $3e $e1
    cp d                                          ; $5440: $ba
    add b                                         ; $5441: $80
    ld a, d                                       ; $5442: $7a
    add c                                         ; $5443: $81
    ld e, b                                       ; $5444: $58
    adc d                                         ; $5445: $8a
    or h                                          ; $5446: $b4
    ld a, [bc]                                    ; $5447: $0a
    xor a                                         ; $5448: $af
    jp nz, $0bc3                                  ; $5449: $c2 $c3 $0b

    ld l, e                                       ; $544c: $6b
    db $fd                                        ; $544d: $fd
    ldh [rOCPD], a                                ; $544e: $e0 $6b
    dec a                                         ; $5450: $3d
    ret nz                                        ; $5451: $c0

    ret nc                                        ; $5452: $d0

    ld a, d                                       ; $5453: $7a
    add l                                         ; $5454: $85
    adc d                                         ; $5455: $8a
    or c                                          ; $5456: $b1
    adc h                                         ; $5457: $8c
    ld l, l                                       ; $5458: $6d
    inc h                                         ; $5459: $24
    ld b, d                                       ; $545a: $42
    ld c, e                                       ; $545b: $4b
    nop                                           ; $545c: $00
    db $e3                                        ; $545d: $e3
    ld l, e                                       ; $545e: $6b
    ld c, e                                       ; $545f: $4b
    ld l, $be                                     ; $5460: $2e $be
    ldh [$2c], a                                  ; $5462: $e0 $2c
    ld l, h                                       ; $5464: $6c
    inc l                                         ; $5465: $2c
    ld a, e                                       ; $5466: $7b
    add c                                         ; $5467: $81
    dec c                                         ; $5468: $0d
    ld hl, sp-$60                                 ; $5469: $f8 $a0
    halt                                          ; $546b: $76
    ld h, h                                       ; $546c: $64
    add h                                         ; $546d: $84
    add b                                         ; $546e: $80
    sbc $ce                                       ; $546f: $de $ce
    ld h, b                                       ; $5471: $60
    ld c, e                                       ; $5472: $4b
    ld a, a                                       ; $5473: $7f
    pop bc                                        ; $5474: $c1
    ld b, b                                       ; $5475: $40
    pop hl                                        ; $5476: $e1
    ld a, $a1                                     ; $5477: $3e $a1
    inc a                                         ; $5479: $3c
    add c                                         ; $547a: $81
    dec c                                         ; $547b: $0d
    ret nz                                        ; $547c: $c0

    ld a, b                                       ; $547d: $78
    and b                                         ; $547e: $a0
    jp hl                                         ; $547f: $e9


    ld a, $0c                                     ; $5480: $3e $0c
    ld b, h                                       ; $5482: $44
    ld c, h                                       ; $5483: $4c
    ld h, b                                       ; $5484: $60
    ret nz                                        ; $5485: $c0

    ldh [rP1], a                                  ; $5486: $e0 $00
    ld [c], a                                     ; $5488: $e2
    dec hl                                        ; $5489: $2b
    inc l                                         ; $548a: $2c
    nop                                           ; $548b: $00
    ld a, $a0                                     ; $548c: $3e $a0
    cp e                                          ; $548e: $bb
    ld h, c                                       ; $548f: $61
    ld sp, hl                                     ; $5490: $f9
    add b                                         ; $5491: $80
    ld l, [hl]                                    ; $5492: $6e
    ld [hl+], a                                   ; $5493: $22
    adc l                                         ; $5494: $8d
    dec hl                                        ; $5495: $2b
    ld c, c                                       ; $5496: $49
    adc b                                         ; $5497: $88
    add b                                         ; $5498: $80
    jp z, $e0bf                                   ; $5499: $ca $bf $e0

    jr @-$01                                      ; $549c: $18 $fd

Jump_063_549e:
    call nz, $80bf                                ; $549e: $c4 $bf $80
    add hl, sp                                    ; $54a1: $39
    ldh [$0d], a                                  ; $54a2: $e0 $0d
    ld l, e                                       ; $54a4: $6b
    db $10                                        ; $54a5: $10
    ld h, l                                       ; $54a6: $65
    ld c, b                                       ; $54a7: $48
    add [hl]                                      ; $54a8: $86
    add b                                         ; $54a9: $80
    ret z                                         ; $54aa: $c8

    ldh [$09], a                                  ; $54ab: $e0 $09
    jp nz, Jump_063_4850                          ; $54ad: $c2 $50 $48

    ld a, [hl]                                    ; $54b0: $7e
    ld [c], a                                     ; $54b1: $e2
    cp $c3                                        ; $54b2: $fe $c3
    call nz, Call_063_4b60                        ; $54b4: $c4 $60 $4b
    ld l, e                                       ; $54b7: $6b
    ld l, e                                       ; $54b8: $6b
    ld bc, $0f6b                                  ; $54b9: $01 $6b $0f
    ld h, c                                       ; $54bc: $61
    ldh a, [rTAC]                                 ; $54bd: $f0 $07
    ld [de], a                                    ; $54bf: $12
    ld d, a                                       ; $54c0: $57
    and b                                         ; $54c1: $a0
    jr z, jr_063_54c4                             ; $54c2: $28 $00

jr_063_54c4:
    and b                                         ; $54c4: $a0
    add e                                         ; $54c5: $83
    ret nz                                        ; $54c6: $c0

    ld bc, $0081                                  ; $54c7: $01 $81 $00
    pop bc                                        ; $54ca: $c1
    ldh [rNR14], a                                ; $54cb: $e0 $14
    ld b, e                                       ; $54cd: $43
    ld h, b                                       ; $54ce: $60
    ld [hl], c                                    ; $54cf: $71
    jr jr_063_5515                                ; $54d0: $18 $43

    sub [hl]                                      ; $54d2: $96
    inc bc                                        ; $54d3: $03
    inc c                                         ; $54d4: $0c
    ld b, l                                       ; $54d5: $45
    inc h                                         ; $54d6: $24
    add e                                         ; $54d7: $83
    add hl, bc                                    ; $54d8: $09
    ld h, d                                       ; $54d9: $62
    inc bc                                        ; $54da: $03
    ld l, h                                       ; $54db: $6c
    dec bc                                        ; $54dc: $0b
    ld b, h                                       ; $54dd: $44
    ld [c], a                                     ; $54de: $e2
    adc d                                         ; $54df: $8a
    ld l, d                                       ; $54e0: $6a
    ld e, h                                       ; $54e1: $5c
    ld a, [bc]                                    ; $54e2: $0a
    ld a, l                                       ; $54e3: $7d
    add hl, hl                                    ; $54e4: $29
    inc c                                         ; $54e5: $0c
    daa                                           ; $54e6: $27
    ld h, b                                       ; $54e7: $60
    jr nz, jr_063_54f4                            ; $54e8: $20 $0a

    jp nz, $6ce2                                  ; $54ea: $c2 $e2 $6c

    cp $a1                                        ; $54ed: $fe $a1
    ld l, e                                       ; $54ef: $6b
    cp $63                                        ; $54f0: $fe $63
    sbc $54                                       ; $54f2: $de $54

jr_063_54f4:
    jr z, jr_063_5504                             ; $54f4: $28 $0e

    ld [$0c44], sp                                ; $54f6: $08 $44 $0c
    jp nz, $b8e3                                  ; $54f9: $c2 $e3 $b8

    add b                                         ; $54fc: $80
    ld l, e                                       ; $54fd: $6b
    ld l, e                                       ; $54fe: $6b
    ret z                                         ; $54ff: $c8

    ld [hl+], a                                   ; $5500: $22
    nop                                           ; $5501: $00
    add l                                         ; $5502: $85
    cp d                                          ; $5503: $ba

jr_063_5504:
    sbc a                                         ; $5504: $9f
    nop                                           ; $5505: $00
    and d                                         ; $5506: $a2
    nop                                           ; $5507: $00
    rlca                                          ; $5508: $07
    ld h, c                                       ; $5509: $61
    ld b, b                                       ; $550a: $40
    and d                                         ; $550b: $a2
    ld a, a                                       ; $550c: $7f
    pop hl                                        ; $550d: $e1
    ld [bc], a                                    ; $550e: $02
    xor b                                         ; $550f: $a8
    dec c                                         ; $5510: $0d
    dec hl                                        ; $5511: $2b
    ld [$8e0a], a                                 ; $5512: $ea $0a $8e

jr_063_5515:
    ld b, $42                                     ; $5515: $06 $42
    pop hl                                        ; $5517: $e1
    inc b                                         ; $5518: $04
    ret                                           ; $5519: $c9


    and c                                         ; $551a: $a1
    ld b, b                                       ; $551b: $40

jr_063_551c:
    and b                                         ; $551c: $a0
    dec bc                                        ; $551d: $0b
    ld a, [$80e0]                                 ; $551e: $fa $e0 $80
    ret nz                                        ; $5521: $c0

jr_063_5522:
    add d                                         ; $5522: $82
    push bc                                       ; $5523: $c5
    add [hl]                                      ; $5524: $86
    rst $38                                       ; $5525: $ff
    inc h                                         ; $5526: $24
    ld [bc], a                                    ; $5527: $02
    ld c, $03                                     ; $5528: $0e $03
    pop hl                                        ; $552a: $e1
    ld c, h                                       ; $552b: $4c
    ld c, e                                       ; $552c: $4b
    dec hl                                        ; $552d: $2b
    add b                                         ; $552e: $80
    and d                                         ; $552f: $a2
    pop bc                                        ; $5530: $c1
    pop hl                                        ; $5531: $e1
    add b                                         ; $5532: $80
    sub $92                                       ; $5533: $d6 $92
    ld c, c                                       ; $5535: $49
    nop                                           ; $5536: $00
    add [hl]                                      ; $5537: $86
    add e                                         ; $5538: $83
    or [hl]                                       ; $5539: $b6
    and c                                         ; $553a: $a1
    inc bc                                        ; $553b: $03
    ld [c], a                                     ; $553c: $e2
    pop bc                                        ; $553d: $c1
    ldh [$80], a                                  ; $553e: $e0 $80
    and c                                         ; $5540: $a1
    ret nz                                        ; $5541: $c0

    pop bc                                        ; $5542: $c1
    ld a, [hl]                                    ; $5543: $7e
    ld b, d                                       ; $5544: $42
    inc b                                         ; $5545: $04
    add h                                         ; $5546: $84
    inc e                                         ; $5547: $1c
    nop                                           ; $5548: $00
    or c                                          ; $5549: $b1
    ldh a, [rNR52]                                ; $554a: $f0 $26
    ld l, l                                       ; $554c: $6d
    ld l, l                                       ; $554d: $6d
    ld l, l                                       ; $554e: $6d
    ld [c], a                                     ; $554f: $e2
    nop                                           ; $5550: $00
    res 4, b                                      ; $5551: $cb $a0
    pop bc                                        ; $5553: $c1
    db $e3                                        ; $5554: $e3
    ld b, b                                       ; $5555: $40
    ld b, b                                       ; $5556: $40
    add b                                         ; $5557: $80
    nop                                           ; $5558: $00
    jr nz, jr_063_551c                            ; $5559: $20 $c1

    ld [c], a                                     ; $555b: $e2
    add hl, bc                                    ; $555c: $09
    or h                                          ; $555d: $b4
    sub d                                         ; $555e: $92
    ld b, [hl]                                    ; $555f: $46
    push bc                                       ; $5560: $c5
    pop hl                                        ; $5561: $e1
    ld l, l                                       ; $5562: $6d
    and h                                         ; $5563: $a4
    ld bc, $4cb1                                  ; $5564: $01 $b1 $4c
    adc a                                         ; $5567: $8f
    ld h, b                                       ; $5568: $60
    ld d, d                                       ; $5569: $52
    ld hl, $e10a                                  ; $556a: $21 $0a $e1
    ld l, e                                       ; $556d: $6b
    ld l, e                                       ; $556e: $6b
    ld b, c                                       ; $556f: $41
    ldh [$0d], a                                  ; $5570: $e0 $0d
    and b                                         ; $5572: $a0
    ld b, c                                       ; $5573: $41
    pop bc                                        ; $5574: $c1
    add d                                         ; $5575: $82
    ld b, d                                       ; $5576: $42
    res 2, a                                      ; $5577: $cb $97
    add a                                         ; $5579: $87
    ldh [rNR34], a                                ; $557a: $e0 $1e
    jr nz, jr_063_55ea                            ; $557c: $20 $6c

    ld d, [hl]                                    ; $557e: $56
    add b                                         ; $557f: $80
    dec l                                         ; $5580: $2d
    rrca                                          ; $5581: $0f
    dec l                                         ; $5582: $2d
    dec l                                         ; $5583: $2d
    ld c, h                                       ; $5584: $4c
    ld l, h                                       ; $5585: $6c
    ret nc                                        ; $5586: $d0

    ld h, c                                       ; $5587: $61
    ld c, h                                       ; $5588: $4c
    and b                                         ; $5589: $a0
    rst $00                                       ; $558a: $c7
    pop bc                                        ; $558b: $c1
    ld b, e                                       ; $558c: $43
    and c                                         ; $558d: $a1
    jr nz, jr_063_5522                            ; $558e: $20 $92

    ld b, $d0                                     ; $5590: $06 $d0
    jr nc, jr_063_55a8                            ; $5592: $30 $14

    jp nz, $e1c2                                  ; $5594: $c2 $c2 $e1

    push bc                                       ; $5597: $c5
    ld [c], a                                     ; $5598: $e2
    dec l                                         ; $5599: $2d
    inc e                                         ; $559a: $1c
    add b                                         ; $559b: $80
    or a                                          ; $559c: $b7
    add c                                         ; $559d: $81
    ld bc, $c72d                                  ; $559e: $01 $2d $c7
    ldh [$bd], a                                  ; $55a1: $e0 $bd
    ld h, e                                       ; $55a3: $63
    ld sp, hl                                     ; $55a4: $f9
    ld h, c                                       ; $55a5: $61
    add l                                         ; $55a6: $85
    ld h, b                                       ; $55a7: $60

jr_063_55a8:
    ld a, [hl+]                                   ; $55a8: $2a
    dec bc                                        ; $55a9: $0b
    inc e                                         ; $55aa: $1c
    inc l                                         ; $55ab: $2c
    and e                                         ; $55ac: $a3
    nop                                           ; $55ad: $00
    nop                                           ; $55ae: $00
    add a                                         ; $55af: $87
    ldh [$2c], a                                  ; $55b0: $e0 $2c
    ld [bc], a                                    ; $55b2: $02
    inc [hl]                                      ; $55b3: $34
    jp $8240                                      ; $55b4: $c3 $40 $82


    ld b, e                                       ; $55b7: $43
    ld h, c                                       ; $55b8: $61
    cp h                                          ; $55b9: $bc
    ld b, d                                       ; $55ba: $42
    add l                                         ; $55bb: $85
    ld h, c                                       ; $55bc: $61
    add d                                         ; $55bd: $82
    or a                                          ; $55be: $b7
    rlca                                          ; $55bf: $07
    ld c, l                                       ; $55c0: $4d
    dec c                                         ; $55c1: $0d
    ld c, h                                       ; $55c2: $4c
    ld c, d                                       ; $55c3: $4a
    pop hl                                        ; $55c4: $e1
    sbc [hl]                                      ; $55c5: $9e
    call nz, Call_000_2682                        ; $55c6: $c4 $82 $26
    ret nz                                        ; $55c9: $c0

    ld [$20bd], a                                 ; $55ca: $ea $bd $20
    sbc h                                         ; $55cd: $9c
    inc b                                         ; $55ce: $04
    ld h, [hl]                                    ; $55cf: $66
    ld d, b                                       ; $55d0: $50
    ld l, l                                       ; $55d1: $6d
    dec c                                         ; $55d2: $0d
    ld l, l                                       ; $55d3: $6d
    ld l, h                                       ; $55d4: $6c
    and [hl]                                      ; $55d5: $a6
    inc c                                         ; $55d6: $0c
    ld a, $c2                                     ; $55d7: $3e $c2
    dec c                                         ; $55d9: $0d
    nop                                           ; $55da: $00
    add e                                         ; $55db: $83
    and c                                         ; $55dc: $a1
    ld a, l                                       ; $55dd: $7d
    jr nz, jr_063_5619                            ; $55de: $20 $39

    add c                                         ; $55e0: $81
    inc bc                                        ; $55e1: $03
    ld h, d                                       ; $55e2: $62
    adc h                                         ; $55e3: $8c
    ld b, $4a                                     ; $55e4: $06 $4a
    ld a, [hl+]                                   ; $55e6: $2a
    set 0, d                                      ; $55e7: $cb $c2
    and [hl]                                      ; $55e9: $a6

jr_063_55ea:
    ld b, $00                                     ; $55ea: $06 $00
    db $fc                                        ; $55ec: $fc
    and h                                         ; $55ed: $a4
    jp $c081                                      ; $55ee: $c3 $81 $c0


    ld [c], a                                     ; $55f1: $e2
    rst $38                                       ; $55f2: $ff
    call nz, Call_063_41c0                        ; $55f3: $c4 $c0 $41
    nop                                           ; $55f6: $00
    ld d, h                                       ; $55f7: $54
    inc d                                         ; $55f8: $14
    ld [c], a                                     ; $55f9: $e2
    and [hl]                                      ; $55fa: $a6
    ld h, h                                       ; $55fb: $64
    nop                                           ; $55fc: $00
    inc b                                         ; $55fd: $04
    add hl, hl                                    ; $55fe: $29
    ld c, $60                                     ; $55ff: $0e $60
    nop                                           ; $5601: $00
    and $3d                                       ; $5602: $e6 $3d
    and b                                         ; $5604: $a0
    inc a                                         ; $5605: $3c
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    or l                                          ; $5608: $b5
    ld b, [hl]                                    ; $5609: $46
    ld h, c                                       ; $560a: $61
    jr z, jr_063_5654                             ; $560b: $28 $47

    nop                                           ; $560d: $00
    jr nz, jr_063_5652                            ; $560e: $20 $42

    pop bc                                        ; $5610: $c1
    ld b, d                                       ; $5611: $42
    ld c, d                                       ; $5612: $4a
    ld h, c                                       ; $5613: $61
    ld b, d                                       ; $5614: $42
    ld b, b                                       ; $5615: $40
    ccf                                           ; $5616: $3f
    ld b, b                                       ; $5617: $40
    pop bc                                        ; $5618: $c1

jr_063_5619:
    ld [c], a                                     ; $5619: $e2
    nop                                           ; $561a: $00
    or [hl]                                       ; $561b: $b6
    ld [$0287], a                                 ; $561c: $ea $87 $02
    jr nc, @+$6a                                  ; $561f: $30 $68

    dec l                                         ; $5621: $2d
    set 4, d                                      ; $5622: $cb $e2
    cp l                                          ; $5624: $bd
    and d                                         ; $5625: $a2
    ld b, h                                       ; $5626: $44
    ld b, d                                       ; $5627: $42
    ld e, [hl]                                    ; $5628: $5e
    db $ec                                        ; $5629: $ec
    ld d, [hl]                                    ; $562a: $56
    dec bc                                        ; $562b: $0b
    xor d                                         ; $562c: $aa
    add hl, bc                                    ; $562d: $09
    nop                                           ; $562e: $00
    sbc [hl]                                      ; $562f: $9e
    dec h                                         ; $5630: $25
    adc e                                         ; $5631: $8b
    ld [c], a                                     ; $5632: $e2
    ld c, b                                       ; $5633: $48
    ld b, e                                       ; $5634: $43
    di                                            ; $5635: $f3
    jr nz, jr_063_563c                            ; $5636: $20 $04

    ld h, l                                       ; $5638: $65
    nop                                           ; $5639: $00
    or l                                          ; $563a: $b5
    ld [hl], c                                    ; $563b: $71

jr_063_563c:
    ld b, a                                       ; $563c: $47
    add d                                         ; $563d: $82
    ld h, l                                       ; $563e: $65
    ld bc, $8c6b                                  ; $563f: $01 $6b $8c
    ld [hl+], a                                   ; $5642: $22
    or a                                          ; $5643: $b7
    and b                                         ; $5644: $a0
    cp a                                          ; $5645: $bf
    pop hl                                        ; $5646: $e1
    add d                                         ; $5647: $82
    rst $38                                       ; $5648: $ff
    ld a, [hl-]                                   ; $5649: $3a
    ld h, l                                       ; $564a: $65
    and e                                         ; $564b: $a3
    ld [hl+], a                                   ; $564c: $22
    nop                                           ; $564d: $00
    ld b, e                                       ; $564e: $43
    nop                                           ; $564f: $00
    adc c                                         ; $5650: $89
    pop hl                                        ; $5651: $e1

jr_063_5652:
    jr c, jr_063_5696                             ; $5652: $38 $42

jr_063_5654:
    add [hl]                                      ; $5654: $86
    ld b, a                                       ; $5655: $47
    dec bc                                        ; $5656: $0b
    inc a                                         ; $5657: $3c
    nop                                           ; $5658: $00
    ld c, h                                       ; $5659: $4c
    adc d                                         ; $565a: $8a
    add d                                         ; $565b: $82
    db $f4                                        ; $565c: $f4
    ld h, c                                       ; $565d: $61
    inc de                                        ; $565e: $13
    ld [hl], $00                                  ; $565f: $36 $00
    ld d, h                                       ; $5661: $54
    inc b                                         ; $5662: $04
    ld l, [hl]                                    ; $5663: $6e
    sub h                                         ; $5664: $94
    inc c                                         ; $5665: $0c
    add d                                         ; $5666: $82
    ld [$ff67], sp                                ; $5667: $08 $67 $ff
    rst $38                                       ; $566a: $ff
    ld a, b                                       ; $566b: $78
    ld l, a                                       ; $566c: $6f
    add $ff                                       ; $566d: $c6 $ff
    xor d                                         ; $566f: $aa
    adc $00                                       ; $5670: $ce $00
    db $ec                                        ; $5672: $ec
    ld d, b                                       ; $5673: $50
    add [hl]                                      ; $5674: $86
    db $d3                                        ; $5675: $d3
    add b                                         ; $5676: $80
    db $d3                                        ; $5677: $d3
    ld e, [hl]                                    ; $5678: $5e
    sub c                                         ; $5679: $91
    ret                                           ; $567a: $c9


    call c, Call_000_2d71                         ; $567b: $dc $71 $2d
    inc d                                         ; $567e: $14
    adc b                                         ; $567f: $88
    inc c                                         ; $5680: $0c
    or e                                          ; $5681: $b3
    nop                                           ; $5682: $00
    add [hl]                                      ; $5683: $86
    push de                                       ; $5684: $d5
    add b                                         ; $5685: $80
    rlca                                          ; $5686: $07
    call c, $80fd                                 ; $5687: $dc $fd $80
    dec c                                         ; $568a: $0d
    db $ec                                        ; $568b: $ec
    dec c                                         ; $568c: $0d
    ld a, [hl]                                    ; $568d: $7e
    db $eb                                        ; $568e: $eb
    rst $38                                       ; $568f: $ff
    rst $38                                       ; $5690: $ff
    ret nz                                        ; $5691: $c0

    rst $38                                       ; $5692: $ff
    nop                                           ; $5693: $00
    ld b, e                                       ; $5694: $43
    rst $38                                       ; $5695: $ff

jr_063_5696:
    ld a, [$80ff]                                 ; $5696: $fa $ff $80
    rst $18                                       ; $5699: $df
    rst $38                                       ; $569a: $ff
    rst $38                                       ; $569b: $ff
    rst $38                                       ; $569c: $ff
    rst $38                                       ; $569d: $ff
    rst $38                                       ; $569e: $ff
    rst $38                                       ; $569f: $ff
    inc d                                         ; $56a0: $14
    db $ed                                        ; $56a1: $ed
    ld d, l                                       ; $56a2: $55
    rst $38                                       ; $56a3: $ff
    nop                                           ; $56a4: $00
    add b                                         ; $56a5: $80
    rst $10                                       ; $56a6: $d7
    nop                                           ; $56a7: $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    cp a                                          ; $56aa: $bf
    db $dd                                        ; $56ab: $dd
    sbc $a0                                       ; $56ac: $de $a0
    and b                                         ; $56ae: $a0
    and b                                         ; $56af: $a0
    call c, $f3fa                                 ; $56b0: $dc $fa $f3
    ret c                                         ; $56b3: $d8

    ld sp, hl                                     ; $56b4: $f9
    reti                                          ; $56b5: $d9


    db $fc                                        ; $56b6: $fc
    ei                                            ; $56b7: $fb
    rst $18                                       ; $56b8: $df
    pop hl                                        ; $56b9: $e1
    ld [c], a                                     ; $56ba: $e2
    db $e3                                        ; $56bb: $e3
    db $e4                                        ; $56bc: $e4
    rst $18                                       ; $56bd: $df
    ldh [$7d], a                                  ; $56be: $e0 $7d
    pop hl                                        ; $56c0: $e1
    ld a, [$a0f2]                                 ; $56c1: $fa $f2 $a0
    jp c, $d6db                                   ; $56c4: $da $db $d6

    rst $10                                       ; $56c7: $d7
    db $fc                                        ; $56c8: $fc
    rst $30                                       ; $56c9: $f7
    db $fc                                        ; $56ca: $fc
    adc b                                         ; $56cb: $88
    ldh [$fb], a                                  ; $56cc: $e0 $fb
    ldh [$e8], a                                  ; $56ce: $e0 $e8
    jp hl                                         ; $56d0: $e9


jr_063_56d1:
    ld [$e6e5], a                                 ; $56d1: $ea $e5 $e6
    rst $20                                       ; $56d4: $e7
    jr c, jr_063_56d1                             ; $56d5: $38 $fa

    ld a, [c]                                     ; $56d7: $f2
    sbc a                                         ; $56d8: $9f
    db $e3                                        ; $56d9: $e3
    ld a, d                                       ; $56da: $7a
    or $9f                                        ; $56db: $f6 $9f
    sbc l                                         ; $56dd: $9d
    sbc a                                         ; $56de: $9f
    ld b, l                                       ; $56df: $45
    ldh [rSCX], a                                 ; $56e0: $e0 $43
    push af                                       ; $56e2: $f5
    rst $30                                       ; $56e3: $f7
    sub $d7                                       ; $56e4: $d6 $d7
    and b                                         ; $56e6: $a0
    db $fc                                        ; $56e7: $fc
    ldh [$da], a                                  ; $56e8: $e0 $da
    db $db                                        ; $56ea: $db
    ret nc                                        ; $56eb: $d0

    pop de                                        ; $56ec: $d1
    inc e                                         ; $56ed: $1c

jr_063_56ee:
    db $fc                                        ; $56ee: $fc
    rst $28                                       ; $56ef: $ef
    add d                                         ; $56f0: $82
    db $e3                                        ; $56f1: $e3
    sbc [hl]                                      ; $56f2: $9e
    ld [de], a                                    ; $56f3: $12
    inc de                                        ; $56f4: $13
    rst $38                                       ; $56f5: $ff
    ldh [rSCX], a                                 ; $56f6: $e0 $43
    push af                                       ; $56f8: $f5
    inc b                                         ; $56f9: $04
    push hl                                       ; $56fa: $e5
    di                                            ; $56fb: $f3
    jp nc, $fcd3                                  ; $56fc: $d2 $d3 $fc

    rst $28                                       ; $56ff: $ef
    inc b                                         ; $5700: $04
    ld [c], a                                     ; $5701: $e2
    sbc a                                         ; $5702: $9f
    sbc h                                         ; $5703: $9c
    ld de, $f09c                                  ; $5704: $11 $9c $f0
    ld a, a                                       ; $5707: $7f
    ldh [rSCX], a                                 ; $5708: $e0 $43
    push af                                       ; $570a: $f5
    jr nz, jr_063_56ee                            ; $570b: $20 $e1

    add d                                         ; $570d: $82
    pop hl                                        ; $570e: $e1
    call nc, $a0d5                                ; $570f: $d4 $d5 $a0
    and b                                         ; $5712: $a0
    db $e3                                        ; $5713: $e3
    call nc, $f8d5                                ; $5714: $d4 $d5 $f8
    push hl                                       ; $5717: $e5
    db $fc                                        ; $5718: $fc
    db $e3                                        ; $5719: $e3
    inc b                                         ; $571a: $04
    ldh [$9f], a                                  ; $571b: $e0 $9f
    sbc l                                         ; $571d: $9d
    sbc h                                         ; $571e: $9c
    add a                                         ; $571f: $87
    ld [de], a                                    ; $5720: $12
    ld [de], a                                    ; $5721: $12
    sbc [hl]                                      ; $5722: $9e
    ld e, d                                       ; $5723: $5a
    ldh [$80], a                                  ; $5724: $e0 $80
    reti                                          ; $5726: $d9


    add d                                         ; $5727: $82
    db $e3                                        ; $5728: $e3
    ld hl, sp-$1b                                 ; $5729: $f8 $e5
    sbc a                                         ; $572b: $9f
    or c                                          ; $572c: $b1
    and d                                         ; $572d: $a2
    db $10                                        ; $572e: $10
    db $e3                                        ; $572f: $e3
    add h                                         ; $5730: $84
    pop hl                                        ; $5731: $e1
    jp nz, Jump_000_13e0                          ; $5732: $c2 $e0 $13

    ld [de], a                                    ; $5735: $12
    add c                                         ; $5736: $81
    ldh [$d8], a                                  ; $5737: $e0 $d8
    ld l, l                                       ; $5739: $6d
    reti                                          ; $573a: $d9


    add b                                         ; $573b: $80
    reti                                          ; $573c: $d9


    sub $d7                                       ; $573d: $d6 $d7
    add d                                         ; $573f: $82

jr_063_5740:
    ldh [$9f], a                                  ; $5740: $e0 $9f
    sbc l                                         ; $5742: $9d
    ret c                                         ; $5743: $d8

    ret nz                                        ; $5744: $c0

    adc [hl]                                      ; $5745: $8e
    ld hl, sp-$1f                                 ; $5746: $f8 $e1
    sbc h                                         ; $5748: $9c
    ld b, [hl]                                    ; $5749: $46
    sbc h                                         ; $574a: $9c
    push af                                       ; $574b: $f5
    pop hl                                        ; $574c: $e1
    rst $28                                       ; $574d: $ef
    pop hl                                        ; $574e: $e1
    jp nz, $9de2                                  ; $574f: $c2 $e2 $9d

    ld [hl], c                                    ; $5752: $71
    sbc a                                         ; $5753: $9f
    ld h, d                                       ; $5754: $62
    pop bc                                        ; $5755: $c1
    add b                                         ; $5756: $80
    reti                                          ; $5757: $d9


    sbc d                                         ; $5758: $9a
    jp nz, Jump_063_469c                          ; $5759: $c2 $9c $46

    xor [hl]                                      ; $575c: $ae
    jr jr_063_5740                                ; $575d: $18 $e1

    ld c, $c1                                     ; $575f: $0e $c1
    ldh [rDMA], a                                 ; $5761: $e0 $46
    ld b, [hl]                                    ; $5763: $46
    dec bc                                        ; $5764: $0b
    cp l                                          ; $5765: $bd

jr_063_5766:
    pop hl                                        ; $5766: $e1
    add l                                         ; $5767: $85
    ldh [$c2], a                                  ; $5768: $e0 $c2
    ld [c], a                                     ; $576a: $e2
    db $fc                                        ; $576b: $fc
    and h                                         ; $576c: $a4
    db $fc                                        ; $576d: $fc
    add [hl]                                      ; $576e: $86
    call nc, $c582                                ; $576f: $d4 $82 $c5
    sbc [hl]                                      ; $5772: $9e
    ld b, [hl]                                    ; $5773: $46
    ld b, [hl]                                    ; $5774: $46
    xor a                                         ; $5775: $af
    ld b, [hl]                                    ; $5776: $46
    sbc h                                         ; $5777: $9c
    rst $38                                       ; $5778: $ff
    and d                                         ; $5779: $a2
    sbc l                                         ; $577a: $9d
    sbc h                                         ; $577b: $9c
    ld b, [hl]                                    ; $577c: $46
    inc bc                                        ; $577d: $03
    inc b                                         ; $577e: $04
    rlca                                          ; $577f: $07
    dec c                                         ; $5780: $0d
    inc bc                                        ; $5781: $03
    rlca                                          ; $5782: $07
    rlca                                          ; $5783: $07
    adc h                                         ; $5784: $8c
    ret nz                                        ; $5785: $c0

    add l                                         ; $5786: $85
    ldh [rLYC], a                                 ; $5787: $e0 $45
    pop bc                                        ; $5789: $c1
    db $e4                                        ; $578a: $e4
    and e                                         ; $578b: $a3
    add [hl]                                      ; $578c: $86
    rst $10                                       ; $578d: $d7
    add d                                         ; $578e: $82
    jp $9ef3                                      ; $578f: $c3 $f3 $9e


    xor [hl]                                      ; $5792: $ae
    adc b                                         ; $5793: $88
    ldh [$86], a                                  ; $5794: $e0 $86
    ldh [$03], a                                  ; $5796: $e0 $03
    inc b                                         ; $5798: $04
    dec c                                         ; $5799: $0d
    inc b                                         ; $579a: $04
    rrca                                          ; $579b: $0f
    inc bc                                        ; $579c: $03
    inc bc                                        ; $579d: $03
    inc bc                                        ; $579e: $03
    dec bc                                        ; $579f: $0b
    inc a                                         ; $57a0: $3c
    ldh [$08], a                                  ; $57a1: $e0 $08
    call nz, $a362                                ; $57a3: $c4 $62 $a3
    add [hl]                                      ; $57a6: $86
    pop de                                        ; $57a7: $d1
    call z, $a58a                                 ; $57a8: $cc $8a $a5
    add d                                         ; $57ab: $82
    pop bc                                        ; $57ac: $c1
    and c                                         ; $57ad: $a1
    xor a                                         ; $57ae: $af
    add a                                         ; $57af: $87
    pop hl                                        ; $57b0: $e1
    rst $38                                       ; $57b1: $ff
    ldh [rDIV], a                                 ; $57b2: $e0 $04
    inc bc                                        ; $57b4: $03
    add c                                         ; $57b5: $81
    xor [hl]                                      ; $57b6: $ae
    rst $38                                       ; $57b7: $ff
    call nz, $a6e4                                ; $57b8: $c4 $e4 $a6
    ld h, d                                       ; $57bb: $62
    and c                                         ; $57bc: $a1
    adc h                                         ; $57bd: $8c
    rst $08                                       ; $57be: $cf
    add d                                         ; $57bf: $82
    jp hl                                         ; $57c0: $e9


    jp c, Jump_063_46a0                           ; $57c1: $da $a0 $46

    ld e, a                                       ; $57c4: $5f
    ld [bc], a                                    ; $57c5: $02
    rrca                                          ; $57c6: $0f
    inc b                                         ; $57c7: $04
    inc bc                                        ; $57c8: $03
    dec bc                                        ; $57c9: $0b
    ld a, e                                       ; $57ca: $7b
    pop hl                                        ; $57cb: $e1
    xor a                                         ; $57cc: $af
    db $10                                        ; $57cd: $10
    pop bc                                        ; $57ce: $c1
    ldh [$e0], a                                  ; $57cf: $e0 $e0
    jp hl                                         ; $57d1: $e9


    ldh [$81], a                                  ; $57d2: $e0 $81
    inc c                                         ; $57d4: $0c
    xor l                                         ; $57d5: $ad
    adc d                                         ; $57d6: $8a
    xor c                                         ; $57d7: $a9
    adc d                                         ; $57d8: $8a
    jp nz, Jump_000_0f05                          ; $57d9: $c2 $05 $0f

    ld [bc], a                                    ; $57dc: $02
    jr c, jr_063_5766                             ; $57dd: $38 $87

jr_063_57df:
    pop bc                                        ; $57df: $c1
    rst $38                                       ; $57e0: $ff
    ret nz                                        ; $57e1: $c0

    pop de                                        ; $57e2: $d1
    and b                                         ; $57e3: $a0
    ret nc                                        ; $57e4: $d0

    pop de                                        ; $57e5: $d1
    and b                                         ; $57e6: $a0
    db $fc                                        ; $57e7: $fc
    ldh [$fc], a                                  ; $57e8: $e0 $fc
    adc c                                         ; $57ea: $89
    jr jr_063_57f9                                ; $57eb: $18 $0c

    or e                                          ; $57ed: $b3
    adc d                                         ; $57ee: $8a
    and l                                         ; $57ef: $a5
    ld c, e                                       ; $57f0: $4b
    ret nz                                        ; $57f1: $c0

    ld b, $06                                     ; $57f2: $06 $06
    rst $00                                       ; $57f4: $c7
    pop hl                                        ; $57f5: $e1
    ld de, $7ea4                                  ; $57f6: $11 $a4 $7e

jr_063_57f9:
    xor c                                         ; $57f9: $a9
    ldh [$82], a                                  ; $57fa: $e0 $82
    jp $8f43                                      ; $57fc: $c3 $43 $8f


    adc d                                         ; $57ff: $8a
    add c                                         ; $5800: $81
    sub d                                         ; $5801: $92
    and h                                         ; $5802: $a4
    ld c, e                                       ; $5803: $4b
    pop bc                                        ; $5804: $c1
    ld [$4605], sp                                ; $5805: $08 $05 $46
    sbc c                                         ; $5808: $99
    and c                                         ; $5809: $a1
    dec e                                         ; $580a: $1d
    add b                                         ; $580b: $80
    add [hl]                                      ; $580c: $86
    db $e3                                        ; $580d: $e3
    call nc, $ecd5                                ; $580e: $d4 $d5 $ec
    and c                                         ; $5811: $a1
    ld a, [hl]                                    ; $5812: $7e
    add a                                         ; $5813: $87
    call c, $ddf9                                 ; $5814: $dc $f9 $dd
    ld c, c                                       ; $5817: $49
    sub b                                         ; $5818: $90
    jr z, jr_063_57df                             ; $5819: $28 $c4

    sbc a                                         ; $581b: $9f
    sbc l                                         ; $581c: $9d
    and d                                         ; $581d: $a2
    sbc h                                         ; $581e: $9c
    xor [hl]                                      ; $581f: $ae
    ccf                                           ; $5820: $3f
    ld b, [hl]                                    ; $5821: $46
    inc c                                         ; $5822: $0c
    ld [$4646], sp                                ; $5823: $08 $46 $46
    sbc [hl]                                      ; $5826: $9e
    halt                                          ; $5827: $76
    and h                                         ; $5828: $a4
    add [hl]                                      ; $5829: $86
    jp hl                                         ; $582a: $e9


    ld b, b                                       ; $582b: $40
    db $e4                                        ; $582c: $e4
    ld h, c                                       ; $582d: $61
    rlca                                          ; $582e: $07
    add c                                         ; $582f: $81
    ld b, e                                       ; $5830: $43
    adc a                                         ; $5831: $8f
    adc d                                         ; $5832: $8a
    add e                                         ; $5833: $83
    ldh [$80], a                                  ; $5834: $e0 $80
    ld b, [hl]                                    ; $5836: $46
    ret nz                                        ; $5837: $c0

    xor a                                         ; $5838: $af
    add b                                         ; $5839: $80
    ld [c], a                                     ; $583a: $e2
    nop                                           ; $583b: $00
    ret c                                         ; $583c: $d8

    add c                                         ; $583d: $81
    db $fc                                        ; $583e: $fc
    add e                                         ; $583f: $83
    inc b                                         ; $5840: $04
    add a                                         ; $5841: $87
    nop                                           ; $5842: $00
    add c                                         ; $5843: $81
    rlca                                          ; $5844: $07
    add c                                         ; $5845: $81
    inc c                                         ; $5846: $0c
    xor a                                         ; $5847: $af
    adc d                                         ; $5848: $8a
    add e                                         ; $5849: $83
    ld d, c                                       ; $584a: $51
    and b                                         ; $584b: $a0
    ld b, $c3                                     ; $584c: $06 $c3
    ldh [rDMA], a                                 ; $584e: $e0 $46
    xor [hl]                                      ; $5850: $ae
    nop                                           ; $5851: $00
    pop hl                                        ; $5852: $e1
    rst $38                                       ; $5853: $ff
    jp $e808                                      ; $5854: $c3 $08 $e8


    ld d, b                                       ; $5857: $50
    ld l, b                                       ; $5858: $68
    add b                                         ; $5859: $80
    rst $08                                       ; $585a: $cf
    ld [$838a], sp                                ; $585b: $08 $8a $83
    adc b                                         ; $585e: $88
    and b                                         ; $585f: $a0
    ld c, h                                       ; $5860: $4c
    jp nz, $8046                                  ; $5861: $c2 $46 $80

    pop bc                                        ; $5864: $c1
    ld a, $a2                                     ; $5865: $3e $a2
    ld a, d                                       ; $5867: $7a
    add c                                         ; $5868: $81
    ld l, [hl]                                    ; $5869: $6e
    ld h, e                                       ; $586a: $63
    ld l, b                                       ; $586b: $68
    ld d, b                                       ; $586c: $50
    ld l, c                                       ; $586d: $69
    adc h                                         ; $586e: $8c
    ld l, a                                       ; $586f: $6f
    inc c                                         ; $5870: $0c
    add e                                         ; $5871: $83
    and c                                         ; $5872: $a1
    ret nz                                        ; $5873: $c0

    db $e3                                        ; $5874: $e3
    ld b, l                                       ; $5875: $45
    ld b, l                                       ; $5876: $45
    nop                                           ; $5877: $00
    ret nz                                        ; $5878: $c0

    ld bc, $3e05                                  ; $5879: $01 $05 $3e
    and c                                         ; $587c: $a1
    add d                                         ; $587d: $82
    call nz, $40ec                                ; $587e: $c4 $ec $40
    ld d, b                                       ; $5881: $50
    ld l, d                                       ; $5882: $6a
    add [hl]                                      ; $5883: $86
    ld [hl], c                                    ; $5884: $71
    inc c                                         ; $5885: $0c
    add c                                         ; $5886: $81
    add b                                         ; $5887: $80
    pop hl                                        ; $5888: $e1
    ld a, a                                       ; $5889: $7f
    xor [hl]                                      ; $588a: $ae
    ld b, [hl]                                    ; $588b: $46
    ld b, l                                       ; $588c: $45
    ld a, [hl+]                                   ; $588d: $2a
    inc l                                         ; $588e: $2c
    ld sp, $3ebd                                  ; $588f: $31 $bd $3e
    pop hl                                        ; $5892: $e1
    ldh [$3c], a                                  ; $5893: $e0 $3c
    ld [c], a                                     ; $5895: $e2
    ld a, [hl]                                    ; $5896: $7e
    push hl                                       ; $5897: $e5
    ld c, d                                       ; $5898: $4a
    ld l, c                                       ; $5899: $69
    add [hl]                                      ; $589a: $86
    ld [hl], e                                    ; $589b: $73
    jp nz, Jump_000_2dc5                          ; $589c: $c2 $c5 $2d

    jr nz, jr_063_58c1                            ; $589f: $20 $20

    rra                                           ; $58a1: $1f
    jr nz, jr_063_58d6                            ; $58a2: $20 $32

    dec b                                         ; $58a4: $05
    ld c, $0c                                     ; $58a5: $0e $0c
    or $c1                                        ; $58a7: $f6 $c1
    sub d                                         ; $58a9: $92
    ld h, c                                       ; $58aa: $61
    add d                                         ; $58ab: $82
    ld h, l                                       ; $58ac: $65
    call z, $478d                                 ; $58ad: $cc $8d $47
    add [hl]                                      ; $58b0: $86
    ld [hl], c                                    ; $58b1: $71
    ret nc                                        ; $58b2: $d0

    pop de                                        ; $58b3: $d1
    jp nz, $c0c4                                  ; $58b4: $c2 $c4 $c0

    pop hl                                        ; $58b7: $e1
    inc hl                                        ; $58b8: $23
    cp l                                          ; $58b9: $bd
    ret nz                                        ; $58ba: $c0

    dec a                                         ; $58bb: $3d
    ret nz                                        ; $58bc: $c0

jr_063_58bd:
    ld [hl], l                                    ; $58bd: $75
    jp nz, $e27e                                  ; $58be: $c2 $7e $e2

jr_063_58c1:
    add [hl]                                      ; $58c1: $86
    ld b, e                                       ; $58c2: $43
    adc l                                         ; $58c3: $8d
    ld b, a                                       ; $58c4: $47
    nop                                           ; $58c5: $00
    or c                                          ; $58c6: $b1
    jp nc, $79d3                                  ; $58c7: $d2 $d3 $79

    and c                                         ; $58ca: $a1
    adc $e1                                       ; $58cb: $ce $e1
    ld bc, $2be1                                  ; $58cd: $01 $e1 $2b
    ld [hl+], a                                   ; $58d0: $22
    dec [hl]                                      ; $58d1: $35
    add hl, sp                                    ; $58d2: $39
    add b                                         ; $58d3: $80
    ldh [$60], a                                  ; $58d4: $e0 $60

jr_063_58d6:
    ld [hl], l                                    ; $58d6: $75
    jp $a1f8                                      ; $58d7: $c3 $f8 $a1


    ld [$8042], sp                                ; $58da: $08 $42 $80
    jp c, Jump_063_618a                           ; $58dd: $da $8a $61

    sbc a                                         ; $58e0: $9f
    sbc h                                         ; $58e1: $9c
    add c                                         ; $58e2: $81
    ld [c], a                                     ; $58e3: $e2
    ccf                                           ; $58e4: $3f
    ld b, [hl]                                    ; $58e5: $46
    ld b, l                                       ; $58e6: $45
    ld [hl], $35                                  ; $58e7: $36 $35
    dec [hl]                                      ; $58e9: $35
    add hl, sp                                    ; $58ea: $39
    nop                                           ; $58eb: $00
    db $e3                                        ; $58ec: $e3
    ld sp, hl                                     ; $58ed: $f9
    ld h, b                                       ; $58ee: $60
    pop bc                                        ; $58ef: $c1
    and c                                         ; $58f0: $a1
    inc b                                         ; $58f1: $04
    and d                                         ; $58f2: $a2
    ld b, e                                       ; $58f3: $43
    add sp, -$80                                  ; $58f4: $e8 $80
    jp nc, Jump_063_44a2                          ; $58f6: $d2 $a2 $44

    inc bc                                        ; $58f9: $03
    jp nz, Jump_000_3539                          ; $58fa: $c2 $39 $35

    rra                                           ; $58fd: $1f
    dec [hl]                                      ; $58fe: $35
    inc a                                         ; $58ff: $3c
    dec b                                         ; $5900: $05
    rrca                                          ; $5901: $0f
    dec b                                         ; $5902: $05
    rst $30                                       ; $5903: $f7
    and d                                         ; $5904: $a2
    ret nz                                        ; $5905: $c0

    add c                                         ; $5906: $81
    ldh a, [rSCY]                                 ; $5907: $f0 $42
    ldh a, [$80]                                  ; $5909: $f0 $80
    jp nc, $87f4                                  ; $590b: $d2 $f4 $87

    add d                                         ; $590e: $82
    and d                                         ; $590f: $a2
    ld d, b                                       ; $5910: $50
    ld h, d                                       ; $5911: $62
    xor a                                         ; $5912: $af
    ld b, [hl]                                    ; $5913: $46
    ld a, $35                                     ; $5914: $3e $35
    inc bc                                        ; $5916: $03
    dec [hl]                                      ; $5917: $35
    ld [hl], $81                                  ; $5918: $36 $81
    jp $e101                                      ; $591a: $c3 $01 $e1


    nop                                           ; $591d: $00
    and e                                         ; $591e: $a3
    ld h, d                                       ; $591f: $62
    ld h, e                                       ; $5920: $63
    add b                                         ; $5921: $80
    res 3, d                                      ; $5922: $cb $9a
    ld b, e                                       ; $5924: $43
    jr c, jr_063_5964                             ; $5925: $38 $3d

    add l                                         ; $5927: $85
    adc d                                         ; $5928: $8a
    ld b, d                                       ; $5929: $42
    rrca                                          ; $592a: $0f
    ld h, d                                       ; $592b: $62
    ld a, $35                                     ; $592c: $3e $35
    ld [hl], $01                                  ; $592e: $36 $01
    ret nz                                        ; $5930: $c0

    ld b, c                                       ; $5931: $41
    jp nz, $9200                                  ; $5932: $c2 $00 $92

    jr nz, jr_063_58bd                            ; $5935: $20 $86

    add a                                         ; $5937: $87
    add b                                         ; $5938: $80
    call Call_000_2392                            ; $5939: $cd $92 $23
    nop                                           ; $593c: $00
    and l                                         ; $593d: $a5
    db $10                                        ; $593e: $10
    ld b, c                                       ; $593f: $41
    cp [hl]                                       ; $5940: $be
    and b                                         ; $5941: $a0
    ld b, [hl]                                    ; $5942: $46
    ld h, b                                       ; $5943: $60
    ld bc, $c139                                  ; $5944: $01 $39 $c1
    ldh [$81], a                                  ; $5947: $e0 $81
    and b                                         ; $5949: $a0
    ld a, $a2                                     ; $594a: $3e $a2
    nop                                           ; $594c: $00
    xor c                                         ; $594d: $a9
    dec c                                         ; $594e: $0d
    daa                                           ; $594f: $27
    adc [hl]                                      ; $5950: $8e
    ld l, e                                       ; $5951: $6b
    nop                                           ; $5952: $00
    and a                                         ; $5953: $a7
    jr jr_063_59b6                                ; $5954: $18 $60

    jr nz, @-$3b                                  ; $5956: $20 $c3

    add b                                         ; $5958: $80
    ld a, [bc]                                    ; $5959: $0a
    ld h, b                                       ; $595a: $60
    ld [bc], a                                    ; $595b: $02
    ld b, l                                       ; $595c: $45
    ld b, l                                       ; $595d: $45
    jp $b400                                      ; $595e: $c3 $00 $b4


    jr jr_063_5983                                ; $5961: $18 $20

    ld h, c                                       ; $5963: $61

jr_063_5964:
    rst $18                                       ; $5964: $df
    sbc d                                         ; $5965: $9a
    rlca                                          ; $5966: $07
    inc c                                         ; $5967: $0c
    dec h                                         ; $5968: $25
    db $10                                        ; $5969: $10
    ld b, e                                       ; $596a: $43
    call z, Call_000_3642                         ; $596b: $cc $42 $36
    add hl, sp                                    ; $596e: $39
    ld b, a                                       ; $596f: $47
    ld b, b                                       ; $5970: $40
    ret nz                                        ; $5971: $c0

    cp $61                                        ; $5972: $fe $61
    ld [$5087], sp                                ; $5974: $08 $87 $50
    add hl, bc                                    ; $5977: $09
    sbc [hl]                                      ; $5978: $9e
    ld de, $6486                                  ; $5979: $11 $86 $64
    rlca                                          ; $597c: $07
    ld h, c                                       ; $597d: $61
    scf                                           ; $597e: $37
    jr c, jr_063_5988                             ; $597f: $38 $07

    dec [hl]                                      ; $5981: $35
    ld a, [hl-]                                   ; $5982: $3a

jr_063_5983:
    ld b, l                                       ; $5983: $45
    ld a, a                                       ; $5984: $7f
    add h                                         ; $5985: $84
    ld [hl], d                                    ; $5986: $72
    dec b                                         ; $5987: $05

jr_063_5988:
    ld d, b                                       ; $5988: $50
    ld a, [bc]                                    ; $5989: $0a
    inc h                                         ; $598a: $24
    rrca                                          ; $598b: $0f
    inc c                                         ; $598c: $0c
    inc hl                                        ; $598d: $23
    add hl, sp                                    ; $598e: $39
    sbc [hl]                                      ; $598f: $9e
    add a                                         ; $5990: $87
    add d                                         ; $5991: $82
    ld b, b                                       ; $5992: $40
    ret nz                                        ; $5993: $c0

    dec [hl]                                      ; $5994: $35
    inc a                                         ; $5995: $3c
    ld b, h                                       ; $5996: $44
    ld [bc], a                                    ; $5997: $02
    and e                                         ; $5998: $a3
    add [hl]                                      ; $5999: $86
    dec b                                         ; $599a: $05
    nop                                           ; $599b: $00
    inc de                                        ; $599c: $13
    dec hl                                        ; $599d: $2b
    add d                                         ; $599e: $82
    di                                            ; $599f: $f3

jr_063_59a0:
    rlca                                          ; $59a0: $07
    ld h, h                                       ; $59a1: $64
    ret nz                                        ; $59a2: $c0

    ld [c], a                                     ; $59a3: $e2
    add b                                         ; $59a4: $80
    pop hl                                        ; $59a5: $e1
    ld a, h                                       ; $59a6: $7c
    ld h, c                                       ; $59a7: $61
    add [hl]                                      ; $59a8: $86
    inc bc                                        ; $59a9: $03
    inc de                                        ; $59aa: $13
    dec l                                         ; $59ab: $2d
    db $10                                        ; $59ac: $10
    add d                                         ; $59ad: $82
    db $ed                                        ; $59ae: $ed
    sbc d                                         ; $59af: $9a
    inc bc                                        ; $59b0: $03
    ld b, d                                       ; $59b1: $42
    ld [c], a                                     ; $59b2: $e2
    ret                                           ; $59b3: $c9


    and b                                         ; $59b4: $a0
    ld b, b                                       ; $59b5: $40

jr_063_59b6:
    add b                                         ; $59b6: $80
    ldh [rP1], a                                  ; $59b7: $e0 $00
    pop hl                                        ; $59b9: $e1
    inc b                                         ; $59ba: $04
    and a                                         ; $59bb: $a7
    and b                                         ; $59bc: $a0
    ret nc                                        ; $59bd: $d0

    dec l                                         ; $59be: $2d
    nop                                           ; $59bf: $00

jr_063_59c0:
    db $ed                                        ; $59c0: $ed
    ret nc                                        ; $59c1: $d0

    ld bc, $6007                                  ; $59c2: $01 $07 $60
    ld a, [bc]                                    ; $59c5: $0a
    ld b, b                                       ; $59c6: $40
    ld [bc], a                                    ; $59c7: $02
    rrca                                          ; $59c8: $0f
    jr nz, @+$44                                  ; $59c9: $20 $42

    or b                                          ; $59cb: $b0
    ld b, c                                       ; $59cc: $41
    rst $20                                       ; $59cd: $e7
    adc [hl]                                      ; $59ce: $8e
    inc hl                                        ; $59cf: $23
    ld d, [hl]                                    ; $59d0: $56
    ld c, $30                                     ; $59d1: $0e $30
    ld l, c                                       ; $59d3: $69
    jp c, $a4db                                   ; $59d4: $da $db $a4

    ld bc, $7303                                  ; $59d7: $01 $03 $73

jr_063_59da:
    add hl, bc                                    ; $59da: $09
    inc bc                                        ; $59db: $03
    inc d                                         ; $59dc: $14
    jr nz, jr_063_59a0                            ; $59dd: $20 $c1

    ld [c], a                                     ; $59df: $e2
    ld b, [hl]                                    ; $59e0: $46
    ld b, h                                       ; $59e1: $44
    inc a                                         ; $59e2: $3c
    pop bc                                        ; $59e3: $c1
    ret nz                                        ; $59e4: $c0

    add b                                         ; $59e5: $80
    adc b                                         ; $59e6: $88
    jr nz, jr_063_5a37                            ; $59e7: $20 $4e

    ld hl, $21ec                                  ; $59e9: $21 $ec $21
    ld d, [hl]                                    ; $59ec: $56
    rrca                                          ; $59ed: $0f
    jr c, @+$48                                   ; $59ee: $38 $46

    adc b                                         ; $59f0: $88
    pop hl                                        ; $59f1: $e1
    and h                                         ; $59f2: $a4
    ld [bc], a                                    ; $59f3: $02
    rlca                                          ; $59f4: $07
    inc de                                        ; $59f5: $13
    rlca                                          ; $59f6: $07
    rrca                                          ; $59f7: $0f
    ld d, d                                       ; $59f8: $52
    inc hl                                        ; $59f9: $23
    add c                                         ; $59fa: $81
    ld h, c                                       ; $59fb: $61
    ld a, [hl-]                                   ; $59fc: $3a
    ld b, c                                       ; $59fd: $41
    ldh [$c7], a                                  ; $59fe: $e0 $c7
    add c                                         ; $5a00: $81
    ld a, [hl]                                    ; $5a01: $7e
    ld b, e                                       ; $5a02: $43
    ldh [rRP], a                                  ; $5a03: $e0 $56
    db $10                                        ; $5a05: $10
    cp d                                          ; $5a06: $ba
    inc hl                                        ; $5a07: $23
    ld c, d                                       ; $5a08: $4a
    ldh [rBCPD], a                                ; $5a09: $e0 $69
    ld bc, $03a4                                  ; $5a0b: $01 $a4 $03
    sbc h                                         ; $5a0e: $9c
    inc bc                                        ; $5a0f: $03
    inc bc                                        ; $5a10: $03
    inc c                                         ; $5a11: $0c
    ld b, $62                                     ; $5a12: $06 $62
    ld a, [bc]                                    ; $5a14: $0a
    add c                                         ; $5a15: $81
    add hl, sp                                    ; $5a16: $39
    ld [hl], $c2                                  ; $5a17: $36 $c2
    pop bc                                        ; $5a19: $c1
    ccf                                           ; $5a1a: $3f
    ld b, b                                       ; $5a1b: $40
    inc b                                         ; $5a1c: $04
    and l                                         ; $5a1d: $a5
    ret nc                                        ; $5a1e: $d0

    dec l                                         ; $5a1f: $2d
    add h                                         ; $5a20: $84
    nop                                           ; $5a21: $00
    pop bc                                        ; $5a22: $c1
    ld c, d                                       ; $5a23: $4a
    pop hl                                        ; $5a24: $e1
    ld [de], a                                    ; $5a25: $12
    ld l, c                                       ; $5a26: $69
    ld [bc], a                                    ; $5a27: $02
    ld h, a                                       ; $5a28: $67
    ld [bc], a                                    ; $5a29: $02
    cp $c1                                        ; $5a2a: $fe $c1

jr_063_5a2c:
    add c                                         ; $5a2c: $81
    add c                                         ; $5a2d: $81
    ld b, [hl]                                    ; $5a2e: $46
    cpl                                           ; $5a2f: $2f
    xor a                                         ; $5a30: $af
    ld b, e                                       ; $5a31: $43
    ld b, c                                       ; $5a32: $41
    ld b, e                                       ; $5a33: $43
    db $fd                                        ; $5a34: $fd
    ldh [rLYC], a                                 ; $5a35: $e0 $45

jr_063_5a37:
    add [hl]                                      ; $5a37: $86
    add l                                         ; $5a38: $85
    add [hl]                                      ; $5a39: $86
    ld l, e                                       ; $5a3a: $6b
    inc b                                         ; $5a3b: $04
    scf                                           ; $5a3c: $37
    db $e3                                        ; $5a3d: $e3
    jr nc, jr_063_59c0                            ; $5a3e: $30 $80

    sbc a                                         ; $5a40: $9f
    ld c, d                                       ; $5a41: $4a
    pop hl                                        ; $5a42: $e1
    dec hl                                        ; $5a43: $2b
    nop                                           ; $5a44: $00
    inc l                                         ; $5a45: $2c
    ld [bc], a                                    ; $5a46: $02
    sub [hl]                                      ; $5a47: $96
    inc hl                                        ; $5a48: $23
    add c                                         ; $5a49: $81
    add d                                         ; $5a4a: $82
    ld e, a                                       ; $5a4b: $5f
    ld b, l                                       ; $5a4c: $45
    ld [hl], $3b                                  ; $5a4d: $36 $3b
    dec [hl]                                      ; $5a4f: $35
    dec sp                                        ; $5a50: $3b
    db $fd                                        ; $5a51: $fd
    ldh [$36], a                                  ; $5a52: $e0 $36
    rst $38                                       ; $5a54: $ff
    pop bc                                        ; $5a55: $c1
    jr jr_063_59da                                ; $5a56: $18 $82

    ld b, l                                       ; $5a58: $45
    ld d, b                                       ; $5a59: $50
    dec c                                         ; $5a5a: $0d
    ld [bc], a                                    ; $5a5b: $02
    ld b, b                                       ; $5a5c: $40
    sbc [hl]                                      ; $5a5d: $9e
    ld [de], a                                    ; $5a5e: $12
    add l                                         ; $5a5f: $85
    pop hl                                        ; $5a60: $e1
    sbc [hl]                                      ; $5a61: $9e
    and [hl]                                      ; $5a62: $a6
    add d                                         ; $5a63: $82
    add d                                         ; $5a64: $82
    sbc $80                                       ; $5a65: $de $80
    ld b, c                                       ; $5a67: $41
    ld b, h                                       ; $5a68: $44
    inc a                                         ; $5a69: $3c
    and h                                         ; $5a6a: $a4
    ld h, h                                       ; $5a6b: $64
    rst $38                                       ; $5a6c: $ff
    ldh [$a5], a                                  ; $5a6d: $e0 $a5
    inc a                                         ; $5a6f: $3c
    jr c, jr_063_5a2c                             ; $5a70: $38 $ba

    jr nz, jr_063_5af2                            ; $5a72: $20 $7e

    add sp, -$30                                  ; $5a74: $e8 $d0
    dec l                                         ; $5a76: $2d
    sbc a                                         ; $5a77: $9f
    sbc h                                         ; $5a78: $9c
    ld de, $4021                                  ; $5a79: $11 $21 $40
    inc l                                         ; $5a7c: $2c
    rlca                                          ; $5a7d: $07
    db $fc                                        ; $5a7e: $fc
    inc b                                         ; $5a7f: $04
    ld hl, $2282                                  ; $5a80: $21 $82 $22
    ld b, d                                       ; $5a83: $42
    dec [hl]                                      ; $5a84: $35
    ld l, c                                       ; $5a85: $69
    and e                                         ; $5a86: $a3
    dec [hl]                                      ; $5a87: $35
    dec [hl]                                      ; $5a88: $35
    rrca                                          ; $5a89: $0f
    and e                                         ; $5a8a: $a3
    ld l, d                                       ; $5a8b: $6a
    dec [hl]                                      ; $5a8c: $35
    ld b, d                                       ; $5a8d: $42
    ld b, h                                       ; $5a8e: $44
    ld h, b                                       ; $5a8f: $60
    ld a, [hl]                                    ; $5a90: $7e
    pop hl                                        ; $5a91: $e1
    call c, $8d84                                 ; $5a92: $dc $84 $8d
    ld c, d                                       ; $5a95: $4a
    sub b                                         ; $5a96: $90
    set 0, d                                      ; $5a97: $cb $c2
    rra                                           ; $5a99: $1f
    jr nz, @-$02                                  ; $5a9a: $20 $fc

    xor d                                         ; $5a9c: $aa
    jp nz, $af61                                  ; $5a9d: $c2 $61 $af

    ret nz                                        ; $5aa0: $c0

    pop hl                                        ; $5aa1: $e1
    ld b, c                                       ; $5aa2: $41
    and b                                         ; $5aa3: $a0
    dec [hl]                                      ; $5aa4: $35
    nop                                           ; $5aa5: $00
    ret nz                                        ; $5aa6: $c0

    pop hl                                        ; $5aa7: $e1
    jr c, jr_063_5aca                             ; $5aa8: $38 $20

    cp e                                          ; $5aaa: $bb
    nop                                           ; $5aab: $00
    nop                                           ; $5aac: $00
    or c                                          ; $5aad: $b1
    ld h, [hl]                                    ; $5aae: $66
    inc bc                                        ; $5aaf: $03
    nop                                           ; $5ab0: $00
    xor e                                         ; $5ab1: $ab
    inc b                                         ; $5ab2: $04
    inc hl                                        ; $5ab3: $23
    inc bc                                        ; $5ab4: $03
    ret nz                                        ; $5ab5: $c0

    dec bc                                        ; $5ab6: $0b
    ld l, e                                       ; $5ab7: $6b
    ld [hl], c                                    ; $5ab8: $71
    rst $38                                       ; $5ab9: $ff
    ldh [$6d], a                                  ; $5aba: $e0 $6d
    rst $38                                       ; $5abc: $ff
    add h                                         ; $5abd: $84
    nop                                           ; $5abe: $00
    or l                                          ; $5abf: $b5
    nop                                           ; $5ac0: $00
    adc c                                         ; $5ac1: $89
    nop                                           ; $5ac2: $00
    db $e4                                        ; $5ac3: $e4
    nop                                           ; $5ac4: $00
    pop bc                                        ; $5ac5: $c1
    ld b, e                                       ; $5ac6: $43
    ret nz                                        ; $5ac7: $c0

    add $7f                                       ; $5ac8: $c6 $7f

jr_063_5aca:
    add e                                         ; $5aca: $83
    nop                                           ; $5acb: $00
    or l                                          ; $5acc: $b5
    ld [$aae5], sp                                ; $5acd: $08 $e5 $aa
    inc bc                                        ; $5ad0: $03
    add d                                         ; $5ad1: $82
    ld h, e                                       ; $5ad2: $63
    pop bc                                        ; $5ad3: $c1
    ld b, d                                       ; $5ad4: $42
    dec bc                                        ; $5ad5: $0b
    ld b, [hl]                                    ; $5ad6: $46
    xor [hl]                                      ; $5ad7: $ae
    ld b, b                                       ; $5ad8: $40
    jp nz, Jump_063_40ae                          ; $5ad9: $c2 $ae $40

    add d                                         ; $5adc: $82
    add d                                         ; $5add: $82
    dec b                                         ; $5ade: $05
    nop                                           ; $5adf: $00
    cp b                                          ; $5ae0: $b8
    ld h, a                                       ; $5ae1: $67
    add d                                         ; $5ae2: $82
    ld [$c47e], sp                                ; $5ae3: $08 $7e $c4
    pop bc                                        ; $5ae6: $c1
    ld [bc], a                                    ; $5ae7: $02
    inc a                                         ; $5ae8: $3c
    ld b, e                                       ; $5ae9: $43
    xor a                                         ; $5aea: $af
    ld b, b                                       ; $5aeb: $40
    and d                                         ; $5aec: $a2
    add d                                         ; $5aed: $82
    call nz, $b400                                ; $5aee: $c4 $00 $b4
    xor d                                         ; $5af1: $aa

jr_063_5af2:
    ld b, $10                                     ; $5af2: $06 $10
    ld a, [hl]                                    ; $5af4: $7e
    db $e4                                        ; $5af5: $e4
    pop bc                                        ; $5af6: $c1
    ld bc, $414e                                  ; $5af7: $01 $4e $41
    or a                                          ; $5afa: $b7
    and d                                         ; $5afb: $a2
    xor a                                         ; $5afc: $af
    add d                                         ; $5afd: $82
    rst $20                                       ; $5afe: $e7
    nop                                           ; $5aff: $00
    or l                                          ; $5b00: $b5
    xor d                                         ; $5b01: $aa
    ld b, $00                                     ; $5b02: $06 $00
    nop                                           ; $5b04: $00
    ld c, b                                       ; $5b05: $48
    ld a, [bc]                                    ; $5b06: $0a
    ld h, e                                       ; $5b07: $63
    jr c, jr_063_5b4a                             ; $5b08: $38 $40

    add d                                         ; $5b0a: $82
    and a                                         ; $5b0b: $a7
    nop                                           ; $5b0c: $00
    or h                                          ; $5b0d: $b4
    xor d                                         ; $5b0e: $aa
    ld l, e                                       ; $5b0f: $6b
    nop                                           ; $5b10: $00
    ld b, [hl]                                    ; $5b11: $46
    ld c, e                                       ; $5b12: $4b
    ld h, e                                       ; $5b13: $63
    nop                                           ; $5b14: $00
    ld h, d                                       ; $5b15: $62
    ret nz                                        ; $5b16: $c0

    add [hl]                                      ; $5b17: $86
    ld b, l                                       ; $5b18: $45
    ld b, e                                       ; $5b19: $43
    adc [hl]                                      ; $5b1a: $8e
    nop                                           ; $5b1b: $00
    and h                                         ; $5b1c: $a4
    xor d                                         ; $5b1d: $aa
    ld l, e                                       ; $5b1e: $6b
    nop                                           ; $5b1f: $00
    ld b, l                                       ; $5b20: $45
    ld l, [hl]                                    ; $5b21: $6e
    and e                                         ; $5b22: $a3
    add [hl]                                      ; $5b23: $86
    add h                                         ; $5b24: $84
    nop                                           ; $5b25: $00
    add [hl]                                      ; $5b26: $86
    ld [hl], b                                    ; $5b27: $70
    nop                                           ; $5b28: $00
    and l                                         ; $5b29: $a5
    xor d                                         ; $5b2a: $aa

Jump_063_5b2b:
    ld l, l                                       ; $5b2b: $6d
    nop                                           ; $5b2c: $00
    ld b, l                                       ; $5b2d: $45
    db $fc                                        ; $5b2e: $fc
    rst $20                                       ; $5b2f: $e7
    add [hl]                                      ; $5b30: $86
    ld [hl], e                                    ; $5b31: $73
    nop                                           ; $5b32: $00
    ld b, l                                       ; $5b33: $45
    xor d                                         ; $5b34: $aa
    ld l, h                                       ; $5b35: $6c
    nop                                           ; $5b36: $00
    db $fc                                        ; $5b37: $fc
    add [hl]                                      ; $5b38: $86
    db $fc                                        ; $5b39: $fc
    jp hl                                         ; $5b3a: $e9


    add [hl]                                      ; $5b3b: $86
    ld [hl], c                                    ; $5b3c: $71
    nop                                           ; $5b3d: $00
    ld b, l                                       ; $5b3e: $45
    xor d                                         ; $5b3f: $aa
    jp z, Jump_000_0033                           ; $5b40: $ca $33 $00

    db $fc                                        ; $5b43: $fc
    add e                                         ; $5b44: $83
    db $fc                                        ; $5b45: $fc
    db $eb                                        ; $5b46: $eb
    nop                                           ; $5b47: $00
    add [hl]                                      ; $5b48: $86
    pop de                                        ; $5b49: $d1

jr_063_5b4a:
    nop                                           ; $5b4a: $00
    ld b, [hl]                                    ; $5b4b: $46
    add b                                         ; $5b4c: $80
    inc c                                         ; $5b4d: $0c
    ld l, [hl]                                    ; $5b4e: $6e
    ld c, a                                       ; $5b4f: $4f
    add [hl]                                      ; $5b50: $86
    db $d3                                        ; $5b51: $d3
    nop                                           ; $5b52: $00
    ld b, l                                       ; $5b53: $45
    db $ed                                        ; $5b54: $ed
    ld c, l                                       ; $5b55: $4d
    ldh a, [$2d]                                  ; $5b56: $f0 $2d
    nop                                           ; $5b58: $00
    add [hl]                                      ; $5b59: $86
    push de                                       ; $5b5a: $d5
    add b                                         ; $5b5b: $80
    add hl, bc                                    ; $5b5c: $09
    xor d                                         ; $5b5d: $aa
    ret                                           ; $5b5e: $c9


    ld l, [hl]                                    ; $5b5f: $6e
    cpl                                           ; $5b60: $2f
    add [hl]                                      ; $5b61: $86
    db $d3                                        ; $5b62: $d3
    add b                                         ; $5b63: $80
    add hl, bc                                    ; $5b64: $09
    ld a, [hl+]                                   ; $5b65: $2a
    xor c                                         ; $5b66: $a9
    ld [hl], d                                    ; $5b67: $72
    ld b, a                                       ; $5b68: $47
    nop                                           ; $5b69: $00
    ld l, d                                       ; $5b6a: $6a
    ld b, l                                       ; $5b6b: $45
    ld b, e                                       ; $5b6c: $43
    or $f4                                        ; $5b6d: $f6 $f4
    add b                                         ; $5b6f: $80
    ld h, a                                       ; $5b70: $67
    or $fa                                        ; $5b71: $f6 $fa
    rst $38                                       ; $5b73: $ff
    scf                                           ; $5b74: $37
    ld [hl+], a                                   ; $5b75: $22
    ld h, a                                       ; $5b76: $67
    or $fa                                        ; $5b77: $f6 $fa
    rst $38                                       ; $5b79: $ff
    nop                                           ; $5b7a: $00
    db $f4                                        ; $5b7b: $f4
    ld [hl+], a                                   ; $5b7c: $22
    ld h, a                                       ; $5b7d: $67
    or $fa                                        ; $5b7e: $f6 $fa
    rst $38                                       ; $5b80: $ff
    add b                                         ; $5b81: $80
    ld h, h                                       ; $5b82: $64
    ld e, e                                       ; $5b83: $5b
    rst $38                                       ; $5b84: $ff
    ld a, [$00f9]                                 ; $5b85: $fa $f9 $00
    nop                                           ; $5b88: $00
    nop                                           ; $5b89: $00
    pop bc                                        ; $5b8a: $c1
    nop                                           ; $5b8b: $00
    rst $38                                       ; $5b8c: $ff
    rst $38                                       ; $5b8d: $ff
    rst $38                                       ; $5b8e: $ff
    rst $38                                       ; $5b8f: $ff
    rst $38                                       ; $5b90: $ff
    rst $38                                       ; $5b91: $ff
    rst $38                                       ; $5b92: $ff
    rst $38                                       ; $5b93: $ff
    rst $38                                       ; $5b94: $ff
    rst $38                                       ; $5b95: $ff
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    ld bc, $fe80                                  ; $5b98: $01 $80 $fe
    ldh [rIE], a                                  ; $5b9b: $e0 $ff
    rst $38                                       ; $5b9d: $ff
    rst $38                                       ; $5b9e: $ff
    rst $38                                       ; $5b9f: $ff
    rst $38                                       ; $5ba0: $ff
    add sp, $00                                   ; $5ba1: $e8 $00
    nop                                           ; $5ba3: $00
    nop                                           ; $5ba4: $00
    ld [bc], a                                    ; $5ba5: $02
    nop                                           ; $5ba6: $00
    inc hl                                        ; $5ba7: $23
    add hl, bc                                    ; $5ba8: $09
    ld [bc], a                                    ; $5ba9: $02
    ld bc, $0b21                                  ; $5baa: $01 $21 $0b
    ld [bc], a                                    ; $5bad: $02
    ld [bc], a                                    ; $5bae: $02
    dec hl                                        ; $5baf: $2b
    inc c                                         ; $5bb0: $0c
    ld [bc], a                                    ; $5bb1: $02
    inc bc                                        ; $5bb2: $03
    ld e, $11                                     ; $5bb3: $1e $11
    ld [bc], a                                    ; $5bb5: $02
    inc b                                         ; $5bb6: $04
    dec de                                        ; $5bb7: $1b
    ld [de], a                                    ; $5bb8: $12
    ld [bc], a                                    ; $5bb9: $02
    dec b                                         ; $5bba: $05
    rra                                           ; $5bbb: $1f
    inc de                                        ; $5bbc: $13
    ld [bc], a                                    ; $5bbd: $02
    ld b, $25                                     ; $5bbe: $06 $25
    inc d                                         ; $5bc0: $14
    ld [bc], a                                    ; $5bc1: $02
    rlca                                          ; $5bc2: $07
    inc e                                         ; $5bc3: $1c
    ld d, $02                                     ; $5bc4: $16 $02
    ld [$1719], sp                                ; $5bc6: $08 $19 $17
    ld [bc], a                                    ; $5bc9: $02
    add hl, bc                                    ; $5bca: $09
    add hl, hl                                    ; $5bcb: $29
    rla                                           ; $5bcc: $17
    ld [bc], a                                    ; $5bcd: $02
    ld a, [bc]                                    ; $5bce: $0a
    ld h, $18                                     ; $5bcf: $26 $18
    ld [bc], a                                    ; $5bd1: $02
    dec bc                                        ; $5bd2: $0b
    jr jr_063_5bee                                ; $5bd3: $18 $19

    ld [bc], a                                    ; $5bd5: $02
    inc c                                         ; $5bd6: $0c
    ld a, [hl+]                                   ; $5bd7: $2a
    add hl, de                                    ; $5bd8: $19
    ld [bc], a                                    ; $5bd9: $02
    dec c                                         ; $5bda: $0d
    inc e                                         ; $5bdb: $1c
    dec de                                        ; $5bdc: $1b
    ld [bc], a                                    ; $5bdd: $02
    ld c, $28                                     ; $5bde: $0e $28
    dec de                                        ; $5be0: $1b
    ld [bc], a                                    ; $5be1: $02
    rrca                                          ; $5be2: $0f
    dec de                                        ; $5be3: $1b
    ld e, $02                                     ; $5be4: $1e $02
    db $10                                        ; $5be6: $10
    inc h                                         ; $5be7: $24
    ld e, $02                                     ; $5be8: $1e $02
    ld de, $2623                                  ; $5bea: $11 $23 $26
    ld [bc], a                                    ; $5bed: $02

jr_063_5bee:
    ld [de], a                                    ; $5bee: $12
    add hl, de                                    ; $5bef: $19
    daa                                           ; $5bf0: $27
    ld [bc], a                                    ; $5bf1: $02
    inc de                                        ; $5bf2: $13
    inc e                                         ; $5bf3: $1c
    jr z, jr_063_5bf8                             ; $5bf4: $28 $02

    inc d                                         ; $5bf6: $14
    inc h                                         ; $5bf7: $24

jr_063_5bf8:
    ld a, [hl+]                                   ; $5bf8: $2a
    ld [bc], a                                    ; $5bf9: $02
    dec d                                         ; $5bfa: $15
    add hl, de                                    ; $5bfb: $19
    inc l                                         ; $5bfc: $2c
    ld [bc], a                                    ; $5bfd: $02
    ld d, $26                                     ; $5bfe: $16 $26
    inc l                                         ; $5c00: $2c
    ld [bc], a                                    ; $5c01: $02
    rla                                           ; $5c02: $17
    rla                                           ; $5c03: $17
    ld l, $02                                     ; $5c04: $2e $02
    jr jr_063_5c24                                ; $5c06: $18 $1c

    jr nc, jr_063_5c0c                            ; $5c08: $30 $02

    add hl, de                                    ; $5c0a: $19
    ld [hl+], a                                   ; $5c0b: $22

jr_063_5c0c:
    jr nc, jr_063_5c10                            ; $5c0c: $30 $02

    ld a, [de]                                    ; $5c0e: $1a
    inc hl                                        ; $5c0f: $23

jr_063_5c10:
    ld sp, $1b02                                  ; $5c10: $31 $02 $1b
    ld a, [de]                                    ; $5c13: $1a
    ld [hl-], a                                   ; $5c14: $32
    rst $38                                       ; $5c15: $ff
    rst $38                                       ; $5c16: $ff
    rst $38                                       ; $5c17: $ff
    jr nz, @+$5e                                  ; $5c18: $20 $5c

    db $dd                                        ; $5c1a: $dd
    ld h, b                                       ; $5c1b: $60
    and h                                         ; $5c1c: $a4
    ld h, [hl]                                    ; $5c1d: $66
    cp a                                          ; $5c1e: $bf
    ld h, [hl]                                    ; $5c1f: $66
    cp a                                          ; $5c20: $bf
    ld c, $0e                                     ; $5c21: $0e $0e
    dec c                                         ; $5c23: $0d

jr_063_5c24:
    dec c                                         ; $5c24: $0d
    dec c                                         ; $5c25: $0d
    ld c, $fa                                     ; $5c26: $0e $fa
    ld [c], a                                     ; $5c28: $e2
    ld c, l                                       ; $5c29: $4d
    ret nz                                        ; $5c2a: $c0

    db $f4                                        ; $5c2b: $f4
    pop hl                                        ; $5c2c: $e1
    db $fc                                        ; $5c2d: $fc
    rst $38                                       ; $5c2e: $ff
    ret nc                                        ; $5c2f: $d0

    and $ca                                       ; $5c30: $e6 $ca
    ld [c], a                                     ; $5c32: $e2
    push bc                                       ; $5c33: $c5
    ldh [$fd], a                                  ; $5c34: $e0 $fd
    db $e3                                        ; $5c36: $e3
    ld c, l                                       ; $5c37: $4d
    ld c, l                                       ; $5c38: $4d
    nop                                           ; $5c39: $00
    ret nz                                        ; $5c3a: $c0

    ldh [$f2], a                                  ; $5c3b: $e0 $f2
    pop hl                                        ; $5c3d: $e1
    ret nz                                        ; $5c3e: $c0

    pop af                                        ; $5c3f: $f1
    cp $e9                                        ; $5c40: $fe $e9
    pop af                                        ; $5c42: $f1
    db $ec                                        ; $5c43: $ec
    ret nz                                        ; $5c44: $c0

    add sp, -$42                                  ; $5c45: $e8 $be
    pop hl                                        ; $5c47: $e1
    ld [hl], d                                    ; $5c48: $72
    ldh [$fa], a                                  ; $5c49: $e0 $fa
    ld [hl], l                                    ; $5c4b: $75
    pop hl                                        ; $5c4c: $e1
    dec c                                         ; $5c4d: $0d
    pop af                                        ; $5c4e: $f1
    ld [c], a                                     ; $5c4f: $e2
    ld c, l                                       ; $5c50: $4d
    ld c, l                                       ; $5c51: $4d
    dec l                                         ; $5c52: $2d
    ld c, l                                       ; $5c53: $4d
    dec l                                         ; $5c54: $2d
    add b                                         ; $5c55: $80
    xor $e1                                       ; $5c56: $ee $e1
    ld l, d                                       ; $5c58: $6a
    db $e3                                        ; $5c59: $e3
    ldh [$e4], a                                  ; $5c5a: $e0 $e4
    or d                                          ; $5c5c: $b2
    db $eb                                        ; $5c5d: $eb
    ld [hl], e                                    ; $5c5e: $73
    add sp, -$7e                                  ; $5c5f: $e8 $82
    db $e3                                        ; $5c61: $e3
    push bc                                       ; $5c62: $c5
    ldh [$6d], a                                  ; $5c63: $e0 $6d
    add c                                         ; $5c65: $81
    dec hl                                        ; $5c66: $2b
    rst $38                                       ; $5c67: $ff
    rst $20                                       ; $5c68: $e7
    cp d                                          ; $5c69: $ba
    ld [c], a                                     ; $5c6a: $e2
    ld d, [hl]                                    ; $5c6b: $56
    jp hl                                         ; $5c6c: $e9


    ld l, h                                       ; $5c6d: $6c
    and $b5                                       ; $5c6e: $e6 $b5
    db $ed                                        ; $5c70: $ed
    ld a, [$0dc3]                                 ; $5c71: $fa $c3 $0d
    add b                                         ; $5c74: $80
    jp $bce9                                      ; $5c75: $c3 $e9 $bc


    and $7a                                       ; $5c78: $e6 $7a
    db $e4                                        ; $5c7a: $e4
    inc e                                         ; $5c7b: $1c
    pop hl                                        ; $5c7c: $e1
    jr @-$19                                      ; $5c7d: $18 $e5

    add hl, sp                                    ; $5c7f: $39
    di                                            ; $5c80: $f3
    pop bc                                        ; $5c81: $c1
    rst $20                                       ; $5c82: $e7
    dec bc                                        ; $5c83: $0b
    rla                                           ; $5c84: $17
    dec bc                                        ; $5c85: $0b
    dec hl                                        ; $5c86: $2b
    dec bc                                        ; $5c87: $0b
    ld a, d                                       ; $5c88: $7a
    rst $20                                       ; $5c89: $e7
    dec l                                         ; $5c8a: $2d
    add hl, bc                                    ; $5c8b: $09
    db $f4                                        ; $5c8c: $f4
    add b                                         ; $5c8d: $80
    rst $00                                       ; $5c8e: $c7
    nop                                           ; $5c8f: $00
    db $e4                                        ; $5c90: $e4
    ret nz                                        ; $5c91: $c0

    pop bc                                        ; $5c92: $c1
    rst $20                                       ; $5c93: $e7
    cp $e0                                        ; $5c94: $fe $e0
    cp d                                          ; $5c96: $ba
    ldh [$35], a                                  ; $5c97: $e0 $35
    db $e4                                        ; $5c99: $e4
    ret nz                                        ; $5c9a: $c0

    pop hl                                        ; $5c9b: $e1
    ld a, [hl]                                    ; $5c9c: $7e
    rst $20                                       ; $5c9d: $e7
    ld c, l                                       ; $5c9e: $4d
    ld c, l                                       ; $5c9f: $4d
    cp b                                          ; $5ca0: $b8
    add b                                         ; $5ca1: $80
    push de                                       ; $5ca2: $d5
    ret nz                                        ; $5ca3: $c0

    ldh [$bd], a                                  ; $5ca4: $e0 $bd
    ld [c], a                                     ; $5ca6: $e2
    ld l, e                                       ; $5ca7: $6b
    ld c, e                                       ; $5ca8: $4b
    ld c, e                                       ; $5ca9: $4b
    pop bc                                        ; $5caa: $c1
    pop hl                                        ; $5cab: $e1
    ld a, [bc]                                    ; $5cac: $0a
    rrca                                          ; $5cad: $0f
    ld l, d                                       ; $5cae: $6a
    ld a, [bc]                                    ; $5caf: $0a
    dec bc                                        ; $5cb0: $0b
    ld l, e                                       ; $5cb1: $6b
    xor h                                         ; $5cb2: $ac
    pop hl                                        ; $5cb3: $e1
    add b                                         ; $5cb4: $80
    db $eb                                        ; $5cb5: $eb
    ld d, e                                       ; $5cb6: $53
    add $ed                                       ; $5cb7: $c6 $ed
    db $ec                                        ; $5cb9: $ec
    ld a, [c]                                     ; $5cba: $f2
    ei                                            ; $5cbb: $fb
    and b                                         ; $5cbc: $a0
    dec l                                         ; $5cbd: $2d
    ret nz                                        ; $5cbe: $c0

    db $e3                                        ; $5cbf: $e3
    cp a                                          ; $5cc0: $bf
    pop hl                                        ; $5cc1: $e1
    ld c, e                                       ; $5cc2: $4b
    ld l, e                                       ; $5cc3: $6b
    dec hl                                        ; $5cc4: $2b
    ld c, d                                       ; $5cc5: $4a
    rrca                                          ; $5cc6: $0f
    ld a, [bc]                                    ; $5cc7: $0a
    ld a, [bc]                                    ; $5cc8: $0a
    ld l, d                                       ; $5cc9: $6a
    dec bc                                        ; $5cca: $0b
    ret nz                                        ; $5ccb: $c0

    db $e3                                        ; $5ccc: $e3
    add sp, -$57                                  ; $5ccd: $e8 $a9
    ret nz                                        ; $5ccf: $c0

    rst $20                                       ; $5cd0: $e7
    add b                                         ; $5cd1: $80
    adc $e4                                       ; $5cd2: $ce $e4
    cp a                                          ; $5cd4: $bf
    ldh [$82], a                                  ; $5cd5: $e0 $82
    call nz, $be0d                                ; $5cd7: $c4 $0d $be
    ldh [$7e], a                                  ; $5cda: $e0 $7e
    ldh [$2a], a                                  ; $5cdc: $e0 $2a
    ld c, e                                       ; $5cde: $4b
    dec hl                                        ; $5cdf: $2b
    inc bc                                        ; $5ce0: $03
    dec bc                                        ; $5ce1: $0b
    ld l, e                                       ; $5ce2: $6b
    ret nz                                        ; $5ce3: $c0

    db $e4                                        ; $5ce4: $e4
    ld c, d                                       ; $5ce5: $4a
    ret nc                                        ; $5ce6: $d0

    db $fd                                        ; $5ce7: $fd
    xor d                                         ; $5ce8: $aa
    ld a, [hl]                                    ; $5ce9: $7e
    db $e4                                        ; $5cea: $e4
    ret nz                                        ; $5ceb: $c0

    db $e4                                        ; $5cec: $e4
    ld a, l                                       ; $5ced: $7d
    pop hl                                        ; $5cee: $e1
    add b                                         ; $5cef: $80
    add hl, sp                                    ; $5cf0: $39
    pop hl                                        ; $5cf1: $e1
    ld a, l                                       ; $5cf2: $7d
    ldh [$39], a                                  ; $5cf3: $e0 $39
    pop bc                                        ; $5cf5: $c1
    or $a0                                        ; $5cf6: $f6 $a0
    ld hl, sp-$59                                 ; $5cf8: $f8 $a7
    ld a, [hl]                                    ; $5cfa: $7e
    ret c                                         ; $5cfb: $d8

    db $fd                                        ; $5cfc: $fd
    jp $ef0c                                      ; $5cfd: $c3 $0c $ef


    inc c                                         ; $5d00: $0c
    inc l                                         ; $5d01: $2c
    inc l                                         ; $5d02: $2c
    ld l, e                                       ; $5d03: $6b
    cp [hl]                                       ; $5d04: $be
    ld [c], a                                     ; $5d05: $e2
    dec bc                                        ; $5d06: $0b
    ld c, d                                       ; $5d07: $4a
    ld a, [bc]                                    ; $5d08: $0a
    inc bc                                        ; $5d09: $03
    ld c, d                                       ; $5d0a: $4a
    dec bc                                        ; $5d0b: $0b
    ldh a, [$c0]                                  ; $5d0c: $f0 $c0
    ld a, h                                       ; $5d0e: $7c
    jp nz, $d20c                                  ; $5d0f: $c2 $0c $d2

    nop                                           ; $5d12: $00
    and [hl]                                      ; $5d13: $a6
    ld a, [hl]                                    ; $5d14: $7e
    and d                                         ; $5d15: $a2
    db $fd                                        ; $5d16: $fd
    jp nz, $2ccb                                  ; $5d17: $c2 $cb $2c

    inc c                                         ; $5d1a: $0c
    cp a                                          ; $5d1b: $bf
    ldh [$0c], a                                  ; $5d1c: $e0 $0c
    ret nz                                        ; $5d1e: $c0

    push hl                                       ; $5d1f: $e5
    cp e                                          ; $5d20: $bb
    ret nz                                        ; $5d21: $c0

    ld c, e                                       ; $5d22: $4b
    dec bc                                        ; $5d23: $0b
    ret nz                                        ; $5d24: $c0

    cp a                                          ; $5d25: $bf
    pop hl                                        ; $5d26: $e1
    ld h, c                                       ; $5d27: $61
    and d                                         ; $5d28: $a2
    inc de                                        ; $5d29: $13
    and c                                         ; $5d2a: $a1
    nop                                           ; $5d2b: $00
    or a                                          ; $5d2c: $b7
    push af                                       ; $5d2d: $f5
    add b                                         ; $5d2e: $80
    db $fd                                        ; $5d2f: $fd
    ret nz                                        ; $5d30: $c0

    inc l                                         ; $5d31: $2c
    ld l, h                                       ; $5d32: $6c
    db $fc                                        ; $5d33: $fc
    cp a                                          ; $5d34: $bf
    ldh [$c0], a                                  ; $5d35: $e0 $c0
    pop hl                                        ; $5d37: $e1
    dec bc                                        ; $5d38: $0b
    dec bc                                        ; $5d39: $0b
    ld c, e                                       ; $5d3a: $4b
    dec bc                                        ; $5d3b: $0b
    ld a, [bc]                                    ; $5d3c: $0a
    ld a, [hl+]                                   ; $5d3d: $2a
    add hl, de                                    ; $5d3e: $19
    ld a, [hl+]                                   ; $5d3f: $2a
    ld a, [$7ee0]                                 ; $5d40: $fa $e0 $7e
    ldh [rKEY1], a                                ; $5d43: $e0 $4d
    dec l                                         ; $5d45: $2d
    ld hl, sp-$5b                                 ; $5d46: $f8 $a5
    add b                                         ; $5d48: $80
    pop de                                        ; $5d49: $d1
    and d                                         ; $5d4a: $a2
    and l                                         ; $5d4b: $a5
    cp d                                          ; $5d4c: $ba
    ld a, e                                       ; $5d4d: $7b
    pop bc                                        ; $5d4e: $c1
    inc c                                         ; $5d4f: $0c
    ret nz                                        ; $5d50: $c0

    pop hl                                        ; $5d51: $e1
    inc l                                         ; $5d52: $2c
    inc l                                         ; $5d53: $2c
    ld c, e                                       ; $5d54: $4b
    adc b                                         ; $5d55: $88
    ldh [$0b], a                                  ; $5d56: $e0 $0b
    ld a, $3f                                     ; $5d58: $3e $3f
    ldh [$2a], a                                  ; $5d5a: $e0 $2a
    dec bc                                        ; $5d5c: $0b
    ld l, e                                       ; $5d5d: $6b
    dec bc                                        ; $5d5e: $0b
    dec c                                         ; $5d5f: $0d
    or l                                          ; $5d60: $b5
    ldh [$3b], a                                  ; $5d61: $e0 $3b
    ldh [rSVBK], a                                ; $5d63: $e0 $70
    db $f4                                        ; $5d65: $f4
    add h                                         ; $5d66: $84
    nop                                           ; $5d67: $00
    or h                                          ; $5d68: $b4
    ld a, h                                       ; $5d69: $7c
    add h                                         ; $5d6a: $84
    ret nz                                        ; $5d6b: $c0

    ld [c], a                                     ; $5d6c: $e2
    inc l                                         ; $5d6d: $2c
    inc l                                         ; $5d6e: $2c
    inc l                                         ; $5d6f: $2c
    cp l                                          ; $5d70: $bd
    pop hl                                        ; $5d71: $e1
    inc c                                         ; $5d72: $0c
    ld [hl], a                                    ; $5d73: $77
    and b                                         ; $5d74: $a0
    ret nz                                        ; $5d75: $c0

    ldh [rWX], a                                  ; $5d76: $e0 $4b
    ld c, e                                       ; $5d78: $4b
    ret nz                                        ; $5d79: $c0

    ldh [$bc], a                                  ; $5d7a: $e0 $bc
    ldh [$f4], a                                  ; $5d7c: $e0 $f4
    add b                                         ; $5d7e: $80
    ld c, a                                       ; $5d7f: $4f
    add h                                         ; $5d80: $84
    inc c                                         ; $5d81: $0c
    nop                                           ; $5d82: $00
    or b                                          ; $5d83: $b0
    ld a, [hl]                                    ; $5d84: $7e
    and $0b                                       ; $5d85: $e6 $0b
    ld l, h                                       ; $5d87: $6c
    ld b, b                                       ; $5d88: $40
    ld [c], a                                     ; $5d89: $e2
    ld a, h                                       ; $5d8a: $7c
    db $e3                                        ; $5d8b: $e3
    halt                                          ; $5d8c: $76
    and h                                         ; $5d8d: $a4
    xor [hl]                                      ; $5d8e: $ae
    and c                                         ; $5d8f: $a1
    ld a, b                                       ; $5d90: $78
    ret nz                                        ; $5d91: $c0

    ldh [$f8], a                                  ; $5d92: $e0 $f8
    sbc c                                         ; $5d94: $99
    db $fc                                        ; $5d95: $fc
    ld h, l                                       ; $5d96: $65
    ld c, l                                       ; $5d97: $4d
    dec l                                         ; $5d98: $2d
    ld l, h                                       ; $5d99: $6c
    ld c, h                                       ; $5d9a: $4c
    rst $38                                       ; $5d9b: $ff
    pop bc                                        ; $5d9c: $c1
    ld h, [hl]                                    ; $5d9d: $66
    dec sp                                        ; $5d9e: $3b
    ld [c], a                                     ; $5d9f: $e2
    ld l, e                                       ; $5da0: $6b
    ld l, e                                       ; $5da1: $6b
    inc [hl]                                      ; $5da2: $34
    and d                                         ; $5da3: $a2
    ret nz                                        ; $5da4: $c0

    ld [c], a                                     ; $5da5: $e2
    dec bc                                        ; $5da6: $0b
    dec bc                                        ; $5da7: $0b
    or $86                                        ; $5da8: $f6 $86
    ld h, h                                       ; $5daa: $64
    ret nc                                        ; $5dab: $d0

    ld h, a                                       ; $5dac: $67
    or b                                          ; $5dad: $b0
    ld l, c                                       ; $5dae: $69
    dec c                                         ; $5daf: $0d
    ld d, h                                       ; $5db0: $54
    add d                                         ; $5db1: $82
    ld a, c                                       ; $5db2: $79
    and b                                         ; $5db3: $a0
    ld c, h                                       ; $5db4: $4c
    ld c, h                                       ; $5db5: $4c
    ld a, l                                       ; $5db6: $7d
    ld [c], a                                     ; $5db7: $e2
    rrca                                          ; $5db8: $0f
    inc l                                         ; $5db9: $2c
    inc l                                         ; $5dba: $2c
    ld c, h                                       ; $5dbb: $4c
    ld c, e                                       ; $5dbc: $4b
    ret nz                                        ; $5dbd: $c0

    db $e4                                        ; $5dbe: $e4
    ld a, [$76e4]                                 ; $5dbf: $fa $e4 $76
    and l                                         ; $5dc2: $a5
    add b                                         ; $5dc3: $80
    ld l, h                                       ; $5dc4: $6c
    ld [hl], b                                    ; $5dc5: $70
    ld [hl], a                                    ; $5dc6: $77
    ld h, e                                       ; $5dc7: $63
    ld [hl+], a                                   ; $5dc8: $22
    db $e4                                        ; $5dc9: $e4
    cp a                                          ; $5dca: $bf
    db $e3                                        ; $5dcb: $e3
    cp [hl]                                       ; $5dcc: $be
    ld [c], a                                     ; $5dcd: $e2
    ld l, h                                       ; $5dce: $6c
    ld c, h                                       ; $5dcf: $4c
    dec c                                         ; $5dd0: $0d
    or h                                          ; $5dd1: $b4
    add e                                         ; $5dd2: $83
    ret nz                                        ; $5dd3: $c0

    ret nz                                        ; $5dd4: $c0

    rst $20                                       ; $5dd5: $e7
    ld a, d                                       ; $5dd6: $7a
    ld a, b                                       ; $5dd7: $78
    sub $60                                       ; $5dd8: $d6 $60
    ld a, d                                       ; $5dda: $7a
    ld h, h                                       ; $5ddb: $64
    rst $30                                       ; $5ddc: $f7
    add b                                         ; $5ddd: $80
    cp [hl]                                       ; $5dde: $be
    pop hl                                        ; $5ddf: $e1
    inc c                                         ; $5de0: $0c
    inc l                                         ; $5de1: $2c
    ld bc, $c04b                                  ; $5de2: $01 $4b $c0
    add sp, -$43                                  ; $5de5: $e8 $bd
    pop bc                                        ; $5de7: $c1
    ld [hl], $81                                  ; $5de8: $36 $81
    add b                                         ; $5dea: $80
    add b                                         ; $5deb: $80
    add b                                         ; $5dec: $80
    ld [hl], b                                    ; $5ded: $70
    ld b, h                                       ; $5dee: $44
    pop hl                                        ; $5def: $e1
    ld l, b                                       ; $5df0: $68
    ld h, a                                       ; $5df1: $67
    ld a, a                                       ; $5df2: $7f
    ld c, l                                       ; $5df3: $4d
    dec l                                         ; $5df4: $2d
    ld c, e                                       ; $5df5: $4b
    ld c, e                                       ; $5df6: $4b
    ld l, h                                       ; $5df7: $6c
    ld l, h                                       ; $5df8: $6c
    ld l, h                                       ; $5df9: $6c
    inc a                                         ; $5dfa: $3c
    pop bc                                        ; $5dfb: $c1
    jr @+$01                                      ; $5dfc: $18 $ff

    pop bc                                        ; $5dfe: $c1
    ret nz                                        ; $5dff: $c0

    jp nz, $c03d                                  ; $5e00: $c2 $3d $c0

    dec c                                         ; $5e03: $0d
    ld l, l                                       ; $5e04: $6d
    call z, $1442                                 ; $5e05: $cc $42 $14
    ld h, e                                       ; $5e08: $63
    ld b, e                                       ; $5e09: $43
    db $ec                                        ; $5e0a: $ec
    inc c                                         ; $5e0b: $0c
    add d                                         ; $5e0c: $82
    and $f8                                       ; $5e0d: $e6 $f8
    ld b, e                                       ; $5e0f: $43
    ld c, e                                       ; $5e10: $4b
    dec c                                         ; $5e11: $0d
    ei                                            ; $5e12: $fb
    and l                                         ; $5e13: $a5
    push af                                       ; $5e14: $f5
    ld h, d                                       ; $5e15: $62
    ld a, b                                       ; $5e16: $78
    jp nz, $e201                                  ; $5e17: $c2 $01 $e2

    jr c, @-$02                                   ; $5e1a: $38 $fc

    sub h                                         ; $5e1c: $94
    ret nz                                        ; $5e1d: $c0

    pop hl                                        ; $5e1e: $e1
    ld [hl], $68                                  ; $5e1f: $36 $68
    ld l, l                                       ; $5e21: $6d
    ld c, e                                       ; $5e22: $4b
    dec c                                         ; $5e23: $0d
    ld a, [hl-]                                   ; $5e24: $3a
    and c                                         ; $5e25: $a1
    ld a, [hl]                                    ; $5e26: $7e

jr_063_5e27:
    ldh [rP1], a                                  ; $5e27: $e0 $00
    ld a, [hl]                                    ; $5e29: $7e
    jp nz, $c47a                                  ; $5e2a: $c2 $7a $c4

    cp d                                          ; $5e2d: $ba
    add d                                         ; $5e2e: $82
    nop                                           ; $5e2f: $00
    or d                                          ; $5e30: $b2
    ld b, h                                       ; $5e31: $44
    ld c, d                                       ; $5e32: $4a
    cp e                                          ; $5e33: $bb
    ld b, b                                       ; $5e34: $40
    ld b, e                                       ; $5e35: $43
    add b                                         ; $5e36: $80
    ld a, [$8081]                                 ; $5e37: $fa $81 $80
    or a                                          ; $5e3a: $b7
    add d                                         ; $5e3b: $82
    ld a, [hl-]                                   ; $5e3c: $3a
    and b                                         ; $5e3d: $a0
    ld a, h                                       ; $5e3e: $7c
    and b                                         ; $5e3f: $a0
    ld b, b                                       ; $5e40: $40
    add $56                                       ; $5e41: $c6 $56
    ld b, d                                       ; $5e43: $42
    add b                                         ; $5e44: $80
    pop de                                        ; $5e45: $d1
    db $fc                                        ; $5e46: $fc
    dec h                                         ; $5e47: $25
    ld l, l                                       ; $5e48: $6d
    cp h                                          ; $5e49: $bc
    ld b, l                                       ; $5e4a: $45
    add c                                         ; $5e4b: $81
    cp [hl]                                       ; $5e4c: $be
    and h                                         ; $5e4d: $a4
    inc c                                         ; $5e4e: $0c
    ld c, h                                       ; $5e4f: $4c
    inc l                                         ; $5e50: $2c
    inc c                                         ; $5e51: $0c
    ld [hl-], a                                   ; $5e52: $32
    ld h, b                                       ; $5e53: $60
    ld a, [bc]                                    ; $5e54: $0a
    nop                                           ; $5e55: $00
    cp d                                          ; $5e56: $ba
    add b                                         ; $5e57: $80
    dec l                                         ; $5e58: $2d
    ld h, c                                       ; $5e59: $61
    ld [hl], d                                    ; $5e5a: $72
    ld b, c                                       ; $5e5b: $41
    cp [hl]                                       ; $5e5c: $be
    ld d, [hl]                                    ; $5e5d: $56
    db $fc                                        ; $5e5e: $fc
    inc h                                         ; $5e5f: $24
    ld b, l                                       ; $5e60: $45
    ldh [$c1], a                                  ; $5e61: $e0 $c1
    rst $20                                       ; $5e63: $e7
    or a                                          ; $5e64: $b7

jr_063_5e65:
    add d                                         ; $5e65: $82
    jr c, jr_063_5e27                             ; $5e66: $38 $bf

    pop hl                                        ; $5e68: $e1
    ld a, a                                       ; $5e69: $7f
    pop hl                                        ; $5e6a: $e1
    ld [hl], l                                    ; $5e6b: $75
    ld h, e                                       ; $5e6c: $63
    ld c, $0e                                     ; $5e6d: $0e $0e
    ld l, l                                       ; $5e6f: $6d
    nop                                           ; $5e70: $00
    ld d, d                                       ; $5e71: $52
    db $fc                                        ; $5e72: $fc
    ld b, h                                       ; $5e73: $44
    inc bc                                        ; $5e74: $03
    ld l, l                                       ; $5e75: $6d
    ld l, e                                       ; $5e76: $6b
    ret nz                                        ; $5e77: $c0

    ldh [rLCDC], a                                ; $5e78: $e0 $40
    and h                                         ; $5e7a: $a4
    ld hl, sp-$7d                                 ; $5e7b: $f8 $83
    ret nz                                        ; $5e7d: $c0

    ld [c], a                                     ; $5e7e: $e2
    ld a, a                                       ; $5e7f: $7f
    pop hl                                        ; $5e80: $e1
    ld [c], a                                     ; $5e81: $e2
    ld b, b                                       ; $5e82: $40
    ld [$a6dc], sp                                ; $5e83: $08 $dc $a6
    nop                                           ; $5e86: $00
    or e                                          ; $5e87: $b3
    ldh a, [rP1]                                  ; $5e88: $f0 $00
    ld l, e                                       ; $5e8a: $6b
    ld b, l                                       ; $5e8b: $45
    ld h, b                                       ; $5e8c: $60
    dec b                                         ; $5e8d: $05
    db $e3                                        ; $5e8e: $e3
    cp [hl]                                       ; $5e8f: $be
    ld [c], a                                     ; $5e90: $e2
    ld [hl], l                                    ; $5e91: $75
    and b                                         ; $5e92: $a0
    ld c, $32                                     ; $5e93: $0e $32
    ld b, b                                       ; $5e95: $40
    ld c, e                                       ; $5e96: $4b
    ld c, e                                       ; $5e97: $4b
    ld a, [bc]                                    ; $5e98: $0a
    xor l                                         ; $5e99: $ad
    ld b, c                                       ; $5e9a: $41
    ret nz                                        ; $5e9b: $c0

    ld [c], a                                     ; $5e9c: $e2
    ld b, d                                       ; $5e9d: $42
    pop de                                        ; $5e9e: $d1
    nop                                           ; $5e9f: $00
    and a                                         ; $5ea0: $a7
    ldh [$4c], a                                  ; $5ea1: $e0 $4c
    jr nz, jr_063_5e65                            ; $5ea3: $20 $c0

    rst $20                                       ; $5ea5: $e7
    db $fd                                        ; $5ea6: $fd
    and b                                         ; $5ea7: $a0
    inc [hl]                                      ; $5ea8: $34
    ld b, e                                       ; $5ea9: $43
    ld b, c                                       ; $5eaa: $41
    jp $2b0d                                      ; $5eab: $c3 $0d $2b


    dec c                                         ; $5eae: $0d
    db $10                                        ; $5eaf: $10
    ld b, l                                       ; $5eb0: $45
    push hl                                       ; $5eb1: $e5
    add b                                         ; $5eb2: $80
    jp nc, Jump_063_647e                          ; $5eb3: $d2 $7e $64

    jp $2cc7                                      ; $5eb6: $c3 $c7 $2c


    pop bc                                        ; $5eb9: $c1
    ld b, b                                       ; $5eba: $40
    add h                                         ; $5ebb: $84
    and e                                         ; $5ebc: $a3
    ld b, b                                       ; $5ebd: $40
    add c                                         ; $5ebe: $81
    ld b, d                                       ; $5ebf: $42
    ld [hl], h                                    ; $5ec0: $74
    ld b, b                                       ; $5ec1: $40
    ld l, l                                       ; $5ec2: $6d
    halt                                          ; $5ec3: $76
    ld h, $3e                                     ; $5ec4: $26 $3e
    ldh a, [rSVBK]                                ; $5ec6: $f0 $70
    inc b                                         ; $5ec8: $04
    jp nz, $2cc8                                  ; $5ec9: $c2 $c8 $2c

    ld [bc], a                                    ; $5ecc: $02
    and h                                         ; $5ecd: $a4
    nop                                           ; $5ece: $00
    nop                                           ; $5ecf: $00
    add b                                         ; $5ed0: $80
    rst $38                                       ; $5ed1: $ff
    ld h, c                                       ; $5ed2: $61
    ld [hl], l                                    ; $5ed3: $75
    ld hl, $1874                                  ; $5ed4: $21 $74 $18
    sbc d                                         ; $5ed7: $9a
    dec b                                         ; $5ed8: $05
    ld b, l                                       ; $5ed9: $45
    and b                                         ; $5eda: $a0
    ld [bc], a                                    ; $5edb: $02
    add h                                         ; $5edc: $84
    ei                                            ; $5edd: $fb
    ld b, b                                       ; $5ede: $40
    inc b                                         ; $5edf: $04
    ld b, c                                       ; $5ee0: $41
    db $e4                                        ; $5ee1: $e4
    ret nz                                        ; $5ee2: $c0

    db $e4                                        ; $5ee3: $e4
    dec hl                                        ; $5ee4: $2b
    add l                                         ; $5ee5: $85
    ret nz                                        ; $5ee6: $c0

    inc h                                         ; $5ee7: $24
    ld b, $00                                     ; $5ee8: $06 $00
    xor e                                         ; $5eea: $ab
    ld [hl], d                                    ; $5eeb: $72
    ld h, $04                                     ; $5eec: $26 $04
    and b                                         ; $5eee: $a0
    inc bc                                        ; $5eef: $03
    ld l, h                                       ; $5ef0: $6c
    ld c, h                                       ; $5ef1: $4c
    ld b, h                                       ; $5ef2: $44
    ret                                           ; $5ef3: $c9


    inc bc                                        ; $5ef4: $03
    and d                                         ; $5ef5: $a2
    ld [bc], a                                    ; $5ef6: $02
    and c                                         ; $5ef7: $a1
    dec [hl]                                      ; $5ef8: $35
    ld hl, $17f6                                  ; $5ef9: $21 $f6 $17
    inc b                                         ; $5efc: $04
    and [hl]                                      ; $5efd: $a6
    nop                                           ; $5efe: $00
    cp a                                          ; $5eff: $bf

Call_063_5f00:
Jump_063_5f00:
    pop hl                                        ; $5f00: $e1
    ld a, a                                       ; $5f01: $7f
    ld l, e                                       ; $5f02: $6b
    ccf                                           ; $5f03: $3f
    ld [c], a                                     ; $5f04: $e2
    dec [hl]                                      ; $5f05: $35
    ld [hl+], a                                   ; $5f06: $22
    ld a, [hl]                                    ; $5f07: $7e
    and [hl]                                      ; $5f08: $a6
    ret nz                                        ; $5f09: $c0

    pop af                                        ; $5f0a: $f1
    nop                                           ; $5f0b: $00
    add a                                         ; $5f0c: $87
    ld a, a                                       ; $5f0d: $7f
    push hl                                       ; $5f0e: $e5
    rst $20                                       ; $5f0f: $e7
    ld l, h                                       ; $5f10: $6c
    inc l                                         ; $5f11: $2c
    inc c                                         ; $5f12: $0c
    cp h                                          ; $5f13: $bc
    ld b, c                                       ; $5f14: $41
    ld a, e                                       ; $5f15: $7b
    jr nz, jr_063_5f83                            ; $5f16: $20 $6b

    dec c                                         ; $5f18: $0d
    ld l, e                                       ; $5f19: $6b
    ld hl, $e16b                                  ; $5f1a: $21 $6b $e1
    ld bc, $837e                                  ; $5f1d: $01 $7e $83
    nop                                           ; $5f20: $00
    or l                                          ; $5f21: $b5
    nop                                           ; $5f22: $00
    add [hl]                                      ; $5f23: $86
    ld c, h                                       ; $5f24: $4c
    ld a, $e6                                     ; $5f25: $3e $e6
    ld [hl], e                                    ; $5f27: $73
    ld [bc], a                                    ; $5f28: $02
    add c                                         ; $5f29: $81
    dec hl                                        ; $5f2a: $2b
    dec b                                         ; $5f2b: $05
    ld h, b                                       ; $5f2c: $60
    ret nz                                        ; $5f2d: $c0

    ld [c], a                                     ; $5f2e: $e2
    ld a, $80                                     ; $5f2f: $3e $80
    inc b                                         ; $5f31: $04
    db $e3                                        ; $5f32: $e3
    nop                                           ; $5f33: $00
    or a                                          ; $5f34: $b7
    jr nc, jr_063_5f99                            ; $5f35: $30 $62

    ld c, e                                       ; $5f37: $4b
    ld [de], a                                    ; $5f38: $12
    ld a, [hl]                                    ; $5f39: $7e
    ld h, b                                       ; $5f3a: $60
    ld c, h                                       ; $5f3b: $4c
    ld a, l                                       ; $5f3c: $7d
    ld b, b                                       ; $5f3d: $40
    rst $38                                       ; $5f3e: $ff
    and l                                         ; $5f3f: $a5
    dec c                                         ; $5f40: $0d
    inc bc                                        ; $5f41: $03
    ld b, b                                       ; $5f42: $40
    add b                                         ; $5f43: $80
    ldh [$3f], a                                  ; $5f44: $e0 $3f
    pop bc                                        ; $5f46: $c1
    nop                                           ; $5f47: $00
    nop                                           ; $5f48: $00
    cp e                                          ; $5f49: $bb
    db $fc                                        ; $5f4a: $fc
    add l                                         ; $5f4b: $85
    ld a, [hl]                                    ; $5f4c: $7e
    nop                                           ; $5f4d: $00
    dec sp                                        ; $5f4e: $3b
    ld h, d                                       ; $5f4f: $62
    add h                                         ; $5f50: $84
    ld b, b                                       ; $5f51: $40
    dec b                                         ; $5f52: $05
    ld b, c                                       ; $5f53: $41
    cp c                                          ; $5f54: $b9
    nop                                           ; $5f55: $00
    ret nz                                        ; $5f56: $c0

    rst $20                                       ; $5f57: $e7
    ld b, b                                       ; $5f58: $40
    add b                                         ; $5f59: $80
    inc de                                        ; $5f5a: $13
    and $07                                       ; $5f5b: $e6 $07
    ld a, [hl]                                    ; $5f5d: $7e
    add c                                         ; $5f5e: $81
    ld a, a                                       ; $5f5f: $7f
    ld bc, $01bd                                  ; $5f60: $01 $bd $01
    nop                                           ; $5f63: $00
    ld h, [hl]                                    ; $5f64: $66
    ld l, e                                       ; $5f65: $6b
    rst $38                                       ; $5f66: $ff
    pop hl                                        ; $5f67: $e1
    nop                                           ; $5f68: $00
    add b                                         ; $5f69: $80
    and l                                         ; $5f6a: $a5
    ld l, [hl]                                    ; $5f6b: $6e
    dec bc                                        ; $5f6c: $0b
    ld a, [hl]                                    ; $5f6d: $7e
    add hl, bc                                    ; $5f6e: $09
    ld b, d                                       ; $5f6f: $42
    db $e3                                        ; $5f70: $e3
    ret nz                                        ; $5f71: $c0

    ld [c], a                                     ; $5f72: $e2
    inc a                                         ; $5f73: $3c
    inc bc                                        ; $5f74: $03
    add b                                         ; $5f75: $80
    ld b, [hl]                                    ; $5f76: $46
    pop bc                                        ; $5f77: $c1
    ld [c], a                                     ; $5f78: $e2
    ld b, b                                       ; $5f79: $40
    add d                                         ; $5f7a: $82
    and h                                         ; $5f7b: $a4
    sub d                                         ; $5f7c: $92
    ld l, c                                       ; $5f7d: $69
    ld a, d                                       ; $5f7e: $7a
    db $10                                        ; $5f7f: $10
    add h                                         ; $5f80: $84
    db $e3                                        ; $5f81: $e3
    or a                                          ; $5f82: $b7

jr_063_5f83:
    and b                                         ; $5f83: $a0
    add d                                         ; $5f84: $82
    ld b, a                                       ; $5f85: $47
    ld c, e                                       ; $5f86: $4b
    or $40                                        ; $5f87: $f6 $40
    add c                                         ; $5f89: $81
    ld l, e                                       ; $5f8a: $6b
    ld [bc], a                                    ; $5f8b: $02
    and [hl]                                      ; $5f8c: $a6
    ld d, d                                       ; $5f8d: $52
    ld h, l                                       ; $5f8e: $65
    add b                                         ; $5f8f: $80
    rlca                                          ; $5f90: $07
    inc b                                         ; $5f91: $04
    ld h, a                                       ; $5f92: $67
    ret nz                                        ; $5f93: $c0

    and $c1                                       ; $5f94: $e6 $c1
    jp hl                                         ; $5f96: $e9


    dec bc                                        ; $5f97: $0b
    ld b, d                                       ; $5f98: $42

jr_063_5f99:
    pop bc                                        ; $5f99: $c1
    pop hl                                        ; $5f9a: $e1
    ld l, e                                       ; $5f9b: $6b
    ld e, [hl]                                    ; $5f9c: $5e
    ld b, a                                       ; $5f9d: $47
    add b                                         ; $5f9e: $80
    ld d, $80                                     ; $5f9f: $16 $80
    add sp, $05                                   ; $5fa1: $e8 $05
    ld c, c                                       ; $5fa3: $49
    ld l, e                                       ; $5fa4: $6b
    ret nz                                        ; $5fa5: $c0

    ld [c], a                                     ; $5fa6: $e2
    nop                                           ; $5fa7: $00
    ld [bc], a                                    ; $5fa8: $02
    push hl                                       ; $5fa9: $e5
    add [hl]                                      ; $5faa: $86
    ret c                                         ; $5fab: $d8

    ld b, d                                       ; $5fac: $42
    jp $e205                                      ; $5fad: $c3 $05 $e2


    jp nz, $c1e8                                  ; $5fb0: $c2 $e8 $c1

    db $e3                                        ; $5fb3: $e3
    inc bc                                        ; $5fb4: $03
    pop bc                                        ; $5fb5: $c1
    ld d, [hl]                                    ; $5fb6: $56
    ld b, c                                       ; $5fb7: $41
    nop                                           ; $5fb8: $00
    cp c                                          ; $5fb9: $b9
    dec b                                         ; $5fba: $05
    add b                                         ; $5fbb: $80
    rrca                                          ; $5fbc: $0f
    ld h, d                                       ; $5fbd: $62
    inc hl                                        ; $5fbe: $23
    ld a, $62                                     ; $5fbf: $3e $62
    rst $00                                       ; $5fc1: $c7
    ret                                           ; $5fc2: $c9


    inc b                                         ; $5fc3: $04
    pop hl                                        ; $5fc4: $e1
    add b                                         ; $5fc5: $80
    and b                                         ; $5fc6: $a0
    ld [bc], a                                    ; $5fc7: $02
    ld b, e                                       ; $5fc8: $43
    nop                                           ; $5fc9: $00
    ret nc                                        ; $5fca: $d0

    adc l                                         ; $5fcb: $8d
    add d                                         ; $5fcc: $82
    ld l, d                                       ; $5fcd: $6a
    add e                                         ; $5fce: $83
    ld b, e                                       ; $5fcf: $43
    ld b, a                                       ; $5fd0: $47
    jp z, $c2c6                                   ; $5fd1: $ca $c6 $c2

    ld b, b                                       ; $5fd4: $40
    and c                                         ; $5fd5: $a1
    add d                                         ; $5fd6: $82

jr_063_5fd7:
    add $86                                       ; $5fd7: $c6 $86
    ret c                                         ; $5fd9: $d8

    nop                                           ; $5fda: $00
    ld bc, $1760                                  ; $5fdb: $01 $60 $17
    ret nz                                        ; $5fde: $c0

    ld b, a                                       ; $5fdf: $47
    jp z, Jump_000_207d                           ; $5fe0: $ca $7d $20

    inc b                                         ; $5fe3: $04
    and b                                         ; $5fe4: $a0
    inc b                                         ; $5fe5: $04
    rst $00                                       ; $5fe6: $c7
    nop                                           ; $5fe7: $00
    ld d, d                                       ; $5fe8: $52
    add [hl]                                      ; $5fe9: $86
    dec h                                         ; $5fea: $25
    ld bc, $d46d                                  ; $5feb: $01 $6d $d4
    ld [c], a                                     ; $5fee: $e2
    ret z                                         ; $5fef: $c8

    xor b                                         ; $5ff0: $a8
    dec b                                         ; $5ff1: $05
    ld [c], a                                     ; $5ff2: $e2

jr_063_5ff3:
    ret nz                                        ; $5ff3: $c0

    pop hl                                        ; $5ff4: $e1
    inc b                                         ; $5ff5: $04
    ret z                                         ; $5ff6: $c8

    add b                                         ; $5ff7: $80
    rst $10                                       ; $5ff8: $d7
    sbc e                                         ; $5ff9: $9b
    add b                                         ; $5ffa: $80
    nop                                           ; $5ffb: $00
    ret nz                                        ; $5ffc: $c0

    db $e3                                        ; $5ffd: $e3
    ret z                                         ; $5ffe: $c8

    and h                                         ; $5fff: $a4
    ld [hl], l                                    ; $6000: $75
    ld [c], a                                     ; $6001: $e2
    ld b, d                                       ; $6002: $42
    db $e3                                        ; $6003: $e3
    adc e                                         ; $6004: $8b
    ret z                                         ; $6005: $c8

    add b                                         ; $6006: $80
    pop de                                        ; $6007: $d1
    add d                                         ; $6008: $82
    ld b, l                                       ; $6009: $45
    ld e, c                                       ; $600a: $59
    and d                                         ; $600b: $a2
    ld [bc], a                                    ; $600c: $02
    ld c, c                                       ; $600d: $49
    and h                                         ; $600e: $a4
    ld c, e                                       ; $600f: $4b
    scf                                           ; $6010: $37
    ldh [$bf], a                                  ; $6011: $e0 $bf
    db $e4                                        ; $6013: $e4
    ret nz                                        ; $6014: $c0

    ld [c], a                                     ; $6015: $e2
    add [hl]                                      ; $6016: $86
    and l                                         ; $6017: $a5
    add b                                         ; $6018: $80
    push de                                       ; $6019: $d5
    ret nz                                        ; $601a: $c0

    rst $20                                       ; $601b: $e7
    add d                                         ; $601c: $82
    jp z, $6b81                                   ; $601d: $ca $81 $6b

    adc h                                         ; $6020: $8c
    and b                                         ; $6021: $a0
    ret nz                                        ; $6022: $c0

    and $02                                       ; $6023: $e6 $02
    db $ed                                        ; $6025: $ed
    nop                                           ; $6026: $00
    or b                                          ; $6027: $b0
    adc d                                         ; $6028: $8a
    ld bc, $016d                                  ; $6029: $01 $6d $01
    ld l, e                                       ; $602c: $6b
    ld d, h                                       ; $602d: $54
    nop                                           ; $602e: $00
    db $10                                        ; $602f: $10
    jr nz, jr_063_5ff3                            ; $6030: $20 $c1

    pop hl                                        ; $6032: $e1
    jp nz, $cce2                                  ; $6033: $c2 $e2 $cc

    add c                                         ; $6036: $81
    ld l, c                                       ; $6037: $69
    jp nz, $8408                                  ; $6038: $c2 $08 $84

    nop                                           ; $603b: $00
    ld b, d                                       ; $603c: $42
    sub a                                         ; $603d: $97
    ei                                            ; $603e: $fb
    ld b, d                                       ; $603f: $42
    sbc h                                         ; $6040: $9c
    ld h, b                                       ; $6041: $60
    sub d                                         ; $6042: $92
    ld h, e                                       ; $6043: $63
    inc c                                         ; $6044: $0c
    ld h, c                                       ; $6045: $61
    ld b, [hl]                                    ; $6046: $46
    db $e4                                        ; $6047: $e4
    add $f9                                       ; $6048: $c6 $f9
    jp Jump_000_0046                              ; $604a: $c3 $46 $00


    inc b                                         ; $604d: $04
    ld b, e                                       ; $604e: $43
    dec e                                         ; $604f: $1d
    add b                                         ; $6050: $80
    sub d                                         ; $6051: $92
    ld h, e                                       ; $6052: $63
    sub e                                         ; $6053: $93
    jr nz, jr_063_5fd7                            ; $6054: $20 $81

    push hl                                       ; $6056: $e5
    ld d, l                                       ; $6057: $55
    add c                                         ; $6058: $81
    inc c                                         ; $6059: $0c
    ld b, h                                       ; $605a: $44
    add [hl]                                      ; $605b: $86
    rlca                                          ; $605c: $07
    inc c                                         ; $605d: $0c
    add b                                         ; $605e: $80
    ld l, h                                       ; $605f: $6c
    db $f4                                        ; $6060: $f4
    inc h                                         ; $6061: $24
    dec c                                         ; $6062: $0d
    ld l, l                                       ; $6063: $6d
    ld d, e                                       ; $6064: $53
    ld h, c                                       ; $6065: $61
    sub [hl]                                      ; $6066: $96
    ld b, b                                       ; $6067: $40
    call z, $8b63                                 ; $6068: $cc $63 $8b
    and e                                         ; $606b: $a3
    nop                                           ; $606c: $00
    adc $02                                       ; $606d: $ce $02
    cp $fc                                        ; $606f: $fe $fc
    inc h                                         ; $6071: $24
    db $e4                                        ; $6072: $e4
    add c                                         ; $6073: $81
    db $e4                                        ; $6074: $e4
    rst $08                                       ; $6075: $cf
    ld b, d                                       ; $6076: $42
    ret nc                                        ; $6077: $d0

    ld h, h                                       ; $6078: $64
    inc c                                         ; $6079: $0c
    and h                                         ; $607a: $a4
    ld h, [hl]                                    ; $607b: $66
    ld h, l                                       ; $607c: $65
    nop                                           ; $607d: $00
    add a                                         ; $607e: $87
    ld c, e                                       ; $607f: $4b
    add b                                         ; $6080: $80
    adc $99                                       ; $6081: $ce $99
    add b                                         ; $6083: $80
    jr @+$24                                      ; $6084: $18 $22

    adc [hl]                                      ; $6086: $8e
    ld b, e                                       ; $6087: $43
    call $8d84                                    ; $6088: $cd $84 $8d
    or l                                          ; $608b: $b5
    jp nz, $030f                                  ; $608c: $c2 $0f $03

    ld c, l                                       ; $608f: $4d
    dec l                                         ; $6090: $2d
    cp a                                          ; $6091: $bf
    db $e3                                        ; $6092: $e3
    jr jr_063_60d5                                ; $6093: $18 $40

Jump_063_6095:
    call $9183                                    ; $6095: $cd $83 $91
    ld b, d                                       ; $6098: $42
    adc [hl]                                      ; $6099: $8e
    rla                                           ; $609a: $17
    cp h                                          ; $609b: $bc
    cpl                                           ; $609c: $2f
    add b                                         ; $609d: $80
    rla                                           ; $609e: $17
    add c                                         ; $609f: $81
    jr jr_063_60c3                                ; $60a0: $18 $21

    ld de, $4c80                                  ; $60a2: $11 $80 $4c
    add $07                                       ; $60a5: $c6 $07
    cp $b4                                        ; $60a7: $fe $b4
    inc b                                         ; $60a9: $04
    ld [$0d41], sp                                ; $60aa: $08 $41 $0d
    inc c                                         ; $60ad: $0c
    ld a, [hl]                                    ; $60ae: $7e
    ld [c], a                                     ; $60af: $e2
    add d                                         ; $60b0: $82
    ldh [$0d], a                                  ; $60b1: $e0 $0d
    dec l                                         ; $60b3: $2d
    sub l                                         ; $60b4: $95
    ld bc, $0892                                  ; $60b5: $01 $92 $08
    add [hl]                                      ; $60b8: $86
    res 0, b                                      ; $60b9: $cb $80
    call nc, $be00                                ; $60bb: $d4 $00 $be
    pop hl                                        ; $60be: $e1
    pop de                                        ; $60bf: $d1
    and [hl]                                      ; $60c0: $a6
    ld c, h                                       ; $60c1: $4c
    rst $38                                       ; $60c2: $ff

jr_063_60c3:
    ld a, c                                       ; $60c3: $79
    add hl, hl                                    ; $60c4: $29
    nop                                           ; $60c5: $00
    add [hl]                                      ; $60c6: $86
    ei                                            ; $60c7: $fb
    and $0c                                       ; $60c8: $e6 $0c
    ret z                                         ; $60ca: $c8

    adc [hl]                                      ; $60cb: $8e
    inc h                                         ; $60cc: $24
    nop                                           ; $60cd: $00
    inc c                                         ; $60ce: $0c
    ld [hl-], a                                   ; $60cf: $32
    add b                                         ; $60d0: $80
    ld [hl], b                                    ; $60d1: $70
    ld h, h                                       ; $60d2: $64
    dec l                                         ; $60d3: $2d
    ld d, [hl]                                    ; $60d4: $56

jr_063_60d5:
    inc h                                         ; $60d5: $24
    inc de                                        ; $60d6: $13
    dec hl                                        ; $60d7: $2b
    ld a, b                                       ; $60d8: $78
    jr nz, jr_063_60db                            ; $60d9: $20 $00

jr_063_60db:
    nop                                           ; $60db: $00
    nop                                           ; $60dc: $00
    cp a                                          ; $60dd: $bf
    db $dd                                        ; $60de: $dd
    sbc $a0                                       ; $60df: $de $a0
    and b                                         ; $60e1: $a0
    and b                                         ; $60e2: $a0
    call c, $e2fa                                 ; $60e3: $dc $fa $e2
    and b                                         ; $60e6: $a0
    ccf                                           ; $60e7: $3f
    ret c                                         ; $60e8: $d8

    reti                                          ; $60e9: $d9


    and b                                         ; $60ea: $a0
    and b                                         ; $60eb: $a0
    jp nc, $fcd3                                  ; $60ec: $d2 $d3 $fc

    rst $30                                       ; $60ef: $f7
    ldh [$e1], a                                  ; $60f0: $e0 $e1
    ld hl, sp-$24                                 ; $60f2: $f8 $dc
    pop hl                                        ; $60f4: $e1
    ret nc                                        ; $60f5: $d0

    db $e4                                        ; $60f6: $e4
    jp z, $e2e2                                   ; $60f7: $ca $e2 $e2

    db $e3                                        ; $60fa: $e3
    db $e4                                        ; $60fb: $e4
    rst $18                                       ; $60fc: $df
    ldh [$f9], a                                  ; $60fd: $e0 $f9
    pop hl                                        ; $60ff: $e1
    ld a, [$b9e0]                                 ; $6100: $fa $e0 $b9
    ldh [$da], a                                  ; $6103: $e0 $da
    db $db                                        ; $6105: $db
    ret nc                                        ; $6106: $d0

    pop de                                        ; $6107: $d1
    call nc, $d5e7                                ; $6108: $d4 $e7 $d5
    and b                                         ; $610b: $a0
    and b                                         ; $610c: $a0
    db $fc                                        ; $610d: $fc
    rst $28                                       ; $610e: $ef
    add sp, -$1f                                  ; $610f: $e8 $e1
    ret nc                                        ; $6111: $d0

    pop de                                        ; $6112: $d1
    jp c, $db3f                                   ; $6113: $da $3f $db

    sub $d7                                       ; $6116: $d6 $d7
    jp c, $a0db                                   ; $6118: $da $db $a0

    ret nc                                        ; $611b: $d0

    db $e3                                        ; $611c: $e3
    ld a, [$3fe4]                                 ; $611d: $fa $e4 $3f
    add sp, -$17                                  ; $6120: $e8 $e9
    ld [$e6e5], a                                 ; $6122: $ea $e5 $e6
    rst $20                                       ; $6125: $e7
    ld a, [$7fe0]                                 ; $6126: $fa $e0 $7f
    pop hl                                        ; $6129: $e1
    cp h                                          ; $612a: $bc
    add d                                         ; $612b: $82
    ld [c], a                                     ; $612c: $e2
    ld [hl], b                                    ; $612d: $70
    ldh [$9f], a                                  ; $612e: $e0 $9f
    sbc l                                         ; $6130: $9d
    and d                                         ; $6131: $a2
    sbc l                                         ; $6132: $9d
    rst $38                                       ; $6133: $ff
    db $e3                                        ; $6134: $e3
    and d                                         ; $6135: $a2
    inc de                                        ; $6136: $13
    sbc l                                         ; $6137: $9d
    sbc a                                         ; $6138: $9f
    add sp, -$1b                                  ; $6139: $e8 $e5
    ld a, [hl]                                    ; $613b: $7e
    push hl                                       ; $613c: $e5
    and b                                         ; $613d: $a0
    ret nc                                        ; $613e: $d0

    db $e3                                        ; $613f: $e3
    ld a, [$73e4]                                 ; $6140: $fa $e4 $73
    jp hl                                         ; $6143: $e9


    ei                                            ; $6144: $fb
    sub $d7                                       ; $6145: $d6 $d7
    add d                                         ; $6147: $82
    pop hl                                        ; $6148: $e1
    sbc a                                         ; $6149: $9f
    sbc l                                         ; $614a: $9d
    sbc l                                         ; $614b: $9d
    sbc h                                         ; $614c: $9c
    ld b, [hl]                                    ; $614d: $46
    jp z, $e7ff                                   ; $614e: $ca $ff $e7

    sbc h                                         ; $6151: $9c
    or [hl]                                       ; $6152: $b6
    ldh [$9f], a                                  ; $6153: $e0 $9f
    ld l, d                                       ; $6155: $6a
    db $e3                                        ; $6156: $e3
    add d                                         ; $6157: $82
    pop hl                                        ; $6158: $e1
    sub $d7                                       ; $6159: $d6 $d7
    ld hl, $d8a0                                  ; $615b: $21 $a0 $d8
    ldh [$3d], a                                  ; $615e: $e0 $3d
    rst $20                                       ; $6160: $e7
    ld [hl], e                                    ; $6161: $73
    jp hl                                         ; $6162: $e9


    inc h                                         ; $6163: $24
    ld [c], a                                     ; $6164: $e2
    sbc a                                         ; $6165: $9f
    jp $bce9                                      ; $6166: $c3 $e9 $bc


    and $0c                                       ; $6169: $e6 $0c
    ld a, d                                       ; $616b: $7a
    ld [c], a                                     ; $616c: $e2
    nop                                           ; $616d: $00
    push hl                                       ; $616e: $e5
    ret c                                         ; $616f: $d8

    reti                                          ; $6170: $d9


    dec a                                         ; $6171: $3d
    rst $20                                       ; $6172: $e7
    ld [hl], e                                    ; $6173: $73
    jp hl                                         ; $6174: $e9


    nop                                           ; $6175: $00
    pop hl                                        ; $6176: $e1
    pop bc                                        ; $6177: $c1
    and $df                                       ; $6178: $e6 $df
    ld b, l                                       ; $617a: $45
    dec hl                                        ; $617b: $2b
    ld sp, $452b                                  ; $617c: $31 $2b $45
    ld a, d                                       ; $617f: $7a
    rst $20                                       ; $6180: $e7
    sbc a                                         ; $6181: $9f
    and b                                         ; $6182: $a0
    and b                                         ; $6183: $a0
    nop                                           ; $6184: $00
    push hl                                       ; $6185: $e5
    db $fc                                        ; $6186: $fc
    pop bc                                        ; $6187: $c1
    dec a                                         ; $6188: $3d

jr_063_6189:
    rst $20                                       ; $6189: $e7

Jump_063_618a:
    add b                                         ; $618a: $80
    ret                                           ; $618b: $c9


    add d                                         ; $618c: $82
    pop bc                                        ; $618d: $c1
    sbc [hl]                                      ; $618e: $9e
    pop bc                                        ; $618f: $c1
    push hl                                       ; $6190: $e5
    ld a, [hl+]                                   ; $6191: $2a
    cp a                                          ; $6192: $bf
    jr nz, jr_063_61b5                            ; $6193: $20 $20

    jr nz, jr_063_61c4                            ; $6195: $20 $2d

    ld b, [hl]                                    ; $6197: $46
    ld b, l                                       ; $6198: $45
    cp l                                          ; $6199: $bd
    push hl                                       ; $619a: $e5
    sbc [hl]                                      ; $619b: $9e
    ldh a, [$7e]                                  ; $619c: $f0 $7e
    bit 2, c                                      ; $619e: $cb $51
    pop bc                                        ; $61a0: $c1
    add b                                         ; $61a1: $80
    adc $00                                       ; $61a2: $ce $00
    pop hl                                        ; $61a4: $e1
    and c                                         ; $61a5: $a1
    ld b, [hl]                                    ; $61a6: $46
    ld b, [hl]                                    ; $61a7: $46
    xor [hl]                                      ; $61a8: $ae
    cp $c0                                        ; $61a9: $fe $c0
    db $e3                                        ; $61ab: $e3
    cpl                                           ; $61ac: $2f
    jr nz, @+$22                                  ; $61ad: $20 $20

    ld [hl-], a                                   ; $61af: $32
    ld b, e                                       ; $61b0: $43
    ld b, a                                       ; $61b1: $47
    ld d, d                                       ; $61b2: $52
    dec bc                                        ; $61b3: $0b
    ld d, b                                       ; $61b4: $50

jr_063_61b5:
    ld b, l                                       ; $61b5: $45
    rst $28                                       ; $61b6: $ef
    ld [c], a                                     ; $61b7: $e2
    sbc [hl]                                      ; $61b8: $9e
    ld a, d                                       ; $61b9: $7a
    jp nz, $e57e                                  ; $61ba: $c2 $7e $e5

    inc c                                         ; $61bd: $0c
    ret nz                                        ; $61be: $c0

    add b                                         ; $61bf: $80
    ret nc                                        ; $61c0: $d0

    db $f4                                        ; $61c1: $f4
    nop                                           ; $61c2: $00
    pop bc                                        ; $61c3: $c1

jr_063_61c4:
    ld bc, $afe0                                  ; $61c4: $01 $e0 $af
    ld b, b                                       ; $61c7: $40
    db $e3                                        ; $61c8: $e3
    ld b, e                                       ; $61c9: $43
    dec hl                                        ; $61ca: $2b
    jr z, jr_063_6189                             ; $61cb: $28 $bc

    cp a                                          ; $61cd: $bf
    ld [hl], $47                                  ; $61ce: $36 $47
    ld h, c                                       ; $61d0: $61
    ld e, l                                       ; $61d1: $5d
    ld d, d                                       ; $61d2: $52
    ld b, l                                       ; $61d3: $45
    rst $28                                       ; $61d4: $ef
    pop hl                                        ; $61d5: $e1
    sbc [hl]                                      ; $61d6: $9e
    ldh [$62], a                                  ; $61d7: $e0 $62
    call nz, $a6fc                                ; $61d9: $c4 $fc $a6
    add b                                         ; $61dc: $80
    ret nc                                        ; $61dd: $d0

    nop                                           ; $61de: $00
    pop bc                                        ; $61df: $c1
    ret nz                                        ; $61e0: $c0

    ret z                                         ; $61e1: $c8

    xor [hl]                                      ; $61e2: $ae
    ld [hl], $35                                  ; $61e3: $36 $35
    cp a                                          ; $61e5: $bf
    dec [hl]                                      ; $61e6: $35
    jr c, jr_063_6220                             ; $61e7: $38 $37

    ld d, e                                       ; $61e9: $53
    ld d, e                                       ; $61ea: $53
    ld b, l                                       ; $61eb: $45
    dec sp                                        ; $61ec: $3b
    pop hl                                        ; $61ed: $e1
    and c                                         ; $61ee: $a1
    ret nz                                        ; $61ef: $c0

    sbc c                                         ; $61f0: $99
    and b                                         ; $61f1: $a0
    db $fc                                        ; $61f2: $fc
    and e                                         ; $61f3: $a3
    ld hl, sp-$5f                                 ; $61f4: $f8 $a1
    add b                                         ; $61f6: $80
    db $d3                                        ; $61f7: $d3
    add d                                         ; $61f8: $82
    and e                                         ; $61f9: $a3
    ld a, a                                       ; $61fa: $7f
    add $af                                       ; $61fb: $c6 $af
    ld b, l                                       ; $61fd: $45
    cp $bf                                        ; $61fe: $fe $bf
    ldh [$35], a                                  ; $6200: $e0 $35
    dec [hl]                                      ; $6202: $35
    dec sp                                        ; $6203: $3b
    add hl, sp                                    ; $6204: $39
    ld b, a                                       ; $6205: $47
    ld d, d                                       ; $6206: $52
    ld b, l                                       ; $6207: $45
    nop                                           ; $6208: $00
    add hl, sp                                    ; $6209: $39
    pop bc                                        ; $620a: $c1
    or $a0                                        ; $620b: $f6 $a0
    ld h, d                                       ; $620d: $62
    and l                                         ; $620e: $a5
    add b                                         ; $620f: $80
    db $d3                                        ; $6210: $d3
    nop                                           ; $6211: $00
    pop bc                                        ; $6212: $c1
    ld a, [hl]                                    ; $6213: $7e
    ldh [$bd], a                                  ; $6214: $e0 $bd
    ret nz                                        ; $6216: $c0

    db $fd                                        ; $6217: $fd
    ret nz                                        ; $6218: $c0

    cp a                                          ; $6219: $bf
    inc bc                                        ; $621a: $03
    inc b                                         ; $621b: $04
    inc b                                         ; $621c: $04
    inc bc                                        ; $621d: $03
    ld b, l                                       ; $621e: $45
    ld a, [hl-]                                   ; $621f: $3a

jr_063_6220:
    cp a                                          ; $6220: $bf
    pop hl                                        ; $6221: $e1
    ld a, [hl-]                                   ; $6222: $3a
    rlca                                          ; $6223: $07
    ld c, e                                       ; $6224: $4b
    ld h, c                                       ; $6225: $61
    ld d, l                                       ; $6226: $55
    ld a, h                                       ; $6227: $7c
    call nz, $a5f8                                ; $6228: $c4 $f8 $a5
    add b                                         ; $622b: $80
    db $d3                                        ; $622c: $d3
    nop                                           ; $622d: $00
    and h                                         ; $622e: $a4
    db $fd                                        ; $622f: $fd
    jp nz, Jump_000_057f                          ; $6230: $c2 $7f $05

    stop                                          ; $6233: $10 $00
    ld bc, $0510                                  ; $6235: $01 $10 $05
    add hl, sp                                    ; $6238: $39

Jump_063_6239:
    ld a, a                                       ; $6239: $7f
    pop hl                                        ; $623a: $e1
    inc bc                                        ; $623b: $03
    dec [hl]                                      ; $623c: $35
    ld c, d                                       ; $623d: $4a
    ret nz                                        ; $623e: $c0

    db $e3                                        ; $623f: $e3

jr_063_6240:
    dec sp                                        ; $6240: $3b
    pop bc                                        ; $6241: $c1
    ld e, d                                       ; $6242: $5a
    and d                                         ; $6243: $a2
    ld a, [hl]                                    ; $6244: $7e
    call nz, $b000                                ; $6245: $c4 $00 $b0
    ld a, [hl]                                    ; $6248: $7e
    db $e3                                        ; $6249: $e3
    cp $bd                                        ; $624a: $fe $bd
    and c                                         ; $624c: $a1
    ld b, $98                                     ; $624d: $06 $98
    sbc b                                         ; $624f: $98
    sbc b                                         ; $6250: $98
    sbc c                                         ; $6251: $99
    ld b, $45                                     ; $6252: $06 $45
    ld a, e                                       ; $6254: $7b
    scf                                           ; $6255: $37
    jr c, jr_063_6295                             ; $6256: $38 $3d

    ldh [$39], a                                  ; $6258: $e0 $39
    ld e, [hl]                                    ; $625a: $5e
    ld c, c                                       ; $625b: $49
    ld c, b                                       ; $625c: $48
    push af                                       ; $625d: $f5
    and d                                         ; $625e: $a2
    rst $00                                       ; $625f: $c7
    sbc h                                         ; $6260: $9c
    sbc l                                         ; $6261: $9d
    and d                                         ; $6262: $a2
    ld hl, sp-$5b                                 ; $6263: $f8 $a5
    add b                                         ; $6265: $80
    pop de                                        ; $6266: $d1
    ld a, [hl]                                    ; $6267: $7e
    jp hl                                         ; $6268: $e9


    ld [$bf98], sp                                ; $6269: $08 $98 $bf
    sub a                                         ; $626c: $97
    sub a                                         ; $626d: $97
    sbc b                                         ; $626e: $98
    rrca                                          ; $626f: $0f
    ld [bc], a                                    ; $6270: $02
    ld b, [hl]                                    ; $6271: $46
    db $fc                                        ; $6272: $fc
    pop bc                                        ; $6273: $c1
    ld a, [hl-]                                   ; $6274: $3a
    ld l, a                                       ; $6275: $6f
    ld b, a                                       ; $6276: $47
    ld h, c                                       ; $6277: $61
    ld h, b                                       ; $6278: $60
    ld b, d                                       ; $6279: $42
    jr z, jr_063_6240                             ; $627a: $28 $c4

    sbc h                                         ; $627c: $9c
    sbc a                                         ; $627d: $9f
    halt                                          ; $627e: $76
    add h                                         ; $627f: $84
    db $f4                                        ; $6280: $f4
    nop                                           ; $6281: $00
    or d                                          ; $6282: $b2
    ld a, [hl]                                    ; $6283: $7e
    push hl                                       ; $6284: $e5
    sbc [hl]                                      ; $6285: $9e
    ret nz                                        ; $6286: $c0

    pop hl                                        ; $6287: $e1
    sbc b                                         ; $6288: $98
    ld bc, $0f00                                  ; $6289: $01 $00 $0f
    rst $30                                       ; $628c: $f7
    rlca                                          ; $628d: $07
    inc b                                         ; $628e: $04
    inc bc                                        ; $628f: $03
    ld a, d                                       ; $6290: $7a
    ret nz                                        ; $6291: $c0

    ld [hl], $53                                  ; $6292: $36 $53
    ld d, e                                       ; $6294: $53

jr_063_6295:
    ld b, h                                       ; $6295: $44
    inc c                                         ; $6296: $0c
    or b                                          ; $6297: $b0
    ret nz                                        ; $6298: $c0

    ld l, h                                       ; $6299: $6c
    pop bc                                        ; $629a: $c1
    ld b, [hl]                                    ; $629b: $46
    sbc [hl]                                      ; $629c: $9e
    halt                                          ; $629d: $76
    add l                                         ; $629e: $85
    cp l                                          ; $629f: $bd
    and e                                         ; $62a0: $a3
    nop                                           ; $62a1: $00
    xor l                                         ; $62a2: $ad
    db $fc                                        ; $62a3: $fc
    ld h, e                                       ; $62a4: $63
    ld sp, hl                                     ; $62a5: $f9
    and c                                         ; $62a6: $a1
    ld b, b                                       ; $62a7: $40
    ldh [$80], a                                  ; $62a8: $e0 $80
    ldh [$98], a                                  ; $62aa: $e0 $98
    sbc b                                         ; $62ac: $98
    nop                                           ; $62ad: $00
    ld bc, $bd0d                                  ; $62ae: $01 $0d $bd
    ld [bc], a                                    ; $62b1: $02
    add hl, sp                                    ; $62b2: $39
    ret nz                                        ; $62b3: $c0

    ld h, d                                       ; $62b4: $62
    ld h, [hl]                                    ; $62b5: $66
    jr c, jr_063_62ef                             ; $62b6: $38 $37

    inc sp                                        ; $62b8: $33
    and d                                         ; $62b9: $a2
    xor a                                         ; $62ba: $af
    ldh a, [$f7]                                  ; $62bb: $f0 $f7
    and c                                         ; $62bd: $a1
    db $f4                                        ; $62be: $f4
    ld h, l                                       ; $62bf: $65
    nop                                           ; $62c0: $00
    xor a                                         ; $62c1: $af
    db $fc                                        ; $62c2: $fc
    push bc                                       ; $62c3: $c5
    sbc a                                         ; $62c4: $9f
    sbc h                                         ; $62c5: $9c
    dec b                                         ; $62c6: $05
    ld c, $fc                                     ; $62c7: $0e $fc
    ccf                                           ; $62c9: $3f
    ldh [$be], a                                  ; $62ca: $e0 $be
    pop hl                                        ; $62cc: $e1
    sbc c                                         ; $62cd: $99
    ld [$3a45], sp                                ; $62ce: $08 $45 $3a
    ld h, d                                       ; $62d1: $62
    ld h, a                                       ; $62d2: $67
    rrca                                          ; $62d3: $0f
    ld l, b                                       ; $62d4: $68
    ld h, [hl]                                    ; $62d5: $66
    dec [hl]                                      ; $62d6: $35
    add hl, sp                                    ; $62d7: $39
    or $86                                        ; $62d8: $f6 $86
    halt                                          ; $62da: $76
    add e                                         ; $62db: $83
    scf                                           ; $62dc: $37
    add e                                         ; $62dd: $83
    add b                                         ; $62de: $80
    ld l, b                                       ; $62df: $68
    call c, $687a                                 ; $62e0: $dc $7a $68
    ld a, d                                       ; $62e3: $7a
    add b                                         ; $62e4: $80
    ld [bc], a                                    ; $62e5: $02
    dec c                                         ; $62e6: $0d
    sbc b                                         ; $62e7: $98
    db $fd                                        ; $62e8: $fd
    pop bc                                        ; $62e9: $c1
    ld bc, $ff00                                  ; $62ea: $01 $00 $ff
    ld b, $46                                     ; $62ed: $06 $46

jr_063_62ef:
    add hl, sp                                    ; $62ef: $39
    ld l, c                                       ; $62f0: $69
    dec [hl]                                      ; $62f1: $35
    dec [hl]                                      ; $62f2: $35
    ld l, b                                       ; $62f3: $68
    ld h, [hl]                                    ; $62f4: $66
    ld bc, $b23a                                  ; $62f5: $01 $3a $b2
    add h                                         ; $62f8: $84
    halt                                          ; $62f9: $76
    and c                                         ; $62fa: $a1
    ld a, d                                       ; $62fb: $7a
    ld h, a                                       ; $62fc: $67
    or [hl]                                       ; $62fd: $b6
    ld h, a                                       ; $62fe: $67
    ld a, d                                       ; $62ff: $7a
    ld h, e                                       ; $6300: $63
    sbc [hl]                                      ; $6301: $9e
    ld h, c                                       ; $6302: $61
    ld a, d                                       ; $6303: $7a
    and b                                         ; $6304: $a0
    or $39                                        ; $6305: $f6 $39
    add b                                         ; $6307: $80
    inc bc                                        ; $6308: $03
    inc b                                         ; $6309: $04
    cp [hl]                                       ; $630a: $be
    pop hl                                        ; $630b: $e1
    sbc b                                         ; $630c: $98
    ld c, $05                                     ; $630d: $0e $05
    xor [hl]                                      ; $630f: $ae
    daa                                           ; $6310: $27
    ld b, d                                       ; $6311: $42
    ld l, e                                       ; $6312: $6b
    ld l, h                                       ; $6313: $6c
    cp a                                          ; $6314: $bf
    pop hl                                        ; $6315: $e1
    ld a, a                                       ; $6316: $7f
    db $e4                                        ; $6317: $e4
    sbc [hl]                                      ; $6318: $9e
    halt                                          ; $6319: $76
    add d                                         ; $631a: $82
    nop                                           ; $631b: $00
    xor [hl]                                      ; $631c: $ae
    ld hl, sp+$7a                                 ; $631d: $f8 $7a
    ld h, h                                       ; $631f: $64
    db $fc                                        ; $6320: $fc
    ld b, l                                       ; $6321: $45
    ld hl, sp+$61                                 ; $6322: $f8 $61
    inc bc                                        ; $6324: $03
    inc b                                         ; $6325: $04
    rrca                                          ; $6326: $0f
    sbc b                                         ; $6327: $98
    sbc b                                         ; $6328: $98
    cp a                                          ; $6329: $bf
    ld [$af46], sp                                ; $632a: $08 $46 $af
    ld b, d                                       ; $632d: $42
    ld l, [hl]                                    ; $632e: $6e
    ld [hl], h                                    ; $632f: $74
    ld [hl], a                                    ; $6330: $77
    and b                                         ; $6331: $a0
    ld l, d                                       ; $6332: $6a
    nop                                           ; $6333: $00
    ld a, a                                       ; $6334: $7f
    ldh [$b6], a                                  ; $6335: $e0 $b6
    add e                                         ; $6337: $83
    ld e, d                                       ; $6338: $5a
    ld h, d                                       ; $6339: $62
    add b                                         ; $633a: $80
    ld [hl], b                                    ; $633b: $70
    and [hl]                                      ; $633c: $a6
    ld h, c                                       ; $633d: $61
    db $fc                                        ; $633e: $fc
    and l                                         ; $633f: $a5
    or a                                          ; $6340: $b7
    ld h, e                                       ; $6341: $63
    ld a, [$1aa0]                                 ; $6342: $fa $a0 $1a
    inc a                                         ; $6345: $3c
    pop bc                                        ; $6346: $c1
    ld a, [hl-]                                   ; $6347: $3a
    ld a, a                                       ; $6348: $7f
    ldh [$6c], a                                  ; $6349: $e0 $6c
    ld l, l                                       ; $634b: $6d
    ccf                                           ; $634c: $3f
    ldh [$a5], a                                  ; $634d: $e0 $a5
    add b                                         ; $634f: $80
    nop                                           ; $6350: $00
    db $e4                                        ; $6351: $e4
    ldh a, [$7a]                                  ; $6352: $f0 $7a
    ld h, l                                       ; $6354: $65
    nop                                           ; $6355: $00
    xor e                                         ; $6356: $ab
    ld a, [hl]                                    ; $6357: $7e
    rst $00                                       ; $6358: $c7
    ld l, d                                       ; $6359: $6a
    ld b, b                                       ; $635a: $40
    and c                                         ; $635b: $a1
    ld b, [hl]                                    ; $635c: $46
    xor [hl]                                      ; $635d: $ae
    dec b                                         ; $635e: $05
    db $fd                                        ; $635f: $fd
    sbc c                                         ; $6360: $99
    cp a                                          ; $6361: $bf
    ld [c], a                                     ; $6362: $e2
    add hl, sp                                    ; $6363: $39
    ld l, [hl]                                    ; $6364: $6e
    ld [hl], b                                    ; $6365: $70
    ld [hl], c                                    ; $6366: $71
    ld [hl], b                                    ; $6367: $70
    ld l, [hl]                                    ; $6368: $6e
    nop                                           ; $6369: $00
    cp a                                          ; $636a: $bf
    jp $81b7                                      ; $636b: $c3 $b7 $81


    ld a, d                                       ; $636e: $7a
    ld l, b                                       ; $636f: $68
    ld b, e                                       ; $6370: $43
    ld [$a27e], a                                 ; $6371: $ea $7e $a2
    ld a, d                                       ; $6374: $7a
    ld b, l                                       ; $6375: $45
    ld [hl], $81                                  ; $6376: $36 $81
    ret nz                                        ; $6378: $c0

    ldh [rDIV], a                                 ; $6379: $e0 $04
    cp d                                          ; $637b: $ba
    and c                                         ; $637c: $a1
    ld hl, sp-$7e                                 ; $637d: $f8 $82
    ld [hl], $fd                                  ; $637f: $36 $fd
    and b                                         ; $6381: $a0
    scf                                           ; $6382: $37
    add e                                         ; $6383: $83
    halt                                          ; $6384: $76
    ld b, l                                       ; $6385: $45
    add b                                         ; $6386: $80
    pop de                                        ; $6387: $d1
    db $fc                                        ; $6388: $fc
    add l                                         ; $6389: $85
    cp h                                          ; $638a: $bc
    cp e                                          ; $638b: $bb
    ld b, e                                       ; $638c: $43
    ld a, [hl-]                                   ; $638d: $3a
    and c                                         ; $638e: $a1
    nop                                           ; $638f: $00
    ld bc, $020f                                  ; $6390: $01 $0f $02
    ld hl, sp-$80                                 ; $6393: $f8 $80
    ld a, [hl-]                                   ; $6395: $3a
    dec bc                                        ; $6396: $0b
    ld b, a                                       ; $6397: $47
    ld b, a                                       ; $6398: $47
    inc a                                         ; $6399: $3c
    and e                                         ; $639a: $a3
    sbc a                                         ; $639b: $9f
    db $f4                                        ; $639c: $f4
    dec h                                         ; $639d: $25
    add b                                         ; $639e: $80
    jp nc, Jump_000_23fc                          ; $639f: $d2 $fc $23

    cp e                                          ; $63a2: $bb
    ld b, e                                       ; $63a3: $43
    db $fc                                        ; $63a4: $fc
    ret nz                                        ; $63a5: $c0

    pop bc                                        ; $63a6: $c1
    db $fd                                        ; $63a7: $fd
    and d                                         ; $63a8: $a2
    rrca                                          ; $63a9: $0f
    dec b                                         ; $63aa: $05
    inc a                                         ; $63ab: $3c
    dec [hl]                                      ; $63ac: $35
    ld a, [hl-]                                   ; $63ad: $3a
    ld d, d                                       ; $63ae: $52
    inc bc                                        ; $63af: $03
    ld h, c                                       ; $63b0: $61
    ld e, h                                       ; $63b1: $5c
    push af                                       ; $63b2: $f5
    ld b, h                                       ; $63b3: $44
    halt                                          ; $63b4: $76
    ld b, e                                       ; $63b5: $43
    add b                                         ; $63b6: $80
    db $d3                                        ; $63b7: $d3
    ld a, [hl]                                    ; $63b8: $7e
    add l                                         ; $63b9: $85
    dec sp                                        ; $63ba: $3b
    ld h, b                                       ; $63bb: $60
    cp $a3                                        ; $63bc: $fe $a3
    ld a, [de]                                    ; $63be: $1a
    cp h                                          ; $63bf: $bc
    and d                                         ; $63c0: $a2
    ld b, $37                                     ; $63c1: $06 $37
    add b                                         ; $63c3: $80
    add hl, sp                                    ; $63c4: $39
    ld e, [hl]                                    ; $63c5: $5e
    ld a, a                                       ; $63c6: $7f
    db $e3                                        ; $63c7: $e3
    ld [hl], l                                    ; $63c8: $75
    ld h, c                                       ; $63c9: $61
    nop                                           ; $63ca: $00
    or l                                          ; $63cb: $b5
    call c, $43fc                                 ; $63cc: $dc $fc $43
    dec a                                         ; $63cf: $3d
    ld b, c                                       ; $63d0: $41
    xor a                                         ; $63d1: $af
    ld b, [hl]                                    ; $63d2: $46
    ld [bc], a                                    ; $63d3: $02
    add e                                         ; $63d4: $83
    ldh [$97], a                                  ; $63d5: $e0 $97
    sub [hl]                                      ; $63d7: $96
    ld e, $3b                                     ; $63d8: $1e $3b
    and b                                         ; $63da: $a0
    sbc c                                         ; $63db: $99
    ld bc, $0800                                  ; $63dc: $01 $00 $08
    ccf                                           ; $63df: $3f
    pop hl                                        ; $63e0: $e1
    ld a, a                                       ; $63e1: $7f
    db $e3                                        ; $63e2: $e3
    cp $80                                        ; $63e3: $fe $80
    inc l                                         ; $63e5: $2c
    nop                                           ; $63e6: $00
    cp l                                          ; $63e7: $bd
    add a                                         ; $63e8: $87
    ret nz                                        ; $63e9: $c0

    ld b, [hl]                                    ; $63ea: $46
    ld b, [hl]                                    ; $63eb: $46
    ccf                                           ; $63ec: $3f
    and c                                         ; $63ed: $a1
    sub [hl]                                      ; $63ee: $96
    pop bc                                        ; $63ef: $c1
    ldh [$fe], a                                  ; $63f0: $e0 $fe
    add b                                         ; $63f2: $80
    ld l, a                                       ; $63f3: $6f
    rlca                                          ; $63f4: $07
    rlca                                          ; $63f5: $07
    ld [bc], a                                    ; $63f6: $02
    ld b, h                                       ; $63f7: $44
    ccf                                           ; $63f8: $3f
    ldh [rSCX], a                                 ; $63f9: $e0 $43
    ld e, e                                       ; $63fb: $5b
    jr nc, jr_063_643f                            ; $63fc: $30 $41

    nop                                           ; $63fe: $00
    cp $80                                        ; $63ff: $fe $80
    nop                                           ; $6401: $00
    cp e                                          ; $6402: $bb
    db $fc                                        ; $6403: $fc
    ld hl, $40bd                                  ; $6404: $21 $bd $40
    cp a                                          ; $6407: $bf
    add b                                         ; $6408: $80
    pop bc                                        ; $6409: $c1
    ldh [$3c], a                                  ; $640a: $e0 $3c
    add b                                         ; $640c: $80
    ld a, c                                       ; $640d: $79
    ld h, b                                       ; $640e: $60
    inc de                                        ; $640f: $13
    scf                                           ; $6410: $37
    dec a                                         ; $6411: $3d
    ld sp, hl                                     ; $6412: $f9
    ld h, b                                       ; $6413: $60
    nop                                           ; $6414: $00
    and e                                         ; $6415: $a3
    xor [hl]                                      ; $6416: $ae
    nop                                           ; $6417: $00
    and $7a                                       ; $6418: $e6 $7a
    ld h, e                                       ; $641a: $63
    nop                                           ; $641b: $00
    xor a                                         ; $641c: $af
    and [hl]                                      ; $641d: $a6
    ld a, [hl]                                    ; $641e: $7e

jr_063_641f:
    ld h, e                                       ; $641f: $63
    ld b, [hl]                                    ; $6420: $46
    ld [$c045], sp                                ; $6421: $08 $45 $c0
    ld b, d                                       ; $6424: $42
    pop hl                                        ; $6425: $e1
    ld [$60fd], sp                                ; $6426: $08 $fd $60
    ld h, d                                       ; $6429: $62
    ccf                                           ; $642a: $3f
    ld h, e                                       ; $642b: $63
    ld h, h                                       ; $642c: $64
    ld h, h                                       ; $642d: $64
    ld h, h                                       ; $642e: $64
    ld a, h                                       ; $642f: $7c
    ld a, l                                       ; $6430: $7d
    ld a, a                                       ; $6431: $7f
    add [hl]                                      ; $6432: $86
    ld hl, sp+$28                                 ; $6433: $f8 $28
    ldh [rP1], a                                  ; $6435: $e0 $00
    xor a                                         ; $6437: $af
    nop                                           ; $6438: $00
    add e                                         ; $6439: $83
    cp a                                          ; $643a: $bf
    ld h, c                                       ; $643b: $61
    add c                                         ; $643c: $81
    pop hl                                        ; $643d: $e1
    add c                                         ; $643e: $81

jr_063_643f:
    add b                                         ; $643f: $80
    ld [hl], $62                                  ; $6440: $36 $62
    ld h, a                                       ; $6442: $67
    ld b, $fa                                     ; $6443: $06 $fa

jr_063_6445:
    ld b, c                                       ; $6445: $41
    ld b, l                                       ; $6446: $45
    ld a, a                                       ; $6447: $7f
    cp a                                          ; $6448: $bf
    ld [c], a                                     ; $6449: $e2
    ld [hl], l                                    ; $644a: $75
    jr nz, jr_063_6445                            ; $644b: $20 $f8

    jr z, jr_063_644f                             ; $644d: $28 $00

jr_063_644f:
    or h                                          ; $644f: $b4
    ld a, d                                       ; $6450: $7a
    jr nz, jr_063_641f                            ; $6451: $20 $cc

    ld b, b                                       ; $6453: $40
    pop hl                                        ; $6454: $e1
    cp l                                          ; $6455: $bd
    ld h, c                                       ; $6456: $61
    ld c, $05                                     ; $6457: $0e $05
    ld b, d                                       ; $6459: $42
    and c                                         ; $645a: $a1
    ld b, c                                       ; $645b: $41
    pop hl                                        ; $645c: $e1
    xor [hl]                                      ; $645d: $ae
    add c                                         ; $645e: $81
    ret nz                                        ; $645f: $c0

    ld [hl], l                                    ; $6460: $75
    inc h                                         ; $6461: $24
    halt                                          ; $6462: $76
    jr z, jr_063_6465                             ; $6463: $28 $00

jr_063_6465:
    or h                                          ; $6465: $b4
    cp e                                          ; $6466: $bb
    nop                                           ; $6467: $00
    ret nz                                        ; $6468: $c0

    jp nz, $c182                                  ; $6469: $c2 $82 $c1

    ld b, $39                                     ; $646c: $06 $39
    scf                                           ; $646e: $37
    ld l, [hl]                                    ; $646f: $6e
    ld l, a                                       ; $6470: $6f
    ld l, h                                       ; $6471: $6c
    add c                                         ; $6472: $81
    ldh [rDMA], a                                 ; $6473: $e0 $46
    xor a                                         ; $6475: $af
    ret nz                                        ; $6476: $c0

    ldh [$64], a                                  ; $6477: $e0 $64
    ld hl, $a1c1                                  ; $6479: $21 $c1 $a1
    halt                                          ; $647c: $76
    daa                                           ; $647d: $27

Jump_063_647e:
    nop                                           ; $647e: $00
    or l                                          ; $647f: $b5
    ld a, d                                       ; $6480: $7a
    ld bc, $617e                                  ; $6481: $01 $7e $61
    ld a, h                                       ; $6484: $7c
    ld h, c                                       ; $6485: $61
    rrca                                          ; $6486: $0f
    ld [bc], a                                    ; $6487: $02
    add hl, de                                    ; $6488: $19
    ld [hl], $80                                  ; $6489: $36 $80
    add b                                         ; $648b: $80
    ld [bc], a                                    ; $648c: $02
    add c                                         ; $648d: $81
    adc h                                         ; $648e: $8c
    ld a, l                                       ; $648f: $7d
    ld h, h                                       ; $6490: $64
    ld [hl+], a                                   ; $6491: $22
    ld a, [hl]                                    ; $6492: $7e
    and [hl]                                      ; $6493: $a6
    nop                                           ; $6494: $00
    or a                                          ; $6495: $b7
    ld [hl], b                                    ; $6496: $70
    jr c, @+$23                                   ; $6497: $38 $21

    ld a, [hl]                                    ; $6499: $7e
    ld h, b                                       ; $649a: $60
    db $fc                                        ; $649b: $fc
    ld b, b                                       ; $649c: $40
    dec sp                                        ; $649d: $3b
    ld h, b                                       ; $649e: $60
    ld c, $05                                     ; $649f: $0e $05
    ld [hl], $ff                                  ; $64a1: $36 $ff
    ld h, b                                       ; $64a3: $60
    ld bc, $7336                                  ; $64a4: $01 $36 $73
    nop                                           ; $64a7: $00
    ccf                                           ; $64a8: $3f
    ld [c], a                                     ; $64a9: $e2
    db $fd                                        ; $64aa: $fd
    ld b, b                                       ; $64ab: $40
    ld a, [hl]                                    ; $64ac: $7e
    ld h, h                                       ; $64ad: $64
    nop                                           ; $64ae: $00
    cp b                                          ; $64af: $b8
    ld a, [hl]                                    ; $64b0: $7e
    ld h, l                                       ; $64b1: $65
    db $fd                                        ; $64b2: $fd
    ld b, d                                       ; $64b3: $42
    ld a, e                                       ; $64b4: $7b
    ld b, $42                                     ; $64b5: $06 $42
    ld a, $e1                                     ; $64b7: $3e $e1
    ld [hl], $45                                  ; $64b9: $36 $45
    add e                                         ; $64bb: $83
    add h                                         ; $64bc: $84
    db $fd                                        ; $64bd: $fd
    ld b, d                                       ; $64be: $42
    add sp, -$07                                  ; $64bf: $e8 $f9
    ld [hl+], a                                   ; $64c1: $22
    nop                                           ; $64c2: $00
    or a                                          ; $64c3: $b7
    nop                                           ; $64c4: $00
    add l                                         ; $64c5: $85
    and c                                         ; $64c6: $a1
    ld a, l                                       ; $64c7: $7d
    jr nz, jr_063_64d1                            ; $64c8: $20 $07

    dec c                                         ; $64ca: $0d
    ld bc, $00e7                                  ; $64cb: $01 $e7 $00
    sbc c                                         ; $64ce: $99
    dec c                                         ; $64cf: $0d
    pop bc                                        ; $64d0: $c1

jr_063_64d1:
    add b                                         ; $64d1: $80
    ccf                                           ; $64d2: $3f
    add b                                         ; $64d3: $80
    ld [hl], c                                    ; $64d4: $71
    adc b                                         ; $64d5: $88
    add a                                         ; $64d6: $87
    ld bc, $6585                                  ; $64d7: $01 $85 $65
    ld [bc], a                                    ; $64da: $02
    ld a, [hl]                                    ; $64db: $7e
    add h                                         ; $64dc: $84
    nop                                           ; $64dd: $00
    or l                                          ; $64de: $b5
    ld a, d                                       ; $64df: $7a
    daa                                           ; $64e0: $27
    cp l                                          ; $64e1: $bd
    add d                                         ; $64e2: $82
    ld a, $40                                     ; $64e3: $3e $40
    add hl, sp                                    ; $64e5: $39
    inc hl                                        ; $64e6: $23
    nop                                           ; $64e7: $00
    ld a, $e1                                     ; $64e8: $3e $e1
    ld h, l                                       ; $64ea: $65
    ld [bc], a                                    ; $64eb: $02
    ld a, [hl]                                    ; $64ec: $7e
    ld b, e                                       ; $64ed: $43
    nop                                           ; $64ee: $00
    or [hl]                                       ; $64ef: $b6
    ld a, [hl]                                    ; $64f0: $7e
    add $cf                                       ; $64f1: $c6 $cf
    inc hl                                        ; $64f3: $23
    inc sp                                        ; $64f4: $33
    nop                                           ; $64f5: $00
    ld a, [hl-]                                   ; $64f6: $3a
    inc hl                                        ; $64f7: $23
    nop                                           ; $64f8: $00
    ld a, [hl]                                    ; $64f9: $7e
    and l                                         ; $64fa: $a5
    nop                                           ; $64fb: $00
    pop bc                                        ; $64fc: $c1
    ld a, [hl]                                    ; $64fd: $7e
    ld h, e                                       ; $64fe: $63
    nop                                           ; $64ff: $00
    ld d, l                                       ; $6500: $55
    ld a, [hl]                                    ; $6501: $7e
    ld h, c                                       ; $6502: $61
    cp [hl]                                       ; $6503: $be
    and b                                         ; $6504: $a0
    rst $08                                       ; $6505: $cf
    ld hl, $610f                                  ; $6506: $21 $0f $61
    nop                                           ; $6509: $00
    add c                                         ; $650a: $81
    db $e4                                        ; $650b: $e4
    cp l                                          ; $650c: $bd
    and c                                         ; $650d: $a1
    nop                                           ; $650e: $00
    adc d                                         ; $650f: $8a
    nop                                           ; $6510: $00
    ld d, b                                       ; $6511: $50
    add d                                         ; $6512: $82
    ld h, e                                       ; $6513: $63
    ld a, [hl]                                    ; $6514: $7e
    ld h, c                                       ; $6515: $61
    ret nz                                        ; $6516: $c0

    pop hl                                        ; $6517: $e1
    cp l                                          ; $6518: $bd
    db $e3                                        ; $6519: $e3
    nop                                           ; $651a: $00
    ld a, [hl-]                                   ; $651b: $3a
    inc bc                                        ; $651c: $03
    ret nz                                        ; $651d: $c0

    and $82                                       ; $651e: $e6 $82
    add b                                         ; $6520: $80
    nop                                           ; $6521: $00
    ld d, h                                       ; $6522: $54
    ld a, [hl]                                    ; $6523: $7e
    rlca                                          ; $6524: $07
    ld a, [hl]                                    ; $6525: $7e
    and e                                         ; $6526: $a3
    ld b, d                                       ; $6527: $42
    db $e3                                        ; $6528: $e3
    pop bc                                        ; $6529: $c1
    rst $20                                       ; $652a: $e7
    ld [bc], a                                    ; $652b: $02
    cp [hl]                                       ; $652c: $be
    inc hl                                        ; $652d: $23
    and c                                         ; $652e: $a1
    add d                                         ; $652f: $82
    dec h                                         ; $6530: $25
    add b                                         ; $6531: $80
    rrca                                          ; $6532: $0f
    inc b                                         ; $6533: $04
    ld h, l                                       ; $6534: $65
    nop                                           ; $6535: $00
    ld h, c                                       ; $6536: $61
    add b                                         ; $6537: $80
    db $e4                                        ; $6538: $e4
    ld a, a                                       ; $6539: $7f
    inc bc                                        ; $653a: $03
    nop                                           ; $653b: $00
    nop                                           ; $653c: $00
    db $e3                                        ; $653d: $e3
    cp $a1                                        ; $653e: $fe $a1
    ld b, c                                       ; $6540: $41
    ld b, b                                       ; $6541: $40
    add d                                         ; $6542: $82
    inc h                                         ; $6543: $24
    add b                                         ; $6544: $80
    db $10                                        ; $6545: $10
    add d                                         ; $6546: $82
    rst $20                                       ; $6547: $e7
    db $fc                                        ; $6548: $fc
    ld h, h                                       ; $6549: $64
    add e                                         ; $654a: $83
    jp hl                                         ; $654b: $e9


    jr nz, @+$01                                  ; $654c: $20 $ff

    inc b                                         ; $654e: $04
    inc bc                                        ; $654f: $03
    pop bc                                        ; $6550: $c1
    add [hl]                                      ; $6551: $86
    add d                                         ; $6552: $82

jr_063_6553:
    add b                                         ; $6553: $80
    ld [hl], b                                    ; $6554: $70
    inc b                                         ; $6555: $04
    ld b, e                                       ; $6556: $43
    and b                                         ; $6557: $a0
    jr nz, jr_063_657a                            ; $6558: $20 $20

    add e                                         ; $655a: $83
    ld b, d                                       ; $655b: $42
    nop                                           ; $655c: $00
    dec b                                         ; $655d: $05
    jp hl                                         ; $655e: $e9


    pop bc                                        ; $655f: $c1
    inc bc                                        ; $6560: $03
    xor c                                         ; $6561: $a9
    ld h, b                                       ; $6562: $60
    add d                                         ; $6563: $82
    inc h                                         ; $6564: $24
    adc l                                         ; $6565: $8d
    ld b, [hl]                                    ; $6566: $46
    nop                                           ; $6567: $00
    ld c, a                                       ; $6568: $4f
    ld b, [hl]                                    ; $6569: $46
    ld b, b                                       ; $656a: $40
    add e                                         ; $656b: $83
    ld b, e                                       ; $656c: $43
    nop                                           ; $656d: $00
    ld b, a                                       ; $656e: $47
    rst $00                                       ; $656f: $c7
    add [hl]                                      ; $6570: $86
    jp $013e                                      ; $6571: $c3 $3e $01


    inc b                                         ; $6574: $04
    and h                                         ; $6575: $a4
    ld c, d                                       ; $6576: $4a
    rlca                                          ; $6577: $07
    ld b, e                                       ; $6578: $43
    add hl, hl                                    ; $6579: $29

jr_063_657a:
    inc b                                         ; $657a: $04
    inc h                                         ; $657b: $24
    add e                                         ; $657c: $83
    ld b, e                                       ; $657d: $43
    ret nz                                        ; $657e: $c0

    ld b, a                                       ; $657f: $47
    ret                                           ; $6580: $c9


    add h                                         ; $6581: $84
    ld bc, $a2f3                                  ; $6582: $01 $f3 $a2
    inc b                                         ; $6585: $04
    push bc                                       ; $6586: $c5
    dec c                                         ; $6587: $0d
    daa                                           ; $6588: $27
    add [hl]                                      ; $6589: $86
    dec c                                         ; $658a: $0d
    jp nc, Jump_000_00d3                          ; $658b: $d2 $d3 $00

    add e                                         ; $658e: $83
    ld b, e                                       ; $658f: $43
    ret z                                         ; $6590: $c8

    xor c                                         ; $6591: $a9
    dec b                                         ; $6592: $05
    ld [c], a                                     ; $6593: $e2
    add [hl]                                      ; $6594: $86
    adc d                                         ; $6595: $8a
    ld d, d                                       ; $6596: $52
    jp nz, $ce80                                  ; $6597: $c2 $80 $ce

    add [hl]                                      ; $659a: $86
    inc hl                                        ; $659b: $23
    add h                                         ; $659c: $84
    ld h, b                                       ; $659d: $60
    db $10                                        ; $659e: $10
    ld e, c                                       ; $659f: $59
    and d                                         ; $65a0: $a2
    ret z                                         ; $65a1: $c8

    and l                                         ; $65a2: $a5
    rst $00                                       ; $65a3: $c7
    call nz, Call_063_4186                        ; $65a4: $c4 $86 $41
    and c                                         ; $65a7: $a1
    inc b                                         ; $65a8: $04
    push bc                                       ; $65a9: $c5
    add [hl]                                      ; $65aa: $86
    ld h, c                                       ; $65ab: $61
    add b                                         ; $65ac: $80
    rst $08                                       ; $65ad: $cf
    ld [$2308], sp                                ; $65ae: $08 $08 $23
    ld b, $c6                                     ; $65b1: $06 $c6
    ld c, c                                       ; $65b3: $49
    and d                                         ; $65b4: $a2
    dec sp                                        ; $65b5: $3b
    ld c, d                                       ; $65b6: $4a
    jp $6405                                      ; $65b7: $c3 $05 $64


    add [hl]                                      ; $65ba: $86
    ld l, c                                       ; $65bb: $69
    nop                                           ; $65bc: $00
    ld d, c                                       ; $65bd: $51
    ld a, [hl-]                                   ; $65be: $3a
    ld [$a121], sp                                ; $65bf: $08 $21 $a1
    ld [bc], a                                    ; $65c2: $02
    add sp, $36                                   ; $65c3: $e8 $36
    ccf                                           ; $65c5: $3f
    ld b, e                                       ; $65c6: $43
    pop bc                                        ; $65c7: $c1
    and $86                                       ; $65c8: $e6 $86
    daa                                           ; $65ca: $27
    jr c, jr_063_6553                             ; $65cb: $38 $86

    ld h, e                                       ; $65cd: $63
    add b                                         ; $65ce: $80
    rst $08                                       ; $65cf: $cf
    add [hl]                                      ; $65d0: $86
    ld h, l                                       ; $65d1: $65
    ld b, [hl]                                    ; $65d2: $46
    ld b, l                                       ; $65d3: $45
    ld b, c                                       ; $65d4: $41
    rrca                                          ; $65d5: $0f
    ldh [$0d], a                                  ; $65d6: $e0 $0d
    ld b, b                                       ; $65d8: $40
    ld b, $84                                     ; $65d9: $06 $84
    and $9c                                       ; $65db: $e6 $9c
    sbc l                                         ; $65dd: $9d
    rst $38                                       ; $65de: $ff
    pop hl                                        ; $65df: $e1
    ld [$8684], sp                                ; $65e0: $08 $84 $86
    inc b                                         ; $65e3: $04
    add b                                         ; $65e4: $80
    rst $08                                       ; $65e5: $cf
    add d                                         ; $65e6: $82
    jp nz, $856e                                  ; $65e7: $c2 $6e $85

    ld b, b                                       ; $65ea: $40
    ld b, l                                       ; $65eb: $45
    ld [hl], $a6                                  ; $65ec: $36 $a6
    sub d                                         ; $65ee: $92
    ld h, b                                       ; $65ef: $60
    ld b, l                                       ; $65f0: $45
    ccf                                           ; $65f1: $3f
    cp d                                          ; $65f2: $ba
    pop hl                                        ; $65f3: $e1
    ld b, b                                       ; $65f4: $40
    dec c                                         ; $65f5: $0d
    inc h                                         ; $65f6: $24
    ld hl, $6a40                                  ; $65f7: $21 $40 $6a
    ld h, c                                       ; $65fa: $61
    add [hl]                                      ; $65fb: $86
    add hl, bc                                    ; $65fc: $09
    add b                                         ; $65fd: $80
    rst $08                                       ; $65fe: $cf
    add [hl]                                      ; $65ff: $86
    ld h, d                                       ; $6600: $62
    sbc [hl]                                      ; $6601: $9e
    db $10                                        ; $6602: $10
    ld b, c                                       ; $6603: $41
    inc bc                                        ; $6604: $03
    and a                                         ; $6605: $a7
    ld h, [hl]                                    ; $6606: $66
    add hl, bc                                    ; $6607: $09
    rst $20                                       ; $6608: $e7
    adc $41                                       ; $6609: $ce $41
    db $e4                                        ; $660b: $e4
    push bc                                       ; $660c: $c5
    add [hl]                                      ; $660d: $86
    add hl, bc                                    ; $660e: $09
    nop                                           ; $660f: $00
    or c                                          ; $6610: $b1
    add [hl]                                      ; $6611: $86
    ld bc, $1006                                  ; $6612: $01 $06 $10
    ld b, c                                       ; $6615: $41
    and e                                         ; $6616: $a3
    ld l, b                                       ; $6617: $68
    cp a                                          ; $6618: $bf
    rst $20                                       ; $6619: $e7
    adc e                                         ; $661a: $8b
    and d                                         ; $661b: $a2
    adc d                                         ; $661c: $8a
    and b                                         ; $661d: $a0
    adc d                                         ; $661e: $8a
    add c                                         ; $661f: $81
    add [hl]                                      ; $6620: $86
    add hl, bc                                    ; $6621: $09
    ld a, $00                                     ; $6622: $3e $00
    or e                                          ; $6624: $b3
    sbc [hl]                                      ; $6625: $9e
    ld b, [hl]                                    ; $6626: $46
    ld b, d                                       ; $6627: $42
    xor b                                         ; $6628: $a8
    xor c                                         ; $6629: $a9
    db $10                                        ; $662a: $10
    ld b, b                                       ; $662b: $40
    cp a                                          ; $662c: $bf
    rst $20                                       ; $662d: $e7
    ld h, b                                       ; $662e: $60
    adc e                                         ; $662f: $8b
    and d                                         ; $6630: $a2
    inc c                                         ; $6631: $0c
    add [hl]                                      ; $6632: $86
    add [hl]                                      ; $6633: $86
    rlca                                          ; $6634: $07
    nop                                           ; $6635: $00
    or c                                          ; $6636: $b1
    ld [$4581], sp                                ; $6637: $08 $81 $45
    ld [hl], $10                                  ; $663a: $36 $10
    ld b, c                                       ; $663c: $41
    rlca                                          ; $663d: $07
    and e                                         ; $663e: $a3
    xor d                                         ; $663f: $aa
    xor e                                         ; $6640: $ab
    ld b, [hl]                                    ; $6641: $46
    push bc                                       ; $6642: $c5
    ret nc                                        ; $6643: $d0

    ld b, b                                       ; $6644: $40
    ld [$86c7], sp                                ; $6645: $08 $c7 $86
    rst $00                                       ; $6648: $c7
    nop                                           ; $6649: $00
    or c                                          ; $664a: $b1
    inc e                                         ; $664b: $1c
    add d                                         ; $664c: $82
    and d                                         ; $664d: $a2
    cp a                                          ; $664e: $bf
    ld [c], a                                     ; $664f: $e2
    ld l, h                                       ; $6650: $6c
    ld l, a                                       ; $6651: $6f
    ld l, [hl]                                    ; $6652: $6e
    ld d, b                                       ; $6653: $50
    add d                                         ; $6654: $82
    add [hl]                                      ; $6655: $86
    ret nz                                        ; $6656: $c0

    add d                                         ; $6657: $82
    ld [$5000], a                                 ; $6658: $ea $00 $50
    add hl, bc                                    ; $665b: $09
    nop                                           ; $665c: $00
    xor a                                         ; $665d: $af
    add [hl]                                      ; $665e: $86
    add b                                         ; $665f: $80
    ld bc, $7ec0                                  ; $6660: $01 $c0 $7e
    pop hl                                        ; $6663: $e1
    pop bc                                        ; $6664: $c1
    ld [c], a                                     ; $6665: $e2
    jp $82e3                                      ; $6666: $c3 $e3 $82


    ld [$4320], a                                 ; $6669: $ea $20 $43
    ld [$b000], a                                 ; $666c: $ea $00 $b0
    add e                                         ; $666f: $83
    add b                                         ; $6670: $80
    ld a, [hl]                                    ; $6671: $7e
    ld [c], a                                     ; $6672: $e2
    add d                                         ; $6673: $82
    ldh [$9c], a                                  ; $6674: $e0 $9c
    rrca                                          ; $6676: $0f
    jp nz, $a46a                                  ; $6677: $c2 $6a $a4

    nop                                           ; $667a: $00
    adc [hl]                                      ; $667b: $8e
    inc b                                         ; $667c: $04
    ld b, e                                       ; $667d: $43
    db $eb                                        ; $667e: $eb
    nop                                           ; $667f: $00
    or b                                          ; $6680: $b0
    ld b, c                                       ; $6681: $41
    add e                                         ; $6682: $83
    pop de                                        ; $6683: $d1
    and l                                         ; $6684: $a5
    inc c                                         ; $6685: $0c
    jp $a78a                                      ; $6686: $c3 $8a $a7


    ld b, e                                       ; $6689: $43
    db $ec                                        ; $668a: $ec
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    or d                                          ; $668d: $b2
    cp $e9                                        ; $668e: $fe $e9
    inc c                                         ; $6690: $0c
    ret z                                         ; $6691: $c8

    add [hl]                                      ; $6692: $86
    adc $00                                       ; $6693: $ce $00
    or e                                          ; $6695: $b3
    sbc d                                         ; $6696: $9a
    and e                                         ; $6697: $a3
    add [hl]                                      ; $6698: $86
    jp hl                                         ; $6699: $e9


    sub d                                         ; $669a: $92
    ld b, l                                       ; $669b: $45
    nop                                           ; $669c: $00
    add [hl]                                      ; $669d: $86
    call Call_063_4387                            ; $669e: $cd $87 $43
    nop                                           ; $66a1: $00
    nop                                           ; $66a2: $00
    nop                                           ; $66a3: $00
    pop bc                                        ; $66a4: $c1
    nop                                           ; $66a5: $00
    rst $38                                       ; $66a6: $ff
    rst $38                                       ; $66a7: $ff
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    rst $38                                       ; $66aa: $ff
    rst $38                                       ; $66ab: $ff
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
    rst $38                                       ; $66ae: $ff
    rst $38                                       ; $66af: $ff
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    ld bc, $fe80                                  ; $66b2: $01 $80 $fe
    ldh [rIE], a                                  ; $66b5: $e0 $ff
    rst $38                                       ; $66b7: $ff
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    add sp, $00                                   ; $66bb: $e8 $00
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    ld [bc], a                                    ; $66bf: $02
    nop                                           ; $66c0: $00
    inc de                                        ; $66c1: $13
    ld [$0102], sp                                ; $66c2: $08 $02 $01
    inc h                                         ; $66c5: $24
    ld [$0202], sp                                ; $66c6: $08 $02 $02
    dec de                                        ; $66c9: $1b
    ld a, [bc]                                    ; $66ca: $0a
    ld [bc], a                                    ; $66cb: $02
    inc bc                                        ; $66cc: $03
    ld d, $0c                                     ; $66cd: $16 $0c
    ld [bc], a                                    ; $66cf: $02
    inc b                                         ; $66d0: $04
    dec hl                                        ; $66d1: $2b
    rrca                                          ; $66d2: $0f
    ld [bc], a                                    ; $66d3: $02
    dec b                                         ; $66d4: $05
    cpl                                           ; $66d5: $2f
    db $10                                        ; $66d6: $10
    ld [bc], a                                    ; $66d7: $02
    ld b, $23                                     ; $66d8: $06 $23
    inc d                                         ; $66da: $14
    ld [bc], a                                    ; $66db: $02
    rlca                                          ; $66dc: $07
    ld l, $15                                     ; $66dd: $2e $15
    ld [bc], a                                    ; $66df: $02
    ld [$171d], sp                                ; $66e0: $08 $1d $17
    ld [bc], a                                    ; $66e3: $02
    add hl, bc                                    ; $66e4: $09
    jr @+$1d                                      ; $66e5: $18 $1b

    ld [bc], a                                    ; $66e7: $02
    ld a, [bc]                                    ; $66e8: $0a
    ld sp, $021c                                  ; $66e9: $31 $1c $02
    dec bc                                        ; $66ec: $0b
    ld d, $1d                                     ; $66ed: $16 $1d
    ld [bc], a                                    ; $66ef: $02
    inc c                                         ; $66f0: $0c
    jr nc, jr_063_6711                            ; $66f1: $30 $1e

    ld [bc], a                                    ; $66f3: $02
    dec c                                         ; $66f4: $0d
    dec hl                                        ; $66f5: $2b
    ld hl, $0e02                                  ; $66f6: $21 $02 $0e
    cpl                                           ; $66f9: $2f
    ld [hl+], a                                   ; $66fa: $22
    ld [bc], a                                    ; $66fb: $02
    rrca                                          ; $66fc: $0f
    ld [hl-], a                                   ; $66fd: $32
    inc h                                         ; $66fe: $24
    ld [bc], a                                    ; $66ff: $02
    db $10                                        ; $6700: $10
    ld l, $26                                     ; $6701: $2e $26
    ld [bc], a                                    ; $6703: $02
    ld de, $281c                                  ; $6704: $11 $1c $28
    ld [bc], a                                    ; $6707: $02
    ld [de], a                                    ; $6708: $12
    rra                                           ; $6709: $1f
    add hl, hl                                    ; $670a: $29
    ld [bc], a                                    ; $670b: $02
    inc de                                        ; $670c: $13
    ld a, [de]                                    ; $670d: $1a
    dec l                                         ; $670e: $2d
    ld [bc], a                                    ; $670f: $02
    inc d                                         ; $6710: $14

jr_063_6711:
    dec l                                         ; $6711: $2d
    ld l, $02                                     ; $6712: $2e $02
    dec d                                         ; $6714: $15
    add hl, hl                                    ; $6715: $29
    jr nc, jr_063_671a                            ; $6716: $30 $02

    ld d, $15                                     ; $6718: $16 $15

jr_063_671a:
    ld sp, $1702                                  ; $671a: $31 $02 $17
    dec hl                                        ; $671d: $2b
    ld [hl-], a                                   ; $671e: $32
    ld [bc], a                                    ; $671f: $02
    jr @+$24                                      ; $6720: $18 $22

    jr c, @+$01                                   ; $6722: $38 $ff

    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff

    db $2e, $67, $92, $6a, $36, $6f, $51, $6f, $af, $0d, $0e, $0e, $0e, $fc, $e9, $4d
    db $ff, $e0, $0d, $81, $4d, $f8, $e0, $e7, $e0, $fc, $ef, $e4, $e0, $d0, $ec, $fd
    db $ef, $4d, $00, $c2, $e0, $f2, $ff, $f8, $f7, $86, $e2, $7e, $e0, $7a, $e3, $71
    db $e1, $72, $e8, $14, $c0, $ff, $6c, $ea, $0d, $4e, $e0, $2d, $32, $e1, $6c, $e4
    db $c0, $f1, $78, $02, $ec, $08, $e4, $fc, $c3, $6d, $0b, $0b, $0b, $be, $e0, $20
    db $7a, $e6, $d2, $cd, $fe, $cd, $04, $eb, $c1, $e0, $0d, $fe, $e0, $be, $e1, $00
    db $a9, $c0, $52, $ff, $86, $e7, $82, $e6, $c0, $e1, $be, $e1, $bf, $e1, $91, $d3
    db $fe, $b8, $d7, $4d, $0b, $0d, $2b, $0a, $0a, $2a, $80, $7c, $e2, $fa, $c2, $de
    db $d2, $04, $ca, $82, $e9, $42, $e1, $c1, $e0, $0a, $80, $fd, $c0, $3c, $e0, $ba
    db $c2, $00, $df, $fe, $a6, $ba, $a0, $03, $e0, $0a, $0a, $c2, $e1, $2b, $39, $e1
    db $6d, $ea, $a2, $fa, $dd, $9a, $a5, $7d, $a0, $36, $c3, $c1, $0d, $4a, $82, $e1
    db $6b, $0a, $c0, $e2, $00, $df, $f8, $0c, $c7, $3a, $a0, $84, $c2, $6b, $2b, $4b
    db $4b, $6b, $03, $0a, $2a, $7a, $c0, $80, $e3, $fe, $dd, $1c, $e2, $0c, $c0, $fd
    db $e2, $fe, $46, $c0, $2b, $2b, $0b, $2b, $6b, $0d, $0d, $58, $41, $e1, $7e, $a6
    db $fe, $dd, $4d, $0c, $ff, $e3, $2c, $06, $e2, $83, $0b, $2b, $c1, $e0, $41, $e2
    db $46, $ff, $8a, $84, $c0, $e5, $0c, $87, $2c, $6b, $4b, $c0, $e5, $be, $a1, $6e
    db $84, $bc, $fe, $2c, $04, $7f, $e4, $c0, $e0, $6b, $38, $e2, $40, $e0, $40, $c2
    db $00, $df, $1c, $c2, $09, $4c, $ff, $e2, $3e, $e2, $6b, $fe, $e0, $41, $c1, $40
    db $c0, $e8, $85, $10, $00, $9e, $0f, $a0, $ca, $80, $be, $e1, $2c, $7f, $e0, $3d
    db $e0, $00, $c2, $13, $4d, $2d, $46, $ff, $8a, $64, $2d, $ff, $e1, $be, $e1, $fd
    db $c0, $c0, $fc, $c2, $b9, $c1, $fd, $80, $00, $ff, $8c, $66, $04, $a0, $0b, $0b
    db $c0, $7a, $c3, $fb, $c1, $7e, $a8, $00, $df, $18, $a3, $46, $80, $0c, $6c, $03
    db $6c, $6c, $3b, $e2, $f3, $a3, $7e, $a5, $fe, $df, $84, $83, $c0, $e0, $40, $3b
    db $e3, $3a, $c1, $3f, $e2, $46, $ff, $7e, $c3, $44, $82, $0b, $bf, $a0, $0e, $c6
    db $80, $4c, $4c, $2c, $c0, $80, $fe, $c2, $c0, $e0, $00, $fd, $04, $84, $45, $47
    db $61, $0c, $c7, $e3, $f9, $e2, $3f, $e3, $00, $dd, $fc, $a7, $0c, $49, $61, $c7
    db $e4, $0c, $6c, $3a, $a2, $3d, $82, $fc, $30, $3c, $54, $0c, $c0, $e2, $41, $a0
    db $6b, $4b, $3a, $e2, $f6, $82, $80, $e4, $fc, $7f, $18, $c0, $e1, $be, $a0, $c1
    db $a0, $4b, $4b, $41, $e4, $c0, $e4, $fc, $7f, $22, $8a, $24, $2d, $86, $40, $3c
    db $a2, $01, $e4, $4b, $00, $e7, $c0, $ed, $18, $00, $51, $00, $c2, $81, $c7, $0b
    db $4b, $c0, $e2, $fc, $33, $12, $31, $80, $80, $a2, $02, $82, $c0, $e4, $fa, $20
    db $7d, $60, $46, $fe, $00, $c8, $0d, $0c, $c8, $c4, $fb, $60, $2b, $6b, $c0, $e1
    db $7a, $25, $00, $df, $86, $24, $04, $48, $c3, $ba, $61, $4b, $77, $61, $f6, $03
    db $00, $de, $9a, $82, $08, $21, $06, $88, $c4, $4c, $6c, $32, $65, $3e, $a2, $00
    db $df, $3a, $61, $c2, $c4, $00, $fe, $e7, $33, $c0, $fe, $a5, $00, $df, $02, $e3
    db $c0, $e8, $bc, $00, $79, $e2, $00, $7a, $43, $ba, $df, $82, $c5, $c6, $a5, $6d
    db $63, $80, $f4, $00, $d0, $c1, $a0, $0a, $41, $eb, $0d, $6c, $62, $2d, $7e, $a2
    db $00, $df, $00, $a2, $84, $43, $e0, $42, $20, $04, $c0, $82, $22, $48, $ff, $00
    db $88, $0b, $0d, $4b, $04, $c0, $e3, $fd, $20, $0d, $83, $00, $82, $25, $00, $df
    db $80, $84, $cc, $64, $40, $47, $a2, $06, $93, $00, $99, $ff, $c1, $c3, $22, $44
    db $02, $0d, $86, $85, $00, $00, $5f, $fe, $aa, $c8, $64, $84, $18, $fc, $36, $80
    db $82, $48, $65, $6a, $85, $00, $bc, $df, $fe, $aa, $c8, $65, $08, $a8, $84, $b1
    db $2e, $ef, $7e, $a2, $83, $a8, $00, $04, $25, $04, $4f, $00, $5a, $ff, $a4, $86
    db $37, $00, $fc, $7f, $c5, $86, $25, $10, $04, $3f, $00, $ec, $47, $21, $84, $21
    db $2d, $ef, $00, $00, $df, $00, $ca, $00, $fe, $81, $84, $a1, $81, $a2, $c7, $60
    db $e8, $82, $02, $ff, $78, $67, $fd, $62, $21, $6b, $05, $21, $43, $80, $86, $72
    db $00, $5a, $0d, $ff, $a7, $47, $82, $40, $00, $ff, $7e, $2e, $3e, $ca, $8c, $38
    db $00, $d1, $7e, $22, $0d, $3e, $65, $00, $fe, $c2, $00, $df, $80, $ed, $8a, $65
    db $04, $28, $ff, $ff, $7e, $48, $3e, $69, $00, $04, $24, $ff, $ff, $80, $27, $41
    db $e1, $c9, $21, $bc, $83, $02, $ff, $00, $8a, $00, $50, $21, $3f, $47, $7e, $64
    db $02, $ff, $78, $27, $be, $48, $bc, $61, $00, $ff, $30, $00, $cd, $3e, $00, $fd
    db $40, $ba, $40, $6b, $6b, $7e, $87, $ff, $ff, $34, $7e, $e8, $7d, $40, $0d, $fe
    db $e1, $4b, $0d, $7e, $7a, $00, $d4, $00, $fc, $42, $37, $21, $41, $42, $e8, $24
    db $fe, $df, $fc, $ca, $ff, $e4, $3f, $61, $00, $4e, $ff, $fc, $2e, $f8, $00, $fc
    db $e7, $00, $ff, $1c, $6f, $34, $42, $86, $3c, $00, $00, $00, $cf, $a0, $dc, $dd
    db $de, $fc, $ea, $ff, $e2, $d8, $d9, $86, $fc, $e3, $d2, $d3, $fc, $e7, $ec, $e1
    db $e2, $e0, $d0, $ec, $df, $f7, $e0, $e1, $e2, $fc, $e9, $d6, $d7, $a0, $a0, $ef
    db $d6, $d7, $da, $db, $fc, $e1, $d0, $d1, $d4, $df, $d5, $a0, $a0, $d4, $d5, $f8
    db $e1, $d0, $d1, $f6, $ec, $e1, $a0, $a0, $d0, $ed, $e3, $e4, $e5, $e6, $c0, $fc
    db $e9, $86, $e5, $82, $e5, $70, $e1, $7e, $e9, $d0, $ed, $e7, $e8, $e3, $e9, $ea
    db $fc, $e9, $86, $e3, $82, $e5, $9f, $a2, $9d, $f3, $9d, $9f, $7e, $e0, $7a, $e3
    db $da, $db, $a0, $a0, $f8, $d0, $ed, $02, $ef, $04, $e8, $9f, $9c, $46, $46, $46
    db $11, $9c, $be, $e0, $7a, $e5, $d2, $ce, $dc, $02, $eb, $04, $eb, $c1, $e0, $79
    db $ae, $fe, $e0, $be, $e4, $d4, $d5, $d6, $d7, $d2, $cd, $13, $df, $e0, $02, $eb
    db $82, $ee, $af, $fe, $e0, $be, $e1, $7d, $e2, $1b, $d8, $d9, $d2, $cd, $e3, $e4
    db $02, $eb, $8a, $c3, $86, $c4, $ff, $9e, $46, $ae, $45, $48, $4e, $48, $45, $30
    db $be, $e1, $bf, $e0, $7e, $c1, $d2, $cd, $e7, $e8, $04, $cb, $0c, $c9, $fe, $03
    db $e0, $af, $4a, $60, $54, $59, $41, $45, $c6, $7a, $e0, $46, $a1, $72, $c5, $00
    db $d8, $0c, $c9, $a0, $a0, $fd, $a1, $03, $e0, $4f, $56, $2a, $20, $20, $2a, $1f
    db $43, $45, $ae, $46, $9e, $00, $e2, $00, $db, $0c, $c9, $de, $81, $e2, $ae, $4a
    db $5a, $20, $c0, $e0, $4b, $44, $61, $af, $c0, $e0, $00, $df, $8a, $a1, $0c, $c0
    db $a1, $9d, $ff, $e1, $fe, $84, $c1, $af, $45, $39, $21, $26, $2a, $49, $4d, $52
    db $00, $e6, $d6, $d7, $00, $db, $08, $a1, $9e, $0c, $c0, $fc, $fd, $e2, $0a, $e0
    db $45, $3a, $35, $3e, $43, $ae, $e1, $ae, $81, $e2, $fc, $86, $00, $d8, $0c, $a1
    db $9e, $02, $07, $fa, $ff, $e2, $02, $c1, $e0, $36, $35, $35, $3e, $ae, $c3, $af
    db $af, $01, $e1, $00, $c2, $e8, $81, $00, $db, $d2, $d3, $ff, $9e, $99, $00, $01
    db $98, $00, $01, $99, $5f, $0f, $07, $02, $42, $35, $c0, $e0, $af, $80, $e1, $f8
    db $ff, $a2, $6a, $83, $00, $db, $d4, $d5, $9e, $9b, $99, $ec, $c1, $e0, $be, $e0
    db $9b, $08, $41, $e0, $35, $3a, $45, $c0, $80, $e1, $40, $c0, $7e, $83, $fc, $ad
    db $00, $cf, $40, $e3, $0f, $9a, $ff, $00, $01, $08, $46, $39, $35, $3b, $35, $a1
    db $36, $00, $c0, $40, $c1, $fc, $64, $00, $de, $a1, $c0, $c2, $02, $ff, $07, $0f
    db $98, $0f, $02, $45, $41, $43, $a1, $36, $bf, $e2, $3e, $a0, $fc, $63, $00, $df
    db $9f, $42, $c3, $46, $01, $02, $bf, $e0, $ba, $c0, $bc, $c0, $7e, $e0, $fd, $82
    db $72, $61, $00, $df, $33, $d0, $d1, $3c, $60, $3b, $c1, $08, $98, $b9, $c0, $7c
    db $e0, $c1, $3a, $3d, $e1, $7e, $a5, $00, $df, $8a, $62, $c4, $80, $46, $08, $3c
    db $81, $e0, $3b, $e1, $39, $35, $35, $39, $77, $80, $7e, $a5, $d4, $00, $db, $7e
    db $e4, $9e, $46, $80, $08, $fe, $a0, $02, $0f, $0f, $9b, $08, $44, $3c, $7b, $c0
    db $3c, $81, $fc, $43, $00, $9f, $fc, $8a, $40, $7b, $a0, $02, $08, $46, $45, $41
    db $45, $b7, $02, $0f, $08, $fa, $a0, $3c, $44, $77, $60, $a1, $cc, $7a, $43, $00
    db $99, $a0, $a0, $fc, $84, $47, $60, $08, $08, $02, $c5, $c2, $08, $80, $e1, $3f
    db $e0, $7d, $80, $7e, $a3, $00, $98, $fc, $66, $ba, $44, $81, $08, $87, $e1, $35
    db $42, $08, $00, $e1, $35, $81, $3e, $ff, $c3, $fc, $2f, $00, $4f, $fc, $82, $01
    db $e1, $80, $e3, $11, $39, $46, $7b, $a0, $c0, $e0, $46, $46, $9e, $fc, $31, $00
    db $51, $18, $fc, $80, $be, $a1, $c1, $a1, $45, $02, $41, $e2, $c0, $e3, $fc, $31
    db $7c, $00, $51, $86, $44, $02, $07, $13, $13, $07, $c1, $c2, $e0, $00, $e6, $fc
    db $2f, $00, $53, $40, $c2, $81, $c0, $43, $02, $10, $c0, $c1, $c2, $40, $c0, $fc
    db $66, $00, $5f, $00, $c2, $02, $82, $3b, $36, $c5, $02, $ba, $c2, $39, $3c, $44
    db $fc, $2f, $00, $d6, $ae, $46, $06, $07, $e2, $42, $11, $ff, $82, $7e, $42, $fc
    db $31, $00, $cf, $86, $24, $3b, $af, $46, $c2, $61, $3c, $44, $08, $ba, $c1, $2d
    db $61, $00, $38, $21, $fc, $2f, $00, $cf, $08, $25, $43, $61, $00, $c0, $ba, $c1
    db $b8, $c0, $00, $32, $60, $7a, $20, $fc, $2f, $00, $cf, $00, $40, $05, $41, $c4
    db $60, $87, $c3, $02, $f1, $63, $0f, $bf, $e1, $7e, $a2, $00, $df, $c2, $82, $44
    db $61, $01, $60, $00, $c6, $81, $bc, $01, $79, $e2, $7e, $a4, $00, $db, $82, $c4
    db $c9, $a2, $c0, $40, $00, $c3, $61, $40, $20, $2b, $42, $7e, $a2, $00, $dd, $00
    db $e4, $c9, $a2, $fe, $c2, $00, $c4, $c2, $ac, $22, $00, $e3, $00, $dc, $7e, $61
    db $85, $01, $40, $e3, $c1, $40, $22, $82, $04, $a0, $7e, $00, $00, $df, $00, $a5
    db $af, $c0, $c4, $c3, $42, $00, $05, $c0, $6a, $05, $00, $df, $fc, $22, $ff, $c5
    db $87, $60, $75, $c0, $86, $80, $00, $04, $81, $00, $9f, $00, $85, $ff, $a1, $7f
    db $c2, $48, $80, $83, $21, $04, $25, $08, $00, $5b, $fc, $27, $fe, $a2, $3e, $c8
    db $62, $84, $02, $04, $25, $00, $5b, $08, $fc, $27, $c0, $42, $c0, $e1, $3a, $87
    db $44, $82, $e5, $00, $5a, $fc, $27, $00, $3b, $02, $80, $e1, $c7, $41, $82, $c2
    db $04, $23, $04, $8b, $00, $90, $fc, $24, $80, $c0, $e6, $02, $c0, $04, $28, $04
    db $8c, $00, $8f, $fc, $23, $00, $42, $ae, $00, $ff, $83, $c6, $23, $86, $63, $04
    db $cd, $00, $8f, $fc, $63, $00, $e4, $7f, $c5, $00, $86, $22, $04, $d1, $00, $4f
    db $f2, $41, $00, $e6, $7e, $82, $80, $81, $c6, $61, $00, $04, $d1, $00, $57, $fe
    db $66, $c6, $02, $46, $61, $04, $d1, $00, $d8, $fd, $63, $00, $86, $62, $45, $60
    db $7e, $c4, $02, $ef, $00, $d6, $7f, $43, $fe, $e6, $7e, $c3, $00, $02, $ef, $00
    db $55, $7e, $21, $c1, $e7, $3e, $c1, $04, $a1, $02, $ef, $00, $d5, $3e, $7e, $22
    db $ae, $45, $43, $41, $43, $fd, $e0, $83, $40, $f0, $44, $41, $00, $df, $00, $c7
    db $7e, $82, $af, $36, $3b, $35, $81, $3b, $fd, $e0, $7e, $61, $04, $24, $00, $df
    db $00, $c4, $7e, $41, $44, $17, $3c, $a4, $64, $ff, $e0, $a5, $3c, $a1, $04, $24
    db $00, $df, $fe, $00, $c7, $ae, $42, $35, $69, $a3, $35, $35, $8f, $a3, $6a, $35
    db $42, $04, $22, $00, $df, $00, $c8, $a1, $00, $08, $80, $c0, $e0, $c5, $01, $c0
    db $e0, $7e, $62, $00, $df, $00, $88, $40, $e3, $6b, $6b, $71, $ff, $e0, $6d, $7c
    db $80, $9c, $9f, $00, $df, $80, $00, $cb, $3e, $01, $c0, $c5, $7e, $85, $00, $df
    db $00, $c7, $3c, $20, $af, $ff, $45, $43, $ae, $43, $ae, $41, $ae, $45, $21, $af
    db $7e, $64, $00, $df, $00, $c7, $fc, $43, $af, $fe, $e2, $00, $a6, $00, $00, $df
    db $00, $82, $7e, $e5, $cb, $23, $c9, $20, $2d, $20, $00, $df, $fc, $2d, $00, $96
    db $02, $fb, $e6, $00, $df, $fc, $2d, $8e, $23, $fc, $e5, $00, $d5, $00, $00

    nop                                           ; $6f35: $00

    db $c1, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $01, $80
    db $fe, $e0, $ff, $ff, $ff, $ff, $ff, $e8, $00, $00

    nop                                           ; $6f50: $00

    db $02, $00, $1f, $06, $02, $01, $21, $06, $02, $02, $23, $07, $02, $03, $1d, $08
    db $02, $04, $25, $08, $02, $05, $1c, $0a, $02, $06, $26, $0a, $02, $07, $1d, $0b
    db $02, $08, $1b, $0c, $02, $09, $25, $0c, $02, $0a, $23, $0d, $02, $0b, $24, $0d
    db $02, $0c, $22, $0e, $02, $0d, $25, $0e, $02, $0e, $23, $0f, $02, $0f, $24, $0f
    db $02, $10, $25, $10, $02, $11, $26, $11, $02, $12, $28, $14, $02, $13, $19, $15
    db $02, $14, $29, $18, $02, $15, $18, $19, $02, $16, $19, $1c, $02, $17, $29, $1c
    db $02, $18, $27, $1e, $02, $19, $19, $1f, $02, $1a, $17, $22, $02, $1b, $25, $23
    db $02, $1c, $18, $26, $02, $1d, $23, $26, $02, $1e, $22, $28, $02, $1f, $19, $2a
    db $02, $20, $21, $2a, $02, $21, $22, $2d, $02, $22, $19, $2e, $02, $23, $22, $31
    db $02, $24, $1a, $32, $02, $25, $24, $34, $02, $26, $1b, $35, $02, $27, $1a, $38
    db $02, $28, $25, $38, $02, $29, $1b, $3b, $02, $2a, $24, $3b, $02, $2b, $1e, $3c
    db $02, $2c, $20, $3c, $02, $2d, $22, $3c, $ff, $ff, $ff, $14, $70, $66, $73, $4b
    db $78, $66, $78, $ef, $0d, $0e, $0e, $0e, $fc, $fa, $0d, $4d, $4d, $61, $4d, $fc
    db $ee, $ff, $e0, $c8, $e4, $ff, $ff, $4d, $4d, $fc, $ef, $00, $c1, $e2, $ff, $ff
    db $c0, $e3, $5d, $e0, $fc, $f1, $ff, $ff, $ff, $ff, $e2, $e1, $00, $fe, $dd, $7e
    db $f5, $ff, $e2, $a1, $ff, $9a, $e5, $97, $c0, $fc, $e5, $ee, $e7, $38, $ff, $ff
    db $92, $e9, $76, $c0, $4d, $2d, $2d, $fc, $df, $82, $f1, $bf, $0d, $0d, $6d, $0b
    db $0b, $0d, $fd, $e0, $4d, $51, $2d, $c8, $ea, $00, $dd, $14, $e6, $6d, $c3, $e1
    db $0b, $7a, $e1, $28, $7e, $e8, $3c, $ff, $02, $e5, $6d, $cc, $a0, $0b, $7e, $e0
    db $bf, $e2, $20, $fc, $df, $00, $cd, $8d, $a0, $82, $e1, $7d, $e2, $0b, $7e, $e7
    db $c0, $ff, $00, $1a, $e4, $42, $e1, $c3, $e3, $f8, $e1, $fc, $c6, $6a, $c2, $02
    db $bb, $82, $a2, $fc, $03, $e0, $c4, $c0, $2b, $0a, $2a, $0d, $0a, $2a, $82, $ba
    db $c1, $6d, $e8, $e4, $81, $fd, $60, $e3, $03, $e1, $c4, $c1, $4a, $3f, $0a, $2a
    db $2b, $0a, $0a, $0a, $c0, $e2, $46, $ff, $00, $04, $cb, $42, $e2, $bf, $c0, $7c
    db $e0, $3f, $e3, $66, $e2, $ff, $ff, $be, $83, $7a, $46, $c1, $2b, $05, $e2, $0b
    db $0b, $2a, $4b, $fa, $a9, $20, $0c, $93, $23, $a3, $86, $86, $87, $c3, $41, $c0
    db $4b, $c4, $e0, $3a, $c2, $c1, $0b, $ba, $a1, $00, $d7, $16, $ab, $8d, $a0, $81
    db $e3, $6b, $6b, $87, $6b, $4b, $6b, $81, $e1, $be, $c1, $00, $d9, $96, $8c, $4d
    db $34, $45, $a0, $41, $e0, $6b, $80, $a0, $6b, $4b, $3d, $c3, $7e, $c3, $00, $ba
    db $df, $1c, $a2, $3f, $e0, $c1, $e2, $b7, $c2, $38, $a3, $80, $e7, $10, $cd, $38
    db $08, $e8, $86, $65, $0f, $60, $2b, $0b, $4b, $0e, $83, $3b, $a4, $00, $40, $e1
    db $00, $cf, $1e, $8b, $08, $86, $42, $a1, $c0, $e2, $c6, $c1, $bb, $82, $70, $80
    db $e4, $14, $7d, $92, $83, $c0, $a2, $4b, $0a, $4a, $c0, $e5, $e0, $7a, $80, $b1
    db $80, $00, $dd, $5d, $40, $0c, $81, $4d, $6d, $4d, $08, $84, $82, $86, $a0, $4d
    db $62, $2d, $ff, $e1, $80, $a7, $14, $8f, $0c, $89, $0c, $cc, $83, $80, $a2, $2b
    db $4a, $08, $e4, $dc, $c9, $80, $d3, $14, $63, $04, $cd, $64, $d8, $43, $2b, $c3
    db $80, $48, $e2, $fa, $4b, $40, $cd, $a6, $45, $34, $82, $e4, $c0, $e6, $2b, $81
    db $c0, $0a, $4a, $3f, $60, $c0, $e0, $20, $e0, $cb, $14, $73, $d6, $41, $0d, $84
    db $c3, $84, $4b, $87, $80, $00, $60, $00, $80, $e0, $6a, $4e, $14, $8c, $15, $62
    db $90, $83, $ca, $c0, $cd, $65, $c0, $e0, $01, $4b, $88, $c1, $8a, $a5, $1c, $e4
    db $14, $8f, $15, $63, $84, $e4, $8d, $84, $02, $06, $a0, $2b, $c1, $e3, $50, $b8
    db $ad, $01, $82, $e3, $d5, $42, $8d, $85, $00, $c1, $e3, $43, $e2, $82, $e3, $7e
    db $e9, $14, $b3, $42, $e4, $0f, $85, $c1, $e2, $80, $03, $e1, $02, $e7, $76, $27
    db $16, $67, $96, $45, $d9, $45, $c1, $e8, $6b, $c0, $07, $60, $8b, $82, $8a, $44
    db $e2, $0a, $94, $8e, $c0, $ec, $6b, $0d, $00, $cb, $61, $c0, $e5, $14, $7e, $8c
    db $a1, $17, $62, $50, $64, $0f, $80, $44, $46, $00, $04, $22, $0c, $9b, $54, $62
    db $82, $ea, $8c, $87, $82, $a1, $cc, $6f, $18, $49, $0c, $14, $66, $43, $e6, $4b
    db $0d, $43, $60, $4c, $88, $0c, $43, $fe, $cd, $30, $2a, $08, $98, $22, $44, $e5
    db $d7, $41, $2d, $2d, $cc, $44, $02, $f8, $00, $08, $87, $01, $e2, $05, $e8, $50
    db $80, $8a, $00, $4c, $83, $e0, $63, $18, $3b, $00, $03, $e8, $96, $40, $8d, $04
    db $8a, $84, $66, $12, $82, $ed, $18, $21, $d5, $22, $00, $57, $44, $4a, $a4, $6e
    db $66, $02, $f0, $82, $ea, $88, $a5, $18, $42, $93, $63, $00, $5e, $5f, $04, $e8
    db $87, $a4, $d9, $22, $92, $80, $7a, $27, $0c, $b7, $82, $e5, $00, $06, $c4, $96
    db $22, $57, $21, $9c, $21, $66, $c8, $d0, $76, $04, $e5, $dd, $03, $01, $2b, $59
    db $22, $c5, $61, $08, $ea, $08, $ce, $c6, $89, $04, $e3, $9e, $00, $02, $5a, $21
    db $4b, $da, $05, $12, $99, $08, $8e, $8f, $84, $4b, $87, $5c, $21, $04, $08, $ff
    db $fc, $05, $4d, $11, $82, $ba, $e5, $db, $22, $ca, $20, $64, $6b, $40, $00, $da
    db $d1, $66, $08, $82, $de, $02, $0c, $d5, $00, $91, $4d, $8d, $c3, $c8, $7e, $e6
    db $82, $e9, $ff, $ff, $4d, $18, $20, $4c, $c3, $2b, $2b, $01, $2b, $0e, $80, $82
    db $ea, $b8, $ff, $08, $62, $bf, $e3, $c1, $e1, $e0, $03, $08, $04, $ff, $00, $c9
    db $96, $01, $0b, $56, $60, $82, $e1, $e0, $01, $08, $df, $1c, $00, $cb, $7e, $e2
    db $0d, $0d, $4b, $51, $60, $92, $98, $08, $57, $02, $fc, $c3, $0d, $c1, $e1, $20
    db $3c, $00, $d3, $fc, $c4, $92, $8c, $c0, $ff, $00, $04, $4a, $92, $88, $08, $dd
    db $00, $53, $90, $ff, $fc, $dd, $14, $9f, $fc, $db, $00, $14, $9b, $fe, $d6, $ca
    db $ea, $0c, $df, $fe, $19, $ff, $ff, $f8, $77, $48, $ff, $00, $c0, $ff, $c0, $ff
    db $02, $e9, $00, $00

    nop                                           ; $7365: $00

    db $8f, $a0, $dc, $dd, $de, $fc, $fa, $ff, $f5, $c8, $e4, $df, $f7, $e0, $e1, $e2
    db $fc, $f9, $d6, $d7, $a0, $a0, $e6, $fc, $e9, $d0, $d1, $f0, $e3, $c8, $e5, $e3
    db $e4, $e5, $bd, $e6, $fc, $f9, $d8, $d9, $a0, $a0, $fc, $e9, $d2, $79, $d3, $f0
    db $e3, $c8, $e5, $e7, $e8, $e9, $ea, $fc, $f9, $ff, $da, $db, $d6, $d7, $da, $db
    db $d0, $d1, $36, $fc, $e5, $d4, $d5, $f4, $e1, $d6, $d7, $c8, $e5, $02, $fc, $00
    db $e2, $c0, $8a, $e5, $fc, $e9, $6a, $e1, $fa, $c3, $02, $fb, $e2, $c1, $8a, $e3
    db $63, $a0, $a0, $fc, $e7, $7e, $e3, $e8, $c1, $df, $e0, $02, $fb, $7c, $e2, $c1
    db $0c, $e3, $a0, $a0, $9f, $a2, $9d, $ff, $e0, $7b, $a2, $9f, $fc, $c7, $d8, $d9
    db $e3, $e4, $02, $fb, $f6, $e2, $c1, $d6, $d7, $82, $e1, $a0, $9f, $9c, $46, $db
    db $46, $ae, $fd, $e0, $9c, $9f, $7e, $e6, $da, $db, $b3, $e7, $e8, $00, $df, $14
    db $e3, $9f, $9c, $c3, $e0, $af, $07, $46, $ae, $af, $bf, $e1, $fc, $c8, $00, $df
    db $82, $c1, $c1, $e1, $0d, $af, $82, $e0, $46, $af, $bf, $e3, $fc, $c7, $00, $df
    db $0c, $c2, $67, $9e, $ae, $af, $82, $e1, $7d, $e1, $af, $46, $7e, $e9, $1c, $00
    db $df, $0c, $c1, $9f, $9c, $af, $83, $e0, $be, $e3, $7a, $e0, $86, $fc, $c6, $a0
    db $a0, $02, $bf, $8e, $a0, $03, $e1, $c4, $c0, $45, $bf, $48, $48, $af, $48, $48
    db $45, $ba, $c0, $9e, $e0, $e8, $e3, $00, $de, $04, $a1, $82, $e1, $42, $e3, $51
    db $5e, $54, $cf, $41, $54, $61, $5c, $75, $e0, $c0, $e1, $d4, $d5, $f4, $00, $df
    db $04, $a3, $a1, $c4, $c4, $37, $38, $21, $20, $0f, $2a, $52, $49, $45, $3f, $e2
    db $67, $80, $00, $df, $04, $a3, $fd, $9e, $c4, $c2, $45, $36, $35, $35, $27, $20
    db $07, $20, $2d, $54, $c0, $e0, $fa, $a1, $ec, $81, $00, $d4, $0b, $86, $f2, $8e
    db $83, $9e, $87, $c2, $c1, $e0, $35, $21, $2f, $20, $3b, $2e, $42, $b8, $a0, $af
    db $46, $a1, $6a, $a4, $0c, $9b, $ec, $82, $81, $82, $c3, $ae, $39, $c1, $e0, $36
    db $41, $43, $83, $2a, $2a, $41, $e0, $fe, $c2, $00, $e1, $00, $d3, $0c, $8d, $a0
    db $25, $9e, $85, $a0, $3a, $c1, $e0, $7a, $c0, $45, $81, $c1, $b7, $a0, $40, $7e
    db $c1, $00, $d5, $0c, $83, $08, $87, $c0, $e0, $81, $e1, $36, $43, $a0, $08, $7b
    db $a0, $f6, $a0, $32, $c0, $9e, $00, $e2, $00, $ce, $08, $e8, $08, $88, $8e, $82
    db $a0, $3a, $35, $3a, $c1, $e2, $b8, $a1, $b8, $e1, $9e, $f0, $00, $d2, $08, $e7
    db $92, $65, $08, $82, $9e, $af, $ae, $35, $63, $35, $39, $c3, $e1, $fb, $80, $7e
    db $e0, $ae, $af, $7a, $82, $e0, $00, $cf, $86, $ed, $0c, $80, $10, $80, $c3, $81
    db $3c, $3a, $4b, $09, $55, $c3, $e1, $f9, $81, $46, $c1, $e1, $00, $d2, $86, $ec
    db $0c, $81, $f7, $9c, $9d, $9d, $84, $81, $3c, $3e, $5e, $55, $02, $00, $e1, $9c
    db $ba, $62, $c1, $a1, $00, $d0, $0c, $e9, $cd, $64, $d4, $c1, $1e, $c8, $c1, $35
    db $3e, $4b, $44, $48, $e3, $ee, $25, $00, $cf, $e0, $96, $43, $14, $65, $cd, $63
    db $8c, $c1, $0b, $80, $39, $35, $3e, $0b, $48, $44, $02, $80, $9e, $00, $41, $fc
    db $e3, $00, $cf, $20, $45, $f0, $8c, $23, $4f, $60, $15, $e1, $8e, $60, $ae, $af
    db $45, $3a, $2f, $35, $39, $5e, $55, $7f, $60, $9e, $7a, $4d, $14, $8f, $f8, $d6
    db $45, $4f, $61, $80, $e4, $37, $38, $35, $3a, $47, $0b, $60, $55, $00, $60, $9e
    db $8a, $81, $fc, $e5, $00, $8c, $2c, $85, $9c, $12, $84, $90, $62, $45, $af, $41
    db $c2, $e1, $42, $c0, $5e, $03, $55, $45, $88, $c3, $66, $aa, $00, $48, $14, $83
    db $52, $c3, $d9, $a2, $be, $d3, $40, $37, $38, $62, $63, $66, $c8, $80, $35, $0f
    db $36, $43, $5b, $45, $8a, $86, $62, $a5, $00, $8b, $aa, $24, $7c, $c1, $e5, $8d
    db $82, $62, $63, $78, $35, $68, $bf, $e0, $07, $36, $4b, $5a, $c8, $a1, $89, $60
    db $04, $47, $00, $8d, $96, $44, $79, $9e, $dd, $42, $54, $41, $45, $36, $62, $67
    db $84, $e1, $0f, $6a, $35, $36, $49, $03, $e0, $89, $61, $8a, $c3, $08, $61, $c0
    db $fc, $e3, $00, $48, $a2, $05, $94, $80, $01, $e3, $c1, $e5, $35, $6a, $0f, $36
    db $43, $53, $53, $c7, $42, $82, $c2, $6e, $00, $d0, $28, $70, $18, $49, $96, $22
    db $54, $81, $7f, $e2, $39, $35, $69, $c1, $e2, $63, $36, $81, $4f, $60, $6d, $e2
    db $82, $c3, $da, $db, $cc, $29, $b0, $0c, $8d, $8c, $a2, $54, $41, $0d, $c0, $6b
    db $6c, $cc, $61, $45, $09, $81, $37, $c3, $42, $20, $a1, $82, $c3, $cc, $29, $0c
    db $8b, $14, $60, $5c, $1d, $44, $12, $61, $6e, $6f, $6c, $cc, $61, $81, $c7, $21
    db $02, $04, $a2, $9f, $0c, $43, $cc, $29, $18, $47, $14, $65, $e0, $62, $d3, $41
    db $7e, $bf, $e0, $74, $36, $45, $af, $83, $84, $8a, $22, $20, $4c, $82, $0c, $43
    db $cc, $29, $04, $c7, $04, $a3, $a1, $98, $22, $c1, $e3, $ff, $35, $36, $82, $83
    db $46, $83, $86, $85, $00, $8c, $22, $82, $e2, $0c, $43, $cc, $29, $18, $49, $96
    db $22, $43, $e5, $05, $e2, $3f, $85, $87, $88, $87, $85, $ae, $3c, $81, $4c, $81
    db $00, $04, $c3, $ce, $0b, $18, $49, $18, $21, $20, $22, $94, $41, $c6, $c1, $39
    db $a2, $00, $08, $e3, $8e, $85, $0c, $41, $ce, $09, $08, $8a, $d0, $61, $18, $21
    db $94, $40, $00, $c1, $e2, $b7, $a3, $08, $e4, $04, $cf, $00, $c5, $82, $ea, $88
    db $a1, $c1, $e5, $02, $48, $e2, $a2, $08, $e4, $04, $cf, $00, $c5, $04, $ea, $42
    db $e4, $c1, $e2, $00, $93, $64, $0c, $a9, $d2, $0d, $08, $87, $91, $62, $c7, $a3
    db $43, $e3, $5a, $00, $60, $08, $e9, $0c, $a3, $d6, $0d, $08, $86, $91, $61, $45
    db $41, $a4, $00, $1f, $44, $3c, $3b, $38, $37, $4d, $a1, $dc, $20, $96, $69, $70
    db $d6, $12, $00, $40, $08, $83, $95, $41, $45, $36, $a6, $8c, $c0, $07, $45, $41
    db $43, $0f, $a1, $53, $61, $1c, $42, $96, $63, $08, $cd, $30, $00, $c7, $ae, $63
    db $c8, $a0, $50, $80, $a7, $66, $47, $e2, $fd, $83, $80, $1b, $42, $14, $89, $d6
    db $0f, $00, $41, $38, $81, $08, $a1, $11, $81, $a3, $01, $68, $bf, $e4, $40, $60
    db $dc, $21, $92, $65, $14, $83, $d6, $0f, $00, $c5, $4e, $08, $a1, $42, $a8, $a9
    db $90, $80, $bf, $e4, $af, $83, $c3, $cc, $0c, $d3, $00, $cf, $d4, $d5, $80, $e1
    db $90, $81, $a3, $aa, $81, $ab, $84, $c2, $82, $e3, $0c, $d3, $00, $d1, $55, $20
    db $bf, $e2, $6c, $0f, $6f, $6e, $36, $45, $0e, $a0, $82, $e8, $0c, $ce, $00, $d1
    db $80, $bf, $e5, $c1, $e1, $e0, $03, $14, $67, $06, $f3, $00, $cc, $12, $21, $ae
    db $0b, $36, $6e, $82, $e0, $9c, $4d, $a0, $8a, $a8, $02, $f9, $00, $c7, $0e, $7e
    db $e2, $af, $ae, $36, $c1, $e0, $92, $8a, $08, $d5, $00, $cd, $06, $7e, $e3, $af
    db $45, $c1, $e0, $20, $2a, $08, $d5, $00, $cb, $7e, $e5, $00, $25, $01, $92, $89
    db $08, $d7, $00, $92, $92, $8d, $06, $fa, $00, $8b, $fc, $c4, $00, $08, $e8, $08
    db $db, $00, $8d, $fc, $c5, $14, $99, $00, $d7, $fc, $c5, $08, $e9, $00, $08, $db
    db $00, $4c, $fa, $00, $28, $0b, $06, $ff, $00, $49, $fa, $01, $28, $0b, $00, $06
    db $ff, $00, $49, $fc, $27, $0c, $df, $00, $51, $2a, $61, $2c, $05, $0c, $df, $00
    db $00, $49, $00, $00

    nop                                           ; $784a: $00

    db $c1, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $01, $80
    db $fe, $e0, $ff, $ff, $ff, $ff, $ff, $e8, $00, $00

    nop                                           ; $7865: $00

    db $02, $00, $2d, $08, $02, $01, $30, $08, $02, $02, $2a, $09, $02, $03, $2f, $09
    db $02, $04, $31, $09, $02, $05, $29, $0a, $02, $06, $2b, $0a, $02, $07, $30, $0a
    db $02, $08, $32, $0a, $02, $09, $28, $0b, $02, $0a, $2d, $0b, $02, $0b, $2f, $0c
    db $02, $0c, $27, $0d, $02, $0d, $29, $0d, $02, $0e, $33, $0d, $02, $0f, $26, $0e
    db $02, $10, $2b, $0e, $02, $11, $25, $0f, $02, $12, $27, $0f, $02, $13, $29, $10
    db $02, $14, $36, $10, $02, $15, $26, $11, $02, $16, $35, $11, $02, $17, $28, $12
    db $02, $18, $2d, $13, $02, $19, $2f, $13, $02, $1a, $32, $13, $02, $1b, $27, $14
    db $02, $1c, $2c, $14, $02, $1d, $2e, $14, $02, $1e, $30, $14, $02, $1f, $35, $14
    db $02, $20, $37, $14, $02, $21, $26, $15, $02, $22, $2b, $15, $02, $23, $2d, $15
    db $02, $24, $2f, $15, $02, $25, $34, $15, $02, $26, $36, $15, $02, $27, $27, $16
    db $02, $28, $2c, $16, $02, $29, $30, $16, $02, $2a, $32, $16, $02, $2b, $35, $16
    db $02, $2c, $26, $17, $02, $2d, $2d, $17, $02, $2e, $2f, $17, $02, $2f, $25, $18
    db $02, $30, $27, $18, $02, $31, $2c, $18, $02, $32, $2e, $18, $02, $33, $21, $19
    db $02, $34, $23, $19, $02, $35, $24, $19, $02, $36, $26, $19, $02, $37, $2d, $19
    db $02, $38, $1d, $1a, $02, $39, $20, $1a, $02, $3a, $22, $1a, $02, $3b, $25, $1a
    db $02, $3c, $2e, $1a, $02, $3d, $21, $1b, $02, $3e, $23, $1b, $02, $3f, $24, $1b
    db $02, $40, $1b, $1c, $02, $41, $20, $1c, $02, $42, $22, $1c, $02, $43, $2d, $1c
    db $02, $44, $15, $1d, $02, $45, $17, $1d, $02, $46, $1d, $1d, $02, $47, $14, $1e
    db $02, $48, $16, $1e, $02, $49, $1c, $1e, $02, $4a, $2c, $1e, $02, $4b, $13, $1f
    db $02, $4c, $15, $1f, $02, $4d, $19, $1f, $02, $4e, $2a, $1f, $02, $4f, $14, $21
    db $02, $50, $16, $21, $02, $51, $28, $21, $02, $52, $24, $23, $02, $53, $29, $23
    db $02, $54, $2b, $23, $02, $55, $12, $24, $02, $56, $21, $24, $02, $57, $26, $24
    db $02, $58, $28, $24, $02, $59, $2a, $24, $02, $5a, $15, $25, $02, $5b, $29, $25
    db $02, $5c, $23, $27, $02, $5d, $1e, $28, $02, $5e, $22, $28, $02, $5f, $11, $29
    db $02, $60, $0c, $2c, $02, $61, $1b, $2d, $02, $62, $17, $30, $02, $63, $15, $33
    db $02, $64, $0d, $35, $02, $65, $0e, $36, $ff, $ff, $ff, $09, $7a, $39, $7a, $27
    db $7c, $dc, $7d, $c0, $1f, $8a, $03, $80, $02, $60, $01, $ef, $03, $f4, $03, $8a
    db $03, $80, $02, $1f, $7d, $f7, $44, $0f, $01, $8a, $03, $08, $25, $08, $25, $08
    db $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08
    db $25, $08, $25, $ff, $0c, $0c, $0c, $6c, $2a, $4a, $4a, $4a, $fd, $0a, $ff, $e4
    db $6a, $6a, $6a, $0a, $4c, $4c, $f9, $2c, $e9, $e0, $fd, $ea, $2c, $2c, $4c, $0c
    db $4c, $33, $4c, $4c, $e9, $ed, $d9, $e2, $6c, $4a, $bf, $e0, $c0, $e7, $13, $0a

    ld a, [bc]                                    ; $7a66: $0a
    push bc                                       ; $7a67: $c5
    db $ec                                        ; $7a68: $ec
    db $fd                                        ; $7a69: $fd
    pop hl                                        ; $7a6a: $e1
    inc l                                         ; $7a6b: $2c
    xor [hl]                                      ; $7a6c: $ae
    xor $c0                                       ; $7a6d: $ee $c0
    jp hl                                         ; $7a6f: $e9


    cp a                                          ; $7a70: $bf
    ldh [$60], a                                  ; $7a71: $e0 $60
    add b                                         ; $7a73: $80
    and $77                                       ; $7a74: $e6 $77
    ldh [$c7], a                                  ; $7a76: $e0 $c7
    rst $20                                       ; $7a78: $e7
    cp e                                          ; $7a79: $bb
    jp hl                                         ; $7a7a: $e9


    ret nz                                        ; $7a7b: $c0

    ld sp, hl                                     ; $7a7c: $f9
    ld c, d                                       ; $7a7d: $4a
    ld a, [hl+]                                   ; $7a7e: $2a
    ld b, b                                       ; $7a7f: $40

Call_063_7a80:
    push hl                                       ; $7a80: $e5
    ret nc                                        ; $7a81: $d0

    jr c, @-$1d                                   ; $7a82: $38 $e1

    ld e, d                                       ; $7a84: $5a
    ldh a, [rDMA]                                 ; $7a85: $f0 $46
    di                                            ; $7a87: $f3
    rst $20                                       ; $7a88: $e7
    db $e3                                        ; $7a89: $e3
    ld l, h                                       ; $7a8a: $6c
    inc b                                         ; $7a8b: $04
    pop hl                                        ; $7a8c: $e1
    dec bc                                        ; $7a8d: $0b
    ld l, e                                       ; $7a8e: $6b
    ld h, a                                       ; $7a8f: $67
    dec bc                                        ; $7a90: $0b
    dec bc                                        ; $7a91: $0b
    dec hl                                        ; $7a92: $2b
    db $fd                                        ; $7a93: $fd
    ldh [$f8], a                                  ; $7a94: $e0 $f8
    pop bc                                        ; $7a96: $c1
    inc l                                         ; $7a97: $2c
    dec bc                                        ; $7a98: $0b
    adc a                                         ; $7a99: $8f
    ei                                            ; $7a9a: $fb
    db $fc                                        ; $7a9b: $fc
    ld h, c                                       ; $7a9c: $61
    db $ec                                        ; $7a9d: $ec
    ret nz                                        ; $7a9e: $c0

    ld [c], a                                     ; $7a9f: $e2
    ld l, e                                       ; $7aa0: $6b
    ld l, e                                       ; $7aa1: $6b
    dec hl                                        ; $7aa2: $2b
    dec hl                                        ; $7aa3: $2b
    ld c, e                                       ; $7aa4: $4b
    ld c, e                                       ; $7aa5: $4b
    add e                                         ; $7aa6: $83
    ld c, e                                       ; $7aa7: $4b
    dec bc                                        ; $7aa8: $0b
    ret nz                                        ; $7aa9: $c0

    ld [c], a                                     ; $7aaa: $e2
    ld c, l                                       ; $7aab: $4d
    rst $28                                       ; $7aac: $ef
    xor [hl]                                      ; $7aad: $ae
    pop hl                                        ; $7aae: $e1
    xor d                                         ; $7aaf: $aa
    push af                                       ; $7ab0: $f5
    add b                                         ; $7ab1: $80
    ld [c], a                                     ; $7ab2: $e2
    dec hl                                        ; $7ab3: $2b
    adc d                                         ; $7ab4: $8a
    rst $38                                       ; $7ab5: $ff
    pop hl                                        ; $7ab6: $e1
    dec bc                                        ; $7ab7: $0b
    ret nz                                        ; $7ab8: $c0

    db $e3                                        ; $7ab9: $e3
    inc c                                         ; $7aba: $0c
    sub e                                         ; $7abb: $93
    jp nz, $ffc0                                  ; $7abc: $c2 $c0 $ff

    ret nz                                        ; $7abf: $c0

    db $ed                                        ; $7ac0: $ed
    dec bc                                        ; $7ac1: $0b
    nop                                           ; $7ac2: $00
    ld a, a                                       ; $7ac3: $7f
    ldh [$38], a                                  ; $7ac4: $e0 $38
    pop bc                                        ; $7ac6: $c1
    ld b, c                                       ; $7ac7: $41
    rst $08                                       ; $7ac8: $cf
    ret nz                                        ; $7ac9: $c0

    ld [c], a                                     ; $7aca: $e2
    add b                                         ; $7acb: $80
    sub $80                                       ; $7acc: $d6 $80
    db $e4                                        ; $7ace: $e4
    pop bc                                        ; $7acf: $c1
    pop hl                                        ; $7ad0: $e1
    add b                                         ; $7ad1: $80
    db $e3                                        ; $7ad2: $e3
    db $10                                        ; $7ad3: $10
    call $12c3                                    ; $7ad4: $cd $c3 $12
    call $a2fd                                    ; $7ad7: $cd $fd $a2
    ld b, b                                       ; $7ada: $40
    push af                                       ; $7adb: $f5
    ld l, e                                       ; $7adc: $6b
    add d                                         ; $7add: $82
    ld [c], a                                     ; $7ade: $e2
    ret nz                                        ; $7adf: $c0

    jp hl                                         ; $7ae0: $e9


    ld a, a                                       ; $7ae1: $7f
    call z, $ab40                                 ; $7ae2: $cc $40 $ab
    or b                                          ; $7ae5: $b0
    nop                                           ; $7ae6: $00
    db $eb                                        ; $7ae7: $eb
    pop bc                                        ; $7ae8: $c1
    ld [c], a                                     ; $7ae9: $e2
    ret nz                                        ; $7aea: $c0

    or $83                                        ; $7aeb: $f6 $83
    push de                                       ; $7aed: $d5
    add b                                         ; $7aee: $80
    push bc                                       ; $7aef: $c5
    ld c, e                                       ; $7af0: $4b
    ret nz                                        ; $7af1: $c0

    db $e3                                        ; $7af2: $e3
    pop de                                        ; $7af3: $d1
    ld l, e                                       ; $7af4: $6b
    ret nz                                        ; $7af5: $c0

    db $fd                                        ; $7af6: $fd
    ld h, $ad                                     ; $7af7: $26 $ad
    nop                                           ; $7af9: $00
    push bc                                       ; $7afa: $c5
    ld a, [hl+]                                   ; $7afb: $2a
    ld b, d                                       ; $7afc: $42
    pop hl                                        ; $7afd: $e1
    ld c, e                                       ; $7afe: $4b
    ld l, e                                       ; $7aff: $6b
    pop af                                        ; $7b00: $f1
    ld a, [bc]                                    ; $7b01: $0a
    or a                                          ; $7b02: $b7
    and c                                         ; $7b03: $a1
    sub l                                         ; $7b04: $95
    rst $10                                       ; $7b05: $d7
    ret nz                                        ; $7b06: $c0

    sub $2a                                       ; $7b07: $d6 $2a
    ld a, [bc]                                    ; $7b09: $0a
    ld a, [hl+]                                   ; $7b0a: $2a
    dec bc                                        ; $7b0b: $0b
    jr nz, @+$01                                  ; $7b0c: $20 $ff

    ldh [$f6], a                                  ; $7b0e: $e0 $f6
    ld [c], a                                     ; $7b10: $e2
    ret nz                                        ; $7b11: $c0

    rst $30                                       ; $7b12: $f7
    ei                                            ; $7b13: $fb
    sub e                                         ; $7b14: $93
    add b                                         ; $7b15: $80
    and b                                         ; $7b16: $a0
    ld a, [hl+]                                   ; $7b17: $2a
    ld b, b                                       ; $7b18: $40
    and b                                         ; $7b19: $a0
    cp a                                          ; $7b1a: $bf
    ldh [rNR43], a                                ; $7b1b: $e0 $22
    ld a, e                                       ; $7b1d: $7b
    add d                                         ; $7b1e: $82
    ld a, [hl+]                                   ; $7b1f: $2a
    add b                                         ; $7b20: $80

Jump_063_7b21:
    or l                                          ; $7b21: $b5
    ld l, e                                       ; $7b22: $6b
    add c                                         ; $7b23: $81
    cp c                                          ; $7b24: $b9
    sub c                                         ; $7b25: $91
    ld l, h                                       ; $7b26: $6c
    pop bc                                        ; $7b27: $c1
    ldh [rP1], a                                  ; $7b28: $e0 $00
    and c                                         ; $7b2a: $a1
    ld [bc], a                                    ; $7b2b: $02
    db $fc                                        ; $7b2c: $fc
    add l                                         ; $7b2d: $85
    ld a, [hl+]                                   ; $7b2e: $2a
    ld b, c                                       ; $7b2f: $41
    db $e3                                        ; $7b30: $e3
    ld d, e                                       ; $7b31: $53
    sub b                                         ; $7b32: $90
    ld a, h                                       ; $7b33: $7c
    jp nc, $8214                                  ; $7b34: $d2 $14 $82

    ld e, [hl]                                    ; $7b37: $5e
    add b                                         ; $7b38: $80
    ld d, [hl]                                    ; $7b39: $56
    add h                                         ; $7b3a: $84
    nop                                           ; $7b3b: $00
    db $db                                        ; $7b3c: $db
    di                                            ; $7b3d: $f3
    ld b, d                                       ; $7b3e: $42
    sub [hl]                                      ; $7b3f: $96
    call nc, Call_000_2264                        ; $7b40: $d4 $64 $22
    sub $b6                                       ; $7b43: $d6 $b6
    ld l, h                                       ; $7b45: $6c
    cp l                                          ; $7b46: $bd
    ld [hl], h                                    ; $7b47: $74
    ld d, $ff                                     ; $7b48: $16 $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    nop                                           ; $7b4c: $00
    reti                                          ; $7b4d: $d9


    ld a, l                                       ; $7b4e: $7d
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    ld a, [$d570]                                 ; $7b53: $fa $70 $d5
    and e                                         ; $7b56: $a3
    adc $ae                                       ; $7b57: $ce $ae
    db $10                                        ; $7b59: $10
    ld [hl], e                                    ; $7b5a: $73
    ld a, [$004f]                                 ; $7b5b: $fa $4f $00
    call nc, $cd64                                ; $7b5e: $d4 $64 $cd
    ld l, l                                       ; $7b61: $6d
    db $d3                                        ; $7b62: $d3
    sub h                                         ; $7b63: $94
    ld [$d4b1], a                                 ; $7b64: $ea $b1 $d4
    ld h, e                                       ; $7b67: $63
    call $c16f                                    ; $7b68: $cd $6f $c1
    rst $38                                       ; $7b6b: $ff
    sub a                                         ; $7b6c: $97
    add sp, $00                                   ; $7b6d: $e8 $00
    ld c, $4e                                     ; $7b6f: $0e $4e
    inc d                                         ; $7b71: $14
    ld d, d                                       ; $7b72: $52
    xor e                                         ; $7b73: $ab
    or d                                          ; $7b74: $b2
    and c                                         ; $7b75: $a1
    ld c, b                                       ; $7b76: $48
    ld [hl+], a                                   ; $7b77: $22
    rst $18                                       ; $7b78: $df
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    ccf                                           ; $7b7b: $3f
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    nop                                           ; $7b7f: $00
    ret nz                                        ; $7b80: $c0

    rst $38                                       ; $7b81: $ff
    rst $10                                       ; $7b82: $d7
    rst $38                                       ; $7b83: $ff
    call nz, $ff3f                                ; $7b84: $c4 $3f $ff
    cp c                                          ; $7b87: $b9
    ld de, $be34                                  ; $7b88: $11 $34 $be
    db $10                                        ; $7b8b: $10
    cp a                                          ; $7b8c: $bf
    or l                                          ; $7b8d: $b5
    ld c, h                                       ; $7b8e: $4c
    rst $38                                       ; $7b8f: $ff
    nop                                           ; $7b90: $00
    add b                                         ; $7b91: $80
    cp d                                          ; $7b92: $ba
    ld d, l                                       ; $7b93: $55
    rlca                                          ; $7b94: $07
    ret nz                                        ; $7b95: $c0

    rst $38                                       ; $7b96: $ff
    call nc, $cd60                                ; $7b97: $d4 $60 $cd
    halt                                          ; $7b9a: $76
    rst $10                                       ; $7b9b: $d7
    rst $18                                       ; $7b9c: $df
    ld h, b                                       ; $7b9d: $60
    ld [de], a                                    ; $7b9e: $12
    rla                                           ; $7b9f: $17
    xor b                                         ; $7ba0: $a8
    db $10                                        ; $7ba1: $10
    db $eb                                        ; $7ba2: $eb
    cp a                                          ; $7ba3: $bf
    cp e                                          ; $7ba4: $bb
    ldh a, [$57]                                  ; $7ba5: $f0 $57
    rst $18                                       ; $7ba7: $df
    and a                                         ; $7ba8: $a7
    daa                                           ; $7ba9: $27
    ld l, h                                       ; $7baa: $6c
    ld c, d                                       ; $7bab: $4a
    ld h, e                                       ; $7bac: $63
    ld sp, hl                                     ; $7bad: $f9
    ld [c], a                                     ; $7bae: $e2
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    nop                                           ; $7bb1: $00
    add d                                         ; $7bb2: $82
    rst $38                                       ; $7bb3: $ff
    ld c, e                                       ; $7bb4: $4b
    rst $38                                       ; $7bb5: $ff
    add hl, hl                                    ; $7bb6: $29
    call nc, $ffcb                                ; $7bb7: $d4 $cb $ff
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    rst $38                                       ; $7bbc: $ff
    rst $38                                       ; $7bbd: $ff
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    nop                                           ; $7bc2: $00
    rst $38                                       ; $7bc3: $ff
    rst $38                                       ; $7bc4: $ff
    dec bc                                        ; $7bc5: $0b
    ld e, e                                       ; $7bc6: $5b
    db $dd                                        ; $7bc7: $dd
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
    nop                                           ; $7bd3: $00
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
    nop                                           ; $7be4: $00
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    ld h, c                                       ; $7be7: $61
    ld a, a                                       ; $7be8: $7f
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
    nop                                           ; $7bf5: $00
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
    nop                                           ; $7c06: $00
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
    nop                                           ; $7c15: $00
    cp a                                          ; $7c16: $bf
    nop                                           ; $7c17: $00
    db $dd                                        ; $7c18: $dd
    rst $38                                       ; $7c19: $ff
    rst $38                                       ; $7c1a: $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    ld b, c                                       ; $7c22: $41
    pop af                                        ; $7c23: $f1
    nop                                           ; $7c24: $00
    nop                                           ; $7c25: $00
    nop                                           ; $7c26: $00
    rst $38                                       ; $7c27: $ff
    ld e, $00                                     ; $7c28: $1e $00
    nop                                           ; $7c2a: $00
    ld e, $7b                                     ; $7c2b: $1e $7b
    ld a, $3e                                     ; $7c2d: $3e $3e

jr_063_7c2f:
    ld a, $19                                     ; $7c2f: $3e $19
    ld a, b                                       ; $7c31: $78
    rst $38                                       ; $7c32: $ff
    db $e4                                        ; $7c33: $e4
    push af                                       ; $7c34: $f5
    ldh [$0d], a                                  ; $7c35: $e0 $0d
    nop                                           ; $7c37: $00
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $20                                       ; $7c3a: $e7
    and $c0                                       ; $7c3b: $e6 $c0
    pop hl                                        ; $7c3d: $e1
    add hl, de                                    ; $7c3e: $19
    ld a, $bf                                     ; $7c3f: $3e $bf
    ldh [$c0], a                                  ; $7c41: $e0 $c0
    rst $20                                       ; $7c43: $e7
    dec c                                         ; $7c44: $0d
    ld a, d                                       ; $7c45: $7a
    jp z, $c0ff                                   ; $7c46: $ca $ff $c0

    db $ec                                        ; $7c49: $ec
    cp a                                          ; $7c4a: $bf
    ldh [$66], a                                  ; $7c4b: $e0 $66
    add b                                         ; $7c4d: $80
    and $0d                                       ; $7c4e: $e6 $0d
    ld a, d                                       ; $7c50: $7a
    ret nz                                        ; $7c51: $c0

    rst $38                                       ; $7c52: $ff
    ret nz                                        ; $7c53: $c0

    xor $3e                                       ; $7c54: $ee $3e
    ld a, e                                       ; $7c56: $7b
    ld b, b                                       ; $7c57: $40
    push hl                                       ; $7c58: $e5
    xor b                                         ; $7c59: $a8
    pop bc                                        ; $7c5a: $c1
    ldh [$c0], a                                  ; $7c5b: $e0 $c0
    rst $38                                       ; $7c5d: $ff
    jp hl                                         ; $7c5e: $e9


    add sp, $09                                   ; $7c5f: $e8 $09
    nop                                           ; $7c61: $00
    ldh [rPCM34], a                               ; $7c62: $e0 $77
    rst $38                                       ; $7c64: $ff
    ldh [$50], a                                  ; $7c65: $e0 $50
    ld a, a                                       ; $7c67: $7f
    dec a                                         ; $7c68: $3d
    ld b, [hl]                                    ; $7c69: $46
    ld b, a                                       ; $7c6a: $47
    inc h                                         ; $7c6b: $24
    ld d, d                                       ; $7c6c: $52
    ld d, d                                       ; $7c6d: $52
    ld d, b                                       ; $7c6e: $50
    pop bc                                        ; $7c6f: $c1
    ldh [$a7], a                                  ; $7c70: $e0 $a7
    ld a, d                                       ; $7c72: $7a
    nop                                           ; $7c73: $00
    sub b                                         ; $7c74: $90
    ret z                                         ; $7c75: $c8

    rst $38                                       ; $7c76: $ff
    and $e5                                       ; $7c77: $e6 $e5
    dec e                                         ; $7c79: $1d
    ret nz                                        ; $7c7a: $c0

    db $e4                                        ; $7c7b: $e4
    dec a                                         ; $7c7c: $3d
    ld a, a                                       ; $7c7d: $7f
    ld [hl+], a                                   ; $7c7e: $22
    ld e, e                                       ; $7c7f: $5b
    ld e, e                                       ; $7c80: $5b
    inc [hl]                                      ; $7c81: $34
    dec [hl]                                      ; $7c82: $35
    dec a                                         ; $7c83: $3d
    ld d, c                                       ; $7c84: $51
    ret nz                                        ; $7c85: $c0

    ld [c], a                                     ; $7c86: $e2
    or b                                          ; $7c87: $b0
    ret                                           ; $7c88: $c9


    rst $28                                       ; $7c89: $ef
    xor [hl]                                      ; $7c8a: $ae
    pop hl                                        ; $7c8b: $e1
    xor d                                         ; $7c8c: $aa
    ld a, [c]                                     ; $7c8d: $f2
    ret nz                                        ; $7c8e: $c0

    push hl                                       ; $7c8f: $e5
    ld b, b                                       ; $7c90: $40
    ld e, e                                       ; $7c91: $5b
    rst $38                                       ; $7c92: $ff
    ldh [rNR41], a                                ; $7c93: $e0 $20
    jp hl                                         ; $7c95: $e9


    add hl, hl                                    ; $7c96: $29
    ret nz                                        ; $7c97: $c0

    rst $38                                       ; $7c98: $ff
    ld b, b                                       ; $7c99: $40
    db $f4                                        ; $7c9a: $f4
    ld b, c                                       ; $7c9b: $41
    pop bc                                        ; $7c9c: $c1
    pop hl                                        ; $7c9d: $e1
    ld e, h                                       ; $7c9e: $5c
    jr c, @+$3b                                   ; $7c9f: $38 $39

    ld hl, sp-$40                                 ; $7ca1: $f8 $c0
    ld hl, sp+$40                                 ; $7ca3: $f8 $40
    sub $c0                                       ; $7ca5: $d6 $c0
    db $e4                                        ; $7ca7: $e4
    jr nz, jr_063_7d06                            ; $7ca8: $20 $5c

    ld e, h                                       ; $7caa: $5c
    ld e, h                                       ; $7cab: $5c
    ld b, c                                       ; $7cac: $41
    jr nc, jr_063_7c2f                            ; $7cad: $30 $80

    db $f4                                        ; $7caf: $f4
    nop                                           ; $7cb0: $00
    jp c, $e340                                   ; $7cb1: $da $40 $e3

    pop bc                                        ; $7cb4: $c1
    pop hl                                        ; $7cb5: $e1
    ld e, h                                       ; $7cb6: $5c
    ld b, b                                       ; $7cb7: $40
    ret nz                                        ; $7cb8: $c0

    rst $38                                       ; $7cb9: $ff
    add b                                         ; $7cba: $80
    di                                            ; $7cbb: $f3
    dec de                                        ; $7cbc: $1b
    dec a                                         ; $7cbd: $3d
    ld [hl+], a                                   ; $7cbe: $22
    pop bc                                        ; $7cbf: $c1
    pop hl                                        ; $7cc0: $e1
    ld [hl+], a                                   ; $7cc1: $22
    dec a                                         ; $7cc2: $3d
    ret nz                                        ; $7cc3: $c0

    rst $38                                       ; $7cc4: $ff
    ld b, b                                       ; $7cc5: $40
    di                                            ; $7cc6: $f3
    ld b, b                                       ; $7cc7: $40
    pop bc                                        ; $7cc8: $c1
    rst $00                                       ; $7cc9: $c7
    ld b, [hl]                                    ; $7cca: $46
    ld b, [hl]                                    ; $7ccb: $46
    dec a                                         ; $7ccc: $3d
    ld b, b                                       ; $7ccd: $40
    jp $ffff                                      ; $7cce: $c3 $ff $ff


    nop                                           ; $7cd1: $00
    call Call_063_7e7d                            ; $7cd2: $cd $7d $7e
    scf                                           ; $7cd5: $37
    ld c, h                                       ; $7cd6: $4c
    ld c, l                                       ; $7cd7: $4d
    ld d, d                                       ; $7cd8: $52
    ld bc, $7ec0                                  ; $7cd9: $01 $c0 $7e
    ld a, a                                       ; $7cdc: $7f
    ret nz                                        ; $7cdd: $c0

    ld [c], a                                     ; $7cde: $e2
    rst $38                                       ; $7cdf: $ff
    cp a                                          ; $7ce0: $bf
    cp [hl]                                       ; $7ce1: $be
    ret nz                                        ; $7ce2: $c0

    xor e                                         ; $7ce3: $ab
    ld a, l                                       ; $7ce4: $7d
    ccf                                           ; $7ce5: $3f
    ld a, c                                       ; $7ce6: $79
    ld a, [hl]                                    ; $7ce7: $7e
    ld c, e                                       ; $7ce8: $4b
    rst $38                                       ; $7ce9: $ff
    ldh [$7e], a                                  ; $7cea: $e0 $7e
    db $e3                                        ; $7cec: $e3
    ld a, c                                       ; $7ced: $79
    ccf                                           ; $7cee: $3f
    cp a                                          ; $7cef: $bf
    ldh [$c0], a                                  ; $7cf0: $e0 $c0
    rst $38                                       ; $7cf2: $ff
    add b                                         ; $7cf3: $80
    call z, Call_000_3f7d                         ; $7cf4: $cc $7d $3f
    ccf                                           ; $7cf7: $3f
    dec a                                         ; $7cf8: $3d
    ld a, c                                       ; $7cf9: $79
    cp a                                          ; $7cfa: $bf
    pop hl                                        ; $7cfb: $e1
    ld a, [hl]                                    ; $7cfc: $7e
    ld a, c                                       ; $7cfd: $79
    ld a, c                                       ; $7cfe: $79
    ccf                                           ; $7cff: $3f
    cp a                                          ; $7d00: $bf
    ldh [$c1], a                                  ; $7d01: $e0 $c1
    rst $38                                       ; $7d03: $ff
    sbc b                                         ; $7d04: $98
    add b                                         ; $7d05: $80

jr_063_7d06:
    adc e                                         ; $7d06: $8b
    pop bc                                        ; $7d07: $c1
    ldh [$c0], a                                  ; $7d08: $e0 $c0
    ldh [$79], a                                  ; $7d0a: $e0 $79
    ld a, [hl]                                    ; $7d0c: $7e
    pop bc                                        ; $7d0d: $c1
    ldh [$c0], a                                  ; $7d0e: $e0 $c0
    ldh [$3f], a                                  ; $7d10: $e0 $3f
    ld bc, $c07f                                  ; $7d12: $01 $7f $c0
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
    nop                                           ; $7d22: $00
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $30                                       ; $7d29: $f7
    or $94                                        ; $7d2a: $f6 $94
    call nz, $df8d                                ; $7d2c: $c4 $8d $df
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    nop                                           ; $7d33: $00
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
    nop                                           ; $7d44: $00
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    cp a                                          ; $7d4c: $bf
    rst $38                                       ; $7d4d: $ff
    cp a                                          ; $7d4e: $bf
    ret nz                                        ; $7d4f: $c0

    rst $38                                       ; $7d50: $ff
    sub $ff                                       ; $7d51: $d6 $ff
    pop bc                                        ; $7d53: $c1
    rst $38                                       ; $7d54: $ff
    nop                                           ; $7d55: $00
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    ret nz                                        ; $7d58: $c0

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
    nop                                           ; $7d66: $00
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
    nop                                           ; $7d77: $00
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
    nop                                           ; $7d88: $00
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
    nop                                           ; $7d99: $00
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
    nop                                           ; $7daa: $00
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
    nop                                           ; $7dbb: $00
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
    nop                                           ; $7dcc: $00
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
    ei                                            ; $7dd7: $fb
    push af                                       ; $7dd8: $f5
    nop                                           ; $7dd9: $00
    nop                                           ; $7dda: $00
    nop                                           ; $7ddb: $00
    call $ff00                                    ; $7ddc: $cd $00 $ff
    jp hl                                         ; $7ddf: $e9


    scf                                           ; $7de0: $37
    ld [hl-], a                                   ; $7de1: $32
    pop af                                        ; $7de2: $f1
    ld [$ffff], a                                 ; $7de3: $ea $ff $ff
    inc sp                                        ; $7de6: $33
    ld sp, $dcfe                                  ; $7de7: $31 $fe $dc
    ld a, [c]                                     ; $7dea: $f2
    ld [hl], $30                                  ; $7deb: $36 $30
    scf                                           ; $7ded: $37
    ld h, $20                                     ; $7dee: $26 $20
    daa                                           ; $7df0: $27
    db $10                                        ; $7df1: $10
    ei                                            ; $7df2: $fb
    ld d, $17                                     ; $7df3: $16 $17
    cp [hl]                                       ; $7df5: $be
    or $34                                        ; $7df6: $f6 $34
    ld [hl], $32                                  ; $7df8: $36 $32
    jr nc, jr_063_7e33                            ; $7dfa: $30 $37

    rrca                                          ; $7dfc: $0f
    ld sp, $3133                                  ; $7dfd: $31 $33 $31
    inc sp                                        ; $7e00: $33
    sbc h                                         ; $7e01: $9c
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    ei                                            ; $7e04: $fb
    nop                                           ; $7e05: $00
    nop                                           ; $7e06: $00
    nop                                           ; $7e07: $00
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

jr_063_7e33:
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

Call_063_7e7d:
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
