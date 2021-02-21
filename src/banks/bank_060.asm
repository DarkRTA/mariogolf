; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $060", ROMX[$4000], BANK[$60]

Jump_060_4000:
    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    call nc, $104c                                ; $4002: $d4 $4c $10
    ld d, [hl]                                    ; $4005: $56
    ld h, a                                       ; $4006: $67
    ld e, [hl]                                    ; $4007: $5e
    ld h, l                                       ; $4008: $65
    ld h, h                                       ; $4009: $64
    ld c, h                                       ; $400a: $4c

Jump_060_400b:
    ld [hl], d                                    ; $400b: $72
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    xor d                                         ; $400e: $aa
    ld b, l                                       ; $400f: $45
    dec de                                        ; $4010: $1b
    ld c, h                                       ; $4011: $4c
    dec a                                         ; $4012: $3d
    ld c, h                                       ; $4013: $4c
    rst $08                                       ; $4014: $cf
    ld c, l                                       ; $4015: $4d
    ld c, l                                       ; $4016: $4d
    dec c                                         ; $4017: $0d
    ld c, l                                       ; $4018: $4d
    rst $38                                       ; $4019: $ff
    ldh [$fb], a                                  ; $401a: $e0 $fb
    ld [c], a                                     ; $401c: $e2
    ld c, l                                       ; $401d: $4d
    ld l, l                                       ; $401e: $6d
    rst $38                                       ; $401f: $ff
    ld l, l                                       ; $4020: $6d
    ld l, l                                       ; $4021: $6d
    ld l, $2e                                     ; $4022: $2e $2e
    ld c, $6d                                     ; $4024: $0e $6d
    ld l, l                                       ; $4026: $6d
    ld c, l                                       ; $4027: $4d
    ld de, $ff0d                                  ; $4028: $11 $0d $ff
    ldh [$e6], a                                  ; $402b: $e0 $e6
    ldh [$fb], a                                  ; $402d: $e0 $fb
    db $e3                                        ; $402f: $e3
    dec l                                         ; $4030: $2d
    pop af                                        ; $4031: $f1
    ldh [$dc], a                                  ; $4032: $e0 $dc
    rst $20                                       ; $4034: $e7
    ei                                            ; $4035: $fb
    db $e3                                        ; $4036: $e3
    ldh a, [$e2]                                  ; $4037: $f0 $e2
    pop hl                                        ; $4039: $e1
    db $ec                                        ; $403a: $ec
    add sp, -$36                                  ; $403b: $e8 $ca
    ldh [$c0], a                                  ; $403d: $e0 $c0
    ld [c], a                                     ; $403f: $e2
    ld l, $2e                                     ; $4040: $2e $2e

Call_060_4042:
    ld l, [hl]                                    ; $4042: $6e
    ld l, $23                                     ; $4043: $2e $23
    ld c, [hl]                                    ; $4045: $4e
    ld c, $c4                                     ; $4046: $0e $c4
    ldh [$bf], a                                  ; $4048: $e0 $bf
    ldh [$ee], a                                  ; $404a: $e0 $ee
    ldh [$6d], a                                  ; $404c: $e0 $6d
    cp $e4                                        ; $404e: $fe $e4
    ld a, [c]                                     ; $4050: $f2
    db $e3                                        ; $4051: $e3
    inc a                                         ; $4052: $3c
    cp $f4                                        ; $4053: $fe $f4
    add b                                         ; $4055: $80
    pop hl                                        ; $4056: $e1
    ld l, [hl]                                    ; $4057: $6e
    ld c, $0e                                     ; $4058: $0e $0e
    ld c, l                                       ; $405a: $4d
    rst $08                                       ; $405b: $cf
    ldh [$c2], a                                  ; $405c: $e0 $c2
    ldh [rNR41], a                                ; $405e: $e0 $20
    add b                                         ; $4060: $80
    ldh [$c0], a                                  ; $4061: $e0 $c0
    ldh [$80], a                                  ; $4063: $e0 $80
    ld [c], a                                     ; $4065: $e2
    adc d                                         ; $4066: $8a
    db $e3                                        ; $4067: $e3
    ld h, d                                       ; $4068: $62
    ldh [$2d], a                                  ; $4069: $e0 $2d
    or e                                          ; $406b: $b3
    ldh [$a0], a                                  ; $406c: $e0 $a0
    ldh [rP1], a                                  ; $406e: $e0 $00
    add b                                         ; $4070: $80
    db $f4                                        ; $4071: $f4
    ld b, b                                       ; $4072: $40
    pop hl                                        ; $4073: $e1
    add b                                         ; $4074: $80
    pop hl                                        ; $4075: $e1
    cp l                                          ; $4076: $bd
    ldh [$c2], a                                  ; $4077: $e0 $c2
    pop hl                                        ; $4079: $e1
    ret nz                                        ; $407a: $c0

    pop hl                                        ; $407b: $e1
    cp [hl]                                       ; $407c: $be
    ld [c], a                                     ; $407d: $e2
    ld sp, $01e0                                  ; $407e: $31 $e0 $01
    dec bc                                        ; $4081: $0b
    rst $38                                       ; $4082: $ff
    db $e3                                        ; $4083: $e3
    cp l                                          ; $4084: $bd
    db $e3                                        ; $4085: $e3
    ld e, e                                       ; $4086: $5b
    db $e3                                        ; $4087: $e3
    and a                                         ; $4088: $a7
    ld [c], a                                     ; $4089: $e2
    dec a                                         ; $408a: $3d
    db $e4                                        ; $408b: $e4
    dec sp                                        ; $408c: $3b
    push hl                                       ; $408d: $e5
    ld b, b                                       ; $408e: $40
    ldh [rNR10], a                                ; $408f: $e0 $10
    and b                                         ; $4091: $a0
    pop hl                                        ; $4092: $e1
    add hl, sp                                    ; $4093: $39
    pop hl                                        ; $4094: $e1
    ret nz                                        ; $4095: $c0

    ld [c], a                                     ; $4096: $e2
    ld [hl], e                                    ; $4097: $73
    pop hl                                        ; $4098: $e1
    dec c                                         ; $4099: $0d
    jp Jump_060_77e1                              ; $409a: $c3 $e1 $77


    db $e3                                        ; $409d: $e3
    di                                            ; $409e: $f3
    jp nz, Jump_000_2d01                          ; $409f: $c2 $01 $2d

    ld e, e                                       ; $40a2: $5b
    ld [c], a                                     ; $40a3: $e2
    and [hl]                                      ; $40a4: $a6
    pop hl                                        ; $40a5: $e1
    call nz, $f2e4                                ; $40a6: $c4 $e4 $f2
    add $80                                       ; $40a9: $c6 $80
    ld [c], a                                     ; $40ab: $e2
    call $80e2                                    ; $40ac: $cd $e2 $80
    db $e4                                        ; $40af: $e4
    db $e3                                        ; $40b0: $e3
    ld l, l                                       ; $40b1: $6d
    ld l, l                                       ; $40b2: $6d
    nop                                           ; $40b3: $00
    ldh [$84], a                                  ; $40b4: $e0 $84
    ld [c], a                                     ; $40b6: $e2
    ret nz                                        ; $40b7: $c0

    rst $20                                       ; $40b8: $e7
    dec c                                         ; $40b9: $0d
    ld l, l                                       ; $40ba: $6d
    dec c                                         ; $40bb: $0d
    ld hl, $800d                                  ; $40bc: $21 $0d $80
    add sp, -$30                                  ; $40bf: $e8 $d0
    pop bc                                        ; $40c1: $c1
    add b                                         ; $40c2: $80
    jp hl                                         ; $40c3: $e9


    or b                                          ; $40c4: $b0
    jp nz, $c00d                                  ; $40c5: $c2 $0d $c0

    pop bc                                        ; $40c8: $c1

Jump_060_40c9:
    add d                                         ; $40c9: $82
    jp nz, Jump_060_6d03                          ; $40ca: $c2 $03 $6d

    dec c                                         ; $40cd: $0d
    jp nz, $c0ec                                  ; $40ce: $c2 $ec $c0

    db $e3                                        ; $40d1: $e3
    ld e, e                                       ; $40d2: $5b
    db $e3                                        ; $40d3: $e3
    and a                                         ; $40d4: $a7
    pop bc                                        ; $40d5: $c1
    ret nc                                        ; $40d6: $d0

    pop bc                                        ; $40d7: $c1
    ld a, b                                       ; $40d8: $78
    push bc                                       ; $40d9: $c5
    inc b                                         ; $40da: $04
    ld b, h                                       ; $40db: $44
    db $e4                                        ; $40dc: $e4
    ld e, e                                       ; $40dd: $5b
    pop bc                                        ; $40de: $c1
    ld c, $4b                                     ; $40df: $0e $4b
    jp $e094                                      ; $40e1: $c3 $94 $e0


    cp $ed                                        ; $40e4: $fe $ed
    dec l                                         ; $40e6: $2d
    pop bc                                        ; $40e7: $c1
    dec de                                        ; $40e8: $1b
    db $e4                                        ; $40e9: $e4
    jr c, @-$49                                   ; $40ea: $38 $b5

    pop bc                                        ; $40ec: $c1
    ld d, b                                       ; $40ed: $50
    call nz, $c245                                ; $40ee: $c4 $45 $c2
    ld l, [hl]                                    ; $40f1: $6e
    ld c, $4e                                     ; $40f2: $0e $4e
    ld [bc], a                                    ; $40f4: $02
    ld [c], a                                     ; $40f5: $e2
    ld hl, sp-$5f                                 ; $40f6: $f8 $a1
    inc c                                         ; $40f8: $0c
    dec bc                                        ; $40f9: $0b
    jp $e709                                      ; $40fa: $c3 $09 $e7


    dec hl                                        ; $40fd: $2b
    dec bc                                        ; $40fe: $0b
    add h                                         ; $40ff: $84
    ret nz                                        ; $4100: $c0

    pop bc                                        ; $4101: $c1
    db $e4                                        ; $4102: $e4
    ret c                                         ; $4103: $d8

    and d                                         ; $4104: $a2
    rst $10                                       ; $4105: $d7
    push bc                                       ; $4106: $c5
    ret nz                                        ; $4107: $c0

    add b                                         ; $4108: $80
    rst $20                                       ; $4109: $e7
    ld c, a                                       ; $410a: $4f
    pop bc                                        ; $410b: $c1
    cp [hl]                                       ; $410c: $be
    ldh [$bb], a                                  ; $410d: $e0 $bb
    jp $e35f                                      ; $410f: $c3 $5f $e3


    ret                                           ; $4112: $c9


    add $0b                                       ; $4113: $c6 $0b
    dec bc                                        ; $4115: $0b
    inc bc                                        ; $4116: $03
    dec hl                                        ; $4117: $2b
    dec hl                                        ; $4118: $2b
    cp a                                          ; $4119: $bf
    ld [c], a                                     ; $411a: $e2
    pop bc                                        ; $411b: $c1
    ret nz                                        ; $411c: $c0

    cp h                                          ; $411d: $bc

jr_060_411e:
    and d                                         ; $411e: $a2
    sub e                                         ; $411f: $93
    db $e4                                        ; $4120: $e4
    dec [hl]                                      ; $4121: $35
    db $e3                                        ; $4122: $e3
    sbc l                                         ; $4123: $9d
    and d                                         ; $4124: $a2
    inc e                                         ; $4125: $1c

Jump_060_4126:
    push bc                                       ; $4126: $c5
    and c                                         ; $4127: $a1
    rst $00                                       ; $4128: $c7
    ld [c], a                                     ; $4129: $e2
    ld l, $0e                                     ; $412a: $2e $0e
    ld l, [hl]                                    ; $412c: $6e
    ld [hl], l                                    ; $412d: $75
    ldh [$bd], a                                  ; $412e: $e0 $bd
    ld [c], a                                     ; $4130: $e2
    adc h                                         ; $4131: $8c
    db $e3                                        ; $4132: $e3
    rst $08                                       ; $4133: $cf
    dec c                                         ; $4134: $0d
    dec c                                         ; $4135: $0d
    ld l, e                                       ; $4136: $6b
    ld l, e                                       ; $4137: $6b
    cp a                                          ; $4138: $bf
    ldh [$7b], a                                  ; $4139: $e0 $7b
    jp $2d4d                                      ; $413b: $c3 $4d $2d


    pop bc                                        ; $413e: $c1
    dec l                                         ; $413f: $2d
    ld a, [hl+]                                   ; $4140: $2a
    ret nz                                        ; $4141: $c0

    sub e                                         ; $4142: $93
    add sp, $74                                   ; $4143: $e8 $74
    and [hl]                                      ; $4145: $a6
    ret nz                                        ; $4146: $c0

    and $84                                       ; $4147: $e6 $84
    and b                                         ; $4149: $a0
    ld c, $4e                                     ; $414a: $0e $4e
    ld a, h                                       ; $414c: $7c
    dec [hl]                                      ; $414d: $35
    db $e3                                        ; $414e: $e3
    cp a                                          ; $414f: $bf
    db $e4                                        ; $4150: $e4
    ld c, l                                       ; $4151: $4d
    ld l, e                                       ; $4152: $6b
    ld c, e                                       ; $4153: $4b
    ld c, e                                       ; $4154: $4b
    ld c, e                                       ; $4155: $4b
    dec sp                                        ; $4156: $3b
    push bc                                       ; $4157: $c5
    nop                                           ; $4158: $00
    db $fd                                        ; $4159: $fd
    and l                                         ; $415a: $a5
    jr nz, jr_060_411e                            ; $415b: $20 $c1

    or l                                          ; $415d: $b5
    pop hl                                        ; $415e: $e1
    and b                                         ; $415f: $a0
    and e                                         ; $4160: $a3
    ret nz                                        ; $4161: $c0

    jp nz, $e2ed                                  ; $4162: $c2 $ed $e2

    add [hl]                                      ; $4165: $86
    and b                                         ; $4166: $a0
    dec [hl]                                      ; $4167: $35
    rst $20                                       ; $4168: $e7
    ld e, $7e                                     ; $4169: $1e $7e
    db $e4                                        ; $416b: $e4
    ld l, e                                       ; $416c: $6b
    dec hl                                        ; $416d: $2b
    dec bc                                        ; $416e: $0b
    ld l, e                                       ; $416f: $6b
    ei                                            ; $4170: $fb
    and [hl]                                      ; $4171: $a6
    ld a, c                                       ; $4172: $79
    and b                                         ; $4173: $a0
    ld d, e                                       ; $4174: $53
    and $60                                       ; $4175: $e6 $60
    ld c, b                                       ; $4177: $48
    ret                                           ; $4178: $c9


    ld [bc], a                                    ; $4179: $02
    call nz, $e5c0                                ; $417a: $c4 $c0 $e5
    or h                                          ; $417d: $b4
    jp $c4c1                                      ; $417e: $c3 $c1 $c4


    dec hl                                        ; $4181: $2b
    ld c, e                                       ; $4182: $4b
    cp e                                          ; $4183: $bb
    xor b                                         ; $4184: $a8
    nop                                           ; $4185: $00
    cp h                                          ; $4186: $bc
    and c                                         ; $4187: $a1
    and b                                         ; $4188: $a0
    and e                                         ; $4189: $a3
    sbc b                                         ; $418a: $98
    add b                                         ; $418b: $80
    sub a                                         ; $418c: $97
    add b                                         ; $418d: $80
    sub [hl]                                      ; $418e: $96
    add d                                         ; $418f: $82
    sub e                                         ; $4190: $93
    add b                                         ; $4191: $80
    add a                                         ; $4192: $87
    add d                                         ; $4193: $82
    ld b, h                                       ; $4194: $44
    and c                                         ; $4195: $a1
    ld [$e5c0], sp                                ; $4196: $08 $c0 $e5
    add c                                         ; $4199: $81
    and c                                         ; $419a: $a1
    rst $38                                       ; $419b: $ff
    jp Jump_060_400b                              ; $419c: $c3 $0b $40


    ldh [$f2], a                                  ; $419f: $e0 $f2
    push bc                                       ; $41a1: $c5
    dec sp                                        ; $41a2: $3b
    jp nz, $c1d8                                  ; $41a3: $c2 $d8 $c1

    push af                                       ; $41a6: $f5
    ld c, $98                                     ; $41a7: $0e $98
    add c                                         ; $41a9: $81
    ld l, $98                                     ; $41aa: $2e $98
    add b                                         ; $41ac: $80
    ld c, [hl]                                    ; $41ad: $4e
    ld l, $0e                                     ; $41ae: $2e $0e
    dec c                                         ; $41b0: $0d
    ld c, b                                       ; $41b1: $48
    or a                                          ; $41b2: $b7
    and $80                                       ; $41b3: $e6 $80
    ld [$c4bd], a                                 ; $41b5: $ea $bd $c4
    dec hl                                        ; $41b8: $2b
    nop                                           ; $41b9: $00
    pop hl                                        ; $41ba: $e1
    ld a, [hl-]                                   ; $41bb: $3a
    and a                                         ; $41bc: $a7
    ld l, l                                       ; $41bd: $6d
    call c, Call_000_0081                         ; $41be: $dc $81 $00
    ld h, e                                       ; $41c1: $63
    add c                                         ; $41c2: $81
    ld e, b                                       ; $41c3: $58
    add c                                         ; $41c4: $81
    ld d, a                                       ; $41c5: $57
    add c                                         ; $41c6: $81
    add hl, bc                                    ; $41c7: $09
    db $e3                                        ; $41c8: $e3
    or a                                          ; $41c9: $b7
    ld [c], a                                     ; $41ca: $e2
    inc bc                                        ; $41cb: $03
    and d                                         ; $41cc: $a2
    ld b, b                                       ; $41cd: $40
    db $e4                                        ; $41ce: $e4
    inc bc                                        ; $41cf: $03
    push bc                                       ; $41d0: $c5
    inc bc                                        ; $41d1: $03
    ld a, [bc]                                    ; $41d2: $0a
    ld a, [bc]                                    ; $41d3: $0a
    cp a                                          ; $41d4: $bf
    ret nz                                        ; $41d5: $c0

    ret nz                                        ; $41d6: $c0

    jp hl                                         ; $41d7: $e9


    pop hl                                        ; $41d8: $e1
    ld h, e                                       ; $41d9: $63
    call z, $14a1                                 ; $41da: $cc $a1 $14
    and $b7                                       ; $41dd: $e6 $b7
    push hl                                       ; $41df: $e5
    ld l, b                                       ; $41e0: $68
    ret nz                                        ; $41e1: $c0

Jump_060_41e2:
    db $eb                                        ; $41e2: $eb
    cp a                                          ; $41e3: $bf
    ld h, c                                       ; $41e4: $61
    pop bc                                        ; $41e5: $c1
    ldh [$2a], a                                  ; $41e6: $e0 $2a
    ld b, b                                       ; $41e8: $40
    ldh [$2b], a                                  ; $41e9: $e0 $2b
    ld c, e                                       ; $41eb: $4b
    pop bc                                        ; $41ec: $c1
    rst $20                                       ; $41ed: $e7
    add b                                         ; $41ee: $80
    pop hl                                        ; $41ef: $e1
    ld h, e                                       ; $41f0: $63
    call nc, $89c9                                ; $41f1: $d4 $c9 $89
    pop bc                                        ; $41f4: $c1
    ld c, e                                       ; $41f5: $4b
    and $be                                       ; $41f6: $e6 $be
    and d                                         ; $41f8: $a2
    ret z                                         ; $41f9: $c8

    ld h, b                                       ; $41fa: $60
    ret nz                                        ; $41fb: $c0

    ld h, e                                       ; $41fc: $63
    ld l, e                                       ; $41fd: $6b

Call_060_41fe:
    inc bc                                        ; $41fe: $03
    ld a, [hl+]                                   ; $41ff: $2a

Jump_060_4200:
    ld a, [bc]                                    ; $4200: $0a
    ld b, b                                       ; $4201: $40
    ldh [$fc], a                                  ; $4202: $e0 $fc
    and b                                         ; $4204: $a0
    pop af                                        ; $4205: $f1
    and h                                         ; $4206: $a4
    ld h, h                                       ; $4207: $64
    ld h, b                                       ; $4208: $60
    pop hl                                        ; $4209: $e1

Call_060_420a:
    ld h, e                                       ; $420a: $63
    ret nz                                        ; $420b: $c0

    ld a, [c]                                     ; $420c: $f2
    jr c, jr_060_4228                             ; $420d: $38 $19

    and l                                         ; $420f: $a5
    dec e                                         ; $4210: $1d
    db $e3                                        ; $4211: $e3
    sub c                                         ; $4212: $91
    add c                                         ; $4213: $81
    ld c, l                                       ; $4214: $4d
    ld a, [hl+]                                   ; $4215: $2a
    ld a, [hl+]                                   ; $4216: $2a
    nop                                           ; $4217: $00
    pop hl                                        ; $4218: $e1
    ld a, e                                       ; $4219: $7b
    ldh [rP1], a                                  ; $421a: $e0 $00
    ret nz                                        ; $421c: $c0

    ld h, b                                       ; $421d: $60
    add hl, sp                                    ; $421e: $39
    and c                                         ; $421f: $a1
    adc l                                         ; $4220: $8d
    jp nz, $8216                                  ; $4221: $c2 $16 $82

    ld d, h                                       ; $4224: $54
    ret z                                         ; $4225: $c8

    ret nz                                        ; $4226: $c0

    db $eb                                        ; $4227: $eb

jr_060_4228:
    add l                                         ; $4228: $85
    ld h, l                                       ; $4229: $65
    cp [hl]                                       ; $422a: $be
    add d                                         ; $422b: $82
    ld a, [bc]                                    ; $422c: $0a
    jp nz, $4ba1                                  ; $422d: $c2 $a1 $4b

    ei                                            ; $4230: $fb
    ret nz                                        ; $4231: $c0

    ld l, d                                       ; $4232: $6a
    ei                                            ; $4233: $fb
    add b                                         ; $4234: $80
    db $ed                                        ; $4235: $ed
    ld b, c                                       ; $4236: $41
    ret nz                                        ; $4237: $c0

    and $14                                       ; $4238: $e6 $14
    rst $00                                       ; $423a: $c7
    or c                                          ; $423b: $b1
    ld l, l                                       ; $423c: $6d
    add b                                         ; $423d: $80
    db $ed                                        ; $423e: $ed
    ei                                            ; $423f: $fb
    and $bf                                       ; $4240: $e6 $bf
    ld b, c                                       ; $4242: $41
    dec bc                                        ; $4243: $0b
    ld l, e                                       ; $4244: $6b
    ld a, a                                       ; $4245: $7f
    and b                                         ; $4246: $a0
    dec hl                                        ; $4247: $2b
    rrca                                          ; $4248: $0f
    ld a, [bc]                                    ; $4249: $0a
    ld a, [hl+]                                   ; $424a: $2a
    ld a, [hl+]                                   ; $424b: $2a
    dec bc                                        ; $424c: $0b
    add d                                         ; $424d: $82
    and d                                         ; $424e: $a2
    add b                                         ; $424f: $80
    db $e4                                        ; $4250: $e4
    or $62                                        ; $4251: $f6 $62
    ret nz                                        ; $4253: $c0

    db $ed                                        ; $4254: $ed
    pop de                                        ; $4255: $d1
    ld l, l                                       ; $4256: $6d
    scf                                           ; $4257: $37
    jp nz, $e1e4                                  ; $4258: $c2 $e4 $e1

    ld b, d                                       ; $425b: $42
    adc b                                         ; $425c: $88
    dec hl                                        ; $425d: $2b
    add b                                         ; $425e: $80
    pop bc                                        ; $425f: $c1
    ld c, e                                       ; $4260: $4b
    dec bc                                        ; $4261: $0b
    rlca                                          ; $4262: $07
    ld a, [bc]                                    ; $4263: $0a
    ld a, [bc]                                    ; $4264: $0a
    ld a, [bc]                                    ; $4265: $0a
    ld a, a                                       ; $4266: $7f
    ld h, d                                       ; $4267: $62
    ld h, e                                       ; $4268: $63
    ld b, h                                       ; $4269: $44
    rst $08                                       ; $426a: $cf
    and b                                         ; $426b: $a0
    jp nz, $c9a5                                  ; $426c: $c2 $a5 $c9

    and e                                         ; $426f: $a3
    and b                                         ; $4270: $a0
    ld [hl], a                                    ; $4271: $77
    ld [c], a                                     ; $4272: $e2
    add l                                         ; $4273: $85
    ld b, [hl]                                    ; $4274: $46
    ld b, e                                       ; $4275: $43
    adc b                                         ; $4276: $88
    ld b, b                                       ; $4277: $40
    jp nz, $e0c0                                  ; $4278: $c2 $c0 $e0

    ld a, [hl+]                                   ; $427b: $2a
    ld a, l                                       ; $427c: $7d
    pop bc                                        ; $427d: $c1
    ld c, l                                       ; $427e: $4d
    inc bc                                        ; $427f: $03
    dec l                                         ; $4280: $2d
    ld l, l                                       ; $4281: $6d
    ld l, l                                       ; $4282: $6d
    ld b, c                                       ; $4283: $41
    ld e, e                                       ; $4284: $5b
    add l                                         ; $4285: $85
    dec sp                                        ; $4286: $3b
    ld b, l                                       ; $4287: $45
    or a                                          ; $4288: $b7
    push hl                                       ; $4289: $e5
    add l                                         ; $428a: $85
    ld c, d                                       ; $428b: $4a
    ld bc, $34c5                                  ; $428c: $01 $c5 $34
    ld b, b                                       ; $428f: $40
    pop bc                                        ; $4290: $c1
    ccf                                           ; $4291: $3f
    ret nz                                        ; $4292: $c0

    ld c, e                                       ; $4293: $4b
    add hl, hl                                    ; $4294: $29
    db $e3                                        ; $4295: $e3
    ld l, l                                       ; $4296: $6d
    ld c, $a3                                     ; $4297: $0e $a3
    ld b, b                                       ; $4299: $40
    ld e, e                                       ; $429a: $5b
    add l                                         ; $429b: $85
    jr nz, jr_060_42f0                            ; $429c: $20 $52

    ld b, c                                       ; $429e: $41
    dec sp                                        ; $429f: $3b
    ld h, d                                       ; $42a0: $62
    ret nz                                        ; $42a1: $c0

    inc h                                         ; $42a2: $24
    and h                                         ; $42a3: $a4
    add $42                                       ; $42a4: $c6 $42
    add a                                         ; $42a6: $87
    ld a, [bc]                                    ; $42a7: $0a
    ld b, b                                       ; $42a8: $40
    pop bc                                        ; $42a9: $c1
    ld a, $c0                                     ; $42aa: $3e $c0
    nop                                           ; $42ac: $00
    dec a                                         ; $42ad: $3d
    and h                                         ; $42ae: $a4
    inc d                                         ; $42af: $14
    and c                                         ; $42b0: $a1
    ld e, e                                       ; $42b1: $5b
    add a                                         ; $42b2: $87
    rrca                                          ; $42b3: $0f
    ld b, b                                       ; $42b4: $40
    dec sp                                        ; $42b5: $3b

jr_060_42b6:
    ld h, [hl]                                    ; $42b6: $66
    or e                                          ; $42b7: $b3
    db $e3                                        ; $42b8: $e3
    and h                                         ; $42b9: $a4
    call nz, $8257                                ; $42ba: $c4 $57 $82
    nop                                           ; $42bd: $00
    ld b, d                                       ; $42be: $42
    add e                                         ; $42bf: $83
    ret nz                                        ; $42c0: $c0

jr_060_42c1:
    ld [c], a                                     ; $42c1: $e2
    cp c                                          ; $42c2: $b9
    ldh [$c0], a                                  ; $42c3: $e0 $c0
    ret nz                                        ; $42c5: $c0

    ld b, d                                       ; $42c6: $42
    and e                                         ; $42c7: $a3
    ld [$90a2], sp                                ; $42c8: $08 $a2 $90
    ld h, a                                       ; $42cb: $67
    add b                                         ; $42cc: $80
    and $00                                       ; $42cd: $e6 $00
    dec b                                         ; $42cf: $05
    ld b, [hl]                                    ; $42d0: $46
    ld b, c                                       ; $42d1: $41
    ld hl, $66c0                                  ; $42d2: $21 $c0 $66
    add l                                         ; $42d5: $85
    and b                                         ; $42d6: $a0
    add b                                         ; $42d7: $80
    and c                                         ; $42d8: $a1
    pop bc                                        ; $42d9: $c1
    ret nz                                        ; $42da: $c0

Jump_060_42db:
    ret nz                                        ; $42db: $c0

    ret nz                                        ; $42dc: $c0

    ld a, a                                       ; $42dd: $7f
    ld b, c                                       ; $42de: $41
    nop                                           ; $42df: $00
    adc e                                         ; $42e0: $8b
    add d                                         ; $42e1: $82
    ld e, e                                       ; $42e2: $5b
    add [hl]                                      ; $42e3: $86
    or b                                          ; $42e4: $b0
    ld b, d                                       ; $42e5: $42
    add b                                         ; $42e6: $80
    ld b, [hl]                                    ; $42e7: $46
    and h                                         ; $42e8: $a4
    call nz, Call_060_43a7                        ; $42e9: $c4 $a7 $43
    pop de                                        ; $42ec: $d1
    and d                                         ; $42ed: $a2
    ld b, a                                       ; $42ee: $47
    ret nz                                        ; $42ef: $c0

jr_060_42f0:
    nop                                           ; $42f0: $00
    rst $38                                       ; $42f1: $ff
    and c                                         ; $42f2: $a1
    cp a                                          ; $42f3: $bf
    ld [c], a                                     ; $42f4: $e2
    pop af                                        ; $42f5: $f1
    jr nz, jr_060_42b6                            ; $42f6: $20 $be

    ld hl, $895b                                  ; $42f8: $21 $5b $89
    ld [hl], b                                    ; $42fb: $70
    ld b, a                                       ; $42fc: $47
    ld b, $67                                     ; $42fd: $06 $67
    pop bc                                        ; $42ff: $c1
    ld [bc], a                                    ; $4300: $02
    jr c, jr_060_42c1                             ; $4301: $38 $be

    ld b, l                                       ; $4303: $45
    adc b                                         ; $4304: $88
    pop hl                                        ; $4305: $e1
    ld a, a                                       ; $4306: $7f
    inc hl                                        ; $4307: $23
    ld a, [bc]                                    ; $4308: $0a
    ld c, e                                       ; $4309: $4b
    dec l                                         ; $430a: $2d
    cp e                                          ; $430b: $bb
    inc b                                         ; $430c: $04
    ret nz                                        ; $430d: $c0

    ld [$7da0], a                                 ; $430e: $ea $a0 $7d
    dec h                                         ; $4311: $25
    ld b, $68                                     ; $4312: $06 $68
    ld [hl], a                                    ; $4314: $77
    ld hl, $2305                                  ; $4315: $21 $05 $23
    ret nz                                        ; $4318: $c0

    pop bc                                        ; $4319: $c1
    ld a, [hl+]                                   ; $431a: $2a
    ld b, b                                       ; $431b: $40
    inc h                                         ; $431c: $24
    dec bc                                        ; $431d: $0b
    inc bc                                        ; $431e: $03
    ld [$ea4b], sp                                ; $431f: $08 $4b $ea
    call nz, $8b9b                                ; $4322: $c4 $9b $8b
    add e                                         ; $4325: $83
    dec h                                         ; $4326: $25

Call_060_4327:
    ld b, $68                                     ; $4327: $06 $68
    jp nz, $fe04                                  ; $4329: $c2 $04 $fe

    ld hl, $4d09                                  ; $432c: $21 $09 $4d
    ld b, d                                       ; $432f: $42
    ld h, b                                       ; $4330: $60
    rst $38                                       ; $4331: $ff
    ld [bc], a                                    ; $4332: $02
    ld l, e                                       ; $4333: $6b
    ret nz                                        ; $4334: $c0

    pop hl                                        ; $4335: $e1
    nop                                           ; $4336: $00
    ld h, e                                       ; $4337: $63
    dec de                                        ; $4338: $1b
    adc b                                         ; $4339: $88
    cp [hl]                                       ; $433a: $be
    ld c, c                                       ; $433b: $49
    inc [hl]                                      ; $433c: $34
    ld b, $67                                     ; $433d: $06 $67
    cp a                                          ; $433f: $bf
    add hl, hl                                    ; $4340: $29
    dec hl                                        ; $4341: $2b
    ret nz                                        ; $4342: $c0

    db $e4                                        ; $4343: $e4
    dec hl                                        ; $4344: $2b
    ld c, e                                       ; $4345: $4b
    ret nz                                        ; $4346: $c0

    pop hl                                        ; $4347: $e1
    sub c                                         ; $4348: $91
    pop hl                                        ; $4349: $e1
    nop                                           ; $434a: $00
    ei                                            ; $434b: $fb
    nop                                           ; $434c: $00
    add hl, de                                    ; $434d: $19
    ld b, a                                       ; $434e: $47
    or [hl]                                       ; $434f: $b6
    and [hl]                                      ; $4350: $a6
    ld b, $69                                     ; $4351: $06 $69
    and l                                         ; $4353: $a5
    ld b, e                                       ; $4354: $43
    jp $4025                                      ; $4355: $c3 $25 $40


    push hl                                       ; $4358: $e5
    cp a                                          ; $4359: $bf
    and e                                         ; $435a: $a3
    nop                                           ; $435b: $00
    cp d                                          ; $435c: $ba
    ld [bc], a                                    ; $435d: $02
    ret                                           ; $435e: $c9


    and e                                         ; $435f: $a3

Jump_060_4360:
    adc [hl]                                      ; $4360: $8e
    ld bc, $4311                                  ; $4361: $01 $11 $43
    ld a, l                                       ; $4364: $7d
    and e                                         ; $4365: $a3
    ld l, e                                       ; $4366: $6b
    rst $00                                       ; $4367: $c7
    ld a, l                                       ; $4368: $7d
    and a                                         ; $4369: $a7
    push bc                                       ; $436a: $c5
    ld b, b                                       ; $436b: $40
    ld c, $bf                                     ; $436c: $0e $bf
    and $0d                                       ; $436e: $e6 $0d
    dec c                                         ; $4370: $0d
    ld [$8520], sp                                ; $4371: $08 $20 $85
    inc b                                         ; $4374: $04
    inc h                                         ; $4375: $24
    ld de, $8045                                  ; $4376: $11 $45 $80
    db $ec                                        ; $4379: $ec
    nop                                           ; $437a: $00
    cp b                                          ; $437b: $b8
    inc bc                                        ; $437c: $03
    adc h                                         ; $437d: $8c
    inc hl                                        ; $437e: $23
    jp nz, $c020                                  ; $437f: $c2 $20 $c0

    xor $fc                                       ; $4382: $ee $fc
    inc hl                                        ; $4384: $23
    ld a, d                                       ; $4385: $7a
    ld [c], a                                     ; $4386: $e2
    ld de, $3d43                                  ; $4387: $11 $43 $3d
    inc hl                                        ; $438a: $23

jr_060_438b:
    nop                                           ; $438b: $00
    ld b, [hl]                                    ; $438c: $46
    ld b, [hl]                                    ; $438d: $46
    jr nz, @+$26                                  ; $438e: $20 $24

    ld a, [bc]                                    ; $4390: $0a
    ld [hl+], a                                   ; $4391: $22
    add c                                         ; $4392: $81
    ld hl, $c4bf                                  ; $4393: $21 $bf $c4
    ret nz                                        ; $4396: $c0

    ld [$e580], a                                 ; $4397: $ea $80 $e5
    ret nz                                        ; $439a: $c0

    db $e4                                        ; $439b: $e4
    db $10                                        ; $439c: $10
    add $49                                       ; $439d: $c6 $49
    or e                                          ; $439f: $b3

Call_060_43a0:
    ld b, $90                                     ; $43a0: $06 $90
    ld h, c                                       ; $43a2: $61
    ld a, a                                       ; $43a3: $7f
    and $4b                                       ; $43a4: $e6 $4b
    db $fd                                        ; $43a6: $fd

Call_060_43a7:
    ld b, l                                       ; $43a7: $45
    ld a, d                                       ; $43a8: $7a
    ld bc, $eec0                                  ; $43a9: $01 $c0 $ee
    nop                                           ; $43ac: $00
    xor b                                         ; $43ad: $a8
    dec b                                         ; $43ae: $05
    dec l                                         ; $43af: $2d
    and h                                         ; $43b0: $a4
    or e                                          ; $43b1: $b3
    ld [bc], a                                    ; $43b2: $02
    ld bc, $c145                                  ; $43b3: $01 $45 $c1
    set 1, c                                      ; $43b6: $cb $c9
    jr z, jr_060_438b                             ; $43b8: $28 $d1

    ld h, $ee                                     ; $43ba: $26 $ee
    rst $20                                       ; $43bc: $e7
    db $10                                        ; $43bd: $10

jr_060_43be:
    ld h, b                                       ; $43be: $60
    and e                                         ; $43bf: $a3
    ld h, b                                       ; $43c0: $60

Jump_060_43c1:
    inc h                                         ; $43c1: $24
    pop de                                        ; $43c2: $d1
    and d                                         ; $43c3: $a2
    add d                                         ; $43c4: $82
    jr nz, jr_060_43cf                            ; $43c5: $20 $08

    ld b, c                                       ; $43c7: $41
    db $e4                                        ; $43c8: $e4
    ld h, d                                       ; $43c9: $62
    ld h, e                                       ; $43ca: $63
    ret                                           ; $43cb: $c9


    ld h, $00                                     ; $43cc: $26 $00
    dec bc                                        ; $43ce: $0b

jr_060_43cf:
    rst $20                                       ; $43cf: $e7
    nop                                           ; $43d0: $00
    ld b, a                                       ; $43d1: $47
    ld [bc], a                                    ; $43d2: $02
    ld h, b                                       ; $43d3: $60
    jr nz, jr_060_43fc                            ; $43d4: $20 $26

    pop de                                        ; $43d6: $d1
    inc bc                                        ; $43d7: $03
    ret nz                                        ; $43d8: $c0

    and b                                         ; $43d9: $a0
    ret nz                                        ; $43da: $c0

    pop hl                                        ; $43db: $e1
    ld b, c                                       ; $43dc: $41
    push hl                                       ; $43dd: $e5
    nop                                           ; $43de: $00
    ld b, b                                       ; $43df: $40

Call_060_43e0:
    ld b, d                                       ; $43e0: $42
    ld [de], a                                    ; $43e1: $12
    ld b, l                                       ; $43e2: $45
    ret nz                                        ; $43e3: $c0

    and $00                                       ; $43e4: $e6 $00
    ld b, [hl]                                    ; $43e6: $46
    ld l, a                                       ; $43e7: $6f
    and d                                         ; $43e8: $a2
    ret nz                                        ; $43e9: $c0

    rst $20                                       ; $43ea: $e7
    ld b, b                                       ; $43eb: $40
    inc bc                                        ; $43ec: $03
    ret nz                                        ; $43ed: $c0

    ld [c], a                                     ; $43ee: $e2
    nop                                           ; $43ef: $00
    rst $28                                       ; $43f0: $ef
    ld b, e                                       ; $43f1: $43
    dec e                                         ; $43f2: $1d
    jr nz, jr_060_43be                            ; $43f3: $20 $c9

    daa                                           ; $43f5: $27
    ld [hl], l                                    ; $43f6: $75
    ld h, c                                       ; $43f7: $61
    ret                                           ; $43f8: $c9


    add d                                         ; $43f9: $82
    rlc l                                         ; $43fa: $cb $05

jr_060_43fc:
    inc sp                                        ; $43fc: $33
    ld h, d                                       ; $43fd: $62
    or e                                          ; $43fe: $b3

Call_060_43ff:
    dec b                                         ; $43ff: $05
    inc b                                         ; $4400: $04
    cp [hl]                                       ; $4401: $be
    inc h                                         ; $4402: $24
    ld a, $c3                                     ; $4403: $3e $c3
    dec hl                                        ; $4405: $2b
    ld b, c                                       ; $4406: $41
    db $e3                                        ; $4407: $e3
    ret                                           ; $4408: $c9


    ld c, c                                       ; $4409: $49
    pop bc                                        ; $440a: $c1
    ld h, d                                       ; $440b: $62
    adc b                                         ; $440c: $88
    ld h, a                                       ; $440d: $67
    ret nz                                        ; $440e: $c0

    push hl                                       ; $440f: $e5
    nop                                           ; $4410: $00
    db $e4                                        ; $4411: $e4
    push bc                                       ; $4412: $c5
    cp d                                          ; $4413: $ba
    ld h, d                                       ; $4414: $62
    or l                                          ; $4415: $b5
    ld b, c                                       ; $4416: $41
    rst $38                                       ; $4417: $ff
    add d                                         ; $4418: $82
    ld a, $02                                     ; $4419: $3e $02
    add c                                         ; $441b: $81
    add c                                         ; $441c: $81
    ld e, l                                       ; $441d: $5d
    add hl, bc                                    ; $441e: $09
    dec [hl]                                      ; $441f: $35

Call_060_4420:
    daa                                           ; $4420: $27
    ld a, b                                       ; $4421: $78
    add b                                         ; $4422: $80
    push hl                                       ; $4423: $e5
    db $e4                                        ; $4424: $e4
    rst $00                                       ; $4425: $c7
    pop af                                        ; $4426: $f1
    ld h, d                                       ; $4427: $62
    inc c                                         ; $4428: $0c
    inc c                                         ; $4429: $0c
    inc c                                         ; $442a: $0c
    inc l                                         ; $442b: $2c
    cp a                                          ; $442c: $bf
    pop bc                                        ; $442d: $c1
    add b                                         ; $442e: $80
    ld bc, $46a1                                  ; $442f: $01 $a1 $46
    call nz, Call_000_2949                        ; $4432: $c4 $49 $29
    dec [hl]                                      ; $4435: $35
    add hl, hl                                    ; $4436: $29
    ret nz                                        ; $4437: $c0

    push hl                                       ; $4438: $e5
    or $05                                        ; $4439: $f6 $05
    sbc a                                         ; $443b: $9f

Jump_060_443c:
    ld bc, $000d                                  ; $443c: $01 $0d $00
    ret nz                                        ; $443f: $c0

    ld [c], a                                     ; $4440: $e2
    cp a                                          ; $4441: $bf
    and h                                         ; $4442: $a4
    ld b, $a2                                     ; $4443: $06 $a2
    add b                                         ; $4445: $80
    jp hl                                         ; $4446: $e9


    push af                                       ; $4447: $f5
    add $84                                       ; $4448: $c6 $84
    and d                                         ; $444a: $a2
    add c                                         ; $444b: $81
    db $e3                                        ; $444c: $e3
    xor l                                         ; $444d: $ad
    rlca                                          ; $444e: $07
    ld e, $7d                                     ; $444f: $1e $7d
    add d                                         ; $4451: $82
    ld c, h                                       ; $4452: $4c
    ld c, h                                       ; $4453: $4c
    ld c, h                                       ; $4454: $4c
    ld l, h                                       ; $4455: $6c
    cp [hl]                                       ; $4456: $be
    add e                                         ; $4457: $83
    jp nz, $84a3                                  ; $4458: $c2 $a3 $84

    add b                                         ; $445b: $80
    nop                                           ; $445c: $00
    ret                                           ; $445d: $c9


    dec l                                         ; $445e: $2d
    push af                                       ; $445f: $f5
    dec b                                         ; $4460: $05
    ld b, c                                       ; $4461: $41
    and $41                                       ; $4462: $e6 $41

jr_060_4464:
    dec bc                                        ; $4464: $0b
    ld a, $a5                                     ; $4465: $3e $a5
    add e                                         ; $4467: $83
    add h                                         ; $4468: $84
    cp a                                          ; $4469: $bf
    ld h, b                                       ; $446a: $60
    ret                                           ; $446b: $c9


    daa                                           ; $446c: $27
    nop                                           ; $446d: $00
    ret nz                                        ; $446e: $c0

    db $eb                                        ; $446f: $eb
    xor b                                         ; $4470: $a8
    and h                                         ; $4471: $a4
    ld b, c                                       ; $4472: $41
    ld [$467d], sp                                ; $4473: $08 $7d $46
    jp nz, Jump_060_4360                          ; $4476: $c2 $60 $43

    xor b                                         ; $4479: $a8
    jp z, $4064                                   ; $447a: $ca $64 $40

    pop hl                                        ; $447d: $e1
    db $10                                        ; $447e: $10

jr_060_447f:
    sub c                                         ; $447f: $91
    ld b, e                                       ; $4480: $43
    cp e                                          ; $4481: $bb
    ld l, a                                       ; $4482: $6f

Call_060_4483:
    add b                                         ; $4483: $80
    db $e3                                        ; $4484: $e3
    ei                                            ; $4485: $fb
    dec h                                         ; $4486: $25
    ld l, e                                       ; $4487: $6b
    ld [bc], a                                    ; $4488: $02
    ld b, b                                       ; $4489: $40
    pop af                                        ; $448a: $f1
    dec b                                         ; $448b: $05
    ld b, b                                       ; $448c: $40
    ld b, b                                       ; $448d: $40
    nop                                           ; $448e: $00
    adc c                                         ; $448f: $89
    add b                                         ; $4490: $80
    call nz, $1262                                ; $4491: $c4 $62 $12
    jr nz, jr_060_44cb                            ; $4494: $20 $35

    inc h                                         ; $4496: $24
    ret nz                                        ; $4497: $c0

    inc hl                                        ; $4498: $23
    nop                                           ; $4499: $00
    ld b, e                                       ; $449a: $43
    xor l                                         ; $449b: $ad
    dec b                                         ; $449c: $05
    sub h                                         ; $449d: $94
    ld h, d                                       ; $449e: $62
    ld [bc], a                                    ; $449f: $02
    cp a                                          ; $44a0: $bf
    db $e3                                        ; $44a1: $e3
    ld c, l                                       ; $44a2: $4d
    pop bc                                        ; $44a3: $c1
    rst $20                                       ; $44a4: $e7
    inc b                                         ; $44a5: $04
    add d                                         ; $44a6: $82
    and b                                         ; $44a7: $a0
    add h                                         ; $44a8: $84
    ret z                                         ; $44a9: $c8

    ld b, c                                       ; $44aa: $41
    ret nz                                        ; $44ab: $c0

    ld b, a                                       ; $44ac: $47
    nop                                           ; $44ad: $00
    ld b, c                                       ; $44ae: $41
    nop                                           ; $44af: $00
    xor l                                         ; $44b0: $ad
    ld [$8220], sp                                ; $44b1: $08 $20 $82
    ld hl, sp+$09                                 ; $44b4: $f8 $09
    ld h, l                                       ; $44b6: $65
    dec b                                         ; $44b7: $05
    and b                                         ; $44b8: $a0
    adc d                                         ; $44b9: $8a
    nop                                           ; $44ba: $00
    ld l, b                                       ; $44bb: $68
    push af                                       ; $44bc: $f5
    ld b, d                                       ; $44bd: $42
    xor l                                         ; $44be: $ad
    rlca                                          ; $44bf: $07
    nop                                           ; $44c0: $00
    and b                                         ; $44c1: $a0
    ld h, d                                       ; $44c2: $62
    ret nz                                        ; $44c3: $c0

    xor $46                                       ; $44c4: $ee $46
    ld h, b                                       ; $44c6: $60
    call nz, $c163                                ; $44c7: $c4 $63 $c1
    ld b, c                                       ; $44ca: $41

jr_060_44cb:
    ld e, l                                       ; $44cb: $5d
    ld b, e                                       ; $44cc: $43
    add b                                         ; $44cd: $80
    rst $20                                       ; $44ce: $e7
    ld [hl], a                                    ; $44cf: $77
    ld b, h                                       ; $44d0: $44
    nop                                           ; $44d1: $00
    or $05                                        ; $44d2: $f6 $05
    ld a, [hl-]                                   ; $44d4: $3a
    inc h                                         ; $44d5: $24
    nop                                           ; $44d6: $00
    ld h, l                                       ; $44d7: $65
    or d                                          ; $44d8: $b2
    ld [hl+], a                                   ; $44d9: $22
    add c                                         ; $44da: $81
    ldh [$5e], a                                  ; $44db: $e0 $5e
    ld hl, $87a0                                  ; $44dd: $21 $a0 $87
    ld sp, hl                                     ; $44e0: $f9
    ld b, e                                       ; $44e1: $43
    jr nz, jr_060_4464                            ; $44e2: $20 $80

    inc h                                         ; $44e4: $24
    ld bc, $4484                                  ; $44e5: $01 $84 $44
    jp nz, Jump_000_03fa                          ; $44e8: $c2 $fa $03

    add c                                         ; $44eb: $81
    add c                                         ; $44ec: $81
    dec c                                         ; $44ed: $0d
    add b                                         ; $44ee: $80
    ld b, h                                       ; $44ef: $44
    ld bc, $0060                                  ; $44f0: $01 $60 $00
    cpl                                           ; $44f3: $2f
    ld b, c                                       ; $44f4: $41
    rlca                                          ; $44f5: $07
    ld h, c                                       ; $44f6: $61
    jr nz, jr_060_447f                            ; $44f7: $20 $86

    jp nz, Jump_060_6e07                          ; $44f9: $c2 $07 $6e

jr_060_44fc:
    ld h, c                                       ; $44fc: $61
    cp a                                          ; $44fd: $bf
    ld h, $60                                     ; $44fe: $26 $60
    ld h, h                                       ; $4500: $64
    cp l                                          ; $4501: $bd
    ld [hl+], a                                   ; $4502: $22
    nop                                           ; $4503: $00
    ret nz                                        ; $4504: $c0

    add sp, $01                                   ; $4505: $e8 $01
    and h                                         ; $4507: $a4
    sbc [hl]                                      ; $4508: $9e
    inc h                                         ; $4509: $24
    adc a                                         ; $450a: $8f
    inc b                                         ; $450b: $04
    add b                                         ; $450c: $80
    db $e4                                        ; $450d: $e4
    nop                                           ; $450e: $00
    ld h, d                                       ; $450f: $62
    cp a                                          ; $4510: $bf
    dec h                                         ; $4511: $25
    jr jr_060_4557                                ; $4512: $18 $43

    ld [$433e], sp                                ; $4514: $08 $3e $43
    pop bc                                        ; $4517: $c1
    jr nz, jr_060_4598                            ; $4518: $20 $7e

    ldh [$2d], a                                  ; $451a: $e0 $2d
    add c                                         ; $451c: $81
    ld b, c                                       ; $451d: $41
    ld b, c                                       ; $451e: $41
    and e                                         ; $451f: $a3
    add [hl]                                      ; $4520: $86
    push bc                                       ; $4521: $c5
    ld e, d                                       ; $4522: $5a
    ld b, c                                       ; $4523: $41
    jr nz, jr_060_44fc                            ; $4524: $20 $d6

    ld b, h                                       ; $4526: $44
    ld b, e                                       ; $4527: $43
    ld h, e                                       ; $4528: $63
    ld l, d                                       ; $4529: $6a
    add hl, bc                                    ; $452a: $09
    ld a, [hl]                                    ; $452b: $7e
    ld b, d                                       ; $452c: $42
    ld a, [hl]                                    ; $452d: $7e
    add b                                         ; $452e: $80
    ld l, l                                       ; $452f: $6d
    nop                                           ; $4530: $00
    ld c, b                                       ; $4531: $48
    ld sp, $00e2                                  ; $4532: $31 $e2 $00
    ret nc                                        ; $4535: $d0

    inc b                                         ; $4536: $04
    pop bc                                        ; $4537: $c1
    jr z, jr_060_457a                             ; $4538: $28 $40

    and $6a                                       ; $453a: $e6 $6a
    inc l                                         ; $453c: $2c
    ei                                            ; $453d: $fb
    inc h                                         ; $453e: $24
    ret nz                                        ; $453f: $c0

    dec h                                         ; $4540: $25
    rst $38                                       ; $4541: $ff
    ld h, c                                       ; $4542: $61
    or b                                          ; $4543: $b0
    ld b, b                                       ; $4544: $40
    ld b, b                                       ; $4545: $40

jr_060_4546:
    rst $20                                       ; $4546: $e7
    ld [bc], a                                    ; $4547: $02
    call nc, Call_060_7607                        ; $4548: $d4 $07 $76
    db $e4                                        ; $454b: $e4
    ret nz                                        ; $454c: $c0

    xor $6a                                       ; $454d: $ee $6a
    dec b                                         ; $454f: $05
    add e                                         ; $4550: $83
    and d                                         ; $4551: $a2
    dec bc                                        ; $4552: $0b
    inc a                                         ; $4553: $3c
    ld b, b                                       ; $4554: $40
    dec b                                         ; $4555: $05
    ld l, e                                       ; $4556: $6b

jr_060_4557:
    ld a, $a1                                     ; $4557: $3e $a1
    dec l                                         ; $4559: $2d
    ld c, l                                       ; $455a: $4d
    pop hl                                        ; $455b: $e1
    call nc, $c00c                                ; $455c: $d4 $0c $c0
    dec b                                         ; $455f: $05
    ccf                                           ; $4560: $3f
    ld a, [hl+]                                   ; $4561: $2a
    ld a, $46                                     ; $4562: $3e $46
    ld b, $4e                                     ; $4564: $06 $4e
    nop                                           ; $4566: $00
    ld l, e                                       ; $4567: $6b
    ld c, e                                       ; $4568: $4b
    rst $38                                       ; $4569: $ff
    db $e3                                        ; $456a: $e3
    jp z, $d020                                   ; $456b: $ca $20 $d0

    ld h, h                                       ; $456e: $64
    reti                                          ; $456f: $d9


    add [hl]                                      ; $4570: $86
    add a                                         ; $4571: $87
    ld [hl+], a                                   ; $4572: $22
    nop                                           ; $4573: $00
    cp l                                          ; $4574: $bd
    and $bf                                       ; $4575: $e6 $bf
    add hl, hl                                    ; $4577: $29
    or [hl]                                       ; $4578: $b6
    inc bc                                        ; $4579: $03

jr_060_457a:
    adc $64                                       ; $457a: $ce $64
    ld [$d046], sp                                ; $457c: $08 $46 $d0
    ld h, l                                       ; $457f: $65
    cp l                                          ; $4580: $bd
    ld l, b                                       ; $4581: $68
    ld b, b                                       ; $4582: $40
    rst $20                                       ; $4583: $e7
    jr jr_060_4546                                ; $4584: $18 $c0

    db $ec                                        ; $4586: $ec
    sbc [hl]                                      ; $4587: $9e
    and l                                         ; $4588: $a5
    sub c                                         ; $4589: $91
    nop                                           ; $458a: $00
    dec l                                         ; $458b: $2d
    dec l                                         ; $458c: $2d
    db $fc                                        ; $458d: $fc
    ldh [$89], a                                  ; $458e: $e0 $89
    ld bc, $64e1                                  ; $4590: $01 $e1 $64
    nop                                           ; $4593: $00
    push de                                       ; $4594: $d5
    adc $3b                                       ; $4595: $ce $3b
    rlca                                          ; $4597: $07

jr_060_4598:
    ld [hl], h                                    ; $4598: $74
    ld h, $3e                                     ; $4599: $26 $3e
    ld b, [hl]                                    ; $459b: $46
    cp e                                          ; $459c: $bb
    pop bc                                        ; $459d: $c1
    dec d                                         ; $459e: $15
    add b                                         ; $459f: $80
    add a                                         ; $45a0: $87
    ld [bc], a                                    ; $45a1: $02
    db $10                                        ; $45a2: $10
    add l                                         ; $45a3: $85
    nop                                           ; $45a4: $00
    add b                                         ; $45a5: $80
    xor $00                                       ; $45a6: $ee $00
    nop                                           ; $45a8: $00
    nop                                           ; $45a9: $00
    db $dd                                        ; $45aa: $dd
    and b                                         ; $45ab: $a0
    rst $38                                       ; $45ac: $ff
    db $ec                                        ; $45ad: $ec
    ret c                                         ; $45ae: $d8

    push de                                       ; $45af: $d5
    ret c                                         ; $45b0: $d8

    db $ed                                        ; $45b1: $ed
    pop hl                                        ; $45b2: $e1
    sbc $df                                       ; $45b3: $de $df
    or $e7                                        ; $45b5: $f6 $e7
    ldh [$e8], a                                  ; $45b7: $e0 $e8
    jp hl                                         ; $45b9: $e9


    ld [c], a                                     ; $45ba: $e2
    ldh [$e2], a                                  ; $45bb: $e0 $e2
    db $e3                                        ; $45bd: $e3
    and b                                         ; $45be: $a0
    and b                                         ; $45bf: $a0
    db $e3                                        ; $45c0: $e3
    and $e7                                       ; $45c1: $e6 $e7
    reti                                          ; $45c3: $d9


    db $ed                                        ; $45c4: $ed
    jp z, $c2f3                                   ; $45c5: $ca $f3 $c2

    ldh [$d2], a                                  ; $45c8: $e0 $d2
    ret nc                                        ; $45ca: $d0

    jp nc, $bf9e                                  ; $45cb: $d2 $9e $bf

    pop hl                                        ; $45ce: $e1
    ldh [$e1], a                                  ; $45cf: $e0 $e1
    and b                                         ; $45d1: $a0
    ld [$e7a5], a                                 ; $45d2: $ea $a5 $e7

jr_060_45d5:
    or a                                          ; $45d5: $b7
    ldh [$eb], a                                  ; $45d6: $e0 $eb
    sbc $be                                       ; $45d8: $de $be
    ld a, [$d0d3]                                 ; $45da: $fa $d3 $d0
    db $d3                                        ; $45dd: $d3
    and b                                         ; $45de: $a0
    db $dd                                        ; $45df: $dd
    ldh [$d8], a                                  ; $45e0: $e0 $d8
    jp nc, $d0df                                  ; $45e2: $d2 $df $d0

    pop de                                        ; $45e5: $d1
    ret nc                                        ; $45e6: $d0

    jp nc, $8ad7                                  ; $45e7: $d2 $d7 $8a

    db $e4                                        ; $45ea: $e4
    and b                                         ; $45eb: $a0
    sbc a                                         ; $45ec: $9f
    ld a, l                                       ; $45ed: $7d
    sbc l                                         ; $45ee: $9d
    rst $38                                       ; $45ef: $ff
    db $e3                                        ; $45f0: $e3
    sbc a                                         ; $45f1: $9f
    and b                                         ; $45f2: $a0
    and b                                         ; $45f3: $a0
    db $ec                                        ; $45f4: $ec
    db $ed                                        ; $45f5: $ed
    ld a, [hl]                                    ; $45f6: $7e
    ld a, [$d7d7]                                 ; $45f7: $fa $d7 $d7
    call nc, $ddd7                                ; $45fa: $d4 $d7 $dd
    pop hl                                        ; $45fd: $e1
    rst $10                                       ; $45fe: $d7
    add d                                         ; $45ff: $82
    ldh [$d4], a                                  ; $4600: $e0 $d4
    rst $10                                       ; $4602: $d7
    ld e, c                                       ; $4603: $59
    jp c, $e293                                   ; $4604: $da $93 $e2

    jp $9ce0                                      ; $4607: $c3 $e0 $9c


Jump_060_460a:
    ld b, [hl]                                    ; $460a: $46
    rst $38                                       ; $460b: $ff
    db $e3                                        ; $460c: $e3
    sbc h                                         ; $460d: $9c
    cp l                                          ; $460e: $bd
    ld [c], a                                     ; $460f: $e2
    halt                                          ; $4610: $76
    dec h                                         ; $4611: $25
    db $e3                                        ; $4612: $e3
    db $e4                                        ; $4613: $e4
    push hl                                       ; $4614: $e5
    dec [hl]                                      ; $4615: $35
    pop af                                        ; $4616: $f1
    jp c, $dad9                                   ; $4617: $da $d9 $da

    ld sp, hl                                     ; $461a: $f9
    ld [c], a                                     ; $461b: $e2
    xor [hl]                                      ; $461c: $ae
    cp b                                          ; $461d: $b8
    ldh [$d9], a                                  ; $461e: $e0 $d9
    jp c, $93dc                                   ; $4620: $da $dc $93

    pop hl                                        ; $4623: $e1
    sbc a                                         ; $4624: $9f
    jp $c3e1                                      ; $4625: $c3 $e1 $c3


    and l                                         ; $4628: $a5
    sub b                                         ; $4629: $90
    rst $38                                       ; $462a: $ff
    push hl                                       ; $462b: $e5
    or [hl]                                       ; $462c: $b6
    ld a, h                                       ; $462d: $7c
    ldh [$5b], a                                  ; $462e: $e0 $5b
    pop hl                                        ; $4630: $e1
    ld [$d3f5], a                                 ; $4631: $ea $f5 $d3
    call c, $db8b                                 ; $4634: $dc $8b $db
    call c, $c1cd                                 ; $4637: $dc $cd $c1
    call c, $e0b8                                 ; $463a: $dc $b8 $e0
    or $e0                                        ; $463d: $f6 $e0
    ld b, a                                       ; $463f: $47
    ldh [$a2], a                                  ; $4640: $e0 $a2
    ld [de], a                                    ; $4642: $12
    add h                                         ; $4643: $84
    ld [c], a                                     ; $4644: $e2
    call nz, $e0c0                                ; $4645: $c4 $c0 $e0
    cp h                                          ; $4648: $bc
    db $e4                                        ; $4649: $e4
    sbc [hl]                                      ; $464a: $9e
    ld e, e                                       ; $464b: $5b
    db $e3                                        ; $464c: $e3
    xor h                                         ; $464d: $ac
    jp $c6d0                                      ; $464e: $c3 $d0 $c6


    jr nc, jr_060_45d5                            ; $4651: $30 $82

    ret                                           ; $4653: $c9


    call $b8c0                                    ; $4654: $cd $c0 $b8
    ld [c], a                                     ; $4657: $e2
    ld [$b6e0], sp                                ; $4658: $08 $e0 $b6
    sub b                                         ; $465b: $90
    ld b, [hl]                                    ; $465c: $46
    pop hl                                        ; $465d: $e1
    add e                                         ; $465e: $83
    db $e3                                        ; $465f: $e3
    nop                                           ; $4660: $00
    cp h                                          ; $4661: $bc
    db $e3                                        ; $4662: $e3
    add b                                         ; $4663: $80
    pop hl                                        ; $4664: $e1
    ld e, e                                       ; $4665: $5b
    db $e4                                        ; $4666: $e4
    or l                                          ; $4667: $b5
    pop bc                                        ; $4668: $c1
    ret nc                                        ; $4669: $d0

    jp nz, $cc84                                  ; $466a: $c2 $84 $cc

    ld d, a                                       ; $466d: $57
    ret nz                                        ; $466e: $c0

    adc l                                         ; $466f: $8d
    pop bc                                        ; $4670: $c1
    jp $e7e6                                      ; $4671: $c3 $e6 $e7


    pop bc                                        ; $4674: $c1
    ldh [$88], a                                  ; $4675: $e0 $88
    rst $20                                       ; $4677: $e7
    cp h                                          ; $4678: $bc
    db $e3                                        ; $4679: $e3
    ld b, c                                       ; $467a: $41
    ldh [$de], a                                  ; $467b: $e0 $de
    rst $18                                       ; $467d: $df
    ret nz                                        ; $467e: $c0

    and e                                         ; $467f: $a3
    db $e3                                        ; $4680: $e3
    or l                                          ; $4681: $b5
    jp nz, $e275                                  ; $4682: $c2 $75 $e2

    rrca                                          ; $4685: $0f
    call nz, $c04e                                ; $4686: $c4 $4e $c0
    ld [hl], d                                    ; $4689: $72
    jp hl                                         ; $468a: $e9


    add sp, -$17                                  ; $468b: $e8 $e9
    ld a, c                                       ; $468d: $79
    sbc [hl]                                      ; $468e: $9e
    ld c, h                                       ; $468f: $4c
    ld [c], a                                     ; $4690: $e2
    ld b, h                                       ; $4691: $44
    pop hl                                        ; $4692: $e1
    sub c                                         ; $4693: $91
    ld b, l                                       ; $4694: $45
    ld b, l                                       ; $4695: $45
    sub c                                         ; $4696: $91
    ld b, d                                       ; $4697: $42
    push hl                                       ; $4698: $e5
    ret nz                                        ; $4699: $c0

    ld h, c                                       ; $469a: $61
    pop hl                                        ; $469b: $e1
    pop hl                                        ; $469c: $e1
    and [hl]                                      ; $469d: $a6
    ld [hl], l                                    ; $469e: $75
    push hl                                       ; $469f: $e5
    add l                                         ; $46a0: $85
    pop bc                                        ; $46a1: $c1
    ld c, h                                       ; $46a2: $4c
    jp nz, $a1cb                                  ; $46a3: $c2 $cb $a1

    ret c                                         ; $46a6: $d8

    push de                                       ; $46a7: $d5
    ld a, [c]                                     ; $46a8: $f2
    call nz, $9ea3                                ; $46a9: $c4 $a3 $9e
    ld c, h                                       ; $46ac: $4c
    ld [c], a                                     ; $46ad: $e2

Jump_060_46ae:
    pop bc                                        ; $46ae: $c1
    pop hl                                        ; $46af: $e1
    cp l                                          ; $46b0: $bd
    inc l                                         ; $46b1: $2c
    inc l                                         ; $46b2: $2c
    cp l                                          ; $46b3: $bd
    add b                                         ; $46b4: $80
    cp a                                          ; $46b5: $bf
    ld [c], a                                     ; $46b6: $e2
    pop bc                                        ; $46b7: $c1
    ret nz                                        ; $46b8: $c0

    ld l, $c2                                     ; $46b9: $2e $c2
    sub e                                         ; $46bb: $93
    push hl                                       ; $46bc: $e5
    ld [hl], l                                    ; $46bd: $75
    db $e4                                        ; $46be: $e4
    adc h                                         ; $46bf: $8c
    call nz, $a0cc                                ; $46c0: $c4 $cc $a0
    rst $10                                       ; $46c3: $d7
    adc [hl]                                      ; $46c4: $8e
    push bc                                       ; $46c5: $c5
    and c                                         ; $46c6: $a1
    sub $d4                                       ; $46c7: $d6 $d4
    sub $bd                                       ; $46c9: $d6 $bd
    pop hl                                        ; $46cb: $e1
    ld b, b                                       ; $46cc: $40
    db $e3                                        ; $46cd: $e3
    add l                                         ; $46ce: $85
    ret nz                                        ; $46cf: $c0

    ld b, [hl]                                    ; $46d0: $46
    rst $18                                       ; $46d1: $df
    dec l                                         ; $46d2: $2d
    jr nz, @+$22                                  ; $46d3: $20 $20

    ld [hl-], a                                   ; $46d5: $32
    ld b, l                                       ; $46d6: $45
    add b                                         ; $46d7: $80
    jp $9fa2                                      ; $46d8: $c3 $a2 $9f


    ld e, b                                       ; $46db: $58
    xor a                                         ; $46dc: $af
    and c                                         ; $46dd: $a1
    sub e                                         ; $46de: $93
    rst $20                                       ; $46df: $e7
    add l                                         ; $46e0: $85
    rst $00                                       ; $46e1: $c7
    jp c, $02d9                                   ; $46e2: $da $d9 $02

    ret nz                                        ; $46e5: $c0

    jp c, $a0bd                                   ; $46e6: $da $bd $a0

    push bc                                       ; $46e9: $c5
    sub $02                                       ; $46ea: $d6 $02
    pop bc                                        ; $46ec: $c1
    sub $b7                                       ; $46ed: $d6 $b7
    and b                                         ; $46ef: $a0
    ret nz                                        ; $46f0: $c0

    ret nz                                        ; $46f1: $c0

    ld b, [hl]                                    ; $46f2: $46
    jp nz, $4591                                  ; $46f3: $c2 $91 $45

    rrca                                          ; $46f6: $0f
    ld a, [hl+]                                   ; $46f7: $2a
    ld h, $24                                     ; $46f8: $26 $24
    ld b, d                                       ; $46fa: $42
    ld a, [hl]                                    ; $46fb: $7e
    call nz, $c13e                                ; $46fc: $c4 $3e $c1
    sub e                                         ; $46ff: $93
    and $64                                       ; $4700: $e6 $64
    xor b                                         ; $4702: $a8
    call nz, $c044                                ; $4703: $c4 $44 $c0
    ld [bc], a                                    ; $4706: $02
    ret nz                                        ; $4707: $c0

    call c, $a07d                                 ; $4708: $dc $7d $a0
    ld [hl], a                                    ; $470b: $77
    db $e3                                        ; $470c: $e3
    ld b, c                                       ; $470d: $41
    and c                                         ; $470e: $a1
    sbc a                                         ; $470f: $9f
    or [hl]                                       ; $4710: $b6
    cp [hl]                                       ; $4711: $be
    ld a, $e3                                     ; $4712: $3e $e3
    ld b, [hl]                                    ; $4714: $46
    add hl, sp                                    ; $4715: $39
    dec [hl]                                      ; $4716: $35
    inc a                                         ; $4717: $3c
    ld b, h                                       ; $4718: $44
    ld [hl-], a                                   ; $4719: $32
    db $e4                                        ; $471a: $e4
    jp $fd50                                      ; $471b: $c3 $50 $fd


    and c                                         ; $471e: $a1
    sub e                                         ; $471f: $93
    push hl                                       ; $4720: $e5
    ld [bc], a                                    ; $4721: $02
    rst $08                                       ; $4722: $cf
    add h                                         ; $4723: $84
    and b                                         ; $4724: $a0
    db $dd                                        ; $4725: $dd
    ld [hl], a                                    ; $4726: $77
    pop hl                                        ; $4727: $e1
    db $dd                                        ; $4728: $dd
    ld h, [hl]                                    ; $4729: $66
    jp nz, $a17d                                  ; $472a: $c2 $7d $a1

    ld a, [hl]                                    ; $472d: $7e
    jp Jump_000_3a44                              ; $472e: $c3 $44 $3a


    dec [hl]                                      ; $4731: $35
    dec [hl]                                      ; $4732: $35
    ld b, d                                       ; $4733: $42
    ld a, h                                       ; $4734: $7c
    push bc                                       ; $4735: $c5
    ldh a, [$bc]                                  ; $4736: $f0 $bc
    and d                                         ; $4738: $a2
    sub e                                         ; $4739: $93
    db $e4                                        ; $473a: $e4
    jp nc, Jump_060_7dc8                          ; $473b: $d2 $c8 $7d

    and [hl]                                      ; $473e: $a6
    db $d3                                        ; $473f: $d3
    ret nc                                        ; $4740: $d0

    ret nc                                        ; $4741: $d0

    db $dd                                        ; $4742: $dd
    rst $00                                       ; $4743: $c7
    reti                                          ; $4744: $d9


Jump_060_4745:
    db $dd                                        ; $4745: $dd
    pop de                                        ; $4746: $d1
    sbc e                                         ; $4747: $9b
    and c                                         ; $4748: $a1
    cp l                                          ; $4749: $bd
    ret nz                                        ; $474a: $c0

    ld b, $c2                                     ; $474b: $06 $c2
    ld b, b                                       ; $474d: $40
    dec [hl]                                      ; $474e: $35
    ld b, a                                       ; $474f: $47
    dec [hl]                                      ; $4750: $35
    dec [hl]                                      ; $4751: $35
    add hl, sp                                    ; $4752: $39
    ld a, [hl]                                    ; $4753: $7e
    jp nz, $a276                                  ; $4754: $c2 $76 $a2

    cp h                                          ; $4757: $bc
    and b                                         ; $4758: $a0
    db $eb                                        ; $4759: $eb
    db $dd                                        ; $475a: $dd
    and e                                         ; $475b: $a3
    ld [hl], b                                    ; $475c: $70
    sub l                                         ; $475d: $95
    ret nz                                        ; $475e: $c0

    db $d3                                        ; $475f: $d3
    ret nz                                        ; $4760: $c0

    ld c, b                                       ; $4761: $48
    jp $c489                                      ; $4762: $c3 $89 $c4


    call c, $d4d7                                 ; $4765: $dc $d7 $d4
    or a                                          ; $4768: $b7
    ret nz                                        ; $4769: $c0

    ld hl, sp+$00                                 ; $476a: $f8 $00
    and c                                         ; $476c: $a1
    cp [hl]                                       ; $476d: $be
    and e                                         ; $476e: $a3
    ld b, c                                       ; $476f: $41
    pop bc                                        ; $4770: $c1
    ld b, h                                       ; $4771: $44
    ld [hl], $35                                  ; $4772: $36 $35
    dec [hl]                                      ; $4774: $35
    ld a, [hl-]                                   ; $4775: $3a
    or h                                          ; $4776: $b4
    cp a                                          ; $4777: $bf
    jp nz, $c26e                                  ; $4778: $c2 $6e $c2

    sbc [hl]                                      ; $477b: $9e
    cp c                                          ; $477c: $b9
    add [hl]                                      ; $477d: $86
    db $d3                                        ; $477e: $d3
    sub $8b                                       ; $477f: $d6 $8b
    pop bc                                        ; $4781: $c1
    sub $0c                                       ; $4782: $d6 $0c
    adc d                                         ; $4784: $8a
    add b                                         ; $4785: $80
    or a                                          ; $4786: $b7
    rst $20                                       ; $4787: $e7
    jp c, $b7d9                                   ; $4788: $da $d9 $b7

    ret nz                                        ; $478b: $c0

    nop                                           ; $478c: $00
    and c                                         ; $478d: $a1
    inc bc                                        ; $478e: $03
    add c                                         ; $478f: $81
    ld a, a                                       ; $4790: $7f
    ldh [rIF], a                                  ; $4791: $e0 $0f
    sub c                                         ; $4793: $91
    ld b, l                                       ; $4794: $45
    ld c, b                                       ; $4795: $48
    ld c, c                                       ; $4796: $49
    ld a, a                                       ; $4797: $7f
    pop hl                                        ; $4798: $e1
    ccf                                           ; $4799: $3f
    push hl                                       ; $479a: $e5
    db $fc                                        ; $479b: $fc
    add d                                         ; $479c: $82
    pop hl                                        ; $479d: $e1
    ld h, e                                       ; $479e: $63
    ld bc, $d9d8                                  ; $479f: $01 $d8 $d9
    ret nz                                        ; $47a2: $c0

    sub [hl]                                      ; $47a3: $96
    add c                                         ; $47a4: $81
    ld c, d                                       ; $47a5: $4a
    add b                                         ; $47a6: $80
    or a                                          ; $47a7: $b7
    and $fc                                       ; $47a8: $e6 $fc
    add b                                         ; $47aa: $80
    or a                                          ; $47ab: $b7
    ret nz                                        ; $47ac: $c0

    nop                                           ; $47ad: $00
    and d                                         ; $47ae: $a2
    cp h                                          ; $47af: $bc
    inc bc                                        ; $47b0: $03
    add b                                         ; $47b1: $80
    ccf                                           ; $47b2: $3f
    ldh [rLYC], a                                 ; $47b3: $e0 $45
    ld b, a                                       ; $47b5: $47
    ld h, b                                       ; $47b6: $60
    ld d, d                                       ; $47b7: $52
    add b                                         ; $47b8: $80
    ldh [$35], a                                  ; $47b9: $e0 $35
    cp c                                          ; $47bb: $b9
    ld b, b                                       ; $47bc: $40
    cp l                                          ; $47bd: $bd
    add a                                         ; $47be: $87
    pop hl                                        ; $47bf: $e1
    ld h, l                                       ; $47c0: $65
    db $d3                                        ; $47c1: $d3
    ret nc                                        ; $47c2: $d0

    db $dd                                        ; $47c3: $dd
    sub [hl]                                      ; $47c4: $96
    add c                                         ; $47c5: $81
    db $dd                                        ; $47c6: $dd
    sub b                                         ; $47c7: $90
    dec d                                         ; $47c8: $15
    add b                                         ; $47c9: $80
    or a                                          ; $47ca: $b7
    and $b9                                       ; $47cb: $e6 $b9
    add e                                         ; $47cd: $83
    cp b                                          ; $47ce: $b8
    add b                                         ; $47cf: $80
    db $eb                                        ; $47d0: $eb
    adc l                                         ; $47d1: $8d
    ld h, c                                       ; $47d2: $61
    ld a, h                                       ; $47d3: $7c
    and b                                         ; $47d4: $a0
    ld b, l                                       ; $47d5: $45
    rst $38                                       ; $47d6: $ff
    ld d, [hl]                                    ; $47d7: $56
    ld h, c                                       ; $47d8: $61
    add hl, sp                                    ; $47d9: $39
    dec [hl]                                      ; $47da: $35
    dec [hl]                                      ; $47db: $35
    jr c, @+$39                                   ; $47dc: $38 $37

    ld b, h                                       ; $47de: $44
    ld [hl], c                                    ; $47df: $71
    sub c                                         ; $47e0: $91
    nop                                           ; $47e1: $00
    and c                                         ; $47e2: $a1
    ld a, [$e161]                                 ; $47e3: $fa $61 $e1
    ld h, [hl]                                    ; $47e6: $66
    db $d3                                        ; $47e7: $d3
    ret nc                                        ; $47e8: $d0

    pop de                                        ; $47e9: $d1
    push de                                       ; $47ea: $d5
    ret nz                                        ; $47eb: $c0

    rra                                           ; $47ec: $1f
    ret nc                                        ; $47ed: $d0

    ret nc                                        ; $47ee: $d0

    db $d3                                        ; $47ef: $d3
    jp c, $b7a0                                   ; $47f0: $da $a0 $b7

    and $27                                       ; $47f3: $e6 $27
    add l                                         ; $47f5: $85
    sub $62                                       ; $47f6: $d6 $62
    sbc $be                                       ; $47f8: $de $be
    add b                                         ; $47fa: $80
    call nz, $5591                                ; $47fb: $c4 $91 $55
    ld d, d                                       ; $47fe: $52
    add c                                         ; $47ff: $81
    ret nz                                        ; $4800: $c0

    ld b, b                                       ; $4801: $40
    ld e, a                                       ; $4802: $5f
    ccf                                           ; $4803: $3f
    ld c, c                                       ; $4804: $49
    ld b, l                                       ; $4805: $45
    sub c                                         ; $4806: $91
    call nz, $a190                                ; $4807: $c4 $90 $a1
    rlca                                          ; $480a: $07
    add c                                         ; $480b: $81
    pop hl                                        ; $480c: $e1
    ld h, l                                       ; $480d: $65
    inc a                                         ; $480e: $3c
    pop de                                        ; $480f: $d1
    ld h, b                                       ; $4810: $60
    sub $c2                                       ; $4811: $d6 $c2
    call nc, $dcd7                                ; $4813: $d4 $d7 $dc
    and b                                         ; $4816: $a0
    or a                                          ; $4817: $b7
    and $1c                                       ; $4818: $e6 $1c
    ld h, d                                       ; $481a: $62
    ld l, [hl]                                    ; $481b: $6e
    ld c, h                                       ; $481c: $4c
    ld h, d                                       ; $481d: $62
    sbc a                                         ; $481e: $9f
    and d                                         ; $481f: $a2
    sbc l                                         ; $4820: $9d
    cp [hl]                                       ; $4821: $be
    add d                                         ; $4822: $82
    ld b, l                                       ; $4823: $45
    ld b, e                                       ; $4824: $43
    pop bc                                        ; $4825: $c1
    ret nz                                        ; $4826: $c0

    cpl                                           ; $4827: $2f
    ld [hl], $52                                  ; $4828: $36 $52
    ld h, c                                       ; $482a: $61
    ld d, e                                       ; $482b: $53
    ei                                            ; $482c: $fb
    add b                                         ; $482d: $80
    sbc [hl]                                      ; $482e: $9e
    db $fc                                        ; $482f: $fc
    ld b, c                                       ; $4830: $41
    pop hl                                        ; $4831: $e1
    ld h, h                                       ; $4832: $64
    nop                                           ; $4833: $00
    pop de                                        ; $4834: $d1
    ld h, c                                       ; $4835: $61
    sub $c2                                       ; $4836: $d6 $c2
    bit 4, c                                      ; $4838: $cb $61
    or a                                          ; $483a: $b7
    and $27                                       ; $483b: $e6 $27
    add e                                         ; $483d: $83
    and c                                         ; $483e: $a1
    ld h, b                                       ; $483f: $60
    add c                                         ; $4840: $81
    add c                                         ; $4841: $81
    add c                                         ; $4842: $81
    and e                                         ; $4843: $a3
    ei                                            ; $4844: $fb

Jump_060_4845:
    ld b, [hl]                                    ; $4845: $46
    ld b, l                                       ; $4846: $45
    nop                                           ; $4847: $00
    ret nz                                        ; $4848: $c0

    ld [hl], $52                                  ; $4849: $36 $52
    ld h, b                                       ; $484b: $60
    ld b, a                                       ; $484c: $47
    ld b, l                                       ; $484d: $45
    nop                                           ; $484e: $00
    ret nz                                        ; $484f: $c0

    ld h, b                                       ; $4850: $60
    or e                                          ; $4851: $b3
    ld b, b                                       ; $4852: $40
    pop hl                                        ; $4853: $e1
    ld h, l                                       ; $4854: $65
    adc l                                         ; $4855: $8d
    and d                                         ; $4856: $a2
    sub $60                                       ; $4857: $d6 $60
    ret                                           ; $4859: $c9


    and d                                         ; $485a: $a2
    or a                                          ; $485b: $b7
    push hl                                       ; $485c: $e5
    add l                                         ; $485d: $85
    ld b, e                                       ; $485e: $43
    call c, $8442                                 ; $485f: $dc $42 $84
    cp a                                          ; $4862: $bf

jr_060_4863:
    add d                                         ; $4863: $82
    sub c                                         ; $4864: $91
    ld b, l                                       ; $4865: $45

Call_060_4866:
    ld d, b                                       ; $4866: $50
    rst $38                                       ; $4867: $ff
    ret nz                                        ; $4868: $c0

    dec [hl]                                      ; $4869: $35
    add hl, sp                                    ; $486a: $39
    rlca                                          ; $486b: $07
    ld e, [hl]                                    ; $486c: $5e
    ld h, c                                       ; $486d: $61
    ld e, h                                       ; $486e: $5c
    ld b, c                                       ; $486f: $41
    and h                                         ; $4870: $a4
    ret                                           ; $4871: $c9


    add a                                         ; $4872: $87
    sub $c2                                       ; $4873: $d6 $c2
    ld b, [hl]                                    ; $4875: $46
    ld h, e                                       ; $4876: $63
    or a                                          ; $4877: $b7
    db $e4                                        ; $4878: $e4
    ret c                                         ; $4879: $d8

    add l                                         ; $487a: $85
    ld b, e                                       ; $487b: $43
    ld b, d                                       ; $487c: $42
    add l                                         ; $487d: $85
    ld b, e                                       ; $487e: $43
    add d                                         ; $487f: $82
    ld b, a                                       ; $4880: $47
    ld e, l                                       ; $4881: $5d
    cp a                                          ; $4882: $bf
    and c                                         ; $4883: $a1
    ld a, [hl-]                                   ; $4884: $3a
    ld d, e                                       ; $4885: $53
    ld bc, $bc53                                  ; $4886: $01 $53 $bc
    add c                                         ; $4889: $81
    ld a, $61                                     ; $488a: $3e $61
    ld a, e                                       ; $488c: $7b
    ld b, b                                       ; $488d: $40
    adc c                                         ; $488e: $89
    xor l                                         ; $488f: $ad
    or a                                          ; $4890: $b7
    push hl                                       ; $4891: $e5
    add l                                         ; $4892: $85
    ld b, [hl]                                    ; $4893: $46
    ld b, d                                       ; $4894: $42
    add [hl]                                      ; $4895: $86
    ld l, $40                                     ; $4896: $2e $40
    push bc                                       ; $4898: $c5
    dec [hl]                                      ; $4899: $35
    ld b, b                                       ; $489a: $40
    ld b, [hl]                                    ; $489b: $46
    ei                                            ; $489c: $fb
    ld h, b                                       ; $489d: $60
    jp $a2c2                                      ; $489e: $c3 $c2 $a2


    ld e, e                                       ; $48a1: $5b
    add a                                         ; $48a2: $87
    jr nc, jr_060_48f7                            ; $48a3: $30 $52

    ld b, c                                       ; $48a5: $41
    dec sp                                        ; $48a6: $3b
    ld l, c                                       ; $48a7: $69
    and h                                         ; $48a8: $a4
    add $42                                       ; $48a9: $c6 $42
    add [hl]                                      ; $48ab: $86
    ld b, l                                       ; $48ac: $45
    ld d, d                                       ; $48ad: $52
    ld b, b                                       ; $48ae: $40
    pop bc                                        ; $48af: $c1
    ld a, $c0                                     ; $48b0: $3e $c0
    add l                                         ; $48b2: $85
    ld b, d                                       ; $48b3: $42
    cp e                                          ; $48b4: $bb
    ld h, c                                       ; $48b5: $61
    call nz, Call_060_41fe                        ; $48b6: $c4 $fe $41
    ld e, e                                       ; $48b9: $5b
    adc b                                         ; $48ba: $88
    cpl                                           ; $48bb: $2f
    ld b, b                                       ; $48bc: $40
    dec sp                                        ; $48bd: $3b
    ld l, b                                       ; $48be: $68
    db $eb                                        ; $48bf: $eb
    cp b                                          ; $48c0: $b8
    and h                                         ; $48c1: $a4
    rst $00                                       ; $48c2: $c7
    ld bc, $8683                                  ; $48c3: $01 $83 $86
    ld b, b                                       ; $48c6: $40
    sub c                                         ; $48c7: $91
    ld b, l                                       ; $48c8: $45
    ld e, e                                       ; $48c9: $5b
    pop bc                                        ; $48ca: $c1
    add b                                         ; $48cb: $80
    dec [hl]                                      ; $48cc: $35
    daa                                           ; $48cd: $27
    ld [hl], $47                                  ; $48ce: $36 $47
    ld c, h                                       ; $48d0: $4c
    ret nz                                        ; $48d1: $c0

    ret nz                                        ; $48d2: $c0

    ld a, [hl]                                    ; $48d3: $7e
    ld b, d                                       ; $48d4: $42
    ld [$8a5b], a                                 ; $48d5: $ea $5b $8a
    dec sp                                        ; $48d8: $3b
    ld l, b                                       ; $48d9: $68
    ldh [$e2], a                                  ; $48da: $e0 $e2
    jr nz, jr_060_4863                            ; $48dc: $20 $85

    ld b, h                                       ; $48de: $44
    ld b, c                                       ; $48df: $41
    ld hl, $6100                                  ; $48e0: $21 $00 $61
    add [hl]                                      ; $48e3: $86
    ld b, b                                       ; $48e4: $40
    sub c                                         ; $48e5: $91
    ld b, [hl]                                    ; $48e6: $46
    ld b, h                                       ; $48e7: $44
    dec c                                         ; $48e8: $0d
    inc a                                         ; $48e9: $3c
    ret nz                                        ; $48ea: $c0

    pop hl                                        ; $48eb: $e1
    ld d, d                                       ; $48ec: $52
    ld h, c                                       ; $48ed: $61
    ret nz                                        ; $48ee: $c0

    add $5b                                       ; $48ef: $c6 $5b
    adc e                                         ; $48f1: $8b
    dec sp                                        ; $48f2: $3b
    ld l, b                                       ; $48f3: $68
    and h                                         ; $48f4: $a4
    add $fa                                       ; $48f5: $c6 $fa

jr_060_48f7:
    ld [hl], a                                    ; $48f7: $77
    ld [hl+], a                                   ; $48f8: $22
    sbc a                                         ; $48f9: $9f
    nop                                           ; $48fa: $00
    jp nz, Jump_060_4845                          ; $48fb: $c2 $45 $48

    ld c, b                                       ; $48fe: $48
    scf                                           ; $48ff: $37
    jr c, jr_060_4906                             ; $4900: $38 $04

    cp a                                          ; $4902: $bf
    db $e3                                        ; $4903: $e3
    add b                                         ; $4904: $80
    ret nz                                        ; $4905: $c0

jr_060_4906:
    sbc [hl]                                      ; $4906: $9e
    db $ed                                        ; $4907: $ed
    ld [bc], a                                    ; $4908: $02
    ld e, e                                       ; $4909: $5b
    adc b                                         ; $490a: $88
    or b                                          ; $490b: $b0
    ld b, [hl]                                    ; $490c: $46
    inc [hl]                                      ; $490d: $34
    adc d                                         ; $490e: $8a
    ld [hl], a                                    ; $490f: $77
    ld hl, $c4bc                                  ; $4910: $21 $bc $c4
    nop                                           ; $4913: $00
    nop                                           ; $4914: $00
    add c                                         ; $4915: $81
    ld d, c                                       ; $4916: $51
    ld e, a                                       ; $4917: $5f
    ld h, c                                       ; $4918: $61
    ld e, h                                       ; $4919: $5c
    ret nz                                        ; $491a: $c0

    jp nz, Jump_000_0539                          ; $491b: $c2 $39 $05

    ld e, e                                       ; $491e: $5b
    cp d                                          ; $491f: $ba
    ld b, b                                       ; $4920: $40

Call_060_4921:
    and c                                         ; $4921: $a1
    jr nz, jr_060_4967                            ; $4922: $20 $43

    ld e, e                                       ; $4924: $5b
    add a                                         ; $4925: $87
    or b                                          ; $4926: $b0
    ld b, e                                       ; $4927: $43
    rlc h                                         ; $4928: $cb $04
    xor e                                         ; $492a: $ab
    push bc                                       ; $492b: $c5
    ld h, b                                       ; $492c: $60
    ld [hl], a                                    ; $492d: $77
    ld [hl+], a                                   ; $492e: $22
    pop bc                                        ; $492f: $c1
    add e                                         ; $4930: $83
    ret nz                                        ; $4931: $c0

    ret nz                                        ; $4932: $c0

    add c                                         ; $4933: $81
    jp $803e                                      ; $4934: $c3 $3e $80


    ret nz                                        ; $4937: $c0

    ld b, [hl]                                    ; $4938: $46
    add d                                         ; $4939: $82
    ld h, b                                       ; $493a: $60
    ret nz                                        ; $493b: $c0

    db $ed                                        ; $493c: $ed
    ld [bc], a                                    ; $493d: $02
    ld e, e                                       ; $493e: $5b
    add a                                         ; $493f: $87
    sbc $02                                       ; $4940: $de $02
    jp Jump_000_0604                              ; $4942: $c3 $04 $06


    ld h, [hl]                                    ; $4945: $66
    ld [hl], a                                    ; $4946: $77
    ld [hl+], a                                   ; $4947: $22
    ld [c], a                                     ; $4948: $e2
    db $e3                                        ; $4949: $e3
    ld d, [hl]                                    ; $494a: $56
    ld a, l                                       ; $494b: $7d
    and d                                         ; $494c: $a2
    sub c                                         ; $494d: $91
    ld b, l                                       ; $494e: $45
    add c                                         ; $494f: $81
    jp nz, Jump_000_3d35                          ; $4950: $c2 $35 $3d

    ld h, b                                       ; $4953: $60
    pop bc                                        ; $4954: $c1
    halt                                          ; $4955: $76
    jr nz, jr_060_4958                            ; $4956: $20 $00

jr_060_4958:
    rst $38                                       ; $4958: $ff
    jp $875b                                      ; $4959: $c3 $5b $87


    add e                                         ; $495c: $83
    add hl, bc                                    ; $495d: $09
    xor e                                         ; $495e: $ab
    ret z                                         ; $495f: $c8

    rst $38                                       ; $4960: $ff
    add d                                         ; $4961: $82
    ld a, l                                       ; $4962: $7d
    and e                                         ; $4963: $a3
    ld b, d                                       ; $4964: $42
    and c                                         ; $4965: $a1
    ld a, a                                       ; $4966: $7f

jr_060_4967:
    ld [c], a                                     ; $4967: $e2
    add e                                         ; $4968: $83
    ld b, b                                       ; $4969: $40
    jp nz, Jump_000_2174                          ; $496a: $c2 $74 $21

    ld a, l                                       ; $496d: $7d
    add d                                         ; $496e: $82
    adc $a9                                       ; $496f: $ce $a9
    ccf                                           ; $4971: $3f
    ld h, l                                       ; $4972: $65
    ld b, $69                                     ; $4973: $06 $69
    ld [$8404], a                                 ; $4975: $ea $04 $84
    ld bc, $23bf                                  ; $4978: $01 $bf $23
    sub c                                         ; $497b: $91
    add c                                         ; $497c: $81
    db $e4                                        ; $497d: $e4
    dec a                                         ; $497e: $3d
    ld h, b                                       ; $497f: $60
    cp a                                          ; $4980: $bf
    and e                                         ; $4981: $a3
    inc a                                         ; $4982: $3c
    call nz, $64bd                                ; $4983: $c4 $bd $64
    ret c                                         ; $4986: $d8

    ld de, $0644                                  ; $4987: $11 $44 $06
    ld l, e                                       ; $498a: $6b
    ld b, c                                       ; $498b: $41
    add c                                         ; $498c: $81
    db $e4                                        ; $498d: $e4
    push hl                                       ; $498e: $e5
    cp a                                          ; $498f: $bf
    inc hl                                        ; $4990: $23
    ld b, [hl]                                    ; $4991: $46
    ld a, $04                                     ; $4992: $3e $04
    ret nz                                        ; $4994: $c0

    push hl                                       ; $4995: $e5
    dec a                                         ; $4996: $3d
    ld h, c                                       ; $4997: $61
    push bc                                       ; $4998: $c5
    ld a, $64                                     ; $4999: $3e $64
    inc b                                         ; $499b: $04
    dec h                                         ; $499c: $25
    ld de, $0645                                  ; $499d: $11 $45 $06
    ld l, l                                       ; $49a0: $6d
    rst $38                                       ; $49a1: $ff
    rlca                                          ; $49a2: $07
    cp [hl]                                       ; $49a3: $be
    add b                                         ; $49a4: $80
    rst $20                                       ; $49a5: $e7
    dec [hl]                                      ; $49a6: $35
    ld b, d                                       ; $49a7: $42
    jp $c690                                      ; $49a8: $c3 $90 $c6


    halt                                          ; $49ab: $76
    ld [bc], a                                    ; $49ac: $02
    sbc [hl]                                      ; $49ad: $9e
    nop                                           ; $49ae: $00
    ld a, [$8361]                                 ; $49af: $fa $61 $83
    ret nz                                        ; $49b2: $c0

    or [hl]                                       ; $49b3: $b6
    and a                                         ; $49b4: $a7
    cp h                                          ; $49b5: $bc
    add h                                         ; $49b6: $84
    ld b, $64                                     ; $49b7: $06 $64
    jr nz, jr_060_49df                            ; $49b9: $20 $24

    cp a                                          ; $49bb: $bf
    inc hl                                        ; $49bc: $23
    nop                                           ; $49bd: $00
    and $1f                                       ; $49be: $e6 $1f
    inc a                                         ; $49c0: $3c
    ld b, h                                       ; $49c1: $44
    call nz, $c790                                ; $49c2: $c4 $90 $c7
    ld a, $43                                     ; $49c5: $3e $43
    ld a, [$5261]                                 ; $49c7: $fa $61 $52
    add d                                         ; $49ca: $82
    nop                                           ; $49cb: $00
    ld de, $ab45                                  ; $49cc: $11 $45 $ab
    res 6, e                                      ; $49cf: $cb $b3
    dec b                                         ; $49d1: $05
    cp a                                          ; $49d2: $bf
    ld [hl+], a                                   ; $49d3: $22
    rst $38                                       ; $49d4: $ff
    add $7d                                       ; $49d5: $c6 $7d
    ld b, e                                       ; $49d7: $43
    inc a                                         ; $49d8: $3c
    add d                                         ; $49d9: $82
    ld a, [$0061]                                 ; $49da: $fa $61 $00
    ld a, c                                       ; $49dd: $79
    ld [bc], a                                    ; $49de: $02

jr_060_49df:
    ld de, $3045                                  ; $49df: $11 $45 $30
    adc e                                         ; $49e2: $8b
    or e                                          ; $49e3: $b3
    ld b, $bf                                     ; $49e4: $06 $bf
    ld [hl+], a                                   ; $49e6: $22
    ld bc, $bf41                                  ; $49e7: $01 $41 $bf
    and d                                         ; $49ea: $a2
    pop bc                                        ; $49eb: $c1
    call nz, $be00                                ; $49ec: $c4 $00 $be
    add c                                         ; $49ef: $81
    sbc e                                         ; $49f0: $9b
    dec b                                         ; $49f1: $05
    ld de, $8945                                  ; $49f2: $11 $45 $89
    rlca                                          ; $49f5: $07
    ld h, b                                       ; $49f6: $60
    and d                                         ; $49f7: $a2
    dec hl                                        ; $49f8: $2b
    push hl                                       ; $49f9: $e5
    rst $38                                       ; $49fa: $ff
    ld [hl+], a                                   ; $49fb: $22
    nop                                           ; $49fc: $00
    and b                                         ; $49fd: $a0
    ld sp, $00b3                                  ; $49fe: $31 $b3 $00
    jp nz, $e033                                  ; $4a01: $c2 $33 $e0

    ld sp, $b600                                  ; $4a04: $31 $00 $b6
    sbc a                                         ; $4a07: $9f
    ret                                           ; $4a08: $c9


    add hl, hl                                    ; $4a09: $29
    ld de, $6e44                                  ; $4a0a: $11 $44 $6e
    or a                                          ; $4a0d: $b7
    daa                                           ; $4a0e: $27
    ldh [$e1], a                                  ; $4a0f: $e0 $e1
    ld [$06b3], a                                 ; $4a11: $ea $b3 $06
    sbc $df                                       ; $4a14: $de $df
    cp h                                          ; $4a16: $bc
    ld bc, $420f                                  ; $4a17: $01 $0f $42
    dec [hl]                                      ; $4a1a: $35
    dec [hl]                                      ; $4a1b: $35
    or h                                          ; $4a1c: $b4
    add b                                         ; $4a1d: $80
    and d                                         ; $4a1e: $a2
    jp nz, Jump_060_7e22                          ; $4a1f: $c2 $22 $7e

    ld h, b                                       ; $4a22: $60
    ret                                           ; $4a23: $c9


    daa                                           ; $4a24: $27
    and b                                         ; $4a25: $a0

jr_060_4a26:
    ld de, $0046                                  ; $4a26: $11 $46 $00
    ld b, a                                       ; $4a29: $47
    ld h, b                                       ; $4a2a: $60
    and d                                         ; $4a2b: $a2
    or e                                          ; $4a2c: $b3
    inc b                                         ; $4a2d: $04
    cp $22                                        ; $4a2e: $fe $22
    call nz, Call_060_6001                        ; $4a30: $c4 $01 $60
    or l                                          ; $4a33: $b5
    nop                                           ; $4a34: $00
    ld a, $26                                     ; $4a35: $3e $26
    ld bc, $c941                                  ; $4a37: $01 $41 $c9
    daa                                           ; $4a3a: $27
    reti                                          ; $4a3b: $d9


    and c                                         ; $4a3c: $a1
    ld de, $0042                                  ; $4a3d: $11 $42 $00
    ld c, d                                       ; $4a40: $4a
    or e                                          ; $4a41: $b3
    ld b, $fe                                     ; $4a42: $06 $fe
    ld [hl+], a                                   ; $4a44: $22
    inc b                                         ; $4a45: $04
    cp [hl]                                       ; $4a46: $be
    and l                                         ; $4a47: $a5
    cp [hl]                                       ; $4a48: $be
    ld bc, $84b6                                  ; $4a49: $01 $b6 $84
    and c                                         ; $4a4c: $a1
    ret                                           ; $4a4d: $c9


    jr z, @+$39                                   ; $4a4e: $28 $37

    dec h                                         ; $4a50: $25
    nop                                           ; $4a51: $00
    ld b, a                                       ; $4a52: $47
    xor l                                         ; $4a53: $ad
    ld [$2210], sp                                ; $4a54: $08 $10 $22
    nop                                           ; $4a57: $00
    dec a                                         ; $4a58: $3d
    add e                                         ; $4a59: $83
    ccf                                           ; $4a5a: $3f
    ldh [rSB], a                                  ; $4a5b: $e0 $01
    db $e4                                        ; $4a5d: $e4
    and c                                         ; $4a5e: $a1
    dec hl                                        ; $4a5f: $2b
    ld hl, $28c9                                  ; $4a60: $21 $c9 $28
    sub c                                         ; $4a63: $91
    ld b, h                                       ; $4a64: $44
    pop af                                        ; $4a65: $f1
    and b                                         ; $4a66: $a0
    nop                                           ; $4a67: $00
    ld b, a                                       ; $4a68: $47
    db $e4                                        ; $4a69: $e4
    ret                                           ; $4a6a: $c9


    dec sp                                        ; $4a6b: $3b
    ld h, b                                       ; $4a6c: $60
    ld [bc], a                                    ; $4a6d: $02
    rlca                                          ; $4a6e: $07
    rlca                                          ; $4a6f: $07
    ld [bc], a                                    ; $4a70: $02
    ld [$c1bf], sp                                ; $4a71: $08 $bf $c1
    ccf                                           ; $4a74: $3f
    ld hl, $00c3                                  ; $4a75: $21 $c3 $00
    sbc [hl]                                      ; $4a78: $9e
    ld b, c                                       ; $4a79: $41
    add c                                         ; $4a7a: $81
    ret                                           ; $4a7b: $c9


    jr z, jr_060_4ab3                             ; $4a7c: $28 $35

    ld h, $b7                                     ; $4a7e: $26 $b7

Jump_060_4a80:
    ld h, $7c                                     ; $4a80: $26 $7c
    db $e4                                        ; $4a82: $e4
    ret                                           ; $4a83: $c9


    add c                                         ; $4a84: $81
    nop                                           ; $4a85: $00
    ld [$989a], sp                                ; $4a86: $08 $9a $98
    ld [$3fc3], sp                                ; $4a89: $08 $c3 $3f
    jp Jump_060_4000                              ; $4a8c: $c3 $00 $40


    ld [c], a                                     ; $4a8f: $e2
    ld b, c                                       ; $4a90: $41
    add c                                         ; $4a91: $81
    ret                                           ; $4a92: $c9


    jr z, jr_060_4a26                             ; $4a93: $28 $91

    ld b, [hl]                                    ; $4a95: $46
    or a                                          ; $4a96: $b7
    dec h                                         ; $4a97: $25
    db $e4                                        ; $4a98: $e4
    ret                                           ; $4a99: $c9


    ld [bc], a                                    ; $4a9a: $02
    ld hl, $e180                                  ; $4a9b: $21 $80 $e1
    ld bc, $40c4                                  ; $4a9e: $01 $c4 $40
    ld [c], a                                     ; $4aa1: $e2
    ccf                                           ; $4aa2: $3f
    inc bc                                        ; $4aa3: $03
    nop                                           ; $4aa4: $00
    ld b, c                                       ; $4aa5: $41
    ret                                           ; $4aa6: $c9


    add hl, hl                                    ; $4aa7: $29
    dec [hl]                                      ; $4aa8: $35
    dec h                                         ; $4aa9: $25
    or a                                          ; $4aaa: $b7
    dec h                                         ; $4aab: $25
    xor l                                         ; $4aac: $ad
    ld [$e407], sp                                ; $4aad: $08 $07 $e4
    push hl                                       ; $4ab0: $e5
    and c                                         ; $4ab1: $a1
    inc a                                         ; $4ab2: $3c

jr_060_4ab3:
    ld b, h                                       ; $4ab3: $44
    ld a, $82                                     ; $4ab4: $3e $82
    jp nz, $bfa4                                  ; $4ab6: $c2 $a4 $bf

    inc h                                         ; $4ab9: $24
    ret                                           ; $4aba: $c9


    dec h                                         ; $4abb: $25
    ld b, b                                       ; $4abc: $40
    dec [hl]                                      ; $4abd: $35
    dec h                                         ; $4abe: $25
    or a                                          ; $4abf: $b7
    dec h                                         ; $4ac0: $25
    xor l                                         ; $4ac1: $ad
    ld [$247c], sp                                ; $4ac2: $08 $7c $24
    ld a, l                                       ; $4ac5: $7d
    ld b, c                                       ; $4ac6: $41
    ld a, a                                       ; $4ac7: $7f
    nop                                           ; $4ac8: $00
    ld [hl], $43                                  ; $4ac9: $36 $43
    and c                                         ; $4acb: $a1
    nop                                           ; $4acc: $00
    add e                                         ; $4acd: $83
    add c                                         ; $4ace: $81
    ld b, b                                       ; $4acf: $40
    ld b, b                                       ; $4ad0: $40
    ld c, e                                       ; $4ad1: $4b
    pop bc                                        ; $4ad2: $c1
    jp c, Jump_000_3503                           ; $4ad3: $da $03 $35

    ld h, $00                                     ; $4ad6: $26 $00
    ld b, [hl]                                    ; $4ad8: $46
    xor l                                         ; $4ad9: $ad
    rlca                                          ; $4ada: $07
    or $00                                        ; $4adb: $f6 $00
    ld e, $7d                                     ; $4add: $1e $7d
    ld b, h                                       ; $4adf: $44
    sub b                                         ; $4ae0: $90
    ld b, l                                       ; $4ae1: $45
    ld [hl], $36                                  ; $4ae2: $36 $36
    inc bc                                        ; $4ae4: $03
    ld b, c                                       ; $4ae5: $41
    xor $22                                       ; $4ae6: $ee $22
    ret nz                                        ; $4ae8: $c0

    ld hl, $cc80                                  ; $4ae9: $21 $80 $cc

jr_060_4aec:
    daa                                           ; $4aec: $27
    dec [hl]                                      ; $4aed: $35
    daa                                           ; $4aee: $27
    nop                                           ; $4aef: $00
    ld b, h                                       ; $4af0: $44
    xor l                                         ; $4af1: $ad
    rlca                                          ; $4af2: $07
    ld a, l                                       ; $4af3: $7d
    ld h, [hl]                                    ; $4af4: $66
    inc a                                         ; $4af5: $3c
    ld h, c                                       ; $4af6: $61
    pop bc                                        ; $4af7: $c1
    db $e4                                        ; $4af8: $e4
    jp $ff40                                      ; $4af9: $c3 $40 $ff


    inc bc                                        ; $4afc: $03
    and b                                         ; $4afd: $a0
    add l                                         ; $4afe: $85
    cp $ec                                        ; $4aff: $fe $ec
    nop                                           ; $4b01: $00
    ld b, c                                       ; $4b02: $41
    xor l                                         ; $4b03: $ad
    ld b, $69                                     ; $4b04: $06 $69
    ld hl, $beea                                  ; $4b06: $21 $ea $be
    ld b, d                                       ; $4b09: $42
    nop                                           ; $4b0a: $00
    ld [hl], $25                                  ; $4b0b: $36 $25
    xor a                                         ; $4b0d: $af
    ld bc, $4500                                  ; $4b0e: $01 $00 $45
    and b                                         ; $4b11: $a0
    add e                                         ; $4b12: $83
    ld e, c                                       ; $4b13: $59
    nop                                           ; $4b14: $00
    cp e                                          ; $4b15: $bb
    xor $f6                                       ; $4b16: $ee $f6
    rst $00                                       ; $4b18: $c7
    ld a, l                                       ; $4b19: $7d
    jp $c404                                      ; $4b1a: $c3 $04 $c4


    and $b0                                       ; $4b1d: $e6 $b0
    ld [bc], a                                    ; $4b1f: $02
    and c                                         ; $4b20: $a1
    xor d                                         ; $4b21: $aa
    and c                                         ; $4b22: $a1
    and b                                         ; $4b23: $a0
    add [hl]                                      ; $4b24: $86
    ld sp, hl                                     ; $4b25: $f9
    ld h, b                                       ; $4b26: $60
    rst $38                                       ; $4b27: $ff
    or $69                                        ; $4b28: $f6 $69
    inc hl                                        ; $4b2a: $23

Jump_060_4b2b:
    cp [hl]                                       ; $4b2b: $be
    ld a, h                                       ; $4b2c: $7c
    ld h, b                                       ; $4b2d: $60
    ld b, l                                       ; $4b2e: $45
    ld b, c                                       ; $4b2f: $41
    ld b, e                                       ; $4b30: $43
    ld b, c                                       ; $4b31: $41
    ld b, e                                       ; $4b32: $43
    db $fd                                        ; $4b33: $fd
    ldh [$af], a                                  ; $4b34: $e0 $af
    add b                                         ; $4b36: $80
    nop                                           ; $4b37: $00
    and b                                         ; $4b38: $a0
    ld b, c                                       ; $4b39: $41
    ld bc, $00d0                                  ; $4b3a: $01 $d0 $00
    and b                                         ; $4b3d: $a0
    add l                                         ; $4b3e: $85
    db $dd                                        ; $4b3f: $dd
    ret nz                                        ; $4b40: $c0

    jp nz, Jump_060_460a                          ; $4b41: $c2 $0a $46

    and h                                         ; $4b44: $a4
    ld [$c4f8], a                                 ; $4b45: $ea $f8 $c4
    ld hl, $2169                                  ; $4b48: $21 $69 $21

Jump_060_4b4b:
    cp l                                          ; $4b4b: $bd
    jr nz, jr_060_4aec                            ; $4b4c: $20 $9e

    sub b                                         ; $4b4e: $90
    ld b, d                                       ; $4b4f: $42
    xor h                                         ; $4b50: $ac
    dec sp                                        ; $4b51: $3b
    or e                                          ; $4b52: $b3
    dec [hl]                                      ; $4b53: $35
    dec sp                                        ; $4b54: $3b
    db $fd                                        ; $4b55: $fd
    ldh [$7e], a                                  ; $4b56: $e0 $7e
    ret nz                                        ; $4b58: $c0

    or [hl]                                       ; $4b59: $b6
    sbc a                                         ; $4b5a: $9f
    ld b, c                                       ; $4b5b: $41
    and d                                         ; $4b5c: $a2
    db $d3                                        ; $4b5d: $d3
    ret nz                                        ; $4b5e: $c0

    and b                                         ; $4b5f: $a0
    add l                                         ; $4b60: $85
    ld sp, hl                                     ; $4b61: $f9
    ld b, [hl]                                    ; $4b62: $46
    cp a                                          ; $4b63: $bf
    dec l                                         ; $4b64: $2d
    xor d                                         ; $4b65: $aa
    jr nz, @-$5e                                  ; $4b66: $20 $a0

    ld h, c                                       ; $4b68: $61
    cp l                                          ; $4b69: $bd
    ld [hl+], a                                   ; $4b6a: $22
    ld b, d                                       ; $4b6b: $42
    xor l                                         ; $4b6c: $ad
    dec sp                                        ; $4b6d: $3b
    and h                                         ; $4b6e: $a4
    ld h, h                                       ; $4b6f: $64
    rst $38                                       ; $4b70: $ff
    ldh [$a5], a                                  ; $4b71: $e0 $a5
    inc a                                         ; $4b73: $3c
    ld b, h                                       ; $4b74: $44
    ld b, c                                       ; $4b75: $41
    and l                                         ; $4b76: $a5
    ret nc                                        ; $4b77: $d0

    ld bc, $81c2                                  ; $4b78: $01 $c2 $81
    ld h, e                                       ; $4b7b: $63
    db $eb                                        ; $4b7c: $eb
    jp nz, $bf08                                  ; $4b7d: $c2 $08 $bf

    add hl, hl                                    ; $4b80: $29
    xor d                                         ; $4b81: $aa
    inc h                                         ; $4b82: $24
    add b                                         ; $4b83: $80
    add d                                         ; $4b84: $82
    ld b, d                                       ; $4b85: $42
    dec [hl]                                      ; $4b86: $35
    ccf                                           ; $4b87: $3f
    ld l, c                                       ; $4b88: $69
    and e                                         ; $4b89: $a3
    dec [hl]                                      ; $4b8a: $35
    dec [hl]                                      ; $4b8b: $35
    and e                                         ; $4b8c: $a3
    ld l, d                                       ; $4b8d: $6a
    ld a, a                                       ; $4b8e: $7f
    add b                                         ; $4b8f: $80
    ld b, c                                       ; $4b90: $41
    and h                                         ; $4b91: $a4
    nop                                           ; $4b92: $00
    ret nc                                        ; $4b93: $d0

    ld b, $42                                     ; $4b94: $06 $42
    nop                                           ; $4b96: $00
    jp nz, $bf08                                  ; $4b97: $c2 $08 $bf

    ld l, $fb                                     ; $4b9a: $2e $fb
    jr nz, jr_060_4c1a                            ; $4b9c: $20 $7c

    ld b, b                                       ; $4b9e: $40
    ret nz                                        ; $4b9f: $c0

    ldh [$c2], a                                  ; $4ba0: $e0 $c2
    ld b, c                                       ; $4ba2: $41
    nop                                           ; $4ba3: $00
    ret nz                                        ; $4ba4: $c0

    pop hl                                        ; $4ba5: $e1
    ld b, a                                       ; $4ba6: $47
    ld b, d                                       ; $4ba7: $42
    rlca                                          ; $4ba8: $07
    ld h, e                                       ; $4ba9: $63
    ccf                                           ; $4baa: $3f
    ld h, [hl]                                    ; $4bab: $66
    ld a, h                                       ; $4bac: $7c
    daa                                           ; $4bad: $27
    ld l, d                                       ; $4bae: $6a
    ld a, [bc]                                    ; $4baf: $0a
    jr nc, jr_060_4bb6                            ; $4bb0: $30 $04

    cp h                                          ; $4bb2: $bc
    jr nz, jr_060_4be4                            ; $4bb3: $20 $2f

    ld b, h                                       ; $4bb5: $44

jr_060_4bb6:
    inc a                                         ; $4bb6: $3c
    ld l, e                                       ; $4bb7: $6b
    ld [hl], c                                    ; $4bb8: $71
    rst $38                                       ; $4bb9: $ff
    ldh [$6d], a                                  ; $4bba: $e0 $6d
    ld b, b                                       ; $4bbc: $40
    ld h, c                                       ; $4bbd: $61

jr_060_4bbe:
    add e                                         ; $4bbe: $83
    and l                                         ; $4bbf: $a5
    and b                                         ; $4bc0: $a0
    call nc, Call_000_3d09                        ; $4bc1: $d4 $09 $3d
    ld h, $bf                                     ; $4bc4: $26 $bf
    ld a, [hl+]                                   ; $4bc6: $2a
    sbc [hl]                                      ; $4bc7: $9e
    and h                                         ; $4bc8: $a4
    add c                                         ; $4bc9: $81
    ld h, c                                       ; $4bca: $61
    ld [hl], $c0                                  ; $4bcb: $36 $c0
    push bc                                       ; $4bcd: $c5
    call nz, $83e0                                ; $4bce: $c4 $e0 $83
    and e                                         ; $4bd1: $a3
    call nc, $060c                                ; $4bd2: $d4 $0c $06
    rst $00                                       ; $4bd5: $c7
    cp a                                          ; $4bd6: $bf
    jr z, jr_060_4c17                             ; $4bd7: $28 $3e

    ld b, [hl]                                    ; $4bd9: $46
    sbc l                                         ; $4bda: $9d
    or [hl]                                       ; $4bdb: $b6
    sub c                                         ; $4bdc: $91
    dec c                                         ; $4bdd: $0d
    ld b, l                                       ; $4bde: $45
    ld b, b                                       ; $4bdf: $40

Jump_060_4be0:
    jp $9145                                      ; $4be0: $c3 $45 $91


    add d                                         ; $4be3: $82

jr_060_4be4:
    ld h, d                                       ; $4be4: $62
    push hl                                       ; $4be5: $e5
    ld [hl+], a                                   ; $4be6: $22
    dec d                                         ; $4be7: $15
    rst $28                                       ; $4be8: $ef
    cp a                                          ; $4be9: $bf
    inc l                                         ; $4bea: $2c
    nop                                           ; $4beb: $00
    ld a, $46                                     ; $4bec: $3e $46
    ld a, l                                       ; $4bee: $7d
    ld h, b                                       ; $4bef: $60
    rst $38                                       ; $4bf0: $ff
    and $03                                       ; $4bf1: $e6 $03
    jp nz, Jump_060_62d0                          ; $4bf3: $c2 $d0 $62

    dec d                                         ; $4bf6: $15
    xor $85                                       ; $4bf7: $ee $85
    and l                                         ; $4bf9: $a5
    ld l, d                                       ; $4bfa: $6a
    dec b                                         ; $4bfb: $05
    nop                                           ; $4bfc: $00
    sbc [hl]                                      ; $4bfd: $9e
    and l                                         ; $4bfe: $a5
    ld e, [hl]                                    ; $4bff: $5e
    xor h                                         ; $4c00: $ac
    ret nc                                        ; $4c01: $d0

    ld h, l                                       ; $4c02: $65
    call nc, Call_060_420a                        ; $4c03: $d4 $0a $42
    or c                                          ; $4c06: $b1
    ld a, $45                                     ; $4c07: $3e $45
    ld d, a                                       ; $4c09: $57
    jr nz, jr_060_4bbe                            ; $4c0a: $20 $b2

    and d                                         ; $4c0c: $a2
    jr nc, jr_060_4c3c                            ; $4c0d: $30 $2d

    ld bc, $210b                                  ; $4c0f: $01 $0b $21
    ret nc                                        ; $4c12: $d0

    ld h, h                                       ; $4c13: $64
    call nc, $a00c                                ; $4c14: $d4 $0c $a0

jr_060_4c17:
    and b                                         ; $4c17: $a0
    nop                                           ; $4c18: $00
    nop                                           ; $4c19: $00

jr_060_4c1a:
    nop                                           ; $4c1a: $00
    pop bc                                        ; $4c1b: $c1
    nop                                           ; $4c1c: $00
    rst $38                                       ; $4c1d: $ff
    rst $38                                       ; $4c1e: $ff
    rst $38                                       ; $4c1f: $ff
    rst $38                                       ; $4c20: $ff
    rst $38                                       ; $4c21: $ff
    rst $38                                       ; $4c22: $ff
    rst $38                                       ; $4c23: $ff
    rst $38                                       ; $4c24: $ff
    rst $38                                       ; $4c25: $ff
    rst $38                                       ; $4c26: $ff
    nop                                           ; $4c27: $00
    nop                                           ; $4c28: $00
    dec c                                         ; $4c29: $0d
    add b                                         ; $4c2a: $80
    cp $e0                                        ; $4c2b: $fe $e0
    nop                                           ; $4c2d: $00
    ld b, b                                       ; $4c2e: $40
    ret c                                         ; $4c2f: $d8

    push hl                                       ; $4c30: $e5
    rst $30                                       ; $4c31: $f7
    and $eb                                       ; $4c32: $e6 $eb
    ldh [rIE], a                                  ; $4c34: $e0 $ff
    rst $38                                       ; $4c36: $ff
    nop                                           ; $4c37: $00
    rst $38                                       ; $4c38: $ff
    db $f4                                        ; $4c39: $f4
    nop                                           ; $4c3a: $00
    nop                                           ; $4c3b: $00

jr_060_4c3c:
    nop                                           ; $4c3c: $00
    ld [bc], a                                    ; $4c3d: $02
    nop                                           ; $4c3e: $00
    dec e                                         ; $4c3f: $1d
    dec b                                         ; $4c40: $05
    ld [bc], a                                    ; $4c41: $02
    ld bc, $0621                                  ; $4c42: $01 $21 $06
    ld [bc], a                                    ; $4c45: $02
    ld [bc], a                                    ; $4c46: $02
    dec h                                         ; $4c47: $25
    rlca                                          ; $4c48: $07
    ld [bc], a                                    ; $4c49: $02
    inc bc                                        ; $4c4a: $03
    add hl, de                                    ; $4c4b: $19
    ld [$0402], sp                                ; $4c4c: $08 $02 $04
    dec d                                         ; $4c4f: $15
    add hl, bc                                    ; $4c50: $09
    ld [bc], a                                    ; $4c51: $02
    dec b                                         ; $4c52: $05
    rla                                           ; $4c53: $17
    inc c                                         ; $4c54: $0c
    ld [bc], a                                    ; $4c55: $02
    ld b, $23                                     ; $4c56: $06 $23
    inc c                                         ; $4c58: $0c
    ld [bc], a                                    ; $4c59: $02
    rlca                                          ; $4c5a: $07
    add hl, hl                                    ; $4c5b: $29
    dec c                                         ; $4c5c: $0d
    ld [bc], a                                    ; $4c5d: $02
    ld [$0e1b], sp                                ; $4c5e: $08 $1b $0e
    ld [bc], a                                    ; $4c61: $02
    add hl, bc                                    ; $4c62: $09
    daa                                           ; $4c63: $27
    rrca                                          ; $4c64: $0f
    ld [bc], a                                    ; $4c65: $02
    ld a, [bc]                                    ; $4c66: $0a
    add hl, de                                    ; $4c67: $19
    inc de                                        ; $4c68: $13
    ld [bc], a                                    ; $4c69: $02
    dec bc                                        ; $4c6a: $0b
    dec h                                         ; $4c6b: $25
    inc de                                        ; $4c6c: $13
    ld [bc], a                                    ; $4c6d: $02
    inc c                                         ; $4c6e: $0c
    ld d, $16                                     ; $4c6f: $16 $16
    ld [bc], a                                    ; $4c71: $02
    dec c                                         ; $4c72: $0d
    inc de                                        ; $4c73: $13
    jr jr_060_4c78                                ; $4c74: $18 $02

    ld c, $28                                     ; $4c76: $0e $28

jr_060_4c78:
    add hl, de                                    ; $4c78: $19
    ld [bc], a                                    ; $4c79: $02
    rrca                                          ; $4c7a: $0f
    rla                                           ; $4c7b: $17
    dec de                                        ; $4c7c: $1b
    ld [bc], a                                    ; $4c7d: $02
    db $10                                        ; $4c7e: $10
    daa                                           ; $4c7f: $27
    rra                                           ; $4c80: $1f
    ld [bc], a                                    ; $4c81: $02
    ld de, $2019                                  ; $4c82: $11 $19 $20
    ld [bc], a                                    ; $4c85: $02
    ld [de], a                                    ; $4c86: $12
    ld d, $22                                     ; $4c87: $16 $22
    ld [bc], a                                    ; $4c89: $02
    inc de                                        ; $4c8a: $13
    add hl, hl                                    ; $4c8b: $29
    ld [hl+], a                                   ; $4c8c: $22
    ld [bc], a                                    ; $4c8d: $02
    inc d                                         ; $4c8e: $14
    ld h, $24                                     ; $4c8f: $26 $24
    ld [bc], a                                    ; $4c91: $02
    dec d                                         ; $4c92: $15
    dec hl                                        ; $4c93: $2b
    inc h                                         ; $4c94: $24
    ld [bc], a                                    ; $4c95: $02
    ld d, $18                                     ; $4c96: $16 $18
    dec h                                         ; $4c98: $25
    ld [bc], a                                    ; $4c99: $02
    rla                                           ; $4c9a: $17
    jr z, @+$29                                   ; $4c9b: $28 $27

    ld [bc], a                                    ; $4c9d: $02
    jr jr_060_4cc5                                ; $4c9e: $18 $25

    jr z, jr_060_4ca4                             ; $4ca0: $28 $02

    add hl, de                                    ; $4ca2: $19
    dec de                                        ; $4ca3: $1b

jr_060_4ca4:
    add hl, hl                                    ; $4ca4: $29
    ld [bc], a                                    ; $4ca5: $02
    ld a, [de]                                    ; $4ca6: $1a
    inc h                                         ; $4ca7: $24
    inc l                                         ; $4ca8: $2c
    ld [bc], a                                    ; $4ca9: $02
    dec de                                        ; $4caa: $1b
    inc e                                         ; $4cab: $1c
    ld l, $02                                     ; $4cac: $2e $02
    inc e                                         ; $4cae: $1c
    rla                                           ; $4caf: $17
    cpl                                           ; $4cb0: $2f
    ld [bc], a                                    ; $4cb1: $02
    dec e                                         ; $4cb2: $1d
    ld h, $30                                     ; $4cb3: $26 $30
    ld [bc], a                                    ; $4cb5: $02
    ld e, $1a                                     ; $4cb6: $1e $1a
    ld sp, $1f02                                  ; $4cb8: $31 $02 $1f
    dec e                                         ; $4cbb: $1d
    inc sp                                        ; $4cbc: $33
    ld [bc], a                                    ; $4cbd: $02
    jr nz, jr_060_4ce7                            ; $4cbe: $20 $27

    inc sp                                        ; $4cc0: $33
    ld [bc], a                                    ; $4cc1: $02
    ld hl, $3523                                  ; $4cc2: $21 $23 $35

jr_060_4cc5:
    ld [bc], a                                    ; $4cc5: $02
    ld [hl+], a                                   ; $4cc6: $22
    inc e                                         ; $4cc7: $1c
    scf                                           ; $4cc8: $37
    ld [bc], a                                    ; $4cc9: $02
    inc hl                                        ; $4cca: $23
    ld a, [de]                                    ; $4ccb: $1a
    dec sp                                        ; $4ccc: $3b
    ld [bc], a                                    ; $4ccd: $02
    inc h                                         ; $4cce: $24
    dec h                                         ; $4ccf: $25
    dec sp                                        ; $4cd0: $3b
    rst $38                                       ; $4cd1: $ff
    rst $38                                       ; $4cd2: $ff
    rst $38                                       ; $4cd3: $ff
    call c, Call_060_594c                         ; $4cd4: $dc $4c $59
    ld d, b                                       ; $4cd7: $50
    cp $54                                        ; $4cd8: $fe $54
    dec e                                         ; $4cda: $1d
    ld d, l                                       ; $4cdb: $55
    ccf                                           ; $4cdc: $3f
    ld c, $0e                                     ; $4cdd: $0e $0e
    dec c                                         ; $4cdf: $0d
    dec c                                         ; $4ce0: $0d
    dec c                                         ; $4ce1: $0d
    ld c, $ff                                     ; $4ce2: $0e $ff
    db $e3                                        ; $4ce4: $e3
    or $ea                                        ; $4ce5: $f6 $ea

jr_060_4ce7:
    ld a, [de]                                    ; $4ce7: $1a
    ld [$4de1], a                                 ; $4ce8: $ea $e1 $4d
    ld [c], a                                     ; $4ceb: $e2
    pop hl                                        ; $4cec: $e1
    ld c, l                                       ; $4ced: $4d
    inc c                                         ; $4cee: $0c
    rst $38                                       ; $4cef: $ff
    ld sp, hl                                     ; $4cf0: $f9
    ret                                           ; $4cf1: $c9


    pop hl                                        ; $4cf2: $e1
    jp Jump_060_7ce3                              ; $4cf3: $c3 $e3 $7c


    or $ed                                        ; $4cf6: $f6 $ed
    db $fd                                        ; $4cf8: $fd
    pop hl                                        ; $4cf9: $e1
    ld c, l                                       ; $4cfa: $4d
    ld c, l                                       ; $4cfb: $4d
    dec c                                         ; $4cfc: $0d
    ld c, l                                       ; $4cfd: $4d
    ld l, l                                       ; $4cfe: $6d
    ret nz                                        ; $4cff: $c0

    db $fd                                        ; $4d00: $fd
    ldh a, [$85]                                  ; $4d01: $f0 $85
    xor $71                                       ; $4d03: $ee $71
    ldh [$86], a                                  ; $4d05: $e0 $86
    pop hl                                        ; $4d07: $e1
    ld h, l                                       ; $4d08: $65
    ld [c], a                                     ; $4d09: $e2
    ld l, l                                       ; $4d0a: $6d
    ld l, e                                       ; $4d0b: $6b
    dec c                                         ; $4d0c: $0d
    ld c, h                                       ; $4d0d: $4c
    pop de                                        ; $4d0e: $d1
    ld c, h                                       ; $4d0f: $4c
    ret nz                                        ; $4d10: $c0

    db $fc                                        ; $4d11: $fc
    add l                                         ; $4d12: $85
    xor $32                                       ; $4d13: $ee $32
    db $e4                                        ; $4d15: $e4
    ld c, l                                       ; $4d16: $4d
    pop bc                                        ; $4d17: $c1
    pop hl                                        ; $4d18: $e1
    ld l, e                                       ; $4d19: $6b
    dec c                                         ; $4d1a: $0d
    ld h, c                                       ; $4d1b: $61
    ld l, e                                       ; $4d1c: $6b
    cp a                                          ; $4d1d: $bf
    ld sp, hl                                     ; $4d1e: $f9
    nop                                           ; $4d1f: $00
    db $f4                                        ; $4d20: $f4
    push bc                                       ; $4d21: $c5
    ldh [$83], a                                  ; $4d22: $e0 $83
    pop hl                                        ; $4d24: $e1
    dec c                                         ; $4d25: $0d
    ld l, e                                       ; $4d26: $6b
    rst $38                                       ; $4d27: $ff
    ld [c], a                                     ; $4d28: $e2
    ld bc, $ff4c                                  ; $4d29: $01 $4c $ff
    ldh [rP1], a                                  ; $4d2c: $e0 $00
    rst $38                                       ; $4d2e: $ff
    or $c9                                        ; $4d2f: $f6 $c9
    ld b, h                                       ; $4d31: $44
    push hl                                       ; $4d32: $e5
    add c                                         ; $4d33: $81
    pop hl                                        ; $4d34: $e1
    cp h                                          ; $4d35: $bc
    pop hl                                        ; $4d36: $e1
    dec sp                                        ; $4d37: $3b
    or $04                                        ; $4d38: $f6 $04
    add l                                         ; $4d3a: $85
    db $d3                                        ; $4d3b: $d3
    inc b                                         ; $4d3c: $04
    ld [c], a                                     ; $4d3d: $e2
    ld c, l                                       ; $4d3e: $4d
    add $e3                                       ; $4d3f: $c6 $e3
    cp [hl]                                       ; $4d41: $be
    ld [c], a                                     ; $4d42: $e2
    dec sp                                        ; $4d43: $3b
    or $85                                        ; $4d44: $f6 $85
    ret nc                                        ; $4d46: $d0

    ld b, h                                       ; $4d47: $44
    pop hl                                        ; $4d48: $e1
    ld a, [c]                                     ; $4d49: $f2
    ld bc, $0be3                                  ; $4d4a: $01 $e3 $0b

Jump_060_4d4d:
    rst $38                                       ; $4d4d: $ff
    pop hl                                        ; $4d4e: $e1
    rst $38                                       ; $4d4f: $ff
    ret nz                                        ; $4d50: $c0

    dec bc                                        ; $4d51: $0b
    dec c                                         ; $4d52: $0d
    dec bc                                        ; $4d53: $0b
    ld l, e                                       ; $4d54: $6b
    pop hl                                        ; $4d55: $e1
    dec bc                                        ; $4d56: $0b
    cp c                                          ; $4d57: $b9
    db $d3                                        ; $4d58: $d3
    nop                                           ; $4d59: $00
    pop de                                        ; $4d5a: $d1
    ld a, l                                       ; $4d5b: $7d
    db $e3                                        ; $4d5c: $e3
    add sp, -$60                                  ; $4d5d: $e8 $a0
    ld c, e                                       ; $4d5f: $4b
    ld c, e                                       ; $4d60: $4b
    dec c                                         ; $4d61: $0d
    ld c, a                                       ; $4d62: $4f
    ld c, e                                       ; $4d63: $4b
    dec hl                                        ; $4d64: $2b
    dec bc                                        ; $4d65: $0b
    dec bc                                        ; $4d66: $0b
    ld sp, hl                                     ; $4d67: $f9
    ldh [$ba], a                                  ; $4d68: $e0 $ba
    ldh [$0b], a                                  ; $4d6a: $e0 $0b
    nop                                           ; $4d6c: $00
    rst $38                                       ; $4d6d: $ff
    sbc h                                         ; $4d6e: $9c
    pop bc                                        ; $4d6f: $c1
    rst $20                                       ; $4d70: $e7
    ld [$4dc0], sp                                ; $4d71: $08 $c0 $4d
    ld l, l                                       ; $4d74: $6d
    ld c, e                                       ; $4d75: $4b
    ret nz                                        ; $4d76: $c0

    ldh [$c1], a                                  ; $4d77: $e0 $c1
    ldh [$2b], a                                  ; $4d79: $e0 $2b
    add a                                         ; $4d7b: $87
    ld a, [bc]                                    ; $4d7c: $0a
    dec bc                                        ; $4d7d: $0b
    ld c, e                                       ; $4d7e: $4b
    ld a, c                                       ; $4d7f: $79
    ret nz                                        ; $4d80: $c0

    ret nz                                        ; $4d81: $c0

    or $85                                        ; $4d82: $f6 $85
    call $c308                                    ; $4d84: $cd $08 $c3
    dec bc                                        ; $4d87: $0b
    dec b                                         ; $4d88: $05
    dec bc                                        ; $4d89: $0b
    add c                                         ; $4d8a: $81
    ldh [rWX], a                                  ; $4d8b: $e0 $4b
    add c                                         ; $4d8d: $81
    ld [c], a                                     ; $4d8e: $e2
    ret nz                                        ; $4d8f: $c0

    ldh [rPCM34], a                               ; $4d90: $e0 $77
    ret nz                                        ; $4d92: $c0

    nop                                           ; $4d93: $00
    rst $18                                       ; $4d94: $df
    add l                                         ; $4d95: $85
    and a                                         ; $4d96: $a7
    adc b                                         ; $4d97: $88
    pop bc                                        ; $4d98: $c1
    ldh [$0b], a                                  ; $4d99: $e0 $0b
    ldh [$c0], a                                  ; $4d9b: $e0 $c0
    db $e4                                        ; $4d9d: $e4
    ld a, [bc]                                    ; $4d9e: $0a
    ret nz                                        ; $4d9f: $c0

    ld [c], a                                     ; $4da0: $e2
    nop                                           ; $4da1: $00
    rst $18                                       ; $4da2: $df
    add l                                         ; $4da3: $85
    xor b                                         ; $4da4: $a8
    dec c                                         ; $4da5: $0d
    ld hl, sp-$32                                 ; $4da6: $f8 $ce
    ret nz                                        ; $4da8: $c0

    add hl, bc                                    ; $4da9: $09
    ldh [$80], a                                  ; $4daa: $e0 $80
    pop hl                                        ; $4dac: $e1
    ld c, e                                       ; $4dad: $4b
    ld l, e                                       ; $4dae: $6b
    ld a, [bc]                                    ; $4daf: $0a
    ld a, [hl+]                                   ; $4db0: $2a
    ld c, e                                       ; $4db1: $4b
    ld bc, $004b                                  ; $4db2: $01 $4b $00
    cp a                                          ; $4db5: $bf
    nop                                           ; $4db6: $00
    xor b                                         ; $4db7: $a8
    dec bc                                        ; $4db8: $0b
    and b                                         ; $4db9: $a0
    adc [hl]                                      ; $4dba: $8e
    ret nz                                        ; $4dbb: $c0

    ld [bc], a                                    ; $4dbc: $02
    pop hl                                        ; $4dbd: $e1
    ret nz                                        ; $4dbe: $c0

    pop hl                                        ; $4dbf: $e1
    cp b                                          ; $4dc0: $b8
    pop hl                                        ; $4dc1: $e1
    jr z, jr_060_4dc4                             ; $4dc2: $28 $00

jr_060_4dc4:
    cp a                                          ; $4dc4: $bf
    ld a, e                                       ; $4dc5: $7b
    adc c                                         ; $4dc6: $89
    res 0, b                                      ; $4dc7: $cb $80
    dec l                                         ; $4dc9: $2d
    add c                                         ; $4dca: $81
    ld [c], a                                     ; $4dcb: $e2
    dec c                                         ; $4dcc: $0d
    ret nz                                        ; $4dcd: $c0

    jp nz, $c079                                  ; $4dce: $c2 $79 $c0

    add h                                         ; $4dd1: $84
    nop                                           ; $4dd2: $00
    cp a                                          ; $4dd3: $bf
    ld a, e                                       ; $4dd4: $7b
    add a                                         ; $4dd5: $87
    ld c, l                                       ; $4dd6: $4d
    ld c, d                                       ; $4dd7: $4a
    add c                                         ; $4dd8: $81
    cp a                                          ; $4dd9: $bf
    ldh [$82], a                                  ; $4dda: $e0 $82
    pop hl                                        ; $4ddc: $e1
    add b                                         ; $4ddd: $80
    ret nz                                        ; $4dde: $c0

    ld a, [bc]                                    ; $4ddf: $0a
    ld hl, $396b                                  ; $4de0: $21 $6b $39
    ret nz                                        ; $4de3: $c0

    cp l                                          ; $4de4: $bd
    sub a                                         ; $4de5: $97
    add l                                         ; $4de6: $85
    sub b                                         ; $4de7: $90
    ld a, [bc]                                    ; $4de8: $0a
    add e                                         ; $4de9: $83
    dec l                                         ; $4dea: $2d
    add b                                         ; $4deb: $80
    pop bc                                        ; $4dec: $c1
    ld b, d                                       ; $4ded: $42
    pop bc                                        ; $4dee: $c1
    or b                                          ; $4def: $b0
    ld a, [hl-]                                   ; $4df0: $3a
    pop bc                                        ; $4df1: $c1
    jp Jump_000_00b4                              ; $4df2: $c3 $b4 $00


    sub [hl]                                      ; $4df5: $96
    call nz, Call_000_0d61                        ; $4df6: $c4 $61 $0d
    dec l                                         ; $4df9: $2d
    ret nz                                        ; $4dfa: $c0

    db $e3                                        ; $4dfb: $e3
    dec hl                                        ; $4dfc: $2b
    ld h, d                                       ; $4dfd: $62
    ld a, [hl-]                                   ; $4dfe: $3a
    ldh [$0b], a                                  ; $4dff: $e0 $0b
    ld a, [hl]                                    ; $4e01: $7e
    or $00                                        ; $4e02: $f6 $00
    cp b                                          ; $4e04: $b8
    ld [bc], a                                    ; $4e05: $02
    ld [c], a                                     ; $4e06: $e2
    ld a, [bc]                                    ; $4e07: $0a
    dec hl                                        ; $4e08: $2b
    ld hl, sp-$5f                                 ; $4e09: $f8 $a1
    add e                                         ; $4e0b: $83
    dec c                                         ; $4e0c: $0d
    ld l, e                                       ; $4e0d: $6b
    dec a                                         ; $4e0e: $3d
    push af                                       ; $4e0f: $f5
    nop                                           ; $4e10: $00
    or c                                          ; $4e11: $b1
    ld [$4780], sp                                ; $4e12: $08 $80 $47
    ld h, d                                       ; $4e15: $62
    cp $c2                                        ; $4e16: $fe $c2
    ld l, e                                       ; $4e18: $6b
    pop bc                                        ; $4e19: $c1
    ld a, [bc]                                    ; $4e1a: $0a
    or a                                          ; $4e1b: $b7
    and b                                         ; $4e1c: $a0
    ld [hl], $a1                                  ; $4e1d: $36 $a1
    nop                                           ; $4e1f: $00
    rst $38                                       ; $4e20: $ff
    nop                                           ; $4e21: $00
    xor h                                         ; $4e22: $ac
    ld [bc], a                                    ; $4e23: $02
    add c                                         ; $4e24: $81
    ld a, [bc]                                    ; $4e25: $0a
    dec c                                         ; $4e26: $0d
    and c                                         ; $4e27: $a1
    ld c, e                                       ; $4e28: $4b
    ld [hl], a                                    ; $4e29: $77
    and h                                         ; $4e2a: $a4
    ret nz                                        ; $4e2b: $c0

    or $00                                        ; $4e2c: $f6 $00
    or b                                          ; $4e2e: $b0
    cp a                                          ; $4e2f: $bf
    ld h, d                                       ; $4e30: $62
    ld l, l                                       ; $4e31: $6d
    jp Jump_060_6b80                              ; $4e32: $c3 $80 $6b


    inc b                                         ; $4e35: $04
    ld a, e                                       ; $4e36: $7b
    jp nz, $e03d                                  ; $4e37: $c2 $3d $e0

    dec c                                         ; $4e3a: $0d
    cp [hl]                                       ; $4e3b: $be
    or l                                          ; $4e3c: $b5
    add l                                         ; $4e3d: $85
    ld d, d                                       ; $4e3e: $52
    ld a, $a2                                     ; $4e3f: $3e $a2
    ld b, e                                       ; $4e41: $43
    ld [c], a                                     ; $4e42: $e2
    ld a, e                                       ; $4e43: $7b
    and h                                         ; $4e44: $a4
    ld d, b                                       ; $4e45: $50
    db $fd                                        ; $4e46: $fd
    or a                                          ; $4e47: $b7
    add l                                         ; $4e48: $85
    ld d, b                                       ; $4e49: $50
    cp [hl]                                       ; $4e4a: $be
    add d                                         ; $4e4b: $82
    inc bc                                        ; $4e4c: $03
    ld [c], a                                     ; $4e4d: $e2
    dec c                                         ; $4e4e: $0d
    ld b, e                                       ; $4e4f: $43
    pop bc                                        ; $4e50: $c1
    ld l, e                                       ; $4e51: $6b
    cp a                                          ; $4e52: $bf
    db $e3                                        ; $4e53: $e3
    call nz, $df00                                ; $4e54: $c4 $00 $df
    or $26                                        ; $4e57: $f6 $26
    ld c, l                                       ; $4e59: $4d
    cp [hl]                                       ; $4e5a: $be
    pop bc                                        ; $4e5b: $c1
    inc c                                         ; $4e5c: $0c
    ld [c], a                                     ; $4e5d: $e2
    inc bc                                        ; $4e5e: $03
    pop bc                                        ; $4e5f: $c1
    ld a, [bc]                                    ; $4e60: $0a
    ld l, d                                       ; $4e61: $6a
    ld [de], a                                    ; $4e62: $12
    cp [hl]                                       ; $4e63: $be
    and b                                         ; $4e64: $a0
    dec c                                         ; $4e65: $0d
    add b                                         ; $4e66: $80
    ret c                                         ; $4e67: $d8

    nop                                           ; $4e68: $00
    sub d                                         ; $4e69: $92
    ld c, l                                       ; $4e6a: $4d

jr_060_4e6b:
    ld [bc], a                                    ; $4e6b: $02
    ret nz                                        ; $4e6c: $c0

    nop                                           ; $4e6d: $00
    ldh [$83], a                                  ; $4e6e: $e0 $83
    ldh [$03], a                                  ; $4e70: $e0 $03
    ld a, [bc]                                    ; $4e72: $0a
    ld a, [hl+]                                   ; $4e73: $2a
    cp l                                          ; $4e74: $bd
    and b                                         ; $4e75: $a0
    inc sp                                        ; $4e76: $33
    add b                                         ; $4e77: $80
    cp h                                          ; $4e78: $bc
    ld d, e                                       ; $4e79: $53
    add l                                         ; $4e7a: $85
    dec [hl]                                      ; $4e7b: $35
    db $fd                                        ; $4e7c: $fd
    add b                                         ; $4e7d: $80
    ld bc, $02a1                                  ; $4e7e: $01 $a1 $02
    ld a, [hl]                                    ; $4e81: $7e
    ret nz                                        ; $4e82: $c0

    ld l, d                                       ; $4e83: $6a
    dec a                                         ; $4e84: $3d
    add c                                         ; $4e85: $81
    di                                            ; $4e86: $f3
    ld h, d                                       ; $4e87: $62
    rst $30                                       ; $4e88: $f7
    ld sp, $f100                                  ; $4e89: $31 $00 $f1
    ld a, a                                       ; $4e8c: $7f
    jp $e27e                                      ; $4e8d: $c3 $7e $e2


    inc bc                                        ; $4e90: $03
    dec hl                                        ; $4e91: $2b
    ld a, [bc]                                    ; $4e92: $0a
    add c                                         ; $4e93: $81
    ldh [$f9], a                                  ; $4e94: $e0 $f9
    ld b, d                                       ; $4e96: $42
    ld [hl], e                                    ; $4e97: $73
    add c                                         ; $4e98: $81
    nop                                           ; $4e99: $00
    rst $38                                       ; $4e9a: $ff
    ld a, l                                       ; $4e9b: $7d
    ld h, [hl]                                    ; $4e9c: $66
    add sp, $01                                   ; $4e9d: $e8 $01
    nop                                           ; $4e9f: $00
    pop bc                                        ; $4ea0: $c1
    db $e3                                        ; $4ea1: $e3
    cp e                                          ; $4ea2: $bb
    ld b, d                                       ; $4ea3: $42
    ld sp, hl                                     ; $4ea4: $f9
    add b                                         ; $4ea5: $80
    ret nz                                        ; $4ea6: $c0

    push af                                       ; $4ea7: $f5
    nop                                           ; $4ea8: $00
    sub c                                         ; $4ea9: $91
    ld a, $e4                                     ; $4eaa: $3e $e4
    add c                                         ; $4eac: $81
    pop hl                                        ; $4ead: $e1
    add d                                         ; $4eae: $82
    pop hl                                        ; $4eaf: $e1
    jr nc, jr_060_4e6b                            ; $4eb0: $30 $b9

    add h                                         ; $4eb2: $84
    ret nz                                        ; $4eb3: $c0

    db $f4                                        ; $4eb4: $f4
    nop                                           ; $4eb5: $00
    jr nc, @+$01                                  ; $4eb6: $30 $ff

    add [hl]                                      ; $4eb8: $86
    ld a, [hl+]                                   ; $4eb9: $2a
    ld a, [bc]                                    ; $4eba: $0a
    add e                                         ; $4ebb: $83
    ld [c], a                                     ; $4ebc: $e2
    cp e                                          ; $4ebd: $bb
    ld b, b                                       ; $4ebe: $40
    ret nc                                        ; $4ebf: $d0

    ld a, [$0074]                                 ; $4ec0: $fa $74 $00
    pop de                                        ; $4ec3: $d1
    cp e                                          ; $4ec4: $bb
    dec h                                         ; $4ec5: $25
    ld a, [hl]                                    ; $4ec6: $7e
    and b                                         ; $4ec7: $a0
    ld a, [hl+]                                   ; $4ec8: $2a
    ld [bc], a                                    ; $4ec9: $02
    pop hl                                        ; $4eca: $e1
    dec c                                         ; $4ecb: $0d
    ld l, e                                       ; $4ecc: $6b
    ld b, c                                       ; $4ecd: $41
    dec hl                                        ; $4ece: $2b
    ret nz                                        ; $4ecf: $c0

    pop hl                                        ; $4ed0: $e1
    nop                                           ; $4ed1: $00
    rst $18                                       ; $4ed2: $df
    or $c8                                        ; $4ed3: $f6 $c8
    db $fc                                        ; $4ed5: $fc
    and b                                         ; $4ed6: $a0
    ld a, [hl]                                    ; $4ed7: $7e
    and c                                         ; $4ed8: $a1
    ld l, e                                       ; $4ed9: $6b

jr_060_4eda:
    cp l                                          ; $4eda: $bd
    ld hl, $b800                                  ; $4edb: $21 $00 $b8
    jr nz, jr_060_4eda                            ; $4ede: $20 $fa

    ld h, b                                       ; $4ee0: $60
    nop                                           ; $4ee1: $00
    cp a                                          ; $4ee2: $bf
    nop                                           ; $4ee3: $00
    ld h, [hl]                                    ; $4ee4: $66
    inc bc                                        ; $4ee5: $03
    and c                                         ; $4ee6: $a1
    inc bc                                        ; $4ee7: $03
    ld b, c                                       ; $4ee8: $41
    ld [bc], a                                    ; $4ee9: $02
    ld b, c                                       ; $4eea: $41
    ld bc, $00e3                                  ; $4eeb: $01 $e3 $00
    db $fc                                        ; $4eee: $fc
    ld d, [hl]                                    ; $4eef: $56
    nop                                           ; $4ef0: $00
    rst $08                                       ; $4ef1: $cf
    ld b, c                                       ; $4ef2: $41
    ld b, d                                       ; $4ef3: $42
    call nz, Call_060_4042                        ; $4ef4: $c4 $42 $40
    and c                                         ; $4ef7: $a1
    ld a, d                                       ; $4ef8: $7a
    ld b, c                                       ; $4ef9: $41
    ld b, c                                       ; $4efa: $41
    ld hl, sp+$00                                 ; $4efb: $f8 $00
    ld d, b                                       ; $4efd: $50
    ldh a, [rDMA]                                 ; $4efe: $f0 $46
    jp nz, $a18f                                  ; $4f00: $c2 $8f $a1

    ld a, [$85e1]                                 ; $4f03: $fa $e1 $85
    jr nz, jr_060_4f12                            ; $4f06: $20 $0a

    ld c, e                                       ; $4f08: $4b
    dec hl                                        ; $4f09: $2b
    dec hl                                        ; $4f0a: $2b
    ret nz                                        ; $4f0b: $c0

    ld b, d                                       ; $4f0c: $42
    pop bc                                        ; $4f0d: $c1
    nop                                           ; $4f0e: $00
    ccf                                           ; $4f0f: $3f
    add l                                         ; $4f10: $85
    rlca                                          ; $4f11: $07

jr_060_4f12:
    ld b, l                                       ; $4f12: $45
    ld b, d                                       ; $4f13: $42
    cp d                                          ; $4f14: $ba
    pop hl                                        ; $4f15: $e1
    dec b                                         ; $4f16: $05
    jp nz, Jump_000_2b2b                          ; $4f17: $c2 $2b $2b

    nop                                           ; $4f1a: $00
    cp h                                          ; $4f1b: $bc
    add c                                         ; $4f1c: $81
    ret nz                                        ; $4f1d: $c0

    push de                                       ; $4f1e: $d5
    add l                                         ; $4f1f: $85
    xor h                                         ; $4f20: $ac
    inc bc                                        ; $4f21: $03
    and h                                         ; $4f22: $a4
    ld b, e                                       ; $4f23: $43
    ld [hl+], a                                   ; $4f24: $22
    ret nz                                        ; $4f25: $c0

    push hl                                       ; $4f26: $e5
    ld sp, hl                                     ; $4f27: $f9
    ld h, d                                       ; $4f28: $62
    nop                                           ; $4f29: $00
    rst $38                                       ; $4f2a: $ff
    nop                                           ; $4f2b: $00
    or $87                                        ; $4f2c: $f6 $87
    jp nz, $c381                                  ; $4f2e: $c2 $81 $c3

    ld bc, $6000                                  ; $4f31: $01 $00 $60
    add d                                         ; $4f34: $82
    nop                                           ; $4f35: $00
    ld a, $80                                     ; $4f36: $3e $80
    ret nz                                        ; $4f38: $c0

    ld a, d                                       ; $4f39: $7a
    nop                                           ; $4f3a: $00
    pop de                                        ; $4f3b: $d1
    nop                                           ; $4f3c: $00
    jp $4222                                      ; $4f3d: $c3 $22 $42


    pop bc                                        ; $4f40: $c1
    ld a, l                                       ; $4f41: $7d
    ld h, e                                       ; $4f42: $63
    ccf                                           ; $4f43: $3f
    ld [hl], $00                                  ; $4f44: $36 $00
    push de                                       ; $4f46: $d5
    ld b, e                                       ; $4f47: $43
    inc hl                                        ; $4f48: $23
    pop bc                                        ; $4f49: $c1
    ldh [$7b], a                                  ; $4f4a: $e0 $7b
    add b                                         ; $4f4c: $80
    nop                                           ; $4f4d: $00
    ld b, d                                       ; $4f4e: $42
    scf                                           ; $4f4f: $37
    nop                                           ; $4f50: $00
    sub [hl]                                      ; $4f51: $96
    ld b, h                                       ; $4f52: $44
    inc bc                                        ; $4f53: $03
    adc c                                         ; $4f54: $89
    and b                                         ; $4f55: $a0
    ld b, [hl]                                    ; $4f56: $46
    rst $30                                       ; $4f57: $f7
    nop                                           ; $4f58: $00
    or d                                          ; $4f59: $b2
    push bc                                       ; $4f5a: $c5
    ld h, d                                       ; $4f5b: $62
    ld [bc], a                                    ; $4f5c: $02
    add e                                         ; $4f5d: $83
    nop                                           ; $4f5e: $00
    add d                                         ; $4f5f: $82
    ld [hl+], a                                   ; $4f60: $22
    ld c, b                                       ; $4f61: $48
    add c                                         ; $4f62: $81
    ret nz                                        ; $4f63: $c0

    cp $85                                        ; $4f64: $fe $85
    db $ec                                        ; $4f66: $ec
    jp Jump_060_4126                              ; $4f67: $c3 $26 $41


    pop hl                                        ; $4f6a: $e1
    ret nz                                        ; $4f6b: $c0

    rst $38                                       ; $4f6c: $ff
    add l                                         ; $4f6d: $85
    ld l, e                                       ; $4f6e: $6b
    nop                                           ; $4f6f: $00
    ld b, h                                       ; $4f70: $44
    add h                                         ; $4f71: $84
    add e                                         ; $4f72: $83
    inc hl                                        ; $4f73: $23
    jp nz, Jump_060_43c1                          ; $4f74: $c2 $c1 $43

    add hl, de                                    ; $4f77: $19
    nop                                           ; $4f78: $00
    pop de                                        ; $4f79: $d1
    inc bc                                        ; $4f7a: $03
    add c                                         ; $4f7b: $81
    add h                                         ; $4f7c: $84
    add d                                         ; $4f7d: $82
    add c                                         ; $4f7e: $81

jr_060_4f7f:
    ld [c], a                                     ; $4f7f: $e2
    nop                                           ; $4f80: $00
    cp d                                          ; $4f81: $ba
    pop bc                                        ; $4f82: $c1
    add e                                         ; $4f83: $83
    rla                                           ; $4f84: $17
    nop                                           ; $4f85: $00
    ldh a, [rLCDC]                                ; $4f86: $f0 $40
    ld bc, $8082                                  ; $4f88: $01 $82 $80
    ld [bc], a                                    ; $4f8b: $02
    ld b, b                                       ; $4f8c: $40
    inc b                                         ; $4f8d: $04
    and e                                         ; $4f8e: $a3
    ld a, b                                       ; $4f8f: $78
    ld b, c                                       ; $4f90: $41
    jr jr_060_4f93                                ; $4f91: $18 $00

jr_060_4f93:
    rst $38                                       ; $4f93: $ff
    add l                                         ; $4f94: $85
    add hl, hl                                    ; $4f95: $29
    ld b, h                                       ; $4f96: $44
    ld b, b                                       ; $4f97: $40
    ld l, l                                       ; $4f98: $6d
    ld l, e                                       ; $4f99: $6b
    ld c, l                                       ; $4f9a: $4d
    ld b, b                                       ; $4f9b: $40
    dec bc                                        ; $4f9c: $0b
    and b                                         ; $4f9d: $a0
    jp $1022                                      ; $4f9e: $c3 $22 $10


    ld a, a                                       ; $4fa1: $7f
    db $db                                        ; $4fa2: $db
    nop                                           ; $4fa3: $00
    ld l, h                                       ; $4fa4: $6c
    ld b, $60                                     ; $4fa5: $06 $60
    ld b, e                                       ; $4fa7: $43
    add b                                         ; $4fa8: $80
    ld l, e                                       ; $4fa9: $6b
    rst $38                                       ; $4faa: $ff
    ldh [$84], a                                  ; $4fab: $e0 $84
    dec h                                         ; $4fad: $25
    add b                                         ; $4fae: $80

jr_060_4faf:
    rst $18                                       ; $4faf: $df
    nop                                           ; $4fb0: $00
    nop                                           ; $4fb1: $00
    db $ec                                        ; $4fb2: $ec
    add b                                         ; $4fb3: $80
    ldh [$c0], a                                  ; $4fb4: $e0 $c0
    pop hl                                        ; $4fb6: $e1
    adc c                                         ; $4fb7: $89
    jr nz, jr_060_4f7f                            ; $4fb8: $20 $c5

    ld h, c                                       ; $4fba: $61
    pop bc                                        ; $4fbb: $c1
    call c, Call_060_6b00                         ; $4fbc: $dc $00 $6b
    adc b                                         ; $4fbf: $88
    ld b, $50                                     ; $4fc0: $06 $50
    cp [hl]                                       ; $4fc2: $be
    pop hl                                        ; $4fc3: $e1
    add a                                         ; $4fc4: $87
    nop                                           ; $4fc5: $00
    ld b, e                                       ; $4fc6: $43
    db $fd                                        ; $4fc7: $fd
    nop                                           ; $4fc8: $00
    ld sp, $cc4d                                  ; $4fc9: $31 $4d $cc
    jr nz, jr_060_4ff9                            ; $4fcc: $20 $2b

    ld c, [hl]                                    ; $4fce: $4e
    ld h, b                                       ; $4fcf: $60
    nop                                           ; $4fd0: $00
    inc c                                         ; $4fd1: $0c
    ld b, d                                       ; $4fd2: $42
    jp nz, Jump_000_00fd                          ; $4fd3: $c2 $fd $00

    ld [hl], b                                    ; $4fd6: $70
    ld b, d                                       ; $4fd7: $42
    ldh [$cf], a                                  ; $4fd8: $e0 $cf
    inc hl                                        ; $4fda: $23
    ld c, c                                       ; $4fdb: $49
    ld b, c                                       ; $4fdc: $41
    pop bc                                        ; $4fdd: $c1

jr_060_4fde:
    cp $00                                        ; $4fde: $fe $00
    adc l                                         ; $4fe0: $8d
    inc h                                         ; $4fe1: $24
    ret nz                                        ; $4fe2: $c0

    rst $38                                       ; $4fe3: $ff

jr_060_4fe4:
    nop                                           ; $4fe4: $00
    cp a                                          ; $4fe5: $bf
    dec l                                         ; $4fe6: $2d
    ret z                                         ; $4fe7: $c8

    add b                                         ; $4fe8: $80
    adc l                                         ; $4fe9: $8d
    ld b, b                                       ; $4fea: $40
    dec l                                         ; $4feb: $2d
    ld c, c                                       ; $4fec: $49
    jr nz, jr_060_4faf                            ; $4fed: $20 $c0

    rst $38                                       ; $4fef: $ff
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    pop de                                        ; $4ff2: $d1
    rlca                                          ; $4ff3: $07
    and c                                         ; $4ff4: $a1
    ld c, d                                       ; $4ff5: $4a
    inc hl                                        ; $4ff6: $23
    ret nz                                        ; $4ff7: $c0

    rst $38                                       ; $4ff8: $ff

jr_060_4ff9:
    add l                                         ; $4ff9: $85
    dec c                                         ; $4ffa: $0d
    ldh a, [rSB]                                  ; $4ffb: $f0 $01
    ld b, b                                       ; $4ffd: $40
    rst $20                                       ; $4ffe: $e7
    ld b, l                                       ; $4fff: $45
    cp d                                          ; $5000: $ba
    ld [$7200], sp                                ; $5001: $08 $00 $72
    rst $38                                       ; $5004: $ff
    jp nz, Jump_000_20c9                          ; $5005: $c2 $c9 $20

    ld l, e                                       ; $5008: $6b
    db $fd                                        ; $5009: $fd
    pop hl                                        ; $500a: $e1
    ld b, d                                       ; $500b: $42
    sbc $00                                       ; $500c: $de $00
    sub c                                         ; $500e: $91
    pop bc                                        ; $500f: $c1
    and c                                         ; $5010: $a1
    nop                                           ; $5011: $00
    pop bc                                        ; $5012: $c1
    ld b, h                                       ; $5013: $44
    ld c, e                                       ; $5014: $4b
    ld b, c                                       ; $5015: $41
    ld a, [hl]                                    ; $5016: $7e
    db $fc                                        ; $5017: $fc
    add l                                         ; $5018: $85
    ld l, [hl]                                    ; $5019: $6e
    jp $0141                                      ; $501a: $c3 $41 $01


    and b                                         ; $501d: $a0
    ld c, [hl]                                    ; $501e: $4e
    ld b, d                                       ; $501f: $42
    ld a, [hl]                                    ; $5020: $7e
    jr nz, jr_060_4fe4                            ; $5021: $20 $c1

    dec l                                         ; $5023: $2d
    dec a                                         ; $5024: $3d
    db $fc                                        ; $5025: $fc
    nop                                           ; $5026: $00
    ld c, [hl]                                    ; $5027: $4e
    ld a, $c2                                     ; $5028: $3e $c2
    ccf                                           ; $502a: $3f
    and d                                         ; $502b: $a2
    ld [hl], l                                    ; $502c: $75
    and d                                         ; $502d: $a2
    ld c, l                                       ; $502e: $4d
    dec l                                         ; $502f: $2d
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    rst $38                                       ; $5032: $ff
    nop                                           ; $5033: $00
    ld c, d                                       ; $5034: $4a
    ld b, e                                       ; $5035: $43
    ld h, c                                       ; $5036: $61
    jr c, jr_060_4fde                             ; $5037: $38 $a5

    or b                                          ; $5039: $b0
    ld [hl+], a                                   ; $503a: $22
    ld b, b                                       ; $503b: $40
    rst $38                                       ; $503c: $ff
    nop                                           ; $503d: $00
    db $ed                                        ; $503e: $ed
    ld a, c                                       ; $503f: $79
    ld h, d                                       ; $5040: $62
    ld bc, $b44d                                  ; $5041: $01 $4d $b4
    and d                                         ; $5044: $a2
    inc sp                                        ; $5045: $33
    add b                                         ; $5046: $80
    ld a, h                                       ; $5047: $7c
    db $db                                        ; $5048: $db
    add l                                         ; $5049: $85
    ld c, $47                                     ; $504a: $0e $47
    nop                                           ; $504c: $00
    ld a, d                                       ; $504d: $7a
    add h                                         ; $504e: $84
    push af                                       ; $504f: $f5
    ld h, d                                       ; $5050: $62
    nop                                           ; $5051: $00
    ld [hl], h                                    ; $5052: $74
    jr nz, @-$7e                                  ; $5053: $20 $80

    ld a, d                                       ; $5055: $7a
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    rst $38                                       ; $5059: $ff
    call c, $a0dd                                 ; $505a: $dc $dd $a0
    sbc $df                                       ; $505d: $de $df
    ldh [$e1], a                                  ; $505f: $e0 $e1
    ld [c], a                                     ; $5061: $e2
    ei                                            ; $5062: $fb
    db $e3                                        ; $5063: $e3
    db $e4                                        ; $5064: $e4
    or $ec                                        ; $5065: $f6 $ec
    and b                                         ; $5067: $a0
    and b                                         ; $5068: $a0
    sub $d7                                       ; $5069: $d6 $d7
    and b                                         ; $506b: $a0
    rst $38                                       ; $506c: $ff
    jp c, $a0db                                   ; $506d: $da $db $a0

    and b                                         ; $5070: $a0
    sbc [hl]                                      ; $5071: $9e
    ld [$9798], sp                                ; $5072: $08 $98 $97
    rst $28                                       ; $5075: $ef
    sub a                                         ; $5076: $97
    sub [hl]                                      ; $5077: $96
    sub [hl]                                      ; $5078: $96
    sub l                                         ; $5079: $95
    rst $38                                       ; $507a: $ff
    di                                            ; $507b: $f3
    push hl                                       ; $507c: $e5
    and $e7                                       ; $507d: $e6 $e7
    ld a, a                                       ; $507f: $7f
    and b                                         ; $5080: $a0
    add sp, -$17                                  ; $5081: $e8 $e9
    ld [$eceb], a                                 ; $5083: $ea $eb $ec
    and b                                         ; $5086: $a0
    or $eb                                        ; $5087: $f6 $eb
    cp $c3                                        ; $5089: $fe $c3
    ldh [$d8], a                                  ; $508b: $e0 $d8
    reti                                          ; $508d: $d9


    and b                                         ; $508e: $a0
    and b                                         ; $508f: $a0
    and b                                         ; $5090: $a0
    sbc a                                         ; $5091: $9f
    sbc l                                         ; $5092: $9d
    rlca                                          ; $5093: $07
    sbc h                                         ; $5094: $9c
    ld [$bf98], sp                                ; $5095: $08 $98 $bf
    ld [c], a                                     ; $5098: $e2
    cp l                                          ; $5099: $bd
    di                                            ; $509a: $f3
    add l                                         ; $509b: $85
    pop af                                        ; $509c: $f1
    ld [hl], c                                    ; $509d: $71
    ldh [$c3], a                                  ; $509e: $e0 $c3
    pop hl                                        ; $50a0: $e1
    ld a, [hl]                                    ; $50a1: $7e
    add e                                         ; $50a2: $83
    pop hl                                        ; $50a3: $e1
    sbc a                                         ; $50a4: $9f
    sbc h                                         ; $50a5: $9c
    ld b, [hl]                                    ; $50a6: $46
    xor [hl]                                      ; $50a7: $ae
    ld [bc], a                                    ; $50a8: $02
    rrca                                          ; $50a9: $0f
    cp a                                          ; $50aa: $bf
    pop hl                                        ; $50ab: $e1
    ldh a, [$7c]                                  ; $50ac: $f0 $7c
    db $f4                                        ; $50ae: $f4
    add l                                         ; $50af: $85
    ldh a, [$71]                                  ; $50b0: $f0 $71
    ld [c], a                                     ; $50b2: $e2
    ld b, [hl]                                    ; $50b3: $46
    pop hl                                        ; $50b4: $e1
    and b                                         ; $50b5: $a0
    sbc a                                         ; $50b6: $9f
    and d                                         ; $50b7: $a2
    sbc h                                         ; $50b8: $9c
    rrca                                          ; $50b9: $0f
    ld b, [hl]                                    ; $50ba: $46
    ld b, [hl]                                    ; $50bb: $46
    xor a                                         ; $50bc: $af
    ld b, [hl]                                    ; $50bd: $46
    cp a                                          ; $50be: $bf
    pop hl                                        ; $50bf: $e1
    ld a, h                                       ; $50c0: $7c
    db $e3                                        ; $50c1: $e3
    dec sp                                        ; $50c2: $3b
    rst $28                                       ; $50c3: $ef
    nop                                           ; $50c4: $00
    db $f4                                        ; $50c5: $f4
    ld l, a                                       ; $50c6: $6f
    and b                                         ; $50c7: $a0
    and b                                         ; $50c8: $a0
    push af                                       ; $50c9: $f5
    or $83                                        ; $50ca: $f6 $83
    ldh [$ae], a                                  ; $50cc: $e0 $ae
    ld b, [hl]                                    ; $50ce: $46
    rst $38                                       ; $50cf: $ff
    ld [c], a                                     ; $50d0: $e2
    rst $00                                       ; $50d1: $c7
    ld [bc], a                                    ; $50d2: $02
    rlca                                          ; $50d3: $07
    rlca                                          ; $50d4: $07
    ld a, h                                       ; $50d5: $7c
    ld [c], a                                     ; $50d6: $e2
    ld a, [$00d0]                                 ; $50d7: $fa $d0 $00
    db $f4                                        ; $50da: $f4
    ret nc                                        ; $50db: $d0

    pop de                                        ; $50dc: $d1
    ld c, $44                                     ; $50dd: $0e $44
    ld [c], a                                     ; $50df: $e2
    xor a                                         ; $50e0: $af
    ld b, [hl]                                    ; $50e1: $46
    ld b, [hl]                                    ; $50e2: $46
    cp l                                          ; $50e3: $bd
    db $e3                                        ; $50e4: $e3
    dec sp                                        ; $50e5: $3b
    db $e4                                        ; $50e6: $e4
    cp d                                          ; $50e7: $ba
    rst $08                                       ; $50e8: $cf
    add l                                         ; $50e9: $85
    db $d3                                        ; $50ea: $d3
    daa                                           ; $50eb: $27
    and b                                         ; $50ec: $a0
    jp nc, $87d3                                  ; $50ed: $d2 $d3 $87

    ret nz                                        ; $50f0: $c0

    add e                                         ; $50f1: $83
    ld [c], a                                     ; $50f2: $e2
    xor a                                         ; $50f3: $af
    cp [hl]                                       ; $50f4: $be
    ld [c], a                                     ; $50f5: $e2
    dec sp                                        ; $50f6: $3b
    db $e3                                        ; $50f7: $e3
    db $fc                                        ; $50f8: $fc
    ret nz                                        ; $50f9: $c0

    ldh a, [$85]                                  ; $50fa: $f0 $85
    ret nc                                        ; $50fc: $d0

    and b                                         ; $50fd: $a0
    and b                                         ; $50fe: $a0
    db $ed                                        ; $50ff: $ed
    xor $d4                                       ; $5100: $ee $d4
    push de                                       ; $5102: $d5
    rlca                                          ; $5103: $07
    rst $28                                       ; $5104: $ef
    and b                                         ; $5105: $a0
    sbc [hl]                                      ; $5106: $9e
    ld b, d                                       ; $5107: $42
    db $e4                                        ; $5108: $e4
    ld a, e                                       ; $5109: $7b
    db $e4                                        ; $510a: $e4
    cp c                                          ; $510b: $b9
    ret nz                                        ; $510c: $c0

    add b                                         ; $510d: $80
    ldh a, [rP1]                                  ; $510e: $f0 $00
    pop de                                        ; $5110: $d1
    rst $38                                       ; $5111: $ff
    and b                                         ; $5112: $a0
    ldh a, [$f1]                                  ; $5113: $f0 $f1
    ld a, [c]                                     ; $5115: $f2
    di                                            ; $5116: $f3
    db $f4                                        ; $5117: $f4
    and b                                         ; $5118: $a0
    and c                                         ; $5119: $a1
    ld c, $42                                     ; $511a: $0e $42
    ld [c], a                                     ; $511c: $e2
    ld b, l                                       ; $511d: $45
    ld b, c                                       ; $511e: $41
    ld b, l                                       ; $511f: $45
    cp l                                          ; $5120: $bd
    db $e4                                        ; $5121: $e4
    ld hl, sp-$60                                 ; $5122: $f8 $a0
    nop                                           ; $5124: $00
    rst $38                                       ; $5125: $ff
    or $a1                                        ; $5126: $f6 $a1
    db $f4                                        ; $5128: $f4
    push bc                                       ; $5129: $c5
    ret nz                                        ; $512a: $c0

    ld [$9dc0], sp                                ; $512b: $08 $c0 $9d
    add h                                         ; $512e: $84
    ret nz                                        ; $512f: $c0

    ld b, [hl]                                    ; $5130: $46
    xor a                                         ; $5131: $af
    ld b, l                                       ; $5132: $45
    ld a, [hl+]                                   ; $5133: $2a
    rlca                                          ; $5134: $07
    ld h, $2a                                     ; $5135: $26 $2a
    ld d, b                                       ; $5137: $50
    cp [hl]                                       ; $5138: $be
    ldh [$79], a                                  ; $5139: $e0 $79
    ret nz                                        ; $513b: $c0

    ret nz                                        ; $513c: $c0

    ld a, [c]                                     ; $513d: $f2
    add l                                         ; $513e: $85
    ret nc                                        ; $513f: $d0

    adc b                                         ; $5140: $88
    and b                                         ; $5141: $a0
    db $fc                                        ; $5142: $fc
    ld [$c6c1], sp                                ; $5143: $08 $c1 $c6
    jp $2042                                      ; $5146: $c3 $42 $20


    jr nz, @+$30                                  ; $5149: $20 $2e

    ld e, a                                       ; $514b: $5f
    ld b, h                                       ; $514c: $44
    add b                                         ; $514d: $80
    cp d                                          ; $514e: $ba
    pop bc                                        ; $514f: $c1
    ld b, b                                       ; $5150: $40
    di                                            ; $5151: $f3
    add l                                         ; $5152: $85
    or b                                          ; $5153: $b0
    adc b                                         ; $5154: $88
    and b                                         ; $5155: $a0
    pop bc                                        ; $5156: $c1
    pop hl                                        ; $5157: $e1
    add e                                         ; $5158: $83
    pop bc                                        ; $5159: $c1
    ret nz                                        ; $515a: $c0

    ldh [$27], a                                  ; $515b: $e0 $27
    adc a                                         ; $515d: $8f
    jr nz, jr_060_51ab                            ; $515e: $20 $4b

    ld h, b                                       ; $5160: $60
    ld b, h                                       ; $5161: $44
    ret nz                                        ; $5162: $c0

    rst $10                                       ; $5163: $d7
    add l                                         ; $5164: $85
    or b                                          ; $5165: $b0
    dec bc                                        ; $5166: $0b
    and b                                         ; $5167: $a0
    and c                                         ; $5168: $a1
    ld a, h                                       ; $5169: $7c
    ld c, c                                       ; $516a: $49
    call nz, $e080                                ; $516b: $c4 $80 $e0
    ld [hl+], a                                   ; $516e: $22
    ld [hl+], a                                   ; $516f: $22
    ld d, d                                       ; $5170: $52
    ld d, d                                       ; $5171: $52
    ld b, l                                       ; $5172: $45
    cp $a0                                        ; $5173: $fe $a0
    ldh [rLCDC], a                                ; $5175: $e0 $40
    call nc, $b100                                ; $5177: $d4 $00 $b1
    ld b, l                                       ; $517a: $45
    pop bc                                        ; $517b: $c1
    add e                                         ; $517c: $83
    ld [c], a                                     ; $517d: $e2
    pop bc                                        ; $517e: $c1
    and b                                         ; $517f: $a0
    ld b, h                                       ; $5180: $44
    inc a                                         ; $5181: $3c
    dec [hl]                                      ; $5182: $35
    ld bc, $c140                                  ; $5183: $01 $40 $c1
    ldh [$7e], a                                  ; $5186: $e0 $7e
    and c                                         ; $5188: $a1
    cp d                                          ; $5189: $ba
    sub d                                         ; $518a: $92
    add l                                         ; $518b: $85
    adc a                                         ; $518c: $8f
    jp nz, $c4c2                                  ; $518d: $c2 $c2 $c4

    pop bc                                        ; $5190: $c1
    inc b                                         ; $5191: $04
    jp nz, Jump_000_3907                          ; $5192: $c2 $07 $39

    dec [hl]                                      ; $5195: $35
    dec [hl]                                      ; $5196: $35
    ld a, e                                       ; $5197: $7b
    and b                                         ; $5198: $a0
    cp l                                          ; $5199: $bd
    add d                                         ; $519a: $82
    ld a, e                                       ; $519b: $7b
    sub d                                         ; $519c: $92
    nop                                           ; $519d: $00
    pop de                                        ; $519e: $d1
    ld b, a                                       ; $519f: $47
    add b                                         ; $51a0: $80
    ld e, $c0                                     ; $51a1: $1e $c0
    push bc                                       ; $51a3: $c5
    xor a                                         ; $51a4: $af
    ld a, [hl-]                                   ; $51a5: $3a
    srl h                                         ; $51a6: $cb $3c
    ld a, e                                       ; $51a8: $7b
    and b                                         ; $51a9: $a0
    add d                                         ; $51aa: $82

jr_060_51ab:
    and h                                         ; $51ab: $a4
    nop                                           ; $51ac: $00
    cp a                                          ; $51ad: $bf
    ld hl, sp-$7b                                 ; $51ae: $f8 $85
    add c                                         ; $51b0: $81
    ld b, a                                       ; $51b1: $47
    add d                                         ; $51b2: $82
    ld b, e                                       ; $51b3: $43
    and e                                         ; $51b4: $a3
    ld b, l                                       ; $51b5: $45
    ld [hl], $cf                                  ; $51b6: $36 $cf
    rst $08                                       ; $51b8: $cf
    ld a, [hl-]                                   ; $51b9: $3a
    ld h, c                                       ; $51ba: $61
    ld b, l                                       ; $51bb: $45
    inc a                                         ; $51bc: $3c
    and b                                         ; $51bd: $a0
    ld b, c                                       ; $51be: $41
    or l                                          ; $51bf: $b5
    nop                                           ; $51c0: $00
    sub d                                         ; $51c1: $92
    jp z, $d060                                   ; $51c2: $ca $60 $d0

    pop de                                        ; $51c5: $d1
    rlca                                          ; $51c6: $07
    add b                                         ; $51c7: $80
    rst $38                                       ; $51c8: $ff
    ld b, [hl]                                    ; $51c9: $46
    ld b, [hl]                                    ; $51ca: $46
    add hl, sp                                    ; $51cb: $39
    rst $08                                       ; $51cc: $cf
    call z, Call_000_3ece                         ; $51cd: $cc $ce $3e
    xor [hl]                                      ; $51d0: $ae
    ldh a, [$f9]                                  ; $51d1: $f0 $f9
    add c                                         ; $51d3: $81
    ld b, c                                       ; $51d4: $41
    or h                                          ; $51d5: $b4
    nop                                           ; $51d6: $00
    cp c                                          ; $51d7: $b9
    ld a, e                                       ; $51d8: $7b
    ret nz                                        ; $51d9: $c0

    ld a, [hl-]                                   ; $51da: $3a
    adc $cb                                       ; $51db: $ce $cb
    adc $f1                                       ; $51dd: $ce $f1
    ld a, [hl-]                                   ; $51df: $3a
    cp e                                          ; $51e0: $bb
    add e                                         ; $51e1: $83
    ld b, c                                       ; $51e2: $41
    or e                                          ; $51e3: $b3
    nop                                           ; $51e4: $00
    cp d                                          ; $51e5: $ba
    ld b, [hl]                                    ; $51e6: $46
    xor a                                         ; $51e7: $af
    inc a                                         ; $51e8: $3c
    rst $08                                       ; $51e9: $cf
    cpl                                           ; $51ea: $2f
    call $cbcf                                    ; $51eb: $cd $cf $cb
    add hl, sp                                    ; $51ee: $39
    ld a, a                                       ; $51ef: $7f
    ld [c], a                                     ; $51f0: $e2
    xor [hl]                                      ; $51f1: $ae
    ld b, c                                       ; $51f2: $41
    or d                                          ; $51f3: $b2
    nop                                           ; $51f4: $00
    cp b                                          ; $51f5: $b8
    ld a, [hl]                                    ; $51f6: $7e
    ld [bc], a                                    ; $51f7: $02
    add b                                         ; $51f8: $80
    ld b, l                                       ; $51f9: $45
    ld a, [hl-]                                   ; $51fa: $3a
    res 5, h                                      ; $51fb: $cb $ac
    dec [hl]                                      ; $51fd: $35
    dec [hl]                                      ; $51fe: $35
    ld a, a                                       ; $51ff: $7f
    pop hl                                        ; $5200: $e1
    ldh a, [$b9]                                  ; $5201: $f0 $b9
    ld h, b                                       ; $5203: $60
    ret nz                                        ; $5204: $c0

    di                                            ; $5205: $f3
    nop                                           ; $5206: $00
    jp nc, $a43e                                  ; $5207: $d2 $3e $a4

    xor a                                         ; $520a: $af
    ld b, [hl]                                    ; $520b: $46
    add hl, sp                                    ; $520c: $39
    dec [hl]                                      ; $520d: $35
    rst $38                                       ; $520e: $ff
    xor l                                         ; $520f: $ad
    dec [hl]                                      ; $5210: $35
    dec [hl]                                      ; $5211: $35
    dec [hl]                                      ; $5212: $35
    ld [hl], $45                                  ; $5213: $36 $45
    xor [hl]                                      ; $5215: $ae
    or d                                          ; $5216: $b2
    db $10                                        ; $5217: $10
    ld b, b                                       ; $5218: $40
    push af                                       ; $5219: $f5
    add l                                         ; $521a: $85
    ld d, d                                       ; $521b: $52
    ld a, $a2                                     ; $521c: $3e $a2
    add h                                         ; $521e: $84
    ld h, c                                       ; $521f: $61
    ld b, b                                       ; $5220: $40
    jp nz, $bfe0                                  ; $5221: $c2 $e0 $bf

    pop hl                                        ; $5224: $e1
    cp b                                          ; $5225: $b8
    ld h, b                                       ; $5226: $60
    ld h, b                                       ; $5227: $60
    cp d                                          ; $5228: $ba
    ld b, c                                       ; $5229: $41
    cp h                                          ; $522a: $bc
    ld d, b                                       ; $522b: $50
    nop                                           ; $522c: $00
    sub d                                         ; $522d: $92
    ld c, c                                       ; $522e: $49
    ld b, b                                       ; $522f: $40
    ld a, [hl]                                    ; $5230: $7e
    and d                                         ; $5231: $a2
    xor [hl]                                      ; $5232: $ae
    ld b, d                                       ; $5233: $42
    add d                                         ; $5234: $82
    ldh [$83], a                                  ; $5235: $e0 $83
    jr c, jr_060_5271                             ; $5237: $38 $38

    ld a, [hl]                                    ; $5239: $7e
    ldh [rSCY], a                                 ; $523a: $e0 $42
    add c                                         ; $523c: $81
    cp l                                          ; $523d: $bd
    or d                                          ; $523e: $b2
    nop                                           ; $523f: $00
    sub d                                         ; $5240: $92
    ld c, b                                       ; $5241: $48
    ld b, b                                       ; $5242: $40
    and c                                         ; $5243: $a1
    db $fc                                        ; $5244: $fc
    add h                                         ; $5245: $84
    ld h, d                                       ; $5246: $62
    ld b, d                                       ; $5247: $42
    and b                                         ; $5248: $a0
    ld a, [hl-]                                   ; $5249: $3a
    ld b, a                                       ; $524a: $47
    ld d, d                                       ; $524b: $52
    ld a, [hl-]                                   ; $524c: $3a
    cp e                                          ; $524d: $bb
    dec [hl]                                      ; $524e: $35
    ldh a, [$bb]                                  ; $524f: $f0 $bb
    ld b, h                                       ; $5251: $44
    ld a, $6f                                     ; $5252: $3e $6f
    nop                                           ; $5254: $00
    sub [hl]                                      ; $5255: $96
    ccf                                           ; $5256: $3f
    add d                                         ; $5257: $82
    ld b, l                                       ; $5258: $45
    ld a, [hl-]                                   ; $5259: $3a
    dec [hl]                                      ; $525a: $35
    add hl, sp                                    ; $525b: $39
    rra                                           ; $525c: $1f
    ld d, d                                       ; $525d: $52
    ld d, d                                       ; $525e: $52
    ld a, [hl-]                                   ; $525f: $3a
    dec [hl]                                      ; $5260: $35
    dec [hl]                                      ; $5261: $35
    ld a, h                                       ; $5262: $7c
    ret nz                                        ; $5263: $c0

    cp l                                          ; $5264: $bd
    add e                                         ; $5265: $83
    cp b                                          ; $5266: $b8
    dec l                                         ; $5267: $2d
    ld a, h                                       ; $5268: $7c
    add l                                         ; $5269: $85
    ld [hl], $c2                                  ; $526a: $36 $c2
    ld b, d                                       ; $526c: $42
    xor [hl]                                      ; $526d: $ae
    add hl, sp                                    ; $526e: $39
    ld [hl], $47                                  ; $526f: $36 $47

jr_060_5271:
    ld d, d                                       ; $5271: $52
    db $fd                                        ; $5272: $fd
    add b                                         ; $5273: $80
    pop bc                                        ; $5274: $c1
    bit 7, h                                      ; $5275: $cb $7c
    jp nz, Jump_060_713e                          ; $5277: $c2 $3e $71

    nop                                           ; $527a: $00
    ld [hl], d                                    ; $527b: $72
    ld a, $a5                                     ; $527c: $3e $a5
    add c                                         ; $527e: $81
    ld h, b                                       ; $527f: $60
    ld b, a                                       ; $5280: $47
    ld h, b                                       ; $5281: $60
    ld a, a                                       ; $5282: $7f
    ld d, d                                       ; $5283: $52
    ld a, [hl-]                                   ; $5284: $3a
    ld h, d                                       ; $5285: $62
    ld h, e                                       ; $5286: $63
    ld h, [hl]                                    ; $5287: $66
    dec [hl]                                      ; $5288: $35
    add hl, sp                                    ; $5289: $39
    ld [hl], a                                    ; $528a: $77
    ld b, c                                       ; $528b: $41
    db $ec                                        ; $528c: $ec
    ld a, $70                                     ; $528d: $3e $70
    nop                                           ; $528f: $00
    di                                            ; $5290: $f3
    jp c, Jump_000_3fdb                           ; $5291: $da $db $3f

    ld b, b                                       ; $5294: $40
    sbc [hl]                                      ; $5295: $9e
    ld b, [hl]                                    ; $5296: $46
    xor [hl]                                      ; $5297: $ae
    cp $c1                                        ; $5298: $fe $c1
    pop hl                                        ; $529a: $e1
    ld [hl], $62                                  ; $529b: $36 $62
    ld h, a                                       ; $529d: $67
    dec [hl]                                      ; $529e: $35
    ld l, b                                       ; $529f: $68
    ld h, [hl]                                    ; $52a0: $66
    ld a, $e0                                     ; $52a1: $3e $e0
    inc [hl]                                      ; $52a3: $34
    ld b, c                                       ; $52a4: $41
    cp $50                                        ; $52a5: $fe $50
    nop                                           ; $52a7: $00
    sub d                                         ; $52a8: $92
    call nz, Call_000_3f20                        ; $52a9: $c4 $20 $3f
    ld b, b                                       ; $52ac: $40
    sbc a                                         ; $52ad: $9f
    sbc h                                         ; $52ae: $9c
    xor a                                         ; $52af: $af
    rst $38                                       ; $52b0: $ff
    ld b, h                                       ; $52b1: $44
    ld c, l                                       ; $52b2: $4d
    ld h, c                                       ; $52b3: $61
    add hl, sp                                    ; $52b4: $39
    ld h, d                                       ; $52b5: $62
    ld h, a                                       ; $52b6: $67
    rst $08                                       ; $52b7: $cf
    rst $08                                       ; $52b8: $cf
    rst $00                                       ; $52b9: $c7
    dec [hl]                                      ; $52ba: $35
    ld l, d                                       ; $52bb: $6a
    ld a, $b6                                     ; $52bc: $3e $b6
    ld hl, $50be                                  ; $52be: $21 $be $50
    add l                                         ; $52c1: $85
    ld de, $d7d6                                  ; $52c2: $11 $d6 $d7
    inc a                                         ; $52c5: $3c
    ccf                                           ; $52c6: $3f
    ld b, e                                       ; $52c7: $43
    ld a, d                                       ; $52c8: $7a
    ld h, b                                       ; $52c9: $60
    ld d, [hl]                                    ; $52ca: $56
    ld h, c                                       ; $52cb: $61
    ld a, $69                                     ; $52cc: $3e $69
    cp h                                          ; $52ce: $bc
    add b                                         ; $52cf: $80
    ret nz                                        ; $52d0: $c0

    ldh [$ec], a                                  ; $52d1: $e0 $ec
    cp $54                                        ; $52d3: $fe $54
    nop                                           ; $52d5: $00
    ld d, c                                       ; $52d6: $51
    ret c                                         ; $52d7: $d8

    reti                                          ; $52d8: $d9


    ccf                                           ; $52d9: $3f
    and h                                         ; $52da: $a4
    ld b, [hl]                                    ; $52db: $46
    xor a                                         ; $52dc: $af
    ld d, l                                       ; $52dd: $55
    rst $38                                       ; $52de: $ff
    ld d, d                                       ; $52df: $52

Jump_060_52e0:
    ld a, [hl-]                                   ; $52e0: $3a
    ld l, c                                       ; $52e1: $69
    adc $bb                                       ; $52e2: $ce $bb
    rst $08                                       ; $52e4: $cf
    ld l, h                                       ; $52e5: $6c
    ld l, l                                       ; $52e6: $6d
    and c                                         ; $52e7: $a1
    ld a, $be                                     ; $52e8: $3e $be
    inc [hl]                                      ; $52ea: $34
    nop                                           ; $52eb: $00
    ld sp, $a0c1                                  ; $52ec: $31 $c1 $a0
    ld b, c                                       ; $52ef: $41
    ld b, b                                       ; $52f0: $40
    sbc l                                         ; $52f1: $9d
    ld [bc], a                                    ; $52f2: $02
    ld hl, $ff45                                  ; $52f3: $21 $45 $ff
    ld [hl], $62                                  ; $52f6: $36 $62
    halt                                          ; $52f8: $76
    adc $bb                                       ; $52f9: $ce $bb
    dec [hl]                                      ; $52fb: $35
    ld [hl], e                                    ; $52fc: $73
    ld l, [hl]                                    ; $52fd: $6e
    or c                                          ; $52fe: $b1
    add hl, sp                                    ; $52ff: $39
    db $fd                                        ; $5300: $fd
    ld [hl], h                                    ; $5301: $74
    nop                                           ; $5302: $00
    ld [hl], e                                    ; $5303: $73
    ld b, b                                       ; $5304: $40
    ld h, e                                       ; $5305: $63

Jump_060_5306:
    xor a                                         ; $5306: $af
    xor [hl]                                      ; $5307: $ae
    pop bc                                        ; $5308: $c1
    ldh [$67], a                                  ; $5309: $e0 $67
    ret nz                                        ; $530b: $c0

    ld b, c                                       ; $530c: $41
    ld [c], a                                     ; $530d: $e2
    cp e                                          ; $530e: $bb
    ld h, b                                       ; $530f: $60
    inc a                                         ; $5310: $3c
    ld h, d                                       ; $5311: $62
    add b                                         ; $5312: $80
    xor [hl]                                      ; $5313: $ae
    nop                                           ; $5314: $00
    rst $08                                       ; $5315: $cf
    ld b, d                                       ; $5316: $42
    ld l, c                                       ; $5317: $69
    add hl, sp                                    ; $5318: $39
    dec [hl]                                      ; $5319: $35
    jp Jump_000_3569                              ; $531a: $c3 $69 $35


    dec a                                         ; $531d: $3d
    add b                                         ; $531e: $80
    ld b, c                                       ; $531f: $41
    ldh [$3f], a                                  ; $5320: $e0 $3f
    and e                                         ; $5322: $a3
    nop                                           ; $5323: $00
    cp a                                          ; $5324: $bf
    and $e7                                       ; $5325: $e6 $e7
    ld hl, sp+$42                                 ; $5327: $f8 $42
    ld h, b                                       ; $5329: $60
    ld b, e                                       ; $532a: $43
    and c                                         ; $532b: $a1
    ret z                                         ; $532c: $c8

    ld [bc], a                                    ; $532d: $02
    ld a, $cb                                     ; $532e: $3e $cb
    ld l, c                                       ; $5330: $69
    dec [hl]                                      ; $5331: $35
    rr a                                          ; $5332: $cb $1f
    dec [hl]                                      ; $5334: $35
    ld l, h                                       ; $5335: $6c
    ld l, a                                       ; $5336: $6f
    ld l, [hl]                                    ; $5337: $6e
    add hl, sp                                    ; $5338: $39
    ccf                                           ; $5339: $3f
    and d                                         ; $533a: $a2
    nop                                           ; $533b: $00
    ld e, a                                       ; $533c: $5f
    jp $bc85                                      ; $533d: $c3 $85 $bc


    ld c, c                                       ; $5340: $49
    ld bc, $0043                                  ; $5341: $01 $43 $00
    ld a, $35                                     ; $5344: $3e $35
    ld l, e                                       ; $5346: $6b
    ld l, h                                       ; $5347: $6c
    pop bc                                        ; $5348: $c1
    pop hl                                        ; $5349: $e1
    ld [hl], $c0                                  ; $534a: $36 $c0
    ld a, $21                                     ; $534c: $3e $21
    nop                                           ; $534e: $00
    ccf                                           ; $534f: $3f
    ld b, $40                                     ; $5350: $06 $40
    inc b                                         ; $5352: $04
    ld hl, $44c3                                  ; $5353: $21 $c3 $44
    ret nz                                        ; $5356: $c0

    jr nz, jr_060_5397                            ; $5357: $20 $3e

    dec [hl]                                      ; $5359: $35
    rrca                                          ; $535a: $0f
    ld l, [hl]                                    ; $535b: $6e
    ld [hl], b                                    ; $535c: $70
    ld [hl], c                                    ; $535d: $71
    ld [hl], b                                    ; $535e: $70
    pop bc                                        ; $535f: $c1
    ldh [rLCDC], a                                ; $5360: $e0 $40
    ld [hl], $00                                  ; $5362: $36 $00
    db $d3                                        ; $5364: $d3
    nop                                           ; $5365: $00
    ld b, e                                       ; $5366: $43
    inc c                                         ; $5367: $0c
    add b                                         ; $5368: $80
    ld h, b                                       ; $5369: $60
    ld b, d                                       ; $536a: $42
    ldh [$3b], a                                  ; $536b: $e0 $3b
    dec sp                                        ; $536d: $3b
    add d                                         ; $536e: $82
    ldh [rLCDC], a                                ; $536f: $e0 $40
    ld [hl], $00                                  ; $5371: $36 $00
    db $d3                                        ; $5373: $d3
    ld a, $e3                                     ; $5374: $3e $e3
    dec e                                         ; $5376: $1d
    xor a                                         ; $5377: $af
    pop bc                                        ; $5378: $c1
    ld h, c                                       ; $5379: $61
    ld [hl], $43                                  ; $537a: $36 $43
    xor [hl]                                      ; $537c: $ae
    add c                                         ; $537d: $81
    ld bc, $553f                                  ; $537e: $01 $3f $55
    nop                                           ; $5381: $00
    call nc, $fef0                                ; $5382: $d4 $f0 $fe
    ret nz                                        ; $5385: $c0

    adc c                                         ; $5386: $89
    ld b, b                                       ; $5387: $40
    add e                                         ; $5388: $83
    jr nz, @-$38                                  ; $5389: $20 $c6

    ld h, b                                       ; $538b: $60
    xor a                                         ; $538c: $af
    ld [bc], a                                    ; $538d: $02
    rlca                                          ; $538e: $07
    rlca                                          ; $538f: $07
    ld b, b                                       ; $5390: $40
    ld bc, $0024                                  ; $5391: $01 $24 $00
    ccf                                           ; $5394: $3f
    nop                                           ; $5395: $00
    inc hl                                        ; $5396: $23

jr_060_5397:
    cp [hl]                                       ; $5397: $be
    pop bc                                        ; $5398: $c1
    jp nz, Jump_000_0720                          ; $5399: $c2 $20 $07

    add b                                         ; $539c: $80
    ld b, b                                       ; $539d: $40
    add $64                                       ; $539e: $c6 $64
    ld h, b                                       ; $53a0: $60
    add b                                         ; $53a1: $80
    dec [hl]                                      ; $53a2: $35
    add l                                         ; $53a3: $85
    ld [hl], b                                    ; $53a4: $70
    jp Jump_000_3f20                              ; $53a5: $c3 $20 $3f


    inc bc                                        ; $53a8: $03
    inc b                                         ; $53a9: $04
    jr nz, @+$37                                  ; $53aa: $20 $35

    ld b, d                                       ; $53ac: $42
    ld b, a                                       ; $53ad: $47
    ld b, c                                       ; $53ae: $41
    ret nz                                        ; $53af: $c0

    ld b, [hl]                                    ; $53b0: $46
    ld h, c                                       ; $53b1: $61
    ld b, c                                       ; $53b2: $41
    inc sp                                        ; $53b3: $33
    nop                                           ; $53b4: $00
    ld c, l                                       ; $53b5: $4d
    add h                                         ; $53b6: $84
    add l                                         ; $53b7: $85
    call nz, $8181                                ; $53b8: $c4 $81 $81
    pop hl                                        ; $53bb: $e1
    inc a                                         ; $53bc: $3c
    ld b, h                                       ; $53bd: $44
    nop                                           ; $53be: $00
    ld b, a                                       ; $53bf: $47
    ld b, d                                       ; $53c0: $42
    add $41                                       ; $53c1: $c6 $41
    pop bc                                        ; $53c3: $c1
    ld a, [c]                                     ; $53c4: $f2
    nop                                           ; $53c5: $00
    ret nc                                        ; $53c6: $d0

    jp $8126                                      ; $53c7: $c3 $26 $81


    pop hl                                        ; $53ca: $e1
    rlca                                          ; $53cb: $07
    pop bc                                        ; $53cc: $c1
    add [hl]                                      ; $53cd: $86
    ld b, d                                       ; $53ce: $42
    nop                                           ; $53cf: $00
    call nz, Call_000_00f1                        ; $53d0: $c4 $f1 $00
    ret nc                                        ; $53d3: $d0

    ld b, e                                       ; $53d4: $43
    ld h, b                                       ; $53d5: $60
    add h                                         ; $53d6: $84
    add l                                         ; $53d7: $85
    ld [bc], a                                    ; $53d8: $02
    pop hl                                        ; $53d9: $e1
    rlca                                          ; $53da: $07
    ret c                                         ; $53db: $d8

    nop                                           ; $53dc: $00
    db $f4                                        ; $53dd: $f4
    push bc                                       ; $53de: $c5
    ld hl, $8280                                  ; $53df: $21 $80 $82
    add b                                         ; $53e2: $80
    ld [bc], a                                    ; $53e3: $02
    ld b, b                                       ; $53e4: $40
    add h                                         ; $53e5: $84
    ld b, c                                       ; $53e6: $41
    rlca                                          ; $53e7: $07
    pop bc                                        ; $53e8: $c1
    add a                                         ; $53e9: $87
    or h                                          ; $53ea: $b4
    nop                                           ; $53eb: $00
    db $f4                                        ; $53ec: $f4
    ld b, $66                                     ; $53ed: $06 $66
    ld b, [hl]                                    ; $53ef: $46
    rrca                                          ; $53f0: $0f
    ld b, d                                       ; $53f1: $42
    dec [hl]                                      ; $53f2: $35
    dec sp                                        ; $53f3: $3b
    add hl, sp                                    ; $53f4: $39
    cp d                                          ; $53f5: $ba
    and d                                         ; $53f6: $a2
    ret nz                                        ; $53f7: $c0

    ld a, [$4d85]                                 ; $53f8: $fa $85 $4d
    inc b                                         ; $53fb: $04
    add c                                         ; $53fc: $81
    ld e, $43                                     ; $53fd: $1e $43
    add d                                         ; $53ff: $82
    ld b, [hl]                                    ; $5400: $46
    ld b, l                                       ; $5401: $45
    ccf                                           ; $5402: $3f
    ld b, e                                       ; $5403: $43
    ld a, [bc]                                    ; $5404: $0a
    and c                                         ; $5405: $a1
    ld bc, $40c0                                  ; $5406: $01 $c0 $40
    ld sp, hl                                     ; $5409: $f9
    inc b                                         ; $540a: $04
    add l                                         ; $540b: $85
    ld l, h                                       ; $540c: $6c
    dec b                                         ; $540d: $05
    ld b, c                                       ; $540e: $41
    sbc [hl]                                      ; $540f: $9e
    ld b, [hl]                                    ; $5410: $46
    ld hl, $e4fd                                  ; $5411: $21 $fd $e4
    ld [$00a3], sp                                ; $5414: $08 $a3 $00
    rst $38                                       ; $5417: $ff
    ld a, e                                       ; $5418: $7b
    ld h, e                                       ; $5419: $63
    nop                                           ; $541a: $00
    ld [bc], a                                    ; $541b: $02
    jp nz, Jump_060_40c9                          ; $541c: $c2 $c9 $40

    inc bc                                        ; $541f: $03
    add d                                         ; $5420: $82
    cp a                                          ; $5421: $bf
    add d                                         ; $5422: $82
    ld c, d                                       ; $5423: $4a
    ld h, h                                       ; $5424: $64
    nop                                           ; $5425: $00
    rst $38                                       ; $5426: $ff
    ld a, e                                       ; $5427: $7b
    ld b, h                                       ; $5428: $44
    add [hl]                                      ; $5429: $86
    nop                                           ; $542a: $00
    ld a, [hl]                                    ; $542b: $7e
    ld b, [hl]                                    ; $542c: $46
    jr nz, jr_060_5474                            ; $542d: $20 $45

    xor a                                         ; $542f: $af
    ld b, c                                       ; $5430: $41
    ld b, e                                       ; $5431: $43
    ld b, e                                       ; $5432: $43
    ld b, c                                       ; $5433: $41
    ld b, c                                       ; $5434: $41
    pop hl                                        ; $5435: $e1
    ld [hl], b                                    ; $5436: $70
    adc e                                         ; $5437: $8b
    inc hl                                        ; $5438: $23
    push bc                                       ; $5439: $c5
    or e                                          ; $543a: $b3
    nop                                           ; $543b: $00
    ld [hl], c                                    ; $543c: $71
    push bc                                       ; $543d: $c5
    add d                                         ; $543e: $82
    ld b, l                                       ; $543f: $45
    ld [hl], $3b                                  ; $5440: $36 $3b
    adc d                                         ; $5442: $8a
    add b                                         ; $5443: $80
    pop bc                                        ; $5444: $c1
    dec [hl]                                      ; $5445: $35
    adc b                                         ; $5446: $88
    add b                                         ; $5447: $80
    dec bc                                        ; $5448: $0b
    dec h                                         ; $5449: $25
    ld bc, $00f6                                  ; $544a: $01 $f6 $00
    adc l                                         ; $544d: $8d
    add [hl]                                      ; $544e: $86
    ld [bc], a                                    ; $544f: $02
    ld b, h                                       ; $5450: $44
    inc a                                         ; $5451: $3c
    dec sp                                        ; $5452: $3b
    and h                                         ; $5453: $a4
    ld h, h                                       ; $5454: $64
    rst $38                                       ; $5455: $ff
    ldh [$a5], a                                  ; $5456: $e0 $a5
    inc a                                         ; $5458: $3c
    ld b, h                                       ; $5459: $44
    adc e                                         ; $545a: $8b
    inc d                                         ; $545b: $14
    nop                                           ; $545c: $00
    cp d                                          ; $545d: $ba
    rst $38                                       ; $545e: $ff
    sbc a                                         ; $545f: $9f
    sbc h                                         ; $5460: $9c
    ld b, d                                       ; $5461: $42
    dec [hl]                                      ; $5462: $35
    ld l, c                                       ; $5463: $69
    and e                                         ; $5464: $a3
    dec [hl]                                      ; $5465: $35
    dec [hl]                                      ; $5466: $35
    rrca                                          ; $5467: $0f
    and e                                         ; $5468: $a3
    ld l, d                                       ; $5469: $6a
    dec [hl]                                      ; $546a: $35
    ld b, d                                       ; $546b: $42
    ld b, l                                       ; $546c: $45
    and h                                         ; $546d: $a4
    pop bc                                        ; $546e: $c1
    rst $30                                       ; $546f: $f7
    nop                                           ; $5470: $00
    xor [hl]                                      ; $5471: $ae
    add $00                                       ; $5472: $c6 $00

jr_060_5474:
    add hl, bc                                    ; $5474: $09
    sbc [hl]                                      ; $5475: $9e
    ret nz                                        ; $5476: $c0

    ldh [rLYC], a                                 ; $5477: $e0 $45
    and b                                         ; $5479: $a0
    dec [hl]                                      ; $547a: $35
    ret nz                                        ; $547b: $c0

    ld [c], a                                     ; $547c: $e2
    call z, $c041                                 ; $547d: $cc $41 $c0
    ld sp, hl                                     ; $5480: $f9
    add l                                         ; $5481: $85
    dec c                                         ; $5482: $0d
    sbc $c4                                       ; $5483: $de $c4
    ld h, c                                       ; $5485: $61
    ld b, h                                       ; $5486: $44
    inc a                                         ; $5487: $3c
    ld l, e                                       ; $5488: $6b
    ld [hl], c                                    ; $5489: $71
    rst $38                                       ; $548a: $ff
    ldh [$6d], a                                  ; $548b: $e0 $6d
    inc a                                         ; $548d: $3c
    ld hl, $8e44                                  ; $548e: $21 $44 $8e
    ld hl, $fb40                                  ; $5491: $21 $40 $fb
    add l                                         ; $5494: $85
    dec c                                         ; $5495: $0d
    call nz, $a160                                ; $5496: $c4 $60 $a1
    ret nz                                        ; $5499: $c0

    add $4b                                       ; $549a: $c6 $4b
    ld b, d                                       ; $549c: $42
    jr @+$44                                      ; $549d: $18 $42

    reti                                          ; $549f: $d9


    nop                                           ; $54a0: $00
    sub d                                         ; $54a1: $92
    ld a, a                                       ; $54a2: $7f
    ret nz                                        ; $54a3: $c0

    ld b, e                                       ; $54a4: $43
    xor [hl]                                      ; $54a5: $ae
    ld b, b                                       ; $54a6: $40
    jp nz, $c002                                  ; $54a7: $c2 $02 $c0

    add a                                         ; $54aa: $87
    ld h, d                                       ; $54ab: $62
    inc a                                         ; $54ac: $3c
    ret nz                                        ; $54ad: $c0

    ld hl, sp+$00                                 ; $54ae: $f8 $00
    inc l                                         ; $54b0: $2c
    push af                                       ; $54b1: $f5
    or $d0                                        ; $54b2: $f6 $d0
    pop de                                        ; $54b4: $d1
    ld bc, $80a3                                  ; $54b5: $01 $a3 $80
    ld b, d                                       ; $54b8: $42
    rlca                                          ; $54b9: $07
    sbc h                                         ; $54ba: $9c
    sbc l                                         ; $54bb: $9d
    sbc h                                         ; $54bc: $9c
    rlc d                                         ; $54bd: $cb $02
    ld b, b                                       ; $54bf: $40
    rst $10                                       ; $54c0: $d7
    nop                                           ; $54c1: $00
    adc [hl]                                      ; $54c2: $8e
    ld b, a                                       ; $54c3: $47
    nop                                           ; $54c4: $00
    ld b, e                                       ; $54c5: $43
    ld h, d                                       ; $54c6: $62
    ld b, $c3                                     ; $54c7: $06 $c3
    pop hl                                        ; $54c9: $e1
    sbc l                                         ; $54ca: $9d
    sbc a                                         ; $54cb: $9f
    dec sp                                        ; $54cc: $3b
    nop                                           ; $54cd: $00
    pop bc                                        ; $54ce: $c1
    ld h, e                                       ; $54cf: $63
    nop                                           ; $54d0: $00
    rst $38                                       ; $54d1: $ff
    add l                                         ; $54d2: $85
    ld [bc], a                                    ; $54d3: $02
    jp $1461                                      ; $54d4: $c3 $61 $14


    jp $c002                                      ; $54d7: $c3 $02 $c0


    nop                                           ; $54da: $00
    sbc a                                         ; $54db: $9f
    inc sp                                        ; $54dc: $33
    ld h, d                                       ; $54dd: $62
    sbc [hl]                                      ; $54de: $9e
    ld [$0033], sp                                ; $54df: $08 $33 $00
    ld d, h                                       ; $54e2: $54
    ld b, a                                       ; $54e3: $47
    ld [bc], a                                    ; $54e4: $02
    nop                                           ; $54e5: $00
    ei                                            ; $54e6: $fb
    ld b, d                                       ; $54e7: $42
    dec [hl]                                      ; $54e8: $35
    pop bc                                        ; $54e9: $c1
    or d                                          ; $54ea: $b2
    add d                                         ; $54eb: $82
    adc b                                         ; $54ec: $88
    inc b                                         ; $54ed: $04
    ld a, [hl]                                    ; $54ee: $7e
    db $f4                                        ; $54ef: $f4
    add l                                         ; $54f0: $85
    ld c, a                                       ; $54f1: $4f
    ld a, e                                       ; $54f2: $7b
    dec h                                         ; $54f3: $25
    push af                                       ; $54f4: $f5
    ld h, d                                       ; $54f5: $62
    nop                                           ; $54f6: $00
    di                                            ; $54f7: $f3
    ld h, c                                       ; $54f8: $61
    cp a                                          ; $54f9: $bf
    ld a, [$0000]                                 ; $54fa: $fa $00 $00
    nop                                           ; $54fd: $00
    pop bc                                        ; $54fe: $c1
    nop                                           ; $54ff: $00
    rst $38                                       ; $5500: $ff
    rst $38                                       ; $5501: $ff
    rst $38                                       ; $5502: $ff
    rst $38                                       ; $5503: $ff
    rst $38                                       ; $5504: $ff
    rst $38                                       ; $5505: $ff
    rst $38                                       ; $5506: $ff
    rst $38                                       ; $5507: $ff
    rst $38                                       ; $5508: $ff
    rst $38                                       ; $5509: $ff
    nop                                           ; $550a: $00
    nop                                           ; $550b: $00
    dec c                                         ; $550c: $0d
    add b                                         ; $550d: $80
    cp $e0                                        ; $550e: $fe $e0
    nop                                           ; $5510: $00
    ld b, b                                       ; $5511: $40
    ret c                                         ; $5512: $d8

    push hl                                       ; $5513: $e5
    rst $30                                       ; $5514: $f7
    and $ff                                       ; $5515: $e6 $ff
    rst $38                                       ; $5517: $ff
    rst $38                                       ; $5518: $ff
    rst $30                                       ; $5519: $f7
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    ld [bc], a                                    ; $551d: $02
    nop                                           ; $551e: $00
    ld [hl+], a                                   ; $551f: $22
    inc bc                                        ; $5520: $03
    ld [bc], a                                    ; $5521: $02
    ld bc, $051e                                  ; $5522: $01 $1e $05
    ld [bc], a                                    ; $5525: $02
    ld [bc], a                                    ; $5526: $02
    ld hl, $0206                                  ; $5527: $21 $06 $02
    inc bc                                        ; $552a: $03
    daa                                           ; $552b: $27
    ld b, $02                                     ; $552c: $06 $02
    inc b                                         ; $552e: $04
    inc hl                                        ; $552f: $23
    rlca                                          ; $5530: $07
    ld [bc], a                                    ; $5531: $02
    dec b                                         ; $5532: $05
    inc e                                         ; $5533: $1c
    ld [$0602], sp                                ; $5534: $08 $02 $06
    ld h, $08                                     ; $5537: $26 $08
    ld [bc], a                                    ; $5539: $02
    rlca                                          ; $553a: $07
    rra                                           ; $553b: $1f
    add hl, bc                                    ; $553c: $09
    ld [bc], a                                    ; $553d: $02
    ld [$0929], sp                                ; $553e: $08 $29 $09
    ld [bc], a                                    ; $5541: $02
    add hl, bc                                    ; $5542: $09
    dec de                                        ; $5543: $1b
    dec bc                                        ; $5544: $0b
    ld [bc], a                                    ; $5545: $02
    ld a, [bc]                                    ; $5546: $0a
    daa                                           ; $5547: $27
    dec bc                                        ; $5548: $0b
    ld [bc], a                                    ; $5549: $02
    dec bc                                        ; $554a: $0b
    jr jr_060_555a                                ; $554b: $18 $0d

    ld [bc], a                                    ; $554d: $02
    inc c                                         ; $554e: $0c
    dec e                                         ; $554f: $1d
    ld c, $02                                     ; $5550: $0e $02
    dec c                                         ; $5552: $0d
    rra                                           ; $5553: $1f
    rrca                                          ; $5554: $0f
    ld [bc], a                                    ; $5555: $02
    ld c, $23                                     ; $5556: $0e $23
    rrca                                          ; $5558: $0f
    ld [bc], a                                    ; $5559: $02

jr_060_555a:
    rrca                                          ; $555a: $0f
    dec de                                        ; $555b: $1b
    db $10                                        ; $555c: $10
    ld [bc], a                                    ; $555d: $02
    db $10                                        ; $555e: $10
    dec h                                         ; $555f: $25
    ld de, $1102                                  ; $5560: $11 $02 $11
    inc hl                                        ; $5563: $23
    ld [de], a                                    ; $5564: $12
    ld [bc], a                                    ; $5565: $02
    ld [de], a                                    ; $5566: $12
    dec e                                         ; $5567: $1d
    inc de                                        ; $5568: $13
    ld [bc], a                                    ; $5569: $02
    inc de                                        ; $556a: $13
    ld h, $13                                     ; $556b: $26 $13
    ld [bc], a                                    ; $556d: $02
    inc d                                         ; $556e: $14
    inc h                                         ; $556f: $24
    inc d                                         ; $5570: $14
    ld [bc], a                                    ; $5571: $02
    dec d                                         ; $5572: $15
    add hl, hl                                    ; $5573: $29
    inc d                                         ; $5574: $14
    ld [bc], a                                    ; $5575: $02
    ld d, $1c                                     ; $5576: $16 $1c
    dec d                                         ; $5578: $15
    ld [bc], a                                    ; $5579: $02
    rla                                           ; $557a: $17
    jr nz, jr_060_5592                            ; $557b: $20 $15

    ld bc, $2718                                  ; $557d: $01 $18 $27

Jump_060_5580:
    dec d                                         ; $5580: $15
    ld [bc], a                                    ; $5581: $02
    add hl, de                                    ; $5582: $19
    ld h, $16                                     ; $5583: $26 $16
    ld [bc], a                                    ; $5585: $02
    ld a, [de]                                    ; $5586: $1a
    ld a, [de]                                    ; $5587: $1a
    rla                                           ; $5588: $17
    ld [bc], a                                    ; $5589: $02
    dec de                                        ; $558a: $1b
    dec e                                         ; $558b: $1d
    jr jr_060_558f                                ; $558c: $18 $01

    inc e                                         ; $558e: $1c

jr_060_558f:
    dec h                                         ; $558f: $25
    jr jr_060_5594                                ; $5590: $18 $02

jr_060_5592:
    dec e                                         ; $5592: $1d
    daa                                           ; $5593: $27

jr_060_5594:
    jr jr_060_5598                                ; $5594: $18 $02

    ld e, $1c                                     ; $5596: $1e $1c

jr_060_5598:
    ld a, [de]                                    ; $5598: $1a
    ld [bc], a                                    ; $5599: $02
    rra                                           ; $559a: $1f
    jr z, @+$1c                                   ; $559b: $28 $1a

    ld [bc], a                                    ; $559d: $02
    jr nz, @+$20                                  ; $559e: $20 $1e

    dec de                                        ; $55a0: $1b
    ld [bc], a                                    ; $55a1: $02
    ld hl, $1c2a                                  ; $55a2: $21 $2a $1c
    ld [bc], a                                    ; $55a5: $02
    ld [hl+], a                                   ; $55a6: $22
    dec e                                         ; $55a7: $1d
    dec e                                         ; $55a8: $1d
    ld [bc], a                                    ; $55a9: $02
    inc hl                                        ; $55aa: $23
    ld e, $1f                                     ; $55ab: $1e $1f
    ld bc, $2424                                  ; $55ad: $01 $24 $24
    rra                                           ; $55b0: $1f
    ld [bc], a                                    ; $55b1: $02
    dec h                                         ; $55b2: $25
    add hl, hl                                    ; $55b3: $29
    rra                                           ; $55b4: $1f
    ld bc, $2426                                  ; $55b5: $01 $26 $24
    jr nz, jr_060_55bc                            ; $55b8: $20 $02

    daa                                           ; $55ba: $27
    inc e                                         ; $55bb: $1c

jr_060_55bc:
    ld hl, $2802                                  ; $55bc: $21 $02 $28
    dec e                                         ; $55bf: $1d
    ld [hl+], a                                   ; $55c0: $22
    ld [bc], a                                    ; $55c1: $02
    add hl, hl                                    ; $55c2: $29
    add hl, de                                    ; $55c3: $19
    inc hl                                        ; $55c4: $23
    ld [bc], a                                    ; $55c5: $02
    ld a, [hl+]                                   ; $55c6: $2a
    jr z, jr_060_55ec                             ; $55c7: $28 $23

    ld [bc], a                                    ; $55c9: $02
    dec hl                                        ; $55ca: $2b
    dec de                                        ; $55cb: $1b
    inc h                                         ; $55cc: $24
    ld [bc], a                                    ; $55cd: $02
    inc l                                         ; $55ce: $2c
    jr jr_060_55f6                                ; $55cf: $18 $25

    ld [bc], a                                    ; $55d1: $02
    dec l                                         ; $55d2: $2d
    daa                                           ; $55d3: $27
    ld h, $02                                     ; $55d4: $26 $02
    ld l, $1c                                     ; $55d6: $2e $1c
    daa                                           ; $55d8: $27
    ld [bc], a                                    ; $55d9: $02
    cpl                                           ; $55da: $2f
    ld a, [de]                                    ; $55db: $1a
    jr z, jr_060_55e0                             ; $55dc: $28 $02

    jr nc, jr_060_5603                            ; $55de: $30 $23

jr_060_55e0:
    jr z, @+$04                                   ; $55e0: $28 $02

    ld sp, $2921                                  ; $55e2: $31 $21 $29
    ld [bc], a                                    ; $55e5: $02
    ld [hl-], a                                   ; $55e6: $32
    ld [hl+], a                                   ; $55e7: $22
    dec hl                                        ; $55e8: $2b
    ld [bc], a                                    ; $55e9: $02
    inc sp                                        ; $55ea: $33
    ld a, [de]                                    ; $55eb: $1a

jr_060_55ec:
    inc l                                         ; $55ec: $2c
    ld [bc], a                                    ; $55ed: $02
    inc [hl]                                      ; $55ee: $34
    jr nz, jr_060_561f                            ; $55ef: $20 $2e

    ld [bc], a                                    ; $55f1: $02
    dec [hl]                                      ; $55f2: $35
    jr @+$31                                      ; $55f3: $18 $2f

    ld [bc], a                                    ; $55f5: $02

jr_060_55f6:
    ld [hl], $22                                  ; $55f6: $36 $22
    jr nc, jr_060_55fc                            ; $55f8: $30 $02

    scf                                           ; $55fa: $37
    inc d                                         ; $55fb: $14

jr_060_55fc:
    ld [hl-], a                                   ; $55fc: $32
    ld [bc], a                                    ; $55fd: $02
    jr c, jr_060_561f                             ; $55fe: $38 $1f

    ld [hl-], a                                   ; $5600: $32
    ld [bc], a                                    ; $5601: $02
    add hl, sp                                    ; $5602: $39

jr_060_5603:
    ld d, $33                                     ; $5603: $16 $33
    ld [bc], a                                    ; $5605: $02
    ld a, [hl-]                                   ; $5606: $3a
    dec e                                         ; $5607: $1d
    ld a, [hl-]                                   ; $5608: $3a
    ld [bc], a                                    ; $5609: $02
    dec sp                                        ; $560a: $3b
    rla                                           ; $560b: $17
    dec sp                                        ; $560c: $3b
    rst $38                                       ; $560d: $ff
    rst $38                                       ; $560e: $ff
    rst $38                                       ; $560f: $ff
    jr jr_060_5668                                ; $5610: $18 $56

    ld l, c                                       ; $5612: $69
    ld e, c                                       ; $5613: $59
    and l                                         ; $5614: $a5
    ld e, l                                       ; $5615: $5d
    ret nz                                        ; $5616: $c0

    ld e, l                                       ; $5617: $5d
    ld sp, $ff0d                                  ; $5618: $31 $0d $ff
    rst $38                                       ; $561b: $ff
    rst $38                                       ; $561c: $ff
    rst $38                                       ; $561d: $ff
    ld a, [c]                                     ; $561e: $f2

jr_060_561f:
    pop af                                        ; $561f: $f1
    ld c, $0e                                     ; $5620: $0e $0e
    call c, $c0ff                                 ; $5622: $dc $ff $c0
    db $fd                                        ; $5625: $fd
    add hl, bc                                    ; $5626: $09
    ld c, $bb                                     ; $5627: $0e $bb
    and $f2                                       ; $5629: $e6 $f2
    db $e3                                        ; $562b: $e3
    ld l, $c9                                     ; $562c: $2e $c9
    rst $38                                       ; $562e: $ff
    ret nz                                        ; $562f: $c0

    xor $ca                                       ; $5630: $ee $ca
    db $e3                                        ; $5632: $e3
    ld [hl], d                                    ; $5633: $72
    db $e3                                        ; $5634: $e3
    nop                                           ; $5635: $00
    cp [hl]                                       ; $5636: $be
    rst $38                                       ; $5637: $ff
    ld b, l                                       ; $5638: $45
    db $e4                                        ; $5639: $e4
    reti                                          ; $563a: $d9


    db $e4                                        ; $563b: $e4
    add b                                         ; $563c: $80
    db $e3                                        ; $563d: $e3
    jp z, $f7e1                                   ; $563e: $ca $e1 $f7

    db $e3                                        ; $5641: $e3
    jp nz, $b8e5                                  ; $5642: $c2 $e5 $b8

    cp $00                                        ; $5645: $fe $00
    sub a                                         ; $5647: $97
    db $e4                                        ; $5648: $e4
    ld b, b                                       ; $5649: $40
    ld [c], a                                     ; $564a: $e2
    adc h                                         ; $564b: $8c
    ld a, [c]                                     ; $564c: $f2
    halt                                          ; $564d: $76
    ei                                            ; $564e: $fb
    ld e, c                                       ; $564f: $59
    db $f4                                        ; $5650: $f4
    pop af                                        ; $5651: $f1
    ret z                                         ; $5652: $c8

    jr c, @-$0f                                   ; $5653: $38 $ef

    inc h                                         ; $5655: $24
    rst $28                                       ; $5656: $ef
    nop                                           ; $5657: $00
    ld a, e                                       ; $5658: $7b
    and $c0                                       ; $5659: $e6 $c0
    rst $28                                       ; $565b: $ef
    add hl, bc                                    ; $565c: $09
    ei                                            ; $565d: $fb
    sub h                                         ; $565e: $94
    db $ec                                        ; $565f: $ec
    cp h                                          ; $5660: $bc
    pop bc                                        ; $5661: $c1
    pop bc                                        ; $5662: $c1
    call nz, $d92c                                ; $5663: $c4 $2c $d9
    and h                                         ; $5666: $a4
    rst $00                                       ; $5667: $c7

jr_060_5668:
    nop                                           ; $5668: $00
    ld b, l                                       ; $5669: $45
    rst $00                                       ; $566a: $c7
    ld a, a                                       ; $566b: $7f
    jp $ffc0                                      ; $566c: $c3 $c0 $ff


    dec b                                         ; $566f: $05
    push de                                       ; $5670: $d5
    rst $00                                       ; $5671: $c7
    ldh a, [$3c]                                  ; $5672: $f0 $3c
    ret c                                         ; $5674: $d8

    pop de                                        ; $5675: $d1
    and l                                         ; $5676: $a5
    add b                                         ; $5677: $80
    db $ec                                        ; $5678: $ec
    ld h, b                                       ; $5679: $60
    ld b, d                                       ; $567a: $42
    pop bc                                        ; $567b: $c1
    ld hl, sp-$5c                                 ; $567c: $f8 $a4
    jr nc, @-$38                                  ; $567e: $30 $c6

    and b                                         ; $5680: $a0
    call c, $c98e                                 ; $5681: $dc $8e $c9
    ld c, $6e                                     ; $5684: $0e $6e
    res 4, a                                      ; $5686: $cb $a7
    ld hl, sp+$30                                 ; $5688: $f8 $30
    sub $d1                                       ; $568a: $d6 $d1
    and a                                         ; $568c: $a7
    ld b, $c5                                     ; $568d: $06 $c5
    ld l, $0e                                     ; $568f: $2e $0e
    ld l, [hl]                                    ; $5691: $6e
    ld c, [hl]                                    ; $5692: $4e
    ld c, [hl]                                    ; $5693: $4e
    ld e, $8d                                     ; $5694: $1e $8d
    pop hl                                        ; $5696: $e1
    ld l, [hl]                                    ; $5697: $6e
    dec c                                         ; $5698: $0d
    ld c, [hl]                                    ; $5699: $4e
    ld l, $7c                                     ; $569a: $2e $7c
    db $e4                                        ; $569c: $e4
    db $eb                                        ; $569d: $eb
    sbc h                                         ; $569e: $9c
    ld b, b                                       ; $569f: $40
    rst $20                                       ; $56a0: $e7
    rst $38                                       ; $56a1: $ff
    ld c, $0d                                     ; $56a2: $0e $0d
    dec l                                         ; $56a4: $2d
    ld c, $6e                                     ; $56a5: $0e $6e
    dec bc                                        ; $56a7: $0b
    dec c                                         ; $56a8: $0d
    dec bc                                        ; $56a9: $0b
    rlca                                          ; $56aa: $07
    ld c, [hl]                                    ; $56ab: $4e
    ld c, [hl]                                    ; $56ac: $4e
    ld c, [hl]                                    ; $56ad: $4e
    ld sp, hl                                     ; $56ae: $f9
    ldh [$bf], a                                  ; $56af: $e0 $bf
    ldh [rSCX], a                                 ; $56b1: $e0 $43
    call $db76                                    ; $56b3: $cd $76 $db
    ld c, d                                       ; $56b6: $4a
    ld [c], a                                     ; $56b7: $e2
    ld bc, $c00d                                  ; $56b8: $01 $0d $c0
    ldh [rIE], a                                  ; $56bb: $e0 $ff
    pop hl                                        ; $56bd: $e1
    ld hl, sp-$1f                                 ; $56be: $f8 $e1
    ld [hl], a                                    ; $56c0: $77
    ldh [$7c], a                                  ; $56c1: $e0 $7c
    bit 6, [hl]                                   ; $56c3: $cb $76
    pop de                                        ; $56c5: $d1
    add hl, bc                                    ; $56c6: $09
    xor d                                         ; $56c7: $aa
    add c                                         ; $56c8: $81
    ld c, $c2                                     ; $56c9: $0e $c2
    db $e4                                        ; $56cb: $e4
    ret nz                                        ; $56cc: $c0

    pop hl                                        ; $56cd: $e1
    cp c                                          ; $56ce: $b9
    ldh [$bc], a                                  ; $56cf: $e0 $bc
    call nz, $e8b9                                ; $56d1: $c4 $b9 $e8
    add hl, bc                                    ; $56d4: $09

Call_060_56d5:
    cp h                                          ; $56d5: $bc
    ld c, $c0                                     ; $56d6: $0e $c0
    jp nz, $bbe4                                  ; $56d8: $c2 $e4 $bb

    db $e4                                        ; $56db: $e4
    or $c1                                        ; $56dc: $f6 $c1
    xor b                                         ; $56de: $a8
    xor [hl]                                      ; $56df: $ae
    ld c, a                                       ; $56e0: $4f
    xor [hl]                                      ; $56e1: $ae
    ld d, [hl]                                    ; $56e2: $56
    add h                                         ; $56e3: $84
    ld c, $2e                                     ; $56e4: $0e $2e
    ld b, b                                       ; $56e6: $40
    ld [bc], a                                    ; $56e7: $02
    pop hl                                        ; $56e8: $e1
    cp a                                          ; $56e9: $bf
    ld [$c1fd], a                                 ; $56ea: $ea $fd $c1
    xor $a9                                       ; $56ed: $ee $a9
    cp e                                          ; $56ef: $bb
    adc [hl]                                      ; $56f0: $8e
    sub $6b                                       ; $56f1: $d6 $6b
    ld l, [hl]                                    ; $56f3: $6e
    pop bc                                        ; $56f4: $c1
    db $ec                                        ; $56f5: $ec
    jr nz, @-$42                                  ; $56f6: $20 $bc

    ret nz                                        ; $56f8: $c0

    inc a                                         ; $56f9: $3c
    add h                                         ; $56fa: $84
    sbc d                                         ; $56fb: $9a
    sub l                                         ; $56fc: $95
    ld de, $83aa                                  ; $56fd: $11 $aa $83

Jump_060_5700:
    db $e4                                        ; $5700: $e4
    dec hl                                        ; $5701: $2b
    ld a, a                                       ; $5702: $7f
    jp hl                                         ; $5703: $e9


    ret nz                                        ; $5704: $c0

    push hl                                       ; $5705: $e5
    ld [hl], b                                    ; $5706: $70
    cp h                                          ; $5707: $bc
    ld [hl], h                                    ; $5708: $74
    ld e, $a8                                     ; $5709: $1e $a8
    add l                                         ; $570b: $85
    pop bc                                        ; $570c: $c1
    ld [bc], a                                    ; $570d: $02
    push hl                                       ; $570e: $e5
    dec hl                                        ; $570f: $2b
    ld a, [bc]                                    ; $5710: $0a
    ld a, [hl+]                                   ; $5711: $2a
    cp $cd                                        ; $5712: $fe $cd
    ld [hl], b                                    ; $5714: $70
    ld a, $bd                                     ; $5715: $3e $bd
    rst $08                                       ; $5717: $cf
    and b                                         ; $5718: $a0
    add l                                         ; $5719: $85
    push bc                                       ; $571a: $c5
    jp nz, Jump_000_0ae0                          ; $571b: $c2 $e0 $0a

    ld a, [bc]                                    ; $571e: $0a
    ld a, [bc]                                    ; $571f: $0a
    cp $c6                                        ; $5720: $fe $c6
    ld h, b                                       ; $5722: $60
    xor h                                         ; $5723: $ac
    and b                                         ; $5724: $a0
    jr nc, @-$5b                                  ; $5725: $30 $a3

    cp [hl]                                       ; $5727: $be
    cp d                                          ; $5728: $ba
    adc e                                         ; $5729: $8b
    and b                                         ; $572a: $a0
    ld b, h                                       ; $572b: $44
    push bc                                       ; $572c: $c5
    ld a, [bc]                                    ; $572d: $0a
    ld c, d                                       ; $572e: $4a
    add d                                         ; $572f: $82
    ldh [$63], a                                  ; $5730: $e0 $63
    ld a, [bc]                                    ; $5732: $0a
    ld c, d                                       ; $5733: $4a
    ld sp, hl                                     ; $5734: $f9
    and h                                         ; $5735: $a4
    ei                                            ; $5736: $fb
    and a                                         ; $5737: $a7
    ld c, a                                       ; $5738: $4f
    ld a, e                                       ; $5739: $7b
    ld c, [hl]                                    ; $573a: $4e
    ld l, $04                                     ; $573b: $2e $04
    push bc                                       ; $573d: $c5
    add l                                         ; $573e: $85
    ld l, e                                       ; $573f: $6b
    add h                                         ; $5740: $84
    pop hl                                        ; $5741: $e1
    ld c, d                                       ; $5742: $4a
    ret nz                                        ; $5743: $c0

    db $e3                                        ; $5744: $e3
    ei                                            ; $5745: $fb
    and [hl]                                      ; $5746: $a6
    inc b                                         ; $5747: $04
    db $db                                        ; $5748: $db
    ld [hl+], a                                   ; $5749: $22
    add b                                         ; $574a: $80
    ld l, l                                       ; $574b: $6d
    rst $20                                       ; $574c: $e7
    ld c, [hl]                                    ; $574d: $4e
    ld c, $2e                                     ; $574e: $0e $2e
    inc bc                                        ; $5750: $03
    db $e4                                        ; $5751: $e4
    add l                                         ; $5752: $85
    ldh [$2b], a                                  ; $5753: $e0 $2b
    ld c, d                                       ; $5755: $4a
    ld a, [hl+]                                   ; $5756: $2a
    add c                                         ; $5757: $81
    ld c, e                                       ; $5758: $4b
    cp c                                          ; $5759: $b9
    and h                                         ; $575a: $a4
    ei                                            ; $575b: $fb
    sbc c                                         ; $575c: $99
    adc l                                         ; $575d: $8d
    ld b, a                                       ; $575e: $47
    ldh [$61], a                                  ; $575f: $e0 $61
    ld a, l                                       ; $5761: $7d
    ldh [$81], a                                  ; $5762: $e0 $81
    pop hl                                        ; $5764: $e1
    ld c, d                                       ; $5765: $4a
    rra                                           ; $5766: $1f
    ld c, d                                       ; $5767: $4a
    ld c, e                                       ; $5768: $4b
    ld c, e                                       ; $5769: $4b
    ld l, e                                       ; $576a: $6b
    dec bc                                        ; $576b: $0b
    cp [hl]                                       ; $576c: $be
    jp $a033                                      ; $576d: $c3 $33 $a0


    cp e                                          ; $5770: $bb
    and h                                         ; $5771: $a4
    add sp, $2b                                   ; $5772: $e8 $2b
    ld b, [hl]                                    ; $5774: $46
    adc c                                         ; $5775: $89
    inc [hl]                                      ; $5776: $34
    dec de                                        ; $5777: $1b
    ld b, b                                       ; $5778: $40
    dec l                                         ; $5779: $2d
    cp a                                          ; $577a: $bf
    pop hl                                        ; $577b: $e1
    dec c                                         ; $577c: $0d
    dec hl                                        ; $577d: $2b
    ld a, [hl+]                                   ; $577e: $2a
    jp Jump_000_2b2a                              ; $577f: $c3 $2a $2b


    add b                                         ; $5782: $80
    and $fe                                       ; $5783: $e6 $fe
    jp Jump_060_5e3d                              ; $5785: $c3 $3d $5e


    adc c                                         ; $5788: $89
    dec h                                         ; $5789: $25
    ld c, [hl]                                    ; $578a: $4e
    ld l, $9f                                     ; $578b: $2e $9f
    dec hl                                        ; $578d: $2b
    dec c                                         ; $578e: $0d
    dec hl                                        ; $578f: $2b
    ld l, e                                       ; $5790: $6b
    dec hl                                        ; $5791: $2b
    db $fd                                        ; $5792: $fd
    and c                                         ; $5793: $a1
    pop bc                                        ; $5794: $c1
    push hl                                       ; $5795: $e5
    dec c                                         ; $5796: $0d
    ld b, c                                       ; $5797: $41
    dec bc                                        ; $5798: $0b
    inc [hl]                                      ; $5799: $34
    add b                                         ; $579a: $80
    dec [hl]                                      ; $579b: $35
    ld h, l                                       ; $579c: $65
    ld a, a                                       ; $579d: $7f
    ld d, c                                       ; $579e: $51
    ld d, e                                       ; $579f: $53
    daa                                           ; $57a0: $27
    ld b, b                                       ; $57a1: $40
    add c                                         ; $57a2: $81
    dec hl                                        ; $57a3: $2b
    rst $38                                       ; $57a4: $ff
    ldh [$03], a                                  ; $57a5: $e0 $03
    dec bc                                        ; $57a7: $0b
    ld [$c141], sp                                ; $57a8: $08 $41 $c1

jr_060_57ab:
    ld a, $c0                                     ; $57ab: $3e $c0
    ld [hl], l                                    ; $57ad: $75
    add b                                         ; $57ae: $80
    pop bc                                        ; $57af: $c1
    ld [c], a                                     ; $57b0: $e2
    ld a, h                                       ; $57b1: $7c
    ld e, b                                       ; $57b2: $58
    ld d, e                                       ; $57b3: $53
    add hl, hl                                    ; $57b4: $29
    ld [bc], a                                    ; $57b5: $02
    ret nz                                        ; $57b6: $c0

    jp hl                                         ; $57b7: $e9


    ld c, e                                       ; $57b8: $4b
    pop bc                                        ; $57b9: $c1
    pop bc                                        ; $57ba: $c1
    dec [hl]                                      ; $57bb: $35
    add c                                         ; $57bc: $81
    rst $20                                       ; $57bd: $e7
    and c                                         ; $57be: $a1
    ld b, b                                       ; $57bf: $40
    sub c                                         ; $57c0: $91
    sub e                                         ; $57c1: $93
    add hl, hl                                    ; $57c2: $29
    ld d, e                                       ; $57c3: $53
    inc h                                         ; $57c4: $24
    ld a, [hl]                                    ; $57c5: $7e
    ld c, d                                       ; $57c6: $4a
    ld h, c                                       ; $57c7: $61
    dec hl                                        ; $57c8: $2b
    ld a, [bc]                                    ; $57c9: $0a
    ld a, [bc]                                    ; $57ca: $0a
    ld l, e                                       ; $57cb: $6b
    ld l, e                                       ; $57cc: $6b
    ld [$e041], sp                                ; $57cd: $08 $41 $e0
    add e                                         ; $57d0: $83
    dec c                                         ; $57d1: $0d
    dec bc                                        ; $57d2: $0b
    cp h                                          ; $57d3: $bc
    and d                                         ; $57d4: $a2
    pop bc                                        ; $57d5: $c1
    ld [c], a                                     ; $57d6: $e2
    nop                                           ; $57d7: $00
    sub e                                         ; $57d8: $93
    db $e4                                        ; $57d9: $e4
    ld b, h                                       ; $57da: $44
    ld d, e                                       ; $57db: $53
    ld h, $2d                                     ; $57dc: $26 $2d
    rst $28                                       ; $57de: $ef
    ld c, $4e                                     ; $57df: $0e $4e
    ld l, [hl]                                    ; $57e1: $6e
    dec hl                                        ; $57e2: $2b
    ret nz                                        ; $57e3: $c0

    ldh [$2b], a                                  ; $57e4: $e0 $2b
    ld l, e                                       ; $57e6: $6b
    dec bc                                        ; $57e7: $0b
    inc sp                                        ; $57e8: $33
    ld a, [bc]                                    ; $57e9: $0a
    dec hl                                        ; $57ea: $2b
    ld a, c                                       ; $57eb: $79
    ld h, b                                       ; $57ec: $60
    ld a, h                                       ; $57ed: $7c
    and b                                         ; $57ee: $a0
    ld c, $2e                                     ; $57ef: $0e $2e
    add d                                         ; $57f1: $82
    db $e3                                        ; $57f2: $e3
    add b                                         ; $57f3: $80
    ld [hl], c                                    ; $57f4: $71
    ld [c], a                                     ; $57f5: $e2
    add [hl]                                      ; $57f6: $86
    cpl                                           ; $57f7: $2f
    ld l, [hl]                                    ; $57f8: $6e
    jp $ffc0                                      ; $57f9: $c3 $c0 $ff


    ld [c], a                                     ; $57fc: $e2
    cp e                                          ; $57fd: $bb
    add l                                         ; $57fe: $85
    ld c, $6e                                     ; $57ff: $0e $6e
    ld c, l                                       ; $5801: $4d
    nop                                           ; $5802: $00
    db $f4                                        ; $5803: $f4
    ld h, $7c                                     ; $5804: $26 $7c
    ld a, [de]                                    ; $5806: $1a
    ld b, h                                       ; $5807: $44
    ld h, h                                       ; $5808: $64
    ret nz                                        ; $5809: $c0

    ld [c], a                                     ; $580a: $e2
    cp h                                          ; $580b: $bc
    ldh [$7b], a                                  ; $580c: $e0 $7b
    add c                                         ; $580e: $81
    inc a                                         ; $580f: $3c
    ldh [$80], a                                  ; $5810: $e0 $80
    ld h, b                                       ; $5812: $60
    ret z                                         ; $5813: $c8

    or h                                          ; $5814: $b4
    dec h                                         ; $5815: $25
    pop bc                                        ; $5816: $c1
    inc e                                         ; $5817: $1c
    sbc d                                         ; $5818: $9a
    ld [c], a                                     ; $5819: $e2
    dec c                                         ; $581a: $0d
    add d                                         ; $581b: $82
    db $e3                                        ; $581c: $e3
    ret nz                                        ; $581d: $c0

    ld [c], a                                     ; $581e: $e2
    ld c, e                                       ; $581f: $4b
    ld c, e                                       ; $5820: $4b
    ret z                                         ; $5821: $c8

    ret nz                                        ; $5822: $c0

    add sp, $7f                                   ; $5823: $e8 $7f
    jr jr_060_57ab                                ; $5825: $18 $84

    ld c, b                                       ; $5827: $48
    ld c, $81                                     ; $5828: $0e $81
    db $e3                                        ; $582a: $e3
    ccf                                           ; $582b: $3f
    ret nz                                        ; $582c: $c0

    ld l, e                                       ; $582d: $6b
    ld l, e                                       ; $582e: $6b
    add d                                         ; $582f: $82
    ld [bc], a                                    ; $5830: $02
    ret nz                                        ; $5831: $c0

    ld [$8bc4], sp                                ; $5832: $08 $c4 $8b
    dec hl                                        ; $5835: $2b
    inc d                                         ; $5836: $14
    ld b, h                                       ; $5837: $44
    ld c, b                                       ; $5838: $48
    call nz, Call_000_01a2                        ; $5839: $c4 $a2 $01
    db $e3                                        ; $583c: $e3
    ld l, e                                       ; $583d: $6b
    dec e                                         ; $583e: $1d
    ld l, e                                       ; $583f: $6b
    ld b, d                                       ; $5840: $42
    call nz, Call_000_2e4e                        ; $5841: $c4 $4e $2e
    dec l                                         ; $5844: $2d
    ld h, d                                       ; $5845: $62
    ret z                                         ; $5846: $c8

    cp a                                          ; $5847: $bf
    halt                                          ; $5848: $76
    db $e3                                        ; $5849: $e3
    inc bc                                        ; $584a: $03
    ld [bc], a                                    ; $584b: $02
    add e                                         ; $584c: $83
    and b                                         ; $584d: $a0
    dec bc                                        ; $584e: $0b
    ld bc, $c1e3                                  ; $584f: $01 $e3 $c1
    ld [c], a                                     ; $5852: $e2
    ld b, d                                       ; $5853: $42
    add l                                         ; $5854: $85
    ld a, [hl-]                                   ; $5855: $3a
    rra                                           ; $5856: $1f
    inc e                                         ; $5857: $1c
    inc h                                         ; $5858: $24
    ld bc, $00a1                                  ; $5859: $01 $a1 $00
    cp l                                          ; $585c: $bd
    jp nz, Jump_000_22fe                          ; $585d: $c2 $fe $22

    ld sp, hl                                     ; $5860: $f9
    ld hl, $20f3                                  ; $5861: $21 $f3 $20
    db $fd                                        ; $5864: $fd
    dec h                                         ; $5865: $25
    ld a, d                                       ; $5866: $7a
    ld de, $4eb6                                  ; $5867: $11 $b6 $4e
    ld b, [hl]                                    ; $586a: $46
    ld hl, $0080                                  ; $586b: $21 $80 $00
    ld h, b                                       ; $586e: $60
    ret nz                                        ; $586f: $c0

    and $bf                                       ; $5870: $e6 $bf
    ld b, h                                       ; $5872: $44
    add [hl]                                      ; $5873: $86
    ld hl, sp-$1c                                 ; $5874: $f8 $e4
    ld h, $dc                                     ; $5876: $26 $dc
    and d                                         ; $5878: $a2
    ld bc, $0da0                                  ; $5879: $01 $a0 $0d
    nop                                           ; $587c: $00
    pop bc                                        ; $587d: $c1
    ld b, l                                       ; $587e: $45
    cp c                                          ; $587f: $b9
    ld [c], a                                     ; $5880: $e2

jr_060_5881:
    ld hl, sp+$01                                 ; $5881: $f8 $01
    ld b, h                                       ; $5883: $44
    ld b, [hl]                                    ; $5884: $46
    dec b                                         ; $5885: $05
    ld d, [hl]                                    ; $5886: $56
    ld a, h                                       ; $5887: $7c
    ret z                                         ; $5888: $c8

    add c                                         ; $5889: $81
    ld b, a                                       ; $588a: $47
    ld a, [hl]                                    ; $588b: $7e
    and c                                         ; $588c: $a1
    ld b, b                                       ; $588d: $40
    ld [$c242], a                                 ; $588e: $ea $42 $c2
    ld l, b                                       ; $5891: $68
    cp d                                          ; $5892: $ba
    or d                                          ; $5893: $b2
    cp [hl]                                       ; $5894: $be
    add l                                         ; $5895: $85
    ret nz                                        ; $5896: $c0

    rst $20                                       ; $5897: $e7
    cp $00                                        ; $5898: $fe $00
    dec l                                         ; $589a: $2d
    ld b, c                                       ; $589b: $41
    ld b, l                                       ; $589c: $45
    nop                                           ; $589d: $00
    add $09                                       ; $589e: $c6 $09
    inc a                                         ; $58a0: $3c
    ld d, l                                       ; $58a1: $55
    inc a                                         ; $58a2: $3c
    jp z, $4901                                   ; $58a3: $ca $01 $49

    inc b                                         ; $58a6: $04
    ld h, l                                       ; $58a7: $65
    dec a                                         ; $58a8: $3d
    dec e                                         ; $58a9: $1d
    jr c, jr_060_58b3                             ; $58aa: $38 $07

    inc a                                         ; $58ac: $3c
    pop bc                                        ; $58ad: $c1
    ld [hl], b                                    ; $58ae: $70
    cp c                                          ; $58af: $b9
    daa                                           ; $58b0: $27
    add $64                                       ; $58b1: $c6 $64

jr_060_58b3:
    inc bc                                        ; $58b3: $03
    cp h                                          ; $58b4: $bc
    rst $20                                       ; $58b5: $e7
    adc c                                         ; $58b6: $89
    dec l                                         ; $58b7: $2d
    ld c, $6b                                     ; $58b8: $0e $6b
    inc b                                         ; $58ba: $04
    ld h, b                                       ; $58bb: $60
    add b                                         ; $58bc: $80
    ld a, a                                       ; $58bd: $7f
    and b                                         ; $58be: $a0
    cp l                                          ; $58bf: $bd
    and c                                         ; $58c0: $a1
    add $67                                       ; $58c1: $c6 $67
    pop bc                                        ; $58c3: $c1
    sbc c                                         ; $58c4: $99
    add c                                         ; $58c5: $81
    ld b, $77                                     ; $58c6: $06 $77
    ld bc, $807c                                  ; $58c8: $01 $7c $80
    ld l, e                                       ; $58cb: $6b
    rlca                                          ; $58cc: $07
    ld l, e                                       ; $58cd: $6b
    ld l, e                                       ; $58ce: $6b
    dec c                                         ; $58cf: $0d
    db $fc                                        ; $58d0: $fc
    ldh [$c1], a                                  ; $58d1: $e0 $c1
    db $e3                                        ; $58d3: $e3
    ld c, b                                       ; $58d4: $48
    or l                                          ; $58d5: $b5
    dec sp                                        ; $58d6: $3b
    ld c, a                                       ; $58d7: $4f
    ld a, l                                       ; $58d8: $7d
    ld b, l                                       ; $58d9: $45
    nop                                           ; $58da: $00
    cp a                                          ; $58db: $bf
    and h                                         ; $58dc: $a4
    ld b, a                                       ; $58dd: $47
    ld b, d                                       ; $58de: $42
    rst $38                                       ; $58df: $ff
    rst $38                                       ; $58e0: $ff
    ld [$db47], a                                 ; $58e1: $ea $47 $db
    ld h, h                                       ; $58e4: $64
    ld d, d                                       ; $58e5: $52
    ld b, b                                       ; $58e6: $40
    ld a, [hl-]                                   ; $58e7: $3a
    add e                                         ; $58e8: $83
    add l                                         ; $58e9: $85
    and l                                         ; $58ea: $a5
    nop                                           ; $58eb: $00
    add d                                         ; $58ec: $82
    cp a                                          ; $58ed: $bf
    cp [hl]                                       ; $58ee: $be
    adc $3b                                       ; $58ef: $ce $3b
    and e                                         ; $58f1: $a3
    ret nz                                        ; $58f2: $c0

    db $fd                                        ; $58f3: $fd
    ld l, e                                       ; $58f4: $6b
    rrca                                          ; $58f5: $0f
    inc d                                         ; $58f6: $14
    add e                                         ; $58f7: $83
    inc a                                         ; $58f8: $3c
    ld b, c                                       ; $58f9: $41
    ei                                            ; $58fa: $fb
    add c                                         ; $58fb: $81
    jr nc, jr_060_5881                            ; $58fc: $30 $83

    add $c2                                       ; $58fe: $c6 $c2
    sub l                                         ; $5900: $95
    add b                                         ; $5901: $80
    di                                            ; $5902: $f3
    dec a                                         ; $5903: $3d
    db $e3                                        ; $5904: $e3
    ld c, $2e                                     ; $5905: $0e $2e
    ld b, $61                                     ; $5907: $06 $61
    ld b, l                                       ; $5909: $45
    xor b                                         ; $590a: $a8
    db $10                                        ; $590b: $10
    add d                                         ; $590c: $82
    inc a                                         ; $590d: $3c
    halt                                          ; $590e: $76
    xor b                                         ; $590f: $a8
    ld a, c                                       ; $5910: $79
    ld hl, $6007                                  ; $5911: $21 $07 $60
    ld c, l                                       ; $5914: $4d
    and b                                         ; $5915: $a0
    pop af                                        ; $5916: $f1
    add d                                         ; $5917: $82
    ld [hl], $b8                                  ; $5918: $36 $b8
    ld b, $00                                     ; $591a: $06 $00
    ld a, b                                       ; $591c: $78
    add e                                         ; $591d: $83
    ld c, e                                       ; $591e: $4b
    ld b, d                                       ; $591f: $42
    inc c                                         ; $5920: $0c
    dec l                                         ; $5921: $2d
    add b                                         ; $5922: $80
    ei                                            ; $5923: $fb
    ld sp, hl                                     ; $5924: $f9
    and a                                         ; $5925: $a7
    ld [hl], e                                    ; $5926: $73
    ld [$bbc4], a                                 ; $5927: $ea $c4 $bb
    ld [hl-], a                                   ; $592a: $32
    ld d, c                                       ; $592b: $51
    nop                                           ; $592c: $00
    ld c, [hl]                                    ; $592d: $4e
    ld b, d                                       ; $592e: $42
    ld b, h                                       ; $592f: $44
    rst $00                                       ; $5930: $c7
    ld h, h                                       ; $5931: $64
    inc h                                         ; $5932: $24
    cp [hl]                                       ; $5933: $be
    rst $38                                       ; $5934: $ff
    halt                                          ; $5935: $76
    ld h, a                                       ; $5936: $67
    ld d, h                                       ; $5937: $54
    inc h                                         ; $5938: $24
    ld d, e                                       ; $5939: $53
    ld a, [hl+]                                   ; $593a: $2a
    call nz, Call_000_00ff                        ; $593b: $c4 $ff $00
    rst $00                                       ; $593e: $c7
    jp hl                                         ; $593f: $e9


    sub c                                         ; $5940: $91
    jp nz, $ffc0                                  ; $5941: $c2 $c0 $ff

    dec sp                                        ; $5944: $3b
    ld l, e                                       ; $5945: $6b
    ret nz                                        ; $5946: $c0

    db $eb                                        ; $5947: $eb
    ret z                                         ; $5948: $c8

    ld e, a                                       ; $5949: $5f
    ld sp, hl                                     ; $594a: $f9
    ld c, l                                       ; $594b: $4d

Call_060_594c:
    push de                                       ; $594c: $d5
    jr z, jr_060_594f                             ; $594d: $28 $00

jr_060_594f:
    ld de, $80c7                                  ; $594f: $11 $c7 $80
    sbc a                                         ; $5952: $9f
    add b                                         ; $5953: $80
    ld [$4bad], a                                 ; $5954: $ea $ad $4b
    add b                                         ; $5957: $80
    jr z, jr_060_59d4                             ; $5958: $28 $7a

    rst $18                                       ; $595a: $df
    ld l, e                                       ; $595b: $6b
    ld c, l                                       ; $595c: $4d
    add b                                         ; $595d: $80
    jp hl                                         ; $595e: $e9


    nop                                           ; $595f: $00
    ld a, $9d                                     ; $5960: $3e $9d
    ld l, d                                       ; $5962: $6a
    jr jr_060_596e                                ; $5963: $18 $09

    sub d                                         ; $5965: $92
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    ld sp, $ffa0                                  ; $5969: $31 $a0 $ff
    rst $38                                       ; $596c: $ff
    rst $38                                       ; $596d: $ff

jr_060_596e:
    rst $38                                       ; $596e: $ff
    ld a, [c]                                     ; $596f: $f2
    pop af                                        ; $5970: $f1
    ld [c], a                                     ; $5971: $e2
    db $e3                                        ; $5972: $e3
    call c, $faff                                 ; $5973: $dc $ff $fa
    ld sp, hl                                     ; $5976: $f9
    ld a, a                                       ; $5977: $7f
    db $e4                                        ; $5978: $e4
    push hl                                       ; $5979: $e5
    and b                                         ; $597a: $a0
    and b                                         ; $597b: $a0
    sub $d7                                       ; $597c: $d6 $d7
    ret c                                         ; $597e: $d8

    or d                                          ; $597f: $b2
    add sp, -$19                                  ; $5980: $e8 $e7
    call nc, $d4d5                                ; $5982: $d4 $d5 $d4
    ret                                           ; $5985: $c9


    rst $38                                       ; $5986: $ff
    rst $20                                       ; $5987: $e7
    and $e6                                       ; $5988: $e6 $e6
    rst $20                                       ; $598a: $e7
    and b                                         ; $598b: $a0
    rrca                                          ; $598c: $0f
    and b                                         ; $598d: $a0
    reti                                          ; $598e: $d9


    jp c, $cadb                                   ; $598f: $da $db $ca

    db $e4                                        ; $5992: $e4
    or d                                          ; $5993: $b2
    pop hl                                        ; $5994: $e1
    cp [hl]                                       ; $5995: $be
    rst $38                                       ; $5996: $ff
    push hl                                       ; $5997: $e5
    db $e4                                        ; $5998: $e4
    adc $d9                                       ; $5999: $ce $d9
    and $dc                                       ; $599b: $e6 $dc
    db $dd                                        ; $599d: $dd
    sbc $ca                                       ; $599e: $de $ca
    db $e4                                        ; $59a0: $e4
    or d                                          ; $59a1: $b2
    pop hl                                        ; $59a2: $e1
    and b                                         ; $59a3: $a0
    call nc, $c238                                ; $59a4: $d4 $38 $c2
    push hl                                       ; $59a7: $e5
    cp b                                          ; $59a8: $b8
    cp $97                                        ; $59a9: $fe $97
    db $e4                                        ; $59ab: $e4
    rst $18                                       ; $59ac: $df
    ldh [$e1], a                                  ; $59ad: $e0 $e1
    jp z, $9de8                                   ; $59af: $ca $e8 $9d

    ld a, [c]                                     ; $59b2: $f2
    nop                                           ; $59b3: $00
    ld a, a                                       ; $59b4: $7f
    di                                            ; $59b5: $f3
    ld e, c                                       ; $59b6: $59
    di                                            ; $59b7: $f3
    pop af                                        ; $59b8: $f1
    rst $00                                       ; $59b9: $c7
    xor h                                         ; $59ba: $ac
    ldh a, [rNR50]                                ; $59bb: $f0 $24
    rst $28                                       ; $59bd: $ef
    ld [de], a                                    ; $59be: $12
    db $e4                                        ; $59bf: $e4
    ld [hl], a                                    ; $59c0: $77
    rst $00                                       ; $59c1: $c7
    pop af                                        ; $59c2: $f1
    pop bc                                        ; $59c3: $c1
    nop                                           ; $59c4: $00
    ld c, e                                       ; $59c5: $4b
    rst $38                                       ; $59c6: $ff
    sub h                                         ; $59c7: $94
    db $ed                                        ; $59c8: $ed
    ld [hl], a                                    ; $59c9: $77
    ret nz                                        ; $59ca: $c0

    ld a, b                                       ; $59cb: $78
    call nz, $c3f1                                ; $59cc: $c4 $f1 $c3
    ld c, e                                       ; $59cf: $4b
    rst $38                                       ; $59d0: $ff
    dec b                                         ; $59d1: $05
    pop bc                                        ; $59d2: $c1
    sub h                                         ; $59d3: $94

jr_060_59d4:
    db $e3                                        ; $59d4: $e3
    nop                                           ; $59d5: $00
    ccf                                           ; $59d6: $3f
    pop bc                                        ; $59d7: $c1
    ld [hl], a                                    ; $59d8: $77
    ret nz                                        ; $59d9: $c0

    add a                                         ; $59da: $87
    db $e4                                        ; $59db: $e4
    pop af                                        ; $59dc: $f1
    jp nz, $ffff                                  ; $59dd: $c2 $ff $ff

    dec b                                         ; $59e0: $05
    jp nz, $c385                                  ; $59e1: $c2 $85 $c3

    ld c, [hl]                                    ; $59e4: $4e
    db $e4                                        ; $59e5: $e4
    nop                                           ; $59e6: $00
    add a                                         ; $59e7: $87
    jp hl                                         ; $59e8: $e9


    inc a                                         ; $59e9: $3c
    ret c                                         ; $59ea: $d8

    pop de                                        ; $59eb: $d1
    and l                                         ; $59ec: $a5
    dec b                                         ; $59ed: $05
    pop bc                                        ; $59ee: $c1
    sub h                                         ; $59ef: $94
    db $e3                                        ; $59f0: $e3
    ccf                                           ; $59f1: $3f
    pop bc                                        ; $59f2: $c1
    ld c, d                                       ; $59f3: $4a
    ret nz                                        ; $59f4: $c0

    ld a, b                                       ; $59f5: $78
    pop bc                                        ; $59f6: $c1
    ldh [rDIV], a                                 ; $59f7: $e0 $04
    jp nz, $a26b                                  ; $59f9: $c2 $6b $a2

    ld a, [$e0b6]                                 ; $59fc: $fa $b6 $e0
    rst $08                                       ; $59ff: $cf
    ccf                                           ; $5a00: $3f
    pop bc                                        ; $5a01: $c1
    sbc a                                         ; $5a02: $9f
    sbc l                                         ; $5a03: $9d
    sbc a                                         ; $5a04: $9f
    ldh [rOCPD], a                                ; $5a05: $e0 $6b
    xor d                                         ; $5a07: $aa
    ld h, e                                       ; $5a08: $63
    call nc, $a5d1                                ; $5a09: $d4 $d1 $a5
    db $db                                        ; $5a0c: $db
    and e                                         ; $5a0d: $a3
    sub [hl]                                      ; $5a0e: $96
    and b                                         ; $5a0f: $a0
    sbc a                                         ; $5a10: $9f
    sbc l                                         ; $5a11: $9d
    sbc l                                         ; $5a12: $9d
    ld a, $c6                                     ; $5a13: $3e $c6
    pop hl                                        ; $5a15: $e1
    sbc a                                         ; $5a16: $9f
    sbc h                                         ; $5a17: $9c
    xor [hl]                                      ; $5a18: $ae
    sbc h                                         ; $5a19: $9c
    sbc a                                         ; $5a1a: $9f
    add $a0                                       ; $5a1b: $c6 $a0
    inc [hl]                                      ; $5a1d: $34
    and d                                         ; $5a1e: $a2
    ldh a, [$b9]                                  ; $5a1f: $f0 $b9
    and d                                         ; $5a21: $a2
    rst $38                                       ; $5a22: $ff
    sub $e0                                       ; $5a23: $d6 $e0
    push bc                                       ; $5a25: $c5
    add hl, bc                                    ; $5a26: $09
    and d                                         ; $5a27: $a2
    sbc a                                         ; $5a28: $9f
    sbc h                                         ; $5a29: $9c
    ld b, [hl]                                    ; $5a2a: $46
    xor [hl]                                      ; $5a2b: $ae
    ld a, a                                       ; $5a2c: $7f
    ld b, [hl]                                    ; $5a2d: $46
    sbc h                                         ; $5a2e: $9c
    sbc l                                         ; $5a2f: $9d
    sbc l                                         ; $5a30: $9d
    sbc h                                         ; $5a31: $9c
    ld b, [hl]                                    ; $5a32: $46
    xor a                                         ; $5a33: $af
    cp a                                          ; $5a34: $bf
    ldh [rSVBK], a                                ; $5a35: $e0 $70
    ld b, e                                       ; $5a37: $43
    call $9aa2                                    ; $5a38: $cd $a2 $9a
    add hl, bc                                    ; $5a3b: $09
    and c                                         ; $5a3c: $a1
    adc c                                         ; $5a3d: $89
    ldh [rDMA], a                                 ; $5a3e: $e0 $46
    xor a                                         ; $5a40: $af
    ld b, [hl]                                    ; $5a41: $46
    rst $38                                       ; $5a42: $ff
    pop hl                                        ; $5a43: $e1
    ld b, b                                       ; $5a44: $40
    ld hl, sp-$1f                                 ; $5a45: $f8 $e1
    cp a                                          ; $5a47: $bf
    ldh [rSCX], a                                 ; $5a48: $e0 $43
    call nz, $84ad                                ; $5a4a: $c4 $ad $84
    ldh a, [$83]                                  ; $5a4d: $f0 $83
    add hl, bc                                    ; $5a4f: $09
    cp b                                          ; $5a50: $b8
    sbc [hl]                                      ; $5a51: $9e
    jp nz, $15e4                                  ; $5a52: $c2 $e4 $15

    ld b, [hl]                                    ; $5a55: $46
    cp d                                          ; $5a56: $ba
    db $e3                                        ; $5a57: $e3
    sbc [hl]                                      ; $5a58: $9e
    cp h                                          ; $5a59: $bc
    jp $bcd4                                      ; $5a5a: $c3 $d4 $bc


    and l                                         ; $5a5d: $a5
    scf                                           ; $5a5e: $37
    di                                            ; $5a5f: $f3
    add hl, bc                                    ; $5a60: $09
    xor b                                         ; $5a61: $a8
    ld bc, $c29e                                  ; $5a62: $01 $9e $c2
    db $e4                                        ; $5a65: $e4
    cp e                                          ; $5a66: $bb
    db $e4                                        ; $5a67: $e4
    ld a, $e1                                     ; $5a68: $3e $e1
    xor l                                         ; $5a6a: $ad
    adc b                                         ; $5a6b: $88
    ld c, a                                       ; $5a6c: $4f
    or h                                          ; $5a6d: $b4
    ld h, d                                       ; $5a6e: $62
    add c                                         ; $5a6f: $81
    ret z                                         ; $5a70: $c8

    ld h, b                                       ; $5a71: $60
    nop                                           ; $5a72: $00
    sbc b                                         ; $5a73: $98
    add b                                         ; $5a74: $80
    ld [bc], a                                    ; $5a75: $02
    ldh [$bf], a                                  ; $5a76: $e0 $bf
    ld [$c1fd], a                                 ; $5a78: $ea $fd $c1
    xor [hl]                                      ; $5a7b: $ae
    ld h, d                                       ; $5a7c: $62
    cp h                                          ; $5a7d: $bc
    xor c                                         ; $5a7e: $a9
    ld sp, $9189                                  ; $5a7f: $31 $89 $91
    ld h, [hl]                                    ; $5a82: $66
    ld [hl], d                                    ; $5a83: $72
    ret z                                         ; $5a84: $c8

    ld h, c                                       ; $5a85: $61
    sbc a                                         ; $5a86: $9f
    jp z, $80c0                                   ; $5a87: $ca $c0 $80

    db $eb                                        ; $5a8a: $eb
    xor a                                         ; $5a8b: $af
    xor [hl]                                      ; $5a8c: $ae
    sbc [hl]                                      ; $5a8d: $9e
    inc c                                         ; $5a8e: $0c
    xor $20                                       ; $5a8f: $ee $20
    ld h, a                                       ; $5a91: $67
    adc d                                         ; $5a92: $8a
    rst $28                                       ; $5a93: $ef
    add $c8                                       ; $5a94: $c6 $c8
    ld h, b                                       ; $5a96: $60
    add e                                         ; $5a97: $83
    db $ed                                        ; $5a98: $ed
    ld a, [$9ec2]                                 ; $5a99: $fa $c2 $9e
    ld b, e                                       ; $5a9c: $43
    call nz, Call_060_74bc                        ; $5a9d: $c4 $bc $74
    db $f4                                        ; $5aa0: $f4
    ld h, $c3                                     ; $5aa1: $26 $c3
    ld b, [hl]                                    ; $5aa3: $46
    call nz, Call_000_03ae                        ; $5aa4: $c4 $ae $03
    and $45                                       ; $5aa7: $e6 $45
    ld c, b                                       ; $5aa9: $48
    ld c, b                                       ; $5aaa: $48
    ld b, l                                       ; $5aab: $45
    ldh [$fe], a                                  ; $5aac: $e0 $fe
    call z, Call_060_79c2                         ; $5aae: $cc $c2 $79
    ld b, [hl]                                    ; $5ab1: $46
    call nz, $c585                                ; $5ab2: $c4 $85 $c5
    jp nz, Jump_060_52e0                          ; $5ab5: $c2 $e0 $52

    ld h, c                                       ; $5ab8: $61
    ld e, h                                       ; $5ab9: $5c
    ldh [$bf], a                                  ; $5aba: $e0 $bf
    db $e3                                        ; $5abc: $e3
    cp d                                          ; $5abd: $ba
    and d                                         ; $5abe: $a2
    rst $28                                       ; $5abf: $ef
    ld b, c                                       ; $5ac0: $41
    add b                                         ; $5ac1: $80
    or a                                          ; $5ac2: $b7
    ld c, a                                       ; $5ac3: $4f
    ld h, e                                       ; $5ac4: $63
    sbc a                                         ; $5ac5: $9f
    ret nc                                        ; $5ac6: $d0

    xor a                                         ; $5ac7: $af
    db $fc                                        ; $5ac8: $fc
    add $a0                                       ; $5ac9: $c6 $a0
    dec b                                         ; $5acb: $05
    jp nz, $5e51                                  ; $5acc: $c2 $51 $5e

    ld d, d                                       ; $5acf: $52
    ld a, [hl+]                                   ; $5ad0: $2a
    dec l                                         ; $5ad1: $2d
    ld b, a                                       ; $5ad2: $47
    ld h, c                                       ; $5ad3: $61
    ld d, l                                       ; $5ad4: $55
    add hl, sp                                    ; $5ad5: $39
    call nz, $a0ba                                ; $5ad6: $c4 $ba $a0
    cp $76                                        ; $5ad9: $fe $76
    ld c, a                                       ; $5adb: $4f
    ld l, c                                       ; $5adc: $69
    db $d3                                        ; $5add: $d3
    ret nc                                        ; $5ade: $d0

    inc b                                         ; $5adf: $04
    push bc                                       ; $5ae0: $c5
    ld a, a                                       ; $5ae1: $7f
    ld b, l                                       ; $5ae2: $45
    ld e, e                                       ; $5ae3: $5b
    ld a, [hl+]                                   ; $5ae4: $2a
    jr nz, jr_060_5b15                            ; $5ae5: $20 $2e

    ld c, e                                       ; $5ae7: $4b
    ld d, [hl]                                    ; $5ae8: $56
    ld a, $e4                                     ; $5ae9: $3e $e4
    ld [hl], b                                    ; $5aeb: $70
    ei                                            ; $5aec: $fb
    and b                                         ; $5aed: $a0
    rst $28                                       ; $5aee: $ef
    ld b, d                                       ; $5aef: $42
    ld h, $53                                     ; $5af0: $26 $53
    and h                                         ; $5af2: $a4
    ld c, b                                       ; $5af3: $48
    db $d3                                        ; $5af4: $d3
    pop de                                        ; $5af5: $d1
    ret nc                                        ; $5af6: $d0

    inc bc                                        ; $5af7: $03
    db $e3                                        ; $5af8: $e3
    ld a, a                                       ; $5af9: $7f
    ld b, a                                       ; $5afa: $47
    ld d, l                                       ; $5afb: $55
    jr nc, jr_060_5b1e                            ; $5afc: $30 $20

    jr nc, jr_060_5b4a                            ; $5afe: $30 $4a

    ld d, d                                       ; $5b00: $52
    cp $c2                                        ; $5b01: $fe $c2
    add b                                         ; $5b03: $80
    db $ec                                        ; $5b04: $ec
    ret nz                                        ; $5b05: $c0

    cp e                                          ; $5b06: $bb
    and e                                         ; $5b07: $a3
    add h                                         ; $5b08: $84
    or d                                          ; $5b09: $b2
    and h                                         ; $5b0a: $a4
    ld b, [hl]                                    ; $5b0b: $46
    ret                                           ; $5b0c: $c9


    inc hl                                        ; $5b0d: $23
    ld a, l                                       ; $5b0e: $7d
    ldh [$c0], a                                  ; $5b0f: $e0 $c0
    ld [c], a                                     ; $5b11: $e2
    ld d, [hl]                                    ; $5b12: $56
    rrca                                          ; $5b13: $0f
    ld a, [hl+]                                   ; $5b14: $2a

jr_060_5b15:
    ld h, $21                                     ; $5b15: $26 $21
    ld b, b                                       ; $5b17: $40
    cp [hl]                                       ; $5b18: $be
    jp $a033                                      ; $5b19: $c3 $33 $a0


    cp e                                          ; $5b1c: $bb
    and h                                         ; $5b1d: $a4

jr_060_5b1e:
    ld h, $40                                     ; $5b1e: $26 $40
    ldh a, [$37]                                  ; $5b20: $f0 $37
    ld d, a                                       ; $5b22: $57
    ret                                           ; $5b23: $c9


    jr nz, jr_060_5b7f                            ; $5b24: $20 $59

    ld b, c                                       ; $5b26: $41
    cp a                                          ; $5b27: $bf
    pop hl                                        ; $5b28: $e1
    xor [hl]                                      ; $5b29: $ae
    ld b, [hl]                                    ; $5b2a: $46
    ld e, h                                       ; $5b2b: $5c
    ld d, d                                       ; $5b2c: $52
    rlca                                          ; $5b2d: $07
    add hl, sp                                    ; $5b2e: $39
    dec [hl]                                      ; $5b2f: $35
    inc a                                         ; $5b30: $3c
    add b                                         ; $5b31: $80
    db $e4                                        ; $5b32: $e4
    rst $30                                       ; $5b33: $f7
    add c                                         ; $5b34: $81
    ld [hl], a                                    ; $5b35: $77
    add d                                         ; $5b36: $82
    ld a, a                                       ; $5b37: $7f
    ld e, e                                       ; $5b38: $5b
    ret                                           ; $5b39: $c9


    ld hl, $89fc                                  ; $5b3a: $21 $fc $89
    ld hl, $c2fb                                  ; $5b3d: $21 $fb $c2
    ld b, l                                       ; $5b40: $45
    ld b, h                                       ; $5b41: $44
    ld a, [hl-]                                   ; $5b42: $3a
    dec [hl]                                      ; $5b43: $35
    dec [hl]                                      ; $5b44: $35
    add hl, sp                                    ; $5b45: $39
    ld e, $c1                                     ; $5b46: $1e $c1
    push hl                                       ; $5b48: $e5
    xor a                                         ; $5b49: $af

jr_060_5b4a:
    ld b, [hl]                                    ; $5b4a: $46
    ret nc                                        ; $5b4b: $d0

    sbc a                                         ; $5b4c: $9f
    ld l, l                                       ; $5b4d: $6d
    dec h                                         ; $5b4e: $25
    dec hl                                        ; $5b4f: $2b
    ld d, b                                       ; $5b50: $50
    ld d, e                                       ; $5b51: $53
    daa                                           ; $5b52: $27
    ld a, [$4298]                                 ; $5b53: $fa $98 $42
    jp nc, $c102                                  ; $5b56: $d2 $02 $c1

    ld [hl], $b3                                  ; $5b59: $36 $b3
    jp z, Jump_000_3acb                           ; $5b5b: $ca $cb $3a

    inc de                                        ; $5b5e: $13
    ld b, l                                       ; $5b5f: $45
    jp $e202                                      ; $5b60: $c3 $02 $e2


    pop bc                                        ; $5b63: $c1
    ldh [$d3], a                                  ; $5b64: $e0 $d3
    ld a, h                                       ; $5b66: $7c
    ld e, c                                       ; $5b67: $59
    ld d, e                                       ; $5b68: $53
    daa                                           ; $5b69: $27
    adc c                                         ; $5b6a: $89
    ld [hl+], a                                   ; $5b6b: $22
    ld a, [hl]                                    ; $5b6c: $7e
    cp a                                          ; $5b6d: $bf
    add c                                         ; $5b6e: $81
    ld b, b                                       ; $5b6f: $40
    dec [hl]                                      ; $5b70: $35
    or h                                          ; $5b71: $b4
    ret z                                         ; $5b72: $c8

    ret                                           ; $5b73: $c9


    ld a, [hl-]                                   ; $5b74: $3a
    cp a                                          ; $5b75: $bf
    and c                                         ; $5b76: $a1
    add b                                         ; $5b77: $80
    dec [hl]                                      ; $5b78: $35
    add c                                         ; $5b79: $81
    pop bc                                        ; $5b7a: $c1
    pop hl                                        ; $5b7b: $e1
    ld a, h                                       ; $5b7c: $7c
    ld b, l                                       ; $5b7d: $45
    and d                                         ; $5b7e: $a2

jr_060_5b7f:
    add hl, bc                                    ; $5b7f: $09
    ld a, [hl+]                                   ; $5b80: $2a
    inc h                                         ; $5b81: $24
    ld d, e                                       ; $5b82: $53
    daa                                           ; $5b83: $27
    ld c, d                                       ; $5b84: $4a
    ld h, d                                       ; $5b85: $62
    sbc h                                         ; $5b86: $9c
    cp a                                          ; $5b87: $bf
    ld b, [hl]                                    ; $5b88: $46
    add $c7                                       ; $5b89: $c6 $c7
    ld b, l                                       ; $5b8b: $45
    ld a, [hl-]                                   ; $5b8c: $3a
    or l                                          ; $5b8d: $b5
    ld b, b                                       ; $5b8e: $40
    ldh [$ae], a                                  ; $5b8f: $e0 $ae
    add b                                         ; $5b91: $80
    or $e0                                        ; $5b92: $f6 $e0
    pop bc                                        ; $5b94: $c1
    push hl                                       ; $5b95: $e5
    ld a, h                                       ; $5b96: $7c
    ld b, l                                       ; $5b97: $45
    nop                                           ; $5b98: $00
    adc e                                         ; $5b99: $8b
    add sp, $02                                   ; $5b9a: $e8 $02
    ld d, e                                       ; $5b9c: $53
    add hl, hl                                    ; $5b9d: $29
    cp a                                          ; $5b9e: $bf
    add d                                         ; $5b9f: $82
    call nz, $c5ff                                ; $5ba0: $c4 $ff $c5
    ld b, [hl]                                    ; $5ba3: $46
    add hl, sp                                    ; $5ba4: $39
    dec [hl]                                      ; $5ba5: $35
    jp Jump_060_443c                              ; $5ba6: $c3 $3c $44


    xor a                                         ; $5ba9: $af
    ld b, $f6                                     ; $5baa: $06 $f6
    pop hl                                        ; $5bac: $e1
    ret nc                                        ; $5bad: $d0

    pop de                                        ; $5bae: $d1
    add d                                         ; $5baf: $82
    pop hl                                        ; $5bb0: $e1
    dec hl                                        ; $5bb1: $2b
    ld b, $37                                     ; $5bb2: $06 $37
    ld l, d                                       ; $5bb4: $6a
    ld e, $2e                                     ; $5bb5: $1e $2e
    ld b, h                                       ; $5bb7: $44
    ld h, d                                       ; $5bb8: $62
    ld a, $83                                     ; $5bb9: $3e $83
    ld h, c                                       ; $5bbb: $61
    ld b, h                                       ; $5bbc: $44
    inc a                                         ; $5bbd: $3c
    dec [hl]                                      ; $5bbe: $35
    dec [hl]                                      ; $5bbf: $35
    ld b, b                                       ; $5bc0: $40
    ld a, d                                       ; $5bc1: $7a
    ld h, c                                       ; $5bc2: $61
    dec b                                         ; $5bc3: $05
    ldh [$a0], a                                  ; $5bc4: $e0 $a0
    inc sp                                        ; $5bc6: $33
    ld bc, $c162                                  ; $5bc7: $01 $62 $c1
    ld a, h                                       ; $5bca: $7c
    dec de                                        ; $5bcb: $1b
    cp d                                          ; $5bcc: $ba
    pop bc                                        ; $5bcd: $c1
    ld b, h                                       ; $5bce: $44
    ld h, l                                       ; $5bcf: $65
    xor [hl]                                      ; $5bd0: $ae
    rst $38                                       ; $5bd1: $ff
    ret nz                                        ; $5bd2: $c0

    dec [hl]                                      ; $5bd3: $35
    rla                                           ; $5bd4: $17
    inc a                                         ; $5bd5: $3c
    ld b, h                                       ; $5bd6: $44
    ret nz                                        ; $5bd7: $c0

jr_060_5bd8:
    add hl, sp                                    ; $5bd8: $39
    ld h, b                                       ; $5bd9: $60
    jp nc, $0333                                  ; $5bda: $d2 $33 $03

    ret nz                                        ; $5bdd: $c0

    ld b, l                                       ; $5bde: $45
    scf                                           ; $5bdf: $37
    rla                                           ; $5be0: $17
    ld [$c1ba], a                                 ; $5be1: $ea $ba $c1
    sbc [hl]                                      ; $5be4: $9e
    cp a                                          ; $5be5: $bf
    add h                                         ; $5be6: $84
    xor a                                         ; $5be7: $af
    add b                                         ; $5be8: $80
    pop hl                                        ; $5be9: $e1
    ld a, [hl-]                                   ; $5bea: $3a
    ld b, l                                       ; $5beb: $45
    pop bc                                        ; $5bec: $c1
    ret nz                                        ; $5bed: $c0

    ld b, b                                       ; $5bee: $40
    ld h, d                                       ; $5bef: $62
    ld b, d                                       ; $5bf0: $42
    inc l                                         ; $5bf1: $2c
    dec a                                         ; $5bf2: $3d
    ld c, $d9                                     ; $5bf3: $0e $d9
    inc b                                         ; $5bf5: $04
    inc b                                         ; $5bf6: $04
    ld h, d                                       ; $5bf7: $62
    cp a                                          ; $5bf8: $bf
    add [hl]                                      ; $5bf9: $86
    ld b, l                                       ; $5bfa: $45
    ld a, [hl-]                                   ; $5bfb: $3a
    rrca                                          ; $5bfc: $0f
    dec [hl]                                      ; $5bfd: $35
    add hl, sp                                    ; $5bfe: $39
    ld b, [hl]                                    ; $5bff: $46
    jp nz, $a2c6                                  ; $5c00: $c2 $c6 $a2

    ld h, d                                       ; $5c03: $62
    ld c, e                                       ; $5c04: $4b
    dec hl                                        ; $5c05: $2b
    rrca                                          ; $5c06: $0f
    xor [hl]                                      ; $5c07: $ae
    ld b, h                                       ; $5c08: $44
    inc e                                         ; $5c09: $1c
    adc $22                                       ; $5c0a: $ce $22
    cp a                                          ; $5c0c: $bf
    add [hl]                                      ; $5c0d: $86
    ld b, [hl]                                    ; $5c0e: $46
    add hl, sp                                    ; $5c0f: $39
    ld [hl], $42                                  ; $5c10: $36 $42
    call nz, Call_060_43ff                        ; $5c12: $c4 $ff $43
    jr nz, jr_060_5bd8                            ; $5c15: $20 $c1

    db $10                                        ; $5c17: $10
    ld a, d                                       ; $5c18: $7a
    inc d                                         ; $5c19: $14
    push hl                                       ; $5c1a: $e5
    add hl, hl                                    ; $5c1b: $29
    ld bc, $baa3                                  ; $5c1c: $01 $a3 $ba
    ld h, c                                       ; $5c1f: $61
    ld b, l                                       ; $5c20: $45

Call_060_5c21:
    ld b, h                                       ; $5c21: $44
    xor b                                         ; $5c22: $a8
    cp [hl]                                       ; $5c23: $be
    ld c, [hl]                                    ; $5c24: $4e

jr_060_5c25:
    cp d                                          ; $5c25: $ba
    sub e                                         ; $5c26: $93
    ld b, b                                       ; $5c27: $40
    reti                                          ; $5c28: $d9


    ld b, c                                       ; $5c29: $41
    dec a                                         ; $5c2a: $3d
    add b                                         ; $5c2b: $80
    ld bc, $7742                                  ; $5c2c: $01 $42 $77
    ld h, d                                       ; $5c2f: $62
    ld [hl], d                                    ; $5c30: $72
    ld h, c                                       ; $5c31: $61
    db $ed                                        ; $5c32: $ed
    ld h, b                                       ; $5c33: $60
    sbc [hl]                                      ; $5c34: $9e
    ld e, [hl]                                    ; $5c35: $5e
    and h                                         ; $5c36: $a4

jr_060_5c37:
    ld hl, sp+$7a                                 ; $5c37: $f8 $7a
    ld de, $c96b                                  ; $5c39: $11 $6b $c9
    push hl                                       ; $5c3c: $e5
    ld [hl+], a                                   ; $5c3d: $22
    db $d3                                        ; $5c3e: $d3
    ret nc                                        ; $5c3f: $d0

    xor a                                         ; $5c40: $af
    xor [hl]                                      ; $5c41: $ae
    ld b, [hl]                                    ; $5c42: $46
    ld a, a                                       ; $5c43: $7f
    ld b, l                                       ; $5c44: $45
    ld b, e                                       ; $5c45: $43
    xor a                                         ; $5c46: $af
    ld b, e                                       ; $5c47: $43
    ld b, e                                       ; $5c48: $43
    ld b, c                                       ; $5c49: $41
    ld b, e                                       ; $5c4a: $43
    cp c                                          ; $5c4b: $b9
    ld [hl+], a                                   ; $5c4c: $22
    pop bc                                        ; $5c4d: $c1
    xor [hl]                                      ; $5c4e: $ae
    rst $38                                       ; $5c4f: $ff
    ld b, b                                       ; $5c50: $40
    ld b, h                                       ; $5c51: $44
    or a                                          ; $5c52: $b7
    jp $fe23                                      ; $5c53: $c3 $23 $fe


    add e                                         ; $5c56: $83
    inc e                                         ; $5c57: $1c
    inc hl                                        ; $5c58: $23
    jp nc, $bf46                                  ; $5c59: $d2 $46 $bf

    xor a                                         ; $5c5c: $af

jr_060_5c5d:
    ld b, l                                       ; $5c5d: $45
    ld [hl], $3b                                  ; $5c5e: $36 $3b
    dec [hl]                                      ; $5c60: $35
    dec sp                                        ; $5c61: $3b
    db $fd                                        ; $5c62: $fd
    ldh [$36], a                                  ; $5c63: $e0 $36
    ld bc, $0245                                  ; $5c65: $01 $45 $02
    and c                                         ; $5c68: $a1
    call nz, Call_000_3980                        ; $5c69: $c4 $80 $39
    ld b, $05                                     ; $5c6c: $06 $05
    ld d, h                                       ; $5c6e: $54
    add b                                         ; $5c6f: $80
    dec b                                         ; $5c70: $05

jr_060_5c71:
    or [hl]                                       ; $5c71: $b6
    add c                                         ; $5c72: $81
    ret nz                                        ; $5c73: $c0

    jr nz, jr_060_5c25                            ; $5c74: $20 $af

    ld b, h                                       ; $5c76: $44
    inc a                                         ; $5c77: $3c
    and h                                         ; $5c78: $a4
    ld h, h                                       ; $5c79: $64
    rst $38                                       ; $5c7a: $ff
    ldh [$a5], a                                  ; $5c7b: $e0 $a5
    ld a, [hl]                                    ; $5c7d: $7e
    and c                                         ; $5c7e: $a1
    xor [hl]                                      ; $5c7f: $ae
    add b                                         ; $5c80: $80
    call nz, Call_060_5e81                        ; $5c81: $c4 $81 $5e
    and d                                         ; $5c84: $a2
    ld b, $a3                                     ; $5c85: $06 $a3
    cp d                                          ; $5c87: $ba
    or d                                          ; $5c88: $b2
    cp $81                                        ; $5c89: $fe $81
    sbc [hl]                                      ; $5c8b: $9e
    push bc                                       ; $5c8c: $c5
    add b                                         ; $5c8d: $80
    jr nz, jr_060_5cd2                            ; $5c8e: $20 $42

    rst $38                                       ; $5c90: $ff
    dec [hl]                                      ; $5c91: $35
    ld l, c                                       ; $5c92: $69
    and e                                         ; $5c93: $a3
    dec [hl]                                      ; $5c94: $35
    dec [hl]                                      ; $5c95: $35
    and e                                         ; $5c96: $a3
    ld l, d                                       ; $5c97: $6a
    dec [hl]                                      ; $5c98: $35
    ld bc, $3b42                                  ; $5c99: $01 $42 $3b
    jr nz, jr_060_5c5d                            ; $5c9c: $20 $bf

    and b                                         ; $5c9e: $a0
    rla                                           ; $5c9f: $17
    ld c, b                                       ; $5ca0: $48
    inc a                                         ; $5ca1: $3c
    inc de                                        ; $5ca2: $13
    add b                                         ; $5ca3: $80
    dec b                                         ; $5ca4: $05
    cp d                                          ; $5ca5: $ba
    ld b, e                                       ; $5ca6: $43
    ret nz                                        ; $5ca7: $c0

    pop hl                                        ; $5ca8: $e1
    add c                                         ; $5ca9: $81
    dec [hl]                                      ; $5caa: $35
    rst $38                                       ; $5cab: $ff
    ldh [$c0], a                                  ; $5cac: $e0 $c0
    ld [c], a                                     ; $5cae: $e2
    rst $38                                       ; $5caf: $ff
    nop                                           ; $5cb0: $00
    jr nz, jr_060_5c37                            ; $5cb1: $20 $84

    dec a                                         ; $5cb3: $3d
    dec de                                        ; $5cb4: $1b
    jr c, jr_060_5cbe                             ; $5cb5: $38 $07

    db $d3                                        ; $5cb7: $d3
    rst $18                                       ; $5cb8: $df
    ret nc                                        ; $5cb9: $d0

    ld b, h                                       ; $5cba: $44
    inc a                                         ; $5cbb: $3c
    ld l, e                                       ; $5cbc: $6b
    ld [hl], c                                    ; $5cbd: $71

jr_060_5cbe:
    rst $38                                       ; $5cbe: $ff
    ldh [$6d], a                                  ; $5cbf: $e0 $6d
    inc a                                         ; $5cc1: $3c
    ld hl, $4444                                  ; $5cc2: $21 $44 $44
    add b                                         ; $5cc5: $80
    add h                                         ; $5cc6: $84
    ld b, e                                       ; $5cc7: $43
    inc bc                                        ; $5cc8: $03
    cp h                                          ; $5cc9: $bc
    cp c                                          ; $5cca: $b9
    adc d                                         ; $5ccb: $8a
    jp nc, $c7c0                                  ; $5ccc: $d2 $c0 $c7

    add $62                                       ; $5ccf: $c6 $62
    ret c                                         ; $5cd1: $d8

jr_060_5cd2:
    jr nz, @-$77                                  ; $5cd2: $20 $87

    ld a, h                                       ; $5cd4: $7c
    reti                                          ; $5cd5: $d9


    cp [hl]                                       ; $5cd6: $be
    inc b                                         ; $5cd7: $04
    push de                                       ; $5cd8: $d5
    call nc, $807c                                ; $5cd9: $d4 $7c $80
    ld b, l                                       ; $5cdc: $45
    ld b, e                                       ; $5cdd: $43
    inc bc                                        ; $5cde: $03
    ld b, c                                       ; $5cdf: $41
    xor [hl]                                      ; $5ce0: $ae
    ld b, b                                       ; $5ce1: $40
    ret nz                                        ; $5ce2: $c0

    pop bc                                        ; $5ce3: $c1
    db $e3                                        ; $5ce4: $e3
    jr nz, jr_060_5c71                            ; $5ce5: $20 $8a

    cp [hl]                                       ; $5ce7: $be
    ld a, [$4360]                                 ; $5ce8: $fa $60 $43
    dec sp                                        ; $5ceb: $3b
    and b                                         ; $5cec: $a0
    nop                                           ; $5ced: $00
    ld c, e                                       ; $5cee: $4b
    ld h, d                                       ; $5cef: $62
    or h                                          ; $5cf0: $b4
    ld hl, $c6c3                                  ; $5cf1: $21 $c3 $c6
    dec b                                         ; $5cf4: $05
    db $fc                                        ; $5cf5: $fc
    xor [hl]                                      ; $5cf6: $ae
    inc bc                                        ; $5cf7: $03
    sbc $c4                                       ; $5cf8: $de $c4
    cp l                                          ; $5cfa: $bd
    and b                                         ; $5cfb: $a0
    add l                                         ; $5cfc: $85
    xor e                                         ; $5cfd: $ab
    nop                                           ; $5cfe: $00
    ld b, b                                       ; $5cff: $40
    ld [bc], a                                    ; $5d00: $02
    jp c, Jump_060_7447                           ; $5d01: $da $47 $74

    sbc b                                         ; $5d04: $98
    or h                                          ; $5d05: $b4
    ld b, e                                       ; $5d06: $43
    ld a, b                                       ; $5d07: $78
    ld [hl+], a                                   ; $5d08: $22
    or l                                          ; $5d09: $b5
    nop                                           ; $5d0a: $00
    add l                                         ; $5d0b: $85
    and l                                         ; $5d0c: $a5
    ld b, [hl]                                    ; $5d0d: $46
    jp nz, $c200                                  ; $5d0e: $c2 $00 $c2

    sub e                                         ; $5d11: $93
    xor e                                         ; $5d12: $ab
    ld l, l                                       ; $5d13: $6d
    or [hl]                                       ; $5d14: $b6
    and e                                         ; $5d15: $a3
    ld a, [$b581]                                 ; $5d16: $fa $81 $b5
    nop                                           ; $5d19: $00
    add l                                         ; $5d1a: $85
    and l                                         ; $5d1b: $a5
    ld b, [hl]                                    ; $5d1c: $46
    jp nz, $92c2                                  ; $5d1d: $c2 $c2 $92

    jr @+$34                                      ; $5d20: $18 $32

    adc [hl]                                      ; $5d22: $8e
    call nc, Call_000_3d64                        ; $5d23: $d4 $64 $3d
    pop hl                                        ; $5d26: $e1
    ret nc                                        ; $5d27: $d0

    pop de                                        ; $5d28: $d1
    ld b, $61                                     ; $5d29: $06 $61
    res 0, [hl]                                   ; $5d2b: $cb $86
    jp c, $0041                                   ; $5d2d: $da $41 $00

    dec a                                         ; $5d30: $3d
    ld [hl], a                                    ; $5d31: $77
    ld l, c                                       ; $5d32: $69
    ld b, l                                       ; $5d33: $45
    or h                                          ; $5d34: $b4
    ld b, c                                       ; $5d35: $41
    ld a, b                                       ; $5d36: $78
    add e                                         ; $5d37: $83
    ld c, e                                       ; $5d38: $4b
    ld b, d                                       ; $5d39: $42
    jp nc, $fb6e                                  ; $5d3a: $d2 $6e $fb

    ld d, l                                       ; $5d3d: $55
    ldh [rOBP1], a                                ; $5d3e: $e0 $49
    nop                                           ; $5d40: $00
    ld a, b                                       ; $5d41: $78
    add e                                         ; $5d42: $83
    ld c, e                                       ; $5d43: $4b
    ld b, d                                       ; $5d44: $42
    inc l                                         ; $5d45: $2c
    push bc                                       ; $5d46: $c5
    adc a                                         ; $5d47: $8f
    ld d, [hl]                                    ; $5d48: $56
    cp e                                          ; $5d49: $bb
    ld l, d                                       ; $5d4a: $6a
    halt                                          ; $5d4b: $76
    inc b                                         ; $5d4c: $04
    ld d, a                                       ; $5d4d: $57
    and [hl]                                      ; $5d4e: $a6
    add a                                         ; $5d4f: $87
    ld b, h                                       ; $5d50: $44
    nop                                           ; $5d51: $00
    call nz, Call_000_32bb                        ; $5d52: $c4 $bb $32
    ld d, c                                       ; $5d55: $51
    ld l, $21                                     ; $5d56: $2e $21
    xor [hl]                                      ; $5d58: $ae
    ld h, b                                       ; $5d59: $60
    add a                                         ; $5d5a: $87
    ld b, l                                       ; $5d5b: $45
    inc c                                         ; $5d5c: $0c
    ld h, d                                       ; $5d5d: $62
    add a                                         ; $5d5e: $87
    add hl, hl                                    ; $5d5f: $29
    cp d                                          ; $5d60: $ba
    db $fd                                        ; $5d61: $fd
    nop                                           ; $5d62: $00
    jr nc, @-$7a                                  ; $5d63: $30 $84

    add a                                         ; $5d65: $87
    ld c, d                                       ; $5d66: $4a
    add a                                         ; $5d67: $87
    dec hl                                        ; $5d68: $2b
    ei                                            ; $5d69: $fb
    jr c, jr_060_5d9a                             ; $5d6a: $38 $2e

    inc h                                         ; $5d6c: $24
    res 4, b                                      ; $5d6d: $cb $a0
    ld c, a                                       ; $5d6f: $4f
    ld l, d                                       ; $5d70: $6a
    add c                                         ; $5d71: $81
    sbc b                                         ; $5d72: $98
    nop                                           ; $5d73: $00
    dec sp                                        ; $5d74: $3b
    ld h, a                                       ; $5d75: $67
    or a                                          ; $5d76: $b7
    ld h, h                                       ; $5d77: $64
    ld l, $21                                     ; $5d78: $2e $21
    rla                                           ; $5d7a: $17
    daa                                           ; $5d7b: $27
    add [hl]                                      ; $5d7c: $86
    or c                                          ; $5d7d: $b1
    ld sp, hl                                     ; $5d7e: $f9
    ld d, h                                       ; $5d7f: $54
    push de                                       ; $5d80: $d5
    jr z, jr_060_5d94                             ; $5d81: $28 $11

    add b                                         ; $5d83: $80
    nop                                           ; $5d84: $00
    db $e3                                        ; $5d85: $e3
    ld b, h                                       ; $5d86: $44
    ld h, d                                       ; $5d87: $62
    ld h, e                                       ; $5d88: $63
    add b                                         ; $5d89: $80
    sbc d                                         ; $5d8a: $9a
    ld hl, sp+$05                                 ; $5d8b: $f8 $05
    db $db                                        ; $5d8d: $db
    xor l                                         ; $5d8e: $ad
    add hl, hl                                    ; $5d8f: $29
    ld [bc], a                                    ; $5d90: $02
    add b                                         ; $5d91: $80
    dec h                                         ; $5d92: $25
    ld a, d                                       ; $5d93: $7a

jr_060_5d94:
    rst $18                                       ; $5d94: $df
    nop                                           ; $5d95: $00
    ld l, e                                       ; $5d96: $6b
    ld c, l                                       ; $5d97: $4d
    sub e                                         ; $5d98: $93
    inc hl                                        ; $5d99: $23

jr_060_5d9a:
    ld b, [hl]                                    ; $5d9a: $46
    inc b                                         ; $5d9b: $04
    ld a, $9c                                     ; $5d9c: $3e $9c
    ld l, d                                       ; $5d9e: $6a
    jr jr_060_5daa                                ; $5d9f: $18 $09

    sub d                                         ; $5da1: $92
    nop                                           ; $5da2: $00
    nop                                           ; $5da3: $00
    nop                                           ; $5da4: $00
    pop bc                                        ; $5da5: $c1
    nop                                           ; $5da6: $00
    rst $38                                       ; $5da7: $ff
    rst $38                                       ; $5da8: $ff
    rst $38                                       ; $5da9: $ff

jr_060_5daa:
    rst $38                                       ; $5daa: $ff
    rst $38                                       ; $5dab: $ff
    rst $38                                       ; $5dac: $ff
    rst $38                                       ; $5dad: $ff
    rst $38                                       ; $5dae: $ff
    rst $38                                       ; $5daf: $ff
    rst $38                                       ; $5db0: $ff
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    ld bc, $fe80                                  ; $5db3: $01 $80 $fe
    ldh [rIE], a                                  ; $5db6: $e0 $ff
    rst $38                                       ; $5db8: $ff
    rst $38                                       ; $5db9: $ff
    rst $38                                       ; $5dba: $ff
    rst $38                                       ; $5dbb: $ff
    add sp, $00                                   ; $5dbc: $e8 $00
    nop                                           ; $5dbe: $00
    nop                                           ; $5dbf: $00
    ld [bc], a                                    ; $5dc0: $02
    nop                                           ; $5dc1: $00
    inc hl                                        ; $5dc2: $23
    ld c, $02                                     ; $5dc3: $0e $02
    ld bc, $0f1c                                  ; $5dc5: $01 $1c $0f
    ld [bc], a                                    ; $5dc8: $02
    ld [bc], a                                    ; $5dc9: $02
    inc h                                         ; $5dca: $24
    rrca                                          ; $5dcb: $0f
    ld [bc], a                                    ; $5dcc: $02
    inc bc                                        ; $5dcd: $03
    ld a, [de]                                    ; $5dce: $1a
    db $10                                        ; $5dcf: $10
    ld [bc], a                                    ; $5dd0: $02
    inc b                                         ; $5dd1: $04
    ld [hl+], a                                   ; $5dd2: $22
    db $10                                        ; $5dd3: $10
    ld [bc], a                                    ; $5dd4: $02
    dec b                                         ; $5dd5: $05
    daa                                           ; $5dd6: $27
    inc de                                        ; $5dd7: $13
    ld [bc], a                                    ; $5dd8: $02
    ld b, $28                                     ; $5dd9: $06 $28
    inc d                                         ; $5ddb: $14
    ld [bc], a                                    ; $5ddc: $02
    rlca                                          ; $5ddd: $07
    dec d                                         ; $5dde: $15
    ld d, $02                                     ; $5ddf: $16 $02
    ld [$1714], sp                                ; $5de1: $08 $14 $17
    ld [bc], a                                    ; $5de4: $02
    add hl, bc                                    ; $5de5: $09
    add hl, hl                                    ; $5de6: $29
    rla                                           ; $5de7: $17
    ld [bc], a                                    ; $5de8: $02
    ld a, [bc]                                    ; $5de9: $0a
    ld d, $18                                     ; $5dea: $16 $18
    ld [bc], a                                    ; $5dec: $02
    dec bc                                        ; $5ded: $0b
    add hl, hl                                    ; $5dee: $29
    ld a, [de]                                    ; $5def: $1a
    ld [bc], a                                    ; $5df0: $02
    inc c                                         ; $5df1: $0c
    dec de                                        ; $5df2: $1b
    inc e                                         ; $5df3: $1c
    ld [bc], a                                    ; $5df4: $02
    dec c                                         ; $5df5: $0d
    dec hl                                        ; $5df6: $2b
    inc e                                         ; $5df7: $1c
    ld [bc], a                                    ; $5df8: $02
    ld c, $2a                                     ; $5df9: $0e $2a
    dec e                                         ; $5dfb: $1d
    ld [bc], a                                    ; $5dfc: $02
    rrca                                          ; $5dfd: $0f
    daa                                           ; $5dfe: $27
    ld e, $02                                     ; $5dff: $1e $02
    db $10                                        ; $5e01: $10
    inc hl                                        ; $5e02: $23
    jr nz, @+$04                                  ; $5e03: $20 $02

    ld de, $2218                                  ; $5e05: $11 $18 $22
    ld [bc], a                                    ; $5e08: $02
    ld [de], a                                    ; $5e09: $12
    ld d, $23                                     ; $5e0a: $16 $23
    ld [bc], a                                    ; $5e0c: $02
    inc de                                        ; $5e0d: $13
    inc e                                         ; $5e0e: $1c
    inc hl                                        ; $5e0f: $23
    ld [bc], a                                    ; $5e10: $02
    inc d                                         ; $5e11: $14
    dec d                                         ; $5e12: $15
    inc h                                         ; $5e13: $24
    ld [bc], a                                    ; $5e14: $02
    dec d                                         ; $5e15: $15
    rla                                           ; $5e16: $17
    dec h                                         ; $5e17: $25
    ld [bc], a                                    ; $5e18: $02
    ld d, $25                                     ; $5e19: $16 $25
    dec h                                         ; $5e1b: $25
    ld [bc], a                                    ; $5e1c: $02
    rla                                           ; $5e1d: $17
    dec de                                        ; $5e1e: $1b
    daa                                           ; $5e1f: $27
    ld [bc], a                                    ; $5e20: $02
    jr jr_060_5e4a                                ; $5e21: $18 $27

    daa                                           ; $5e23: $27
    ld [bc], a                                    ; $5e24: $02
    add hl, de                                    ; $5e25: $19
    add hl, de                                    ; $5e26: $19
    jr z, @+$04                                   ; $5e27: $28 $02

    ld a, [de]                                    ; $5e29: $1a
    ld e, $28                                     ; $5e2a: $1e $28
    ld [bc], a                                    ; $5e2c: $02
    dec de                                        ; $5e2d: $1b
    inc hl                                        ; $5e2e: $23
    jr z, jr_060_5e33                             ; $5e2f: $28 $02

    inc e                                         ; $5e31: $1c
    add hl, hl                                    ; $5e32: $29

jr_060_5e33:
    jr z, jr_060_5e37                             ; $5e33: $28 $02

    dec e                                         ; $5e35: $1d
    ld a, [de]                                    ; $5e36: $1a

jr_060_5e37:
    add hl, hl                                    ; $5e37: $29
    ld [bc], a                                    ; $5e38: $02
    ld e, $28                                     ; $5e39: $1e $28
    add hl, hl                                    ; $5e3b: $29
    ld [bc], a                                    ; $5e3c: $02

Jump_060_5e3d:
    rra                                           ; $5e3d: $1f
    dec h                                         ; $5e3e: $25
    ld a, [hl+]                                   ; $5e3f: $2a
    ld [bc], a                                    ; $5e40: $02
    jr nz, jr_060_5e6a                            ; $5e41: $20 $27

    dec hl                                        ; $5e43: $2b
    ld [bc], a                                    ; $5e44: $02
    ld hl, $301f                                  ; $5e45: $21 $1f $30
    ld [bc], a                                    ; $5e48: $02
    ld [hl+], a                                   ; $5e49: $22

jr_060_5e4a:
    inc e                                         ; $5e4a: $1c
    ld sp, $2302                                  ; $5e4b: $31 $02 $23
    ld [hl+], a                                   ; $5e4e: $22
    ld sp, $2402                                  ; $5e4f: $31 $02 $24
    ld e, $32                                     ; $5e52: $1e $32
    ld [bc], a                                    ; $5e54: $02
    dec h                                         ; $5e55: $25
    inc h                                         ; $5e56: $24
    ld [hl-], a                                   ; $5e57: $32
    ld [bc], a                                    ; $5e58: $02
    ld h, $20                                     ; $5e59: $26 $20
    inc sp                                        ; $5e5b: $33
    ld [bc], a                                    ; $5e5c: $02
    daa                                           ; $5e5d: $27
    inc hl                                        ; $5e5e: $23
    inc sp                                        ; $5e5f: $33
    ld [bc], a                                    ; $5e60: $02
    jr z, jr_060_5e82                             ; $5e61: $28 $1f

    inc [hl]                                      ; $5e63: $34
    rst $38                                       ; $5e64: $ff
    rst $38                                       ; $5e65: $ff
    rst $38                                       ; $5e66: $ff
    ld l, a                                       ; $5e67: $6f
    ld e, [hl]                                    ; $5e68: $5e
    xor [hl]                                      ; $5e69: $ae

jr_060_5e6a:
    ld h, b                                       ; $5e6a: $60
    add a                                         ; $5e6b: $87
    ld h, e                                       ; $5e6c: $63
    and d                                         ; $5e6d: $a2
    ld h, e                                       ; $5e6e: $63
    ld bc, $ff0d                                  ; $5e6f: $01 $0d $ff
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
    rst $38                                       ; $5e7c: $ff
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    ldh [rIE], a                                  ; $5e7f: $e0 $ff

Call_060_5e81:
    rst $38                                       ; $5e81: $ff

jr_060_5e82:
    rst $38                                       ; $5e82: $ff
    rst $38                                       ; $5e83: $ff
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    cp $2d                                        ; $5e89: $fe $2d
    ld c, $0e                                     ; $5e8b: $0e $0e
    jp $2d0e                                      ; $5e8d: $c3 $0e $2d


    ld sp, hl                                     ; $5e90: $f9
    and $ff                                       ; $5e91: $e6 $ff
    rst $38                                       ; $5e93: $ff
    xor $ed                                       ; $5e94: $ee $ed
    pop bc                                        ; $5e96: $c1
    ldh [$0e], a                                  ; $5e97: $e0 $0e
    ld c, $00                                     ; $5e99: $0e $00
    ld sp, hl                                     ; $5e9b: $f9
    and $ff                                       ; $5e9c: $e6 $ff
    rst $38                                       ; $5e9e: $ff
    ret nz                                        ; $5e9f: $c0

    db $fd                                        ; $5ea0: $fd
    ld [hl], a                                    ; $5ea1: $77
    rst $38                                       ; $5ea2: $ff
    ld b, [hl]                                    ; $5ea3: $46
    db $ec                                        ; $5ea4: $ec
    ld [hl], b                                    ; $5ea5: $70
    di                                            ; $5ea6: $f3
    rst $38                                       ; $5ea7: $ff
    rst $38                                       ; $5ea8: $ff
    sub $e8                                       ; $5ea9: $d6 $e8
    nop                                           ; $5eab: $00
    rst $08                                       ; $5eac: $cf
    db $e3                                        ; $5ead: $e3
    ld a, [$c0e5]                                 ; $5eae: $fa $e5 $c0
    rst $38                                       ; $5eb1: $ff
    ret nz                                        ; $5eb2: $c0

    ld sp, hl                                     ; $5eb3: $f9
    ld a, $ff                                     ; $5eb4: $3e $ff
    ld [hl], l                                    ; $5eb6: $75
    rst $10                                       ; $5eb7: $d7
    ld a, b                                       ; $5eb8: $78
    ret nz                                        ; $5eb9: $c0

    or h                                          ; $5eba: $b4
    ret nz                                        ; $5ebb: $c0

    ret c                                         ; $5ebc: $d8

    ld a, [hl]                                    ; $5ebd: $7e
    rst $38                                       ; $5ebe: $ff
    ld c, c                                       ; $5ebf: $49
    rst $00                                       ; $5ec0: $c7
    rst $10                                       ; $5ec1: $d7
    db $e3                                        ; $5ec2: $e3
    ld c, l                                       ; $5ec3: $4d
    ld c, l                                       ; $5ec4: $4d
    sub b                                         ; $5ec5: $90
    pop hl                                        ; $5ec6: $e1
    ld l, l                                       ; $5ec7: $6d
    dec c                                         ; $5ec8: $0d
    ldh a, [$f9]                                  ; $5ec9: $f0 $f9
    ldh [$c0], a                                  ; $5ecb: $e0 $c0
    rst $38                                       ; $5ecd: $ff
    ld c, c                                       ; $5ece: $49
    call z, $e0c8                                 ; $5ecf: $cc $c8 $e0
    dec bc                                        ; $5ed2: $0b
    dec c                                         ; $5ed3: $0d
    dec bc                                        ; $5ed4: $0b
    ld c, l                                       ; $5ed5: $4d
    jp Jump_060_4d4d                              ; $5ed6: $c3 $4d $4d


    ld sp, hl                                     ; $5ed9: $f9
    ldh [$bf], a                                  ; $5eda: $e0 $bf
    pop hl                                        ; $5edc: $e1
    rst $38                                       ; $5edd: $ff
    rst $38                                       ; $5ede: $ff
    sbc c                                         ; $5edf: $99
    call z, $0d6d                                 ; $5ee0: $cc $6d $0d
    ld [de], a                                    ; $5ee3: $12
    rst $00                                       ; $5ee4: $c7
    ldh [$0b], a                                  ; $5ee5: $e0 $0b
    rst $38                                       ; $5ee7: $ff
    ldh [$f8], a                                  ; $5ee8: $e0 $f8
    ldh [$0b], a                                  ; $5eea: $e0 $0b
    cp a                                          ; $5eec: $bf
    rst $38                                       ; $5eed: $ff
    rst $28                                       ; $5eee: $ef
    xor $82                                       ; $5eef: $ee $82
    ldh [$0c], a                                  ; $5ef1: $e0 $0c
    push bc                                       ; $5ef3: $c5
    ld [c], a                                     ; $5ef4: $e2
    ld hl, sp-$1f                                 ; $5ef5: $f8 $e1
    dec bc                                        ; $5ef7: $0b
    dec bc                                        ; $5ef8: $0b
    ret nz                                        ; $5ef9: $c0

    ld [c], a                                     ; $5efa: $e2
    ld b, c                                       ; $5efb: $41
    rst $38                                       ; $5efc: $ff
    ret nz                                        ; $5efd: $c0

    jp hl                                         ; $5efe: $e9


    rst $38                                       ; $5eff: $ff
    ld [c], a                                     ; $5f00: $e2
    nop                                           ; $5f01: $00
    ld sp, hl                                     ; $5f02: $f9
    db $e4                                        ; $5f03: $e4
    ld a, a                                       ; $5f04: $7f
    db $e3                                        ; $5f05: $e3
    ret nz                                        ; $5f06: $c0

    rst $38                                       ; $5f07: $ff
    ld [bc], a                                    ; $5f08: $02
    and [hl]                                      ; $5f09: $a6
    ld [bc], a                                    ; $5f0a: $02
    ldh [rIE], a                                  ; $5f0b: $e0 $ff
    ld [$c5fd], a                                 ; $5f0d: $ea $fd $c5
    dec sp                                        ; $5f10: $3b
    rst $18                                       ; $5f11: $df
    nop                                           ; $5f12: $00
    db $e4                                        ; $5f13: $e4
    db $e3                                        ; $5f14: $e3
    pop bc                                        ; $5f15: $c1
    jp hl                                         ; $5f16: $e9


    ld a, [$adc1]                                 ; $5f17: $fa $c1 $ad
    pop hl                                        ; $5f1a: $e1
    cp c                                          ; $5f1b: $b9
    cp a                                          ; $5f1c: $bf
    jp nz, Jump_000_3cec                          ; $5f1d: $c2 $ec $3c

    jp hl                                         ; $5f20: $e9


    ret nz                                        ; $5f21: $c0

    rst $38                                       ; $5f22: $ff
    inc e                                         ; $5f23: $1c
    add e                                         ; $5f24: $83
    add sp, $03                                   ; $5f25: $e8 $03
    rst $20                                       ; $5f27: $e7
    dec hl                                        ; $5f28: $2b
    ld a, [bc]                                    ; $5f29: $0a
    ld a, [hl+]                                   ; $5f2a: $2a
    cp $c8                                        ; $5f2b: $fe $c8
    push bc                                       ; $5f2d: $c5
    rst $38                                       ; $5f2e: $ff
    ld b, [hl]                                    ; $5f2f: $46
    jp $4e38                                      ; $5f30: $c3 $38 $4e


    ld [c], a                                     ; $5f33: $e2
    ld b, h                                       ; $5f34: $44
    ret nz                                        ; $5f35: $c0

    jp nz, Jump_000_0ae0                          ; $5f36: $c2 $e0 $0a

    ld a, [bc]                                    ; $5f39: $0a
    ld a, [bc]                                    ; $5f3a: $0a
    cp $c7                                        ; $5f3b: $fe $c7
    ret nz                                        ; $5f3d: $c0

    rst $38                                       ; $5f3e: $ff
    jp c, $a18a                                   ; $5f3f: $da $8a $a1

    dec l                                         ; $5f42: $2d
    ld c, c                                       ; $5f43: $49
    add $0a                                       ; $5f44: $c6 $0a
    ld c, d                                       ; $5f46: $4a
    add d                                         ; $5f47: $82
    ldh [$0a], a                                  ; $5f48: $e0 $0a
    ld c, d                                       ; $5f4a: $4a
    ld d, b                                       ; $5f4b: $50
    halt                                          ; $5f4c: $76
    call nz, $bffb                                ; $5f4d: $c4 $fb $bf
    cp a                                          ; $5f50: $bf
    push hl                                       ; $5f51: $e5
    ld c, c                                       ; $5f52: $49
    push bc                                       ; $5f53: $c5
    ld l, e                                       ; $5f54: $6b
    add h                                         ; $5f55: $84
    pop hl                                        ; $5f56: $e1
    ld c, d                                       ; $5f57: $4a
    ret nz                                        ; $5f58: $c0

    ldh [$a8], a                                  ; $5f59: $e0 $a8

jr_060_5f5b:
    ld [hl-], a                                   ; $5f5b: $32
    jp $ffc0                                      ; $5f5c: $c3 $c0 $ff


    ld a, [hl]                                    ; $5f5f: $7e
    push hl                                       ; $5f60: $e5
    dec l                                         ; $5f61: $2d
    ld [bc], a                                    ; $5f62: $02
    jp nz, $852b                                  ; $5f63: $c2 $2b $85

    pop hl                                        ; $5f66: $e1
    dec hl                                        ; $5f67: $2b
    add a                                         ; $5f68: $87
    ld c, d                                       ; $5f69: $4a
    ld a, [hl+]                                   ; $5f6a: $2a
    ld c, e                                       ; $5f6b: $4b
    cp c                                          ; $5f6c: $b9
    and h                                         ; $5f6d: $a4
    ret nz                                        ; $5f6e: $c0

    rst $38                                       ; $5f6f: $ff
    ld a, l                                       ; $5f70: $7d
    add sp, -$7f                                  ; $5f71: $e8 $81
    pop hl                                        ; $5f73: $e1
    ld c, d                                       ; $5f74: $4a
    rra                                           ; $5f75: $1f
    ld c, d                                       ; $5f76: $4a
    ld c, e                                       ; $5f77: $4b
    ld c, e                                       ; $5f78: $4b
    ld l, e                                       ; $5f79: $6b
    dec bc                                        ; $5f7a: $0b
    cp [hl]                                       ; $5f7b: $be
    jp $a034                                      ; $5f7c: $c3 $34 $a0


    ccf                                           ; $5f7f: $3f
    rst $38                                       ; $5f80: $ff
    ld a, $bf                                     ; $5f81: $3e $bf
    ld [$2b0d], a                                 ; $5f83: $ea $0d $2b
    ld a, [hl+]                                   ; $5f86: $2a
    ld a, [hl+]                                   ; $5f87: $2a
    dec hl                                        ; $5f88: $2b
    add b                                         ; $5f89: $80
    db $e3                                        ; $5f8a: $e3
    cp $df                                        ; $5f8b: $fe $df
    ld a, [hl]                                    ; $5f8d: $7e
    cp d                                          ; $5f8e: $ba
    rst $08                                       ; $5f8f: $cf
    dec hl                                        ; $5f90: $2b
    dec c                                         ; $5f91: $0d
    dec hl                                        ; $5f92: $2b
    ld l, e                                       ; $5f93: $6b
    dec hl                                        ; $5f94: $2b
    dec hl                                        ; $5f95: $2b
    cp [hl]                                       ; $5f96: $be
    add b                                         ; $5f97: $80
    jr nz, jr_060_5f5b                            ; $5f98: $20 $c1

    push hl                                       ; $5f9a: $e5
    xor a                                         ; $5f9b: $af
    add b                                         ; $5f9c: $80
    ld h, l                                       ; $5f9d: $65
    ret nz                                        ; $5f9e: $c0

    rst $38                                       ; $5f9f: $ff
    rst $38                                       ; $5fa0: $ff
    ld a, $a4                                     ; $5fa1: $3e $a4
    dec hl                                        ; $5fa3: $2b
    rst $38                                       ; $5fa4: $ff
    ldh [$bc], a                                  ; $5fa5: $e0 $bc
    xor c                                         ; $5fa7: $a9
    inc b                                         ; $5fa8: $04
    pop bc                                        ; $5fa9: $c1
    rst $38                                       ; $5faa: $ff
    ret nz                                        ; $5fab: $c0

    di                                            ; $5fac: $f3
    ld c, e                                       ; $5fad: $4b
    ld b, c                                       ; $5fae: $41
    pop hl                                        ; $5faf: $e1
    inc a                                         ; $5fb0: $3c
    and d                                         ; $5fb1: $a2
    pop bc                                        ; $5fb2: $c1
    rst $38                                       ; $5fb3: $ff
    cp $89                                        ; $5fb4: $fe $89
    add b                                         ; $5fb6: $80
    ldh [$03], a                                  ; $5fb7: $e0 $03
    ld l, e                                       ; $5fb9: $6b
    ld l, e                                       ; $5fba: $6b
    ld b, c                                       ; $5fbb: $41
    pop hl                                        ; $5fbc: $e1
    ld [hl], l                                    ; $5fbd: $75
    add l                                         ; $5fbe: $85
    pop bc                                        ; $5fbf: $c1
    rst $38                                       ; $5fc0: $ff
    cp e                                          ; $5fc1: $bb
    xor b                                         ; $5fc2: $a8
    pop bc                                        ; $5fc3: $c1
    pop hl                                        ; $5fc4: $e1
    cp a                                          ; $5fc5: $bf
    ldh [rP1], a                                  ; $5fc6: $e0 $00
    ld a, $a0                                     ; $5fc8: $3e $a0
    nop                                           ; $5fca: $00
    and l                                         ; $5fcb: $a5
    pop bc                                        ; $5fcc: $c1
    rst $38                                       ; $5fcd: $ff
    add e                                         ; $5fce: $83
    jp hl                                         ; $5fcf: $e9


    ld bc, $c1e2                                  ; $5fd0: $01 $e2 $c1
    pop bc                                        ; $5fd3: $c1
    cp [hl]                                       ; $5fd4: $be
    pop bc                                        ; $5fd5: $c1
    add e                                         ; $5fd6: $83
    pop hl                                        ; $5fd7: $e1
    ld bc, $ca4d                                  ; $5fd8: $01 $4d $ca
    rst $38                                       ; $5fdb: $ff
    cp a                                          ; $5fdc: $bf
    adc b                                         ; $5fdd: $88
    ret nz                                        ; $5fde: $c0

    ld [c], a                                     ; $5fdf: $e2
    cp l                                          ; $5fe0: $bd
    ret nz                                        ; $5fe1: $c0

    ret nz                                        ; $5fe2: $c0

    push hl                                       ; $5fe3: $e5
    ld b, a                                       ; $5fe4: $47
    rst $18                                       ; $5fe5: $df
    db $ec                                        ; $5fe6: $ec
    db $eb                                        ; $5fe7: $eb
    nop                                           ; $5fe8: $00
    ld b, d                                       ; $5fe9: $42
    ld [c], a                                     ; $5fea: $e2
    ret nz                                        ; $5feb: $c0

    ld [c], a                                     ; $5fec: $e2
    pop bc                                        ; $5fed: $c1
    jp nz, $ffc0                                  ; $5fee: $c2 $c0 $ff

    pop bc                                        ; $5ff1: $c1
    db $ec                                        ; $5ff2: $ec
    ld b, c                                       ; $5ff3: $41
    db $e4                                        ; $5ff4: $e4
    cp a                                          ; $5ff5: $bf
    ret nz                                        ; $5ff6: $c0

    jp Jump_000_18a0                              ; $5ff7: $c3 $a0 $18


    add l                                         ; $5ffa: $85
    cp a                                          ; $5ffb: $bf
    call nz, $01b0                                ; $5ffc: $c4 $b0 $01
    db $e3                                        ; $5fff: $e3
    ld l, e                                       ; $6000: $6b

Call_060_6001:
    ld l, e                                       ; $6001: $6b
    ret nz                                        ; $6002: $c0

    db $e3                                        ; $6003: $e3
    cp a                                          ; $6004: $bf
    ldh [$be], a                                  ; $6005: $e0 $be
    rst $38                                       ; $6007: $ff
    ld [bc], a                                    ; $6008: $02
    add e                                         ; $6009: $83
    xor c                                         ; $600a: $a9
    dec bc                                        ; $600b: $0b
    ld bc, $c1e3                                  ; $600c: $01 $e3 $c1
    pop hl                                        ; $600f: $e1
    ld b, h                                       ; $6010: $44
    cp a                                          ; $6011: $bf
    dec a                                         ; $6012: $3d
    sub d                                         ; $6013: $92
    ld a, l                                       ; $6014: $7d
    pop bc                                        ; $6015: $c1
    rst $38                                       ; $6016: $ff
    inc h                                         ; $6017: $24
    ld [$22fb], sp                                ; $6018: $08 $fb $22
    ret nz                                        ; $601b: $c0

    rst $38                                       ; $601c: $ff
    cp e                                          ; $601d: $bb
    ld l, e                                       ; $601e: $6b
    dec c                                         ; $601f: $0d
    dec b                                         ; $6020: $05
    add $02                                       ; $6021: $c6 $02
    and e                                         ; $6023: $a3
    ret nz                                        ; $6024: $c0

    rst $38                                       ; $6025: $ff
    cp l                                          ; $6026: $bd
    call Call_000_0400                            ; $6027: $cd $00 $04
    ld b, h                                       ; $602a: $44
    cp [hl]                                       ; $602b: $be
    and d                                         ; $602c: $a2
    add hl, hl                                    ; $602d: $29
    ld h, d                                       ; $602e: $62
    rst $38                                       ; $602f: $ff
    rst $38                                       ; $6030: $ff
    ret nz                                        ; $6031: $c0

    add hl, hl                                    ; $6032: $29
    ret nz                                        ; $6033: $c0

    jp hl                                         ; $6034: $e9


    pop bc                                        ; $6035: $c1
    rst $38                                       ; $6036: $ff
    ret nz                                        ; $6037: $c0

    ld a, [c]                                     ; $6038: $f2
    nop                                           ; $6039: $00
    adc e                                         ; $603a: $8b
    ld h, c                                       ; $603b: $61
    ld a, b                                       ; $603c: $78
    inc hl                                        ; $603d: $23
    ld b, d                                       ; $603e: $42
    rst $38                                       ; $603f: $ff
    nop                                           ; $6040: $00
    adc [hl]                                      ; $6041: $8e
    ld b, b                                       ; $6042: $40
    push hl                                       ; $6043: $e5
    ld a, a                                       ; $6044: $7f
    cp a                                          ; $6045: $bf
    inc a                                         ; $6046: $3c
    push de                                       ; $6047: $d5
    nop                                           ; $6048: $00
    push hl                                       ; $6049: $e5
    inc b                                         ; $604a: $04
    add e                                         ; $604b: $83
    sbc a                                         ; $604c: $9f
    db $fd                                        ; $604d: $fd
    ld de, $046b                                  ; $604e: $11 $6b $04
    ld h, b                                       ; $6051: $60
    ld a, $80                                     ; $6052: $3e $80
    cp l                                          ; $6054: $bd
    and c                                         ; $6055: $a1
    pop bc                                        ; $6056: $c1
    rst $38                                       ; $6057: $ff
    rst $38                                       ; $6058: $ff
    ld [hl], c                                    ; $6059: $71
    rrca                                          ; $605a: $0f
    ld l, e                                       ; $605b: $6b
    ld l, e                                       ; $605c: $6b
    ld l, e                                       ; $605d: $6b
    dec c                                         ; $605e: $0d
    db $fc                                        ; $605f: $fc
    ldh [$c1], a                                  ; $6060: $e0 $c1
    rst $38                                       ; $6062: $ff
    dec sp                                        ; $6063: $3b
    or a                                          ; $6064: $b7
    ld b, a                                       ; $6065: $47
    ld e, a                                       ; $6066: $5f
    nop                                           ; $6067: $00
    ld a, b                                       ; $6068: $78
    add hl, sp                                    ; $6069: $39
    ld a, [hl-]                                   ; $606a: $3a
    add e                                         ; $606b: $83
    add e                                         ; $606c: $83
    rst $18                                       ; $606d: $df
    ld a, l                                       ; $606e: $7d
    ld e, b                                       ; $606f: $58
    dec sp                                        ; $6070: $3b
    and c                                         ; $6071: $a1
    ret nz                                        ; $6072: $c0

    rst $38                                       ; $6073: $ff
    inc a                                         ; $6074: $3c
    ld d, a                                       ; $6075: $57
    ret nz                                        ; $6076: $c0

    ld [c], a                                     ; $6077: $e2
    nop                                           ; $6078: $00
    ld bc, $3dff                                  ; $6079: $01 $ff $3d
    ld hl, sp-$3f                                 ; $607c: $f8 $c1
    rst $38                                       ; $607e: $ff
    ld [hl], h                                    ; $607f: $74
    ld a, [de]                                    ; $6080: $1a
    rlca                                          ; $6081: $07
    ld a, a                                       ; $6082: $7f
    ld a, b                                       ; $6083: $78
    ld e, e                                       ; $6084: $5b
    call c, $ffff                                 ; $6085: $dc $ff $ff
    rst $38                                       ; $6088: $ff
    nop                                           ; $6089: $00
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
    rst $38                                       ; $6094: $ff
    rst $38                                       ; $6095: $ff
    rst $38                                       ; $6096: $ff
    rst $38                                       ; $6097: $ff
    rst $38                                       ; $6098: $ff
    rst $38                                       ; $6099: $ff
    nop                                           ; $609a: $00
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
    rst $38                                       ; $60a5: $ff
    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    rst $38                                       ; $60a8: $ff
    rst $38                                       ; $60a9: $ff
    ld a, [$0000]                                 ; $60aa: $fa $00 $00
    nop                                           ; $60ad: $00
    ld bc, $ffa0                                  ; $60ae: $01 $a0 $ff
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    rst $38                                       ; $60b5: $ff
    rst $38                                       ; $60b6: $ff
    rst $38                                       ; $60b7: $ff
    rst $38                                       ; $60b8: $ff
    rst $38                                       ; $60b9: $ff
    rst $38                                       ; $60ba: $ff
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    ldh [rIE], a                                  ; $60be: $e0 $ff
    rst $38                                       ; $60c0: $ff
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff
    rst $38                                       ; $60c7: $ff
    rst $38                                       ; $60c8: $ff
    jp c, $dcdb                                   ; $60c9: $da $db $dc

    ld hl, sp-$07                                 ; $60cc: $f8 $f9
    add sp, -$01                                  ; $60ce: $e8 $ff
    rst $38                                       ; $60d0: $ff
    db $ed                                        ; $60d1: $ed
    db $ec                                        ; $60d2: $ec
    db $dd                                        ; $60d3: $dd
    sbc $df                                       ; $60d4: $de $df
    ldh [$e1], a                                  ; $60d6: $e0 $e1
    ld hl, sp-$07                                 ; $60d8: $f8 $f9
    and $ff                                       ; $60da: $e6 $ff
    rst $38                                       ; $60dc: $ff
    xor $ed                                       ; $60dd: $ee $ed
    ld [c], a                                     ; $60df: $e2
    db $e3                                        ; $60e0: $e3
    db $e4                                        ; $60e1: $e4
    push hl                                       ; $60e2: $e5
    and $30                                       ; $60e3: $e6 $30
    ld sp, hl                                     ; $60e5: $f9
    and $77                                       ; $60e6: $e6 $77
    rst $38                                       ; $60e8: $ff
    ld b, [hl]                                    ; $60e9: $46
    rst $28                                       ; $60ea: $ef
    rst $10                                       ; $60eb: $d7
    add sp, -$2c                                  ; $60ec: $e8 $d4
    push de                                       ; $60ee: $d5
    ld [hl], a                                    ; $60ef: $77
    rst $38                                       ; $60f0: $ff
    ld b, [hl]                                    ; $60f1: $46
    db $ec                                        ; $60f2: $ec
    adc $cd                                       ; $60f3: $ce $cd
    ldh [$a0], a                                  ; $60f5: $e0 $a0
    ret nc                                        ; $60f7: $d0

    pop de                                        ; $60f8: $d1
    add $e1                                       ; $60f9: $c6 $e1
    ld a, [$d6e0]                                 ; $60fb: $fa $e0 $d6
    rst $10                                       ; $60fe: $d7
    ld [hl], b                                    ; $60ff: $70
    ld [hl], a                                    ; $6100: $77
    add sp, $46                                   ; $6101: $e8 $46
    rst $38                                       ; $6103: $ff
    ld b, [hl]                                    ; $6104: $46
    pop hl                                        ; $6105: $e1
    call $a0e0                                    ; $6106: $cd $e0 $a0
    jp nc, $c6d3                                  ; $6109: $d2 $d3 $c6

    pop hl                                        ; $610c: $e1
    add [hl]                                      ; $610d: $86
    ld a, [$d8e0]                                 ; $610e: $fa $e0 $d8
    reti                                          ; $6111: $d9


    ld a, $ff                                     ; $6112: $3e $ff
    db $ed                                        ; $6114: $ed
    db $ec                                        ; $6115: $ec
    call $c6e3                                    ; $6116: $cd $e3 $c6
    pop hl                                        ; $6119: $e1
    sbc a                                         ; $611a: $9f
    add e                                         ; $611b: $83
    and d                                         ; $611c: $a2
    sbc a                                         ; $611d: $9f
    ld [hl], l                                    ; $611e: $75
    ld [c], a                                     ; $611f: $e2
    ld a, $ff                                     ; $6120: $3e $ff
    ld c, c                                       ; $6122: $49
    rst $00                                       ; $6123: $c7
    ld b, [hl]                                    ; $6124: $46
    ldh [$c8], a                                  ; $6125: $e0 $c8
    ldh [$9d], a                                  ; $6127: $e0 $9d
    ld a, l                                       ; $6129: $7d
    sbc l                                         ; $612a: $9d
    add $e0                                       ; $612b: $c6 $e0
    sbc a                                         ; $612d: $9f
    sbc h                                         ; $612e: $9c
    xor [hl]                                      ; $612f: $ae
    sbc h                                         ; $6130: $9c
    sbc a                                         ; $6131: $9f
    ld [hl], l                                    ; $6132: $75
    pop hl                                        ; $6133: $e1
    ld hl, sp+$3e                                 ; $6134: $f8 $3e
    rst $38                                       ; $6136: $ff
    ld c, c                                       ; $6137: $49
    rst $00                                       ; $6138: $c7
    ld b, [hl]                                    ; $6139: $46
    ldh [$9f], a                                  ; $613a: $e0 $9f
    sbc h                                         ; $613c: $9c
    ld b, [hl]                                    ; $613d: $46
    xor [hl]                                      ; $613e: $ae
    ld b, [hl]                                    ; $613f: $46
    ccf                                           ; $6140: $3f

Jump_060_6141:
    sbc h                                         ; $6141: $9c
    sbc l                                         ; $6142: $9d
    sbc l                                         ; $6143: $9d
    sbc h                                         ; $6144: $9c
    ld b, [hl]                                    ; $6145: $46
    xor a                                         ; $6146: $af
    cp a                                          ; $6147: $bf
    pop hl                                        ; $6148: $e1
    rst $28                                       ; $6149: $ef
    jp nz, $ff20                                  ; $614a: $c2 $20 $ff

    rst $38                                       ; $614d: $ff
    ld c, c                                       ; $614e: $49
    jp $c090                                      ; $614f: $c3 $90 $c0


    adc c                                         ; $6152: $89
    ldh [$c7], a                                  ; $6153: $e0 $c7
    ldh [rDMA], a                                 ; $6155: $e0 $46
    rst $38                                       ; $6157: $ff
    ldh [$f8], a                                  ; $6158: $e0 $f8
    ldh [rSTAT], a                                ; $615a: $e0 $41
    ld b, [hl]                                    ; $615c: $46
    ld a, [hl]                                    ; $615d: $7e
    ldh [$ef], a                                  ; $615e: $e0 $ef
    pop bc                                        ; $6160: $c1
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    db $e4                                        ; $6163: $e4
    db $e3                                        ; $6164: $e3
    sub b                                         ; $6165: $90
    ret nz                                        ; $6166: $c0

    sbc [hl]                                      ; $6167: $9e
    jp z, Jump_000_38e0                           ; $6168: $ca $e0 $38

    rst $00                                       ; $616b: $c7
    ldh [$be], a                                  ; $616c: $e0 $be
    ldh [$f8], a                                  ; $616e: $e0 $f8
    ldh [rDMA], a                                 ; $6170: $e0 $46
    ld b, [hl]                                    ; $6172: $46
    sbc [hl]                                      ; $6173: $9e
    cp h                                          ; $6174: $bc
    pop bc                                        ; $6175: $c1
    ld a, [hl+]                                   ; $6176: $2a
    pop hl                                        ; $6177: $e1
    ld [$ffff], sp                                ; $6178: $08 $ff $ff
    inc de                                        ; $617b: $13
    ret nz                                        ; $617c: $c0

    sub b                                         ; $617d: $90
    ret nz                                        ; $617e: $c0

    sbc [hl]                                      ; $617f: $9e
    add l                                         ; $6180: $85
    pop hl                                        ; $6181: $e1
    jp $7ae4                                      ; $6182: $c3 $e4 $7a


    ldh [$3e], a                                  ; $6185: $e0 $3e
    pop hl                                        ; $6187: $e1
    nop                                           ; $6188: $00
    ld [hl], b                                    ; $6189: $70
    pop bc                                        ; $618a: $c1
    rst $38                                       ; $618b: $ff
    rst $38                                       ; $618c: $ff
    ld d, a                                       ; $618d: $57
    db $e3                                        ; $618e: $e3
    ld [bc], a                                    ; $618f: $02
    ldh [rIE], a                                  ; $6190: $e0 $ff
    ld [$c1bc], a                                 ; $6192: $ea $bc $c1
    cp $c2                                        ; $6195: $fe $c2
    dec sp                                        ; $6197: $3b
    rst $18                                       ; $6198: $df
    jr c, jr_060_61e8                             ; $6199: $38 $4d

    jp nz, $e9c1                                  ; $619b: $c2 $c1 $e9

    ld a, [$afc1]                                 ; $619e: $fa $c1 $af

jr_060_61a1:
    xor [hl]                                      ; $61a1: $ae
    and c                                         ; $61a2: $a1
    db $ed                                        ; $61a3: $ed
    and d                                         ; $61a4: $a2
    dec sp                                        ; $61a5: $3b
    rst $18                                       ; $61a6: $df
    ld [$e883], sp                                ; $61a7: $08 $83 $e8
    pop bc                                        ; $61aa: $c1
    jp nz, $c4ff                                  ; $61ab: $c2 $ff $c4

    xor a                                         ; $61ae: $af
    cp $c2                                        ; $61af: $fe $c2
    dec sp                                        ; $61b1: $3b
    rst $18                                       ; $61b2: $df
    ld b, h                                       ; $61b3: $44
    ld [c], a                                     ; $61b4: $e2
    rst $00                                       ; $61b5: $c7
    rst $20                                       ; $61b6: $e7
    rrca                                          ; $61b7: $0f
    ld b, l                                       ; $61b8: $45
    ld c, b                                       ; $61b9: $48
    ld c, b                                       ; $61ba: $48
    ld b, l                                       ; $61bb: $45
    cp $c7                                        ; $61bc: $fe $c7
    cp a                                          ; $61be: $bf
    rst $18                                       ; $61bf: $df
    pop bc                                        ; $61c0: $c1
    db $e3                                        ; $61c1: $e3
    adc l                                         ; $61c2: $8d
    pop bc                                        ; $61c3: $c1
    inc e                                         ; $61c4: $1c
    ld b, h                                       ; $61c5: $44
    pop bc                                        ; $61c6: $c1
    jp nz, Jump_060_52e0                          ; $61c7: $c2 $e0 $52

    ld h, c                                       ; $61ca: $61
    ld e, h                                       ; $61cb: $5c
    cp a                                          ; $61cc: $bf
    db $e3                                        ; $61cd: $e3
    cp d                                          ; $61ce: $ba
    and h                                         ; $61cf: $a4
    rst $38                                       ; $61d0: $ff
    rst $38                                       ; $61d1: $ff
    ei                                            ; $61d2: $fb
    sbc a                                         ; $61d3: $9f
    sbc h                                         ; $61d4: $9c
    ld c, c                                       ; $61d5: $49
    add $51                                       ; $61d6: $c6 $51
    ld e, [hl]                                    ; $61d8: $5e
    ld d, d                                       ; $61d9: $52
    ld a, [hl+]                                   ; $61da: $2a
    dec l                                         ; $61db: $2d
    add e                                         ; $61dc: $83
    ld b, a                                       ; $61dd: $47
    ld d, l                                       ; $61de: $55
    halt                                          ; $61df: $76
    call nz, $c27c                                ; $61e0: $c4 $7c $c2
    rst $38                                       ; $61e3: $ff
    rst $38                                       ; $61e4: $ff
    add [hl]                                      ; $61e5: $86
    and c                                         ; $61e6: $a1
    ld c, c                                       ; $61e7: $49

jr_060_61e8:
    call nz, Call_060_7f45                        ; $61e8: $c4 $45 $7f
    ld e, e                                       ; $61eb: $5b
    ld a, [hl+]                                   ; $61ec: $2a
    jr nz, jr_060_621d                            ; $61ed: $20 $2e

    ld c, e                                       ; $61ef: $4b
    ld d, [hl]                                    ; $61f0: $56
    ld b, l                                       ; $61f1: $45
    or $c4                                        ; $61f2: $f6 $c4
    pop hl                                        ; $61f4: $e1
    sbc [hl]                                      ; $61f5: $9e
    call nz, $c0ff                                ; $61f6: $c4 $ff $c0
    jp $a04b                                      ; $61f9: $c3 $4b $a0


    pop bc                                        ; $61fc: $c1
    ld [c], a                                     ; $61fd: $e2
    ld b, a                                       ; $61fe: $47
    ld d, l                                       ; $61ff: $55
    jr nc, jr_060_61a1                            ; $6200: $30 $9f

    jr nz, jr_060_6234                            ; $6202: $20 $30

    ld c, d                                       ; $6204: $4a
    ld d, d                                       ; $6205: $52
    ld b, l                                       ; $6206: $45
    or h                                          ; $6207: $b4

Jump_060_6208:
    and c                                         ; $6208: $a1
    ld [hl], h                                    ; $6209: $74
    and b                                         ; $620a: $a0
    and c                                         ; $620b: $a1
    db $fc                                        ; $620c: $fc
    push bc                                       ; $620d: $c5
    rst $38                                       ; $620e: $ff
    ld a, [hl]                                    ; $620f: $7e
    jp z, Jump_060_4745                           ; $6210: $ca $45 $47

    ld d, [hl]                                    ; $6213: $56
    ld a, [hl+]                                   ; $6214: $2a
    ld h, $21                                     ; $6215: $26 $21
    pop hl                                        ; $6217: $e1
    ld b, b                                       ; $6218: $40
    cp [hl]                                       ; $6219: $be
    jp $a071                                      ; $621a: $c3 $71 $a0


jr_060_621d:
    ccf                                           ; $621d: $3f
    rst $38                                       ; $621e: $ff
    dec a                                         ; $621f: $3d
    jp z, Jump_060_46ae                           ; $6220: $ca $ae $46

    ld e, h                                       ; $6223: $5c
    rrca                                          ; $6224: $0f
    ld d, d                                       ; $6225: $52
    add hl, sp                                    ; $6226: $39
    dec [hl]                                      ; $6227: $35
    inc a                                         ; $6228: $3c
    add b                                         ; $6229: $80
    pop hl                                        ; $622a: $e1
    ld hl, sp-$5c                                 ; $622b: $f8 $a4
    cp a                                          ; $622d: $bf
    rst $38                                       ; $622e: $ff
    ei                                            ; $622f: $fb
    srl a                                         ; $6230: $cb $3f
    ld b, l                                       ; $6232: $45
    ld b, h                                       ; $6233: $44

jr_060_6234:
    ld a, [hl-]                                   ; $6234: $3a
    dec [hl]                                      ; $6235: $35
    dec [hl]                                      ; $6236: $35
    add hl, sp                                    ; $6237: $39
    pop bc                                        ; $6238: $c1
    push hl                                       ; $6239: $e5
    cp [hl]                                       ; $623a: $be
    rst $18                                       ; $623b: $df
    ld a, [$e9ea]                                 ; $623c: $fa $ea $e9
    and c                                         ; $623f: $a1
    ld b, b                                       ; $6240: $40
    pop bc                                        ; $6241: $c1
    ld [hl], $35                                  ; $6242: $36 $35
    xor h                                         ; $6244: $ac
    dec [hl]                                      ; $6245: $35
    ld a, [hl-]                                   ; $6246: $3a
    ldh [rIE], a                                  ; $6247: $e0 $ff
    and c                                         ; $6249: $a1
    cp b                                          ; $624a: $b8
    add d                                         ; $624b: $82
    pop bc                                        ; $624c: $c1
    rst $38                                       ; $624d: $ff
    jp hl                                         ; $624e: $e9


    add sp, -$41                                  ; $624f: $e8 $bf
    add c                                         ; $6251: $81
    ld b, b                                       ; $6252: $40
    dec [hl]                                      ; $6253: $35
    dec [hl]                                      ; $6254: $35
    and c                                         ; $6255: $a1
    xor l                                         ; $6256: $ad
    ret nz                                        ; $6257: $c0

    db $e3                                        ; $6258: $e3
    ld a, e                                       ; $6259: $7b
    add c                                         ; $625a: $81
    pop bc                                        ; $625b: $c1
    rst $38                                       ; $625c: $ff
    inc a                                         ; $625d: $3c
    xor l                                         ; $625e: $ad
    ld b, l                                       ; $625f: $45
    ld b, c                                       ; $6260: $41
    ldh [$35], a                                  ; $6261: $e0 $35
    pop af                                        ; $6263: $f1
    add hl, sp                                    ; $6264: $39
    add hl, sp                                    ; $6265: $39
    and h                                         ; $6266: $a4
    pop bc                                        ; $6267: $c1

jr_060_6268:
    rst $38                                       ; $6268: $ff
    ld a, $cf                                     ; $6269: $3e $cf
    add hl, sp                                    ; $626b: $39
    dec [hl]                                      ; $626c: $35
    dec [hl]                                      ; $626d: $35
    inc a                                         ; $626e: $3c
    add l                                         ; $626f: $85
    ld b, h                                       ; $6270: $44
    rst $38                                       ; $6271: $ff
    ld h, d                                       ; $6272: $62
    sbc h                                         ; $6273: $9c
    inc [hl]                                      ; $6274: $34
    ld h, c                                       ; $6275: $61
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    cp a                                          ; $6278: $bf
    add [hl]                                      ; $6279: $86
    call nz, Call_060_4483                        ; $627a: $c4 $83 $44
    rrca                                          ; $627d: $0f
    inc a                                         ; $627e: $3c
    dec [hl]                                      ; $627f: $35
    dec [hl]                                      ; $6280: $35
    ld b, b                                       ; $6281: $40
    add e                                         ; $6282: $83
    rst $38                                       ; $6283: $ff
    cp a                                          ; $6284: $bf
    sub b                                         ; $6285: $90
    db $fd                                        ; $6286: $fd
    add e                                         ; $6287: $83
    rst $38                                       ; $6288: $ff
    ret nz                                        ; $6289: $c0

    inc bc                                        ; $628a: $03
    inc a                                         ; $628b: $3c
    ld b, h                                       ; $628c: $44
    dec sp                                        ; $628d: $3b
    ld h, c                                       ; $628e: $61
    push bc                                       ; $628f: $c5
    cp a                                          ; $6290: $bf
    add l                                         ; $6291: $85
    ret                                           ; $6292: $c9


    cp a                                          ; $6293: $bf
    add d                                         ; $6294: $82
    ld b, c                                       ; $6295: $41
    ld h, c                                       ; $6296: $61
    add b                                         ; $6297: $80
    ldh [$e0], a                                  ; $6298: $e0 $e0
    add c                                         ; $629a: $81
    jp nz, $bf45                                  ; $629b: $c2 $45 $bf

    add l                                         ; $629e: $85
    jp z, Jump_060_6208                           ; $629f: $ca $08 $62

    rst $38                                       ; $62a2: $ff
    add d                                         ; $62a3: $82
    ld a, [hl-]                                   ; $62a4: $3a
    dec [hl]                                      ; $62a5: $35
    add hl, sp                                    ; $62a6: $39
    jr c, jr_060_6268                             ; $62a7: $38 $bf

    ld h, d                                       ; $62a9: $62
    ld b, b                                       ; $62aa: $40
    rst $38                                       ; $62ab: $ff
    cp a                                          ; $62ac: $bf
    sub d                                         ; $62ad: $92
    ld b, [hl]                                    ; $62ae: $46
    add hl, sp                                    ; $62af: $39
    ld [hl], $01                                  ; $62b0: $36 $01
    add b                                         ; $62b2: $80
    ld b, e                                       ; $62b3: $43
    rst $18                                       ; $62b4: $df
    ld b, b                                       ; $62b5: $40
    ld a, a                                       ; $62b6: $7f
    ld [hl], d                                    ; $62b7: $72
    cp $62                                        ; $62b8: $fe $62
    ld b, h                                       ; $62ba: $44
    cp a                                          ; $62bb: $bf
    ld a, a                                       ; $62bc: $7f
    sub $8b                                       ; $62bd: $d6 $8b
    add e                                         ; $62bf: $83
    nop                                           ; $62c0: $00
    ld h, h                                       ; $62c1: $64
    ld b, [hl]                                    ; $62c2: $46
    rst $38                                       ; $62c3: $ff
    ld b, b                                       ; $62c4: $40
    db $fc                                        ; $62c5: $fc
    rst $38                                       ; $62c6: $ff
    rst $38                                       ; $62c7: $ff
    cp e                                          ; $62c8: $bb
    ld l, c                                       ; $62c9: $69
    xor [hl]                                      ; $62ca: $ae
    ld b, [hl]                                    ; $62cb: $46
    ld b, l                                       ; $62cc: $45
    ld b, e                                       ; $62cd: $43
    xor a                                         ; $62ce: $af
    ld b, e                                       ; $62cf: $43

Jump_060_62d0:
    rla                                           ; $62d0: $17
    ld b, e                                       ; $62d1: $43
    ld b, c                                       ; $62d2: $41
    ld b, e                                       ; $62d3: $43
    rst $38                                       ; $62d4: $ff
    ld [hl+], a                                   ; $62d5: $22
    xor [hl]                                      ; $62d6: $ae
    rst $38                                       ; $62d7: $ff
    ld b, b                                       ; $62d8: $40
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    ld bc, $bfa9                                  ; $62db: $01 $a9 $bf
    xor a                                         ; $62de: $af
    ld b, l                                       ; $62df: $45
    ld [hl], $3b                                  ; $62e0: $36 $3b
    dec [hl]                                      ; $62e2: $35
    dec sp                                        ; $62e3: $3b
    db $fd                                        ; $62e4: $fd
    ldh [$36], a                                  ; $62e5: $e0 $36
    pop af                                        ; $62e7: $f1
    ld b, l                                       ; $62e8: $45
    cp d                                          ; $62e9: $ba
    ld hl, $ff40                                  ; $62ea: $21 $40 $ff
    ld bc, $44ad                                  ; $62ed: $01 $ad $44
    inc a                                         ; $62f0: $3c
    and h                                         ; $62f1: $a4
    ld h, h                                       ; $62f2: $64
    jp nz, $e0ff                                  ; $62f3: $c2 $ff $e0

    and l                                         ; $62f6: $a5
    ld a, [hl]                                    ; $62f7: $7e
    and c                                         ; $62f8: $a1
    db $fd                                        ; $62f9: $fd
    ld [bc], a                                    ; $62fa: $02
    rst $38                                       ; $62fb: $ff
    rst $38                                       ; $62fc: $ff
    pop bc                                        ; $62fd: $c1
    adc d                                         ; $62fe: $8a
    ld b, d                                       ; $62ff: $42
    dec [hl]                                      ; $6300: $35
    rst $38                                       ; $6301: $ff
    ld l, c                                       ; $6302: $69
    and e                                         ; $6303: $a3
    dec [hl]                                      ; $6304: $35
    dec [hl]                                      ; $6305: $35
    and e                                         ; $6306: $a3
    ld l, d                                       ; $6307: $6a
    dec [hl]                                      ; $6308: $35
    ld b, d                                       ; $6309: $42
    jr nz, jr_060_634d                            ; $630a: $20 $41

    ld b, d                                       ; $630c: $42
    rst $38                                       ; $630d: $ff
    rst $38                                       ; $630e: $ff
    db $fc                                        ; $630f: $fc
    inc l                                         ; $6310: $2c
    ret nz                                        ; $6311: $c0

    ldh [$c1], a                                  ; $6312: $e0 $c1
    add b                                         ; $6314: $80
    dec [hl]                                      ; $6315: $35
    ret nz                                        ; $6316: $c0

    ld [c], a                                     ; $6317: $e2
    cp a                                          ; $6318: $bf
    cp a                                          ; $6319: $bf
    ld e, [hl]                                    ; $631a: $5e
    cp e                                          ; $631b: $bb
    cpl                                           ; $631c: $2f
    ld b, h                                       ; $631d: $44
    inc a                                         ; $631e: $3c
    ld l, e                                       ; $631f: $6b
    ld [hl], c                                    ; $6320: $71
    rst $38                                       ; $6321: $ff
    ldh [$6d], a                                  ; $6322: $e0 $6d
    ld a, $a1                                     ; $6324: $3e $a1
    ldh [rSTAT], a                                ; $6326: $e0 $41
    rst $38                                       ; $6328: $ff
    cp a                                          ; $6329: $bf
    ld l, a                                       ; $632a: $6f
    ret nz                                        ; $632b: $c0

    rst $00                                       ; $632c: $c7
    pop bc                                        ; $632d: $c1
    rst $38                                       ; $632e: $ff
    dec sp                                        ; $632f: $3b
    ld [hl-], a                                   ; $6330: $32
    ld b, l                                       ; $6331: $45
    ld b, e                                       ; $6332: $43
    ld b, c                                       ; $6333: $41
    ld bc, $40ae                                  ; $6334: $01 $ae $40
    ret nz                                        ; $6337: $c0

    pop bc                                        ; $6338: $c1
    rst $38                                       ; $6339: $ff
    inc a                                         ; $633a: $3c
    sub a                                         ; $633b: $97
    ld b, a                                       ; $633c: $47
    ld e, a                                       ; $633d: $5f
    ld a, b                                       ; $633e: $78
    dec a                                         ; $633f: $3d
    add l                                         ; $6340: $85
    and c                                         ; $6341: $a1
    jp $80df                                      ; $6342: $c3 $df $80


    ld a, b                                       ; $6345: $78
    ld [hl], $3e                                  ; $6346: $36 $3e
    and b                                         ; $6348: $a0
    add l                                         ; $6349: $85
    cp a                                          ; $634a: $bf
    ld a, c                                       ; $634b: $79
    ld a, b                                       ; $634c: $78

jr_060_634d:
    ld b, e                                       ; $634d: $43
    ld h, b                                       ; $634e: $60
    add l                                         ; $634f: $85
    cp a                                          ; $6350: $bf
    or l                                          ; $6351: $b5
    add hl, de                                    ; $6352: $19
    sbc h                                         ; $6353: $9c
    ld bc, $069d                                  ; $6354: $01 $9d $06
    ld a, a                                       ; $6357: $7f
    jr c, jr_060_6392                             ; $6358: $38 $38

    add h                                         ; $635a: $84
    rst $38                                       ; $635b: $ff
    or $7b                                        ; $635c: $f6 $7b
    pop bc                                        ; $635e: $c1
    rst $38                                       ; $635f: $ff
    rst $38                                       ; $6360: $ff
    rst $38                                       ; $6361: $ff
    rst $38                                       ; $6362: $ff
    rst $38                                       ; $6363: $ff
    nop                                           ; $6364: $00
    rst $38                                       ; $6365: $ff
    rst $38                                       ; $6366: $ff
    rst $38                                       ; $6367: $ff
    rst $38                                       ; $6368: $ff
    rst $38                                       ; $6369: $ff
    rst $38                                       ; $636a: $ff
    rst $38                                       ; $636b: $ff
    rst $38                                       ; $636c: $ff
    rst $38                                       ; $636d: $ff
    rst $38                                       ; $636e: $ff
    rst $38                                       ; $636f: $ff
    rst $38                                       ; $6370: $ff
    rst $38                                       ; $6371: $ff
    rst $38                                       ; $6372: $ff
    rst $38                                       ; $6373: $ff
    rst $38                                       ; $6374: $ff
    nop                                           ; $6375: $00
    rst $38                                       ; $6376: $ff
    rst $38                                       ; $6377: $ff
    rst $38                                       ; $6378: $ff
    rst $38                                       ; $6379: $ff
    rst $38                                       ; $637a: $ff
    rst $38                                       ; $637b: $ff
    rst $38                                       ; $637c: $ff
    rst $38                                       ; $637d: $ff
    rst $38                                       ; $637e: $ff
    rst $38                                       ; $637f: $ff
    rst $38                                       ; $6380: $ff
    rst $38                                       ; $6381: $ff
    rst $38                                       ; $6382: $ff
    ei                                            ; $6383: $fb
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    pop bc                                        ; $6387: $c1
    nop                                           ; $6388: $00
    rst $38                                       ; $6389: $ff
    rst $38                                       ; $638a: $ff
    rst $38                                       ; $638b: $ff
    rst $38                                       ; $638c: $ff
    rst $38                                       ; $638d: $ff
    rst $38                                       ; $638e: $ff
    rst $38                                       ; $638f: $ff
    rst $38                                       ; $6390: $ff
    rst $38                                       ; $6391: $ff

jr_060_6392:
    rst $38                                       ; $6392: $ff
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    ld bc, $fe80                                  ; $6395: $01 $80 $fe
    ldh [rIE], a                                  ; $6398: $e0 $ff
    rst $38                                       ; $639a: $ff
    rst $38                                       ; $639b: $ff
    rst $38                                       ; $639c: $ff
    rst $38                                       ; $639d: $ff
    add sp, $00                                   ; $639e: $e8 $00
    nop                                           ; $63a0: $00
    nop                                           ; $63a1: $00
    ld [bc], a                                    ; $63a2: $02
    nop                                           ; $63a3: $00
    inc hl                                        ; $63a4: $23
    ld c, $02                                     ; $63a5: $0e $02
    ld bc, $0f1c                                  ; $63a7: $01 $1c $0f
    ld [bc], a                                    ; $63aa: $02
    ld [bc], a                                    ; $63ab: $02
    inc h                                         ; $63ac: $24
    rrca                                          ; $63ad: $0f
    ld [bc], a                                    ; $63ae: $02
    inc bc                                        ; $63af: $03
    ld a, [de]                                    ; $63b0: $1a
    db $10                                        ; $63b1: $10
    ld [bc], a                                    ; $63b2: $02
    inc b                                         ; $63b3: $04
    dec e                                         ; $63b4: $1d
    db $10                                        ; $63b5: $10
    ld [bc], a                                    ; $63b6: $02
    dec b                                         ; $63b7: $05
    ld [hl+], a                                   ; $63b8: $22
    db $10                                        ; $63b9: $10
    ld [bc], a                                    ; $63ba: $02
    ld b, $1f                                     ; $63bb: $06 $1f
    ld de, $0702                                  ; $63bd: $11 $02 $07
    daa                                           ; $63c0: $27
    inc de                                        ; $63c1: $13
    ld [bc], a                                    ; $63c2: $02
    ld [$1423], sp                                ; $63c3: $08 $23 $14
    ld [bc], a                                    ; $63c6: $02
    add hl, bc                                    ; $63c7: $09
    jr z, jr_060_63de                             ; $63c8: $28 $14

    ld [bc], a                                    ; $63ca: $02
    ld a, [bc]                                    ; $63cb: $0a
    inc e                                         ; $63cc: $1c
    dec d                                         ; $63cd: $15
    ld [bc], a                                    ; $63ce: $02
    dec bc                                        ; $63cf: $0b
    dec d                                         ; $63d0: $15
    ld d, $02                                     ; $63d1: $16 $02
    inc c                                         ; $63d3: $0c
    inc d                                         ; $63d4: $14
    rla                                           ; $63d5: $17
    ld [bc], a                                    ; $63d6: $02
    dec c                                         ; $63d7: $0d
    add hl, de                                    ; $63d8: $19
    rla                                           ; $63d9: $17
    ld [bc], a                                    ; $63da: $02
    ld c, $29                                     ; $63db: $0e $29
    rla                                           ; $63dd: $17

jr_060_63de:
    ld [bc], a                                    ; $63de: $02
    rrca                                          ; $63df: $0f
    ld d, $18                                     ; $63e0: $16 $18
    ld [bc], a                                    ; $63e2: $02
    db $10                                        ; $63e3: $10
    ld h, $19                                     ; $63e4: $26 $19
    ld [bc], a                                    ; $63e6: $02
    ld de, $1a29                                  ; $63e7: $11 $29 $1a
    ld [bc], a                                    ; $63ea: $02
    ld [de], a                                    ; $63eb: $12
    dec de                                        ; $63ec: $1b
    inc e                                         ; $63ed: $1c
    ld [bc], a                                    ; $63ee: $02
    inc de                                        ; $63ef: $13
    dec hl                                        ; $63f0: $2b
    inc e                                         ; $63f1: $1c
    ld [bc], a                                    ; $63f2: $02
    inc d                                         ; $63f3: $14
    ld a, [hl+]                                   ; $63f4: $2a
    dec e                                         ; $63f5: $1d
    ld [bc], a                                    ; $63f6: $02
    dec d                                         ; $63f7: $15
    jr nz, jr_060_6418                            ; $63f8: $20 $1e

    ld [bc], a                                    ; $63fa: $02
    ld d, $27                                     ; $63fb: $16 $27
    ld e, $02                                     ; $63fd: $1e $02
    rla                                           ; $63ff: $17
    inc hl                                        ; $6400: $23
    jr nz, jr_060_6405                            ; $6401: $20 $02

    jr jr_060_641d                                ; $6403: $18 $18

jr_060_6405:
    ld [hl+], a                                   ; $6405: $22
    ld [bc], a                                    ; $6406: $02
    add hl, de                                    ; $6407: $19
    ld d, $23                                     ; $6408: $16 $23
    ld [bc], a                                    ; $640a: $02
    ld a, [de]                                    ; $640b: $1a
    inc e                                         ; $640c: $1c
    inc hl                                        ; $640d: $23
    ld [bc], a                                    ; $640e: $02
    dec de                                        ; $640f: $1b
    dec d                                         ; $6410: $15
    inc h                                         ; $6411: $24
    ld [bc], a                                    ; $6412: $02
    inc e                                         ; $6413: $1c
    rla                                           ; $6414: $17
    dec h                                         ; $6415: $25
    ld [bc], a                                    ; $6416: $02
    dec e                                         ; $6417: $1d

jr_060_6418:
    inc h                                         ; $6418: $24
    dec h                                         ; $6419: $25
    ld [bc], a                                    ; $641a: $02
    ld e, $1b                                     ; $641b: $1e $1b

jr_060_641d:
    daa                                           ; $641d: $27
    ld [bc], a                                    ; $641e: $02
    rra                                           ; $641f: $1f
    daa                                           ; $6420: $27
    daa                                           ; $6421: $27
    ld [bc], a                                    ; $6422: $02
    jr nz, jr_060_643e                            ; $6423: $20 $19

    jr z, @+$04                                   ; $6425: $28 $02

    ld hl, $281e                                  ; $6427: $21 $1e $28
    ld [bc], a                                    ; $642a: $02
    ld [hl+], a                                   ; $642b: $22
    inc hl                                        ; $642c: $23
    jr z, jr_060_6431                             ; $642d: $28 $02

    inc hl                                        ; $642f: $23
    add hl, hl                                    ; $6430: $29

jr_060_6431:
    jr z, jr_060_6435                             ; $6431: $28 $02

    inc h                                         ; $6433: $24
    ld a, [de]                                    ; $6434: $1a

jr_060_6435:
    add hl, hl                                    ; $6435: $29
    ld [bc], a                                    ; $6436: $02
    dec h                                         ; $6437: $25
    jr z, jr_060_6463                             ; $6438: $28 $29

    ld [bc], a                                    ; $643a: $02
    ld h, $25                                     ; $643b: $26 $25
    ld a, [hl+]                                   ; $643d: $2a

jr_060_643e:
    ld [bc], a                                    ; $643e: $02
    daa                                           ; $643f: $27
    daa                                           ; $6440: $27
    dec hl                                        ; $6441: $2b
    ld [bc], a                                    ; $6442: $02
    jr z, jr_060_6464                             ; $6443: $28 $1f

    jr nc, jr_060_6449                            ; $6445: $30 $02

    add hl, hl                                    ; $6447: $29
    inc e                                         ; $6448: $1c

jr_060_6449:
    ld sp, $2a02                                  ; $6449: $31 $02 $2a
    ld [hl+], a                                   ; $644c: $22
    ld sp, $2b02                                  ; $644d: $31 $02 $2b
    ld e, $32                                     ; $6450: $1e $32
    ld [bc], a                                    ; $6452: $02
    inc l                                         ; $6453: $2c
    inc h                                         ; $6454: $24
    ld [hl-], a                                   ; $6455: $32
    ld [bc], a                                    ; $6456: $02
    dec l                                         ; $6457: $2d
    jr nz, jr_060_648d                            ; $6458: $20 $33

    ld [bc], a                                    ; $645a: $02
    ld l, $23                                     ; $645b: $2e $23
    inc sp                                        ; $645d: $33
    ld [bc], a                                    ; $645e: $02
    cpl                                           ; $645f: $2f
    rra                                           ; $6460: $1f
    inc [hl]                                      ; $6461: $34
    rst $38                                       ; $6462: $ff

jr_060_6463:
    rst $38                                       ; $6463: $ff

jr_060_6464:
    rst $38                                       ; $6464: $ff
    ld l, l                                       ; $6465: $6d
    ld h, h                                       ; $6466: $64
    add l                                         ; $6467: $85
    ld l, c                                       ; $6468: $69
    ld [hl-], a                                   ; $6469: $32
    ld [hl], c                                    ; $646a: $71
    ld c, l                                       ; $646b: $4d
    ld [hl], c                                    ; $646c: $71
    ccf                                           ; $646d: $3f
    dec c                                         ; $646e: $0d
    dec c                                         ; $646f: $0d
    dec c                                         ; $6470: $0d
    ld c, $0e                                     ; $6471: $0e $0e
    ld c, $fa                                     ; $6473: $0e $fa
    and $f3                                       ; $6475: $e6 $f3
    pop hl                                        ; $6477: $e1
    ld b, $f0                                     ; $6478: $06 $f0
    pop hl                                        ; $647a: $e1
    inc c                                         ; $647b: $0c
    dec l                                         ; $647c: $2d
    jp hl                                         ; $647d: $e9


    ldh [$fd], a                                  ; $647e: $e0 $fd
    db $e4                                        ; $6480: $e4
    db $fc                                        ; $6481: $fc
    db $ed                                        ; $6482: $ed
    ret nc                                        ; $6483: $d0

    jp hl                                         ; $6484: $e9


    pop de                                        ; $6485: $d1
    db $e3                                        ; $6486: $e3
    inc b                                         ; $6487: $04
    ld a, [$c2e5]                                 ; $6488: $fa $e5 $c2
    push hl                                       ; $648b: $e5
    dec c                                         ; $648c: $0d

jr_060_648d:
    ret nz                                        ; $648d: $c0

    db $e4                                        ; $648e: $e4
    rst $18                                       ; $648f: $df
    xor $dd                                       ; $6490: $ee $dd
    and $fa                                       ; $6492: $e6 $fa
    di                                            ; $6494: $f3
    sub d                                         ; $6495: $92
    push hl                                       ; $6496: $e5
    cp a                                          ; $6497: $bf
    ld c, l                                       ; $6498: $4d
    ld l, l                                       ; $6499: $6d
    inc c                                         ; $649a: $0c
    ld c, l                                       ; $649b: $4d
    dec c                                         ; $649c: $0d
    ld c, l                                       ; $649d: $4d
    rst $38                                       ; $649e: $ff
    pop hl                                        ; $649f: $e1
    dec l                                         ; $64a0: $2d
    ldh [$b8], a                                  ; $64a1: $e0 $b8
    db $e3                                        ; $64a3: $e3
    add d                                         ; $64a4: $82
    db $eb                                        ; $64a5: $eb
    xor l                                         ; $64a6: $ad
    db $ed                                        ; $64a7: $ed
    ld [hl], e                                    ; $64a8: $73
    jp hl                                         ; $64a9: $e9


    inc a                                         ; $64aa: $3c
    pop hl                                        ; $64ab: $e1
    ld l, l                                       ; $64ac: $6d
    dec c                                         ; $64ad: $0d
    dec bc                                        ; $64ae: $0b
    rst $38                                       ; $64af: $ff
    inc c                                         ; $64b0: $0c
    dec bc                                        ; $64b1: $0b
    dec hl                                        ; $64b2: $2b
    ld a, [bc]                                    ; $64b3: $0a
    ld l, d                                       ; $64b4: $6a
    dec bc                                        ; $64b5: $0b
    dec bc                                        ; $64b6: $0b
    dec bc                                        ; $64b7: $0b
    rlca                                          ; $64b8: $07
    dec c                                         ; $64b9: $0d
    ld c, l                                       ; $64ba: $4d
    dec l                                         ; $64bb: $2d
    ld a, $e7                                     ; $64bc: $3e $e7
    ld h, d                                       ; $64be: $62
    and $0d                                       ; $64bf: $e6 $0d
    add sp, -$47                                  ; $64c1: $e8 $b9
    jp hl                                         ; $64c3: $e9


    ld hl, sp-$3e                                 ; $64c4: $f8 $c2
    add hl, sp                                    ; $64c6: $39
    ld c, l                                       ; $64c7: $4d
    pop bc                                        ; $64c8: $c1
    ldh [$c0], a                                  ; $64c9: $e0 $c0
    pop hl                                        ; $64cb: $e1
    ld c, d                                       ; $64cc: $4a
    ld c, d                                       ; $64cd: $4a
    ld a, [hl+]                                   ; $64ce: $2a
    ret nz                                        ; $64cf: $c0

    pop hl                                        ; $64d0: $e1
    cp a                                          ; $64d1: $bf
    ldh [$d0], a                                  ; $64d2: $e0 $d0
    db $eb                                        ; $64d4: $eb
    pop hl                                        ; $64d5: $e1
    halt                                          ; $64d6: $76
    db $ec                                        ; $64d7: $ec
    ccf                                           ; $64d8: $3f
    or $84                                        ; $64d9: $f6 $84
    pop hl                                        ; $64db: $e1
    dec bc                                        ; $64dc: $0b
    db $fd                                        ; $64dd: $fd
    ldh [$0c], a                                  ; $64de: $e0 $0c
    inc c                                         ; $64e0: $0c
    inc hl                                        ; $64e1: $23
    ld a, [bc]                                    ; $64e2: $0a
    ld a, [bc]                                    ; $64e3: $0a
    add c                                         ; $64e4: $81
    ldh [$f4], a                                  ; $64e5: $e0 $f4
    pop hl                                        ; $64e7: $e1
    dec sp                                        ; $64e8: $3b
    ldh [$6d], a                                  ; $64e9: $e0 $6d

jr_060_64eb:
    push af                                       ; $64eb: $f5
    pop hl                                        ; $64ec: $e1
    halt                                          ; $64ed: $76
    pop hl                                        ; $64ee: $e1
    ldh a, [rSCX]                                 ; $64ef: $f0 $43
    rst $30                                       ; $64f1: $f7
    ret z                                         ; $64f2: $c8

    call nz, $e084                                ; $64f3: $c4 $84 $e0
    cp a                                          ; $64f6: $bf
    ldh [$0b], a                                  ; $64f7: $e0 $0b
    dec bc                                        ; $64f9: $0b
    ld l, h                                       ; $64fa: $6c
    inc c                                         ; $64fb: $0c
    ld bc, $c02a                                  ; $64fc: $01 $2a $c0
    db $e3                                        ; $64ff: $e3
    or d                                          ; $6500: $b2
    ld [c], a                                     ; $6501: $e2
    or [hl]                                       ; $6502: $b6
    db $e3                                        ; $6503: $e3
    halt                                          ; $6504: $76
    ldh [$5a], a                                  ; $6505: $e0 $5a
    and $80                                       ; $6507: $e6 $80
    call $c548                                    ; $6509: $cd $48 $c5
    ld a, h                                       ; $650c: $7c
    ld c, a                                       ; $650d: $4f
    ldh [$7f], a                                  ; $650e: $e0 $7f
    ld [c], a                                     ; $6510: $e2
    ld l, h                                       ; $6511: $6c
    inc l                                         ; $6512: $2c
    ld l, e                                       ; $6513: $6b
    dec hl                                        ; $6514: $2b
    dec bc                                        ; $6515: $0b
    db $fc                                        ; $6516: $fc
    ret nz                                        ; $6517: $c0

    ld a, $c0                                     ; $6518: $3e $c0
    db $e3                                        ; $651a: $e3
    dec c                                         ; $651b: $0d

jr_060_651c:
    inc l                                         ; $651c: $2c
    inc c                                         ; $651d: $0c
    inc l                                         ; $651e: $2c
    inc l                                         ; $651f: $2c
    halt                                          ; $6520: $76
    ldh [$7e], a                                  ; $6521: $e0 $7e
    and $f0                                       ; $6523: $e6 $f0
    ld l, c                                       ; $6525: $69
    pop de                                        ; $6526: $d1
    jr jr_060_64eb                                ; $6527: $18 $c2

    pop de                                        ; $6529: $d1
    db $e3                                        ; $652a: $e3
    rst $38                                       ; $652b: $ff
    jp nz, Jump_060_4b4b                          ; $652c: $c2 $4b $4b

    ld l, e                                       ; $652f: $6b
    ld l, e                                       ; $6530: $6b
    ld h, l                                       ; $6531: $65
    ld c, d                                       ; $6532: $4a
    dec sp                                        ; $6533: $3b
    ld [c], a                                     ; $6534: $e2
    dec c                                         ; $6535: $0d
    ret nz                                        ; $6536: $c0

    ldh [$bf], a                                  ; $6537: $e0 $bf
    ldh [$0b], a                                  ; $6539: $e0 $0b
    dec bc                                        ; $653b: $0b
    push af                                       ; $653c: $f5
    ret nz                                        ; $653d: $c0

    inc c                                         ; $653e: $0c
    ld a, d                                       ; $653f: $7a
    ret nc                                        ; $6540: $d0

    or [hl]                                       ; $6541: $b6
    ret z                                         ; $6542: $c8

    ld c, l                                       ; $6543: $4d
    dec l                                         ; $6544: $2d
    ld [bc], a                                    ; $6545: $02
    pop hl                                        ; $6546: $e1
    xor h                                         ; $6547: $ac
    and b                                         ; $6548: $a0
    jp nc, $80e0                                  ; $6549: $d2 $e0 $80

    ldh [$b7], a                                  ; $654c: $e0 $b7
    dec bc                                        ; $654e: $0b
    ld a, [bc]                                    ; $654f: $0a
    ld c, e                                       ; $6550: $4b
    rst $00                                       ; $6551: $c7
    pop hl                                        ; $6552: $e1
    dec c                                         ; $6553: $0d
    inc c                                         ; $6554: $0c
    rst $38                                       ; $6555: $ff
    pop hl                                        ; $6556: $e1
    inc l                                         ; $6557: $2c
    pop bc                                        ; $6558: $c1
    inc c                                         ; $6559: $0c
    db $fd                                        ; $655a: $fd
    ret nz                                        ; $655b: $c0

    ld e, h                                       ; $655c: $5c
    call nz, $d180                                ; $655d: $c4 $80 $d1
    add b                                         ; $6560: $80
    and e                                         ; $6561: $a3
    ret nz                                        ; $6562: $c0

    db $e3                                        ; $6563: $e3
    dec bc                                        ; $6564: $0b
    inc l                                         ; $6565: $2c
    inc sp                                        ; $6566: $33
    ld c, h                                       ; $6567: $4c
    dec hl                                        ; $6568: $2b
    ret nz                                        ; $6569: $c0

    pop hl                                        ; $656a: $e1
    or a                                          ; $656b: $b7
    ret nz                                        ; $656c: $c0

    inc l                                         ; $656d: $2c
    inc l                                         ; $656e: $2c
    add e                                         ; $656f: $83
    ldh [$fe], a                                  ; $6570: $e0 $fe
    db $e3                                        ; $6572: $e3
    ld [hl], b                                    ; $6573: $70
    cp h                                          ; $6574: $bc
    pop bc                                        ; $6575: $c1
    add d                                         ; $6576: $82
    reti                                          ; $6577: $d9


    jr c, jr_060_651c                             ; $6578: $38 $a2

    adc h                                         ; $657a: $8c
    jp nz, $0c2c                                  ; $657b: $c2 $2c $0c

    ld c, h                                       ; $657e: $4c
    jp nz, Jump_000_00c4                          ; $657f: $c2 $c4 $00

    call nz, Call_060_7fe5                        ; $6582: $c4 $e5 $7f
    pop hl                                        ; $6585: $e1
    ld a, e                                       ; $6586: $7b
    jp nz, $ad4d                                  ; $6587: $c2 $4d $ad

    add b                                         ; $658a: $80
    add $00                                       ; $658b: $c6 $00
    call nz, $c24a                                ; $658d: $c4 $4a $c2
    add c                                         ; $6590: $81
    ldh [$82], a                                  ; $6591: $e0 $82
    ret nz                                        ; $6593: $c0

    rst $28                                       ; $6594: $ef
    ld c, h                                       ; $6595: $4c
    daa                                           ; $6596: $27
    pop bc                                        ; $6597: $c1
    ld a, [c]                                     ; $6598: $f2
    and c                                         ; $6599: $a1
    or c                                          ; $659a: $b1
    and l                                         ; $659b: $a5
    add b                                         ; $659c: $80
    ret nc                                        ; $659d: $d0

    add c                                         ; $659e: $81
    db $e3                                        ; $659f: $e3
    dec bc                                        ; $65a0: $0b
    ld l, c                                       ; $65a1: $69
    inc c                                         ; $65a2: $0c
    ret nz                                        ; $65a3: $c0

    db $e3                                        ; $65a4: $e3
    ld a, l                                       ; $65a5: $7d
    ret nz                                        ; $65a6: $c0

    ld l, h                                       ; $65a7: $6c
    ld a, a                                       ; $65a8: $7f
    and $6c                                       ; $65a9: $e6 $6c
    ld c, h                                       ; $65ab: $4c
    dec h                                         ; $65ac: $25
    pop bc                                        ; $65ad: $c1
    ret nc                                        ; $65ae: $d0

    xor b                                         ; $65af: $a8
    add h                                         ; $65b0: $84
    jp hl                                         ; $65b1: $e9


    sub d                                         ; $65b2: $92
    ld b, l                                       ; $65b3: $45
    and e                                         ; $65b4: $a3
    sub c                                         ; $65b5: $91
    pop bc                                        ; $65b6: $c1
    inc l                                         ; $65b7: $2c
    add c                                         ; $65b8: $81
    push hl                                       ; $65b9: $e5
    dec bc                                        ; $65ba: $0b
    ld l, h                                       ; $65bb: $6c
    pop bc                                        ; $65bc: $c1
    ld c, h                                       ; $65bd: $4c
    ld b, c                                       ; $65be: $41
    rst $20                                       ; $65bf: $e7
    and $a1                                       ; $65c0: $e6 $a1
    ret nz                                        ; $65c2: $c0

    ldh a, [$36]                                  ; $65c3: $f0 $36
    and [hl]                                      ; $65c5: $a6
    pop bc                                        ; $65c6: $c1
    and l                                         ; $65c7: $a5
    dec c                                         ; $65c8: $0d
    inc l                                         ; $65c9: $2c
    rst $30                                       ; $65ca: $f7
    ld c, h                                       ; $65cb: $4c
    ld l, e                                       ; $65cc: $6b
    ld l, e                                       ; $65cd: $6b
    add d                                         ; $65ce: $82
    and d                                         ; $65cf: $a2
    ld c, e                                       ; $65d0: $4b
    dec bc                                        ; $65d1: $0b
    dec bc                                        ; $65d2: $0b
    ld c, h                                       ; $65d3: $4c
    nop                                           ; $65d4: $00
    rst $38                                       ; $65d5: $ff
    ldh [$80], a                                  ; $65d6: $e0 $80
    jp $e100                                      ; $65d8: $c3 $00 $e1


    db $e4                                        ; $65db: $e4
    add b                                         ; $65dc: $80
    add b                                         ; $65dd: $80
    push de                                       ; $65de: $d5
    ld bc, $81c2                                  ; $65df: $01 $c2 $81
    and d                                         ; $65e2: $a2
    dec d                                         ; $65e3: $15
    pop hl                                        ; $65e4: $e1
    ld b, $c0                                     ; $65e5: $06 $c0
    ld [c], a                                     ; $65e7: $e2
    ld l, e                                       ; $65e8: $6b
    ld c, e                                       ; $65e9: $4b
    add d                                         ; $65ea: $82
    and d                                         ; $65eb: $a2
    cp [hl]                                       ; $65ec: $be
    db $e4                                        ; $65ed: $e4
    rst $38                                       ; $65ee: $ff
    and b                                         ; $65ef: $a0
    ld h, b                                       ; $65f0: $60
    and d                                         ; $65f1: $a2
    dec a                                         ; $65f2: $3d
    sub h                                         ; $65f3: $94
    ld c, $c1                                     ; $65f4: $0e $c1
    and [hl]                                      ; $65f6: $a6
    inc l                                         ; $65f7: $2c
    inc c                                         ; $65f8: $0c
    ld l, h                                       ; $65f9: $6c
    dec a                                         ; $65fa: $3d
    pop bc                                        ; $65fb: $c1
    ld bc, $f4e2                                  ; $65fc: $01 $e2 $f4
    add b                                         ; $65ff: $80
    ld [hl], a                                    ; $6600: $77
    add c                                         ; $6601: $81
    add e                                         ; $6602: $83
    ld c, h                                       ; $6603: $4c
    ld c, h                                       ; $6604: $4c
    ld a, [hl-]                                   ; $6605: $3a
    ret nz                                        ; $6606: $c0

    ld l, l                                       ; $6607: $6d
    ret nz                                        ; $6608: $c0

    or h                                          ; $6609: $b4
    add c                                         ; $660a: $81
    ld b, e                                       ; $660b: $43
    or $c1                                        ; $660c: $f6 $c1
    and l                                         ; $660e: $a5
    inc l                                         ; $660f: $2c
    ld c, b                                       ; $6610: $48
    sub a                                         ; $6611: $97
    ret nz                                        ; $6612: $c0

    dec bc                                        ; $6613: $0b
    and l                                         ; $6614: $a5
    cp h                                          ; $6615: $bc
    and c                                         ; $6616: $a1
    ld a, [bc]                                    ; $6617: $0a
    ld [hl], a                                    ; $6618: $77
    add b                                         ; $6619: $80
    inc a                                         ; $661a: $3c
    ldh [$6c], a                                  ; $661b: $e0 $6c
    ret nz                                        ; $661d: $c0

    and $20                                       ; $661e: $e6 $20
    nop                                           ; $6620: $00
    or b                                          ; $6621: $b0
    add d                                         ; $6622: $82
    ld h, h                                       ; $6623: $64
    add b                                         ; $6624: $80
    and b                                         ; $6625: $a0
    inc b                                         ; $6626: $04
    add b                                         ; $6627: $80
    sub a                                         ; $6628: $97
    ret nz                                        ; $6629: $c0

    dec hl                                        ; $662a: $2b
    cp a                                          ; $662b: $bf
    rst $20                                       ; $662c: $e7
    db $fc                                        ; $662d: $fc
    ret nz                                        ; $662e: $c0

    adc [hl]                                      ; $662f: $8e
    or h                                          ; $6630: $b4
    and b                                         ; $6631: $a0
    ld c, h                                       ; $6632: $4c
    ld c, h                                       ; $6633: $4c
    ld l, h                                       ; $6634: $6c
    ld a, h                                       ; $6635: $7c
    adc b                                         ; $6636: $88
    ld a, d                                       ; $6637: $7a
    ld [hl], d                                    ; $6638: $72
    nop                                           ; $6639: $00
    call nz, $2d0d                                ; $663a: $c4 $0d $2d
    inc c                                         ; $663d: $0c
    ccf                                           ; $663e: $3f
    add b                                         ; $663f: $80
    ld l, e                                       ; $6640: $6b
    dec c                                         ; $6641: $0d
    ccf                                           ; $6642: $3f
    push bc                                       ; $6643: $c5
    dec c                                         ; $6644: $0d
    ld [hl], a                                    ; $6645: $77
    and e                                         ; $6646: $a3
    ld a, d                                       ; $6647: $7a
    add h                                         ; $6648: $84
    jr nz, @-$4c                                  ; $6649: $20 $b2

    ld h, l                                       ; $664b: $65
    add b                                         ; $664c: $80
    ld l, a                                       ; $664d: $6f
    ret nz                                        ; $664e: $c0

    push hl                                       ; $664f: $e5
    inc b                                         ; $6650: $04
    ld h, b                                       ; $6651: $60
    jp z, $2b60                                   ; $6652: $ca $60 $2b

    rst $38                                       ; $6655: $ff
    ldh [rSTAT], a                                ; $6656: $e0 $41
    add h                                         ; $6658: $84
    rra                                           ; $6659: $1f
    dec hl                                        ; $665a: $2b
    ld c, e                                       ; $665b: $4b
    ld l, e                                       ; $665c: $6b
    ld c, e                                       ; $665d: $4b
    ld l, e                                       ; $665e: $6b
    ret nz                                        ; $665f: $c0

    db $ec                                        ; $6660: $ec
    nop                                           ; $6661: $00
    cp b                                          ; $6662: $b8
    ld b, h                                       ; $6663: $44
    ld h, c                                       ; $6664: $61
    ld [$406b], sp                                ; $6665: $08 $6b $40
    pop bc                                        ; $6668: $c1
    push hl                                       ; $6669: $e5
    cp e                                          ; $666a: $bb
    and c                                         ; $666b: $a1
    dec hl                                        ; $666c: $2b
    inc [hl]                                      ; $666d: $34
    ld h, e                                       ; $666e: $63
    add b                                         ; $666f: $80
    ld [c], a                                     ; $6670: $e2
    db $fd                                        ; $6671: $fd
    ld d, e                                       ; $6672: $53
    adc b                                         ; $6673: $88
    ld b, [hl]                                    ; $6674: $46
    ld [hl], b                                    ; $6675: $70
    add c                                         ; $6676: $81
    ld h, c                                       ; $6677: $61
    ld b, b                                       ; $6678: $40
    ld [c], a                                     ; $6679: $e2
    nop                                           ; $667a: $00
    jp $c47b                                      ; $667b: $c3 $7b $c4


    dec bc                                        ; $667e: $0b
    ld a, [bc]                                    ; $667f: $0a
    ld a, [hl+]                                   ; $6680: $2a
    or $a0                                        ; $6681: $f6 $a0
    nop                                           ; $6683: $00
    ld bc, $c3c6                                  ; $6684: $01 $c6 $c3
    ld d, d                                       ; $6687: $52
    ret nz                                        ; $6688: $c0

    and e                                         ; $6689: $a3
    call nz, $9781                                ; $668a: $c4 $81 $97
    and c                                         ; $668d: $a1
    add c                                         ; $668e: $81
    and $76                                       ; $668f: $e6 $76
    ret                                           ; $6691: $c9


    and [hl]                                      ; $6692: $a6
    ld b, b                                       ; $6693: $40
    nop                                           ; $6694: $00
    adc l                                         ; $6695: $8d
    ld d, c                                       ; $6696: $51
    adc c                                         ; $6697: $89
    ld b, l                                       ; $6698: $45
    inc bc                                        ; $6699: $03
    ld h, e                                       ; $669a: $63
    ld b, c                                       ; $669b: $41
    pop bc                                        ; $669c: $c1
    ld b, d                                       ; $669d: $42
    and [hl]                                      ; $669e: $a6
    cp b                                          ; $669f: $b8
    call nz, $a3f7                                ; $66a0: $c4 $f7 $a3
    and a                                         ; $66a3: $a7
    ld b, c                                       ; $66a4: $41
    jr nz, jr_060_66ad                            ; $66a5: $20 $06

    ld e, d                                       ; $66a7: $5a
    inc bc                                        ; $66a8: $03
    ld h, d                                       ; $66a9: $62
    sbc b                                         ; $66aa: $98
    add b                                         ; $66ab: $80
    add h                                         ; $66ac: $84

jr_060_66ad:
    add h                                         ; $66ad: $84
    add d                                         ; $66ae: $82
    and b                                         ; $66af: $a0
    ld l, e                                       ; $66b0: $6b
    ld [hl], $c0                                  ; $66b1: $36 $c0
    or a                                          ; $66b3: $b7
    and [hl]                                      ; $66b4: $a6
    ret nz                                        ; $66b5: $c0

    ld b, l                                       ; $66b6: $45
    adc l                                         ; $66b7: $8d
    add h                                         ; $66b8: $84
    ld [$c5c2], a                                 ; $66b9: $ea $c2 $c5
    sbc b                                         ; $66bc: $98
    add b                                         ; $66bd: $80
    ld b, l                                       ; $66be: $45
    add h                                         ; $66bf: $84
    ld b, b                                       ; $66c0: $40
    ld h, b                                       ; $66c1: $60
    dec c                                         ; $66c2: $0d
    ld c, e                                       ; $66c3: $4b
    nop                                           ; $66c4: $00
    ld [hl], d                                    ; $66c5: $72
    ld b, b                                       ; $66c6: $40
    or l                                          ; $66c7: $b5
    add [hl]                                      ; $66c8: $86
    ld l, l                                       ; $66c9: $6d
    inc h                                         ; $66ca: $24
    add b                                         ; $66cb: $80
    ld l, a                                       ; $66cc: $6f
    add $27                                       ; $66cd: $c6 $27
    ld b, h                                       ; $66cf: $44
    and d                                         ; $66d0: $a2
    ld b, d                                       ; $66d1: $42
    rst $20                                       ; $66d2: $e7
    ld [hl], h                                    ; $66d3: $74
    ld b, c                                       ; $66d4: $41
    nop                                           ; $66d5: $00
    scf                                           ; $66d6: $37
    add $80                                       ; $66d7: $c6 $80
    db $e4                                        ; $66d9: $e4
    ld a, a                                       ; $66da: $7f
    ld [hl-], a                                   ; $66db: $32
    ld b, h                                       ; $66dc: $44
    add $44                                       ; $66dd: $c6 $44
    and b                                         ; $66df: $a0
    ld [bc], a                                    ; $66e0: $02
    push hl                                       ; $66e1: $e5
    call nz, $c0a1                                ; $66e2: $c4 $a1 $c0
    ld [c], a                                     ; $66e5: $e2
    nop                                           ; $66e6: $00
    dec [hl]                                      ; $66e7: $35
    add l                                         ; $66e8: $85
    ld b, e                                       ; $66e9: $43
    ld h, e                                       ; $66ea: $63
    add b                                         ; $66eb: $80
    ld [hl], d                                    ; $66ec: $72
    call nz, Call_060_4866                        ; $66ed: $c4 $66 $48
    ld h, c                                       ; $66f0: $61
    jp nz, Jump_000_39c7                          ; $66f1: $c2 $c7 $39

    add $f4                                       ; $66f4: $c6 $f4
    ld b, e                                       ; $66f6: $43
    nop                                           ; $66f7: $00
    rst $38                                       ; $66f8: $ff
    inc h                                         ; $66f9: $24
    add hl, sp                                    ; $66fa: $39
    push hl                                       ; $66fb: $e5
    nop                                           ; $66fc: $00
    ld c, h                                       ; $66fd: $4c
    ret nz                                        ; $66fe: $c0

    db $e3                                        ; $66ff: $e3
    db $d3                                        ; $6700: $d3
    and $80                                       ; $6701: $e6 $80
    call nz, $c5f4                                ; $6703: $c4 $f4 $c5
    cp [hl]                                       ; $6706: $be
    inc l                                         ; $6707: $2c
    add b                                         ; $6708: $80
    add [hl]                                      ; $6709: $86
    ld de, $81c3                                  ; $670a: $11 $c3 $81
    sbc e                                         ; $670d: $9b
    ld b, b                                       ; $670e: $40
    add [hl]                                      ; $670f: $86
    and [hl]                                      ; $6710: $a6
    ld b, [hl]                                    ; $6711: $46
    push bc                                       ; $6712: $c5
    nop                                           ; $6713: $00
    rst $00                                       ; $6714: $c7
    cp l                                          ; $6715: $bd
    call nz, Call_060_790e                        ; $6716: $c4 $0e $79
    ld c, $35                                     ; $6719: $0e $35
    ld a, [hl+]                                   ; $671b: $2a
    add b                                         ; $671c: $80
    ld h, a                                       ; $671d: $67
    dec bc                                        ; $671e: $0b
    dec c                                         ; $671f: $0d
    ld l, h                                       ; $6720: $6c
    inc c                                         ; $6721: $0c
    rst $00                                       ; $6722: $c7
    add e                                         ; $6723: $83
    ld b, b                                       ; $6724: $40
    add h                                         ; $6725: $84
    db $e3                                        ; $6726: $e3
    ld a, l                                       ; $6727: $7d
    jr nz, @-$76                                  ; $6728: $20 $88

    and e                                         ; $672a: $a3
    xor $a5                                       ; $672b: $ee $a5
    nop                                           ; $672d: $00
    ld e, h                                       ; $672e: $5c
    ld [$2c20], sp                                ; $672f: $08 $20 $2c
    ret nz                                        ; $6732: $c0

    push hl                                       ; $6733: $e5
    add hl, bc                                    ; $6734: $09
    dec hl                                        ; $6735: $2b
    ld c, e                                       ; $6736: $4b
    and b                                         ; $6737: $a0
    dec a                                         ; $6738: $3d
    jr nz, jr_060_67a6                            ; $6739: $20 $6b

    ld b, l                                       ; $673b: $45
    db $e3                                        ; $673c: $e3
    ld l, a                                       ; $673d: $6f
    and h                                         ; $673e: $a4
    ret nz                                        ; $673f: $c0

    ld l, a                                       ; $6740: $6f
    inc [hl]                                      ; $6741: $34
    xor e                                         ; $6742: $ab
    inc c                                         ; $6743: $0c
    inc bc                                        ; $6744: $03
    and c                                         ; $6745: $a1
    ld b, c                                       ; $6746: $41
    and $2a                                       ; $6747: $e6 $2a
    ld c, d                                       ; $6749: $4a
    ld a, l                                       ; $674a: $7d
    ld b, d                                       ; $674b: $42
    dec sp                                        ; $674c: $3b
    ld h, b                                       ; $674d: $60
    rst $30                                       ; $674e: $f7
    add [hl]                                      ; $674f: $86
    cp l                                          ; $6750: $bd
    xor a                                         ; $6751: $af
    ld [hl], h                                    ; $6752: $74
    jp $8148                                      ; $6753: $c3 $48 $81


    ld [hl+], a                                   ; $6756: $22
    inc c                                         ; $6757: $0c
    call Call_000_2bc4                            ; $6758: $cd $c4 $2b
    dec bc                                        ; $675b: $0b
    ld c, e                                       ; $675c: $4b
    ld a, $01                                     ; $675d: $3e $01
    rlca                                          ; $675f: $07
    dec hl                                        ; $6760: $2b
    ld a, [bc]                                    ; $6761: $0a
    ld c, d                                       ; $6762: $4a
    ld [hl], b                                    ; $6763: $70
    ret                                           ; $6764: $c9


    inc a                                         ; $6765: $3c
    ld bc, $5200                                  ; $6766: $01 $00 $52
    add d                                         ; $6769: $82
    ld h, h                                       ; $676a: $64
    ret nz                                        ; $676b: $c0

    ld [c], a                                     ; $676c: $e2
    ld a, $95                                     ; $676d: $3e $95
    add d                                         ; $676f: $82
    dec hl                                        ; $6770: $2b
    dec hl                                        ; $6771: $2b
    ld c, e                                       ; $6772: $4b
    ld a, [hl+]                                   ; $6773: $2a
    ld a, [hl+]                                   ; $6774: $2a
    rlca                                          ; $6775: $07
    add b                                         ; $6776: $80
    cp [hl]                                       ; $6777: $be
    nop                                           ; $6778: $00
    add b                                         ; $6779: $80
    ld [hl], b                                    ; $677a: $70
    ret                                           ; $677b: $c9


    ld a, [hl]                                    ; $677c: $7e
    ld [bc], a                                    ; $677d: $02
    add d                                         ; $677e: $82
    halt                                          ; $677f: $76
    ld a, [hl]                                    ; $6780: $7e
    ret nz                                        ; $6781: $c0

    ld a, a                                       ; $6782: $7f
    pop bc                                        ; $6783: $c1
    ld [bc], a                                    ; $6784: $02
    and h                                         ; $6785: $a4
    ld a, $01                                     ; $6786: $3e $01
    ld c, e                                       ; $6788: $4b
    add c                                         ; $6789: $81
    ld c, e                                       ; $678a: $4b
    ld e, a                                       ; $678b: $5f
    add b                                         ; $678c: $80
    ld b, h                                       ; $678d: $44
    add c                                         ; $678e: $81
    ld a, [hl-]                                   ; $678f: $3a
    ld h, c                                       ; $6790: $61
    rst $38                                       ; $6791: $ff
    jp Jump_060_5700                              ; $6792: $c3 $00 $57


    ccf                                           ; $6795: $3f
    ld b, c                                       ; $6796: $41
    ld l, h                                       ; $6797: $6c
    jr nz, @+$41                                  ; $6798: $20 $3f

    ldh [rDIV], a                                 ; $679a: $e0 $04
    ld b, c                                       ; $679c: $41
    jp z, $ff60                                   ; $679d: $ca $60 $ff

    ld [hl+], a                                   ; $67a0: $22
    cpl                                           ; $67a1: $2f
    ld h, c                                       ; $67a2: $61

jr_060_67a3:
    dec c                                         ; $67a3: $0d
    dec [hl]                                      ; $67a4: $35
    nop                                           ; $67a5: $00

jr_060_67a6:
    cp c                                          ; $67a6: $b9
    call nz, $8008                                ; $67a7: $c4 $08 $80
    db $e3                                        ; $67aa: $e3
    nop                                           ; $67ab: $00
    ld d, e                                       ; $67ac: $53
    rst $38                                       ; $67ad: $ff
    ld [hl+], a                                   ; $67ae: $22
    ld l, h                                       ; $67af: $6c
    ld a, [de]                                    ; $67b0: $1a
    ld b, b                                       ; $67b1: $40
    cp $c5                                        ; $67b2: $fe $c5
    ld b, c                                       ; $67b4: $41
    add c                                         ; $67b5: $81
    cp a                                          ; $67b6: $bf
    add c                                         ; $67b7: $81
    inc b                                         ; $67b8: $04
    ld a, [hl]                                    ; $67b9: $7e
    ldh [$c1], a                                  ; $67ba: $e0 $c1
    jr nz, jr_060_6809                            ; $67bc: $20 $4b

    cp e                                          ; $67be: $bb
    and c                                         ; $67bf: $a1
    ld b, b                                       ; $67c0: $40
    ld h, a                                       ; $67c1: $67
    db $fc                                        ; $67c2: $fc
    inc sp                                        ; $67c3: $33
    ld a, [hl]                                    ; $67c4: $7e
    and d                                         ; $67c5: $a2
    inc b                                         ; $67c6: $04
    inc hl                                        ; $67c7: $23
    ld [$207e], sp                                ; $67c8: $08 $7e $20
    ld b, e                                       ; $67cb: $43
    ldh [$be], a                                  ; $67cc: $e0 $be
    ld b, b                                       ; $67ce: $40
    dec hl                                        ; $67cf: $2b
    ld l, h                                       ; $67d0: $6c
    ld b, c                                       ; $67d1: $41
    jr c, jr_060_67d4                             ; $67d2: $38 $00

jr_060_67d4:
    ret nz                                        ; $67d4: $c0

    db $e4                                        ; $67d5: $e4
    ld b, e                                       ; $67d6: $43
    dec [hl]                                      ; $67d7: $35
    ldh [rLCDC], a                                ; $67d8: $e0 $40
    inc hl                                        ; $67da: $23
    ld e, d                                       ; $67db: $5a
    ld hl, $8300                                  ; $67dc: $21 $00 $83
    add $e1                                       ; $67df: $c6 $e1
    ld [hl], d                                    ; $67e1: $72
    ld bc, $6b6b                                  ; $67e2: $01 $6b $6b
    dec l                                         ; $67e5: $2d
    inc bc                                        ; $67e6: $03
    dec c                                         ; $67e7: $0d
    inc l                                         ; $67e8: $2c
    nop                                           ; $67e9: $00
    ld hl, $a124                                  ; $67ea: $21 $24 $a1
    db $fd                                        ; $67ed: $fd
    add l                                         ; $67ee: $85
    add b                                         ; $67ef: $80
    jp nc, Jump_060_6141                          ; $67f0: $d2 $41 $61

    ld a, a                                       ; $67f3: $7f
    adc b                                         ; $67f4: $88
    inc c                                         ; $67f5: $0c
    ccf                                           ; $67f6: $3f
    add d                                         ; $67f7: $82
    jp nz, $2de1                                  ; $67f8: $c2 $e1 $2d

    dec l                                         ; $67fb: $2d
    ret nz                                        ; $67fc: $c0

    pop hl                                        ; $67fd: $e1
    dec h                                         ; $67fe: $25
    and b                                         ; $67ff: $a0
    add b                                         ; $6800: $80
    inc b                                         ; $6801: $04
    dec sp                                        ; $6802: $3b
    sub h                                         ; $6803: $94
    inc d                                         ; $6804: $14
    dec b                                         ; $6805: $05
    dec h                                         ; $6806: $25
    ld b, [hl]                                    ; $6807: $46

Jump_060_6808:
    ld b, l                                       ; $6808: $45

jr_060_6809:
    ld l, e                                       ; $6809: $6b
    add c                                         ; $680a: $81
    ld h, c                                       ; $680b: $61
    dec c                                         ; $680c: $0d
    jp nz, Jump_060_7fe0                          ; $680d: $c2 $e0 $7f

    rlca                                          ; $6810: $07
    ld a, e                                       ; $6811: $7b
    ld h, c                                       ; $6812: $61
    cp $00                                        ; $6813: $fe $00
    ld d, c                                       ; $6815: $51
    dec c                                         ; $6816: $0d
    dec c                                         ; $6817: $0d
    ld c, l                                       ; $6818: $4d
    ld c, l                                       ; $6819: $4d
    dec c                                         ; $681a: $0d
    ld c, l                                       ; $681b: $4d
    ld l, l                                       ; $681c: $6d
    jr jr_060_6877                                ; $681d: $18 $58

    nop                                           ; $681f: $00
    sbc d                                         ; $6820: $9a

jr_060_6821:
    jr nz, jr_060_67a3                            ; $6821: $20 $80

    ld h, l                                       ; $6823: $65
    ld l, e                                       ; $6824: $6b
    ld l, e                                       ; $6825: $6b
    ld c, d                                       ; $6826: $4a
    ld [bc], a                                    ; $6827: $02
    ld b, b                                       ; $6828: $40
    dec b                                         ; $6829: $05
    nop                                           ; $682a: $00
    jr nz, jr_060_683d                            ; $682b: $20 $10

    ld e, a                                       ; $682d: $5f
    ld b, d                                       ; $682e: $42
    ld c, d                                       ; $682f: $4a
    ret nc                                        ; $6830: $d0

    ld c, b                                       ; $6831: $48
    ld b, b                                       ; $6832: $40
    sbc $e3                                       ; $6833: $de $e3
    ld l, h                                       ; $6835: $6c
    add $00                                       ; $6836: $c6 $00
    ld c, a                                       ; $6838: $4f
    and h                                         ; $6839: $a4
    sla b                                         ; $683a: $cb $20
    ret nz                                        ; $683c: $c0

jr_060_683d:
    ld a, [bc]                                    ; $683d: $0a
    db $e3                                        ; $683e: $e3
    ret nz                                        ; $683f: $c0

    push hl                                       ; $6840: $e5
    nop                                           ; $6841: $00
    jr nz, jr_060_6821                            ; $6842: $20 $dd

    ld b, d                                       ; $6844: $42
    rst $38                                       ; $6845: $ff
    ld d, c                                       ; $6846: $51
    add [hl]                                      ; $6847: $86
    ldh [$6c], a                                  ; $6848: $e0 $6c
    ld l, h                                       ; $684a: $6c
    ld bc, $c20d                                  ; $684b: $01 $0d $c2
    nop                                           ; $684e: $00
    ld d, a                                       ; $684f: $57
    ld [hl+], a                                   ; $6850: $22
    jp z, $0e61                                   ; $6851: $ca $61 $0e

    add c                                         ; $6854: $81
    call nz, $c3e7                                ; $6855: $c4 $e7 $c3
    nop                                           ; $6858: $00
    ldh [$e0], a                                  ; $6859: $e0 $e0
    add b                                         ; $685b: $80
    ld bc, $4443                                  ; $685c: $01 $43 $44
    ld [hl], c                                    ; $685f: $71
    add hl, bc                                    ; $6860: $09
    ld h, b                                       ; $6861: $60

jr_060_6862:
    call nz, $c220                                ; $6862: $c4 $20 $c2
    ld [bc], a                                    ; $6865: $02
    jp z, Jump_060_7c64                           ; $6866: $ca $64 $7c

    ld b, c                                       ; $6869: $41
    ld l, h                                       ; $686a: $6c
    add b                                         ; $686b: $80
    ld c, e                                       ; $686c: $4b
    nop                                           ; $686d: $00
    jp nz, $68e3                                  ; $686e: $c2 $e3 $68

    ldh [rSB], a                                  ; $6871: $e0 $01
    ld b, d                                       ; $6873: $42
    add d                                         ; $6874: $82
    ld b, $80                                     ; $6875: $06 $80

jr_060_6877:
    ld b, $c0                                     ; $6877: $06 $c0
    db $e4                                        ; $6879: $e4
    ld c, h                                       ; $687a: $4c
    jr nc, jr_060_6862                            ; $687b: $30 $e5

    ld hl, $61a0                                  ; $687d: $21 $a0 $61
    jr jr_060_68a4                                ; $6880: $18 $22

    ccf                                           ; $6882: $3f
    ld b, h                                       ; $6883: $44
    ld l, h                                       ; $6884: $6c
    ld c, h                                       ; $6885: $4c
    ld b, $e6                                     ; $6886: $06 $e6
    or h                                          ; $6888: $b4
    ld b, c                                       ; $6889: $41
    jr jr_060_6890                                ; $688a: $18 $04

    db $e4                                        ; $688c: $e4
    ld a, a                                       ; $688d: $7f
    ld b, l                                       ; $688e: $45
    ld a, h                                       ; $688f: $7c

jr_060_6890:
    add hl, hl                                    ; $6890: $29
    inc c                                         ; $6891: $0c
    ld c, h                                       ; $6892: $4c
    ld h, [hl]                                    ; $6893: $66
    ld h, e                                       ; $6894: $63
    cp [hl]                                       ; $6895: $be
    add c                                         ; $6896: $81
    ld a, $68                                     ; $6897: $3e $68
    dec b                                         ; $6899: $05
    ld c, h                                       ; $689a: $4c
    cp a                                          ; $689b: $bf
    ld [c], a                                     ; $689c: $e2
    inc l                                         ; $689d: $2c
    ld b, $e5                                     ; $689e: $06 $e5
    ld b, $66                                     ; $68a0: $06 $66
    ei                                            ; $68a2: $fb
    ld l, e                                       ; $68a3: $6b

jr_060_68a4:
    adc l                                         ; $68a4: $8d
    ld bc, $e5a4                                  ; $68a5: $01 $a4 $e5
    ld hl, sp+$40                                 ; $68a8: $f8 $40
    db $e4                                        ; $68aa: $e4
    add h                                         ; $68ab: $84
    ret nz                                        ; $68ac: $c0

    rrca                                          ; $68ad: $0f
    ld [hl+], a                                   ; $68ae: $22
    ld c, h                                       ; $68af: $4c
    ld c, h                                       ; $68b0: $4c
    inc l                                         ; $68b1: $2c
    inc l                                         ; $68b2: $2c
    inc l                                         ; $68b3: $2c
    ld [bc], a                                    ; $68b4: $02
    xor e                                         ; $68b5: $ab
    pop bc                                        ; $68b6: $c1
    dec c                                         ; $68b7: $0d
    add h                                         ; $68b8: $84
    ld c, d                                       ; $68b9: $4a
    add b                                         ; $68ba: $80
    ld l, e                                       ; $68bb: $6b
    add d                                         ; $68bc: $82
    pop bc                                        ; $68bd: $c1
    and a                                         ; $68be: $a7
    ld h, c                                       ; $68bf: $61
    cp h                                          ; $68c0: $bc
    ld b, l                                       ; $68c1: $45
    add l                                         ; $68c2: $85
    inc hl                                        ; $68c3: $23
    ld h, b                                       ; $68c4: $60
    ld a, [hl]                                    ; $68c5: $7e
    push hl                                       ; $68c6: $e5
    ld l, h                                       ; $68c7: $6c
    pop bc                                        ; $68c8: $c1
    ld b, d                                       ; $68c9: $42
    nop                                           ; $68ca: $00
    push bc                                       ; $68cb: $c5
    ld b, e                                       ; $68cc: $43
    ld b, a                                       ; $68cd: $47
    inc [hl]                                      ; $68ce: $34
    inc l                                         ; $68cf: $2c
    inc l                                         ; $68d0: $2c
    dec h                                         ; $68d1: $25
    ld b, d                                       ; $68d2: $42
    jr jr_060_6953                                ; $68d3: $18 $7e

    and d                                         ; $68d5: $a2
    rst $38                                       ; $68d6: $ff
    push af                                       ; $68d7: $f5
    ret nz                                        ; $68d8: $c0

    ld hl, sp+$6d                                 ; $68d9: $f8 $6d
    inc l                                         ; $68db: $2c

jr_060_68dc:
    ld bc, $2ae0                                  ; $68dc: $01 $e0 $2a
    ld b, e                                       ; $68df: $43
    adc e                                         ; $68e0: $8b
    ld b, [hl]                                    ; $68e1: $46
    jr nz, jr_060_68dc                            ; $68e2: $20 $f8

    db $ed                                        ; $68e4: $ed
    dec b                                         ; $68e5: $05
    ld h, d                                       ; $68e6: $62
    ld b, e                                       ; $68e7: $43
    dec l                                         ; $68e8: $2d
    add b                                         ; $68e9: $80
    pop bc                                        ; $68ea: $c1
    dec a                                         ; $68eb: $3d
    nop                                           ; $68ec: $00
    inc l                                         ; $68ed: $2c
    pop bc                                        ; $68ee: $c1
    ret nz                                        ; $68ef: $c0

    cp [hl]                                       ; $68f0: $be
    ld b, l                                       ; $68f1: $45
    nop                                           ; $68f2: $00
    ld c, a                                       ; $68f3: $4f
    ld c, d                                       ; $68f4: $4a
    ld b, e                                       ; $68f5: $43
    ld c, c                                       ; $68f6: $49
    ccf                                           ; $68f7: $3f
    or $42                                        ; $68f8: $f6 $42
    add $7c                                       ; $68fa: $c6 $7c
    ld [bc], a                                    ; $68fc: $02
    ld d, e                                       ; $68fd: $53
    add c                                         ; $68fe: $81
    sub [hl]                                      ; $68ff: $96
    nop                                           ; $6900: $00
    db $fc                                        ; $6901: $fc
    db $ec                                        ; $6902: $ec
    nop                                           ; $6903: $00
    ccf                                           ; $6904: $3f
    ld hl, sp+$42                                 ; $6905: $f8 $42
    add $7e                                       ; $6907: $c6 $7e
    ld b, e                                       ; $6909: $43
    add b                                         ; $690a: $80
    push af                                       ; $690b: $f5
    call nz, Call_060_4327                        ; $690c: $c4 $27 $43
    ld a, [hl+]                                   ; $690f: $2a
    ld a, [bc]                                    ; $6910: $0a
    jp nz, $c142                                  ; $6911: $c2 $42 $c1

    ld [hl], b                                    ; $6914: $70
    nop                                           ; $6915: $00
    jp hl                                         ; $6916: $e9


    ret nz                                        ; $6917: $c0

    ld a, [c]                                     ; $6918: $f2
    ld h, c                                       ; $6919: $61
    and b                                         ; $691a: $a0
    inc b                                         ; $691b: $04
    ld d, e                                       ; $691c: $53
    dec c                                         ; $691d: $0d
    ld c, l                                       ; $691e: $4d
    inc c                                         ; $691f: $0c
    ld l, d                                       ; $6920: $6a
    ld h, [hl]                                    ; $6921: $66
    ld h, a                                       ; $6922: $67
    ld c, l                                       ; $6923: $4d
    dec l                                         ; $6924: $2d
    ld l, e                                       ; $6925: $6b
    inc de                                        ; $6926: $13
    ld h, e                                       ; $6927: $63
    db $fc                                        ; $6928: $fc
    db $ec                                        ; $6929: $ec
    ld l, e                                       ; $692a: $6b
    ld c, e                                       ; $692b: $4b
    add $93                                       ; $692c: $c6 $93
    ld hl, sp-$7e                                 ; $692e: $f8 $82
    and h                                         ; $6930: $a4
    ld a, [hl+]                                   ; $6931: $2a
    ld b, e                                       ; $6932: $43
    db $fc                                        ; $6933: $fc
    inc bc                                        ; $6934: $03
    dec c                                         ; $6935: $0d
    dec hl                                        ; $6936: $2b
    ld l, e                                       ; $6937: $6b
    ld c, e                                       ; $6938: $4b
    dec hl                                        ; $6939: $2b
    ret nz                                        ; $693a: $c0

    db $fc                                        ; $693b: $fc
    db $e4                                        ; $693c: $e4
    dec sp                                        ; $693d: $3b
    ld h, b                                       ; $693e: $60
    db $f4                                        ; $693f: $f4
    db $e3                                        ; $6940: $e3
    add $81                                       ; $6941: $c6 $81
    inc b                                         ; $6943: $04
    and [hl]                                      ; $6944: $a6
    dec a                                         ; $6945: $3d
    db $ec                                        ; $6946: $ec
    ld c, $0e                                     ; $6947: $0e $0e
    ld hl, $040c                                  ; $6949: $21 $0c $04
    and b                                         ; $694c: $a0
    inc [hl]                                      ; $694d: $34
    add l                                         ; $694e: $85
    ld e, e                                       ; $694f: $5b
    ldh [$cb], a                                  ; $6950: $e0 $cb
    ld h, d                                       ; $6952: $62

jr_060_6953:
    dec hl                                        ; $6953: $2b
    cp c                                          ; $6954: $b9
    nop                                           ; $6955: $00
    sub $84                                       ; $6956: $d6 $84
    sub b                                         ; $6958: $90
    ld d, d                                       ; $6959: $52
    ld h, c                                       ; $695a: $61
    ld c, b                                       ; $695b: $48
    add [hl]                                      ; $695c: $86
    add [hl]                                      ; $695d: $86
    dec c                                         ; $695e: $0d
    ld [hl], d                                    ; $695f: $72
    ld bc, $c20c                                  ; $6960: $01 $0c $c2
    add $76                                       ; $6963: $c6 $76
    daa                                           ; $6965: $27
    ld c, l                                       ; $6966: $4d
    rlca                                          ; $6967: $07
    dec hl                                        ; $6968: $2b
    dec hl                                        ; $6969: $2b
    ld l, l                                       ; $696a: $6d
    dec c                                         ; $696b: $0d
    jp $e5ea                                      ; $696c: $c3 $ea $e5


    ld b, [hl]                                    ; $696f: $46
    inc d                                         ; $6970: $14
    add b                                         ; $6971: $80
    pop hl                                        ; $6972: $e1
    ld sp, hl                                     ; $6973: $f9
    ld c, h                                       ; $6974: $4c
    ld b, $da                                     ; $6975: $06 $da
    add d                                         ; $6977: $82
    dec hl                                        ; $6978: $2b
    dec hl                                        ; $6979: $2b
    inc c                                         ; $697a: $0c
    and b                                         ; $697b: $a0
    and [hl]                                      ; $697c: $a6
    ld b, [hl]                                    ; $697d: $46
    adc e                                         ; $697e: $8b
    add hl, hl                                    ; $697f: $29
    add b                                         ; $6980: $80
    jp z, $0000                                   ; $6981: $ca $00 $00

    nop                                           ; $6984: $00
    cp a                                          ; $6985: $bf
    and b                                         ; $6986: $a0
    and b                                         ; $6987: $a0
    and b                                         ; $6988: $a0
    call c, $dedd                                 ; $6989: $dc $dd $de
    ld a, [$a0e6]                                 ; $698c: $fa $e6 $a0
    rst $38                                       ; $698f: $ff
    ret c                                         ; $6990: $d8

    reti                                          ; $6991: $d9


    ret nc                                        ; $6992: $d0

    pop de                                        ; $6993: $d1
    call nc, $9ed5                                ; $6994: $d4 $d5 $9e
    ld de, $9e7f                                  ; $6997: $11 $7f $9e
    and b                                         ; $699a: $a0
    jp nc, $a0d3                                  ; $699b: $d2 $d3 $a0

    call nc, $f0d5                                ; $699e: $d4 $d5 $f0
    ldh [$ec], a                                  ; $69a1: $e0 $ec
    db $ec                                        ; $69a3: $ec
    pop hl                                        ; $69a4: $e1
    db $fc                                        ; $69a5: $fc
    rst $20                                       ; $69a6: $e7
    jp c, $d0db                                   ; $69a7: $da $db $d0

    ld [$e4dc], a                                 ; $69aa: $ea $dc $e4
    rst $18                                       ; $69ad: $df
    rst $28                                       ; $69ae: $ef
    ldh [$e1], a                                  ; $69af: $e0 $e1
    ld [c], a                                     ; $69b1: $e2
    db $e3                                        ; $69b2: $e3
    ld a, [$a0e4]                                 ; $69b3: $fa $e4 $a0
    ret nc                                        ; $69b6: $d0

    pop de                                        ; $69b7: $d1
    adc e                                         ; $69b8: $8b
    jp c, $c8db                                   ; $69b9: $da $db $c8

    ldh [$a0], a                                  ; $69bc: $e0 $a0
    ret nz                                        ; $69be: $c0

    pop hl                                        ; $69bf: $e1
    jp $a3e0                                      ; $69c0: $c3 $e0 $a3


    ldh [$da], a                                  ; $69c3: $e0 $da
    ld e, c                                       ; $69c5: $59
    db $db                                        ; $69c6: $db
    db $ec                                        ; $69c7: $ec
    pop hl                                        ; $69c8: $e1
    add sp, -$1f                                  ; $69c9: $e8 $e1
    sub $d7                                       ; $69cb: $d6 $d7
    db $fc                                        ; $69cd: $fc
    pop hl                                        ; $69ce: $e1
    and b                                         ; $69cf: $a0
    ret nc                                        ; $69d0: $d0

    jp hl                                         ; $69d1: $e9


    ld a, [hl]                                    ; $69d2: $7e
    call nz, $eae0                                ; $69d3: $c4 $e0 $ea
    push hl                                       ; $69d6: $e5
    and $e7                                       ; $69d7: $e6 $e7
    add sp, -$17                                  ; $69d9: $e8 $e9
    ld a, [$fce4]                                 ; $69db: $fa $e4 $fc
    adc h                                         ; $69de: $8c
    pop hl                                        ; $69df: $e1
    adc e                                         ; $69e0: $8b
    ldh [$9f], a                                  ; $69e1: $e0 $9f
    sbc l                                         ; $69e3: $9d
    sbc h                                         ; $69e4: $9c
    ld de, $a29c                                  ; $69e5: $11 $9c $a2
    dec c                                         ; $69e8: $0d
    sbc l                                         ; $69e9: $9d
    rst $38                                       ; $69ea: $ff
    pop hl                                        ; $69eb: $e1
    and d                                         ; $69ec: $a2
    sbc a                                         ; $69ed: $9f
    db $ec                                        ; $69ee: $ec
    ld [c], a                                     ; $69ef: $e2
    xor h                                         ; $69f0: $ac
    pop hl                                        ; $69f1: $e1
    halt                                          ; $69f2: $76
    db $e4                                        ; $69f3: $e4
    ret nc                                        ; $69f4: $d0

    jp hl                                         ; $69f5: $e9


    db $ec                                        ; $69f6: $ec
    call nz, Call_060_43e0                        ; $69f7: $c4 $e0 $43
    jp hl                                         ; $69fa: $e9


    sub $d7                                       ; $69fb: $d6 $d7
    adc h                                         ; $69fd: $8c
    ld [c], a                                     ; $69fe: $e2
    sbc a                                         ; $69ff: $9f
    sbc h                                         ; $6a00: $9c
    xor [hl]                                      ; $6a01: $ae
    rst $38                                       ; $6a02: $ff
    ld b, [hl]                                    ; $6a03: $46
    ld de, $4546                                  ; $6a04: $11 $46 $45
    ld c, b                                       ; $6a07: $48
    ld d, e                                       ; $6a08: $53
    ld b, l                                       ; $6a09: $45
    ld b, [hl]                                    ; $6a0a: $46
    rrca                                          ; $6a0b: $0f
    ld b, [hl]                                    ; $6a0c: $46
    xor [hl]                                      ; $6a0d: $ae
    sbc h                                         ; $6a0e: $9c
    sbc a                                         ; $6a0f: $9f
    ld a, b                                       ; $6a10: $78
    pop hl                                        ; $6a11: $e1
    ld [hl], h                                    ; $6a12: $74
    pop hl                                        ; $6a13: $e1
    ld a, d                                       ; $6a14: $7a
    push hl                                       ; $6a15: $e5
    ld a, [de]                                    ; $6a16: $1a
    pop hl                                        ; $6a17: $e1
    ld hl, sp+$0d                                 ; $6a18: $f8 $0d
    rst $20                                       ; $6a1a: $e7
    ld b, e                                       ; $6a1b: $43
    add sp, $14                                   ; $6a1c: $e8 $14
    ld [c], a                                     ; $6a1e: $e2

jr_060_6a1f:
    sbc a                                         ; $6a1f: $9f
    sbc l                                         ; $6a20: $9d
    and d                                         ; $6a21: $a2
    sbc h                                         ; $6a22: $9c
    xor [hl]                                      ; $6a23: $ae
    db $fd                                        ; $6a24: $fd
    xor a                                         ; $6a25: $af
    ret nz                                        ; $6a26: $c0

    ldh [rHDMA1], a                               ; $6a27: $e0 $51
    ld e, [hl]                                    ; $6a29: $5e
    ld d, h                                       ; $6a2a: $54
    ld b, h                                       ; $6a2b: $44
    ld b, l                                       ; $6a2c: $45
    ld b, [hl]                                    ; $6a2d: $46
    ld bc, $bfaf                                  ; $6a2e: $01 $af $bf
    ldh [$eb], a                                  ; $6a31: $e0 $eb
    pop hl                                        ; $6a33: $e1
    halt                                          ; $6a34: $76
    and $f0                                       ; $6a35: $e6 $f0
    pop bc                                        ; $6a37: $c1
    dec c                                         ; $6a38: $0d
    jp hl                                         ; $6a39: $e9


    ld b, e                                       ; $6a3a: $43
    rst $20                                       ; $6a3b: $e7
    jr nz, jr_060_6a1f                            ; $6a3c: $20 $e1

    cp $84                                        ; $6a3e: $fe $84
    ld [c], a                                     ; $6a40: $e2
    ld b, [hl]                                    ; $6a41: $46
    xor a                                         ; $6a42: $af
    ld b, [hl]                                    ; $6a43: $46
    ld b, [hl]                                    ; $6a44: $46
    ld [$4a05], sp                                ; $6a45: $08 $05 $4a
    xor a                                         ; $6a48: $af
    ld d, [hl]                                    ; $6a49: $56
    ld a, [hl+]                                   ; $6a4a: $2a
    ld h, $34                                     ; $6a4b: $26 $34
    db $f4                                        ; $6a4d: $f4
    pop hl                                        ; $6a4e: $e1
    sbc h                                         ; $6a4f: $9c
    xor [hl]                                      ; $6a50: $ae
    ldh [rDMA], a                                 ; $6a51: $e0 $46
    ld h, b                                       ; $6a53: $60
    rst $38                                       ; $6a54: $ff
    ldh [rPCM12], a                               ; $6a55: $e0 $76
    pop hl                                        ; $6a57: $e1
    ld hl, sp-$3d                                 ; $6a58: $f8 $c3
    dec c                                         ; $6a5a: $0d
    ld [$c480], a                                 ; $6a5b: $ea $80 $c4
    sub $d7                                       ; $6a5e: $d6 $d7
    add d                                         ; $6a60: $82

Call_060_6a61:
    ld [c], a                                     ; $6a61: $e2
    db $fc                                        ; $6a62: $fc
    add h                                         ; $6a63: $84
    ldh [$bf], a                                  ; $6a64: $e0 $bf
    ldh [rDMA], a                                 ; $6a66: $e0 $46
    ld b, [hl]                                    ; $6a68: $46
    ld b, $06                                     ; $6a69: $06 $06
    ld d, l                                       ; $6a6b: $55
    ld e, d                                       ; $6a6c: $5a
    rrca                                          ; $6a6d: $0f
    daa                                           ; $6a6e: $27
    jr nz, jr_060_6a9e                            ; $6a6f: $20 $2d

    ld b, e                                       ; $6a71: $43
    dec a                                         ; $6a72: $3d
    pop hl                                        ; $6a73: $e1
    jp $bfe1                                      ; $6a74: $c3 $e1 $bf


    ldh [rPCM12], a                               ; $6a77: $e0 $76
    pop hl                                        ; $6a79: $e1
    sub b                                         ; $6a7a: $90
    ld hl, sp-$3b                                 ; $6a7b: $f8 $c5
    add b                                         ; $6a7d: $80
    adc $48                                       ; $6a7e: $ce $48
    ret nz                                        ; $6a80: $c0

    sub [hl]                                      ; $6a81: $96
    pop bc                                        ; $6a82: $c1
    sbc [hl]                                      ; $6a83: $9e
    ld c, a                                       ; $6a84: $4f
    ldh [$82], a                                  ; $6a85: $e0 $82
    ldh [$ae], a                                  ; $6a87: $e0 $ae
    rst $38                                       ; $6a89: $ff
    ld b, [hl]                                    ; $6a8a: $46
    dec b                                         ; $6a8b: $05
    ld [$2d45], sp                                ; $6a8c: $08 $45 $2d
    jr nz, jr_060_6ab1                            ; $6a8f: $20 $20

    ld [hl-], a                                   ; $6a91: $32
    ei                                            ; $6a92: $fb
    ld c, e                                       ; $6a93: $4b
    ld b, h                                       ; $6a94: $44
    ld [hl], d                                    ; $6a95: $72
    ld [c], a                                     ; $6a96: $e2
    xor [hl]                                      ; $6a97: $ae
    dec b                                         ; $6a98: $05
    rlca                                          ; $6a99: $07
    inc b                                         ; $6a9a: $04
    inc bc                                        ; $6a9b: $03
    ld b, b                                       ; $6a9c: $40
    halt                                          ; $6a9d: $76

jr_060_6a9e:
    ldh [$7e], a                                  ; $6a9e: $e0 $7e
    and $7a                                       ; $6aa0: $e6 $7a
    rst $00                                       ; $6aa2: $c7
    add [hl]                                      ; $6aa3: $86
    push bc                                       ; $6aa4: $c5
    jr z, @-$3e                                   ; $6aa5: $28 $c0

    ld c, $c0                                     ; $6aa7: $0e $c0
    and c                                         ; $6aa9: $a1
    pop de                                        ; $6aaa: $d1
    db $e3                                        ; $6aab: $e3
    cp $7c                                        ; $6aac: $fe $7c
    ldh [rNR11], a                                ; $6aae: $e0 $11
    ld b, [hl]                                    ; $6ab0: $46

jr_060_6ab1:
    cp l                                          ; $6ab1: $bd
    inc hl                                        ; $6ab2: $23
    inc hl                                        ; $6ab3: $23
    cp l                                          ; $6ab4: $bd
    ld e, [hl]                                    ; $6ab5: $5e
    db $fd                                        ; $6ab6: $fd
    ld e, h                                       ; $6ab7: $5c
    add [hl]                                      ; $6ab8: $86
    ld [c], a                                     ; $6ab9: $e2
    xor a                                         ; $6aba: $af
    ld b, $9a                                     ; $6abb: $06 $9a
    sbc b                                         ; $6abd: $98
    dec c                                         ; $6abe: $0d
    ld [bc], a                                    ; $6abf: $02
    ld b, a                                       ; $6ac0: $47
    ld b, [hl]                                    ; $6ac1: $46
    ld b, [hl]                                    ; $6ac2: $46
    and c                                         ; $6ac3: $a1
    halt                                          ; $6ac4: $76
    add $80                                       ; $6ac5: $c6 $80
    ret nc                                        ; $6ac7: $d0

    add d                                         ; $6ac8: $82
    pop bc                                        ; $6ac9: $c1
    sbc a                                         ; $6aca: $9f
    ld d, $e0                                     ; $6acb: $16 $e0
    db $fd                                        ; $6acd: $fd
    xor [hl]                                      ; $6ace: $ae
    ld a, h                                       ; $6acf: $7c
    pop hl                                        ; $6ad0: $e1
    dec b                                         ; $6ad1: $05
    ld [$3946], sp                                ; $6ad2: $08 $46 $39
    dec [hl]                                      ; $6ad5: $35
    dec [hl]                                      ; $6ad6: $35
    rst $28                                       ; $6ad7: $ef
    ld b, b                                       ; $6ad8: $40
    ld e, e                                       ; $6ad9: $5b
    ld b, l                                       ; $6ada: $45
    ld [bc], a                                    ; $6adb: $02
    add [hl]                                      ; $6adc: $86
    pop hl                                        ; $6add: $e1
    ld [bc], a                                    ; $6ade: $02
    rrca                                          ; $6adf: $0f
    sbc b                                         ; $6ae0: $98
    rrca                                          ; $6ae1: $0f
    sub a                                         ; $6ae2: $97
    sbc b                                         ; $6ae3: $98
    rrca                                          ; $6ae4: $0f
    dec b                                         ; $6ae5: $05
    db $fd                                        ; $6ae6: $fd
    ret nz                                        ; $6ae7: $c0

    xor l                                         ; $6ae8: $ad
    and b                                         ; $6ae9: $a0
    ld a, [hl]                                    ; $6aea: $7e
    pop bc                                        ; $6aeb: $c1
    add b                                         ; $6aec: $80
    pop de                                        ; $6aed: $d1
    ld a, [c]                                     ; $6aee: $f2
    jr z, @-$1c                                   ; $6aef: $28 $e2

    sbc [hl]                                      ; $6af1: $9e
    jp nz, $80c1                                  ; $6af2: $c2 $c1 $80

    ret nz                                        ; $6af5: $c0

    ld b, $06                                     ; $6af6: $06 $06
    ld b, l                                       ; $6af8: $45
    ld a, [hl-]                                   ; $6af9: $3a
    rst $30                                       ; $6afa: $f7
    dec [hl]                                      ; $6afb: $35
    dec [hl]                                      ; $6afc: $35
    add hl, sp                                    ; $6afd: $39
    or a                                          ; $6afe: $b7
    ret nz                                        ; $6aff: $c0

Call_060_6b00:
    ld bc, $0d00                                  ; $6b00: $01 $00 $0d
    rlca                                          ; $6b03: $07
    ld e, $c1                                     ; $6b04: $1e $c1
    ldh [$96], a                                  ; $6b06: $e0 $96
    sub a                                         ; $6b08: $97
    sbc b                                         ; $6b09: $98
    ld b, $bc                                     ; $6b0a: $06 $bc
    pop bc                                        ; $6b0c: $c1
    ld e, [hl]                                    ; $6b0d: $5e
    and c                                         ; $6b0e: $a1
    add b                                         ; $6b0f: $80
    db $d3                                        ; $6b10: $d3
    or $96                                        ; $6b11: $f6 $96
    and c                                         ; $6b13: $a1
    and b                                         ; $6b14: $a0
    sbc [hl]                                      ; $6b15: $9e
    jp nz, $afc1                                  ; $6b16: $c2 $c1 $af

    ld b, [hl]                                    ; $6b19: $46
    dec b                                         ; $6b1a: $05
    rrca                                          ; $6b1b: $0f
    rst $38                                       ; $6b1c: $ff
    dec b                                         ; $6b1d: $05
    ld [hl], $35                                  ; $6b1e: $36 $35
    dec [hl]                                      ; $6b20: $35
    dec [hl]                                      ; $6b21: $35
    ld a, [hl-]                                   ; $6b22: $3a
    ld b, l                                       ; $6b23: $45
    ld b, [hl]                                    ; $6b24: $46
    ld e, e                                       ; $6b25: $5b
    ld [$ff98], sp                                ; $6b26: $08 $98 $ff
    pop hl                                        ; $6b29: $e1
    sub a                                         ; $6b2a: $97
    sub [hl]                                      ; $6b2b: $96
    ret nz                                        ; $6b2c: $c0

    ldh [$08], a                                  ; $6b2d: $e0 $08
    ld a, e                                       ; $6b2f: $7b
    jp nz, Jump_000_3e08                          ; $6b30: $c2 $08 $3e

    and b                                         ; $6b33: $a0
    add b                                         ; $6b34: $80
    db $d3                                        ; $6b35: $d3
    sbc d                                         ; $6b36: $9a
    and d                                         ; $6b37: $a2
    sbc [hl]                                      ; $6b38: $9e
    ld b, h                                       ; $6b39: $44
    ret nz                                        ; $6b3a: $c0

    add c                                         ; $6b3b: $81
    jp nz, $e042                                  ; $6b3c: $c2 $42 $e0

    cp a                                          ; $6b3f: $bf
    ldh [rIE], a                                  ; $6b40: $e0 $ff
    ld b, d                                       ; $6b42: $42
    ld b, [hl]                                    ; $6b43: $46
    ld [$9899], sp                                ; $6b44: $08 $99 $98
    sub a                                         ; $6b47: $97
    sub a                                         ; $6b48: $97
    sub a                                         ; $6b49: $97
    inc de                                        ; $6b4a: $13
    sub [hl]                                      ; $6b4b: $96
    sub l                                         ; $6b4c: $95
    add b                                         ; $6b4d: $80
    ld [c], a                                     ; $6b4e: $e2
    inc h                                         ; $6b4f: $24
    ret nz                                        ; $6b50: $c0

    sbc [hl]                                      ; $6b51: $9e
    db $db                                        ; $6b52: $db
    add c                                         ; $6b53: $81
    dec a                                         ; $6b54: $3d
    add sp, -$80                                  ; $6b55: $e8 $80
    rst $00                                       ; $6b57: $c7
    ret c                                         ; $6b58: $d8

    add d                                         ; $6b59: $82
    and d                                         ; $6b5a: $a2
    cp a                                          ; $6b5b: $bf
    ret nz                                        ; $6b5c: $c0

    ld c, a                                       ; $6b5d: $4f
    pop bc                                        ; $6b5e: $c1
    ld [$4205], sp                                ; $6b5f: $08 $05 $42
    ldh [$35], a                                  ; $6b62: $e0 $35
    dec [hl]                                      ; $6b64: $35
    rst $08                                       ; $6b65: $cf
    inc a                                         ; $6b66: $3c
    ld b, h                                       ; $6b67: $44
    ld b, [hl]                                    ; $6b68: $46
    ld b, $82                                     ; $6b69: $06 $82
    db $e3                                        ; $6b6b: $e3
    ld b, c                                       ; $6b6c: $41
    ldh [rIF], a                                  ; $6b6d: $e0 $0f
    dec b                                         ; $6b6f: $05
    add d                                         ; $6b70: $82
    ld h, l                                       ; $6b71: $65
    pop bc                                        ; $6b72: $c1
    sbc [hl]                                      ; $6b73: $9e
    call c, Call_000_3d80                         ; $6b74: $dc $80 $3d
    jp hl                                         ; $6b77: $e9


    add b                                         ; $6b78: $80
    rst $00                                       ; $6b79: $c7
    nop                                           ; $6b7a: $00
    call nz, $a0c1                                ; $6b7b: $c4 $c1 $a0
    xor [hl]                                      ; $6b7e: $ae
    xor a                                         ; $6b7f: $af

Jump_060_6b80:
    dec b                                         ; $6b80: $05
    ld [$3c44], sp                                ; $6b81: $08 $44 $3c
    add b                                         ; $6b84: $80
    ld [c], a                                     ; $6b85: $e2
    add hl, sp                                    ; $6b86: $39
    ld [hl], $e0                                  ; $6b87: $36 $e0
    sbc e                                         ; $6b89: $9b
    inc b                                         ; $6b8a: $04
    ld b, c                                       ; $6b8b: $41
    ldh [rSB], a                                  ; $6b8c: $e0 $01
    pop hl                                        ; $6b8e: $e1
    ld [$a1a8], sp                                ; $6b8f: $08 $a8 $a1
    ld a, l                                       ; $6b92: $7d
    ret nz                                        ; $6b93: $c0

    ld l, b                                       ; $6b94: $68
    add b                                         ; $6b95: $80
    dec a                                         ; $6b96: $3d
    add sp, $43                                   ; $6b97: $e8 $43
    add a                                         ; $6b99: $87
    db $e4                                        ; $6b9a: $e4
    add d                                         ; $6b9b: $82
    and e                                         ; $6b9c: $a3
    pop bc                                        ; $6b9d: $c1
    and c                                         ; $6b9e: $a1
    xor a                                         ; $6b9f: $af
    jp nz, $c0c3                                  ; $6ba0: $c2 $c3 $c0

    ld [c], a                                     ; $6ba3: $e2
    ld b, [hl]                                    ; $6ba4: $46
    ld [bc], a                                    ; $6ba5: $02
    rlca                                          ; $6ba6: $07
    dec de                                        ; $6ba7: $1b
    rlca                                          ; $6ba8: $07
    dec c                                         ; $6ba9: $0d
    cp [hl]                                       ; $6baa: $be
    pop hl                                        ; $6bab: $e1
    sbc b                                         ; $6bac: $98
    rrca                                          ; $6bad: $0f
    ccf                                           ; $6bae: $3f
    ret nz                                        ; $6baf: $c0

    ld a, [hl]                                    ; $6bb0: $7e
    jp $b400                                      ; $6bb1: $c3 $00 $b4


    or d                                          ; $6bb4: $b2
    pop bc                                        ; $6bb5: $c1
    and [hl]                                      ; $6bb6: $a6
    ld [bc], a                                    ; $6bb7: $02
    ld d, l                                       ; $6bb8: $55
    ret nz                                        ; $6bb9: $c0

    nop                                           ; $6bba: $00
    ld [c], a                                     ; $6bbb: $e2
    ld [hl], $45                                  ; $6bbc: $36 $45
    add d                                         ; $6bbe: $82
    and d                                         ; $6bbf: $a2
    inc bc                                        ; $6bc0: $03
    inc bc                                        ; $6bc1: $03
    inc b                                         ; $6bc2: $04
    rrca                                          ; $6bc3: $0f
    cp d                                          ; $6bc4: $ba
    pop bc                                        ; $6bc5: $c1
    ret nz                                        ; $6bc6: $c0

    ret nz                                        ; $6bc7: $c0

    di                                            ; $6bc8: $f3
    add c                                         ; $6bc9: $81
    nop                                           ; $6bca: $00
    or l                                          ; $6bcb: $b5
    rst $08                                       ; $6bcc: $cf
    ld h, b                                       ; $6bcd: $60
    ld b, d                                       ; $6bce: $42
    jp nz, $833e                                  ; $6bcf: $c2 $3e $83

    ret nz                                        ; $6bd2: $c0

    ld [bc], a                                    ; $6bd3: $02
    ld b, [hl]                                    ; $6bd4: $46
    ld a, c                                       ; $6bd5: $79
    ld a, d                                       ; $6bd6: $7a
    ld h, [hl]                                    ; $6bd7: $66
    ld bc, $f4e2                                  ; $6bd8: $01 $e2 $f4
    add b                                         ; $6bdb: $80
    ld e, $77                                     ; $6bdc: $1e $77
    add c                                         ; $6bde: $81
    ld [bc], a                                    ; $6bdf: $02
    rrca                                          ; $6be0: $0f
    ld bc, $4000                                  ; $6be1: $01 $00 $40
    pop bc                                        ; $6be4: $c1
    jp nz, Jump_000_00c1                          ; $6be5: $c2 $c1 $00

    or d                                          ; $6be8: $b2
    db $fc                                        ; $6be9: $fc
    ld l, c                                       ; $6bea: $69
    add c                                         ; $6beb: $81
    pop bc                                        ; $6bec: $c1
    and l                                         ; $6bed: $a5
    ld b, $06                                     ; $6bee: $06 $06
    ld b, [hl]                                    ; $6bf0: $46
    ld a, c                                       ; $6bf1: $79
    ld a, [hl]                                    ; $6bf2: $7e
    ld [hl], $f9                                  ; $6bf3: $36 $f9
    ld l, b                                       ; $6bf5: $68
    cp a                                          ; $6bf6: $bf
    ldh [rP1], a                                  ; $6bf7: $e0 $00
    ret nz                                        ; $6bf9: $c0

    ld b, [hl]                                    ; $6bfa: $46
    ld b, [hl]                                    ; $6bfb: $46
    ld c, d                                       ; $6bfc: $4a
    ld h, b                                       ; $6bfd: $60
    ld d, h                                       ; $6bfe: $54
    rrca                                          ; $6bff: $0f
    ld b, h                                       ; $6c00: $44
    ld b, [hl]                                    ; $6c01: $46
    ld [bc], a                                    ; $6c02: $02
    dec c                                         ; $6c03: $0d
    ret nz                                        ; $6c04: $c0

    and c                                         ; $6c05: $a1
    add d                                         ; $6c06: $82
    jp nz, $b200                                  ; $6c07: $c2 $00 $b2

    add c                                         ; $6c0a: $81
    pop bc                                        ; $6c0b: $c1
    db $f4                                        ; $6c0c: $f4
    add d                                         ; $6c0d: $82
    ld h, b                                       ; $6c0e: $60
    add b                                         ; $6c0f: $80
    and b                                         ; $6c10: $a0
    xor a                                         ; $6c11: $af
    add h                                         ; $6c12: $84
    add b                                         ; $6c13: $80
    ld a, c                                       ; $6c14: $79
    ld a, [hl]                                    ; $6c15: $7e
    add hl, sp                                    ; $6c16: $39
    xor h                                         ; $6c17: $ac
    ei                                            ; $6c18: $fb
    dec [hl]                                      ; $6c19: $35
    ld l, d                                       ; $6c1a: $6a
    nop                                           ; $6c1b: $00
    jp nz, $4646                                  ; $6c1c: $c2 $46 $46

    ld b, e                                       ; $6c1f: $43
    cp l                                          ; $6c20: $bd
    inc l                                         ; $6c21: $2c
    add e                                         ; $6c22: $83
    inc l                                         ; $6c23: $2c
    cp l                                          ; $6c24: $bd
    inc a                                         ; $6c25: $3c
    ldh [rSB], a                                  ; $6c26: $e0 $01
    db $e3                                        ; $6c28: $e3
    nop                                           ; $6c29: $00
    or h                                          ; $6c2a: $b4
    add c                                         ; $6c2b: $81
    jp nz, $c100                                  ; $6c2c: $c2 $00 $c1

    xor [hl]                                      ; $6c2f: $ae
    rst $38                                       ; $6c30: $ff
    ld b, [hl]                                    ; $6c31: $46
    xor [hl]                                      ; $6c32: $ae
    ld de, $8046                                  ; $6c33: $11 $46 $80
    ld b, [hl]                                    ; $6c36: $46
    add hl, sp                                    ; $6c37: $39
    xor l                                         ; $6c38: $ad
    ei                                            ; $6c39: $fb
    ld l, h                                       ; $6c3a: $6c
    ld l, l                                       ; $6c3b: $6d
    rst $38                                       ; $6c3c: $ff
    call nz, $2e45                                ; $6c3d: $c4 $45 $2e
    jr nz, jr_060_6c62                            ; $6c40: $20 $20

    ld l, $45                                     ; $6c42: $2e $45
    ld b, l                                       ; $6c44: $45
    ld a, d                                       ; $6c45: $7a
    add h                                         ; $6c46: $84
    sbc [hl]                                      ; $6c47: $9e
    nop                                           ; $6c48: $00
    or [hl]                                       ; $6c49: $b6
    rst $20                                       ; $6c4a: $e7
    ld b, b                                       ; $6c4b: $40
    pop de                                        ; $6c4c: $d1
    ld b, b                                       ; $6c4d: $40
    sbc [hl]                                      ; $6c4e: $9e
    add b                                         ; $6c4f: $80
    add b                                         ; $6c50: $80
    rst $38                                       ; $6c51: $ff
    ld de, $8246                                  ; $6c52: $11 $46 $82
    add e                                         ; $6c55: $83
    ld b, b                                       ; $6c56: $40
    ld l, h                                       ; $6c57: $6c
    ld l, a                                       ; $6c58: $6f
    ld l, [hl]                                    ; $6c59: $6e
    cp $bf                                        ; $6c5a: $fe $bf
    and e                                         ; $6c5c: $a3
    xor a                                         ; $6c5d: $af
    ld b, d                                       ; $6c5e: $42
    ld hl, $2c23                                  ; $6c5f: $21 $23 $2c

jr_060_6c62:
    ld a, [hl+]                                   ; $6c62: $2a
    ld b, h                                       ; $6c63: $44
    ld b, [hl]                                    ; $6c64: $46
    xor b                                         ; $6c65: $a8
    and e                                         ; $6c66: $a3
    ld b, [hl]                                    ; $6c67: $46
    sbc [hl]                                      ; $6c68: $9e
    halt                                          ; $6c69: $76
    ld h, e                                       ; $6c6a: $63
    add b                                         ; $6c6b: $80
    ld [hl], c                                    ; $6c6c: $71
    ld b, d                                       ; $6c6d: $42
    and b                                         ; $6c6e: $a0
    and b                                         ; $6c6f: $a0
    ret nz                                        ; $6c70: $c0

    and b                                         ; $6c71: $a0
    sbc [hl]                                      ; $6c72: $9e
    add h                                         ; $6c73: $84
    ld h, c                                       ; $6c74: $61
    add l                                         ; $6c75: $85
    add a                                         ; $6c76: $87
    adc b                                         ; $6c77: $88
    ld [hl], b                                    ; $6c78: $70
    pop bc                                        ; $6c79: $c1
    ld [c], a                                     ; $6c7a: $e2
    cp $81                                        ; $6c7b: $fe $81
    ld b, h                                       ; $6c7d: $44
    rra                                           ; $6c7e: $1f
    inc a                                         ; $6c7f: $3c
    inc a                                         ; $6c80: $3c
    ld b, h                                       ; $6c81: $44
    ld c, c                                       ; $6c82: $49
    ld d, d                                       ; $6c83: $52
    ld [hl], $e1                                  ; $6c84: $36 $e1
    ld bc, $bdc2                                  ; $6c86: $01 $c2 $bd
    ld c, h                                       ; $6c89: $4c
    adc b                                         ; $6c8a: $88
    jp $8847                                      ; $6c8b: $c3 $47 $88


    ld b, c                                       ; $6c8e: $41
    add c                                         ; $6c8f: $81
    ld h, d                                       ; $6c90: $62
    ld de, $60cd                                  ; $6c91: $11 $cd $60
    nop                                           ; $6c94: $00
    call nz, $80fe                                ; $6c95: $c4 $fe $80
    ld b, l                                       ; $6c98: $45
    ld b, $f7                                     ; $6c99: $06 $f7
    add b                                         ; $6c9b: $80
    ld b, b                                       ; $6c9c: $40
    ld d, e                                       ; $6c9d: $53
    db $f4                                        ; $6c9e: $f4
    ld b, c                                       ; $6c9f: $41
    ld bc, $bda3                                  ; $6ca0: $01 $a3 $bd
    ld c, h                                       ; $6ca3: $4c
    ld b, $47                                     ; $6ca4: $06 $47
    inc de                                        ; $6ca6: $13
    ld b, b                                       ; $6ca7: $40
    ldh a, [$c1]                                  ; $6ca8: $f0 $c1
    jp nz, $8045                                  ; $6caa: $c2 $45 $80

    ld c, e                                       ; $6cad: $4b
    ret nz                                        ; $6cae: $c0

    ret nz                                        ; $6caf: $c0

    and e                                         ; $6cb0: $a3
    ld h, d                                       ; $6cb1: $62
    ld h, e                                       ; $6cb2: $63
    ld a, e                                       ; $6cb3: $7b
    ld a, h                                       ; $6cb4: $7c
    inc c                                         ; $6cb5: $0c
    ld a, b                                       ; $6cb6: $78
    push bc                                       ; $6cb7: $c5
    ld a, $60                                     ; $6cb8: $3e $60
    sbc l                                         ; $6cba: $9d
    sbc a                                         ; $6cbb: $9f
    dec sp                                        ; $6cbc: $3b
    ld b, c                                       ; $6cbd: $41
    nop                                           ; $6cbe: $00
    ld d, c                                       ; $6cbf: $51
    ld l, l                                       ; $6cc0: $6d
    ld h, d                                       ; $6cc1: $62
    inc bc                                        ; $6cc2: $03
    ld h, d                                       ; $6cc3: $62
    xor $41                                       ; $6cc4: $ee $41
    pop bc                                        ; $6cc6: $c1
    ld b, l                                       ; $6cc7: $45
    scf                                           ; $6cc8: $37
    jr c, @-$3d                                   ; $6cc9: $38 $c1

    db $e3                                        ; $6ccb: $e3
    ld h, a                                       ; $6ccc: $67
    ld [hl], $ae                                  ; $6ccd: $36 $ae
    dec b                                         ; $6ccf: $05
    add hl, sp                                    ; $6cd0: $39
    scf                                           ; $6cd1: $37
    ret nz                                        ; $6cd2: $c0

    ld a, $ea                                     ; $6cd3: $3e $ea
    add d                                         ; $6cd5: $82
    ld b, e                                       ; $6cd6: $43
    adc a                                         ; $6cd7: $8f
    add b                                         ; $6cd8: $80
    ld l, b                                       ; $6cd9: $68
    ld b, h                                       ; $6cda: $44
    add b                                         ; $6cdb: $80
    inc bc                                        ; $6cdc: $03
    ld h, e                                       ; $6cdd: $63
    cp $83                                        ; $6cde: $fe $83
    and b                                         ; $6ce0: $a0
    ld b, l                                       ; $6ce1: $45
    ld [hl], $62                                  ; $6ce2: $36 $62
    ld h, e                                       ; $6ce4: $63
    ld h, l                                       ; $6ce5: $65
    ld h, [hl]                                    ; $6ce6: $66
    dec [hl]                                      ; $6ce7: $35
    ld a, a                                       ; $6ce8: $7f
    jr c, jr_060_6d23                             ; $6ce9: $38 $38

jr_060_6ceb:
    ld l, c                                       ; $6ceb: $69
    ld [hl], $ae                                  ; $6cec: $36 $ae

jr_060_6cee:
    xor a                                         ; $6cee: $af
    ld a, [hl-]                                   ; $6cef: $3a
    scf                                           ; $6cf0: $37
    ret nz                                        ; $6cf1: $c0

    ld [bc], a                                    ; $6cf2: $02
    ret nz                                        ; $6cf3: $c0

    pop hl                                        ; $6cf4: $e1
    xor a                                         ; $6cf5: $af
    push bc                                       ; $6cf6: $c5
    add d                                         ; $6cf7: $82
    ld b, e                                       ; $6cf8: $43
    adc e                                         ; $6cf9: $8b
    nop                                           ; $6cfa: $00
    ld b, [hl]                                    ; $6cfb: $46
    ld b, h                                       ; $6cfc: $44
    add e                                         ; $6cfd: $83
    ld c, b                                       ; $6cfe: $48
    ld b, b                                       ; $6cff: $40
    sub l                                         ; $6d00: $95
    ld h, b                                       ; $6d01: $60
    cp l                                          ; $6d02: $bd

Jump_060_6d03:
    ld [bc], a                                    ; $6d03: $02
    pop bc                                        ; $6d04: $c1
    ldh [$67], a                                  ; $6d05: $e0 $67
    dec [hl]                                      ; $6d07: $35
    dec [hl]                                      ; $6d08: $35
    ld l, d                                       ; $6d09: $6a
    dec b                                         ; $6d0a: $05
    ldh [$80], a                                  ; $6d0b: $e0 $80
    rrca                                          ; $6d0d: $0f
    ld b, l                                       ; $6d0e: $45
    xor a                                         ; $6d0f: $af
    ld [hl], $35                                  ; $6d10: $36 $35
    scf                                           ; $6d12: $37
    ret nz                                        ; $6d13: $c0

    ld hl, sp-$5e                                 ; $6d14: $f8 $a2
    ld b, l                                       ; $6d16: $45
    add b                                         ; $6d17: $80
    ld h, l                                       ; $6d18: $65
    ld hl, $4348                                  ; $6d19: $21 $48 $43
    adc c                                         ; $6d1c: $89
    nop                                           ; $6d1d: $00
    ld b, h                                       ; $6d1e: $44
    add $24                                       ; $6d1f: $c6 $24
    and c                                         ; $6d21: $a1
    add l                                         ; $6d22: $85

jr_060_6d23:
    ld b, b                                       ; $6d23: $40
    ld b, h                                       ; $6d24: $44
    and c                                         ; $6d25: $a1
    ld b, h                                       ; $6d26: $44
    pop bc                                        ; $6d27: $c1
    pop hl                                        ; $6d28: $e1
    jr nz, jr_060_6ceb                            ; $6d29: $20 $c0

    pop hl                                        ; $6d2b: $e1
    jr c, jr_060_6cee                             ; $6d2c: $38 $c0

    pop bc                                        ; $6d2e: $c1
    ldh [$37], a                                  ; $6d2f: $e0 $37
    pop bc                                        ; $6d31: $c1
    ld [hl], a                                    ; $6d32: $77
    and d                                         ; $6d33: $a2
    and c                                         ; $6d34: $a1
    ld b, e                                       ; $6d35: $43
    ld h, e                                       ; $6d36: $63
    add b                                         ; $6d37: $80
    ld l, a                                       ; $6d38: $6f
    cp b                                          ; $6d39: $b8
    ld l, h                                       ; $6d3a: $6c
    ld b, h                                       ; $6d3b: $44
    add e                                         ; $6d3c: $83
    ld b, b                                       ; $6d3d: $40
    ld b, h                                       ; $6d3e: $44
    and c                                         ; $6d3f: $a1
    ld b, [hl]                                    ; $6d40: $46
    ld b, d                                       ; $6d41: $42
    ld l, c                                       ; $6d42: $69
    call nz, Call_060_6a61                        ; $6d43: $c4 $61 $6a
    ld e, $03                                     ; $6d46: $1e $03
    add b                                         ; $6d48: $80
    add l                                         ; $6d49: $85
    add a                                         ; $6d4a: $87
    ld [hl], c                                    ; $6d4b: $71
    ld [hl], c                                    ; $6d4c: $71
    scf                                           ; $6d4d: $37
    jp nz, $a277                                  ; $6d4e: $c2 $77 $a2

    ld b, e                                       ; $6d51: $43
    ld h, e                                       ; $6d52: $63
    ld [hl], b                                    ; $6d53: $70
    add b                                         ; $6d54: $80
    ld [hl], d                                    ; $6d55: $72
    and $02                                       ; $6d56: $e6 $02
    inc b                                         ; $6d58: $04
    ld h, b                                       ; $6d59: $60
    ret z                                         ; $6d5a: $c8

    jr nz, jr_060_6da3                            ; $6d5b: $20 $46

    ld b, [hl]                                    ; $6d5d: $46
    ld b, b                                       ; $6d5e: $40
    ret nz                                        ; $6d5f: $c0

    db $e3                                        ; $6d60: $e3
    add b                                         ; $6d61: $80
    ld [bc], a                                    ; $6d62: $02
    ld h, c                                       ; $6d63: $61
    add hl, sp                                    ; $6d64: $39
    push bc                                       ; $6d65: $c5
    or [hl]                                       ; $6d66: $b6
    add c                                         ; $6d67: $81
    ld b, e                                       ; $6d68: $43
    ld h, h                                       ; $6d69: $64
    add c                                         ; $6d6a: $81
    ld h, h                                       ; $6d6b: $64
    nop                                           ; $6d6c: $00
    ld c, a                                       ; $6d6d: $4f
    ret nz                                        ; $6d6e: $c0

    ld [c], a                                     ; $6d6f: $e2
    ld de, $961a                                  ; $6d70: $11 $1a $96
    jr nz, jr_060_6dae                            ; $6d73: $20 $39

    add b                                         ; $6d75: $80
    ld [c], a                                     ; $6d76: $e2
    ld [hl], l                                    ; $6d77: $75
    ld h, [hl]                                    ; $6d78: $66
    ld [bc], a                                    ; $6d79: $02
    and c                                         ; $6d7a: $a1
    add hl, sp                                    ; $6d7b: $39
    ld h, e                                       ; $6d7c: $63
    rst $38                                       ; $6d7d: $ff
    call nz, Call_000_34a0                        ; $6d7e: $c4 $a0 $34
    ld hl, $a19a                                  ; $6d81: $21 $9a $a1
    cp d                                          ; $6d84: $ba
    nop                                           ; $6d85: $00
    nop                                           ; $6d86: $00
    ld d, c                                       ; $6d87: $51
    ld b, e                                       ; $6d88: $43
    ld b, b                                       ; $6d89: $40
    xor [hl]                                      ; $6d8a: $ae
    add b                                         ; $6d8b: $80
    ldh [rLYC], a                                 ; $6d8c: $e0 $45
    ld bc, $403a                                  ; $6d8e: $01 $3a $40
    ld [c], a                                     ; $6d91: $e2
    ccf                                           ; $6d92: $3f
    ld [c], a                                     ; $6d93: $e2
    add e                                         ; $6d94: $83
    and b                                         ; $6d95: $a0
    ret nz                                        ; $6d96: $c0

    add sp, $7d                                   ; $6d97: $e8 $7d
    pop bc                                        ; $6d99: $c1
    nop                                           ; $6d9a: $00
    and c                                         ; $6d9b: $a1
    dec d                                         ; $6d9c: $15
    and b                                         ; $6d9d: $a0
    db $fc                                        ; $6d9e: $fc
    add b                                         ; $6d9f: $80
    db $10                                        ; $6da0: $10
    add d                                         ; $6da1: $82
    ld [hl+], a                                   ; $6da2: $22

jr_060_6da3:
    ld b, $06                                     ; $6da3: $06 $06
    xor [hl]                                      ; $6da5: $ae
    ld b, d                                       ; $6da6: $42
    ld h, d                                       ; $6da7: $62
    halt                                          ; $6da8: $76
    ld e, $c0                                     ; $6da9: $1e $c0
    db $e3                                        ; $6dab: $e3
    ld [hl], $43                                  ; $6dac: $36 $43

jr_060_6dae:
    ld b, l                                       ; $6dae: $45
    ld b, c                                       ; $6daf: $41
    add d                                         ; $6db0: $82
    and c                                         ; $6db1: $a1
    or [hl]                                       ; $6db2: $b6
    ld h, h                                       ; $6db3: $64
    ld a, l                                       ; $6db4: $7d
    jp Jump_000_009c                              ; $6db5: $c3 $9c $00


    ld d, a                                       ; $6db8: $57
    add d                                         ; $6db9: $82
    ld [hl+], a                                   ; $6dba: $22
    dec b                                         ; $6dbb: $05
    ld [$01af], sp                                ; $6dbc: $08 $af $01
    db $e3                                        ; $6dbf: $e3
    ld c, c                                       ; $6dc0: $49
    ret nz                                        ; $6dc1: $c0

    ld c, d                                       ; $6dc2: $4a
    ld l, a                                       ; $6dc3: $6f
    ld c, a                                       ; $6dc4: $4f
    dec l                                         ; $6dc5: $2d
    jr nz, jr_060_6df5                            ; $6dc6: $20 $2d

    or l                                          ; $6dc8: $b5
    and l                                         ; $6dc9: $a5
    jr c, jr_060_6e03                             ; $6dca: $38 $37

    inc [hl]                                      ; $6dcc: $34
    add c                                         ; $6dcd: $81
    db $ec                                        ; $6dce: $ec
    nop                                           ; $6dcf: $00
    add e                                         ; $6dd0: $83
    add b                                         ; $6dd1: $80
    inc de                                        ; $6dd2: $13
    call nc, Call_000_03d5                        ; $6dd3: $d4 $d5 $03
    ld b, c                                       ; $6dd6: $41
    ld de, $3946                                  ; $6dd7: $11 $46 $39
    ei                                            ; $6dda: $fb
    ld l, e                                       ; $6ddb: $6b
    ld l, h                                       ; $6ddc: $6c
    ld b, h                                       ; $6ddd: $44
    ld b, c                                       ; $6dde: $41
    ld [hl], e                                    ; $6ddf: $73
    ld l, [hl]                                    ; $6de0: $6e
    ld d, l                                       ; $6de1: $55
    ld d, [hl]                                    ; $6de2: $56
    ld [hl-], a                                   ; $6de3: $32
    daa                                           ; $6de4: $27
    jr nz, jr_060_6e15                            ; $6de5: $20 $2e

    ld b, e                                       ; $6de7: $43
    rst $38                                       ; $6de8: $ff
    add d                                         ; $6de9: $82
    ld a, l                                       ; $6dea: $7d
    push hl                                       ; $6deb: $e5
    and c                                         ; $6dec: $a1
    cp l                                          ; $6ded: $bd
    xor [hl]                                      ; $6dee: $ae
    add b                                         ; $6def: $80
    ld l, b                                       ; $6df0: $68
    db $ec                                        ; $6df1: $ec
    ld b, e                                       ; $6df2: $43
    add c                                         ; $6df3: $81
    ret nz                                        ; $6df4: $c0

jr_060_6df5:
    pop hl                                        ; $6df5: $e1
    ld l, [hl]                                    ; $6df6: $6e
    ld l, a                                       ; $6df7: $6f
    cp a                                          ; $6df8: $bf
    ldh [$6c], a                                  ; $6df9: $e0 $6c
    ld l, l                                       ; $6dfb: $6d
    ld a, [hl-]                                   ; $6dfc: $3a
    ld a, a                                       ; $6dfd: $7f
    ld c, d                                       ; $6dfe: $4a
    ld h, b                                       ; $6dff: $60
    ld [hl-], a                                   ; $6e00: $32
    jr nz, jr_060_6e2a                            ; $6e01: $20 $27

jr_060_6e03:
    ld c, a                                       ; $6e03: $4f
    ld d, l                                       ; $6e04: $55
    db $fc                                        ; $6e05: $fc
    push bc                                       ; $6e06: $c5

Jump_060_6e07:
    and $72                                       ; $6e07: $e6 $72
    ld hl, $9f9c                                  ; $6e09: $21 $9c $9f
    cp l                                          ; $6e0c: $bd
    xor l                                         ; $6e0d: $ad
    ld b, e                                       ; $6e0e: $43
    daa                                           ; $6e0f: $27
    sub $d7                                       ; $6e10: $d6 $d7
    sbc a                                         ; $6e12: $9f
    cp l                                          ; $6e13: $bd
    sbc h                                         ; $6e14: $9c

jr_060_6e15:
    ld b, e                                       ; $6e15: $43
    add c                                         ; $6e16: $81
    ld b, l                                       ; $6e17: $45
    ld [hl], $6e                                  ; $6e18: $36 $6e
    ld [hl], b                                    ; $6e1a: $70
    add hl, bc                                    ; $6e1b: $09
    pop bc                                        ; $6e1c: $c1
    add hl, sp                                    ; $6e1d: $39
    rst $38                                       ; $6e1e: $ff
    ld d, l                                       ; $6e1f: $55
    ld d, d                                       ; $6e20: $52
    dec l                                         ; $6e21: $2d
    ld h, $21                                     ; $6e22: $26 $21
    ld c, d                                       ; $6e24: $4a
    ld d, l                                       ; $6e25: $55
    ld b, [hl]                                    ; $6e26: $46
    ld bc, $7542                                  ; $6e27: $01 $42 $75

jr_060_6e2a:
    add e                                         ; $6e2a: $83
    ld [hl], d                                    ; $6e2b: $72
    ld h, d                                       ; $6e2c: $62
    nop                                           ; $6e2d: $00
    add b                                         ; $6e2e: $80
    cp l                                          ; $6e2f: $bd
    xor e                                         ; $6e30: $ab
    ld b, e                                       ; $6e31: $43
    ld h, $67                                     ; $6e32: $26 $67
    add c                                         ; $6e34: $81
    ld b, c                                       ; $6e35: $41
    ld h, b                                       ; $6e36: $60
    db $ec                                        ; $6e37: $ec
    rst $38                                       ; $6e38: $ff
    and b                                         ; $6e39: $a0
    inc b                                         ; $6e3a: $04
    ld b, e                                       ; $6e3b: $43

jr_060_6e3c:
    ld [hl], $45                                  ; $6e3c: $36 $45
    ld b, l                                       ; $6e3e: $45
    add c                                         ; $6e3f: $81
    ld a, [hl-]                                   ; $6e40: $3a
    ld b, e                                       ; $6e41: $43
    ld a, c                                       ; $6e42: $79
    dec bc                                        ; $6e43: $0b
    ld a, d                                       ; $6e44: $7a
    ld a, l                                       ; $6e45: $7d
    dec [hl]                                      ; $6e46: $35
    ld hl, $b13b                                  ; $6e47: $21 $3b $b1
    ld b, e                                       ; $6e4a: $43
    add c                                         ; $6e4b: $81
    jr nz, @-$41                                  ; $6e4c: $20 $bd

    xor e                                         ; $6e4e: $ab
    nop                                           ; $6e4f: $00
    ld c, c                                       ; $6e50: $49
    ret c                                         ; $6e51: $d8

    ccf                                           ; $6e52: $3f
    ld b, c                                       ; $6e53: $41
    add d                                         ; $6e54: $82
    add c                                         ; $6e55: $81
    add h                                         ; $6e56: $84
    ld hl, $443c                                  ; $6e57: $21 $3c $44
    ld a, e                                       ; $6e5a: $7b
    add d                                         ; $6e5b: $82
    add hl, sp                                    ; $6e5c: $39
    ld a, c                                       ; $6e5d: $79
    rst $38                                       ; $6e5e: $ff
    ld a, [hl]                                    ; $6e5f: $7e
    ld b, c                                       ; $6e60: $41
    ld a, a                                       ; $6e61: $7f
    ld a, l                                       ; $6e62: $7d
    ld [hl], $3b                                  ; $6e63: $36 $3b
    ld [hl], $43                                  ; $6e65: $36 $43
    inc b                                         ; $6e67: $04
    ldh a, [rP1]                                  ; $6e68: $f0 $00
    or c                                          ; $6e6a: $b1
    nop                                           ; $6e6b: $00
    sbc [hl]                                      ; $6e6c: $9e
    nop                                           ; $6e6d: $00
    ld h, c                                       ; $6e6e: $61
    nop                                           ; $6e6f: $00
    ld d, h                                       ; $6e70: $54
    ccf                                           ; $6e71: $3f
    ld b, d                                       ; $6e72: $42
    ld b, a                                       ; $6e73: $47
    nop                                           ; $6e74: $00
    inc b                                         ; $6e75: $04
    ld b, e                                       ; $6e76: $43
    db $fd                                        ; $6e77: $fd
    add hl, sp                                    ; $6e78: $39
    cp $01                                        ; $6e79: $fe $01
    ld [hl], $79                                  ; $6e7b: $36 $79
    ld a, [hl]                                    ; $6e7d: $7e
    ld a, [hl+]                                   ; $6e7e: $2a
    ld h, $2a                                     ; $6e7f: $26 $2a
    rst $38                                       ; $6e81: $ff
    ld a, a                                       ; $6e82: $7f
    ld a, l                                       ; $6e83: $7d
    ld b, e                                       ; $6e84: $43
    ld [bc], a                                    ; $6e85: $02
    rlca                                          ; $6e86: $07
    ld [bc], a                                    ; $6e87: $02
    ld [hl], $3b                                  ; $6e88: $36 $3b
    ld a, b                                       ; $6e8a: $78
    ret nz                                        ; $6e8b: $c0

jr_060_6e8c:
    pop hl                                        ; $6e8c: $e1
    nop                                           ; $6e8d: $00
    ld h, c                                       ; $6e8e: $61
    add b                                         ; $6e8f: $80
    db $d3                                        ; $6e90: $d3
    ret nc                                        ; $6e91: $d0

    pop de                                        ; $6e92: $d1
    call nc, Call_000_01d5                        ; $6e93: $d4 $d5 $01
    jr nz, jr_060_6e8c                            ; $6e96: $20 $f4

    ld a, [hl]                                    ; $6e98: $7e
    and b                                         ; $6e99: $a0
    ld b, e                                       ; $6e9a: $43
    ld [hl+], a                                   ; $6e9b: $22
    ld a, $c0                                     ; $6e9c: $3e $c0
    ldh [$3a], a                                  ; $6e9e: $e0 $3a
    ld a, c                                       ; $6ea0: $79
    ld a, [hl]                                    ; $6ea1: $7e
    dec l                                         ; $6ea2: $2d
    rst $38                                       ; $6ea3: $ff
    jr nz, jr_060_6ec6                            ; $6ea4: $20 $20

    daa                                           ; $6ea6: $27
    ld b, h                                       ; $6ea7: $44
    add c                                         ; $6ea8: $81
    ld b, [hl]                                    ; $6ea9: $46
    ld [$379b], sp                                ; $6eaa: $08 $9b $37
    rrca                                          ; $6ead: $0f
    ld [bc], a                                    ; $6eae: $02
    ld b, e                                       ; $6eaf: $43
    nop                                           ; $6eb0: $00
    db $e3                                        ; $6eb1: $e3
    ret nc                                        ; $6eb2: $d0

    pop de                                        ; $6eb3: $d1
    nop                                           ; $6eb4: $00
    ld d, e                                       ; $6eb5: $53
    and [hl]                                      ; $6eb6: $a6
    ld b, b                                       ; $6eb7: $40
    db $e4                                        ; $6eb8: $e4
    ld b, b                                       ; $6eb9: $40
    jr nz, jr_060_6e3c                            ; $6eba: $20 $80

    pop hl                                        ; $6ebc: $e1
    ld b, b                                       ; $6ebd: $40
    ld b, [hl]                                    ; $6ebe: $46
    ld h, d                                       ; $6ebf: $62
    ld a, [$3ee0]                                 ; $6ec0: $fa $e0 $3e
    add b                                         ; $6ec3: $80
    ld b, [hl]                                    ; $6ec4: $46
    rst $38                                       ; $6ec5: $ff

jr_060_6ec6:
    ld [hl-], a                                   ; $6ec6: $32
    jr nz, jr_060_6ef5                            ; $6ec7: $20 $2c

    dec hl                                        ; $6ec9: $2b
    add e                                         ; $6eca: $83
    add h                                         ; $6ecb: $84
    dec b                                         ; $6ecc: $05
    ld c, $07                                     ; $6ecd: $0e $07
    sbc b                                         ; $6ecf: $98
    sbc b                                         ; $6ed0: $98
    ld c, $00                                     ; $6ed1: $0e $00
    ld b, b                                       ; $6ed3: $40
    ld b, b                                       ; $6ed4: $40
    ld hl, $823b                                  ; $6ed5: $21 $3b $82
    add b                                         ; $6ed8: $80
    ret nc                                        ; $6ed9: $d0

    pop bc                                        ; $6eda: $c1
    ld [hl+], a                                   ; $6edb: $22
    db $fc                                        ; $6edc: $fc
    ld a, a                                       ; $6edd: $7f
    and b                                         ; $6ede: $a0
    dec bc                                        ; $6edf: $0b
    and l                                         ; $6ee0: $a5
    ld b, b                                       ; $6ee1: $40
    inc a                                         ; $6ee2: $3c
    dec [hl]                                      ; $6ee3: $35
    ld a, [hl-]                                   ; $6ee4: $3a
    add d                                         ; $6ee5: $82
    add e                                         ; $6ee6: $83
    ld a, a                                       ; $6ee7: $7f
    dec l                                         ; $6ee8: $2d
    ld a, [hl+]                                   ; $6ee9: $2a
    add e                                         ; $6eea: $83
    adc c                                         ; $6eeb: $89
    add a                                         ; $6eec: $87
    add l                                         ; $6eed: $85
    ld b, $ff                                     ; $6eee: $06 $ff
    ld bc, $40c0                                  ; $6ef0: $01 $c0 $40
    ld [bc], a                                    ; $6ef3: $02
    dec sp                                        ; $6ef4: $3b

jr_060_6ef5:
    add h                                         ; $6ef5: $84
    add b                                         ; $6ef6: $80
    ret nc                                        ; $6ef7: $d0

    ccf                                           ; $6ef8: $3f
    add c                                         ; $6ef9: $81
    dec b                                         ; $6efa: $05
    ld [hl+], a                                   ; $6efb: $22
    call nz, Call_000_3a05                        ; $6efc: $c4 $05 $3a
    dec [hl]                                      ; $6eff: $35
    dec e                                         ; $6f00: $1d
    ld [hl], $77                                  ; $6f01: $36 $77
    ld b, b                                       ; $6f03: $40
    adc b                                         ; $6f04: $88
    add a                                         ; $6f05: $87
    add l                                         ; $6f06: $85
    nop                                           ; $6f07: $00
    ld hl, $00bf                                  ; $6f08: $21 $bf $00
    ld a, a                                       ; $6f0b: $7f
    nop                                           ; $6f0c: $00
    ld sp, hl                                     ; $6f0d: $f9
    xor [hl]                                      ; $6f0e: $ae
    ld a, [hl]                                    ; $6f0f: $7e
    dec h                                         ; $6f10: $25
    add b                                         ; $6f11: $80
    ld l, l                                       ; $6f12: $6d
    sbc a                                         ; $6f13: $9f
    sbc l                                         ; $6f14: $9d
    sbc l                                         ; $6f15: $9d
    and d                                         ; $6f16: $a2
    sbc l                                         ; $6f17: $9d
    pop af                                        ; $6f18: $f1
    sbc h                                         ; $6f19: $9c
    rst $10                                       ; $6f1a: $d7
    nop                                           ; $6f1b: $00
    sbc d                                         ; $6f1c: $9a
    jr nz, jr_060_6f63                            ; $6f1d: $20 $44

    dec b                                         ; $6f1f: $05
    add hl, sp                                    ; $6f20: $39
    ld [hl], $03                                  ; $6f21: $36 $03
    inc b                                         ; $6f23: $04
    ld b, e                                       ; $6f24: $43
    rlca                                          ; $6f25: $07
    ld [bc], a                                    ; $6f26: $02
    jp nz, $8000                                  ; $6f27: $c2 $00 $80

    ld bc, $00c0                                  ; $6f2a: $01 $c0 $00
    add b                                         ; $6f2d: $80
    ldh [$af], a                                  ; $6f2e: $e0 $af
    ld a, [hl]                                    ; $6f30: $7e
    add b                                         ; $6f31: $80
    db $f4                                        ; $6f32: $f4
    cp l                                          ; $6f33: $bd
    ld c, e                                       ; $6f34: $4b
    jp $9f43                                      ; $6f35: $c3 $43 $9f


    push bc                                       ; $6f38: $c5
    ldh [rTAC], a                                 ; $6f39: $e0 $07
    inc de                                        ; $6f3b: $13
    inc de                                        ; $6f3c: $13
    rlca                                          ; $6f3d: $07
    db $e3                                        ; $6f3e: $e3
    inc b                                         ; $6f3f: $04
    inc bc                                        ; $6f40: $03
    ld b, h                                       ; $6f41: $44
    ld b, c                                       ; $6f42: $41
    ld c, a                                       ; $6f43: $4f
    and d                                         ; $6f44: $a2
    nop                                           ; $6f45: $00
    ret nz                                        ; $6f46: $c0

    dec b                                         ; $6f47: $05
    rrca                                          ; $6f48: $0f
    sbc d                                         ; $6f49: $9a
    dec de                                        ; $6f4a: $1b
    sbc b                                         ; $6f4b: $98
    rrca                                          ; $6f4c: $0f
    ld b, d                                       ; $6f4d: $42
    inc b                                         ; $6f4e: $04
    nop                                           ; $6f4f: $00
    ld bc, $2000                                  ; $6f50: $01 $00 $20
    pop bc                                        ; $6f53: $c1
    pop hl                                        ; $6f54: $e1
    add b                                         ; $6f55: $80
    ld [hl], c                                    ; $6f56: $71
    ld a, a                                       ; $6f57: $7f
    sbc a                                         ; $6f58: $9f
    sbc h                                         ; $6f59: $9c
    ld [bc], a                                    ; $6f5a: $02
    rrca                                          ; $6f5b: $0f
    inc b                                         ; $6f5c: $04
    inc bc                                        ; $6f5d: $03
    sbc h                                         ; $6f5e: $9c
    jp nz, $c800                                  ; $6f5f: $c2 $00 $c8

    ld a, a                                       ; $6f62: $7f

jr_060_6f63:
    ld [bc], a                                    ; $6f63: $02
    rst $38                                       ; $6f64: $ff
    and c                                         ; $6f65: $a1
    dec b                                         ; $6f66: $05
    ld hl, $8806                                  ; $6f67: $21 $06 $88
    db $e3                                        ; $6f6a: $e3
    ld b, l                                       ; $6f6b: $45
    ldh [$98], a                                  ; $6f6c: $e0 $98
    dec c                                         ; $6f6e: $0d
    nop                                           ; $6f6f: $00
    and l                                         ; $6f70: $a5
    ldh [$7e], a                                  ; $6f71: $e0 $7e
    ld b, d                                       ; $6f73: $42
    nop                                           ; $6f74: $00
    xor a                                         ; $6f75: $af
    add [hl]                                      ; $6f76: $86
    ld h, c                                       ; $6f77: $61
    ld c, l                                       ; $6f78: $4d
    nop                                           ; $6f79: $00
    inc hl                                        ; $6f7a: $23
    ld b, b                                       ; $6f7b: $40
    rst $38                                       ; $6f7c: $ff
    ld h, c                                       ; $6f7d: $61
    sbc c                                         ; $6f7e: $99
    ld [hl+], a                                   ; $6f7f: $22
    ld d, h                                       ; $6f80: $54
    dec b                                         ; $6f81: $05
    ret nz                                        ; $6f82: $c0

    ld c, l                                       ; $6f83: $4d
    ld b, c                                       ; $6f84: $41
    ld b, $4b                                     ; $6f85: $06 $4b
    nop                                           ; $6f87: $00
    sub a                                         ; $6f88: $97
    rst $38                                       ; $6f89: $ff
    ldh [$98], a                                  ; $6f8a: $e0 $98
    and e                                         ; $6f8c: $a3
    ldh [$e0], a                                  ; $6f8d: $e0 $e0
    ld a, [hl]                                    ; $6f8f: $7e
    ld b, c                                       ; $6f90: $41
    ccf                                           ; $6f91: $3f
    ld b, c                                       ; $6f92: $41
    add d                                         ; $6f93: $82
    call nz, $0680                                ; $6f94: $c4 $80 $06
    ld a, [c]                                     ; $6f97: $f2
    ld [bc], a                                    ; $6f98: $02
    sbc [hl]                                      ; $6f99: $9e
    ld b, $06                                     ; $6f9a: $06 $06
    add c                                         ; $6f9c: $81
    sbc h                                         ; $6f9d: $9c
    push hl                                       ; $6f9e: $e5
    jr nz, jr_060_6fdf                            ; $6f9f: $20 $3e

    ld b, b                                       ; $6fa1: $40
    cp [hl]                                       ; $6fa2: $be
    add b                                         ; $6fa3: $80
    ld d, [hl]                                    ; $6fa4: $56
    ld h, b                                       ; $6fa5: $60
    ld c, $a0                                     ; $6fa6: $0e $a0
    add l                                         ; $6fa8: $85
    ld bc, $1005                                  ; $6fa9: $01 $05 $10
    ret                                           ; $6fac: $c9


    ret nz                                        ; $6fad: $c0

    add d                                         ; $6fae: $82
    ld [c], a                                     ; $6faf: $e2
    db $eb                                        ; $6fb0: $eb
    ld b, b                                       ; $6fb1: $40
    jp $9d20                                      ; $6fb2: $c3 $20 $9d


    add d                                         ; $6fb5: $82
    ld h, c                                       ; $6fb6: $61
    sbc b                                         ; $6fb7: $98
    ld b, b                                       ; $6fb8: $40
    rst $38                                       ; $6fb9: $ff
    ld h, c                                       ; $6fba: $61
    inc a                                         ; $6fbb: $3c
    ld a, [$c726]                                 ; $6fbc: $fa $26 $c7
    ld [bc], a                                    ; $6fbf: $02

Jump_060_6fc0:
jr_060_6fc0:
    sbc [hl]                                      ; $6fc0: $9e
    ld [$9e05], sp                                ; $6fc1: $08 $05 $9e
    jr z, jr_060_6fc8                             ; $6fc4: $28 $02

    cp [hl]                                       ; $6fc6: $be
    add c                                         ; $6fc7: $81

jr_060_6fc8:
    or h                                          ; $6fc8: $b4
    ld d, $60                                     ; $6fc9: $16 $60
    cp [hl]                                       ; $6fcb: $be
    pop bc                                        ; $6fcc: $c1
    ld b, b                                       ; $6fcd: $40
    ld c, $60                                     ; $6fce: $0e $60
    ld [bc], a                                    ; $6fd0: $02
    rrca                                          ; $6fd1: $0f
    ret                                           ; $6fd2: $c9


    ret nz                                        ; $6fd3: $c0

    sbc b                                         ; $6fd4: $98
    add c                                         ; $6fd5: $81
    sbc d                                         ; $6fd6: $9a
    ld b, $c0                                     ; $6fd7: $06 $c0
    ld b, l                                       ; $6fd9: $45
    ld h, c                                       ; $6fda: $61
    ld a, [de]                                    ; $6fdb: $1a
    ld b, e                                       ; $6fdc: $43
    sub e                                         ; $6fdd: $93
    ld b, e                                       ; $6fde: $43

jr_060_6fdf:
    cp l                                          ; $6fdf: $bd
    ld b, [hl]                                    ; $6fe0: $46
    ld b, c                                       ; $6fe1: $41
    ld b, d                                       ; $6fe2: $42
    sbc [hl]                                      ; $6fe3: $9e
    ld h, c                                       ; $6fe4: $61
    ld de, $42e5                                  ; $6fe5: $11 $e5 $42
    inc h                                         ; $6fe8: $24
    ld h, b                                       ; $6fe9: $60
    ld a, a                                       ; $6fea: $7f
    and b                                         ; $6feb: $a0
    sub $40                                       ; $6fec: $d6 $40
    ld b, l                                       ; $6fee: $45
    ld [hl], $d1                                  ; $6fef: $36 $d1
    ld h, e                                       ; $6ff1: $63
    rst $38                                       ; $6ff2: $ff
    ld b, [hl]                                    ; $6ff3: $46
    ld [bc], a                                    ; $6ff4: $02
    dec c                                         ; $6ff5: $0d
    ld bc, $9b00                                  ; $6ff6: $01 $00 $9b
    dec c                                         ; $6ff9: $0d
    ld [bc], a                                    ; $6ffa: $02
    ld [hl], $87                                  ; $6ffb: $36 $87
    ret nz                                        ; $6ffd: $c0

    and c                                         ; $6ffe: $a1
    and b                                         ; $6fff: $a0
    dec b                                         ; $7000: $05
    ld h, c                                       ; $7001: $61
    call nc, Call_060_56d5                        ; $7002: $d4 $d5 $56
    inc bc                                        ; $7005: $03
    dec a                                         ; $7006: $3d
    daa                                           ; $7007: $27
    ld [hl+], a                                   ; $7008: $22
    pop bc                                        ; $7009: $c1
    jp $a711                                      ; $700a: $c3 $11 $a7


    ld h, c                                       ; $700d: $61
    cp h                                          ; $700e: $bc
    ld [hl+], a                                   ; $700f: $22
    sbc c                                         ; $7010: $99
    inc bc                                        ; $7011: $03
    ld b, l                                       ; $7012: $45
    sub c                                         ; $7013: $91
    inc b                                         ; $7014: $04
    ld b, e                                       ; $7015: $43
    ret nz                                        ; $7016: $c0

    ld b, b                                       ; $7017: $40
    ld l, h                                       ; $7018: $6c
    pop bc                                        ; $7019: $c1
    ld b, $60                                     ; $701a: $06 $60
    add a                                         ; $701c: $87
    and e                                         ; $701d: $a3
    ld b, e                                       ; $701e: $43
    inc l                                         ; $701f: $2c
    call nz, $c121                                ; $7020: $c4 $21 $c1
    jp nz, Jump_060_6808                          ; $7023: $c2 $08 $68

    add b                                         ; $7026: $80
    ret nz                                        ; $7027: $c0

    cp h                                          ; $7028: $bc
    ld hl, $00bf                                  ; $7029: $21 $bf $00
    rst $38                                       ; $702c: $ff
    push af                                       ; $702d: $f5
    dec b                                         ; $702e: $05
    ld h, c                                       ; $702f: $61
    add [hl]                                      ; $7030: $86
    ld a, [bc]                                    ; $7031: $0a
    rlca                                          ; $7032: $07
    inc h                                         ; $7033: $24
    ret c                                         ; $7034: $d8

    reti                                          ; $7035: $d9


    rst $08                                       ; $7036: $cf
    sbc a                                         ; $7037: $9f
    sbc h                                         ; $7038: $9c
    ld b, $06                                     ; $7039: $06 $06
    jr z, jr_060_6fc0                             ; $703b: $28 $83

    dec a                                         ; $703d: $3d
    ld b, b                                       ; $703e: $40
    ld b, l                                       ; $703f: $45
    ld b, c                                       ; $7040: $41
    rla                                           ; $7041: $17
    ld b, c                                       ; $7042: $41
    scf                                           ; $7043: $37
    scf                                           ; $7044: $37
    db $fc                                        ; $7045: $fc
    rst $28                                       ; $7046: $ef
    ld b, l                                       ; $7047: $45
    dec b                                         ; $7048: $05
    ld h, d                                       ; $7049: $62
    ld b, e                                       ; $704a: $43
    dec l                                         ; $704b: $2d
    add b                                         ; $704c: $80
    pop bc                                        ; $704d: $c1
    sbc e                                         ; $704e: $9b
    jp c, Jump_060_42db                           ; $704f: $da $db $42

    ret nz                                        ; $7052: $c0

    dec b                                         ; $7053: $05
    sbc [hl]                                      ; $7054: $9e
    ld h, a                                       ; $7055: $67
    ld bc, $417e                                  ; $7056: $01 $7e $41
    ld b, d                                       ; $7059: $42
    dec de                                        ; $705a: $1b
    and h                                         ; $705b: $a4
    ld h, h                                       ; $705c: $64
    rst $38                                       ; $705d: $ff
    ldh a, [$a5]                                  ; $705e: $f0 $a5
    ld b, d                                       ; $7060: $42
    inc b                                         ; $7061: $04
    jp Jump_000_0f80                              ; $7062: $c3 $80 $0f


    jp nz, $f800                                  ; $7065: $c2 $00 $f8

    ld b, d                                       ; $7068: $42
    jp nz, Jump_000_213e                          ; $7069: $c2 $3e $21

    nop                                           ; $706c: $00
    add b                                         ; $706d: $80
    xor [hl]                                      ; $706e: $ae
    ld b, b                                       ; $706f: $40
    ld l, c                                       ; $7070: $69
    and e                                         ; $7071: $a3

jr_060_7072:
    dec [hl]                                      ; $7072: $35
    dec bc                                        ; $7073: $0b
    dec [hl]                                      ; $7074: $35
    and e                                         ; $7075: $a3
    db $fc                                        ; $7076: $fc
    db $ed                                        ; $7077: $ed
    ld l, d                                       ; $7078: $6a
    ld [hl], d                                    ; $7079: $72
    ret nz                                        ; $707a: $c0

    pop bc                                        ; $707b: $c1
    ld [bc], a                                    ; $707c: $02
    add b                                         ; $707d: $80
    ld c, $c2                                     ; $707e: $0e $c2
    nop                                           ; $7080: $00
    ret z                                         ; $7081: $c8

    ld b, d                                       ; $7082: $42
    jp nz, Jump_000_213e                          ; $7083: $c2 $3e $21

    ld a, [hl]                                    ; $7086: $7e
    ld b, b                                       ; $7087: $40
    xor a                                         ; $7088: $af
    inc bc                                        ; $7089: $03
    inc hl                                        ; $708a: $23
    db $fc                                        ; $708b: $fc
    db $ed                                        ; $708c: $ed
    ld l, d                                       ; $708d: $6a
    ld b, d                                       ; $708e: $42
    add c                                         ; $708f: $81
    xor [hl]                                      ; $7090: $ae
    pop bc                                        ; $7091: $c1
    ld [bc], a                                    ; $7092: $02
    ld b, e                                       ; $7093: $43
    db $ec                                        ; $7094: $ec
    ld b, h                                       ; $7095: $44
    nop                                           ; $7096: $00
    jp nz, Jump_060_4200                          ; $7097: $c2 $00 $42

    jp nz, Jump_000_03bc                          ; $709a: $c2 $bc $03

    and c                                         ; $709d: $a1
    ld l, a                                       ; $709e: $6f
    ld b, [hl]                                    ; $709f: $46
    ld b, b                                       ; $70a0: $40
    ld l, e                                       ; $70a1: $6b
    ld [hl], c                                    ; $70a2: $71
    rst $38                                       ; $70a3: $ff
    ldh a, [$6d]                                  ; $70a4: $f0 $6d
    ld b, b                                       ; $70a6: $40
    dec b                                         ; $70a7: $05
    and d                                         ; $70a8: $a2
    call nz, $d080                                ; $70a9: $c4 $80 $d0
    adc d                                         ; $70ac: $8a
    and c                                         ; $70ad: $a1
    ld de, $e002                                  ; $70ae: $11 $02 $e0
    ld l, d                                       ; $70b1: $6a
    ld hl, $417e                                  ; $70b2: $21 $7e $41
    ld b, l                                       ; $70b5: $45
    xor [hl]                                      ; $70b6: $ae
    ld l, a                                       ; $70b7: $6f
    dec a                                         ; $70b8: $3d
    jr c, jr_060_70f3                             ; $70b9: $38 $38

    dec a                                         ; $70bb: $3d
    db $fc                                        ; $70bc: $fc
    db $ed                                        ; $70bd: $ed
    scf                                           ; $70be: $37
    ld b, l                                       ; $70bf: $45
    add e                                         ; $70c0: $83
    ld bc, $d633                                  ; $70c1: $01 $33 $d6
    rst $10                                       ; $70c4: $d7
    add b                                         ; $70c5: $80
    rst $08                                       ; $70c6: $cf
    ld b, [hl]                                    ; $70c7: $46
    ld bc, $9e11                                  ; $70c8: $01 $11 $9e
    ld b, b                                       ; $70cb: $40
    ld [bc], a                                    ; $70cc: $02
    ld a, [hl]                                    ; $70cd: $7e
    ld b, e                                       ; $70ce: $43
    add c                                         ; $70cf: $81
    xor a                                         ; $70d0: $af
    inc bc                                        ; $70d1: $03
    jp nz, $edfc                                  ; $70d2: $c2 $fc $ed

    ld e, [hl]                                    ; $70d5: $5e
    and $43                                       ; $70d6: $e6 $43
    ld [$c080], a                                 ; $70d8: $ea $80 $c0
    ld b, [hl]                                    ; $70db: $46
    ld bc, $0111                                  ; $70dc: $01 $11 $01
    sbc a                                         ; $70df: $9f
    ld l, $83                                     ; $70e0: $2e $83
    ld a, [hl]                                    ; $70e2: $7e
    ld b, c                                       ; $70e3: $41
    rst $30                                       ; $70e4: $f7
    ld h, b                                       ; $70e5: $60
    cp $e1                                        ; $70e6: $fe $e1
    ld [hl], l                                    ; $70e8: $75
    add d                                         ; $70e9: $82
    dec c                                         ; $70ea: $0d
    and b                                         ; $70eb: $a0
    cp $e5                                        ; $70ec: $fe $e5
    jr nz, jr_060_7072                            ; $70ee: $20 $82

    ldh [$86], a                                  ; $70f0: $e0 $86
    ld b, c                                       ; $70f2: $41

jr_060_70f3:
    add [hl]                                      ; $70f3: $86
    ld l, c                                       ; $70f4: $69
    add a                                         ; $70f5: $87
    ld b, e                                       ; $70f6: $43
    or d                                          ; $70f7: $b2
    ld h, c                                       ; $70f8: $61
    ld de, $44ae                                  ; $70f9: $11 $ae $44
    and d                                         ; $70fc: $a2
    add d                                         ; $70fd: $82
    ld a, [hl]                                    ; $70fe: $7e
    inc hl                                        ; $70ff: $23
    ld [bc], a                                    ; $7100: $02
    and b                                         ; $7101: $a0
    and c                                         ; $7102: $a1
    sub c                                         ; $7103: $91
    ld b, [hl]                                    ; $7104: $46
    ld b, [hl]                                    ; $7105: $46
    sub c                                         ; $7106: $91
    ld c, h                                       ; $7107: $4c
    and b                                         ; $7108: $a0
    ld b, b                                       ; $7109: $40
    sub h                                         ; $710a: $94
    add d                                         ; $710b: $82
    ld c, h                                       ; $710c: $4c
    nop                                           ; $710d: $00
    ldh [rSCX], a                                 ; $710e: $e0 $43
    add [hl]                                      ; $7110: $86
    ld l, d                                       ; $7111: $6a
    dec a                                         ; $7112: $3d
    add e                                         ; $7113: $83
    ld [$11c1], sp                                ; $7114: $08 $c1 $11
    ld [hl], c                                    ; $7117: $71
    inc b                                         ; $7118: $04
    ld hl, sp+$7e                                 ; $7119: $f8 $7e
    and c                                         ; $711b: $a1
    ld h, e                                       ; $711c: $63
    ld h, c                                       ; $711d: $61
    ld hl, sp-$80                                 ; $711e: $f8 $80
    sbc [hl]                                      ; $7120: $9e
    sub b                                         ; $7121: $90
    ld b, [hl]                                    ; $7122: $46
    ld b, [hl]                                    ; $7123: $46
    sub b                                         ; $7124: $90
    ld bc, $c69e                                  ; $7125: $01 $9e $c6
    rst $20                                       ; $7128: $e7
    ldh [rSCY], a                                 ; $7129: $e0 $42
    add [hl]                                      ; $712b: $86
    ld l, e                                       ; $712c: $6b
    dec a                                         ; $712d: $3d
    inc hl                                        ; $712e: $23
    nop                                           ; $712f: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    pop bc                                        ; $7132: $c1
    nop                                           ; $7133: $00
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

Jump_060_713e:
    nop                                           ; $713e: $00
    nop                                           ; $713f: $00
    ld bc, $fe80                                  ; $7140: $01 $80 $fe
    ldh [rIE], a                                  ; $7143: $e0 $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    add sp, $00                                   ; $7149: $e8 $00
    nop                                           ; $714b: $00
    nop                                           ; $714c: $00
    ld [bc], a                                    ; $714d: $02
    nop                                           ; $714e: $00
    dec d                                         ; $714f: $15
    inc b                                         ; $7150: $04
    ld [bc], a                                    ; $7151: $02
    ld bc, $041f                                  ; $7152: $01 $1f $04
    ld [bc], a                                    ; $7155: $02
    ld [bc], a                                    ; $7156: $02
    inc d                                         ; $7157: $14
    dec b                                         ; $7158: $05
    ld [bc], a                                    ; $7159: $02
    inc bc                                        ; $715a: $03
    jr nz, jr_060_7162                            ; $715b: $20 $05

    ld [bc], a                                    ; $715d: $02
    inc b                                         ; $715e: $04
    ld de, $0206                                  ; $715f: $11 $06 $02

jr_060_7162:
    dec b                                         ; $7162: $05
    db $10                                        ; $7163: $10
    rlca                                          ; $7164: $07
    ld [bc], a                                    ; $7165: $02
    ld b, $12                                     ; $7166: $06 $12
    rlca                                          ; $7168: $07
    ld [bc], a                                    ; $7169: $02
    rlca                                          ; $716a: $07
    ld [hl+], a                                   ; $716b: $22
    rlca                                          ; $716c: $07
    ld [bc], a                                    ; $716d: $02
    ld [$072a], sp                                ; $716e: $08 $2a $07
    ld [bc], a                                    ; $7171: $02
    add hl, bc                                    ; $7172: $09
    ld de, $0208                                  ; $7173: $11 $08 $02
    ld a, [bc]                                    ; $7176: $0a
    dec d                                         ; $7177: $15
    ld [$0b02], sp                                ; $7178: $08 $02 $0b
    dec h                                         ; $717b: $25
    ld [$0c02], sp                                ; $717c: $08 $02 $0c
    inc d                                         ; $717f: $14
    add hl, bc                                    ; $7180: $09
    ld [bc], a                                    ; $7181: $02
    dec c                                         ; $7182: $0d
    ld d, $09                                     ; $7183: $16 $09
    ld [bc], a                                    ; $7185: $02
    ld c, $24                                     ; $7186: $0e $24
    add hl, bc                                    ; $7188: $09
    ld [bc], a                                    ; $7189: $02
    rrca                                          ; $718a: $0f
    ld [de], a                                    ; $718b: $12
    ld a, [bc]                                    ; $718c: $0a
    ld [bc], a                                    ; $718d: $02
    db $10                                        ; $718e: $10
    dec d                                         ; $718f: $15
    ld a, [bc]                                    ; $7190: $0a
    ld [bc], a                                    ; $7191: $02
    ld de, $0b14                                  ; $7192: $11 $14 $0b
    ld [bc], a                                    ; $7195: $02
    ld [de], a                                    ; $7196: $12
    db $10                                        ; $7197: $10
    inc c                                         ; $7198: $0c
    ld [bc], a                                    ; $7199: $02
    inc de                                        ; $719a: $13
    dec l                                         ; $719b: $2d
    dec c                                         ; $719c: $0d
    ld [bc], a                                    ; $719d: $02
    inc d                                         ; $719e: $14
    inc de                                        ; $719f: $13
    ld c, $02                                     ; $71a0: $0e $02
    dec d                                         ; $71a2: $15
    inc l                                         ; $71a3: $2c
    ld c, $02                                     ; $71a4: $0e $02
    ld d, $10                                     ; $71a6: $16 $10
    rrca                                          ; $71a8: $0f
    ld [bc], a                                    ; $71a9: $02
    rla                                           ; $71aa: $17
    inc d                                         ; $71ab: $14
    rrca                                          ; $71ac: $0f
    ld [bc], a                                    ; $71ad: $02
    jr jr_060_71bf                                ; $71ae: $18 $0f

    db $10                                        ; $71b0: $10
    ld [bc], a                                    ; $71b1: $02
    add hl, de                                    ; $71b2: $19
    ld de, $0210                                  ; $71b3: $11 $10 $02
    ld a, [de]                                    ; $71b6: $1a
    db $10                                        ; $71b7: $10
    ld de, $1b02                                  ; $71b8: $11 $02 $1b
    jr nz, jr_060_71ce                            ; $71bb: $20 $11

    ld [bc], a                                    ; $71bd: $02
    inc e                                         ; $71be: $1c

jr_060_71bf:
    ld de, $0213                                  ; $71bf: $11 $13 $02
    dec e                                         ; $71c2: $1d
    jr @+$16                                      ; $71c3: $18 $14

    ld [bc], a                                    ; $71c5: $02
    ld e, $10                                     ; $71c6: $1e $10
    dec d                                         ; $71c8: $15
    ld [bc], a                                    ; $71c9: $02
    rra                                           ; $71ca: $1f
    ld [de], a                                    ; $71cb: $12
    dec d                                         ; $71cc: $15
    ld [bc], a                                    ; $71cd: $02

jr_060_71ce:
    jr nz, jr_060_71f1                            ; $71ce: $20 $21

    dec d                                         ; $71d0: $15
    ld [bc], a                                    ; $71d1: $02
    ld hl, $1528                                  ; $71d2: $21 $28 $15
    ld [bc], a                                    ; $71d5: $02
    ld [hl+], a                                   ; $71d6: $22
    ld de, $0216                                  ; $71d7: $11 $16 $02
    inc hl                                        ; $71da: $23
    db $10                                        ; $71db: $10
    jr jr_060_71e0                                ; $71dc: $18 $02

    inc h                                         ; $71de: $24
    dec d                                         ; $71df: $15

jr_060_71e0:
    jr @+$04                                      ; $71e0: $18 $02

    dec h                                         ; $71e2: $25
    ld c, $1a                                     ; $71e3: $0e $1a
    ld [bc], a                                    ; $71e5: $02
    ld h, $20                                     ; $71e6: $26 $20
    ld a, [de]                                    ; $71e8: $1a
    ld [bc], a                                    ; $71e9: $02
    daa                                           ; $71ea: $27
    add hl, hl                                    ; $71eb: $29
    ld a, [de]                                    ; $71ec: $1a
    ld [bc], a                                    ; $71ed: $02
    jr z, jr_060_71fd                             ; $71ee: $28 $0d

    dec de                                        ; $71f0: $1b

jr_060_71f1:
    ld [bc], a                                    ; $71f1: $02
    add hl, hl                                    ; $71f2: $29
    rrca                                          ; $71f3: $0f
    dec de                                        ; $71f4: $1b
    ld [bc], a                                    ; $71f5: $02
    ld a, [hl+]                                   ; $71f6: $2a
    rra                                           ; $71f7: $1f
    dec de                                        ; $71f8: $1b
    ld [bc], a                                    ; $71f9: $02
    dec hl                                        ; $71fa: $2b
    inc c                                         ; $71fb: $0c
    inc e                                         ; $71fc: $1c

jr_060_71fd:
    ld [bc], a                                    ; $71fd: $02
    inc l                                         ; $71fe: $2c
    dec c                                         ; $71ff: $0d
    dec e                                         ; $7200: $1d
    ld [bc], a                                    ; $7201: $02
    dec l                                         ; $7202: $2d
    inc l                                         ; $7203: $2c
    jr nz, jr_060_7208                            ; $7204: $20 $02

    ld l, $0e                                     ; $7206: $2e $0e

jr_060_7208:
    ld hl, $2f02                                  ; $7208: $21 $02 $2f
    ld de, $0222                                  ; $720b: $11 $22 $02
    jr nc, jr_060_721d                            ; $720e: $30 $0d

    inc h                                         ; $7210: $24
    ld [bc], a                                    ; $7211: $02
    ld sp, $250e                                  ; $7212: $31 $0e $25
    ld [bc], a                                    ; $7215: $02
    ld [hl-], a                                   ; $7216: $32
    rrca                                          ; $7217: $0f
    dec hl                                        ; $7218: $2b
    ld [bc], a                                    ; $7219: $02
    inc sp                                        ; $721a: $33
    dec l                                         ; $721b: $2d
    inc l                                         ; $721c: $2c

jr_060_721d:
    ld [bc], a                                    ; $721d: $02
    inc [hl]                                      ; $721e: $34
    ld l, $2d                                     ; $721f: $2e $2d
    ld [bc], a                                    ; $7221: $02
    dec [hl]                                      ; $7222: $35
    dec l                                         ; $7223: $2d
    ld l, $02                                     ; $7224: $2e $02
    ld [hl], $11                                  ; $7226: $36 $11
    cpl                                           ; $7228: $2f
    ld [bc], a                                    ; $7229: $02
    scf                                           ; $722a: $37
    dec hl                                        ; $722b: $2b
    jr nc, jr_060_7230                            ; $722c: $30 $02

    jr c, jr_060_723f                             ; $722e: $38 $0f

jr_060_7230:
    ld sp, $3902                                  ; $7230: $31 $02 $39
    db $10                                        ; $7233: $10
    ld [hl-], a                                   ; $7234: $32
    ld [bc], a                                    ; $7235: $02
    ld a, [hl-]                                   ; $7236: $3a
    daa                                           ; $7237: $27
    inc sp                                        ; $7238: $33
    ld [bc], a                                    ; $7239: $02
    dec sp                                        ; $723a: $3b
    ld h, $34                                     ; $723b: $26 $34
    ld [bc], a                                    ; $723d: $02
    inc a                                         ; $723e: $3c

jr_060_723f:
    rrca                                          ; $723f: $0f
    add hl, sp                                    ; $7240: $39
    ld [bc], a                                    ; $7241: $02
    dec a                                         ; $7242: $3d
    jr z, jr_060_727f                             ; $7243: $28 $3a

    ld [bc], a                                    ; $7245: $02
    ld a, $11                                     ; $7246: $3e $11
    inc a                                         ; $7248: $3c
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    ld d, h                                       ; $724c: $54
    ld [hl], d                                    ; $724d: $72
    ret nc                                        ; $724e: $d0

    halt                                          ; $724f: $76
    ret nc                                        ; $7250: $d0

    ld a, e                                       ; $7251: $7b
    db $eb                                        ; $7252: $eb
    ld a, e                                       ; $7253: $7b
    cp a                                          ; $7254: $bf
    ld c, $0e                                     ; $7255: $0e $0e
    dec c                                         ; $7257: $0d
    dec c                                         ; $7258: $0d
    dec c                                         ; $7259: $0d
    ld c, $fa                                     ; $725a: $0e $fa
    db $ed                                        ; $725c: $ed
    ld c, $07                                     ; $725d: $0e $07
    ld c, $4d                                     ; $725f: $0e $4d
    ld c, l                                       ; $7261: $4d
    db $fc                                        ; $7262: $fc
    ldh a, [$e8]                                  ; $7263: $f0 $e8
    pop hl                                        ; $7265: $e1
    db $d3                                        ; $7266: $d3
    ldh [$d6], a                                  ; $7267: $e0 $d6
    db $eb                                        ; $7269: $eb
    cp $f0                                        ; $726a: $fe $f0
    add b                                         ; $726c: $80
    ld [$d0e8], a                                 ; $726d: $ea $e8 $d0
    ld [c], a                                     ; $7270: $e2
    call z, $b0e1                                 ; $7271: $cc $e1 $b0
    ldh [rIE], a                                  ; $7274: $e0 $ff
    rst $38                                       ; $7276: $ff
    ret nz                                        ; $7277: $c0

    push hl                                       ; $7278: $e5
    ld a, [hl]                                    ; $7279: $7e
    rst $20                                       ; $727a: $e7
    ld c, l                                       ; $727b: $4d
    dec de                                        ; $727c: $1b
    ld c, l                                       ; $727d: $4d
    dec c                                         ; $727e: $0d

jr_060_727f:
    ei                                            ; $727f: $fb
    pop hl                                        ; $7280: $e1
    ld c, l                                       ; $7281: $4d
    dec l                                         ; $7282: $2d
    ld hl, sp-$20                                 ; $7283: $f8 $e0
    add d                                         ; $7285: $82
    rst $20                                       ; $7286: $e7
    push de                                       ; $7287: $d5
    jp hl                                         ; $7288: $e9


    ld a, b                                       ; $7289: $78
    ld b, e                                       ; $728a: $43
    db $eb                                        ; $728b: $eb
    db $fc                                        ; $728c: $fc
    push hl                                       ; $728d: $e5
    add d                                         ; $728e: $82
    push hl                                       ; $728f: $e5
    dec c                                         ; $7290: $0d
    dec c                                         ; $7291: $0d
    ld l, l                                       ; $7292: $6d
    ld l, e                                       ; $7293: $6b
    rst $38                                       ; $7294: $ff
    pop hl                                        ; $7295: $e1
    add e                                         ; $7296: $83
    ld c, l                                       ; $7297: $4d
    dec l                                         ; $7298: $2d
    ld a, [hl]                                    ; $7299: $7e
    rst $20                                       ; $729a: $e7
    ld [$0de1], a                                 ; $729b: $ea $e1 $0d
    and $b4                                       ; $729e: $e6 $b4
    db $ec                                        ; $72a0: $ec
    inc b                                         ; $72a1: $04
    jp hl                                         ; $72a2: $e9


    dec c                                         ; $72a3: $0d
    ld a, [hl]                                    ; $72a4: $7e
    pop bc                                        ; $72a5: $c1
    ldh [$6d], a                                  ; $72a6: $e0 $6d
    dec hl                                        ; $72a8: $2b
    ld a, [bc]                                    ; $72a9: $0a
    ld a, [bc]                                    ; $72aa: $0a
    dec bc                                        ; $72ab: $0b
    dec bc                                        ; $72ac: $0b
    cp a                                          ; $72ad: $bf
    ld [c], a                                     ; $72ae: $e2
    or b                                          ; $72af: $b0
    ld [hl], l                                    ; $72b0: $75
    ldh [$fc], a                                  ; $72b1: $e0 $fc
    call nz, $f434                                ; $72b3: $c4 $34 $f4
    or b                                          ; $72b6: $b0
    xor $4d                                       ; $72b7: $ee $4d
    ld c, l                                       ; $72b9: $4d
    pop bc                                        ; $72ba: $c1
    ldh [$2a], a                                  ; $72bb: $e0 $2a
    rst $38                                       ; $72bd: $ff
    ld a, [bc]                                    ; $72be: $0a
    ld a, [bc]                                    ; $72bf: $0a
    ld l, d                                       ; $72c0: $6a
    dec bc                                        ; $72c1: $0b
    dec c                                         ; $72c2: $0d
    ld l, e                                       ; $72c3: $6b
    ld l, e                                       ; $72c4: $6b
    dec l                                         ; $72c5: $2d
    ld bc, $fc0d                                  ; $72c6: $01 $0d $fc
    push bc                                       ; $72c9: $c5
    ret nz                                        ; $72ca: $c0

    db $eb                                        ; $72cb: $eb
    add [hl]                                      ; $72cc: $86
    call $e218                                    ; $72cd: $cd $18 $e2
    add d                                         ; $72d0: $82
    pop hl                                        ; $72d1: $e1
    ld b, [hl]                                    ; $72d2: $46
    pop hl                                        ; $72d3: $e1
    add d                                         ; $72d4: $82
    ldh [rTMA], a                                 ; $72d5: $e0 $06
    ret nz                                        ; $72d7: $c0

    ldh [$2a], a                                  ; $72d8: $e0 $2a
    ld c, e                                       ; $72da: $4b
    ret nz                                        ; $72db: $c0

    ldh [$3e], a                                  ; $72dc: $e0 $3e
    ldh [$f5], a                                  ; $72de: $e0 $f5
    ret nz                                        ; $72e0: $c0

    ld d, [hl]                                    ; $72e1: $56
    rst $08                                       ; $72e2: $cf
    add [hl]                                      ; $72e3: $86
    push de                                       ; $72e4: $d5
    inc d                                         ; $72e5: $14
    rlca                                          ; $72e6: $07
    ld [c], a                                     ; $72e7: $e2
    add c                                         ; $72e8: $81
    ldh [$0b], a                                  ; $72e9: $e0 $0b
    rst $38                                       ; $72eb: $ff
    ldh [$2b], a                                  ; $72ec: $e0 $2b
    ld a, $e4                                     ; $72ee: $3e $e4

jr_060_72f0:
    ld h, e                                       ; $72f0: $63
    call z, $d046                                 ; $72f1: $cc $46 $d0
    ld [$c708], sp                                ; $72f4: $08 $08 $c7
    ld c, l                                       ; $72f7: $4d
    ldh [rWY], a                                  ; $72f8: $e0 $4a
    ldh [$2b], a                                  ; $72fa: $e0 $2b
    pop bc                                        ; $72fc: $c1
    pop hl                                        ; $72fd: $e1
    ret nz                                        ; $72fe: $c0

    ldh [$3e], a                                  ; $72ff: $e0 $3e
    db $e3                                        ; $7301: $e3
    xor [hl]                                      ; $7302: $ae
    jp nz, $8054                                  ; $7303: $c2 $54 $80

    sub $e6                                       ; $7306: $d6 $e6
    ret                                           ; $7308: $c9


    ld c, l                                       ; $7309: $4d
    adc b                                         ; $730a: $88
    pop bc                                        ; $730b: $c1
    dec c                                         ; $730c: $0d
    pop bc                                        ; $730d: $c1
    ldh [rWX], a                                  ; $730e: $e0 $4b
    add b                                         ; $7310: $80
    ldh [rIF], a                                  ; $7311: $e0 $0f
    ld c, e                                       ; $7313: $4b
    ld l, e                                       ; $7314: $6b
    ld a, [bc]                                    ; $7315: $0a
    ld c, d                                       ; $7316: $4a
    ret nz                                        ; $7317: $c0

    db $e4                                        ; $7318: $e4
    ld e, [hl]                                    ; $7319: $5e
    ret z                                         ; $731a: $c8

    add b                                         ; $731b: $80
    adc $8a                                       ; $731c: $ce $8a
    push bc                                       ; $731e: $c5
    ld a, [hl-]                                   ; $731f: $3a
    ld l, h                                       ; $7320: $6c
    and c                                         ; $7321: $a1
    ld c, l                                       ; $7322: $4d
    ld c, c                                       ; $7323: $49
    jp Jump_060_4b2b                              ; $7324: $c3 $2b $4b


    ld c, e                                       ; $7327: $4b
    jp $ffe0                                      ; $7328: $c3 $e0 $ff


    pop hl                                        ; $732b: $e1
    ld [bc], a                                    ; $732c: $02
    ld [hl], d                                    ; $732d: $72
    ldh [$6d], a                                  ; $732e: $e0 $6d
    ld a, [hl]                                    ; $7330: $7e
    jp nz, $b48c                                  ; $7331: $c2 $8c $b4

    ld a, a                                       ; $7334: $7f
    xor e                                         ; $7335: $ab
    add e                                         ; $7336: $83
    pop hl                                        ; $7337: $e1
    ld [$c0e1], sp                                ; $7338: $08 $e1 $c0
    pop hl                                        ; $733b: $e1
    ld b, $c1                                     ; $733c: $06 $c1
    pop hl                                        ; $733e: $e1
    ld a, [hl+]                                   ; $733f: $2a
    ld c, e                                       ; $7340: $4b
    ld a, a                                       ; $7341: $7f
    pop bc                                        ; $7342: $c1
    ld a, h                                       ; $7343: $7c
    or d                                          ; $7344: $b2
    nop                                           ; $7345: $00
    and [hl]                                      ; $7346: $a6
    sub e                                         ; $7347: $93
    and b                                         ; $7348: $a0
    jr jr_060_72f0                                ; $7349: $18 $a5

    dec d                                         ; $734b: $15
    ld c, l                                       ; $734c: $4d
    call z, $0da0                                 ; $734d: $cc $a0 $0d
    ld a, [bc]                                    ; $7350: $0a
    pop hl                                        ; $7351: $e1
    dec bc                                        ; $7352: $0b
    add b                                         ; $7353: $80
    db $e3                                        ; $7354: $e3
    ld a, a                                       ; $7355: $7f
    jp nz, $a07d                                  ; $7356: $c2 $7d $a0

    ret nz                                        ; $7359: $c0

    nop                                           ; $735a: $00
    cp b                                          ; $735b: $b8
    jp nz, Jump_060_41e2                          ; $735c: $c2 $e2 $41

    and l                                         ; $735f: $a5
    adc h                                         ; $7360: $8c
    and b                                         ; $7361: $a0
    set 0, d                                      ; $7362: $cb $c2
    pop bc                                        ; $7364: $c1
    ldh [rOCPD], a                                ; $7365: $e0 $6b
    ld c, e                                       ; $7367: $4b
    inc c                                         ; $7368: $0c
    cp c                                          ; $7369: $b9
    ret nz                                        ; $736a: $c0

    cp $e1                                        ; $736b: $fe $e1
    ld l, e                                       ; $736d: $6b
    dec l                                         ; $736e: $2d
    ld c, b                                       ; $736f: $48
    ld a, [$e882]                                 ; $7370: $fa $82 $e8
    ld b, d                                       ; $7373: $42
    db $e3                                        ; $7374: $e3
    add [hl]                                      ; $7375: $86
    jp nz, $c100                                  ; $7376: $c2 $00 $c1

    ld [c], a                                     ; $7379: $e2
    jp nz, Jump_000_01e2                          ; $737a: $c2 $e2 $01

    ldh [rP1], a                                  ; $737d: $e0 $00
    cp l                                          ; $737f: $bd
    add d                                         ; $7380: $82
    and $50                                       ; $7381: $e6 $50
    and b                                         ; $7383: $a0
    add l                                         ; $7384: $85
    pop bc                                        ; $7385: $c1
    add b                                         ; $7386: $80
    db $e3                                        ; $7387: $e3
    inc c                                         ; $7388: $0c
    pop bc                                        ; $7389: $c1
    ldh [$fe], a                                  ; $738a: $e0 $fe
    add c                                         ; $738c: $81
    dec c                                         ; $738d: $0d
    ld l, l                                       ; $738e: $6d
    ld d, h                                       ; $738f: $54
    add a                                         ; $7390: $87
    nop                                           ; $7391: $00
    cp b                                          ; $7392: $b8
    adc a                                         ; $7393: $8f
    add c                                         ; $7394: $81
    ld de, $8ba1                                  ; $7395: $11 $a1 $8b
    ld l, e                                       ; $7398: $6b
    dec hl                                        ; $7399: $2b
    ld b, $c3                                     ; $739a: $06 $c3
    dec bc                                        ; $739c: $0b
    pop bc                                        ; $739d: $c1
    pop hl                                        ; $739e: $e1
    db $dd                                        ; $739f: $dd
    ld h, b                                       ; $73a0: $60
    pop bc                                        ; $73a1: $c1
    ldh [$2d], a                                  ; $73a2: $e0 $2d
    call z, $c340                                 ; $73a4: $cc $40 $c3
    cp $fd                                        ; $73a7: $fe $fd
    ld c, l                                       ; $73a9: $4d
    ld c, l                                       ; $73aa: $4d
    ld [de], a                                    ; $73ab: $12
    and c                                         ; $73ac: $a1
    ld b, c                                       ; $73ad: $41
    db $e3                                        ; $73ae: $e3
    dec bc                                        ; $73af: $0b
    ld l, e                                       ; $73b0: $6b
    ldh [rTMA], a                                 ; $73b1: $e0 $06
    and c                                         ; $73b3: $a1
    add l                                         ; $73b4: $85
    ldh [$b2], a                                  ; $73b5: $e0 $b2
    add c                                         ; $73b7: $81
    nop                                           ; $73b8: $00
    db $f4                                        ; $73b9: $f4
    add b                                         ; $73ba: $80
    ld h, [hl]                                    ; $73bb: $66
    dec c                                         ; $73bc: $0d
    ld c, $2e                                     ; $73bd: $0e $2e
    inc b                                         ; $73bf: $04
    inc b                                         ; $73c0: $04
    jp nz, $e0c0                                  ; $73c1: $c2 $c0 $e0

    dec hl                                        ; $73c4: $2b
    ld b, [hl]                                    ; $73c5: $46
    ret nz                                        ; $73c6: $c0

    add c                                         ; $73c7: $81
    db $e3                                        ; $73c8: $e3
    add h                                         ; $73c9: $84
    add c                                         ; $73ca: $81
    ld b, l                                       ; $73cb: $45
    add b                                         ; $73cc: $80
    ld l, [hl]                                    ; $73cd: $6e
    ld h, c                                       ; $73ce: $61
    ld d, b                                       ; $73cf: $50
    ret nz                                        ; $73d0: $c0

    ret nz                                        ; $73d1: $c0

    ld [hl], a                                    ; $73d2: $77
    pop hl                                        ; $73d3: $e1
    nop                                           ; $73d4: $00
    or h                                          ; $73d5: $b4
    inc c                                         ; $73d6: $0c
    add a                                         ; $73d7: $87
    ld c, l                                       ; $73d8: $4d
    jp z, Jump_060_4a80                           ; $73d9: $ca $80 $4a

    ld c, b                                       ; $73dc: $48
    and e                                         ; $73dd: $a3
    nop                                           ; $73de: $00
    add d                                         ; $73df: $82
    ret nz                                        ; $73e0: $c0

    ld b, a                                       ; $73e1: $47
    jp nz, $8d92                                  ; $73e2: $c2 $92 $8d

    ld c, h                                       ; $73e5: $4c
    ld [hl], e                                    ; $73e6: $73
    ld [$c163], sp                                ; $73e7: $08 $63 $c1
    ret nz                                        ; $73ea: $c0

    inc c                                         ; $73eb: $0c
    add c                                         ; $73ec: $81
    pop bc                                        ; $73ed: $c1
    and c                                         ; $73ee: $a1
    add h                                         ; $73ef: $84
    ld [bc], a                                    ; $73f0: $02
    ret nz                                        ; $73f1: $c0

    ld [c], a                                     ; $73f2: $e2
    ld b, b                                       ; $73f3: $40
    dec bc                                        ; $73f4: $0b
    ld [$a4a3], sp                                ; $73f5: $08 $a3 $a4
    ld h, l                                       ; $73f8: $65
    add b                                         ; $73f9: $80
    halt                                          ; $73fa: $76
    ld c, $65                                     ; $73fb: $0e $65
    dec bc                                        ; $73fd: $0b
    rla                                           ; $73fe: $17
    dec bc                                        ; $73ff: $0b
    ld a, [bc]                                    ; $7400: $0a
    ld c, d                                       ; $7401: $4a
    ret nz                                        ; $7402: $c0

    pop hl                                        ; $7403: $e1
    dec c                                         ; $7404: $0d
    pop bc                                        ; $7405: $c1
    db $e3                                        ; $7406: $e3
    ret nz                                        ; $7407: $c0

    db $e3                                        ; $7408: $e3
    ld d, b                                       ; $7409: $50
    ld [hl], l                                    ; $740a: $75
    sbc b                                         ; $740b: $98
    add [hl]                                      ; $740c: $86
    ld l, e                                       ; $740d: $6b
    inc e                                         ; $740e: $1c
    ld h, d                                       ; $740f: $62
    ld bc, $0ae0                                  ; $7410: $01 $e0 $0a
    ld c, d                                       ; $7413: $4a
    ret nz                                        ; $7414: $c0

    and b                                         ; $7415: $a0
    ld a, b                                       ; $7416: $78
    ret nz                                        ; $7417: $c0

    ld c, e                                       ; $7418: $4b
    ld h, b                                       ; $7419: $60
    cp d                                          ; $741a: $ba
    pop hl                                        ; $741b: $e1
    ld [$eca0], sp                                ; $741c: $08 $a0 $ec
    ld h, l                                       ; $741f: $65
    add [hl]                                      ; $7420: $86
    ld a, a                                       ; $7421: $7f
    ret nz                                        ; $7422: $c0

    ld [c], a                                     ; $7423: $e2
    ld l, e                                       ; $7424: $6b
    ld c, d                                       ; $7425: $4a
    ret nc                                        ; $7426: $d0

    add b                                         ; $7427: $80
    inc b                                         ; $7428: $04
    ld b, h                                       ; $7429: $44
    and c                                         ; $742a: $a1
    ld b, l                                       ; $742b: $45
    ld h, b                                       ; $742c: $60
    dec bc                                        ; $742d: $0b
    ld b, c                                       ; $742e: $41
    ldh [rTMA], a                                 ; $742f: $e0 $06
    ld h, a                                       ; $7431: $67
    ld a, d                                       ; $7432: $7a
    ld d, b                                       ; $7433: $50
    add [hl]                                      ; $7434: $86
    ld l, l                                       ; $7435: $6d
    ld b, b                                       ; $7436: $40
    ldh [rNR22], a                                ; $7437: $e0 $17
    dec bc                                        ; $7439: $0b
    ld a, [hl+]                                   ; $743a: $2a

jr_060_743b:
    ld a, [hl+]                                   ; $743b: $2a
    ld b, [hl]                                    ; $743c: $46
    ret nz                                        ; $743d: $c0

    dec bc                                        ; $743e: $0b
    add $80                                       ; $743f: $c6 $80
    ld b, [hl]                                    ; $7441: $46
    ld h, b                                       ; $7442: $60
    ld bc, $30e0                                  ; $7443: $01 $e0 $30
    nop                                           ; $7446: $00

Jump_060_7447:
    and $d6                                       ; $7447: $e6 $d6
    ld sp, $4d0c                                  ; $7449: $31 $0c $4d
    adc b                                         ; $744c: $88
    add d                                         ; $744d: $82
    ld a, [bc]                                    ; $744e: $0a
    ld l, d                                       ; $744f: $6a
    cp $a0                                        ; $7450: $fe $a0

jr_060_7452:
    add [hl]                                      ; $7452: $86
    add c                                         ; $7453: $81
    rlca                                          ; $7454: $07
    ld c, d                                       ; $7455: $4a
    dec c                                         ; $7456: $0d
    dec bc                                        ; $7457: $0b
    adc b                                         ; $7458: $88
    ld h, h                                       ; $7459: $64
    add [hl]                                      ; $745a: $86
    ld a, l                                       ; $745b: $7d
    jp c, $c025                                   ; $745c: $da $25 $c0

    db $e3                                        ; $745f: $e3
    ccf                                           ; $7460: $3f
    pop hl                                        ; $7461: $e1
    dec b                                         ; $7462: $05
    dec hl                                        ; $7463: $2b
    ld b, $80                                     ; $7464: $06 $80
    ld c, d                                       ; $7466: $4a
    ld b, c                                       ; $7467: $41
    ld h, b                                       ; $7468: $60
    inc bc                                        ; $7469: $03
    ld b, c                                       ; $746a: $41
    ld b, [hl]                                    ; $746b: $46
    push de                                       ; $746c: $d5
    nop                                           ; $746d: $00
    or b                                          ; $746e: $b0
    ld b, l                                       ; $746f: $45
    ret nz                                        ; $7470: $c0

    inc e                                         ; $7471: $1c
    ld a, a                                       ; $7472: $7f
    ret nz                                        ; $7473: $c0

    ld a, a                                       ; $7474: $7f
    ldh [rWX], a                                  ; $7475: $e0 $4b
    dec hl                                        ; $7477: $2b
    dec bc                                        ; $7478: $0b
    rst $30                                       ; $7479: $f7
    ret nz                                        ; $747a: $c0

    ld a, $e1                                     ; $747b: $3e $e1
    adc d                                         ; $747d: $8a
    ld b, [hl]                                    ; $747e: $46
    ret nc                                        ; $747f: $d0

    inc de                                        ; $7480: $13
    cpl                                           ; $7481: $2f
    nop                                           ; $7482: $00
    xor [hl]                                      ; $7483: $ae
    ld b, a                                       ; $7484: $47
    pop bc                                        ; $7485: $c1
    add b                                         ; $7486: $80
    pop hl                                        ; $7487: $e1
    ld a, [bc]                                    ; $7488: $0a
    inc b                                         ; $7489: $04
    add b                                         ; $748a: $80
    dec bc                                        ; $748b: $0b
    ld a, [bc]                                    ; $748c: $0a
    add c                                         ; $748d: $81
    ld a, [bc]                                    ; $748e: $0a
    jr c, jr_060_7452                             ; $748f: $38 $c1

    ld b, [hl]                                    ; $7491: $46
    add b                                         ; $7492: $80
    inc b                                         ; $7493: $04
    ld hl, $ffff                                  ; $7494: $21 $ff $ff
    nop                                           ; $7497: $00
    db $e3                                        ; $7498: $e3
    jp nz, Jump_000_2ae2                          ; $7499: $c2 $e2 $2a

    ld b, $45                                     ; $749c: $06 $45
    ld h, c                                       ; $749e: $61
    dec hl                                        ; $749f: $2b
    ld a, [hl+]                                   ; $74a0: $2a
    ret nz                                        ; $74a1: $c0

    ldh [$7e], a                                  ; $74a2: $e0 $7e
    ret nz                                        ; $74a4: $c0

    inc de                                        ; $74a5: $13
    ld a, $80                                     ; $74a6: $3e $80
    ld h, d                                       ; $74a8: $62
    inc b                                         ; $74a9: $04
    ld h, h                                       ; $74aa: $64
    ld a, [de]                                    ; $74ab: $1a
    add e                                         ; $74ac: $83
    ld [c], a                                     ; $74ad: $e2
    ld a, [bc]                                    ; $74ae: $0a
    ld b, l                                       ; $74af: $45
    ld h, d                                       ; $74b0: $62
    ld c, e                                       ; $74b1: $4b
    dec hl                                        ; $74b2: $2b
    pop bc                                        ; $74b3: $c1
    ld b, c                                       ; $74b4: $41
    rst $38                                       ; $74b5: $ff
    and c                                         ; $74b6: $a1
    inc b                                         ; $74b7: $04
    and h                                         ; $74b8: $a4
    jr nz, jr_060_743b                            ; $74b9: $20 $80

    rst $10                                       ; $74bb: $d7

Call_060_74bc:
    add d                                         ; $74bc: $82
    ld h, a                                       ; $74bd: $67
    call z, Call_060_4921                         ; $74be: $cc $21 $49
    ld b, b                                       ; $74c1: $40
    add $41                                       ; $74c2: $c6 $41
    ld c, e                                       ; $74c4: $4b
    ret nz                                        ; $74c5: $c0

    ret nz                                        ; $74c6: $c0

    add b                                         ; $74c7: $80
    and a                                         ; $74c8: $a7
    ld e, b                                       ; $74c9: $58
    ld b, $5a                                     ; $74ca: $06 $5a
    and d                                         ; $74cc: $a2
    inc b                                         ; $74cd: $04
    ld [$4a41], sp                                ; $74ce: $08 $41 $4a
    ld a, [bc]                                    ; $74d1: $0a
    ld c, e                                       ; $74d2: $4b
    ld b, b                                       ; $74d3: $40
    ld c, e                                       ; $74d4: $4b
    ld b, [hl]                                    ; $74d5: $46
    ld b, b                                       ; $74d6: $40
    ld [hl], b                                    ; $74d7: $70
    add a                                         ; $74d8: $87
    ld b, c                                       ; $74d9: $41
    nop                                           ; $74da: $00
    xor c                                         ; $74db: $a9
    add b                                         ; $74dc: $80
    db $db                                        ; $74dd: $db
    adc h                                         ; $74de: $8c
    dec b                                         ; $74df: $05
    dec l                                         ; $74e0: $2d
    ld a, [hl+]                                   ; $74e1: $2a
    ld a, [bc]                                    ; $74e2: $0a
    add c                                         ; $74e3: $81
    db $e3                                        ; $74e4: $e3
    nop                                           ; $74e5: $00
    ld c, b                                       ; $74e6: $48
    ld b, d                                       ; $74e7: $42
    ld a, c                                       ; $74e8: $79
    ld b, b                                       ; $74e9: $40
    ld b, [hl]                                    ; $74ea: $46
    add c                                         ; $74eb: $81
    daa                                           ; $74ec: $27
    ld b, $00                                     ; $74ed: $06 $00
    or d                                          ; $74ef: $b2
    adc [hl]                                      ; $74f0: $8e
    ld b, $7e                                     ; $74f1: $06 $7e
    ld [bc], a                                    ; $74f3: $02
    jp $0041                                      ; $74f4: $c3 $41 $00


    call z, $8120                                 ; $74f7: $cc $20 $81
    pop hl                                        ; $74fa: $e1
    ld b, $20                                     ; $74fb: $06 $20
    ld a, [hl]                                    ; $74fd: $7e
    and c                                         ; $74fe: $a1
    add [hl]                                      ; $74ff: $86
    ld b, [hl]                                    ; $7500: $46
    ld b, e                                       ; $7501: $43
    inc [hl]                                      ; $7502: $34
    add sp, -$77                                  ; $7503: $e8 $89
    ld c, a                                       ; $7505: $4f
    add b                                         ; $7506: $80
    add b                                         ; $7507: $80
    ld b, h                                       ; $7508: $44
    ld h, h                                       ; $7509: $64
    rst $00                                       ; $750a: $c7
    ld [bc], a                                    ; $750b: $02
    ld b, b                                       ; $750c: $40
    jp nz, Jump_060_5306                          ; $750d: $c2 $06 $53

    nop                                           ; $7510: $00
    xor [hl]                                      ; $7511: $ae
    nop                                           ; $7512: $00
    add [hl]                                      ; $7513: $86
    jp nz, $0a64                                  ; $7514: $c2 $64 $0a

    inc b                                         ; $7517: $04
    ld bc, $3f81                                  ; $7518: $01 $81 $3f
    jr nz, jr_060_754a                            ; $751b: $20 $2d

    ld [$fc41], a                                 ; $751d: $ea $41 $fc
    add [hl]                                      ; $7520: $86
    nop                                           ; $7521: $00
    cp a                                          ; $7522: $bf
    push bc                                       ; $7523: $c5
    ld b, h                                       ; $7524: $44
    add b                                         ; $7525: $80
    and b                                         ; $7526: $a0
    ld [hl+], a                                   ; $7527: $22
    nop                                           ; $7528: $00
    add d                                         ; $7529: $82
    ld c, e                                       ; $752a: $4b
    ld b, l                                       ; $752b: $45
    nop                                           ; $752c: $00
    ld e, l                                       ; $752d: $5d
    ld [de], a                                    ; $752e: $12
    nop                                           ; $752f: $00
    or h                                          ; $7530: $b4
    dec l                                         ; $7531: $2d
    rst $38                                       ; $7532: $ff
    jp nz, $0348                                  ; $7533: $c2 $48 $03

    adc e                                         ; $7536: $8b
    dec c                                         ; $7537: $0d
    ld c, e                                       ; $7538: $4b
    cp $e1                                        ; $7539: $fe $e1
    ld l, l                                       ; $753b: $6d
    ld h, d                                       ; $753c: $62
    call nz, $82dc                                ; $753d: $c4 $dc $82
    nop                                           ; $7540: $00
    ld e, l                                       ; $7541: $5d
    ld c, e                                       ; $7542: $4b
    ld bc, $432d                                  ; $7543: $01 $2d $43
    add c                                         ; $7546: $81
    cp a                                          ; $7547: $bf
    db $e4                                        ; $7548: $e4
    ld a, a                                       ; $7549: $7f

jr_060_754a:
    nop                                           ; $754a: $00
    cp [hl]                                       ; $754b: $be
    ldh [$7e], a                                  ; $754c: $e0 $7e
    rst $00                                       ; $754e: $c7
    nop                                           ; $754f: $00
    ld e, c                                       ; $7550: $59
    nop                                           ; $7551: $00
    jp $4d23                                      ; $7552: $c3 $23 $4d


    dec l                                         ; $7555: $2d
    rst $00                                       ; $7556: $c7
    add c                                         ; $7557: $81
    rst $38                                       ; $7558: $ff
    and $bf                                       ; $7559: $e6 $bf
    pop hl                                        ; $755b: $e1
    ld c, e                                       ; $755c: $4b
    ld a, $e0                                     ; $755d: $3e $e0
    ldh [$a4], a                                  ; $755f: $e0 $a4
    nop                                           ; $7561: $00
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rrca                                          ; $7564: $0f
    pop hl                                        ; $7565: $e1
    ccf                                           ; $7566: $3f
    and $7c                                       ; $7567: $e6 $7c
    inc hl                                        ; $7569: $23
    dec sp                                        ; $756a: $3b
    nop                                           ; $756b: $00
    ld a, h                                       ; $756c: $7c
    ld c, c                                       ; $756d: $49
    nop                                           ; $756e: $00
    ld d, [hl]                                    ; $756f: $56
    nop                                           ; $7570: $00
    and e                                         ; $7571: $a3
    nop                                           ; $7572: $00
    adc [hl]                                      ; $7573: $8e
    ret nz                                        ; $7574: $c0

    inc bc                                        ; $7575: $03
    ret nz                                        ; $7576: $c0

    ld a, a                                       ; $7577: $7f
    rst $20                                       ; $7578: $e7
    ccf                                           ; $7579: $3f
    pop hl                                        ; $757a: $e1
    ld a, a                                       ; $757b: $7f
    pop hl                                        ; $757c: $e1
    ld a, d                                       ; $757d: $7a

jr_060_757e:
    ld b, d                                       ; $757e: $42
    ld h, c                                       ; $757f: $61
    jr nz, jr_060_757e                            ; $7580: $20 $fc

    ld [c], a                                     ; $7582: $e2
    inc b                                         ; $7583: $04
    add b                                         ; $7584: $80
    ld a, b                                       ; $7585: $78

jr_060_7586:
    jp nc, Jump_060_4be0                          ; $7586: $d2 $e0 $4b

    pop bc                                        ; $7589: $c1
    daa                                           ; $758a: $27
    ret nz                                        ; $758b: $c0

    db $e4                                        ; $758c: $e4
    ld a, h                                       ; $758d: $7c
    push bc                                       ; $758e: $c5
    sub [hl]                                      ; $758f: $96
    and [hl]                                      ; $7590: $a6
    nop                                           ; $7591: $00
    ld e, b                                       ; $7592: $58
    ld [$a005], sp                                ; $7593: $08 $05 $a0
    rst $38                                       ; $7596: $ff
    ret                                           ; $7597: $c9


    ld b, b                                       ; $7598: $40
    ld [c], a                                     ; $7599: $e2
    ld c, e                                       ; $759a: $4b
    ld a, h                                       ; $759b: $7c
    ret nz                                        ; $759c: $c0

    ld e, [hl]                                    ; $759d: $5e
    add [hl]                                      ; $759e: $86
    ret nz                                        ; $759f: $c0

    add sp, -$4a                                  ; $75a0: $e8 $b6
    rrca                                          ; $75a2: $0f
    nop                                           ; $75a3: $00
    nop                                           ; $75a4: $00
    ld h, b                                       ; $75a5: $60
    add [hl]                                      ; $75a6: $86
    add b                                         ; $75a7: $80
    rst $38                                       ; $75a8: $ff
    rst $00                                       ; $75a9: $c7
    ret nz                                        ; $75aa: $c0

    rst $20                                       ; $75ab: $e7
    add a                                         ; $75ac: $87
    ld d, d                                       ; $75ad: $52
    nop                                           ; $75ae: $00
    ld c, [hl]                                    ; $75af: $4e
    inc de                                        ; $75b0: $13
    ldh [rNR10], a                                ; $75b1: $e0 $10
    ldh [rNR41], a                                ; $75b3: $e0 $20
    cp a                                          ; $75b5: $bf
    sra l                                         ; $75b6: $cb $2d
    pop hl                                        ; $75b8: $e1
    ld b, b                                       ; $75b9: $40
    ld bc, $85dc                                  ; $75ba: $01 $dc $85
    nop                                           ; $75bd: $00
    ld e, d                                       ; $75be: $5a
    dec l                                         ; $75bf: $2d
    ret nz                                        ; $75c0: $c0

    ld [c], a                                     ; $75c1: $e2
    ld b, e                                       ; $75c2: $43
    ld h, b                                       ; $75c3: $60
    jr nz, jr_060_7586                            ; $75c4: $20 $c0

    inc b                                         ; $75c6: $04
    ret nz                                        ; $75c7: $c0

    push hl                                       ; $75c8: $e5
    call nz, $b636                                ; $75c9: $c4 $36 $b6
    ld h, l                                       ; $75cc: $65
    sbc [hl]                                      ; $75cd: $9e
    inc hl                                        ; $75ce: $23
    ld c, l                                       ; $75cf: $4d
    ret nz                                        ; $75d0: $c0

    pop bc                                        ; $75d1: $c1
    jp $0262                                      ; $75d2: $c3 $62 $02


    ccf                                           ; $75d5: $3f
    jp z, $e74b                                   ; $75d6: $ca $4b $e7

    and b                                         ; $75d9: $a0
    inc b                                         ; $75da: $04
    add sp, -$80                                  ; $75db: $e8 $80
    call c, $e37d                                 ; $75dd: $dc $7d $e3
    cp $a8                                        ; $75e0: $fe $a8
    ld a, l                                       ; $75e2: $7d
    jp RST_20                                     ; $75e3: $c3 $20 $00


    ld e, a                                       ; $75e6: $5f
    sbc d                                         ; $75e7: $9a
    and c                                         ; $75e8: $a1
    ret nz                                        ; $75e9: $c0

    db $e4                                        ; $75ea: $e4
    inc a                                         ; $75eb: $3c
    rst $20                                       ; $75ec: $e7
    ret nz                                        ; $75ed: $c0

    db $e4                                        ; $75ee: $e4
    ld c, e                                       ; $75ef: $4b
    halt                                          ; $75f0: $76
    ld [hl+], a                                   ; $75f1: $22
    nop                                           ; $75f2: $00
    cp [hl]                                       ; $75f3: $be
    jr nz, @+$42                                  ; $75f4: $20 $40

    ld [c], a                                     ; $75f6: $e2
    adc c                                         ; $75f7: $89
    and e                                         ; $75f8: $a3
    inc a                                         ; $75f9: $3c
    ld [c], a                                     ; $75fa: $e2
    ld a, $a3                                     ; $75fb: $3e $a3
    ld sp, hl                                     ; $75fd: $f9
    add c                                         ; $75fe: $81
    ld l, l                                       ; $75ff: $6d
    ld a, d                                       ; $7600: $7a
    ld [hl], b                                    ; $7601: $70
    nop                                           ; $7602: $00
    ld c, [hl]                                    ; $7603: $4e
    ret z                                         ; $7604: $c8

    rst $38                                       ; $7605: $ff
    add b                                         ; $7606: $80

Call_060_7607:
    ld c, $c3                                     ; $7607: $0e $c3
    cp [hl]                                       ; $7609: $be
    ld b, e                                       ; $760a: $43
    ld c, e                                       ; $760b: $4b
    ld a, d                                       ; $760c: $7a
    nop                                           ; $760d: $00
    or c                                          ; $760e: $b1
    and b                                         ; $760f: $a0
    dec hl                                        ; $7610: $2b
    dec bc                                        ; $7611: $0b
    ld h, c                                       ; $7612: $61
    dec hl                                        ; $7613: $2b
    ret nz                                        ; $7614: $c0

    ld [c], a                                     ; $7615: $e2
    ld e, [hl]                                    ; $7616: $5e
    and e                                         ; $7617: $a3
    ld a, d                                       ; $7618: $7a
    add hl, de                                    ; $7619: $19
    scf                                           ; $761a: $37
    ld b, b                                       ; $761b: $40
    dec c                                         ; $761c: $0d
    dec c                                         ; $761d: $0d
    cp l                                          ; $761e: $bd
    pop hl                                        ; $761f: $e1
    nop                                           ; $7620: $00
    ld b, h                                       ; $7621: $44
    add b                                         ; $7622: $80
    rst $30                                       ; $7623: $f7
    and d                                         ; $7624: $a2
    ld hl, sp+$21                                 ; $7625: $f8 $21
    cp b                                          ; $7627: $b8
    add e                                         ; $7628: $83
    add b                                         ; $7629: $80
    and $00                                       ; $762a: $e6 $00
    or e                                          ; $762c: $b3
    db $fc                                        ; $762d: $fc
    dec h                                         ; $762e: $25
    ld e, $a1                                     ; $762f: $1e $a1
    db $10                                        ; $7631: $10
    ld a, h                                       ; $7632: $7c
    pop hl                                        ; $7633: $e1
    ld [hl], a                                    ; $7634: $77
    call nz, $e183                                ; $7635: $c4 $83 $e1
    ld [hl], a                                    ; $7638: $77
    add e                                         ; $7639: $83
    ld l, l                                       ; $763a: $6d
    ret c                                         ; $763b: $d8

    and e                                         ; $763c: $a3
    add b                                         ; $763d: $80
    dec d                                         ; $763e: $15
    rst $18                                       ; $763f: $df
    dec b                                         ; $7640: $05
    ld [$0350], sp                                ; $7641: $08 $50 $03
    ld a, [hl-]                                   ; $7644: $3a
    db $e4                                        ; $7645: $e4
    db $f4                                        ; $7646: $f4
    add h                                         ; $7647: $84
    dec l                                         ; $7648: $2d
    or e                                          ; $7649: $b3
    ld h, c                                       ; $764a: $61
    nop                                           ; $764b: $00
    ld [c], a                                     ; $764c: $e2
    ld [hl], e                                    ; $764d: $73
    inc [hl]                                      ; $764e: $34
    nop                                           ; $764f: $00
    ld h, [hl]                                    ; $7650: $66
    db $10                                        ; $7651: $10
    ld hl, sp-$59                                 ; $7652: $f8 $a7
    ld a, h                                       ; $7654: $7c
    db $e4                                        ; $7655: $e4
    ld [hl-], a                                   ; $7656: $32
    ld h, c                                       ; $7657: $61
    ld a, h                                       ; $7658: $7c
    ld [c], a                                     ; $7659: $e2
    dec c                                         ; $765a: $0d
    nop                                           ; $765b: $00
    ld [c], a                                     ; $765c: $e2
    or l                                          ; $765d: $b5
    ld l, l                                       ; $765e: $6d
    or [hl]                                       ; $765f: $b6
    ld de, $96d4                                  ; $7660: $11 $d4 $96
    add e                                         ; $7663: $83
    or a                                          ; $7664: $b7
    pop bc                                        ; $7665: $c1
    dec c                                         ; $7666: $0d
    or h                                          ; $7667: $b4
    ld h, d                                       ; $7668: $62
    dec l                                         ; $7669: $2d
    cp a                                          ; $766a: $bf
    ret nz                                        ; $766b: $c0

    dec hl                                        ; $766c: $2b
    ld l, e                                       ; $766d: $6b
    ld [de], a                                    ; $766e: $12
    cp $83                                        ; $766f: $fe $83
    dec l                                         ; $7671: $2d
    ld a, [c]                                     ; $7672: $f2
    nop                                           ; $7673: $00
    add b                                         ; $7674: $80
    dec c                                         ; $7675: $0d
    ld l, l                                       ; $7676: $6d
    ld h, [hl]                                    ; $7677: $66
    ret nz                                        ; $7678: $c0

    db $fc                                        ; $7679: $fc
    pop hl                                        ; $767a: $e1
    sbc [hl]                                      ; $767b: $9e
    adc c                                         ; $767c: $89
    nop                                           ; $767d: $00
    halt                                          ; $767e: $76
    nop                                           ; $767f: $00
    halt                                          ; $7680: $76
    jp nz, $c33c                                  ; $7681: $c2 $3c $c3

    pop bc                                        ; $7684: $c1
    ldh [rSB], a                                  ; $7685: $e0 $01
    pop bc                                        ; $7687: $c1
    rst $38                                       ; $7688: $ff
    nop                                           ; $7689: $00
    ret nz                                        ; $768a: $c0

    pop hl                                        ; $768b: $e1
    add c                                         ; $768c: $81
    call $c000                                    ; $768d: $cd $00 $c0
    push hl                                       ; $7690: $e5
    ld [hl+], a                                   ; $7691: $22
    add l                                         ; $7692: $85
    sbc a                                         ; $7693: $9f
    add l                                         ; $7694: $85
    cp a                                          ; $7695: $bf
    and $c1                                       ; $7696: $e6 $c1
    pop hl                                        ; $7698: $e1
    cp c                                          ; $7699: $b9
    nop                                           ; $769a: $00
    add b                                         ; $769b: $80
    ld a, [de]                                    ; $769c: $1a
    db $f4                                        ; $769d: $f4
    adc [hl]                                      ; $769e: $8e
    ld [bc], a                                    ; $769f: $02
    sub [hl]                                      ; $76a0: $96
    ld h, h                                       ; $76a1: $64
    dec l                                         ; $76a2: $2d
    cp d                                          ; $76a3: $ba
    and b                                         ; $76a4: $a0
    pop bc                                        ; $76a5: $c1
    ld [c], a                                     ; $76a6: $e2
    inc b                                         ; $76a7: $04
    adc c                                         ; $76a8: $89
    add b                                         ; $76a9: $80
    ld c, $71                                     ; $76aa: $0e $71
    ld [$abae], a                                 ; $76ac: $ea $ae $ab
    nop                                           ; $76af: $00
    inc h                                         ; $76b0: $24
    jp $9580                                      ; $76b1: $c3 $80 $95


    ret nz                                        ; $76b4: $c0

    pop af                                        ; $76b5: $f1
    ld a, d                                       ; $76b6: $7a
    rst $00                                       ; $76b7: $c7
    and $a4                                       ; $76b8: $e6 $a4
    ld a, [bc]                                    ; $76ba: $0a
    ld h, d                                       ; $76bb: $62
    ld b, d                                       ; $76bc: $42
    ld h, h                                       ; $76bd: $64
    nop                                           ; $76be: $00
    ld d, [hl]                                    ; $76bf: $56
    ld b, $b7                                     ; $76c0: $06 $b7
    ld b, e                                       ; $76c2: $43
    ld c, l                                       ; $76c3: $4d
    ld c, l                                       ; $76c4: $4d
    or d                                          ; $76c5: $b2
    pop bc                                        ; $76c6: $c1
    ld [c], a                                     ; $76c7: $e2
    ld l, d                                       ; $76c8: $6a
    ld b, h                                       ; $76c9: $44
    ld c, l                                       ; $76ca: $4d
    nop                                           ; $76cb: $00
    ld c, b                                       ; $76cc: $48
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    cp a                                          ; $76d0: $bf
    db $dd                                        ; $76d1: $dd
    sbc $a0                                       ; $76d2: $de $a0
    and b                                         ; $76d4: $a0
    and b                                         ; $76d5: $a0
    call c, $edfa                                 ; $76d6: $dc $fa $ed
    ret c                                         ; $76d9: $d8

    adc l                                         ; $76da: $8d
    reti                                          ; $76db: $d9


    db $fc                                        ; $76dc: $fc
    db $e3                                        ; $76dd: $e3
    jp nc, $fcd3                                  ; $76de: $d2 $d3 $fc

    db $eb                                        ; $76e1: $eb
    add sp, -$1c                                  ; $76e2: $e8 $e4
    ret nc                                        ; $76e4: $d0

    add sp, -$1e                                  ; $76e5: $e8 $e2
    rst $18                                       ; $76e7: $df
    db $e3                                        ; $76e8: $e3
    db $e4                                        ; $76e9: $e4
    rst $18                                       ; $76ea: $df
    ldh [$e1], a                                  ; $76eb: $e0 $e1
    ld a, [$a0ec]                                 ; $76ed: $fa $ec $a0
    jp c, $dbff                                   ; $76f0: $da $ff $db

    sub $d7                                       ; $76f3: $d6 $d7
    jp c, $d0db                                   ; $76f5: $da $db $d0

    pop de                                        ; $76f8: $d1
    call nc, $d537                                ; $76f9: $d4 $37 $d5
    and b                                         ; $76fc: $a0
    and b                                         ; $76fd: $a0
    db $fc                                        ; $76fe: $fc
    rst $20                                       ; $76ff: $e7
    ret nc                                        ; $7700: $d0

    pop de                                        ; $7701: $d1
    add sp, -$1d                                  ; $7702: $e8 $e3
    ret nc                                        ; $7704: $d0

    jp hl                                         ; $7705: $e9


    ccf                                           ; $7706: $3f
    add sp, -$17                                  ; $7707: $e8 $e9
    ld [$e6e5], a                                 ; $7709: $ea $e5 $e6
    rst $20                                       ; $770c: $e7
    ld a, [$6dec]                                 ; $770d: $fa $ec $6d
    ldh [$5e], a                                  ; $7710: $e0 $5e
    add d                                         ; $7712: $82
    push hl                                       ; $7713: $e5
    and b                                         ; $7714: $a0
    and b                                         ; $7715: $a0
    sbc a                                         ; $7716: $9f
    sbc l                                         ; $7717: $9d
    rst $38                                       ; $7718: $ff
    pop hl                                        ; $7719: $e1
    sbc a                                         ; $771a: $9f
    ld e, c                                       ; $771b: $59
    ldh [$98], a                                  ; $771c: $e0 $98
    ld a, [hl]                                    ; $771e: $7e
    db $e4                                        ; $771f: $e4
    ret nc                                        ; $7720: $d0

    ld [$eb43], a                                 ; $7721: $ea $43 $eb
    sub $d7                                       ; $7724: $d6 $d7
    db $fc                                        ; $7726: $fc
    push hl                                       ; $7727: $e5
    add d                                         ; $7728: $82
    push hl                                       ; $7729: $e5
    sbc a                                         ; $772a: $9f
    rla                                           ; $772b: $17
    and d                                         ; $772c: $a2
    sbc h                                         ; $772d: $9c
    ld b, [hl]                                    ; $772e: $46
    rst $38                                       ; $772f: $ff
    pop hl                                        ; $7730: $e1
    sbc h                                         ; $7731: $9c
    cp a                                          ; $7732: $bf
    ldh [$7e], a                                  ; $7733: $e0 $7e
    push hl                                       ; $7735: $e5
    xor d                                         ; $7736: $aa
    pop hl                                        ; $7737: $e1
    ldh a, [$0d]                                  ; $7738: $f0 $0d
    push hl                                       ; $773a: $e5
    ld c, c                                       ; $773b: $49
    ld [$e608], a                                 ; $773c: $ea $08 $e6
    add d                                         ; $773f: $82
    and $9f                                       ; $7740: $e6 $9f
    sbc h                                         ; $7742: $9c
    ld b, l                                       ; $7743: $45
    ld d, b                                       ; $7744: $50
    rlca                                          ; $7745: $07
    ld d, b                                       ; $7746: $50
    ld b, e                                       ; $7747: $43
    ld b, l                                       ; $7748: $45
    cp a                                          ; $7749: $bf
    db $e4                                        ; $774a: $e4
    db $fc                                        ; $774b: $fc
    add $0d                                       ; $774c: $c6 $0d
    rst $20                                       ; $774e: $e7
    ld c, c                                       ; $774f: $49
    db $eb                                        ; $7750: $eb
    ld [$fce3], sp                                ; $7751: $08 $e3 $fc
    inc b                                         ; $7754: $04
    push hl                                       ; $7755: $e5
    ld b, [hl]                                    ; $7756: $46
    ldh [$9c], a                                  ; $7757: $e0 $9c
    ld b, l                                       ; $7759: $45
    ld b, a                                       ; $775a: $47
    ld e, l                                       ; $775b: $5d
    ld e, l                                       ; $775c: $5d
    ld c, h                                       ; $775d: $4c
    cp a                                          ; $775e: $bf
    ld d, h                                       ; $775f: $54
    ld b, h                                       ; $7760: $44
    xor [hl]                                      ; $7761: $ae
    ld b, [hl]                                    ; $7762: $46
    ld b, [hl]                                    ; $7763: $46
    and c                                         ; $7764: $a1
    sub a                                         ; $7765: $97
    ret nz                                        ; $7766: $c0

    call nc, $d5a5                                ; $7767: $d4 $a5 $d5
    add sp, -$3f                                  ; $776a: $e8 $c1
    and b                                         ; $776c: $a0
    dec a                                         ; $776d: $3d
    add sp, -$7a                                  ; $776e: $e8 $86
    ret c                                         ; $7770: $d8

    sbc a                                         ; $7771: $9f
    ld b, [hl]                                    ; $7772: $46
    ldh [rLYC], a                                 ; $7773: $e0 $45
    rst $38                                       ; $7775: $ff
    ld b, a                                       ; $7776: $47
    ld h, b                                       ; $7777: $60
    ld d, h                                       ; $7778: $54
    ld e, c                                       ; $7779: $59
    ld e, c                                       ; $777a: $59
    ld d, e                                       ; $777b: $53
    ld b, l                                       ; $777c: $45
    xor a                                         ; $777d: $af
    ldh [$7f], a                                  ; $777e: $e0 $7f
    db $e4                                        ; $7780: $e4
    ld h, [hl]                                    ; $7781: $66
    jp nz, $d880                                  ; $7782: $c2 $80 $d8

    add [hl]                                      ; $7785: $86
    ret z                                         ; $7786: $c8

    pop bc                                        ; $7787: $c1
    pop hl                                        ; $7788: $e1
    ld b, [hl]                                    ; $7789: $46
    ld b, h                                       ; $778a: $44
    ld e, c                                       ; $778b: $59
    ccf                                           ; $778c: $3f
    ld d, e                                       ; $778d: $53
    ld a, [hl+]                                   ; $778e: $2a
    ld h, $20                                     ; $778f: $26 $20
    ld h, $2a                                     ; $7791: $26 $2a
    ld a, $e4                                     ; $7793: $3e $e4
    ld a, [hl]                                    ; $7795: $7e
    pop bc                                        ; $7796: $c1
    cp b                                          ; $7797: $b8
    ld b, e                                       ; $7798: $43
    add sp, -$80                                  ; $7799: $e8 $80
    rst $08                                       ; $779b: $cf
    add [hl]                                      ; $779c: $86
    ret z                                         ; $779d: $c8

    and c                                         ; $779e: $a1
    ld b, [hl]                                    ; $779f: $46
    ld b, [hl]                                    ; $77a0: $46
    ld c, d                                       ; $77a1: $4a
    ldh [rLYC], a                                 ; $77a2: $e0 $45
    rst $38                                       ; $77a4: $ff
    scf                                           ; $77a5: $37
    daa                                           ; $77a6: $27
    jr nz, jr_060_77c9                            ; $77a7: $20 $20

    jr nz, jr_060_77db                            ; $77a9: $20 $30

    ld b, h                                       ; $77ab: $44
    ld b, l                                       ; $77ac: $45
    jp nz, $e03e                                  ; $77ad: $c2 $3e $e0

    sbc [hl]                                      ; $77b0: $9e
    ld l, [hl]                                    ; $77b1: $6e
    jp $d680                                      ; $77b2: $c3 $80 $d6


    add [hl]                                      ; $77b5: $86
    jp z, $e142                                   ; $77b6: $ca $42 $e1

    xor a                                         ; $77b9: $af
    ld b, [hl]                                    ; $77ba: $46
    rst $30                                       ; $77bb: $f7
    ld b, l                                       ; $77bc: $45
    ld [hl], $35                                  ; $77bd: $36 $35
    ret nz                                        ; $77bf: $c0

    ldh [rNR52], a                                ; $77c0: $e0 $26
    ld a, [hl+]                                   ; $77c2: $2a
    ld c, e                                       ; $77c3: $4b
    ld d, l                                       ; $77c4: $55
    ld b, d                                       ; $77c5: $42
    ld a, $e0                                     ; $77c6: $3e $e0
    sbc [hl]                                      ; $77c8: $9e

jr_060_77c9:
    nop                                           ; $77c9: $00
    ld [c], a                                     ; $77ca: $e2
    ld e, d                                       ; $77cb: $5a
    jp $d180                                      ; $77cc: $c3 $80 $d1


    inc b                                         ; $77cf: $04
    jp hl                                         ; $77d0: $e9


    sbc l                                         ; $77d1: $9d
    ld c, c                                       ; $77d2: $49
    jp Jump_000_39ff                              ; $77d3: $c3 $ff $39


    dec [hl]                                      ; $77d6: $35
    dec [hl]                                      ; $77d7: $35
    ld hl, $482a                                  ; $77d8: $21 $2a $48

jr_060_77db:
    ld c, [hl]                                    ; $77db: $4e
    ld c, c                                       ; $77dc: $49
    add e                                         ; $77dd: $83
    ld h, b                                       ; $77de: $60
    ld d, l                                       ; $77df: $55
    ld a, [hl]                                    ; $77e0: $7e

Jump_060_77e1:
    call nz, $a366                                ; $77e1: $c4 $66 $a3
    add b                                         ; $77e4: $80
    db $d3                                        ; $77e5: $d3
    inc b                                         ; $77e6: $04
    db $eb                                        ; $77e7: $eb
    adc l                                         ; $77e8: $8d
    ret nz                                        ; $77e9: $c0

    ld b, [hl]                                    ; $77ea: $46
    rst $38                                       ; $77eb: $ff
    ld b, l                                       ; $77ec: $45
    ld a, [hl-]                                   ; $77ed: $3a
    dec [hl]                                      ; $77ee: $35
    dec [hl]                                      ; $77ef: $35
    ld a, [hl-]                                   ; $77f0: $3a
    ld d, c                                       ; $77f1: $51
    ld e, a                                       ; $77f2: $5f
    ld h, c                                       ; $77f3: $61
    dec de                                        ; $77f4: $1b
    ld h, c                                       ; $77f5: $61
    ld d, d                                       ; $77f6: $52
    dec a                                         ; $77f7: $3d
    ret nz                                        ; $77f8: $c0

    sbc [hl]                                      ; $77f9: $9e
    and b                                         ; $77fa: $a0
    nop                                           ; $77fb: $00
    ld [c], a                                     ; $77fc: $e2
    ld h, [hl]                                    ; $77fd: $66
    and c                                         ; $77fe: $a1
    add b                                         ; $77ff: $80
    jp nc, $8af2                                  ; $7800: $d2 $f2 $8a

    xor b                                         ; $7803: $a8
    sbc [hl]                                      ; $7804: $9e
    call z, Call_060_43a0                         ; $7805: $cc $a0 $43
    ldh [$37], a                                  ; $7808: $e0 $37
    jr c, jr_060_7841                             ; $780a: $38 $35

    dec [hl]                                      ; $780c: $35
    rrca                                          ; $780d: $0f
    dec [hl]                                      ; $780e: $35
    add hl, sp                                    ; $780f: $39
    ld b, l                                       ; $7810: $45
    ld d, e                                       ; $7811: $53
    ld a, a                                       ; $7812: $7f
    ret nz                                        ; $7813: $c0

    ld bc, $fce2                                  ; $7814: $01 $e2 $fc
    add l                                         ; $7817: $85
    nop                                           ; $7818: $00
    or c                                          ; $7819: $b1
    add sp, -$7e                                  ; $781a: $e8 $82
    and d                                         ; $781c: $a2
    inc b                                         ; $781d: $04
    add sp, $44                                   ; $781e: $e8 $44
    ret nz                                        ; $7820: $c0

    ld [hl], $c2                                  ; $7821: $36 $c2
    ldh [$35], a                                  ; $7823: $e0 $35
    ld [hl], $45                                  ; $7825: $36 $45
    ld a, [de]                                    ; $7827: $1a
    cp c                                          ; $7828: $b9
    ret nz                                        ; $7829: $c0

    xor [hl]                                      ; $782a: $ae
    push af                                       ; $782b: $f5
    ret nz                                        ; $782c: $c0

    ld b, [hl]                                    ; $782d: $46
    and c                                         ; $782e: $a1
    ldh a, [$81]                                  ; $782f: $f0 $81
    nop                                           ; $7831: $00
    or [hl]                                       ; $7832: $b6
    inc c                                         ; $7833: $0c
    xor b                                         ; $7834: $a8
    inc b                                         ; $7835: $04
    ld b, d                                       ; $7836: $42
    db $e3                                        ; $7837: $e3
    pop bc                                        ; $7838: $c1
    rst $20                                       ; $7839: $e7
    xor a                                         ; $783a: $af
    jp nz, Jump_000_3ee1                          ; $783b: $c2 $e1 $3e

    and b                                         ; $783e: $a0
    nop                                           ; $783f: $00
    cp l                                          ; $7840: $bd

jr_060_7841:
    adc d                                         ; $7841: $8a
    add c                                         ; $7842: $81
    add d                                         ; $7843: $82
    push hl                                       ; $7844: $e5
    add hl, bc                                    ; $7845: $09
    xor a                                         ; $7846: $af
    push bc                                       ; $7847: $c5
    pop bc                                        ; $7848: $c1
    ld b, d                                       ; $7849: $42
    ldh [rLCDC], a                                ; $784a: $e0 $40
    pop bc                                        ; $784c: $c1
    pop hl                                        ; $784d: $e1
    rst $38                                       ; $784e: $ff
    add h                                         ; $784f: $84
    add d                                         ; $7850: $82
    and e                                         ; $7851: $a3
    inc de                                        ; $7852: $13
    adc e                                         ; $7853: $8b
    ld d, b                                       ; $7854: $50
    nop                                           ; $7855: $00
    xor a                                         ; $7856: $af
    rlca                                          ; $7857: $07
    pop bc                                        ; $7858: $c1
    push bc                                       ; $7859: $c5
    call nz, $e002                                ; $785a: $c4 $02 $e0
    ld b, d                                       ; $785d: $42
    pop bc                                        ; $785e: $c1
    pop hl                                        ; $785f: $e1
    sbc h                                         ; $7860: $9c
    ld a, a                                       ; $7861: $7f
    add h                                         ; $7862: $84
    ret nz                                        ; $7863: $c0

    add [hl]                                      ; $7864: $86
    jp z, $af00                                   ; $7865: $ca $00 $af

    inc c                                         ; $7868: $0c
    add e                                         ; $7869: $83
    jp $85c0                                      ; $786a: $c3 $c0 $85


    pop bc                                        ; $786d: $c1
    add c                                         ; $786e: $81
    db $e3                                        ; $786f: $e3
    inc a                                         ; $7870: $3c
    ld b, h                                       ; $7871: $44
    ret nz                                        ; $7872: $c0

    ld b, [hl]                                    ; $7873: $46
    and h                                         ; $7874: $a4
    add sp, -$20                                  ; $7875: $e8 $e0
    add d                                         ; $7877: $82
    and d                                         ; $7878: $a2
    inc de                                        ; $7879: $13
    adc l                                         ; $787a: $8d
    add b                                         ; $787b: $80
    ret                                           ; $787c: $c9


    adc [hl]                                      ; $787d: $8e
    ld h, h                                       ; $787e: $64
    sbc [hl]                                      ; $787f: $9e
    ld b, [hl]                                    ; $7880: $46
    scf                                           ; $7881: $37
    xor a                                         ; $7882: $af
    ld b, l                                       ; $7883: $45
    ld b, l                                       ; $7884: $45
    add c                                         ; $7885: $81
    db $e4                                        ; $7886: $e4
    dec [hl]                                      ; $7887: $35
    ld b, d                                       ; $7888: $42
    ld b, d                                       ; $7889: $42
    add b                                         ; $788a: $80
    add $81                                       ; $788b: $c6 $81
    and b                                         ; $788d: $a0
    halt                                          ; $788e: $76
    ld h, l                                       ; $788f: $65
    ld e, b                                       ; $7890: $58
    jp nz, $d280                                  ; $7891: $c2 $80 $d2

    add [hl]                                      ; $7894: $86
    add e                                         ; $7895: $83
    adc [hl]                                      ; $7896: $8e
    ld h, b                                       ; $7897: $60
    sbc [hl]                                      ; $7898: $9e
    jp z, Jump_060_5580                           ; $7899: $ca $80 $55

    nop                                           ; $789c: $00
    ld [bc], a                                    ; $789d: $02
    db $e3                                        ; $789e: $e3
    add d                                         ; $789f: $82
    ret nz                                        ; $78a0: $c0

    ld c, b                                       ; $78a1: $48
    and d                                         ; $78a2: $a2
    add [hl]                                      ; $78a3: $86
    jp $a382                                      ; $78a4: $c3 $82 $a3


    nop                                           ; $78a7: $00
    or h                                          ; $78a8: $b4
    inc c                                         ; $78a9: $0c
    ld h, [hl]                                    ; $78aa: $66
    adc c                                         ; $78ab: $89
    add b                                         ; $78ac: $80
    rst $18                                       ; $78ad: $df
    ld b, h                                       ; $78ae: $44
    ld c, l                                       ; $78af: $4d
    ld e, d                                       ; $78b0: $5a
    ld a, $ac                                     ; $78b1: $3e $ac
    ld b, e                                       ; $78b3: $43
    pop bc                                        ; $78b4: $c1
    ld a, [hl-]                                   ; $78b5: $3a
    ld b, l                                       ; $78b6: $45
    rlca                                          ; $78b7: $07
    xor [hl]                                      ; $78b8: $ae
    xor a                                         ; $78b9: $af
    xor [hl]                                      ; $78ba: $ae
    ld [$eca4], sp                                ; $78bb: $08 $a4 $ec
    ld b, l                                       ; $78be: $45
    add b                                         ; $78bf: $80
    ld [hl], e                                    ; $78c0: $73
    ld [$c487], sp                                ; $78c1: $08 $87 $c4
    and b                                         ; $78c4: $a0
    cp a                                          ; $78c5: $bf
    ld d, c                                       ; $78c6: $51
    ld e, [hl]                                    ; $78c7: $5e
    ld e, d                                       ; $78c8: $5a
    ld a, $ad                                     ; $78c9: $3e $ad
    dec [hl]                                      ; $78cb: $35
    cp [hl]                                       ; $78cc: $be
    ldh [$39], a                                  ; $78cd: $e0 $39
    jp nz, $e0c1                                  ; $78cf: $c2 $c1 $e0

    xor a                                         ; $78d2: $af
    ld [$eca4], sp                                ; $78d3: $08 $a4 $ec
    ld b, e                                       ; $78d6: $43
    sub e                                         ; $78d7: $93
    ld c, l                                       ; $78d8: $4d
    add [hl]                                      ; $78d9: $86
    ld l, l                                       ; $78da: $6d
    jp nc, Jump_000_2ed3                          ; $78db: $d2 $d3 $2e

    pop bc                                        ; $78de: $c1
    ret nz                                        ; $78df: $c0

    ld b, h                                       ; $78e0: $44
    ld c, l                                       ; $78e1: $4d
    ld d, [hl]                                    ; $78e2: $56
    rlca                                          ; $78e3: $07
    and b                                         ; $78e4: $a0
    xor l                                         ; $78e5: $ad
    call nz, $05a0                                ; $78e6: $c4 $a0 $05
    pop bc                                        ; $78e9: $c1
    or b                                          ; $78ea: $b0
    ld [$43a8], sp                                ; $78eb: $08 $a8 $43
    db $ec                                        ; $78ee: $ec
    add b                                         ; $78ef: $80
    ld h, [hl]                                    ; $78f0: $66
    add [hl]                                      ; $78f1: $86
    ld h, a                                       ; $78f2: $67
    call nc, $c1d5                                ; $78f3: $d4 $d5 $c1
    pop bc                                        ; $78f6: $c1
    ld c, e                                       ; $78f7: $4b
    dec de                                        ; $78f8: $1b
    ld h, c                                       ; $78f9: $61
    ld e, h                                       ; $78fa: $5c
    ld b, $a1                                     ; $78fb: $06 $a1
    ld b, l                                       ; $78fd: $45
    ld d, b                                       ; $78fe: $50
    ld b, [hl]                                    ; $78ff: $46
    ld h, c                                       ; $7900: $61
    ld [$43a8], sp                                ; $7901: $08 $a8 $43
    adc h                                         ; $7904: $8c
    cp b                                          ; $7905: $b8
    add b                                         ; $7906: $80
    ld l, d                                       ; $7907: $6a
    inc c                                         ; $7908: $0c
    ld b, l                                       ; $7909: $45
    inc b                                         ; $790a: $04
    and c                                         ; $790b: $a1
    ld d, l                                       ; $790c: $55
    ld d, d                                       ; $790d: $52

Call_060_790e:
    ld b, h                                       ; $790e: $44
    add [hl]                                      ; $790f: $86
    add b                                         ; $7910: $80
    add hl, sp                                    ; $7911: $39
    rlca                                          ; $7912: $07
    ld b, a                                       ; $7913: $47
    ld e, l                                       ; $7914: $5d
    ld d, d                                       ; $7915: $52
    ld [$4780], sp                                ; $7916: $08 $80 $47
    ld h, b                                       ; $7919: $60
    inc b                                         ; $791a: $04
    ld b, l                                       ; $791b: $45
    sub $2f                                       ; $791c: $d6 $2f
    inc c                                         ; $791e: $0c
    ld c, a                                       ; $791f: $4f
    sbc $c1                                       ; $7920: $de $c1
    and c                                         ; $7922: $a1
    ld b, h                                       ; $7923: $44
    ld b, a                                       ; $7924: $47
    ld d, d                                       ; $7925: $52
    ld b, b                                       ; $7926: $40
    add h                                         ; $7927: $84
    and b                                         ; $7928: $a0
    ld d, d                                       ; $7929: $52
    ld h, c                                       ; $792a: $61
    pop bc                                        ; $792b: $c1
    ld h, c                                       ; $792c: $61
    ld [$8680], sp                                ; $792d: $08 $80 $86
    and [hl]                                      ; $7930: $a6
    ld b, e                                       ; $7931: $43
    xor $00                                       ; $7932: $ee $00
    or d                                          ; $7934: $b2
    add h                                         ; $7935: $84
    add c                                         ; $7936: $81
    ld b, h                                       ; $7937: $44
    ld c, l                                       ; $7938: $4d
    ld a, $3f                                     ; $7939: $3e $3f
    pop hl                                        ; $793b: $e1
    ld [hl], $45                                  ; $793c: $36 $45
    ld d, d                                       ; $793e: $52
    ld h, c                                       ; $793f: $61
    ld d, [hl]                                    ; $7940: $56
    add h                                         ; $7941: $84
    ld b, b                                       ; $7942: $40
    ld b, h                                       ; $7943: $44
    ld b, c                                       ; $7944: $41
    ld a, b                                       ; $7945: $78
    add [hl]                                      ; $7946: $86
    rst $08                                       ; $7947: $cf
    nop                                           ; $7948: $00
    or l                                          ; $7949: $b5
    add c                                         ; $794a: $81
    and c                                         ; $794b: $a1
    ld d, c                                       ; $794c: $51
    ld e, [hl]                                    ; $794d: $5e
    ld h, c                                       ; $794e: $61
    ld d, d                                       ; $794f: $52
    push bc                                       ; $7950: $c5
    ld h, b                                       ; $7951: $60
    add hl, bc                                    ; $7952: $09
    ld [hl], $f7                                  ; $7953: $36 $f7
    pop bc                                        ; $7955: $c1
    ld a, [hl-]                                   ; $7956: $3a
    ld h, b                                       ; $7957: $60
    sbc [hl]                                      ; $7958: $9e
    ld [$1962], sp                                ; $7959: $08 $62 $19
    cpl                                           ; $795c: $2f
    nop                                           ; $795d: $00
    ld d, d                                       ; $795e: $52
    add c                                         ; $795f: $81
    and b                                         ; $7960: $a0
    ld l, [hl]                                    ; $7961: $6e
    add b                                         ; $7962: $80
    pop hl                                        ; $7963: $e1
    ld h, c                                       ; $7964: $61
    ld e, h                                       ; $7965: $5c
    inc a                                         ; $7966: $3c
    inc b                                         ; $7967: $04
    add b                                         ; $7968: $80
    ld c, a                                       ; $7969: $4f
    ld e, b                                       ; $796a: $58
    ld b, l                                       ; $796b: $45
    add c                                         ; $796c: $81
    pop hl                                        ; $796d: $e1
    sbc [hl]                                      ; $796e: $9e
    ld hl, sp+$01                                 ; $796f: $f8 $01
    ld b, e                                       ; $7971: $43
    ldh a, [rP1]                                  ; $7972: $f0 $00
    or d                                          ; $7974: $b2
    add c                                         ; $7975: $81
    and b                                         ; $7976: $a0
    ld d, b                                       ; $7977: $50
    ld d, b                                       ; $7978: $50
    ld d, d                                       ; $7979: $52
    ld e, [hl]                                    ; $797a: $5e
    add b                                         ; $797b: $80
    ld [c], a                                     ; $797c: $e2
    dec [hl]                                      ; $797d: $35
    ld a, $55                                     ; $797e: $3e $55
    ld d, [hl]                                    ; $7980: $56
    ld b, l                                       ; $7981: $45
    add c                                         ; $7982: $81
    sbc [hl]                                      ; $7983: $9e
    ld [$7441], sp                                ; $7984: $08 $41 $74
    ld b, e                                       ; $7987: $43
    ldh a, [rP1]                                  ; $7988: $f0 $00
    or d                                          ; $798a: $b2
    sbc [hl]                                      ; $798b: $9e
    call Call_060_5c21                            ; $798c: $cd $21 $5c
    ld e, e                                       ; $798f: $5b
    ld b, e                                       ; $7990: $43
    add b                                         ; $7991: $80
    add c                                         ; $7992: $81
    rlca                                          ; $7993: $07
    add hl, sp                                    ; $7994: $39
    ld b, e                                       ; $7995: $43
    ld b, e                                       ; $7996: $43
    ld b, h                                       ; $7997: $44
    inc h                                         ; $7998: $24
    ld [$8042], sp                                ; $7999: $08 $42 $80
    jp c, $c600                                   ; $799c: $da $00 $c6

    jp Jump_060_6fc0                              ; $799f: $c3 $c0 $6f


    ld d, d                                       ; $79a2: $52
    ld b, l                                       ; $79a3: $45
    ld [hl], $3b                                  ; $79a4: $36 $3b
    add h                                         ; $79a6: $84
    ld h, d                                       ; $79a7: $62
    ld c, e                                       ; $79a8: $4b
    ld d, l                                       ; $79a9: $55
    ld bc, $b8e1                                  ; $79aa: $01 $e1 $b8
    ld [$8064], sp                                ; $79ad: $08 $64 $80
    db $db                                        ; $79b0: $db
    nop                                           ; $79b1: $00
    add $45                                       ; $79b2: $c6 $45
    ld c, e                                       ; $79b4: $4b
    ld d, [hl]                                    ; $79b5: $56
    ld b, l                                       ; $79b6: $45
    ld h, d                                       ; $79b7: $62
    ld a, [hl-]                                   ; $79b8: $3a
    ld e, a                                       ; $79b9: $5f
    ccf                                           ; $79ba: $3f
    ld d, b                                       ; $79bb: $50
    ld b, a                                       ; $79bc: $47
    ld h, b                                       ; $79bd: $60
    ld e, d                                       ; $79be: $5a
    add d                                         ; $79bf: $82
    ld h, b                                       ; $79c0: $60
    and c                                         ; $79c1: $a1

Call_060_79c2:
    add [hl]                                      ; $79c2: $86
    ld [de], a                                    ; $79c3: $12
    sbc [hl]                                      ; $79c4: $9e
    nop                                           ; $79c5: $00
    or l                                          ; $79c6: $b5
    sbc a                                         ; $79c7: $9f
    sbc h                                         ; $79c8: $9c
    ld d, l                                       ; $79c9: $55
    ld e, d                                       ; $79ca: $5a
    add h                                         ; $79cb: $84
    ld h, d                                       ; $79cc: $62
    pop bc                                        ; $79cd: $c1
    and b                                         ; $79ce: $a0
    ld h, b                                       ; $79cf: $60
    ldh a, [rP1]                                  ; $79d0: $f0 $00
    pop bc                                        ; $79d2: $c1
    add h                                         ; $79d3: $84
    nop                                           ; $79d4: $00
    add [hl]                                      ; $79d5: $86
    ld de, $b500                                  ; $79d6: $11 $00 $b5
    and b                                         ; $79d9: $a0
    and c                                         ; $79da: $a1
    ld b, l                                       ; $79db: $45
    ld b, e                                       ; $79dc: $43
    ld bc, $453e                                  ; $79dd: $01 $3e $45
    ld h, d                                       ; $79e0: $62
    ld a, e                                       ; $79e1: $7b
    ret nz                                        ; $79e2: $c0

    add b                                         ; $79e3: $80
    and c                                         ; $79e4: $a1
    ld a, a                                       ; $79e5: $7f
    add c                                         ; $79e6: $81
    add [hl]                                      ; $79e7: $86
    stop                                          ; $79e8: $10 $00
    or l                                          ; $79ea: $b5
    nop                                           ; $79eb: $00
    add c                                         ; $79ec: $81
    ld [bc], a                                    ; $79ed: $02
    ld b, h                                       ; $79ee: $44
    ld h, d                                       ; $79ef: $62
    add hl, sp                                    ; $79f0: $39
    ld a, e                                       ; $79f1: $7b

jr_060_79f2:
    ret nz                                        ; $79f2: $c0

    ld b, b                                       ; $79f3: $40
    add b                                         ; $79f4: $80
    ld b, b                                       ; $79f5: $40
    pop bc                                        ; $79f6: $c1
    add [hl]                                      ; $79f7: $86
    dec b                                         ; $79f8: $05
    ld a, d                                       ; $79f9: $7a
    rst $08                                       ; $79fa: $cf
    add [hl]                                      ; $79fb: $86
    rrca                                          ; $79fc: $0f
    ld a, [hl-]                                   ; $79fd: $3a
    adc c                                         ; $79fe: $89
    nop                                           ; $79ff: $00
    ld b, d                                       ; $7a00: $42
    push bc                                       ; $7a01: $c5
    ld b, d                                       ; $7a02: $42
    ld a, [hl-]                                   ; $7a03: $3a
    ccf                                           ; $7a04: $3f
    ld e, e                                       ; $7a05: $5b
    ld bc, $c682                                  ; $7a06: $01 $82 $c6
    ld [hl+], a                                   ; $7a09: $22
    ld [$8800], sp                                ; $7a0a: $08 $00 $88
    nop                                           ; $7a0d: $00
    cp h                                          ; $7a0e: $bc
    call nz, Call_060_4420                        ; $7a0f: $c4 $20 $44
    push bc                                       ; $7a12: $c5
    and b                                         ; $7a13: $a0
    inc b                                         ; $7a14: $04
    ld b, e                                       ; $7a15: $43
    ld bc, $c780                                  ; $7a16: $01 $80 $c7
    nop                                           ; $7a19: $00
    nop                                           ; $7a1a: $00
    add [hl]                                      ; $7a1b: $86
    inc b                                         ; $7a1c: $04
    call c, $80c3                                 ; $7a1d: $dc $c3 $80
    ld [hl], l                                    ; $7a20: $75
    nop                                           ; $7a21: $00
    adc b                                         ; $7a22: $88
    inc bc                                        ; $7a23: $03
    ld h, l                                       ; $7a24: $65
    rst $38                                       ; $7a25: $ff
    ld h, h                                       ; $7a26: $64
    ld a, [hl]                                    ; $7a27: $7e
    ld l, h                                       ; $7a28: $6c
    nop                                           ; $7a29: $00
    cp [hl]                                       ; $7a2a: $be
    inc c                                         ; $7a2b: $0c
    inc b                                         ; $7a2c: $04
    ld b, l                                       ; $7a2d: $45
    ld b, e                                       ; $7a2e: $43
    jr nz, @+$3a                                  ; $7a2f: $20 $38

    scf                                           ; $7a31: $37
    rlca                                          ; $7a32: $07
    jr nz, jr_060_79f2                            ; $7a33: $20 $bd

    ld h, c                                       ; $7a35: $61
    ld a, [hl]                                    ; $7a36: $7e
    push bc                                       ; $7a37: $c5
    nop                                           ; $7a38: $00
    ld e, a                                       ; $7a39: $5f
    nop                                           ; $7a3a: $00
    ld b, a                                       ; $7a3b: $47
    ld bc, $e53f                                  ; $7a3c: $01 $3f $e5
    ld b, b                                       ; $7a3f: $40
    inc hl                                        ; $7a40: $23
    ld a, l                                       ; $7a41: $7d
    and e                                         ; $7a42: $a3
    db $fc                                        ; $7a43: $fc
    ld b, e                                       ; $7a44: $43
    nop                                           ; $7a45: $00
    cp a                                          ; $7a46: $bf
    jp Jump_000_3f01                              ; $7a47: $c3 $01 $3f


    and $04                                       ; $7a4a: $e6 $04
    ret nz                                        ; $7a4c: $c0

    ld bc, $22b1                                  ; $7a4d: $01 $b1 $22
    and c                                         ; $7a50: $a1
    add d                                         ; $7a51: $82
    jr nz, jr_060_7a54                            ; $7a52: $20 $00

jr_060_7a54:
    ld e, a                                       ; $7a54: $5f
    nop                                           ; $7a55: $00
    ld b, h                                       ; $7a56: $44
    jp nz, Jump_000_3e25                          ; $7a57: $c2 $25 $3e

    ld [hl+], a                                   ; $7a5a: $22
    ld bc, $353e                                  ; $7a5b: $01 $3e $35
    ld [bc], a                                    ; $7a5e: $02
    cp h                                          ; $7a5f: $bc
    ld hl, $4600                                  ; $7a60: $21 $00 $46
    ld a, [$0028]                                 ; $7a63: $fa $28 $00
    ld d, b                                       ; $7a66: $50
    ld b, b                                       ; $7a67: $40
    ld hl, $c33e                                  ; $7a68: $21 $3e $c3
    nop                                           ; $7a6b: $00
    ret nz                                        ; $7a6c: $c0

    push hl                                       ; $7a6d: $e5
    pop bc                                        ; $7a6e: $c1
    inc bc                                        ; $7a6f: $03
    nop                                           ; $7a70: $00
    ld [hl+], a                                   ; $7a71: $22
    ld e, d                                       ; $7a72: $5a
    ld bc, $e2fc                                  ; $7a73: $01 $fc $e2
    nop                                           ; $7a76: $00
    ld e, c                                       ; $7a77: $59
    rst $38                                       ; $7a78: $ff
    jp z, $e080                                   ; $7a79: $ca $80 $e0

    nop                                           ; $7a7c: $00
    rst $28                                       ; $7a7d: $ef
    ld [bc], a                                    ; $7a7e: $02
    ei                                            ; $7a7f: $fb
    and c                                         ; $7a80: $a1
    ld e, d                                       ; $7a81: $5a
    ld b, l                                       ; $7a82: $45
    ld a, d                                       ; $7a83: $7a
    rst $00                                       ; $7a84: $c7
    nop                                           ; $7a85: $00
    ld d, d                                       ; $7a86: $52
    rst $38                                       ; $7a87: $ff
    jp z, $e7c0                                   ; $7a88: $ca $c0 $e7

    db $fc                                        ; $7a8b: $fc
    and a                                         ; $7a8c: $a7
    db $10                                        ; $7a8d: $10
    ld a, d                                       ; $7a8e: $7a
    rst $00                                       ; $7a8f: $c7
    nop                                           ; $7a90: $00
    ld d, c                                       ; $7a91: $51
    ret nz                                        ; $7a92: $c0

    ld bc, $c7ff                                  ; $7a93: $01 $ff $c7
    ld a, [hl-]                                   ; $7a96: $3a
    cp $40                                        ; $7a97: $fe $40
    ld a, e                                       ; $7a99: $7b
    and e                                         ; $7a9a: $a3
    ld a, d                                       ; $7a9b: $7a
    daa                                           ; $7a9c: $27
    cp b                                          ; $7a9d: $b8
    nop                                           ; $7a9e: $00
    cp c                                          ; $7a9f: $b9
    ld b, b                                       ; $7aa0: $40
    jr nz, jr_060_7af0                            ; $7aa1: $20 $4d

    nop                                           ; $7aa3: $00

jr_060_7aa4:
    ld b, l                                       ; $7aa4: $45
    scf                                           ; $7aa5: $37
    jr c, jr_060_7aa4                             ; $7aa6: $38 $fc

    and l                                         ; $7aa8: $a5
    ld b, b                                       ; $7aa9: $40
    nop                                           ; $7aaa: $00
    rst $38                                       ; $7aab: $ff
    jp Jump_000_217a                              ; $7aac: $c3 $7a $21


    ld hl, sp+$25                                 ; $7aaf: $f8 $25
    nop                                           ; $7ab1: $00
    ld e, c                                       ; $7ab2: $59
    rst $38                                       ; $7ab3: $ff
    ld [hl+], a                                   ; $7ab4: $22
    dec a                                         ; $7ab5: $3d
    pop hl                                        ; $7ab6: $e1
    db $fc                                        ; $7ab7: $fc
    ld h, c                                       ; $7ab8: $61
    ccf                                           ; $7ab9: $3f
    rst $00                                       ; $7aba: $c7
    rlca                                          ; $7abb: $07
    ld b, [hl]                                    ; $7abc: $46
    sbc h                                         ; $7abd: $9c
    sbc l                                         ; $7abe: $9d
    db $fc                                        ; $7abf: $fc
    and l                                         ; $7ac0: $a5
    nop                                           ; $7ac1: $00
    ld e, e                                       ; $7ac2: $5b
    ret nz                                        ; $7ac3: $c0

    db $e3                                        ; $7ac4: $e3
    adc c                                         ; $7ac5: $89
    nop                                           ; $7ac6: $00
    cp a                                          ; $7ac7: $bf
    push hl                                       ; $7ac8: $e5
    nop                                           ; $7ac9: $00
    ccf                                           ; $7aca: $3f
    pop hl                                        ; $7acb: $e1
    ld a, $e2                                     ; $7acc: $3e $e2
    ld hl, sp+$61                                 ; $7ace: $f8 $61
    call c, $0021                                 ; $7ad0: $dc $21 $00
    cp e                                          ; $7ad3: $bb
    add b                                         ; $7ad4: $80
    db $e3                                        ; $7ad5: $e3
    ret                                           ; $7ad6: $c9


    ld b, c                                       ; $7ad7: $41
    inc a                                         ; $7ad8: $3c
    push hl                                       ; $7ad9: $e5
    add c                                         ; $7ada: $81

jr_060_7adb:
    ld b, d                                       ; $7adb: $42
    ldh a, [$e4]                                  ; $7adc: $f0 $e4
    halt                                          ; $7ade: $76
    ld hl, $bf00                                  ; $7adf: $21 $00 $bf
    nop                                           ; $7ae2: $00
    jp nz, $c44c                                  ; $7ae3: $c2 $4c $c4

    jr c, @+$64                                   ; $7ae6: $38 $62

    inc a                                         ; $7ae8: $3c
    add c                                         ; $7ae9: $81
    ld b, h                                       ; $7aea: $44
    ld a, a                                       ; $7aeb: $7f
    jp $24f8                                      ; $7aec: $c3 $f8 $24


    ld a, d                                       ; $7aef: $7a

jr_060_7af0:
    ld l, e                                       ; $7af0: $6b
    nop                                           ; $7af1: $00
    xor a                                         ; $7af2: $af
    rst $38                                       ; $7af3: $ff
    and e                                         ; $7af4: $a3
    cp a                                          ; $7af5: $bf
    and $3b                                       ; $7af6: $e6 $3b
    ld c, $fe                                     ; $7af8: $0e $fe
    add d                                         ; $7afa: $82
    ld b, l                                       ; $7afb: $45
    ld b, c                                       ; $7afc: $41
    ld b, l                                       ; $7afd: $45
    ld hl, sp+$25                                 ; $7afe: $f8 $25
    ld a, d                                       ; $7b00: $7a
    ld l, e                                       ; $7b01: $6b
    or b                                          ; $7b02: $b0
    ld l, c                                       ; $7b03: $69
    ld a, d                                       ; $7b04: $7a
    ld h, c                                       ; $7b05: $61
    sbc [hl]                                      ; $7b06: $9e
    nop                                           ; $7b07: $00
    and b                                         ; $7b08: $a0
    and b                                         ; $7b09: $a0
    sbc a                                         ; $7b0a: $9f
    sbc l                                         ; $7b0b: $9d
    sbc l                                         ; $7b0c: $9d
    cp l                                          ; $7b0d: $bd
    ld [c], a                                     ; $7b0e: $e2
    push bc                                       ; $7b0f: $c5
    ld h, c                                       ; $7b10: $61
    ld b, l                                       ; $7b11: $45
    dec de                                        ; $7b12: $1b
    ld b, e                                       ; $7b13: $43
    ccf                                           ; $7b14: $3f
    pop bc                                        ; $7b15: $c1
    pop hl                                        ; $7b16: $e1
    ld [hl], $a6                                  ; $7b17: $36 $a6

jr_060_7b19:
    cp b                                          ; $7b19: $b8
    add c                                         ; $7b1a: $81
    ld hl, sp+$22                                 ; $7b1b: $f8 $22
    ld a, d                                       ; $7b1d: $7a
    dec bc                                        ; $7b1e: $0b
    ret nz                                        ; $7b1f: $c0

    nop                                           ; $7b20: $00
    xor c                                         ; $7b21: $a9
    dec hl                                        ; $7b22: $2b
    and c                                         ; $7b23: $a1
    inc e                                         ; $7b24: $1c
    and h                                         ; $7b25: $a4
    ld a, e                                       ; $7b26: $7b
    and d                                         ; $7b27: $a2
    inc c                                         ; $7b28: $0c
    ld [c], a                                     ; $7b29: $e2
    ld [hl], l                                    ; $7b2a: $75
    jp $a762                                      ; $7b2b: $c3 $62 $a7


    add c                                         ; $7b2e: $81
    ld h, [hl]                                    ; $7b2f: $66
    ld [hl], a                                    ; $7b30: $77
    add b                                         ; $7b31: $80
    ld [hl], $00                                  ; $7b32: $36 $00
    ld a, d                                       ; $7b34: $7a
    dec c                                         ; $7b35: $0d
    nop                                           ; $7b36: $00
    ld c, c                                       ; $7b37: $49
    jr z, jr_060_7adb                             ; $7b38: $28 $a1

    sub [hl]                                      ; $7b3a: $96
    ld b, c                                       ; $7b3b: $41
    and b                                         ; $7b3c: $a0
    ld [hl], d                                    ; $7b3d: $72
    sub d                                         ; $7b3e: $92
    ld h, b                                       ; $7b3f: $60
    sbc a                                         ; $7b40: $9f
    ld a, l                                       ; $7b41: $7d
    db $e3                                        ; $7b42: $e3
    pop bc                                        ; $7b43: $c1
    push hl                                       ; $7b44: $e5
    ld h, a                                       ; $7b45: $67
    and e                                         ; $7b46: $a3
    ld l, b                                       ; $7b47: $68
    cp a                                          ; $7b48: $bf
    ldh [$c0], a                                  ; $7b49: $e0 $c0
    ld hl, sp+$03                                 ; $7b4b: $f8 $03
    nop                                           ; $7b4d: $00
    ld e, h                                       ; $7b4e: $5c
    sbc d                                         ; $7b4f: $9a
    add c                                         ; $7b50: $81
    sub [hl]                                      ; $7b51: $96
    add c                                         ; $7b52: $81
    cp [hl]                                       ; $7b53: $be
    db $e3                                        ; $7b54: $e3
    jr c, jr_060_7b19                             ; $7b55: $38 $c2

    ld h, d                                       ; $7b57: $62
    ld h, a                                       ; $7b58: $67
    ld a, a                                       ; $7b59: $7f
    dec [hl]                                      ; $7b5a: $35
    dec [hl]                                      ; $7b5b: $35
    ld l, h                                       ; $7b5c: $6c
    or a                                          ; $7b5d: $b7
    cp b                                          ; $7b5e: $b8
    sbc h                                         ; $7b5f: $9c
    sbc a                                         ; $7b60: $9f
    ld a, [hl]                                    ; $7b61: $7e
    add d                                         ; $7b62: $82
    ret nc                                        ; $7b63: $d0

    nop                                           ; $7b64: $00
    ld e, d                                       ; $7b65: $5a
    ld a, [hl]                                    ; $7b66: $7e
    pop bc                                        ; $7b67: $c1
    ld a, d                                       ; $7b68: $7a
    push hl                                       ; $7b69: $e5
    or [hl]                                       ; $7b6a: $b6
    add c                                         ; $7b6b: $81
    xor a                                         ; $7b6c: $af
    cp b                                          ; $7b6d: $b8
    and b                                         ; $7b6e: $a0
    cp c                                          ; $7b6f: $b9
    cp d                                          ; $7b70: $ba
    ccf                                           ; $7b71: $3f
    and e                                         ; $7b72: $a3
    dec [hl]                                      ; $7b73: $35
    ld l, h                                       ; $7b74: $6c
    ld l, a                                       ; $7b75: $6f
    ld l, [hl]                                    ; $7b76: $6e
    ld [hl], $7e                                  ; $7b77: $36 $7e
    and c                                         ; $7b79: $a1
    ld a, [hl]                                    ; $7b7a: $7e
    add l                                         ; $7b7b: $85
    ld hl, sp+$00                                 ; $7b7c: $f8 $00
    or l                                          ; $7b7e: $b5
    ld a, d                                       ; $7b7f: $7a
    jp hl                                         ; $7b80: $e9


    ld [hl], l                                    ; $7b81: $75
    add e                                         ; $7b82: $83
    ld b, l                                       ; $7b83: $45
    ld [hl], $6e                                  ; $7b84: $36 $6e
    ld l, a                                       ; $7b86: $6f
    ld l, h                                       ; $7b87: $6c
    ld [bc], a                                    ; $7b88: $02
    pop bc                                        ; $7b89: $c1
    pop hl                                        ; $7b8a: $e1
    ld b, l                                       ; $7b8b: $45
    ld bc, $00c0                                  ; $7b8c: $01 $c0 $00
    cp b                                          ; $7b8f: $b8
    db $fc                                        ; $7b90: $fc
    jp hl                                         ; $7b91: $e9


    ld a, [hl]                                    ; $7b92: $7e
    jp hl                                         ; $7b93: $e9


    cp a                                          ; $7b94: $bf
    ld [c], a                                     ; $7b95: $e2
    pop bc                                        ; $7b96: $c1
    pop hl                                        ; $7b97: $e1
    db $10                                        ; $7b98: $10
    ld a, d                                       ; $7b99: $7a
    ld c, b                                       ; $7b9a: $48
    add b                                         ; $7b9b: $80
    ld [hl], d                                    ; $7b9c: $72
    rst $20                                       ; $7b9d: $e7
    ld c, b                                       ; $7b9e: $48
    ld a, [hl]                                    ; $7b9f: $7e
    rst $20                                       ; $7ba0: $e7
    sbc l                                         ; $7ba1: $9d
    inc [hl]                                      ; $7ba2: $34
    ret nz                                        ; $7ba3: $c0

    ld a, [hl]                                    ; $7ba4: $7e
    ldh [$c1], a                                  ; $7ba5: $e0 $c1
    db $e3                                        ; $7ba7: $e3
    nop                                           ; $7ba8: $00
    nop                                           ; $7ba9: $00
    cp c                                          ; $7baa: $b9
    or a                                          ; $7bab: $b7
    ld c, d                                       ; $7bac: $4a
    ld a, [hl]                                    ; $7bad: $7e
    rst $20                                       ; $7bae: $e7
    ld [hl], d                                    ; $7baf: $72
    ret nz                                        ; $7bb0: $c0

    cp h                                          ; $7bb1: $bc
    pop hl                                        ; $7bb2: $e1
    cp c                                          ; $7bb3: $b9
    ldh [$fc], a                                  ; $7bb4: $e0 $fc
    ld hl, $b800                                  ; $7bb6: $21 $00 $b8
    nop                                           ; $7bb9: $00
    or a                                          ; $7bba: $b7
    xor e                                         ; $7bbb: $ab
    halt                                          ; $7bbc: $76
    jp z, $a9e4                                   ; $7bbd: $ca $e4 $a9

    nop                                           ; $7bc0: $00
    cp c                                          ; $7bc1: $b9
    or a                                          ; $7bc2: $b7
    and a                                         ; $7bc3: $a7
    halt                                          ; $7bc4: $76
    call $a3ec                                    ; $7bc5: $cd $ec $a3
    db $fc                                        ; $7bc8: $fc
    inc bc                                        ; $7bc9: $03
    nop                                           ; $7bca: $00
    nop                                           ; $7bcb: $00
    ld c, e                                       ; $7bcc: $4b
    nop                                           ; $7bcd: $00
    nop                                           ; $7bce: $00
    nop                                           ; $7bcf: $00
    pop bc                                        ; $7bd0: $c1
    nop                                           ; $7bd1: $00
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
    nop                                           ; $7bdc: $00
    nop                                           ; $7bdd: $00
    ld bc, $fe80                                  ; $7bde: $01 $80 $fe
    ldh [rIE], a                                  ; $7be1: $e0 $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    add sp, $00                                   ; $7be7: $e8 $00
    nop                                           ; $7be9: $00
    nop                                           ; $7bea: $00
    ld [bc], a                                    ; $7beb: $02
    nop                                           ; $7bec: $00
    daa                                           ; $7bed: $27
    ld b, $02                                     ; $7bee: $06 $02
    ld bc, $091d                                  ; $7bf0: $01 $1d $09
    ld [bc], a                                    ; $7bf3: $02
    ld [bc], a                                    ; $7bf4: $02
    add hl, hl                                    ; $7bf5: $29
    add hl, bc                                    ; $7bf6: $09
    ld [bc], a                                    ; $7bf7: $02
    inc bc                                        ; $7bf8: $03
    ld a, [de]                                    ; $7bf9: $1a
    inc c                                         ; $7bfa: $0c
    ld [bc], a                                    ; $7bfb: $02
    inc b                                         ; $7bfc: $04
    jr z, jr_060_7c0c                             ; $7bfd: $28 $0d

    ld [bc], a                                    ; $7bff: $02
    dec b                                         ; $7c00: $05
    inc h                                         ; $7c01: $24
    ld c, $02                                     ; $7c02: $0e $02
    ld b, $26                                     ; $7c04: $06 $26
    ld c, $02                                     ; $7c06: $0e $02
    rlca                                          ; $7c08: $07
    jr jr_060_7c1a                                ; $7c09: $18 $0f

    ld [bc], a                                    ; $7c0b: $02

jr_060_7c0c:
    ld [$0f23], sp                                ; $7c0c: $08 $23 $0f
    ld [bc], a                                    ; $7c0f: $02
    add hl, bc                                    ; $7c10: $09
    ld [hl+], a                                   ; $7c11: $22
    db $10                                        ; $7c12: $10
    ld [bc], a                                    ; $7c13: $02
    ld a, [bc]                                    ; $7c14: $0a
    ld hl, $0211                                  ; $7c15: $21 $11 $02
    dec bc                                        ; $7c18: $0b
    dec d                                         ; $7c19: $15

jr_060_7c1a:
    ld [de], a                                    ; $7c1a: $12
    ld [bc], a                                    ; $7c1b: $02
    inc c                                         ; $7c1c: $0c
    ld hl, $0214                                  ; $7c1d: $21 $14 $02
    dec c                                         ; $7c20: $0d
    add hl, de                                    ; $7c21: $19
    dec d                                         ; $7c22: $15
    ld [bc], a                                    ; $7c23: $02
    ld c, $20                                     ; $7c24: $0e $20
    dec d                                         ; $7c26: $15
    ld [bc], a                                    ; $7c27: $02
    rrca                                          ; $7c28: $0f
    ld [hl+], a                                   ; $7c29: $22
    dec d                                         ; $7c2a: $15
    ld [bc], a                                    ; $7c2b: $02
    db $10                                        ; $7c2c: $10
    dec de                                        ; $7c2d: $1b
    ld d, $02                                     ; $7c2e: $16 $02
    ld de, $161f                                  ; $7c30: $11 $1f $16
    ld [bc], a                                    ; $7c33: $02
    ld [de], a                                    ; $7c34: $12
    ld hl, $0216                                  ; $7c35: $21 $16 $02
    inc de                                        ; $7c38: $13
    inc d                                         ; $7c39: $14
    rla                                           ; $7c3a: $17
    ld [bc], a                                    ; $7c3b: $02
    inc d                                         ; $7c3c: $14
    ld hl, $0219                                  ; $7c3d: $21 $19 $02
    dec d                                         ; $7c40: $15
    inc d                                         ; $7c41: $14
    inc e                                         ; $7c42: $1c
    ld [bc], a                                    ; $7c43: $02
    ld d, $23                                     ; $7c44: $16 $23
    inc e                                         ; $7c46: $1c
    ld [bc], a                                    ; $7c47: $02
    rla                                           ; $7c48: $17
    ld hl, $021d                                  ; $7c49: $21 $1d $02
    jr jr_060_7c70                                ; $7c4c: $18 $22

    jr nz, @+$04                                  ; $7c4e: $20 $02

    add hl, de                                    ; $7c50: $19
    ld hl, $0221                                  ; $7c51: $21 $21 $02
    ld a, [de]                                    ; $7c54: $1a
    ld hl, $0223                                  ; $7c55: $21 $23 $02
    dec de                                        ; $7c58: $1b
    inc hl                                        ; $7c59: $23
    inc hl                                        ; $7c5a: $23
    ld [bc], a                                    ; $7c5b: $02
    inc e                                         ; $7c5c: $1c
    jr nz, jr_060_7c83                            ; $7c5d: $20 $24

    ld [bc], a                                    ; $7c5f: $02
    dec e                                         ; $7c60: $1d
    rra                                           ; $7c61: $1f
    dec h                                         ; $7c62: $25
    ld [bc], a                                    ; $7c63: $02

Jump_060_7c64:
    ld e, $21                                     ; $7c64: $1e $21
    dec h                                         ; $7c66: $25
    ld [bc], a                                    ; $7c67: $02
    rra                                           ; $7c68: $1f
    jr nz, jr_060_7c91                            ; $7c69: $20 $26

    ld [bc], a                                    ; $7c6b: $02
    jr nz, jr_060_7c90                            ; $7c6c: $20 $22

    ld h, $02                                     ; $7c6e: $26 $02

jr_060_7c70:
    ld hl, $2714                                  ; $7c70: $21 $14 $27
    ld [bc], a                                    ; $7c73: $02
    ld [hl+], a                                   ; $7c74: $22
    inc h                                         ; $7c75: $24
    daa                                           ; $7c76: $27
    ld [bc], a                                    ; $7c77: $02
    inc hl                                        ; $7c78: $23
    dec h                                         ; $7c79: $25
    dec hl                                        ; $7c7a: $2b
    ld [bc], a                                    ; $7c7b: $02
    inc h                                         ; $7c7c: $24
    dec d                                         ; $7c7d: $15
    cpl                                           ; $7c7e: $2f
    ld [bc], a                                    ; $7c7f: $02
    dec h                                         ; $7c80: $25
    ld h, $2f                                     ; $7c81: $26 $2f

jr_060_7c83:
    ld [bc], a                                    ; $7c83: $02
    ld h, $18                                     ; $7c84: $26 $18
    ld [hl-], a                                   ; $7c86: $32
    ld [bc], a                                    ; $7c87: $02
    daa                                           ; $7c88: $27
    jr z, jr_060_7cbd                             ; $7c89: $28 $32

    ld [bc], a                                    ; $7c8b: $02
    jr z, jr_060_7cb9                             ; $7c8c: $28 $2b

    inc [hl]                                      ; $7c8e: $34
    ld [bc], a                                    ; $7c8f: $02

jr_060_7c90:
    add hl, hl                                    ; $7c90: $29

jr_060_7c91:
    inc e                                         ; $7c91: $1c
    ld [hl], $02                                  ; $7c92: $36 $02
    ld a, [hl+]                                   ; $7c94: $2a
    jr nz, jr_060_7cd0                            ; $7c95: $20 $39

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

jr_060_7cb9:
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    rst $38                                       ; $7cbb: $ff
    rst $38                                       ; $7cbc: $ff

jr_060_7cbd:
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

jr_060_7cd0:
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

Jump_060_7ce3:
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

Jump_060_7dc8:
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

Jump_060_7e22:
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

Call_060_7f45:
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

Jump_060_7fe0:
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    rst $38                                       ; $7fe2: $ff
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff

Call_060_7fe5:
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
